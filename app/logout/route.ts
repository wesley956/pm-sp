import { NextResponse } from 'next/server';
import { hasSupabaseEnv } from '@/lib/env';
import { createClient as createServerClient } from '@/lib/supabase/server';

export async function GET() {
  if (hasSupabaseEnv()) {
    const supabase = await createServerClient();
    await supabase.auth.signOut();
  }

  return NextResponse.redirect(new URL('/', process.env.NEXT_PUBLIC_APP_URL ?? 'http://localhost:3000'));
}
