# Output Model

## Objetivo

Definir o modelo canônico das saídas produzidas pelo DevIQ.

O Output Model organiza todos os artefatos gerados após a execução do
`deviq run`, independentemente do formato de exportação.

## Entradas

- Report Model
- Knowledge Model
- Metrics Model

## Artefatos

O Output Model pode produzir:

- Executive Report
- Executive Summary
- Knowledge Package
- Metrics Package
- Evidence Package
- JSON para integração
- Markdown
- HTML
- PDF

## Regras

- Toda saída possui Run ID.
- Toda saída referencia a Session ID.
- Toda saída é rastreável até as Evidências.
- Formatos diferentes representam o mesmo conteúdo canônico.

## Objetivo

Separar o conteúdo produzido da forma como ele será apresentado ou consumido.
