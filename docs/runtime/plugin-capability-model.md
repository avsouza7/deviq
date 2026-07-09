# Especificação Técnica - Plugin Capability Model

## Objetivo

Definir o modelo de capacidades (*Capabilities*) utilizado pelo Runtime
do DevIQ para desacoplar consumidores e provedores de funcionalidades.

## Motivação

Plugins devem depender de capacidades declaradas, e não de
implementações específicas. Isso reduz acoplamento e facilita evolução
da plataforma.

## Conceitos

Uma Capability representa um contrato funcional disponibilizado por um
plugin.

Exemplos:

-   Evidence Collection
-   Report Export
-   Knowledge Enrichment
-   Validation
-   Analysis

## Pipeline

``` text
Plugin Manifest
        ↓
Capability Registration
        ↓
Capability Registry
        ↓
Capability Resolution
        ↓
Plugin Execution
```

## Estrutura

`CapabilityDescriptor`

-   id
-   name
-   version
-   providerPlugin
-   apiVersion
-   contracts
-   metadata

## Registry

O Runtime mantém um catálogo contendo:

-   capacidades registradas;
-   provedores;
-   consumidores;
-   versões compatíveis.

## Regras

-   Capacidades possuem identificadores únicos.
-   Um plugin pode publicar múltiplas capacidades.
-   Um plugin pode consumir capacidades de múltiplos provedores.
-   Resolução utiliza compatibilidade de versões.

## Garantias

-   Resolução determinística.
-   Independência entre consumidor e implementação.
-   Auditoria completa da resolução.

## Critérios de Aceitação

-   Plugins descobrem capacidades sem conhecer implementações.
-   O Runtime detecta conflitos de versão.
-   Novas capacidades podem ser adicionadas sem alterar o Core.
