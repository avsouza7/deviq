# Execution Comparison Model

## Objetivo

Definir o modelo canônico de comparação entre execuções do DevIQ.

Permite analisar a evolução de um projeto ao longo de múltiplas execuções do
`deviq run`, identificando tendências, melhorias e regressões.

## Entradas

- Dois ou mais Execution Results
- Execution Summaries
- Metrics Models

## Estrutura

Toda comparação deve conter:

- Comparison ID
- Execuções comparadas
- Período analisado
- Métricas comparadas
- Diferenças identificadas
- Evolução do conhecimento
- Tendências
- Conclusões

## Regras

- Apenas execuções compatíveis podem ser comparadas.
- Toda diferença deve referenciar os Execution Results de origem.
- Comparações não alteram os resultados originais.

## Fluxo

Execution Results
↓
Comparison
↓
Insights

## Objetivo

Fornecer uma visão evolutiva do desenvolvimento, permitindo medir progresso,
qualidade e impacto das mudanças entre execuções.
