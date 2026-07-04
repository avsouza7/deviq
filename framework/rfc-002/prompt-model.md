# Prompt Model

## Objetivo

Definir o modelo canônico de um Prompt no DevIQ.

## Conceito

Um Prompt representa a instrução submetida a um provider durante uma
interação, preservando seu conteúdo, contexto e metadados para garantir
rastreabilidade.

## Estrutura

-   Identificador
-   Conteúdo
-   Contexto
-   Provider
-   Versão
-   Metadados

## Regras

1.  Todo Prompt deve possuir identificador único.
2.  O conteúdo original deve ser preservado.
3.  Alterações geram nova versão.
4.  O Prompt deve ser rastreável às interações e contribuições
    relacionadas.

## Princípios

-   Contract First
-   Evidence First
-   Determinismo
-   Reprodutibilidade
