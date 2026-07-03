# Knowledge Model

## Objetivo

Definir o modelo canônico para representação de conhecimento derivado
das evidências produzidas pelo DevIQ.

## Princípios

-   Evidence First
-   Contract First
-   Determinismo
-   Reprodutibilidade
-   Provider Agnostic

## Estrutura

Um Knowledge Model é composto por:

-   Identificador.
-   Origem (sessão e evidências).
-   Conceitos extraídos.
-   Relações entre conceitos.
-   Metadados de versão.

## Regras

1.  Todo conhecimento deve ser rastreável às evidências de origem.
2.  O modelo não pode introduzir informações sem suporte em evidências.
3.  A mesma entrada deve produzir o mesmo modelo de conhecimento.

## Compatibilidade

O modelo utiliza como entrada o Session Analysis Result e pode servir de
base para mecanismos de busca, recomendações e análises futuras.
