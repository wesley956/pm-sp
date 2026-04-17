import Link from 'next/link';
import { getLibraryContents } from '@/lib/data';

export default async function BibliotecaPage({
  searchParams
}: {
  searchParams?: { q?: string };
}) {
  const items = await getLibraryContents(searchParams?.q);

  return (
    <section className="section-lg">
      <div className="container">
        <div className="panel">
          <span className="eyebrow">Biblioteca</span>
          <h1>Conteúdos liberados</h1>
          <form className="search-bar" action="/biblioteca">
            <input name="q" placeholder="Buscar por nome..." defaultValue={searchParams?.q ?? ''} />
            <button className="button secondary" type="submit">Buscar</button>
          </form>
        </div>

        <div className="grid grid-3" style={{ marginTop: 18 }}>
          {items.map((item) => (
            <article key={item.slug} className="panel content-card">
              <span className="pill">{item.discipline}</span>
              <h3>{item.name}</h3>
              <p className="muted">{item.summary}</p>
              <div className="meta-grid">
                <span>{item.topic}</span>
                <span>{item.minimum_plan === 'complete' ? 'Plano Completo' : 'Plano Básico'}</span>
              </div>
              <Link href={`/biblioteca/${item.slug}`} className="button primary">Abrir</Link>
            </article>
          ))}
        </div>
      </div>
    </section>
  );
}
