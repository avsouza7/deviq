# Validation Examples

## Objetivo

Apresentar exemplos oficiais de validação dos contratos do DevIQ.

## Exemplo --- Contrato Válido

``` yaml
status: valid
warnings: []
errors: []
```

## Exemplo --- Contrato Válido com Avisos

``` yaml
status: valid_with_warnings
warnings:
  - Campo opcional ausente
errors: []
```

## Exemplo --- Contrato Inválido

``` yaml
status: invalid
warnings: []
errors:
  - path: /version
    message: Versão obrigatória ausente
```

## Observações

Os exemplos são ilustrativos e devem permanecer compatíveis com os
contratos e schemas oficiais.
