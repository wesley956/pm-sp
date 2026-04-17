import Link from 'next/link';
import { getReviewQueue } from '@/lib/data';

export default async function RevisoesPage() {
  const items = await getReviewQueue();

  return (
    <section className="section-lg">
      <div className="container">
        <div className="panel">
          <span className="eyebrow">Revisões</span>
          <h1>Fila de revisão</h1>
          <p className="muted">Conteúdos prontos para revisar hoje.</p>
        </div>

        <div className="grid grid-3" style={{ marginTop: 18 }}>
          {items.length ? items.map((item) => (
            <article key={item.slug} className="panel content-card">
              <span className="pill">{item.discipline}</span>
              <h3>{item.name}</h3>
              <p className="muted">{item.summary}</p>
              <Link href={`/biblioteca/${item.slug}`} className="button primary">Revisar agora</Link>
            </article>
          )) : (
            <div className="success-card">
              <strong>Nenhuma revisão pendente agora.</strong>
              <p className="muted">Continue estudando novos tópicos e marcando progresso para alimentar a fila.</p>
            </div>
          )}
        </div>
      </div>
    </section>
  );
}
