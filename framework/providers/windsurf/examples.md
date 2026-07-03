# Examples

## Objetivo

Apresentar exemplos de utilização do provider Windsurf em conformidade
com os contratos oficiais do DevIQ.

## Exemplo de Entrada

``` yaml
sessionId: session-001
provider: windsurf
```

## Exemplo de Processamento

1.  Validar a sessão.
2.  Processar no provider.
3.  Converter para o Evidence Model.
4.  Validar as evidências.

## Exemplo de Saída

``` yaml
status: success
evidenceCount: 12
contractVersion: 1.0.0
```

## Observações

Os exemplos são ilustrativos e devem permanecer compatíveis com o
Provider Contract e o Evidence Model.
