# Architecture Overview

## Objetivo

Apresentar uma visão unificada da arquitetura do DevIQ e das relações
entre seus principais componentes.

## Princípios

-   Evidence First
-   Contract First
-   Provider Agnostic
-   Determinismo
-   Reprodutibilidade

## Bounded Contexts

-   Prompt
-   Interaction
-   Session
-   Evidence
-   Contribution
-   Metrics
-   Knowledge
-   Reporting
-   Providers
-   Validation

## Fluxo Arquitetural

``` text
Prompt
  ↓
Interaction
  ↓
Session
  ↓
Evidence
  ↓
Contribution
  ↓
Metric Engine
 ├──► Knowledge
 └──► Reporting
```

## Engines

-   Session Engine
-   Interaction Engine
-   Contribution Engine
-   Metric Engine

## Extensibilidade

Providers implementam os contratos oficiais sem alterar o modelo
canônico.

## Referências

-   RFC-001 --- Evidence Model
-   RFC-002 --- Contribution Model
