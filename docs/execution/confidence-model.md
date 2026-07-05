# Confidence Model

## Objetivo

Definir o modelo canônico de Confiança do DevIQ.

O Confidence Model representa o grau de confiança associado aos resultados
produzidos durante uma execução do `deviq run`.

## Entradas

- Evidence Model
- Correlation Model
- Knowledge Model
- Metrics Model

## Estrutura

Todo índice de confiança deve conter:

- Confidence ID
- Objeto avaliado
- Valor
- Escala
- Critérios utilizados
- Evidências de suporte
- Timestamp

## Regras

- Todo Conhecimento possui um nível de confiança.
- Métricas podem informar confiança do cálculo.
- O valor deve ser reproduzível.
- A confiança deve ser rastreável até as Evidências.

## Fluxo

Evidence
↓
Correlation
↓
Knowledge
↓
Confidence
↓
Report

## Objetivo

Permitir que o usuário compreenda o nível de confiabilidade de cada resultado
produzido pelo DevIQ.
