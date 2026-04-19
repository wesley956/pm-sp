import Link from 'next/link';
import { PlanCard } from '@/components/plan-card';
import { plans } from '@/lib/plans';

const highlights = [
  'Sem videoaula',
  'Sem grupo',
  'Sem enrolação',
  'Foco no que cai'
];

const benefits = [
  {
    title: 'Conteúdo direto ao ponto',
    description:
      'Resumos, teoria objetiva, pontos-chave e explicações pensadas para quem precisa estudar rápido.'
  },
  {
    title: 'Revisão inteligente',
    description:
      'O sistema organiza o que revisar e ajuda você a não perder tempo decidindo o próximo passo.'
  },
  {
    title: 'Treino prático',
    description:
      'Flashcards, questões e simulados para transformar estudo em execução real.'
  }
];

const steps = [
  {
    number: '01',
    title: 'Escolha seu plano',
    description: 'Selecione a opção que faz mais sentido para o seu momento de estudo.'
  },
  {
    number: '02',
    title: 'Crie sua conta',
    description: 'Entre na plataforma e tenha acesso imediato ao conteúdo liberado.'
  },
  {
    number: '03',
    title: 'Estude com clareza',
    description: 'Leia, revise, treine e acompanhe sua evolução sem complicação.'
  }
];

export default function HomePage() {
  return (
    <section className="section-lg">
      <div className="container" style={{ display: 'grid', gap: '32px' }}>
        <section
          className="panel"
          style={{
            padding: '32px',
            display: 'grid',
            gap: '24px',
            background:
              'linear-gradient(135deg, rgba(10,15,25,0.96), rgba(18,28,45,0.92))',
            border: '1px solid rgba(59,130,246,0.22)'
          }}
        >
          <div style={{ display: 'grid', gap: '14px' }}>
            <span className="eyebrow">PM-SP 2026</span>

            <h1 style={{ maxWidth: '760px', margin: 0 }}>
              Estude para a PM-SP com um sistema direto, prático e sem enrolação
            </h1>

            <p className="muted" style={{ maxWidth: '760px', fontSize: '1.05rem' }}>
              Conteúdo objetivo, revisão inteligente, treino prático e simulados para quem tem
              pouco tempo e quer estudar com eficiência.
            </p>
          </div>

          <div
            style={{
              display: 'flex',
              gap: '10px',
              flexWrap: 'wrap'
            }}
          >
            {highlights.map((item) => (
              <span key={item} className="badge">
                {item}
              </span>
            ))}
          </div>

          <div
            style={{
              display: 'flex',
              gap: '12px',
              flexWrap: 'wrap'
            }}
          >
            <Link href="/auth" className="button primary">
              Começar agora
            </Link>

            <Link href="#planos" className="button secondary">
              Ver planos
            </Link>
          </div>
        </section>

        <section
          style={{
            display: 'grid',
            gap: '18px'
          }}
        >
          <div style={{ display: 'grid', gap: '8px' }}>
            <span className="eyebrow">Por que o sistema funciona</span>
            <h2 style={{ margin: 0 }}>Feito para quem quer estudar sem perder tempo</h2>
            <p className="muted" style={{ maxWidth: '760px' }}>
              Nada de excesso de conteúdo, grupo ou aula longa demais. Aqui o foco é estudar,
              revisar e treinar com clareza.
            </p>
          </div>

          <div className="plans-grid">
            {benefits.map((benefit) => (
              <article key={benefit.title} className="panel" style={{ minHeight: 'unset' }}>
                <h3 style={{ marginTop: 0 }}>{benefit.title}</h3>
                <p className="muted">{benefit.description}</p>
              </article>
            ))}
          </div>
        </section>

        <section
          id="planos"
          style={{
            display: 'grid',
            gap: '18px'
          }}
        >
          <div style={{ display: 'grid', gap: '8px' }}>
            <span className="eyebrow">Planos</span>
            <h2 style={{ margin: 0 }}>Escolha o plano ideal para o seu ritmo</h2>
            <p className="muted">
              Dois planos simples, objetivos e pensados para facilitar sua rotina.
            </p>
          </div>

          <div className="plans-grid">
            {plans.map((plan) => (
              <PlanCard key={plan.slug} {...plan} />
            ))}
          </div>
        </section>

        <section
          style={{
            display: 'grid',
            gap: '18px'
          }}
        >
          <div style={{ display: 'grid', gap: '8px' }}>
            <span className="eyebrow">Como funciona</span>
            <h2 style={{ margin: 0 }}>Comece em poucos passos</h2>
          </div>

          <div className="plans-grid">
            {steps.map((step) => (
              <article key={step.number} className="panel">
                <span
                  className="badge"
                  style={{
                    marginBottom: '14px',
                    display: 'inline-flex'
                  }}
                >
                  {step.number}
                </span>
                <h3 style={{ marginTop: 0 }}>{step.title}</h3>
                <p className="muted">{step.description}</p>
              </article>
            ))}
          </div>
        </section>

        <section
          className="panel"
          style={{
            padding: '28px',
            display: 'grid',
            gap: '14px',
            textAlign: 'center',
            background:
              'linear-gradient(135deg, rgba(20,25,35,0.95), rgba(25,35,55,0.9))',
            border: '1px solid rgba(239,68,68,0.22)'
          }}
        >
          <span className="eyebrow">Pronto para começar?</span>
          <h2 style={{ margin: 0 }}>Entre agora e estude do jeito certo</h2>
          <p className="muted" style={{ maxWidth: '680px', margin: '0 auto' }}>
            Organize seu estudo, revise com inteligência e pratique com foco no que realmente
            importa para a prova.
          </p>

          <div
            style={{
              display: 'flex',
              justifyContent: 'center',
              gap: '12px',
              flexWrap: 'wrap'
            }}
          >
            <Link href="/auth" className="button primary">
              Criar conta
            </Link>

            <Link href="/auth?plan=complete" className="button secondary">
              Ir para o plano completo
            </Link>
          </div>
        </section>
      </div>
    </section>
  );
}
