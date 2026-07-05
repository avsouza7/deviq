# Canonical Artifact Model

## Objetivo

Definir o modelo canônico dos artefatos produzidos pelo DevIQ.

Um Artefato representa qualquer resultado persistente gerado durante a execução
do `deviq run`.

## Tipos

- Report
- Knowledge Package
- Metrics Package
- Evidence Package
- Execution Manifest
- Output Package

## Estrutura

Todo Artefato deve possuir:

- Artifact ID
- Run ID
- Session ID
- Tipo
- Versão
- Data de geração
- Origem
- Hash de integridade

## Regras

- Todo Artefato é imutável.
- Todo Artefato referencia o Execution Manifest.
- Todo Artefato é rastreável até as Evidências de origem.

## Relação

Run
↓
Execution Manifest
↓
Artifacts
↓
Outputs

## Objetivo

Padronizar todos os resultados persistidos produzidos pelo DevIQ.
