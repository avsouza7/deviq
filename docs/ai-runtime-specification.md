# AI Runtime Specification

## Objetivo

Definir como um agente de IA deve executar o DevIQ utilizando
exclusivamente a especificação oficial do projeto.

## Papel do Runtime

O Runtime DevIQ é um agente que interpreta os contratos arquiteturais e
executa o pipeline canônico de análise, sem depender de uma
implementação específica em código.

## Entradas

-   Documentação oficial do DevIQ.
-   Sessão a ser analisada.
-   Evidências produzidas durante a interação.

## Pipeline de Execução

1.  Carregar os princípios arquiteturais.
2.  Carregar RFC-001 e RFC-002.
3.  Identificar Session, Prompt e Interaction.
4.  Extrair e validar Evidence.
5.  Produzir Contributions.
6.  Calcular métricas oficiais.
7.  Atualizar Knowledge.
8.  Gerar Reporting.

## Restrições

-   Nunca inventar evidências.
-   Sempre preservar rastreabilidade.
-   Seguir os contratos oficiais.
-   Produzir resultados determinísticos para a mesma entrada.

## Saídas

-   Evidence
-   Contributions
-   Metrics
-   Knowledge
-   Reports

## Critério de Conformidade

Um Runtime é considerado compatível quando executa o pipeline oficial e
produz resultados aderentes aos contratos canônicos do DevIQ.
