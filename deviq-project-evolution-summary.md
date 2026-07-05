# DevIQ - Resumo da Evolução do Projeto

## 1. Entendimento Inicial

### Visão

O DevIQ foi inicialmente interpretado como um framework/runtime para
execução de análises sobre sessões de desenvolvimento, semelhante a uma
especificação operacional.

### O que foi produzido

-   Architecture
-   Models
-   Rules
-   Engines
-   Runtime
-   Context
-   Memory
-   Lifecycle
-   Error Handling
-   Observability
-   Versioning
-   Conformance
-   Certification
-   Governance
-   Adoption
-   Glossary
-   Index

Resultado: uma especificação técnica sólida para o Runtime.

------------------------------------------------------------------------

## 2. Após o esclarecimento sobre o uso na IDE

### Nova visão

O objetivo real era utilizar a IA da IDE normalmente durante o
desenvolvimento e, ao final da sessão, executar apenas:

> Execute o DevIQ.

A IA deve então gerar automaticamente os artefatos definidos pela
especificação.

### O que mudou

O DevIQ passou a ser entendido como um protocolo de orquestração da
documentação e não como um Runtime de execução contínua.

### O que foi definido

-   Execution Engine
-   Session Intelligence
-   Artifact Intelligence
-   Generation Decision Matrix
-   Artifact Catalog
-   Playbooks
-   Generators
-   Templates

------------------------------------------------------------------------

## 3. Após a discussão sobre consumo de tokens

### Problema identificado

Um DevIQ sempre ativo concorreria com o agente da IDE pelo contexto e
pelos tokens.

### Decisão

-   Passive (padrão)
-   Checkpoint (recomendado)
-   Assisted (avançado)

O modo Passive tornou-se o padrão.

------------------------------------------------------------------------

## 4. Nova mudança de direção

### Problema identificado

Manter centenas de arquivos Markdown manualmente não escala.

### Nova visão

A especificação passa a ser a única fonte da verdade.

A documentação será gerada automaticamente.

### Arquitetura proposta

-   deviq-spec
-   deviq-builder
-   deviq-runtime (futuro)
-   deviq-examples

------------------------------------------------------------------------

## 5. Estado Atual

**Definição**

DevIQ é uma especificação para orientar agentes de IA a transformar
sessões de desenvolvimento em artefatos de engenharia consistentes e
reproduzíveis.

**Fluxo futuro**

Specification

↓

Builder

↓

Markdown

HTML

PDF

LLM Context

Bootstrap Prompts

A próxima etapa do projeto é construir a plataforma (DSL + Builder),
utilizando a documentação existente como base para migração e geração
automática dos artefatos.
