# Caso de Uso - Onboarding de Novo Desenvolvedor

## Objetivo

Descrever como um novo desenvolvedor utiliza o DevIQ para compreender um
projeto existente e iniciar sua primeira contribuição com contexto
suficiente.

## Atores

-   Novo Desenvolvedor
-   Tech Lead
-   DevIQ CLI

## Pré-condições

-   Projeto existente.
-   Histórico de execuções do DevIQ disponível.

## Fluxo Principal

1.  O novo desenvolvedor executa `deviq run`.
2.  O DevIQ identifica as execuções mais relevantes.
3.  Apresenta o Executive Summary consolidado.
4.  Exibe as principais Decisões Arquiteturais.
5.  Resume Aprendizados e Métricas.
6.  Destaca Dívida Técnica e Recomendações.
7.  Permite navegar até Evidências, Prompts e Commits.
8.  O desenvolvedor inicia sua primeira tarefa.

## Fluxos Alternativos

### A1. Projeto sem histórico

-   O DevIQ informa que a base histórica ainda não existe.
-   A análise é realizada apenas sobre o estado atual do projeto.

## Pós-condições

-   O novo integrante compreende a arquitetura e o contexto recente.
-   O conhecimento consultado permanece rastreável.

## Critérios de Aceitação

-   O tempo de onboarding é reduzido.
-   O contexto pode ser recuperado sem reuniões extensas.
-   Toda conclusão possui evidências rastreáveis.
