# Development Workflow

## Objetivo

Definir o fluxo oficial de desenvolvimento da implementação de
referência do DevIQ.

## Branches

-   `main`: releases estáveis.
-   `develop`: integração contínua.
-   `feature/*`: novas funcionalidades.
-   `fix/*`: correções.
-   `docs/*`: documentação.

## Fluxo

1.  Criar branch a partir de `develop`.
2.  Implementar e testar.
3.  Atualizar documentação quando necessário.
4.  Abrir Pull Request.
5.  Executar CI.
6.  Revisão técnica.
7.  Merge após aprovação.

## Critérios de Merge

-   Build aprovado.
-   Testes passando.
-   Checkstyle e Spotless sem erros.
-   JaCoCo dentro da cobertura mínima.
-   Documentação sincronizada.

## Commits

-   Conventional Commits.
-   Commits pequenos e atômicos.

## Princípios

-   Contract First.
-   Test First para componentes críticos.
-   Revisão obrigatória antes do merge.
