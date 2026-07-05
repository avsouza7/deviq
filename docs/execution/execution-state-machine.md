# Execution State Machine

## Objetivo

Definir a máquina de estados oficial do `deviq run`.

## Estados

CREATED → INITIALIZING → LOADING_CONTEXT → DISCOVERING → COLLECTING →
NORMALIZING → ANALYZING → GENERATING_REPORT → COMPLETED

Estados alternativos:

- FAILED
- CANCELLED

## Regras

- Toda transição é registrada.
- Estados finais são imutáveis.
