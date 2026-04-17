import Link from 'next/link';
import type { ContentItem } from '@/lib/types';

export function ContentCard({ item }: { item: ContentItem }) {
  return (
    <article className="panel content-card">
      <span className="pill">{item.discipline}</span>
      <h3>{item.name}</h3>
      <p className="muted">{item.summary}</p>
      <div className="meta-grid">
        <span>{item.flashcards.length} flashcards</span>
        <span>{item.questions.length} questões</span>
        <span>{item.minimum_plan === 'complete' ? 'Plano Completo' : 'Plano Básico'}</span>
      </div>
      <Link href={`/biblioteca/${item.slug}`} className="button primary">Abrir conteúdo</Link>
    </article>
  );
}
