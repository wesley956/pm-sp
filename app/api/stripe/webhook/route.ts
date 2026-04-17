import Stripe from 'stripe';
import { headers } from 'next/headers';
import { createAdminClient } from '@/lib/supabase/admin';
import { hasStripeEnv } from '@/lib/env';

export async function POST(request: Request) {
  if (!hasStripeEnv() || !process.env.STRIPE_WEBHOOK_SECRET) {
    return new Response('Webhook não configurado.', { status: 400 });
  }

  const stripe = new Stripe(process.env.STRIPE_SECRET_KEY!);
  const body = await request.text();
  const signature = (await headers()).get('stripe-signature');

  if (!signature) {
    return new Response('Missing stripe-signature header.', { status: 400 });
  }

  let event: Stripe.Event;
  try {
    event = stripe.webhooks.constructEvent(body, signature, process.env.STRIPE_WEBHOOK_SECRET);
  } catch (error) {
    return new Response(`Webhook signature verification failed: ${String(error)}`, { status: 400 });
  }

  const admin = createAdminClient();

  if (event.type === 'checkout.session.completed') {
    const session = event.data.object as Stripe.Checkout.Session;
    const userId = session.metadata?.user_id;
    const plan = session.metadata?.plan === 'complete' ? 'complete' : 'basic';

    if (userId) {
      await admin.from('subscriptions').upsert({
        user_id: userId,
        plan,
        status: 'active',
        provider: 'stripe',
        provider_customer_id: typeof session.customer === 'string' ? session.customer : null,
        provider_subscription_id: typeof session.subscription === 'string' ? session.subscription : null,
        amount_cents: session.amount_total ?? 0,
        current_period_end: null
      }, { onConflict: 'user_id' });

      await admin.from('payment_events').insert({
        user_id: userId,
        provider: 'stripe',
        event_name: event.type,
        raw_payload: event as unknown as Record<string, unknown>
      });
    }
  }

  if (event.type === 'customer.subscription.updated' || event.type === 'customer.subscription.deleted') {
    const subscription = event.data.object as Stripe.Subscription;
    const subscriptionId = subscription.id;

    const statusMap: Record<string, 'trialing' | 'active' | 'past_due' | 'canceled'> = {
      trialing: 'trialing',
      active: 'active',
      past_due: 'past_due',
      canceled: 'canceled',
      unpaid: 'past_due',
      incomplete: 'past_due',
      incomplete_expired: 'canceled'
    };

    await admin
      .from('subscriptions')
      .update({
        status: statusMap[subscription.status] ?? 'past_due',
        current_period_end: subscription.current_period_end
          ? new Date(subscription.current_period_end * 1000).toISOString()
          : null
      })
      .eq('provider_subscription_id', subscriptionId);
  }

  return new Response('ok', { status: 200 });
}
