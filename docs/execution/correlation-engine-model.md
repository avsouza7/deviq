# Correlation Engine Model

## Objetivo

Definir o modelo canônico do Correlation Engine.

O Correlation Engine identifica relações entre Evidências de uma mesma Sessão,
criando o contexto necessário para geração de Conhecimento e cálculo de Métricas.

## Entradas

- Session Model
- Evidence Model

## Responsabilidades

- Relacionar Evidências.
- Identificar sequência temporal.
- Detectar dependências entre prompts, respostas, código e commits.
- Agrupar Evidências por contexto.
- Gerar Links de Correlação.

## Tipos de Correlação

- Temporal
- Causal
- Contextual
- Arquitetural
- Semântica

## Estrutura

Toda Correlação deve possuir:

- Correlation ID
- Tipo
- Evidências relacionadas
- Nível de confiança
- Justificativa

## Saídas

As correlações produzidas são consumidas pelo Knowledge Engine e pelo Metrics Engine.

## Relação com o Pipeline

Session
↓
Evidence
↓
Correlation
↓
Knowledge
