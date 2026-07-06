# Especificação Técnica - Knowledge Extraction Algorithm

## Objetivo

Definir o algoritmo responsável por transformar evidências
correlacionadas em conhecimento estruturado e reutilizável.

## Motivação

Uma sessão de desenvolvimento produz muito mais do que código. O DevIQ
deve identificar decisões, padrões, aprendizados e conclusões que possam
ser reutilizados em sessões futuras.

## Entradas

-   Evidence Graph
-   Prompt Timeline
-   Architectural Decisions
-   Commits
-   Documentos
-   Insights

## Pipeline

``` text
Evidence Graph
      ↓
Pattern Detection
      ↓
Concept Extraction
      ↓
Knowledge Normalization
      ↓
Knowledge Classification
      ↓
Knowledge Consolidation
      ↓
Knowledge Base
```

## Etapas

### 1. Pattern Detection

Identificar padrões recorrentes entre evidências relacionadas.

### 2. Concept Extraction

Extrair conceitos relevantes, decisões e aprendizados.

### 3. Knowledge Normalization

Converter os conceitos para o modelo canônico de Knowledge.

### 4. Knowledge Classification

Classificar o conhecimento por domínio, impacto e reutilização.

### 5. Knowledge Consolidation

Eliminar duplicidades e consolidar aprendizados complementares.

## Regras

-   Todo conhecimento deriva de evidências rastreáveis.
-   Conhecimentos duplicados devem ser consolidados.
-   O algoritmo preserva contexto e justificativas.

## Saída

Uma `KnowledgeBase` contendo:

-   conhecimentos consolidados;
-   aprendizados;
-   decisões relacionadas;
-   evidências de suporte;
-   nível de confiança.

## Garantias

-   Mesmo conjunto de evidências produz a mesma base de conhecimento.
-   Todo conhecimento permanece auditável.
-   O modelo é independente do provedor de IA.

## Critérios de Aceitação

-   Todo conhecimento possui origem rastreável.
-   A base pode ser reutilizada por Recommendation Engine e Executive
    Summary.
-   Não existem conhecimentos sem evidências de suporte.
