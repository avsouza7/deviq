# Contribution Engine

## Objetivo

Definir o motor responsável por transformar evidências validadas em
contribuições canônicas do DevIQ.

## Responsabilidades

-   Consumir evidências validadas.
-   Aplicar o Contribution Model.
-   Utilizar os catálogos oficiais de pesos e resultados.
-   Produzir contribuições determinísticas.

## Entradas

-   Session Analysis Result
-   Contribution Model
-   Catálogos oficiais

## Saídas

-   Conjunto de contribuições canônicas.

## Regras

1.  Toda contribuição deve ser rastreável às evidências de origem.
2.  O mesmo conjunto de entradas deve produzir o mesmo conjunto de
    contribuições.
3.  O motor não deve alterar as evidências de origem.

## Princípios

-   Evidence First
-   Contract First
-   Determinismo
-   Reprodutibilidade
