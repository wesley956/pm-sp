import { NextRequest, NextResponse } from 'next/server';
import { getCurrentUserContext } from '@/lib/data';
import { createAdminClient } from '@/lib/supabase/admin';
import { hasSupabaseEnv } from '@/lib/env';

export async function PATCH(request: NextRequest) {
  const user = await getCurrentUserContext();
  if (!user) {
    return NextResponse.json({ message: 'Não autenticado.' }, { status: 401 });
  }
  if (user.role !== 'admin') {
    return NextResponse.json({ message: 'Acesso negado.' }, { status: 403 });
  }

  if (!hasSupabaseEnv()) {
    return NextResponse.json({ message: 'Modo demo: conecte o Supabase para alterar o conteúdo.' }, { status: 400 });
  }

  const { contentId, isPublished } = await request.json();
  const admin = createAdminClient();

  const { error } = await admin
    .from('contents')
    .update({ is_published: Boolean(isPublished) })
    .eq('id', contentId);

  if (error) return NextResponse.json({ message: error.message }, { status: 400 });

  await admin.from('audit_logs').insert({
    actor_id: user.userId,
    actor_email: user.email,
    action: 'content.publish_toggle',
    details: { contentId, isPublished }
  });

  return NextResponse.json({ message: 'Status do conteúdo atualizado.' });
}
