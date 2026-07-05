# Identity Model

## Objetivo

Definir o modelo canônico de identidade dos principais objetos do DevIQ.

O Identity Model estabelece como objetos são identificados de forma única e
persistente durante seu ciclo de vida.

## Objetos Identificados

- Run
- Session
- Evidence
- Correlation
- Knowledge
- Metric
- Report
- Artifact
- Collector
- Plugin
- Provider

## Estrutura

Toda identidade deve possuir:

- ID único
- Tipo do objeto
- Versão (quando aplicável)
- Data de criação
- Origem

## Regras

- IDs são imutáveis.
- IDs são únicos dentro do ecossistema DevIQ.
- Referências entre objetos utilizam apenas IDs canônicos.
- IDs nunca são reutilizados.

## Relação

Identity
↓
Traceability
↓
Lifecycle
↓
Artifacts

## Objetivo

Garantir identificação consistente e rastreabilidade entre todos os modelos
canônicos do DevIQ.
