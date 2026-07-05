# Processing Model

## Objetivo

Definir o modelo canônico de processamento do DevIQ.

O Processing Model descreve como uma execução percorre o pipeline preservando
determinismo, rastreabilidade e isolamento entre etapas.

## Etapas

1. Discover
2. Collect
3. Normalize
4. Correlate
5. Generate Knowledge
6. Compute Metrics
7. Build Report
8. Export

## Regras

- Cada etapa recebe apenas modelos canônicos.
- Uma etapa nunca modifica a saída de uma etapa anterior.
- Toda etapa produz um resultado identificável e rastreável.
- Falhas interrompem apenas a etapa afetada quando possível.

## Entradas

- Run Context
- Configuration
- Collection Plan

## Saídas

- Artefatos canônicos
- Execution Manifest
- Logs

## Objetivo

Garantir um fluxo de processamento previsível e reproduzível para toda execução
do `deviq run`.
