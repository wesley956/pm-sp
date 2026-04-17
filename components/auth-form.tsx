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
  const [status, setStatus] = useState<string>('');

  const label = useMemo(
    () => (selectedPlan === 'complete' ? 'Plano Completo' : 'Plano Básico'),
    [selectedPlan]
  );

  async function handleSubmit(event: React.FormEvent<HTMLFormElement>) {
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
        options: { data: { full_name: fullName, selected_plan: selectedPlan } }
      });
      setStatus(error ? error.message : 'Conta criada. Agora finalize no checkout.');
      return;
    }

    const { error } = await supabase.auth.signInWithPassword({ email, password });
    setStatus(error ? error.message : 'Login realizado. Você já pode seguir para o dashboard.');
    if (!error) window.location.href = '/dashboard';
  }

  return (
    <div className="auth-card">
      <div className="segmented">
        <button type="button" className={mode === 'signin' ? 'active' : ''} onClick={() => setMode('signin')}>Entrar</button>
        <button type="button" className={mode === 'signup' ? 'active' : ''} onClick={() => setMode('signup')}>Criar conta</button>
      </div>

      <form className="form-card" onSubmit={handleSubmit}>
        <h2>{mode === 'signin' ? 'Acessar sua conta' : 'Criar sua conta'}</h2>

        {mode === 'signup' ? (
          <label>
            Nome
            <input value={fullName} onChange={(e) => setFullName(e.target.value)} placeholder="Seu nome" />
          </label>
        ) : null}

        <label>
          E-mail
          <input value={email} onChange={(e) => setEmail(e.target.value)} type="email" placeholder="seuemail@exemplo.com" />
        </label>

        <label>
          Senha
          <input value={password} onChange={(e) => setPassword(e.target.value)} type="password" placeholder="••••••••" />
        </label>

        <label>
          Plano escolhido
          <input value={label} readOnly />
        </label>

        <button type="submit" className="button primary full-width">
          {mode === 'signin' ? 'Entrar' : 'Criar conta'}
        </button>
      </form>

      {mode === 'signup' ? (
        <a href={`/checkout?plan=${selectedPlan}`} className="button secondary full-width">Seguir para checkout</a>
      ) : null}

      {status ? <p className="notice">{status}</p> : null}
    </div>
  );
}
