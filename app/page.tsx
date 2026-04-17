import Link from 'next/link';
import { PlanCard } from '@/components/plan-card';
import { StatCard } from '@/components/stat-card';
import { plans } from '@/lib/plans';
import { demoStats } from '@/lib/demo';

export default function HomePage() {
  return (
    <>
      <section className="hero">
        <div className="container hero-shell">
          <div className="hero-card">
            <span className="eyebrow">SaaS de estudo prático</span>
            <h1>Estudo direto, sem vídeo, sem grupo, sem enrolação.</h1>
            <p className="kicker">
              O QAP Elite foi desenhado para quem trabalha, tem pouco tempo e quer estudar do jeito mais eficiente:
              conteúdo objetivo, revisão automática, treino e simulados.
            </p>

            <div className="hero-actions">
              <Link href="/auth?plan=basic" className="button primary">Começar agora</Link>
              <Link href="/checkout?plan=complete" className="button secondary">Assinar completo</Link>
            </div>

            <ul className="hero-list">
              <li>Biblioteca organizada por disciplina</li>
              <li>Revisão inteligente sem o aluno montar cronograma</li>
              <li>Questões e simulados para o plano completo</li>
              <li>Pronto para Vercel + Supabase + Stripe</li>
            </ul>
          </div>

          <div className="grid">
            <StatCard label="Conteúdos" value={demoStats.contents} helper="Já importados do seu ZIP" />
            <StatCard label="Flashcards" value={demoStats.flashcards} helper="Estudo rápido e revisão" />
            <StatCard label="Questões" value={demoStats.questions} helper="Treino e simulados" />
            <StatCard label="Disciplinas" value={demoStats.disciplines.length} helper={demoStats.disciplines.join(' • ')} />
          </div>
        </div>
      </section>

      <section className="section-lg">
        <div className="container">
          <div className="grid grid-2">
            {plans.map((plan) => (
              <PlanCard key={plan.slug} {...plan} />
            ))}
          </div>
        </div>
      </section>
    </>
  );
}
