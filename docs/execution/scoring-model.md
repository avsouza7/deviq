# Scoring Model

## Objetivo

Definir o modelo canônico de Pontuação do DevIQ.

O Scoring Model consolida diferentes métricas produzidas durante uma execução
em indicadores sintéticos, facilitando a interpretação dos resultados sem
substituir as métricas originais.

## Entradas

- Metrics Model
- Insight Model
- Recommendation Model

## Estrutura

Todo Score deve conter:

- Score ID
- Nome
- Descrição
- Valor
- Escala
- Método de cálculo
- Métricas utilizadas
- Timestamp

## Regras

- Um Score é sempre derivado de métricas oficiais.
- O cálculo deve ser reproduzível.
- Todo Score deve ser rastreável até as Evidências de origem.
- Scores não substituem métricas detalhadas.

## Fluxo

Metrics
↓
Scoring
↓
Execution Summary
↓
Report

## Objetivo

Disponibilizar indicadores consolidados para apoiar a análise executiva das
execuções do DevIQ.
