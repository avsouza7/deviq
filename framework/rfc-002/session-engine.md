# Session Engine

## Objetivo

Definir o componente responsável pela orquestração do ciclo de vida de
uma Sessão no DevIQ.

## Responsabilidades

-   Criar e identificar sessões.
-   Registrar prompts, respostas e interações.
-   Coordenar a execução do Session Analysis.
-   Encaminhar evidências ao Contribution Engine.
-   Preservar a rastreabilidade da sessão.

## Entradas

-   Prompt Model
-   Interaction Model
-   Provider Contract

## Saídas

-   Session Analysis Result
-   Contribuições encaminhadas ao Contribution Engine

## Regras

1.  Toda sessão deve possuir identificador único.
2.  A ordem cronológica das interações deve ser preservada.
3.  O processamento deve ser determinístico para a mesma entrada.
4.  O Session Engine não altera evidências, apenas coordena seu
    processamento.

## Princípios

-   Evidence First
-   Contract First
-   Determinismo
-   Reprodutibilidade
