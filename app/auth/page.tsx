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
            Você pode vender com dois planos, sem complicar sua operação. O aluno cria a conta,
            escolhe o plano e finaliza no checkout.
          </p>

          <div className="warning-card">
            <strong>Plano selecionado: {selectedPlan.name}</strong>
            <p className="muted">
              Depois do cadastro, o checkout do Stripe usa o preço correspondente e o webhook atualiza a assinatura automaticamente.
            </p>
          </div>
        </div>

        <AuthForm selectedPlan={selected} />
      </div>
    </section>
  );
}
