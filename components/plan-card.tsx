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
  const isComplete = slug === 'complete';

  return (
    <article
      className="panel plan-card"
      style={{
        display: 'grid',
        gap: '18px',
        padding: '24px',
        border: isComplete
          ? '1px solid rgba(239,68,68,0.35)'
          : '1px solid rgba(59,130,246,0.22)',
        background: isComplete
          ? 'linear-gradient(135deg, rgba(20,20,28,0.98), rgba(35,22,28,0.95))'
          : 'linear-gradient(135deg, rgba(15,20,30,0.98), rgba(18,26,40,0.95))',
        boxShadow: isComplete
          ? '0 0 0 1px rgba(239,68,68,0.08), 0 12px 30px rgba(239,68,68,0.08)'
          : '0 0 0 1px rgba(59,130,246,0.06), 0 12px 30px rgba(0,0,0,0.18)'
      }}
    >
      <div style={{ display: 'grid', gap: '10px' }}>
        <span
          className="eyebrow"
          style={{
            display: 'inline-flex',
            width: 'fit-content',
            padding: '6px 10px',
            borderRadius: '999px',
            border: isComplete
              ? '1px solid rgba(239,68,68,0.35)'
              : '1px solid rgba(59,130,246,0.35)',
            background: isComplete
              ? 'rgba(239,68,68,0.08)'
              : 'rgba(59,130,246,0.08)'
          }}
        >
          {isComplete ? 'Mais completo' : 'Essencial'}
        </span>

        <div>
          <h3 style={{ margin: '0 0 8px 0' }}>{name}</h3>
          <p className="muted" style={{ margin: 0 }}>
            {description}
          </p>
        </div>
      </div>

      <div
        style={{
          display: 'grid',
          gap: '4px',
          padding: '4px 0 2px 0'
        }}
      >
        <div
          className="price"
          style={{
            fontSize: '2.2rem',
            fontWeight: 800,
            lineHeight: 1.05,
            letterSpacing: '-0.02em',
            color: '#fff'
          }}
        >
          {monthlyPrice}
        </div>

        <span className="muted" style={{ fontSize: '0.95rem' }}>
          acesso mensal
        </span>
      </div>

      <ul
        className="bullet-list"
        style={{
          margin: 0,
          paddingLeft: '18px',
          display: 'grid',
          gap: '8px'
        }}
      >
        {features.map((feature) => (
          <li key={feature}>{feature}</li>
        ))}
      </ul>

      <div
        style={{
          display: 'grid',
          gap: '10px',
          marginTop: '4px'
        }}
      >
        <Link
          href={`/auth?plan=${slug}`}
          className="button primary"
          style={{
            width: '100%',
            justifyContent: 'center'
          }}
        >
          Assinar {isComplete ? 'plano completo' : 'plano básico'}
        </Link>

        <Link
          href={`/checkout?plan=${slug}`}
          className="muted"
          style={{
            textDecoration: 'none',
            fontSize: '0.95rem',
            textAlign: 'center'
          }}
        >
          Ir direto para o checkout
        </Link>
      </div>
    </article>
  );
}
