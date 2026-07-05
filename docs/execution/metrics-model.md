# Metrics Model

## Objetivo

Definir o modelo canônico das métricas produzidas pelo DevIQ.

As métricas quantificam a contribuição efetiva do ciclo de desenvolvimento
assistido por IA e são calculadas exclusivamente pelo Metrics Engine.

## Fontes

As métricas são derivadas de:

- Sessão
- Evidências
- Conhecimento
- Correlações

## Estrutura

Toda métrica deve possuir:

- Metric ID
- Nome
- Descrição
- Valor
- Unidade
- Método de cálculo
- Evidências utilizadas
- Timestamp

## Métricas Oficiais

Inicialmente o DevIQ suporta:

- IAI
- AIPS
- ICP

Novas métricas deverão possuir especificação própria.

## Relação com o Pipeline

Session
↓
Evidence
↓
Knowledge
↓
Metrics
↓
Report

## Objetivo

As métricas servem como entrada para o Report Engine e permitem medir a
contribuição efetiva do ciclo analisado.
