# DevIQ - Project Status

> Documento de handoff entre sessões. Fonte oficial de contexto do
> projeto.

## Informações Gerais

-   Projeto: DevIQ
-   Status: Em desenvolvimento
-   Versão alvo: v0.1.0
-   Última atualização: 2026-07-02

## Visão

Framework para capturar, estruturar, medir e evoluir a colaboração entre
desenvolvedores e Inteligência Artificial durante o ciclo de
desenvolvimento de software.

## Princípios

-   Evidence First
-   Contract First
-   Provider Agnostic
-   Single Responsibility
-   Reprodutibilidade
-   Determinismo

## Working Agreement

### Papéis

-   Product Owner / Maintainer: Alexandre
-   Tech Lead / Senior Engineer / Reviewer: ChatGPT

### Regras

-   Um artefato por vez.
-   Um arquivo completo por resposta.
-   Commits somente após review.
-   Arquivos grandes entregues como anexos.
-   Interromper apenas para decisão arquitetural, bloqueio técnico ou
    decisão do PO.

## Estrutura do Projeto

``` text
framework/
├── catalog/
├── contracts/
├── examples/
├── metrics/
│   └── specifications/
├── model/
├── schema/
└── providers/
```

## Artefatos concluídos

### Contratos

-   RFC-001 -- Evidence Model

### Modelo

-   model/evidence-model.yaml

### Schema

-   schema/evidence-model.schema.yaml

### Catálogos

-   catalog/contribution-weights.yaml
-   catalog/contribution-outcomes.yaml

### Exemplos

-   examples/minimal.yaml
-   examples/complete.yaml

### Métricas

-   metrics/specifications/iai.md

## Decisões Arquiteturais

-   RFC define conceitos.
-   Model representa o modelo canônico.
-   Schema define validação.
-   Catalog contém constantes do framework.
-   Métricas nunca embutem constantes.
-   Pesos são definidos pelo Framework.
-   Outcomes são definidos pelo Framework.
-   JSON Schema Draft 2020-12 como padrão de validação.

## Estado Atual

Último artefato concluído:

`framework/metrics/specifications/iai.md`

Próximo artefato sugerido:

`framework/metrics/specifications/aips.md`

Dependências já disponíveis:

-   RFC-001
-   Evidence Model
-   JSON Schema
-   Contribution Weights
-   Contribution Outcomes
-   IAI

## Backlog Arquitetural

Não aprovado (não implementar):

-   RFC Contribution Model
-   Evolução dos catálogos
-   Hardening das RFCs para v1.0

## Convenções

-   Um diretório = uma responsabilidade.
-   Um artefato = um commit.
-   Arquivos completos sempre.
-   Sem patches.
-   Review antes do commit.

## Como retomar o projeto

Em uma nova conversa:

1.  Anexe este arquivo.
2.  Informe o próximo artefato.
3.  Anexe somente dependências específicas, se necessário.

Exemplo:

> Estamos continuando o DevIQ. Considere este arquivo como fonte
> oficial. O próximo artefato é
> framework/metrics/specifications/aips.md.
