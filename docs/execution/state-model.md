# State Model

## Objetivo

Definir o modelo canônico de estado de execução do DevIQ.

O State Model representa o estado corrente de uma execução do `deviq run`,
permitindo acompanhamento, retomada e monitoramento do pipeline.

## Estados

- Created
- Discovering
- Collecting
- Normalizing
- Correlating
- GeneratingKnowledge
- ComputingMetrics
- BuildingReport
- Exporting
- Completed
- Failed
- Cancelled

## Estrutura

Todo estado deve conter:

- State ID
- Run ID
- Etapa atual
- Status
- Timestamp
- Progresso
- Mensagem

## Regras

- Existe apenas um estado corrente por Run.
- Toda transição deve ser registrada.
- Estados finais são imutáveis.
- O histórico de estados deve permanecer disponível para auditoria.

## Fluxo

Run Context
↓
Execution State
↓
Execution Manifest

## Objetivo

Permitir acompanhamento consistente da execução e preservar o histórico de transições do pipeline.
