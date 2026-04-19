import Link from 'next/link';
import { PlanCard } from '@/components/plan-card';
import { plans } from '@/lib/plans';

export default function HomePage() {
  return (
    <section className="section-lg">
      <div className="container hero">
        <div className="hero-copy">
          <span className="eyebrow">PM-SP 2026</span>
          <h1>Estude sem enrolação</h1>
          <p className="muted">
            Conteúdo objetivo, revisão inteligente, treino prático e simulados para quem quer estudar
            com eficiência, mesmo tendo pouco tempo.
          </p>

          <div className="hero-actions">
            <Link href="/auth" className="button primary">
              Começar agora
            </Link>

            <Link href="/auth?plan=complete" className="button secondary">
              Assinar completo
            </Link>
          </div>
        </div>

        <div className="panel">
          <h2>Escolha seu plano</h2>
          <p className="muted">
            Dois planos simples, sem complicação e sem enrolação.
          </p>

          <div className="plans-grid">
            {plans.map((plan) => (
              <PlanCard key={plan.slug} {...plan} />
            ))}
          </div>
        </div>
      </div>
    </section>
  );
}
