# Especificação Técnica - Plugin Manifest Specification

## Objetivo

Definir o formato canônico do manifesto de plugins utilizado pelo
Runtime do DevIQ para descoberta, validação e inicialização.

## Motivação

Todo plugin deve descrever suas capacidades, dependências e requisitos
de forma declarativa, permitindo validação antes da execução.

## Formato

O manifesto é representado por `plugin.yaml`.

## Estrutura

``` text
plugin
 ├── id
 ├── name
 ├── version
 ├── apiVersion
 ├── runtimeVersion
 ├── provider
 ├── capabilities
 ├── dependencies
 ├── configuration
 ├── permissions
 └── metadata
```

## Campos Obrigatórios

-   id
-   name
-   version
-   apiVersion
-   entryPoint
-   capabilities

## Dependências

Cada dependência informa:

-   pluginId
-   versionRange
-   required (true/false)

## Capacidades

Cada capacidade declara:

-   id
-   version
-   contracts
-   exported

## Permissões

Plugins podem solicitar:

-   filesystem.read
-   filesystem.write
-   git.read
-   network.access
-   ai.provider
-   storage.access

## Regras

-   Manifestos são validados antes do carregamento.
-   IDs são únicos.
-   Versões seguem Semantic Versioning.
-   Capacidades duplicadas são rejeitadas quando incompatíveis.

## Critérios de Aceitação

-   O Runtime valida manifestos antes da inicialização.
-   Todos os documentos de Runtime utilizam este contrato.
-   O manifesto suporta evolução por versionamento.
