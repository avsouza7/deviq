# AI Runtime Context Loading

## Objetivo

Definir a ordem e a prioridade de carregamento da documentação para
inicializar um agente DevIQ de forma determinística.

## Ordem de Carregamento

### Nível 1 --- Fundamentação

1.  Architecture Overview
2.  Architecture Principles

### Nível 2 --- Especificação

3.  RFC-001
4.  RFC-002

### Nível 3 --- Runtime

5.  AI Runtime Specification
6.  AI Runtime Prompt
7.  AI Runtime Operational Guide

### Nível 4 --- Domínio

8.  Models
9.  Rules
10. Engines
11. Validation
12. Reporting
13. Knowledge
14. Providers

### Nível 5 --- Conformidade

15. AI Runtime Conformance
16. AI Runtime Reference Session
17. AI Runtime Golden Datasets

## Regras

-   A ordem de carregamento deve ser preservada.
-   Em caso de conflito, prevalece o documento de maior prioridade.
-   O agente não deve executar o pipeline antes da conclusão do
    carregamento.

## Critério de Inicialização

O Runtime é considerado inicializado quando todos os documentos
obrigatórios estiverem carregados e prontos para consulta.
