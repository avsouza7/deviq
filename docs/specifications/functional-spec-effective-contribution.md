# Especificação Funcional - Effective Contribution

## Objetivo

Definir como o DevIQ determina a Contribuição Efetiva de uma sessão de
desenvolvimento assistido por IA.

## Finalidade

Responder de forma objetiva:

- Quanto do resultado foi efetivamente produzido?
- Qual foi a participação da IA?
- Qual foi a participação do desenvolvedor?
- Qual foi o valor agregado ao projeto?

## Entradas

- Evidence Model
- Knowledge Model
- Metrics Model
- Prompt Timeline
- Correlation Model

## Processo Funcional

1. Identificar todas as Evidências da sessão.
2. Correlacionar prompts, respostas, código e commits.
3. Identificar decisões tomadas pelo desenvolvedor.
4. Identificar contribuições assistidas pela IA.
5. Consolidar indicadores de contribuição.
6. Gerar o resumo de Contribuição Efetiva.

## Saídas

- Effective Contribution
- Indicadores por categoria
- Justificativas rastreáveis

## Regras

- A contribuição é medida sobre resultados entregues, não sobre volume de prompts.
- Toda conclusão deve possuir Evidências de suporte.
- O cálculo deve ser reproduzível.

## Critérios de Aceitação

- Explica claramente a contribuição da IA e do desenvolvedor.
- É rastreável até as Evidências.
- Alimenta o Executive Summary e o Execution Summary.
