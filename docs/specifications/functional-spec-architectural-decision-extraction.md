# Especificação Funcional - Architectural Decision Extraction

## Objetivo

Definir como o DevIQ identifica, consolida e apresenta as decisões
arquiteturais tomadas durante uma Sessão de desenvolvimento assistido por IA.

## Finalidade

Permitir que decisões importantes não permaneçam dispersas entre conversas,
prompts, commits e código-fonte.

O DevIQ deve reconstruir automaticamente essas decisões e disponibilizá-las
como conhecimento reutilizável.

## Entradas

- Evidence Model
- Prompt Timeline
- Knowledge Model
- Correlation Model
- Código-fonte
- Commits

## Fluxo Funcional

1. Identificar possíveis decisões.
2. Correlacionar discussões e implementação.
3. Detectar decisão aprovada.
4. Identificar alternativas descartadas.
5. Registrar justificativas encontradas.
6. Produzir o conjunto de Decisões Arquiteturais.

## Saídas

- Architectural Decisions
- Evidências associadas
- Justificativas
- Alternativas consideradas
- Impactos identificados

## Regras

- Nenhuma decisão é criada sem Evidências.
- Decisões possuem nível de confiança.
- Toda decisão referencia os artefatos relacionados.

## Critérios de Aceitação

- O desenvolvedor consegue compreender rapidamente quais decisões foram tomadas.
- Cada decisão pode ser rastreada até sua origem.
- As decisões alimentam o Executive Summary e o Knowledge Model.
