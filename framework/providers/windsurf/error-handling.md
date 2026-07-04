# Error Handling

## Objetivo

Definir as regras canônicas de tratamento de erros para o provider
Windsurf.

## Princípios

-   Determinismo
-   Rastreabilidade
-   Contract First
-   Provider Agnostic

## Regras

1.  Todo erro deve possuir um identificador único.
2.  A mensagem de erro deve ser consistente para a mesma condição.
3.  Erros do provider devem ser mapeados para categorias canônicas do
    Framework.
4.  Informações suficientes para auditoria devem ser preservadas sem
    expor dados sensíveis.

## Categorias

-   Validação
-   Comunicação
-   Processamento
-   Conversão para o Evidence Model
-   Erro interno

## Resultado

O tratamento de erros deve produzir uma resposta compatível com os
contratos oficiais do DevIQ.
