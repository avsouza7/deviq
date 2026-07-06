# Especificação Técnica - Executive Summary Template

## Objetivo

Definir o contrato canônico do Executive Summary produzido pelo DevIQ.

## Motivação

Independentemente do formato de saída (Markdown, HTML, PDF ou JSON), o
conteúdo do Executive Summary deve manter a mesma estrutura lógica e
semântica.

## Estrutura

``` text
Executive Summary
 ├── Metadata
 ├── Session Overview
 ├── Effective Contribution
 ├── Architectural Decisions
 ├── Learnings
 ├── Metrics
 ├── Technical Debt
 ├── Recommendations
 ├── Next Steps
 └── Traceability
```

## Metadata

Campos obrigatórios:

-   executionId
-   project
-   profile
-   generatedAt
-   deviqVersion
-   overallConfidence

## Seções

### Session Overview

Resumo da sessão analisada.

### Effective Contribution

Distribuição da contribuição IA × Humano.

### Architectural Decisions

Principais decisões identificadas.

### Learnings

Conhecimento consolidado e reutilizável.

### Metrics

Indicadores calculados durante a análise.

### Technical Debt

Itens criados, existentes e removidos.

### Recommendations

Ações priorizadas com justificativa.

### Next Steps

Plano sugerido para evolução.

### Traceability

Referências para evidências e artefatos de suporte.

## Regras

-   Todas as seções são opcionais apenas quando não houver evidências.
-   Toda conclusão informa confidence.
-   Toda recomendação referencia evidências.
-   A ordem das seções é estável.

## Critérios de Aceitação

-   Estrutura idêntica em todos os exportadores.
-   Compatível com Markdown, HTML, PDF e JSON.
-   Total rastreabilidade até o Evidence Graph.
