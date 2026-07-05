# Collection Plan Model

## Objetivo

Definir o modelo canônico do Plano de Coleta utilizado pelo DevIQ.

O Plano de Coleta é produzido pela etapa Discover e descreve exatamente quais
Collectors serão executados durante um `deviq run`.

## Responsabilidades

- Listar os Collectors habilitados.
- Definir a ordem de execução.
- Informar parâmetros de coleta.
- Registrar dependências entre Collectors.

## Estrutura

Todo Plano de Coleta deve conter:

- Run ID
- Session ID (quando existente)
- Projeto
- Lista de Collectors
- Ordem de execução
- Configurações
- Critérios de exclusão

## Regras

- O plano é imutável durante a execução.
- Alterações geram um novo plano.
- Todo Collector deve estar associado a uma fonte de evidência.

## Fluxo

Discover
↓
Collection Plan
↓
Collectors
↓
Evidence

## Objetivo

Garantir uma coleta determinística, reproduzível e auditável.
