'use client';

import { useMemo, useState } from 'react';

type Question = { enunciado: string; alternativas: string[]; correta: number; explicacao?: string };

export function QuestionTrainer({
  contentSlug,
  questions
}: {
  contentSlug: string;
  questions: Question[];
}) {
  const [index, setIndex] = useState(0);
  const [feedback, setFeedback] = useState<string>('');
  const current = useMemo(() => questions[index], [questions, index]);

  if (!current) return <p className="muted">Sem questões neste conteúdo.</p>;

  async function answer(choice: number) {
    const correct = choice === current.correta;
    setFeedback(correct ? 'Acertou.' : `Errou. ${current.explicacao ?? ''}`);

    await fetch('/api/progress', {
      method: 'POST',
      headers: { 'Content-Type': 'application/json' },
      body: JSON.stringify({
        contentSlug,
        action: 'register_answer',
        isCorrect: correct
      })
    });
  }

  return (
    <div className="panel">
      <span className="pill">Questão {index + 1} de {questions.length}</span>
      <h3>{current.enunciado}</h3>
      <div className="option-list">
        {current.alternativas.map((choice, choiceIndex) => (
          <button key={`${contentSlug}-${index}-${choiceIndex}`} className="option-button" onClick={() => answer(choiceIndex)}>
            {String.fromCharCode(65 + choiceIndex)}) {choice}
          </button>
        ))}
      </div>
      {feedback ? <p className="notice">{feedback}</p> : null}
      <div className="button-row">
        <button className="button secondary" onClick={() => setIndex((value) => Math.max(0, value - 1))}>Anterior</button>
        <button className="button primary" onClick={() => setIndex((value) => Math.min(questions.length - 1, value + 1))}>Próxima</button>
      </div>
    </div>
  );
}
