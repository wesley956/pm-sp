# QAP SaaS V4

Versão pronta para deploy em **Vercel + Supabase**, com visual em **preto, vermelho, branco e azul**, autenticação, proteção de rotas, biblioteca, revisões, simulados, progresso persistente, painel admin e integração preparada com **Stripe Checkout**.

## O que esta versão fecha
- login e cadastro com Supabase Auth
- middleware com sessão SSR
- rotas protegidas: dashboard, biblioteca, revisões, simulados e admin
- plano **Básico** e **Completo**
- trava de conteúdo por plano
- progresso salvo no banco
- revisão inteligente por conteúdo
- simulados para plano completo
- painel admin para publicar/ocultar conteúdo e importar JSON
- checkout Stripe com webhook para atualizar assinatura
- SQL completo para Supabase
- seed já pronto com 65 conteúdos, 390 flashcards e 650 questões

## Stack
- Next.js 14 + TypeScript
- Supabase (Postgres, Auth, RLS)
- Stripe Checkout
- Deploy: Vercel

## 1) Criar o projeto no Supabase
1. Crie um projeto no Supabase.
2. Copie a URL, a anon key e a service role key.
3. Rode `supabase/schema.sql`.
4. Rode `supabase/seed.sql`.
5. No Authentication > Providers, habilite **Email**.

## 2) Criar um admin
1. Cadastre um usuário normal pela tela `/auth`.
2. Depois rode no SQL Editor:
```sql
update public.profiles
set role = 'admin'
where id = '<UUID_DO_USUARIO>';
```

## 3) Criar os preços no Stripe
Crie dois preços recorrentes:
- Básico
- Completo

Depois preencha no `.env`:
- `STRIPE_PRICE_BASIC`
- `STRIPE_PRICE_COMPLETE`

## 4) Variáveis no Vercel
Cadastre:
- `NEXT_PUBLIC_APP_URL`
- `NEXT_PUBLIC_SUPABASE_URL`
- `NEXT_PUBLIC_SUPABASE_ANON_KEY`
- `SUPABASE_SERVICE_ROLE_KEY`
- `STRIPE_SECRET_KEY`
- `STRIPE_WEBHOOK_SECRET`
- `STRIPE_PRICE_BASIC`
- `STRIPE_PRICE_COMPLETE`

## 5) Rodar localmente
```bash
npm install
npm run dev
```

## 6) Fluxo de deploy recomendado
1. Suba este projeto para GitHub.
2. Importe no Vercel.
3. Configure as env vars.
4. No Stripe, crie um webhook apontando para:
   `/api/stripe/webhook`
5. Teste:
   - cadastro
   - login
   - compra do plano
   - upgrade
   - bloqueio/liberação de conteúdo
   - revisão
   - simulados

## Observações sinceras
- A integração foi preparada com **Stripe** para ficar objetiva e confiável.
- Para usar Mercado Pago depois, basta trocar os endpoints de checkout/webhook.
- O projeto está pronto para ir ao ar, mas depende das **suas chaves reais** para autenticação e cobrança.
