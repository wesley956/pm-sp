import { cache } from 'react';
import { redirect } from 'next/navigation';
import { hasSupabaseEnv } from '@/lib/env';
import { createClient as createServerClient } from '@/lib/supabase/server';
import { demoContent, getDemoContentsByPlan, getDemoDashboard } from '@/lib/demo';
import { planRank, slugify } from '@/lib/utils';
import type { ContentItem, DashboardBundle, PlanSlug, SubscriptionStatus } from '@/lib/types';

type UserContext = {
  userId: string;
  email: string | null;
  role: 'student' | 'admin';
  plan: PlanSlug;
  profileName: string;
  subscriptionStatus: SubscriptionStatus;
};

export const getCurrentUserContext = cache(async (): Promise<UserContext | null> => {
  if (!hasSupabaseEnv()) {
    return {
      userId: 'demo-user',
      email: 'demo@qapelite.local',
      role: 'admin',
      plan: 'complete',
      profileName: 'Aluno Demo',
      subscriptionStatus: 'active'
    };
  }

  const supabase = await createServerClient();
  const { data: auth } = await supabase.auth.getUser();
  if (!auth.user) return null;

  const { data: profile } = await supabase
    .from('profiles')
    .select('full_name, role')
    .eq('id', auth.user.id)
    .maybeSingle();

  const { data: subscription } = await supabase
    .from('subscriptions')
    .select('plan, status')
    .eq('user_id', auth.user.id)
    .order('created_at', { ascending: false })
    .limit(1)
    .maybeSingle();

  return {
    userId: auth.user.id,
    email: auth.user.email ?? null,
    role: (profile?.role ?? 'student') as 'student' | 'admin',
    plan: (subscription?.plan ?? 'basic') as PlanSlug,
    profileName: profile?.full_name ?? 'Aluno',
    subscriptionStatus: (subscription?.status ?? 'active') as SubscriptionStatus
  };
});

export async function requireUser() {
  const user = await getCurrentUserContext();
  if (!user) redirect('/auth');
  return user;
}

export async function getDashboardBundle(): Promise<DashboardBundle> {
  const user = await requireUser();

  if (!hasSupabaseEnv()) {
    return getDemoDashboard(user.plan);
  }

  const supabase = await createServerClient();

  const [{ data: progressRows }, { count: totalContents }, { count: availableContents }] = await Promise.all([
    supabase
      .from('study_progress')
      .select('read_completed, total_attempts, correct_answers, next_review_at, content:contents(topic)', { count: 'exact' })
      .eq('user_id', user.userId),
    supabase
      .from('contents')
      .select('*', { head: true, count: 'exact' })
      .eq('is_published', true),
    supabase
      .from('contents')
      .select('*', { head: true, count: 'exact' })
      .eq('is_published', true)
      .lte('required_plan_rank', planRank(user.plan))
  ]);

  const weakTopicMap = new Map<string, number>();
  let pendingReviews = 0;
  let studiedContents = 0;
  let totalAttempts = 0;
  let correctAnswers = 0;

  for (const row of progressRows ?? []) {
    if (row.read_completed) studiedContents += 1;
    totalAttempts += row.total_attempts ?? 0;
    correctAnswers += row.correct_answers ?? 0;
    if (row.next_review_at && new Date(row.next_review_at) <= new Date()) pendingReviews += 1;
    const topic = (row as { content?: { topic?: string } | null }).content?.topic;
    if (topic) weakTopicMap.set(topic, (weakTopicMap.get(topic) ?? 0) + 1);
  }

  const { data: availableRows } = await supabase
    .from('contents')
    .select('name')
    .eq('is_published', true)
    .lte('required_plan_rank', planRank(user.plan))
    .limit(3)
    .order('created_at', { ascending: true });

  return {
    plan: user.plan,
    subscriptionStatus: user.subscriptionStatus,
    profileName: user.profileName,
    counters: {
      totalContents: totalContents ?? 0,
      availableContents: availableContents ?? 0,
      studiedContents,
      totalAttempts,
      correctAnswers,
      pendingReviews
    },
    focus: {
      weakTopics: [...weakTopicMap.entries()].sort((a, b) => b[1] - a[1]).slice(0, 3).map(([topic]) => topic),
      today: (availableRows ?? []).map((row) => row.name)
    }
  };
}

export async function getLibraryContents(search?: string) {
  const user = await requireUser();

  if (!hasSupabaseEnv()) {
    let items = getDemoContentsByPlan(user.plan);
    if (search) {
      const normalized = search.toLowerCase();
      items = items.filter((item) => [item.name, item.topic, item.discipline].join(' ').toLowerCase().includes(normalized));
    }
    return items;
  }

  const supabase = await createServerClient();
  let query = supabase
    .from('contents')
    .select('*')
    .eq('is_published', true)
    .lte('required_plan_rank', planRank(user.plan))
    .order('discipline')
    .order('name');

  if (search) query = query.ilike('name', `%${search}%`);

  const { data, error } = await query;
  if (error) throw error;

  return (data ?? []).map((row) => ({
    slug: row.slug,
    source_id: row.source_id,
    name: row.name,
    topic: row.topic,
    discipline: row.discipline,
    summary: row.summary,
    theory: row.theory,
    theory_blocks: row.theory_blocks ?? [],
    key_points: row.key_points ?? [],
    proof_tips: row.proof_tips ?? [],
    examples: row.examples ?? [],
    common_errors: row.common_errors ?? [],
    minimum_plan: row.minimum_plan,
    flashcards: [],
    questions: []
  })) satisfies ContentItem[];
}

