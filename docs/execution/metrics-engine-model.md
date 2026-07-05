# Metrics Engine Model

## Objetivo

Definir o modelo canônico do Metrics Engine.

O Metrics Engine calcula as métricas oficiais do DevIQ a partir do conhecimento
gerado durante uma Sessão.

## Entradas

- Session Model
- Evidence Model
- Correlation Engine Model
- Knowledge Model

## Responsabilidades

- Calcular métricas oficiais.
- Garantir resultados reproduzíveis.
- Manter rastreabilidade entre métricas e evidências.
- Disponibilizar resultados ao Report Engine.

## Regras

- O cálculo deve ser determinístico.
- Toda métrica referencia as evidências utilizadas.
- Não produz conhecimento.
- Não altera evidências.

## Métricas Oficiais

- IAI
- AIPS
- ICP

Novas métricas exigem especificação própria.

## Saída

- Metrics Model

## Fluxo

Session
↓
Evidence
↓
Correlation
↓
Knowledge
↓
Metrics
