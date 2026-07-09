# Especificação Técnica - Metrics Engine Algorithm

## Objetivo

Definir o algoritmo responsável por calcular as métricas produzidas pelo
DevIQ a partir das evidências, do grafo e do conhecimento consolidado.

## Motivação

As métricas devem refletir a qualidade da sessão de desenvolvimento, e
não apenas volume de atividade.

## Entradas

-   Evidence Graph
-   Development Session
-   Knowledge Base
-   Technical Debt
-   Effective Contribution
-   Prompt Timeline

## Pipeline

``` text
Evidence Graph
      ↓
Metric Selection
      ↓
Evidence Aggregation
      ↓
Formula Evaluation
      ↓
Normalization
      ↓
Confidence Validation
      ↓
Metrics Report
```

## Etapas

### 1. Metric Selection

Selecionar as métricas habilitadas pelo perfil de execução.

### 2. Evidence Aggregation

Consolidar os dados necessários para cada métrica.

### 3. Formula Evaluation

Executar a fórmula definida para cada indicador.

### 4. Normalization

Normalizar escalas para permitir comparação entre execuções.

### 5. Confidence Validation

Associar um nível de confiança baseado na qualidade das evidências.

## Regras

-   Toda métrica deve possuir uma fórmula documentada.
-   Nenhuma métrica pode ser calculada sem evidências.
-   Cada resultado referencia os nós do Evidence Graph utilizados.

## Saída

`MetricsReport` contendo: - nome da métrica; - valor calculado; -
unidade; - confiança; - evidências utilizadas; - explicação do cálculo.

## Garantias

-   Cálculo determinístico.
-   Comparabilidade entre execuções da mesma versão do esquema.
-   Total rastreabilidade até as evidências.

## Critérios de Aceitação

-   Todas as métricas são explicáveis.
-   O relatório pode alimentar Executive Summary, Comparações e
    Recommendation Engine.