export async function getContentBySlug(slug: string) {
  const user = await requireUser();

  if (!hasSupabaseEnv()) {
    return getDemoContentsByPlan(user.plan).find((item) => item.slug === slug) ?? null;
  }

  const supabase = await createServerClient();
  const { data: content, error } = await supabase
    .from('contents')
    .select('*')
    .eq('slug', slug)
    .eq('is_published', true)
    .lte('required_plan_rank', planRank(user.plan))
    .maybeSingle();

  if (error) throw error;
  if (!content) return null;

  const [{ data: flashcards }, { data: questions }] = await Promise.all([
    supabase.from('flashcards').select('question, answer, sort_order').eq('content_id', content.id).order('sort_order'),
    supabase.from('questions').select('prompt, choices, correct_index, explanation, sort_order').eq('content_id', content.id).order('sort_order')
  ]);

  return {
    id: content.id,
    slug: content.slug,
    source_id: content.source_id,
    name: content.name,
    topic: content.topic,
    discipline: content.discipline,
    summary: content.summary,
    theory: content.theory,
    theory_blocks: content.theory_blocks ?? [],
    key_points: content.key_points ?? [],
    proof_tips: content.proof_tips ?? [],
    examples: content.examples ?? [],
    common_errors: content.common_errors ?? [],
    minimum_plan: content.minimum_plan,
    flashcards: (flashcards ?? []).map((item) => ({ pergunta: item.question, resposta: item.answer })),
    questions: (questions ?? []).map((item) => ({
      enunciado: item.prompt,
      alternativas: item.choices ?? [],
      correta: item.correct_index,
      explicacao: item.explanation
    }))
  } satisfies ContentItem;
}

export async function getReviewQueue() {
  const user = await requireUser();

  if (!hasSupabaseEnv()) {
    return getDemoContentsByPlan(user.plan).slice(0, 6);
  }

  const supabase = await createServerClient();
  const { data } = await supabase
    .from('study_progress')
    .select('next_review_at, contents(*)')
    .eq('user_id', user.userId)
    .not('next_review_at', 'is', null)
    .lte('next_review_at', new Date().toISOString())
    .order('next_review_at', { ascending: true })
    .limit(10);

  return (data ?? [])
    .map((row) => row.contents)
    .filter((content) => content && !Array.isArray(content))
    .map((content) => {
      const item = content as Record<string, unknown>;

      return {
        slug: String(item.slug ?? ''),
        source_id: String(item.source_id ?? ''),
        name: String(item.name ?? ''),
        topic: String(item.topic ?? ''),
        discipline: String(item.discipline ?? ''),
        summary: String(item.summary ?? ''),
        theory: String(item.theory ?? ''),
        theory_blocks: Array.isArray(item.theory_blocks)
          ? item.theory_blocks.map((block) => {
              const b = block as Record<string, unknown>;
              return {
                titulo: String(b.titulo ?? ''),
                texto: String(b.texto ?? ''),
              };
            })
          : [],
        key_points: Array.isArray(item.key_points)
          ? item.key_points.map(String)
          : [],
        proof_tips: Array.isArray(item.proof_tips)
          ? item.proof_tips.map(String)
          : [],
        examples: Array.isArray(item.examples)
          ? item.examples.map(String)
          : [],
        common_errors: Array.isArray(item.common_errors)
          ? item.common_errors.map(String)
          : [],
        minimum_plan: (item.minimum_plan as PlanSlug) ?? 'basic',
        flashcards: [],
        questions: [],
      };
    });
}

export async function getSimuladoContents() {
  const user = await requireUser();
  if (user.plan !== 'complete') return [];
  if (!hasSupabaseEnv()) return getDemoContentsByPlan('complete').filter((item) => item.questions.length > 0).slice(0, 20);

  const supabase = await createServerClient();
  const { data } = await supabase
    .from('contents')
    .select('slug,name,topic,discipline,summary')
    .eq('is_published', true)
    .eq('minimum_plan', 'complete')
    .order('name');

  return (data ?? []).map((item) => ({
    slug: item.slug,
    source_id: '',
    name: item.name,
    topic: item.topic,
    discipline: item.discipline,
    summary: item.summary ?? '',
    theory: '',
    theory_blocks: [],
    key_points: [],
    proof_tips: [],
    examples: [],
    common_errors: [],
    minimum_plan: 'complete' as const,
    flashcards: [],
    questions: []
  }));
}

export async function getAdminOverview() {
  const user = await requireUser();
  if (user.role !== 'admin') redirect('/dashboard');

  if (!hasSupabaseEnv()) {
    return {
      users: 1,
      activeSubscriptions: 1,
      contents: demoContent.length,
      publishedContents: demoContent.length
    };
  }

  const supabase = await createServerClient();
  const [{ count: users }, { count: activeSubscriptions }, { count: contents }, { count: publishedContents }] = await Promise.all([
    supabase.from('profiles').select('*', { head: true, count: 'exact' }),
    supabase.from('subscriptions').select('*', { head: true, count: 'exact' }).eq('status', 'active'),
    supabase.from('contents').select('*', { head: true, count: 'exact' }),
    supabase.from('contents').select('*', { head: true, count: 'exact' }).eq('is_published', true)
  ]);

  const { data: latestContents } = await supabase
    .from('contents')
    .select('id,slug,name,discipline,is_published,minimum_plan')
    .order('created_at', { ascending: false })
    .limit(20);

  return {
    users: users ?? 0,
    activeSubscriptions: activeSubscriptions ?? 0,
    contents: contents ?? 0,
    publishedContents: publishedContents ?? 0,
    latestContents: latestContents ?? []
  };
}

export async function getLocalImportPreview() {
  return demoContent.slice(0, 5).map((item) => ({
    discipline: item.discipline,
    name: item.name,
    slug: item.slug,
    minimum_plan: item.minimum_plan ?? 'basic'
  }));
}
