# AI Runtime Reference Session

## Objetivo

Disponibilizar uma sessão de referência ("golden session") para validar
implementações compatíveis com o DevIQ Runtime.

## Entrada

Uma sessão completa contendo:

-   contexto;
-   prompts;
-   respostas;
-   interações;
-   evidências observáveis.

## Pipeline Esperado

1.  Identificar Session, Prompt e Interaction.
2.  Extrair Evidence.
3.  Validar Evidence.
4.  Produzir Contributions.
5.  Calcular Metrics.
6.  Atualizar Knowledge.
7.  Gerar Reporting.

## Saídas Esperadas

-   Evidence compatível com o Evidence Model.
-   Contributions derivadas exclusivamente das evidências.
-   Metrics calculadas conforme as especificações oficiais.
-   Knowledge rastreável.
-   Reporting compatível com os contratos.

## Critérios de Aceitação

Uma implementação é considerada compatível quando, para esta sessão de
referência, produz resultados aderentes aos contratos oficiais e
preserva rastreabilidade e determinismo.
