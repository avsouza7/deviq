# Metric Validation

## Objetivo

Definir as regras canônicas para validação das métricas calculadas pelo
DevIQ.

## Escopo

Aplica-se às métricas oficiais (IAI, AIPS, ICP e futuras métricas).

## Regras

1.  Toda métrica deve possuir especificação oficial.
2.  O cálculo deve utilizar apenas evidências válidas.
3.  O resultado deve ser determinístico para a mesma entrada.
4.  Valores calculados devem respeitar os limites definidos pela
    especificação da métrica.

## Resultado

-   Métrica válida
-   Métrica válida com avisos
-   Métrica inválida

## Princípios

-   Evidence First
-   Determinismo
-   Reprodutibilidade
-   Contract First
