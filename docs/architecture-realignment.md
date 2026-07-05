# Realinhamento Arquitetural do DevIQ

## Objetivo

Reposicionar o DevIQ para seu propósito original: analisar um ciclo de desenvolvimento assistido por IA e produzir conhecimento, evidências e métricas.

## Princípio Central

O DevIQ não é um gerador de documentação.

A documentação é apenas um dos artefatos produzidos pelo pipeline de análise.

## Pipeline

IDE + IA + Git
↓
Coleta de Evidências
↓
Normalização
↓
Correlação
↓
Extração de Conhecimento
↓
Métricas
↓
Artefatos

## Entradas

- Conversas com IA
- Prompts
- Código
- Commits
- Alterações de arquivos
- Decisões arquiteturais

## Saídas

- Executive Summary
- Effective Contribution
- Prompt Summary
- Learnings
- Knowledge
- Evidências
- Métricas
- Technical Debt
- Próximas ações

## Ordem de Implementação

1. Collectors
2. Session Analyzer
3. Evidence Engine
4. Knowledge Engine
5. Metrics Engine
6. Report Engine
7. Builder
8. CLI (`deviq run`)

## Diretriz

Todo novo artefato deverá contribuir diretamente para o pipeline de execução do DevIQ.
