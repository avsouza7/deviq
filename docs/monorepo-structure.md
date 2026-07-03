# Monorepo Structure

## Objetivo

Definir a organização física do repositório da implementação de
referência do DevIQ.

## Estrutura

``` text
deviq/
├── contracts/
├── core/
├── engines/
├── providers/
├── reporting/
├── validation/
├── knowledge/
├── schemas/
├── examples/
├── tests/
└── docs/
```

## Responsabilidades

-   **contracts**: contratos e modelos canônicos.
-   **core**: domínio compartilhado.
-   **engines**: motores de processamento.
-   **providers**: implementações e adaptadores.
-   **reporting**: geração de relatórios.
-   **validation**: validação de contratos e modelos.
-   **knowledge**: artefatos derivados.
-   **schemas**: JSON Schemas oficiais.
-   **examples**: exemplos canônicos.
-   **tests**: testes automatizados.
-   **docs**: documentação do projeto.

## Regras de Dependência

-   contracts não depende de nenhum módulo.
-   core depende apenas de contracts.
-   engines dependem de core e contracts.
-   providers dependem de engines e contracts.
-   reporting, validation e knowledge dependem apenas dos contratos
    públicos.

## Princípios

-   Baixo acoplamento.
-   Alta coesão.
-   Contract First.
-   Evolução incremental.
