# Especificação Técnica - Exporter Framework Specification

## Objetivo

Definir o framework responsável pela exportação do `CanonicalReport`
para diferentes formatos de saída.

## Motivação

A lógica de exportação deve ser desacoplada do Analysis Engine,
permitindo novos formatos sem alterar o núcleo do DevIQ.

## Arquitetura

``` text
CanonicalReport
        ↓
Exporter Registry
        ↓
Exporter Resolution
        ↓
Exporter
        ↓
Output
```

## Interface Canônica

Todo exportador deve implementar:

-   name()
-   supportedFormats()
-   supports(profile)
-   export(report, context)
-   capabilities()

## Exportadores Oficiais

-   Markdown Exporter
-   HTML Exporter
-   PDF Exporter
-   JSON Exporter

## Capacidades

Cada exportador informa:

-   formatos suportados
-   imagens
-   hyperlinks
-   anexos
-   traceabilidade
-   internacionalização

## Regras

-   Exportadores não modificam o CanonicalReport.
-   Toda exportação preserva a rastreabilidade.
-   Falhas de um exportador não invalidam os demais.
-   O framework suporta descoberta via Plugin SDK.

## Estrutura

`ExporterContext`

-   profile
-   locale
-   outputDirectory
-   options
-   executionMetadata

## Critérios de Aceitação

-   Novos exportadores podem ser adicionados sem alterar o Core.
-   Todos consomem exclusivamente o CanonicalReport.
-   O ciclo de vida é uniforme para todos os formatos.
