# Session Model

## Objetivo

Definir o modelo canônico de Sessão do DevIQ.

Uma Sessão representa um ciclo lógico de desenvolvimento assistido por IA,
agrupando todas as evidências produzidas durante esse período.

A Sessão é a unidade de processamento do comando `deviq run`.

## Estrutura

Uma Sessão contém:

- Session ID
- Projeto
- Branch
- Desenvolvedor
- Início
- Fim
- Evidências
- Conhecimento gerado
- Métricas
- Relatório

## Evidências

Uma Sessão pode conter:

- Conversas
- Prompts
- Respostas
- Alterações de código
- Commits
- Documentos
- RFCs
- Decisões arquiteturais

## Responsabilidades

A Sessão:

- organiza o contexto;
- agrupa evidências;
- delimita o período analisado.

Não executa análises nem calcula métricas.

## Relação com o Pipeline

Session
↓
Collect
↓
Normalize
↓
Analyze
↓
Correlate
↓
Knowledge
↓
Metrics
↓
Report

## Objetivo

Todo processamento do DevIQ ocorre dentro do contexto de uma Sessão.
