# Validation Model

## Objetivo

Definir o modelo canônico de validação do DevIQ.

A Validação garante que todos os modelos, artefatos e dados utilizados durante
uma execução do `deviq run` atendam aos contratos canônicos antes de serem
consumidos pelo pipeline.

## Escopo

São passíveis de validação:

- Configuration Model
- Run Context
- Collection Plan
- Evidence Model
- Session Model
- Knowledge Model
- Metrics Model
- Report Model

## Estrutura

Toda validação deve produzir:

- Validation ID
- Run ID
- Artefato validado
- Resultado (Aprovado/Reprovado)
- Lista de violações
- Timestamp

## Regras

- Nenhum artefato inválido prossegue para a próxima etapa.
- Todas as violações devem possuir código e descrição.
- Validações aprovadas também devem ser registradas.

## Fluxo

Entrada
↓
Validation
↓
Artefato Válido
↓
Próxima Etapa

## Objetivo

Assegurar consistência e integridade em todas as etapas do pipeline do DevIQ.
