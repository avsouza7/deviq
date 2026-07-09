# Especificação Técnica - JSON Schema do `deviq.json`

## Objetivo

Definir o esquema JSON oficial utilizado para validar os arquivos
`deviq.json` produzidos pelo DevIQ.

## Finalidade

Garantir interoperabilidade entre a CLI, integrações, APIs, plugins,
dashboards e ferramentas de automação.

## Identificação

``` json
{
  "$schema": "https://json-schema.org/draft/2020-12/schema",
  "$id": "https://schemas.deviq.dev/execution-result.schema.json",
  "title": "DevIQ Execution Result",
  "type": "object"
}
```

## Propriedades Obrigatórias

-   version
-   execution
-   summary
-   metrics
-   knowledge
-   insights
-   technicalDebt
-   recommendations
-   improvementPlan
-   traceability

## Regras

-   `additionalProperties` deve ser `false` para os objetos canônicos.
-   Campos obrigatórios não podem ser omitidos.
-   Extensões devem utilizar namespaces próprios.
-   Alterações incompatíveis exigem nova versão do schema.

## Versionamento

-   MAJOR: mudanças incompatíveis.
-   MINOR: novos campos compatíveis.
-   PATCH: correções sem impacto estrutural.

## Critérios de Aceitação

-   Compatível com JSON Schema Draft 2020-12.
-   Validável por ferramentas padrão.
-   Retrocompatibilidade preservada sempre que possível.
