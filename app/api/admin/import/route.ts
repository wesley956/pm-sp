import { NextRequest, NextResponse } from 'next/server';
import { getCurrentUserContext } from '@/lib/data';
import { createAdminClient } from '@/lib/supabase/admin';
import { hasSupabaseEnv } from '@/lib/env';
import { slugify } from '@/lib/utils';

type InputItem = {
  id?: string;
  name: string;
  topico?: string;
  topic?: string;
  disciplina?: string;
  discipline?: string;
  resumo?: string;
  summary?: string;
  teoria?: string;
  theory?: string;
  teoria_blocos?: Array<{ titulo: string; texto: string }>;
  theory_blocks?: Array<{ titulo: string; texto: string }>;
  pontos_chave?: string[];
  key_points?: string[];
  dicas_prova?: string[];
  proof_tips?: string[];
  exemplos?: string[];
  examples?: string[];
  erros_comuns?: string[];
  common_errors?: string[];
  flashcards?: Array<{ pergunta?: string; resposta?: string; question?: string; answer?: string }>;
  questoes?: Array<{ enunciado?: string; alternativas?: string[]; correta?: number; explicacao?: string; prompt?: string; choices?: string[]; correct_index?: number; explanation?: string }>;
  minimum_plan?: 'basic' | 'complete';
};

export async function POST(request: NextRequest) {
  const user = await getCurrentUserContext();
  if (!user) {
    return NextResponse.json({ message: 'Não autenticado.' }, { status: 401 });
  }
  if (user.role !== 'admin') {
    return NextResponse.json({ message: 'Acesso negado.' }, { status: 403 });
  }

  if (!hasSupabaseEnv()) {
    return NextResponse.json({ message: 'Conecte o Supabase para importar conteúdo real.' }, { status: 400 });
  }

  const admin = createAdminClient();
  const payload = await request.json();
  const items = (Array.isArray(payload) ? payload : [payload]) as InputItem[];

  let imported = 0;

  for (const item of items) {
    const topic = item.topic ?? item.topico ?? item.name;
    const discipline = item.discipline ?? item.disciplina ?? 'Geral';

    const { data: insertedContent, error: contentError } = await admin
      .from('contents')
      .insert({
        slug: slugify(item.name),
        source_id: item.id ?? null,
        discipline,
        topic,
        name: item.name,
        summary: item.summary ?? item.resumo ?? '',
        theory: item.theory ?? item.teoria ?? '',
        theory_blocks: item.theory_blocks ?? item.teoria_blocos ?? [],
        key_points: item.key_points ?? item.pontos_chave ?? [],
        proof_tips: item.proof_tips ?? item.dicas_prova ?? [],
        examples: item.examples ?? item.exemplos ?? [],
        common_errors: item.common_errors ?? item.erros_comuns ?? [],
        minimum_plan: item.minimum_plan ?? 'basic',
        required_plan_rank: item.minimum_plan === 'complete' ? 2 : 1,
        is_published: true
      })
      .select('id')
      .single();

    if (contentError || !insertedContent) continue;

    const flashcards = (item.flashcards ?? []).map((flashcard, index) => ({
      content_id: insertedContent.id,
      question: flashcard.question ?? flashcard.pergunta ?? '',
      answer: flashcard.answer ?? flashcard.resposta ?? '',
      sort_order: index
    })).filter((item) => item.question && item.answer);

    if (flashcards.length) {
      await admin.from('flashcards').insert(flashcards);
    }

    const questions = (item.questoes ?? []).map((question, index) => ({
      content_id: insertedContent.id,
      prompt: question.prompt ?? question.enunciado ?? '',
      choices: question.choices ?? question.alternativas ?? [],
      correct_index: question.correct_index ?? question.correta ?? 0,
      explanation: question.explanation ?? question.explicacao ?? '',
      sort_order: index
    })).filter((item) => item.prompt && item.choices.length >= 2);

    if (questions.length) {
      await admin.from('questions').insert(questions);
    }

    imported += 1;
  }

  await admin.from('audit_logs').insert({
    actor_id: user.userId,
    actor_email: user.email,
    action: 'content.import',
    details: { imported }
  });

  return NextResponse.json({ message: `${imported} conteúdo(s) importado(s).` });
}
