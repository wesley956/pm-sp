'use client';

import { useState } from 'react';

export function AdminImporter() {
  const [payload, setPayload] = useState('');
  const [message, setMessage] = useState('');

  async function handleImport() {
    setMessage('Importando...');
    const response = await fetch('/api/admin/import', {
      method: 'POST',
      headers: { 'Content-Type': 'application/json' },
      body: payload
    });

    const data = await response.json();
    setMessage(data.message ?? (response.ok ? 'Importado.' : 'Falhou.'));
  }

  return (
    <div className="panel">
      <h3>Importar JSON</h3>
      <p className="muted">Cole um objeto JSON ou um array no mesmo formato dos seus arquivos de conteúdo.</p>
      <textarea
        value={payload}
        onChange={(event) => setPayload(event.target.value)}
        className="text-area"
        placeholder='[{"name":"Novo conteúdo", "discipline":"Português", ...}]'
      />
      <div className="button-row">
        <button className="button primary" onClick={handleImport}>Importar no Supabase</button>
      </div>
      {message ? <p className="notice">{message}</p> : null}
    </div>
  );
}
