# Especificação Técnica - Report Profile Specification

## Objetivo

Definir os perfis oficiais de geração de relatórios do DevIQ.

## Motivação

Diferentes públicos necessitam de diferentes níveis de detalhe. Os
perfis permitem reutilizar o mesmo `CanonicalReport`, alterando apenas a
seleção e a organização das seções.

## Perfis

### summary

Resumo executivo para leitura rápida.

### developer

Ênfase em decisões, evidências, métricas e dívida técnica.

### executive

Ênfase em resultados, contribuição efetiva, riscos e próximos passos.

### ci

Formato otimizado para pipelines de integração contínua.

### full

Inclui todos os artefatos produzidos pelo Analysis Engine.

## Pipeline

``` text
Canonical Report
        ↓
Profile Selection
        ↓
Section Filtering
        ↓
Ordering
        ↓
Exporter
```

## Matriz de Conteúdo

  Seção                     summary   developer   executive   ci   full
  ------------------------ --------- ----------- ----------- ---- ------
  Session Overview             ✓          ✓           ✓       ✓     ✓
  Effective Contribution       ✓          ✓           ✓       \-    ✓
  Decisions                   \-          ✓           ✓       \-    ✓
  Learnings                    ✓          ✓           ✓       \-    ✓
  Metrics                      ✓          ✓           ✓       ✓     ✓
  Technical Debt              \-          ✓           ✓       ✓     ✓
  Recommendations              ✓          ✓           ✓       ✓     ✓
  Traceability                \-          ✓          \-       \-    ✓

## Regras

-   Perfis não alteram conteúdo, apenas apresentação.
-   Todo perfil preserva rastreabilidade quando aplicável.
-   Novos perfis devem reutilizar o `CanonicalReport`.

## Critérios de Aceitação

-   O mesmo conjunto de artefatos gera todos os perfis.
-   Exportadores permanecem independentes das regras de seleção.
-   Perfis são configuráveis pelo comando `deviq run`.
