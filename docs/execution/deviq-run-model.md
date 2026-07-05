# DevIQ Run Model

## Objetivo

Especificar o comportamento canônico do comando `deviq run`.

## Visão Geral

`deviq run` executa um ciclo completo de análise sobre uma Sessão de desenvolvimento
assistido por IA e produz conhecimento estruturado.

## Pipeline

1. Discover
2. Collect
3. Normalize
4. Analyze
5. Correlate
6. Compute Metrics
7. Generate Knowledge
8. Build Report

## Entradas

- Projeto
- Sessão
- Configuração
- Collectors habilitados

## Saídas

- Report Model
- Knowledge Model
- Metrics Model

## Regras

- Toda execução possui um Run ID.
- A execução deve ser reproduzível.
- Todas as saídas devem manter rastreabilidade até as Evidências.
- Falhas parciais devem ser registradas sem comprometer a integridade da Sessão.

## Resultado

O comando `deviq run` representa a capacidade principal do DevIQ e orquestra todos
os componentes definidos na arquitetura.
