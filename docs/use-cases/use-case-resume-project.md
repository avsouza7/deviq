# Caso de Uso - Retomar um Projeto

## Objetivo

Descrever como um desenvolvedor utiliza o DevIQ para recuperar
rapidamente o contexto de um projeto antes de continuar uma
implementação.

## Atores

-   Desenvolvedor
-   DevIQ CLI

## Pré-condições

-   Execuções anteriores disponíveis.
-   Projeto acessível.

## Fluxo Principal

1.  O desenvolvedor executa `deviq run`.
2.  O DevIQ identifica a última execução relevante.
3.  Reconstrói o contexto do projeto.
4.  Apresenta o Executive Summary.
5.  Destaca mudanças desde a última sessão.
6.  Exibe decisões, aprendizados e recomendações.
7.  O desenvolvedor retoma o trabalho.

## Fluxos Alternativos

### A1. Primeira execução do projeto

-   O DevIQ informa que não há histórico comparável.
-   A análise considera apenas a sessão atual.

## Pós-condições

-   O contexto do projeto é recuperado.
-   O usuário possui um plano claro para continuar o desenvolvimento.

## Critérios de Aceitação

-   O contexto é recuperado sem inspeção manual de chats e commits.
-   Todas as conclusões permanecem rastreáveis às evidências.
