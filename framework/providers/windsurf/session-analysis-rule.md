# Session Analysis Rule

## Objetivo

Definir como o provider Windsurf executa a análise de sessões em
conformidade com os contratos do Framework.

## Entradas

-   Sessão registrada.
-   Contratos oficiais do Framework.
-   Capacidades declaradas pelo provider.

## Processo

1.  Receber a sessão.
2.  Validar os dados de entrada.
3.  Executar a análise utilizando o provider.
4.  Converter o resultado para o Evidence Model canônico.
5.  Emitir artefatos compatíveis com o Framework.

## Regras

-   O comportamento deve ser determinístico.
-   A saída deve ser totalmente rastreável.
-   Nenhuma informação pode violar os contratos oficiais.
