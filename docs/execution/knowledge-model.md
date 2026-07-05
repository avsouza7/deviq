# Knowledge Model

## Objetivo

Definir o modelo canônico de Conhecimento produzido pelo DevIQ.

Conhecimento é o resultado da análise e correlação de Evidências dentro de uma Sessão.

## Origem

O Knowledge Engine produz Conhecimento a partir de:

- Evidências
- Contexto da Sessão
- Correlações
- Métricas

## Tipos de Conhecimento

- Aprendizado
- Decisão arquitetural
- Padrão identificado
- Risco
- Dívida técnica
- Insight
- Próxima ação

## Estrutura

Todo Conhecimento deve possuir:

- Knowledge ID
- Tipo
- Descrição
- Evidências relacionadas
- Nível de confiança
- Timestamp

## Relação com o Pipeline

Session
↓
Evidence
↓
Analyze
↓
Correlate
↓
Knowledge

## Objetivo

O Knowledge Model representa a principal saída analítica do Analysis Engine e
serve de base para métricas e relatórios.
