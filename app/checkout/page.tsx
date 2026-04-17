import Link from 'next/link';
import { hasStripeEnv } from '@/lib/env';
import { plans } from '@/lib/plans';
import type { PlanSlug } from '@/lib/types';

export default function CheckoutPage({ searchParams }: { searchParams?: { plan?: string } }) {
  const selected = (searchParams?.plan === 'complete' ? 'complete' : 'basic') as PlanSlug;
  const plan = plans.find((item) => item.slug === selected)!;

  return (
    <section className="section-lg">
      <div className="container auth-shell">
        <div className="panel">
          <span className="eyebrow">Checkout</span>
          <h1>{plan.name}</h1>
          <p className="muted">{plan.description}</p>
          <div className="price">{plan.monthlyPrice}</div>
          <ul className="bullet-list">
            {plan.features.map((feature) => <li key={feature}>{feature}</li>)}
          </ul>
          {!hasStripeEnv() ? (
            <div className="warning-card">
              <strong>Falta configurar o Stripe.</strong>
              <p className="muted">Preencha as variáveis STRIPE_SECRET_KEY, STRIPE_PRICE_BASIC e STRIPE_PRICE_COMPLETE.</p>
            </div>
          ) : null}
        </div>

        <div className="panel">
          <h2>Finalizar assinatura</h2>
          <p className="muted">Este botão chama a rota `/api/checkout` e cria uma sessão real do Stripe Checkout.</p>
          <form action="/api/checkout" method="POST">
            <input type="hidden" name="plan" value={selected} />
            <button type="submit" className="button primary full-width">Ir para o pagamento</button>
          </form>
          <div className="button-row" style={{ marginTop: 12 }}>
            <Link href="/auth" className="button secondary">Voltar</Link>
          </div>
        </div>
      </div>
    </section>
  );
}
