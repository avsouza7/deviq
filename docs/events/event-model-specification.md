# Especificação Técnica - Modelo de Eventos

## Objetivo

Definir o modelo oficial de eventos internos emitidos pelo pipeline do
DevIQ.

## Finalidade

Permitir comunicação desacoplada entre os componentes do núcleo,
plugins, exportadores e integrações.

## Princípios

-   Eventos são imutáveis.
-   Eventos representam fatos ocorridos.
-   Consumidores não alteram eventos.
-   Eventos podem ser persistidos para auditoria.

## Estrutura

``` json
{
  "id": "uuid",
  "type": "ExecutionStarted",
  "timestamp": "2026-01-01T12:00:00Z",
  "executionId": "run-123",
  "payload": {}
}
```

## Eventos Canônicos

-   ExecutionStarted
-   SessionDiscovered
-   EvidenceCollected
-   SessionReconstructed
-   AnalysisStarted
-   AnalysisCompleted
-   MetricsCalculated
-   KnowledgeGenerated
-   InsightsGenerated
-   TechnicalDebtCalculated
-   RecommendationsGenerated
-   ImprovementPlanGenerated
-   ReportGenerated
-   ExecutionCompleted
-   ExecutionFailed

## Regras

-   Todo evento possui identificador único.
-   Eventos são ordenados cronologicamente.
-   O `payload` é versionado por tipo de evento.
-   Plugins podem publicar eventos próprios utilizando namespace.

## Critérios de Aceitação

-   Eventos podem ser consumidos de forma assíncrona.
-   O modelo suporta auditoria e replay.
-   Compatibilidade preservada por versionamento.
