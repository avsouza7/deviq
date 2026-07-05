# Execution Inputs

## Objetivo

Definir as entradas canônicas necessárias para uma execução do `deviq run`.

As entradas representam todas as informações que o DevIQ precisa para analisar
uma Sessão de desenvolvimento e produzir conhecimento rastreável.

## Entradas Obrigatórias

- Development Session
- Configuration Model
- Execution Profile
- Execution Context

Sem essas entradas a execução não pode ser iniciada.

## Entradas Opcionais

- Baseline Model
- Histórico de Execuções
- Plugins adicionais
- Providers opcionais
- Configurações específicas do projeto

## Validação

Antes do início da execução todas as entradas devem ser validadas pelo
Validation Model.

Entradas inválidas impedem a criação do Run Context.

## Relação

Execution Inputs
↓
Validation
↓
Run Context
↓
Execution Engine

## Objetivo

Padronizar as informações necessárias para iniciar qualquer execução do DevIQ.
