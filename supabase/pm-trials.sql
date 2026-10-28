-- PM Sentences Task: central results table (Supabase project: amandata-blog)
-- Run this in the Supabase dashboard: SQL Editor -> New query -> paste -> Run.
-- Every finished trial from every session lands here as one row.
-- Researchers export the whole table from the dashboard (Table editor -> Export).

create table if not exists public.pm_trials (
  id bigint generated always as identity primary key,
  session_id text not null,
  participant_id text not null,
  trial int not null,
  sentence text not null,
  target int not null,
  valence text,
  participant_group text not null,
  rating int,
  rating_rt int,
  pm_pressed int not null default 0,
  target_rt int,
  skipped int not null default 0,
  created_at timestamptz not null default now()
);

alter table public.pm_trials enable row level security;

-- The task page posts with the project's public anon key. This policy lets
-- anonymous visitors INSERT rows only: they cannot read, change, or delete
-- anyone's data. (The anon key is public by design; this policy is the lock.)
create policy "anonymous trial inserts"
  on public.pm_trials
  for insert
  to anon
  with check (true);

grant insert on public.pm_trials to anon;
