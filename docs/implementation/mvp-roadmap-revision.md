# MVP Roadmap Revision

Versão: 1.0
Status: Proposta para Aprovação do PO
Responsável: Arquitetura

---

# Objetivo

Reordenar a implementação do MVP para validar primeiro a experiência real de uso do DevIQ.

Esta proposta não altera o objetivo do produto, apenas a sequência de implementação.

---

# Motivação

O DevIQ é um motor de análise executado ao final de uma sessão de desenvolvimento.

O fluxo principal deve ser validado antes da construção de infraestrutura adicional.

---

# Fluxo do Usuário

```text
Projeto
   │
   ▼
deviq init
   │
   ▼
.deviq/
   │
Desenvolvimento
   │
Git + Chat + Código
   │
   ▼
deviq run
   │
   ▼
Relatório Markdown
```

---

# Estrutura Inicial

```text
.deviq/
├── config.yaml
├── providers/
├── sessions/
├── cache/
├── checkpoints/
├── reports/
└── knowledge/
```

---

# Ordem Proposta

1. comando `deviq init`
2. criação da estrutura `.deviq`
3. comando `deviq run`
4. Discover
5. Collect
6. Normalize
7. Analyze
8. Build Report

---

# Fora do MVP

- Dashboard
- IAI
- ICP
- AIPS
- Knowledge Graph
- Exportadores adicionais

---

# Critérios de Aceitação

- `deviq init` cria o workspace;
- `deviq run` executa o pipeline;
- relatório Markdown é gerado em `.deviq/reports`;
- arquitetura permanece extensível.

---

# Impacto

Baixo.

A arquitetura permanece inalterada.

Somente a ordem de implementação é otimizada para validar rapidamente o produto.
