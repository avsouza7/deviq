# Provider Capabilities

## Objetivo

Definir como um provider declara suas capacidades suportadas.

## Capacidades

Cada provider deve informar:

-   Modelos suportados;
-   Tipos de entrada aceitos;
-   Recursos disponíveis;
-   Limitações conhecidas;
-   Versão do contrato implementado.

## Regras

1.  As capacidades devem ser declarativas.
2.  Não podem alterar o comportamento do Framework.
3.  Devem ser versionadas juntamente com o provider.
4.  Mudanças incompatíveis exigem nova versão do contrato.

## Princípios

-   Contract First
-   Provider Agnostic
-   Transparência
