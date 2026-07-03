# Session Model

## Objetivo

Definir o modelo canônico de uma Sessão no DevIQ.

## Conceito

Uma Sessão representa a unidade de execução que agrupa interações,
prompts, respostas e evidências produzidas durante uma análise.

## Estrutura

-   Identificador
-   Data/Hora
-   Provider
-   Prompts
-   Interações
-   Evidências
-   Metadados

## Regras

1.  Toda Sessão deve possuir identificador único.
2.  Deve preservar a ordem cronológica das interações.
3.  Deve ser rastreável às contribuições produzidas.
4.  A mesma sessão deve permitir reprodução da análise.

## Princípios

-   Contract First
-   Evidence First
-   Determinismo
-   Reprodutibilidade
