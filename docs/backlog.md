# DevIQ Backlog

> Backlog consolidado do projeto DevIQ.

**Última atualização:** 2026-07-03

---

# Epic 1 — Core Framework

## Concluído

- Bootstrap do projeto
- README
- LICENSE
- CHANGELOG
- CONTRIBUTING
- CODE_OF_CONDUCT
- RFC-001 — Evidence Model
- Canonical Model (`framework/model/evidence-model.yaml`)
- JSON Schema (`framework/schema/evidence-model.schema.yaml`)
- Example (Minimal)
- Example (Complete)
- Contribution Weights Catalog
- Contribution Outcomes Catalog
- IAI Specification

---

# Epic 2 — Metrics

## Concluído

- AIPS Specification
- ICP Specification

## Adiado

- ROI Specification *(dependência: RFC-002 — Contribution Model)*

---

# Epic 3 — Session Analysis

- Session Analysis Rule
- Evidence Extraction Rule
- Confidence Rules
- Validation Rules

---

# Epic 4 — Reporting

- Session Report Template
- Markdown Report
- HTML Report
- Executive Summary

---

# Epic 5 — Knowledge

- Lessons Learned
- Best Prompts
- Reusable Patterns
- Recommendations

---

# Epic 6 — Providers

## Windsurf

- Core Rule
- Session Analysis Rule
- Workflow
- Prompt Templates

## Futuros Providers

- Cursor
- VS Code
- Claude Code
- Outros

---

# Epic 7 — Validation

- Schema Validation
- Example Validation
- Metric Validation
- Contract Validation

---

# Backlog Arquitetural

## RFC-002 — Contribution Model

Modelar formalmente os conceitos de Contribuição, Prompt, Sessão e Interação para suportar a evolução das métricas e a futura especificação do ROI.

## Contribution Engine

Motor responsável pelo cálculo das métricas.

## Metric Engine

Separação entre catálogos, especificações e algoritmos.

---

# Sprint de Hardening

- Revisão das RFCs
- Revisão dos Schemas
- Revisão das Métricas
- Revisão dos Exemplos
- Revisão da Documentação
- Padronização de nomenclatura
- Validação cruzada entre artefatos

---

# Fora do Escopo da v0.1

- Dashboard Web
- Interface gráfica
- Banco de dados
- API REST
- Persistência
- Integração com Jira
- Integração com GitHub
- Integração com GitLab
- Telemetria
- Machine Learning
- Auto-calibração das métricas
