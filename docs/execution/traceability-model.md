# Traceability Model

## Objetivo

Definir o modelo canônico de rastreabilidade do DevIQ.

A rastreabilidade permite explicar como cada resultado produzido pelo
`deviq run` foi obtido, preservando a relação entre Sessão, Evidências,
Correlações, Conhecimento, Métricas e Relatórios.

## Responsabilidades

- Relacionar entradas e saídas.
- Preservar a cadeia de origem.
- Permitir auditoria.
- Suportar reprocessamento.

## Cadeia de Rastreabilidade

Session
↓
Evidence
↓
Correlation
↓
Knowledge
↓
Metrics
↓
Report
↓
Output

## Estrutura

Toda relação deve conter:

- Trace ID
- Origem
- Destino
- Tipo de relacionamento
- Timestamp

## Regras

- Nenhum artefato analítico pode perder sua origem.
- Toda Métrica referencia Conhecimentos e Evidências.
- Todo item do relatório deve ser justificável.

## Objetivo

Garantir transparência e explicabilidade dos resultados produzidos pelo DevIQ.
