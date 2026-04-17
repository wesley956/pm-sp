import Link from 'next/link';
import type { PlanSlug } from '@/lib/types';

export function PlanCard({
  name,
  description,
  monthlyPrice,
  features,
  slug
}: {
  name: string;
  description: string;
  monthlyPrice: string;
  features: string[];
  slug: PlanSlug;
}) {
  return (
    <article className="panel plan-card">
      <span className="eyebrow">{slug === 'complete' ? 'Mais completo' : 'Essencial'}</span>
      <h3>{name}</h3>
      <p className="muted">{description}</p>
      <div className="price">{monthlyPrice}</div>
      <ul className="bullet-list">
        {features.map((feature) => (
          <li key={feature}>{feature}</li>
        ))}
      </ul>
      <div className="button-row">
        <Link href={`/auth?plan=${slug}`} className="button primary">Assinar</Link>
        <Link href={`/checkout?plan=${slug}`} className="button secondary">Ir para checkout</Link>
      </div>
    </article>
  );
}
