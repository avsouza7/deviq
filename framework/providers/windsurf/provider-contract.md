# Provider Contract

## Objetivo

Definir o contrato que deve ser implementado por todos os providers do
DevIQ.

## Interface

Todo provider deve disponibilizar:

-   Identificação do provider;
-   Versão;
-   Capacidades suportadas;
-   Método de processamento de sessão;
-   Conversão para o Evidence Model canônico.

## Requisitos

1.  Não modificar os contratos oficiais do Framework.
2.  Produzir resultados reproduzíveis para a mesma entrada.
3.  Informar falhas de forma determinística.
4.  Preservar a rastreabilidade entre entrada e evidências.

## Compatibilidade

Este contrato complementa o **Provider Core Rule** e aplica-se a
qualquer implementação de provider.
