# Run Context Model

## Objetivo

Definir o contexto de execução de um `deviq run`.

O Run Context concentra todas as informações necessárias para executar uma análise
de forma determinística e reproduzível.

## Responsabilidades

- Identificar a execução.
- Associar Projeto e Sessão.
- Disponibilizar configurações.
- Disponibilizar o Collection Plan.
- Compartilhar contexto entre os Engines.

## Estrutura

Todo Run Context deve conter:

- Run ID
- Projeto
- Session ID
- Branch
- Configuração
- Collection Plan
- Collectors habilitados
- Timestamp de início

## Regras

- Existe exatamente um Run Context por execução.
- O contexto é imutável durante a execução.
- Todos os Engines recebem o mesmo contexto.

## Fluxo

deviq run
↓
Run Context
↓
Discover
↓
Collect
↓
Analyze
↓
Report

## Objetivo

Garantir que todos os componentes do DevIQ operem sobre o mesmo contexto de execução.
