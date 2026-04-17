import Link from 'next/link';
import { getCurrentUserContext, getSimuladoContents } from '@/lib/data';

export default async function SimuladosPage() {
  const [user, items] = await Promise.all([getCurrentUserContext(), getSimuladoContents()]);

  if (user?.plan !== 'complete') {
    return (
      <section className="section-lg">
        <div className="container">
          <div className="warning-card">
            <h1>Simulados liberados só no Plano Completo</h1>
            <p className="muted">Seu plano atual não inclui simulados. Faça upgrade para liberar treino mais pesado e diagnóstico melhor.</p>
            <Link href="/checkout?plan=complete" className="button primary">Fazer upgrade</Link>
          </div>
        </div>
      </section>
    );
  }

  return (
    <section className="section-lg">
      <div className="container">
        <div className="panel">
          <span className="eyebrow">Simulados</span>
          <h1>Monte seu treino pesado</h1>
          <p className="muted">Selecione conteúdos do plano completo para montar uma bateria de questões.</p>
        </div>

        <div className="grid grid-3" style={{ marginTop: 18 }}>
          {items.map((item) => (
            <article key={item.slug} className="panel content-card">
              <span className="pill">{item.discipline}</span>
              <h3>{item.name}</h3>
              <p className="muted">{item.summary}</p>
              <Link href={`/biblioteca/${item.slug}`} className="button primary">Abrir treino</Link>
            </article>
          ))}
        </div>
      </div>
    </section>
  );
}
