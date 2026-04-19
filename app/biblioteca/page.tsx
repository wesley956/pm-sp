import Link from 'next/link';
import { getLibraryContents } from '@/lib/data';
import type { ContentItem } from '@/lib/types';

const disciplineOrder = [
  'Português',
  'Matemática',
  'História',
  'Geografia',
  'Atualidades',
  'Informática',
  'Direito'
];

export default async function BibliotecaPage({
  searchParams
}: {
  searchParams?: { q?: string };
}) {
  const items = await getLibraryContents(searchParams?.q);

  const grouped: Record<string, ContentItem[]> = items.reduce(
    (acc: Record<string, ContentItem[]>, item: ContentItem) => {
      const key = item.discipline || 'Outros';
      if (!acc[key]) acc[key] = [];
      acc[key].push(item);
      return acc;
    },
    {}
  );

  const sortedDisciplines = Object.keys(grouped).sort((a, b) => {
    const aIndex = disciplineOrder.indexOf(a);
    const bIndex = disciplineOrder.indexOf(b);

    if (aIndex === -1 && bIndex === -1) return a.localeCompare(b);
    if (aIndex === -1) return 1;
    if (bIndex === -1) return -1;
    return aIndex - bIndex;
  });

  return (
    <section className="section-lg">
      <div className="container">
        <div className="panel" style={{ marginBottom: '24px' }}>
          <span className="eyebrow">Biblioteca</span>
          <h1>Conteúdos liberados</h1>
          <p className="muted">
            Navegue pelos conteúdos organizados por matéria para estudar com mais clareza.
          </p>

          <form style={{ marginTop: '16px' }}>
            <input
              type="text"
              name="q"
              defaultValue={searchParams?.q ?? ''}
              placeholder="Buscar por nome, tópico ou matéria"
              className="input"
            />
          </form>
        </div>

        <div style={{ display: 'grid', gap: '24px' }}>
          {sortedDisciplines.map((discipline) => (
            <section key={discipline} className="panel">
              <div
                style={{
                  display: 'flex',
                  justifyContent: 'space-between',
                  alignItems: 'center',
                  gap: '12px',
                  flexWrap: 'wrap',
                  marginBottom: '16px'
                }}
              >
                <div>
                  <span className="eyebrow">{discipline}</span>
                  <h2 style={{ margin: 0 }}>{discipline}</h2>
                </div>

                <div className="badge">
                  {grouped[discipline].length} conteúdo
                  {grouped[discipline].length !== 1 ? 's' : ''}
                </div>
              </div>

              <div className="grid">
                {grouped[discipline].map((item) => (
                  <article key={item.slug} className="panel">
                    <span className="eyebrow">{item.topic}</span>
                    <h3>{item.name}</h3>
                    <p className="muted">{item.summary}</p>

                    <div
                      style={{
                        display: 'flex',
                        gap: '10px',
                        flexWrap: 'wrap',
                        marginTop: '12px',
                        marginBottom: '16px'
                      }}
                    >
                      <span className="badge">{item.discipline}</span>
                      <span className="badge">
                        {item.minimum_plan === 'complete'
                          ? 'Plano Completo'
                          : 'Plano Básico'}
                      </span>
                    </div>

                    <Link href={`/biblioteca/${item.slug}`} className="button primary">
                      Abrir
                    </Link>
                  </article>
                ))}
              </div>
            </section>
          ))}

          {sortedDisciplines.length === 0 ? (
            <div className="panel">
              <h2>Nenhum conteúdo encontrado</h2>
              <p className="muted">Tente buscar com outro termo.</p>
            </div>
          ) : null}
        </div>
      </div>
    </section>
  );
}
