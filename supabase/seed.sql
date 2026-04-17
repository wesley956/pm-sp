-- Generated seed
begin;
with inserted as (
  insert into public.contents (
    slug, source_id, discipline, topic, name, summary, theory, theory_blocks, key_points, proof_tips, examples, common_errors,
    minimum_plan, required_plan_rank, is_published
  ) values (
    'administracao-publica-artigo-37-001',
    'administracao-publica-artigo-37-001',
    'Direito',
    'Artigo 37',
    'Artigo 37',
    'O artigo 37 da Constituição Federal é um dos mais importantes para concursos, pois estabelece princípios e regras da administração pública direta e indireta. A VUNESP cobra fortemente os princípios expressos e temas ligados a legalidade, publicidade, moralidade, impessoalidade e eficiência, além de regras sobre cargos, concursos e atuação administrativa.',
    'O artigo 37 da Constituição Federal trata da administração pública direta e indireta. Ele é central porque concentra princípios e regras de atuação estatal.

Os cinco princípios expressos mais conhecidos são legalidade, impessoalidade, moralidade, publicidade e eficiência, resumidos pela sigla LIMPE.

A VUNESP cobra muito a leitura seca e interpretativa desse artigo, perguntando qual princípio foi violado ou como determinada regra se aplica.',
    '[{"titulo": "Conceito", "texto": "Artigo 37 é tema importante do edital e deve ser compreendido de forma prática e objetiva."}, {"titulo": "Regras", "texto": "É preciso conhecer conceitos básicos, funções principais e aplicação prática do conteúdo."}, {"titulo": "Como cai na prova (VUNESP)", "texto": "A VUNESP costuma cobrar definições, uso prático, interpretação de situações e identificação de comandos ou regras."}]'::jsonb,
    '["Artigo 37 aparece com frequência em prova.", "O uso prático do tema é muito valorizado.", "A banca gosta de conceitos objetivos e aplicação.", "Diferenças entre funções ou institutos geram pegadinhas.", "Treinar leitura atenta ajuda a evitar erros bobos."]'::jsonb,
    '["Associe conceito e função prática.", "Revise palavras-chave e diferenças centrais do tema.", "Treine identificar a alternativa mais objetiva e literal.", "Pegadinhas clássicas da VUNESP: confundir conceitos parecidos ou funções próximas."]'::jsonb,
    '["Exemplo de aplicação prática de Artigo 37 em contexto de prova.", "A banca costuma transformar o conceito em situação objetiva.", "A leitura atenta do enunciado faz diferença."]'::jsonb,
    '["Decorar sem entender o uso prático.", "Confundir conceitos parecidos.", "Marcar alternativa por associação apressada."]'::jsonb,
    'basic'::public.plan_slug,
    1,
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
delete from public.flashcards where content_id in (select id from public.contents where slug = 'administracao-publica-artigo-37-001');
insert into public.flashcards (content_id, question, answer, sort_order)
select id, 'O que é Artigo 37?', 'É um conteúdo relevante do edital que deve ser entendido de forma prática e conceitual.', 0
from public.contents where slug = 'administracao-publica-artigo-37-001';
insert into public.flashcards (content_id, question, answer, sort_order)
select id, 'Como a VUNESP costuma cobrar esse tema?', 'Por definições, aplicação prática e interpretação objetiva.', 1
from public.contents where slug = 'administracao-publica-artigo-37-001';
insert into public.flashcards (content_id, question, answer, sort_order)
select id, 'Qual cuidado principal?', 'Não confundir conceitos ou funções parecidas.', 2
from public.contents where slug = 'administracao-publica-artigo-37-001';
insert into public.flashcards (content_id, question, answer, sort_order)
select id, 'A leitura do enunciado importa?', 'Sim, muito.', 3
from public.contents where slug = 'administracao-publica-artigo-37-001';
insert into public.flashcards (content_id, question, answer, sort_order)
select id, 'O tema pode render ponto fácil?', 'Sim, com estudo direcionado.', 4
from public.contents where slug = 'administracao-publica-artigo-37-001';
insert into public.flashcards (content_id, question, answer, sort_order)
select id, 'O que mais ajuda a acertar?', 'Entender conceito e função prática ao mesmo tempo.', 5
from public.contents where slug = 'administracao-publica-artigo-37-001';
delete from public.questions where content_id in (select id from public.contents where slug = 'administracao-publica-artigo-37-001');
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'Artigo 37 é tema que a VUNESP costuma cobrar por meio de:', '["conceito e aplicação prática", "somente cálculos avançados", "somente literatura", "assuntos sem relação com o edital"]'::jsonb, 0, 'A banca costuma preferir cobrança objetiva e aplicada.', 0
from public.contents where slug = 'administracao-publica-artigo-37-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'Uma boa estratégia para esse tema é:', '["decorar sem contexto", "entender conceito e função prática", "ignorar diferenças entre institutos", "chutar rapidamente"]'::jsonb, 1, 'Entender conceito e uso prático é a melhor estratégia.', 1
from public.contents where slug = 'administracao-publica-artigo-37-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'Uma pegadinha comum da VUNESP é:', '["confundir conceitos parecidos", "usar apenas textos poéticos", "cobrar física quântica", "ignorar o edital"]'::jsonb, 0, 'A banca costuma explorar diferenças sutis entre conceitos próximos.', 2
from public.contents where slug = 'administracao-publica-artigo-37-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'O estudo do tema deve priorizar:', '["aplicação prática e leitura objetiva", "somente memorização cega", "apenas opinião pessoal", "nenhuma revisão"]'::jsonb, 0, 'Esse tipo de conteúdo rende mais quando estudado com foco prático.', 3
from public.contents where slug = 'administracao-publica-artigo-37-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'Um erro comum é:', '["comparar conceitos", "prestar atenção ao enunciado", "decorar sem compreender", "revisar palavras-chave"]'::jsonb, 2, 'A compreensão é essencial para evitar erros fáceis.', 4
from public.contents where slug = 'administracao-publica-artigo-37-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'A VUNESP valoriza, nesse tema:', '["objetividade e interpretação", "respostas ideológicas", "respostas vagas", "falta de precisão"]'::jsonb, 0, 'A banca costuma preferir formulações claras e objetivas.', 5
from public.contents where slug = 'administracao-publica-artigo-37-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'Ao estudar, o candidato deve:', '["ignorar exemplos", "relacionar teoria e prática", "descartar conceitos básicos", "evitar revisão"]'::jsonb, 1, 'Essa relação ajuda a consolidar o conteúdo.', 6
from public.contents where slug = 'administracao-publica-artigo-37-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'A principal habilidade exigida é:', '["entendimento conceitual com aplicação", "cálculo integral", "edição de vídeo", "programação avançada"]'::jsonb, 0, 'É isso que mais aparece em questões desse perfil.', 7
from public.contents where slug = 'administracao-publica-artigo-37-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'Um tema estratégico costuma ser aquele que:', '["aparece bastante e tem cobrança objetiva", "não cai nunca", "depende só de sorte", "não permite estudo"]'::jsonb, 0, 'Temas recorrentes e objetivos são estratégicos para pontuar.', 8
from public.contents where slug = 'administracao-publica-artigo-37-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'A leitura atenta do enunciado é importante porque:', '["a banca usa diferenças sutis", "não faz diferença", "substitui o estudo", "elimina todo conteúdo"]'::jsonb, 0, 'Muitas alternativas erradas parecem corretas à primeira vista.', 9
from public.contents where slug = 'administracao-publica-artigo-37-001';
with inserted as (
  insert into public.contents (
    slug, source_id, discipline, topic, name, summary, theory, theory_blocks, key_points, proof_tips, examples, common_errors,
    minimum_plan, required_plan_rank, is_published
  ) values (
    'administracao-publica-constituicao-do-estado-de-sp-001',
    'administracao-publica-constituicao-do-estado-de-sp-001',
    'Direito',
    'Constituição do Estado de SP',
    'Constituição do Estado de SP',
    'A Constituição do Estado de São Paulo organiza a estrutura política e administrativa estadual, complementando a Constituição Federal no âmbito do estado. A VUNESP pode cobrar organização institucional, competências estaduais e temas ligados à segurança pública e à Polícia Militar.',
    'A Constituição do Estado de São Paulo é a norma fundamental do estado, subordinada à Constituição Federal. Ela organiza os Poderes estaduais, a administração estadual, direitos e deveres no âmbito local e aspectos ligados à segurança pública paulista.

Para concursos estaduais, é importante entender que a Constituição estadual complementa a organização local dentro das competências do estado e deve respeitar a Constituição Federal.',
    '[{"titulo": "Conceito", "texto": "Constituição do Estado de SP é tema importante do edital e deve ser compreendido de forma prática e objetiva."}, {"titulo": "Regras", "texto": "É preciso conhecer conceitos básicos, funções principais e aplicação prática do conteúdo."}, {"titulo": "Como cai na prova (VUNESP)", "texto": "A VUNESP costuma cobrar definições, uso prático, interpretação de situações e identificação de comandos ou regras."}]'::jsonb,
    '["Constituição do Estado de SP aparece com frequência em prova.", "O uso prático do tema é muito valorizado.", "A banca gosta de conceitos objetivos e aplicação.", "Diferenças entre funções ou institutos geram pegadinhas.", "Treinar leitura atenta ajuda a evitar erros bobos."]'::jsonb,
    '["Associe conceito e função prática.", "Revise palavras-chave e diferenças centrais do tema.", "Treine identificar a alternativa mais objetiva e literal.", "Pegadinhas clássicas da VUNESP: confundir conceitos parecidos ou funções próximas."]'::jsonb,
    '["Exemplo de aplicação prática de Constituição do Estado de SP em contexto de prova.", "A banca costuma transformar o conceito em situação objetiva.", "A leitura atenta do enunciado faz diferença."]'::jsonb,
    '["Decorar sem entender o uso prático.", "Confundir conceitos parecidos.", "Marcar alternativa por associação apressada."]'::jsonb,
    'basic'::public.plan_slug,
    1,
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
delete from public.flashcards where content_id in (select id from public.contents where slug = 'administracao-publica-constituicao-do-estado-de-sp-001');
insert into public.flashcards (content_id, question, answer, sort_order)
select id, 'O que é Constituição do Estado de SP?', 'É um conteúdo relevante do edital que deve ser entendido de forma prática e conceitual.', 0
from public.contents where slug = 'administracao-publica-constituicao-do-estado-de-sp-001';
insert into public.flashcards (content_id, question, answer, sort_order)
select id, 'Como a VUNESP costuma cobrar esse tema?', 'Por definições, aplicação prática e interpretação objetiva.', 1
from public.contents where slug = 'administracao-publica-constituicao-do-estado-de-sp-001';
insert into public.flashcards (content_id, question, answer, sort_order)
select id, 'Qual cuidado principal?', 'Não confundir conceitos ou funções parecidas.', 2
from public.contents where slug = 'administracao-publica-constituicao-do-estado-de-sp-001';
insert into public.flashcards (content_id, question, answer, sort_order)
select id, 'A leitura do enunciado importa?', 'Sim, muito.', 3
from public.contents where slug = 'administracao-publica-constituicao-do-estado-de-sp-001';
insert into public.flashcards (content_id, question, answer, sort_order)
select id, 'O tema pode render ponto fácil?', 'Sim, com estudo direcionado.', 4
from public.contents where slug = 'administracao-publica-constituicao-do-estado-de-sp-001';
insert into public.flashcards (content_id, question, answer, sort_order)
select id, 'O que mais ajuda a acertar?', 'Entender conceito e função prática ao mesmo tempo.', 5
from public.contents where slug = 'administracao-publica-constituicao-do-estado-de-sp-001';
delete from public.questions where content_id in (select id from public.contents where slug = 'administracao-publica-constituicao-do-estado-de-sp-001');
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'Constituição do Estado de SP é tema que a VUNESP costuma cobrar por meio de:', '["conceito e aplicação prática", "somente cálculos avançados", "somente literatura", "assuntos sem relação com o edital"]'::jsonb, 0, 'A banca costuma preferir cobrança objetiva e aplicada.', 0
from public.contents where slug = 'administracao-publica-constituicao-do-estado-de-sp-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'Uma boa estratégia para esse tema é:', '["decorar sem contexto", "entender conceito e função prática", "ignorar diferenças entre institutos", "chutar rapidamente"]'::jsonb, 1, 'Entender conceito e uso prático é a melhor estratégia.', 1
from public.contents where slug = 'administracao-publica-constituicao-do-estado-de-sp-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'Uma pegadinha comum da VUNESP é:', '["confundir conceitos parecidos", "usar apenas textos poéticos", "cobrar física quântica", "ignorar o edital"]'::jsonb, 0, 'A banca costuma explorar diferenças sutis entre conceitos próximos.', 2
from public.contents where slug = 'administracao-publica-constituicao-do-estado-de-sp-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'O estudo do tema deve priorizar:', '["aplicação prática e leitura objetiva", "somente memorização cega", "apenas opinião pessoal", "nenhuma revisão"]'::jsonb, 0, 'Esse tipo de conteúdo rende mais quando estudado com foco prático.', 3
from public.contents where slug = 'administracao-publica-constituicao-do-estado-de-sp-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'Um erro comum é:', '["comparar conceitos", "prestar atenção ao enunciado", "decorar sem compreender", "revisar palavras-chave"]'::jsonb, 2, 'A compreensão é essencial para evitar erros fáceis.', 4
from public.contents where slug = 'administracao-publica-constituicao-do-estado-de-sp-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'A VUNESP valoriza, nesse tema:', '["objetividade e interpretação", "respostas ideológicas", "respostas vagas", "falta de precisão"]'::jsonb, 0, 'A banca costuma preferir formulações claras e objetivas.', 5
from public.contents where slug = 'administracao-publica-constituicao-do-estado-de-sp-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'Ao estudar, o candidato deve:', '["ignorar exemplos", "relacionar teoria e prática", "descartar conceitos básicos", "evitar revisão"]'::jsonb, 1, 'Essa relação ajuda a consolidar o conteúdo.', 6
from public.contents where slug = 'administracao-publica-constituicao-do-estado-de-sp-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'A principal habilidade exigida é:', '["entendimento conceitual com aplicação", "cálculo integral", "edição de vídeo", "programação avançada"]'::jsonb, 0, 'É isso que mais aparece em questões desse perfil.', 7
from public.contents where slug = 'administracao-publica-constituicao-do-estado-de-sp-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'Um tema estratégico costuma ser aquele que:', '["aparece bastante e tem cobrança objetiva", "não cai nunca", "depende só de sorte", "não permite estudo"]'::jsonb, 0, 'Temas recorrentes e objetivos são estratégicos para pontuar.', 8
from public.contents where slug = 'administracao-publica-constituicao-do-estado-de-sp-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'A leitura atenta do enunciado é importante porque:', '["a banca usa diferenças sutis", "não faz diferença", "substitui o estudo", "elimina todo conteúdo"]'::jsonb, 0, 'Muitas alternativas erradas parecem corretas à primeira vista.', 9
from public.contents where slug = 'administracao-publica-constituicao-do-estado-de-sp-001';
with inserted as (
  insert into public.contents (
    slug, source_id, discipline, topic, name, summary, theory, theory_blocks, key_points, proof_tips, examples, common_errors,
    minimum_plan, required_plan_rank, is_published
  ) values (
    'administracao-publica-constituicao-federal-001',
    'administracao-publica-constituicao-federal-001',
    'Direito',
    'Constituição Federal',
    'Constituição Federal',
    'A Constituição Federal é a norma máxima do país e organiza o Estado brasileiro, os direitos fundamentais, os Poderes e a administração pública. Para concursos, o foco costuma recair em princípios constitucionais, organização do Estado, direitos e garantias e temas ligados à segurança pública e à administração.',
    'A Constituição Federal de 1988 é a lei maior do Brasil. Ela organiza o Estado, define direitos e garantias fundamentais, disciplina a atuação dos Poderes e estabelece bases para a administração pública.

Ela está acima das demais normas. Nenhuma lei pode contrariá-la. Para PM-SP, é fundamental reconhecer que a Constituição serve como base de vários temas do edital, especialmente princípios da administração e segurança pública.

A VUNESP costuma cobrar dispositivos importantes de forma interpretativa, exigindo noção de hierarquia normativa e função da Constituição.',
    '[{"titulo": "Conceito", "texto": "Constituição Federal é tema importante do edital e deve ser compreendido de forma prática e objetiva."}, {"titulo": "Regras", "texto": "É preciso conhecer conceitos básicos, funções principais e aplicação prática do conteúdo."}, {"titulo": "Como cai na prova (VUNESP)", "texto": "A VUNESP costuma cobrar definições, uso prático, interpretação de situações e identificação de comandos ou regras."}]'::jsonb,
    '["Constituição Federal aparece com frequência em prova.", "O uso prático do tema é muito valorizado.", "A banca gosta de conceitos objetivos e aplicação.", "Diferenças entre funções ou institutos geram pegadinhas.", "Treinar leitura atenta ajuda a evitar erros bobos."]'::jsonb,
    '["Associe conceito e função prática.", "Revise palavras-chave e diferenças centrais do tema.", "Treine identificar a alternativa mais objetiva e literal.", "Pegadinhas clássicas da VUNESP: confundir conceitos parecidos ou funções próximas."]'::jsonb,
    '["Exemplo de aplicação prática de Constituição Federal em contexto de prova.", "A banca costuma transformar o conceito em situação objetiva.", "A leitura atenta do enunciado faz diferença."]'::jsonb,
    '["Decorar sem entender o uso prático.", "Confundir conceitos parecidos.", "Marcar alternativa por associação apressada."]'::jsonb,
    'basic'::public.plan_slug,
    1,
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
delete from public.flashcards where content_id in (select id from public.contents where slug = 'administracao-publica-constituicao-federal-001');
insert into public.flashcards (content_id, question, answer, sort_order)
select id, 'O que é Constituição Federal?', 'É um conteúdo relevante do edital que deve ser entendido de forma prática e conceitual.', 0
from public.contents where slug = 'administracao-publica-constituicao-federal-001';
insert into public.flashcards (content_id, question, answer, sort_order)
select id, 'Como a VUNESP costuma cobrar esse tema?', 'Por definições, aplicação prática e interpretação objetiva.', 1
from public.contents where slug = 'administracao-publica-constituicao-federal-001';
insert into public.flashcards (content_id, question, answer, sort_order)
select id, 'Qual cuidado principal?', 'Não confundir conceitos ou funções parecidas.', 2
from public.contents where slug = 'administracao-publica-constituicao-federal-001';
insert into public.flashcards (content_id, question, answer, sort_order)
select id, 'A leitura do enunciado importa?', 'Sim, muito.', 3
from public.contents where slug = 'administracao-publica-constituicao-federal-001';
insert into public.flashcards (content_id, question, answer, sort_order)
select id, 'O tema pode render ponto fácil?', 'Sim, com estudo direcionado.', 4
from public.contents where slug = 'administracao-publica-constituicao-federal-001';
insert into public.flashcards (content_id, question, answer, sort_order)
select id, 'O que mais ajuda a acertar?', 'Entender conceito e função prática ao mesmo tempo.', 5
from public.contents where slug = 'administracao-publica-constituicao-federal-001';
delete from public.questions where content_id in (select id from public.contents where slug = 'administracao-publica-constituicao-federal-001');
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'Constituição Federal é tema que a VUNESP costuma cobrar por meio de:', '["conceito e aplicação prática", "somente cálculos avançados", "somente literatura", "assuntos sem relação com o edital"]'::jsonb, 0, 'A banca costuma preferir cobrança objetiva e aplicada.', 0
from public.contents where slug = 'administracao-publica-constituicao-federal-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'Uma boa estratégia para esse tema é:', '["decorar sem contexto", "entender conceito e função prática", "ignorar diferenças entre institutos", "chutar rapidamente"]'::jsonb, 1, 'Entender conceito e uso prático é a melhor estratégia.', 1
from public.contents where slug = 'administracao-publica-constituicao-federal-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'Uma pegadinha comum da VUNESP é:', '["confundir conceitos parecidos", "usar apenas textos poéticos", "cobrar física quântica", "ignorar o edital"]'::jsonb, 0, 'A banca costuma explorar diferenças sutis entre conceitos próximos.', 2
from public.contents where slug = 'administracao-publica-constituicao-federal-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'O estudo do tema deve priorizar:', '["aplicação prática e leitura objetiva", "somente memorização cega", "apenas opinião pessoal", "nenhuma revisão"]'::jsonb, 0, 'Esse tipo de conteúdo rende mais quando estudado com foco prático.', 3
from public.contents where slug = 'administracao-publica-constituicao-federal-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'Um erro comum é:', '["comparar conceitos", "prestar atenção ao enunciado", "decorar sem compreender", "revisar palavras-chave"]'::jsonb, 2, 'A compreensão é essencial para evitar erros fáceis.', 4
from public.contents where slug = 'administracao-publica-constituicao-federal-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'A VUNESP valoriza, nesse tema:', '["objetividade e interpretação", "respostas ideológicas", "respostas vagas", "falta de precisão"]'::jsonb, 0, 'A banca costuma preferir formulações claras e objetivas.', 5
from public.contents where slug = 'administracao-publica-constituicao-federal-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'Ao estudar, o candidato deve:', '["ignorar exemplos", "relacionar teoria e prática", "descartar conceitos básicos", "evitar revisão"]'::jsonb, 1, 'Essa relação ajuda a consolidar o conteúdo.', 6
from public.contents where slug = 'administracao-publica-constituicao-federal-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'A principal habilidade exigida é:', '["entendimento conceitual com aplicação", "cálculo integral", "edição de vídeo", "programação avançada"]'::jsonb, 0, 'É isso que mais aparece em questões desse perfil.', 7
from public.contents where slug = 'administracao-publica-constituicao-federal-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'Um tema estratégico costuma ser aquele que:', '["aparece bastante e tem cobrança objetiva", "não cai nunca", "depende só de sorte", "não permite estudo"]'::jsonb, 0, 'Temas recorrentes e objetivos são estratégicos para pontuar.', 8
from public.contents where slug = 'administracao-publica-constituicao-federal-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'A leitura atenta do enunciado é importante porque:', '["a banca usa diferenças sutis", "não faz diferença", "substitui o estudo", "elimina todo conteúdo"]'::jsonb, 0, 'Muitas alternativas erradas parecem corretas à primeira vista.', 9
from public.contents where slug = 'administracao-publica-constituicao-federal-001';
with inserted as (
  insert into public.contents (
    slug, source_id, discipline, topic, name, summary, theory, theory_blocks, key_points, proof_tips, examples, common_errors,
    minimum_plan, required_plan_rank, is_published
  ) values (
    'administracao-publica-decreto-estadual-se-cair-no-edital-atualizado-001',
    'administracao-publica-decreto-estadual-se-cair-no-edital-atualizado-001',
    'Direito',
    'Decreto estadual (se cair no edital atualizado)',
    'Decreto estadual (se cair no edital atualizado)',
    'Decreto estadual, quando previsto em edital, é norma infralegal do Poder Executivo estadual, usada para regulamentar leis e organizar a atuação administrativa. Como o número do decreto pode variar conforme o edital, o foco estratégico é entender o que é decreto, sua posição hierárquica e sua função administrativa.',
    'O decreto estadual é um ato normativo do Poder Executivo estadual. Em geral, ele serve para regulamentar leis, detalhar sua execução e organizar procedimentos administrativos. Como é norma infralegal, não pode contrariar a Constituição nem a lei que regulamenta.

Se o edital atualizado trouxer um decreto específico, o estudo deve se voltar ao conteúdo literal desse ato. A VUNESP pode cobrar função regulamentar e hierarquia normativa.',
    '[{"titulo": "Conceito", "texto": "Decreto estadual (se cair no edital atualizado) é tema importante do edital e deve ser compreendido de forma prática e objetiva."}, {"titulo": "Regras", "texto": "É preciso conhecer conceitos básicos, funções principais e aplicação prática do conteúdo."}, {"titulo": "Como cai na prova (VUNESP)", "texto": "A VUNESP costuma cobrar definições, uso prático, interpretação de situações e identificação de comandos ou regras."}]'::jsonb,
    '["Decreto estadual (se cair no edital atualizado) aparece com frequência em prova.", "O uso prático do tema é muito valorizado.", "A banca gosta de conceitos objetivos e aplicação.", "Diferenças entre funções ou institutos geram pegadinhas.", "Treinar leitura atenta ajuda a evitar erros bobos."]'::jsonb,
    '["Associe conceito e função prática.", "Revise palavras-chave e diferenças centrais do tema.", "Treine identificar a alternativa mais objetiva e literal.", "Pegadinhas clássicas da VUNESP: confundir conceitos parecidos ou funções próximas."]'::jsonb,
    '["Exemplo de aplicação prática de Decreto estadual (se cair no edital atualizado) em contexto de prova.", "A banca costuma transformar o conceito em situação objetiva.", "A leitura atenta do enunciado faz diferença."]'::jsonb,
    '["Decorar sem entender o uso prático.", "Confundir conceitos parecidos.", "Marcar alternativa por associação apressada."]'::jsonb,
    'basic'::public.plan_slug,
    1,
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
delete from public.flashcards where content_id in (select id from public.contents where slug = 'administracao-publica-decreto-estadual-se-cair-no-edital-atualizado-001');
insert into public.flashcards (content_id, question, answer, sort_order)
select id, 'O que é Decreto estadual (se cair no edital atualizado)?', 'É um conteúdo relevante do edital que deve ser entendido de forma prática e conceitual.', 0
from public.contents where slug = 'administracao-publica-decreto-estadual-se-cair-no-edital-atualizado-001';
insert into public.flashcards (content_id, question, answer, sort_order)
select id, 'Como a VUNESP costuma cobrar esse tema?', 'Por definições, aplicação prática e interpretação objetiva.', 1
from public.contents where slug = 'administracao-publica-decreto-estadual-se-cair-no-edital-atualizado-001';
insert into public.flashcards (content_id, question, answer, sort_order)
select id, 'Qual cuidado principal?', 'Não confundir conceitos ou funções parecidas.', 2
from public.contents where slug = 'administracao-publica-decreto-estadual-se-cair-no-edital-atualizado-001';
insert into public.flashcards (content_id, question, answer, sort_order)
select id, 'A leitura do enunciado importa?', 'Sim, muito.', 3
from public.contents where slug = 'administracao-publica-decreto-estadual-se-cair-no-edital-atualizado-001';
insert into public.flashcards (content_id, question, answer, sort_order)
select id, 'O tema pode render ponto fácil?', 'Sim, com estudo direcionado.', 4
from public.contents where slug = 'administracao-publica-decreto-estadual-se-cair-no-edital-atualizado-001';
insert into public.flashcards (content_id, question, answer, sort_order)
select id, 'O que mais ajuda a acertar?', 'Entender conceito e função prática ao mesmo tempo.', 5
from public.contents where slug = 'administracao-publica-decreto-estadual-se-cair-no-edital-atualizado-001';
delete from public.questions where content_id in (select id from public.contents where slug = 'administracao-publica-decreto-estadual-se-cair-no-edital-atualizado-001');
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'Decreto estadual (se cair no edital atualizado) é tema que a VUNESP costuma cobrar por meio de:', '["conceito e aplicação prática", "somente cálculos avançados", "somente literatura", "assuntos sem relação com o edital"]'::jsonb, 0, 'A banca costuma preferir cobrança objetiva e aplicada.', 0
from public.contents where slug = 'administracao-publica-decreto-estadual-se-cair-no-edital-atualizado-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'Uma boa estratégia para esse tema é:', '["decorar sem contexto", "entender conceito e função prática", "ignorar diferenças entre institutos", "chutar rapidamente"]'::jsonb, 1, 'Entender conceito e uso prático é a melhor estratégia.', 1
from public.contents where slug = 'administracao-publica-decreto-estadual-se-cair-no-edital-atualizado-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'Uma pegadinha comum da VUNESP é:', '["confundir conceitos parecidos", "usar apenas textos poéticos", "cobrar física quântica", "ignorar o edital"]'::jsonb, 0, 'A banca costuma explorar diferenças sutis entre conceitos próximos.', 2
from public.contents where slug = 'administracao-publica-decreto-estadual-se-cair-no-edital-atualizado-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'O estudo do tema deve priorizar:', '["aplicação prática e leitura objetiva", "somente memorização cega", "apenas opinião pessoal", "nenhuma revisão"]'::jsonb, 0, 'Esse tipo de conteúdo rende mais quando estudado com foco prático.', 3
from public.contents where slug = 'administracao-publica-decreto-estadual-se-cair-no-edital-atualizado-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'Um erro comum é:', '["comparar conceitos", "prestar atenção ao enunciado", "decorar sem compreender", "revisar palavras-chave"]'::jsonb, 2, 'A compreensão é essencial para evitar erros fáceis.', 4
from public.contents where slug = 'administracao-publica-decreto-estadual-se-cair-no-edital-atualizado-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'A VUNESP valoriza, nesse tema:', '["objetividade e interpretação", "respostas ideológicas", "respostas vagas", "falta de precisão"]'::jsonb, 0, 'A banca costuma preferir formulações claras e objetivas.', 5
from public.contents where slug = 'administracao-publica-decreto-estadual-se-cair-no-edital-atualizado-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'Ao estudar, o candidato deve:', '["ignorar exemplos", "relacionar teoria e prática", "descartar conceitos básicos", "evitar revisão"]'::jsonb, 1, 'Essa relação ajuda a consolidar o conteúdo.', 6
from public.contents where slug = 'administracao-publica-decreto-estadual-se-cair-no-edital-atualizado-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'A principal habilidade exigida é:', '["entendimento conceitual com aplicação", "cálculo integral", "edição de vídeo", "programação avançada"]'::jsonb, 0, 'É isso que mais aparece em questões desse perfil.', 7
from public.contents where slug = 'administracao-publica-decreto-estadual-se-cair-no-edital-atualizado-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'Um tema estratégico costuma ser aquele que:', '["aparece bastante e tem cobrança objetiva", "não cai nunca", "depende só de sorte", "não permite estudo"]'::jsonb, 0, 'Temas recorrentes e objetivos são estratégicos para pontuar.', 8
from public.contents where slug = 'administracao-publica-decreto-estadual-se-cair-no-edital-atualizado-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'A leitura atenta do enunciado é importante porque:', '["a banca usa diferenças sutis", "não faz diferença", "substitui o estudo", "elimina todo conteúdo"]'::jsonb, 0, 'Muitas alternativas erradas parecem corretas à primeira vista.', 9
from public.contents where slug = 'administracao-publica-decreto-estadual-se-cair-no-edital-atualizado-001';
with inserted as (
  insert into public.contents (
    slug, source_id, discipline, topic, name, summary, theory, theory_blocks, key_points, proof_tips, examples, common_errors,
    minimum_plan, required_plan_rank, is_published
  ) values (
    'administracao-publica-lei-de-acesso-a-informacao-001',
    'administracao-publica-lei-de-acesso-a-informacao-001',
    'Direito',
    'Lei de Acesso à Informação (Lei 12.527/11)',
    'Lei de Acesso à Informação (Lei 12.527/11)',
    'A Lei de Acesso à Informação garante ao cidadão o direito de obter informações públicas, fortalecendo transparência, controle social e publicidade administrativa. A VUNESP cobra a finalidade da lei, o dever de transparência e o acesso como regra, com sigilo como exceção.',
    'A Lei nº 12.527/2011, conhecida como Lei de Acesso à Informação, regulamenta o direito constitucional de acesso às informações públicas. Seu objetivo é ampliar a transparência da administração e permitir maior controle social sobre a atuação do Estado.

A lógica central da LAI é: a publicidade é a regra; o sigilo é a exceção. Também aparecem transparência ativa e transparência passiva.

A VUNESP costuma cobrar finalidade da lei, ideia de transparência e dever estatal de prestar informação.',
    '[{"titulo": "Conceito", "texto": "Lei de Acesso à Informação (Lei 12.527/11) é tema importante do edital e deve ser compreendido de forma prática e objetiva."}, {"titulo": "Regras", "texto": "É preciso conhecer conceitos básicos, funções principais e aplicação prática do conteúdo."}, {"titulo": "Como cai na prova (VUNESP)", "texto": "A VUNESP costuma cobrar definições, uso prático, interpretação de situações e identificação de comandos ou regras."}]'::jsonb,
    '["Lei de Acesso à Informação (Lei 12.527/11) aparece com frequência em prova.", "O uso prático do tema é muito valorizado.", "A banca gosta de conceitos objetivos e aplicação.", "Diferenças entre funções ou institutos geram pegadinhas.", "Treinar leitura atenta ajuda a evitar erros bobos."]'::jsonb,
    '["Associe conceito e função prática.", "Revise palavras-chave e diferenças centrais do tema.", "Treine identificar a alternativa mais objetiva e literal.", "Pegadinhas clássicas da VUNESP: confundir conceitos parecidos ou funções próximas."]'::jsonb,
    '["Exemplo de aplicação prática de Lei de Acesso à Informação (Lei 12.527/11) em contexto de prova.", "A banca costuma transformar o conceito em situação objetiva.", "A leitura atenta do enunciado faz diferença."]'::jsonb,
    '["Decorar sem entender o uso prático.", "Confundir conceitos parecidos.", "Marcar alternativa por associação apressada."]'::jsonb,
    'basic'::public.plan_slug,
    1,
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
delete from public.flashcards where content_id in (select id from public.contents where slug = 'administracao-publica-lei-de-acesso-a-informacao-001');
insert into public.flashcards (content_id, question, answer, sort_order)
select id, 'O que é Lei de Acesso à Informação (Lei 12.527/11)?', 'É um conteúdo relevante do edital que deve ser entendido de forma prática e conceitual.', 0
from public.contents where slug = 'administracao-publica-lei-de-acesso-a-informacao-001';
insert into public.flashcards (content_id, question, answer, sort_order)
select id, 'Como a VUNESP costuma cobrar esse tema?', 'Por definições, aplicação prática e interpretação objetiva.', 1
from public.contents where slug = 'administracao-publica-lei-de-acesso-a-informacao-001';
insert into public.flashcards (content_id, question, answer, sort_order)
select id, 'Qual cuidado principal?', 'Não confundir conceitos ou funções parecidas.', 2
from public.contents where slug = 'administracao-publica-lei-de-acesso-a-informacao-001';
insert into public.flashcards (content_id, question, answer, sort_order)
select id, 'A leitura do enunciado importa?', 'Sim, muito.', 3
from public.contents where slug = 'administracao-publica-lei-de-acesso-a-informacao-001';
insert into public.flashcards (content_id, question, answer, sort_order)
select id, 'O tema pode render ponto fácil?', 'Sim, com estudo direcionado.', 4
from public.contents where slug = 'administracao-publica-lei-de-acesso-a-informacao-001';
insert into public.flashcards (content_id, question, answer, sort_order)
select id, 'O que mais ajuda a acertar?', 'Entender conceito e função prática ao mesmo tempo.', 5
from public.contents where slug = 'administracao-publica-lei-de-acesso-a-informacao-001';
delete from public.questions where content_id in (select id from public.contents where slug = 'administracao-publica-lei-de-acesso-a-informacao-001');
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'Lei de Acesso à Informação (Lei 12.527/11) é tema que a VUNESP costuma cobrar por meio de:', '["conceito e aplicação prática", "somente cálculos avançados", "somente literatura", "assuntos sem relação com o edital"]'::jsonb, 0, 'A banca costuma preferir cobrança objetiva e aplicada.', 0
from public.contents where slug = 'administracao-publica-lei-de-acesso-a-informacao-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'Uma boa estratégia para esse tema é:', '["decorar sem contexto", "entender conceito e função prática", "ignorar diferenças entre institutos", "chutar rapidamente"]'::jsonb, 1, 'Entender conceito e uso prático é a melhor estratégia.', 1
from public.contents where slug = 'administracao-publica-lei-de-acesso-a-informacao-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'Uma pegadinha comum da VUNESP é:', '["confundir conceitos parecidos", "usar apenas textos poéticos", "cobrar física quântica", "ignorar o edital"]'::jsonb, 0, 'A banca costuma explorar diferenças sutis entre conceitos próximos.', 2
from public.contents where slug = 'administracao-publica-lei-de-acesso-a-informacao-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'O estudo do tema deve priorizar:', '["aplicação prática e leitura objetiva", "somente memorização cega", "apenas opinião pessoal", "nenhuma revisão"]'::jsonb, 0, 'Esse tipo de conteúdo rende mais quando estudado com foco prático.', 3
from public.contents where slug = 'administracao-publica-lei-de-acesso-a-informacao-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'Um erro comum é:', '["comparar conceitos", "prestar atenção ao enunciado", "decorar sem compreender", "revisar palavras-chave"]'::jsonb, 2, 'A compreensão é essencial para evitar erros fáceis.', 4
from public.contents where slug = 'administracao-publica-lei-de-acesso-a-informacao-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'A VUNESP valoriza, nesse tema:', '["objetividade e interpretação", "respostas ideológicas", "respostas vagas", "falta de precisão"]'::jsonb, 0, 'A banca costuma preferir formulações claras e objetivas.', 5
from public.contents where slug = 'administracao-publica-lei-de-acesso-a-informacao-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'Ao estudar, o candidato deve:', '["ignorar exemplos", "relacionar teoria e prática", "descartar conceitos básicos", "evitar revisão"]'::jsonb, 1, 'Essa relação ajuda a consolidar o conteúdo.', 6
from public.contents where slug = 'administracao-publica-lei-de-acesso-a-informacao-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'A principal habilidade exigida é:', '["entendimento conceitual com aplicação", "cálculo integral", "edição de vídeo", "programação avançada"]'::jsonb, 0, 'É isso que mais aparece em questões desse perfil.', 7
from public.contents where slug = 'administracao-publica-lei-de-acesso-a-informacao-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'Um tema estratégico costuma ser aquele que:', '["aparece bastante e tem cobrança objetiva", "não cai nunca", "depende só de sorte", "não permite estudo"]'::jsonb, 0, 'Temas recorrentes e objetivos são estratégicos para pontuar.', 8
from public.contents where slug = 'administracao-publica-lei-de-acesso-a-informacao-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'A leitura atenta do enunciado é importante porque:', '["a banca usa diferenças sutis", "não faz diferença", "substitui o estudo", "elimina todo conteúdo"]'::jsonb, 0, 'Muitas alternativas erradas parecem corretas à primeira vista.', 9
from public.contents where slug = 'administracao-publica-lei-de-acesso-a-informacao-001';
with inserted as (
  insert into public.contents (
    slug, source_id, discipline, topic, name, summary, theory, theory_blocks, key_points, proof_tips, examples, common_errors,
    minimum_plan, required_plan_rank, is_published
  ) values (
    'administracao-publica-organizacao-dos-poderes-001',
    'administracao-publica-organizacao-dos-poderes-001',
    'Direito',
    'Organização dos poderes',
    'Organização dos poderes',
    'A organização dos Poderes no Brasil se baseia na separação entre Executivo, Legislativo e Judiciário, cada qual com funções próprias e possibilidade de controle recíproco. A VUNESP cobra conceito, funções básicas e noções de equilíbrio institucional.',
    'A separação dos Poderes é um princípio fundamental do Estado brasileiro. Executivo, Legislativo e Judiciário possuem funções típicas distintas.

O Executivo administra e governa. O Legislativo produz leis e fiscaliza. O Judiciário aplica o Direito e resolve conflitos. Esse modelo busca evitar concentração excessiva de poder.

A VUNESP costuma cobrar funções típicas, distinção entre Poderes e compreensão do arranjo constitucional.',
    '[{"titulo": "Conceito", "texto": "Organização dos poderes é tema importante do edital e deve ser compreendido de forma prática e objetiva."}, {"titulo": "Regras", "texto": "É preciso conhecer conceitos básicos, funções principais e aplicação prática do conteúdo."}, {"titulo": "Como cai na prova (VUNESP)", "texto": "A VUNESP costuma cobrar definições, uso prático, interpretação de situações e identificação de comandos ou regras."}]'::jsonb,
    '["Organização dos poderes aparece com frequência em prova.", "O uso prático do tema é muito valorizado.", "A banca gosta de conceitos objetivos e aplicação.", "Diferenças entre funções ou institutos geram pegadinhas.", "Treinar leitura atenta ajuda a evitar erros bobos."]'::jsonb,
    '["Associe conceito e função prática.", "Revise palavras-chave e diferenças centrais do tema.", "Treine identificar a alternativa mais objetiva e literal.", "Pegadinhas clássicas da VUNESP: confundir conceitos parecidos ou funções próximas."]'::jsonb,
    '["Exemplo de aplicação prática de Organização dos poderes em contexto de prova.", "A banca costuma transformar o conceito em situação objetiva.", "A leitura atenta do enunciado faz diferença."]'::jsonb,
    '["Decorar sem entender o uso prático.", "Confundir conceitos parecidos.", "Marcar alternativa por associação apressada."]'::jsonb,
    'basic'::public.plan_slug,
    1,
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
delete from public.flashcards where content_id in (select id from public.contents where slug = 'administracao-publica-organizacao-dos-poderes-001');
insert into public.flashcards (content_id, question, answer, sort_order)
select id, 'O que é Organização dos poderes?', 'É um conteúdo relevante do edital que deve ser entendido de forma prática e conceitual.', 0
from public.contents where slug = 'administracao-publica-organizacao-dos-poderes-001';
insert into public.flashcards (content_id, question, answer, sort_order)
select id, 'Como a VUNESP costuma cobrar esse tema?', 'Por definições, aplicação prática e interpretação objetiva.', 1
from public.contents where slug = 'administracao-publica-organizacao-dos-poderes-001';
insert into public.flashcards (content_id, question, answer, sort_order)
select id, 'Qual cuidado principal?', 'Não confundir conceitos ou funções parecidas.', 2
from public.contents where slug = 'administracao-publica-organizacao-dos-poderes-001';
insert into public.flashcards (content_id, question, answer, sort_order)
select id, 'A leitura do enunciado importa?', 'Sim, muito.', 3
from public.contents where slug = 'administracao-publica-organizacao-dos-poderes-001';
insert into public.flashcards (content_id, question, answer, sort_order)
select id, 'O tema pode render ponto fácil?', 'Sim, com estudo direcionado.', 4
from public.contents where slug = 'administracao-publica-organizacao-dos-poderes-001';
insert into public.flashcards (content_id, question, answer, sort_order)
select id, 'O que mais ajuda a acertar?', 'Entender conceito e função prática ao mesmo tempo.', 5
from public.contents where slug = 'administracao-publica-organizacao-dos-poderes-001';
delete from public.questions where content_id in (select id from public.contents where slug = 'administracao-publica-organizacao-dos-poderes-001');
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'Organização dos poderes é tema que a VUNESP costuma cobrar por meio de:', '["conceito e aplicação prática", "somente cálculos avançados", "somente literatura", "assuntos sem relação com o edital"]'::jsonb, 0, 'A banca costuma preferir cobrança objetiva e aplicada.', 0
from public.contents where slug = 'administracao-publica-organizacao-dos-poderes-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'Uma boa estratégia para esse tema é:', '["decorar sem contexto", "entender conceito e função prática", "ignorar diferenças entre institutos", "chutar rapidamente"]'::jsonb, 1, 'Entender conceito e uso prático é a melhor estratégia.', 1
from public.contents where slug = 'administracao-publica-organizacao-dos-poderes-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'Uma pegadinha comum da VUNESP é:', '["confundir conceitos parecidos", "usar apenas textos poéticos", "cobrar física quântica", "ignorar o edital"]'::jsonb, 0, 'A banca costuma explorar diferenças sutis entre conceitos próximos.', 2
from public.contents where slug = 'administracao-publica-organizacao-dos-poderes-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'O estudo do tema deve priorizar:', '["aplicação prática e leitura objetiva", "somente memorização cega", "apenas opinião pessoal", "nenhuma revisão"]'::jsonb, 0, 'Esse tipo de conteúdo rende mais quando estudado com foco prático.', 3
from public.contents where slug = 'administracao-publica-organizacao-dos-poderes-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'Um erro comum é:', '["comparar conceitos", "prestar atenção ao enunciado", "decorar sem compreender", "revisar palavras-chave"]'::jsonb, 2, 'A compreensão é essencial para evitar erros fáceis.', 4
from public.contents where slug = 'administracao-publica-organizacao-dos-poderes-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'A VUNESP valoriza, nesse tema:', '["objetividade e interpretação", "respostas ideológicas", "respostas vagas", "falta de precisão"]'::jsonb, 0, 'A banca costuma preferir formulações claras e objetivas.', 5
from public.contents where slug = 'administracao-publica-organizacao-dos-poderes-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'Ao estudar, o candidato deve:', '["ignorar exemplos", "relacionar teoria e prática", "descartar conceitos básicos", "evitar revisão"]'::jsonb, 1, 'Essa relação ajuda a consolidar o conteúdo.', 6
from public.contents where slug = 'administracao-publica-organizacao-dos-poderes-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'A principal habilidade exigida é:', '["entendimento conceitual com aplicação", "cálculo integral", "edição de vídeo", "programação avançada"]'::jsonb, 0, 'É isso que mais aparece em questões desse perfil.', 7
from public.contents where slug = 'administracao-publica-organizacao-dos-poderes-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'Um tema estratégico costuma ser aquele que:', '["aparece bastante e tem cobrança objetiva", "não cai nunca", "depende só de sorte", "não permite estudo"]'::jsonb, 0, 'Temas recorrentes e objetivos são estratégicos para pontuar.', 8
from public.contents where slug = 'administracao-publica-organizacao-dos-poderes-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'A leitura atenta do enunciado é importante porque:', '["a banca usa diferenças sutis", "não faz diferença", "substitui o estudo", "elimina todo conteúdo"]'::jsonb, 0, 'Muitas alternativas erradas parecem corretas à primeira vista.', 9
from public.contents where slug = 'administracao-publica-organizacao-dos-poderes-001';
with inserted as (
  insert into public.contents (
    slug, source_id, discipline, topic, name, summary, theory, theory_blocks, key_points, proof_tips, examples, common_errors,
    minimum_plan, required_plan_rank, is_published
  ) values (
    'administracao-publica-policia-militar-001',
    'administracao-publica-policia-militar-001',
    'Direito',
    'Polícia Militar',
    'Polícia Militar',
    'A Polícia Militar integra a estrutura da segurança pública e exerce papel importante na preservação da ordem pública. A VUNESP cobra noções constitucionais e institucionais da PM, especialmente sua vinculação à segurança pública e sua função na ordem pública.',
    'A Polícia Militar é um dos órgãos de segurança pública previstos na Constituição. No contexto dos estados, ela se relaciona diretamente à preservação da ordem pública e ao policiamento ostensivo.

Para concursos da PM-SP, esse tema tem valor estratégico porque conecta Constituição Federal, Constituição do Estado de São Paulo e estrutura da segurança pública.

A VUNESP tende a cobrar esse conteúdo de forma objetiva, com foco no papel constitucional e administrativo da instituição.',
    '[{"titulo": "Conceito", "texto": "Polícia Militar é tema importante do edital e deve ser compreendido de forma prática e objetiva."}, {"titulo": "Regras", "texto": "É preciso conhecer conceitos básicos, funções principais e aplicação prática do conteúdo."}, {"titulo": "Como cai na prova (VUNESP)", "texto": "A VUNESP costuma cobrar definições, uso prático, interpretação de situações e identificação de comandos ou regras."}]'::jsonb,
    '["Polícia Militar aparece com frequência em prova.", "O uso prático do tema é muito valorizado.", "A banca gosta de conceitos objetivos e aplicação.", "Diferenças entre funções ou institutos geram pegadinhas.", "Treinar leitura atenta ajuda a evitar erros bobos."]'::jsonb,
    '["Associe conceito e função prática.", "Revise palavras-chave e diferenças centrais do tema.", "Treine identificar a alternativa mais objetiva e literal.", "Pegadinhas clássicas da VUNESP: confundir conceitos parecidos ou funções próximas."]'::jsonb,
    '["Exemplo de aplicação prática de Polícia Militar em contexto de prova.", "A banca costuma transformar o conceito em situação objetiva.", "A leitura atenta do enunciado faz diferença."]'::jsonb,
    '["Decorar sem entender o uso prático.", "Confundir conceitos parecidos.", "Marcar alternativa por associação apressada."]'::jsonb,
    'basic'::public.plan_slug,
    1,
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
delete from public.flashcards where content_id in (select id from public.contents where slug = 'administracao-publica-policia-militar-001');
insert into public.flashcards (content_id, question, answer, sort_order)
select id, 'O que é Polícia Militar?', 'É um conteúdo relevante do edital que deve ser entendido de forma prática e conceitual.', 0
from public.contents where slug = 'administracao-publica-policia-militar-001';
insert into public.flashcards (content_id, question, answer, sort_order)
select id, 'Como a VUNESP costuma cobrar esse tema?', 'Por definições, aplicação prática e interpretação objetiva.', 1
from public.contents where slug = 'administracao-publica-policia-militar-001';
insert into public.flashcards (content_id, question, answer, sort_order)
select id, 'Qual cuidado principal?', 'Não confundir conceitos ou funções parecidas.', 2
from public.contents where slug = 'administracao-publica-policia-militar-001';
insert into public.flashcards (content_id, question, answer, sort_order)
select id, 'A leitura do enunciado importa?', 'Sim, muito.', 3
from public.contents where slug = 'administracao-publica-policia-militar-001';
insert into public.flashcards (content_id, question, answer, sort_order)
select id, 'O tema pode render ponto fácil?', 'Sim, com estudo direcionado.', 4
from public.contents where slug = 'administracao-publica-policia-militar-001';
insert into public.flashcards (content_id, question, answer, sort_order)
select id, 'O que mais ajuda a acertar?', 'Entender conceito e função prática ao mesmo tempo.', 5
from public.contents where slug = 'administracao-publica-policia-militar-001';
delete from public.questions where content_id in (select id from public.contents where slug = 'administracao-publica-policia-militar-001');
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'Polícia Militar é tema que a VUNESP costuma cobrar por meio de:', '["conceito e aplicação prática", "somente cálculos avançados", "somente literatura", "assuntos sem relação com o edital"]'::jsonb, 0, 'A banca costuma preferir cobrança objetiva e aplicada.', 0
from public.contents where slug = 'administracao-publica-policia-militar-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'Uma boa estratégia para esse tema é:', '["decorar sem contexto", "entender conceito e função prática", "ignorar diferenças entre institutos", "chutar rapidamente"]'::jsonb, 1, 'Entender conceito e uso prático é a melhor estratégia.', 1
from public.contents where slug = 'administracao-publica-policia-militar-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'Uma pegadinha comum da VUNESP é:', '["confundir conceitos parecidos", "usar apenas textos poéticos", "cobrar física quântica", "ignorar o edital"]'::jsonb, 0, 'A banca costuma explorar diferenças sutis entre conceitos próximos.', 2
from public.contents where slug = 'administracao-publica-policia-militar-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'O estudo do tema deve priorizar:', '["aplicação prática e leitura objetiva", "somente memorização cega", "apenas opinião pessoal", "nenhuma revisão"]'::jsonb, 0, 'Esse tipo de conteúdo rende mais quando estudado com foco prático.', 3
from public.contents where slug = 'administracao-publica-policia-militar-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'Um erro comum é:', '["comparar conceitos", "prestar atenção ao enunciado", "decorar sem compreender", "revisar palavras-chave"]'::jsonb, 2, 'A compreensão é essencial para evitar erros fáceis.', 4
from public.contents where slug = 'administracao-publica-policia-militar-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'A VUNESP valoriza, nesse tema:', '["objetividade e interpretação", "respostas ideológicas", "respostas vagas", "falta de precisão"]'::jsonb, 0, 'A banca costuma preferir formulações claras e objetivas.', 5
from public.contents where slug = 'administracao-publica-policia-militar-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'Ao estudar, o candidato deve:', '["ignorar exemplos", "relacionar teoria e prática", "descartar conceitos básicos", "evitar revisão"]'::jsonb, 1, 'Essa relação ajuda a consolidar o conteúdo.', 6
from public.contents where slug = 'administracao-publica-policia-militar-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'A principal habilidade exigida é:', '["entendimento conceitual com aplicação", "cálculo integral", "edição de vídeo", "programação avançada"]'::jsonb, 0, 'É isso que mais aparece em questões desse perfil.', 7
from public.contents where slug = 'administracao-publica-policia-militar-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'Um tema estratégico costuma ser aquele que:', '["aparece bastante e tem cobrança objetiva", "não cai nunca", "depende só de sorte", "não permite estudo"]'::jsonb, 0, 'Temas recorrentes e objetivos são estratégicos para pontuar.', 8
from public.contents where slug = 'administracao-publica-policia-militar-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'A leitura atenta do enunciado é importante porque:', '["a banca usa diferenças sutis", "não faz diferença", "substitui o estudo", "elimina todo conteúdo"]'::jsonb, 0, 'Muitas alternativas erradas parecem corretas à primeira vista.', 9
from public.contents where slug = 'administracao-publica-policia-militar-001';
with inserted as (
  insert into public.contents (
    slug, source_id, discipline, topic, name, summary, theory, theory_blocks, key_points, proof_tips, examples, common_errors,
    minimum_plan, required_plan_rank, is_published
  ) values (
    'administracao-publica-principios-da-administracao-publica-001',
    'administracao-publica-principios-da-administracao-publica-001',
    'Direito',
    'Princípios da Administração Pública',
    'Princípios da Administração Pública',
    'Os princípios da Administração Pública orientam a atuação do Estado e dos agentes públicos. A VUNESP cobra principalmente os princípios expressos do artigo 37, mas também gosta de situações práticas que revelam violação ou respeito a esses princípios.',
    'Princípios da Administração Pública são diretrizes fundamentais que orientam a ação estatal. Os principais princípios expressos são legalidade, impessoalidade, moralidade, publicidade e eficiência.

Na prática, esses princípios aparecem em situações como concursos públicos, divulgação de atos, atendimento ao cidadão, uso de recursos públicos, propaganda institucional e gestão administrativa.

A VUNESP gosta de apresentar casos concretos e pedir qual princípio foi respeitado ou violado.',
    '[{"titulo": "Conceito", "texto": "Princípios da Administração Pública é tema importante do edital e deve ser compreendido de forma prática e objetiva."}, {"titulo": "Regras", "texto": "É preciso conhecer conceitos básicos, funções principais e aplicação prática do conteúdo."}, {"titulo": "Como cai na prova (VUNESP)", "texto": "A VUNESP costuma cobrar definições, uso prático, interpretação de situações e identificação de comandos ou regras."}]'::jsonb,
    '["Princípios da Administração Pública aparece com frequência em prova.", "O uso prático do tema é muito valorizado.", "A banca gosta de conceitos objetivos e aplicação.", "Diferenças entre funções ou institutos geram pegadinhas.", "Treinar leitura atenta ajuda a evitar erros bobos."]'::jsonb,
    '["Associe conceito e função prática.", "Revise palavras-chave e diferenças centrais do tema.", "Treine identificar a alternativa mais objetiva e literal.", "Pegadinhas clássicas da VUNESP: confundir conceitos parecidos ou funções próximas."]'::jsonb,
    '["Exemplo de aplicação prática de Princípios da Administração Pública em contexto de prova.", "A banca costuma transformar o conceito em situação objetiva.", "A leitura atenta do enunciado faz diferença."]'::jsonb,
    '["Decorar sem entender o uso prático.", "Confundir conceitos parecidos.", "Marcar alternativa por associação apressada."]'::jsonb,
    'basic'::public.plan_slug,
    1,
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
delete from public.flashcards where content_id in (select id from public.contents where slug = 'administracao-publica-principios-da-administracao-publica-001');
insert into public.flashcards (content_id, question, answer, sort_order)
select id, 'O que é Princípios da Administração Pública?', 'É um conteúdo relevante do edital que deve ser entendido de forma prática e conceitual.', 0
from public.contents where slug = 'administracao-publica-principios-da-administracao-publica-001';
insert into public.flashcards (content_id, question, answer, sort_order)
select id, 'Como a VUNESP costuma cobrar esse tema?', 'Por definições, aplicação prática e interpretação objetiva.', 1
from public.contents where slug = 'administracao-publica-principios-da-administracao-publica-001';
insert into public.flashcards (content_id, question, answer, sort_order)
select id, 'Qual cuidado principal?', 'Não confundir conceitos ou funções parecidas.', 2
from public.contents where slug = 'administracao-publica-principios-da-administracao-publica-001';
insert into public.flashcards (content_id, question, answer, sort_order)
select id, 'A leitura do enunciado importa?', 'Sim, muito.', 3
from public.contents where slug = 'administracao-publica-principios-da-administracao-publica-001';
insert into public.flashcards (content_id, question, answer, sort_order)
select id, 'O tema pode render ponto fácil?', 'Sim, com estudo direcionado.', 4
from public.contents where slug = 'administracao-publica-principios-da-administracao-publica-001';
insert into public.flashcards (content_id, question, answer, sort_order)
select id, 'O que mais ajuda a acertar?', 'Entender conceito e função prática ao mesmo tempo.', 5
from public.contents where slug = 'administracao-publica-principios-da-administracao-publica-001';
delete from public.questions where content_id in (select id from public.contents where slug = 'administracao-publica-principios-da-administracao-publica-001');
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'Princípios da Administração Pública é tema que a VUNESP costuma cobrar por meio de:', '["conceito e aplicação prática", "somente cálculos avançados", "somente literatura", "assuntos sem relação com o edital"]'::jsonb, 0, 'A banca costuma preferir cobrança objetiva e aplicada.', 0
from public.contents where slug = 'administracao-publica-principios-da-administracao-publica-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'Uma boa estratégia para esse tema é:', '["decorar sem contexto", "entender conceito e função prática", "ignorar diferenças entre institutos", "chutar rapidamente"]'::jsonb, 1, 'Entender conceito e uso prático é a melhor estratégia.', 1
from public.contents where slug = 'administracao-publica-principios-da-administracao-publica-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'Uma pegadinha comum da VUNESP é:', '["confundir conceitos parecidos", "usar apenas textos poéticos", "cobrar física quântica", "ignorar o edital"]'::jsonb, 0, 'A banca costuma explorar diferenças sutis entre conceitos próximos.', 2
from public.contents where slug = 'administracao-publica-principios-da-administracao-publica-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'O estudo do tema deve priorizar:', '["aplicação prática e leitura objetiva", "somente memorização cega", "apenas opinião pessoal", "nenhuma revisão"]'::jsonb, 0, 'Esse tipo de conteúdo rende mais quando estudado com foco prático.', 3
from public.contents where slug = 'administracao-publica-principios-da-administracao-publica-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'Um erro comum é:', '["comparar conceitos", "prestar atenção ao enunciado", "decorar sem compreender", "revisar palavras-chave"]'::jsonb, 2, 'A compreensão é essencial para evitar erros fáceis.', 4
from public.contents where slug = 'administracao-publica-principios-da-administracao-publica-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'A VUNESP valoriza, nesse tema:', '["objetividade e interpretação", "respostas ideológicas", "respostas vagas", "falta de precisão"]'::jsonb, 0, 'A banca costuma preferir formulações claras e objetivas.', 5
from public.contents where slug = 'administracao-publica-principios-da-administracao-publica-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'Ao estudar, o candidato deve:', '["ignorar exemplos", "relacionar teoria e prática", "descartar conceitos básicos", "evitar revisão"]'::jsonb, 1, 'Essa relação ajuda a consolidar o conteúdo.', 6
from public.contents where slug = 'administracao-publica-principios-da-administracao-publica-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'A principal habilidade exigida é:', '["entendimento conceitual com aplicação", "cálculo integral", "edição de vídeo", "programação avançada"]'::jsonb, 0, 'É isso que mais aparece em questões desse perfil.', 7
from public.contents where slug = 'administracao-publica-principios-da-administracao-publica-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'Um tema estratégico costuma ser aquele que:', '["aparece bastante e tem cobrança objetiva", "não cai nunca", "depende só de sorte", "não permite estudo"]'::jsonb, 0, 'Temas recorrentes e objetivos são estratégicos para pontuar.', 8
from public.contents where slug = 'administracao-publica-principios-da-administracao-publica-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'A leitura atenta do enunciado é importante porque:', '["a banca usa diferenças sutis", "não faz diferença", "substitui o estudo", "elimina todo conteúdo"]'::jsonb, 0, 'Muitas alternativas erradas parecem corretas à primeira vista.', 9
from public.contents where slug = 'administracao-publica-principios-da-administracao-publica-001';
with inserted as (
  insert into public.contents (
    slug, source_id, discipline, topic, name, summary, theory, theory_blocks, key_points, proof_tips, examples, common_errors,
    minimum_plan, required_plan_rank, is_published
  ) values (
    'administracao-publica-seguranca-publica-001',
    'administracao-publica-seguranca-publica-001',
    'Direito',
    'Segurança Pública',
    'Segurança Pública',
    'Segurança Pública, no contexto constitucional e administrativo, é dever do Estado, direito e responsabilidade de todos. A VUNESP cobra a estrutura geral do tema, os órgãos envolvidos e a noção de preservação da ordem pública e da incolumidade das pessoas e do patrimônio.',
    'Na Constituição Federal, a segurança pública é tratada como dever do Estado, direito e responsabilidade de todos. Seu objetivo é a preservação da ordem pública e da incolumidade das pessoas e do patrimônio.

O tema se conecta diretamente ao papel das polícias, à atuação estatal, à cidadania e à proteção coletiva.

A VUNESP tende a cobrar esse conteúdo de forma objetiva, exigindo leitura literal e compreensão do papel constitucional da segurança pública.',
    '[{"titulo": "Conceito", "texto": "Segurança Pública é tema importante do edital e deve ser compreendido de forma prática e objetiva."}, {"titulo": "Regras", "texto": "É preciso conhecer conceitos básicos, funções principais e aplicação prática do conteúdo."}, {"titulo": "Como cai na prova (VUNESP)", "texto": "A VUNESP costuma cobrar definições, uso prático, interpretação de situações e identificação de comandos ou regras."}]'::jsonb,
    '["Segurança Pública aparece com frequência em prova.", "O uso prático do tema é muito valorizado.", "A banca gosta de conceitos objetivos e aplicação.", "Diferenças entre funções ou institutos geram pegadinhas.", "Treinar leitura atenta ajuda a evitar erros bobos."]'::jsonb,
    '["Associe conceito e função prática.", "Revise palavras-chave e diferenças centrais do tema.", "Treine identificar a alternativa mais objetiva e literal.", "Pegadinhas clássicas da VUNESP: confundir conceitos parecidos ou funções próximas."]'::jsonb,
    '["Exemplo de aplicação prática de Segurança Pública em contexto de prova.", "A banca costuma transformar o conceito em situação objetiva.", "A leitura atenta do enunciado faz diferença."]'::jsonb,
    '["Decorar sem entender o uso prático.", "Confundir conceitos parecidos.", "Marcar alternativa por associação apressada."]'::jsonb,
    'basic'::public.plan_slug,
    1,
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
delete from public.flashcards where content_id in (select id from public.contents where slug = 'administracao-publica-seguranca-publica-001');
insert into public.flashcards (content_id, question, answer, sort_order)
select id, 'O que é Segurança Pública?', 'É um conteúdo relevante do edital que deve ser entendido de forma prática e conceitual.', 0
from public.contents where slug = 'administracao-publica-seguranca-publica-001';
insert into public.flashcards (content_id, question, answer, sort_order)
select id, 'Como a VUNESP costuma cobrar esse tema?', 'Por definições, aplicação prática e interpretação objetiva.', 1
from public.contents where slug = 'administracao-publica-seguranca-publica-001';
insert into public.flashcards (content_id, question, answer, sort_order)
select id, 'Qual cuidado principal?', 'Não confundir conceitos ou funções parecidas.', 2
from public.contents where slug = 'administracao-publica-seguranca-publica-001';
insert into public.flashcards (content_id, question, answer, sort_order)
select id, 'A leitura do enunciado importa?', 'Sim, muito.', 3
from public.contents where slug = 'administracao-publica-seguranca-publica-001';
insert into public.flashcards (content_id, question, answer, sort_order)
select id, 'O tema pode render ponto fácil?', 'Sim, com estudo direcionado.', 4
from public.contents where slug = 'administracao-publica-seguranca-publica-001';
insert into public.flashcards (content_id, question, answer, sort_order)
select id, 'O que mais ajuda a acertar?', 'Entender conceito e função prática ao mesmo tempo.', 5
from public.contents where slug = 'administracao-publica-seguranca-publica-001';
delete from public.questions where content_id in (select id from public.contents where slug = 'administracao-publica-seguranca-publica-001');
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'Segurança Pública é tema que a VUNESP costuma cobrar por meio de:', '["conceito e aplicação prática", "somente cálculos avançados", "somente literatura", "assuntos sem relação com o edital"]'::jsonb, 0, 'A banca costuma preferir cobrança objetiva e aplicada.', 0
from public.contents where slug = 'administracao-publica-seguranca-publica-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'Uma boa estratégia para esse tema é:', '["decorar sem contexto", "entender conceito e função prática", "ignorar diferenças entre institutos", "chutar rapidamente"]'::jsonb, 1, 'Entender conceito e uso prático é a melhor estratégia.', 1
from public.contents where slug = 'administracao-publica-seguranca-publica-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'Uma pegadinha comum da VUNESP é:', '["confundir conceitos parecidos", "usar apenas textos poéticos", "cobrar física quântica", "ignorar o edital"]'::jsonb, 0, 'A banca costuma explorar diferenças sutis entre conceitos próximos.', 2
from public.contents where slug = 'administracao-publica-seguranca-publica-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'O estudo do tema deve priorizar:', '["aplicação prática e leitura objetiva", "somente memorização cega", "apenas opinião pessoal", "nenhuma revisão"]'::jsonb, 0, 'Esse tipo de conteúdo rende mais quando estudado com foco prático.', 3
from public.contents where slug = 'administracao-publica-seguranca-publica-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'Um erro comum é:', '["comparar conceitos", "prestar atenção ao enunciado", "decorar sem compreender", "revisar palavras-chave"]'::jsonb, 2, 'A compreensão é essencial para evitar erros fáceis.', 4
from public.contents where slug = 'administracao-publica-seguranca-publica-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'A VUNESP valoriza, nesse tema:', '["objetividade e interpretação", "respostas ideológicas", "respostas vagas", "falta de precisão"]'::jsonb, 0, 'A banca costuma preferir formulações claras e objetivas.', 5
from public.contents where slug = 'administracao-publica-seguranca-publica-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'Ao estudar, o candidato deve:', '["ignorar exemplos", "relacionar teoria e prática", "descartar conceitos básicos", "evitar revisão"]'::jsonb, 1, 'Essa relação ajuda a consolidar o conteúdo.', 6
from public.contents where slug = 'administracao-publica-seguranca-publica-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'A principal habilidade exigida é:', '["entendimento conceitual com aplicação", "cálculo integral", "edição de vídeo", "programação avançada"]'::jsonb, 0, 'É isso que mais aparece em questões desse perfil.', 7
from public.contents where slug = 'administracao-publica-seguranca-publica-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'Um tema estratégico costuma ser aquele que:', '["aparece bastante e tem cobrança objetiva", "não cai nunca", "depende só de sorte", "não permite estudo"]'::jsonb, 0, 'Temas recorrentes e objetivos são estratégicos para pontuar.', 8
from public.contents where slug = 'administracao-publica-seguranca-publica-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'A leitura atenta do enunciado é importante porque:', '["a banca usa diferenças sutis", "não faz diferença", "substitui o estudo", "elimina todo conteúdo"]'::jsonb, 0, 'Muitas alternativas erradas parecem corretas à primeira vista.', 9
from public.contents where slug = 'administracao-publica-seguranca-publica-001';
with inserted as (
  insert into public.contents (
    slug, source_id, discipline, topic, name, summary, theory, theory_blocks, key_points, proof_tips, examples, common_errors,
    minimum_plan, required_plan_rank, is_published
  ) values (
    'atualidades-conflitos-internacionais-001',
    'atualidades-conflitos-internacionais-001',
    'Atualidades',
    'Conflitos internacionais',
    'Conflitos internacionais',
    'Conflitos internacionais envolvem disputas territoriais, políticas, econômicas, étnicas e geopolíticas entre Estados ou grupos armados. A VUNESP cobra leitura geopolítica geral, impactos humanitários, papel de organismos internacionais e efeitos globais desses conflitos.',
    'Conflitos internacionais podem surgir por disputas de território, recursos, fronteiras, identidade nacional, religião, poder político ou influência geopolítica. Nem todo conflito é guerra declarada, mas muitos geram instabilidade, deslocamentos populacionais, crises humanitárias e impactos econômicos globais.

A geopolítica ajuda a compreender esses conflitos, pois analisa relações de poder entre Estados, regiões e organizações internacionais. Temas como sanções, alianças, disputa energética, migrações forçadas, refugiados e segurança internacional costumam aparecer nas atualidades.

A VUNESP não exige domínio profundo de todos os detalhes, mas cobra a compreensão geral da lógica dos conflitos, seus efeitos sobre populações civis, economia, diplomacia e organismos multilaterais. Também pode associar conflitos a energia, comércio internacional e crise humanitária.

Em resumo, conflitos internacionais devem ser entendidos como fenômenos geopolíticos com consequências políticas, econômicas e sociais em escala regional e global.',
    '[{"titulo": "Conceito", "texto": "Conflitos internacionais são disputas entre Estados ou grupos com efeitos políticos, territoriais e humanitários."}, {"titulo": "Regras", "texto": "É preciso considerar causas geopolíticas, impactos humanitários, papel de organismos internacionais e efeitos globais."}, {"titulo": "Como cai na prova (VUNESP)", "texto": "A VUNESP cobra noções gerais de geopolítica, guerras, tensões, refugiados, sanções e repercussões econômicas."}]'::jsonb,
    '["Conflitos podem ter causas territoriais, políticas e econômicas.", "Os efeitos atingem populações civis e economias.", "Refugiados e crises humanitárias são temas centrais.", "Organismos internacionais podem atuar na mediação.", "A geopolítica ajuda a interpretar esses processos."]'::jsonb,
    '["Busque entender causa, consequência e atores envolvidos.", "Relacione conflito a geopolítica e impacto humanitário.", "Não reduza todo conflito a uma explicação única.", "Pegadinhas clássicas da VUNESP: simplificar disputas complexas."]'::jsonb,
    '["Conflitos podem elevar preços de energia e alimentos.", "Guerras podem gerar fluxos de refugiados.", "Sanções internacionais podem pressionar economias e governos."]'::jsonb,
    '["Ignorar o papel da geopolítica.", "Enxergar conflito só como questão militar.", "Desconsiderar impactos sobre civis e economia mundial."]'::jsonb,
    'basic'::public.plan_slug,
    1,
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
delete from public.flashcards where content_id in (select id from public.contents where slug = 'atualidades-conflitos-internacionais-001');
insert into public.flashcards (content_id, question, answer, sort_order)
select id, 'O que são conflitos internacionais?', 'São disputas entre Estados ou grupos com efeitos geopolíticos e humanitários.', 0
from public.contents where slug = 'atualidades-conflitos-internacionais-001';
insert into public.flashcards (content_id, question, answer, sort_order)
select id, 'O que a geopolítica analisa?', 'Relações de poder entre países e regiões.', 1
from public.contents where slug = 'atualidades-conflitos-internacionais-001';
insert into public.flashcards (content_id, question, answer, sort_order)
select id, 'Refugiados se relacionam a conflitos?', 'Sim.', 2
from public.contents where slug = 'atualidades-conflitos-internacionais-001';
insert into public.flashcards (content_id, question, answer, sort_order)
select id, 'Conflitos podem afetar a economia mundial?', 'Sim.', 3
from public.contents where slug = 'atualidades-conflitos-internacionais-001';
insert into public.flashcards (content_id, question, answer, sort_order)
select id, 'A VUNESP cobra detalhes minuciosos ou visão geral?', 'Principalmente visão geral e contextual.', 4
from public.contents where slug = 'atualidades-conflitos-internacionais-001';
insert into public.flashcards (content_id, question, answer, sort_order)
select id, 'Qual cuidado principal?', 'Não simplificar o conflito.', 5
from public.contents where slug = 'atualidades-conflitos-internacionais-001';
delete from public.questions where content_id in (select id from public.contents where slug = 'atualidades-conflitos-internacionais-001');
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'Conflitos internacionais podem surgir por:', '["disputas territoriais e geopolíticas", "somente questões climáticas locais", "apenas literatura", "somente festas populares"]'::jsonb, 0, 'Essas são causas frequentes em conflitos internacionais.', 0
from public.contents where slug = 'atualidades-conflitos-internacionais-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'Um efeito comum de grandes conflitos é:', '["redução de qualquer tensão mundial", "crise humanitária e deslocamento populacional", "fim das fronteiras", "ausência de impacto econômico"]'::jsonb, 1, 'Guerras e tensões geram deslocamentos forçados e sofrimento civil.', 1
from public.contents where slug = 'atualidades-conflitos-internacionais-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'A geopolítica é importante porque:', '["ignora o poder entre países", "analisa relações de poder e interesse estratégico", "substitui a história", "não tem relação com atualidades"]'::jsonb, 1, 'A geopolítica ajuda a entender a lógica dos conflitos.', 2
from public.contents where slug = 'atualidades-conflitos-internacionais-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'Refugiados são pessoas que:', '["migram apenas por turismo", "fogem de guerras, perseguições ou crises graves", "sempre viajam por lazer", "não têm relação com conflitos"]'::jsonb, 1, 'Refugiados estão associados a situações extremas de violência e perseguição.', 3
from public.contents where slug = 'atualidades-conflitos-internacionais-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'Sanções internacionais podem:', '["não produzir nenhum efeito", "impactar economias e relações diplomáticas", "eliminar toda geopolítica", "ser fenômeno apenas cultural"]'::jsonb, 1, 'Sanções são instrumentos de pressão política e econômica.', 4
from public.contents where slug = 'atualidades-conflitos-internacionais-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'A VUNESP costuma cobrar conflitos internacionais com foco em:', '["visão geopolítica e humanitária", "somente nomes de batalhas antigas", "somente fórmulas", "somente gramática"]'::jsonb, 0, 'A abordagem tende a ser ampla e contextual.', 5
from public.contents where slug = 'atualidades-conflitos-internacionais-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'Um erro comum nesse tema é:', '["observar impacto humanitário", "considerar fatores geopolíticos", "reduzir o conflito a uma única causa", "analisar efeitos econômicos"]'::jsonb, 2, 'Conflitos costumam ser complexos e multicausais.', 6
from public.contents where slug = 'atualidades-conflitos-internacionais-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'Conflitos podem afetar preços globais de:', '["energia e alimentos", "somente livros", "apenas obras de arte", "somente turismo local"]'::jsonb, 0, 'Tensões internacionais afetam cadeias de suprimento e mercados.', 7
from public.contents where slug = 'atualidades-conflitos-internacionais-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'Organismos internacionais podem atuar:', '["na mediação e cooperação", "somente em literatura", "eliminando todos os conflitos automaticamente", "sem qualquer função"]'::jsonb, 0, 'Esses organismos podem tentar mediar e reduzir tensões.', 8
from public.contents where slug = 'atualidades-conflitos-internacionais-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'A principal habilidade nesse tema é:', '["entender causas, atores e consequências", "decorar siglas sem contexto", "ignorar efeitos sociais", "responder por opinião pessoal"]'::jsonb, 0, 'A análise geopolítica exige visão contextualizada.', 9
from public.contents where slug = 'atualidades-conflitos-internacionais-001';
with inserted as (
  insert into public.contents (
    slug, source_id, discipline, topic, name, summary, theory, theory_blocks, key_points, proof_tips, examples, common_errors,
    minimum_plan, required_plan_rank, is_published
  ) values (
    'atualidades-economia-001',
    'atualidades-economia-001',
    'Atualidades',
    'Economia',
    'Economia',
    'Em atualidades, economia envolve inflação, juros, emprego, renda, orçamento público, crescimento econômico, consumo e desigualdade. A VUNESP cobra leitura geral dos impactos econômicos na vida da população, sem exigir aprofundamento técnico excessivo.',
    'A economia em atualidades aparece como tema ligado ao cotidiano e ao funcionamento do país. Questões sobre inflação, desemprego, renda, juros, consumo, contas públicas e crescimento econômico costumam ser cobradas de modo contextualizado.

Inflação é o aumento generalizado dos preços. Juros influenciam crédito, consumo e investimentos. Emprego e renda afetam diretamente a qualidade de vida e o poder de compra da população. Crescimento econômico não significa automaticamente redução da desigualdade, pois os benefícios podem ser distribuídos de forma desigual.

A economia nacional também se relaciona à política pública, ao orçamento e às decisões do governo sobre tributos, gastos, investimentos e programas sociais. Em prova, o foco geralmente está em compreender o efeito de fenômenos econômicos na sociedade.

A VUNESP costuma cobrar interpretação econômica básica, associando conceitos a situações concretas. O candidato deve saber o significado geral dos principais termos e suas consequências sociais.',
    '[{"titulo": "Conceito", "texto": "Economia é o campo que trata da produção, distribuição, circulação e consumo de bens e serviços."}, {"titulo": "Regras", "texto": "Em atualidades, importa compreender noções como inflação, juros, emprego, renda, crescimento e desigualdade."}, {"titulo": "Como cai na prova (VUNESP)", "texto": "A VUNESP cobra impacto social de fenômenos econômicos, leitura de contexto e noção geral de indicadores e políticas."}]'::jsonb,
    '["Inflação afeta o poder de compra.", "Juros influenciam crédito e consumo.", "Emprego e renda são centrais para a vida social.", "Crescimento econômico não elimina desigualdades automaticamente.", "Economia e política pública se relacionam."]'::jsonb,
    '["Associe cada conceito econômico a um impacto concreto na população.", "Evite tecnicismo excessivo; busque sentido geral.", "Relacione economia a custo de vida, renda e consumo.", "Pegadinhas clássicas da VUNESP: confundir crescimento econômico com melhoria social automática."]'::jsonb,
    '["Inflação alta reduz o poder de compra.", "Juros mais altos tendem a encarecer o crédito.", "Desemprego afeta consumo e condições de vida."]'::jsonb,
    '["Usar termos econômicos sem entender seus efeitos sociais.", "Achar que crescimento econômico resolve sozinho a desigualdade.", "Ignorar a relação entre economia e políticas públicas."]'::jsonb,
    'basic'::public.plan_slug,
    1,
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
delete from public.flashcards where content_id in (select id from public.contents where slug = 'atualidades-economia-001');
insert into public.flashcards (content_id, question, answer, sort_order)
select id, 'O que é inflação?', 'É o aumento generalizado dos preços.', 0
from public.contents where slug = 'atualidades-economia-001';
insert into public.flashcards (content_id, question, answer, sort_order)
select id, 'O que os juros afetam?', 'Crédito, consumo e investimento.', 1
from public.contents where slug = 'atualidades-economia-001';
insert into public.flashcards (content_id, question, answer, sort_order)
select id, 'Crescimento econômico significa igualdade?', 'Não necessariamente.', 2
from public.contents where slug = 'atualidades-economia-001';
insert into public.flashcards (content_id, question, answer, sort_order)
select id, 'Emprego e renda são temas econômicos?', 'Sim.', 3
from public.contents where slug = 'atualidades-economia-001';
insert into public.flashcards (content_id, question, answer, sort_order)
select id, 'Como a VUNESP cobra economia?', 'Pelo impacto dos fenômenos econômicos no cotidiano.', 4
from public.contents where slug = 'atualidades-economia-001';
insert into public.flashcards (content_id, question, answer, sort_order)
select id, 'Qual cuidado principal?', 'Entender conceito e consequência social.', 5
from public.contents where slug = 'atualidades-economia-001';
delete from public.questions where content_id in (select id from public.contents where slug = 'atualidades-economia-001');
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'Inflação significa:', '["redução total de preços", "aumento generalizado dos preços", "fim do consumo", "desaparecimento da moeda"]'::jsonb, 1, 'Essa é a definição básica de inflação.', 0
from public.contents where slug = 'atualidades-economia-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'Quando a inflação sobe, tende a ocorrer:', '["aumento do poder de compra", "redução do poder de compra", "fim da circulação de dinheiro", "igualdade automática"]'::jsonb, 1, 'Com preços mais altos, o dinheiro compra menos.', 1
from public.contents where slug = 'atualidades-economia-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'Juros mais altos tendem a:', '["baratear crédito", "encarecer crédito", "eliminar a economia", "aumentar salário automaticamente"]'::jsonb, 1, 'Taxas mais altas tornam empréstimos e financiamentos mais caros.', 2
from public.contents where slug = 'atualidades-economia-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'Emprego e renda são importantes porque:', '["não influenciam a vida social", "afetam consumo e condições de vida", "não têm relação com economia", "dependem só do clima"]'::jsonb, 1, 'Esses fatores influenciam diretamente o cotidiano da população.', 3
from public.contents where slug = 'atualidades-economia-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'Crescimento econômico significa necessariamente:', '["redução imediata da desigualdade", "melhoria igual para todos", "expansão da atividade econômica", "fim da pobreza"]'::jsonb, 2, 'Crescimento é aumento da atividade econômica, mas não garante distribuição igualitária dos ganhos.', 4
from public.contents where slug = 'atualidades-economia-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'A VUNESP cobra economia com foco em:', '["efeitos sociais e noções básicas", "somente fórmulas complexas", "somente nomes de bancos", "somente geologia"]'::jsonb, 0, 'A abordagem costuma ser contextual e interpretativa.', 5
from public.contents where slug = 'atualidades-economia-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'Um erro comum nesse tema é:', '["ligar economia ao cotidiano", "confundir crescimento com justiça social automática", "entender inflação", "relacionar emprego e renda"]'::jsonb, 1, 'Crescimento econômico não garante distribuição equitativa.', 6
from public.contents where slug = 'atualidades-economia-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'O orçamento público se relaciona a:', '["receitas e gastos do Estado", "somente literatura", "somente vegetação", "somente esporte"]'::jsonb, 0, 'O orçamento envolve arrecadação e despesas do poder público.', 7
from public.contents where slug = 'atualidades-economia-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'A economia em atualidades costuma aparecer ligada a:', '["custo de vida e políticas públicas", "somente navegação antiga", "somente guerras coloniais", "somente gramática"]'::jsonb, 0, 'Esses temas aproximam economia da vida cotidiana.', 8
from public.contents where slug = 'atualidades-economia-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'A principal habilidade nesse tema é:', '["entender conceito e impacto social", "decorar siglas sem sentido", "resolver somente geometria", "ignorar o contexto"]'::jsonb, 0, 'A banca prefere leitura contextualizada da economia.', 9
from public.contents where slug = 'atualidades-economia-001';
with inserted as (
  insert into public.contents (
    slug, source_id, discipline, topic, name, summary, theory, theory_blocks, key_points, proof_tips, examples, common_errors,
    minimum_plan, required_plan_rank, is_published
  ) values (
    'atualidades-meio-ambiente-001',
    'atualidades-meio-ambiente-001',
    'Atualidades',
    'Meio ambiente',
    'Meio ambiente',
    'Em atualidades, meio ambiente envolve mudanças climáticas, preservação de biomas, crises hídricas, desmatamento, energia, poluição e desenvolvimento sustentável. A VUNESP cobra leitura ampla dos desafios ambientais contemporâneos e seus impactos sociais e econômicos.',
    'O meio ambiente em atualidades está no centro dos debates globais e nacionais. Mudanças climáticas, desmatamento, transição energética, eventos extremos, poluição, perda de biodiversidade e gestão da água são alguns dos temas mais recorrentes.

O aumento da temperatura média do planeta, associado às emissões de gases de efeito estufa, intensifica secas, enchentes, ondas de calor e outros eventos extremos. No Brasil, biomas como Amazônia, Cerrado e Pantanal aparecem frequentemente em debates sobre conservação, queimadas e uso da terra.

A questão ambiental também se liga à economia e à política. Produção agrícola, energia, mineração, indústria, urbanização e transporte impactam o ambiente. Ao mesmo tempo, políticas de preservação, energias renováveis e saneamento se tornam estratégicas.

A VUNESP costuma cobrar compreensão geral do problema ambiental, suas causas humanas, seus impactos e a necessidade de equilíbrio entre desenvolvimento e preservação.',
    '[{"titulo": "Conceito", "texto": "Meio ambiente em atualidades trata dos desafios ambientais contemporâneos e de sua relação com economia, política e sociedade."}, {"titulo": "Regras", "texto": "É importante compreender mudanças climáticas, desmatamento, poluição, energia, água e sustentabilidade como temas interligados."}, {"titulo": "Como cai na prova (VUNESP)", "texto": "A VUNESP cobra leitura geral dos impactos ambientais, dos biomas brasileiros e das políticas ligadas à sustentabilidade."}]'::jsonb,
    '["Mudanças climáticas são tema central.", "Desmatamento e queimadas aparecem com frequência.", "Água, energia e preservação estão interligadas.", "Biomas brasileiros têm relevância estratégica.", "Ambiente e economia se influenciam mutuamente."]'::jsonb,
    '["Relacione problema ambiental a causa e impacto.", "Associe biomas brasileiros a pressões ambientais.", "Lembre que meio ambiente também é tema econômico e social.", "Pegadinhas clássicas da VUNESP: tratar crise ambiental como questão exclusivamente natural."]'::jsonb,
    '["Secas e enchentes podem ser agravadas por mudanças climáticas e ocupação inadequada do espaço.", "Queimadas afetam biodiversidade, clima e saúde.", "Energia renovável aparece como parte do debate ambiental."]'::jsonb,
    '["Separar meio ambiente de economia e política.", "Reduzir o tema a conservação abstrata.", "Ignorar a dimensão humana das crises ambientais."]'::jsonb,
    'basic'::public.plan_slug,
    1,
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
delete from public.flashcards where content_id in (select id from public.contents where slug = 'atualidades-meio-ambiente-001');
insert into public.flashcards (content_id, question, answer, sort_order)
select id, 'Qual tema ambiental é muito recorrente em atualidades?', 'Mudanças climáticas.', 0
from public.contents where slug = 'atualidades-meio-ambiente-001';
insert into public.flashcards (content_id, question, answer, sort_order)
select id, 'Desmatamento é tema atual?', 'Sim, muito relevante no Brasil.', 1
from public.contents where slug = 'atualidades-meio-ambiente-001';
insert into public.flashcards (content_id, question, answer, sort_order)
select id, 'A questão ambiental se relaciona à economia?', 'Sim.', 2
from public.contents where slug = 'atualidades-meio-ambiente-001';
insert into public.flashcards (content_id, question, answer, sort_order)
select id, 'Biomas brasileiros podem aparecer em prova?', 'Sim.', 3
from public.contents where slug = 'atualidades-meio-ambiente-001';
insert into public.flashcards (content_id, question, answer, sort_order)
select id, 'A VUNESP cobra meio ambiente como?', 'De forma ampla, relacionando causas e impactos.', 4
from public.contents where slug = 'atualidades-meio-ambiente-001';
insert into public.flashcards (content_id, question, answer, sort_order)
select id, 'Qual cuidado principal?', 'Não separar ambiente, sociedade e economia.', 5
from public.contents where slug = 'atualidades-meio-ambiente-001';
delete from public.questions where content_id in (select id from public.contents where slug = 'atualidades-meio-ambiente-001');
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'Mudanças climáticas se relacionam a:', '["eventos extremos e aquecimento global", "somente literatura", "ausência de impactos", "apenas história medieval"]'::jsonb, 0, 'Esse tema envolve aquecimento global, secas, enchentes e outros eventos extremos.', 0
from public.contents where slug = 'atualidades-meio-ambiente-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'No Brasil, um tema ambiental recorrente é:', '["desmatamento", "fim dos biomas", "ausência de queimadas", "eliminação da água"]'::jsonb, 0, 'O desmatamento aparece de forma constante nos debates ambientais.', 1
from public.contents where slug = 'atualidades-meio-ambiente-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'A questão ambiental envolve também:', '["economia e política", "somente natureza isolada", "apenas biologia celular", "somente astronomia"]'::jsonb, 0, 'A produção, a energia e as políticas públicas influenciam o ambiente.', 2
from public.contents where slug = 'atualidades-meio-ambiente-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'Energia renovável aparece em atualidades ambientais porque:', '["não tem relação com o tema", "faz parte do debate sobre sustentabilidade", "substitui toda economia", "elimina o clima"]'::jsonb, 1, 'A transição energética é parte importante dos debates ambientais.', 3
from public.contents where slug = 'atualidades-meio-ambiente-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'A VUNESP costuma cobrar esse tema por meio de:', '["visão ampla dos impactos e desafios", "somente nomes científicos", "somente cálculos", "somente literatura"]'::jsonb, 0, 'A cobrança tende a ser contextual e interpretativa.', 4
from public.contents where slug = 'atualidades-meio-ambiente-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'Um erro comum nesse tema é:', '["ligar ambiente e sociedade", "tratar crise ambiental como puramente natural", "analisar causas humanas", "observar efeitos sociais"]'::jsonb, 1, 'As crises ambientais contemporâneas têm forte relação com a ação humana.', 5
from public.contents where slug = 'atualidades-meio-ambiente-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'A gestão da água é importante porque:', '["água não afeta economia nem sociedade", "água é recurso estratégico", "água não tem relação com ambiente", "secas não existem"]'::jsonb, 1, 'A água é essencial para a vida, produção e estabilidade social.', 6
from public.contents where slug = 'atualidades-meio-ambiente-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'Biomas como Amazônia e Cerrado são relevantes porque:', '["não sofrem pressões humanas", "têm importância ecológica e política", "não aparecem em atualidades", "não influenciam o país"]'::jsonb, 1, 'Esses biomas são centrais no debate ambiental brasileiro.', 7
from public.contents where slug = 'atualidades-meio-ambiente-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'A crise ambiental contemporânea exige:', '["equilíbrio entre desenvolvimento e preservação", "exploração sem limites", "abandono de toda política pública", "negação dos impactos"]'::jsonb, 0, 'Essa é a lógica do desenvolvimento sustentável.', 8
from public.contents where slug = 'atualidades-meio-ambiente-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'A principal habilidade nesse tema é:', '["relacionar ambiente, causa humana e impacto social", "decorar palavras isoladas", "ignorar economia", "fugir do contexto"]'::jsonb, 0, 'A compreensão integrada do problema é essencial.', 9
from public.contents where slug = 'atualidades-meio-ambiente-001';
with inserted as (
  insert into public.contents (
    slug, source_id, discipline, topic, name, summary, theory, theory_blocks, key_points, proof_tips, examples, common_errors,
    minimum_plan, required_plan_rank, is_published
  ) values (
    'atualidades-pandemias-e-crises-globais-001',
    'atualidades-pandemias-e-crises-globais-001',
    'Atualidades',
    'Pandemias / crises globais',
    'Pandemias / crises globais',
    'Pandemias e crises globais envolvem saúde pública, economia, circulação internacional, cadeias de suprimento, cooperação entre países e capacidade de resposta dos Estados. A VUNESP cobra visão geral dos impactos sociais, econômicos e institucionais dessas crises.',
    'Pandemias e crises globais mostram como o mundo está interligado. Uma crise sanitária, econômica, energética ou alimentar pode ultrapassar fronteiras rapidamente e afetar sociedades de forma ampla.

As pandemias evidenciam a importância da saúde pública, da ciência, da vacinação, da cooperação internacional e da capacidade do Estado de responder com políticas eficientes. Também geram impactos na economia, na educação, no trabalho, na mobilidade e nas relações sociais.

Crises globais podem envolver não apenas doenças, mas também choques econômicos, insegurança alimentar, disputas geopolíticas, crises energéticas e interrupções em cadeias produtivas. Em todos esses casos, aparecem temas como desigualdade, vulnerabilidade social e interdependência internacional.

A VUNESP costuma cobrar efeitos gerais das crises, o papel das instituições, a circulação global de impactos e a necessidade de coordenação entre diferentes setores e países.',
    '[{"titulo": "Conceito", "texto": "Pandemias e crises globais são eventos de grande escala que afetam simultaneamente diversos países e setores da vida social."}, {"titulo": "Regras", "texto": "Essas crises envolvem saúde, economia, circulação global, logística, políticas públicas e cooperação internacional."}, {"titulo": "Como cai na prova (VUNESP)", "texto": "A VUNESP cobra impactos sociais e econômicos, papel do Estado, da ciência e da cooperação internacional."}]'::jsonb,
    '["Pandemias afetam saúde, economia e mobilidade.", "Crises globais revelam interdependência entre países.", "Ciência e políticas públicas são fundamentais.", "Desigualdades tornam grupos mais vulneráveis.", "A resposta a crises exige coordenação institucional."]'::jsonb,
    '["Associe crise global a impactos múltiplos, não apenas um setor.", "Lembre do papel da saúde pública e das instituições.", "Pense em circulação global de efeitos.", "Pegadinhas clássicas da VUNESP: tratar crise global como fenômeno puramente local."]'::jsonb,
    '["Uma pandemia pode afetar hospitais, escolas, comércio e transporte ao mesmo tempo.", "Crises internacionais podem interromper cadeias produtivas.", "A cooperação científica é importante em emergências sanitárias."]'::jsonb,
    '["Reduzir pandemia apenas ao campo médico.", "Ignorar impactos econômicos e sociais das crises.", "Desconsiderar a interdependência entre países."]'::jsonb,
    'basic'::public.plan_slug,
    1,
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
delete from public.flashcards where content_id in (select id from public.contents where slug = 'atualidades-pandemias-e-crises-globais-001');
insert into public.flashcards (content_id, question, answer, sort_order)
select id, 'O que uma pandemia afeta?', 'Saúde, economia, mobilidade e organização social.', 0
from public.contents where slug = 'atualidades-pandemias-e-crises-globais-001';
insert into public.flashcards (content_id, question, answer, sort_order)
select id, 'Crises globais ultrapassam fronteiras?', 'Sim.', 1
from public.contents where slug = 'atualidades-pandemias-e-crises-globais-001';
insert into public.flashcards (content_id, question, answer, sort_order)
select id, 'Ciência é importante em pandemias?', 'Sim, especialmente em prevenção e resposta.', 2
from public.contents where slug = 'atualidades-pandemias-e-crises-globais-001';
insert into public.flashcards (content_id, question, answer, sort_order)
select id, 'A desigualdade influencia o impacto das crises?', 'Sim, aumenta vulnerabilidades.', 3
from public.contents where slug = 'atualidades-pandemias-e-crises-globais-001';
insert into public.flashcards (content_id, question, answer, sort_order)
select id, 'A VUNESP cobra esse tema como?', 'Pelos impactos amplos e pela atuação do Estado e das instituições.', 4
from public.contents where slug = 'atualidades-pandemias-e-crises-globais-001';
insert into public.flashcards (content_id, question, answer, sort_order)
select id, 'Qual cuidado principal?', 'Analisar a crise de forma ampla e interligada.', 5
from public.contents where slug = 'atualidades-pandemias-e-crises-globais-001';
delete from public.questions where content_id in (select id from public.contents where slug = 'atualidades-pandemias-e-crises-globais-001');
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'Pandemias e crises globais afetam:', '["somente hospitais", "apenas fronteiras locais", "diversos setores da sociedade", "somente literatura"]'::jsonb, 2, 'Essas crises atingem saúde, economia, mobilidade, educação e outros setores.', 0
from public.contents where slug = 'atualidades-pandemias-e-crises-globais-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'Uma pandemia evidencia a importância de:', '["saúde pública e ciência", "somente marketing", "redução da cooperação", "isolamento informacional"]'::jsonb, 0, 'A resposta a crises sanitárias depende fortemente da ciência e das políticas públicas.', 1
from public.contents where slug = 'atualidades-pandemias-e-crises-globais-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'Crises globais mostram que os países estão:', '["completamente isolados", "interligados", "sem economia", "sem população"]'::jsonb, 1, 'Os efeitos se espalham por redes econômicas, humanas e políticas.', 2
from public.contents where slug = 'atualidades-pandemias-e-crises-globais-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'A interrupção de cadeias produtivas é um impacto:', '["econômico", "somente literário", "climático apenas", "matemático"]'::jsonb, 0, 'Crises globais podem desorganizar produção e abastecimento.', 3
from public.contents where slug = 'atualidades-pandemias-e-crises-globais-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'A VUNESP costuma cobrar esse tema com foco em:', '["impactos sociais, econômicos e institucionais", "somente nomes de remédios", "somente poesia", "somente cartografia antiga"]'::jsonb, 0, 'A abordagem é ampla e contextual.', 4
from public.contents where slug = 'atualidades-pandemias-e-crises-globais-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'Um erro comum ao estudar pandemias é:', '["considerar seus impactos amplos", "reduzi-las apenas ao campo médico", "relacioná-las à saúde pública", "analisar desigualdades"]'::jsonb, 1, 'Pandemias afetam também economia, educação e vida social.', 5
from public.contents where slug = 'atualidades-pandemias-e-crises-globais-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'A desigualdade social importa nesse tema porque:', '["não influencia nada", "amplia vulnerabilidades", "elimina crises", "substitui políticas públicas"]'::jsonb, 1, 'Grupos mais vulneráveis tendem a sofrer impactos mais intensos.', 6
from public.contents where slug = 'atualidades-pandemias-e-crises-globais-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'A cooperação internacional é importante porque:', '["crises globais exigem articulação entre países", "os países não têm relação entre si", "não existe circulação internacional", "pandemias são sempre locais"]'::jsonb, 0, 'A escala global das crises exige coordenação internacional.', 7
from public.contents where slug = 'atualidades-pandemias-e-crises-globais-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'Crises globais podem incluir:', '["somente doenças", "somente conflitos armados", "doenças, choques econômicos e crises energéticas", "apenas fenômenos literários"]'::jsonb, 2, 'O conceito é mais amplo do que pandemia isoladamente.', 8
from public.contents where slug = 'atualidades-pandemias-e-crises-globais-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'A principal habilidade nesse tema é:', '["entender os impactos múltiplos e interligados", "decorar palavras sem contexto", "ignorar a economia", "reduzir tudo a um setor"]'::jsonb, 0, 'A compreensão integrada é central para resolver questões de crises globais.', 9
from public.contents where slug = 'atualidades-pandemias-e-crises-globais-001';
with inserted as (
  insert into public.contents (
    slug, source_id, discipline, topic, name, summary, theory, theory_blocks, key_points, proof_tips, examples, common_errors,
    minimum_plan, required_plan_rank, is_published
  ) values (
    'atualidades-politica-nacional-001',
    'atualidades-politica-nacional-001',
    'Atualidades',
    'Política nacional',
    'Política nacional',
    'Política nacional envolve o funcionamento das instituições brasileiras, a relação entre os Poderes, eleições, partidos, participação social, políticas públicas e debates sobre democracia. Em atualidades, a VUNESP costuma cobrar compreensão geral do cenário político, papel das instituições e efeitos sociais das decisões públicas.',
    'Política nacional diz respeito ao modo como o Estado brasileiro se organiza e como as decisões públicas são tomadas. Isso envolve Executivo, Legislativo e Judiciário, além de partidos, eleições, órgãos de controle, federação e participação popular.

No Brasil, a política nacional também se relaciona ao debate sobre democracia, transparência, governabilidade, políticas públicas, representação e conflitos institucionais. A atuação de União, estados e municípios pode aparecer em questões sobre responsabilidades administrativas e impacto das decisões na vida da população.

Em atualidades, o essencial não é decorar detalhes momentâneos, mas entender o papel das instituições e os principais temas em debate, como orçamento público, reformas, direitos, segurança, educação, saúde, combate à corrupção, polarização política e participação social.

A VUNESP geralmente trabalha com abordagem informativa e interpretativa, cobrando leitura de contexto político sem exigir posicionamento ideológico. O foco costuma estar no funcionamento do sistema político e nas consequências de decisões públicas.',
    '[{"titulo": "Conceito", "texto": "Política nacional é o conjunto de práticas, instituições e decisões que organizam o poder público no Brasil."}, {"titulo": "Regras", "texto": "É essencial compreender o papel dos três Poderes, da federação, das eleições, dos partidos e das políticas públicas."}, {"titulo": "Como cai na prova (VUNESP)", "texto": "A VUNESP cobra noções institucionais, temas em debate público, funcionamento do Estado e impactos das decisões políticas."}]'::jsonb,
    '["O Brasil é organizado em três Poderes.", "Política nacional envolve instituições e políticas públicas.", "Democracia e representação são temas centrais.", "Conflitos institucionais e debates públicos podem aparecer em prova.", "A banca costuma exigir interpretação do cenário político sem ideologização."]'::jsonb,
    '["Estude o papel de cada Poder e o funcionamento básico das instituições.", "Relacione decisões políticas a seus efeitos sociais.", "Foque em compreensão institucional, não em opinião pessoal.", "Pegadinhas clássicas da VUNESP: confundir função dos Poderes ou tratar debate político só como disputa partidária."]'::jsonb,
    '["O Executivo implementa políticas públicas e administra o governo.", "O Legislativo cria leis e fiscaliza.", "O Judiciário interpreta e aplica a Constituição e as leis."]'::jsonb,
    '["Misturar funções dos Poderes.", "Responder com opinião pessoal em vez de análise institucional.", "Ignorar efeitos sociais de decisões políticas."]'::jsonb,
    'basic'::public.plan_slug,
    1,
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
delete from public.flashcards where content_id in (select id from public.contents where slug = 'atualidades-politica-nacional-001');
insert into public.flashcards (content_id, question, answer, sort_order)
select id, 'O que é política nacional?', 'É a organização do poder e das decisões públicas no Brasil.', 0
from public.contents where slug = 'atualidades-politica-nacional-001';
insert into public.flashcards (content_id, question, answer, sort_order)
select id, 'Quais são os três Poderes?', 'Executivo, Legislativo e Judiciário.', 1
from public.contents where slug = 'atualidades-politica-nacional-001';
insert into public.flashcards (content_id, question, answer, sort_order)
select id, 'A política nacional envolve políticas públicas?', 'Sim.', 2
from public.contents where slug = 'atualidades-politica-nacional-001';
insert into public.flashcards (content_id, question, answer, sort_order)
select id, 'A VUNESP cobra opinião ideológica?', 'Não, costuma cobrar compreensão institucional e contextual.', 3
from public.contents where slug = 'atualidades-politica-nacional-001';
insert into public.flashcards (content_id, question, answer, sort_order)
select id, 'Democracia é tema de política nacional?', 'Sim.', 4
from public.contents where slug = 'atualidades-politica-nacional-001';
insert into public.flashcards (content_id, question, answer, sort_order)
select id, 'Qual cuidado principal?', 'Diferenciar funções institucionais e analisar impactos sociais.', 5
from public.contents where slug = 'atualidades-politica-nacional-001';
delete from public.questions where content_id in (select id from public.contents where slug = 'atualidades-politica-nacional-001');
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'A política nacional envolve principalmente:', '["somente eleições", "organização do poder público e decisões do Estado", "apenas relações exteriores", "somente questões militares"]'::jsonb, 1, 'Política nacional trata do funcionamento do Estado e da tomada de decisões públicas.', 0
from public.contents where slug = 'atualidades-politica-nacional-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'No Brasil, os três Poderes são:', '["Executivo, Militar e Popular", "Legislativo, Partidário e Judiciário", "Executivo, Legislativo e Judiciário", "Presidencial, Federal e Estadual"]'::jsonb, 2, 'Essa é a divisão clássica do poder na Constituição brasileira.', 1
from public.contents where slug = 'atualidades-politica-nacional-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'Uma política pública pode ser entendida como:', '["decisão privada sem impacto coletivo", "ação do Estado para atender necessidades sociais", "somente propaganda eleitoral", "atividade exclusiva do Judiciário"]'::jsonb, 1, 'Políticas públicas são ações estatais voltadas a demandas da sociedade.', 2
from public.contents where slug = 'atualidades-politica-nacional-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'A VUNESP costuma cobrar política nacional com foco em:', '["opinião ideológica do candidato", "instituições e funcionamento do Estado", "somente nomes de políticos", "somente história antiga"]'::jsonb, 1, 'A banca trabalha com compreensão institucional e contextual.', 3
from public.contents where slug = 'atualidades-politica-nacional-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'Conflitos entre Poderes fazem parte do tema porque:', '["o sistema político envolve relações institucionais", "não existem no Brasil", "substituem a Constituição", "eliminam a democracia automaticamente"]'::jsonb, 0, 'Os Poderes se relacionam e podem entrar em tensão dentro da ordem institucional.', 4
from public.contents where slug = 'atualidades-politica-nacional-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'A democracia está ligada à política nacional porque envolve:', '["participação e representação", "ausência de instituições", "fim das eleições", "somente decisões privadas"]'::jsonb, 0, 'Democracia se relaciona a representação, participação e instituições.', 5
from public.contents where slug = 'atualidades-politica-nacional-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'Um erro comum nesse tema é:', '["analisar o papel das instituições", "misturar funções dos Poderes", "relacionar política a políticas públicas", "observar impactos sociais"]'::jsonb, 1, 'Esse é um erro recorrente em questões institucionais.', 6
from public.contents where slug = 'atualidades-politica-nacional-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'O estudo da política nacional ajuda a compreender:', '["como o Estado decide e atua", "somente o clima", "somente a vegetação", "somente a gramática"]'::jsonb, 0, 'O foco é o funcionamento do poder público e seus efeitos.', 7
from public.contents where slug = 'atualidades-politica-nacional-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'Atualidades de política nacional costumam abordar:', '["debates públicos e decisões institucionais", "somente guerras medievais", "apenas biologia", "somente mineração colonial"]'::jsonb, 0, 'Essa é a linha principal do tema em concursos.', 8
from public.contents where slug = 'atualidades-politica-nacional-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'A principal habilidade exigida nesse tema é:', '["leitura institucional e contextual", "resposta opinativa", "cálculo geométrico", "análise de raízes quadradas"]'::jsonb, 0, 'A banca valoriza compreensão do cenário político em bases institucionais.', 9
from public.contents where slug = 'atualidades-politica-nacional-001';
with inserted as (
  insert into public.contents (
    slug, source_id, discipline, topic, name, summary, theory, theory_blocks, key_points, proof_tips, examples, common_errors,
    minimum_plan, required_plan_rank, is_published
  ) values (
    'atualidades-seguranca-publica-001',
    'atualidades-seguranca-publica-001',
    'Atualidades',
    'Segurança pública',
    'Segurança pública',
    'Segurança pública em atualidades envolve prevenção da violência, atuação das forças policiais, políticas públicas, crime organizado, desigualdade social, sistema prisional e relação entre segurança e cidadania. A VUNESP cobra leitura ampla e institucional do tema.',
    'Segurança pública é um tema central no debate nacional e se relaciona à proteção da população, ao combate à criminalidade e à garantia de direitos. Não se resume à repressão policial; envolve prevenção, investigação, inteligência, políticas sociais e organização do sistema de justiça.

No Brasil, o debate sobre segurança pública passa por violência urbana, crime organizado, tráfico de drogas, sistema prisional, uso de tecnologia, integração entre instituições e prevenção social da violência. Também se relaciona a desigualdades, exclusão e presença ou ausência de políticas públicas em determinados territórios.

A VUNESP costuma cobrar o tema com abordagem institucional, sem exigir tecnicismo excessivo, valorizando a compreensão de segurança como questão de Estado e de cidadania. É importante entender que o tema envolve polícia, justiça, políticas preventivas e direitos fundamentais.',
    '[{"titulo": "Conceito", "texto": "Segurança pública é o conjunto de ações e instituições voltadas à proteção da ordem pública e da integridade das pessoas."}, {"titulo": "Regras", "texto": "O tema envolve repressão ao crime, prevenção da violência, políticas públicas, sistema de justiça e garantia de direitos."}, {"titulo": "Como cai na prova (VUNESP)", "texto": "A VUNESP cobra leitura geral sobre violência, políticas de segurança, crime organizado, cidadania e papel das instituições."}]'::jsonb,
    '["Segurança pública vai além da repressão policial.", "Prevenção e cidadania também fazem parte do tema.", "Crime organizado e violência urbana aparecem com frequência.", "Políticas públicas influenciam a segurança.", "Instituições e direitos fundamentais devem ser considerados."]'::jsonb,
    '["Pense segurança como tema institucional e social.", "Relacione segurança a prevenção, justiça e cidadania.", "Evite respostas simplistas baseadas apenas em repressão.", "Pegadinhas clássicas da VUNESP: tratar segurança pública apenas como ação policial."]'::jsonb,
    '["Integração entre polícia e inteligência pode fortalecer ações de segurança.", "Políticas sociais em áreas vulneráveis podem contribuir para prevenção da violência.", "O sistema prisional também faz parte do debate sobre segurança pública."]'::jsonb,
    '["Reduzir segurança pública à repressão imediata.", "Ignorar a dimensão preventiva do tema.", "Desconsiderar direitos e papel das instituições."]'::jsonb,
    'basic'::public.plan_slug,
    1,
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
delete from public.flashcards where content_id in (select id from public.contents where slug = 'atualidades-seguranca-publica-001');
insert into public.flashcards (content_id, question, answer, sort_order)
select id, 'O que é segurança pública?', 'É o conjunto de ações e instituições voltadas à proteção da população e da ordem pública.', 0
from public.contents where slug = 'atualidades-seguranca-publica-001';
insert into public.flashcards (content_id, question, answer, sort_order)
select id, 'Segurança pública é só repressão?', 'Não. Também envolve prevenção e políticas públicas.', 1
from public.contents where slug = 'atualidades-seguranca-publica-001';
insert into public.flashcards (content_id, question, answer, sort_order)
select id, 'Crime organizado é tema de segurança pública?', 'Sim.', 2
from public.contents where slug = 'atualidades-seguranca-publica-001';
insert into public.flashcards (content_id, question, answer, sort_order)
select id, 'Cidadania se relaciona com segurança pública?', 'Sim.', 3
from public.contents where slug = 'atualidades-seguranca-publica-001';
insert into public.flashcards (content_id, question, answer, sort_order)
select id, 'A VUNESP cobra esse tema como?', 'De forma institucional e contextual.', 4
from public.contents where slug = 'atualidades-seguranca-publica-001';
insert into public.flashcards (content_id, question, answer, sort_order)
select id, 'Qual cuidado principal?', 'Não simplificar o tema.', 5
from public.contents where slug = 'atualidades-seguranca-publica-001';
delete from public.questions where content_id in (select id from public.contents where slug = 'atualidades-seguranca-publica-001');
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'Segurança pública envolve:', '["apenas ação policial", "proteção da população e atuação institucional", "somente economia", "somente direito privado"]'::jsonb, 1, 'O conceito é amplo e envolve proteção, instituições e políticas públicas.', 0
from public.contents where slug = 'atualidades-seguranca-publica-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'Uma visão completa da segurança pública inclui:', '["repressão e prevenção", "somente repressão", "somente propaganda", "somente legislação abstrata"]'::jsonb, 0, 'A segurança pública envolve tanto resposta ao crime quanto prevenção.', 1
from public.contents where slug = 'atualidades-seguranca-publica-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'Crime organizado aparece nesse tema porque:', '["não interfere na vida social", "é um desafio institucional e territorial", "é assunto apenas literário", "não tem relação com Estado"]'::jsonb, 1, 'O combate ao crime organizado exige articulação entre políticas e instituições.', 2
from public.contents where slug = 'atualidades-seguranca-publica-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'A VUNESP costuma cobrar segurança pública com foco em:', '["abordagem institucional e social", "somente opinião pessoal", "somente gramática", "somente história medieval"]'::jsonb, 0, 'A banca tende a tratar o tema como questão pública e de cidadania.', 3
from public.contents where slug = 'atualidades-seguranca-publica-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'Um erro comum sobre segurança pública é:', '["entendê-la como tema complexo", "relacioná-la à cidadania", "reduzi-la apenas à repressão", "analisar instituições"]'::jsonb, 2, 'Segurança pública vai além da repressão policial imediata.', 4
from public.contents where slug = 'atualidades-seguranca-publica-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'O sistema prisional faz parte do debate de segurança pública porque:', '["não tem relação com o tema", "integra o sistema de resposta ao crime", "é só questão cultural", "substitui a polícia"]'::jsonb, 1, 'Ele integra o conjunto de instituições relacionadas à segurança.', 5
from public.contents where slug = 'atualidades-seguranca-publica-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'Políticas preventivas são importantes porque:', '["ignoram a violência", "podem atuar nas causas e reduzir vulnerabilidades", "eliminam o Estado", "servem apenas à economia externa"]'::jsonb, 1, 'Prevenção busca reduzir fatores de risco e ampliar proteção social.', 6
from public.contents where slug = 'atualidades-seguranca-publica-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'Segurança pública e cidadania se relacionam porque:', '["direitos e proteção social caminham juntos", "não têm nenhum vínculo", "são temas opostos", "pertencem a áreas sem contato"]'::jsonb, 0, 'Segurança pública envolve também garantia de direitos.', 7
from public.contents where slug = 'atualidades-seguranca-publica-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'Um tema frequente nesse conteúdo é:', '["crime organizado", "tipologia textual", "ciclo do ouro", "Teorema de Pitágoras"]'::jsonb, 0, 'Crime organizado é um dos temas mais recorrentes em segurança pública.', 8
from public.contents where slug = 'atualidades-seguranca-publica-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'A principal habilidade nesse tema é:', '["ler o problema de forma ampla e institucional", "decorar nomes sem contexto", "resolver contas complexas", "ignorar fatores sociais"]'::jsonb, 0, 'A compreensão ampla e contextual ajuda a resolver melhor as questões.', 9
from public.contents where slug = 'atualidades-seguranca-publica-001';
with inserted as (
  insert into public.contents (
    slug, source_id, discipline, topic, name, summary, theory, theory_blocks, key_points, proof_tips, examples, common_errors,
    minimum_plan, required_plan_rank, is_published
  ) values (
    'atualidades-tecnologia-001',
    'atualidades-tecnologia-001',
    'Atualidades',
    'Tecnologia',
    'Tecnologia',
    'Tecnologia em atualidades envolve transformação digital, inteligência artificial, conectividade, plataformas, segurança da informação, automação e impacto social das inovações. A VUNESP cobra compreensão geral dos efeitos da tecnologia na economia, no trabalho, na comunicação e na vida cotidiana.',
    'Tecnologia é um tema central das atualidades porque influencia trabalho, educação, comunicação, segurança, saúde, transporte e economia. A transformação digital acelerou a circulação de dados, ampliou serviços online e mudou hábitos cotidianos.

Entre os temas mais recorrentes estão inteligência artificial, automação, plataformas digitais, redes sociais, cibersegurança, proteção de dados, inclusão digital e impacto da tecnologia no mercado de trabalho. Ao mesmo tempo em que amplia produtividade e acesso a serviços, a tecnologia também pode gerar exclusão, dependência e novos riscos, como desinformação e crimes digitais.

A VUNESP costuma cobrar a leitura equilibrada do tema: tecnologia pode trazer inovação e eficiência, mas também exige regulação, proteção de dados, educação digital e atenção às desigualdades de acesso.

Em resumo, a tecnologia em atualidades deve ser vista como força de transformação com efeitos positivos e desafios sociais importantes.',
    '[{"titulo": "Conceito", "texto": "Tecnologia é o conjunto de técnicas, sistemas e inovações aplicados à produção, comunicação e organização da vida social."}, {"titulo": "Regras", "texto": "É importante compreender transformação digital, automação, inteligência artificial, inclusão digital e segurança da informação."}, {"titulo": "Como cai na prova (VUNESP)", "texto": "A VUNESP cobra impactos da tecnologia no trabalho, na comunicação, na segurança e na desigualdade de acesso."}]'::jsonb,
    '["Tecnologia transforma trabalho e comunicação.", "Inteligência artificial é tema recorrente.", "Segurança da informação e proteção de dados são importantes.", "Automação pode alterar o mercado de trabalho.", "Acesso à tecnologia é desigual."]'::jsonb,
    '["Analise tecnologia de forma equilibrada, sem idealizar nem demonizar.", "Relacione inovação a impacto social.", "Lembre de inclusão digital e proteção de dados.", "Pegadinhas clássicas da VUNESP: tratar tecnologia como benefício automático para todos."]'::jsonb,
    '["A IA pode aumentar produtividade, mas também levantar debates sobre emprego e ética.", "Crimes digitais mostram a importância da cibersegurança.", "A exclusão digital limita acesso a oportunidades e serviços."]'::jsonb,
    '["Ver tecnologia como neutra em todos os contextos.", "Ignorar desigualdades de acesso.", "Focar apenas no avanço técnico e esquecer impactos sociais."]'::jsonb,
    'basic'::public.plan_slug,
    1,
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
delete from public.flashcards where content_id in (select id from public.contents where slug = 'atualidades-tecnologia-001');
insert into public.flashcards (content_id, question, answer, sort_order)
select id, 'Tecnologia em atualidades envolve o quê?', 'Transformação digital, IA, automação, conectividade e segurança da informação.', 0
from public.contents where slug = 'atualidades-tecnologia-001';
insert into public.flashcards (content_id, question, answer, sort_order)
select id, 'Inteligência artificial é tema atual?', 'Sim, muito relevante.', 1
from public.contents where slug = 'atualidades-tecnologia-001';
insert into public.flashcards (content_id, question, answer, sort_order)
select id, 'O que é exclusão digital?', 'Desigualdade no acesso a tecnologias e conectividade.', 2
from public.contents where slug = 'atualidades-tecnologia-001';
insert into public.flashcards (content_id, question, answer, sort_order)
select id, 'Segurança da informação é importante?', 'Sim, especialmente no mundo conectado.', 3
from public.contents where slug = 'atualidades-tecnologia-001';
insert into public.flashcards (content_id, question, answer, sort_order)
select id, 'Tecnologia afeta o trabalho?', 'Sim, por meio da automação e da digitalização.', 4
from public.contents where slug = 'atualidades-tecnologia-001';
insert into public.flashcards (content_id, question, answer, sort_order)
select id, 'Como a VUNESP cobra o tema?', 'Pelos impactos sociais, econômicos e comunicacionais da tecnologia.', 5
from public.contents where slug = 'atualidades-tecnologia-001';
delete from public.questions where content_id in (select id from public.contents where slug = 'atualidades-tecnologia-001');
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'A tecnologia em atualidades está ligada a:', '["transformações sociais e econômicas", "somente literatura clássica", "apenas clima", "somente geometria"]'::jsonb, 0, 'A tecnologia afeta várias dimensões da vida social e econômica.', 0
from public.contents where slug = 'atualidades-tecnologia-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'A inteligência artificial é importante porque:', '["não tem impacto social", "faz parte das inovações tecnológicas atuais", "acabou com a internet", "eliminou todo trabalho humano"]'::jsonb, 1, 'A IA é um dos temas centrais das transformações tecnológicas recentes.', 1
from public.contents where slug = 'atualidades-tecnologia-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'A exclusão digital refere-se a:', '["igualdade total de acesso", "falta de acesso ou desigualdade de acesso à tecnologia", "fim da internet", "somente uso de impressoras"]'::jsonb, 1, 'Nem todos têm o mesmo acesso a redes, equipamentos e recursos digitais.', 2
from public.contents where slug = 'atualidades-tecnologia-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'A automação pode impactar:', '["somente o clima", "o mercado de trabalho", "apenas a vegetação", "somente a história antiga"]'::jsonb, 1, 'A automação altera funções, produtividade e dinâmica do emprego.', 3
from public.contents where slug = 'atualidades-tecnologia-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'Cibersegurança se relaciona a:', '["proteção de sistemas e dados", "somente transporte marítimo", "apenas agricultura", "somente poesia"]'::jsonb, 0, 'A segurança digital tornou-se essencial na era das redes.', 4
from public.contents where slug = 'atualidades-tecnologia-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'A VUNESP costuma tratar tecnologia como:', '["tema com impactos positivos e desafios", "assunto irrelevante", "fenômeno apenas natural", "tema sem efeitos sociais"]'::jsonb, 0, 'A banca tende a trabalhar a tecnologia com visão equilibrada.', 5
from public.contents where slug = 'atualidades-tecnologia-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'Um erro comum sobre tecnologia é:', '["observar impactos sociais", "pensar que beneficia igualmente todos os grupos", "relacioná-la ao trabalho", "estudar segurança da informação"]'::jsonb, 1, 'O acesso e os benefícios são desiguais.', 6
from public.contents where slug = 'atualidades-tecnologia-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'Proteção de dados é tema importante porque:', '["o ambiente digital envolve circulação de informações pessoais", "dados não têm valor", "internet não usa dados", "não existe risco digital"]'::jsonb, 0, 'A circulação intensa de dados exige cuidado e regulação.', 7
from public.contents where slug = 'atualidades-tecnologia-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'A transformação digital impacta:', '["comunicação, serviços e trabalho", "somente a música erudita", "apenas a vegetação", "somente zonas rurais isoladas"]'::jsonb, 0, 'O impacto da digitalização é amplo e cotidiano.', 8
from public.contents where slug = 'atualidades-tecnologia-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'A principal habilidade nesse tema é:', '["analisar tecnologia e seus efeitos sociais", "decorar nomes de aplicativos", "ignorar desigualdades", "responder sem contexto"]'::jsonb, 0, 'A leitura crítica e contextualizada é o núcleo do tema.', 9
from public.contents where slug = 'atualidades-tecnologia-001';
with inserted as (
  insert into public.contents (
    slug, source_id, discipline, topic, name, summary, theory, theory_blocks, key_points, proof_tips, examples, common_errors,
    minimum_plan, required_plan_rank, is_published
  ) values (
    'geografia-geografia-do-brasil-001',
    'geografia-geografia-do-brasil-001',
    'Geografia',
    'Geografia do Brasil',
    'Geografia do Brasil',
    'A Geografia do Brasil estuda o território brasileiro em seus aspectos físicos, econômicos, populacionais e regionais. A VUNESP cobra relevo, clima, vegetação, hidrografia, distribuição populacional, atividades econômicas e desigualdades regionais.',
    'A Geografia do Brasil envolve o estudo do espaço brasileiro em suas dimensões naturais e humanas. O território nacional é extenso, diverso e marcado por profundas diferenças regionais.

No aspecto físico, destacam-se relevo, clima, vegetação, hidrografia e solos. O relevo brasileiro é predominantemente de planaltos, planícies e depressões. O clima varia entre equatorial, tropical, semiárido, tropical de altitude e subtropical. A vegetação inclui Amazônia, Cerrado, Caatinga, Mata Atlântica, Pantanal e Pampa.

No aspecto humano, o Brasil apresenta grande concentração populacional no litoral e no Sudeste, urbanização intensa e desigualdades socioeconômicas. A economia é diversificada, com agropecuária, indústria, comércio e serviços, mas há disparidades regionais marcantes.

A VUNESP costuma cobrar a relação entre natureza e ocupação do território, além das diferenças econômicas e sociais entre regiões. A leitura geográfica do Brasil exige observar tanto os elementos naturais quanto a ação humana sobre o espaço.',
    '[{"titulo": "Conceito", "texto": "Geografia do Brasil estuda o território brasileiro em seus aspectos naturais e humanos."}, {"titulo": "Regras", "texto": "É importante compreender relevo, clima, vegetação, hidrografia, população, economia e desigualdades regionais."}, {"titulo": "Como cai na prova (VUNESP)", "texto": "A VUNESP cobra características do território, distribuição de atividades econômicas, concentração populacional e problemas ambientais."}]'::jsonb,
    '["O território brasileiro é muito diverso.", "A população se concentra mais em certas áreas, especialmente no litoral e Sudeste.", "O país possui diferentes tipos de clima e vegetação.", "As desigualdades regionais são marcantes.", "Natureza e ocupação humana estão interligadas."]'::jsonb,
    '["Associe cada região a características naturais e econômicas.", "Observe a ligação entre ambiente e atividade humana.", "Revise vegetações, climas e concentração populacional.", "Pegadinhas clássicas da VUNESP: generalizar o país inteiro com base em uma região."]'::jsonb,
    '["A Amazônia se destaca pela floresta equatorial.", "O Semiárido nordestino enfrenta escassez hídrica.", "O Sudeste concentra grande parte da atividade industrial."]'::jsonb,
    '["Confundir biomas e regiões.", "Ignorar a desigualdade regional.", "Estudar geografia física sem relacionar com ocupação humana."]'::jsonb,
    'basic'::public.plan_slug,
    1,
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
delete from public.flashcards where content_id in (select id from public.contents where slug = 'geografia-geografia-do-brasil-001');
insert into public.flashcards (content_id, question, answer, sort_order)
select id, 'O que a Geografia do Brasil estuda?', 'O território brasileiro em seus aspectos naturais e humanos.', 0
from public.contents where slug = 'geografia-geografia-do-brasil-001';
insert into public.flashcards (content_id, question, answer, sort_order)
select id, 'Onde há grande concentração populacional?', 'No litoral e em áreas mais urbanizadas, especialmente no Sudeste.', 1
from public.contents where slug = 'geografia-geografia-do-brasil-001';
insert into public.flashcards (content_id, question, answer, sort_order)
select id, 'Quais elementos físicos são importantes?', 'Relevo, clima, vegetação e hidrografia.', 2
from public.contents where slug = 'geografia-geografia-do-brasil-001';
insert into public.flashcards (content_id, question, answer, sort_order)
select id, 'A economia brasileira é igual em todas as regiões?', 'Não, há desigualdades regionais importantes.', 3
from public.contents where slug = 'geografia-geografia-do-brasil-001';
insert into public.flashcards (content_id, question, answer, sort_order)
select id, 'A VUNESP cobra relação entre natureza e sociedade?', 'Sim.', 4
from public.contents where slug = 'geografia-geografia-do-brasil-001';
insert into public.flashcards (content_id, question, answer, sort_order)
select id, 'Qual um tema central na geografia brasileira?', 'A diversidade regional.', 5
from public.contents where slug = 'geografia-geografia-do-brasil-001';
delete from public.questions where content_id in (select id from public.contents where slug = 'geografia-geografia-do-brasil-001');
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'A Geografia do Brasil estuda:', '["somente rios", "somente clima", "aspectos naturais e humanos do território", "apenas política externa"]'::jsonb, 2, 'A análise geográfica envolve natureza, população, economia e organização do espaço.', 0
from public.contents where slug = 'geografia-geografia-do-brasil-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'Uma característica importante do espaço brasileiro é:', '["homogeneidade total", "diversidade regional", "ausência de vegetação", "clima único"]'::jsonb, 1, 'O Brasil apresenta grande diversidade física, econômica e social.', 1
from public.contents where slug = 'geografia-geografia-do-brasil-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'A concentração populacional brasileira é maior em:', '["áreas totalmente desabitadas", "litoral e regiões urbanizadas", "somente na Amazônia", "somente no Pantanal"]'::jsonb, 1, 'A população se concentra em áreas urbanizadas e próximas ao litoral, com destaque para o Sudeste.', 2
from public.contents where slug = 'geografia-geografia-do-brasil-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'A Geografia do Brasil cobra relação entre:', '["ambiente e ocupação humana", "mitologia e física", "gramática e álgebra", "somente literatura"]'::jsonb, 0, 'A organização do espaço brasileiro depende dessa relação.', 3
from public.contents where slug = 'geografia-geografia-do-brasil-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'Uma marca da geografia brasileira é:', '["igualdade regional completa", "desigualdade regional", "ausência de indústria", "falta de rios"]'::jsonb, 1, 'As diferenças regionais são centrais para entender o país.', 4
from public.contents where slug = 'geografia-geografia-do-brasil-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'O estudo do clima, relevo e vegetação pertence à dimensão:', '["física", "somente econômica", "somente diplomática", "literária"]'::jsonb, 0, 'Esses são elementos da geografia física.', 5
from public.contents where slug = 'geografia-geografia-do-brasil-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'A VUNESP costuma cobrar geografia com foco em:', '["decoração sem contexto", "território, sociedade e economia", "apenas datas históricas", "somente poesia"]'::jsonb, 1, 'A banca prefere leitura integrada do espaço.', 6
from public.contents where slug = 'geografia-geografia-do-brasil-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'Um erro comum ao estudar Geografia do Brasil é:', '["perceber diferenças regionais", "generalizar o país inteiro", "relacionar natureza e economia", "analisar população"]'::jsonb, 1, 'O Brasil é muito diverso, e generalizações costumam levar a erro.', 7
from public.contents where slug = 'geografia-geografia-do-brasil-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'O espaço geográfico brasileiro resulta da interação entre:', '["somente natureza", "somente ação humana", "natureza e sociedade", "somente indústria"]'::jsonb, 2, 'O espaço geográfico é resultado da relação entre elementos naturais e ação humana.', 8
from public.contents where slug = 'geografia-geografia-do-brasil-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'A principal habilidade exigida nesse tema é:', '["visão integrada do território", "apenas memorização de siglas", "cálculo algébrico", "semântica verbal"]'::jsonb, 0, 'A geografia exige compreensão do território como conjunto articulado.', 9
from public.contents where slug = 'geografia-geografia-do-brasil-001';
with inserted as (
  insert into public.contents (
    slug, source_id, discipline, topic, name, summary, theory, theory_blocks, key_points, proof_tips, examples, common_errors,
    minimum_plan, required_plan_rank, is_published
  ) values (
    'geografia-globalizacao-001',
    'geografia-globalizacao-001',
    'Geografia',
    'Globalização',
    'Globalização',
    'Globalização é o processo de intensificação das conexões econômicas, tecnológicas, culturais e informacionais entre países e regiões. A VUNESP cobra integração mundial, circulação de capitais, mercadorias e informações, além de desigualdades produzidas ou ampliadas por esse processo.',
    'A globalização é marcada pela ampliação da interdependência entre diferentes partes do mundo. Avanços nos transportes, na informática e nas telecomunicações aceleraram fluxos de mercadorias, capitais, pessoas e informações.

No campo econômico, empresas transnacionais, cadeias produtivas globais e mercados integrados ganham destaque. No campo cultural, há circulação intensa de produtos, estilos, valores e hábitos. No campo tecnológico, a internet e os sistemas digitais reduziram distâncias e ampliaram a velocidade da comunicação.

Entretanto, a globalização não atinge todos de forma igual. Há assimetrias entre países centrais e periféricos, exclusão digital, desigualdade econômica e dependência tecnológica. Por isso, a globalização é ao mesmo tempo integração e desigualdade.

A VUNESP costuma cobrar os aspectos positivos e negativos do processo, a relação com tecnologia e economia, e a diferença entre integração global e distribuição desigual de benefícios.',
    '[{"titulo": "Conceito", "texto": "Globalização é o processo de integração crescente entre lugares, economias e sociedades."}, {"titulo": "Regras", "texto": "Esse processo envolve fluxos de capitais, mercadorias, pessoas, informações e culturas. Ele depende fortemente da tecnologia e dos meios de comunicação."}, {"titulo": "Como cai na prova (VUNESP)", "texto": "A VUNESP cobra impactos econômicos, tecnológicos e sociais da globalização, além de suas desigualdades."}]'::jsonb,
    '["Globalização intensifica conexões mundiais.", "Tecnologia e comunicação aceleram o processo.", "Empresas transnacionais têm papel importante.", "Os efeitos da globalização são desiguais.", "Integração global não significa igualdade global."]'::jsonb,
    '["Associe globalização a fluxos e redes.", "Lembre dos efeitos econômicos e culturais.", "Não trate globalização como fenômeno apenas positivo.", "Pegadinhas clássicas da VUNESP: confundir integração com igualdade."]'::jsonb,
    '["Uma empresa produz peças em vários países e vende globalmente.", "A internet encurta distâncias de comunicação.", "A exclusão digital mostra que nem todos participam igualmente do processo."]'::jsonb,
    '["Ver globalização como processo homogêneo.", "Esquecer as desigualdades entre países.", "Analisar só o aspecto econômico e ignorar o cultural e tecnológico."]'::jsonb,
    'basic'::public.plan_slug,
    1,
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
delete from public.flashcards where content_id in (select id from public.contents where slug = 'geografia-globalizacao-001');
insert into public.flashcards (content_id, question, answer, sort_order)
select id, 'O que é globalização?', 'É a intensificação das conexões entre lugares e sociedades.', 0
from public.contents where slug = 'geografia-globalizacao-001';
insert into public.flashcards (content_id, question, answer, sort_order)
select id, 'Qual o papel da tecnologia na globalização?', 'Acelerar comunicação, transporte e circulação de informações.', 1
from public.contents where slug = 'geografia-globalizacao-001';
insert into public.flashcards (content_id, question, answer, sort_order)
select id, 'A globalização atinge todos igualmente?', 'Não.', 2
from public.contents where slug = 'geografia-globalizacao-001';
insert into public.flashcards (content_id, question, answer, sort_order)
select id, 'O que são empresas transnacionais?', 'Empresas que atuam em vários países.', 3
from public.contents where slug = 'geografia-globalizacao-001';
insert into public.flashcards (content_id, question, answer, sort_order)
select id, 'Um efeito negativo da globalização?', 'Ampliação ou manutenção de desigualdades.', 4
from public.contents where slug = 'geografia-globalizacao-001';
insert into public.flashcards (content_id, question, answer, sort_order)
select id, 'Como a VUNESP cobra esse tema?', 'Pelos fluxos globais e seus impactos sociais e econômicos.', 5
from public.contents where slug = 'geografia-globalizacao-001';
delete from public.questions where content_id in (select id from public.contents where slug = 'geografia-globalizacao-001');
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'A globalização pode ser definida como:', '["isolamento entre países", "integração crescente entre espaços do mundo", "fim da tecnologia", "redução das trocas internacionais"]'::jsonb, 1, 'O conceito central é a intensificação das conexões mundiais.', 0
from public.contents where slug = 'geografia-globalizacao-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'Um fator decisivo para a globalização foi:', '["redução da comunicação", "avanço tecnológico", "fim do comércio", "desaparecimento das empresas"]'::jsonb, 1, 'Tecnologia e comunicação aceleraram o processo global.', 1
from public.contents where slug = 'geografia-globalizacao-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'As empresas transnacionais são importantes na globalização porque:', '["atuam apenas em uma cidade", "organizam atividades em vários países", "eliminam o comércio", "reduzem toda desigualdade"]'::jsonb, 1, 'Essas empresas articulam produção, circulação e consumo em escala internacional.', 2
from public.contents where slug = 'geografia-globalizacao-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'Um traço da globalização é:', '["isolamento cultural total", "fluxo intenso de informações", "fim das redes digitais", "ausência de desigualdade"]'::jsonb, 1, 'A circulação acelerada de informações é uma característica marcante.', 3
from public.contents where slug = 'geografia-globalizacao-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'A globalização apresenta também:', '["igualdade automática entre países", "desigualdades e exclusões", "fim da dependência tecnológica", "desaparecimento dos mercados"]'::jsonb, 1, 'O processo é desigual e beneficia mais alguns grupos e regiões.', 4
from public.contents where slug = 'geografia-globalizacao-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'A exclusão digital mostra que:', '["todos têm acesso igual à tecnologia", "a globalização é desigual", "a internet não existe", "a comunicação diminuiu"]'::jsonb, 1, 'Nem todos participam das redes tecnológicas da mesma forma.', 5
from public.contents where slug = 'geografia-globalizacao-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'Um erro comum sobre a globalização é pensar que ela:', '["gera fluxos globais", "depende de tecnologia", "beneficia igualmente todos os lugares", "envolve economia e cultura"]'::jsonb, 2, 'O acesso e os benefícios são desiguais.', 6
from public.contents where slug = 'geografia-globalizacao-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'A VUNESP costuma cobrar globalização com foco em:', '["fluxos, tecnologia e desigualdade", "somente literatura", "apenas minerais", "somente geometria"]'::jsonb, 0, 'Esses são eixos clássicos de cobrança.', 7
from public.contents where slug = 'geografia-globalizacao-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'A internet, no contexto da globalização, é exemplo de:', '["ruptura das redes", "aproximação informacional", "fim das conexões", "isolamento produtivo"]'::jsonb, 1, 'Ela acelera a integração e a circulação de informações.', 8
from public.contents where slug = 'geografia-globalizacao-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'Globalização envolve:', '["somente economia", "somente cultura", "economia, tecnologia e cultura", "somente política interna"]'::jsonb, 2, 'É um processo amplo, com múltiplas dimensões.', 9
from public.contents where slug = 'geografia-globalizacao-001';
with inserted as (
  insert into public.contents (
    slug, source_id, discipline, topic, name, summary, theory, theory_blocks, key_points, proof_tips, examples, common_errors,
    minimum_plan, required_plan_rank, is_published
  ) values (
    'geografia-meio-ambiente-001',
    'geografia-meio-ambiente-001',
    'Geografia',
    'Meio ambiente',
    'Meio ambiente',
    'Meio ambiente envolve a relação entre natureza e ação humana. A VUNESP cobra desmatamento, poluição, queimadas, uso de recursos naturais, sustentabilidade, mudanças climáticas e impactos ambientais no Brasil e no mundo.',
    'O meio ambiente reúne elementos naturais e a interação humana com eles. Nas últimas décadas, os impactos ambientais tornaram-se tema central pela expansão econômica, urbana e industrial.

Entre os principais problemas ambientais estão desmatamento, poluição do ar e da água, queimadas, erosão, contaminação do solo, perda de biodiversidade e mudanças climáticas. No Brasil, esses problemas se manifestam em diferentes biomas, como Amazônia, Cerrado, Pantanal e Mata Atlântica.

A noção de sustentabilidade busca conciliar desenvolvimento econômico, justiça social e preservação ambiental. Isso envolve uso racional dos recursos, energia limpa, saneamento, conservação e políticas públicas.

A VUNESP costuma cobrar impactos ambientais, causas e consequências, além de relação entre atividades humanas e degradação do espaço. O candidato deve entender que o ambiente não é só natureza intocada, mas um sistema em interação com a sociedade.',
    '[{"titulo": "Conceito", "texto": "Meio ambiente é o conjunto de elementos naturais e das relações humanas com eles."}, {"titulo": "Regras", "texto": "Problemas ambientais decorrem de formas inadequadas de uso do espaço e dos recursos. Sustentabilidade propõe equilíbrio entre uso econômico e preservação."}, {"titulo": "Como cai na prova (VUNESP)", "texto": "A VUNESP cobra desmatamento, poluição, queimadas, biomas, sustentabilidade e mudanças climáticas."}]'::jsonb,
    '["Meio ambiente envolve natureza e ação humana.", "Desmatamento e poluição são problemas centrais.", "Sustentabilidade busca equilíbrio entre desenvolvimento e preservação.", "Mudanças climáticas têm efeitos globais e locais.", "No Brasil, biomas sofrem pressões específicas."]'::jsonb,
    '["Associe problema ambiental a causa e consequência.", "Lembre dos principais biomas brasileiros e suas pressões.", "Não trate meio ambiente como tema apenas natural; inclua ação humana.", "Pegadinhas clássicas da VUNESP: separar ambiente e sociedade."]'::jsonb,
    '["Queimadas afetam biodiversidade e qualidade do ar.", "Desmatamento altera o regime hídrico e o equilíbrio ecológico.", "Saneamento insuficiente compromete rios e saúde pública."]'::jsonb,
    '["Pensar meio ambiente como natureza sem relação com sociedade.", "Reduzir sustentabilidade a simples preservação sem desenvolvimento.", "Ignorar impactos sociais dos problemas ambientais."]'::jsonb,
    'basic'::public.plan_slug,
    1,
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
delete from public.flashcards where content_id in (select id from public.contents where slug = 'geografia-meio-ambiente-001');
insert into public.flashcards (content_id, question, answer, sort_order)
select id, 'O que é meio ambiente?', 'É o conjunto de elementos naturais e das relações humanas com eles.', 0
from public.contents where slug = 'geografia-meio-ambiente-001';
insert into public.flashcards (content_id, question, answer, sort_order)
select id, 'O que é sustentabilidade?', 'É o uso equilibrado dos recursos com preservação e justiça social.', 1
from public.contents where slug = 'geografia-meio-ambiente-001';
insert into public.flashcards (content_id, question, answer, sort_order)
select id, 'Qual um problema ambiental central no Brasil?', 'Desmatamento.', 2
from public.contents where slug = 'geografia-meio-ambiente-001';
insert into public.flashcards (content_id, question, answer, sort_order)
select id, 'Queimadas geram quais impactos?', 'Perda de biodiversidade e piora da qualidade do ar.', 3
from public.contents where slug = 'geografia-meio-ambiente-001';
insert into public.flashcards (content_id, question, answer, sort_order)
select id, 'Mudanças climáticas são tema ambiental?', 'Sim, e com forte impacto geográfico.', 4
from public.contents where slug = 'geografia-meio-ambiente-001';
insert into public.flashcards (content_id, question, answer, sort_order)
select id, 'Como a VUNESP cobra meio ambiente?', 'Por causas, consequências e relação entre sociedade e natureza.', 5
from public.contents where slug = 'geografia-meio-ambiente-001';
delete from public.questions where content_id in (select id from public.contents where slug = 'geografia-meio-ambiente-001');
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'O meio ambiente envolve:', '["somente árvores", "somente rios", "natureza e ação humana", "somente o clima"]'::jsonb, 2, 'A abordagem ambiental inclui relações entre sociedade e natureza.', 0
from public.contents where slug = 'geografia-meio-ambiente-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'Um problema ambiental frequente no Brasil é:', '["desmatamento", "ausência de biomas", "fim da biodiversidade mundial completa", "eliminação das chuvas"]'::jsonb, 0, 'O desmatamento é uma questão central em vários biomas brasileiros.', 1
from public.contents where slug = 'geografia-meio-ambiente-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'Sustentabilidade significa:', '["explorar sem limites", "equilibrar uso econômico e preservação", "impedir toda atividade humana", "abandonar toda tecnologia"]'::jsonb, 1, 'A sustentabilidade busca conciliar desenvolvimento e preservação.', 2
from public.contents where slug = 'geografia-meio-ambiente-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'As queimadas podem causar:', '["melhoria imediata do ar", "perda de biodiversidade", "eliminação dos problemas ambientais", "formação de rios"]'::jsonb, 1, 'Elas afetam ecossistemas e pioram a qualidade do ar.', 3
from public.contents where slug = 'geografia-meio-ambiente-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'A poluição da água pode estar ligada a:', '["saneamento precário", "proteção total dos rios", "ausência de cidades", "chuva apenas"]'::jsonb, 0, 'Falta de saneamento é uma causa importante de poluição hídrica.', 4
from public.contents where slug = 'geografia-meio-ambiente-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'As mudanças climáticas representam:', '["fenômeno sem relação humana", "tema ambiental de grande escala", "problema apenas local de um bairro", "assunto sem efeitos sociais"]'::jsonb, 1, 'Trata-se de questão ambiental com impactos amplos.', 5
from public.contents where slug = 'geografia-meio-ambiente-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'A VUNESP costuma tratar o meio ambiente como:', '["tema isolado da sociedade", "tema integrado à ação humana", "assunto apenas botânico", "tema sem relação econômica"]'::jsonb, 1, 'A banca costuma relacionar ambiente, economia e ação social.', 6
from public.contents where slug = 'geografia-meio-ambiente-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'Um erro comum ao estudar meio ambiente é:', '["relacionar sociedade e natureza", "analisar causas e efeitos", "separar ambiente da ação humana", "estudar biomas"]'::jsonb, 2, 'A questão ambiental depende justamente dessa interação.', 7
from public.contents where slug = 'geografia-meio-ambiente-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'O desmatamento pode afetar:', '["apenas árvores", "o clima e os recursos hídricos", "somente a paisagem estética", "nada além do solo"]'::jsonb, 1, 'Há impactos amplos no clima, água, biodiversidade e sociedade.', 8
from public.contents where slug = 'geografia-meio-ambiente-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'A principal habilidade nesse tema é:', '["ligar problema, causa e consequência", "decorar nomes sem contexto", "fazer regra de três", "ignorar a ação humana"]'::jsonb, 0, 'Esse encadeamento ajuda a responder a maior parte das questões.', 9
from public.contents where slug = 'geografia-meio-ambiente-001';
with inserted as (
  insert into public.contents (
    slug, source_id, discipline, topic, name, summary, theory, theory_blocks, key_points, proof_tips, examples, common_errors,
    minimum_plan, required_plan_rank, is_published
  ) values (
    'geografia-problemas-sociais-001',
    'geografia-problemas-sociais-001',
    'Geografia',
    'Problemas sociais',
    'Problemas sociais',
    'Problemas sociais envolvem desigualdade, pobreza, exclusão, violência, desemprego, déficit de moradia, falta de saneamento e dificuldades de acesso a direitos básicos. A VUNESP cobra esses temas ligados à organização do espaço e às condições de vida da população.',
    'Problemas sociais são dificuldades estruturais que afetam o bem-estar da população e revelam desigualdades na organização do espaço. No Brasil, eles se expressam em renda, moradia, saúde, educação, segurança, mobilidade e acesso a serviços.

A desigualdade social é uma das marcas centrais do país. Ela se manifesta na distribuição de renda, na segregação urbana, na informalidade do trabalho, no acesso desigual a oportunidades e na concentração de infraestrutura em áreas mais valorizadas.

Pobreza, desemprego, subemprego, violência urbana, déficit habitacional e saneamento precário são temas recorrentes. A Geografia analisa esses problemas espacialmente, ou seja, em sua distribuição pelo território e em sua relação com políticas públicas e dinâmica econômica.

A VUNESP costuma cobrar a ligação entre urbanização desigual e problemas sociais, mostrando que o espaço urbano expressa desigualdades históricas e econômicas.',
    '[{"titulo": "Conceito", "texto": "Problemas sociais são dificuldades estruturais que afetam a qualidade de vida da população."}, {"titulo": "Regras", "texto": "Eles se relacionam à desigualdade, à má distribuição de recursos e à organização do espaço. Devem ser entendidos como fenômenos sociais e territoriais."}, {"titulo": "Como cai na prova (VUNESP)", "texto": "A VUNESP cobra desigualdade, pobreza, violência, moradia, saneamento e exclusão urbana."}]'::jsonb,
    '["Desigualdade social é um problema estrutural no Brasil.", "Pobreza e exclusão têm dimensão espacial.", "Moradia, saneamento e segurança aparecem com frequência.", "O espaço urbano revela desigualdades sociais.", "Problemas sociais não são fenômenos isolados."]'::jsonb,
    '["Associe problemas sociais à desigualdade e ao território.", "Pense nos efeitos da urbanização desigual.", "Observe como falta de infraestrutura afeta a população.", "Pegadinhas clássicas da VUNESP: tratar problema social como questão individual, e não estrutural."]'::jsonb,
    '["Periferias com pouco saneamento revelam desigualdade socioespacial.", "Déficit habitacional está ligado à falta de acesso à moradia adequada.", "Violência urbana se relaciona a diversos fatores sociais e espaciais."]'::jsonb,
    '["Explicar problema social de forma simplista e individual.", "Ignorar a dimensão territorial da desigualdade.", "Separar totalmente economia, espaço e questão social."]'::jsonb,
    'basic'::public.plan_slug,
    1,
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
delete from public.flashcards where content_id in (select id from public.contents where slug = 'geografia-problemas-sociais-001');
insert into public.flashcards (content_id, question, answer, sort_order)
select id, 'O que são problemas sociais?', 'São dificuldades estruturais que afetam a vida da população.', 0
from public.contents where slug = 'geografia-problemas-sociais-001';
insert into public.flashcards (content_id, question, answer, sort_order)
select id, 'Qual um problema social central no Brasil?', 'Desigualdade social.', 1
from public.contents where slug = 'geografia-problemas-sociais-001';
insert into public.flashcards (content_id, question, answer, sort_order)
select id, 'Saneamento precário é problema social?', 'Sim.', 2
from public.contents where slug = 'geografia-problemas-sociais-001';
insert into public.flashcards (content_id, question, answer, sort_order)
select id, 'A geografia analisa problemas sociais como?', 'Também pela sua distribuição no espaço.', 3
from public.contents where slug = 'geografia-problemas-sociais-001';
insert into public.flashcards (content_id, question, answer, sort_order)
select id, 'Moradia inadequada se relaciona a quê?', 'Déficit habitacional e desigualdade.', 4
from public.contents where slug = 'geografia-problemas-sociais-001';
insert into public.flashcards (content_id, question, answer, sort_order)
select id, 'Como a VUNESP cobra o tema?', 'Ligando desigualdade, urbanização e condições de vida.', 5
from public.contents where slug = 'geografia-problemas-sociais-001';
delete from public.questions where content_id in (select id from public.contents where slug = 'geografia-problemas-sociais-001');
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'Um problema social importante no Brasil é:', '["igualdade de renda plena", "desigualdade social", "ausência total de pobreza", "fim do déficit habitacional"]'::jsonb, 1, 'A desigualdade social é uma marca estrutural da realidade brasileira.', 0
from public.contents where slug = 'geografia-problemas-sociais-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'O saneamento precário afeta principalmente:', '["a saúde pública", "somente o turismo", "apenas a estética da cidade", "somente o trânsito"]'::jsonb, 0, 'A falta de saneamento compromete saúde, ambiente e qualidade de vida.', 1
from public.contents where slug = 'geografia-problemas-sociais-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'A segregação urbana está relacionada a:', '["distribuição igualitária de infraestrutura", "separação espacial de grupos sociais", "ausência de cidades", "somente clima"]'::jsonb, 1, 'A segregação urbana expressa desigualdade espacial entre grupos sociais.', 2
from public.contents where slug = 'geografia-problemas-sociais-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'O déficit habitacional refere-se à:', '["falta ou inadequação de moradias", "produção agrícola", "escassez de florestas", "falta de rodovias apenas"]'::jsonb, 0, 'O conceito envolve carência de moradia adequada.', 3
from public.contents where slug = 'geografia-problemas-sociais-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'A VUNESP costuma relacionar problemas sociais a:', '["organização do espaço e desigualdade", "somente fenômenos naturais", "somente matemática", "somente literatura"]'::jsonb, 0, 'A abordagem geográfica liga questões sociais ao território.', 4
from public.contents where slug = 'geografia-problemas-sociais-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'Um erro comum ao analisar problemas sociais é:', '["considerar fatores estruturais", "observar desigualdades", "tratar tudo como responsabilidade individual", "estudar o espaço urbano"]'::jsonb, 2, 'Problemas sociais têm causas estruturais e coletivas.', 5
from public.contents where slug = 'geografia-problemas-sociais-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'A pobreza tem dimensão geográfica porque:', '["não aparece no espaço", "distribui-se desigualmente no território", "não se relaciona com cidades", "depende apenas do clima"]'::jsonb, 1, 'A geografia observa como a pobreza se manifesta em diferentes áreas e contextos.', 6
from public.contents where slug = 'geografia-problemas-sociais-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'Violência urbana pode ser tratada em geografia porque:', '["não tem relação com espaço", "se relaciona à organização socioespacial", "é tema apenas biológico", "não afeta a cidade"]'::jsonb, 1, 'A violência também se relaciona a desigualdades e à produção do espaço urbano.', 7
from public.contents where slug = 'geografia-problemas-sociais-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'A urbanização desigual contribui para:', '["melhoria automática da cidade", "redução imediata de todos os problemas sociais", "ampliação de problemas socioespaciais", "fim das periferias"]'::jsonb, 2, 'Crescimento urbano sem planejamento tende a ampliar desigualdades.', 8
from public.contents where slug = 'geografia-problemas-sociais-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'A principal habilidade nesse tema é:', '["ligar sociedade, desigualdade e espaço", "apenas memorizar siglas", "ignorar infraestrutura", "resolver somente cálculo"]'::jsonb, 0, 'Essa visão integrada é central na análise geográfica dos problemas sociais.', 9
from public.contents where slug = 'geografia-problemas-sociais-001';
with inserted as (
  insert into public.contents (
    slug, source_id, discipline, topic, name, summary, theory, theory_blocks, key_points, proof_tips, examples, common_errors,
    minimum_plan, required_plan_rank, is_published
  ) values (
    'geografia-regioes-brasileiras-001',
    'geografia-regioes-brasileiras-001',
    'Geografia',
    'Regiões brasileiras',
    'Regiões brasileiras',
    'O Brasil é dividido em cinco regiões: Norte, Nordeste, Centro-Oeste, Sudeste e Sul. Cada uma possui características próprias de clima, vegetação, economia, população e organização do espaço. A VUNESP cobra diferenças regionais, desigualdades e atividades predominantes.',
    'A divisão regional do Brasil ajuda a compreender as diferenças internas do país. As cinco grandes regiões apresentam perfis distintos do ponto de vista físico, econômico e social.

A Região Norte destaca-se pela presença da Amazônia, baixa densidade populacional em muitas áreas e importância da floresta e da rede hidrográfica. O Nordeste apresenta forte diversidade interna, com litoral, zona da mata, agreste e sertão, além de marcantes desigualdades históricas. O Centro-Oeste tem destaque para agropecuária, Cerrado, Pantanal e papel de Brasília.

O Sudeste é a região mais populosa e economicamente mais dinâmica, com forte industrialização, urbanização e concentração de serviços. O Sul apresenta agricultura diversificada, bom desenvolvimento urbano e clima subtropical em grande parte do território.

A VUNESP cobra muito a associação entre cada região e suas características físicas e econômicas, além da compreensão das desigualdades regionais brasileiras.',
    '[{"titulo": "Conceito", "texto": "As regiões brasileiras são divisões territoriais que facilitam o estudo das diferenças internas do país."}, {"titulo": "Regras", "texto": "Cada região possui combinação própria de clima, vegetação, economia, população e problemas sociais."}, {"titulo": "Como cai na prova (VUNESP)", "texto": "A VUNESP cobra identificação de características regionais, diferenças econômicas e sociais e associação entre espaço e atividade produtiva."}]'::jsonb,
    '["Norte: Amazônia e grande rede hidrográfica.", "Nordeste: diversidade interna e desigualdades históricas.", "Centro-Oeste: agropecuária e Cerrado.", "Sudeste: maior concentração econômica e urbana.", "Sul: agricultura diversificada e clima subtropical."]'::jsonb,
    '["Associe cada região a um conjunto de características principais.", "Não veja as regiões como blocos totalmente homogêneos.", "Revise economia, clima e população de cada uma.", "Pegadinhas clássicas da VUNESP: trocar biomas e atividades típicas entre regiões."]'::jsonb,
    '["Amazônia é fortemente associada à Região Norte.", "Industrialização concentra-se bastante no Sudeste.", "O Pantanal se relaciona ao Centro-Oeste."]'::jsonb,
    '["Confundir bioma com região política.", "Tratar o Nordeste como espaço totalmente uniforme.", "Ignorar a importância econômica do Centro-Oeste."]'::jsonb,
    'basic'::public.plan_slug,
    1,
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
delete from public.flashcards where content_id in (select id from public.contents where slug = 'geografia-regioes-brasileiras-001');
insert into public.flashcards (content_id, question, answer, sort_order)
select id, 'Quantas regiões oficiais o Brasil tem?', 'Cinco.', 0
from public.contents where slug = 'geografia-regioes-brasileiras-001';
insert into public.flashcards (content_id, question, answer, sort_order)
select id, 'Qual região é mais industrializada?', 'Sudeste.', 1
from public.contents where slug = 'geografia-regioes-brasileiras-001';
insert into public.flashcards (content_id, question, answer, sort_order)
select id, 'Onde está a maior floresta equatorial do país?', 'Na Região Norte.', 2
from public.contents where slug = 'geografia-regioes-brasileiras-001';
insert into public.flashcards (content_id, question, answer, sort_order)
select id, 'Qual região se destaca pelo Pantanal?', 'Centro-Oeste.', 3
from public.contents where slug = 'geografia-regioes-brasileiras-001';
insert into public.flashcards (content_id, question, answer, sort_order)
select id, 'Qual região tem forte presença do clima subtropical?', 'Sul.', 4
from public.contents where slug = 'geografia-regioes-brasileiras-001';
insert into public.flashcards (content_id, question, answer, sort_order)
select id, 'Como a VUNESP cobra as regiões?', 'Por comparação de características físicas, humanas e econômicas.', 5
from public.contents where slug = 'geografia-regioes-brasileiras-001';
delete from public.questions where content_id in (select id from public.contents where slug = 'geografia-regioes-brasileiras-001');
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'O Brasil é dividido oficialmente em:', '["3 regiões", "4 regiões", "5 regiões", "6 regiões"]'::jsonb, 2, 'A divisão oficial do IBGE estabelece cinco regiões.', 0
from public.contents where slug = 'geografia-regioes-brasileiras-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'A região mais associada à Floresta Amazônica é a:', '["Sul", "Nordeste", "Norte", "Sudeste"]'::jsonb, 2, 'A Amazônia é a principal marca natural da Região Norte.', 1
from public.contents where slug = 'geografia-regioes-brasileiras-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'A região brasileira de maior concentração econômica e industrial é a:', '["Norte", "Nordeste", "Sudeste", "Centro-Oeste"]'::jsonb, 2, 'O Sudeste concentra grande parte da indústria e dos serviços do país.', 2
from public.contents where slug = 'geografia-regioes-brasileiras-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'O Pantanal está fortemente ligado à região:', '["Sul", "Centro-Oeste", "Nordeste", "Sudeste"]'::jsonb, 1, 'O Pantanal tem destaque em estados do Centro-Oeste.', 3
from public.contents where slug = 'geografia-regioes-brasileiras-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'Uma característica importante do Nordeste é:', '["homogeneidade total", "ausência de diversidade interna", "diversidade física e histórica", "predomínio absoluto da floresta equatorial"]'::jsonb, 2, 'O Nordeste possui grande diversidade e desigualdades historicamente marcadas.', 4
from public.contents where slug = 'geografia-regioes-brasileiras-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'O Sul do Brasil se destaca por:', '["clima subtropical em grande parte do território", "predomínio do clima equatorial", "ausência de agricultura", "baixa urbanização total"]'::jsonb, 0, 'O clima subtropical é uma marca importante da Região Sul.', 5
from public.contents where slug = 'geografia-regioes-brasileiras-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'A agropecuária moderna tem grande peso na região:', '["Centro-Oeste", "Norte apenas", "Nordeste apenas", "Sul apenas"]'::jsonb, 0, 'O Centro-Oeste se destaca fortemente pelo agronegócio.', 6
from public.contents where slug = 'geografia-regioes-brasileiras-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'Um erro comum ao estudar regiões brasileiras é:', '["comparar características", "relacionar economia e espaço", "generalizar demais cada região", "estudar população"]'::jsonb, 2, 'Cada região tem grande diversidade interna, e generalizações excessivas prejudicam a análise.', 7
from public.contents where slug = 'geografia-regioes-brasileiras-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'A VUNESP costuma cobrar regiões brasileiras por meio de:', '["associação entre região e característica", "somente datas", "somente cálculos", "somente literatura"]'::jsonb, 0, 'A banca trabalha muito com relação entre espaço regional e características dominantes.', 8
from public.contents where slug = 'geografia-regioes-brasileiras-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'Brasília se localiza na região:', '["Norte", "Nordeste", "Centro-Oeste", "Sul"]'::jsonb, 2, 'O Distrito Federal integra a Região Centro-Oeste.', 9
from public.contents where slug = 'geografia-regioes-brasileiras-001';
with inserted as (
  insert into public.contents (
    slug, source_id, discipline, topic, name, summary, theory, theory_blocks, key_points, proof_tips, examples, common_errors,
    minimum_plan, required_plan_rank, is_published
  ) values (
    'geografia-urbanizacao-001',
    'geografia-urbanizacao-001',
    'Geografia',
    'Urbanização',
    'Urbanização',
    'Urbanização é o processo de crescimento das cidades e aumento da população urbana. No Brasil, esse processo foi intenso no século XX e trouxe desafios como desigualdade socioespacial, mobilidade urbana, favelização e pressão sobre infraestrutura e serviços públicos. A VUNESP cobra causas, consequências e características desse processo.',
    'Urbanização é o aumento da população urbana e da importância das cidades na organização do território. No Brasil, a urbanização acelerou-se especialmente com a industrialização e o êxodo rural ao longo do século XX.

Muitas pessoas deixaram o campo em direção às cidades em busca de trabalho, renda, serviços e melhores oportunidades. Isso fortaleceu metrópoles e grandes centros urbanos, mas também gerou crescimento desordenado em diversas áreas.

Entre os principais problemas urbanos estão desigualdade socioespacial, ocupação irregular, falta de moradia adequada, trânsito, poluição, enchentes, violência e carência de saneamento. A urbanização brasileira ocorreu de forma rápida e desigual, o que explica parte desses desafios.

A VUNESP costuma cobrar conceitos como metrópole, conurbação, região metropolitana, periferia, segregação urbana e problemas ligados à infraestrutura urbana. Também pode relacionar urbanização a industrialização e migração.',
    '[{"titulo": "Conceito", "texto": "Urbanização é o processo de crescimento das cidades e aumento da população urbana."}, {"titulo": "Regras", "texto": "No Brasil, a urbanização se relaciona à industrialização, ao êxodo rural e à concentração de atividades econômicas nas cidades."}, {"titulo": "Como cai na prova (VUNESP)", "texto": "A VUNESP cobra definição, causas da urbanização, problemas urbanos e organização do espaço nas metrópoles."}]'::jsonb,
    '["Urbanização brasileira foi acelerada no século XX.", "Industrialização e êxodo rural impulsionaram o processo.", "O crescimento urbano foi muitas vezes desordenado.", "Problemas urbanos incluem moradia precária, trânsito e saneamento insuficiente.", "As metrópoles concentram população e serviços."]'::jsonb,
    '["Associe urbanização à industrialização e migração.", "Lembre que crescer em população não significa crescer com qualidade.", "Revise termos como metrópole, periferia e conurbação.", "Pegadinhas clássicas da VUNESP: confundir urbanização com desenvolvimento urbano equilibrado."]'::jsonb,
    '["Êxodo rural aumentou a população das cidades.", "A expansão periférica expressa desigualdade urbana.", "Metrópoles concentram empregos e serviços, mas também problemas estruturais."]'::jsonb,
    '["Achar que urbanização significa melhoria automática da vida urbana.", "Separar urbanização de industrialização e migração.", "Ignorar a desigualdade socioespacial."]'::jsonb,
    'basic'::public.plan_slug,
    1,
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
delete from public.flashcards where content_id in (select id from public.contents where slug = 'geografia-urbanizacao-001');
insert into public.flashcards (content_id, question, answer, sort_order)
select id, 'O que é urbanização?', 'É o crescimento das cidades e da população urbana.', 0
from public.contents where slug = 'geografia-urbanizacao-001';
insert into public.flashcards (content_id, question, answer, sort_order)
select id, 'O que impulsionou a urbanização no Brasil?', 'Industrialização e êxodo rural.', 1
from public.contents where slug = 'geografia-urbanizacao-001';
insert into public.flashcards (content_id, question, answer, sort_order)
select id, 'O que é metrópole?', 'Grande cidade com forte influência econômica e populacional.', 2
from public.contents where slug = 'geografia-urbanizacao-001';
insert into public.flashcards (content_id, question, answer, sort_order)
select id, 'O que é conurbação?', 'União física entre áreas urbanas de cidades vizinhas.', 3
from public.contents where slug = 'geografia-urbanizacao-001';
insert into public.flashcards (content_id, question, answer, sort_order)
select id, 'A urbanização brasileira foi igualitária?', 'Não, foi rápida e desigual.', 4
from public.contents where slug = 'geografia-urbanizacao-001';
insert into public.flashcards (content_id, question, answer, sort_order)
select id, 'Como a VUNESP cobra urbanização?', 'Por causas, consequências e conceitos urbanos.', 5
from public.contents where slug = 'geografia-urbanizacao-001';
delete from public.questions where content_id in (select id from public.contents where slug = 'geografia-urbanizacao-001');
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'Urbanização é o processo de:', '["redução das cidades", "crescimento das cidades e da população urbana", "extinção do espaço rural", "formação exclusiva de florestas"]'::jsonb, 1, 'Essa é a definição do processo de urbanização.', 0
from public.contents where slug = 'geografia-urbanizacao-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'Um fator importante para a urbanização brasileira foi:', '["êxodo rural", "isolamento das cidades", "redução da indústria", "fim dos serviços urbanos"]'::jsonb, 0, 'A saída de população do campo para as cidades impulsionou a urbanização.', 1
from public.contents where slug = 'geografia-urbanizacao-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'A urbanização brasileira foi marcada por:', '["crescimento sempre planejado", "crescimento rápido e desigual", "ausência de periferias", "eliminação dos problemas sociais"]'::jsonb, 1, 'O processo ocorreu de forma acelerada e muitas vezes desordenada.', 2
from public.contents where slug = 'geografia-urbanizacao-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'Um problema urbano comum é:', '["desaparecimento da infraestrutura", "trânsito e falta de saneamento", "fim da desigualdade", "redução da população"]'::jsonb, 1, 'Esses são problemas típicos das grandes cidades brasileiras.', 3
from public.contents where slug = 'geografia-urbanizacao-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'O termo metrópole refere-se a:', '["pequeno povoado", "grande centro urbano de influência", "área rural isolada", "bioma brasileiro"]'::jsonb, 1, 'Metrópole é um grande centro urbano com forte poder de atração.', 4
from public.contents where slug = 'geografia-urbanizacao-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'Conurbação significa:', '["separação total entre cidades", "junção física de áreas urbanas vizinhas", "expansão de florestas", "redução populacional"]'::jsonb, 1, 'É a continuidade urbana entre municípios próximos.', 5
from public.contents where slug = 'geografia-urbanizacao-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'A VUNESP costuma relacionar urbanização com:', '["industrialização e migração", "somente relevo", "somente literatura", "somente navegação fluvial"]'::jsonb, 0, 'A urbanização brasileira está ligada a mudanças econômicas e populacionais.', 6
from public.contents where slug = 'geografia-urbanizacao-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'A desigualdade socioespacial urbana significa:', '["distribuição uniforme de serviços", "diferenças no acesso a moradia e infraestrutura", "fim das periferias", "igualdade plena nas cidades"]'::jsonb, 1, 'O espaço urbano é marcado por forte desigualdade de acesso a bens e serviços.', 7
from public.contents where slug = 'geografia-urbanizacao-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'Um erro comum sobre urbanização é pensar que ela:', '["traz desafios", "tem relação com migração", "significa desenvolvimento urbano equilibrado automaticamente", "gera mudanças territoriais"]'::jsonb, 2, 'Urbanização não significa, por si só, melhoria equilibrada da cidade.', 8
from public.contents where slug = 'geografia-urbanizacao-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'O principal foco da VUNESP nesse tema é:', '["causas, conceitos e consequências", "somente nomes de cidades", "somente fórmulas geométricas", "somente capitais estaduais"]'::jsonb, 0, 'A banca prefere abordagem conceitual e aplicada.', 9
from public.contents where slug = 'geografia-urbanizacao-001';
with inserted as (
  insert into public.contents (
    slug, source_id, discipline, topic, name, summary, theory, theory_blocks, key_points, proof_tips, examples, common_errors,
    minimum_plan, required_plan_rank, is_published
  ) values (
    'historia-atualidades-historicas-001',
    'historia-atualidades-historicas-001',
    'História',
    'Atualidades históricas',
    'Atualidades históricas',
    'Atualidades históricas relacionam fatos recentes com processos do passado. Em prova, a VUNESP pode cobrar temas contemporâneos ligados a democracia, direitos humanos, memória política, movimentos sociais, desigualdades e transformações do Estado brasileiro e do mundo.',
    'Atualidades históricas exigem a capacidade de perceber que o presente não surge do nada. Questões contemporâneas como desigualdade social, conflitos políticos, racismo, autoritarismo, direitos humanos e disputas por memória têm raízes históricas profundas.

No Brasil, debates sobre democracia, papel das instituições, violência do Estado, cidadania e participação popular podem ser compreendidos à luz da escravidão, do coronelismo, do autoritarismo e da ditadura militar. O mesmo vale para temas como desigualdade regional, concentração fundiária e exclusão social.

No cenário internacional, guerras, disputas geopolíticas, migrações, nacionalismos e tensões entre democracia e autoritarismo também possuem antecedentes históricos. A VUNESP pode cobrar a relação entre passado e presente, pedindo leitura interpretativa de acontecimentos recentes sob perspectiva histórica.

Um ponto central nesse tema é a noção de memória. Sociedades discutem o passado para definir identidade, justiça e reparação. Por isso, temas como comissões da verdade, reconhecimento de violências históricas e preservação da memória coletiva podem aparecer.

Em resumo, atualidades históricas são temas do presente analisados com base em processos históricos. A chave é conectar passado e presente sem simplificações.',
    '[{"titulo": "Conceito", "texto": "Atualidades históricas são temas contemporâneos compreendidos à luz de processos históricos anteriores."}, {"titulo": "Regras", "texto": "É preciso relacionar acontecimentos recentes a permanências e mudanças históricas, evitando análises isoladas do presente."}, {"titulo": "Como cai na prova (VUNESP)", "texto": "A VUNESP cobra leitura crítica de temas atuais associados a democracia, memória, direitos humanos, desigualdade e autoritarismo."}]'::jsonb,
    '["O presente se conecta ao passado.", "Desigualdades atuais têm raízes históricas.", "Democracia e autoritarismo são temas recorrentes.", "Memória histórica influencia debates contemporâneos.", "A prova pode pedir interpretação histórica de fatos recentes."]'::jsonb,
    '["Relacione o tema atual a processos históricos conhecidos.", "Evite respostas rasas e imediatistas.", "Observe continuidade e ruptura entre passado e presente.", "Pegadinhas clássicas da VUNESP: tratar evento recente como fenômeno sem antecedentes."]'::jsonb,
    '["Debates sobre democracia no presente podem ser ligados à experiência da ditadura militar.", "Desigualdade social atual pode ser relacionada à escravidão e à concentração histórica de riqueza.", "Conflitos por terra no presente dialogam com a concentração fundiária histórica."]'::jsonb,
    '["Analisar o presente sem contexto histórico.", "Generalizar problemas complexos com explicações simplistas.", "Separar totalmente história e atualidades."]'::jsonb,
    'basic'::public.plan_slug,
    1,
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
delete from public.flashcards where content_id in (select id from public.contents where slug = 'historia-atualidades-historicas-001');
insert into public.flashcards (content_id, question, answer, sort_order)
select id, 'O que são atualidades históricas?', 'São temas do presente entendidos a partir de processos do passado.', 0
from public.contents where slug = 'historia-atualidades-historicas-001';
insert into public.flashcards (content_id, question, answer, sort_order)
select id, 'Por que a memória histórica importa?', 'Porque influencia identidade, justiça e debate público.', 1
from public.contents where slug = 'historia-atualidades-historicas-001';
insert into public.flashcards (content_id, question, answer, sort_order)
select id, 'Democracia e autoritarismo são temas de atualidades históricas?', 'Sim.', 2
from public.contents where slug = 'historia-atualidades-historicas-001';
insert into public.flashcards (content_id, question, answer, sort_order)
select id, 'Desigualdade atual pode ser estudada historicamente?', 'Sim, por suas raízes profundas.', 3
from public.contents where slug = 'historia-atualidades-historicas-001';
insert into public.flashcards (content_id, question, answer, sort_order)
select id, 'Como a VUNESP pode cobrar isso?', 'Por interpretação de temas recentes com base histórica.', 4
from public.contents where slug = 'historia-atualidades-historicas-001';
insert into public.flashcards (content_id, question, answer, sort_order)
select id, 'Qual é a chave do tema?', 'Conectar passado e presente.', 5
from public.contents where slug = 'historia-atualidades-historicas-001';
delete from public.questions where content_id in (select id from public.contents where slug = 'historia-atualidades-historicas-001');
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'Atualidades históricas exigem do candidato:', '["decorar só datas antigas", "ligar presente e passado", "ignorar contexto", "memorizar siglas apenas"]'::jsonb, 1, 'O núcleo desse tema é a conexão entre fatos atuais e processos históricos.', 0
from public.contents where slug = 'historia-atualidades-historicas-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'Debates atuais sobre democracia no Brasil podem ser relacionados historicamente a:', '["somente ao período colonial", "experiências autoritárias do passado", "ausência de conflitos históricos", "fenômenos sem antecedentes"]'::jsonb, 1, 'A história política brasileira inclui períodos autoritários que ajudam a compreender debates atuais.', 1
from public.contents where slug = 'historia-atualidades-historicas-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'A noção de memória histórica está ligada a:', '["esquecimento coletivo obrigatório", "disputa sobre o significado do passado", "negação da história", "eliminação do debate público"]'::jsonb, 1, 'A memória envolve interpretação, reconhecimento e disputa sobre fatos passados.', 2
from public.contents where slug = 'historia-atualidades-historicas-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'Um tema atual com forte raiz histórica no Brasil é:', '["desigualdade social", "ausência total de conflitos", "fim de toda concentração de renda", "neutralidade política completa"]'::jsonb, 0, 'A desigualdade contemporânea possui profundas raízes históricas.', 3
from public.contents where slug = 'historia-atualidades-historicas-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'A VUNESP pode cobrar atualidades históricas por meio de:', '["leitura interpretativa", "apenas contas algébricas", "somente gramática", "somente mapas físicos"]'::jsonb, 0, 'A cobrança tende a ser analítica e interpretativa.', 4
from public.contents where slug = 'historia-atualidades-historicas-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'Relacionar autoritarismo atual ou recente a processos passados é um exemplo de:', '["matemática financeira", "análise histórica", "geometria", "tipologia textual"]'::jsonb, 1, 'Isso exige compreensão histórica de permanências e recorrências.', 5
from public.contents where slug = 'historia-atualidades-historicas-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'A interpretação histórica do presente ajuda a:', '["simplificar demais os temas", "entender causas e permanências", "eliminar conflitos sociais", "dispensar estudo"]'::jsonb, 1, 'O olhar histórico permite compreender raízes, mudanças e continuidades.', 6
from public.contents where slug = 'historia-atualidades-historicas-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'Um erro comum em atualidades históricas é:', '["relacionar fatos", "estudar contexto", "tratar fatos recentes como isolados", "comparar passado e presente"]'::jsonb, 2, 'Esse erro impede a compreensão histórica dos problemas.', 7
from public.contents where slug = 'historia-atualidades-historicas-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'Questões de memória e direitos humanos podem aparecer nesse tema porque:', '["não têm relação com história", "envolvem interpretação do passado e seus efeitos", "pertencem só à matemática", "eliminam análise crítica"]'::jsonb, 1, 'Memória e direitos humanos se relacionam à forma como a sociedade lida com sua história.', 8
from public.contents where slug = 'historia-atualidades-historicas-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'A principal habilidade exigida em atualidades históricas é:', '["ligar presente e passado com senso crítico", "decorar nomes sem contexto", "fazer contas rápidas", "ignorar processos históricos"]'::jsonb, 0, 'A compreensão histórica do presente é o centro do tema.', 9
from public.contents where slug = 'historia-atualidades-historicas-001';
with inserted as (
  insert into public.contents (
    slug, source_id, discipline, topic, name, summary, theory, theory_blocks, key_points, proof_tips, examples, common_errors,
    minimum_plan, required_plan_rank, is_published
  ) values (
    'historia-ditadura-militar-001',
    'historia-ditadura-militar-001',
    'História',
    'Ditadura militar',
    'Ditadura militar',
    'A ditadura militar brasileira durou de 1964 a 1985 e foi marcada por autoritarismo, censura, repressão política, suspensão de direitos e centralização do poder. A VUNESP cobra contexto de instalação do regime, instrumentos de repressão, resistência e redemocratização.',
    'A ditadura militar no Brasil começou com o golpe de 1964, que derrubou o presidente João Goulart. O regime justificava-se com discurso de combate ao comunismo e de defesa da ordem, mas implantou forte autoritarismo.

Durante a ditadura, houve restrição das liberdades políticas, perseguição a opositores, censura à imprensa, repressão a movimentos sociais, cassação de mandatos e controle institucional. O AI-5, decretado em 1968, foi um dos instrumentos mais duros do regime, ampliando o poder do Executivo e intensificando a repressão.

Ao mesmo tempo, o período registrou crescimento econômico em certos momentos, como no chamado milagre econômico, mas também aumento da desigualdade e concentração de renda. O desenvolvimento material coexistiu com violência política e limitação dos direitos civis.

Houve resistência ao regime por parte de estudantes, artistas, intelectuais, trabalhadores e grupos de oposição. Nas décadas finais, a crise econômica e a pressão social fortaleceram o processo de abertura política, que culminou no fim da ditadura e na redemocratização.

A VUNESP costuma cobrar não apenas datas, mas as características do regime, os mecanismos de repressão, a resistência e o caminho até a democracia.',
    '[{"titulo": "Conceito", "texto": "Ditadura militar foi um regime autoritário implantado no Brasil entre 1964 e 1985."}, {"titulo": "Regras", "texto": "Esse regime restringiu direitos, ampliou a repressão e centralizou o poder. O AI-5 é um marco importante da radicalização autoritária."}, {"titulo": "Como cai na prova (VUNESP)", "texto": "A VUNESP cobra golpe de 1964, AI-5, censura, repressão, resistência e redemocratização."}]'::jsonb,
    '["A ditadura começou em 1964.", "O regime restringiu direitos políticos e civis.", "O AI-5 aprofundou o autoritarismo.", "Houve censura e repressão a opositores.", "A abertura política levou à redemocratização."]'::jsonb,
    '["Associe ditadura a autoritarismo, censura e repressão.", "Memorize o AI-5 como marco de endurecimento do regime.", "Lembre que crescimento econômico não eliminou a repressão.", "Pegadinhas clássicas da VUNESP: reduzir o período apenas à economia e ignorar a violência política."]'::jsonb,
    '["O AI-5 ampliou poderes do governo e restringiu liberdades.", "A censura atingiu imprensa, música e artes.", "A redemocratização foi resultado de pressão social e crise do regime."]'::jsonb,
    '["Achar que o período foi apenas de desenvolvimento econômico.", "Esquecer o papel da censura e da repressão.", "Confundir abertura política com democracia imediata."]'::jsonb,
    'basic'::public.plan_slug,
    1,
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
delete from public.flashcards where content_id in (select id from public.contents where slug = 'historia-ditadura-militar-001');
insert into public.flashcards (content_id, question, answer, sort_order)
select id, 'Quando começou a ditadura militar brasileira?', 'Em 1964.', 0
from public.contents where slug = 'historia-ditadura-militar-001';
insert into public.flashcards (content_id, question, answer, sort_order)
select id, 'O que foi o AI-5?', 'Um ato institucional que endureceu fortemente o regime.', 1
from public.contents where slug = 'historia-ditadura-militar-001';
insert into public.flashcards (content_id, question, answer, sort_order)
select id, 'Qual era uma marca do período?', 'Censura e repressão política.', 2
from public.contents where slug = 'historia-ditadura-militar-001';
insert into public.flashcards (content_id, question, answer, sort_order)
select id, 'Houve resistência ao regime?', 'Sim, por diversos setores da sociedade.', 3
from public.contents where slug = 'historia-ditadura-militar-001';
insert into public.flashcards (content_id, question, answer, sort_order)
select id, 'Quando terminou a ditadura?', 'Em 1985, com o processo de redemocratização.', 4
from public.contents where slug = 'historia-ditadura-militar-001';
insert into public.flashcards (content_id, question, answer, sort_order)
select id, 'Como a VUNESP cobra o tema?', 'Relacionando autoritarismo, repressão e abertura política.', 5
from public.contents where slug = 'historia-ditadura-militar-001';
delete from public.questions where content_id in (select id from public.contents where slug = 'historia-ditadura-militar-001');
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'A ditadura militar brasileira teve início em:', '["1930", "1945", "1964", "1988"]'::jsonb, 2, 'O regime militar começou com o golpe de 1964.', 0
from public.contents where slug = 'historia-ditadura-militar-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'Um dos principais traços da ditadura militar foi:', '["plena liberdade de imprensa", "censura e repressão política", "voto direto para todos os cargos desde o início", "fim do poder central"]'::jsonb, 1, 'Censura e repressão foram características marcantes do período.', 1
from public.contents where slug = 'historia-ditadura-militar-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'O AI-5 é lembrado por:', '["ampliar direitos democráticos", "fortalecer o autoritarismo", "abolir a censura", "restaurar a monarquia"]'::jsonb, 1, 'Ele intensificou a repressão e concentrou ainda mais o poder no Executivo.', 2
from public.contents where slug = 'historia-ditadura-militar-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'O chamado milagre econômico ocorreu:', '["sem repressão política", "junto com o regime autoritário", "durante o Império", "na República Velha"]'::jsonb, 1, 'O crescimento econômico em parte do período conviveu com forte repressão política.', 3
from public.contents where slug = 'historia-ditadura-militar-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'A ditadura militar terminou com:', '["a independência", "a redemocratização", "a mineração", "a Proclamação da República"]'::jsonb, 1, 'O fim do regime ocorreu no processo de abertura e redemocratização.', 4
from public.contents where slug = 'historia-ditadura-militar-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'A censura durante a ditadura atingiu:', '["apenas a economia", "somente o Judiciário", "imprensa e manifestações culturais", "somente zonas rurais"]'::jsonb, 2, 'A censura foi ampla, atingindo comunicação e produção cultural.', 5
from public.contents where slug = 'historia-ditadura-militar-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'Uma característica política da ditadura foi:', '["participação democrática plena", "restrição de direitos", "ausência de controle estatal", "fim da centralização"]'::jsonb, 1, 'O regime restringiu direitos civis e políticos.', 6
from public.contents where slug = 'historia-ditadura-militar-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'A resistência à ditadura veio de:', '["nenhum setor da sociedade", "somente militares", "diversos grupos sociais", "apenas empresários"]'::jsonb, 2, 'Estudantes, artistas, trabalhadores e opositores políticos participaram da resistência.', 7
from public.contents where slug = 'historia-ditadura-militar-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'A VUNESP costuma cobrar o período militar com foco em:', '["apenas datas", "autoritarismo, repressão e redemocratização", "somente geografia", "somente literatura"]'::jsonb, 1, 'A banca valoriza a compreensão do funcionamento político do regime.', 8
from public.contents where slug = 'historia-ditadura-militar-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'A abertura política do final do regime foi impulsionada por:', '["crescimento eterno do regime", "pressão social e crise", "retorno ao colonialismo", "fim da economia nacional"]'::jsonb, 1, 'Crise econômica e mobilização social favoreceram o processo de abertura.', 9
from public.contents where slug = 'historia-ditadura-militar-001';
with inserted as (
  insert into public.contents (
    slug, source_id, discipline, topic, name, summary, theory, theory_blocks, key_points, proof_tips, examples, common_errors,
    minimum_plan, required_plan_rank, is_published
  ) values (
    'historia-historia-do-brasil-001',
    'historia-historia-do-brasil-001',
    'História',
    'História do Brasil',
    'História do Brasil',
    'História do Brasil estuda a formação política, social, econômica e cultural do país desde a chegada dos portugueses até os tempos recentes. Em prova, a VUNESP costuma cobrar visão geral de processos históricos, mudanças de regime, construção do Estado brasileiro e permanências sociais, como desigualdade, concentração de renda e conflitos políticos.',
    'A História do Brasil pode ser entendida como um longo processo de formação territorial, econômica, política e social. Desde o período colonial, o território foi organizado segundo interesses da metrópole portuguesa, com exploração de riquezas, uso intenso de mão de obra escravizada e concentração do poder nas elites locais. Esse padrão deixou marcas profundas na sociedade brasileira.

No período colonial, o Brasil foi inicialmente explorado pelo pau-brasil e depois estruturado em torno da produção açucareira, baseada em latifúndio, monocultura e trabalho escravo. Mais tarde, a mineração alterou o eixo econômico e populacional, fortalecendo o interior e aumentando o controle da Coroa sobre a colônia.

A independência, em 1822, não rompeu totalmente com as estruturas anteriores. O Brasil tornou-se um império, mantendo a escravidão por décadas e preservando o poder das elites agrárias. O Primeiro Reinado, o Período Regencial e o Segundo Reinado foram marcados por conflitos, centralização política e tentativas de estabilidade institucional.

A Proclamação da República, em 1889, inaugurou um novo regime, mas também não eliminou os problemas estruturais. A chamada República Velha foi marcada pelo domínio das oligarquias, pelo coronelismo e pela exclusão política de grande parte da população. A industrialização e a urbanização cresceram no século XX, alterando a dinâmica social e econômica do país.

A Era Vargas foi decisiva para a modernização do Estado brasileiro, com centralização do poder, criação de leis trabalhistas e fortalecimento da indústria. Depois, o país passou por experiências democráticas e autoritárias, incluindo a ditadura militar de 1964 a 1985. A redemocratização trouxe nova Constituição, ampliação de direitos e reorganização institucional.

A História do Brasil também deve ser lida pelas permanências: desigualdade social, concentração fundiária, racismo estrutural, exclusão política e conflitos entre projetos de país. A VUNESP gosta de cobrar tanto fatos históricos quanto interpretação dos processos e de seus impactos no presente.

Em resumo, estudar História do Brasil não é decorar datas isoladas, mas compreender como o país se formou, como o poder foi distribuído e por que certos problemas persistem.',
    '[{"titulo": "Conceito", "texto": "História do Brasil é o estudo da formação e transformação da sociedade brasileira ao longo do tempo, considerando política, economia, cultura e relações sociais."}, {"titulo": "Regras", "texto": "É importante organizar o estudo por períodos: Colônia, Império, República e Brasil contemporâneo. Também é essencial relacionar fatos históricos com estruturas de poder e permanências sociais."}, {"titulo": "Como cai na prova (VUNESP)", "texto": "A VUNESP costuma cobrar processos históricos, comparação entre períodos, impacto de acontecimentos e noções de continuidade e mudança na formação do Brasil."}]'::jsonb,
    '["A colonização foi marcada por exploração econômica e trabalho escravo.", "A independência não eliminou as estruturas sociais herdadas da Colônia.", "A República começou com forte domínio das oligarquias.", "O século XX foi marcado por industrialização, centralização e disputas políticas.", "Desigualdade e concentração de poder são permanências históricas importantes."]'::jsonb,
    '["Não estude só datas; entenda os processos históricos.", "Compare mudanças de regime político e seus efeitos sociais.", "Observe permanências históricas, como desigualdade e exclusão.", "Pegadinhas clássicas da VUNESP: confundir ruptura política com mudança social completa."]'::jsonb,
    '["A independência política não acabou com a escravidão.", "A Proclamação da República não significou participação popular ampla.", "A industrialização alterou a economia, mas não eliminou desigualdades."]'::jsonb,
    '["Decorar fatos sem entender o contexto histórico.", "Achar que toda mudança de governo transformou imediatamente a sociedade.", "Ignorar a relação entre passado colonial e problemas atuais."]'::jsonb,
    'basic'::public.plan_slug,
    1,
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
delete from public.flashcards where content_id in (select id from public.contents where slug = 'historia-historia-do-brasil-001');
insert into public.flashcards (content_id, question, answer, sort_order)
select id, 'O que marca a formação histórica do Brasil?', 'Exploração colonial, escravidão, concentração de poder e mudanças políticas graduais.', 0
from public.contents where slug = 'historia-historia-do-brasil-001';
insert into public.flashcards (content_id, question, answer, sort_order)
select id, 'A independência mudou tudo imediatamente?', 'Não. Muitas estruturas sociais e econômicas permaneceram.', 1
from public.contents where slug = 'historia-historia-do-brasil-001';
insert into public.flashcards (content_id, question, answer, sort_order)
select id, 'O que foi a República Velha?', 'Período inicial da República marcado pelo domínio das oligarquias.', 2
from public.contents where slug = 'historia-historia-do-brasil-001';
insert into public.flashcards (content_id, question, answer, sort_order)
select id, 'Qual foi a importância da Era Vargas?', 'Modernização do Estado, centralização política e legislação trabalhista.', 3
from public.contents where slug = 'historia-historia-do-brasil-001';
insert into public.flashcards (content_id, question, answer, sort_order)
select id, 'Que tema permanente aparece muito na História do Brasil?', 'A desigualdade social.', 4
from public.contents where slug = 'historia-historia-do-brasil-001';
insert into public.flashcards (content_id, question, answer, sort_order)
select id, 'Como a VUNESP costuma cobrar o tema?', 'Relacionando fatos a processos e consequências históricas.', 5
from public.contents where slug = 'historia-historia-do-brasil-001';
delete from public.questions where content_id in (select id from public.contents where slug = 'historia-historia-do-brasil-001');
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'Um dos traços mais marcantes da colonização brasileira foi:', '["industrialização precoce", "latifúndio e escravidão", "reforma agrária ampla", "democracia popular"]'::jsonb, 1, 'A colonização portuguesa no Brasil foi fortemente marcada pela grande propriedade rural e pelo trabalho escravo.', 0
from public.contents where slug = 'historia-historia-do-brasil-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'A independência do Brasil, em 1822:', '["acabou de imediato com a escravidão", "rompeu totalmente com as elites agrárias", "manteve várias estruturas anteriores", "instalou a república"]'::jsonb, 2, 'Apesar da independência política, o Brasil preservou estruturas sociais e econômicas herdadas do período colonial.', 1
from public.contents where slug = 'historia-historia-do-brasil-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'A República Velha foi marcada principalmente por:', '["participação popular ampla", "governo direto militar permanente", "domínio oligárquico", "fim da desigualdade regional"]'::jsonb, 2, 'Esse período foi caracterizado pelo poder das oligarquias regionais e pelo coronelismo.', 2
from public.contents where slug = 'historia-historia-do-brasil-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'A Era Vargas foi importante porque:', '["acabou com toda centralização", "enfraqueceu o Estado", "modernizou o aparelho estatal", "eliminou os conflitos sociais"]'::jsonb, 2, 'O governo Vargas fortaleceu o Estado, incentivou a industrialização e criou legislação trabalhista.', 3
from public.contents where slug = 'historia-historia-do-brasil-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'A redemocratização brasileira ocorreu após:', '["o fim do Império", "a Era Vargas", "a ditadura militar", "o período colonial"]'::jsonb, 2, 'A redemocratização foi o processo político ocorrido após o fim do regime militar.', 4
from public.contents where slug = 'historia-historia-do-brasil-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'Uma permanência histórica importante no Brasil é:', '["igualdade plena desde a Colônia", "ausência de conflitos políticos", "desigualdade social", "fim da concentração fundiária"]'::jsonb, 2, 'A desigualdade social atravessa diferentes períodos da História do Brasil.', 5
from public.contents where slug = 'historia-historia-do-brasil-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'A Proclamação da República ocorreu em:', '["1808", "1822", "1888", "1889"]'::jsonb, 3, 'A República foi proclamada em 1889.', 6
from public.contents where slug = 'historia-historia-do-brasil-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'A escravidão no Brasil foi abolida em:', '["1822", "1888", "1889", "1930"]'::jsonb, 1, 'A Lei Áurea foi assinada em 1888.', 7
from public.contents where slug = 'historia-historia-do-brasil-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'Na História do Brasil, estudar processos históricos significa:', '["decorar só nomes", "analisar mudanças e permanências", "ignorar contexto", "estudar apenas guerras"]'::jsonb, 1, 'A compreensão histórica exige observar transformações e continuidades ao longo do tempo.', 8
from public.contents where slug = 'historia-historia-do-brasil-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'A VUNESP costuma cobrar História do Brasil com foco em:', '["datas isoladas apenas", "processos e impactos históricos", "mitologia", "somente geografia física"]'::jsonb, 1, 'A banca valoriza a compreensão dos processos e suas consequências.', 9
from public.contents where slug = 'historia-historia-do-brasil-001';
with inserted as (
  insert into public.contents (
    slug, source_id, discipline, topic, name, summary, theory, theory_blocks, key_points, proof_tips, examples, common_errors,
    minimum_plan, required_plan_rank, is_published
  ) values (
    'historia-periodo-colonial-001',
    'historia-periodo-colonial-001',
    'História',
    'Período colonial',
    'Período colonial',
    'O período colonial brasileiro foi marcado pela dominação portuguesa, exploração econômica, grande propriedade rural, monocultura e trabalho escravo. A VUNESP cobra a lógica da colonização, os ciclos econômicos, a administração colonial e os efeitos sociais do modelo implantado.',
    'O período colonial brasileiro começou oficialmente em 1500, com a chegada dos portugueses, e se desenvolveu com base no interesse econômico da metrópole. Portugal buscava explorar recursos, ocupar o território e integrar a colônia ao sistema mercantilista europeu.

Nos primeiros tempos, destacou-se a extração do pau-brasil, feita com participação indígena, muitas vezes por escambo. Depois, a Coroa portuguesa estruturou a colonização com capitanias hereditárias e governo-geral, tentando garantir ocupação e produção econômica.

A economia açucareira tornou-se o grande eixo do período colonial, principalmente no Nordeste. Ela se baseava em latifúndio, monocultura e trabalho escravo africano. Esse modelo favoreceu concentração de renda e poder nas mãos dos senhores de engenho.

Mais tarde, a mineração, especialmente no século XVIII, deslocou o centro econômico para a região das Minas Gerais, incentivando urbanização, circulação de riqueza e maior controle da Coroa, que cobrava impostos como o quinto.

O período colonial também foi marcado por resistência indígena, quilombos, revoltas locais e tensões entre colonos e metrópole. A sociedade era profundamente hierarquizada, escravista e desigual.

A VUNESP costuma cobrar a estrutura econômica da colônia, a função da escravidão, a administração portuguesa e os impactos da mineração e do açúcar na formação do Brasil.',
    '[{"titulo": "Conceito", "texto": "Período colonial é a fase em que o Brasil esteve sob domínio político e econômico de Portugal."}, {"titulo": "Regras", "texto": "A economia colonial se organizou segundo interesses da metrópole, dentro da lógica mercantilista. Açúcar e mineração foram os principais ciclos econômicos."}, {"titulo": "Como cai na prova (VUNESP)", "texto": "A VUNESP cobra ciclos econômicos, escravidão, administração colonial, exploração metropolitana e características da sociedade colonial."}]'::jsonb,
    '["O Brasil colonial foi organizado para atender interesses de Portugal.", "A economia açucareira usou latifúndio e mão de obra escrava.", "A mineração fortaleceu o interior e o controle da Coroa.", "A sociedade colonial era desigual e hierarquizada.", "Houve resistência de indígenas, escravizados e colonos."]'::jsonb,
    '["Associe açúcar ao Nordeste e mineração ao século XVIII.", "Lembre que o trabalho escravo foi central na economia colonial.", "Entenda o mercantilismo como lógica da colonização.", "Pegadinhas clássicas da VUNESP: tratar a colônia como economia autônoma."]'::jsonb,
    '["O engenho era a unidade central da produção açucareira.", "O quinto era um imposto cobrado sobre o ouro.", "Os quilombos representaram resistência ao sistema escravista."]'::jsonb,
    '["Achar que a colônia existia para benefício interno da população local.", "Esquecer a relação entre escravidão e produção econômica.", "Confundir pau-brasil, açúcar e mineração como se fossem simultâneos com a mesma força."]'::jsonb,
    'basic'::public.plan_slug,
    1,
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
delete from public.flashcards where content_id in (select id from public.contents where slug = 'historia-periodo-colonial-001');
insert into public.flashcards (content_id, question, answer, sort_order)
select id, 'Qual era a lógica da colonização portuguesa?', 'Exploração econômica e controle do território.', 0
from public.contents where slug = 'historia-periodo-colonial-001';
insert into public.flashcards (content_id, question, answer, sort_order)
select id, 'Qual o principal modelo econômico do açúcar?', 'Latifúndio, monocultura e escravidão.', 1
from public.contents where slug = 'historia-periodo-colonial-001';
insert into public.flashcards (content_id, question, answer, sort_order)
select id, 'O que foi o quinto?', 'Imposto cobrado pela Coroa sobre o ouro.', 2
from public.contents where slug = 'historia-periodo-colonial-001';
insert into public.flashcards (content_id, question, answer, sort_order)
select id, 'O que eram quilombos?', 'Comunidades formadas, em grande parte, por escravizados fugidos.', 3
from public.contents where slug = 'historia-periodo-colonial-001';
insert into public.flashcards (content_id, question, answer, sort_order)
select id, 'Qual região se destacou na mineração?', 'Minas Gerais.', 4
from public.contents where slug = 'historia-periodo-colonial-001';
insert into public.flashcards (content_id, question, answer, sort_order)
select id, 'Como a VUNESP cobra o período colonial?', 'Por meio da estrutura econômica e social da colônia.', 5
from public.contents where slug = 'historia-periodo-colonial-001';
delete from public.questions where content_id in (select id from public.contents where slug = 'historia-periodo-colonial-001');
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'A economia açucareira no Brasil colonial baseava-se principalmente em:', '["minifúndio e trabalho livre", "latifúndio, monocultura e escravidão", "comércio industrial urbano", "pequena propriedade familiar"]'::jsonb, 1, 'Esse foi o tripé básico da produção açucareira colonial.', 0
from public.contents where slug = 'historia-periodo-colonial-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'O principal interesse de Portugal na colônia era:', '["implantar democracia local", "exploração econômica", "industrializar o território", "garantir igualdade social"]'::jsonb, 1, 'O objetivo central era explorar economicamente o território dentro da lógica mercantilista.', 1
from public.contents where slug = 'historia-periodo-colonial-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'O quinto estava relacionado à:', '["produção de açúcar", "mineração", "pecuária", "extração de borracha"]'::jsonb, 1, 'Era imposto sobre a produção aurífera.', 2
from public.contents where slug = 'historia-periodo-colonial-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'A unidade produtiva central da economia açucareira era:', '["a fábrica", "o engenho", "a mina", "o quilombo"]'::jsonb, 1, 'O engenho reunia estrutura agrícola e industrial de produção do açúcar.', 3
from public.contents where slug = 'historia-periodo-colonial-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'Um traço da sociedade colonial brasileira foi:', '["igualdade social ampla", "hierarquia social intensa", "predomínio do trabalho assalariado", "ausência de conflitos"]'::jsonb, 1, 'A sociedade colonial era extremamente desigual e hierarquizada.', 4
from public.contents where slug = 'historia-periodo-colonial-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'A mineração no século XVIII contribuiu para:', '["esvaziar o interior", "aumentar o controle metropolitano", "enfraquecer a Coroa", "abolir a escravidão"]'::jsonb, 1, 'A riqueza mineral levou a Coroa a ampliar fiscalização e cobrança de impostos.', 5
from public.contents where slug = 'historia-periodo-colonial-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'Os quilombos podem ser entendidos como:', '["apoio ao sistema colonial", "forma de resistência", "centros administrativos da Coroa", "zonas de mineração oficial"]'::jsonb, 1, 'Foram espaços importantes de resistência ao sistema escravista.', 6
from public.contents where slug = 'historia-periodo-colonial-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'O pau-brasil teve destaque principalmente:', '["no início da colonização", "no auge da mineração", "na República", "na industrialização paulista"]'::jsonb, 0, 'Foi a primeira atividade econômica relevante do período colonial.', 7
from public.contents where slug = 'historia-periodo-colonial-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'O mercantilismo se relaciona ao período colonial porque:', '["proibia o comércio externo", "orientava a exploração da colônia em favor da metrópole", "defendia autonomia total da colônia", "acabou com os impostos"]'::jsonb, 1, 'A colônia integrava o sistema mercantilista, produzindo riqueza para a metrópole.', 8
from public.contents where slug = 'historia-periodo-colonial-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'A VUNESP costuma cobrar o período colonial com foco em:', '["apenas datas", "estrutura econômica e social", "somente literatura", "somente geografia física"]'::jsonb, 1, 'A banca valoriza a compreensão do funcionamento da colônia.', 9
from public.contents where slug = 'historia-periodo-colonial-001';
with inserted as (
  insert into public.contents (
    slug, source_id, discipline, topic, name, summary, theory, theory_blocks, key_points, proof_tips, examples, common_errors,
    minimum_plan, required_plan_rank, is_published
  ) values (
    'historia-republica-001',
    'historia-republica-001',
    'História',
    'República',
    'República',
    'A República no Brasil começou em 1889 e passou por diferentes fases, como República Velha, Era Vargas, período democrático, ditadura militar e Nova República. A VUNESP cobra características políticas, disputas de poder, participação social e transformações institucionais.',
    'A República foi proclamada em 1889, encerrando o período monárquico e inaugurando um novo regime político. No entanto, a mudança não significou democratização imediata. A chamada República Velha foi controlada por oligarquias regionais, especialmente de São Paulo e Minas Gerais, com forte presença do coronelismo e do voto de cabresto.

Em 1930, a Revolução de 1930 colocou Getúlio Vargas no poder, rompendo com a lógica oligárquica anterior. A Era Vargas teve diferentes fases e foi marcada pela centralização política, pelo nacionalismo econômico e pela ampliação da legislação trabalhista.

Depois de 1945, o Brasil viveu um período democrático com intensa disputa política, até o golpe de 1964, que levou à ditadura militar. Com o fim do regime, o país entrou na Nova República, marcada pela redemocratização e pela Constituição de 1988.

A História da República brasileira revela tensões entre autoritarismo e democracia, centralização e participação popular, modernização econômica e desigualdade social. A VUNESP costuma cobrar essas transições e as características principais de cada fase republicana.',
    '[{"titulo": "Conceito", "texto": "República é a forma de governo adotada pelo Brasil desde 1889, com diferentes fases e mudanças institucionais."}, {"titulo": "Regras", "texto": "É importante dividir o estudo em fases: República Velha, Era Vargas, período democrático, ditadura militar e Nova República."}, {"titulo": "Como cai na prova (VUNESP)", "texto": "A VUNESP cobra características de cada fase da República, participação política, autoritarismo, redemocratização e papel do Estado."}]'::jsonb,
    '["A República começou em 1889.", "A República Velha foi dominada por oligarquias.", "A Era Vargas centralizou o poder e fortaleceu o Estado.", "A ditadura militar interrompeu a democracia.", "A Nova República consolidou a redemocratização."]'::jsonb,
    '["Associe cada fase republicana a suas características centrais.", "Observe a relação entre poder político e participação popular.", "Compare momentos democráticos e autoritários.", "Pegadinhas clássicas da VUNESP: confundir República com democracia plena desde o início."]'::jsonb,
    '["Na República Velha, o voto era controlado por elites regionais.", "Na Era Vargas, o Estado ganhou mais força.", "Na Nova República, a Constituição de 1988 ampliou direitos."]'::jsonb,
    '["Achar que a Proclamação da República trouxe imediatamente participação popular ampla.", "Confundir Era Vargas com um período único sem fases distintas.", "Misturar redemocratização com o regime militar."]'::jsonb,
    'basic'::public.plan_slug,
    1,
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
delete from public.flashcards where content_id in (select id from public.contents where slug = 'historia-republica-001');
insert into public.flashcards (content_id, question, answer, sort_order)
select id, 'Quando começou a República no Brasil?', 'Em 1889.', 0
from public.contents where slug = 'historia-republica-001';
insert into public.flashcards (content_id, question, answer, sort_order)
select id, 'O que marcou a República Velha?', 'O domínio das oligarquias e o coronelismo.', 1
from public.contents where slug = 'historia-republica-001';
insert into public.flashcards (content_id, question, answer, sort_order)
select id, 'Quem liderou a fase iniciada em 1930?', 'Getúlio Vargas.', 2
from public.contents where slug = 'historia-republica-001';
insert into public.flashcards (content_id, question, answer, sort_order)
select id, 'Qual documento marcou a Nova República?', 'A Constituição de 1988.', 3
from public.contents where slug = 'historia-republica-001';
insert into public.flashcards (content_id, question, answer, sort_order)
select id, 'Qual foi um período autoritário da República?', 'A ditadura militar.', 4
from public.contents where slug = 'historia-republica-001';
insert into public.flashcards (content_id, question, answer, sort_order)
select id, 'Como a VUNESP cobra a República?', 'Por fases, características e mudanças políticas.', 5
from public.contents where slug = 'historia-republica-001';
delete from public.questions where content_id in (select id from public.contents where slug = 'historia-republica-001');
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'A República foi proclamada no Brasil em:', '["1822", "1888", "1889", "1930"]'::jsonb, 2, 'A Proclamação da República ocorreu em 1889.', 0
from public.contents where slug = 'historia-republica-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'A República Velha foi marcada por:', '["democracia popular ampla", "domínio oligárquico", "fim das elites regionais", "industrialização total do país"]'::jsonb, 1, 'As oligarquias controlavam o sistema político nesse período.', 1
from public.contents where slug = 'historia-republica-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'A Era Vargas teve como característica importante:', '["enfraquecimento do Estado", "centralização política", "fim de toda legislação trabalhista", "redução do papel do governo"]'::jsonb, 1, 'O governo Vargas fortaleceu o Estado e centralizou decisões.', 2
from public.contents where slug = 'historia-republica-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'A Nova República está associada à:', '["Proclamação da República", "redemocratização", "República Velha", "mineração colonial"]'::jsonb, 1, 'A Nova República corresponde ao período após o fim da ditadura militar.', 3
from public.contents where slug = 'historia-republica-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'Um instrumento marcante da Nova República foi:', '["Constituição de 1988", "AI-5", "Poder Moderador", "Capitanias hereditárias"]'::jsonb, 0, 'A Constituição de 1988 é marco central da redemocratização.', 4
from public.contents where slug = 'historia-republica-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'O coronelismo foi uma prática política ligada principalmente à:', '["Colônia", "República Velha", "Nova República", "Ditadura militar"]'::jsonb, 1, 'O coronelismo era típico do domínio oligárquico da República Velha.', 5
from public.contents where slug = 'historia-republica-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'A ditadura militar pertence a qual fase da história republicana?', '["autoritarismo republicano", "período colonial", "Império", "regência"]'::jsonb, 0, 'Foi uma fase autoritária da República brasileira.', 6
from public.contents where slug = 'historia-republica-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'Uma tensão constante na história republicana do Brasil foi entre:', '["democracia e autoritarismo", "monarquia e feudalismo", "escravidão e mineração apenas", "capitanias e regências"]'::jsonb, 0, 'A história republicana alternou períodos mais abertos e mais autoritários.', 7
from public.contents where slug = 'historia-republica-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'A Revolução de 1930 teve como efeito principal:', '["restauração da monarquia", "fim da República", "mudança no controle político do país", "abolição da escravidão"]'::jsonb, 2, 'Ela rompeu com a lógica oligárquica anterior e levou Vargas ao poder.', 8
from public.contents where slug = 'historia-republica-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'A VUNESP costuma cobrar a República com foco em:', '["apenas nomes de presidentes", "fases, características e transformações políticas", "mitologia nacional", "somente economia colonial"]'::jsonb, 1, 'A banca prefere abordagem estrutural e comparativa entre fases.', 9
from public.contents where slug = 'historia-republica-001';
with inserted as (
  insert into public.contents (
    slug, source_id, discipline, topic, name, summary, theory, theory_blocks, key_points, proof_tips, examples, common_errors,
    minimum_plan, required_plan_rank, is_published
  ) values (
    'informatica-e-mail-001',
    'informatica-e-mail-001',
    'Informática',
    'E-mail',
    'E-mail',
    'E-mail é o correio eletrônico usado para enviar e receber mensagens pela internet. A VUNESP cobra composição de mensagens, destinatários, CC, CCO, anexos, assunto, resposta, encaminhamento e boas práticas de segurança.',
    'E-mail é um serviço de comunicação eletrônica. Os principais campos são destinatário, assunto, corpo da mensagem, anexo, CC e CCO. CC mostra os copiados; CCO oculta.

Responder, responder a todos e encaminhar têm funções diferentes. Anexos são arquivos enviados junto com a mensagem.

A VUNESP gosta de cobrar uso prático do e-mail, diferença entre campos e cuidados com links e anexos suspeitos.',
    '[{"titulo": "Conceito", "texto": "E-mail é tema importante do edital e deve ser compreendido de forma prática e objetiva."}, {"titulo": "Regras", "texto": "É preciso conhecer conceitos básicos, funções principais e aplicação prática do conteúdo."}, {"titulo": "Como cai na prova (VUNESP)", "texto": "A VUNESP costuma cobrar definições, uso prático, interpretação de situações e identificação de comandos ou regras."}]'::jsonb,
    '["E-mail aparece com frequência em prova.", "O uso prático do tema é muito valorizado.", "A banca gosta de conceitos objetivos e aplicação.", "Diferenças entre funções ou institutos geram pegadinhas.", "Treinar leitura atenta ajuda a evitar erros bobos."]'::jsonb,
    '["Associe conceito e função prática.", "Revise palavras-chave e diferenças centrais do tema.", "Treine identificar a alternativa mais objetiva e literal.", "Pegadinhas clássicas da VUNESP: confundir conceitos parecidos ou funções próximas."]'::jsonb,
    '["Exemplo de aplicação prática de E-mail em contexto de prova.", "A banca costuma transformar o conceito em situação objetiva.", "A leitura atenta do enunciado faz diferença."]'::jsonb,
    '["Decorar sem entender o uso prático.", "Confundir conceitos parecidos.", "Marcar alternativa por associação apressada."]'::jsonb,
    'basic'::public.plan_slug,
    1,
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
delete from public.flashcards where content_id in (select id from public.contents where slug = 'informatica-e-mail-001');
insert into public.flashcards (content_id, question, answer, sort_order)
select id, 'O que é E-mail?', 'É um conteúdo relevante do edital que deve ser entendido de forma prática e conceitual.', 0
from public.contents where slug = 'informatica-e-mail-001';
insert into public.flashcards (content_id, question, answer, sort_order)
select id, 'Como a VUNESP costuma cobrar esse tema?', 'Por definições, aplicação prática e interpretação objetiva.', 1
from public.contents where slug = 'informatica-e-mail-001';
insert into public.flashcards (content_id, question, answer, sort_order)
select id, 'Qual cuidado principal?', 'Não confundir conceitos ou funções parecidas.', 2
from public.contents where slug = 'informatica-e-mail-001';
insert into public.flashcards (content_id, question, answer, sort_order)
select id, 'A leitura do enunciado importa?', 'Sim, muito.', 3
from public.contents where slug = 'informatica-e-mail-001';
insert into public.flashcards (content_id, question, answer, sort_order)
select id, 'O tema pode render ponto fácil?', 'Sim, com estudo direcionado.', 4
from public.contents where slug = 'informatica-e-mail-001';
insert into public.flashcards (content_id, question, answer, sort_order)
select id, 'O que mais ajuda a acertar?', 'Entender conceito e função prática ao mesmo tempo.', 5
from public.contents where slug = 'informatica-e-mail-001';
delete from public.questions where content_id in (select id from public.contents where slug = 'informatica-e-mail-001');
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'E-mail é tema que a VUNESP costuma cobrar por meio de:', '["conceito e aplicação prática", "somente cálculos avançados", "somente literatura", "assuntos sem relação com o edital"]'::jsonb, 0, 'A banca costuma preferir cobrança objetiva e aplicada.', 0
from public.contents where slug = 'informatica-e-mail-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'Uma boa estratégia para esse tema é:', '["decorar sem contexto", "entender conceito e função prática", "ignorar diferenças entre institutos", "chutar rapidamente"]'::jsonb, 1, 'Entender conceito e uso prático é a melhor estratégia.', 1
from public.contents where slug = 'informatica-e-mail-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'Uma pegadinha comum da VUNESP é:', '["confundir conceitos parecidos", "usar apenas textos poéticos", "cobrar física quântica", "ignorar o edital"]'::jsonb, 0, 'A banca costuma explorar diferenças sutis entre conceitos próximos.', 2
from public.contents where slug = 'informatica-e-mail-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'O estudo do tema deve priorizar:', '["aplicação prática e leitura objetiva", "somente memorização cega", "apenas opinião pessoal", "nenhuma revisão"]'::jsonb, 0, 'Esse tipo de conteúdo rende mais quando estudado com foco prático.', 3
from public.contents where slug = 'informatica-e-mail-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'Um erro comum é:', '["comparar conceitos", "prestar atenção ao enunciado", "decorar sem compreender", "revisar palavras-chave"]'::jsonb, 2, 'A compreensão é essencial para evitar erros fáceis.', 4
from public.contents where slug = 'informatica-e-mail-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'A VUNESP valoriza, nesse tema:', '["objetividade e interpretação", "respostas ideológicas", "respostas vagas", "falta de precisão"]'::jsonb, 0, 'A banca costuma preferir formulações claras e objetivas.', 5
from public.contents where slug = 'informatica-e-mail-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'Ao estudar, o candidato deve:', '["ignorar exemplos", "relacionar teoria e prática", "descartar conceitos básicos", "evitar revisão"]'::jsonb, 1, 'Essa relação ajuda a consolidar o conteúdo.', 6
from public.contents where slug = 'informatica-e-mail-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'A principal habilidade exigida é:', '["entendimento conceitual com aplicação", "cálculo integral", "edição de vídeo", "programação avançada"]'::jsonb, 0, 'É isso que mais aparece em questões desse perfil.', 7
from public.contents where slug = 'informatica-e-mail-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'Um tema estratégico costuma ser aquele que:', '["aparece bastante e tem cobrança objetiva", "não cai nunca", "depende só de sorte", "não permite estudo"]'::jsonb, 0, 'Temas recorrentes e objetivos são estratégicos para pontuar.', 8
from public.contents where slug = 'informatica-e-mail-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'A leitura atenta do enunciado é importante porque:', '["a banca usa diferenças sutis", "não faz diferença", "substitui o estudo", "elimina todo conteúdo"]'::jsonb, 0, 'Muitas alternativas erradas parecem corretas à primeira vista.', 9
from public.contents where slug = 'informatica-e-mail-001';
with inserted as (
  insert into public.contents (
    slug, source_id, discipline, topic, name, summary, theory, theory_blocks, key_points, proof_tips, examples, common_errors,
    minimum_plan, required_plan_rank, is_published
  ) values (
    'informatica-excel-001',
    'informatica-excel-001',
    'Informática',
    'Excel',
    'Excel',
    'Excel é o editor de planilhas da Microsoft e um dos temas mais estratégicos em informática. A VUNESP cobra estrutura de planilhas, células, linhas, colunas, fórmulas, funções básicas, preenchimento automático, classificação, filtros e referências simples.',
    'Excel é um programa de planilhas eletrônicas usado para organizar dados, realizar cálculos e gerar gráficos. A planilha é formada por linhas e colunas; o encontro entre linha e coluna forma a célula, como A1 ou B3.

Fórmulas começam com o sinal de igual. Entre as funções mais cobradas estão SOMA, MÉDIA, MÁXIMO e MÍNIMO. A VUNESP cobra muito interpretação de fórmulas, intervalos, preenchimento automático, classificação, filtros e noções básicas de gráficos.

O segredo é entender a lógica da planilha: onde os dados estão, o que a fórmula faz e como o Excel responde aos comandos.',
    '[{"titulo": "Conceito", "texto": "Excel é tema importante do edital e deve ser compreendido de forma prática e objetiva."}, {"titulo": "Regras", "texto": "É preciso conhecer conceitos básicos, funções principais e aplicação prática do conteúdo."}, {"titulo": "Como cai na prova (VUNESP)", "texto": "A VUNESP costuma cobrar definições, uso prático, interpretação de situações e identificação de comandos ou regras."}]'::jsonb,
    '["Excel aparece com frequência em prova.", "O uso prático do tema é muito valorizado.", "A banca gosta de conceitos objetivos e aplicação.", "Diferenças entre funções ou institutos geram pegadinhas.", "Treinar leitura atenta ajuda a evitar erros bobos."]'::jsonb,
    '["Associe conceito e função prática.", "Revise palavras-chave e diferenças centrais do tema.", "Treine identificar a alternativa mais objetiva e literal.", "Pegadinhas clássicas da VUNESP: confundir conceitos parecidos ou funções próximas."]'::jsonb,
    '["Exemplo de aplicação prática de Excel em contexto de prova.", "A banca costuma transformar o conceito em situação objetiva.", "A leitura atenta do enunciado faz diferença."]'::jsonb,
    '["Decorar sem entender o uso prático.", "Confundir conceitos parecidos.", "Marcar alternativa por associação apressada."]'::jsonb,
    'basic'::public.plan_slug,
    1,
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
delete from public.flashcards where content_id in (select id from public.contents where slug = 'informatica-excel-001');
insert into public.flashcards (content_id, question, answer, sort_order)
select id, 'O que é Excel?', 'É um conteúdo relevante do edital que deve ser entendido de forma prática e conceitual.', 0
from public.contents where slug = 'informatica-excel-001';
insert into public.flashcards (content_id, question, answer, sort_order)
select id, 'Como a VUNESP costuma cobrar esse tema?', 'Por definições, aplicação prática e interpretação objetiva.', 1
from public.contents where slug = 'informatica-excel-001';
insert into public.flashcards (content_id, question, answer, sort_order)
select id, 'Qual cuidado principal?', 'Não confundir conceitos ou funções parecidas.', 2
from public.contents where slug = 'informatica-excel-001';
insert into public.flashcards (content_id, question, answer, sort_order)
select id, 'A leitura do enunciado importa?', 'Sim, muito.', 3
from public.contents where slug = 'informatica-excel-001';
insert into public.flashcards (content_id, question, answer, sort_order)
select id, 'O tema pode render ponto fácil?', 'Sim, com estudo direcionado.', 4
from public.contents where slug = 'informatica-excel-001';
insert into public.flashcards (content_id, question, answer, sort_order)
select id, 'O que mais ajuda a acertar?', 'Entender conceito e função prática ao mesmo tempo.', 5
from public.contents where slug = 'informatica-excel-001';
delete from public.questions where content_id in (select id from public.contents where slug = 'informatica-excel-001');
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'Excel é tema que a VUNESP costuma cobrar por meio de:', '["conceito e aplicação prática", "somente cálculos avançados", "somente literatura", "assuntos sem relação com o edital"]'::jsonb, 0, 'A banca costuma preferir cobrança objetiva e aplicada.', 0
from public.contents where slug = 'informatica-excel-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'Uma boa estratégia para esse tema é:', '["decorar sem contexto", "entender conceito e função prática", "ignorar diferenças entre institutos", "chutar rapidamente"]'::jsonb, 1, 'Entender conceito e uso prático é a melhor estratégia.', 1
from public.contents where slug = 'informatica-excel-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'Uma pegadinha comum da VUNESP é:', '["confundir conceitos parecidos", "usar apenas textos poéticos", "cobrar física quântica", "ignorar o edital"]'::jsonb, 0, 'A banca costuma explorar diferenças sutis entre conceitos próximos.', 2
from public.contents where slug = 'informatica-excel-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'O estudo do tema deve priorizar:', '["aplicação prática e leitura objetiva", "somente memorização cega", "apenas opinião pessoal", "nenhuma revisão"]'::jsonb, 0, 'Esse tipo de conteúdo rende mais quando estudado com foco prático.', 3
from public.contents where slug = 'informatica-excel-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'Um erro comum é:', '["comparar conceitos", "prestar atenção ao enunciado", "decorar sem compreender", "revisar palavras-chave"]'::jsonb, 2, 'A compreensão é essencial para evitar erros fáceis.', 4
from public.contents where slug = 'informatica-excel-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'A VUNESP valoriza, nesse tema:', '["objetividade e interpretação", "respostas ideológicas", "respostas vagas", "falta de precisão"]'::jsonb, 0, 'A banca costuma preferir formulações claras e objetivas.', 5
from public.contents where slug = 'informatica-excel-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'Ao estudar, o candidato deve:', '["ignorar exemplos", "relacionar teoria e prática", "descartar conceitos básicos", "evitar revisão"]'::jsonb, 1, 'Essa relação ajuda a consolidar o conteúdo.', 6
from public.contents where slug = 'informatica-excel-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'A principal habilidade exigida é:', '["entendimento conceitual com aplicação", "cálculo integral", "edição de vídeo", "programação avançada"]'::jsonb, 0, 'É isso que mais aparece em questões desse perfil.', 7
from public.contents where slug = 'informatica-excel-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'Um tema estratégico costuma ser aquele que:', '["aparece bastante e tem cobrança objetiva", "não cai nunca", "depende só de sorte", "não permite estudo"]'::jsonb, 0, 'Temas recorrentes e objetivos são estratégicos para pontuar.', 8
from public.contents where slug = 'informatica-excel-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'A leitura atenta do enunciado é importante porque:', '["a banca usa diferenças sutis", "não faz diferença", "substitui o estudo", "elimina todo conteúdo"]'::jsonb, 0, 'Muitas alternativas erradas parecem corretas à primeira vista.', 9
from public.contents where slug = 'informatica-excel-001';
with inserted as (
  insert into public.contents (
    slug, source_id, discipline, topic, name, summary, theory, theory_blocks, key_points, proof_tips, examples, common_errors,
    minimum_plan, required_plan_rank, is_published
  ) values (
    'informatica-google-docs-drive-001',
    'informatica-google-docs-drive-001',
    'Informática',
    'Google Docs / Drive',
    'Google Docs / Drive',
    'Google Docs é um editor de documentos online, e Google Drive é um serviço de armazenamento em nuvem. A VUNESP pode cobrar conceitos de nuvem, compartilhamento, edição colaborativa, armazenamento e diferenças entre arquivo local e arquivo online.',
    'Google Drive é uma plataforma de armazenamento em nuvem. Google Docs é o editor de textos online integrado a esse ecossistema.

Uma das principais características dessas ferramentas é a colaboração em tempo real. Os arquivos podem ser compartilhados com permissões diferentes, como visualizar, comentar e editar.

A VUNESP pode cobrar nuvem, compartilhamento, permissões e diferença entre armazenamento local e online.',
    '[{"titulo": "Conceito", "texto": "Google Docs / Drive é tema importante do edital e deve ser compreendido de forma prática e objetiva."}, {"titulo": "Regras", "texto": "É preciso conhecer conceitos básicos, funções principais e aplicação prática do conteúdo."}, {"titulo": "Como cai na prova (VUNESP)", "texto": "A VUNESP costuma cobrar definições, uso prático, interpretação de situações e identificação de comandos ou regras."}]'::jsonb,
    '["Google Docs / Drive aparece com frequência em prova.", "O uso prático do tema é muito valorizado.", "A banca gosta de conceitos objetivos e aplicação.", "Diferenças entre funções ou institutos geram pegadinhas.", "Treinar leitura atenta ajuda a evitar erros bobos."]'::jsonb,
    '["Associe conceito e função prática.", "Revise palavras-chave e diferenças centrais do tema.", "Treine identificar a alternativa mais objetiva e literal.", "Pegadinhas clássicas da VUNESP: confundir conceitos parecidos ou funções próximas."]'::jsonb,
    '["Exemplo de aplicação prática de Google Docs / Drive em contexto de prova.", "A banca costuma transformar o conceito em situação objetiva.", "A leitura atenta do enunciado faz diferença."]'::jsonb,
    '["Decorar sem entender o uso prático.", "Confundir conceitos parecidos.", "Marcar alternativa por associação apressada."]'::jsonb,
    'basic'::public.plan_slug,
    1,
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
delete from public.flashcards where content_id in (select id from public.contents where slug = 'informatica-google-docs-drive-001');
insert into public.flashcards (content_id, question, answer, sort_order)
select id, 'O que é Google Docs / Drive?', 'É um conteúdo relevante do edital que deve ser entendido de forma prática e conceitual.', 0
from public.contents where slug = 'informatica-google-docs-drive-001';
insert into public.flashcards (content_id, question, answer, sort_order)
select id, 'Como a VUNESP costuma cobrar esse tema?', 'Por definições, aplicação prática e interpretação objetiva.', 1
from public.contents where slug = 'informatica-google-docs-drive-001';
insert into public.flashcards (content_id, question, answer, sort_order)
select id, 'Qual cuidado principal?', 'Não confundir conceitos ou funções parecidas.', 2
from public.contents where slug = 'informatica-google-docs-drive-001';
insert into public.flashcards (content_id, question, answer, sort_order)
select id, 'A leitura do enunciado importa?', 'Sim, muito.', 3
from public.contents where slug = 'informatica-google-docs-drive-001';
insert into public.flashcards (content_id, question, answer, sort_order)
select id, 'O tema pode render ponto fácil?', 'Sim, com estudo direcionado.', 4
from public.contents where slug = 'informatica-google-docs-drive-001';
insert into public.flashcards (content_id, question, answer, sort_order)
select id, 'O que mais ajuda a acertar?', 'Entender conceito e função prática ao mesmo tempo.', 5
from public.contents where slug = 'informatica-google-docs-drive-001';
delete from public.questions where content_id in (select id from public.contents where slug = 'informatica-google-docs-drive-001');
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'Google Docs / Drive é tema que a VUNESP costuma cobrar por meio de:', '["conceito e aplicação prática", "somente cálculos avançados", "somente literatura", "assuntos sem relação com o edital"]'::jsonb, 0, 'A banca costuma preferir cobrança objetiva e aplicada.', 0
from public.contents where slug = 'informatica-google-docs-drive-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'Uma boa estratégia para esse tema é:', '["decorar sem contexto", "entender conceito e função prática", "ignorar diferenças entre institutos", "chutar rapidamente"]'::jsonb, 1, 'Entender conceito e uso prático é a melhor estratégia.', 1
from public.contents where slug = 'informatica-google-docs-drive-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'Uma pegadinha comum da VUNESP é:', '["confundir conceitos parecidos", "usar apenas textos poéticos", "cobrar física quântica", "ignorar o edital"]'::jsonb, 0, 'A banca costuma explorar diferenças sutis entre conceitos próximos.', 2
from public.contents where slug = 'informatica-google-docs-drive-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'O estudo do tema deve priorizar:', '["aplicação prática e leitura objetiva", "somente memorização cega", "apenas opinião pessoal", "nenhuma revisão"]'::jsonb, 0, 'Esse tipo de conteúdo rende mais quando estudado com foco prático.', 3
from public.contents where slug = 'informatica-google-docs-drive-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'Um erro comum é:', '["comparar conceitos", "prestar atenção ao enunciado", "decorar sem compreender", "revisar palavras-chave"]'::jsonb, 2, 'A compreensão é essencial para evitar erros fáceis.', 4
from public.contents where slug = 'informatica-google-docs-drive-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'A VUNESP valoriza, nesse tema:', '["objetividade e interpretação", "respostas ideológicas", "respostas vagas", "falta de precisão"]'::jsonb, 0, 'A banca costuma preferir formulações claras e objetivas.', 5
from public.contents where slug = 'informatica-google-docs-drive-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'Ao estudar, o candidato deve:', '["ignorar exemplos", "relacionar teoria e prática", "descartar conceitos básicos", "evitar revisão"]'::jsonb, 1, 'Essa relação ajuda a consolidar o conteúdo.', 6
from public.contents where slug = 'informatica-google-docs-drive-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'A principal habilidade exigida é:', '["entendimento conceitual com aplicação", "cálculo integral", "edição de vídeo", "programação avançada"]'::jsonb, 0, 'É isso que mais aparece em questões desse perfil.', 7
from public.contents where slug = 'informatica-google-docs-drive-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'Um tema estratégico costuma ser aquele que:', '["aparece bastante e tem cobrança objetiva", "não cai nunca", "depende só de sorte", "não permite estudo"]'::jsonb, 0, 'Temas recorrentes e objetivos são estratégicos para pontuar.', 8
from public.contents where slug = 'informatica-google-docs-drive-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'A leitura atenta do enunciado é importante porque:', '["a banca usa diferenças sutis", "não faz diferença", "substitui o estudo", "elimina todo conteúdo"]'::jsonb, 0, 'Muitas alternativas erradas parecem corretas à primeira vista.', 9
from public.contents where slug = 'informatica-google-docs-drive-001';
with inserted as (
  insert into public.contents (
    slug, source_id, discipline, topic, name, summary, theory, theory_blocks, key_points, proof_tips, examples, common_errors,
    minimum_plan, required_plan_rank, is_published
  ) values (
    'informatica-internet-e-navegadores-001',
    'informatica-internet-e-navegadores-001',
    'Informática',
    'Internet e navegadores',
    'Internet e navegadores',
    'Internet é a rede mundial de computadores, e os navegadores são programas usados para acessar páginas e serviços online. A VUNESP cobra conceitos básicos, funções de navegador, abas, histórico, favoritos, downloads, endereços e noções de navegação segura.',
    'Internet é a rede mundial que conecta dispositivos e permite acesso a páginas, sistemas, arquivos e serviços. Navegadores, como Chrome, Edge e Firefox, são os programas que permitem acessar sites.

A banca cobra diferença entre navegador, site, página e mecanismo de busca. Também aparecem abas, histórico, favoritos, downloads, barra de endereço, links e noções de navegação segura.

A VUNESP valoriza o uso prático da internet e do navegador, sem aprofundamento técnico excessivo.',
    '[{"titulo": "Conceito", "texto": "Internet e navegadores é tema importante do edital e deve ser compreendido de forma prática e objetiva."}, {"titulo": "Regras", "texto": "É preciso conhecer conceitos básicos, funções principais e aplicação prática do conteúdo."}, {"titulo": "Como cai na prova (VUNESP)", "texto": "A VUNESP costuma cobrar definições, uso prático, interpretação de situações e identificação de comandos ou regras."}]'::jsonb,
    '["Internet e navegadores aparece com frequência em prova.", "O uso prático do tema é muito valorizado.", "A banca gosta de conceitos objetivos e aplicação.", "Diferenças entre funções ou institutos geram pegadinhas.", "Treinar leitura atenta ajuda a evitar erros bobos."]'::jsonb,
    '["Associe conceito e função prática.", "Revise palavras-chave e diferenças centrais do tema.", "Treine identificar a alternativa mais objetiva e literal.", "Pegadinhas clássicas da VUNESP: confundir conceitos parecidos ou funções próximas."]'::jsonb,
    '["Exemplo de aplicação prática de Internet e navegadores em contexto de prova.", "A banca costuma transformar o conceito em situação objetiva.", "A leitura atenta do enunciado faz diferença."]'::jsonb,
    '["Decorar sem entender o uso prático.", "Confundir conceitos parecidos.", "Marcar alternativa por associação apressada."]'::jsonb,
    'basic'::public.plan_slug,
    1,
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
delete from public.flashcards where content_id in (select id from public.contents where slug = 'informatica-internet-e-navegadores-001');
insert into public.flashcards (content_id, question, answer, sort_order)
select id, 'O que é Internet e navegadores?', 'É um conteúdo relevante do edital que deve ser entendido de forma prática e conceitual.', 0
from public.contents where slug = 'informatica-internet-e-navegadores-001';
insert into public.flashcards (content_id, question, answer, sort_order)
select id, 'Como a VUNESP costuma cobrar esse tema?', 'Por definições, aplicação prática e interpretação objetiva.', 1
from public.contents where slug = 'informatica-internet-e-navegadores-001';
insert into public.flashcards (content_id, question, answer, sort_order)
select id, 'Qual cuidado principal?', 'Não confundir conceitos ou funções parecidas.', 2
from public.contents where slug = 'informatica-internet-e-navegadores-001';
insert into public.flashcards (content_id, question, answer, sort_order)
select id, 'A leitura do enunciado importa?', 'Sim, muito.', 3
from public.contents where slug = 'informatica-internet-e-navegadores-001';
insert into public.flashcards (content_id, question, answer, sort_order)
select id, 'O tema pode render ponto fácil?', 'Sim, com estudo direcionado.', 4
from public.contents where slug = 'informatica-internet-e-navegadores-001';
insert into public.flashcards (content_id, question, answer, sort_order)
select id, 'O que mais ajuda a acertar?', 'Entender conceito e função prática ao mesmo tempo.', 5
from public.contents where slug = 'informatica-internet-e-navegadores-001';
delete from public.questions where content_id in (select id from public.contents where slug = 'informatica-internet-e-navegadores-001');
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'Internet e navegadores é tema que a VUNESP costuma cobrar por meio de:', '["conceito e aplicação prática", "somente cálculos avançados", "somente literatura", "assuntos sem relação com o edital"]'::jsonb, 0, 'A banca costuma preferir cobrança objetiva e aplicada.', 0
from public.contents where slug = 'informatica-internet-e-navegadores-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'Uma boa estratégia para esse tema é:', '["decorar sem contexto", "entender conceito e função prática", "ignorar diferenças entre institutos", "chutar rapidamente"]'::jsonb, 1, 'Entender conceito e uso prático é a melhor estratégia.', 1
from public.contents where slug = 'informatica-internet-e-navegadores-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'Uma pegadinha comum da VUNESP é:', '["confundir conceitos parecidos", "usar apenas textos poéticos", "cobrar física quântica", "ignorar o edital"]'::jsonb, 0, 'A banca costuma explorar diferenças sutis entre conceitos próximos.', 2
from public.contents where slug = 'informatica-internet-e-navegadores-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'O estudo do tema deve priorizar:', '["aplicação prática e leitura objetiva", "somente memorização cega", "apenas opinião pessoal", "nenhuma revisão"]'::jsonb, 0, 'Esse tipo de conteúdo rende mais quando estudado com foco prático.', 3
from public.contents where slug = 'informatica-internet-e-navegadores-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'Um erro comum é:', '["comparar conceitos", "prestar atenção ao enunciado", "decorar sem compreender", "revisar palavras-chave"]'::jsonb, 2, 'A compreensão é essencial para evitar erros fáceis.', 4
from public.contents where slug = 'informatica-internet-e-navegadores-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'A VUNESP valoriza, nesse tema:', '["objetividade e interpretação", "respostas ideológicas", "respostas vagas", "falta de precisão"]'::jsonb, 0, 'A banca costuma preferir formulações claras e objetivas.', 5
from public.contents where slug = 'informatica-internet-e-navegadores-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'Ao estudar, o candidato deve:', '["ignorar exemplos", "relacionar teoria e prática", "descartar conceitos básicos", "evitar revisão"]'::jsonb, 1, 'Essa relação ajuda a consolidar o conteúdo.', 6
from public.contents where slug = 'informatica-internet-e-navegadores-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'A principal habilidade exigida é:', '["entendimento conceitual com aplicação", "cálculo integral", "edição de vídeo", "programação avançada"]'::jsonb, 0, 'É isso que mais aparece em questões desse perfil.', 7
from public.contents where slug = 'informatica-internet-e-navegadores-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'Um tema estratégico costuma ser aquele que:', '["aparece bastante e tem cobrança objetiva", "não cai nunca", "depende só de sorte", "não permite estudo"]'::jsonb, 0, 'Temas recorrentes e objetivos são estratégicos para pontuar.', 8
from public.contents where slug = 'informatica-internet-e-navegadores-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'A leitura atenta do enunciado é importante porque:', '["a banca usa diferenças sutis", "não faz diferença", "substitui o estudo", "elimina todo conteúdo"]'::jsonb, 0, 'Muitas alternativas erradas parecem corretas à primeira vista.', 9
from public.contents where slug = 'informatica-internet-e-navegadores-001';
with inserted as (
  insert into public.contents (
    slug, source_id, discipline, topic, name, summary, theory, theory_blocks, key_points, proof_tips, examples, common_errors,
    minimum_plan, required_plan_rank, is_published
  ) values (
    'informatica-microsoft-teams-001',
    'informatica-microsoft-teams-001',
    'Informática',
    'Microsoft Teams',
    'Microsoft Teams',
    'Microsoft Teams é uma plataforma de comunicação e colaboração usada para chats, reuniões, chamadas, compartilhamento de arquivos e trabalho em equipe. A VUNESP pode cobrar noções gerais de uso corporativo e colaboração digital.',
    'Microsoft Teams é uma ferramenta da Microsoft voltada para comunicação, reuniões e colaboração em ambiente de trabalho ou estudo. Reúne chat, chamadas, videoconferências, canais, compartilhamento de arquivos e integração com aplicativos do Microsoft 365.

Canais ajudam a separar assuntos e projetos. Reuniões podem ser agendadas ou iniciadas imediatamente.

A banca tende a cobrar visão funcional da plataforma como ambiente colaborativo.',
    '[{"titulo": "Conceito", "texto": "Microsoft Teams é tema importante do edital e deve ser compreendido de forma prática e objetiva."}, {"titulo": "Regras", "texto": "É preciso conhecer conceitos básicos, funções principais e aplicação prática do conteúdo."}, {"titulo": "Como cai na prova (VUNESP)", "texto": "A VUNESP costuma cobrar definições, uso prático, interpretação de situações e identificação de comandos ou regras."}]'::jsonb,
    '["Microsoft Teams aparece com frequência em prova.", "O uso prático do tema é muito valorizado.", "A banca gosta de conceitos objetivos e aplicação.", "Diferenças entre funções ou institutos geram pegadinhas.", "Treinar leitura atenta ajuda a evitar erros bobos."]'::jsonb,
    '["Associe conceito e função prática.", "Revise palavras-chave e diferenças centrais do tema.", "Treine identificar a alternativa mais objetiva e literal.", "Pegadinhas clássicas da VUNESP: confundir conceitos parecidos ou funções próximas."]'::jsonb,
    '["Exemplo de aplicação prática de Microsoft Teams em contexto de prova.", "A banca costuma transformar o conceito em situação objetiva.", "A leitura atenta do enunciado faz diferença."]'::jsonb,
    '["Decorar sem entender o uso prático.", "Confundir conceitos parecidos.", "Marcar alternativa por associação apressada."]'::jsonb,
    'basic'::public.plan_slug,
    1,
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
delete from public.flashcards where content_id in (select id from public.contents where slug = 'informatica-microsoft-teams-001');
insert into public.flashcards (content_id, question, answer, sort_order)
select id, 'O que é Microsoft Teams?', 'É um conteúdo relevante do edital que deve ser entendido de forma prática e conceitual.', 0
from public.contents where slug = 'informatica-microsoft-teams-001';
insert into public.flashcards (content_id, question, answer, sort_order)
select id, 'Como a VUNESP costuma cobrar esse tema?', 'Por definições, aplicação prática e interpretação objetiva.', 1
from public.contents where slug = 'informatica-microsoft-teams-001';
insert into public.flashcards (content_id, question, answer, sort_order)
select id, 'Qual cuidado principal?', 'Não confundir conceitos ou funções parecidas.', 2
from public.contents where slug = 'informatica-microsoft-teams-001';
insert into public.flashcards (content_id, question, answer, sort_order)
select id, 'A leitura do enunciado importa?', 'Sim, muito.', 3
from public.contents where slug = 'informatica-microsoft-teams-001';
insert into public.flashcards (content_id, question, answer, sort_order)
select id, 'O tema pode render ponto fácil?', 'Sim, com estudo direcionado.', 4
from public.contents where slug = 'informatica-microsoft-teams-001';
insert into public.flashcards (content_id, question, answer, sort_order)
select id, 'O que mais ajuda a acertar?', 'Entender conceito e função prática ao mesmo tempo.', 5
from public.contents where slug = 'informatica-microsoft-teams-001';
delete from public.questions where content_id in (select id from public.contents where slug = 'informatica-microsoft-teams-001');
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'Microsoft Teams é tema que a VUNESP costuma cobrar por meio de:', '["conceito e aplicação prática", "somente cálculos avançados", "somente literatura", "assuntos sem relação com o edital"]'::jsonb, 0, 'A banca costuma preferir cobrança objetiva e aplicada.', 0
from public.contents where slug = 'informatica-microsoft-teams-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'Uma boa estratégia para esse tema é:', '["decorar sem contexto", "entender conceito e função prática", "ignorar diferenças entre institutos", "chutar rapidamente"]'::jsonb, 1, 'Entender conceito e uso prático é a melhor estratégia.', 1
from public.contents where slug = 'informatica-microsoft-teams-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'Uma pegadinha comum da VUNESP é:', '["confundir conceitos parecidos", "usar apenas textos poéticos", "cobrar física quântica", "ignorar o edital"]'::jsonb, 0, 'A banca costuma explorar diferenças sutis entre conceitos próximos.', 2
from public.contents where slug = 'informatica-microsoft-teams-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'O estudo do tema deve priorizar:', '["aplicação prática e leitura objetiva", "somente memorização cega", "apenas opinião pessoal", "nenhuma revisão"]'::jsonb, 0, 'Esse tipo de conteúdo rende mais quando estudado com foco prático.', 3
from public.contents where slug = 'informatica-microsoft-teams-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'Um erro comum é:', '["comparar conceitos", "prestar atenção ao enunciado", "decorar sem compreender", "revisar palavras-chave"]'::jsonb, 2, 'A compreensão é essencial para evitar erros fáceis.', 4
from public.contents where slug = 'informatica-microsoft-teams-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'A VUNESP valoriza, nesse tema:', '["objetividade e interpretação", "respostas ideológicas", "respostas vagas", "falta de precisão"]'::jsonb, 0, 'A banca costuma preferir formulações claras e objetivas.', 5
from public.contents where slug = 'informatica-microsoft-teams-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'Ao estudar, o candidato deve:', '["ignorar exemplos", "relacionar teoria e prática", "descartar conceitos básicos", "evitar revisão"]'::jsonb, 1, 'Essa relação ajuda a consolidar o conteúdo.', 6
from public.contents where slug = 'informatica-microsoft-teams-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'A principal habilidade exigida é:', '["entendimento conceitual com aplicação", "cálculo integral", "edição de vídeo", "programação avançada"]'::jsonb, 0, 'É isso que mais aparece em questões desse perfil.', 7
from public.contents where slug = 'informatica-microsoft-teams-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'Um tema estratégico costuma ser aquele que:', '["aparece bastante e tem cobrança objetiva", "não cai nunca", "depende só de sorte", "não permite estudo"]'::jsonb, 0, 'Temas recorrentes e objetivos são estratégicos para pontuar.', 8
from public.contents where slug = 'informatica-microsoft-teams-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'A leitura atenta do enunciado é importante porque:', '["a banca usa diferenças sutis", "não faz diferença", "substitui o estudo", "elimina todo conteúdo"]'::jsonb, 0, 'Muitas alternativas erradas parecem corretas à primeira vista.', 9
from public.contents where slug = 'informatica-microsoft-teams-001';
with inserted as (
  insert into public.contents (
    slug, source_id, discipline, topic, name, summary, theory, theory_blocks, key_points, proof_tips, examples, common_errors,
    minimum_plan, required_plan_rank, is_published
  ) values (
    'informatica-powerpoint-001',
    'informatica-powerpoint-001',
    'Informática',
    'PowerPoint',
    'PowerPoint',
    'PowerPoint é o programa de apresentações da Microsoft. A VUNESP cobra criação e organização de slides, temas, layouts, transições, animações, inserção de objetos e modo de apresentação.',
    'PowerPoint é um software usado para criar apresentações em slides. Cada slide pode conter texto, imagens, formas, gráficos, tabelas e outros objetos.

Temas definem o padrão visual geral. Layout organiza a posição dos elementos em cada slide. Transições são efeitos aplicados na passagem de um slide para outro. Animações são efeitos aplicados a objetos dentro do slide.

A VUNESP costuma cobrar justamente a diferença entre transição e animação, além de criação de slides, duplicação, exclusão e modo de apresentação.',
    '[{"titulo": "Conceito", "texto": "PowerPoint é tema importante do edital e deve ser compreendido de forma prática e objetiva."}, {"titulo": "Regras", "texto": "É preciso conhecer conceitos básicos, funções principais e aplicação prática do conteúdo."}, {"titulo": "Como cai na prova (VUNESP)", "texto": "A VUNESP costuma cobrar definições, uso prático, interpretação de situações e identificação de comandos ou regras."}]'::jsonb,
    '["PowerPoint aparece com frequência em prova.", "O uso prático do tema é muito valorizado.", "A banca gosta de conceitos objetivos e aplicação.", "Diferenças entre funções ou institutos geram pegadinhas.", "Treinar leitura atenta ajuda a evitar erros bobos."]'::jsonb,
    '["Associe conceito e função prática.", "Revise palavras-chave e diferenças centrais do tema.", "Treine identificar a alternativa mais objetiva e literal.", "Pegadinhas clássicas da VUNESP: confundir conceitos parecidos ou funções próximas."]'::jsonb,
    '["Exemplo de aplicação prática de PowerPoint em contexto de prova.", "A banca costuma transformar o conceito em situação objetiva.", "A leitura atenta do enunciado faz diferença."]'::jsonb,
    '["Decorar sem entender o uso prático.", "Confundir conceitos parecidos.", "Marcar alternativa por associação apressada."]'::jsonb,
    'basic'::public.plan_slug,
    1,
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
delete from public.flashcards where content_id in (select id from public.contents where slug = 'informatica-powerpoint-001');
insert into public.flashcards (content_id, question, answer, sort_order)
select id, 'O que é PowerPoint?', 'É um conteúdo relevante do edital que deve ser entendido de forma prática e conceitual.', 0
from public.contents where slug = 'informatica-powerpoint-001';
insert into public.flashcards (content_id, question, answer, sort_order)
select id, 'Como a VUNESP costuma cobrar esse tema?', 'Por definições, aplicação prática e interpretação objetiva.', 1
from public.contents where slug = 'informatica-powerpoint-001';
insert into public.flashcards (content_id, question, answer, sort_order)
select id, 'Qual cuidado principal?', 'Não confundir conceitos ou funções parecidas.', 2
from public.contents where slug = 'informatica-powerpoint-001';
insert into public.flashcards (content_id, question, answer, sort_order)
select id, 'A leitura do enunciado importa?', 'Sim, muito.', 3
from public.contents where slug = 'informatica-powerpoint-001';
insert into public.flashcards (content_id, question, answer, sort_order)
select id, 'O tema pode render ponto fácil?', 'Sim, com estudo direcionado.', 4
from public.contents where slug = 'informatica-powerpoint-001';
insert into public.flashcards (content_id, question, answer, sort_order)
select id, 'O que mais ajuda a acertar?', 'Entender conceito e função prática ao mesmo tempo.', 5
from public.contents where slug = 'informatica-powerpoint-001';
delete from public.questions where content_id in (select id from public.contents where slug = 'informatica-powerpoint-001');
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'PowerPoint é tema que a VUNESP costuma cobrar por meio de:', '["conceito e aplicação prática", "somente cálculos avançados", "somente literatura", "assuntos sem relação com o edital"]'::jsonb, 0, 'A banca costuma preferir cobrança objetiva e aplicada.', 0
from public.contents where slug = 'informatica-powerpoint-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'Uma boa estratégia para esse tema é:', '["decorar sem contexto", "entender conceito e função prática", "ignorar diferenças entre institutos", "chutar rapidamente"]'::jsonb, 1, 'Entender conceito e uso prático é a melhor estratégia.', 1
from public.contents where slug = 'informatica-powerpoint-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'Uma pegadinha comum da VUNESP é:', '["confundir conceitos parecidos", "usar apenas textos poéticos", "cobrar física quântica", "ignorar o edital"]'::jsonb, 0, 'A banca costuma explorar diferenças sutis entre conceitos próximos.', 2
from public.contents where slug = 'informatica-powerpoint-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'O estudo do tema deve priorizar:', '["aplicação prática e leitura objetiva", "somente memorização cega", "apenas opinião pessoal", "nenhuma revisão"]'::jsonb, 0, 'Esse tipo de conteúdo rende mais quando estudado com foco prático.', 3
from public.contents where slug = 'informatica-powerpoint-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'Um erro comum é:', '["comparar conceitos", "prestar atenção ao enunciado", "decorar sem compreender", "revisar palavras-chave"]'::jsonb, 2, 'A compreensão é essencial para evitar erros fáceis.', 4
from public.contents where slug = 'informatica-powerpoint-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'A VUNESP valoriza, nesse tema:', '["objetividade e interpretação", "respostas ideológicas", "respostas vagas", "falta de precisão"]'::jsonb, 0, 'A banca costuma preferir formulações claras e objetivas.', 5
from public.contents where slug = 'informatica-powerpoint-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'Ao estudar, o candidato deve:', '["ignorar exemplos", "relacionar teoria e prática", "descartar conceitos básicos", "evitar revisão"]'::jsonb, 1, 'Essa relação ajuda a consolidar o conteúdo.', 6
from public.contents where slug = 'informatica-powerpoint-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'A principal habilidade exigida é:', '["entendimento conceitual com aplicação", "cálculo integral", "edição de vídeo", "programação avançada"]'::jsonb, 0, 'É isso que mais aparece em questões desse perfil.', 7
from public.contents where slug = 'informatica-powerpoint-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'Um tema estratégico costuma ser aquele que:', '["aparece bastante e tem cobrança objetiva", "não cai nunca", "depende só de sorte", "não permite estudo"]'::jsonb, 0, 'Temas recorrentes e objetivos são estratégicos para pontuar.', 8
from public.contents where slug = 'informatica-powerpoint-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'A leitura atenta do enunciado é importante porque:', '["a banca usa diferenças sutis", "não faz diferença", "substitui o estudo", "elimina todo conteúdo"]'::jsonb, 0, 'Muitas alternativas erradas parecem corretas à primeira vista.', 9
from public.contents where slug = 'informatica-powerpoint-001';
with inserted as (
  insert into public.contents (
    slug, source_id, discipline, topic, name, summary, theory, theory_blocks, key_points, proof_tips, examples, common_errors,
    minimum_plan, required_plan_rank, is_published
  ) values (
    'informatica-seguranca-da-informacao-001',
    'informatica-seguranca-da-informacao-001',
    'Informática',
    'Segurança da informação',
    'Segurança da informação',
    'Segurança da informação envolve proteção de dados, sistemas e usuários contra acessos indevidos, perdas, fraudes e ataques. A VUNESP cobra princípios básicos, senhas, backup, antivírus, firewall, phishing, malware e boas práticas digitais.',
    'Segurança da informação busca proteger dados e sistemas contra ameaças, falhas e acessos não autorizados. Entre os princípios clássicos estão confidencialidade, integridade e disponibilidade.

A banca cobra ameaças como vírus, trojans, ransomware, spyware e phishing. Também aparecem backup, antivírus, firewall, senhas fortes e autenticação em duas etapas.

A VUNESP foca muito no uso prático da segurança digital e nas boas práticas do usuário.',
    '[{"titulo": "Conceito", "texto": "Segurança da informação é tema importante do edital e deve ser compreendido de forma prática e objetiva."}, {"titulo": "Regras", "texto": "É preciso conhecer conceitos básicos, funções principais e aplicação prática do conteúdo."}, {"titulo": "Como cai na prova (VUNESP)", "texto": "A VUNESP costuma cobrar definições, uso prático, interpretação de situações e identificação de comandos ou regras."}]'::jsonb,
    '["Segurança da informação aparece com frequência em prova.", "O uso prático do tema é muito valorizado.", "A banca gosta de conceitos objetivos e aplicação.", "Diferenças entre funções ou institutos geram pegadinhas.", "Treinar leitura atenta ajuda a evitar erros bobos."]'::jsonb,
    '["Associe conceito e função prática.", "Revise palavras-chave e diferenças centrais do tema.", "Treine identificar a alternativa mais objetiva e literal.", "Pegadinhas clássicas da VUNESP: confundir conceitos parecidos ou funções próximas."]'::jsonb,
    '["Exemplo de aplicação prática de Segurança da informação em contexto de prova.", "A banca costuma transformar o conceito em situação objetiva.", "A leitura atenta do enunciado faz diferença."]'::jsonb,
    '["Decorar sem entender o uso prático.", "Confundir conceitos parecidos.", "Marcar alternativa por associação apressada."]'::jsonb,
    'basic'::public.plan_slug,
    1,
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
delete from public.flashcards where content_id in (select id from public.contents where slug = 'informatica-seguranca-da-informacao-001');
insert into public.flashcards (content_id, question, answer, sort_order)
select id, 'O que é Segurança da informação?', 'É um conteúdo relevante do edital que deve ser entendido de forma prática e conceitual.', 0
from public.contents where slug = 'informatica-seguranca-da-informacao-001';
insert into public.flashcards (content_id, question, answer, sort_order)
select id, 'Como a VUNESP costuma cobrar esse tema?', 'Por definições, aplicação prática e interpretação objetiva.', 1
from public.contents where slug = 'informatica-seguranca-da-informacao-001';
insert into public.flashcards (content_id, question, answer, sort_order)
select id, 'Qual cuidado principal?', 'Não confundir conceitos ou funções parecidas.', 2
from public.contents where slug = 'informatica-seguranca-da-informacao-001';
insert into public.flashcards (content_id, question, answer, sort_order)
select id, 'A leitura do enunciado importa?', 'Sim, muito.', 3
from public.contents where slug = 'informatica-seguranca-da-informacao-001';
insert into public.flashcards (content_id, question, answer, sort_order)
select id, 'O tema pode render ponto fácil?', 'Sim, com estudo direcionado.', 4
from public.contents where slug = 'informatica-seguranca-da-informacao-001';
insert into public.flashcards (content_id, question, answer, sort_order)
select id, 'O que mais ajuda a acertar?', 'Entender conceito e função prática ao mesmo tempo.', 5
from public.contents where slug = 'informatica-seguranca-da-informacao-001';
delete from public.questions where content_id in (select id from public.contents where slug = 'informatica-seguranca-da-informacao-001');
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'Segurança da informação é tema que a VUNESP costuma cobrar por meio de:', '["conceito e aplicação prática", "somente cálculos avançados", "somente literatura", "assuntos sem relação com o edital"]'::jsonb, 0, 'A banca costuma preferir cobrança objetiva e aplicada.', 0
from public.contents where slug = 'informatica-seguranca-da-informacao-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'Uma boa estratégia para esse tema é:', '["decorar sem contexto", "entender conceito e função prática", "ignorar diferenças entre institutos", "chutar rapidamente"]'::jsonb, 1, 'Entender conceito e uso prático é a melhor estratégia.', 1
from public.contents where slug = 'informatica-seguranca-da-informacao-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'Uma pegadinha comum da VUNESP é:', '["confundir conceitos parecidos", "usar apenas textos poéticos", "cobrar física quântica", "ignorar o edital"]'::jsonb, 0, 'A banca costuma explorar diferenças sutis entre conceitos próximos.', 2
from public.contents where slug = 'informatica-seguranca-da-informacao-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'O estudo do tema deve priorizar:', '["aplicação prática e leitura objetiva", "somente memorização cega", "apenas opinião pessoal", "nenhuma revisão"]'::jsonb, 0, 'Esse tipo de conteúdo rende mais quando estudado com foco prático.', 3
from public.contents where slug = 'informatica-seguranca-da-informacao-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'Um erro comum é:', '["comparar conceitos", "prestar atenção ao enunciado", "decorar sem compreender", "revisar palavras-chave"]'::jsonb, 2, 'A compreensão é essencial para evitar erros fáceis.', 4
from public.contents where slug = 'informatica-seguranca-da-informacao-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'A VUNESP valoriza, nesse tema:', '["objetividade e interpretação", "respostas ideológicas", "respostas vagas", "falta de precisão"]'::jsonb, 0, 'A banca costuma preferir formulações claras e objetivas.', 5
from public.contents where slug = 'informatica-seguranca-da-informacao-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'Ao estudar, o candidato deve:', '["ignorar exemplos", "relacionar teoria e prática", "descartar conceitos básicos", "evitar revisão"]'::jsonb, 1, 'Essa relação ajuda a consolidar o conteúdo.', 6
from public.contents where slug = 'informatica-seguranca-da-informacao-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'A principal habilidade exigida é:', '["entendimento conceitual com aplicação", "cálculo integral", "edição de vídeo", "programação avançada"]'::jsonb, 0, 'É isso que mais aparece em questões desse perfil.', 7
from public.contents where slug = 'informatica-seguranca-da-informacao-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'Um tema estratégico costuma ser aquele que:', '["aparece bastante e tem cobrança objetiva", "não cai nunca", "depende só de sorte", "não permite estudo"]'::jsonb, 0, 'Temas recorrentes e objetivos são estratégicos para pontuar.', 8
from public.contents where slug = 'informatica-seguranca-da-informacao-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'A leitura atenta do enunciado é importante porque:', '["a banca usa diferenças sutis", "não faz diferença", "substitui o estudo", "elimina todo conteúdo"]'::jsonb, 0, 'Muitas alternativas erradas parecem corretas à primeira vista.', 9
from public.contents where slug = 'informatica-seguranca-da-informacao-001';
with inserted as (
  insert into public.contents (
    slug, source_id, discipline, topic, name, summary, theory, theory_blocks, key_points, proof_tips, examples, common_errors,
    minimum_plan, required_plan_rank, is_published
  ) values (
    'informatica-windows-10-001',
    'informatica-windows-10-001',
    'Informática',
    'Windows 10',
    'Windows 10',
    'Windows 10 é o sistema operacional da Microsoft muito cobrado em concursos por reunir funções básicas do uso diário do computador. A VUNESP costuma cobrar área de trabalho, gerenciamento de arquivos e pastas, atalhos, Menu Iniciar, barra de tarefas, Explorador de Arquivos, configurações e noções de segurança e organização do sistema.',
    'Windows 10 é um sistema operacional, ou seja, o programa principal que gerencia o funcionamento do computador, dos arquivos, dos programas e da interação com o usuário. Em concursos, o foco não costuma ser técnico demais: a banca quer saber se o candidato domina o uso prático do sistema.

A área de trabalho é a tela principal, onde aparecem ícones, atalhos e a barra de tarefas. O Menu Iniciar dá acesso a programas, configurações, desligamento e busca. A barra de tarefas mostra aplicativos abertos, programas fixados e a área de notificação.

O Explorador de Arquivos é o local usado para criar, copiar, mover, renomear e excluir arquivos e pastas. É muito importante diferenciar arquivo de pasta. Pasta organiza arquivos; arquivo contém informação. Também é essencial conhecer extensões comuns, como .docx, .xlsx, .pptx, .pdf, .jpg e .txt.

A lixeira armazena temporariamente arquivos excluídos, permitindo restauração. Porém, se o arquivo for excluído permanentemente ou removido de certos dispositivos, a lógica muda. A VUNESP gosta de cobrar essa noção.

Atalhos de teclado são tema recorrente: Ctrl+C copia, Ctrl+V cola, Ctrl+X recorta, Ctrl+Z desfaz, Ctrl+A seleciona tudo, Alt+Tab alterna janelas, Windows+E abre o Explorador de Arquivos, Windows+D mostra a área de trabalho.

O Windows 10 também inclui configurações de sistema, rede, dispositivos, personalização, privacidade e atualização. O Windows Update cuida de atualizações do sistema. Em segurança, aparecem noções de senha, bloqueio de tela, antivírus e firewall.

A VUNESP pode cobrar ações práticas: o que acontece ao arrastar arquivos, como organizar janelas, diferença entre atalho e arquivo original, o papel da barra de tarefas e funções do Explorador. Em resumo, o segredo é dominar o uso real do Windows, não apenas decorar nomes.',
    '[{"titulo": "Conceito", "texto": "Windows 10 é um sistema operacional que administra recursos do computador, programas, arquivos e interação com o usuário."}, {"titulo": "Regras", "texto": "É importante conhecer área de trabalho, Menu Iniciar, barra de tarefas, Explorador de Arquivos, lixeira, atalhos e configurações básicas. Arquivo e pasta têm funções diferentes. Atalho não é o arquivo original."}, {"titulo": "Como cai na prova (VUNESP)", "texto": "A VUNESP cobra muito uso prático do sistema: organização de arquivos, atalhos, janelas, área de trabalho, lixeira, barra de tarefas e funções do Explorador."}]'::jsonb,
    '["Windows 10 é o sistema operacional do computador.", "O Explorador de Arquivos gerencia arquivos e pastas.", "Atalho não é o arquivo original.", "A lixeira permite recuperar arquivos excluídos temporariamente.", "Atalhos de teclado são muito cobrados."]'::jsonb,
    '["Diferencie sempre arquivo, pasta e atalho.", "Memorize os atalhos mais cobrados.", "Associe Menu Iniciar, barra de tarefas e Explorador às funções reais.", "Pegadinhas clássicas da VUNESP: confundir atalho com arquivo original e errar operações de copiar, mover e excluir."]'::jsonb,
    '["Ctrl+C copia e Ctrl+V cola.", "Windows+E abre o Explorador de Arquivos.", "Excluir para a lixeira não é o mesmo que excluir permanentemente."]'::jsonb,
    '["Achar que apagar um atalho apaga o arquivo original.", "Confundir copiar com mover.", "Esquecer a função da lixeira e do Explorador."]'::jsonb,
    'basic'::public.plan_slug,
    1,
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
delete from public.flashcards where content_id in (select id from public.contents where slug = 'informatica-windows-10-001');
insert into public.flashcards (content_id, question, answer, sort_order)
select id, 'O que é o Windows 10?', 'É um sistema operacional.', 0
from public.contents where slug = 'informatica-windows-10-001';
insert into public.flashcards (content_id, question, answer, sort_order)
select id, 'Para que serve o Explorador de Arquivos?', 'Para gerenciar arquivos e pastas.', 1
from public.contents where slug = 'informatica-windows-10-001';
insert into public.flashcards (content_id, question, answer, sort_order)
select id, 'Atalho é o arquivo original?', 'Não. É apenas um acesso rápido.', 2
from public.contents where slug = 'informatica-windows-10-001';
insert into public.flashcards (content_id, question, answer, sort_order)
select id, 'Qual atalho abre o Explorador?', 'Windows+E.', 3
from public.contents where slug = 'informatica-windows-10-001';
insert into public.flashcards (content_id, question, answer, sort_order)
select id, 'Qual atalho alterna janelas abertas?', 'Alt+Tab.', 4
from public.contents where slug = 'informatica-windows-10-001';
insert into public.flashcards (content_id, question, answer, sort_order)
select id, 'A lixeira exclui definitivamente de imediato?', 'Em regra, não; ela guarda temporariamente.', 5
from public.contents where slug = 'informatica-windows-10-001';
delete from public.questions where content_id in (select id from public.contents where slug = 'informatica-windows-10-001');
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'No Windows 10, o programa usado para gerenciar arquivos e pastas é o:', '["Painel de Controle", "Explorador de Arquivos", "Prompt de Comando", "Bloco de Notas"]'::jsonb, 1, 'O Explorador de Arquivos é a ferramenta principal de gerenciamento de arquivos e pastas.', 0
from public.contents where slug = 'informatica-windows-10-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'Ao excluir um atalho da área de trabalho, o arquivo original:', '["também é apagado", "é compactado", "permanece no local original", "vai para a nuvem"]'::jsonb, 2, 'Atalho é apenas um link para o arquivo. Apagar o atalho não remove o arquivo original.', 1
from public.contents where slug = 'informatica-windows-10-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'O atalho Ctrl+X realiza a ação de:', '["copiar", "colar", "recortar", "desfazer"]'::jsonb, 2, 'Ctrl+X recorta o item selecionado.', 2
from public.contents where slug = 'informatica-windows-10-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'A combinação Windows+D serve para:', '["fechar o computador", "mostrar a área de trabalho", "abrir documentos", "reiniciar o sistema"]'::jsonb, 1, 'Esse atalho minimiza ou oculta janelas para exibir a área de trabalho.', 3
from public.contents where slug = 'informatica-windows-10-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'A lixeira do Windows 10 tem como função principal:', '["executar antivírus", "armazenar temporariamente arquivos excluídos", "criar backups automáticos", "compactar arquivos"]'::jsonb, 1, 'A lixeira guarda temporariamente arquivos excluídos, permitindo restauração em muitos casos.', 4
from public.contents where slug = 'informatica-windows-10-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'A barra de tarefas no Windows 10:', '["serve apenas para desligar o computador", "mostra programas e janelas em uso", "é usada só para formatar textos", "substitui o Explorador"]'::jsonb, 1, 'Ela exibe aplicativos abertos, fixados e recursos do sistema.', 5
from public.contents where slug = 'informatica-windows-10-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'Ctrl+Z é usado para:', '["refazer", "desfazer", "salvar", "imprimir"]'::jsonb, 1, 'Ctrl+Z desfaz a última ação, quando suportado.', 6
from public.contents where slug = 'informatica-windows-10-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'O Menu Iniciar permite acesso a:', '["somente arquivos de áudio", "apenas internet", "programas, busca e configurações", "somente impressoras"]'::jsonb, 2, 'O Menu Iniciar reúne acesso a aplicativos, configurações, pesquisa e energia.', 7
from public.contents where slug = 'informatica-windows-10-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'Alt+Tab no Windows 10 serve para:', '["alternar entre janelas abertas", "renomear arquivos", "abrir a lixeira", "copiar tela"]'::jsonb, 0, 'Alt+Tab alterna entre programas e janelas abertas.', 8
from public.contents where slug = 'informatica-windows-10-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'Uma pegadinha comum em Windows 10 é:', '["confundir atalho com arquivo original", "achar que pasta guarda arquivos", "saber usar o Explorador", "identificar a barra de tarefas"]'::jsonb, 0, 'Esse é um erro clássico em prova de informática.', 9
from public.contents where slug = 'informatica-windows-10-001';
with inserted as (
  insert into public.contents (
    slug, source_id, discipline, topic, name, summary, theory, theory_blocks, key_points, proof_tips, examples, common_errors,
    minimum_plan, required_plan_rank, is_published
  ) values (
    'informatica-word-001',
    'informatica-word-001',
    'Informática',
    'Word',
    'Word',
    'Word é o editor de textos da Microsoft. A VUNESP cobra criação e edição de documentos, formatação de fonte e parágrafo, alinhamento, margens, orientação de página, cabeçalho, rodapé, tabelas, revisão e atalhos básicos.',
    'Microsoft Word é um editor de textos usado para digitar, revisar, formatar e organizar documentos. Em concursos, o foco recai sobre funções práticas do dia a dia.

Na guia Página Inicial, o candidato encontra comandos de fonte, parágrafo, estilos e edição. Fonte envolve tipo de letra, tamanho, negrito, itálico, sublinhado, cor e destaque. Parágrafo envolve alinhamento, recuo, espaçamento, marcadores, numeração e justificação.

Os alinhamentos mais comuns são: à esquerda, centralizado, à direita e justificado. Também é comum cobrar orientação da página, margens, cabeçalho, rodapé e quebra de página.

Atalhos importantes: Ctrl+N cria novo documento, Ctrl+O abre, Ctrl+S salva, Ctrl+B aplica negrito, Ctrl+I itálico, Ctrl+U sublinhado, Ctrl+P imprime. A VUNESP cobra diferença entre salvar e salvar como, formatação e inserção de elementos.',
    '[{"titulo": "Conceito", "texto": "Word é tema importante do edital e deve ser compreendido de forma prática e objetiva."}, {"titulo": "Regras", "texto": "É preciso conhecer conceitos básicos, funções principais e aplicação prática do conteúdo."}, {"titulo": "Como cai na prova (VUNESP)", "texto": "A VUNESP costuma cobrar definições, uso prático, interpretação de situações e identificação de comandos ou regras."}]'::jsonb,
    '["Word aparece com frequência em prova.", "O uso prático do tema é muito valorizado.", "A banca gosta de conceitos objetivos e aplicação.", "Diferenças entre funções ou institutos geram pegadinhas.", "Treinar leitura atenta ajuda a evitar erros bobos."]'::jsonb,
    '["Associe conceito e função prática.", "Revise palavras-chave e diferenças centrais do tema.", "Treine identificar a alternativa mais objetiva e literal.", "Pegadinhas clássicas da VUNESP: confundir conceitos parecidos ou funções próximas."]'::jsonb,
    '["Exemplo de aplicação prática de Word em contexto de prova.", "A banca costuma transformar o conceito em situação objetiva.", "A leitura atenta do enunciado faz diferença."]'::jsonb,
    '["Decorar sem entender o uso prático.", "Confundir conceitos parecidos.", "Marcar alternativa por associação apressada."]'::jsonb,
    'basic'::public.plan_slug,
    1,
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
delete from public.flashcards where content_id in (select id from public.contents where slug = 'informatica-word-001');
insert into public.flashcards (content_id, question, answer, sort_order)
select id, 'O que é Word?', 'É um conteúdo relevante do edital que deve ser entendido de forma prática e conceitual.', 0
from public.contents where slug = 'informatica-word-001';
insert into public.flashcards (content_id, question, answer, sort_order)
select id, 'Como a VUNESP costuma cobrar esse tema?', 'Por definições, aplicação prática e interpretação objetiva.', 1
from public.contents where slug = 'informatica-word-001';
insert into public.flashcards (content_id, question, answer, sort_order)
select id, 'Qual cuidado principal?', 'Não confundir conceitos ou funções parecidas.', 2
from public.contents where slug = 'informatica-word-001';
insert into public.flashcards (content_id, question, answer, sort_order)
select id, 'A leitura do enunciado importa?', 'Sim, muito.', 3
from public.contents where slug = 'informatica-word-001';
insert into public.flashcards (content_id, question, answer, sort_order)
select id, 'O tema pode render ponto fácil?', 'Sim, com estudo direcionado.', 4
from public.contents where slug = 'informatica-word-001';
insert into public.flashcards (content_id, question, answer, sort_order)
select id, 'O que mais ajuda a acertar?', 'Entender conceito e função prática ao mesmo tempo.', 5
from public.contents where slug = 'informatica-word-001';
delete from public.questions where content_id in (select id from public.contents where slug = 'informatica-word-001');
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'Word é tema que a VUNESP costuma cobrar por meio de:', '["conceito e aplicação prática", "somente cálculos avançados", "somente literatura", "assuntos sem relação com o edital"]'::jsonb, 0, 'A banca costuma preferir cobrança objetiva e aplicada.', 0
from public.contents where slug = 'informatica-word-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'Uma boa estratégia para esse tema é:', '["decorar sem contexto", "entender conceito e função prática", "ignorar diferenças entre institutos", "chutar rapidamente"]'::jsonb, 1, 'Entender conceito e uso prático é a melhor estratégia.', 1
from public.contents where slug = 'informatica-word-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'Uma pegadinha comum da VUNESP é:', '["confundir conceitos parecidos", "usar apenas textos poéticos", "cobrar física quântica", "ignorar o edital"]'::jsonb, 0, 'A banca costuma explorar diferenças sutis entre conceitos próximos.', 2
from public.contents where slug = 'informatica-word-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'O estudo do tema deve priorizar:', '["aplicação prática e leitura objetiva", "somente memorização cega", "apenas opinião pessoal", "nenhuma revisão"]'::jsonb, 0, 'Esse tipo de conteúdo rende mais quando estudado com foco prático.', 3
from public.contents where slug = 'informatica-word-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'Um erro comum é:', '["comparar conceitos", "prestar atenção ao enunciado", "decorar sem compreender", "revisar palavras-chave"]'::jsonb, 2, 'A compreensão é essencial para evitar erros fáceis.', 4
from public.contents where slug = 'informatica-word-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'A VUNESP valoriza, nesse tema:', '["objetividade e interpretação", "respostas ideológicas", "respostas vagas", "falta de precisão"]'::jsonb, 0, 'A banca costuma preferir formulações claras e objetivas.', 5
from public.contents where slug = 'informatica-word-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'Ao estudar, o candidato deve:', '["ignorar exemplos", "relacionar teoria e prática", "descartar conceitos básicos", "evitar revisão"]'::jsonb, 1, 'Essa relação ajuda a consolidar o conteúdo.', 6
from public.contents where slug = 'informatica-word-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'A principal habilidade exigida é:', '["entendimento conceitual com aplicação", "cálculo integral", "edição de vídeo", "programação avançada"]'::jsonb, 0, 'É isso que mais aparece em questões desse perfil.', 7
from public.contents where slug = 'informatica-word-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'Um tema estratégico costuma ser aquele que:', '["aparece bastante e tem cobrança objetiva", "não cai nunca", "depende só de sorte", "não permite estudo"]'::jsonb, 0, 'Temas recorrentes e objetivos são estratégicos para pontuar.', 8
from public.contents where slug = 'informatica-word-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'A leitura atenta do enunciado é importante porque:', '["a banca usa diferenças sutis", "não faz diferença", "substitui o estudo", "elimina todo conteúdo"]'::jsonb, 0, 'Muitas alternativas erradas parecem corretas à primeira vista.', 9
from public.contents where slug = 'informatica-word-001';
with inserted as (
  insert into public.contents (
    slug, source_id, discipline, topic, name, summary, theory, theory_blocks, key_points, proof_tips, examples, common_errors,
    minimum_plan, required_plan_rank, is_published
  ) values (
    'matematica-area-e-perimetro-001',
    'matematica-area-e-perimetro-001',
    'Matemática',
    'Área e perímetro',
    'Área e perímetro',
    'Perímetro é a medida do contorno de uma figura; área é a medida de sua superfície. A VUNESP cobra fórmulas de quadrado, retângulo, triângulo e círculo, além de interpretação correta do que a questão pede.',
    'Perímetro é a soma de todos os lados de uma figura. Área é a medida da região interna da figura. Essa diferença é central: perímetro mede contorno; área mede superfície.

No quadrado de lado l, o perímetro é 4l e a área é l². No retângulo de base b e altura h, o perímetro é 2(b + h) e a área é b x h. No triângulo, a área é base x altura ÷ 2. No círculo, o comprimento da circunferência é 2πr e a área é πr².

A VUNESP gosta de trocar perímetro por área no enunciado para testar atenção. Também pode apresentar figuras compostas ou malhas quadriculadas. Nesses casos, o candidato deve organizar os dados e identificar corretamente a medida pedida.

Em resumo, antes de aplicar fórmula, é preciso saber se a questão quer contorno ou superfície.',
    '[{"titulo": "Conceito", "texto": "Perímetro mede contorno; área mede superfície."}, {"titulo": "Regras", "texto": "Quadrado: P = 4l e A = l². Retângulo: P = 2(b + h) e A = b x h. Triângulo: A = b x h / 2. Círculo: A = πr²."}, {"titulo": "Como cai na prova (VUNESP)", "texto": "A VUNESP cobra aplicação direta de fórmulas, interpretação do enunciado e diferença entre área e perímetro."}]'::jsonb,
    '["Perímetro é soma dos lados.", "Área é medida da região interna.", "Quadrado: A = lado².", "Retângulo: A = base x altura.", "O enunciado define qual fórmula usar."]'::jsonb,
    '["Leia se a questão pede contorno ou superfície.", "Anote a fórmula antes de substituir valores.", "Cuidado com unidades quadradas na área.", "Pegadinhas clássicas da VUNESP: usar fórmula de perímetro no lugar da área."]'::jsonb,
    '["Quadrado de lado 5: perímetro 20, área 25.", "Retângulo 4 x 6: área 24.", "Triângulo de base 8 e altura 5: área 20."]'::jsonb,
    '["Confundir área com perímetro.", "Esquecer de dividir por 2 na área do triângulo.", "Não usar unidade quadrada na área."]'::jsonb,
    'basic'::public.plan_slug,
    1,
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
delete from public.flashcards where content_id in (select id from public.contents where slug = 'matematica-area-e-perimetro-001');
insert into public.flashcards (content_id, question, answer, sort_order)
select id, 'O que é perímetro?', 'É a soma dos lados de uma figura.', 0
from public.contents where slug = 'matematica-area-e-perimetro-001';
insert into public.flashcards (content_id, question, answer, sort_order)
select id, 'O que é área?', 'É a medida da superfície interna da figura.', 1
from public.contents where slug = 'matematica-area-e-perimetro-001';
insert into public.flashcards (content_id, question, answer, sort_order)
select id, 'Qual a área do quadrado?', 'Lado ao quadrado.', 2
from public.contents where slug = 'matematica-area-e-perimetro-001';
insert into public.flashcards (content_id, question, answer, sort_order)
select id, 'Qual a área do retângulo?', 'Base vezes altura.', 3
from public.contents where slug = 'matematica-area-e-perimetro-001';
insert into public.flashcards (content_id, question, answer, sort_order)
select id, 'Qual a área do triângulo?', 'Base vezes altura dividido por 2.', 4
from public.contents where slug = 'matematica-area-e-perimetro-001';
insert into public.flashcards (content_id, question, answer, sort_order)
select id, 'Qual cuidado principal?', 'Saber se a questão quer área ou perímetro.', 5
from public.contents where slug = 'matematica-area-e-perimetro-001';
delete from public.questions where content_id in (select id from public.contents where slug = 'matematica-area-e-perimetro-001');
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'O perímetro de um quadrado de lado 6 cm é:', '["12 cm", "18 cm", "24 cm", "36 cm"]'::jsonb, 2, 'Perímetro = 4 x 6 = 24 cm.', 0
from public.contents where slug = 'matematica-area-e-perimetro-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'A área de um quadrado de lado 6 cm é:', '["12 cm²", "24 cm²", "30 cm²", "36 cm²"]'::jsonb, 3, 'Área = 6² = 36 cm².', 1
from public.contents where slug = 'matematica-area-e-perimetro-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'A área de um retângulo de base 8 cm e altura 5 cm é:', '["13 cm²", "26 cm²", "40 cm²", "80 cm²"]'::jsonb, 2, 'Área = 8 x 5 = 40 cm².', 2
from public.contents where slug = 'matematica-area-e-perimetro-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'O perímetro de um retângulo com lados 4 cm e 7 cm é:', '["11 cm", "18 cm", "22 cm", "28 cm"]'::jsonb, 2, 'Perímetro = 2(4 + 7) = 22 cm.', 3
from public.contents where slug = 'matematica-area-e-perimetro-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'A área de um triângulo de base 10 cm e altura 4 cm é:', '["14 cm²", "20 cm²", "40 cm²", "80 cm²"]'::jsonb, 1, 'Área = 10 x 4 ÷ 2 = 20 cm².', 4
from public.contents where slug = 'matematica-area-e-perimetro-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'Qual medida representa o contorno de uma figura?', '["área", "volume", "perímetro", "altura"]'::jsonb, 2, 'Contorno é o perímetro.', 5
from public.contents where slug = 'matematica-area-e-perimetro-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'Qual medida representa a superfície interna de uma figura plana?', '["perímetro", "área", "volume", "diâmetro"]'::jsonb, 1, 'Superfície interna é a área.', 6
from public.contents where slug = 'matematica-area-e-perimetro-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'Se um quadrado tem área 49 cm², seu lado mede:', '["5 cm", "6 cm", "7 cm", "8 cm"]'::jsonb, 2, 'Lado² = 49, então lado = 7 cm.', 7
from public.contents where slug = 'matematica-area-e-perimetro-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'A unidade correta para área é:', '["cm", "cm²", "cm³", "m/s"]'::jsonb, 1, 'Área é medida em unidades quadradas.', 8
from public.contents where slug = 'matematica-area-e-perimetro-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'O maior cuidado nesse tema é:', '["esquecer o título", "confundir área com perímetro", "multiplicar por 100", "fazer regra de três"]'::jsonb, 1, 'Essa é a troca mais comum em prova.', 9
from public.contents where slug = 'matematica-area-e-perimetro-001';
with inserted as (
  insert into public.contents (
    slug, source_id, discipline, topic, name, summary, theory, theory_blocks, key_points, proof_tips, examples, common_errors,
    minimum_plan, required_plan_rank, is_published
  ) values (
    'matematica-equacao-do-primeiro-grau-001',
    'matematica-equacao-do-primeiro-grau-001',
    'Matemática',
    'Equação do 1º grau',
    'Equação do 1º grau',
    'Equação do 1º grau é uma igualdade que envolve incógnita elevada à primeira potência. O objetivo é descobrir o valor da incógnita que torna a igualdade verdadeira. A VUNESP cobra resolução algébrica e aplicação em problemas.',
    'Uma equação do 1º grau tem a forma geral ax + b = 0, com a diferente de zero. Resolver a equação significa encontrar o valor de x que faz a igualdade ser verdadeira.

O princípio básico é manter o equilíbrio da igualdade. Tudo o que é feito em um lado deve ser feito no outro. Para isolar a incógnita, transportam-se termos, somam-se ou subtraem-se valores, e dividem-se ambos os lados pelo coeficiente da incógnita.

Exemplo: 2x + 6 = 14. Subtraindo 6 dos dois lados, fica 2x = 8. Dividindo por 2, obtém-se x = 4.

Em problemas, a equação surge a partir da tradução da situação para linguagem matemática. Exemplo: ''Um número somado com 7 resulta em 19'' vira x + 7 = 19.

Também aparecem equações com parênteses e frações. Nesses casos, distribui-se corretamente e elimina-se o denominador quando necessário.

A VUNESP cobra tanto a técnica de resolução quanto a interpretação correta do enunciado. Muitas vezes o maior desafio é montar a equação certa.',
    '[{"titulo": "Conceito", "texto": "Equação do 1º grau é uma igualdade com incógnita de expoente 1."}, {"titulo": "Regras", "texto": "Isola-se a incógnita mantendo o equilíbrio da igualdade. Termos semelhantes devem ser reduzidos, e operações feitas de um lado devem ser feitas do outro."}, {"titulo": "Como cai na prova (VUNESP)", "texto": "A VUNESP cobra equações diretas, problemas com idade, preço, quantidade, dobro, triplo e contextos do dia a dia."}]'::jsonb,
    '["Equação é igualdade com incógnita.", "Resolver é achar o valor da incógnita.", "O equilíbrio da igualdade deve ser mantido.", "Problemas exigem montar a equação antes de resolver.", "Parênteses e frações pedem atenção extra."]'::jsonb,
    '["Organize primeiro os termos com x e os números.", "Faça uma operação de cada vez.", "Confira a resposta substituindo o valor encontrado.", "Pegadinhas clássicas da VUNESP: erro de sinal ao transpor termo."]'::jsonb,
    '["x + 5 = 12, então x = 7.", "3x = 21, então x = 7.", "2x + 4 = 10, então x = 3."]'::jsonb,
    '["Trocar o sinal indevidamente ao mover termos.", "Esquecer de dividir pelo coeficiente da incógnita.", "Montar a equação errada a partir do problema."]'::jsonb,
    'basic'::public.plan_slug,
    1,
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
delete from public.flashcards where content_id in (select id from public.contents where slug = 'matematica-equacao-do-primeiro-grau-001');
insert into public.flashcards (content_id, question, answer, sort_order)
select id, 'O que é equação do 1º grau?', 'É uma igualdade com incógnita de expoente 1.', 0
from public.contents where slug = 'matematica-equacao-do-primeiro-grau-001';
insert into public.flashcards (content_id, question, answer, sort_order)
select id, 'O que significa resolver a equação?', 'Encontrar o valor da incógnita.', 1
from public.contents where slug = 'matematica-equacao-do-primeiro-grau-001';
insert into public.flashcards (content_id, question, answer, sort_order)
select id, 'Como conferir a resposta?', 'Substituindo a incógnita no enunciado original.', 2
from public.contents where slug = 'matematica-equacao-do-primeiro-grau-001';
insert into public.flashcards (content_id, question, answer, sort_order)
select id, 'Qual o maior cuidado?', 'Sinais ao transpor termos.', 3
from public.contents where slug = 'matematica-equacao-do-primeiro-grau-001';
insert into public.flashcards (content_id, question, answer, sort_order)
select id, 'Problemas exigem o quê?', 'Montar a equação correta.', 4
from public.contents where slug = 'matematica-equacao-do-primeiro-grau-001';
insert into public.flashcards (content_id, question, answer, sort_order)
select id, 'O que fazer com parênteses?', 'Aplicar a distributiva.', 5
from public.contents where slug = 'matematica-equacao-do-primeiro-grau-001';
delete from public.questions where content_id in (select id from public.contents where slug = 'matematica-equacao-do-primeiro-grau-001');
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'A solução de x + 7 = 15 é:', '["6", "7", "8", "9"]'::jsonb, 2, 'x = 15 - 7 = 8.', 0
from public.contents where slug = 'matematica-equacao-do-primeiro-grau-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'A solução de 3x = 27 é:', '["6", "7", "8", "9"]'::jsonb, 3, 'x = 27 ÷ 3 = 9.', 1
from public.contents where slug = 'matematica-equacao-do-primeiro-grau-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'A solução de 2x + 4 = 18 é:', '["6", "7", "8", "9"]'::jsonb, 1, '2x = 14, então x = 7.', 2
from public.contents where slug = 'matematica-equacao-do-primeiro-grau-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'A solução de 5x - 10 = 20 é:', '["4", "5", "6", "7"]'::jsonb, 2, '5x = 30, logo x = 6.', 3
from public.contents where slug = 'matematica-equacao-do-primeiro-grau-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'Um número somado com 9 resulta em 21. Esse número é:', '["10", "11", "12", "13"]'::jsonb, 2, 'x + 9 = 21, então x = 12.', 4
from public.contents where slug = 'matematica-equacao-do-primeiro-grau-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'O dobro de um número menos 3 é 11. Esse número é:', '["5", "6", "7", "8"]'::jsonb, 2, '2x - 3 = 11, então 2x = 14 e x = 7.', 5
from public.contents where slug = 'matematica-equacao-do-primeiro-grau-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'A solução de 4(x - 1) = 12 é:', '["2", "3", "4", "5"]'::jsonb, 2, 'x - 1 = 3, então x = 4.', 6
from public.contents where slug = 'matematica-equacao-do-primeiro-grau-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'A solução de x/3 = 5 é:', '["8", "10", "12", "15"]'::jsonb, 3, 'x = 15.', 7
from public.contents where slug = 'matematica-equacao-do-primeiro-grau-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'Em uma equação, o objetivo é:', '["somar todos os termos", "descobrir o valor da incógnita", "eliminar o sinal de igual", "multiplicar números"]'::jsonb, 1, 'Resolver a equação é encontrar a incógnita.', 8
from public.contents where slug = 'matematica-equacao-do-primeiro-grau-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'A melhor forma de confirmar a solução é:', '["adivinhar outro número", "substituir no problema original", "mudar os sinais", "arredondar"]'::jsonb, 1, 'A substituição verifica se a igualdade é verdadeira.', 9
from public.contents where slug = 'matematica-equacao-do-primeiro-grau-001';
with inserted as (
  insert into public.contents (
    slug, source_id, discipline, topic, name, summary, theory, theory_blocks, key_points, proof_tips, examples, common_errors,
    minimum_plan, required_plan_rank, is_published
  ) values (
    'matematica-fracoes-e-decimais-001',
    'matematica-fracoes-e-decimais-001',
    'Matemática',
    'Frações e decimais',
    'Frações e decimais',
    'Frações representam partes de um todo ou divisões entre números. Decimais representam essas quantidades em forma de vírgula. A VUNESP cobra conversão entre fração e decimal, comparação, operações e interpretação em situações do dia a dia.',
    'Fração é uma forma de representar partes de um inteiro. Em 3/4, o número 3 é o numerador e indica quantas partes foram consideradas; o número 4 é o denominador e indica em quantas partes iguais o todo foi dividido.

Frações equivalentes são aquelas que representam a mesma quantidade, mesmo com números diferentes, como 1/2, 2/4 e 4/8. Simplificar uma fração é dividi-la pelo mesmo número no numerador e no denominador até obter a forma mais simples.

Para somar ou subtrair frações com mesmo denominador, somam-se ou subtraem-se os numeradores e conserva-se o denominador. Com denominadores diferentes, é preciso reduzir a um denominador comum. Na multiplicação, multiplicam-se numeradores entre si e denominadores entre si. Na divisão, multiplica-se a primeira fração pelo inverso da segunda.

Números decimais representam partes da unidade em base 10. Exemplo: 0,5 representa metade; 0,25 representa vinte e cinco centésimos. Para transformar fração em decimal, basta dividir o numerador pelo denominador. Para transformar decimal em fração, escreve-se o número sobre uma potência de 10 e simplifica-se.

A comparação entre frações e decimais exige atenção. Exemplo: 0,75 = 75/100 = 3/4. Em prova, a banca também pode misturar porcentagem com decimais e frações. Saber equivalências simples economiza tempo: 1/2 = 0,5 = 50%; 1/4 = 0,25 = 25%; 3/4 = 0,75 = 75%.

Na VUNESP, o tema aparece em contas, problemas de consumo, dinheiro, medidas e porcentagens. A chave é dominar equivalências e operações com segurança.',
    '[{"titulo": "Conceito", "texto": "Frações e decimais são formas diferentes de representar partes de um inteiro ou quocientes."}, {"titulo": "Regras", "texto": "Frações equivalentes têm o mesmo valor. Soma e subtração de frações exigem denominador comum. Decimal pode ser convertido em fração e vice-versa."}, {"titulo": "Como cai na prova (VUNESP)", "texto": "A VUNESP cobra comparação, operações, conversões e aplicação prática em dinheiro, medidas e porcentagens."}]'::jsonb,
    '["Frações representam partes de um todo.", "Decimais representam partes em base 10.", "Frações equivalentes têm o mesmo valor.", "Soma de frações com denominadores diferentes exige denominador comum.", "Fração, decimal e porcentagem se relacionam diretamente."]'::jsonb,
    '["Memorize equivalências simples como 1/2, 1/4 e 3/4.", "Simplifique frações sempre que possível.", "Em decimal, alinhe a vírgula nas contas.", "Pegadinhas clássicas da VUNESP: confundir numerador com denominador e errar conversão."]'::jsonb,
    '["1/2 = 0,5.", "3/4 = 0,75.", "0,2 = 1/5."]'::jsonb,
    '["Somar numerador com denominador na mesma conta.", "Esquecer de tirar denominador comum.", "Desalinhar a vírgula ao somar decimais."]'::jsonb,
    'basic'::public.plan_slug,
    1,
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
delete from public.flashcards where content_id in (select id from public.contents where slug = 'matematica-fracoes-e-decimais-001');
insert into public.flashcards (content_id, question, answer, sort_order)
select id, 'O que é denominador?', 'É o número que indica em quantas partes o todo foi dividido.', 0
from public.contents where slug = 'matematica-fracoes-e-decimais-001';
insert into public.flashcards (content_id, question, answer, sort_order)
select id, 'Como somar frações com denominadores diferentes?', 'Usando denominador comum.', 1
from public.contents where slug = 'matematica-fracoes-e-decimais-001';
insert into public.flashcards (content_id, question, answer, sort_order)
select id, 'Quanto vale 1/2 em decimal?', '0,5.', 2
from public.contents where slug = 'matematica-fracoes-e-decimais-001';
insert into public.flashcards (content_id, question, answer, sort_order)
select id, 'Quanto vale 0,25 em fração simplificada?', '1/4.', 3
from public.contents where slug = 'matematica-fracoes-e-decimais-001';
insert into public.flashcards (content_id, question, answer, sort_order)
select id, 'Como dividir frações?', 'Multiplicando a primeira pelo inverso da segunda.', 4
from public.contents where slug = 'matematica-fracoes-e-decimais-001';
insert into public.flashcards (content_id, question, answer, sort_order)
select id, 'O que ajuda muito em prova?', 'Saber equivalências rápidas entre fração, decimal e porcentagem.', 5
from public.contents where slug = 'matematica-fracoes-e-decimais-001';
delete from public.questions where content_id in (select id from public.contents where slug = 'matematica-fracoes-e-decimais-001');
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'A fração equivalente a 0,5 é:', '["1/3", "1/2", "2/3", "3/4"]'::jsonb, 1, '0,5 representa metade, isto é, 1/2.', 0
from public.contents where slug = 'matematica-fracoes-e-decimais-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'O resultado de 1/4 + 1/4 é:', '["1/2", "1/4", "2/8", "3/4"]'::jsonb, 0, 'Mesmo denominador: 1 + 1 = 2, então 2/4 = 1/2.', 1
from public.contents where slug = 'matematica-fracoes-e-decimais-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'A forma decimal de 3/10 é:', '["0,03", "0,3", "3,0", "0,13"]'::jsonb, 1, '3 décimos correspondem a 0,3.', 2
from public.contents where slug = 'matematica-fracoes-e-decimais-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'O resultado de 2/3 x 3/4 é:', '["1/2", "5/7", "6/7", "3/2"]'::jsonb, 0, 'Multiplica-se numerador por numerador e denominador por denominador: 6/12 = 1/2.', 3
from public.contents where slug = 'matematica-fracoes-e-decimais-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'A fração 4/8 simplificada é:', '["1/4", "1/2", "2/3", "3/4"]'::jsonb, 1, 'Dividindo numerador e denominador por 4, obtém-se 1/2.', 4
from public.contents where slug = 'matematica-fracoes-e-decimais-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'O número decimal 0,75 corresponde a:', '["1/2", "2/3", "3/4", "4/5"]'::jsonb, 2, '0,75 = 75/100 = 3/4.', 5
from public.contents where slug = 'matematica-fracoes-e-decimais-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'O resultado de 1,2 + 0,35 é:', '["1,45", "1,55", "1,65", "2,55"]'::jsonb, 1, 'Alinhando a vírgula: 1,20 + 0,35 = 1,55.', 6
from public.contents where slug = 'matematica-fracoes-e-decimais-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'Dividir 1/2 por 1/4 é o mesmo que:', '["1/8", "1/4", "2", "4"]'::jsonb, 2, '1/2 ÷ 1/4 = 1/2 x 4/1 = 4/2 = 2.', 7
from public.contents where slug = 'matematica-fracoes-e-decimais-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'Qual é maior?', '["0,4", "2/5", "São iguais", "Não é possível comparar"]'::jsonb, 2, '2/5 = 0,4. Portanto, são iguais.', 8
from public.contents where slug = 'matematica-fracoes-e-decimais-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'Se uma pizza foi dividida em 8 partes e alguém comeu 3, a fração correspondente é:', '["3/8", "5/8", "8/3", "1/3"]'::jsonb, 0, 'Foram consumidas 3 das 8 partes: 3/8.', 9
from public.contents where slug = 'matematica-fracoes-e-decimais-001';
with inserted as (
  insert into public.contents (
    slug, source_id, discipline, topic, name, summary, theory, theory_blocks, key_points, proof_tips, examples, common_errors,
    minimum_plan, required_plan_rank, is_published
  ) values (
    'matematica-geometria-basica-001',
    'matematica-geometria-basica-001',
    'Matemática',
    'Geometria básica',
    'Geometria básica',
    'Geometria básica estuda formas, ângulos, retas e figuras planas e espaciais. A VUNESP cobra reconhecimento de figuras, propriedades simples, classificação de triângulos e quadriláteros e noções de paralelismo e perpendicularidade.',
    'Geometria básica trata do espaço, das formas e das relações entre elementos geométricos. Ponto não tem dimensão; reta tem uma dimensão e se estende infinitamente; plano tem duas dimensões.

Ângulo é a abertura entre duas semirretas com mesma origem. Pode ser agudo (menor que 90°), reto (igual a 90°), obtuso (maior que 90° e menor que 180°) ou raso (180°).

Entre as figuras planas mais importantes estão triângulos, quadrados, retângulos, losangos, trapézios e círculos. Triângulos podem ser classificados quanto aos lados em equilátero, isósceles e escaleno; quanto aos ângulos em acutângulo, retângulo e obtusângulo.

Quadrado tem quatro lados iguais e quatro ângulos retos. Retângulo tem lados opostos iguais e quatro ângulos retos. Losango tem quatro lados iguais. Trapézio tem pelo menos um par de lados paralelos.

Retas paralelas nunca se cruzam no plano. Retas perpendiculares se cruzam formando ângulo de 90°.

A VUNESP costuma cobrar conceitos básicos, identificação de propriedades e pequenas aplicações. É essencial saber reconhecer as características de cada figura.',
    '[{"titulo": "Conceito", "texto": "Geometria básica estuda formas, dimensões e relações espaciais."}, {"titulo": "Regras", "texto": "Cada figura tem propriedades próprias: número de lados, tipos de ângulos, paralelismo e medidas. Triângulos e quadriláteros aparecem com frequência."}, {"titulo": "Como cai na prova (VUNESP)", "texto": "A VUNESP cobra classificação de figuras, tipos de ângulos, propriedades de triângulos e quadriláteros e noções espaciais simples."}]'::jsonb,
    '["Ângulo reto mede 90°.", "Triângulo tem 3 lados.", "Quadrado tem 4 lados iguais e 4 ângulos retos.", "Retas paralelas não se encontram.", "Retas perpendiculares formam 90°."]'::jsonb,
    '["Memorize propriedades básicas das figuras mais cobradas.", "Desenhe mentalmente a figura ao ler a questão.", "Observe se a classificação é pelos lados ou pelos ângulos.", "Pegadinhas clássicas da VUNESP: confundir quadrado com losango e triângulo isósceles com equilátero."]'::jsonb,
    '["Quadrado: lados iguais e ângulos retos.", "Triângulo retângulo: possui um ângulo de 90°.", "Trapézio: tem pelo menos um par de lados paralelos."]'::jsonb,
    '["Trocar propriedades de figuras parecidas.", "Esquecer que retângulo também possui ângulos retos.", "Confundir classificação do triângulo por lados e por ângulos."]'::jsonb,
    'basic'::public.plan_slug,
    1,
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
delete from public.flashcards where content_id in (select id from public.contents where slug = 'matematica-geometria-basica-001');
insert into public.flashcards (content_id, question, answer, sort_order)
select id, 'O que é ângulo reto?', 'Ângulo de 90°.', 0
from public.contents where slug = 'matematica-geometria-basica-001';
insert into public.flashcards (content_id, question, answer, sort_order)
select id, 'Como é o triângulo equilátero?', 'Tem três lados iguais.', 1
from public.contents where slug = 'matematica-geometria-basica-001';
insert into public.flashcards (content_id, question, answer, sort_order)
select id, 'Como é o triângulo isósceles?', 'Tem dois lados iguais.', 2
from public.contents where slug = 'matematica-geometria-basica-001';
insert into public.flashcards (content_id, question, answer, sort_order)
select id, 'O que são retas paralelas?', 'Retas que não se cruzam.', 3
from public.contents where slug = 'matematica-geometria-basica-001';
insert into public.flashcards (content_id, question, answer, sort_order)
select id, 'O que são retas perpendiculares?', 'Retas que se cruzam formando 90°.', 4
from public.contents where slug = 'matematica-geometria-basica-001';
insert into public.flashcards (content_id, question, answer, sort_order)
select id, 'Como é o quadrado?', 'Tem quatro lados iguais e quatro ângulos retos.', 5
from public.contents where slug = 'matematica-geometria-basica-001';
delete from public.questions where content_id in (select id from public.contents where slug = 'matematica-geometria-basica-001');
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'Um ângulo de 90° é chamado de:', '["agudo", "reto", "obtuso", "raso"]'::jsonb, 1, 'Ângulo reto mede 90°.', 0
from public.contents where slug = 'matematica-geometria-basica-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'Figura com três lados é:', '["quadrado", "círculo", "triângulo", "trapézio"]'::jsonb, 2, 'Triângulo é a figura plana com três lados.', 1
from public.contents where slug = 'matematica-geometria-basica-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'O quadrado possui:', '["quatro lados diferentes", "quatro lados iguais e quatro ângulos retos", "apenas dois lados iguais", "nenhum ângulo reto"]'::jsonb, 1, 'Essa é a propriedade do quadrado.', 2
from public.contents where slug = 'matematica-geometria-basica-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'Um triângulo com dois lados iguais é:', '["equilátero", "isósceles", "escaleno", "retângulo"]'::jsonb, 1, 'Isósceles possui dois lados iguais.', 3
from public.contents where slug = 'matematica-geometria-basica-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'Retas que nunca se cruzam no plano são:', '["perpendiculares", "paralelas", "concorrentes", "oblíquas"]'::jsonb, 1, 'Definição de paralelas.', 4
from public.contents where slug = 'matematica-geometria-basica-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'Retas que se cruzam formando 90° são:', '["paralelas", "perpendiculares", "coincidentes", "curvas"]'::jsonb, 1, 'Perpendiculares formam ângulo reto.', 5
from public.contents where slug = 'matematica-geometria-basica-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'O triângulo equilátero possui:', '["um lado maior", "dois lados iguais", "três lados iguais", "nenhum lado igual"]'::jsonb, 2, 'Todos os lados são iguais.', 6
from public.contents where slug = 'matematica-geometria-basica-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'Um ângulo maior que 90° e menor que 180° é:', '["agudo", "reto", "obtuso", "completo"]'::jsonb, 2, 'Essa é a definição de ângulo obtuso.', 7
from public.contents where slug = 'matematica-geometria-basica-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'O trapézio é uma figura que possui:', '["dois pares de lados paralelos necessariamente", "pelo menos um par de lados paralelos", "todos os lados iguais", "três lados"]'::jsonb, 1, 'Essa é a característica principal do trapézio.', 8
from public.contents where slug = 'matematica-geometria-basica-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'A maior atenção em geometria básica deve ser com:', '["nomes parecidos e propriedades das figuras", "apenas contas", "porcentagens", "gráficos de linhas"]'::jsonb, 0, 'O reconhecimento correto da figura é a base do tema.', 9
from public.contents where slug = 'matematica-geometria-basica-001';
with inserted as (
  insert into public.contents (
    slug, source_id, discipline, topic, name, summary, theory, theory_blocks, key_points, proof_tips, examples, common_errors,
    minimum_plan, required_plan_rank, is_published
  ) values (
    'matematica-media-aritmetica-001',
    'matematica-media-aritmetica-001',
    'Matemática',
    'Média aritmética',
    'Média aritmética',
    'Média aritmética é a soma dos valores dividida pela quantidade de valores. A VUNESP cobra média simples, média ponderada básica e problemas em que se pede valor faltante para atingir determinada média.',
    'Média aritmética simples é o quociente entre a soma dos valores e a quantidade de valores. Exemplo: a média de 6, 8 e 10 é (6 + 8 + 10) ÷ 3 = 8.

Esse conceito aparece em notas, salários, idades, pontuações e dados estatísticos. A interpretação correta é importante: a média representa um valor de equilíbrio.

Também pode surgir a média ponderada, em que cada valor possui um peso. Exemplo: se uma prova vale peso 2 e outra vale peso 3, a média depende desses pesos. Embora o edital básico cobre muito a média simples, a VUNESP pode explorar peso em situações práticas.

Outro tipo comum de questão pede valor desconhecido. Exemplo: a média de 4 números é 7. Se três deles são 5, 7 e 8, qual é o quarto? Primeiro calcula-se a soma total: 4 x 7 = 28. Depois subtrai-se a soma conhecida: 28 - 20 = 8.

A banca também gosta de misturar média com tabelas e contexto. Por isso, o candidato deve organizar os dados antes de somar.

Em resumo, média aritmética depende de três passos: somar corretamente, contar quantos valores existem e dividir pelo total de valores.',
    '[{"titulo": "Conceito", "texto": "Média aritmética simples é a soma dos valores dividida pela quantidade de valores."}, {"titulo": "Regras", "texto": "Some todos os dados, conte quantos são e divida. Em problemas com valor faltante, use a soma total correspondente à média desejada."}, {"titulo": "Como cai na prova (VUNESP)", "texto": "A VUNESP cobra média de notas, idades, salários, quantidades e problemas com valor desconhecido."}]'::jsonb,
    '["Média = soma ÷ quantidade.", "É preciso contar corretamente a quantidade de termos.", "Média não é o maior nem o menor valor.", "Valor faltante pode ser achado pela soma total.", "Organização dos dados evita erro."]'::jsonb,
    '["Some com calma antes de dividir.", "Confira quantos termos realmente entram na média.", "Em questão com incógnita, calcule a soma total desejada.", "Pegadinhas clássicas da VUNESP: esquecer um valor ou dividir por quantidade errada."]'::jsonb,
    '["Média de 4, 6 e 8 = 6.", "Se a média de 5 números é 10, a soma é 50.", "Para média 7 em 4 notas, a soma total deve ser 28."]'::jsonb,
    '["Dividir pela quantidade errada.", "Esquecer um dos dados da soma.", "Confundir média com moda ou mediana."]'::jsonb,
    'basic'::public.plan_slug,
    1,
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
delete from public.flashcards where content_id in (select id from public.contents where slug = 'matematica-media-aritmetica-001');
insert into public.flashcards (content_id, question, answer, sort_order)
select id, 'Como calcular a média simples?', 'Somando os valores e dividindo pela quantidade.', 0
from public.contents where slug = 'matematica-media-aritmetica-001';
insert into public.flashcards (content_id, question, answer, sort_order)
select id, 'Se a média de 5 números é 8, qual é a soma?', '40.', 1
from public.contents where slug = 'matematica-media-aritmetica-001';
insert into public.flashcards (content_id, question, answer, sort_order)
select id, 'Média é o maior valor?', 'Não necessariamente.', 2
from public.contents where slug = 'matematica-media-aritmetica-001';
insert into public.flashcards (content_id, question, answer, sort_order)
select id, 'O que fazer em média com valor faltante?', 'Usar a soma total esperada e descobrir o termo que falta.', 3
from public.contents where slug = 'matematica-media-aritmetica-001';
insert into public.flashcards (content_id, question, answer, sort_order)
select id, 'Qual erro comum em média?', 'Dividir por quantidade errada.', 4
from public.contents where slug = 'matematica-media-aritmetica-001';
insert into public.flashcards (content_id, question, answer, sort_order)
select id, 'Onde média cai muito?', 'Em notas, idades e dados estatísticos.', 5
from public.contents where slug = 'matematica-media-aritmetica-001';
delete from public.questions where content_id in (select id from public.contents where slug = 'matematica-media-aritmetica-001');
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'A média aritmética de 4, 6 e 8 é:', '["5", "6", "7", "8"]'::jsonb, 1, 'Somando: 4 + 6 + 8 = 18. Dividindo por 3: 6.', 0
from public.contents where slug = 'matematica-media-aritmetica-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'A média de 10, 12, 14 e 16 é:', '["12", "13", "14", "15"]'::jsonb, 1, 'Soma = 52. 52 ÷ 4 = 13.', 1
from public.contents where slug = 'matematica-media-aritmetica-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'Se a média de 5 números é 9, a soma desses números é:', '["36", "40", "45", "50"]'::jsonb, 2, 'Soma = média x quantidade = 9 x 5 = 45.', 2
from public.contents where slug = 'matematica-media-aritmetica-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'As notas 6, 7, 8 e x têm média 7. O valor de x é:', '["6", "7", "8", "9"]'::jsonb, 1, 'Soma total = 4 x 7 = 28. Soma conhecida = 21. Logo, x = 7.', 3
from public.contents where slug = 'matematica-media-aritmetica-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'A média de 3, 5, 7, 9 e 11 é:', '["6", "7", "8", "9"]'::jsonb, 1, 'Soma = 35. 35 ÷ 5 = 7.', 4
from public.contents where slug = 'matematica-media-aritmetica-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'Se três idades têm média 20 anos, então a soma delas é:', '["40", "50", "60", "70"]'::jsonb, 2, '20 x 3 = 60.', 5
from public.contents where slug = 'matematica-media-aritmetica-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'Uma média aritmética é sempre:', '["o menor valor do conjunto", "a soma dos valores", "a soma dividida pela quantidade", "o valor mais repetido"]'::jsonb, 2, 'Essa é a definição de média aritmética.', 6
from public.contents where slug = 'matematica-media-aritmetica-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'Se a média de 2 números é 15 e um deles é 11, o outro é:', '["17", "18", "19", "20"]'::jsonb, 2, 'Soma total = 30. Então o outro é 30 - 11 = 19.', 7
from public.contents where slug = 'matematica-media-aritmetica-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'Qual é a média de 2, 2, 6 e 10?', '["4", "5", "6", "7"]'::jsonb, 1, 'Soma = 20. Dividindo por 4: 5.', 8
from public.contents where slug = 'matematica-media-aritmetica-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'A principal atenção em média é:', '["somar e contar corretamente", "decorar palavras difíceis", "escolher o maior número", "multiplicar tudo"]'::jsonb, 0, 'Sem soma e contagem corretas, a média sai errada.', 9
from public.contents where slug = 'matematica-media-aritmetica-001';
with inserted as (
  insert into public.contents (
    slug, source_id, discipline, topic, name, summary, theory, theory_blocks, key_points, proof_tips, examples, common_errors,
    minimum_plan, required_plan_rank, is_published
  ) values (
    'matematica-medidas-001',
    'matematica-medidas-001',
    'Matemática',
    'Medidas (tempo, massa, etc.)',
    'Medidas (tempo, massa, etc.)',
    'Medidas aparecem em comprimento, massa, capacidade, tempo, área e volume. A VUNESP cobra muito conversão entre unidades, problemas do cotidiano e interpretação correta da relação entre unidades maiores e menores.',
    'As grandezas medidas no dia a dia exigem domínio das unidades e de suas conversões. No sistema métrico decimal, comprimento usa metro, massa usa grama, capacidade usa litro. Entre unidades vizinhas, a conversão costuma seguir múltiplos de 10, 100 ou 1000, conforme a grandeza.

Em comprimento: km, hm, dam, m, dm, cm, mm. Ao descer na escala, multiplica-se por 10 a cada passo; ao subir, divide-se por 10. Em massa: kg, hg, dag, g, dg, cg, mg. Em capacidade: kL, hL, daL, L, dL, cL, mL.

Tempo exige atenção especial porque nem tudo é decimal. 1 hora = 60 minutos; 1 minuto = 60 segundos; 1 dia = 24 horas. Em problemas com relógio, viagens e duração, a banca costuma explorar essa diferença.

Também aparecem conversões simples como 1 kg = 1000 g, 1 L = 1000 mL, 1 m = 100 cm. Em problemas práticos, a leitura correta da unidade é tão importante quanto a conta.

A VUNESP cobra muito situações de rotina: receitas, consumo, percursos, duração, peso e capacidade. A organização das unidades é o passo principal para evitar erro.',
    '[{"titulo": "Conceito", "texto": "Medidas quantificam grandezas como comprimento, massa, capacidade e tempo."}, {"titulo": "Regras", "texto": "No sistema métrico, as conversões seguem escala decimal. Tempo usa base 60 em hora, minuto e segundo."}, {"titulo": "Como cai na prova (VUNESP)", "texto": "A VUNESP cobra conversões simples, problemas do cotidiano e comparação de unidades."}]'::jsonb,
    '["1 m = 100 cm.", "1 kg = 1000 g.", "1 L = 1000 mL.", "1 h = 60 min.", "Tempo não segue escala decimal simples."]'::jsonb,
    '["Converta tudo para a mesma unidade antes de calcular.", "No tempo, lembre-se de que hora e minuto seguem base 60.", "Escreva a unidade em cada etapa.", "Pegadinhas clássicas da VUNESP: misturar unidades sem converter."]'::jsonb,
    '["2,5 kg = 2500 g.", "3 m = 300 cm.", "2 h 30 min = 150 min."]'::jsonb,
    '["Tratar hora como se fosse base 10.", "Somar unidades diferentes sem converter.", "Esquecer fator 1000 em kg e L."]'::jsonb,
    'basic'::public.plan_slug,
    1,
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
delete from public.flashcards where content_id in (select id from public.contents where slug = 'matematica-medidas-001');
insert into public.flashcards (content_id, question, answer, sort_order)
select id, 'Quanto vale 1 kg em gramas?', '1000 g.', 0
from public.contents where slug = 'matematica-medidas-001';
insert into public.flashcards (content_id, question, answer, sort_order)
select id, 'Quanto vale 1 L em mL?', '1000 mL.', 1
from public.contents where slug = 'matematica-medidas-001';
insert into public.flashcards (content_id, question, answer, sort_order)
select id, 'Quanto vale 1 metro em centímetros?', '100 cm.', 2
from public.contents where slug = 'matematica-medidas-001';
insert into public.flashcards (content_id, question, answer, sort_order)
select id, 'Quanto vale 1 hora em minutos?', '60 min.', 3
from public.contents where slug = 'matematica-medidas-001';
insert into public.flashcards (content_id, question, answer, sort_order)
select id, 'Qual o maior cuidado em tempo?', 'Lembrar da base 60.', 4
from public.contents where slug = 'matematica-medidas-001';
insert into public.flashcards (content_id, question, answer, sort_order)
select id, 'Qual o primeiro passo em problemas com medidas?', 'Colocar tudo na mesma unidade.', 5
from public.contents where slug = 'matematica-medidas-001';
delete from public.questions where content_id in (select id from public.contents where slug = 'matematica-medidas-001');
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, '3 kg correspondem a:', '["30 g", "300 g", "3000 g", "30000 g"]'::jsonb, 2, '1 kg = 1000 g, então 3 kg = 3000 g.', 0
from public.contents where slug = 'matematica-medidas-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, '250 cm correspondem a:', '["2,5 m", "25 m", "0,25 m", "2500 m"]'::jsonb, 0, '250 cm ÷ 100 = 2,5 m.', 1
from public.contents where slug = 'matematica-medidas-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, '2 litros equivalem a:', '["20 mL", "200 mL", "2000 mL", "20000 mL"]'::jsonb, 2, '1 L = 1000 mL, então 2 L = 2000 mL.', 2
from public.contents where slug = 'matematica-medidas-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, '1 hora e 20 minutos correspondem a:', '["80 min", "100 min", "120 min", "140 min"]'::jsonb, 0, '1 hora = 60 min. 60 + 20 = 80 min.', 3
from public.contents where slug = 'matematica-medidas-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'Qual unidade mede massa?', '["litro", "metro", "grama", "segundo"]'::jsonb, 2, 'Grama é unidade de massa.', 4
from public.contents where slug = 'matematica-medidas-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, '5 m correspondem a:', '["50 cm", "500 cm", "5000 cm", "0,5 cm"]'::jsonb, 1, '1 m = 100 cm. 5 m = 500 cm.', 5
from public.contents where slug = 'matematica-medidas-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, '90 minutos equivalem a:', '["1 h 10 min", "1 h 20 min", "1 h 30 min", "2 h"]'::jsonb, 2, '60 min = 1 h, restando 30 min.', 6
from public.contents where slug = 'matematica-medidas-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, '0,5 kg equivalem a:', '["50 g", "500 g", "5000 g", "5 g"]'::jsonb, 1, '0,5 kg = 500 g.', 7
from public.contents where slug = 'matematica-medidas-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'Antes de somar 2 m e 35 cm, deve-se:', '["somar diretamente", "converter para mesma unidade", "multiplicar por 10", "subtrair"]'::jsonb, 1, 'Unidades diferentes devem ser convertidas antes.', 8
from public.contents where slug = 'matematica-medidas-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'A maior pegadinha em medidas é:', '["usar base 60 no metro", "misturar unidades sem converter", "escrever a unidade", "usar regra de três"]'::jsonb, 1, 'Muitos erros surgem por falta de padronização da unidade.', 9
from public.contents where slug = 'matematica-medidas-001';
with inserted as (
  insert into public.contents (
    slug, source_id, discipline, topic, name, summary, theory, theory_blocks, key_points, proof_tips, examples, common_errors,
    minimum_plan, required_plan_rank, is_published
  ) values (
    'matematica-mmc-e-mdc-001',
    'matematica-mmc-e-mdc-001',
    'Matemática',
    'MMC e MDC',
    'MMC e MDC',
    'MMC é o mínimo múltiplo comum; MDC é o máximo divisor comum. O MMC é muito usado em frações e problemas de coincidência de eventos. O MDC é usado em divisões em partes iguais e simplificação. A VUNESP cobra ambos em situações práticas.',
    'MMC é o menor número, diferente de zero, que é múltiplo comum de dois ou mais números. Exemplo: múltiplos de 4 são 4, 8, 12, 16... múltiplos de 6 são 6, 12, 18... O menor múltiplo comum é 12.

MDC é o maior número que divide dois ou mais números ao mesmo tempo. Exemplo: divisores de 12 são 1, 2, 3, 4, 6, 12; divisores de 18 são 1, 2, 3, 6, 9, 18. O maior divisor comum é 6.

O cálculo pode ser feito por decomposição em fatores primos. Para o MMC, consideram-se todos os fatores primos com os maiores expoentes. Para o MDC, consideram-se apenas os fatores comuns com menores expoentes.

Na prática, MMC aparece muito em problemas de coincidência cíclica, como semáforos, alarmes, ônibus, voltas de corredores e encontros periódicos. MDC aparece em problemas de dividir objetos em grupos iguais, montar pacotes idênticos e simplificar frações.

A VUNESP costuma diferenciar os dois pelo contexto. Se a pergunta envolve ''de quanto em quanto tempo voltarão a coincidir?'', a tendência é usar MMC. Se pergunta ''qual o maior tamanho ou quantidade para dividir sem sobrar?'', a tendência é usar MDC.

Em resumo, MMC junta ciclos; MDC divide em partes máximas iguais.',
    '[{"titulo": "Conceito", "texto": "MMC é o menor múltiplo comum; MDC é o maior divisor comum."}, {"titulo": "Regras", "texto": "O MMC usa todos os fatores primos necessários. O MDC usa apenas os fatores comuns. O contexto indica qual deles aplicar."}, {"titulo": "Como cai na prova (VUNESP)", "texto": "A VUNESP cobra coincidência de eventos, frações, agrupamentos e divisões exatas em partes iguais."}]'::jsonb,
    '["MMC serve para coincidência e denominador comum.", "MDC serve para divisão em partes iguais máximas.", "Decomposição em primos facilita o cálculo.", "O enunciado geralmente indica qual conceito usar.", "MMC e MDC aparecem muito em problemas práticos."]'::jsonb,
    '["Leia a pergunta final antes de decidir o método.", "Se a ideia for coincidir no tempo, pense em MMC.", "Se a ideia for dividir sem sobrar, pense em MDC.", "Pegadinhas clássicas da VUNESP: usar MMC no lugar de MDC e vice-versa."]'::jsonb,
    '["MMC de 4 e 6 = 12.", "MDC de 12 e 18 = 6.", "Se dois alarmes tocam a cada 6 e 8 min, voltarão a tocar juntos em 24 min."]'::jsonb,
    '["Confundir múltiplo com divisor.", "Escolher MMC quando o problema pede a maior divisão exata.", "Errar a decomposição em primos."]'::jsonb,
    'basic'::public.plan_slug,
    1,
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
delete from public.flashcards where content_id in (select id from public.contents where slug = 'matematica-mmc-e-mdc-001');
insert into public.flashcards (content_id, question, answer, sort_order)
select id, 'O que é MMC?', 'É o menor múltiplo comum.', 0
from public.contents where slug = 'matematica-mmc-e-mdc-001';
insert into public.flashcards (content_id, question, answer, sort_order)
select id, 'O que é MDC?', 'É o maior divisor comum.', 1
from public.contents where slug = 'matematica-mmc-e-mdc-001';
insert into public.flashcards (content_id, question, answer, sort_order)
select id, 'Quando usar MMC?', 'Em coincidência de ciclos e denominador comum.', 2
from public.contents where slug = 'matematica-mmc-e-mdc-001';
insert into public.flashcards (content_id, question, answer, sort_order)
select id, 'Quando usar MDC?', 'Em divisão em partes iguais máximas.', 3
from public.contents where slug = 'matematica-mmc-e-mdc-001';
insert into public.flashcards (content_id, question, answer, sort_order)
select id, 'Como calcular mais facilmente?', 'Por decomposição em fatores primos.', 4
from public.contents where slug = 'matematica-mmc-e-mdc-001';
insert into public.flashcards (content_id, question, answer, sort_order)
select id, 'Qual é a maior pegadinha?', 'Trocar MMC por MDC.', 5
from public.contents where slug = 'matematica-mmc-e-mdc-001';
delete from public.questions where content_id in (select id from public.contents where slug = 'matematica-mmc-e-mdc-001');
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'O MMC de 4 e 6 é:', '["10", "12", "18", "24"]'::jsonb, 1, '12 é o menor múltiplo comum.', 0
from public.contents where slug = 'matematica-mmc-e-mdc-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'O MDC de 12 e 18 é:', '["3", "4", "6", "9"]'::jsonb, 2, '6 é o maior divisor comum.', 1
from public.contents where slug = 'matematica-mmc-e-mdc-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'Dois alarmes tocam de 8 em 8 minutos e de 12 em 12 minutos. Se tocaram juntos agora, tocarão juntos novamente em:', '["20 min", "24 min", "32 min", "48 min"]'::jsonb, 1, 'MMC de 8 e 12 = 24.', 2
from public.contents where slug = 'matematica-mmc-e-mdc-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'Para dividir 24 e 36 em partes iguais máximas, usa-se:', '["MMC", "MDC", "porcentagem", "média"]'::jsonb, 1, 'Divisão em partes iguais máximas indica MDC.', 3
from public.contents where slug = 'matematica-mmc-e-mdc-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'O MDC de 20 e 30 é:', '["5", "10", "15", "20"]'::jsonb, 1, 'Os divisores comuns máximos levam ao 10.', 4
from public.contents where slug = 'matematica-mmc-e-mdc-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'O MMC de 5 e 7 é:', '["12", "30", "35", "70"]'::jsonb, 2, 'Como são primos entre si, MMC = 5 x 7 = 35.', 5
from public.contents where slug = 'matematica-mmc-e-mdc-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'Na soma de frações com denominadores diferentes, costuma-se usar:', '["MDC", "MMC", "média", "raiz"]'::jsonb, 1, 'O MMC ajuda a obter denominador comum.', 6
from public.contents where slug = 'matematica-mmc-e-mdc-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'Qual pergunta sugere MDC?', '["Quando coincidem de novo?", "Qual o maior tamanho para dividir sem sobra?", "Qual a média do grupo?", "Qual o desconto percentual?"]'::jsonb, 1, 'Essa formulação indica maior divisor comum.', 7
from public.contents where slug = 'matematica-mmc-e-mdc-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'O MMC de 3 e 9 é:', '["3", "6", "9", "27"]'::jsonb, 2, '9 já é múltiplo de 3 e de 9.', 8
from public.contents where slug = 'matematica-mmc-e-mdc-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'A principal atenção nesse tema é:', '["descobrir se o problema pede múltiplo ou divisor", "somar tudo", "multiplicar sempre", "evitar fatoração"]'::jsonb, 0, 'Interpretar corretamente o contexto é decisivo.', 9
from public.contents where slug = 'matematica-mmc-e-mdc-001';
with inserted as (
  insert into public.contents (
    slug, source_id, discipline, topic, name, summary, theory, theory_blocks, key_points, proof_tips, examples, common_errors,
    minimum_plan, required_plan_rank, is_published
  ) values (
    'matematica-operacoes-basicas-001',
    'matematica-operacoes-basicas-001',
    'Matemática',
    'Operações básicas',
    'Operações básicas',
    'Operações básicas envolvem adição, subtração, multiplicação e divisão. Em concursos, o candidato precisa dominar cálculo direto, ordem das operações e interpretação de situações-problema. A VUNESP costuma cobrar contas simples dentro de contextos maiores, exigindo atenção ao enunciado e ao sinal de cada operação.',
    'As operações básicas são a base de toda a Matemática. Adição é a operação de juntar quantidades. Subtração é a operação de retirar, comparar ou descobrir a diferença entre valores. Multiplicação representa somas repetidas ou agrupamentos iguais. Divisão representa repartição, medida ou quantidade de grupos.

A adição combina parcelas para formar uma soma. Exemplo: 12 + 8 = 20. A subtração determina a diferença entre dois números: 20 - 8 = 12. Em muitos problemas, a banca não diz diretamente qual operação usar. É o contexto que revela isso.

A multiplicação aparece quando há grupos iguais: 4 caixas com 6 canetas cada equivalem a 4 x 6 = 24. A divisão aparece quando um total é repartido ou quando se descobre quantas vezes uma quantidade cabe em outra: 24 ÷ 6 = 4.

Outro ponto essencial é a ordem das operações. Primeiro resolvem-se parênteses, depois potências e raízes, depois multiplicações e divisões na ordem em que aparecem e, por fim, adições e subtrações na ordem em que aparecem. Exemplo: 2 + 3 x 4 = 14, e não 20, porque a multiplicação vem antes.

Também é importante conhecer propriedades. Na adição e na multiplicação, vale a propriedade comutativa: 3 + 5 = 5 + 3; 2 x 4 = 4 x 2. Na subtração e na divisão, essa troca geralmente altera o resultado. A propriedade distributiva também é muito útil: 3 x (4 + 2) = 3 x 4 + 3 x 2.

Em prova, a VUNESP costuma embutir contas simples em problemas contextualizados. Por isso, errar operação básica pode comprometer toda a questão. É preciso dominar cálculo, sinais, prioridade das operações e leitura do problema.',
    '[{"titulo": "Conceito", "texto": "Operações básicas são os procedimentos fundamentais de cálculo: adição, subtração, multiplicação e divisão."}, {"titulo": "Regras", "texto": "Na ordem das operações, resolvem-se primeiro parênteses, depois multiplicações/divisões e, por fim, adições/subtrações. Multiplicação pode representar soma repetida; divisão pode representar repartição ou medida."}, {"titulo": "Como cai na prova (VUNESP)", "texto": "A VUNESP costuma cobrar operações básicas dentro de problemas cotidianos, exigindo cálculo correto, atenção aos sinais e interpretação adequada do enunciado."}]'::jsonb,
    '["Adição junta quantidades.", "Subtração encontra diferença ou retira quantidades.", "Multiplicação representa grupos iguais.", "Divisão representa repartição ou medida.", "A ordem das operações muda o resultado."]'::jsonb,
    '["Leia o problema antes de escolher a operação.", "Não ignore a ordem das operações.", "Revise sinais e contas simples antes de marcar.", "Pegadinhas clássicas da VUNESP: interpretação errada do enunciado e quebra da ordem operacional."]'::jsonb,
    '["15 + 7 = 22.", "36 ÷ 6 = 6.", "2 + 3 x 5 = 17."]'::jsonb,
    '["Somar antes de multiplicar em expressões sem parênteses.", "Trocar divisão por subtração em problemas de comparação.", "Errar sinais em contas simples por pressa."]'::jsonb,
    'basic'::public.plan_slug,
    1,
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
delete from public.flashcards where content_id in (select id from public.contents where slug = 'matematica-operacoes-basicas-001');
insert into public.flashcards (content_id, question, answer, sort_order)
select id, 'O que a adição faz?', 'Junta quantidades.', 0
from public.contents where slug = 'matematica-operacoes-basicas-001';
insert into public.flashcards (content_id, question, answer, sort_order)
select id, 'O que a subtração faz?', 'Retira ou compara quantidades.', 1
from public.contents where slug = 'matematica-operacoes-basicas-001';
insert into public.flashcards (content_id, question, answer, sort_order)
select id, 'Quando usar multiplicação?', 'Quando há grupos iguais ou soma repetida.', 2
from public.contents where slug = 'matematica-operacoes-basicas-001';
insert into public.flashcards (content_id, question, answer, sort_order)
select id, 'Quando usar divisão?', 'Quando há repartição ou medida.', 3
from public.contents where slug = 'matematica-operacoes-basicas-001';
insert into public.flashcards (content_id, question, answer, sort_order)
select id, 'O que vem primeiro: soma ou multiplicação?', 'Multiplicação.', 4
from public.contents where slug = 'matematica-operacoes-basicas-001';
insert into public.flashcards (content_id, question, answer, sort_order)
select id, 'Qual o maior risco em operações básicas?', 'Errar a interpretação e a ordem das operações.', 5
from public.contents where slug = 'matematica-operacoes-basicas-001';
delete from public.questions where content_id in (select id from public.contents where slug = 'matematica-operacoes-basicas-001');
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'O resultado de 18 + 27 é:', '["35", "45", "46", "55"]'::jsonb, 1, '18 + 27 = 45.', 0
from public.contents where slug = 'matematica-operacoes-basicas-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'O resultado de 50 - 18 é:', '["22", "28", "32", "38"]'::jsonb, 2, '50 - 18 = 32.', 1
from public.contents where slug = 'matematica-operacoes-basicas-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'Uma caixa tem 8 lápis. Em 5 caixas, há:', '["13", "30", "40", "45"]'::jsonb, 2, 'São 5 grupos de 8: 5 x 8 = 40.', 2
from public.contents where slug = 'matematica-operacoes-basicas-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'O valor de 72 ÷ 9 é:', '["6", "7", "8", "9"]'::jsonb, 2, '72 dividido por 9 resulta em 8.', 3
from public.contents where slug = 'matematica-operacoes-basicas-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'Em 2 + 4 x 3, o resultado correto é:', '["18", "14", "12", "10"]'::jsonb, 1, 'Primeiro a multiplicação: 4 x 3 = 12. Depois 2 + 12 = 14.', 4
from public.contents where slug = 'matematica-operacoes-basicas-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'Se uma pessoa tinha R$ 90 e gastou R$ 37, restaram:', '["43", "47", "53", "57"]'::jsonb, 2, '90 - 37 = 53.', 5
from public.contents where slug = 'matematica-operacoes-basicas-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'A operação que melhor representa repartir 48 balas entre 6 crianças é:', '["adição", "subtração", "multiplicação", "divisão"]'::jsonb, 3, 'Repartição indica divisão.', 6
from public.contents where slug = 'matematica-operacoes-basicas-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'O valor de (12 + 8) ÷ 4 é:', '["4", "5", "6", "8"]'::jsonb, 1, 'Primeiro 12 + 8 = 20. Depois 20 ÷ 4 = 5.', 7
from public.contents where slug = 'matematica-operacoes-basicas-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'O dobro de 19 é:', '["28", "36", "38", "39"]'::jsonb, 2, 'Dobro é multiplicar por 2: 19 x 2 = 38.', 8
from public.contents where slug = 'matematica-operacoes-basicas-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'Se 3 pacotes custam R$ 7 cada, o valor total é:', '["R$ 10", "R$ 14", "R$ 21", "R$ 24"]'::jsonb, 2, '3 x 7 = 21.', 9
from public.contents where slug = 'matematica-operacoes-basicas-001';
with inserted as (
  insert into public.contents (
    slug, source_id, discipline, topic, name, summary, theory, theory_blocks, key_points, proof_tips, examples, common_errors,
    minimum_plan, required_plan_rank, is_published
  ) values (
    'matematica-porcentagem-001',
    'matematica-porcentagem-001',
    'Matemática',
    'Porcentagem',
    'Porcentagem',
    'Porcentagem representa uma razão de base 100. A VUNESP cobra cálculos de aumento, desconto, acréscimo sucessivo, taxa percentual, equivalência com fração e decimal e problemas do cotidiano com preços e salários.',
    'Porcentagem significa ''por cento'', isto é, por 100. Assim, 25% significa 25/100 = 0,25 = 1/4. Esse tema está presente em descontos, juros, reajustes, comissões, pesquisas, promoções e estatísticas.

Para calcular uma porcentagem de um número, multiplica-se o valor pela taxa em forma decimal. Exemplo: 20% de 150 = 0,20 x 150 = 30. Para calcular o valor após um aumento, soma-se o percentual ao valor inicial. Exemplo: aumento de 10% sobre 200: novo valor = 200 + 20 = 220.

Nos descontos, subtrai-se a porcentagem do valor inicial. Exemplo: desconto de 15% em R$ 80: 0,15 x 80 = 12. Valor final = 68.

Um cuidado importante são percentuais sucessivos. Dois aumentos de 10% não equivalem a um aumento único de 20% sobre o valor inicial se a pergunta comparar etapas, pois o segundo aumento incide sobre o valor já alterado. O mesmo vale para descontos sucessivos.

Também se pode descobrir a taxa percentual dividindo a parte pelo todo e multiplicando por 100. Exemplo: 18 acertos em 24 questões correspondem a 18/24 = 0,75 = 75%.

A VUNESP gosta de cobrar problemas práticos e também equivalências rápidas. Saber que 10% é a décima parte, 1% é a centésima parte, 50% é metade e 25% é um quarto agiliza muito o cálculo.

Em resumo, porcentagem é uma forma de comparar parte e todo em base 100. Quem domina conversão, aumento, desconto e taxa resolve a maioria das questões.',
    '[{"titulo": "Conceito", "texto": "Porcentagem é uma razão cujo denominador é 100."}, {"titulo": "Regras", "texto": "Para calcular x% de um valor, multiplica-se o valor por x/100. Aumento soma; desconto subtrai. Percentuais sucessivos incidem sobre valores atualizados."}, {"titulo": "Como cai na prova (VUNESP)", "texto": "A VUNESP cobra aumento, desconto, porcentagem de quantidade, interpretação de tabelas e problemas com taxas."}]'::jsonb,
    '["Porcentagem é razão sobre 100.", "25% = 0,25 = 1/4.", "Aumento e desconto exigem atenção ao valor de referência.", "Taxa percentual pode ser calculada por parte/todo x 100.", "Percentuais sucessivos merecem cuidado."]'::jsonb,
    '["Transforme a taxa em decimal para facilitar a conta.", "Identifique qual é o valor-base da porcentagem.", "Memorize equivalências rápidas de 10%, 25%, 50% e 75%.", "Pegadinhas clássicas da VUNESP: confundir porcentagem com pontos percentuais e errar valor-base."]'::jsonb,
    '["10% de 300 = 30.", "25% de 80 = 20.", "Desconto de 20% em 50 deixa 40."]'::jsonb,
    '["Aplicar a taxa sobre o valor errado.", "Somar percentuais sucessivos sem analisar o novo valor.", "Esquecer de converter porcentagem em decimal."]'::jsonb,
    'basic'::public.plan_slug,
    1,
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
delete from public.flashcards where content_id in (select id from public.contents where slug = 'matematica-porcentagem-001');
insert into public.flashcards (content_id, question, answer, sort_order)
select id, 'Quanto vale 50%?', 'Metade.', 0
from public.contents where slug = 'matematica-porcentagem-001';
insert into public.flashcards (content_id, question, answer, sort_order)
select id, 'Quanto vale 25%?', 'Um quarto.', 1
from public.contents where slug = 'matematica-porcentagem-001';
insert into public.flashcards (content_id, question, answer, sort_order)
select id, 'Como calcular x% de um valor?', 'Multiplicando o valor por x/100.', 2
from public.contents where slug = 'matematica-porcentagem-001';
insert into public.flashcards (content_id, question, answer, sort_order)
select id, 'O que é valor-base?', 'É o valor sobre o qual a porcentagem incide.', 3
from public.contents where slug = 'matematica-porcentagem-001';
insert into public.flashcards (content_id, question, answer, sort_order)
select id, 'Dois descontos sucessivos se somam diretamente?', 'Não necessariamente.', 4
from public.contents where slug = 'matematica-porcentagem-001';
insert into public.flashcards (content_id, question, answer, sort_order)
select id, 'Como achar a porcentagem de acertos?', 'Fazendo parte/todo x 100.', 5
from public.contents where slug = 'matematica-porcentagem-001';
delete from public.questions where content_id in (select id from public.contents where slug = 'matematica-porcentagem-001');
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, '20% de 250 é:', '["25", "40", "50", "60"]'::jsonb, 2, '0,20 x 250 = 50.', 0
from public.contents where slug = 'matematica-porcentagem-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'Um produto de R$ 80 recebeu desconto de 25%. O novo preço é:', '["R$ 50", "R$ 55", "R$ 60", "R$ 65"]'::jsonb, 2, '25% de 80 = 20. Então 80 - 20 = 60.', 1
from public.contents where slug = 'matematica-porcentagem-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'Um salário de R$ 1.500 teve aumento de 10%. O novo salário é:', '["R$ 1.550", "R$ 1.600", "R$ 1.650", "R$ 1.700"]'::jsonb, 2, '10% de 1.500 = 150. Novo salário = 1.650.', 2
from public.contents where slug = 'matematica-porcentagem-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'Se uma pessoa acertou 18 de 24 questões, seu aproveitamento foi de:', '["60%", "70%", "75%", "80%"]'::jsonb, 2, '18/24 = 0,75 = 75%.', 3
from public.contents where slug = 'matematica-porcentagem-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, '5% de 200 é:', '["5", "10", "15", "20"]'::jsonb, 1, '0,05 x 200 = 10.', 4
from public.contents where slug = 'matematica-porcentagem-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'Qual fração equivale a 50%?', '["1/2", "1/3", "2/5", "3/4"]'::jsonb, 0, '50% = 50/100 = 1/2.', 5
from public.contents where slug = 'matematica-porcentagem-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'Um produto sobe 20% sobre R$ 100. Seu preço passa a ser:', '["R$ 110", "R$ 115", "R$ 120", "R$ 125"]'::jsonb, 2, '20% de 100 = 20. Novo valor = 120.', 6
from public.contents where slug = 'matematica-porcentagem-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, '25% de 320 é:', '["40", "60", "80", "100"]'::jsonb, 2, '25% é um quarto. 320/4 = 80.', 7
from public.contents where slug = 'matematica-porcentagem-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'A taxa percentual correspondente a 0,08 é:', '["0,8%", "8%", "18%", "80%"]'::jsonb, 1, '0,08 x 100 = 8%.', 8
from public.contents where slug = 'matematica-porcentagem-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'A maior atenção em porcentagem deve ser com:', '["a cor do enunciado", "o valor-base", "o nome do produto", "a ordem alfabética"]'::jsonb, 1, 'A taxa só tem sentido em relação ao valor de referência.', 9
from public.contents where slug = 'matematica-porcentagem-001';
with inserted as (
  insert into public.contents (
    slug, source_id, discipline, topic, name, summary, theory, theory_blocks, key_points, proof_tips, examples, common_errors,
    minimum_plan, required_plan_rank, is_published
  ) values (
    'matematica-raciocinio-logico-001',
    'matematica-raciocinio-logico-001',
    'Matemática',
    'Raciocínio lógico',
    'Raciocínio lógico',
    'Raciocínio lógico envolve análise de proposições, sequências, padrões, negação, equivalência, conectivos e resolução de situações por dedução. A VUNESP costuma cobrar lógica prática, estrutura de argumentos, tabelas verdade simples e problemas de sequência e organização.',
    'Raciocínio lógico é a capacidade de organizar informações, identificar padrões e tirar conclusões corretas. Em concursos, esse tema pode aparecer em lógica proposicional, sequências numéricas, problemas de ordenação e interpretação dedutiva.

Proposição é uma frase declarativa que pode ser julgada como verdadeira ou falsa. Perguntas, ordens e exclamações não são proposições. Exemplo de proposição: ''2 é par''. Exemplo de não proposição: ''Feche a porta!''

Os conectivos mais importantes são: negação (não), conjunção (e), disjunção (ou), condicional (se... então) e bicondicional (se e somente se). Na conjunção, para a frase ser verdadeira, ambas as partes devem ser verdadeiras. Na disjunção simples, basta uma parte verdadeira para a frase ser verdadeira. Na condicional, a única situação falsa é quando a primeira parte é verdadeira e a segunda é falsa.

A negação também é muito cobrada. A negação de ''todos'' vira ''pelo menos um não''. A negação de ''algum'' vira ''nenhum''. Exemplo: negação de ''Todos estudaram'' é ''Pelo menos um não estudou''.

Em sequências, o candidato deve encontrar a regra de formação. Pode ser adição, subtração, multiplicação, alternância ou padrão misto. Em problemas lógicos, tabelas e esquemas ajudam a organizar as informações.

A VUNESP costuma valorizar lógica aplicada, menos formalismo exagerado. Por isso, interpretar bem o enunciado, reconhecer o conectivo e organizar dados são habilidades centrais.

Em resumo, raciocínio lógico depende de clareza, método e atenção às palavras-chave.',
    '[{"titulo": "Conceito", "texto": "Raciocínio lógico é o processo de analisar informações para chegar a conclusões válidas."}, {"titulo": "Regras", "texto": "Proposição é frase declarativa com valor lógico. Conectivos alteram a verdade das proposições. Negação exige cuidado com quantificadores como ''todos'' e ''algum''."}, {"titulo": "Como cai na prova (VUNESP)", "texto": "A VUNESP cobra conectivos, negação, sequências, dedução e problemas lógicos de organização."}]'::jsonb,
    '["Proposição tem valor verdadeiro ou falso.", "Pergunta e ordem não são proposições.", "Na conjunção, as duas partes precisam ser verdadeiras.", "Na disjunção simples, basta uma verdadeira.", "Negação de ''todos'' é ''pelo menos um não''."]'::jsonb,
    '["Sublinhe palavras como não, todos, algum, ou, e, se.", "Faça tabelas ou esquemas em problemas de organização.", "Em sequência, observe primeiro diferenças ou razões.", "Pegadinhas clássicas da VUNESP: negação de quantificadores e interpretação errada do ''ou''."]'::jsonb,
    '["''2 é número par'' é proposição verdadeira.", "Negação de ''algum aluno faltou'' é ''nenhum aluno faltou''.", "Na sequência 2, 4, 8, 16, o padrão é multiplicar por 2."]'::jsonb,
    '["Achar que toda frase é proposição.", "Negar ''todos'' como ''todos não''.", "Resolver sequência por palpite sem buscar regra."]'::jsonb,
    'basic'::public.plan_slug,
    1,
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
delete from public.flashcards where content_id in (select id from public.contents where slug = 'matematica-raciocinio-logico-001');
insert into public.flashcards (content_id, question, answer, sort_order)
select id, 'O que é proposição?', 'É uma frase declarativa que pode ser verdadeira ou falsa.', 0
from public.contents where slug = 'matematica-raciocinio-logico-001';
insert into public.flashcards (content_id, question, answer, sort_order)
select id, 'Pergunta é proposição?', 'Não.', 1
from public.contents where slug = 'matematica-raciocinio-logico-001';
insert into public.flashcards (content_id, question, answer, sort_order)
select id, 'Quando uma conjunção é verdadeira?', 'Quando as duas partes são verdadeiras.', 2
from public.contents where slug = 'matematica-raciocinio-logico-001';
insert into public.flashcards (content_id, question, answer, sort_order)
select id, 'Qual a negação de ''todos estudaram''?', 'Pelo menos um não estudou.', 3
from public.contents where slug = 'matematica-raciocinio-logico-001';
insert into public.flashcards (content_id, question, answer, sort_order)
select id, 'Qual a negação de ''algum faltou''?', 'Ninguém faltou.', 4
from public.contents where slug = 'matematica-raciocinio-logico-001';
insert into public.flashcards (content_id, question, answer, sort_order)
select id, 'O que ajuda muito em lógica?', 'Organização por esquemas e atenção às palavras-chave.', 5
from public.contents where slug = 'matematica-raciocinio-logico-001';
delete from public.questions where content_id in (select id from public.contents where slug = 'matematica-raciocinio-logico-001');
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'Assinale a frase que é uma proposição.', '["Feche a janela.", "Que horas são?", "O número 4 é par.", "Tomara que chova."]'::jsonb, 2, 'É uma frase declarativa com valor lógico definido.', 0
from public.contents where slug = 'matematica-raciocinio-logico-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'A negação de ''Todos os candidatos estudaram'' é:', '["Nenhum candidato estudou", "Pelo menos um candidato não estudou", "Todos os candidatos não estudaram", "Alguns candidatos estudaram"]'::jsonb, 1, 'Negação de ''todos'' é ''pelo menos um não''.', 1
from public.contents where slug = 'matematica-raciocinio-logico-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'Na proposição ''A e B'', ela será verdadeira quando:', '["apenas A for verdadeira", "apenas B for verdadeira", "A e B forem verdadeiras", "A ou B forem falsas"]'::jsonb, 2, 'Conjunção só é verdadeira com ambas verdadeiras.', 2
from public.contents where slug = 'matematica-raciocinio-logico-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'Na proposição ''A ou B'', ela será falsa quando:', '["A for verdadeira", "B for verdadeira", "A e B forem verdadeiras", "A e B forem falsas"]'::jsonb, 3, 'Na disjunção simples, só é falsa quando ambas são falsas.', 3
from public.contents where slug = 'matematica-raciocinio-logico-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'A sequência 3, 6, 9, 12, ... segue a regra de:', '["somar 2", "somar 3", "multiplicar por 2", "dobrar e somar 1"]'::jsonb, 1, 'Os termos aumentam de 3 em 3.', 4
from public.contents where slug = 'matematica-raciocinio-logico-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'A negação de ''Algum aluno faltou'' é:', '["Todo aluno faltou", "Pelo menos um aluno não faltou", "Nenhum aluno faltou", "Alguns faltaram"]'::jsonb, 2, 'Negação de ''algum'' é ''nenhum''.', 5
from public.contents where slug = 'matematica-raciocinio-logico-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'Em ''Se chove, então levo guarda-chuva'', a condicional será falsa quando:', '["chover e levar guarda-chuva", "não chover e não levar", "chover e não levar guarda-chuva", "não chover e levar guarda-chuva"]'::jsonb, 2, 'Na condicional, a única situação falsa é antecedente verdadeiro e consequente falso.', 6
from public.contents where slug = 'matematica-raciocinio-logico-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'Qual estratégia ajuda mais em problemas de organização lógica?', '["decorar respostas", "fazer tabela ou esquema", "chutar rapidamente", "ignorar detalhes"]'::jsonb, 1, 'Esquemas ajudam a visualizar relações e eliminar possibilidades.', 7
from public.contents where slug = 'matematica-raciocinio-logico-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'A sequência 2, 4, 8, 16, ... tem como próximo termo:', '["18", "20", "24", "32"]'::jsonb, 3, 'Cada termo é o dobro do anterior.', 8
from public.contents where slug = 'matematica-raciocinio-logico-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'O maior cuidado em raciocínio lógico é:', '["focar só no cálculo", "desconsiderar as palavras-chave", "interpretar corretamente o enunciado", "evitar tabelas"]'::jsonb, 2, 'A lógica depende muito da leitura e da estrutura da informação.', 9
from public.contents where slug = 'matematica-raciocinio-logico-001';
with inserted as (
  insert into public.contents (
    slug, source_id, discipline, topic, name, summary, theory, theory_blocks, key_points, proof_tips, examples, common_errors,
    minimum_plan, required_plan_rank, is_published
  ) values (
    'matematica-razao-e-proporcao-001',
    'matematica-razao-e-proporcao-001',
    'Matemática',
    'Razão e proporção',
    'Razão e proporção',
    'Razão é a comparação entre duas grandezas por meio de uma divisão. Proporção é a igualdade entre duas razões. A VUNESP cobra interpretação de razões, simplificação, escala, divisão proporcional e problemas práticos com comparação de grandezas.',
    'Razão é o quociente entre duas grandezas comparáveis. Se em uma sala há 10 homens e 15 mulheres, a razão entre homens e mulheres é 10/15, que pode ser simplificada para 2/3. A razão pode ser escrita como fração, usando dois pontos ou na forma decimal.

Proporção é a igualdade entre duas razões. Exemplo: 2/3 = 4/6. Quando duas razões são proporcionais, seus produtos cruzados são iguais. Essa propriedade é muito útil: em a/b = c/d, temos a x d = b x c.

Razões aparecem em escalas, velocidade média, densidade, consumo, preço por unidade e comparação entre partes. Exemplo: um mapa em escala 1:100.000 mostra que 1 unidade no mapa corresponde a 100.000 unidades reais.

Na divisão proporcional, um valor é repartido em partes que obedecem a uma razão dada. Se R$ 600 forem divididos na razão 2:3, a soma das partes da razão é 5. Logo, as partes são 2/5 de 600 e 3/5 de 600, isto é, R$ 240 e R$ 360.

Grandezas diretamente proporcionais crescem ou diminuem juntas na mesma razão. Grandezas inversamente proporcionais variam em sentidos opostos. Esse ponto se liga à regra de três, mas a base conceitual está aqui.

A VUNESP explora razão em problemas simples e em textos com dados numéricos. O erro mais comum é inverter a ordem da razão ou não interpretar corretamente o que está sendo comparado.',
    '[{"titulo": "Conceito", "texto": "Razão é comparação por divisão. Proporção é igualdade entre duas razões."}, {"titulo": "Regras", "texto": "Toda proporção permite produto dos meios pelos extremos. A ordem das grandezas na razão deve ser mantida. A simplificação ajuda a interpretar melhor os dados."}, {"titulo": "Como cai na prova (VUNESP)", "texto": "A VUNESP cobra comparação entre quantidades, escalas, consumo, divisão proporcional e interpretação correta da ordem da razão."}]'::jsonb,
    '["Razão compara duas grandezas por divisão.", "Proporção iguala duas razões.", "A ordem dos termos na razão importa.", "Produto cruzado resolve muitas questões.", "Divisão proporcional é muito cobrada."]'::jsonb,
    '["Escreva com clareza o que está sendo comparado.", "Simplifique a razão antes de continuar.", "Use produto cruzado com atenção aos termos correspondentes.", "Pegadinhas clássicas da VUNESP: inverter a razão e errar a interpretação da escala."]'::jsonb,
    '["Razão 8 para 12 = 8/12 = 2/3.", "Se 2/5 = x/20, então 5x = 40 e x = 8.", "Dividir 300 na razão 1:2 gera 100 e 200."]'::jsonb,
    '["Trocar a ordem da comparação.", "Não simplificar a razão antes de resolver.", "Aplicar produto cruzado em dados não proporcionais."]'::jsonb,
    'basic'::public.plan_slug,
    1,
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
delete from public.flashcards where content_id in (select id from public.contents where slug = 'matematica-razao-e-proporcao-001');
insert into public.flashcards (content_id, question, answer, sort_order)
select id, 'O que é razão?', 'É a comparação entre duas grandezas por meio de uma divisão.', 0
from public.contents where slug = 'matematica-razao-e-proporcao-001';
insert into public.flashcards (content_id, question, answer, sort_order)
select id, 'O que é proporção?', 'É a igualdade entre duas razões.', 1
from public.contents where slug = 'matematica-razao-e-proporcao-001';
insert into public.flashcards (content_id, question, answer, sort_order)
select id, 'Qual propriedade resolve proporções?', 'O produto cruzado.', 2
from public.contents where slug = 'matematica-razao-e-proporcao-001';
insert into public.flashcards (content_id, question, answer, sort_order)
select id, 'A ordem da razão importa?', 'Sim, muda o significado.', 3
from public.contents where slug = 'matematica-razao-e-proporcao-001';
insert into public.flashcards (content_id, question, answer, sort_order)
select id, 'O que é divisão proporcional?', 'É repartir um valor segundo uma razão dada.', 4
from public.contents where slug = 'matematica-razao-e-proporcao-001';
insert into public.flashcards (content_id, question, answer, sort_order)
select id, 'Onde razão aparece muito?', 'Em escala, consumo, velocidade e comparação de quantidades.', 5
from public.contents where slug = 'matematica-razao-e-proporcao-001';
delete from public.questions where content_id in (select id from public.contents where slug = 'matematica-razao-e-proporcao-001');
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'A razão entre 12 e 18, na forma simplificada, é:', '["2/3", "3/2", "6/9", "4/9"]'::jsonb, 0, '12/18 simplifica para 2/3.', 0
from public.contents where slug = 'matematica-razao-e-proporcao-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'Se 3/5 = x/20, então x vale:', '["8", "10", "12", "15"]'::jsonb, 2, '3 x 20 = 5x, então 60 = 5x e x = 12.', 1
from public.contents where slug = 'matematica-razao-e-proporcao-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'Dividindo R$ 500 na razão 2:3, a menor parte será:', '["R$ 150", "R$ 200", "R$ 250", "R$ 300"]'::jsonb, 1, 'Total de partes = 5. A menor parte é 2/5 de 500 = 200.', 2
from public.contents where slug = 'matematica-razao-e-proporcao-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'Em uma turma com 8 meninos e 12 meninas, a razão meninos:meninas é:', '["2:3", "3:2", "8:20", "12:8"]'::jsonb, 0, '8:12 simplifica para 2:3.', 3
from public.contents where slug = 'matematica-razao-e-proporcao-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'Uma escala 1:50 indica que:', '["1 unidade real vale 50 no desenho", "1 no desenho corresponde a 50 na realidade", "50 no desenho corresponde a 1 na realidade", "não há relação proporcional"]'::jsonb, 1, 'Escala 1:50 significa 1 unidade no desenho para 50 na realidade.', 4
from public.contents where slug = 'matematica-razao-e-proporcao-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'Se duas razões são iguais, então existe:', '["fração imprópria", "proporção", "potência", "equação quadrática"]'::jsonb, 1, 'Igualdade entre razões define proporção.', 5
from public.contents where slug = 'matematica-razao-e-proporcao-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'A razão entre 30 segundos e 2 minutos é:', '["1/2", "1/3", "1/4", "1/5"]'::jsonb, 2, '2 minutos = 120 segundos. A razão 30/120 = 1/4.', 6
from public.contents where slug = 'matematica-razao-e-proporcao-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'Se a:b = 4:7 e a = 20, então b =', '["28", "35", "40", "49"]'::jsonb, 1, '4k = 20, então k = 5. Logo, b = 7k = 35.', 7
from public.contents where slug = 'matematica-razao-e-proporcao-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'A principal atenção em razão é:', '["somar os termos", "trocar numerador e denominador", "manter a ordem da comparação", "evitar simplificar"]'::jsonb, 2, 'A ordem muda o sentido da razão.', 8
from public.contents where slug = 'matematica-razao-e-proporcao-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'Se 6/9 = 10/x, então x =', '["12", "15", "18", "20"]'::jsonb, 1, '6x = 90, então x = 15.', 9
from public.contents where slug = 'matematica-razao-e-proporcao-001';
with inserted as (
  insert into public.contents (
    slug, source_id, discipline, topic, name, summary, theory, theory_blocks, key_points, proof_tips, examples, common_errors,
    minimum_plan, required_plan_rank, is_published
  ) values (
    'matematica-regra-de-tres-001',
    'matematica-regra-de-tres-001',
    'Matemática',
    'Regra de três',
    'Regra de três',
    'Regra de três é um método para resolver problemas com grandezas proporcionais. Pode ser simples ou composta, direta ou inversa. A VUNESP cobra muito interpretação da relação entre grandezas e montagem correta da proporção.',
    'Regra de três é uma técnica usada para descobrir um valor desconhecido quando há relação proporcional entre grandezas. A regra de três simples envolve duas grandezas; a composta, mais de duas.

Na regra de três simples direta, quando uma grandeza aumenta e a outra também aumenta na mesma tendência, monta-se uma proporção direta. Exemplo: 2 cadernos custam R$ 10; 5 cadernos custam x. Quanto mais cadernos, maior o custo.

Na regra de três simples inversa, quando uma grandeza aumenta e a outra diminui, a relação é inversa. Exemplo: 6 trabalhadores fazem um serviço em 10 dias. Se aumentarmos o número de trabalhadores, o número de dias tende a diminuir.

Na regra de três composta, analisam-se todas as grandezas envolvidas em relação à grandeza que contém a incógnita. É essencial identificar se cada relação é direta ou inversa.

O maior erro em prova não é a conta: é montar a relação errada. Por isso, antes de multiplicar, o candidato precisa decidir se as grandezas variam juntas ou em sentido oposto. A VUNESP gosta muito dessa análise.

Um bom caminho é montar tabela, alinhar os dados e usar setas para ver o comportamento das grandezas. Se a incógnita estiver em dias e os trabalhadores aumentarem, os dias diminuem: relação inversa. Se horas de estudo aumentarem e questões resolvidas também aumentarem, a relação é direta.

Em resumo, a regra de três depende de interpretação. Descobrir se a relação é direta ou inversa é o passo principal para acertar.',
    '[{"titulo": "Conceito", "texto": "Regra de três resolve problemas com grandezas proporcionais e valor desconhecido."}, {"titulo": "Regras", "texto": "Na direta, as grandezas variam no mesmo sentido. Na inversa, variam em sentidos contrários. Na composta, é preciso analisar cada grandeza em relação à incógnita."}, {"titulo": "Como cai na prova (VUNESP)", "texto": "A VUNESP cobra muito interpretação da proporcionalidade, com situações de trabalho, tempo, produção, consumo, velocidade e custo."}]'::jsonb,
    '["Regra de três simples envolve duas grandezas.", "Direta: aumentou uma, aumenta a outra.", "Inversa: aumentou uma, diminui a outra.", "Na composta, analisa-se uma grandeza de cada vez.", "Montagem correta vale mais que cálculo rápido."]'::jsonb,
    '["Faça tabela para organizar os dados.", "Use setas para decidir se a relação é direta ou inversa.", "Só monte a proporção depois de entender o comportamento das grandezas.", "Pegadinhas clássicas da VUNESP: tratar grandeza inversa como direta."]'::jsonb,
    '["3 canetas custam R$ 9; 5 canetas custam R$ 15.", "4 pessoas fazem um serviço em 12 dias; 8 pessoas fariam em 6 dias.", "Se 2 máquinas produzem 100 peças, 4 máquinas produzem 200, no mesmo tempo."]'::jsonb,
    '["Montar relação direta quando é inversa.", "Misturar grandezas sem alinhar corretamente a tabela.", "Resolver na pressa sem interpretar o enunciado."]'::jsonb,
    'basic'::public.plan_slug,
    1,
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
delete from public.flashcards where content_id in (select id from public.contents where slug = 'matematica-regra-de-tres-001');
insert into public.flashcards (content_id, question, answer, sort_order)
select id, 'Quando a regra de três é direta?', 'Quando as grandezas variam no mesmo sentido.', 0
from public.contents where slug = 'matematica-regra-de-tres-001';
insert into public.flashcards (content_id, question, answer, sort_order)
select id, 'Quando a regra de três é inversa?', 'Quando as grandezas variam em sentidos opostos.', 1
from public.contents where slug = 'matematica-regra-de-tres-001';
insert into public.flashcards (content_id, question, answer, sort_order)
select id, 'O que a regra de três composta exige?', 'Análise individual de cada grandeza em relação à incógnita.', 2
from public.contents where slug = 'matematica-regra-de-tres-001';
insert into public.flashcards (content_id, question, answer, sort_order)
select id, 'Qual é o maior risco nesse tema?', 'Montar a relação errada.', 3
from public.contents where slug = 'matematica-regra-de-tres-001';
insert into public.flashcards (content_id, question, answer, sort_order)
select id, 'Como organizar melhor o problema?', 'Fazendo tabela.', 4
from public.contents where slug = 'matematica-regra-de-tres-001';
insert into public.flashcards (content_id, question, answer, sort_order)
select id, 'O que a VUNESP cobra muito?', 'Trabalho, tempo, produção e consumo.', 5
from public.contents where slug = 'matematica-regra-de-tres-001';
delete from public.questions where content_id in (select id from public.contents where slug = 'matematica-regra-de-tres-001');
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'Se 3 cadernos custam R$ 18, 5 cadernos custam:', '["R$ 24", "R$ 28", "R$ 30", "R$ 32"]'::jsonb, 2, 'Grandezas diretamente proporcionais. Cada caderno custa 6 reais. 5 x 6 = 30.', 0
from public.contents where slug = 'matematica-regra-de-tres-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'Se 4 trabalhadores realizam uma obra em 15 dias, 6 trabalhadores, com mesmo ritmo, a farão em:', '["10 dias", "12 dias", "18 dias", "22 dias"]'::jsonb, 0, 'Relação inversa: mais trabalhadores, menos dias. 4 x 15 = 6 x x, então x = 10.', 1
from public.contents where slug = 'matematica-regra-de-tres-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'Uma máquina produz 120 peças em 4 horas. Em 6 horas, produzirá:', '["160", "180", "200", "240"]'::jsonb, 1, 'Direta: mais horas, mais peças. 120/4 = 30 por hora. Em 6 horas: 180.', 2
from public.contents where slug = 'matematica-regra-de-tres-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'Se 8 pessoas consomem um estoque em 12 dias, 6 pessoas consumirão o mesmo estoque em:', '["9 dias", "12 dias", "16 dias", "18 dias"]'::jsonb, 2, 'Inversa: menos pessoas, mais dias. 8 x 12 = 6 x x, então x = 16.', 3
from public.contents where slug = 'matematica-regra-de-tres-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'A regra de três simples é usada quando há:', '["uma única grandeza", "duas grandezas", "três incógnitas", "somente porcentagem"]'::jsonb, 1, 'Regra de três simples trabalha com duas grandezas.', 4
from public.contents where slug = 'matematica-regra-de-tres-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'Em problemas de trabalhadores e dias, normalmente a relação é:', '["direta", "inversa", "nula", "aleatória"]'::jsonb, 1, 'Mais trabalhadores tendem a reduzir os dias, portanto é inversa.', 5
from public.contents where slug = 'matematica-regra-de-tres-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'Se 2 litros de tinta pintam 30 m², 5 litros pintam:', '["60 m²", "70 m²", "75 m²", "80 m²"]'::jsonb, 2, 'Direta: 2 para 30, 5 para x. x = 75.', 6
from public.contents where slug = 'matematica-regra-de-tres-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'O passo mais importante antes da conta é:', '["multiplicar cruzado imediatamente", "identificar se a relação é direta ou inversa", "arredondar números", "eliminar unidades"]'::jsonb, 1, 'Sem isso, a montagem pode ficar errada.', 7
from public.contents where slug = 'matematica-regra-de-tres-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'Se 12 operários constroem um muro em 5 dias, 3 operários levarão:', '["10 dias", "15 dias", "20 dias", "25 dias"]'::jsonb, 2, 'Inversa: 12 x 5 = 3 x x, então x = 20.', 8
from public.contents where slug = 'matematica-regra-de-tres-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'Grandezas diretamente proporcionais:', '["aumentam uma quando a outra diminui", "variam no mesmo sentido", "não se relacionam", "sempre envolvem divisão"]'::jsonb, 1, 'Direta significa mesma tendência de variação.', 9
from public.contents where slug = 'matematica-regra-de-tres-001';
with inserted as (
  insert into public.contents (
    slug, source_id, discipline, topic, name, summary, theory, theory_blocks, key_points, proof_tips, examples, common_errors,
    minimum_plan, required_plan_rank, is_published
  ) values (
    'matematica-sistema-de-equacoes-001',
    'matematica-sistema-de-equacoes-001',
    'Matemática',
    'Sistema de equações',
    'Sistema de equações',
    'Sistema de equações é um conjunto de equações com mais de uma incógnita. A solução é o conjunto de valores que satisfaz todas as equações ao mesmo tempo. A VUNESP cobra muito sistemas simples de 2 incógnitas com problemas práticos.',
    'Sistema de equações do 1º grau com duas incógnitas costuma ter duas equações e dois valores desconhecidos. Resolver o sistema significa encontrar os valores que satisfazem simultaneamente ambas as equações.

Os métodos mais usados são substituição e adição. Na substituição, isola-se uma incógnita em uma equação e substitui-se na outra. Na adição, somam-se ou subtraem-se as equações para eliminar uma incógnita.

Exemplo: x + y = 10 e x - y = 2. Somando as duas equações, obtemos 2x = 12, então x = 6. Substituindo em x + y = 10, temos y = 4.

Em problemas, o sistema aparece quando duas informações diferentes relacionam as mesmas incógnitas. Exemplo: quantidade de notas e moedas, soma de idades, preço de produtos, total de itens.

A VUNESP valoriza a montagem correta do sistema e a leitura atenta. Muitas vezes o cálculo é simples, mas o problema exige organizar bem as informações.

Em resumo, sistema de equações é uma forma de resolver situações com duas incógnitas e duas relações entre elas.',
    '[{"titulo": "Conceito", "texto": "Sistema de equações é um conjunto de equações que devem ser satisfeitas ao mesmo tempo."}, {"titulo": "Regras", "texto": "Pode-se resolver por substituição ou adição. A solução final precisa servir para todas as equações do sistema."}, {"titulo": "Como cai na prova (VUNESP)", "texto": "A VUNESP cobra problemas com valores, quantidades, idades e preços que levam a um sistema simples de duas incógnitas."}]'::jsonb,
    '["Sistema envolve mais de uma equação.", "A solução deve satisfazer todas.", "Substituição e adição são métodos principais.", "Problemas do cotidiano viram sistemas com facilidade.", "Montagem correta é essencial."]'::jsonb,
    '["Dê nome claro às incógnitas.", "Organize as informações em frases matemáticas.", "Após achar os valores, teste nas duas equações.", "Pegadinhas clássicas da VUNESP: trocar as incógnitas no problema."]'::jsonb,
    '["x + y = 10 e x - y = 2 dão x = 6 e y = 4.", "2x + y = 11 e x + y = 7 dão x = 4 e y = 3.", "Se a soma é 12 e a diferença é 4, os números são 8 e 4."]'::jsonb,
    '["Resolver uma equação e esquecer de verificar a outra.", "Montar sistema com dados trocados.", "Errar sinais no método da adição."]'::jsonb,
    'basic'::public.plan_slug,
    1,
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
delete from public.flashcards where content_id in (select id from public.contents where slug = 'matematica-sistema-de-equacoes-001');
insert into public.flashcards (content_id, question, answer, sort_order)
select id, 'O que é sistema de equações?', 'É um conjunto de equações com incógnitas relacionadas.', 0
from public.contents where slug = 'matematica-sistema-de-equacoes-001';
insert into public.flashcards (content_id, question, answer, sort_order)
select id, 'Quando a solução é válida?', 'Quando satisfaz todas as equações.', 1
from public.contents where slug = 'matematica-sistema-de-equacoes-001';
insert into public.flashcards (content_id, question, answer, sort_order)
select id, 'Quais métodos são mais usados?', 'Substituição e adição.', 2
from public.contents where slug = 'matematica-sistema-de-equacoes-001';
insert into public.flashcards (content_id, question, answer, sort_order)
select id, 'Qual é o maior risco?', 'Montar o sistema errado.', 3
from public.contents where slug = 'matematica-sistema-de-equacoes-001';
insert into public.flashcards (content_id, question, answer, sort_order)
select id, 'Como conferir a resposta?', 'Substituindo os valores nas equações.', 4
from public.contents where slug = 'matematica-sistema-de-equacoes-001';
insert into public.flashcards (content_id, question, answer, sort_order)
select id, 'Onde isso cai muito?', 'Em problemas com preços, quantidades e idades.', 5
from public.contents where slug = 'matematica-sistema-de-equacoes-001';
delete from public.questions where content_id in (select id from public.contents where slug = 'matematica-sistema-de-equacoes-001');
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'No sistema x + y = 10 e x - y = 2, o valor de x é:', '["4", "5", "6", "7"]'::jsonb, 2, 'Somando as equações: 2x = 12, então x = 6.', 0
from public.contents where slug = 'matematica-sistema-de-equacoes-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'No sistema x + y = 10 e x - y = 2, o valor de y é:', '["2", "3", "4", "5"]'::jsonb, 2, 'Com x = 6, temos y = 4.', 1
from public.contents where slug = 'matematica-sistema-de-equacoes-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'No sistema 2x + y = 11 e x + y = 7, o valor de x é:', '["2", "3", "4", "5"]'::jsonb, 2, 'Subtraindo a segunda da primeira: x = 4.', 2
from public.contents where slug = 'matematica-sistema-de-equacoes-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'No sistema 2x + y = 11 e x + y = 7, o valor de y é:', '["2", "3", "4", "5"]'::jsonb, 1, 'Se x = 4, então 4 + y = 7 e y = 3.', 3
from public.contents where slug = 'matematica-sistema-de-equacoes-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'A soma de dois números é 14 e a diferença é 2. O maior número é:', '["6", "7", "8", "9"]'::jsonb, 2, 'Sistema: x + y = 14 e x - y = 2. Somando: 2x = 16, então x = 8.', 4
from public.contents where slug = 'matematica-sistema-de-equacoes-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'Dois produtos custam juntos R$ 30. Um custa R$ 4 a mais que o outro. O mais caro custa:', '["R$ 15", "R$ 16", "R$ 17", "R$ 18"]'::jsonb, 2, 'x + y = 30 e x - y = 4. Somando: 2x = 34, então x = 17.', 5
from public.contents where slug = 'matematica-sistema-de-equacoes-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'O sistema pode ser resolvido por:', '["substituição ou adição", "apenas multiplicação", "somente raiz quadrada", "porcentagem apenas"]'::jsonb, 0, 'São os métodos mais usados para sistemas simples.', 6
from public.contents where slug = 'matematica-sistema-de-equacoes-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'A solução de um sistema deve:', '["servir só para a primeira equação", "servir só para a segunda", "servir para todas as equações", "ser um número negativo sempre"]'::jsonb, 2, 'Essa é a definição de solução do sistema.', 7
from public.contents where slug = 'matematica-sistema-de-equacoes-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'Se x + y = 9 e x = 4, então y =', '["3", "4", "5", "6"]'::jsonb, 2, 'y = 9 - 4 = 5.', 8
from public.contents where slug = 'matematica-sistema-de-equacoes-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'O passo mais importante em problemas com sistema é:', '["montar corretamente as equações", "decorar respostas", "arredondar os números", "eliminar o sinal de igual"]'::jsonb, 0, 'Sem modelagem correta, a solução não representa o problema.', 9
from public.contents where slug = 'matematica-sistema-de-equacoes-001';
with inserted as (
  insert into public.contents (
    slug, source_id, discipline, topic, name, summary, theory, theory_blocks, key_points, proof_tips, examples, common_errors,
    minimum_plan, required_plan_rank, is_published
  ) values (
    'matematica-tabelas-e-graficos-001',
    'matematica-tabelas-e-graficos-001',
    'Matemática',
    'Tabelas e gráficos',
    'Tabelas e gráficos',
    'Tabelas e gráficos organizam dados e facilitam comparação, leitura e interpretação. A VUNESP cobra muito leitura de valores, comparação entre categorias, porcentagens, médias e análise de tendências em gráficos de barras, linhas e setores.',
    'Tabelas organizam dados em linhas e colunas. Gráficos representam visualmente esses dados. Em concursos, saber interpretar é mais importante do que decorar nomes.

Gráfico de barras compara quantidades entre categorias. Gráfico de linhas mostra evolução ao longo do tempo. Gráfico de setores, ou pizza, mostra participação proporcional no total. Tabelas permitem leitura detalhada de valores e cruzamento de informações.

A VUNESP costuma exigir leitura exata dos números, comparação entre maior e menor valor, diferença entre categorias, soma de dados, porcentagem e média. Muitas vezes a pergunta não pede cálculo complexo, mas atenção ao enunciado.

É essencial observar título, legenda, eixos, unidades e período analisado. Um mesmo número pode representar pessoas, reais, porcentagem ou toneladas, e isso muda a interpretação.

Em resumo, esse tema mistura interpretação com matemática básica. Quem lê com calma e organiza os dados costuma acertar.',
    '[{"titulo": "Conceito", "texto": "Tabelas e gráficos são formas de organizar e representar dados numéricos."}, {"titulo": "Regras", "texto": "É preciso observar título, legenda, eixos, unidades e período. O tipo de gráfico indica o tipo de comparação mais fácil."}, {"titulo": "Como cai na prova (VUNESP)", "texto": "A VUNESP cobra leitura direta, comparação, porcentagem, diferença, média e interpretação de tendência."}]'::jsonb,
    '["Barras comparam categorias.", "Linhas mostram evolução no tempo.", "Setores mostram participação percentual.", "Título e unidade são essenciais.", "Muitos erros vêm de leitura apressada."]'::jsonb,
    '["Leia primeiro o título e a unidade.", "Depois veja exatamente o que a pergunta quer.", "Se necessário, anote os valores principais antes de calcular.", "Pegadinhas clássicas da VUNESP: confundir valor absoluto com porcentagem."]'::jsonb,
    '["Gráfico de barras para comparar vendas por mês.", "Gráfico de linhas para evolução da temperatura.", "Tabela para cruzar idade e quantidade de candidatos."]'::jsonb,
    '["Ignorar a legenda.", "Ler porcentagem como valor absoluto.", "Comparar categorias erradas por falta de atenção ao eixo."]'::jsonb,
    'basic'::public.plan_slug,
    1,
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
delete from public.flashcards where content_id in (select id from public.contents where slug = 'matematica-tabelas-e-graficos-001');
insert into public.flashcards (content_id, question, answer, sort_order)
select id, 'Qual gráfico é bom para comparar categorias?', 'Gráfico de barras.', 0
from public.contents where slug = 'matematica-tabelas-e-graficos-001';
insert into public.flashcards (content_id, question, answer, sort_order)
select id, 'Qual gráfico mostra evolução temporal?', 'Gráfico de linhas.', 1
from public.contents where slug = 'matematica-tabelas-e-graficos-001';
insert into public.flashcards (content_id, question, answer, sort_order)
select id, 'Qual gráfico mostra partes do todo?', 'Gráfico de setores.', 2
from public.contents where slug = 'matematica-tabelas-e-graficos-001';
insert into public.flashcards (content_id, question, answer, sort_order)
select id, 'O que ler primeiro?', 'Título, unidade e legenda.', 3
from public.contents where slug = 'matematica-tabelas-e-graficos-001';
insert into public.flashcards (content_id, question, answer, sort_order)
select id, 'O que a VUNESP cobra muito?', 'Leitura, comparação e porcentagem.', 4
from public.contents where slug = 'matematica-tabelas-e-graficos-001';
insert into public.flashcards (content_id, question, answer, sort_order)
select id, 'Qual é o maior perigo?', 'Leitura apressada do gráfico.', 5
from public.contents where slug = 'matematica-tabelas-e-graficos-001';
delete from public.questions where content_id in (select id from public.contents where slug = 'matematica-tabelas-e-graficos-001');
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'Em um gráfico de barras, a altura da barra normalmente representa:', '["a cor do dado", "a quantidade/valor", "o título", "a legenda"]'::jsonb, 1, 'A barra indica visualmente o valor correspondente.', 0
from public.contents where slug = 'matematica-tabelas-e-graficos-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'O gráfico mais adequado para mostrar evolução ao longo dos meses é o de:', '["linhas", "setores", "pizza", "ícones"]'::jsonb, 0, 'Gráfico de linhas destaca variações ao longo do tempo.', 1
from public.contents where slug = 'matematica-tabelas-e-graficos-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'Em um gráfico de setores, cada fatia representa:', '["uma raiz quadrada", "uma parte do todo", "apenas números negativos", "uma equação"]'::jsonb, 1, 'Esse tipo de gráfico mostra a participação de cada parte no total.', 2
from public.contents where slug = 'matematica-tabelas-e-graficos-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'O primeiro cuidado ao interpretar tabela é:', '["adivinhar a resposta", "ver o título e as unidades", "somar tudo", "eliminar linhas"]'::jsonb, 1, 'O contexto dos dados depende do título e das unidades.', 3
from public.contents where slug = 'matematica-tabelas-e-graficos-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'Se uma tabela mostra 20, 30 e 50 como porcentagens, o total é:', '["80", "90", "100", "120"]'::jsonb, 2, 'Porcentagens de um todo completo somam 100%.', 4
from public.contents where slug = 'matematica-tabelas-e-graficos-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'Ao comparar duas categorias em um gráfico, é preciso observar:', '["somente a cor", "os valores correspondentes", "apenas o tamanho do papel", "o nome do autor"]'::jsonb, 1, 'A comparação exige leitura dos valores.', 5
from public.contents where slug = 'matematica-tabelas-e-graficos-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'Um erro comum em gráficos é:', '["ler a legenda", "observar o eixo", "confundir unidade ou escala", "anotar dados"]'::jsonb, 2, 'Escala e unidade mal interpretadas levam a erro.', 6
from public.contents where slug = 'matematica-tabelas-e-graficos-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'Tabela e gráfico geralmente cobram:', '["apenas memorização", "interpretação e cálculo simples", "somente geometria", "somente álgebra abstrata"]'::jsonb, 1, 'Essas questões exigem leitura e cálculo básico.', 7
from public.contents where slug = 'matematica-tabelas-e-graficos-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'A pergunta ''qual categoria teve maior valor?'' exige:', '["comparação", "MDC", "equação do 2º grau", "teorema de Pitágoras"]'::jsonb, 0, 'É uma análise comparativa dos dados.', 8
from public.contents where slug = 'matematica-tabelas-e-graficos-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'O maior segredo nesse tema é:', '["olhar só as figuras", "ler com calma o enunciado e os dados", "marcar rápido", "ignorar unidades"]'::jsonb, 1, 'A interpretação correta depende de leitura cuidadosa.', 9
from public.contents where slug = 'matematica-tabelas-e-graficos-001';
with inserted as (
  insert into public.contents (
    slug, source_id, discipline, topic, name, summary, theory, theory_blocks, key_points, proof_tips, examples, common_errors,
    minimum_plan, required_plan_rank, is_published
  ) values (
    'matematica-teorema-de-pitagoras-001',
    'matematica-teorema-de-pitagoras-001',
    'Matemática',
    'Teorema de Pitágoras',
    'Teorema de Pitágoras',
    'No triângulo retângulo, o quadrado da hipotenusa é igual à soma dos quadrados dos catetos. A VUNESP cobra aplicação direta do teorema, identificação da hipotenusa e reconhecimento de ternas pitagóricas simples.',
    'O Teorema de Pitágoras vale apenas para triângulos retângulos, isto é, aqueles que possuem um ângulo de 90°. Nesse triângulo, o lado oposto ao ângulo reto é a hipotenusa, que é sempre o maior lado.

O teorema afirma: hipotenusa² = cateto² + cateto². Em símbolos, c² = a² + b².

Exemplo: se os catetos medem 3 e 4, então a hipotenusa mede 5, porque 3² + 4² = 9 + 16 = 25, e a raiz de 25 é 5. Essa é a terna pitagórica mais famosa: 3, 4 e 5.

Outras ternas úteis são 5, 12 e 13; 8, 15 e 17. Em prova, reconhecer essas relações economiza tempo.

A VUNESP pode cobrar triângulos, diagonais de retângulos e situações práticas, como escadas apoiadas em paredes. O passo principal é identificar corretamente a hipotenusa.

Em resumo, Pitágoras é uma ferramenta para achar um lado de triângulo retângulo quando se conhecem os outros dois.',
    '[{"titulo": "Conceito", "texto": "O Teorema de Pitágoras relaciona os lados do triângulo retângulo."}, {"titulo": "Regras", "texto": "Hipotenusa² = cateto² + cateto². Só vale em triângulo retângulo. A hipotenusa é o maior lado, oposto ao ângulo reto."}, {"titulo": "Como cai na prova (VUNESP)", "texto": "A VUNESP cobra cálculo da hipotenusa, de um cateto e aplicação em diagonais e problemas práticos."}]'::jsonb,
    '["Vale apenas para triângulo retângulo.", "A hipotenusa é o maior lado.", "c² = a² + b².", "Ternas 3,4,5 e 5,12,13 ajudam muito.", "Diagonais de retângulos podem usar Pitágoras."]'::jsonb,
    '["Encontre primeiro o ângulo reto.", "Depois localize a hipotenusa.", "Faça os quadrados com calma antes de extrair a raiz.", "Pegadinhas clássicas da VUNESP: usar Pitágoras em triângulo que não é retângulo."]'::jsonb,
    '["Catetos 3 e 4 geram hipotenusa 5.", "Catetos 5 e 12 geram hipotenusa 13.", "Se hipotenusa é 10 e um cateto é 6, o outro é 8."]'::jsonb,
    '["Não identificar a hipotenusa corretamente.", "Aplicar o teorema em triângulo não retângulo.", "Errar conta de quadrados e raízes."]'::jsonb,
    'basic'::public.plan_slug,
    1,
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
delete from public.flashcards where content_id in (select id from public.contents where slug = 'matematica-teorema-de-pitagoras-001');
insert into public.flashcards (content_id, question, answer, sort_order)
select id, 'Quando vale o Teorema de Pitágoras?', 'Apenas em triângulo retângulo.', 0
from public.contents where slug = 'matematica-teorema-de-pitagoras-001';
insert into public.flashcards (content_id, question, answer, sort_order)
select id, 'O que é hipotenusa?', 'É o lado oposto ao ângulo reto.', 1
from public.contents where slug = 'matematica-teorema-de-pitagoras-001';
insert into public.flashcards (content_id, question, answer, sort_order)
select id, 'Qual a fórmula do teorema?', 'c² = a² + b².', 2
from public.contents where slug = 'matematica-teorema-de-pitagoras-001';
insert into public.flashcards (content_id, question, answer, sort_order)
select id, 'Qual a terna mais famosa?', '3, 4 e 5.', 3
from public.contents where slug = 'matematica-teorema-de-pitagoras-001';
insert into public.flashcards (content_id, question, answer, sort_order)
select id, 'A diagonal de retângulo pode usar Pitágoras?', 'Sim.', 4
from public.contents where slug = 'matematica-teorema-de-pitagoras-001';
insert into public.flashcards (content_id, question, answer, sort_order)
select id, 'Qual maior cuidado?', 'Confirmar que o triângulo é retângulo.', 5
from public.contents where slug = 'matematica-teorema-de-pitagoras-001';
delete from public.questions where content_id in (select id from public.contents where slug = 'matematica-teorema-de-pitagoras-001');
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'Em um triângulo retângulo com catetos 3 e 4, a hipotenusa mede:', '["4", "5", "6", "7"]'::jsonb, 1, '3² + 4² = 9 + 16 = 25. Hipotenusa = 5.', 0
from public.contents where slug = 'matematica-teorema-de-pitagoras-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'Em um triângulo retângulo com catetos 5 e 12, a hipotenusa mede:', '["10", "11", "12", "13"]'::jsonb, 3, '5² + 12² = 25 + 144 = 169. Raiz de 169 = 13.', 1
from public.contents where slug = 'matematica-teorema-de-pitagoras-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'Se a hipotenusa mede 10 e um cateto mede 6, o outro mede:', '["4", "6", "8", "10"]'::jsonb, 2, '10² - 6² = 100 - 36 = 64. Raiz de 64 = 8.', 2
from public.contents where slug = 'matematica-teorema-de-pitagoras-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'O Teorema de Pitágoras vale para:', '["qualquer triângulo", "triângulo retângulo", "somente quadrado", "somente círculo"]'::jsonb, 1, 'Ele só se aplica a triângulos retângulos.', 3
from public.contents where slug = 'matematica-teorema-de-pitagoras-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'No triângulo retângulo, a hipotenusa é:', '["o menor lado", "um cateto", "o lado oposto ao ângulo reto", "qualquer lado"]'::jsonb, 2, 'Definição de hipotenusa.', 4
from public.contents where slug = 'matematica-teorema-de-pitagoras-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'A diagonal de um retângulo de lados 6 e 8 mede:', '["9", "10", "11", "12"]'::jsonb, 1, '6² + 8² = 36 + 64 = 100. Diagonal = 10.', 5
from public.contents where slug = 'matematica-teorema-de-pitagoras-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'Qual das seguintes é uma terna pitagórica?', '["2, 3, 4", "3, 4, 5", "4, 5, 6", "6, 7, 8"]'::jsonb, 1, '3² + 4² = 5².', 6
from public.contents where slug = 'matematica-teorema-de-pitagoras-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'Se os catetos medem 8 e 15, a hipotenusa mede:', '["16", "17", "18", "19"]'::jsonb, 1, '8² + 15² = 64 + 225 = 289. Raiz = 17.', 7
from public.contents where slug = 'matematica-teorema-de-pitagoras-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'O principal passo antes de aplicar Pitágoras é:', '["somar os lados", "confirmar o ângulo reto", "multiplicar por 2", "dividir por 3"]'::jsonb, 1, 'Sem triângulo retângulo, o teorema não vale.', 8
from public.contents where slug = 'matematica-teorema-de-pitagoras-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'A maior pegadinha nesse tema é:', '["esquecer a unidade", "usar em triângulo não retângulo", "somar antes de ler", "confundir com média"]'::jsonb, 1, 'Esse é o erro conceitual mais comum.', 9
from public.contents where slug = 'matematica-teorema-de-pitagoras-001';
with inserted as (
  insert into public.contents (
    slug, source_id, discipline, topic, name, summary, theory, theory_blocks, key_points, proof_tips, examples, common_errors,
    minimum_plan, required_plan_rank, is_published
  ) values (
    'matematica-volume-001',
    'matematica-volume-001',
    'Matemática',
    'Volume',
    'Volume',
    'Volume mede o espaço ocupado por um sólido. A VUNESP cobra principalmente cubo e paralelepípedo retângulo, com aplicação em caixas, reservatórios e blocos. O essencial é diferenciar volume de área.',
    'Volume é a medida do espaço interno ocupado por um sólido. As unidades são cúbicas, como cm³, m³ e dm³. Para sólidos simples, a fórmula é direta.

No paralelepípedo retângulo, volume = comprimento x largura x altura. No cubo, volume = lado³. Essas fórmulas aparecem muito em problemas com caixas, tanques, salas, blocos e recipientes.

É importante não confundir volume com área. Área mede superfície; volume mede espaço ocupado. Outro ponto útil é a equivalência entre unidades de volume e capacidade: 1 dm³ = 1 litro.

A VUNESP costuma cobrar cálculo direto e interpretação do sólido apresentado. Se o enunciado falar em capacidade interna, normalmente está pedindo volume.

Em resumo, volume é espaço tridimensional. Antes de calcular, identifique as três dimensões do sólido.',
    '[{"titulo": "Conceito", "texto": "Volume é a medida do espaço ocupado por um sólido."}, {"titulo": "Regras", "texto": "Paralelepípedo: V = comprimento x largura x altura. Cubo: V = lado³. Volume usa unidades cúbicas."}, {"titulo": "Como cai na prova (VUNESP)", "texto": "A VUNESP cobra volume em caixas, recipientes, salas e equivalências simples com litros."}]'::jsonb,
    '["Volume mede espaço interno.", "Paralelepípedo: C x L x A.", "Cubo: lado³.", "Volume usa unidades cúbicas.", "1 dm³ = 1 litro."]'::jsonb,
    '["Confirme se a questão quer volume ou área.", "Verifique se todas as medidas estão na mesma unidade.", "Em cubo, lembre-se do expoente 3.", "Pegadinhas clássicas da VUNESP: confundir cm² com cm³."]'::jsonb,
    '["Caixa 2 x 3 x 4 tem volume 24.", "Cubo de lado 5 tem volume 125.", "1 dm³ corresponde a 1 litro."]'::jsonb,
    '["Usar fórmula de área no lugar da de volume.", "Esquecer uma das três dimensões.", "Errar unidade cúbica."]'::jsonb,
    'basic'::public.plan_slug,
    1,
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
delete from public.flashcards where content_id in (select id from public.contents where slug = 'matematica-volume-001');
insert into public.flashcards (content_id, question, answer, sort_order)
select id, 'O que é volume?', 'É a medida do espaço ocupado por um sólido.', 0
from public.contents where slug = 'matematica-volume-001';
insert into public.flashcards (content_id, question, answer, sort_order)
select id, 'Como calcular o volume do cubo?', 'Lado ao cubo.', 1
from public.contents where slug = 'matematica-volume-001';
insert into public.flashcards (content_id, question, answer, sort_order)
select id, 'Como calcular o volume do paralelepípedo?', 'Comprimento x largura x altura.', 2
from public.contents where slug = 'matematica-volume-001';
insert into public.flashcards (content_id, question, answer, sort_order)
select id, 'Qual unidade aparece em volume?', 'Unidade cúbica, como cm³.', 3
from public.contents where slug = 'matematica-volume-001';
insert into public.flashcards (content_id, question, answer, sort_order)
select id, '1 dm³ equivale a quê?', '1 litro.', 4
from public.contents where slug = 'matematica-volume-001';
insert into public.flashcards (content_id, question, answer, sort_order)
select id, 'Qual maior cuidado?', 'Não confundir volume com área.', 5
from public.contents where slug = 'matematica-volume-001';
delete from public.questions where content_id in (select id from public.contents where slug = 'matematica-volume-001');
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'O volume de um cubo de lado 3 cm é:', '["9 cm³", "18 cm³", "27 cm³", "36 cm³"]'::jsonb, 2, '3³ = 27 cm³.', 0
from public.contents where slug = 'matematica-volume-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'O volume de uma caixa de 2 cm x 4 cm x 5 cm é:', '["11 cm³", "20 cm³", "40 cm³", "80 cm³"]'::jsonb, 2, '2 x 4 x 5 = 40 cm³.', 1
from public.contents where slug = 'matematica-volume-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'Qual unidade é adequada para volume?', '["cm", "cm²", "cm³", "m"]'::jsonb, 2, 'Volume é medido em unidades cúbicas.', 2
from public.contents where slug = 'matematica-volume-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'Se um cubo tem volume 64 cm³, seu lado mede:', '["2 cm", "3 cm", "4 cm", "8 cm"]'::jsonb, 2, '4³ = 64.', 3
from public.contents where slug = 'matematica-volume-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, '1 dm³ equivale a:', '["1 mL", "10 L", "1 L", "100 L"]'::jsonb, 2, 'Equivalência clássica entre volume e capacidade.', 4
from public.contents where slug = 'matematica-volume-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'O volume de um paralelepípedo com 3 m, 2 m e 4 m é:', '["9 m³", "12 m³", "24 m³", "36 m³"]'::jsonb, 2, '3 x 2 x 4 = 24 m³.', 5
from public.contents where slug = 'matematica-volume-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'Se uma caixa tem comprimento 10 cm, largura 2 cm e altura 3 cm, seu volume é:', '["15 cm³", "30 cm³", "60 cm³", "120 cm³"]'::jsonb, 2, '10 x 2 x 3 = 60 cm³.', 6
from public.contents where slug = 'matematica-volume-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'Volume mede:', '["comprimento de linha", "superfície", "espaço ocupado", "ângulo"]'::jsonb, 2, 'Essa é a definição de volume.', 7
from public.contents where slug = 'matematica-volume-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'A maior pegadinha em volume é:', '["somar lados", "confundir com área", "usar decimal", "contar vértices"]'::jsonb, 1, 'Muitos candidatos usam fórmula de área por engano.', 8
from public.contents where slug = 'matematica-volume-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'Uma sala de 5 m por 4 m por 3 m tem volume de:', '["20 m³", "40 m³", "60 m³", "80 m³"]'::jsonb, 2, '5 x 4 x 3 = 60 m³.', 9
from public.contents where slug = 'matematica-volume-001';
with inserted as (
  insert into public.contents (
    slug, source_id, discipline, topic, name, summary, theory, theory_blocks, key_points, proof_tips, examples, common_errors,
    minimum_plan, required_plan_rank, is_published
  ) values (
    'portugues-interpretacao-de-texto-001',
    'portugues-interpretacao-de-texto-001',
    'Português',
    'Interpretação de texto',
    'Interpretação de texto',
    'Interpretação de texto é a habilidade de compreender o que o texto diz de forma explícita e também o que ele sugere de forma implícita. Na VUNESP, o foco costuma estar na ideia central, finalidade do texto, inferências, sentidos de palavras e expressões no contexto, relação entre partes do texto e efeito de recursos linguísticos. Para acertar, o candidato deve ler com atenção, identificar o tema, observar a intenção do autor e evitar marcar alternativas baseadas em opinião pessoal.',
    'Interpretação de texto é uma das partes mais importantes da prova de Língua Portuguesa, especialmente em concursos da banca VUNESP. Não basta apenas ler rápido: é preciso entender a mensagem principal, as informações secundárias, o ponto de vista do autor, a finalidade do texto e o sentido que palavras e expressões assumem dentro do contexto.

Em prova, a interpretação pode cobrar tanto o que está escrito diretamente quanto aquilo que precisa ser concluído a partir do texto. Quando a resposta está claramente presente no texto, falamos em compreensão literal. Quando a banca exige que o candidato relacione informações e tire uma conclusão lógica, estamos diante da inferência.

O primeiro passo para interpretar bem é identificar o tema. Tema é o assunto geral do texto. Depois, é preciso encontrar a ideia central, que é aquilo que o autor quer defender, mostrar ou comunicar sobre esse tema. Um texto pode falar, por exemplo, sobre trânsito; mas sua ideia central pode ser a necessidade de educação no trânsito para reduzir acidentes.

Também é essencial perceber a finalidade textual. Todo texto é produzido com um objetivo: informar, convencer, criticar, denunciar, emocionar, divertir, alertar, orientar. A VUNESP costuma explorar muito isso, perguntando qual é a intenção do autor ou qual efeito determinado trecho produz.

Outro ponto importante é distinguir fato de opinião. Fato é algo apresentado como acontecimento, dado ou ocorrência verificável. Opinião é julgamento, avaliação, ponto de vista. A banca pode trazer alternativas que misturam fato com opinião para confundir o candidato.

Além disso, o sentido das palavras depende do contexto. Uma mesma palavra pode ter valor positivo, negativo, literal, figurado, irônico ou técnico conforme o texto. Por isso, não se deve interpretar palavras isoladamente. Sempre observe a frase, o parágrafo e o texto como um todo.

A progressão textual também merece atenção. As ideias do texto se ligam por conectivos, retomadas pronominais, repetições estratégicas e relações de causa, consequência, oposição, conclusão, explicação e comparação. Entender esses vínculos ajuda a perceber a lógica do texto. Se o autor usa ''porém'', há contraste. Se usa ''portanto'', há conclusão. Se usa ''porque'', há causa ou explicação, dependendo do contexto.

Na VUNESP, muitos erros acontecem porque o candidato marca alternativas extremas, com palavras como ''sempre'', ''nunca'', ''somente'', ''exclusivamente'', sem que o texto diga isso. Outro erro comum é escolher uma alternativa que parece correta pelo tema, mas não corresponde ao que o texto realmente afirma. Em interpretação, vale o texto, não o conhecimento de mundo do candidato.

Para estudar corretamente, o ideal é desenvolver um método de leitura. Primeiro, faça uma leitura global para entender o assunto. Depois, releia com atenção, destacando a tese, as palavras-chave, a posição do autor e as relações entre as ideias. Em seguida, leia o enunciado da questão com cuidado. Observe o verbo usado: identificar, inferir, concluir, justificar, depreender, substituir, comprovar. Cada verbo indica um tipo de raciocínio.

Quando a questão pedir inferência, a resposta deve ser compatível com o texto, ainda que não esteja escrita exatamente da mesma forma. Quando pedir informação explícita, a resposta deve estar clara no texto. Quando pedir sentido de palavra ou expressão, deve-se trocar por outra equivalente sem alterar o contexto.

Também é importante reconhecer o tom do texto: crítico, humorístico, irônico, informativo, reflexivo, alarmante, persuasivo. Muitas vezes, a banca cobra esse aspecto por meio do efeito de certas expressões, pontuação, escolha vocabular e construção argumentativa.

Em resumo, interpretar bem um texto na VUNESP exige atenção ao tema, à ideia principal, à finalidade, ao ponto de vista do autor, ao valor contextual das palavras e às relações lógicas entre as partes do texto. Quanto mais o candidato pratica a leitura atenta e compara alternativas com base no texto, maior a chance de acerto.',
    '[{"titulo": "Conceito", "texto": "Interpretação de texto é a capacidade de compreender, analisar e concluir sentidos a partir de um texto. Isso inclui identificar informações explícitas, fazer inferências, perceber a intenção do autor, reconhecer a ideia central e entender como palavras e expressões funcionam no contexto."}, {"titulo": "Regras", "texto": "Na interpretação, a resposta deve ser baseada no texto. É preciso diferenciar o que está expresso do que está implícito. Deve-se observar tema, ideia principal, finalidade, ponto de vista, conectivos, relações lógicas e sentidos contextuais. Não se pode responder pela opinião pessoal nem exagerar conclusões que o texto não autoriza."}, {"titulo": "Como cai na prova (VUNESP)", "texto": "A VUNESP cobra ideia central, finalidade, inferência, sentido de palavras e expressões, efeito de ironia, relações entre trechos, valor de conectivos e distinção entre fato e opinião. Muitas alternativas erradas trazem distorções do texto, exageros, generalizações ou trocas de sentido por palavras parecidas."}]'::jsonb,
    '["Tema é o assunto geral; ideia central é o que o texto diz sobre esse assunto.", "Nem toda resposta está escrita literalmente; muitas questões exigem inferência lógica.", "O sentido das palavras depende do contexto em que aparecem.", "A resposta correta precisa ser fiel ao texto, não à opinião do candidato.", "Conectivos e pronomes ajudam a entender a relação entre as partes do texto."]'::jsonb,
    '["Leia primeiro o texto para entender o panorama geral e só depois vá para as alternativas.", "Procure palavras-chave que revelem a tese, a intenção e o tom do autor.", "Desconfie de alternativas com exageros como ''sempre'', ''nunca'', ''somente'' e ''jamais''.", "Pegadinhas clássicas da VUNESP: alternativa compatível com o tema, mas incompatível com o texto."]'::jsonb,
    '["Se o texto afirma que a leitura desenvolve a capacidade crítica, pode-se concluir que ela contribui para uma formação mais reflexiva do indivíduo.", "Se a palavra ''frio'' aparece em uma notícia sobre clima, tende a ter sentido literal; se aparece em ''recebeu a notícia com frieza'', o sentido é figurado.", "Se um autor escreve ''embora existam avanços, os problemas persistem'', ele reconhece pontos positivos, mas mantém uma posição crítica."]'::jsonb,
    '["Marcar alternativa com base em conhecimento de mundo, e não no texto.", "Confundir tema com ideia central.", "Não perceber ironia, oposição ou conclusão expressa pelos conectivos."]'::jsonb,
    'basic'::public.plan_slug,
    1,
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
delete from public.flashcards where content_id in (select id from public.contents where slug = 'portugues-interpretacao-de-texto-001');
insert into public.flashcards (content_id, question, answer, sort_order)
select id, 'O que é interpretar um texto?', 'É compreender informações explícitas e implícitas, identificando tema, ideia central, intenção e relações de sentido.', 0
from public.contents where slug = 'portugues-interpretacao-de-texto-001';
insert into public.flashcards (content_id, question, answer, sort_order)
select id, 'Qual é a diferença entre tema e ideia central?', 'Tema é o assunto geral do texto; ideia central é a principal mensagem que o autor transmite sobre esse assunto.', 1
from public.contents where slug = 'portugues-interpretacao-de-texto-001';
insert into public.flashcards (content_id, question, answer, sort_order)
select id, 'Qual é uma pegadinha comum da VUNESP em interpretação?', 'Trazer uma alternativa que parece correta pelo assunto, mas que distorce o que o texto realmente afirma.', 2
from public.contents where slug = 'portugues-interpretacao-de-texto-001';
insert into public.flashcards (content_id, question, answer, sort_order)
select id, 'Como lembrar a base da interpretação?', 'Pense em TIFC: Tema, Ideia central, Finalidade e Contexto.', 3
from public.contents where slug = 'portugues-interpretacao-de-texto-001';
insert into public.flashcards (content_id, question, answer, sort_order)
select id, 'O que é inferência textual?', 'É a conclusão lógica tirada a partir de pistas do texto, mesmo quando a informação não está escrita literalmente.', 4
from public.contents where slug = 'portugues-interpretacao-de-texto-001';
insert into public.flashcards (content_id, question, answer, sort_order)
select id, 'Como usar a interpretação na prática da prova?', 'Comparando cada alternativa com o texto e eliminando tudo o que exagera, reduz ou altera o sentido original.', 5
from public.contents where slug = 'portugues-interpretacao-de-texto-001';
delete from public.questions where content_id in (select id from public.contents where slug = 'portugues-interpretacao-de-texto-001');
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'Leia o trecho: ''O uso excessivo do celular não afeta apenas a atenção, mas também a qualidade das relações presenciais.'' A ideia central do trecho é que', '["o celular provoca somente problemas de atenção.", "o celular pode prejudicar mais de um aspecto da vida social.", "as relações presenciais deixaram de existir por causa do celular.", "a atenção é mais importante do que a convivência social."]'::jsonb, 1, 'O trecho afirma que o uso excessivo do celular afeta a atenção e também a qualidade das relações presenciais. Portanto, a mensagem principal é que ele pode prejudicar mais de um aspecto da vida social. As demais alternativas exageram, reduzem ou distorcem a ideia do texto.', 0
from public.contents where slug = 'portugues-interpretacao-de-texto-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'Em uma questão de interpretação, quando o enunciado pede uma informação ''implícita'', o candidato deve procurar', '["uma opinião pessoal sobre o tema.", "uma informação escrita exatamente igual no texto.", "uma conclusão compatível com as pistas fornecidas pelo texto.", "uma frase decorada sobre o assunto."]'::jsonb, 2, 'Informação implícita é aquela que não aparece literalmente, mas pode ser concluída por inferência. Por isso, a resposta correta é a conclusão compatível com as pistas do texto. Opinião pessoal e memorização não resolvem interpretação.', 1
from public.contents where slug = 'portugues-interpretacao-de-texto-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'Leia: ''Apesar das campanhas educativas, muitos motoristas ainda insistem em práticas arriscadas.'' Nesse trecho, a expressão ''apesar de'' introduz ideia de', '["causa.", "conclusão.", "concessão.", "finalidade."]'::jsonb, 2, 'A locução ''apesar de'' indica concessão, isto é, mostra um fato que contrasta com o resultado esperado. Mesmo havendo campanhas educativas, muitos motoristas continuam agindo de forma arriscada.', 2
from public.contents where slug = 'portugues-interpretacao-de-texto-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'Ao afirmar que ''a pressa transformou o diálogo em monólogo'', o autor utiliza linguagem', '["técnica e objetiva.", "literal e científica.", "regional e coloquial.", "figurada e expressiva."]'::jsonb, 3, 'A frase não deve ser entendida em sentido literal, mas figurado. O autor faz um efeito expressivo para mostrar que, com a pressa, as pessoas passaram a ouvir menos e falar mais, prejudicando o verdadeiro diálogo.', 3
from public.contents where slug = 'portugues-interpretacao-de-texto-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'Em textos argumentativos, identificar a tese significa reconhecer', '["o assunto geral tratado pelo autor.", "a principal opinião ou posicionamento defendido no texto.", "qualquer informação secundária do segundo parágrafo.", "somente os exemplos usados para ilustrar o tema."]'::jsonb, 1, 'A tese é a ideia principal defendida pelo autor, ou seja, seu posicionamento central. O assunto geral é o tema, não a tese. Exemplos e informações secundárias apenas ajudam a sustentar a argumentação.', 4
from public.contents where slug = 'portugues-interpretacao-de-texto-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'Quando uma alternativa afirma mais do que o texto permite concluir, ocorre um erro de', '["generalização indevida.", "coerência temática.", "confirmação literal.", "retomada pronominal."]'::jsonb, 0, 'Esse é um erro clássico em interpretação: a alternativa amplia indevidamente a informação do texto, transformando uma ideia limitada em afirmação geral. A VUNESP usa bastante esse tipo de pegadinha.', 5
from public.contents where slug = 'portugues-interpretacao-de-texto-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'Leia o trecho: ''A cidade cresceu sem planejamento; por isso, enfrenta hoje sérios problemas de mobilidade.'' A expressão ''por isso'' estabelece relação de', '["oposição.", "explicação.", "consequência.", "comparação."]'::jsonb, 2, 'O trecho mostra uma causa anterior — crescimento sem planejamento — e depois apresenta o resultado: problemas de mobilidade. Portanto, ''por isso'' introduz consequência.', 6
from public.contents where slug = 'portugues-interpretacao-de-texto-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'Numa questão da VUNESP, o candidato deve considerar correta a alternativa que', '["parece mais bonita ou mais elaborada.", "traz uma opinião com a qual ele concorda.", "usa palavras difíceis e técnicas.", "mantém fidelidade ao sentido do texto."]'::jsonb, 3, 'Em interpretação, a alternativa correta é a que preserva fielmente o sentido do texto. Não importa se a frase é mais elegante, mais conhecida ou mais próxima da opinião do candidato.', 7
from public.contents where slug = 'portugues-interpretacao-de-texto-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'Se uma palavra pode ser substituída por outra sem alterar o sentido do trecho, a questão está cobrando principalmente', '["sentido contextual.", "classificação morfológica.", "estrutura silábica.", "origem etimológica."]'::jsonb, 0, 'Esse tipo de questão quer saber se o candidato compreende o sentido da palavra no contexto. Não basta conhecer um sinônimo de dicionário; a substituição precisa funcionar naquela situação específica.', 8
from public.contents where slug = 'portugues-interpretacao-de-texto-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'Leia: ''O autor enumera dados, apresenta exemplos e encerra com uma advertência ao leitor.'' A finalidade predominante desse texto é', '["narrar uma sequência de fatos históricos.", "informar e alertar sobre determinado problema.", "divertir o leitor com linguagem humorística.", "defender que exemplos substituem argumentos."]'::jsonb, 1, 'A presença de dados, exemplos e advertência aponta para um texto com finalidade informativa e de alerta. Não há elementos suficientes para classificá-lo como humorístico ou meramente narrativo.', 9
from public.contents where slug = 'portugues-interpretacao-de-texto-001';
with inserted as (
  insert into public.contents (
    slug, source_id, discipline, topic, name, summary, theory, theory_blocks, key_points, proof_tips, examples, common_errors,
    minimum_plan, required_plan_rank, is_published
  ) values (
    'portugues-classes-de-palavras-001',
    'portugues-classes-de-palavras-001',
    'Português',
    'Classes de palavras',
    'Classes de palavras',
    'Classes de palavras são grupos em que as palavras se organizam conforme função e sentido. As principais cobradas são substantivo, adjetivo, artigo, numeral, pronome, verbo, advérbio, preposição, conjunção e interjeição. A VUNESP costuma cobrar identificação da classe, função no contexto e valor semântico de certas palavras.',
    'As classes de palavras, também chamadas classes gramaticais, ajudam a compreender como cada palavra funciona dentro da frase. Em concursos, esse tema é muito cobrado porque serve de base para concordância, regência, pontuação e interpretação.

Substantivo é a palavra que nomeia seres, objetos, sentimentos, lugares ou ideias: casa, aluno, alegria, justiça. Adjetivo é a palavra que caracteriza o substantivo: casa bonita, aluno dedicado. Artigo acompanha o substantivo, determinando-o ou indeterminando-o: o, a, os, as, um, uma.

Numeral indica quantidade, ordem, multiplicação ou fração: dois, primeiro, dobro, meio. Pronome substitui, acompanha ou retoma o nome: eu, ela, este, meu, alguém. Verbo indica ação, estado, fenômeno ou processo: correr, ser, chover, crescer.

Advérbio modifica verbo, adjetivo ou outro advérbio, acrescentando ideia de tempo, modo, intensidade, lugar, afirmação, negação e outras circunstâncias: ontem, bem, muito, aqui, não. Preposição liga palavras, estabelecendo relação entre elas: de, em, por, para, com. Conjunção liga orações ou termos de mesma função: e, mas, porque, embora. Interjeição expressa emoção ou reação: ah!, ufa!, socorro!

A VUNESP também pode cobrar locuções, como locução adjetiva, adverbial e prepositiva. Além disso, uma mesma palavra pode mudar de classe conforme o contexto. Exemplo: ''o caminhar'' pode funcionar como substantivo; ''caminhar'' isoladamente, como verbo. Por isso, o contexto é decisivo.

Em resumo, dominar as classes de palavras é essencial para entender estrutura, sentido e relação entre os termos da oração.',
    '[{"titulo": "Conceito", "texto": "Classes de palavras são categorias gramaticais que agrupam palavras conforme função, forma e significado dentro da língua."}, {"titulo": "Regras", "texto": "Substantivo nomeia; adjetivo caracteriza; artigo determina; numeral quantifica; pronome substitui ou acompanha; verbo indica ação ou estado; advérbio modifica; preposição liga; conjunção conecta; interjeição expressa emoção. O contexto pode alterar a classificação funcional de uma palavra."}, {"titulo": "Como cai na prova (VUNESP)", "texto": "A VUNESP cobra reconhecimento de classes gramaticais, valor de pronomes, função de conjunções, noção de advérbio e mudanças de classe conforme o contexto."}]'::jsonb,
    '["Classes de palavras organizam o funcionamento das palavras na frase.", "O contexto pode mudar a classe ou a função de uma palavra.", "Verbo, pronome, advérbio e conjunção caem bastante na VUNESP.", "Esse tema se conecta com concordância, regência e pontuação.", "Identificar a classe ajuda a resolver várias outras matérias."]'::jsonb,
    '["Não decore apenas nomes: observe a função da palavra na frase.", "Analise o termo antes e depois da palavra para classificá-la.", "Se a palavra liga, modifica ou nomeia, isso já dá boa pista.", "Pegadinhas clássicas da VUNESP: palavra com aparência de uma classe funcionando como outra no contexto."]'::jsonb,
    '["Substantivo: disciplina.", "Adjetivo: disciplina rígida.", "Advérbio: estudou muito."]'::jsonb,
    '["Confundir adjetivo com advérbio.", "Classificar palavra isoladamente sem olhar a frase.", "Achar que toda palavra terminada em -mente é obrigatoriamente simples de interpretar sem contexto."]'::jsonb,
    'basic'::public.plan_slug,
    1,
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
delete from public.flashcards where content_id in (select id from public.contents where slug = 'portugues-classes-de-palavras-001');
insert into public.flashcards (content_id, question, answer, sort_order)
select id, 'O que é substantivo?', 'É a classe que nomeia seres, objetos, sentimentos, lugares e ideias.', 0
from public.contents where slug = 'portugues-classes-de-palavras-001';
insert into public.flashcards (content_id, question, answer, sort_order)
select id, 'O que é adjetivo?', 'É a classe que caracteriza o substantivo.', 1
from public.contents where slug = 'portugues-classes-de-palavras-001';
insert into public.flashcards (content_id, question, answer, sort_order)
select id, 'O que é advérbio?', 'É a palavra que modifica verbo, adjetivo ou outro advérbio.', 2
from public.contents where slug = 'portugues-classes-de-palavras-001';
insert into public.flashcards (content_id, question, answer, sort_order)
select id, 'O que é preposição?', 'É a palavra que liga termos e estabelece relação entre eles.', 3
from public.contents where slug = 'portugues-classes-de-palavras-001';
insert into public.flashcards (content_id, question, answer, sort_order)
select id, 'O que é conjunção?', 'É a palavra que conecta orações ou termos semelhantes.', 4
from public.contents where slug = 'portugues-classes-de-palavras-001';
insert into public.flashcards (content_id, question, answer, sort_order)
select id, 'O contexto influencia a classe da palavra?', 'Sim. A função no enunciado é decisiva.', 5
from public.contents where slug = 'portugues-classes-de-palavras-001';
delete from public.questions where content_id in (select id from public.contents where slug = 'portugues-classes-de-palavras-001');
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'Na frase ''O aluno dedicado estudou cedo'', a palavra ''dedicado'' é:', '["substantivo", "adjetivo", "advérbio", "pronome"]'::jsonb, 1, 'Ela caracteriza o substantivo ''aluno'', portanto é adjetivo.', 0
from public.contents where slug = 'portugues-classes-de-palavras-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'Na frase ''Ele chegou ontem'', a palavra ''ontem'' é:', '["substantivo", "verbo", "advérbio", "conjunção"]'::jsonb, 2, 'Indica circunstância de tempo, logo é advérbio.', 1
from public.contents where slug = 'portugues-classes-de-palavras-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'A palavra que liga dois termos em ''livro de história'' é classificada como:', '["advérbio", "preposição", "interjeição", "artigo"]'::jsonb, 1, '''De'' estabelece relação entre os termos, funcionando como preposição.', 2
from public.contents where slug = 'portugues-classes-de-palavras-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'Em ''eu, tu, ele'', temos exemplos de:', '["verbos", "numerais", "pronomes", "artigos"]'::jsonb, 2, 'São pronomes pessoais.', 3
from public.contents where slug = 'portugues-classes-de-palavras-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'A classe que indica ação, estado ou fenômeno é:', '["verbo", "substantivo", "artigo", "conjunção"]'::jsonb, 0, 'Essa definição corresponde ao verbo.', 4
from public.contents where slug = 'portugues-classes-de-palavras-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'Na frase ''Muito aluno faltou'', a palavra ''muito'' funciona como:', '["advérbio", "pronome indefinido", "preposição", "interjeição"]'::jsonb, 1, 'Ela acompanha o substantivo ''aluno'' com valor de quantidade indefinida.', 5
from public.contents where slug = 'portugues-classes-de-palavras-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'A palavra ''e'' é normalmente classificada como:', '["preposição", "conjunção", "artigo", "advérbio"]'::jsonb, 1, 'Ela liga termos ou orações, sendo conjunção.', 6
from public.contents where slug = 'portugues-classes-de-palavras-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'Em ''Que dia bonito!'', a palavra ''que'' pode atuar como:', '["interjeição/pronome exclamativo em contexto", "verbo", "artigo", "substantivo"]'::jsonb, 0, 'Nesse contexto exclamativo, o termo expressa intensidade e introduz a exclamação.', 7
from public.contents where slug = 'portugues-classes-de-palavras-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'A VUNESP costuma exigir do candidato, nesse tema:', '["apenas decorar listas", "reconhecer função no contexto", "evitar leitura", "ignorar a frase"]'::jsonb, 1, 'A classificação depende do uso contextual da palavra.', 8
from public.contents where slug = 'portugues-classes-de-palavras-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'Assinale a alternativa com artigo definido.', '["um", "uma", "o", "algum"]'::jsonb, 2, '''O'' é artigo definido; ''um'' e ''uma'' são indefinidos.', 9
from public.contents where slug = 'portugues-classes-de-palavras-001';
with inserted as (
  insert into public.contents (
    slug, source_id, discipline, topic, name, summary, theory, theory_blocks, key_points, proof_tips, examples, common_errors,
    minimum_plan, required_plan_rank, is_published
  ) values (
    'portugues-colocacao-pronominal-001',
    'portugues-colocacao-pronominal-001',
    'Português',
    'Colocação pronominal',
    'Colocação pronominal',
    'Colocação pronominal é a posição do pronome oblíquo átono em relação ao verbo. Existem três posições: próclise (antes do verbo), ênclise (depois do verbo) e mesóclise (no meio do verbo). Na VUNESP, o ponto central é reconhecer quando existe palavra atrativa que obriga a próclise, quando a ênclise é a forma adequada e quando a mesóclise aparece como forma culta com verbos no futuro do presente e no futuro do pretérito. O segredo é identificar o que vem antes do verbo e verificar se há fator de atração.',
    'Colocação pronominal é o estudo da posição dos pronomes oblíquos átonos em relação ao verbo. Esses pronomes são: me, te, se, o, a, os, as, lhe, lhes, nos e vos. Em língua portuguesa, eles podem aparecer antes do verbo, depois do verbo ou, em casos específicos, no meio da forma verbal. Essas três posições recebem nomes que a banca cobra bastante: próclise, ênclise e mesóclise.

A próclise ocorre quando o pronome vem antes do verbo. Exemplo: "Não me diga isso." Ela costuma ser usada quando há uma palavra que atrai o pronome. Essas palavras ou expressões atrativas são o ponto mais importante para resolver questões. Entre os principais fatores de próclise estão: palavras de sentido negativo (não, nunca, jamais, ninguém, nada), pronomes relativos (que, quem, cujo), pronomes indefinidos (alguém, tudo, todos, qualquer), pronomes demonstrativos em certos contextos (isso, aquilo, esta, esse), conjunções subordinativas (quando, se, porque, embora, conforme), advérbios antepostos ao verbo e frases exclamativas, interrogativas e optativas.

Exemplos: "Nunca me avisaram." / "Quem te contou isso?" / "Quando se iniciou a prova, houve silêncio." / "Tudo se resolveu rapidamente." Nesses casos, o pronome antes do verbo não é mera escolha estilística: é consequência da atração exercida pelo termo anterior.

A ênclise ocorre quando o pronome aparece depois do verbo. Exemplo: "Disseram-me a verdade." A ênclise é comum quando o verbo inicia a oração e não há palavra atrativa antes dele. Também é muito usada em verbos no imperativo afirmativo: "Ajude-me", "Traga-me os documentos". Outro ponto importante: não se inicia oração, em regra, com pronome oblíquo átono. Por isso, em vez de "Me avisaram cedo", a norma-padrão prefere "Avisaram-me cedo", salvo em usos mais informais ou estilísticos, que podem aparecer na fala, mas não são o padrão exigido em prova objetiva.

A mesóclise ocorre quando o pronome é colocado no meio do verbo. Exemplo: "Dir-lhe-ei a verdade" ou "Far-se-ia o possível". Ela aparece com verbos no futuro do presente e no futuro do pretérito, desde que não haja palavra atrativa exigindo próclise. É uma construção típica da linguagem formal e da norma-padrão. Em concursos, a VUNESP costuma cobrar mais o reconhecimento da possibilidade e da correção da estrutura do que o uso frequente em textos cotidianos.

Se houver palavra atrativa antes de um verbo no futuro, a mesóclise cai e a próclise passa a ser exigida. Exemplo: "Não lhe direi a verdade". Aqui o advérbio negativo "não" atrai o pronome. Seria inadequado usar "Não dir-lhe-ei". Esse contraste é clássico em prova.

Um tema muito importante é a colocação pronominal nas locuções verbais. Quando há verbo auxiliar + infinitivo, gerúndio ou particípio, o pronome pode aparecer em posições diferentes, a depender da estrutura e da presença de palavra atrativa. Exemplo: "Quero lhe dizer a verdade" e "Quero dizer-lhe a verdade" são formas aceitas em muitos contextos. Com palavra atrativa, a próclise costuma recair sobre o verbo auxiliar: "Não lhe quero dizer isso". Em construções com particípio, evita-se o pronome depois do particípio: diz-se "tinha-me contado", e não "tinha contado-me".

Outro ponto cobrado é a diferença entre norma culta escrita e uso coloquial. No português falado do Brasil, é comum ouvir frases como "Me empresta sua caneta". No entanto, em prova de norma-padrão, a preferência é por "Empreste-me sua caneta" ou outra construção equivalente, dependendo do contexto. A banca costuma explorar exatamente essa diferença entre o uso corrente e o uso gramaticalmente recomendado.

Há ainda casos em que a próclise é facultativa, como quando há certos advérbios sem pausa forte. Exemplo: "Aqui se trabalha" e "Aqui trabalha-se" podem ser aceitáveis, dependendo da estrutura e da entonação. Porém, em questões objetivas, a VUNESP geralmente trabalha com situações mais claras, focando os casos obrigatórios e os claramente inadequados.

É essencial dominar os fatores de atração. São eles que resolvem a maior parte das questões: palavras negativas, pronomes relativos, pronomes indefinidos, conjunções subordinativas, advérbios, frases interrogativas, exclamativas e optativas. Se algum desses elementos aparece antes do verbo, a tendência é a próclise. Se o verbo inicia a oração e não há atrativo, tende-se à ênclise. Se o verbo está no futuro e não há atrativo, a mesóclise pode ocorrer na linguagem formal.

Também é importante lembrar que o particípio não aceita pronome enclítico na norma-padrão. Por isso, formas como "havia contado-me" e "tinha entregue-lhe" são rejeitadas. O adequado é deslocar o pronome para antes do auxiliar: "havia-me contado", "tinha-lhe entregue".

Na VUNESP, as questões podem pedir a frase correta, a substituição de um termo por pronome, a reescrita mantendo o sentido ou a análise da norma-padrão. Muitas vezes a banca coloca alternativas muito parecidas, mudando apenas a posição do pronome. Nessas horas, a atenção aos atrativos faz toda a diferença.

Em resumo: próclise é pronome antes do verbo; ênclise é pronome depois do verbo; mesóclise é pronome no meio do verbo. A escolha depende do contexto sintático. Quem memoriza os fatores de atração e reconhece a estrutura verbal consegue acertar a maioria das questões de colocação pronominal.',
    '[{"titulo": "Conceito", "texto": "Colocação pronominal é a posição dos pronomes oblíquos átonos em relação ao verbo. Existem três possibilidades: próclise, quando o pronome vem antes do verbo (\"não me diga\"); ênclise, quando vem depois do verbo (\"diga-me\"); e mesóclise, quando aparece no meio do verbo (\"dir-lhe-ei\"). A posição correta depende da estrutura da frase, da presença de palavras atrativas e do tempo verbal empregado."}, {"titulo": "Regras", "texto": "Usa-se próclise quando há fator de atração, como palavras negativas (não, nunca), pronomes relativos (que, quem), pronomes indefinidos (alguém, tudo), conjunções subordinativas (quando, se, embora), advérbios antepostos, frases interrogativas, exclamativas e optativas. Usa-se ênclise quando o verbo inicia a oração e não há palavra atrativa, além do imperativo afirmativo. Usa-se mesóclise com verbos no futuro do presente ou no futuro do pretérito, desde que não haja fator de próclise. Em locuções verbais, a colocação varia conforme o auxiliar, o verbo principal e a presença de atrativo. Com particípio, evita-se a ênclise ao particípio: o pronome deve aparecer antes do auxiliar."}, {"titulo": "Como cai na prova (VUNESP)", "texto": "A VUNESP costuma cobrar colocação pronominal em reescrita de frases, escolha da alternativa correta e substituição de termos por pronomes oblíquos. A banca explora especialmente: presença de palavra atrativa, verbo no início da oração, imperativo afirmativo, futuro do presente/futuro do pretérito e locuções verbais. Também gosta de apresentar alternativas muito semelhantes, nas quais só uma respeita a norma-padrão. Saber identificar rapidamente o fator de atração é a melhor estratégia."}]'::jsonb,
    '["Próclise ocorre quando o pronome vem antes do verbo, geralmente por causa de palavra atrativa.", "Ênclise ocorre quando o pronome vem depois do verbo, sobretudo quando o verbo inicia a oração ou está no imperativo afirmativo.", "Mesóclise ocorre com futuro do presente e futuro do pretérito, sem palavra atrativa antes do verbo.", "Palavras negativas, pronomes relativos, indefinidos, conjunções subordinativas e advérbios antepostos atraem próclise.", "Em locuções verbais com particípio, o pronome não deve ficar depois do particípio."]'::jsonb,
    '["Antes de analisar a posição do pronome, procure palavra negativa, pronome relativo, conjunção ou advérbio antes do verbo.", "Se o verbo iniciar a oração, desconfie da próclise e teste a ênclise como forma padrão.", "Verbo no futuro sem palavra atrativa pode admitir mesóclise na linguagem formal.", "Pegadinhas clássicas da VUNESP: início de oração com pronome, futuro com palavra atrativa e pronome mal colocado em locução verbal."]'::jsonb,
    '["Não me contaram toda a verdade. (Próclise por causa da palavra negativa \"não\".)", "Entregaram-me o resultado ontem. (Ênclise, pois o verbo inicia a oração.)", "Dir-lhe-ei o que aconteceu mais tarde. (Mesóclise com futuro do presente sem fator de atração.)"]'::jsonb,
    '["Iniciar oração formal com pronome oblíquo átono sem justificativa: \"Me avisaram cedo\" em vez de \"Avisaram-me cedo\".", "Usar mesóclise quando existe palavra atrativa: \"Não dir-lhe-ei\" em vez de \"Não lhe direi\".", "Colocar pronome depois de particípio: \"tinha contado-me\" em vez de \"tinha-me contado\"."]'::jsonb,
    'basic'::public.plan_slug,
    1,
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
delete from public.flashcards where content_id in (select id from public.contents where slug = 'portugues-colocacao-pronominal-001');
insert into public.flashcards (content_id, question, answer, sort_order)
select id, 'O que é próclise?', 'É a colocação do pronome oblíquo átono antes do verbo.', 0
from public.contents where slug = 'portugues-colocacao-pronominal-001';
insert into public.flashcards (content_id, question, answer, sort_order)
select id, 'Quando a ênclise é comum na norma-padrão?', 'Quando o verbo inicia a oração e não há palavra atrativa, ou no imperativo afirmativo.', 1
from public.contents where slug = 'portugues-colocacao-pronominal-001';
insert into public.flashcards (content_id, question, answer, sort_order)
select id, 'Quando ocorre mesóclise?', 'Com verbos no futuro do presente ou no futuro do pretérito, sem fator de próclise.', 2
from public.contents where slug = 'portugues-colocacao-pronominal-001';
insert into public.flashcards (content_id, question, answer, sort_order)
select id, 'Qual é uma palavra clássica de atração pronominal?', '"Não" é um dos fatores mais fortes de próclise.', 3
from public.contents where slug = 'portugues-colocacao-pronominal-001';
insert into public.flashcards (content_id, question, answer, sort_order)
select id, 'Pode haver pronome depois do particípio na norma-padrão?', 'Não. O pronome deve aparecer antes do verbo auxiliar.', 4
from public.contents where slug = 'portugues-colocacao-pronominal-001';
insert into public.flashcards (content_id, question, answer, sort_order)
select id, 'Como lembrar a lógica geral da colocação pronominal?', 'Procure atrativo antes do verbo; se houver, próclise. Sem atrativo, tende-se à ênclise. No futuro formal, pode haver mesóclise.', 5
from public.contents where slug = 'portugues-colocacao-pronominal-001';
delete from public.questions where content_id in (select id from public.contents where slug = 'portugues-colocacao-pronominal-001');
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'Assinale a alternativa correta quanto à colocação pronominal, de acordo com a norma-padrão.', '["Me disseram que a prova será difícil.", "Disseram-me que a prova será difícil.", "Disseram que me a prova será difícil.", "Me disseram que a prova difícil será."]'::jsonb, 1, 'A alternativa correta é "Disseram-me que a prova será difícil". Como o verbo inicia a oração e não há palavra atrativa antes dele, a norma-padrão prefere a ênclise. A forma "Me disseram" é muito comum na fala, mas não é a preferida em contexto formal de prova.', 0
from public.contents where slug = 'portugues-colocacao-pronominal-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'Em qual alternativa a próclise é obrigatória?', '["Entregarei-lhe o material amanhã.", "Não lhe entregarei o material amanhã.", "Entregar-lhe-ei o material amanhã.", "Entreguei-lhe o material ontem."]'::jsonb, 1, 'A palavra negativa "não" atrai o pronome, tornando obrigatória a próclise: "Não lhe entregarei...". Nas demais alternativas, não há fator de atração que imponha próclise.', 1
from public.contents where slug = 'portugues-colocacao-pronominal-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'Assinale a alternativa em que a mesóclise foi empregada corretamente.', '["Não dir-lhe-ei a verdade.", "Dir-lhe-ei a verdade amanhã.", "Me direi a verdade amanhã.", "Direi-lhe a verdade amanhã, porque não posso omiti-la."]'::jsonb, 1, 'A mesóclise está correta em "Dir-lhe-ei a verdade amanhã", pois o verbo está no futuro do presente e não há palavra atrativa antes dele. Em A, a palavra negativa "não" exige próclise: "Não lhe direi". Em C, a frase está inadequada. Em D, a ênclise não é a forma mais recomendada com esse futuro na norma mais tradicional.', 2
from public.contents where slug = 'portugues-colocacao-pronominal-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'Assinale a alternativa correta de acordo com a norma-padrão.', '["Quem avisou-me sobre a mudança?", "Quem me avisou sobre a mudança?", "Quem avisou me sobre a mudança?", "Quem sobre a mudança me avisou?"]'::jsonb, 1, 'O pronome relativo/interrogativo "quem" atrai o pronome oblíquo, exigindo próclise: "Quem me avisou...?". As demais alternativas não respeitam a regra da atração.', 3
from public.contents where slug = 'portugues-colocacao-pronominal-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'Assinale a alternativa correta quanto à colocação pronominal em locução verbal.', '["Tinha contado-me o segredo antes da reunião.", "Tinha-me contado o segredo antes da reunião.", "Tinha contado o segredo-me antes da reunião.", "Me tinha contado o segredo antes da reunião, sendo essa a única forma correta."]'::jsonb, 1, 'Com particípio, o pronome não deve ficar depois do particípio. O correto é colocá-lo antes do auxiliar: "Tinha-me contado...". A próclise ao auxiliar também é a solução normativa adequada nesse caso.', 4
from public.contents where slug = 'portugues-colocacao-pronominal-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'Em qual alternativa o imperativo afirmativo está corretamente construído?', '["Me entregue o relatório agora.", "Entregue-me o relatório agora.", "Não entregue-me o relatório agora.", "Entregue o me relatório agora."]'::jsonb, 1, 'No imperativo afirmativo, a norma-padrão recomenda a ênclise: "Entregue-me o relatório agora." A alternativa C está errada porque, com a palavra negativa "não", o correto seria "Não me entregue...".', 5
from public.contents where slug = 'portugues-colocacao-pronominal-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'Assinale a alternativa em que a colocação pronominal está inadequada.', '["Quando me chamarem, irei imediatamente.", "Nada se resolveu até agora.", "Far-lhe-ia um favor, se pudesse.", "Jamais direi-lhe isso."]'::jsonb, 3, 'A alternativa inadequada é "Jamais direi-lhe isso". A palavra negativa "jamais" atrai o pronome, exigindo próclise: "Jamais lhe direi isso". As demais estão de acordo com a norma-padrão.', 6
from public.contents where slug = 'portugues-colocacao-pronominal-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'Assinale a alternativa correta.', '["Se contaram-me a verdade, não sei.", "Se me contaram a verdade, não sei.", "Se contaram me a verdade, não sei.", "Se a verdade me contaram, não sei, sendo essa a forma obrigatória."]'::jsonb, 1, 'A conjunção subordinativa "se" atrai o pronome, exigindo próclise: "Se me contaram a verdade, não sei." As outras formas não seguem a norma-padrão.', 7
from public.contents where slug = 'portugues-colocacao-pronominal-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'Em qual alternativa a colocação pronominal está correta segundo a norma-padrão?', '["Aqui trabalha-se com disciplina.", "Aqui se trabalha com disciplina.", "Se trabalha aqui com disciplina, sendo esta a única forma aceita.", "Aqui trabalha se com disciplina."]'::jsonb, 1, 'Com o advérbio "aqui" anteposto ao verbo, a próclise é forma plenamente aceitável: "Aqui se trabalha com disciplina." A alternativa A pode aparecer em alguns contextos, mas a banca costuma privilegiar a próclise diante do advérbio atrativo.', 8
from public.contents where slug = 'portugues-colocacao-pronominal-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'Assinale a alternativa que reescreve corretamente a frase "Entregarei o documento a ele" com pronome oblíquo, de acordo com a norma-padrão.', '["Lhe entregarei o documento.", "Entregar-lhe-ei o documento.", "Entregarei-lhe o documento.", "Me entregarei o documento."]'::jsonb, 1, 'Como o verbo está no futuro do presente e não há palavra atrativa antes dele, a forma mais tradicional da norma-padrão é a mesóclise: "Entregar-lhe-ei o documento". A alternativa A pode surgir em uso corrente, mas a banca costuma valorizar a construção clássica formal.', 9
from public.contents where slug = 'portugues-colocacao-pronominal-001';
with inserted as (
  insert into public.contents (
    slug, source_id, discipline, topic, name, summary, theory, theory_blocks, key_points, proof_tips, examples, common_errors,
    minimum_plan, required_plan_rank, is_published
  ) values (
    'portugues-concordancia-nominal-001',
    'portugues-concordancia-nominal-001',
    'Português',
    'Concordância nominal',
    'Concordância nominal',
    'Concordância nominal é a relação entre o substantivo e as palavras que o acompanham, como artigo, adjetivo, numeral e pronome. Em regra, os termos determinantes e caracterizadores concordam em gênero e número com o substantivo. A VUNESP cobra muito adjetivo posposto a dois substantivos, palavras invariáveis e expressões como anexo, mesmo, quite, bastante e meio.',
    'Concordância nominal é a adequação de palavras que se relacionam com o substantivo. Artigos, adjetivos, numerais e pronomes devem concordar com ele em gênero e número. Exemplo: "As alunas dedicadas chegaram." O artigo ''as'' e o adjetivo ''dedicadas'' concordam com ''alunas''.

Quando um adjetivo se refere a mais de um substantivo, a concordância varia conforme a posição e o sentido. Se o adjetivo vier depois de dois substantivos de gêneros diferentes, pode concordar com o mais próximo ou ir para o masculino plural: "amor e amizade verdadeira" ou "amor e amizade verdadeiros". Em prova, o contexto ajuda a perceber a forma mais adequada.

Se o adjetivo vier antes de dois substantivos, geralmente concorda com o mais próximo: "boa disciplina e comportamento". Expressões com ''é proibido'', ''é necessário'', ''é bom'' podem variar ou não, dependendo da presença de artigo. Exemplo: ''É proibida a entrada'' / ''É proibido entrada''.

Algumas palavras geram muitas dúvidas. ''Anexo'', ''incluso'', ''obrigado'', ''mesmo'', ''quite'' e ''leso'' variam. Exemplo: ''Seguem anexos os documentos''; ''Elas mesmas resolveram''; ''Estamos quites''. Já ''alerta'', em muitos usos, pode ser invariável: ''Os soldados estavam alerta''.

''Bastante'' pode ser advérbio ou pronome/adjetivo. Como advérbio, é invariável: ''Estudaram bastante''. Como pronome/adjetivo, varia: ''Havia bastantes questões''. ''Meio'' também exige atenção: como advérbio, é invariável: ''Ela ficou meio nervosa''; como numeral/adjetivo, varia: ''Tomou meia garrafa''.

Em resumo, a concordância nominal exige perceber quais palavras se ligam ao substantivo e qual função elas exercem. A VUNESP explora justamente as palavras de uso duvidoso e as estruturas com mais de um núcleo nominal.',
    '[{"titulo": "Conceito", "texto": "Concordância nominal é a relação de gênero e número entre o substantivo e seus determinantes ou caracterizadores."}, {"titulo": "Regras", "texto": "Artigo, adjetivo, numeral e pronome concordam com o substantivo. Adjetivo ligado a mais de um substantivo pode variar conforme posição. Palavras como ''bastante'', ''meio'', ''anexo'', ''mesmo'' e ''quite'' exigem atenção ao valor morfológico."}, {"titulo": "Como cai na prova (VUNESP)", "texto": "A VUNESP costuma cobrar palavras variáveis e invariáveis, adjetivos ligados a dois substantivos e expressões cristalizadas como ''é proibido'' e ''é necessário''."}]'::jsonb,
    '["A concordância nominal se dá entre o nome e seus acompanhantes.", "Bastante e meio mudam de comportamento conforme a função.", "Anexo, mesmo, quite e incluso costumam variar.", "Expressões como ''é proibido'' dependem da presença de artigo.", "A posição do adjetivo influencia a concordância."]'::jsonb,
    '["Descubra primeiro a que substantivo o termo está ligado.", "Verifique se a palavra é advérbio ou adjetivo/pronome.", "Nas palavras duvidosas, teste se elas modificam verbo ou nome.", "Pegadinhas clássicas da VUNESP: bastante, meio, anexo, quite e adjetivo com dois substantivos."]'::jsonb,
    '["As questões difíceis foram resolvidas.", "Elas ficaram meio cansadas. (advérbio invariável)", "Seguem anexos os documentos."]'::jsonb,
    '["Flexionar advérbio como se fosse adjetivo.", "Usar ''anexo'' invariável em contexto que exige concordância.", "Ignorar o artigo em expressões como ''é proibido''."]'::jsonb,
    'basic'::public.plan_slug,
    1,
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
delete from public.flashcards where content_id in (select id from public.contents where slug = 'portugues-concordancia-nominal-001');
insert into public.flashcards (content_id, question, answer, sort_order)
select id, 'O que é concordância nominal?', 'É a adequação em gênero e número entre o substantivo e seus acompanhantes.', 0
from public.contents where slug = 'portugues-concordancia-nominal-001';
insert into public.flashcards (content_id, question, answer, sort_order)
select id, 'Quando ''bastante'' varia?', 'Quando funciona como pronome ou adjetivo.', 1
from public.contents where slug = 'portugues-concordancia-nominal-001';
insert into public.flashcards (content_id, question, answer, sort_order)
select id, 'Quando ''bastante'' não varia?', 'Quando funciona como advérbio.', 2
from public.contents where slug = 'portugues-concordancia-nominal-001';
insert into public.flashcards (content_id, question, answer, sort_order)
select id, 'Quando ''meio'' é invariável?', 'Quando funciona como advérbio, com sentido de ''um pouco''.', 3
from public.contents where slug = 'portugues-concordancia-nominal-001';
insert into public.flashcards (content_id, question, answer, sort_order)
select id, 'A palavra ''anexo'' varia?', 'Sim, normalmente concorda com o substantivo.', 4
from public.contents where slug = 'portugues-concordancia-nominal-001';
insert into public.flashcards (content_id, question, answer, sort_order)
select id, 'Qual é a chave desse tema?', 'Descobrir a função da palavra na frase.', 5
from public.contents where slug = 'portugues-concordancia-nominal-001';
delete from public.questions where content_id in (select id from public.contents where slug = 'portugues-concordancia-nominal-001');
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'Assinale a alternativa correta quanto à concordância nominal.', '["Seguem anexo os documentos.", "Seguem anexos os documentos.", "Segue anexos os documentos.", "Seguem anexa os documentos."]'::jsonb, 1, '''Anexos'' concorda com ''documentos''.', 0
from public.contents where slug = 'portugues-concordancia-nominal-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'Em ''Elas ficaram meio preocupadas'', a palavra ''meio'' é:', '["adjetivo variável", "advérbio invariável", "substantivo", "pronome"]'::jsonb, 1, 'Tem valor de advérbio, equivalente a ''um pouco'', por isso é invariável.', 1
from public.contents where slug = 'portugues-concordancia-nominal-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'Assinale a alternativa correta.', '["Havia bastante alunos na sala.", "Havia bastantes alunos na sala.", "Havia bastantes aluno na sala.", "Havia bastante alunas e bastante meninos."]'::jsonb, 1, 'Como acompanha substantivo plural, ''bastantes'' funciona como pronome/adjetivo e varia.', 2
from public.contents where slug = 'portugues-concordancia-nominal-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'Na expressão ''É proibida a entrada'', a concordância ocorre porque:', '["há artigo determinando o substantivo", "o verbo é transitivo", "entrada é verbo", "não existe concordância"]'::jsonb, 0, 'A presença do artigo ''a'' leva a concordância com ''entrada''.', 3
from public.contents where slug = 'portugues-concordancia-nominal-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'Assinale a frase correta.', '["Elas mesma resolveram o problema.", "Elas mesmas resolveram o problema.", "Elas mesmo resolveram o problema.", "Elas mesm as resolveram o problema."]'::jsonb, 1, '''Mesmas'' concorda com o pronome ''elas''.', 4
from public.contents where slug = 'portugues-concordancia-nominal-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'Em ''Estamos quites com a tesouraria'', a palavra ''quites'' está:', '["inadequada", "correta, concordando com sujeito plural", "errada porque deveria ser ''quite''", "sem função"]'::jsonb, 1, '''Quite'' varia em número: ''quites'' está correto com sujeito plural.', 5
from public.contents where slug = 'portugues-concordancia-nominal-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'Assinale a alternativa correta quanto a ''meio''.', '["Ela tomou meio garrafa.", "Ela tomou meia garrafa.", "Ela tomou meio garrafas.", "Ela tomou meias garrafa."]'::jsonb, 1, 'Aqui ''meia'' é numeral/adjetivo, por isso concorda com ''garrafa''.', 6
from public.contents where slug = 'portugues-concordancia-nominal-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'Quando o adjetivo se refere a dois substantivos de gêneros diferentes e vem depois deles, pode:', '["ficar sempre no singular feminino", "concordar com o mais próximo ou ir para o masculino plural", "ficar sempre invariável", "concordar só com o primeiro"]'::jsonb, 1, 'Essa é a regra geral para esse tipo de estrutura.', 7
from public.contents where slug = 'portugues-concordancia-nominal-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'A palavra ''alerta'' em ''Os guardas estavam alerta'' é geralmente:', '["variável obrigatória", "invariável", "artigo", "pronome"]'::jsonb, 1, 'Nesse uso, ''alerta'' costuma ser invariável.', 8
from public.contents where slug = 'portugues-concordancia-nominal-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'A melhor forma de resolver concordância nominal é:', '["decorar listas sem contexto", "identificar o substantivo e a função das palavras ligadas a ele", "olhar só a última palavra da frase", "ignorar a classe gramatical"]'::jsonb, 1, 'A concordância depende da relação sintática entre os termos.', 9
from public.contents where slug = 'portugues-concordancia-nominal-001';
with inserted as (
  insert into public.contents (
    slug, source_id, discipline, topic, name, summary, theory, theory_blocks, key_points, proof_tips, examples, common_errors,
    minimum_plan, required_plan_rank, is_published
  ) values (
    'portugues-concordancia-verbal-001',
    'portugues-concordancia-verbal-001',
    'Português',
    'Concordância verbal',
    'Concordância verbal',
    'Concordância verbal é a relação entre o verbo e seu sujeito. Em regra, o verbo concorda em número e pessoa com o núcleo do sujeito. A VUNESP cobra muito sujeito simples, sujeito composto, expressões partitivas, porcentagem, pronomes de tratamento, verbo haver, verbo fazer indicando tempo e casos com se.',
    'Concordância verbal é a adequação do verbo ao sujeito da oração. Regra geral: o verbo concorda com o núcleo do sujeito em número e pessoa. Exemplo: "O aluno chegou." / "Os alunos chegaram." Parece simples, mas as provas exploram estruturas mais complexas.

Com sujeito simples, o verbo concorda com o núcleo: "A maioria dos candidatos chegou cedo." Em regra, o verbo fica no singular porque o núcleo é "maioria". Em alguns casos, admite-se concordância ideológica com o termo plural, dependendo da construção, mas a banca costuma preferir a forma mais normativa.

Com sujeito composto antes do verbo, este vai para o plural: "O professor e os alunos chegaram." Se o sujeito composto vier depois do verbo, pode haver concordância com o núcleo mais próximo ou com o conjunto, dependendo do caso: "Chegou o professor e os alunos" / "Chegaram o professor e os alunos".

O verbo haver, no sentido de existir, é impessoal e fica sempre no singular: "Havia muitos candidatos." O mesmo vale para haver indicando tempo decorrido: "Há dois anos estudo." O verbo fazer, indicando tempo ou fenômeno natural, também é impessoal: "Faz três meses que estudo." / "Fez dias frios naquele inverno."

Expressões partitivas como ''a maioria de'', ''grande parte de'', ''metade de'' geralmente levam o verbo ao singular, concordando com o núcleo partitivo. Expressões de porcentagem exigem atenção: "Dez por cento faltaram" ou "Dez por cento da turma faltou". O contexto define a concordância mais adequada.

Com pronome de tratamento, o verbo vai para a terceira pessoa: "Vossa Senhoria informou o horário." Com o pronome relativo ''que'', o verbo concorda com o antecedente do pronome. Com ''quem'', geralmente fica na terceira pessoa do singular, embora haja construções de concordância com o antecedente em certos contextos.

Nos casos com ''se'', é preciso diferenciar índice de indeterminação do sujeito e partícula apassivadora. Em ''Precisa-se de funcionários'', o sujeito é indeterminado; o verbo fica no singular. Em ''Vendem-se casas'', há voz passiva sintética, e o verbo concorda com ''casas''.

Em resumo, a concordância verbal depende da correta identificação do sujeito, do núcleo e do valor do verbo. A VUNESP costuma explorar exatamente os pontos em que o candidato se confunde com estrutura e interpretação.',
    '[{"titulo": "Conceito", "texto": "Concordância verbal é a relação de adequação entre o verbo e o sujeito da oração, considerando número e pessoa."}, {"titulo": "Regras", "texto": "O verbo concorda com o núcleo do sujeito. Com sujeito composto, vai ao plural em regra. ''Haver'' no sentido de existir e ''fazer'' indicando tempo são impessoais e ficam no singular. Com partícula ''se'', é preciso verificar se há indeterminação do sujeito ou voz passiva sintética."}, {"titulo": "Como cai na prova (VUNESP)", "texto": "A VUNESP cobra muito identificação do sujeito, casos com ''haver'', ''fazer'', expressões partitivas, porcentagem, sujeito composto e estruturas com ''se''."}]'::jsonb,
    '["O verbo concorda com o núcleo do sujeito.", "Haver com sentido de existir fica no singular.", "Fazer indicando tempo também fica no singular.", "Em ''vendem-se casas'', o verbo concorda com ''casas''.", "Identificar o sujeito corretamente é metade da questão."]'::jsonb,
    '["Localize o sujeito antes de olhar o verbo.", "Desconfie sempre dos verbos haver e fazer.", "Analise com cuidado estruturas com ''se''.", "Pegadinhas clássicas da VUNESP: maioria de, porcentagem, sujeito posposto e voz passiva sintética."]'::jsonb,
    '["Havia muitos alunos na sala.", "Faz dois anos que estudo.", "Vendem-se apartamentos no centro."]'::jsonb,
    '["Colocar ''haviam'' no sentido de existir.", "Flexionar ''fazer'' quando indica tempo decorrido.", "Não perceber que o verbo com ''se'' pode concordar com o sujeito paciente."]'::jsonb,
    'basic'::public.plan_slug,
    1,
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
delete from public.flashcards where content_id in (select id from public.contents where slug = 'portugues-concordancia-verbal-001');
insert into public.flashcards (content_id, question, answer, sort_order)
select id, 'Com quem o verbo concorda?', 'Com o núcleo do sujeito, em regra.', 0
from public.contents where slug = 'portugues-concordancia-verbal-001';
insert into public.flashcards (content_id, question, answer, sort_order)
select id, 'O verbo haver no sentido de existir varia?', 'Não. Fica sempre no singular.', 1
from public.contents where slug = 'portugues-concordancia-verbal-001';
insert into public.flashcards (content_id, question, answer, sort_order)
select id, 'O verbo fazer indicando tempo varia?', 'Não. Também fica no singular.', 2
from public.contents where slug = 'portugues-concordancia-verbal-001';
insert into public.flashcards (content_id, question, answer, sort_order)
select id, 'Em ''vendem-se casas'', o verbo concorda com quem?', 'Com ''casas''.', 3
from public.contents where slug = 'portugues-concordancia-verbal-001';
insert into public.flashcards (content_id, question, answer, sort_order)
select id, 'Em ''precisa-se de funcionários'', o verbo fica como?', 'No singular, porque o sujeito é indeterminado.', 4
from public.contents where slug = 'portugues-concordancia-verbal-001';
insert into public.flashcards (content_id, question, answer, sort_order)
select id, 'Qual a chave para acertar concordância verbal?', 'Identificar corretamente o sujeito e seu núcleo.', 5
from public.contents where slug = 'portugues-concordancia-verbal-001';
delete from public.questions where content_id in (select id from public.contents where slug = 'portugues-concordancia-verbal-001');
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'Assinale a alternativa correta quanto à concordância verbal.', '["Haviam muitos candidatos na fila.", "Havia muitos candidatos na fila.", "Houveram muitas dúvidas na prova.", "Existiu muitos erros no texto."]'::jsonb, 1, 'O verbo haver, com sentido de existir, é impessoal e fica no singular.', 0
from public.contents where slug = 'portugues-concordancia-verbal-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'Em ''Faz três anos que ele estuda'', o verbo está:', '["incorreto, porque deveria ir para o plural", "correto, porque indica tempo decorrido", "errado, porque falta sujeito", "correto só na linguagem informal"]'::jsonb, 1, 'O verbo fazer, indicando tempo decorrido, é impessoal e permanece no singular.', 1
from public.contents where slug = 'portugues-concordancia-verbal-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'Assinale a alternativa correta.', '["Vende-se casas novas.", "Vendem-se casas novas.", "Vendia-se casas novas.", "Venderam-se de casas novas."]'::jsonb, 1, 'Há voz passiva sintética; o verbo concorda com o sujeito paciente ''casas novas''.', 2
from public.contents where slug = 'portugues-concordancia-verbal-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'Em ''Precisa-se de funcionários'', o verbo fica no singular porque:', '["concorda com ''funcionários''", "o sujeito é oculto plural", "há índice de indeterminação do sujeito", "há voz passiva sintética"]'::jsonb, 2, 'A preposição impede a voz passiva; trata-se de índice de indeterminação do sujeito.', 3
from public.contents where slug = 'portugues-concordancia-verbal-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'Na frase ''A maioria dos alunos chegou cedo'', o verbo concorda com:', '["alunos", "cedo", "maioria", "dos"]'::jsonb, 2, 'O núcleo do sujeito é ''maioria'', por isso a forma singular é a mais normativa.', 4
from public.contents where slug = 'portugues-concordancia-verbal-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'Assinale a frase correta.', '["Faziam dois meses da última prova.", "Fazia dois meses da última prova.", "Fizeram dois meses da última prova.", "Fazem dois meses da última prova."]'::jsonb, 1, 'Fazer, indicando tempo decorrido, é impessoal e fica no singular.', 5
from public.contents where slug = 'portugues-concordancia-verbal-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'Com sujeito composto antes do verbo, a concordância correta é:', '["O diretor e os alunos chegou.", "O diretor e os alunos chegaram.", "O diretor e os alunos chegara.", "O diretor e os alunos chegaria."]'::jsonb, 1, 'Sujeito composto antes do verbo exige plural.', 6
from public.contents where slug = 'portugues-concordancia-verbal-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'Em ''Vossa Excelência decidiu o caso'', o verbo está na:', '["primeira pessoa", "segunda pessoa", "terceira pessoa", "forma nominal"]'::jsonb, 2, 'Pronomes de tratamento exigem verbo na terceira pessoa.', 7
from public.contents where slug = 'portugues-concordancia-verbal-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'Assinale a alternativa correta quanto ao verbo com porcentagem.', '["Dez por cento da turma faltaram.", "Dez por cento da turma faltou.", "Dez por cento da turma faltarão ontem.", "Dez por cento da turma faltarem."]'::jsonb, 1, 'Com ''da turma'', o verbo pode concordar com o termo no singular, sendo essa a forma esperada aqui.', 8
from public.contents where slug = 'portugues-concordancia-verbal-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'A melhor estratégia para resolver concordância verbal é:', '["olhar só a terminação do verbo", "procurar o sujeito e seu núcleo", "decorar frases soltas", "ignorar a estrutura"]'::jsonb, 1, 'O acerto depende de localizar o sujeito e analisar sua estrutura.', 9
from public.contents where slug = 'portugues-concordancia-verbal-001';
with inserted as (
  insert into public.contents (
    slug, source_id, discipline, topic, name, summary, theory, theory_blocks, key_points, proof_tips, examples, common_errors,
    minimum_plan, required_plan_rank, is_published
  ) values (
    'portugues-crase-001',
    'portugues-crase-001',
    'Português',
    'Crase',
    'Crase',
    'Crase é a fusão da preposição "a" com o artigo feminino "a(s)" ou com os pronomes demonstrativos "aquele(s)", "aquela(s)" e "aquilo". Para acertar questões, pense em dois pontos: o termo anterior exige a preposição "a" e o termo seguinte admite artigo feminino? Se os dois ocorrerem, há crase. A VUNESP cobra muito identificação de casos obrigatórios, proibidos e facultativos, além de substituição de palavras femininas por masculinas para testar a ocorrência do acento grave.',
    'Crase não é apenas um acento; ela indica a fusão de duas vogais idênticas. Em termos práticos, ocorre quando um termo anterior pede a preposição "a" e o termo posterior aceita artigo feminino "a" ou "as". Exemplo: "Vou à escola". O verbo "ir" pede a preposição "a" (quem vai, vai a algum lugar) e "escola" admite artigo feminino ("a escola"). Assim, surge "a + a = à".

Para entender bem, é preciso separar duas ideias. A primeira é a regência: alguns verbos e nomes exigem preposição. A segunda é o uso do artigo: alguns substantivos femininos aceitam artigo, outros não. A crase depende dessas duas condições ao mesmo tempo. Se houver só preposição, sem artigo, não há crase. Se houver só artigo, sem preposição, também não há crase.

Observe: "Obedeço à regra". O verbo "obedecer" exige preposição "a". "Regra" é substantivo feminino com artigo. Portanto, há crase. Já em "Assisti a aula", a frase está errada se o sentido for "ver a aula", porque o verbo "assistir", no sentido de ver, exige preposição. O correto é "Assisti à aula".

A crase também aparece antes de locuções adverbiais, prepositivas e conjuntivas femininas: "à tarde", "às pressas", "à medida que", "à procura de". Nesses casos, a tradição gramatical consagrou o uso do acento grave.

Também ocorre antes de pronomes demonstrativos iniciados por "a": "Refiro-me àquela aluna", "Entreguei o documento àquele setor", "Cheguei àquilo que desejava". Aqui há fusão da preposição "a" com o início desses pronomes.

Um ponto muito cobrado em prova é saber onde a crase não pode ocorrer. Nunca há crase antes de palavras masculinas: "andar a cavalo", "pagar a prazo", "viajar a trabalho". Também não ocorre, em regra, antes de verbos: "começou a estudar", "aprendeu a cozinhar". Antes de pronomes pessoais, de tratamento, indefinidos e demonstrativos em geral, normalmente não há crase: "entreguei a ela", "disse a Vossa Excelência", "referi-me a esta aluna".

Antes de nomes de cidade, é necessário testar o uso do artigo. Dizemos "vou a Brasília" e "volto de Brasília"; como não aparece artigo, não há crase: "Cheguei a Brasília". Mas dizemos "vou à Bahia" e "volto da Bahia"; como há artigo, há crase: "Cheguei à Bahia". Essa lógica é muito explorada pela VUNESP.

Antes de nomes próprios femininos, a crase pode variar conforme o uso do artigo. Se o nome vier naturalmente com artigo no contexto, a crase pode ocorrer: "Entreguei o presente à Ana" pode ser aceitável em contexto em que se use artigo, mas em muitos casos a banca prefere considerar facultativo, dependendo da construção e do padrão adotado. Em provas, é mais seguro observar o contexto e a gramática normativa do enunciado.

Com pronomes possessivos femininos no singular, a crase costuma ser facultativa: "Entreguei o caderno a sua irmã" ou "à sua irmã". Isso acontece porque o possessivo pode vir com ou sem artigo. No plural, a lógica pode se manter, dependendo da estrutura e do padrão do texto.

Outro caso importante é o da palavra "casa" e da palavra "terra". Sem especificação, normalmente não recebem artigo: "Voltei a casa", "os marinheiros chegaram a terra". Mas, quando determinadas, admitem artigo e pode haver crase: "Voltei à casa dos meus pais", "os marinheiros retornaram à terra natal".

Para descobrir se há crase, um teste muito útil é trocar a palavra feminina por uma masculina equivalente. Se surgir "ao", haverá crase no feminino. Exemplo: "Vou à escola" → "Vou ao colégio". Como apareceu "ao", no feminino haverá "à". Outro teste é perguntar se o termo anterior exige preposição "a". Se não exigir, não use crase.

A VUNESP gosta de explorar frases em que o candidato confunde sentido, regência e artigo. Por isso, não basta decorar regras soltas. É preciso enxergar a estrutura: verbo ou nome exigindo preposição + palavra feminina com artigo. Quando essa engrenagem aparece, a chance de crase é alta. Quando um dos elementos falta, o acento grave não deve ser usado.

Em resumo: crase é fenômeno de fusão. Pense sempre na conta: preposição "a" + artigo "a(s)" = à/às. Em alguns casos especiais, preposição "a" + "aquele(s)", "aquela(s)", "aquilo" = àquele, àquela, àquilo. Saber identificar obrigação, proibição e facultatividade é o caminho para acertar a maioria das questões da VUNESP.',
    '[{"titulo": "Conceito", "texto": "Crase é a fusão de duas vogais idênticas: a preposição \"a\" com o artigo feminino \"a\" ou \"as\". Também pode ocorrer com os pronomes demonstrativos \"aquele(s)\", \"aquela(s)\" e \"aquilo\". O sinal gráfico que marca essa fusão é o acento grave (`à`). Para haver crase, o termo anterior deve exigir preposição \"a\" e o termo seguinte deve aceitar artigo feminino. Exemplo: \"Refiro-me à professora\". Quem se refere, refere-se a alguém; além disso, \"professora\" admite artigo feminino."}, {"titulo": "Regras", "texto": "Há crase: antes de substantivos femininos que admitem artigo e dependem de termo regente com preposição \"a\" (\"obedecer à regra\"); em locuções femininas (\"à tarde\", \"às vezes\", \"à medida que\"); antes de \"aquele(s)\", \"aquela(s)\" e \"aquilo\" (\"refiro-me àquele aluno\"); em nomes de lugar que admitem artigo (\"vou à Bahia\"). Não há crase: antes de palavras masculinas (\"a prazo\"); antes de verbos (\"a estudar\"); antes de pronomes pessoais (\"a ela\"); em geral, antes de pronomes de tratamento (\"a Vossa Senhoria\"); antes de nomes de cidade sem artigo (\"a Brasília\"); com \"casa\" e \"terra\" quando usadas de modo genérico (\"voltei a casa\", \"chegaram a terra\"). A crase pode ser facultativa antes de pronomes possessivos femininos (\"a sua amiga\" ou \"à sua amiga\") e, em muitos contextos, antes de nomes próprios femininos, dependendo do uso do artigo."}, {"titulo": "Como cai na prova (VUNESP)", "texto": "A VUNESP costuma cobrar crase em frases contextualizadas, pedindo a alternativa correta quanto ao uso do acento grave. A banca adora misturar casos obrigatórios, proibidos e facultativos. É comum apresentar pares como \"à escola\" x \"a pé\", \"à tarde\" x \"a partir\", \"àquela\" x \"a esta\". Também gosta de testar nomes de lugares, expressões com \"casa\" e \"terra\", além do truque de substituir palavras femininas por masculinas para verificar se aparece \"ao\". Outra característica da banca é usar questões em que o erro está em apenas um termo, exigindo leitura cuidadosa da regência e do contexto."}]'::jsonb,
    '["Crase depende de duas condições: preposição \"a\" + artigo feminino \"a(s)\".", "Antes de palavra masculina e de verbo, normalmente não há crase.", "Locuções femininas como \"à tarde\", \"às vezes\" e \"à medida que\" geralmente levam crase.", "Antes de \"aquele(s)\", \"aquela(s)\" e \"aquilo\", pode haver crase se o termo anterior exigir preposição.", "O teste da troca por palavra masculina é um dos meios mais seguros para identificar a crase."]'::jsonb,
    '["Pergunte primeiro se o verbo ou nome exige a preposição \"a\". Sem preposição, não existe crase.", "Troque a palavra feminina por uma masculina equivalente; se aparecer \"ao\", no feminino haverá crase.", "Desconfie de locuções femininas e de expressões já consagradas pela norma, como \"às vezes\" e \"à medida que\".", "Pegadinhas clássicas da VUNESP: antes de verbo, palavra masculina, cidades sem artigo, pronomes e usos genéricos de \"casa\" e \"terra\"."]'::jsonb,
    '["Vou à escola todos os dias. (Quem vai, vai a algum lugar; \"escola\" admite artigo.)", "Chegamos a Brasília pela manhã. (Cidade sem artigo nesse uso; por isso, sem crase.)", "Refiro-me àquela candidata mais experiente. (Preposição \"a\" + pronome demonstrativo \"aquela\".)"]'::jsonb,
    '["Usar crase antes de verbo: \"começou à estudar\" está errado; o correto é \"começou a estudar\".", "Usar crase antes de palavra masculina: \"vende-se carro à prazo\" está errado; o correto é \"a prazo\".", "Esquecer a regência do verbo e tirar a crase onde ela é obrigatória: \"assistiu a aula\" no sentido de ver está inadequado; o correto é \"assistiu à aula\"."]'::jsonb,
    'basic'::public.plan_slug,
    1,
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
delete from public.flashcards where content_id in (select id from public.contents where slug = 'portugues-crase-001');
insert into public.flashcards (content_id, question, answer, sort_order)
select id, 'O que é crase?', 'É a fusão da preposição "a" com o artigo feminino "a" ou "as", marcada pelo acento grave.', 0
from public.contents where slug = 'portugues-crase-001';
insert into public.flashcards (content_id, question, answer, sort_order)
select id, 'Qual é a condição básica para existir crase?', 'O termo anterior deve exigir preposição "a" e o termo seguinte deve aceitar artigo feminino.', 1
from public.contents where slug = 'portugues-crase-001';
insert into public.flashcards (content_id, question, answer, sort_order)
select id, 'Antes de verbo pode haver crase?', 'Não. Antes de verbo, em regra, não se usa crase.', 2
from public.contents where slug = 'portugues-crase-001';
insert into public.flashcards (content_id, question, answer, sort_order)
select id, 'Como usar o teste do masculino?', 'Troque a palavra feminina por uma masculina equivalente; se surgir "ao", haverá crase no feminino.', 3
from public.contents where slug = 'portugues-crase-001';
insert into public.flashcards (content_id, question, answer, sort_order)
select id, 'Quando ocorre crase com pronomes demonstrativos?', 'Quando o termo anterior exige preposição "a" e o seguinte é "aquele(s)", "aquela(s)" ou "aquilo".', 4
from public.contents where slug = 'portugues-crase-001';
insert into public.flashcards (content_id, question, answer, sort_order)
select id, 'A crase pode ser facultativa em algum caso?', 'Sim. Pode ser facultativa antes de pronome possessivo feminino e, em certos contextos, antes de nome próprio feminino.', 5
from public.contents where slug = 'portugues-crase-001';
delete from public.questions where content_id in (select id from public.contents where slug = 'portugues-crase-001');
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'Assinale a alternativa em que o uso da crase está correto.', '["A diretora começou à falar sobre o projeto.", "Os funcionários saíram às pressas após o aviso.", "Eles viajaram à cavalo pela fazenda.", "O aluno ficou frente à frente com o professor."]'::jsonb, 1, 'A alternativa correta é "Os funcionários saíram às pressas após o aviso", pois "às pressas" é locução adverbial feminina e leva crase. Em "começou à falar", não há crase antes de verbo. Em "à cavalo", não há crase antes de palavra masculina. Em "frente à frente", a expressão consagrada é "frente a frente", sem crase.', 0
from public.contents where slug = 'portugues-crase-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'Em qual alternativa a crase foi empregada de acordo com a norma-padrão?', '["Chegaremos à Brasília no fim da tarde.", "O gerente referiu-se àquela reclamação antiga.", "A palestra será realizada à partir das nove horas.", "Ela entregou o documento à ele."]'::jsonb, 1, 'A correta é "O gerente referiu-se àquela reclamação antiga". O verbo "referir-se" exige preposição "a", e o pronome "aquela" admite a fusão: "a + aquela". Em "à Brasília", a cidade normalmente não admite artigo nesse uso. Em "à partir", a locução correta é "a partir", sem crase. Em "à ele", não há crase antes de pronome pessoal.', 1
from public.contents where slug = 'portugues-crase-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'Assinale a alternativa em que a ausência do sinal indicativo de crase está correta.', '["O policial obedeceu a ordem do superior.", "A candidata voltou a casa depois da prova.", "O estudante dirigiu-se a secretaria para pedir informação.", "A professora fez referência a aluna ausente."]'::jsonb, 1, 'A correta é "A candidata voltou a casa depois da prova", porque "casa", usada de modo genérico, normalmente não admite artigo. Nas demais, o acento grave seria necessário: "obedeceu à ordem", "dirigiu-se à secretaria", "fez referência à aluna".', 2
from public.contents where slug = 'portugues-crase-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'Observe as frases e assinale a alternativa correta quanto ao uso da crase.
I. Assistimos à apresentação da banda.
II. O médico estava disposto à ajudar o paciente.
III. Fizeram menção àquilo que foi decidido.
IV. A encomenda chegou à tempo.', '["Apenas I e II estão corretas.", "Apenas II e IV estão corretas.", "Apenas I e III estão corretas.", "Apenas I, III e IV estão corretas."]'::jsonb, 2, 'I está correta, porque "assistir", no sentido de ver, exige preposição "a", e "apresentação" admite artigo. II está errada, pois não há crase antes de verbo: o correto é "disposto a ajudar". III está correta: "menção a" + "aquilo" = "àquilo". IV está errada, porque a expressão correta é "a tempo", sem crase.', 3
from public.contents where slug = 'portugues-crase-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'Assinale a alternativa correta.', '["Os marinheiros retornaram à terra após meses no mar.", "Os marinheiros retornaram a terra após meses no mar.", "Os marinheiros retornaram à terra firme e segura, sem exceção.", "As alternativas B e C estão corretas, em contextos diferentes."]'::jsonb, 3, 'Sem determinação, usa-se "terra" em sentido genérico: "retornaram a terra". Quando a palavra vem determinada, admite artigo: "retornaram à terra firme", "à terra natal". Por isso, as alternativas B e C estão corretas, cada uma em seu contexto.', 4
from public.contents where slug = 'portugues-crase-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'Em qual alternativa a substituição da palavra destacada por um termo masculino equivalente manteria a ideia de crase na frase original?', '["A servidora entregou o relatório à chefe do setor.", "O garoto começou à leitura muito tarde.", "O atleta ficou à espera do resultado.", "A equipe chegou à pé ao alojamento."]'::jsonb, 0, 'Em "à chefe", se substituirmos por um termo masculino, teremos "ao chefe", o que confirma a crase. Em "à leitura", a construção está inadequada no contexto apresentado. Em "à espera" há locução feminina com crase, mas a pergunta fala em substituição por termo masculino equivalente no sintagma destacado, o que não se aplica com a mesma naturalidade. Em "à pé", a forma correta é "a pé", sem crase.', 5
from public.contents where slug = 'portugues-crase-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'Assinale a alternativa em que todas as expressões estão corretamente grafadas.', '["à medida que, às vezes, à noite", "a medida que, as vezes, à noite", "à medida que, as vezes, a noite", "a medida que, às vezes, a noite"]'::jsonb, 0, 'As locuções "à medida que", "às vezes" e "à noite" são expressões consagradas que levam crase. As demais alternativas trazem pelo menos uma grafia inadequada.', 6
from public.contents where slug = 'portugues-crase-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'Quanto ao uso da crase, assinale a alternativa correta.', '["Entreguei a prova à Vossa Senhoria.", "Entreguei a prova a Vossa Senhoria.", "Entreguei à prova a Vossa Senhoria.", "Entreguei à prova à Vossa Senhoria."]'::jsonb, 1, 'Em regra, não se usa crase antes de pronomes de tratamento, como "Vossa Senhoria". Assim, o correto é "Entreguei a prova a Vossa Senhoria". Não há motivo para crase em "a prova", pois ali o verbo não exige a preposição "a" antes do objeto direto.', 7
from public.contents where slug = 'portugues-crase-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'Assinale a frase em que o uso da crase é facultativo de acordo com a norma-padrão.', '["Enviei o e-mail à sua coordenadora ontem.", "Cheguei à Bahia na semana passada.", "Fiquei à espera de notícias.", "Começou à chover no final da tarde."]'::jsonb, 0, 'Com pronome possessivo feminino ("sua coordenadora"), a crase pode ser facultativa em muitos contextos: "a sua coordenadora" ou "à sua coordenadora". Em "à Bahia", a crase é obrigatória, pois o topônimo admite artigo. Em "à espera", a locução leva crase. Em "à chover", não há crase antes de verbo.', 8
from public.contents where slug = 'portugues-crase-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'Assinale a alternativa cuja frase está correta de acordo com a norma-padrão.', '["A testemunha fez alusão à fatos já conhecidos.", "O candidato saiu às 18 horas e voltou às 20 horas.", "O rapaz foi à pé até a estação.", "A servidora dirigiu-se à esta repartição."]'::jsonb, 1, 'A correta é "O candidato saiu às 18 horas e voltou às 20 horas", pois há crase na indicação de horas. Em "alusão à fatos", não há crase antes de palavra no plural sem artigo expresso; o adequado seria "alusão a fatos" ou "alusão aos fatos", conforme o caso. Em "à pé", o correto é "a pé". Em "à esta", não se usa crase antes de pronomes demonstrativos como "esta".', 9
from public.contents where slug = 'portugues-crase-001';
with inserted as (
  insert into public.contents (
    slug, source_id, discipline, topic, name, summary, theory, theory_blocks, key_points, proof_tips, examples, common_errors,
    minimum_plan, required_plan_rank, is_published
  ) values (
    'portugues-figuras-de-linguagem-001',
    'portugues-figuras-de-linguagem-001',
    'Português',
    'Figuras de linguagem',
    'Figuras de linguagem',
    'Figuras de linguagem são recursos expressivos usados para dar mais força, beleza, emoção ou sentido ao texto. As mais cobradas pela VUNESP são metáfora, comparação, metonímia, personificação, hipérbole, ironia, eufemismo, antítese e paradoxo. A banca costuma exigir reconhecimento do efeito de sentido provocado por essas figuras.',
    'Figuras de linguagem são construções que fogem do uso mais neutro da linguagem para produzir efeito expressivo. Elas podem atuar no sentido, no som, na construção da frase ou no pensamento. Em concursos, especialmente na VUNESP, o foco costuma recair nas figuras de sentido e nas figuras de pensamento.

A metáfora é uma comparação implícita. Exemplo: "Aquele menino é uma fera nos estudos." Não quer dizer literalmente que ele é um animal feroz; significa que ele é muito bom. A comparação, por sua vez, torna essa relação explícita, normalmente com conectivos como "como", "tal qual" ou "assim como": "Aquele menino estuda como uma máquina."

A metonímia ocorre quando uma palavra é usada no lugar de outra por relação de proximidade. Exemplo: "Li Machado de Assis". Na verdade, a pessoa leu a obra do autor, e não o autor em si. A personificação, também chamada prosopopeia, acontece quando se atribuem características humanas a seres inanimados ou irracionais: "O vento cantava na janela."

A hipérbole é o exagero intencional: "Esperei uma eternidade." A ironia expressa o contrário do que se quer dizer, geralmente com intenção crítica ou humorística: alguém toma chuva e diz "Que dia lindo!". O eufemismo suaviza uma ideia desagradável: "Ele partiu" em vez de "Ele morreu".

A antítese aproxima ideias opostas: "amor e ódio", "claro e escuro". O paradoxo vai além e une ideias aparentemente contraditórias em uma mesma construção com efeito expressivo: "É uma dor que desatina sem doer".

A VUNESP costuma cobrar tanto o nome da figura quanto o efeito que ela produz no texto. Muitas vezes a banca apresenta um trecho e pergunta que recurso expressivo foi empregado ou qual é o sentido pretendido. Por isso, não basta decorar definições; é preciso reconhecer a lógica da construção.

Em resumo, as figuras de linguagem alteram o modo de dizer para intensificar o sentido. Elas são importantes em interpretação porque revelam tom, intenção, crítica, humor e subjetividade do autor.',
    '[{"titulo": "Conceito", "texto": "Figuras de linguagem são recursos expressivos que modificam o uso comum da linguagem para produzir efeito de sentido, emoção, intensidade, humor ou crítica."}, {"titulo": "Regras", "texto": "Metáfora é comparação implícita; comparação é explícita; metonímia é substituição por proximidade; personificação atribui traço humano a seres não humanos; hipérbole exagera; ironia diz o contrário do que parece; eufemismo suaviza; antítese aproxima opostos; paradoxo une opostos de modo expressivo."}, {"titulo": "Como cai na prova (VUNESP)", "texto": "A VUNESP apresenta trechos e pede a identificação da figura ou do efeito de sentido. As mais exploradas são metáfora, ironia, hipérbole, personificação, eufemismo e antítese."}]'::jsonb,
    '["Metáfora é comparação implícita.", "Ironia depende do contexto e diz o contrário do aparente.", "Hipérbole trabalha com exagero intencional.", "Personificação atribui traços humanos a seres não humanos.", "A VUNESP cobra tanto o nome da figura quanto o efeito de sentido."]'::jsonb,
    '["Observe se a expressão pode ser entendida literalmente ou só em sentido figurado.", "Na ironia, compare a frase com a situação descrita.", "Se houver exagero evidente, teste hipérbole.", "Pegadinhas clássicas da VUNESP: confundir metáfora com comparação e antítese com paradoxo."]'::jsonb,
    '["Metáfora: A vida é um sopro.", "Hipérbole: Estou morrendo de fome.", "Personificação: A cidade acordou triste."]'::jsonb,
    '["Chamar toda expressão figurada de metáfora.", "Confundir comparação explícita com metáfora.", "Não perceber a ironia por falta de atenção ao contexto."]'::jsonb,
    'basic'::public.plan_slug,
    1,
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
delete from public.flashcards where content_id in (select id from public.contents where slug = 'portugues-figuras-de-linguagem-001');
insert into public.flashcards (content_id, question, answer, sort_order)
select id, 'O que é metáfora?', 'É uma comparação implícita entre dois elementos.', 0
from public.contents where slug = 'portugues-figuras-de-linguagem-001';
insert into public.flashcards (content_id, question, answer, sort_order)
select id, 'O que é hipérbole?', 'É o exagero intencional para dar força expressiva.', 1
from public.contents where slug = 'portugues-figuras-de-linguagem-001';
insert into public.flashcards (content_id, question, answer, sort_order)
select id, 'O que é ironia?', 'É dizer o contrário do que se quer sugerir, geralmente com crítica ou humor.', 2
from public.contents where slug = 'portugues-figuras-de-linguagem-001';
insert into public.flashcards (content_id, question, answer, sort_order)
select id, 'O que é personificação?', 'É atribuir características humanas a seres não humanos.', 3
from public.contents where slug = 'portugues-figuras-de-linguagem-001';
insert into public.flashcards (content_id, question, answer, sort_order)
select id, 'O que é metonímia?', 'É a substituição de um termo por outro ligado a ele por proximidade.', 4
from public.contents where slug = 'portugues-figuras-de-linguagem-001';
insert into public.flashcards (content_id, question, answer, sort_order)
select id, 'Qual a diferença entre antítese e paradoxo?', 'Antítese aproxima opostos; paradoxo une ideias contraditórias numa construção expressiva.', 5
from public.contents where slug = 'portugues-figuras-de-linguagem-001';
delete from public.questions where content_id in (select id from public.contents where slug = 'portugues-figuras-de-linguagem-001');
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'Em ''Estou morrendo de sono'', há:', '["eufemismo", "hipérbole", "metonímia", "ironia"]'::jsonb, 1, 'A frase usa exagero intencional, característica da hipérbole.', 0
from public.contents where slug = 'portugues-figuras-de-linguagem-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'Em ''O vento sussurrava à noite'', ocorre:', '["personificação", "metáfora", "paradoxo", "aliteração"]'::jsonb, 0, 'Atribui-se ao vento uma ação humana, o que caracteriza personificação.', 1
from public.contents where slug = 'portugues-figuras-de-linguagem-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'Em ''Li Graciliano Ramos nas férias'', ocorre:', '["metáfora", "metonímia", "comparação", "hipérbole"]'::jsonb, 1, 'O autor aparece no lugar de sua obra, relação típica de metonímia.', 2
from public.contents where slug = 'portugues-figuras-de-linguagem-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'Em ''Seu coração é de pedra'', há:', '["comparação", "metáfora", "ironia", "antítese"]'::jsonb, 1, 'Há comparação implícita, sem conectivo comparativo.', 3
from public.contents where slug = 'portugues-figuras-de-linguagem-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'A ironia se caracteriza por:', '["suavizar uma ideia ruim", "dizer exatamente o que pensa", "sugerir o contrário do que parece dizer", "repetir o mesmo som"]'::jsonb, 2, 'Na ironia, o sentido real se opõe ao sentido literal aparente.', 4
from public.contents where slug = 'portugues-figuras-de-linguagem-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'Em ''Ele descansou em paz'', como substituição de ''morreu'', há:', '["eufemismo", "hipérbole", "paradoxo", "metonímia"]'::jsonb, 0, 'O eufemismo suaviza uma ideia desagradável.', 5
from public.contents where slug = 'portugues-figuras-de-linguagem-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'A comparação explícita costuma apresentar:', '["oposição de ideias", "conectivo comparativo", "exagero", "substituição por proximidade"]'::jsonb, 1, 'Palavras como ''como'', ''tal qual'' e ''assim como'' costumam marcar comparação.', 6
from public.contents where slug = 'portugues-figuras-de-linguagem-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'Em ''amor e ódio caminham juntos'', a figura é:', '["paradoxo", "antítese", "personificação", "eufemismo"]'::jsonb, 1, 'A antítese aproxima ideias opostas.', 7
from public.contents where slug = 'portugues-figuras-de-linguagem-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'A VUNESP costuma cobrar figuras de linguagem principalmente para avaliar:', '["conjugação verbal", "efeito de sentido", "ortografia histórica", "morfologia nominal"]'::jsonb, 1, 'A banca quer saber que efeito expressivo a figura produz no texto.', 8
from public.contents where slug = 'portugues-figuras-de-linguagem-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'Assinale a alternativa que melhor define paradoxo.', '["Exagero claro", "União expressiva de ideias contraditórias", "Comparação explícita", "Suavização de ideia desagradável"]'::jsonb, 1, 'O paradoxo reúne ideias aparentemente inconciliáveis numa mesma formulação.', 9
from public.contents where slug = 'portugues-figuras-de-linguagem-001';
with inserted as (
  insert into public.contents (
    slug, source_id, discipline, topic, name, summary, theory, theory_blocks, key_points, proof_tips, examples, common_errors,
    minimum_plan, required_plan_rank, is_published
  ) values (
    'portugues-ideia-central-e-inferencia-001',
    'portugues-ideia-central-e-inferencia-001',
    'Português',
    'Ideia central e inferência',
    'Ideia central e inferência',
    'Ideia central é a mensagem principal do texto; inferência é a conclusão que o leitor tira a partir de pistas do texto, mesmo quando a informação não está escrita de forma direta. A VUNESP cobra muito a distinção entre o que está explícito e o que está implícito. Para acertar, o candidato precisa localizar o núcleo do texto, observar o objetivo do autor e evitar extrapolações.',
    'Ideia central é o núcleo do texto, ou seja, aquilo que o autor realmente quer comunicar como mensagem principal. Não é um detalhe, nem um exemplo isolado, nem uma informação secundária. Em textos curtos, a ideia central costuma estar mais concentrada; em textos longos, ela se mantém como fio condutor de todos os parágrafos. Já a inferência é a capacidade de concluir algo com base em pistas oferecidas pelo texto. Inferir não é inventar: é interpretar de forma lógica e fundamentada.

Na VUNESP, a ideia central costuma aparecer em perguntas como: "O texto trata principalmente de...", "A ideia principal do texto é...", "O objetivo do autor é...". Nessas situações, o erro mais comum é escolher uma alternativa que corresponde apenas a um detalhe verdadeiro, mas que não resume o texto como um todo.

Para encontrar a ideia central, é preciso observar título, introdução, repetições de palavras, argumentos predominantes, conclusão e oposição entre ideias. Também ajuda perguntar: se eu tivesse de resumir o texto em uma frase, qual seria? Essa frase deve abranger o conjunto do texto, não apenas um trecho.

A inferência, por sua vez, aparece quando a banca pergunta o que se pode concluir, depreender, entender ou subentender do texto. Nesses casos, a resposta correta não precisa estar escrita literalmente, mas deve ser consequência lógica do que está escrito. Exemplo: se o texto informa que alguém saiu de casa com guarda-chuva, casaco e pressa, é possível inferir que chovia ou que havia previsão de chuva. Isso não foi dito diretamente, mas decorre do contexto.

A VUNESP costuma explorar muito a diferença entre informação explícita e implícita. Explícita é a informação claramente escrita. Implícita é a que precisa ser percebida pelo leitor. Outro cuidado importante é evitar a extrapolação. Extrapolar é ir além do texto, acrescentando opinião pessoal, conhecimento de mundo sem base textual ou conclusão exagerada.

Em resumo, ideia central responde ao que o texto diz como mensagem principal; inferência responde ao que o texto permite concluir. Quem lê com atenção ao conjunto e respeita os limites do texto resolve bem esse tipo de questão.',
    '[{"titulo": "Conceito", "texto": "Ideia central é a mensagem principal do texto. Inferência é a conclusão tirada a partir de pistas textuais. A primeira resume o núcleo do texto; a segunda exige leitura interpretativa baseada em elementos explícitos e implícitos."}, {"titulo": "Regras", "texto": "A ideia central deve abranger o texto inteiro, não apenas partes isoladas. A inferência precisa estar apoiada em pistas do texto. Não se pode confundir inferência com opinião pessoal nem escolher alternativas que extrapolem o conteúdo."}, {"titulo": "Como cai na prova (VUNESP)", "texto": "A VUNESP cobra identificação do tema principal, da tese, do objetivo do autor e de conclusões implícitas. As pegadinhas geralmente trazem alternativas com detalhes do texto, generalizações exageradas ou informações plausíveis, mas não autorizadas pelo texto."}]'::jsonb,
    '["Ideia central é diferente de detalhe secundário.", "Inferir é concluir com base em pistas, não inventar.", "Informação explícita está escrita; implícita precisa ser deduzida.", "A alternativa correta deve respeitar os limites do texto.", "A VUNESP costuma trocar a ideia principal por exemplos ou detalhes verdadeiros."]'::jsonb,
    '["Leia o título e o primeiro e o último parágrafo com atenção redobrada.", "Teste se a alternativa resume o texto todo ou apenas uma parte.", "Em inferência, procure pistas concretas no texto antes de marcar.", "Pegadinhas clássicas da VUNESP: extrapolação, detalhe secundário e generalização excessiva."]'::jsonb,
    '["Se o texto inteiro discute os efeitos do celular na concentração, essa é a ideia central, não apenas um exemplo dado em um parágrafo.", "Se o texto diz que o personagem fechou a janela, vestiu casaco e pegou guarda-chuva, pode-se inferir que fazia frio ou iria chover.", "Se o autor critica o consumo excessivo, não se pode concluir que ele é contra todo tipo de consumo."]'::jsonb,
    '["Confundir título chamativo com ideia central sem verificar o restante do texto.", "Marcar alternativa com detalhe verdadeiro, mas secundário.", "Fazer inferência baseada em opinião pessoal, e não em pistas do texto."]'::jsonb,
    'basic'::public.plan_slug,
    1,
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
delete from public.flashcards where content_id in (select id from public.contents where slug = 'portugues-ideia-central-e-inferencia-001');
insert into public.flashcards (content_id, question, answer, sort_order)
select id, 'O que é ideia central?', 'É a mensagem principal do texto, aquilo que ele comunica de forma global.', 0
from public.contents where slug = 'portugues-ideia-central-e-inferencia-001';
insert into public.flashcards (content_id, question, answer, sort_order)
select id, 'O que é inferência?', 'É a conclusão lógica tirada a partir de pistas dadas pelo texto.', 1
from public.contents where slug = 'portugues-ideia-central-e-inferencia-001';
insert into public.flashcards (content_id, question, answer, sort_order)
select id, 'Inferir é inventar?', 'Não. Inferir é concluir com base no texto.', 2
from public.contents where slug = 'portugues-ideia-central-e-inferencia-001';
insert into public.flashcards (content_id, question, answer, sort_order)
select id, 'O que é informação implícita?', 'É a informação não dita diretamente, mas sugerida pelo texto.', 3
from public.contents where slug = 'portugues-ideia-central-e-inferencia-001';
insert into public.flashcards (content_id, question, answer, sort_order)
select id, 'Qual erro comum em ideia central?', 'Confundir exemplo ou detalhe com a mensagem principal.', 4
from public.contents where slug = 'portugues-ideia-central-e-inferencia-001';
insert into public.flashcards (content_id, question, answer, sort_order)
select id, 'Como a VUNESP costuma enganar?', 'Oferecendo alternativas plausíveis, mas que extrapolam ou reduzem o texto.', 5
from public.contents where slug = 'portugues-ideia-central-e-inferencia-001';
delete from public.questions where content_id in (select id from public.contents where slug = 'portugues-ideia-central-e-inferencia-001');
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'Em uma questão sobre ideia central, a alternativa correta deve:', '["reproduzir um detalhe do primeiro parágrafo", "resumir a mensagem global do texto", "apresentar a opinião do leitor", "trazer informação externa ao texto"]'::jsonb, 1, 'A ideia central resume o texto como um todo. Detalhes isolados e opiniões externas não cumprem esse papel.', 0
from public.contents where slug = 'portugues-ideia-central-e-inferencia-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'Inferir uma informação significa:', '["copiar uma frase do texto", "inventar uma hipótese livre", "tirar uma conclusão com base em pistas textuais", "discordar do autor"]'::jsonb, 2, 'Inferência é conclusão lógica baseada em elementos do próprio texto.', 1
from public.contents where slug = 'portugues-ideia-central-e-inferencia-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'Assinale a alternativa que apresenta informação implícita.', '["A que está escrita palavra por palavra", "A que depende de interpretação com base em pistas", "A que contradiz o texto", "A que está no título apenas"]'::jsonb, 1, 'Informação implícita não está dita diretamente; ela é percebida pelo leitor a partir de indícios.', 2
from public.contents where slug = 'portugues-ideia-central-e-inferencia-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'A VUNESP costuma trocar a ideia central por:', '["um detalhe secundário verdadeiro", "uma tese bem resumida", "a conclusão correta do texto", "o objetivo do autor"]'::jsonb, 0, 'Uma pegadinha clássica é apresentar um detalhe verdadeiro, mas que não resume o texto inteiro.', 3
from public.contents where slug = 'portugues-ideia-central-e-inferencia-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'Quando o enunciado pergunta o que se pode concluir do texto, ele cobra principalmente:', '["ortografia", "inferência", "pontuação", "tipologia textual"]'::jsonb, 1, 'Expressões como ''concluir'', ''depreender'' e ''subentender'' apontam para questão de inferência.', 4
from public.contents where slug = 'portugues-ideia-central-e-inferencia-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'Assinale o erro de leitura mais comum em questões de inferência.', '["basear-se em pistas do texto", "comparar alternativas", "extrapolar o que o texto permite", "observar o contexto"]'::jsonb, 2, 'O erro mais comum é ir além do que o texto autoriza.', 5
from public.contents where slug = 'portugues-ideia-central-e-inferencia-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'A informação explícita é aquela que:', '["precisa ser deduzida", "não aparece no texto", "está escrita de forma direta", "depende de opinião pessoal"]'::jsonb, 2, 'Informação explícita é a que aparece claramente no texto.', 6
from public.contents where slug = 'portugues-ideia-central-e-inferencia-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'Para achar a ideia central, é útil perguntar:', '["qual palavra é mais difícil", "qual frase resume o texto todo", "qual opinião eu tenho sobre o tema", "qual detalhe mais me chamou atenção"]'::jsonb, 1, 'A ideia central pode ser encontrada ao resumir o texto em uma única frase abrangente.', 7
from public.contents where slug = 'portugues-ideia-central-e-inferencia-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'Se uma alternativa parece possível, mas não pode ser comprovada pelo texto, ela deve ser:', '["marcada", "considerada correta por lógica externa", "descartada", "usada como inferência livre"]'::jsonb, 2, 'Na interpretação, a resposta deve estar autorizada pelo texto; o que não pode ser comprovado deve ser descartado.', 8
from public.contents where slug = 'portugues-ideia-central-e-inferencia-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'Em questões de ideia central, a melhor estratégia é:', '["focar apenas no primeiro parágrafo", "somar os detalhes mais curiosos", "observar o conjunto do texto", "ignorar o título"]'::jsonb, 2, 'A ideia central depende da leitura global, não da análise isolada de um trecho.', 9
from public.contents where slug = 'portugues-ideia-central-e-inferencia-001';
with inserted as (
  insert into public.contents (
    slug, source_id, discipline, topic, name, summary, theory, theory_blocks, key_points, proof_tips, examples, common_errors,
    minimum_plan, required_plan_rank, is_published
  ) values (
    'portugues-pontuacao-001',
    'portugues-pontuacao-001',
    'Português',
    'Pontuação',
    'Pontuação',
    'Pontuação organiza as ideias, evita ambiguidades e altera o sentido da frase. Na VUNESP, a banca cobra principalmente vírgula, dois-pontos, ponto e vírgula, travessão, parênteses e pontuação em orações explicativas, enumerativas, deslocadas e intercaladas. O segredo é entender a estrutura sintática: sujeito e verbo normalmente não se separam por vírgula; termos deslocados, explicações, enumerações e elementos intercalados costumam exigir marcação. Mais do que decorar regras soltas, é preciso perceber a função de cada sinal no texto.',
    'Pontuação é o conjunto de sinais usados para organizar o texto, marcar pausas, separar elementos, indicar entonação e tornar o sentido mais claro. Em prova, o candidato que sabe pontuação lê melhor, interpreta com mais precisão e evita erros de gramática e de compreensão. A VUNESP gosta muito desse assunto porque ele envolve regra, sentido e estrutura da frase ao mesmo tempo.

O ponto final encerra uma declaração completa. Ele indica o fechamento de uma ideia. Exemplo: "O candidato chegou cedo." O ponto também ajuda a dividir o texto em unidades de sentido. Já a vírgula é o sinal mais cobrado e também o que mais gera erro. Ela não serve apenas para marcar pausa de respiração; serve principalmente para organizar a sintaxe da frase. Isso é decisivo em prova.

A vírgula é usada para separar elementos de uma enumeração: "Trouxe caneta, lápis, borracha e régua." Também é usada para isolar vocativo: "Carlos, venha aqui." O vocativo é o termo usado para chamar alguém. A vírgula ainda aparece para isolar aposto explicativo: "São Paulo, maior cidade do país, enfrenta diversos problemas urbanos." Nesse caso, o trecho entre vírgulas explica o termo anterior.

Também se usa vírgula para marcar adjuntos adverbiais deslocados, especialmente quando são longos: "Naquele dia chuvoso de inverno, os alunos chegaram atrasados." Se o adjunto vier no início ou no meio da oração, é comum o uso da vírgula. A VUNESP adora explorar isso. Outro uso importante é separar orações coordenadas, principalmente quando não estão ligadas apenas por "e" ou quando há mudança de sujeito: "Estudei bastante, mas não consegui terminar a prova." / "O fiscal saiu da sala, e os candidatos permaneceram em silêncio." 

A vírgula também serve para isolar expressões explicativas, corretivas, conclusivas ou de continuidade, como "isto é", "ou seja", "por exemplo", "aliás", "além disso", "entretanto" quando intercaladas. Exemplo: "A prova, aliás, estava mais difícil que a anterior." Elementos intercalados quebram momentaneamente a sequência principal e, por isso, costumam vir entre vírgulas.

É fundamental saber onde a vírgula não pode ser usada. Não se separa por vírgula o sujeito do verbo: "Os candidatos chegaram cedo". Está errado escrever: "Os candidatos, chegaram cedo." Também não se separa o verbo de seu complemento direto em estruturas simples: "Ele comprou um livro." Não se deve escrever: "Ele comprou, um livro." Também não se separam, sem motivo, nome e complemento nominal, predicado e sujeito invertido, ou oração principal e subordinada substantiva objetiva direta introduzida sem deslocamento.

As orações subordinadas adjetivas merecem atenção especial. Quando são explicativas, ficam entre vírgulas: "Os alunos, que estudaram bastante, tiveram bom desempenho." A oração explica uma característica geral dos alunos. Quando são restritivas, não levam vírgula: "Os alunos que estudaram bastante tiveram bom desempenho." Agora a informação restringe o grupo: nem todos os alunos, apenas os que estudaram. A troca ou retirada da vírgula altera o sentido, e isso é muito cobrado pela VUNESP.

O ponto e vírgula indica uma pausa maior que a vírgula e menor que o ponto final. Ele é usado para separar itens de enumeração mais complexa, especialmente quando os itens já têm vírgulas internas, e para separar orações coordenadas longas ou de contraste mais marcado. Exemplo: "Na prova de Português, caiu interpretação de texto; na de Matemática, porcentagem e razão; na de Informática, segurança digital." 

Os dois-pontos introduzem explicação, enumeração, síntese, fala ou citação. Exemplo: "Só havia uma saída: estudar com disciplina." Também aparecem antes de fala em narrativa: "O professor disse: ''Revisem a matéria.''" Na prova, a banca pode pedir o valor semântico do uso dos dois-pontos.

O travessão pode indicar fala de personagem, destaque ou explicação intercalada. Exemplo: "O resultado — embora esperado — abalou a turma." Nesse caso, ele funciona como marca de intercalação, semelhante aos parênteses ou às vírgulas, mas com efeito expressivo diferente. Os parênteses, por sua vez, isolam observações acessórias, datas, siglas ou comentários secundários: "A PM-SP (Polícia Militar do Estado de São Paulo) tem papel essencial na segurança pública." 

As aspas são usadas para destacar citações, palavras estrangeiras, ironias, neologismos ou usos especiais de uma palavra. Exemplo: O candidato disse que estava "tranquilo", mas demonstrava nervosismo. As reticências indicam interrupção, continuidade, hesitação ou suspensão de sentido. Em texto literário, podem ter valor expressivo; em prova objetiva, normalmente a banca cobra o efeito de sentido.

O ponto de interrogação e o ponto de exclamação indicam, respectivamente, pergunta direta e exclamação, espanto, ordem ou emoção. Exemplo: "Você estudou?" / "Que prova difícil!" São sinais importantes para entonação e interpretação, embora em gramática normativa apareçam menos do que a vírgula.

Para acertar pontuação na VUNESP, é preciso fazer três perguntas: qual é a estrutura da frase, qual é a função do trecho destacado e o sinal muda o sentido? Muitas questões não pedem apenas a regra, mas o efeito produzido. Uma vírgula pode transformar uma oração restritiva em explicativa; um travessão pode destacar uma informação acessória; dois-pontos podem introduzir uma consequência ou uma explicação. 

Em resumo, a pontuação não é enfeite. Ela organiza a lógica do texto. Quem domina sujeito, verbo, complementos, termos deslocados, orações explicativas e enumerações complexas consegue resolver a maioria das questões. Na VUNESP, as maiores armadilhas são o uso indevido da vírgula entre sujeito e verbo, a falta de vírgula em elementos deslocados e a alteração de sentido nas orações adjetivas.',
    '[{"titulo": "Conceito", "texto": "Pontuação é o sistema de sinais gráficos usado para organizar a frase, marcar separações, indicar entonação e construir sentido. Cada sinal tem função específica. A vírgula, por exemplo, separa termos e orações em certas condições; o ponto final encerra uma ideia; os dois-pontos introduzem explicação, enumeração ou fala; o ponto e vírgula separa estruturas mais longas ou complexas. Na prática, pontuar bem significa compreender a estrutura sintática e o efeito de sentido produzido."}, {"titulo": "Regras", "texto": "A vírgula deve ser usada para separar enumerações, vocativos, apostos explicativos, elementos intercalados, adjuntos adverbiais deslocados e algumas orações coordenadas ou subordinadas deslocadas. Não se usa vírgula entre sujeito e verbo, entre verbo e complemento, entre nome e complemento sem motivo sintático. Orações adjetivas explicativas levam vírgula; restritivas não. O ponto e vírgula separa itens longos e orações extensas. Os dois-pontos introduzem explicação, fala, enumeração e conclusão anunciada. O travessão e os parênteses isolam intercalações, mas com efeitos expressivos diferentes. Aspas destacam citações, ironias e usos especiais."}, {"titulo": "Como cai na prova (VUNESP)", "texto": "A VUNESP costuma apresentar frases para o candidato avaliar se a pontuação está correta ou se altera o sentido. A banca explora muito: vírgula em adjunto adverbial deslocado, aposto, vocativo, oração explicativa, oração restritiva e proibição de vírgula entre sujeito e verbo. Também cobra reescrita de frases com manutenção de sentido, exigindo domínio da pontuação. Outro ponto frequente é o valor semântico dos dois-pontos, do travessão e do ponto e vírgula."}]'::jsonb,
    '["Vírgula não separa sujeito de verbo nem verbo de complemento em estruturas simples.", "Orações adjetivas explicativas levam vírgula; restritivas não levam.", "Vocativo, aposto explicativo e elementos intercalados costumam ser isolados por vírgulas.", "Dois-pontos introduzem explicação, enumeração, fala ou consequência anunciada.", "Na VUNESP, pontuação é cobrada tanto por regra quanto por alteração de sentido."]'::jsonb,
    '["Antes de aceitar ou retirar uma vírgula, identifique sujeito, verbo e complemento da oração.", "Quando houver trecho explicativo, acessório ou intercalado, teste o isolamento por vírgulas, travessões ou parênteses.", "Compare frases com e sem vírgula para perceber se a informação restringe ou apenas explica.", "Pegadinhas clássicas da VUNESP: vírgula entre sujeito e verbo, falta de vírgula em vocativo e mudança de sentido nas orações adjetivas."]'::jsonb,
    '["Candidatos, atenção ao horário de fechamento dos portões. (Vocativo isolado por vírgula.)", "Os alunos que revisaram a matéria tiveram melhor desempenho. (Oração restritiva, sem vírgula.)", "Os alunos, que revisaram a matéria, tiveram melhor desempenho. (Oração explicativa, com vírgulas.)"]'::jsonb,
    '["Colocar vírgula entre sujeito e verbo: \"Os candidatos, chegaram cedo.\"", "Não isolar vocativo: \"Senhores candidatos prestem atenção.\"", "Usar ou retirar vírgulas em oração adjetiva sem perceber que isso muda o sentido da frase."]'::jsonb,
    'basic'::public.plan_slug,
    1,
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
delete from public.flashcards where content_id in (select id from public.contents where slug = 'portugues-pontuacao-001');
insert into public.flashcards (content_id, question, answer, sort_order)
select id, 'Qual é o erro de vírgula mais comum em prova?', 'Separar sujeito de verbo ou verbo de complemento sem justificativa sintática.', 0
from public.contents where slug = 'portugues-pontuacao-001';
insert into public.flashcards (content_id, question, answer, sort_order)
select id, 'Quando a oração adjetiva leva vírgula?', 'Quando é explicativa, isto é, quando apenas acrescenta uma informação acessória.', 1
from public.contents where slug = 'portugues-pontuacao-001';
insert into public.flashcards (content_id, question, answer, sort_order)
select id, 'Para que servem os dois-pontos?', 'Para introduzir explicação, enumeração, fala, citação ou consequência anunciada.', 2
from public.contents where slug = 'portugues-pontuacao-001';
insert into public.flashcards (content_id, question, answer, sort_order)
select id, 'O que o ponto e vírgula indica?', 'Uma pausa intermediária, maior que a vírgula e menor que o ponto final.', 3
from public.contents where slug = 'portugues-pontuacao-001';
insert into public.flashcards (content_id, question, answer, sort_order)
select id, 'Como reconhecer um vocativo?', 'É o termo usado para chamar, invocar ou dirigir-se a alguém diretamente.', 4
from public.contents where slug = 'portugues-pontuacao-001';
insert into public.flashcards (content_id, question, answer, sort_order)
select id, 'Qual é a forma fácil de lembrar a diferença entre restritiva e explicativa?', 'Restritiva seleciona parte do grupo e não leva vírgula; explicativa comenta o grupo inteiro e leva vírgula.', 5
from public.contents where slug = 'portugues-pontuacao-001';
delete from public.questions where content_id in (select id from public.contents where slug = 'portugues-pontuacao-001');
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'Assinale a alternativa em que a pontuação está correta de acordo com a norma-padrão.', '["Os candidatos, chegaram cedo ao local da prova.", "Carlos traga, por favor, os documentos.", "Os fiscais orientaram os alunos, e encerraram os portões.", "Na manhã de domingo os candidatos, aguardavam o início da prova."]'::jsonb, 1, 'A alternativa correta é "Carlos traga, por favor, os documentos." O nome próprio funciona como vocativo e o trecho "por favor" está intercalado, justificando a pontuação. Em A, há erro por separar sujeito de verbo. Em C, a vírgula antes de "e" não se justifica nessa construção simples. Em D, falta vírgula após o adjunto adverbial deslocado longo e sobra vírgula entre sujeito e verbo.', 0
from public.contents where slug = 'portugues-pontuacao-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'Em qual alternativa a vírgula altera o sentido da frase por transformar a oração adjetiva em explicativa?', '["Os alunos que estudaram passaram.", "Os alunos, que estudaram, passaram.", "Os alunos estudaram, passaram e comemoraram.", "Os alunos, no entanto, passaram."]'::jsonb, 1, 'Na alternativa B, a oração "que estudaram" está entre vírgulas e passa a ser explicativa, sugerindo que todos os alunos estudaram. Na alternativa A, sem vírgulas, a oração é restritiva: apenas os alunos que estudaram passaram. Essa diferença de sentido é muito cobrada pela VUNESP.', 1
from public.contents where slug = 'portugues-pontuacao-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'Assinale a alternativa em que o uso dos dois-pontos está correto.', '["O candidato precisava de três coisas, calma foco e atenção.", "O candidato precisava de três coisas: calma, foco e atenção.", "O candidato precisava: de três coisas calma, foco e atenção.", "O candidato: precisava de três coisas, calma, foco e atenção."]'::jsonb, 1, 'Os dois-pontos introduzem a enumeração anunciada pelo trecho "três coisas". Por isso, a alternativa B está correta. Nas demais, há posicionamento inadequado do sinal ou ausência da enumeração corretamente estruturada.', 2
from public.contents where slug = 'portugues-pontuacao-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'Assinale a alternativa em que a vírgula foi empregada corretamente.', '["O professor explicou a matéria, com clareza.", "Durante a revisão final, os alunos fizeram anotações importantes.", "A banca cobrou, interpretação de texto e pontuação.", "Os candidatos atentos, entenderam o aviso."]'::jsonb, 1, 'A alternativa correta é B, porque o adjunto adverbial deslocado "Durante a revisão final" está corretamente isolado por vírgula. Em A, a vírgula separa indevidamente verbo e adjunto. Em C, separa verbo e complemento. Em D, separa sujeito e verbo.', 3
from public.contents where slug = 'portugues-pontuacao-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'Em qual alternativa o ponto e vírgula foi usado adequadamente?', '["Estudou Português; e Matemática para a prova.", "Na mala havia: canetas; lápis; borracha.", "Na prova de Português, caiu pontuação; na de Matemática, porcentagem; na de Informática, segurança digital.", "Os candidatos chegaram cedo; porque queriam revisar o conteúdo."]'::jsonb, 2, 'A alternativa C está correta porque o ponto e vírgula separa itens de uma enumeração complexa, cujos segmentos já possuem vírgulas internas. Em A, o uso é inadequado antes de "e". Em B, a pontuação está mal organizada. Em D, o ponto e vírgula não deve separar oração principal de subordinada causal introduzida por "porque" dessa forma.', 4
from public.contents where slug = 'portugues-pontuacao-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'Assinale a alternativa em que a ausência de vírgula está correta.', '["João entregue os documentos agora.", "Os servidores que chegaram cedo iniciaram o atendimento.", "No início da manhã os candidatos chegaram ansiosos.", "A diretora aliás já havia sido avisada."]'::jsonb, 1, 'A alternativa correta é B, pois a oração "que chegaram cedo" é restritiva e não deve ser isolada por vírgula. Em A, o vocativo "João" exige vírgula. Em C, o adjunto adverbial deslocado no início da frase recomenda vírgula. Em D, o termo intercalado "aliás" deve ficar entre vírgulas.', 5
from public.contents where slug = 'portugues-pontuacao-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'Assinale a alternativa em que a pontuação está incorreta.', '["A verdade é uma só: sem estudo, não há aprovação.", "Os fiscais — muito atentos — observaram todos os candidatos.", "Os livros, os cadernos, e as apostilas estavam sobre a mesa.", "Maria, sua inscrição foi confirmada."]'::jsonb, 2, 'A alternativa incorreta é C. Em enumerações simples, normalmente não se usa vírgula antes da conjunção "e": o correto seria "Os livros, os cadernos e as apostilas...". As demais alternativas apresentam pontuação aceitável dentro da norma.', 6
from public.contents where slug = 'portugues-pontuacao-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'Em qual alternativa as vírgulas isolam um aposto explicativo?', '["Candidatos, mantenham a calma.", "A prova, difícil para muitos, exigiu concentração.", "São Paulo, maior cidade do país, enfrenta desafios diários.", "Se possível, revisem o conteúdo hoje."]'::jsonb, 2, 'Na alternativa C, o trecho "maior cidade do país" explica "São Paulo" e funciona como aposto explicativo, por isso aparece entre vírgulas. Em A, há vocativo. Em B, há adjetivo/expressão explicativa intercalada, mas o caso mais clássico de aposto explicativo é o da alternativa C. Em D, há expressão adverbial reduzida deslocada.', 7
from public.contents where slug = 'portugues-pontuacao-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'Assinale a alternativa em que o travessão pode substituir as vírgulas sem prejuízo essencial da estrutura.', '["Os alunos — chegaram cedo — para a revisão.", "A prova, apesar do cansaço, foi concluída por todos.", "Os candidatos — estudaram bastante passaram no concurso.", "Carlos — venha aqui agora."]'::jsonb, 1, 'Na alternativa B, o trecho "apesar do cansaço" é intercalado e pode ser isolado por vírgulas ou travessões, sem prejuízo essencial da estrutura. Em A, o travessão separa inadequadamente sujeito e verbo. Em C, falta pontuação adequada para organizar a frase. Em D, o vocativo pede vírgula, não travessão.', 8
from public.contents where slug = 'portugues-pontuacao-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'Assinale a alternativa correta quanto ao emprego da pontuação.', '["Não desista, candidato; a aprovação exige constância.", "Não desista candidato: a aprovação exige constância.", "Não, desista candidato; a aprovação exige constância.", "Não desista candidato, a aprovação exige constância."]'::jsonb, 0, 'A alternativa A está correta. O vocativo "candidato" é isolado por vírgula e o ponto e vírgula separa duas orações coordenadas com relativa autonomia semântica. Em B, falta vírgula para isolar o vocativo. Em C, a vírgula após "Não" altera indevidamente o sentido. Em D, há problema de pontuação por unir inadequadamente as orações apenas com vírgula.', 9
from public.contents where slug = 'portugues-pontuacao-001';
with inserted as (
  insert into public.contents (
    slug, source_id, discipline, topic, name, summary, theory, theory_blocks, key_points, proof_tips, examples, common_errors,
    minimum_plan, required_plan_rank, is_published
  ) values (
    'portugues-regencia-verbal-e-nominal-001',
    'portugues-regencia-verbal-e-nominal-001',
    'Português',
    'Regência verbal e nominal',
    'Regência verbal e nominal',
    'Regência é a relação de dependência entre um termo regente e um termo regido, normalmente com ou sem preposição. Na regência verbal, o termo regente é o verbo; na nominal, é um nome. A VUNESP cobra muito verbos como assistir, visar, obedecer, implicar, preferir, namorar e aspirar, além de nomes que exigem preposição, como respeito a, obediência a, necessidade de e favorável a.',
    'Regência é a parte da gramática que estuda a relação entre uma palavra que exige complemento e esse complemento. Quando o termo que exige é um verbo, temos regência verbal. Quando é um nome, temos regência nominal.

Na regência verbal, o ponto principal é saber se o verbo pede ou não preposição e qual preposição ele exige. Exemplo: ''Gostar de algo''; ''obedecer a alguém''; ''assistir a um filme'' no sentido de ver; ''assistir alguém'' no sentido de prestar assistência. Perceba que o sentido altera a regência.

Alguns verbos clássicos de prova: ''assistir'' = ver pede preposição ''a''; ''assistir'' = socorrer é transitivo direto. ''Visar'' = almejar pede preposição ''a''; ''visar'' = pôr visto é transitivo direto. ''Aspirar'' = desejar pede preposição ''a''; ''aspirar'' = sorver, respirar, é transitivo direto. ''Implicar'' = acarretar é transitivo direto; ''implicar com'' = antipatizar. ''Preferir'' pede estrutura sem reforço comparativo exagerado: prefere-se uma coisa a outra, e não ''mais do que''.

O verbo ''obedecer'' pede preposição ''a'': ''obedecer às regras''. ''Namorar'', na norma-padrão, é transitivo direto: ''namorar alguém'', sem preposição. ''Chegar'' e ''ir'' costumam pedir a preposição ''a'' ou, no uso corrente, ''para'', mas a banca frequentemente privilegia construções mais normativas em certos contextos escritos.

Na regência nominal, o nome exige complemento preposicionado. Exemplo: ''respeito a'', ''amor a'', ''necessidade de'', ''favorável a'', ''capaz de'', ''aversão a'', ''orgulho de''. O núcleo não é verbo, e sim substantivo, adjetivo ou advérbio. Exemplo: ''Tenho respeito aos professores''; ''Ele é favorável à proposta''; ''A decisão foi contrária ao regulamento''.

A regência se relaciona diretamente com a crase. Se o verbo ou nome exige preposição ''a'' e o termo seguinte admite artigo feminino, pode ocorrer crase: ''obedecer à norma'', ''favorável à medida''.

A VUNESP gosta de cobrar substituição de termos, correção gramatical e análise de frases em que a preposição muda conforme o sentido do verbo. Por isso, decorar listas ajuda, mas entender o significado em cada frase ajuda muito mais.

Em resumo, regência é exigência. O verbo ou nome pede um complemento de determinada forma. Quem observa o sentido e memoriza os casos mais frequentes acerta a maior parte das questões.',
    '[{"titulo": "Conceito", "texto": "Regência é a relação entre um termo regente, que exige complemento, e um termo regido, que completa seu sentido. Essa relação pode ou não envolver preposição."}, {"titulo": "Regras", "texto": "Na regência verbal, o verbo determina a forma do complemento. Na nominal, o nome determina. Muitos verbos mudam de regência conforme o sentido, como assistir, visar e aspirar. Muitos nomes exigem preposição fixa, como respeito a, necessidade de, favorável a e contrário a."}, {"titulo": "Como cai na prova (VUNESP)", "texto": "A VUNESP cobra verbos clássicos de regência, correção de frases, troca de complemento e relação entre regência e crase. As pegadinhas estão principalmente em verbos com mais de um sentido."}]'::jsonb,
    '["Regência verbal depende do verbo; regência nominal depende do nome.", "Muitos verbos mudam de preposição conforme o sentido.", "Assistir, visar, aspirar, obedecer e preferir caem muito.", "Respeito a, necessidade de e favorável a são exemplos de regência nominal.", "Regência e crase aparecem juntas em muitas questões."]'::jsonb,
    '["Pergunte sempre: esse verbo ou nome exige preposição?", "Observe o sentido do verbo antes de decidir a regência.", "Memorize os verbos clássicos e as estruturas mais cobradas.", "Pegadinhas clássicas da VUNESP: assistir, visar, aspirar, obedecer, preferir e namorar."]'::jsonb,
    '["Assisti ao filme ontem. (ver)", "O médico assistiu o ferido. (socorrer)", "Ele é favorável à mudança."]'::jsonb,
    '["Usar ''assistir o filme'' no sentido de ver, na norma-padrão cobrada.", "Dizer ''prefiro mais isso do que aquilo''.", "Esquecer a preposição exigida por nomes como ''respeito'' e ''aversão''."]'::jsonb,
    'basic'::public.plan_slug,
    1,
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
delete from public.flashcards where content_id in (select id from public.contents where slug = 'portugues-regencia-verbal-e-nominal-001');
insert into public.flashcards (content_id, question, answer, sort_order)
select id, 'O que é regência verbal?', 'É a relação entre o verbo e seu complemento.', 0
from public.contents where slug = 'portugues-regencia-verbal-e-nominal-001';
insert into public.flashcards (content_id, question, answer, sort_order)
select id, 'O que é regência nominal?', 'É a relação entre um nome e seu complemento preposicionado.', 1
from public.contents where slug = 'portugues-regencia-verbal-e-nominal-001';
insert into public.flashcards (content_id, question, answer, sort_order)
select id, 'Assistir, no sentido de ver, pede qual preposição?', 'Pede a preposição ''a''.', 2
from public.contents where slug = 'portugues-regencia-verbal-e-nominal-001';
insert into public.flashcards (content_id, question, answer, sort_order)
select id, 'Obedecer pede qual preposição?', 'Pede a preposição ''a''.', 3
from public.contents where slug = 'portugues-regencia-verbal-e-nominal-001';
insert into public.flashcards (content_id, question, answer, sort_order)
select id, 'Preferir segue qual estrutura clássica?', 'Preferir uma coisa a outra.', 4
from public.contents where slug = 'portugues-regencia-verbal-e-nominal-001';
insert into public.flashcards (content_id, question, answer, sort_order)
select id, 'Regência se relaciona com qual outro tema importante?', 'Com a crase.', 5
from public.contents where slug = 'portugues-regencia-verbal-e-nominal-001';
delete from public.questions where content_id in (select id from public.contents where slug = 'portugues-regencia-verbal-e-nominal-001');
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'Assinale a alternativa correta quanto à regência verbal.', '["Assisti o filme ontem.", "Assisti ao filme ontem.", "Assisti no filme ontem.", "Assisti para o filme ontem."]'::jsonb, 1, 'No sentido de ver, o verbo ''assistir'' exige a preposição ''a''.', 0
from public.contents where slug = 'portugues-regencia-verbal-e-nominal-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'Na frase ''O médico assistiu o paciente'', o verbo ''assistir'' significa:', '["ver", "socorrer", "obedecer", "aspirar"]'::jsonb, 1, 'Nesse caso, ''assistir'' tem sentido de prestar assistência, socorrer.', 1
from public.contents where slug = 'portugues-regencia-verbal-e-nominal-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'Assinale a alternativa correta.', '["Ele prefere mais café do que chá.", "Ele prefere café do que chá.", "Ele prefere café a chá.", "Ele prefere mais café a chá."]'::jsonb, 2, 'A estrutura normativa é ''preferir uma coisa a outra''.', 2
from public.contents where slug = 'portugues-regencia-verbal-e-nominal-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'O verbo ''obedecer'' exige:', '["objeto direto sem preposição", "preposição de", "preposição a", "preposição em"]'::jsonb, 2, 'Na norma-padrão, ''obedecer'' rege a preposição ''a''.', 3
from public.contents where slug = 'portugues-regencia-verbal-e-nominal-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'Assinale a alternativa correta quanto à regência nominal.', '["Ele tem aversão com injustiça.", "Ele tem aversão a injustiça.", "Ele tem aversão de injustiça.", "Ele tem aversão por injustiça apenas."]'::jsonb, 1, 'O nome ''aversão'' pede a preposição ''a''. Em contexto feminino com artigo, pode surgir crase: ''aversão à injustiça''.', 4
from public.contents where slug = 'portugues-regencia-verbal-e-nominal-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'Em ''favorável à proposta'', a crase ocorre porque:', '["não há preposição", "o adjetivo exige preposição a e o substantivo admite artigo", "é locução adverbial", "é uso facultativo sempre"]'::jsonb, 1, 'O adjetivo ''favorável'' rege a preposição ''a'', e ''proposta'' admite artigo feminino.', 5
from public.contents where slug = 'portugues-regencia-verbal-e-nominal-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'Assinale a frase correta na norma-padrão.', '["Ele namora com Ana.", "Ele namora Ana.", "Ele namora de Ana.", "Ele namora para Ana."]'::jsonb, 1, 'Na norma-padrão, ''namorar'' é transitivo direto.', 6
from public.contents where slug = 'portugues-regencia-verbal-e-nominal-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'Em ''Aspirava ao cargo'', o verbo significa:', '["respirar", "sorver", "desejar, almejar", "assistir"]'::jsonb, 2, 'No sentido de desejar, ''aspirar'' pede a preposição ''a''.', 7
from public.contents where slug = 'portugues-regencia-verbal-e-nominal-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'Assinale a alternativa correta quanto à regência nominal.', '["necessidade a apoio", "necessidade de apoio", "necessidade por apoio", "necessidade com apoio"]'::jsonb, 1, 'O substantivo ''necessidade'' rege a preposição ''de''.', 8
from public.contents where slug = 'portugues-regencia-verbal-e-nominal-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'Para acertar regência, o primeiro passo é:', '["decorar sem contexto", "observar o sentido do verbo ou nome", "ignorar a preposição", "marcar a opção mais longa"]'::jsonb, 1, 'Muitos casos de regência dependem diretamente do sentido assumido pelo termo regente.', 9
from public.contents where slug = 'portugues-regencia-verbal-e-nominal-001';
with inserted as (
  insert into public.contents (
    slug, source_id, discipline, topic, name, summary, theory, theory_blocks, key_points, proof_tips, examples, common_errors,
    minimum_plan, required_plan_rank, is_published
  ) values (
    'portugues-sentido-literal-e-figurado-001',
    'portugues-sentido-literal-e-figurado-001',
    'Português',
    'Sentido literal e figurado',
    'Sentido literal e figurado',
    'Sentido literal é o significado básico, direto e objetivo das palavras. Sentido figurado é o uso não literal, com ampliação, desvio ou efeito expressivo. A VUNESP cobra muito a capacidade de perceber quando uma expressão deve ser entendida ao pé da letra e quando deve ser interpretada de forma simbólica, metafórica ou contextual.',
    'O sentido literal, também chamado denotativo, é o sentido mais comum, objetivo e dicionarizado da palavra. Exemplo: "A porta está aberta." Aqui, a palavra "porta" designa o objeto físico. Já o sentido figurado, ou conotativo, surge quando a palavra é usada além do seu significado básico, adquirindo valor expressivo conforme o contexto. Exemplo: "Ele abriu as portas para o sucesso." Nesse caso, "portas" não se refere a objeto físico, mas a oportunidades.

Em interpretação de texto, perceber a diferença entre literal e figurado é essencial. Muitas questões da VUNESP exigem que o candidato entenda o efeito de expressões figuradas, ditados, metáforas ou frases construídas de modo simbólico. O erro comum é interpretar literalmente uma passagem figurada ou, ao contrário, tentar forçar sentido figurado onde o texto está sendo objetivo.

O sentido figurado aparece com frequência em textos literários, crônicas, tirinhas, charges, publicidade e até em textos opinativos. Ele torna a linguagem mais expressiva, mais subjetiva e mais rica em efeitos de sentido. Em contrapartida, textos técnicos e informativos tendem a usar mais o sentido literal, justamente porque precisam de clareza e precisão.

Exemplo de literal: "O menino quebrou o copo." Exemplo de figurado: "A notícia quebrou o clima da reunião." No segundo caso, não se quebrou algo fisicamente; houve uma ruptura no ambiente emocional.

A VUNESP costuma formular perguntas como: "A expressão foi empregada em sentido figurado porque...", "No contexto, o termo assume sentido não literal...", ou "A frase deve ser entendida em sentido literal/figurado". Para resolver, é preciso observar o contexto e verificar se o significado básico funciona na frase. Se não funcionar, é provável que haja sentido figurado.

Em resumo, literal é direto; figurado é contextual e expressivo. A chave está em testar se o sentido básico da palavra faz sentido no enunciado ou se o contexto exige interpretação mais ampla.',
    '[{"titulo": "Conceito", "texto": "Sentido literal é o significado direto e objetivo da palavra. Sentido figurado é o uso contextual e expressivo, que se afasta do significado básico."}, {"titulo": "Regras", "texto": "O sentido literal predomina em textos técnicos, informativos e objetivos. O figurado aparece com frequência em linguagem literária, publicitária, humorística e opinativa. O contexto é o principal critério para distinguir os dois."}, {"titulo": "Como cai na prova (VUNESP)", "texto": "A VUNESP apresenta expressões e pergunta se o uso é literal ou figurado, além de cobrar o efeito de sentido produzido. Muitas vezes a banca usa tirinhas, crônicas e textos curtos para explorar duplo sentido e interpretação contextual."}]'::jsonb,
    '["Sentido literal é direto e objetivo.", "Sentido figurado depende do contexto.", "Nem toda palavra tem o mesmo valor em todos os textos.", "Textos literários usam mais linguagem figurada.", "A VUNESP cobra o reconhecimento do efeito de sentido."]'::jsonb,
    '["Teste o significado básico da palavra na frase.", "Se o sentido comum não funcionar, procure interpretação figurada.", "Observe gênero textual: tirinhas e crônicas costumam explorar linguagem figurada.", "Pegadinhas clássicas da VUNESP: tomar metáfora ao pé da letra ou buscar duplo sentido onde não existe."]'::jsonb,
    '["Literal: O vidro da janela quebrou.", "Figurado: A derrota quebrou o time emocionalmente.", "Figurado: Ela tem um coração de ouro."]'::jsonb,
    '["Interpretar expressão idiomática de modo literal.", "Ignorar o contexto e recorrer só ao dicionário mental da palavra.", "Achar que toda frase bonita ou diferente é obrigatoriamente figurada."]'::jsonb,
    'basic'::public.plan_slug,
    1,
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
delete from public.flashcards where content_id in (select id from public.contents where slug = 'portugues-sentido-literal-e-figurado-001');
insert into public.flashcards (content_id, question, answer, sort_order)
select id, 'O que é sentido literal?', 'É o significado direto e objetivo da palavra.', 0
from public.contents where slug = 'portugues-sentido-literal-e-figurado-001';
insert into public.flashcards (content_id, question, answer, sort_order)
select id, 'O que é sentido figurado?', 'É o significado contextual e expressivo, diferente do sentido básico.', 1
from public.contents where slug = 'portugues-sentido-literal-e-figurado-001';
insert into public.flashcards (content_id, question, answer, sort_order)
select id, 'Qual é o principal critério para distinguir literal e figurado?', 'O contexto da frase ou do texto.', 2
from public.contents where slug = 'portugues-sentido-literal-e-figurado-001';
insert into public.flashcards (content_id, question, answer, sort_order)
select id, 'Onde o sentido figurado aparece muito?', 'Em textos literários, crônicas, tirinhas, charges e publicidade.', 3
from public.contents where slug = 'portugues-sentido-literal-e-figurado-001';
insert into public.flashcards (content_id, question, answer, sort_order)
select id, 'A VUNESP cobra literal e figurado como?', 'Pedindo o sentido de expressões no contexto.', 4
from public.contents where slug = 'portugues-sentido-literal-e-figurado-001';
insert into public.flashcards (content_id, question, answer, sort_order)
select id, 'Como testar se há sentido figurado?', 'Verificando se o sentido básico da palavra funciona naquela frase.', 5
from public.contents where slug = 'portugues-sentido-literal-e-figurado-001';
delete from public.questions where content_id in (select id from public.contents where slug = 'portugues-sentido-literal-e-figurado-001');
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'Na frase ''A notícia caiu como uma bomba'', a expressão está em sentido:', '["literal", "figurado", "técnico", "científico"]'::jsonb, 1, 'A expressão não se refere a bomba real, mas ao impacto da notícia.', 0
from public.contents where slug = 'portugues-sentido-literal-e-figurado-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'Em ''A criança fechou a porta'', a palavra ''porta'' está em sentido:', '["figurado", "conotativo", "literal", "irônico"]'::jsonb, 2, 'A palavra designa o objeto físico, em seu sentido direto.', 1
from public.contents where slug = 'portugues-sentido-literal-e-figurado-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'A linguagem figurada costuma ser usada para:', '["tornar o texto mais expressivo", "eliminar ambiguidades técnicas", "substituir toda pontuação", "evitar contexto"]'::jsonb, 0, 'O figurado amplia a expressividade do texto.', 2
from public.contents where slug = 'portugues-sentido-literal-e-figurado-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'Assinale a frase com sentido figurado.', '["O livro está sobre a mesa.", "A cidade acordou nervosa.", "A janela está aberta.", "O aluno pegou a caneta."]'::jsonb, 1, 'A cidade não acorda literalmente; há personificação, logo sentido figurado.', 3
from public.contents where slug = 'portugues-sentido-literal-e-figurado-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'O principal erro em questões desse tema é:', '["observar o contexto", "comparar alternativas", "interpretar tudo ao pé da letra", "ler o texto inteiro"]'::jsonb, 2, 'Muitos candidatos erram por não perceber o uso figurado da linguagem.', 4
from public.contents where slug = 'portugues-sentido-literal-e-figurado-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'Sentido conotativo é o mesmo que:', '["literal", "figurado", "objetivo", "denotativo"]'::jsonb, 1, 'Conotativo é sinônimo de figurado.', 5
from public.contents where slug = 'portugues-sentido-literal-e-figurado-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'Sentido denotativo é o mesmo que:', '["metafórico", "subjetivo", "literal", "irônico"]'::jsonb, 2, 'Denotativo corresponde ao sentido literal.', 6
from public.contents where slug = 'portugues-sentido-literal-e-figurado-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'Em provas da VUNESP, o reconhecimento do sentido figurado depende principalmente de:', '["opinião do candidato", "contexto textual", "memorização de regras matemáticas", "tamanho da frase"]'::jsonb, 1, 'É o contexto que define se a expressão deve ser entendida literal ou figuradamente.', 7
from public.contents where slug = 'portugues-sentido-literal-e-figurado-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'Assinale a frase em sentido literal.', '["Ela explodiu de raiva.", "O chão da cozinha está molhado.", "Seu olhar congelou a sala.", "Ele navegou em pensamentos."]'::jsonb, 1, 'A frase descreve situação objetiva e direta.', 8
from public.contents where slug = 'portugues-sentido-literal-e-figurado-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'Quando o sentido básico da palavra não se ajusta ao contexto, deve-se:', '["abandonar a leitura", "marcar qualquer alternativa", "investigar possível sentido figurado", "ignorar a frase"]'::jsonb, 2, 'Se o sentido literal não funciona, é necessário interpretar a expressão em sentido figurado.', 9
from public.contents where slug = 'portugues-sentido-literal-e-figurado-001';
with inserted as (
  insert into public.contents (
    slug, source_id, discipline, topic, name, summary, theory, theory_blocks, key_points, proof_tips, examples, common_errors,
    minimum_plan, required_plan_rank, is_published
  ) values (
    'portugues-sinonimos-e-antonimos-001',
    'portugues-sinonimos-e-antonimos-001',
    'Português',
    'Sinônimos e antônimos',
    'Sinônimos e antônimos',
    'Sinônimos são palavras de sentido semelhante; antônimos são palavras de sentido oposto. Em prova, o mais importante é lembrar que quase nunca existe sinonímia perfeita fora de contexto. A VUNESP cobra muito equivalência de sentido dentro do texto, substituição vocabular e oposição semântica.',
    'Sinônimos são palavras ou expressões com sentidos próximos. Exemplo: feliz e contente; começar e iniciar; belo e bonito. Antônimos são palavras com sentidos contrários, como claro e escuro; entrar e sair; aumentar e diminuir. Apesar dessas definições parecerem simples, a prova costuma exigir atenção ao contexto.

Isso acontece porque uma palavra pode ter mais de um significado, e o sinônimo adequado muda conforme a frase. Exemplo: a palavra "banco" pode significar instituição financeira ou assento. O sinônimo só pode ser escolhido depois que o contexto define o sentido. Da mesma forma, um antônimo só funciona se respeitar o valor que a palavra assume no trecho.

A VUNESP gosta de perguntar qual palavra pode substituir outra sem prejuízo de sentido. Nessa situação, a troca precisa manter o significado e, de preferência, a adequação do registro. Nem sempre duas palavras são equivalentes em qualquer contexto. Às vezes são apenas aproximadas. Por isso, a banca explora nuances semânticas.

Outro ponto importante é perceber quando o antônimo é direto e quando é contextual. O contrário de "alto" pode ser "baixo" em relação à altura, mas pode ser "baixo" ou "fraco" em relação ao som, dependendo do contexto.

Em resumo, sinônimo e antônimo não devem ser decorados isoladamente. É preciso observar o sentido da palavra no texto, a intenção do autor e o efeito da substituição.',
    '[{"titulo": "Conceito", "texto": "Sinônimos são palavras de sentido semelhante; antônimos são palavras de sentido oposto. O contexto define qual relação semântica é válida em cada caso."}, {"titulo": "Regras", "texto": "Não existe sinonímia absoluta em todos os contextos. A substituição correta deve manter o sentido do texto. O antônimo também depende do valor semântico da palavra no enunciado."}, {"titulo": "Como cai na prova (VUNESP)", "texto": "A VUNESP cobra substituição sem prejuízo de sentido, interpretação de vocabulário e identificação de opostos contextuais. A banca também explora polissemia, isto é, palavras com mais de um significado."}]'::jsonb,
    '["Sinônimo é aproximação de sentido, não igualdade absoluta.", "O contexto define o melhor sinônimo ou antônimo.", "Uma palavra pode ter significados diferentes em contextos diferentes.", "A VUNESP cobra muito substituição vocabular sem alterar o sentido.", "Antônimo pode variar conforme o valor semântico da palavra."]'::jsonb,
    '["Leia a frase inteira antes de escolher o sinônimo.", "Troque a palavra e veja se a frase mantém exatamente o sentido.", "Desconfie de alternativas parecidas, mas com tom ou uso inadequado.", "Pegadinhas clássicas da VUNESP: palavras polissêmicas e sinônimos fora de contexto."]'::jsonb,
    '["Iniciar é sinônimo de começar em muitos contextos.", "Escuro é antônimo de claro.", "Banco pode significar assento ou instituição financeira, dependendo do contexto."]'::jsonb,
    '["Escolher sinônimo pelo dicionário mental sem olhar a frase.", "Ignorar que a palavra pode ter mais de um sentido.", "Marcar antônimo genérico que não combina com o contexto."]'::jsonb,
    'basic'::public.plan_slug,
    1,
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
delete from public.flashcards where content_id in (select id from public.contents where slug = 'portugues-sinonimos-e-antonimos-001');
insert into public.flashcards (content_id, question, answer, sort_order)
select id, 'O que é sinônimo?', 'Palavra de sentido semelhante a outra.', 0
from public.contents where slug = 'portugues-sinonimos-e-antonimos-001';
insert into public.flashcards (content_id, question, answer, sort_order)
select id, 'O que é antônimo?', 'Palavra de sentido oposto a outra.', 1
from public.contents where slug = 'portugues-sinonimos-e-antonimos-001';
insert into public.flashcards (content_id, question, answer, sort_order)
select id, 'Existe sinônimo perfeito em qualquer contexto?', 'Não. O contexto sempre interfere.', 2
from public.contents where slug = 'portugues-sinonimos-e-antonimos-001';
insert into public.flashcards (content_id, question, answer, sort_order)
select id, 'O que é polissemia?', 'É a existência de vários sentidos para uma mesma palavra.', 3
from public.contents where slug = 'portugues-sinonimos-e-antonimos-001';
insert into public.flashcards (content_id, question, answer, sort_order)
select id, 'Como a VUNESP cobra esse tema?', 'Com substituição vocabular e análise de sentido contextual.', 4
from public.contents where slug = 'portugues-sinonimos-e-antonimos-001';
insert into public.flashcards (content_id, question, answer, sort_order)
select id, 'Qual cuidado principal nesse assunto?', 'Não separar palavra e contexto.', 5
from public.contents where slug = 'portugues-sinonimos-e-antonimos-001';
delete from public.questions where content_id in (select id from public.contents where slug = 'portugues-sinonimos-e-antonimos-001');
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'Na frase ''O aluno iniciou o curso'', um sinônimo adequado para ''iniciou'' é:', '["encerrou", "começou", "interrompeu", "escondeu"]'::jsonb, 1, 'No contexto, ''começou'' preserva o sentido de ''iniciou''.', 0
from public.contents where slug = 'portugues-sinonimos-e-antonimos-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'O antônimo de ''claro'', no contexto de luminosidade, é:', '["largo", "fraco", "escuro", "vazio"]'::jsonb, 2, 'No campo semântico da luz, o oposto de claro é escuro.', 1
from public.contents where slug = 'portugues-sinonimos-e-antonimos-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'Em prova, o melhor critério para escolher sinônimo é:', '["tamanho da palavra", "contexto em que aparece", "ordem alfabética", "sonoridade"]'::jsonb, 1, 'O contexto define qual equivalente semântico é aceitável.', 2
from public.contents where slug = 'portugues-sinonimos-e-antonimos-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'A palavra ''banco'' exige atenção porque:', '["não tem plural", "é verbo apenas", "pode ter mais de um sentido", "não aceita sinônimos"]'::jsonb, 2, 'É palavra polissêmica: pode designar assento ou instituição financeira.', 3
from public.contents where slug = 'portugues-sinonimos-e-antonimos-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'Assinale a dupla de antônimos.', '["feliz e contente", "bonito e belo", "entrar e sair", "começar e iniciar"]'::jsonb, 2, 'Entrar e sair exprimem sentidos opostos.', 4
from public.contents where slug = 'portugues-sinonimos-e-antonimos-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'Na frase ''A sala estava vazia'', um sinônimo de ''vazia'' é:', '["cheia", "desocupada", "barulhenta", "escura"]'::jsonb, 1, 'Desocupada mantém a ideia de ausência de pessoas ou objetos no contexto.', 5
from public.contents where slug = 'portugues-sinonimos-e-antonimos-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'Em ''falou baixo'', o antônimo mais adequado de ''baixo'' é:', '["alto", "grande", "largo", "profundo"]'::jsonb, 0, 'No contexto de volume de voz, o oposto de ''baixo'' é ''alto''.', 6
from public.contents where slug = 'portugues-sinonimos-e-antonimos-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'A VUNESP costuma usar palavras semelhantes para:', '["facilitar a resposta", "confundir o candidato sem motivo", "testar nuances de sentido", "eliminar o contexto"]'::jsonb, 2, 'A banca explora diferenças finas de significado.', 7
from public.contents where slug = 'portugues-sinonimos-e-antonimos-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'Uma substituição vocabular correta é aquela que:', '["muda a ideia central", "mantém o sentido do trecho", "troca a classe gramatical obrigatoriamente", "deixa a frase mais longa"]'::jsonb, 1, 'A substituição deve preservar o significado.', 8
from public.contents where slug = 'portugues-sinonimos-e-antonimos-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'Assinale a dupla de sinônimos em contexto adequado.', '["subir e descer", "triste e abatido", "falar e calar", "abrir e fechar"]'::jsonb, 1, 'Triste e abatido podem ser equivalentes em muitos contextos emocionais.', 9
from public.contents where slug = 'portugues-sinonimos-e-antonimos-001';
with inserted as (
  insert into public.contents (
    slug, source_id, discipline, topic, name, summary, theory, theory_blocks, key_points, proof_tips, examples, common_errors,
    minimum_plan, required_plan_rank, is_published
  ) values (
    'portugues-tipologia-textual-001',
    'portugues-tipologia-textual-001',
    'Português',
    'Tipologia textual (narração, descrição, dissertação)',
    'Tipologia textual (narração, descrição, dissertação)',
    'Tipologia textual é a classificação dos textos conforme sua estrutura predominante. As três mais cobradas são narração, descrição e dissertação. Narração apresenta ações e acontecimentos; descrição caracteriza seres, objetos ou ambientes; dissertação expõe ideias, argumentos ou reflexões. A VUNESP costuma cobrar a identificação da tipologia predominante e as marcas linguísticas de cada uma.',
    'Tipologia textual diz respeito à forma como o texto é construído. Cada tipo textual tem finalidade, estrutura e marcas linguísticas próprias. Na prática, um texto pode misturar mais de um tipo, mas sempre há uma predominância. Por isso, em prova, a pergunta normalmente não é se o texto tem apenas um tipo, e sim qual tipologia predomina.

A narração apresenta fatos, ações, acontecimentos e mudanças no tempo. Normalmente há enredo, personagens, espaço, tempo e sequência de eventos. Verbos de ação, progressão temporal e ideia de movimento são marcas frequentes. Exemplo: "João saiu cedo, pegou o ônibus e chegou atrasado ao trabalho." O foco está no que acontece.

A descrição apresenta características de pessoas, objetos, lugares, sensações ou situações. Em vez de contar uma sequência de ações, descreve estados, qualidades, formas, aparências e aspectos. Verbos de estado e adjetivos aparecem com frequência. Exemplo: "A sala era ampla, silenciosa e iluminada por uma luz fraca." O foco está em como algo é.

A dissertação expõe ideias, opiniões, argumentos, análises e reflexões. Pode ser expositiva, quando apenas explica um tema, ou argumentativa, quando defende um ponto de vista. É muito comum em artigos, editoriais e textos opinativos. O foco está em discutir um assunto, não em narrar fatos nem descrever cenários.

A VUNESP costuma cobrar as diferenças básicas: narração responde ao que aconteceu; descrição responde a como algo é; dissertação responde ao que se pensa, se analisa ou se argumenta sobre um tema. Também explora textos híbridos, em que aparece uma parte descritiva dentro de uma narrativa ou um exemplo narrativo dentro de uma dissertação. Nesses casos, o candidato deve localizar o predomínio.

Em resumo, narração = ação; descrição = caracterização; dissertação = exposição ou argumentação. Saber identificar a finalidade principal do texto é o caminho mais seguro.',
    '[{"titulo": "Conceito", "texto": "Tipologia textual é a forma estrutural predominante do texto. Entre as mais cobradas estão narração, descrição e dissertação. Cada uma tem objetivo comunicativo próprio e marcas linguísticas específicas."}, {"titulo": "Regras", "texto": "Narração apresenta acontecimentos em sequência; descrição caracteriza seres, objetos e ambientes; dissertação expõe ideias, explicações ou argumentos. Um mesmo texto pode misturar tipos textuais, mas um deles costuma predominar."}, {"titulo": "Como cai na prova (VUNESP)", "texto": "A VUNESP pede a tipologia predominante, identifica marcas linguísticas e compara trechos. Também gosta de questões em que o texto tem mistura de tipos, mas exige do candidato a percepção do núcleo estrutural."}]'::jsonb,
    '["Narração tem ação, tempo e sequência de fatos.", "Descrição destaca características, qualidades e estados.", "Dissertação expõe ou argumenta ideias sobre um tema.", "Um texto pode misturar tipos, mas um costuma predominar.", "A finalidade do texto ajuda a identificar sua tipologia."]'::jsonb,
    '["Procure primeiro o foco do texto: ação, caracterização ou discussão de ideias.", "Observe os verbos: ação sugere narração; estado e adjetivação sugerem descrição.", "Quando houver tese, explicação e argumento, desconfie de dissertação.", "Pegadinhas clássicas da VUNESP: texto misto com trecho descritivo dentro de narrativa ou exemplo narrativo dentro de dissertação."]'::jsonb,
    '["Narração: O policial correu, alcançou o suspeito e recuperou o objeto.", "Descrição: O uniforme era escuro, impecável e bem alinhado.", "Dissertação: A disciplina é fundamental para alcançar bons resultados em concursos."]'::jsonb,
    '["Confundir descrição com narração apenas porque há verbos no texto.", "Achar que todo texto com opinião é narrativo porque cita um fato.", "Ignorar a predominância e marcar um tipo secundário."]'::jsonb,
    'basic'::public.plan_slug,
    1,
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
delete from public.flashcards where content_id in (select id from public.contents where slug = 'portugues-tipologia-textual-001');
insert into public.flashcards (content_id, question, answer, sort_order)
select id, 'O que caracteriza a narração?', 'A apresentação de fatos ou ações em sequência temporal.', 0
from public.contents where slug = 'portugues-tipologia-textual-001';
insert into public.flashcards (content_id, question, answer, sort_order)
select id, 'O que caracteriza a descrição?', 'A apresentação de características, qualidades e estados.', 1
from public.contents where slug = 'portugues-tipologia-textual-001';
insert into public.flashcards (content_id, question, answer, sort_order)
select id, 'O que caracteriza a dissertação?', 'A exposição ou argumentação de ideias sobre um tema.', 2
from public.contents where slug = 'portugues-tipologia-textual-001';
insert into public.flashcards (content_id, question, answer, sort_order)
select id, 'Um texto pode ter mais de uma tipologia?', 'Sim, mas geralmente uma delas predomina.', 3
from public.contents where slug = 'portugues-tipologia-textual-001';
insert into public.flashcards (content_id, question, answer, sort_order)
select id, 'Como a VUNESP costuma cobrar tipologia?', 'Pedindo a tipologia predominante ou as marcas que a identificam.', 4
from public.contents where slug = 'portugues-tipologia-textual-001';
insert into public.flashcards (content_id, question, answer, sort_order)
select id, 'Qual pergunta ajuda a identificar a tipologia?', 'O texto narra, descreve ou discute um tema?', 5
from public.contents where slug = 'portugues-tipologia-textual-001';
delete from public.questions where content_id in (select id from public.contents where slug = 'portugues-tipologia-textual-001');
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'Um texto que apresenta personagens, fatos e sequência temporal é predominantemente:', '["descritivo", "dissertativo", "narrativo", "injuntivo"]'::jsonb, 2, 'Essas são marcas típicas da narração.', 0
from public.contents where slug = 'portugues-tipologia-textual-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'Quando o texto destaca cores, formas, tamanhos e qualidades de um objeto, predomina a:', '["narração", "descrição", "dissertação", "argumentação jurídica"]'::jsonb, 1, 'Esses elementos são marcas da descrição.', 1
from public.contents where slug = 'portugues-tipologia-textual-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'A dissertação tem como foco principal:', '["relatar acontecimentos", "caracterizar cenários", "expor ou defender ideias", "dar ordens"]'::jsonb, 2, 'A dissertação trabalha com reflexão, explicação ou argumentação.', 2
from public.contents where slug = 'portugues-tipologia-textual-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'Na VUNESP, a expressão ''tipologia predominante'' indica que:', '["o texto só pode ter um tipo", "o texto pode misturar tipos, mas um se destaca", "todo texto é dissertativo", "narração e descrição nunca aparecem juntas"]'::jsonb, 1, 'Os textos podem ser mistos, mas a prova quer o tipo principal.', 3
from public.contents where slug = 'portugues-tipologia-textual-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'Assinale a tipologia do trecho: ''A rua era estreita, silenciosa e mal iluminada.''', '["narração", "descrição", "dissertação", "injunção"]'::jsonb, 1, 'O trecho caracteriza o ambiente, por isso é descritivo.', 4
from public.contents where slug = 'portugues-tipologia-textual-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'Assinale a tipologia do trecho: ''A educação pública precisa de planejamento e investimento contínuo.''', '["descrição", "narração", "dissertação", "narração dialogada"]'::jsonb, 2, 'O trecho apresenta uma ideia/opinião sobre um tema.', 5
from public.contents where slug = 'portugues-tipologia-textual-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'Assinale a tipologia do trecho: ''Ele saiu cedo, perdeu o ônibus e chegou atrasado.''', '["narração", "descrição", "dissertação", "definição"]'::jsonb, 0, 'Há sequência de ações, marca típica da narração.', 6
from public.contents where slug = 'portugues-tipologia-textual-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'Qual elemento ajuda mais a identificar uma descrição?', '["sequência de eventos", "presença de tese", "predomínio de características", "conclusão argumentativa"]'::jsonb, 2, 'A descrição se organiza pela caracterização.', 7
from public.contents where slug = 'portugues-tipologia-textual-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'A principal finalidade da narração é:', '["explicar um conceito", "relatar acontecimentos", "defender uma tese", "comparar definições"]'::jsonb, 1, 'Narração tem foco em fatos e ações.', 8
from public.contents where slug = 'portugues-tipologia-textual-001';
insert into public.questions (content_id, prompt, choices, correct_index, explanation, sort_order)
select id, 'Em um texto com descrição inicial do ambiente e depois uma sequência de ações, a tipologia predominante depende:', '["do primeiro verbo apenas", "do tamanho do texto", "da função principal do conjunto", "da quantidade de adjetivos"]'::jsonb, 2, 'O que define a predominância é a função principal do texto como um todo.', 9
from public.contents where slug = 'portugues-tipologia-textual-001';
commit;