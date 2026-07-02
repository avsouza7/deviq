# DevIQ - Project Status

> Documento oficial de handoff entre sessões. Fonte oficial de contexto do projeto.

## Informações Gerais

- Projeto: DevIQ
- Status: Em desenvolvimento
- Versão alvo: v0.1.0
- Última atualização: 2026-07-02

---

## Visão

Framework para capturar, estruturar, medir e evoluir a colaboração entre desenvolvedores e Inteligência Artificial durante o ciclo de desenvolvimento de software.

---

## Princípios

- Evidence First
- Contract First
- Provider Agnostic
- Single Responsibility
- Reprodutibilidade
- Determinismo

---

## Working Agreement

### Papéis

- Product Owner / Maintainer: Alexandre
- Tech Lead / Senior Engineer / Reviewer: ChatGPT

### Regras

- Um artefato por vez.
- Um arquivo completo por resposta.
- Commits somente após review do PO.
- Arquivos completos entregues para substituição.
- Documentação oficial em Português (Brasil).
- Identificadores técnicos permanecem em inglês.
- Interromper apenas para decisão arquitetural, bloqueio técnico ou decisão do PO.

---

## Estrutura do Projeto

```text
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

---

## Artefatos concluídos

### Contratos

- RFC-001 — Evidence Model

### Modelo

- model/evidence-model.yaml

### Schema

- schema/evidence-model.schema.yaml

### Catálogos

- catalog/contribution-weights.yaml
- catalog/contribution-outcomes.yaml

### Exemplos

- examples/minimal.yaml
- examples/complete.yaml

### Métricas

- metrics/specifications/iai.md
- metrics/specifications/aips.md

---

## Decisões Arquiteturais

- RFC define conceitos.
- Model representa o modelo canônico.
- Schema define validação.
- Catalog contém constantes do Framework.
- Métricas nunca embutem constantes de negócio.
- Pesos são definidos pelo Framework.
- Outcomes são definidos pelo Framework.
- JSON Schema Draft 2020-12 é o padrão de validação.
- Documentação oficial em Português (Brasil).
- Especificações seguem um padrão editorial único.

---

## Estado Atual

Último artefato concluído:

`framework/metrics/specifications/aips.md`

Próximo artefato:

**A definir pelo Product Owner.**

---

## Backlog Arquitetural

Não implementar sem aprovação do PO:

- RFC Contribution Model
- Evolução dos catálogos
- Hardening das RFCs para v1.0

Observação registrada:

- Avaliar, em versão futura, a representação explícita de prompts no Evidence Model para suportar métricas baseadas em prompts.

---

## Convenções

- Um diretório = uma responsabilidade.
- Um artefato = um commit.
- Um arquivo completo por entrega.
- Sem patches.
- Review antes do commit.
- Commits após aprovação do PO.
- Documentação em Português (Brasil).

---

## Estado do Repositório

Branch atual:

`feature/rfc-001-evidence-model`

Status conhecido:

- Commits locais realizados.
- Nenhum push realizado até o momento.

---

## Como retomar o projeto

1. Anexe este arquivo.
2. Informe o próximo artefato.
3. Anexe dependências específicas, quando necessário.

Exemplo:

> Estamos continuando o projeto DevIQ. Considere este arquivo como a fonte oficial de contexto. Vamos implementar o próximo artefato.
