# Especificação Técnica - Session Reconstruction Algorithm

## Objetivo

Definir o algoritmo responsável por reconstruir uma Sessão de
desenvolvimento a partir das evidências coletadas pelo DevIQ.

## Motivação

Uma Sessão representa a unidade lógica de trabalho do desenvolvedor. Ela
não é determinada apenas pelo tempo, mas pela correlação entre prompts,
respostas da IA, alterações de código, commits e demais evidências.

## Entradas

-   Prompts
-   Respostas da IA
-   Commits
-   Alterações de arquivos
-   Eventos da IDE
-   Documentos produzidos

## Pipeline

1.  Coletar evidências normalizadas.
2.  Ordenar cronologicamente.
3.  Agrupar por janela temporal.
4.  Correlacionar artefatos relacionados.
5.  Identificar interrupções e retomadas.
6.  Consolidar a Session.
7.  Publicar `SessionReconstructed`.

## Estratégia de Correlação

A correlação deve considerar simultaneamente:

-   proximidade temporal;
-   arquivos afetados;
-   branches;
-   mensagens de commit;
-   referências cruzadas entre prompts e código;
-   contexto da IDE.

Nenhum critério isolado é suficiente.

## Resultado

Uma Session contém:

-   período de execução;
-   evidências correlacionadas;
-   Prompt Timeline;
-   contexto reconstruído;
-   referências rastreáveis.

## Regras

-   O algoritmo deve ser determinístico.
-   Evidências nunca são duplicadas entre sessões.
-   A reconstrução deve ser reproduzível para a mesma entrada.
-   Toda decisão de agrupamento deve ser explicável.

## Critérios de Aceitação

-   Sessões representam corretamente o trabalho realizado.
-   A Prompt Timeline preserva a ordem dos acontecimentos.
-   Todas as evidências permanecem rastreáveis até sua origem.
