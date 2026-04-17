import { getAdminOverview, getLocalImportPreview } from '@/lib/data';
import { StatCard } from '@/components/stat-card';
import { AdminImporter } from '@/components/admin-importer';
import { AdminPublishToggle } from '@/components/admin-publish-toggle';

export default async function AdminPage() {
  const [overview, preview] = await Promise.all([getAdminOverview(), getLocalImportPreview()]);

  return (
    <section className="section-lg">
      <div className="container grid">
        <div className="panel">
          <span className="eyebrow">Admin</span>
          <h1>Painel administrativo</h1>
          <p className="muted">Gestão de conteúdo, publicação e importação.</p>
        </div>

        <div className="grid grid-3">
          <StatCard label="Usuários" value={overview.users} />
          <StatCard label="Assinaturas ativas" value={overview.activeSubscriptions} />
          <StatCard label="Conteúdos publicados" value={overview.publishedContents} helper={`Cadastrados: ${overview.contents}`} />
        </div>

        <div className="two-column">
          <div className="panel">
            <h2>Últimos conteúdos</h2>
            {'latestContents' in overview ? (
              <div className="table-wrap">
                <table>
                  <thead>
                    <tr>
                      <th>Nome</th>
                      <th>Disciplina</th>
                      <th>Plano</th>
                      <th>Status</th>
                      <th>Ação</th>
                    </tr>
                  </thead>
                  <tbody>
                    {(overview.latestContents ?? []).map((item) => (
                      <tr key={item.id}>
                        <td>{item.name}</td>
                        <td>{item.discipline}</td>
                        <td>{item.minimum_plan}</td>
                        <td>{item.is_published ? 'Publicado' : 'Oculto'}</td>
                        <td><AdminPublishToggle contentId={item.id} initialPublished={item.is_published} /></td>
                      </tr>
                    ))}
                  </tbody>
                </table>
              </div>
            ) : (
              <p className="muted">Conecte o Supabase para gerenciar conteúdo real.</p>
            )}
          </div>

          <AdminImporter />
        </div>

        <div className="panel">
          <h2>Prévia dos conteúdos já prontos para importação</h2>
          <div className="grid grid-3">
            {preview.map((item) => (
              <div key={item.slug} className="panel">
                <strong>{item.name}</strong>
                <p className="muted">{item.discipline}</p>
                <small className="muted">{item.minimum_plan}</small>
              </div>
            ))}
          </div>
        </div>
      </div>
    </section>
  );
}
