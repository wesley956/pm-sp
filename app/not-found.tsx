import Link from 'next/link';

export default function NotFound() {
  return (
    <section className="section-lg">
      <div className="container">
        <div className="warning-card">
          <h1>Conteúdo não encontrado</h1>
          <p className="muted">Esse item pode não existir ou não estar liberado para o plano atual.</p>
          <Link href="/biblioteca" className="button primary">Voltar para biblioteca</Link>
        </div>
      </div>
    </section>
  );
}
