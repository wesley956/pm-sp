import Link from 'next/link';
import { getDashboardBundle, getCurrentUserContext } from '@/lib/data';
import { StatCard } from '@/components/stat-card';
import { planLabel } from '@/lib/utils';

export default async function DashboardPage() {
  const [bundle, user] = await Promise.all([getDashboardBundle(), getCurrentUserContext()]);

  return (
    <section className="section-lg">
      <div className="container grid">
        <div className="dashboard-shell">
          <div className="panel">
            <span className="eyebrow">Dashboard</span>
            <h1>Olá, {bundle.profileName}</h1>
            <p className="muted">
              Seu plano atual é <strong>{planLabel(bundle.plan)}</strong>. Status da assinatura: <strong>{bundle.subscriptionStatus}</strong>.
            </p>
            <div className="button-row wrap">
              <Link href="/biblioteca" className="button primary">Ir para biblioteca</Link>
              <Link href="/revisoes" className="button secondary">Ver revisões</Link>
              <Link href="/simulados" className="button secondary">Abrir simulados</Link>
              <a href="/checkout?plan=complete" className="button ghost">Fazer upgrade</a>
            </div>
          </div>

          <div className="panel">
            <h2>Hoje</h2>
            <ul className="simple-list">
              {bundle.focus.today.map((item) => <li key={item}>{item}</li>)}
            </ul>
          </div>
        </div>

        <div className="grid grid-3">
          <StatCard label="Conteúdos liberados" value={bundle.counters.availableContents} helper={`Total cadastrado: ${bundle.counters.totalContents}`} />
          <StatCard label="Conteúdos estudados" value={bundle.counters.studiedContents} helper="Leitura concluída" />
          <StatCard label="Questões respondidas" value={bundle.counters.totalAttempts} helper={`Acertos: ${bundle.counters.correctAnswers}`} />
          <StatCard label="Revisões pendentes" value={bundle.counters.pendingReviews} />
          <StatCard label="Pontos fracos" value={bundle.focus.weakTopics.length} helper={bundle.focus.weakTopics.join(' • ') || 'Sem dados ainda'} />
          <StatCard label="Perfil" value={user?.role ?? 'student'} helper={user?.email ?? ''} />
        </div>
      </div>
    </section>
  );
}
