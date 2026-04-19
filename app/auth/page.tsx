import Link from 'next/link';
import { AuthForm } from '@/components/auth-form';
import { plans } from '@/lib/plans';
import type { PlanSlug } from '@/lib/types';

export default function AuthPage({
  searchParams
}: {
  searchParams?: { plan?: string };
}) {
  const selected = (searchParams?.plan === 'complete' ? 'complete' : 'basic') as PlanSlug;
  const selectedPlan = plans.find((plan) => plan.slug === selected)!;

  return (
    <section className="section-lg">
      <div className="container auth-shell">
        <div className="panel">
          <span className="eyebrow">Acesso</span>
          <h1>Entrar ou criar sua conta</h1>
          <p className="muted">
            Escolha seu plano abaixo, crie sua conta e finalize a assinatura no checkout.
          </p>

          <div
            style={{
              display: 'flex',
              gap: '12px',
              marginTop: '20px',
              marginBottom: '20px',
              flexWrap: 'wrap'
            }}
          >
            <Link
              href="/auth?plan=basic"
              className={`button ${selected === 'basic' ? 'primary' : 'secondary'}`}
            >
              Plano Básico
            </Link>

            <Link
              href="/auth?plan=complete"
              className={`button ${selected === 'complete' ? 'primary' : 'secondary'}`}
            >
              Plano Completo
            </Link>
          </div>

          <div className="warning-card">
            <strong>Plano selecionado: {selectedPlan.name}</strong>
            <p className="muted">{selectedPlan.description}</p>
            <p className="muted" style={{ marginTop: '8px' }}>
              Valor: <strong>{selectedPlan.monthlyPrice}</strong>
            </p>
          </div>
        </div>

        <AuthForm selectedPlan={selected} />
      </div>
    </section>
  );
}
