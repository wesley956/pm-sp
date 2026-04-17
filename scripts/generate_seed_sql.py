import json
from pathlib import Path

base = Path(__file__).resolve().parents[1]
seed_path = base / 'lib' / 'generated' / 'seed-content.json'
output_path = base / 'supabase' / 'seed.sql'

def sql_string(value: str) -> str:
    return "'" + value.replace("'", "''") + "'"

def sql_json(value) -> str:
    return sql_string(json.dumps(value, ensure_ascii=False)) + "::jsonb"

with seed_path.open('r', encoding='utf-8') as fh:
    items = json.load(fh)

lines = [
    "-- Generated seed",
    "begin;"
]

for item in items:
    minimum_plan = item.get('minimum_plan', 'basic')
    rank = 2 if minimum_plan == 'complete' else 1
    lines.append(
        f"""
with inserted as (
  insert into public.contents (
    slug, source_id, discipline, topic, name, summary, theory, theory_blocks, key_points, proof_tips, examples, common_errors,
    minimum_plan, required_plan_rank, is_published
  ) values (
    {sql_string(item['slug'])},
    {sql_string(item.get('source_id', ''))},
    {sql_string(item['discipline'])},
    {sql_string(item['topic'])},
    {sql_string(item['name'])},
    {sql_string(item.get('summary', ''))},
    {sql_string(item.get('theory', ''))},
    {sql_json(item.get('theory_blocks', []))},
    {sql_json(item.get('key_points', []))},
    {sql_json(item.get('proof_tips', []))},
    {sql_json(item.get('examples', []))},
    {sql_json(item.get('common_errors', []))},
    {sql_string(minimum_plan)}::public.plan_slug,
    {rank},
    true
  )
  on conflict (slug) do update
  set discipline = excluded.discipline,
      topic = excluded.topic,
      name = excluded.name,
      summary = excluded.summary,
      theory = excluded.theory,
      theory_blocks = excluded.theory_blocks,
      key_points = excluded.key_points,
      proof_tips = excluded.proof_tips,
      examples = excluded.examples,
      common_errors = excluded.common_errors,
      minimum_plan = excluded.minimum_plan,
      required_plan_rank = excluded.required_plan_rank,
      is_published = excluded.is_published
  returning id
)
select id from inserted;
""".strip()
    )
    slug = item['slug']
    lines.append(f"delete from public.flashcards where content_id in (select id from public.contents where slug = {sql_string(slug)});")
    for idx, fc in enumerate(item.get('flashcards', [])):
        lines.append(
            f"""insert into public.flashcards (content_id, question, answer, sort_order)
select id, {sql_string(fc.get('pergunta', ''))}, {sql_string(fc.get('resposta', ''))}, {idx}
from public.contents where slug = {sql_string(slug)};"""
        )
    lines.append(f"delete from public.questions where content_id in (select id from public.contents where slug = {sql_string(slug)});")
    for idx, q in enumerate(item.get('questions', [])):
        lines.append(
            f"""insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, {sql_string(q.get('enunciado', ''))}, {sql_json(q.get('alternativas', []))}, {int(q.get('correta', 0))}, {sql_string(q.get('explicacao', ''))}, {idx}
from public.contents where slug = {sql_string(slug)};"""
        )

lines.append("commit;")
output_path.write_text("\n".join(lines), encoding='utf-8')
print(f"Seed SQL generated at {output_path}")
