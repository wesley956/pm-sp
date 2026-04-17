import { createClient } from '@supabase/supabase-js';
import { hasSupabaseEnv } from '@/lib/env';

export function createAdminClient() {
  if (!hasSupabaseEnv() || !process.env.SUPABASE_SERVICE_ROLE_KEY) {
    throw new Error('Supabase admin environment variables are missing.');
  }

  return createClient(
    process.env.NEXT_PUBLIC_SUPABASE_URL!,
    process.env.SUPABASE_SERVICE_ROLE_KEY!,
    { auth: { persistSession: false } }
  );
}
