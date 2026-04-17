'use client';

import { useState } from 'react';

export function AdminPublishToggle({
  contentId,
  initialPublished
}: {
  contentId: string;
  initialPublished: boolean;
}) {
  const [published, setPublished] = useState(initialPublished);
  const [status, setStatus] = useState('');

  async function toggle() {
    const response = await fetch('/api/admin/content', {
      method: 'PATCH',
      headers: { 'Content-Type': 'application/json' },
      body: JSON.stringify({ contentId, isPublished: !published })
    });

    const data = await response.json();
    if (response.ok) {
      setPublished(!published);
    }
    setStatus(data.message ?? 'Atualizado.');
  }

  return (
    <div className="button-row">
      <button className="button secondary" onClick={toggle}>
        {published ? 'Ocultar' : 'Publicar'}
      </button>
      {status ? <small className="muted">{status}</small> : null}
    </div>
  );
}
