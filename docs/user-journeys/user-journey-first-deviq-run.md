# Especificação Funcional - User Journey: Primeiro `deviq run`

## Objetivo

Descrever a experiência completa do desenvolvedor ao utilizar o DevIQ
pela primeira vez após concluir uma sessão de desenvolvimento assistido
por IA.

## Cenário

O desenvolvedor passou algumas horas trabalhando no IntelliJ com
assistência de IA, realizou alterações no código, criou commits e
decidiu executar:

    deviq run

## Jornada

1.  O DevIQ identifica automaticamente o projeto.
2.  Descobre a Sessão de desenvolvimento.
3.  Informa o escopo da análise.
4.  Executa o pipeline de análise.
5.  Consolida conhecimento e métricas.
6.  Exibe o Executive Summary.
7.  Permite aprofundar cada resultado.
8.  Gera o Improvement Plan.

## Resultado Esperado

Ao término da execução, o desenvolvedor compreende:

-   o que foi produzido;
-   qual foi sua contribuição efetiva;
-   quais decisões arquiteturais foram tomadas;
-   o que foi aprendido;
-   quais riscos permanecem;
-   quais ações devem ser executadas no próximo ciclo.

## Critérios de Aceitação

-   A jornada ocorre sem configuração manual da sessão.
-   A análise é concluída em uma única execução.
-   Todos os resultados permitem navegação até as Evidências de origem.
