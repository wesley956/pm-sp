'use client';

import { useMemo, useState } from 'react';
import { createClient } from '@/lib/supabase/client';
import { hasSupabaseEnv } from '@/lib/env';
import type { PlanSlug } from '@/lib/types';

export function AuthForm({ selectedPlan }: { selectedPlan: PlanSlug }) {
  const [mode, setMode] = useState<'signin' | 'signup'>('signin');
  const [fullName, setFullName] = useState('');
  const [email, setEmail] = useState('');
  const [password, setPassword] = useState('');
  const [status, setStatus] = useState('');

  const label = useMemo(
    () => (selectedPlan === 'complete' ? 'Plano Completo' : 'Plano Básico'),
    [selectedPlan]
  );

  async function handleSubmit(event: React.FormEvent) {
    event.preventDefault();

    if (!hasSupabaseEnv()) {
      setStatus('Preencha as variáveis do Supabase para autenticação real.');
      return;
    }

    const supabase = createClient();

    if (mode === 'signup') {
      const { error } = await supabase.auth.signUp({
        email,
        password,
        options: {
          data: {
            full_name: fullName,
            selected_plan: selectedPlan
          }
        }
      });

      if (error) {
        setStatus(error.message);
        return;
      }

      setStatus('Conta criada com sucesso. Redirecionando para o checkout...');
      window.location.href = `/checkout?plan=${selectedPlan}`;
      return;
    }

    const { error } = await supabase.auth.signInWithPassword({
      email,
      password
    });

    if (error) {
      setStatus(error.message);
      return;
    }

    setStatus('Login realizado. Redirecionando para o checkout...');
    window.location.href = `/checkout?plan=${selectedPlan}`;
  }

  return (
    <div className="panel">
      <div className="button-row" style={{ marginBottom: 16 }}>
        <button
          type="button"
          className={`button ${mode === 'signin' ? 'primary' : 'secondary'}`}
          onClick={() => setMode('signin')}
        >
          Entrar
        </button>
        <button
          type="button"
          className={`button ${mode === 'signup' ? 'primary' : 'secondary'}`}
          onClick={() => setMode('signup')}
        >
          Criar conta
        </button>
      </div>

      <h2>{mode === 'signin' ? 'Acessar sua conta' : 'Criar sua conta'}</h2>

      <form onSubmit={handleSubmit} style={{ display: 'grid', gap: 12 }}>
        {mode === 'signup' ? (
          <div>
            <label>Nome</label>
            <input
              className="input"
              value={fullName}
              onChange={(e) => setFullName(e.target.value)}
              placeholder="Seu nome"
            />
          </div>
        ) : null}

        <div>
          <label>E-mail</label>
          <input
            className="input"
            value={email}
            onChange={(e) => setEmail(e.target.value)}
            type="email"
            placeholder="seuemail@exemplo.com"
          />
        </div>

        <div>
          <label>Senha</label>
          <input
            className="input"
            value={password}
            onChange={(e) => setPassword(e.target.value)}
            type="password"
            placeholder="••••••••"
          />
        </div>

        <div className="warning-card">
          <strong>Plano escolhido:</strong> {label}
        </div>

        <button type="submit" className="button primary full-width">
          {mode === 'signin' ? 'Entrar e seguir para pagamento' : 'Criar conta e seguir para pagamento'}
        </button>

        {status ? <p className="muted">{status}</p> : null}
      </form>
    </div>
  );
}
