# Caso de Uso - Comparar Execuções

## Objetivo

Descrever como um desenvolvedor compara duas ou mais execuções do
`deviq run` para avaliar a evolução do projeto.

## Atores

-   Desenvolvedor
-   DevIQ CLI

## Pré-condições

-   Duas ou mais execuções concluídas.
-   Resultados disponíveis para comparação.

## Fluxo Principal

1.  O desenvolvedor seleciona as execuções.
2.  O DevIQ valida a compatibilidade.
3.  Compara métricas e conhecimento.
4.  Identifica evolução e regressões.
5.  Apresenta diferenças relevantes.
6.  Exibe recomendações para o próximo ciclo.

## Fluxos Alternativos

### A1. Execuções incompatíveis

-   O DevIQ informa as diferenças de escopo.
-   Permite comparação parcial quando possível.

## Pós-condições

-   A comparação fica registrada.
-   Tendências permanecem rastreáveis.

## Critérios de Aceitação

-   Todas as diferenças possuem evidências.
-   O usuário compreende claramente a evolução entre as execuções.
