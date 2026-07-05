# Especificação Funcional - Execution Comparison

## Objetivo

Definir como o DevIQ compara múltiplas execuções do `deviq run` para medir a
evolução do desenvolvimento assistido por IA.

## Finalidade

Permitir que equipes e desenvolvedores acompanhem tendências, validem melhorias
e identifiquem regressões entre ciclos de desenvolvimento.

## Entradas

- Execution Result
- Execution Summary
- Metrics Model
- Knowledge Model
- Baseline

## Fluxo Funcional

1. Selecionar as execuções a comparar.
2. Validar compatibilidade.
3. Comparar métricas.
4. Comparar conhecimento produzido.
5. Comparar dívida técnica.
6. Identificar tendências.
7. Gerar o relatório comparativo.

## Saídas

- Execution Comparison
- Trend Analysis
- Evolução das métricas
- Evolução do conhecimento
- Regressões identificadas

## Regras

- Comparações preservam os resultados originais.
- Toda diferença deve ser rastreável.
- O mesmo critério de comparação deve ser aplicado a todas as execuções.

## Critérios de Aceitação

- O usuário compreende claramente a evolução entre execuções.
- Tendências positivas e negativas são destacadas.
- O resultado alimenta o Continuous Improvement Engine.
