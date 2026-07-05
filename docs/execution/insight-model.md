# Insight Model

## Objetivo

Definir o modelo canônico de Insights do DevIQ.

Um Insight representa uma conclusão relevante identificada pelo DevIQ a partir
da análise de uma ou mais execuções, auxiliando a tomada de decisão.

## Entradas

- Knowledge Model
- Metrics Model
- Trend Model
- Execution Comparison Model

## Estrutura

Todo Insight deve conter:

- Insight ID
- Título
- Descrição
- Evidências relacionadas
- Métricas relacionadas
- Nível de confiança
- Impacto
- Recomendação

## Tipos

- Oportunidade
- Alerta
- Melhoria
- Risco
- Boa prática

## Regras

- Todo Insight deve ser rastreável até Evidências.
- Insights não alteram Conhecimento nem Métricas.
- Insights podem compor o Executive Summary.

## Fluxo

Knowledge
↓
Metrics
↓
Trend
↓
Insight

## Objetivo

Transformar resultados analíticos em recomendações acionáveis para o desenvolvedor.
