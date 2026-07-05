# Knowledge Engine Model

## Objetivo

Definir o modelo canônico do Knowledge Engine.

O Knowledge Engine transforma Correlações em Conhecimento estruturado que
represente o valor produzido durante uma Sessão.

## Entradas

- Session Model
- Evidence Model
- Correlation Engine Model

## Responsabilidades

- Identificar aprendizados.
- Consolidar decisões arquiteturais.
- Detectar padrões recorrentes.
- Identificar riscos.
- Identificar dívida técnica.
- Produzir Próximas Ações.

## Regras

- Todo item de Conhecimento deve possuir rastreabilidade até as Evidências.
- Um Conhecimento pode ser derivado de uma ou mais Correlações.
- O motor não calcula métricas.

## Saídas

- Knowledge Model

## Relação com o Pipeline

Session
↓
Evidence
↓
Correlation
↓
Knowledge
