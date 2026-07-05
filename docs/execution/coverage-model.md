# Coverage Model

## Objetivo

Definir o modelo canônico de Cobertura Analítica do DevIQ.

A Cobertura indica o quanto uma Sessão foi efetivamente observada pelos
Collectors e analisada pelo pipeline do `deviq run`.

## Entradas

- Session Model
- Collection Plan Model
- Evidence Model
- Execution Manifest

## Estrutura

Toda Cobertura deve conter:

- Coverage ID
- Run ID
- Session ID
- Escopo analisado
- Escopo observado
- Percentual de cobertura
- Lacunas identificadas
- Timestamp

## Dimensões

- Conversas
- Prompts
- Código
- Commits
- Documentação
- Decisões arquiteturais

## Regras

- Cobertura mede observabilidade, não qualidade.
- Lacunas devem ser explicitadas.
- A cobertura influencia a interpretação dos resultados, mas não altera os artefatos.

## Fluxo

Collection Plan
↓
Evidence
↓
Coverage
↓
Confidence
↓
Report

## Objetivo

Permitir que o usuário compreenda quais partes do ciclo de desenvolvimento
foram efetivamente analisadas pelo DevIQ.
