'use client';

import { useState } from 'react';

export function ProgressActions({ contentSlug }: { contentSlug: string }) {
  const [message, setMessage] = useState('');

  async function saveProgress(payload: Record<string, unknown>) {
    const response = await fetch('/api/progress', {
      method: 'POST',
      headers: { 'Content-Type': 'application/json' },
      body: JSON.stringify({ contentSlug, ...payload })
    });

    const data = await response.json();
    setMessage(data.message ?? (response.ok ? 'Progresso salvo.' : 'Falha ao salvar progresso.'));
  }

  return (
    <div className="button-row wrap">
      <button className="button primary" onClick={() => saveProgress({ action: 'mark_read' })}>Marcar leitura concluída</button>
      <button className="button secondary" onClick={() => saveProgress({ action: 'mark_flashcards' })}>Marcar flashcards vistos</button>
      <button className="button secondary" onClick={() => saveProgress({ action: 'schedule_review' })}>Agendar revisão</button>
      {message ? <p className="notice inline">{message}</p> : null}
    </div>
  );
}
