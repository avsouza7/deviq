# Report Engine Model

## Objetivo

Definir o modelo canônico do Report Engine.

O Report Engine consolida os resultados produzidos durante uma Sessão e gera a
saída do comando `deviq run`.

## Entradas

- Session Model
- Evidence Model
- Knowledge Model
- Metrics Model

## Responsabilidades

- Consolidar informações da Sessão.
- Gerar o Executive Summary.
- Calcular a Effective Contribution a partir das métricas.
- Organizar aprendizados, decisões e próximas ações.
- Produzir saídas em diferentes formatos.

## Regras

- Não recalcula métricas.
- Não altera conhecimento.
- Mantém rastreabilidade para as Evidências.

## Saídas

- Markdown
- JSON
- HTML
- PDF

## Estrutura mínima

- Executive Summary
- Effective Contribution
- Prompt Summary
- Learnings
- Architectural Decisions
- Evidence Highlights
- Metrics
- Technical Debt
- Next Actions

## Fluxo

Session
↓
Evidence
↓
Knowledge
↓
Metrics
↓
Report
