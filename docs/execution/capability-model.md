# Capability Model

## Objetivo

Definir o modelo canônico de Capacidades do DevIQ.

Uma Capacidade representa uma funcionalidade executável do produto, composta por
um conjunto de componentes do pipeline.

## Capacidades Iniciais

- Discover
- Collect
- Normalize
- Analyze
- Correlate
- Generate Knowledge
- Compute Metrics
- Build Report
- Export Outputs

## Estrutura

Toda Capacidade deve possuir:

- Capability ID
- Nome
- Objetivo
- Entradas
- Saídas
- Componentes envolvidos
- Pré-condições
- Pós-condições

## Regras

- Capacidades podem depender de outras capacidades.
- Toda capacidade deve ser testável isoladamente.
- Toda capacidade deve participar de pelo menos um fluxo do `deviq run`.

## Relação

deviq run
↓
Capabilities
↓
Pipeline
↓
Artifacts

## Objetivo Final

Permitir que a arquitetura seja descrita por capacidades de negócio e não por
detalhes de implementação.
