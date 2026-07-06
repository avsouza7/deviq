# Especificação Técnica - Canonical Report Schema Specification

## Objetivo

Definir o modelo canônico (`CanonicalReport`) utilizado internamente
pelo DevIQ como contrato entre o Analysis Engine e todos os
exportadores.

## Motivação

Os exportadores devem consumir um único modelo de dados, eliminando
duplicação de regras de negócio e garantindo consistência entre todos os
formatos.

## Estrutura

``` text
CanonicalReport
 ├── Metadata
 ├── Sections
 ├── Appendices
 ├── Traceability
 ├── Confidence Summary
 └── Export Metadata
```

## Metadata

Campos obrigatórios:

-   executionId
-   project
-   profile
-   generatedAt
-   deviqVersion
-   schemaVersion

## Sections

Cada seção contém:

-   id
-   title
-   order
-   content
-   confidence
-   traceabilityReferences

## Appendices

-   Prompt Timeline
-   Evidence Index
-   Decision Registry
-   Metrics Details
-   Technical Debt Details

## Export Metadata

-   exporter
-   exporterVersion
-   generatedFormat
-   locale

## Regras

-   A ordem das seções é determinística.
-   Todo conteúdo possui referências rastreáveis.
-   Exportadores não modificam o modelo.
-   O schema é versionado.

## Critérios de Aceitação

-   Todos os exportadores consomem exclusivamente o CanonicalReport.
-   O modelo suporta Markdown, HTML, PDF e JSON.
-   Mudanças incompatíveis exigem incremento de schemaVersion.
