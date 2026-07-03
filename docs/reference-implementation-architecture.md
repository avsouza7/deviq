# Reference Implementation Architecture

## Objetivo

Definir a arquitetura técnica da implementação de referência do DevIQ.

## Diretrizes

-   Implementação orientada pelos contratos oficiais.
-   Separação entre domínio, infraestrutura e providers.
-   Modularização para facilitar evolução e testes.

## Estrutura sugerida

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

## Módulos

-   **contracts**: contratos canônicos.
-   **core**: modelos de domínio.
-   **engines**: motores de processamento.
-   **providers**: adaptadores.
-   **validation**: validações.
-   **reporting**: geração de relatórios.
-   **knowledge**: conhecimento derivado.

## Qualidade

-   Testes automatizados.
-   CI. 
-   SemVer.
-   Compatibilidade com a arquitetura congelada.
