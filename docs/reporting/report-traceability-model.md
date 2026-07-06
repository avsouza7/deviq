# Especificação Técnica - Report Traceability Model

## Objetivo

Definir como cada elemento presente nos relatórios do DevIQ mantém
ligação explícita com as evidências, conhecimento e artefatos que o
originaram.

## Motivação

O valor do DevIQ depende da capacidade de explicar cada conclusão
apresentada ao usuário.

## Princípios

-   Toda afirmação é rastreável.
-   Toda recomendação possui justificativa.
-   Toda métrica referencia seu cálculo.
-   Toda decisão referencia evidências.

## Modelo

``` text
Evidence
    ↓
Evidence Graph
    ↓
Knowledge
    ↓
Insight
    ↓
Metric
    ↓
Recommendation
    ↓
Executive Summary
```

## Elementos Rastreáveis

-   Texto
-   Métrica
-   Insight
-   Decisão
-   Dívida Técnica
-   Recomendação

## Estrutura

`TraceabilityReference`

-   sourceArtifact
-   sourceId
-   targetArtifact
-   targetId
-   relationship
-   confidence

## Regras

-   Nenhum elemento do relatório existe sem origem.
-   A navegação deve ser bidirecional.
-   Referências preservam confidence.
-   Cadeias incompletas devem ser sinalizadas.

## Critérios de Aceitação

-   Todo relatório suporta auditoria ponta a ponta.
-   O usuário pode navegar do resumo até a evidência original.
-   Todos os exportadores preservam a rastreabilidade.
