# Report Model

## Objetivo

Definir o modelo canônico dos relatórios produzidos pelo DevIQ.

O Report Engine consolida os resultados do ciclo analisado em um artefato único,
voltado para leitura humana e integração com outras ferramentas.

## Entradas

- Session Model
- Evidence Model
- Knowledge Model
- Metrics Model

## Estrutura

Todo relatório deve conter:

- Identificação da sessão
- Executive Summary
- Effective Contribution
- Prompt Summary
- Aprendizados
- Decisões arquiteturais
- Evidências relevantes
- Métricas
- Dívida técnica
- Próximas ações

## Formatos

O modelo é independente do formato de saída.

Exemplos:

- Markdown
- HTML
- PDF
- JSON

## Relação com o Pipeline

Session
↓
Evidence
↓
Knowledge
↓
Metrics
↓
Report

## Objetivo

O Report Model representa a saída principal do comando `deviq run`.
