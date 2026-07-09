# Especificação Técnica - Decision Detection Algorithm

## Objetivo

Definir o algoritmo responsável por identificar automaticamente decisões
técnicas e arquiteturais durante uma sessão de desenvolvimento.

## Motivação

Grande parte do conhecimento produzido em uma sessão está nas decisões
tomadas, não apenas no código gerado. O DevIQ deve identificar essas
decisões de forma explicável e rastreável.

## Entradas

-   Evidence Graph
-   Classified Evidence
-   Prompt Timeline
-   Commits
-   RFCs
-   Documentação

## Pipeline

``` text
Evidence Graph
      ↓
Candidate Detection
      ↓
Decision Correlation
      ↓
Evidence Validation
      ↓
Confidence Calculation
      ↓
Decision Registry
```

## Fontes de Evidência

-   Prompts com intenção arquitetural
-   Respostas da IA
-   Commits relacionados
-   Alterações estruturais
-   RFCs
-   Documentação técnica

## Tipos de Decisão

-   Arquitetural
-   Design
-   Implementação
-   Refatoração
-   Testes
-   Infraestrutura
-   Processo

## Regras

-   Nenhuma decisão é registrada sem evidências correlacionadas.
-   Cada decisão possui justificativa e nível de confiança.
-   Uma decisão pode referenciar múltiplas evidências.
-   Decisões conflitantes devem ser identificadas.

## Estrutura da Saída

`ArchitecturalDecision`

-   id
-   title
-   type
-   description
-   confidence
-   rationale
-   supportingEvidence
-   impactedArtifacts

## Garantias

-   Decisões são reproduzíveis para a mesma entrada.
-   Toda decisão é auditável.
-   A rastreabilidade é preservada até as evidências de origem.

## Critérios de Aceitação

-   Decisões alimentam Knowledge Extraction e Executive Summary.
-   Não existem decisões sem justificativa.
-   Toda decisão possui cadeia de evidências verificável.
