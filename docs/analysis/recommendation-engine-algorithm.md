# Especificação Técnica - Recommendation Engine Algorithm

## Objetivo

Definir o algoritmo responsável por gerar recomendações priorizadas e
acionáveis a partir do conhecimento produzido pelo DevIQ.

## Motivação

O valor final do DevIQ está em transformar análise em ações concretas
que orientem a evolução do software.

## Entradas

-   Evidence Graph
-   Knowledge Base
-   Metrics Report
-   Technical Debt Report
-   Effective Contribution Report
-   Development Session

## Pipeline

``` text
Evidence Graph
      ↓
Knowledge Base
      ↓
Opportunity Detection
      ↓
Recommendation Generation
      ↓
Prioritization
      ↓
Impact Estimation
      ↓
Recommendation Package
```

## Etapas

### 1. Opportunity Detection

Identificar oportunidades de melhoria baseadas em conhecimento,
métricas, tendências e dívida técnica.

### 2. Recommendation Generation

Gerar recomendações candidatas utilizando regras e motores analíticos.

### 3. Prioritization

Ordenar recomendações considerando impacto, urgência, esforço estimado,
confiança e contexto da sessão.

### 4. Impact Estimation

Estimar benefícios esperados, riscos mitigados e áreas afetadas.

## Regras

-   Nenhuma recomendação existe sem evidências.
-   Toda recomendação possui justificativa.
-   Recomendações conflitantes devem ser identificadas.
-   Cada recomendação referencia os nós do Evidence Graph que a
    originaram.

## Estrutura da Recomendação

Cada item deve conter:

-   identificador;
-   título;
-   descrição;
-   prioridade;
-   impacto esperado;
-   esforço estimado;
-   confiança;
-   justificativa;
-   evidências relacionadas;
-   artefatos afetados.

## Saída

Um `RecommendationPackage` contendo:

-   recomendações priorizadas;
-   recomendações agrupadas por tema;
-   dependências entre recomendações;
-   plano sugerido de execução.

## Garantias

-   Recomendações reproduzíveis para a mesma entrada.
-   Total rastreabilidade até as evidências.
-   Independência do provedor de IA.

## Critérios de Aceitação

-   Toda recomendação é explicável.
-   O pacote pode alimentar o Executive Summary e o Improvement Plan.
-   Não existem recomendações sem evidências ou justificativas.
