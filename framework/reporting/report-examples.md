# Report Examples

## Objetivo

Apresentar exemplos oficiais dos contratos de relatório suportados pelo
DevIQ.

## Exemplo em Markdown

``` text
# Relatório da Sessão

Sessão: session-001

## Métricas

IAI: 0.82
AIPS: 0.91
ICP: 0.75
```

## Exemplo em JSON

``` json
{
  "reportVersion":"1.0.0",
  "sessionId":"session-001",
  "metrics":{
    "iai":0.82,
    "aips":0.91,
    "icp":0.75
  }
}
```

## Observações

Os exemplos têm finalidade ilustrativa e devem permanecer compatíveis
com os contratos oficiais.
