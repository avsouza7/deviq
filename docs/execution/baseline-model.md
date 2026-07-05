# Baseline Model

## Objetivo

Definir o modelo canônico de Linha de Base (Baseline) do DevIQ.

Uma Baseline representa um ponto de referência utilizado para comparar a evolução
de um projeto ao longo de múltiplas execuções do `deviq run`.

## Entradas

- Execution Result
- Execution Summary
- Metrics Model

## Estrutura

Toda Baseline deve conter:

- Baseline ID
- Projeto
- Data de criação
- Execução de referência
- Métricas de referência
- Conhecimento consolidado
- Observações

## Regras

- Uma Baseline é imutável após sua publicação.
- Baselines podem ser utilizadas por múltiplas comparações.
- Toda Baseline referencia exatamente uma execução de origem.

## Fluxo

Execution Result
↓
Baseline
↓
Execution Comparison

## Objetivo

Permitir comparações consistentes entre o estado atual do projeto e um ponto de
referência previamente estabelecido.
