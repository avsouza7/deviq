# Especificação Técnica - Plugin SDK

## Objetivo

Definir o contrato oficial para desenvolvimento de plugins do DevIQ.

## Finalidade

Permitir que novas fontes de evidências, motores de análise e
exportadores sejam adicionados sem modificar o núcleo do DevIQ.

## Estrutura

``` text
Plugin
 ├── Manifest
 ├── Metadata
 ├── Capabilities
 ├── Lifecycle
 └── Extension Points
```

## Manifesto

Campos obrigatórios:

-   id
-   name
-   version
-   author
-   apiVersion

## Ciclo de Vida

1.  Descoberta
2.  Validação
3.  Inicialização
4.  Execução
5.  Finalização
6.  Liberação de recursos

## Pontos de Extensão

-   Evidence Collector
-   Analysis Engine
-   Report Generator
-   Exporter
-   CLI Command
-   Event Listener

## Regras

-   Plugins executam isoladamente.
-   Falhas em um plugin não interrompem a execução do DevIQ.
-   Toda extensão declara a versão da API compatível.

## Critérios de Aceitação

-   Plugins podem ser carregados dinamicamente.
-   Compatibilidade validada antes da execução.
-   O SDK suporta evolução por versionamento.
