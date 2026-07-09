# MVP Implementation Blueprint

## Objetivo

Definir a ordem recomendada de implementação do DevIQ para entregar um
MVP funcional, incremental e validável.

## Princípios

-   Implementar primeiro o fluxo completo, depois ampliar capacidades.
-   Cada fase deve produzir software executável.
-   Todos os componentes seguem os contratos já especificados.

------------------------------------------------------------------------

# Fase 1 --- Fundação

Objetivo: executar `deviq run` de ponta a ponta.

## Entregas

-   CLI
-   Configuração (`deviq.yaml`)
-   Execution Pipeline
-   Event Bus
-   Persistência SQLite
-   Execution Result (`deviq.json`)

Critério de saída:

-   Executa uma análise vazia e gera artefatos válidos.

------------------------------------------------------------------------

# Fase 2 --- Evidence Layer

## Entregas

-   Plugin Loader
-   EvidenceCollector API
-   Git Collector
-   Filesystem Collector
-   Chat Collector
-   Evidence Graph

Critério:

-   Evidências persistidas e correlacionadas.

------------------------------------------------------------------------

# Fase 3 --- Analysis Layer

## Entregas

-   Session Reconstruction
-   Evidence Correlation
-   Knowledge Extraction
-   Metrics Engine
-   Effective Contribution
-   Technical Debt

Critério:

-   Sessão analisada produz conhecimento e métricas.

------------------------------------------------------------------------

# Fase 4 --- Reporting

## Entregas

-   Executive Summary
-   Prompt Timeline
-   Prompt Compression
-   Recommendations
-   Improvement Plan
-   Markdown Exporter
-   JSON Exporter

Critério:

-   Todos os relatórios disponíveis via CLI.

------------------------------------------------------------------------

# Fase 5 --- Plataforma

## Entregas

-   API REST
-   OpenAPI
-   Plugin SDK
-   PostgreSQL
-   Exportadores adicionais

Critério:

-   Plataforma pronta para integrações.

------------------------------------------------------------------------

# Definition of Done

Cada módulo somente é considerado concluído quando:

-   testes unitários aprovados;
-   testes de integração aprovados;
-   contratos preservados;
-   documentação atualizada;
-   rastreabilidade validada;
-   métricas produzidas quando aplicável.

## Critérios de Aceitação

-   Cada fase é executável.
-   Dependências entre módulos são explícitas.
-   O MVP pode evoluir sem ruptura arquitetural.
