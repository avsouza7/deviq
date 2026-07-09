# Especificação Funcional - Recommendation Engine

## Objetivo

Definir como o DevIQ transforma Conhecimento, Métricas e Insights em
recomendações práticas para orientar o próximo ciclo de desenvolvimento.

## Finalidade

Ao concluir um `deviq run`, o desenvolvedor deve saber não apenas o que ocorreu,
mas também quais ações têm maior potencial de melhorar o projeto.

## Entradas

- Insight Model
- Knowledge Model
- Metrics Model
- Technical Debt Report
- Execution Summary

## Fluxo Funcional

1. Receber os resultados da análise.
2. Identificar oportunidades de melhoria.
3. Priorizar recomendações.
4. Relacionar cada recomendação às Evidências.
5. Classificar impacto e esforço.
6. Publicar o Recommendation Package.

## Saídas

- Recommendation Package
- Lista priorizada de ações
- Justificativas
- Evidências associadas

## Priorização

- Crítica
- Alta
- Média
- Baixa

## Regras

- Nenhuma recomendação pode existir sem justificativa.
- Toda recomendação deve ser rastreável.
- Recomendações semelhantes devem ser consolidadas.

## Critérios de Aceitação

- As recomendações são acionáveis.
- Cada recomendação possui impacto esperado.
- O resultado alimenta o Executive Summary e orienta o próximo ciclo de desenvolvimento.
