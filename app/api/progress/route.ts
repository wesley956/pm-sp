import { NextRequest, NextResponse } from 'next/server';
import { getCurrentUserContext } from '@/lib/data';
import { createClient as createServerClient } from '@/lib/supabase/server';
import { hasSupabaseEnv } from '@/lib/env';

function addDays(days: number) {
  const date = new Date();
  date.setDate(date.getDate() + days);
  return date.toISOString();
}

export async function POST(request: NextRequest) {
  const user = await getCurrentUserContext();
  if (!user) {
    return NextResponse.json({ message: 'Não autenticado.' }, { status: 401 });
  }

  if (!hasSupabaseEnv()) {
    return NextResponse.json({ message: 'Modo demo: progresso não persiste sem Supabase.' });
  }

  const supabase = await createServerClient();
  const body = await request.json();
  const contentSlug = body.contentSlug as string;
  const action = body.action as string;
  const isCorrect = Boolean(body.isCorrect);

  const { data: content } = await supabase.from('contents').select('id').eq('slug', contentSlug).maybeSingle();
  if (!content) {
    return NextResponse.json({ message: 'Conteúdo não encontrado.' }, { status: 404 });
  }

  const { data: current } = await supabase
    .from('study_progress')
    .select('*')
    .eq('user_id', user.userId)
    .eq('content_id', content.id)
    .maybeSingle();

  const row = current ?? {
    user_id: user.userId,
    content_id: content.id,
    read_completed: false,
    flashcards_completed: false,
    studied: false,
    correct_answers: 0,
    wrong_answers: 0,
    total_attempts: 0
  };

  if (action === 'mark_read') {
    row.read_completed = true;
    row.studied = true;
    row.last_studied_at = new Date().toISOString();
    row.next_review_at = addDays(1);
  } else if (action === 'mark_flashcards') {
    row.flashcards_completed = true;
    row.last_studied_at = new Date().toISOString();
  } else if (action === 'schedule_review') {
    row.next_review_at = addDays(3);
  } else if (action === 'register_answer') {
    row.total_attempts = Number(row.total_attempts ?? 0) + 1;
    row.correct_answers = Number(row.correct_answers ?? 0) + (isCorrect ? 1 : 0);
    row.wrong_answers = Number(row.wrong_answers ?? 0) + (isCorrect ? 0 : 1);
    row.last_studied_at = new Date().toISOString();
    row.next_review_at = addDays(isCorrect ? 3 : 1);
  }

  const { error } = await supabase.from('study_progress').upsert(row, { onConflict: 'user_id,content_id' });
  if (error) {
    return NextResponse.json({ message: error.message }, { status: 400 });
  }

  return NextResponse.json({ message: 'Progresso salvo com sucesso.' });
}
