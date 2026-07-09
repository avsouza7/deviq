# MVP Implementation Plan

Versão: 1.0
Status: Aprovado
Responsável: Arquitetura

---

# Objetivo

Definir a primeira implementação funcional do DevIQ.

O MVP deverá validar a arquitetura construída produzindo um relatório real a partir de uma sessão de desenvolvimento.

---

# Escopo

Implementar apenas o núcleo necessário para executar:

deviq run

---

# Fluxo

```text
deviq run
      │
      ▼
Discover
      ▼
Collect
      ▼
Normalize
      ▼
Analyze
      ▼
Build Report
```

---

# Módulos

- deviq-cli
- deviq-runtime
- deviq-core
- deviq-analysis
- deviq-report
- deviq-provider-git
- deviq-provider-filesystem
- deviq-provider-chat-markdown

---

# Providers MVP

Implementar:

- Git
- File System
- Chat Markdown

Demais providers ficam para versões futuras.

---

# Analysis Engine MVP

Produzir:

- Resumo Executivo
- Arquivos analisados
- Commits
- Evidências
- Estatísticas básicas

---

# Report Engine MVP

Gerar:

deviq-report.md

Conteúdo mínimo:

- Executive Summary
- Session Overview
- Evidence
- Metrics
- Next Steps

---

# Fora do Escopo

- IAI
- ICP
- AIPS
- Knowledge Graph
- Prompt Compression
- Dashboard
- Exportadores adicionais

---

# Critérios de Aceitação

O MVP será considerado concluído quando:

- `deviq run` executar sem erros;
- o pipeline concluir todas as etapas;
- um relatório Markdown for gerado;
- Git e Chat Markdown forem analisados;
- a arquitetura permitir evolução incremental.

---

# Próxima Fase

Após o MVP:

- Metrics Engine
- Knowledge Engine
- IA Providers
- Exporters
- Dashboard
