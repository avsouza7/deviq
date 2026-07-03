# JSON Report

## Objetivo

Definir o contrato canônico para exportação dos resultados da análise de
sessão em formato JSON.

## Estrutura

``` json
{
  "sessionId": "",
  "modelVersion": "",
  "analysisDate": "",
  "summary": {},
  "acceptedEvidence": [],
  "rejectedEvidence": [],
  "metrics": {
    "iai": null,
    "aips": null,
    "icp": null
  },
  "notes": []
}
```

## Regras

-   O contrato deve ser determinístico.
-   A estrutura deve permanecer estável entre providers.
-   Os nomes dos campos seguem convenção camelCase.
-   O conteúdo deriva exclusivamente do Session Analysis Result.

## Compatibilidade

Compatível com o Session Report Template e com a exportação em Markdown.
