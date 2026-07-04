# Testing Strategy

## Objetivo

Definir a estratégia oficial de testes da implementação de referência do
DevIQ.

## Pirâmide de Testes

1.  Testes unitários.
2.  Testes de integração.
3.  Testes de contratos.
4.  Testes de regressão.

## Diretrizes

### Testes Unitários

-   Validam comportamento isolado.
-   Sem dependências externas.
-   Execução rápida.

### Testes de Integração

-   Validam a interação entre módulos.
-   Exercitam fluxos completos.

### Testes de Contratos

-   Garantem conformidade com os contratos e JSON Schemas oficiais.
-   Verificam compatibilidade entre versões.

### Testes de Regressão

-   Garantem que alterações não modifiquem comportamentos previamente
    aprovados.

## Ferramentas

-   JUnit 5
-   AssertJ
-   JaCoCo

## Critérios

-   Todo componente crítico deve possuir testes automatizados.
-   Toda correção de defeito deve incluir um teste de regressão
    correspondente.
