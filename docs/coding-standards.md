# Coding Standards

## Objetivo

Definir as convenções de desenvolvimento da implementação de referência
do DevIQ.

## Convenções Gerais

-   Java 21 (LTS)
-   UTF-8
-   LF
-   4 espaços de indentação
-   Código e documentação em inglês.
-   Documentação funcional em Português (Brasil) quando aplicável.

## Organização

-   Um tipo público por arquivo.
-   Pacotes organizados por domínio.
-   Dependências seguindo a arquitetura do monorepo.

## Nomenclatura

-   Classes: PascalCase
-   Métodos e variáveis: camelCase
-   Constantes: UPPER_SNAKE_CASE
-   Interfaces iniciadas por substantivos, não por prefixo `I`.

## Tratamento de Erros

-   Exceções específicas.
-   Mensagens determinísticas.
-   Sem captura silenciosa.

## Testes

-   JUnit 5
-   AssertJ
-   Um teste para cada comportamento esperado.
-   Cobertura obrigatória para componentes críticos.

## Qualidade

-   Spotless
-   Checkstyle
-   JaCoCo
-   Conventional Commits
