# Export Model

## Objetivo

Definir o modelo canônico de Exportação do DevIQ.

A Exportação transforma os artefatos canônicos produzidos pelo `deviq run`
em formatos adequados para consumo humano ou integração com outras ferramentas.

## Entradas

- Report Model
- Knowledge Model
- Metrics Model
- Evidence Package
- Execution Manifest

## Formatos Suportados

- Markdown
- HTML
- PDF
- JSON

Novos formatos podem ser adicionados por Plugins.

## Estrutura

Toda Exportação deve possuir:

- Export ID
- Run ID
- Artifact ID
- Formato
- Destino
- Data/Hora
- Status

## Regras

- A exportação não altera os artefatos canônicos.
- O mesmo conteúdo pode ser exportado para múltiplos formatos.
- Toda exportação referencia o Artifact de origem.

## Fluxo

Artifacts
↓
Export
↓
Formato de Saída

## Objetivo

Separar a geração do conhecimento da forma como ele será distribuído ou consumido.
