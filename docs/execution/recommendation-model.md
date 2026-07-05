# Recommendation Model

## Objetivo

Definir o modelo canônico de Recomendações do DevIQ.

Uma Recomendação representa uma ação sugerida ao desenvolvedor a partir dos
Insights produzidos durante a análise de uma ou mais execuções.

## Entradas

- Insight Model
- Knowledge Model
- Metrics Model
- Trend Model

## Estrutura

Toda Recomendação deve conter:

- Recommendation ID
- Título
- Descrição
- Justificativa
- Prioridade
- Impacto esperado
- Evidências relacionadas
- Insights relacionados

## Prioridades

- Crítica
- Alta
- Média
- Baixa

## Regras

- Toda Recomendação deve ser rastreável até Evidências.
- Recomendações não alteram artefatos canônicos.
- Recomendações podem compor o Executive Summary e o Report Model.

## Fluxo

Knowledge
↓
Insight
↓
Recommendation
↓
Report

## Objetivo

Transformar o conhecimento produzido pelo DevIQ em ações concretas para evolução
contínua do projeto e do processo de desenvolvimento.
