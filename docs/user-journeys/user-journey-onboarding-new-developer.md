# User Journey - Onboarding de um Novo Desenvolvedor

## Objetivo

Descrever como um novo integrante utiliza o DevIQ para compreender
rapidamente um projeto existente sem depender exclusivamente de
conhecimento oral da equipe.

## Cenário

Um desenvolvedor ingressa no projeto e executa:

    deviq run

para obter uma visão consolidada da arquitetura, do histórico recente e
das decisões que moldaram o sistema.

## Jornada

1.  Executar `deviq run`.
2.  O DevIQ identifica as execuções mais relevantes.
3.  Consolida o Executive Summary do projeto.
4.  Apresenta as principais decisões arquiteturais.
5.  Resume os aprendizados acumulados.
6.  Destaca componentes críticos e dívida técnica.
7.  Disponibiliza navegação até Evidências e Prompt Timeline.
8.  O desenvolvedor inicia sua primeira tarefa com contexto suficiente.

## Resultado Esperado

O novo integrante compreende:

-   como o sistema evoluiu;
-   quais padrões arquiteturais são utilizados;
-   quais decisões continuam válidas;
-   quais riscos são conhecidos;
-   onde encontrar o contexto completo quando necessário.

## Critérios de Aceitação

-   O tempo de onboarding é significativamente reduzido.
-   O contexto é obtido sem depender de reuniões extensas.
-   Todas as informações são rastreáveis até as Evidências de origem.
