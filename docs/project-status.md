# DevIQ - Project Status

> Fonte oficial de contexto entre sessões do projeto.

**Última atualização:** 2026-07-02

------------------------------------------------------------------------

# Visão

**DevIQ** é um framework para analisar a colaboração entre
desenvolvedores e IA durante o desenvolvimento de software.

Princípios:

-   Evidence First
-   Contrato antes da implementação
-   Independência de Provider
-   Responsabilidade única por artefato

------------------------------------------------------------------------

# Working Agreement

## Papéis

-   Product Owner + Maintainer: Usuário
-   Tech Lead + Senior Engineer + Reviewer: ChatGPT

## Regras

-   Um artefato por vez.
-   Arquivo sempre completo.
-   Sem patches.
-   Sem brainstorming durante a Sprint.
-   Interromper apenas para:
    -   decisão do PO;
    -   mudança de arquitetura;
    -   bloqueio técnico.

------------------------------------------------------------------------

# Estrutura do Projeto

``` text
framework/
├── catalog/
├── contracts/
├── examples/
├── metrics/
│   └── specifications/
├── model/
├── providers/
└── schema/
```

------------------------------------------------------------------------

# Artefatos concluídos

## Bootstrap

-   README.md
-   LICENSE (Apache 2.0)
-   CHANGELOG.md
-   .gitignore
-   CONTRIBUTING.md
-   CODE_OF_CONDUCT.md

## Framework

-   RFC-001 -- Evidence Model
-   model/evidence-model.yaml
-   schema/evidence-model.schema.yaml
-   examples/minimal.yaml
-   examples/complete.yaml
-   catalog/contribution-weights.yaml
-   catalog/contribution-outcomes.yaml

------------------------------------------------------------------------

# Decisões Arquiteturais

-   RFC define conceitos.
-   Model define a estrutura canônica.
-   Schema define validação.
-   Catalog define constantes do Framework.
-   Examples demonstram utilização.
-   Métricas nunca contêm constantes de negócio.
-   Pesos são fixos e definidos pelo Framework.
-   Outcomes são definidos pelo Framework.

------------------------------------------------------------------------

# Sprint Atual

## Concluído

-   PR-001 a PR-013.

## Próximo artefato

``` text
framework/metrics/specifications/iai.md
```

Objetivo:

Especificar formalmente a métrica **IAI (AI Assistance Index)**.

------------------------------------------------------------------------

# Backlog Arquitetural

Não há itens aprovados pendentes.

Ideias futuras somente mediante aprovação do Product Owner.

------------------------------------------------------------------------

# Como iniciar uma nova conversa

Utilize a seguinte mensagem:

> Estamos continuando o projeto DevIQ. Considere este arquivo como a
> fonte oficial de contexto. O próximo artefato é
> `framework/metrics/specifications/iai.md`.
