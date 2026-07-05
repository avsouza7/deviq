# Pipeline Stage Model

## Objetivo

Definir o modelo canônico das etapas do pipeline do DevIQ.

Cada etapa representa uma unidade de processamento do `deviq run`, com entradas,
saídas e responsabilidades bem definidas.

## Etapas Oficiais

1. Discover
2. Collect
3. Normalize
4. Correlate
5. Generate Knowledge
6. Compute Metrics
7. Build Report
8. Export

## Estrutura

Toda etapa deve possuir:

- Stage ID
- Nome
- Objetivo
- Entradas
- Saídas
- Pré-condições
- Pós-condições
- Componente responsável

## Regras

- Uma etapa consome apenas modelos canônicos.
- A saída de uma etapa é a entrada da etapa seguinte.
- Etapas devem ser independentes e determinísticas.
- Toda execução registra início, fim e duração de cada etapa.

## Relação

Run Context
↓
Pipeline Stages
↓
Execution Manifest

## Objetivo

Padronizar as etapas do pipeline para permitir implementação, monitoramento e
evolução consistentes.
