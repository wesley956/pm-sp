import { NextRequest, NextResponse } from 'next/server';
import Stripe from 'stripe';
import { hasStripeEnv } from '@/lib/env';
import { createClient as createServerClient } from '@/lib/supabase/server';
import { createAdminClient } from '@/lib/supabase/admin';
import { hasSupabaseEnv } from '@/lib/env';

function getPlanFromRequest(request: NextRequest, formData?: FormData) {
  const raw = formData?.get('plan') ?? request.nextUrl.searchParams.get('plan') ?? 'basic';
  return raw === 'complete' ? 'complete' : 'basic';
}

export async function POST(request: NextRequest) {
  if (!hasStripeEnv()) {
    return NextResponse.json({ message: 'Stripe não configurado.' }, { status: 400 });
  }

  if (!hasSupabaseEnv()) {
    return NextResponse.json({ message: 'Supabase não configurado.' }, { status: 400 });
  }

  const contentType = request.headers.get('content-type') ?? '';
  const formData = contentType.includes('application/x-www-form-urlencoded') || contentType.includes('multipart/form-data')
    ? await request.formData()
    : undefined;

  const plan = getPlanFromRequest(request, formData);
  const supabase = await createServerClient();
  const admin = createAdminClient();
  const { data: auth } = await supabase.auth.getUser();

  if (!auth.user) {
    const base = process.env.NEXT_PUBLIC_APP_URL ?? 'http://localhost:3000';
    return NextResponse.redirect(`${base}/auth?plan=${plan}`);
  }

  const stripe = new Stripe(process.env.STRIPE_SECRET_KEY!);
  const priceId = plan === 'complete' ? process.env.STRIPE_PRICE_COMPLETE! : process.env.STRIPE_PRICE_BASIC!;
  const baseUrl = process.env.NEXT_PUBLIC_APP_URL ?? 'http://localhost:3000';

  const { data: profile } = await admin.from('profiles').select('id').eq('id', auth.user.id).maybeSingle();

  const session = await stripe.checkout.sessions.create({
    mode: 'subscription',
    line_items: [{ price: priceId, quantity: 1 }],
    customer_email: auth.user.email ?? undefined,
    success_url: `${baseUrl}/dashboard?checkout=success`,
    cancel_url: `${baseUrl}/checkout?plan=${plan}&status=canceled`,
    metadata: {
      user_id: auth.user.id,
      plan
    }
  });

  if (contentType.includes('application/x-www-form-urlencoded') || contentType.includes('multipart/form-data')) {
    return NextResponse.redirect(session.url!, 303);
  }

  return NextResponse.json({ url: session.url, profileExists: Boolean(profile) });
}
