# Caso de Uso - Revisar Resultados de uma Execução

## Objetivo

Descrever como um desenvolvedor revisa os resultados produzidos por uma
execução do `deviq run`, navegando do resumo executivo até as evidências
que sustentam cada conclusão.

## Atores

-   Desenvolvedor
-   DevIQ CLI

## Pré-condições

-   Pelo menos uma execução concluída com sucesso.
-   Resultados disponíveis para consulta.

## Fluxo Principal

1.  O desenvolvedor seleciona uma execução.
2.  O DevIQ apresenta o Executive Summary.
3.  O usuário consulta a Effective Contribution.
4.  O usuário navega pelas Métricas e Insights.
5.  O usuário revisa Decisões Arquiteturais e Aprendizados.
6.  O usuário analisa Dívida Técnica e Recomendações.
7.  O usuário aprofunda itens específicos até as Evidências.
8.  O usuário conclui a revisão da Sessão.

## Fluxos Alternativos

### A1. Evidências indisponíveis

-   O DevIQ informa quais evidências não puderam ser recuperadas.
-   Os demais resultados permanecem disponíveis.

### A2. Execução incompleta

-   O DevIQ identifica os artefatos ausentes.
-   Os resultados parciais são claramente sinalizados.

## Pós-condições

-   O usuário compreende os resultados da execução.
-   Todos os itens consultados permanecem rastreáveis.
-   A revisão pode orientar o próximo ciclo de desenvolvimento.

## Critérios de Aceitação

-   Toda informação pode ser aprofundada até sua origem.
-   A navegação é consistente entre todas as seções.
-   O usuário consegue compreender rapidamente o resultado da execução.
