# Trend Model

## Objetivo

Definir o modelo canônico de Tendências do DevIQ.

Uma Tendência representa a evolução observada em um conjunto de execuções,
permitindo identificar melhorias, regressões e padrões ao longo do tempo.

## Entradas

- Baseline Model
- Execution Comparison Model
- Metrics Model

## Estrutura

Toda Tendência deve conter:

- Trend ID
- Projeto
- Período analisado
- Métricas avaliadas
- Tendência identificada
- Evidências de suporte
- Nível de confiança

## Tipos

- Melhoria
- Regressão
- Estável
- Oscilação

## Regras

- Tendências são derivadas de duas ou mais execuções.
- Toda conclusão deve ser rastreável.
- Tendências não alteram os resultados originais.

## Fluxo

Execution Results
↓
Comparison
↓
Baseline
↓
Trend

## Objetivo

Permitir acompanhar continuamente a evolução da qualidade e da contribuição
efetiva do desenvolvimento assistido por IA.
