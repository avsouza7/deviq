# Schema Validation

## Objetivo

Definir as regras canônicas para validação dos contratos e artefatos do
DevIQ utilizando os JSON Schemas oficiais.

## Escopo

Aplica-se a todos os contratos definidos pelo Framework.

## Regras

1.  Todo artefato deve ser validado contra seu JSON Schema
    correspondente.
2.  A validação deve produzir resultados determinísticos.
3.  Erros devem indicar o campo, a regra violada e a localização.
4.  Alterações incompatíveis de schema exigem nova versão major.

## Resultado

-   Válido
-   Válido com avisos
-   Inválido

## Princípios

-   Contract First
-   Determinismo
-   Reprodutibilidade
-   Rastreabilidade
