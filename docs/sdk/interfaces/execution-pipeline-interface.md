# Especificação Técnica - Interface `ExecutionPipeline`

## Objetivo

Definir o contrato do componente responsável por orquestrar toda a
execução do `deviq run`.

## Responsabilidade

O `ExecutionPipeline` coordena a descoberta da sessão, coleta de
evidências, análise, geração de artefatos, exportação e publicação de
eventos.

## Etapas

1.  Inicialização
2.  Descoberta da Sessão
3.  Coleta de Evidências
4.  Reconstrução da Sessão
5.  Execução dos Analysis Engines
6.  Geração de Relatórios
7.  Exportação
8.  Persistência
9.  Finalização

## Contrato

``` java
interface ExecutionPipeline {

    ExecutionResult execute(ExecutionContext context);

}
```

## Responsabilidades

-   Coordenar os EvidenceCollectors.
-   Executar os AnalysisEngines.
-   Acionar ReportGenerators.
-   Invocar Exporters.
-   Publicar eventos do pipeline.
-   Garantir rastreabilidade ponta a ponta.

## Requisitos

-   Execução determinística para a mesma entrada.
-   Isolamento entre plugins.
-   Continuação da execução quando falhas recuperáveis ocorrerem.
-   Registro estruturado de diagnóstico.

## Critérios de Aceitação

-   Compatível com o Plugin SDK.
-   Orquestra todas as etapas do pipeline.
-   Produz um `ExecutionResult` válido e rastreável.
