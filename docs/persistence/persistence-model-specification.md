# Especificação Técnica - Modelo de Persistência

## Objetivo

Definir o modelo de persistência oficial do DevIQ para armazenar
execuções, evidências, artefatos analíticos e metadados.

## Finalidade

Garantir armazenamento consistente, rastreável e evolutivo dos
resultados produzidos pelo `deviq run`.

## Entidades Principais

-   Execution
-   Session
-   Evidence
-   Prompt
-   Commit
-   Knowledge
-   Metric
-   Insight
-   TechnicalDebt
-   Recommendation
-   ImprovementPlan

## Relacionamentos

-   Uma Execution possui uma Session.
-   Uma Session possui múltiplas Evidences.
-   Uma Evidence pode originar vários Insights.
-   Recomendações referenciam Insights e Technical Debt.
-   Todos os artefatos referenciam a Execution de origem.

## Regras

-   Identificadores globais únicos.
-   Exclusão lógica para artefatos históricos.
-   Rastreabilidade preservada entre entidades.
-   Versionamento dos modelos persistidos.

## Requisitos Não Funcionais

-   Suporte a SQLite para uso local.
-   Compatibilidade com PostgreSQL para ambientes corporativos.
-   Índices para consultas por execução, projeto e período.

## Critérios de Aceitação

-   Integridade referencial preservada.
-   Consultas eficientes para histórico e comparação.
-   Modelo compatível com futuras migrações.
