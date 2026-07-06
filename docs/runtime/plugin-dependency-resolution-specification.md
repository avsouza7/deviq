# Especificação Técnica - Plugin Dependency Resolution Specification

## Objetivo

Definir como o Runtime do DevIQ resolve dependências entre plugins,
valida compatibilidade e determina uma ordem determinística de
carregamento e execução.

## Motivação

Plugins podem depender de serviços ou capacidades fornecidas por outros
plugins. A resolução dessas dependências deve ser previsível e
auditável.

## Entradas

-   Plugin Manifest
-   Plugin Registry
-   Runtime Configuration

## Pipeline

``` text
Plugin Discovery
        ↓
Manifest Validation
        ↓
Dependency Graph Construction
        ↓
Compatibility Validation
        ↓
Cycle Detection
        ↓
Load Order Resolution
        ↓
Execution Plan
```

## Manifest

Cada plugin informa:

-   id
-   version
-   apiVersion
-   dependencies
-   optionalDependencies
-   capabilities

## Regras

-   Dependências obrigatórias devem existir.
-   Dependências opcionais não impedem execução.
-   Ciclos são proibidos.
-   A ordem de carregamento é determinística.

## Estrutura

`PluginExecutionPlan`

-   orderedPlugins
-   dependencyGraph
-   unresolvedDependencies
-   compatibilityReport

## Garantias

-   Mesmo conjunto de plugins produz o mesmo plano.
-   Todas as incompatibilidades são explicitadas.
-   O plano é auditável.

## Critérios de Aceitação

-   O Runtime detecta ciclos antes da inicialização.
-   Plugins incompatíveis são isolados sem interromper o Core quando
    possível.
-   Toda decisão de ordenação pode ser explicada.
