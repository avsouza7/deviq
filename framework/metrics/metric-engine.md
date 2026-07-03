# Metric Engine

## Objetivo

Definir o componente responsável pelo cálculo das métricas oficiais do
DevIQ.

## Responsabilidades

-   Consumir contribuições canônicas.
-   Aplicar as fórmulas oficiais das métricas.
-   Produzir resultados determinísticos.
-   Garantir rastreabilidade entre métricas e contribuições.

## Entradas

-   Contribution Engine
-   Catálogo de métricas
-   Contribuições canônicas

## Saídas

-   IAI
-   AIPS
-   ICP
-   Demais métricas oficiais

## Regras

1.  Cada métrica deve utilizar apenas dados previstos em sua
    especificação.
2.  O cálculo deve ser reproduzível para a mesma entrada.
3.  O motor não altera contribuições, apenas deriva métricas.

## Princípios

-   Evidence First
-   Contract First
-   Determinismo
-   Reprodutibilidade
