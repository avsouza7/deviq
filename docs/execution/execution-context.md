# Execution Context

## Objetivo

Definir o Contexto de Execução compartilhado por todos os componentes durante uma
execução do `deviq run`.

## Fontes de Contexto

- Workspace
- Código-fonte
- Repositório Git
- Conversas com IA
- Documentação do projeto
- Arquivo de configuração
- Perfil de execução

## Componentes

O contexto consolida:

- Run ID
- Session ID
- Projeto
- Branch
- Configuration
- Execution Profile
- Collection Plan

## Regras

- Existe um único contexto por execução.
- O contexto é criado antes da etapa Discover.
- Após criado, permanece imutável.
- Todos os Engines recebem exatamente o mesmo contexto.

## Relação

Configuration
↓
Execution Context
↓
Run Context
↓
Execution Engine

## Objetivo

Garantir que todas as etapas do pipeline operem sobre o mesmo conjunto de
informações, preservando consistência e reprodutibilidade.
