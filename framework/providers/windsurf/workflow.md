# Workflow

## Objetivo

Definir o fluxo operacional do provider Windsurf para processamento de
sessões.

## Fluxo

1.  Receber a sessão de entrada.
2.  Validar conformidade com o Provider Contract.
3.  Executar o processamento no provider.
4.  Converter a saída para o Evidence Model canônico.
5.  Validar as evidências produzidas.
6.  Retornar o resultado ao Framework.

## Garantias

-   Determinismo sempre que suportado pelo provider.
-   Rastreabilidade entre entrada, processamento e evidências.
-   Compatibilidade com os contratos oficiais do DevIQ.
