import { notFound } from 'next/navigation';
import { getContentBySlug } from '@/lib/data';
import { ProgressActions } from '@/components/progress-actions';
import { QuestionTrainer } from '@/components/question-trainer';

export default async function ContentPage({ params }: { params: { slug: string } }) {
  const item = await getContentBySlug(params.slug);
  if (!item) notFound();

  return (
    <section className="section-lg">
      <div className="container grid">
        <div className="panel">
          <span className="eyebrow">{item.discipline}</span>
          <h1>{item.name}</h1>
          <p className="muted">{item.summary}</p>
          <ProgressActions contentSlug={item.slug} />
        </div>

        <div className="two-column">
          <div className="panel study-block">
            <h2>Teoria</h2>
            <p>{item.theory || item.summary}</p>

            {item.theory_blocks.length ? (
              <>
                <h3>Blocos rápidos</h3>
                {item.theory_blocks.map((block: { titulo: string; texto: string }) => (
                  <div key={block.titulo} className="panel">
                    <strong>{block.titulo}</strong>
                    <p className="muted">{block.texto}</p>
                  </div>
                ))}
              </>
            ) : null}
          </div>

          <div className="panel study-block">
            <h2>Mapa rápido</h2>
            <div>
              <h3>Pontos-chave</h3>
              <ul className="simple-list">{item.key_points.map((point) => <li key={point}>{point}</li>)}</ul>
            </div>
            <div>
              <h3>Dicas de prova</h3>
              <ul className="simple-list">{item.proof_tips.map((point) => <li key={point}>{point}</li>)}</ul>
            </div>
            <div>
              <h3>Erros comuns</h3>
              <ul className="simple-list">{item.common_errors.map((point) => <li key={point}>{point}</li>)}</ul>
            </div>
          </div>
        </div>

        <div className="two-column">
          <div className="panel">
            <h2>Flashcards</h2>
            <div className="grid">
              {item.flashcards.map((flashcard, index) => (
                <div key={`${item.slug}-flash-${index}`} className="panel">
                  <strong>{flashcard.pergunta}</strong>
                  <p className="muted">{flashcard.resposta}</p>
                </div>
              ))}
            </div>
          </div>

          <QuestionTrainer contentSlug={item.slug} questions={item.questions} />
        </div>
      </div>
    </section>
  );
}
