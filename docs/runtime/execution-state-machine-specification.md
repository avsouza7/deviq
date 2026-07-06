# Especificação Técnica - Execution State Machine Specification

## Objetivo

Definir a máquina de estados oficial de uma execução do `deviq run`,
estabelecendo estados válidos, transições permitidas e eventos
associados.

## Motivação

O ciclo de vida da execução deve ser determinístico, auditável e
consistente entre todos os componentes da plataforma.

## Máquina de Estados

``` text
CREATED
    ↓
DISCOVERING
    ↓
COLLECTING
    ↓
NORMALIZING
    ↓
ANALYZING
    ↓
REPORTING
    ↓
EXPORTING
    ↓
COMPLETED

Qualquer estado
        ↓
FAILED

FAILED
   ↓
RECOVERING
   ↓
COLLECTING / ANALYZING / REPORTING

CANCELLED
```

## Estados

-   CREATED
-   DISCOVERING
-   COLLECTING
-   NORMALIZING
-   ANALYZING
-   REPORTING
-   EXPORTING
-   COMPLETED
-   FAILED
-   RECOVERING
-   CANCELLED

## Eventos

-   ExecutionCreated
-   DiscoveryCompleted
-   CollectionCompleted
-   NormalizationCompleted
-   AnalysisCompleted
-   ReportingCompleted
-   ExportCompleted
-   ExecutionCompleted
-   ExecutionFailed
-   RecoveryStarted
-   RecoveryCompleted
-   ExecutionCancelled

## Regras

-   Toda transição gera um evento.
-   Transições inválidas são rejeitadas.
-   Apenas FAILED pode iniciar RECOVERING.
-   COMPLETED e CANCELLED são estados finais.

## Estrutura

`ExecutionStateTransition`

-   executionId
-   fromState
-   toState
-   timestamp
-   triggeringEvent
-   reason

## Garantias

-   Máquina determinística.
-   Todas as transições são auditáveis.
-   Recuperação preserva rastreabilidade.

## Critérios de Aceitação

-   Toda execução percorre apenas transições válidas.
-   O Runtime publica eventos para cada mudança de estado.
-   O ExecutionContext reflete o estado corrente da máquina.
