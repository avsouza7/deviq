# Especificação Técnica - Evidence Graph Model

## Objetivo

Definir o modelo canônico do grafo de evidências utilizado pelo DevIQ
para representar relações entre todos os artefatos de uma sessão de
desenvolvimento.

## Motivação

Todo conhecimento produzido pelo DevIQ deve ser explicável por meio de
uma cadeia de evidências. O Evidence Graph é a estrutura que torna essa
rastreabilidade possível.

## Estrutura

``` text
Evidence Graph
 ├── Nodes
 ├── Relationships
 ├── Properties
 ├── Confidence
 └── Traceability
```

## Tipos de Nós

-   Prompt
-   AI Response
-   Conversation
-   Commit
-   File
-   Document
-   RFC
-   Decision
-   Knowledge
-   Insight
-   Metric
-   Technical Debt
-   Recommendation

## Tipos de Relacionamentos

-   GENERATED
-   MODIFIED
-   REFERENCES
-   DEPENDS_ON
-   DERIVED_FROM
-   CORRELATES_WITH
-   SUPPORTS
-   CONTRADICTS

## Propriedades Obrigatórias

Todos os nós devem possuir:

-   id
-   type
-   source
-   timestamp
-   metadata

Todos os relacionamentos devem possuir:

-   type
-   confidence
-   createdBy
-   justification

## Regras

-   O grafo é direcionado.
-   Não existem nós órfãos.
-   Toda recomendação deve possuir um caminho até uma Evidence.
-   Toda métrica deve ser derivável do grafo.

## Navegação

O modelo deve suportar consultas como:

-   Prompt → Commit
-   Commit → Arquivos
-   Arquivo → Decisão
-   Decisão → Insight
-   Insight → Recommendation
-   Recommendation → Evidence

## Garantias

-   Grafo determinístico para a mesma entrada.
-   Relações auditáveis.
-   Estrutura extensível para novos tipos de nós e relações.

## Critérios de Aceitação

-   Todos os artefatos do DevIQ são representáveis no grafo.
-   Todos os Analysis Engines utilizam o grafo como entrada.
-   Toda saída do DevIQ pode ser rastreada até suas evidências de
    origem.
