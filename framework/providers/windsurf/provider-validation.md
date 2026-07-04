# Provider Validation

## Objetivo

Definir as regras de validação aplicáveis às implementações de providers
do DevIQ.

## Escopo

Aplica-se a qualquer provider compatível com o Framework.

## Regras

1.  O provider deve implementar o Provider Contract vigente.
2.  As capacidades declaradas devem refletir o comportamento observado.
3.  Toda saída deve ser compatível com o Evidence Model.
4.  Falhas de validação devem ser determinísticas e rastreáveis.

## Resultado

-   Válido
-   Válido com avisos
-   Inválido

## Princípios

-   Contract First
-   Evidence First
-   Determinismo
-   Provider Agnostic
