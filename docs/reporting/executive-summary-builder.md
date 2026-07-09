# Especificação Técnica - Executive Summary Builder

## Objetivo

Definir o componente responsável por consolidar todos os artefatos
produzidos pelo Analysis Engine em um Executive Summary único,
explicável e rastreável.

## Motivação

O Executive Summary é a principal saída do comando `deviq run`. Ele
sintetiza a sessão de desenvolvimento sem perder a ligação com as
evidências que sustentam cada conclusão.

## Entradas

-   Development Session
-   Knowledge Base
-   Insight Catalog
-   Metrics Report
-   Technical Debt Report
-   Effective Contribution Report
-   Recommendation Package
-   Confidence Assessments

## Pipeline

``` text
Analysis Artifacts
        ↓
Content Selection
        ↓
Evidence Validation
        ↓
Narrative Assembly
        ↓
Confidence Aggregation
        ↓
Executive Summary
```

## Seções Obrigatórias

-   Resumo Executivo
-   Objetivos da Sessão
-   Contribuição Efetiva (IA × Humano)
-   Principais Decisões
-   Aprendizados
-   Métricas
-   Dívida Técnica (Criada / Removida)
-   Recomendações
-   Próximos Passos

## Regras

-   Toda afirmação referencia evidências.
-   Informações conflitantes são explicitadas.
-   O resumo preserva níveis de confiança.
-   Nenhuma recomendação é apresentada sem justificativa.

## Estrutura

`ExecutiveSummary`

-   executionId
-   generatedAt
-   overallConfidence
-   sections\[\]
-   supportingEvidence
-   relatedArtifacts

## Critérios de Aceitação

-   O resumo representa fielmente a sessão analisada.
-   Todas as seções possuem rastreabilidade.
-   O documento pode ser exportado para Markdown, HTML, PDF e JSON.
