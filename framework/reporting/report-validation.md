# Report Validation

## Objetivo

Definir as regras de validação dos contratos oficiais de relatório do
DevIQ.

## Escopo

Aplica-se a todos os formatos oficiais de relatório.

## Regras

1.  Todo relatório deve informar `reportVersion`.
2.  O contrato deve estar em conformidade com sua versão declarada.
3.  Campos obrigatórios não podem estar ausentes.
4.  Campos desconhecidos devem ser ignorados apenas quando previstos
    pela versão do contrato.
5.  Inconsistências devem ser reportadas com mensagens determinísticas.

## Resultado da Validação

-   Válido.
-   Válido com avisos.
-   Inválido.

## Princípios

-   Determinismo.
-   Reprodutibilidade.
-   Compatibilidade entre versões.
