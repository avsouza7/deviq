# Execution Context

## Objetivo

Definir o Contexto de Execução utilizado durante um `deviq run`.

O Contexto de Execução reúne todas as informações necessárias para que os
componentes do pipeline compartilhem uma visão consistente da execução.

## Componentes do Contexto

- Projeto
- Workspace
- Branch
- Session ID
- Run ID
- Configuration
- Execution Profile
- Collection Plan
- Collectors habilitados

## Fontes de Contexto

- Workspace
- Código-fonte
- Git
- Conversas com IA
- Documentação do projeto
- Arquivos de configuração

## Regras

- O contexto é criado antes da etapa Discover.
- O contexto permanece imutável durante a execução.
- Todos os Engines compartilham a mesma instância lógica do contexto.

## Relação

Configuration
↓
Execution Context
↓
Run Context
↓
Execution Engine

## Objetivo

Garantir consistência, reprodutibilidade e compartilhamento de informações
entre todas as etapas do pipeline do DevIQ.
