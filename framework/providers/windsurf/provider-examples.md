# Provider Examples

## Objetivo

Apresentar exemplos oficiais de implementação de providers compatíveis
com o Framework do DevIQ.

## Exemplo de Metadados

``` yaml
provider:
  id: windsurf
  version: 1.0.0
  contractVersion: 1.0.0
```

## Exemplo de Capacidades

``` yaml
capabilities:
  models:
    - example-model
  input:
    - session
```

## Exemplo de Resultado

Toda saída deve ser convertida para o Evidence Model canônico antes de
ser consumida pelo Framework.

## Observações

Os exemplos são ilustrativos e devem permanecer compatíveis com os
contratos oficiais de providers.
