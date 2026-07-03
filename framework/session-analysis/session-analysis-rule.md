# Session Analysis Rule

## Objetivo

Definir as regras para análise determinística de uma sessão de interação
utilizando o Evidence Model.

## Princípios

-   Evidence First
-   Contract First
-   Determinismo
-   Reprodutibilidade
-   Provider Agnostic

## Entradas

-   Sessão registrada.
-   Evidências válidas.
-   Catálogos oficiais.

## Saídas

-   Evidências consolidadas.
-   Métricas derivadas.
-   Resultado reproduzível para a mesma entrada.

## Regras

1.  Apenas evidências válidas participam da análise.
2.  A ordem de processamento deve ser determinística.
3.  Nenhum provider pode alterar o resultado do modelo canônico.
4.  Toda decisão deve ser rastreável às evidências de origem.
