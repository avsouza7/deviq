# Execution Result Model

## Objetivo

Definir o modelo canônico do Resultado de Execução do DevIQ.

O Resultado de Execução representa o produto final de um `deviq run`,
consolidando o estado da execução e referenciando todos os artefatos gerados.

## Estrutura

Todo Resultado de Execução deve conter:

- Run ID
- Session ID
- Status Final
- Duração
- Artefatos gerados
- Métricas produzidas
- Conhecimentos produzidos
- Relatório principal
- Execution Manifest

## Status

- Success
- Partial Success
- Failed
- Cancelled

## Regras

- Existe exatamente um Resultado por Run.
- O resultado é imutável após sua publicação.
- Todo resultado referencia os artefatos produzidos.
- Todo resultado pode ser reconstruído a partir do Execution Manifest.

## Fluxo

Execution Manifest
↓
Execution Result
↓
Output Model

## Objetivo

Disponibilizar uma representação única, consistente e auditável do resultado de
cada execução do DevIQ.
