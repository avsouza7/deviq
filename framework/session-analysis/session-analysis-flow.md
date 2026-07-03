# Session Analysis Flow

## Objetivo

Descrever o fluxo canônico para análise de uma sessão utilizando o
Evidence Model.

## Fluxo

1.  Receber a sessão registrada.
2.  Validar a estrutura da sessão.
3.  Extrair evidências conforme a Evidence Extraction Rule.
4.  Validar as evidências contra o schema oficial.
5.  Consolidar evidências válidas.
6.  Calcular métricas derivadas.
7.  Produzir o resultado canônico da análise.

## Garantias

-   Determinismo.
-   Reprodutibilidade.
-   Rastreabilidade entre entrada, evidências e resultado.
-   Independência de provider.
