import { notFound } from 'next/navigation';
import { getContentBySlug } from '@/lib/data';
import { ProgressActions } from '@/components/progress-actions';
import { QuestionTrainer } from '@/components/question-trainer';

type TheoryBlock = {
  titulo: string;
  texto: string;
};

export default async function ContentPage({ params }: { params: { slug: string } }) {
  const item = await getContentBySlug(params.slug);
  if (!item) notFound();

  const theoryBlocks = (item.theory_blocks ?? []) as TheoryBlock[];
  const keyPoints = item.key_points ?? [];
  const proofTips = item.proof_tips ?? [];
  const commonErrors = item.common_errors ?? [];
  const flashcards = item.flashcards ?? [];
  const questions = item.questions ?? [];

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

            {theoryBlocks.length ? (
              <>
                <h3>Blocos rápidos</h3>
                {theoryBlocks.map((block) => (
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
              <ul className="simple-list">
                {keyPoints.map((point: string) => (
                  <li key={point}>{point}</li>
                ))}
              </ul>
            </div>
            <div>
              <h3>Dicas de prova</h3>
              <ul className="simple-list">
                {proofTips.map((point: string) => (
                  <li key={point}>{point}</li>
                ))}
              </ul>
            </div>
            <div>
              <h3>Erros comuns</h3>
              <ul className="simple-list">
                {commonErrors.map((point: string) => (
                  <li key={point}>{point}</li>
                ))}
              </ul>
            </div>
          </div>
        </div>

        <div className="two-column">
          <div className="panel">
            <h2>Flashcards</h2>
            <div className="grid">
              {flashcards.map(
                (flashcard: { pergunta: string; resposta: string }, index: number) => (
                  <div key={`${item.slug}-flash-${index}`} className="panel">
                    <strong>{flashcard.pergunta}</strong>
                    <p className="muted">{flashcard.resposta}</p>
                  </div>
                )
              )}
            </div>
          </div>

          <QuestionTrainer contentSlug={item.slug} questions={questions} />
        </div>
      </div>
    </section>
  );
}
