# Especificação Técnica - Arquivo `deviq.yaml`

## Objetivo

Definir o formato oficial do arquivo de configuração do DevIQ.

## Finalidade

Permitir que projetos personalizem o comportamento do `deviq run` sem
alterar a interface da CLI.

## Estrutura

``` yaml
version: 1

project:
  name: my-project

execution:
  profile: default
  output: .deviq/reports
  format: json

analysis:
  include:
    - src/**
  exclude:
    - build/**
    - target/**

plugins:
  enabled:
    - git
    - intellij
    - openai
```

## Seções

-   `version`: versão do esquema.
-   `project`: identificação do projeto.
-   `execution`: opções padrão da execução.
-   `analysis`: filtros de análise.
-   `plugins`: plugins habilitados.

## Regras

-   Campos desconhecidos devem gerar aviso.
-   Valores inválidos impedem a execução.
-   Valores da CLI possuem precedência sobre o arquivo.

## Critérios de Aceitação

-   Configuração validável por esquema.
-   Compatível com versionamento.
-   Retrocompatibilidade entre versões sempre que possível.
