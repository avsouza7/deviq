# User Journey - Revisar um Pull Request

## Objetivo

Descrever como um desenvolvedor utiliza o DevIQ para revisar um Pull
Request com base no conhecimento produzido durante a Sessão de
desenvolvimento.

## Cenário

Antes de abrir ou aprovar um Pull Request, o desenvolvedor executa:

    deviq run

e utiliza os resultados para validar a qualidade e a consistência das
mudanças.

## Jornada

1.  Executar `deviq run`.
2.  O DevIQ identifica os commits relacionados ao Pull Request.
3.  Reconstrói a Sessão de desenvolvimento.
4.  Apresenta o Executive Summary.
5.  Destaca decisões arquiteturais e dívida técnica.
6.  Exibe recomendações e riscos.
7.  Permite navegar até Evidências, Prompts e Commits.
8.  O desenvolvedor revisa o Pull Request com contexto completo.

## Resultado Esperado

O desenvolvedor compreende:

-   por que as mudanças foram realizadas;
-   quais decisões sustentam a implementação;
-   quais riscos permanecem;
-   quais recomendações devem ser consideradas antes do merge.

## Critérios de Aceitação

-   A revisão reduz a necessidade de reconstrução manual do contexto.
-   Todas as conclusões são rastreáveis.
-   O Pull Request pode ser avaliado com base em evidências, não apenas
    no diff.
