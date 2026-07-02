-- Rode este arquivo inteiro no SQL Editor do Supabase (Project → SQL Editor → New query)

create table if not exists clients (
  id uuid primary key default gen_random_uuid(),
  name text not null,
  price numeric not null default 0,
  paid boolean not null default false,
  contract_url text,
  contract_name text,
  created_at timestamptz not null default now()
);

alter table clients enable row level security;

create policy "allow all on clients"
  on clients for all
  using (true)
  with check (true);

insert into storage.buckets (id, name, public)
values ('contratos', 'contratos', true)
on conflict (id) do nothing;

create policy "public read contratos"
  on storage.objects for select
  using (bucket_id = 'contratos');

create policy "public insert contratos"
  on storage.objects for insert
  with check (bucket_id = 'contratos');

create policy "public delete contratos"
  on storage.objects for delete
  using (bucket_id = 'contratos');
