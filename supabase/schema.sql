create extension if not exists pgcrypto;

create type public.plan_slug as enum ('basic', 'complete');
create type public.subscription_status as enum ('trialing', 'active', 'past_due', 'canceled');

create table if not exists public.profiles (
  id uuid primary key references auth.users(id) on delete cascade,
  full_name text,
  role text not null default 'student' check (role in ('student', 'admin')),
  selected_exam text not null default 'PM-SP',
  created_at timestamptz not null default now()
);

create table if not exists public.subscriptions (
  user_id uuid primary key references public.profiles(id) on delete cascade,
  plan public.plan_slug not null default 'basic',
  status public.subscription_status not null default 'active',
  provider text,
  provider_customer_id text,
  provider_subscription_id text,
  amount_cents integer not null default 0,
  current_period_end timestamptz,
  created_at timestamptz not null default now(),
  updated_at timestamptz not null default now()
);

create table if not exists public.contents (
  id uuid primary key default gen_random_uuid(),
  slug text not null unique,
  source_id text,
  discipline text not null,
  topic text not null,
  name text not null,
  summary text not null default '',
  theory text not null default '',
  theory_blocks jsonb not null default '[]'::jsonb,
  key_points jsonb not null default '[]'::jsonb,
  proof_tips jsonb not null default '[]'::jsonb,
  examples jsonb not null default '[]'::jsonb,
  common_errors jsonb not null default '[]'::jsonb,
  minimum_plan public.plan_slug not null default 'basic',
  required_plan_rank integer not null default 1,
  is_published boolean not null default true,
  created_at timestamptz not null default now()
);

create table if not exists public.flashcards (
  id uuid primary key default gen_random_uuid(),
  content_id uuid not null references public.contents(id) on delete cascade,
  question text not null,
  answer text not null,
  sort_order integer not null default 0
);

create table if not exists public.questions (
  id uuid primary key default gen_random_uuid(),
  content_id uuid not null references public.contents(id) on delete cascade,
  prompt text not null,
  choices jsonb not null default '[]'::jsonb,
  correct_index integer not null default 0,
  explanation text not null default '',
  difficulty text not null default 'medium',
  sort_order integer not null default 0
);

create table if not exists public.study_progress (
  id uuid primary key default gen_random_uuid(),
  user_id uuid not null references public.profiles(id) on delete cascade,
  content_id uuid not null references public.contents(id) on delete cascade,
  read_completed boolean not null default false,
  flashcards_completed boolean not null default false,
  studied boolean not null default false,
  correct_answers integer not null default 0,
  wrong_answers integer not null default 0,
  total_attempts integer not null default 0,
  next_review_at timestamptz,
  last_studied_at timestamptz,
  created_at timestamptz not null default now(),
  unique(user_id, content_id)
);

create table if not exists public.payment_events (
  id uuid primary key default gen_random_uuid(),
  user_id uuid references public.profiles(id) on delete set null,
  provider text not null,
  event_name text not null,
  raw_payload jsonb not null default '{}'::jsonb,
  created_at timestamptz not null default now()
);

create table if not exists public.audit_logs (
  id uuid primary key default gen_random_uuid(),
  actor_id uuid references public.profiles(id) on delete set null,
  actor_email text,
  action text not null,
  details jsonb not null default '{}'::jsonb,
  created_at timestamptz not null default now()
);

create or replace function public.plan_rank_from_subscription(target_user uuid)
returns integer
language sql
stable
as $$
  select case s.plan when 'complete' then 2 else 1 end
  from public.subscriptions s
  where s.user_id = target_user
$$;

create or replace function public.handle_new_user()
returns trigger
language plpgsql
security definer
set search_path = public
as $$
begin
  insert into public.profiles (id, full_name)
  values (new.id, coalesce(new.raw_user_meta_data ->> 'full_name', 'Aluno'))
  on conflict (id) do nothing;

  insert into public.subscriptions (user_id, plan, status, amount_cents)
  values (new.id, 'basic', 'active', 1990)
  on conflict (user_id) do nothing;

  return new;
end;
$$;

drop trigger if exists on_auth_user_created on auth.users;
create trigger on_auth_user_created
after insert on auth.users
for each row execute function public.handle_new_user();

alter table public.profiles enable row level security;
alter table public.subscriptions enable row level security;
alter table public.contents enable row level security;
alter table public.flashcards enable row level security;
alter table public.questions enable row level security;
alter table public.study_progress enable row level security;
alter table public.payment_events enable row level security;
alter table public.audit_logs enable row level security;

create policy "profile self select"
on public.profiles for select
to authenticated
using (auth.uid() = id);

create policy "profile self update"
on public.profiles for update
to authenticated
using (auth.uid() = id);

create policy "subscription self select"
on public.subscriptions for select
to authenticated
using (auth.uid() = user_id);

create policy "student can read allowed contents"
on public.contents for select
to authenticated
using (
  is_published = true
  and required_plan_rank <= coalesce(public.plan_rank_from_subscription(auth.uid()), 1)
);

create policy "student can read allowed flashcards"
on public.flashcards for select
to authenticated
using (
  exists (
    select 1 from public.contents c
    where c.id = flashcards.content_id
      and c.is_published = true
      and c.required_plan_rank <= coalesce(public.plan_rank_from_subscription(auth.uid()), 1)
  )
);

create policy "student can read allowed questions"
on public.questions for select
to authenticated
using (
  exists (
    select 1 from public.contents c
    where c.id = questions.content_id
      and c.is_published = true
      and c.required_plan_rank <= coalesce(public.plan_rank_from_subscription(auth.uid()), 1)
  )
);

create policy "progress self select"
on public.study_progress for select
to authenticated
using (auth.uid() = user_id);

create policy "progress self insert"
on public.study_progress for insert
to authenticated
with check (auth.uid() = user_id);

create policy "progress self update"
on public.study_progress for update
to authenticated
using (auth.uid() = user_id);

create policy "admin can manage contents"
on public.contents for all
to authenticated
using (exists (select 1 from public.profiles p where p.id = auth.uid() and p.role = 'admin'))
with check (exists (select 1 from public.profiles p where p.id = auth.uid() and p.role = 'admin'));

create policy "admin can manage flashcards"
on public.flashcards for all
to authenticated
using (exists (
  select 1 from public.profiles p
  where p.id = auth.uid() and p.role = 'admin'
))
with check (exists (
  select 1 from public.profiles p
  where p.id = auth.uid() and p.role = 'admin'
));

create policy "admin can manage questions"
on public.questions for all
to authenticated
using (exists (
  select 1 from public.profiles p
  where p.id = auth.uid() and p.role = 'admin'
))
with check (exists (
  select 1 from public.profiles p
  where p.id = auth.uid() and p.role = 'admin'
));

create policy "admin can manage subscriptions"
on public.subscriptions for all
to authenticated
using (exists (select 1 from public.profiles p where p.id = auth.uid() and p.role = 'admin'))
with check (exists (select 1 from public.profiles p where p.id = auth.uid() and p.role = 'admin'));

create policy "admin can read payment_events"
on public.payment_events for select
to authenticated
using (exists (select 1 from public.profiles p where p.id = auth.uid() and p.role = 'admin'));

create policy "service role manages payment_events"
on public.payment_events for all
to service_role
using (true)
with check (true);

create policy "admin can read audit_logs"
on public.audit_logs for select
to authenticated
using (exists (select 1 from public.profiles p where p.id = auth.uid() and p.role = 'admin'));

create policy "service role manages audit_logs"
on public.audit_logs for all
to service_role
using (true)
with check (true);
