# Especificação Técnica - Report Assembly Algorithm

## Objetivo

Definir o algoritmo responsável por organizar todos os artefatos
produzidos pelo Analysis Engine em um modelo de relatório canônico antes
da exportação.

## Motivação

Os exportadores não devem conhecer regras de negócio. Sua
responsabilidade é apenas renderizar um relatório previamente montado.

## Entradas

-   Executive Summary
-   Development Session
-   Knowledge Base
-   Insight Catalog
-   Metrics Report
-   Technical Debt Report
-   Recommendation Package

## Pipeline

``` text
Analysis Artifacts
        ↓
Section Selection
        ↓
Ordering
        ↓
Cross Reference Resolution
        ↓
Traceability Validation
        ↓
Canonical Report
        ↓
Exporter
```

## Responsabilidades

-   Selecionar seções conforme o perfil.
-   Ordenar o conteúdo.
-   Resolver referências cruzadas.
-   Validar rastreabilidade.
-   Produzir um modelo independente do formato.

## Estrutura de Saída

`CanonicalReport`

-   metadata
-   sections
-   appendices
-   traceability
-   confidenceSummary

## Regras

-   Exportadores não alteram conteúdo.
-   Toda seção preserva referências às evidências.
-   A ordem é determinística.
-   O relatório é independente do formato de saída.

## Critérios de Aceitação

-   O mesmo CanonicalReport gera Markdown, HTML, PDF e JSON
    equivalentes.
-   Toda informação exportada possui origem rastreável.
-   O modelo é reutilizável por novos exportadores.
