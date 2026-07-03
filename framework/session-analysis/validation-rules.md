# Validation Rules

## Objetivo

Definir as regras de validação aplicadas às evidências antes da
consolidação.

## Regras

1.  Toda evidência deve estar em conformidade com o JSON Schema oficial.
2.  Campos obrigatórios não podem estar ausentes.
3.  Valores devem respeitar os catálogos oficiais quando aplicável.
4.  Evidências inválidas devem ser registradas com o motivo da rejeição.
5.  A validação deve ser determinística e reproduzível.

## Resultado

A saída da validação é composta por evidências válidas e rejeitadas,
preservando a rastreabilidade.
