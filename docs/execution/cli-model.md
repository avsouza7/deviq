# CLI Model

## Objetivo

Definir o modelo canônico da Interface de Linha de Comando (CLI) do DevIQ.

A CLI é a interface oficial para executar as capacidades do DevIQ.

## Comandos Principais

- deviq run
- deviq discover
- deviq collect
- deviq analyze
- deviq export
- deviq version

## Responsabilidades

- Receber parâmetros do usuário.
- Construir o Run Context.
- Acionar o Execution Engine.
- Apresentar resultados.
- Retornar códigos de saída padronizados.

## Entradas

- Caminho do projeto
- Arquivo de configuração
- Opções de execução

## Saídas

- Relatórios
- Artefatos
- Logs
- Código de retorno

## Regras

- A CLI não implementa regras de negócio.
- Toda execução gera um Run ID.
- Os comandos devem ser determinísticos.

## Fluxo

CLI
↓
Run Context
↓
Execution Engine
↓
Output Model

## Objetivo

Fornecer uma interface única, consistente e automatizável para utilização do DevIQ.
