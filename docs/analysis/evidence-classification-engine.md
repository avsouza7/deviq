# Especificação Técnica - Evidence Classification Engine

## Objetivo

Definir o mecanismo responsável por classificar evidências coletadas
antes da fase de correlação e análise.

## Motivação

Nem todas as evidências possuem o mesmo significado ou papel analítico.
A classificação padroniza a interpretação dos Analysis Engines.

## Entradas

-   Prompt
-   Resposta da IA
-   Commit
-   Arquivo
-   Documento
-   RFC
-   Evento da IDE

## Pipeline

``` text
Raw Evidence
      ↓
Normalization
      ↓
Type Detection
      ↓
Category Classification
      ↓
Intent Detection
      ↓
Tag Enrichment
      ↓
Classified Evidence
```

## Categorias

### Prompts

-   Coding
-   Refactoring
-   Debugging
-   Testing
-   Documentation
-   Architecture
-   Research

### Commits

-   Feature
-   Bug Fix
-   Refactoring
-   Documentation
-   Build
-   Test

### Arquivos

-   Source Code
-   Test
-   Configuration
-   Documentation
-   Infrastructure

## Metadados Gerados

-   category
-   subtype
-   confidence
-   tags
-   detectedIntent
-   classificationVersion

## Regras

-   Toda evidência recebe exatamente uma categoria principal.
-   Evidências podem possuir múltiplas tags.
-   Toda classificação possui nível de confiança.
-   Classificações são reproduzíveis para a mesma entrada.

## Saída

`ClassifiedEvidence` contendo:

-   Evidence original;
-   classificação;
-   metadados enriquecidos;
-   confiança;
-   justificativa.

## Critérios de Aceitação

-   Todas as evidências do modelo canônico podem ser classificadas.
-   A classificação alimenta Session Reconstruction, Evidence
    Correlation e Knowledge Extraction.
-   Nenhuma evidência segue para análise sem classificação.
