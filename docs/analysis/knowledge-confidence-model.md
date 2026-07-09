# Especificação Técnica - Knowledge Confidence Model

## Objetivo

Definir o modelo responsável por calcular, propagar e consolidar níveis
de confiança ao longo de todo o Analysis Engine do DevIQ.

## Motivação

Todo resultado produzido pelo DevIQ deve informar não apenas *o que* foi
concluído, mas também *quão confiável* é essa conclusão.

## Princípios

-   Confiança é derivada de evidências.
-   Confiança nunca é arbitrária.
-   Todo valor é explicável.
-   A propagação é determinística.

## Entradas

-   Evidence Quality Assessment
-   Evidence Graph
-   Knowledge Base
-   Insights
-   Metrics
-   Technical Debt

## Pipeline

``` text
Evidence Quality
      ↓
Evidence Confidence
      ↓
Knowledge Confidence
      ↓
Insight Confidence
      ↓
Metric Confidence
      ↓
Recommendation Confidence
```

## Fatores Considerados

-   Qualidade das evidências
-   Quantidade de evidências correlacionadas
-   Consistência entre evidências
-   Cobertura temporal
-   Similaridade semântica
-   Confirmação por múltiplas fontes

## Propagação

Cada artefato deriva sua confiança dos artefatos predecessores,
preservando a cadeia de rastreabilidade.

## Estrutura

`ConfidenceAssessment`

-   score (0.0--1.0)
-   level
-   explanation
-   supportingEvidence
-   calculationVersion

## Regras

-   Nenhum artefato derivado possui confiança maior que a suportada
    pelas evidências.
-   Toda confiança é reproduzível para a mesma entrada.
-   O cálculo é versionado.

## Critérios de Aceitação

-   Todos os artefatos analíticos possuem confidence.
-   O cálculo é auditável.
-   Executive Summary apresenta os níveis de confiança das principais
    conclusões.
