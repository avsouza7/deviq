# Master Technical Backlog

## Objetivo

Transformar toda a especificação do DevIQ em um backlog implementável e
rastreável.

## Épico 1 --- Core Runtime

### Features

-   CLI Runtime
-   Configuration
-   Execution Pipeline
-   Event Bus
-   Logging
-   Error Handling

## Épico 2 --- Evidence Collection

### Features

-   Git Collector
-   Filesystem Collector
-   IDE Collector
-   AI Conversation Collector
-   RFC Collector

## Épico 3 --- Session Intelligence

### Features

-   Session Reconstruction
-   Evidence Correlation
-   Evidence Graph

## Épico 4 --- Analysis

### Features

-   Knowledge Extraction
-   Prompt Compression
-   Effective Contribution
-   Metrics Engine
-   Technical Debt
-   Recommendation Engine

## Épico 5 --- Reporting

### Features

-   Executive Summary
-   Prompt Timeline
-   Markdown Export
-   HTML Export
-   JSON Export

## Épico 6 --- Platform

### Features

-   REST API
-   OpenAPI
-   Plugin SDK
-   Persistence
-   PostgreSQL

## Rastreabilidade

Cada Feature deve possuir:

-   referência ao documento de arquitetura;
-   contrato técnico correspondente;
-   critérios de aceitação;
-   testes automatizados;
-   Definition of Done.

## Priorização

  Fase   Épicos
  ------ -------------------------------------------------
  MVP    1, 2, 3, 4, 5
  v1.1   6 (API), novos exportadores
  v1.2   Novos coletores e plugins
  v2     IA distribuída, análise incremental, dashboards

## Critérios de Aceitação

-   Todo item do backlog referencia uma especificação existente.
-   Não existem funcionalidades sem rastreabilidade.
-   O backlog pode ser importado para ferramentas de gestão.
