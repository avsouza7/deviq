# Caso de Uso - Revisar um Pull Request

## Objetivo

Descrever como um desenvolvedor utiliza o DevIQ para revisar um Pull
Request utilizando o contexto reconstruído da Sessão de desenvolvimento.

## Atores

-   Desenvolvedor
-   DevIQ CLI

## Pré-condições

-   Pull Request existente.
-   Execução do `deviq run` concluída.
-   Evidências disponíveis.

## Fluxo Principal

1.  O desenvolvedor seleciona o Pull Request.
2.  O DevIQ identifica os commits relacionados.
3.  Reconstrói a Sessão correspondente.
4.  Apresenta Executive Summary e Decisões Arquiteturais.
5.  Destaca riscos, dívida técnica e recomendações.
6.  Permite navegar até Prompts, Commits e Evidências.
7.  O desenvolvedor conclui a revisão com contexto completo.

## Fluxos Alternativos

### A1. Commits não correlacionados

-   O DevIQ informa as limitações da correlação.
-   Os resultados parciais permanecem disponíveis.

## Pós-condições

-   O Pull Request é revisado com suporte contextual.
-   As conclusões permanecem rastreáveis.

## Critérios de Aceitação

-   A revisão vai além do diff do código.
-   Toda conclusão possui evidências.
-   O contexto reduz dúvidas durante o code review.
