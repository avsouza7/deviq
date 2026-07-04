# Interaction Engine

## Objetivo

Definir o componente responsável por registrar e coordenar as interações
entre usuário e provider durante uma Sessão.

## Responsabilidades

-   Registrar cada interação.
-   Associar Prompt e Resposta.
-   Preservar a ordem cronológica.
-   Encaminhar evidências ao Session Analysis.
-   Garantir rastreabilidade entre interação, sessão e contribuições.

## Entradas

-   Session Model
-   Prompt Model
-   Provider Contract

## Saídas

-   Interaction Model
-   Evidências para o Session Analysis

## Regras

1.  Cada interação deve possuir identificador único.
2.  Cada interação referencia exatamente um Prompt e uma Resposta.
3.  O processamento deve ser determinístico para a mesma entrada.
4.  O componente não modifica evidências, apenas coordena seu fluxo.

## Princípios

-   Evidence First
-   Contract First
-   Determinismo
-   Reprodutibilidade
