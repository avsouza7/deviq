# Interaction Model

## Objetivo

Definir o modelo canônico de uma Interação no DevIQ.

## Conceito

Uma Interação representa uma troca entre um usuário e um provider
durante uma Sessão.

## Estrutura

-   Identificador
-   Sessão
-   Prompt
-   Resposta
-   Timestamp
-   Evidências derivadas
-   Metadados

## Regras

1.  Toda interação deve possuir identificador único.
2.  A ordem cronológica deve ser preservada.
3.  Cada interação deve referenciar exatamente um Prompt e uma Resposta.
4.  As evidências produzidas devem ser rastreáveis à interação de
    origem.

## Princípios

-   Contract First
-   Evidence First
-   Determinismo
-   Reprodutibilidade
