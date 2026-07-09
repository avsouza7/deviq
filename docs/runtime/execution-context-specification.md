# Especificação Técnica - Execution Context Specification

## Objetivo

Definir o modelo canônico do `ExecutionContext`, objeto compartilhado
por todos os componentes durante uma execução do `deviq run`.

## Motivação

Todos os módulos do DevIQ precisam acessar informações comuns sem criar
acoplamento direto entre si. O `ExecutionContext` fornece esse contrato.

## Responsabilidades

-   Compartilhar configuração da execução.
-   Disponibilizar serviços do Runtime.
-   Expor artefatos produzidos ao longo do pipeline.
-   Propagar metadados e estado da execução.

## Estrutura

``` text
ExecutionContext
 ├── Execution Metadata
 ├── Configuration
 ├── Services
 ├── Runtime State
 ├── Pipeline Artifacts
 ├── Event Bus
 └── Diagnostics
```

## Metadata

Campos obrigatórios:

-   executionId
-   project
-   profile
-   startedAt
-   userOptions
-   schemaVersion

## Services

-   Plugin Runtime
-   Storage
-   Logger
-   Event Bus
-   Metrics Registry
-   Clock

## Runtime State

-   CREATED
-   DISCOVERING
-   COLLECTING
-   ANALYZING
-   REPORTING
-   COMPLETED
-   FAILED

## Pipeline Artifacts

-   Evidence
-   DevelopmentSession
-   EvidenceGraph
-   KnowledgeBase
-   MetricsReport
-   RecommendationPackage
-   CanonicalReport

## Regras

-   O contexto é criado uma única vez por execução.
-   Componentes adicionam artefatos, mas não alteram os produzidos por
    etapas anteriores.
-   Toda alteração relevante gera eventos.
-   O contexto é rastreável pelo executionId.

## Critérios de Aceitação

-   Todos os módulos utilizam exclusivamente o ExecutionContext para
    compartilhar estado.
-   O modelo é independente de implementação.
-   O contexto suporta futuras extensões sem quebrar compatibilidade.
