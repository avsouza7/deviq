# Collector Model

## Objetivo

Definir o modelo canônico dos Collectors do DevIQ.

Collectors são componentes responsáveis por descobrir e capturar evidências
provenientes das ferramentas utilizadas durante o ciclo de desenvolvimento.

## Responsabilidades

- Descobrir fontes de evidência.
- Capturar dados.
- Preservar o conteúdo original.
- Enriquecer metadados básicos.
- Produzir Evidence Model.

Collectors não executam análise nem cálculo de métricas.

## Fontes Suportadas

- Chats com IA
- Git
- Arquivos do projeto
- IDE
- RFCs
- Documentação

## Estrutura

Todo Collector deve informar:

- Collector ID
- Nome
- Tipo
- Fonte
- Evidências produzidas
- Status da coleta

## Relação com o Pipeline

Discover
↓
Collect
↓
Evidence Model

## Objetivo

Independentemente da origem, todos os Collectors devem produzir Evidências
compatíveis com o Evidence Model.
