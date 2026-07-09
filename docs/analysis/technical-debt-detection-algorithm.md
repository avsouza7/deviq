# Especificação Técnica - Technical Debt Detection Algorithm

## Objetivo

Definir o algoritmo responsável por identificar, classificar e priorizar
dívida técnica produzida ou removida durante uma sessão de
desenvolvimento.

## Motivação

O DevIQ deve identificar dívida técnica como um artefato derivado de
evidências, e não como uma percepção subjetiva.

## Entradas

-   Evidence Graph
-   Architectural Decisions
-   Knowledge Base
-   Metrics Report
-   Commits
-   Source Code Evidence

## Pipeline

``` text
Evidence Graph
      ↓
Debt Candidate Detection
      ↓
Evidence Correlation
      ↓
Impact Assessment
      ↓
Confidence Calculation
      ↓
Debt Classification
      ↓
Technical Debt Report
```

## Categorias

-   Arquitetura
-   Código
-   Testes
-   Documentação
-   Infraestrutura
-   Dependências
-   Segurança
-   Performance

## Regras

-   Toda dívida possui evidências de suporte.
-   Dívidas removidas também são registradas.
-   Cada item possui impacto, prioridade e confiança.
-   Itens duplicados são consolidados.

## Estrutura da Saída

`TechnicalDebtItem`

-   id
-   title
-   category
-   status (Created, Existing, Removed)
-   priority
-   impact
-   confidence
-   supportingEvidence
-   relatedDecisions
-   affectedArtifacts

## Garantias

-   A análise é determinística para a mesma entrada.
-   Toda dívida é auditável.
-   Nenhum item existe sem rastreabilidade.

## Critérios de Aceitação

-   O relatório distingue dívida criada, existente e removida.
-   Os resultados alimentam Metrics Engine, Recommendation Engine e
    Executive Summary.
-   Cada item referencia sua cadeia de evidências.
