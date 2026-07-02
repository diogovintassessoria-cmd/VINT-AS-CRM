# Vint Assessoria — Controle Financeiro

App estático (`index.html`) para controlar clientes, pagamentos e contratos em PDF.

## Deploy

1. Suba esta pasta para um repositório no GitHub.
2. Na [Vercel](https://vercel.com), clique em **Add New → Project**, importe o repositório e clique em **Deploy** (Framework Preset: **Other**, sem build).

## Banco de dados (Supabase)

Se o `index.html` ainda não estiver configurado com a URL/chave do seu Supabase:

1. Crie um projeto em [supabase.com](https://supabase.com).
2. Abra **SQL Editor** e rode todo o conteúdo do arquivo `supabase-schema.sql` deste repositório.
3. Em `Project Settings → API`, copie a **Project URL** e a **anon public key**.
4. Abra `index.html`, procure `SUPABASE_URL` e `SUPABASE_ANON_KEY` no topo do `<script>` e cole os valores.

Pronto — não precisa de mais nada.
