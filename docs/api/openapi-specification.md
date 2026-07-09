# Especificação Técnica - OpenAPI do DevIQ

## Objetivo

Definir as diretrizes para a especificação OpenAPI da API pública do
DevIQ.

## Finalidade

Permitir geração automática de documentação, SDKs, clientes HTTP e
validação dos contratos expostos pela API.

## Versão

-   OpenAPI 3.1
-   JSON Schema Draft 2020-12

## Endpoints Iniciais

-   GET /api/v1/executions
-   GET /api/v1/executions/{id}
-   POST /api/v1/executions
-   GET /api/v1/summaries/{id}
-   GET /api/v1/metrics/{id}
-   GET /api/v1/recommendations/{id}

## Componentes

-   Schemas
-   Parameters
-   Responses
-   Security Schemes

## Segurança

-   API Key
-   OAuth 2.0 (opcional)

## Regras

-   Todos os endpoints retornam JSON.
-   Erros seguem um modelo único.
-   Todos os recursos possuem identificador de execução.

## Critérios de Aceitação

-   Documento compatível com OpenAPI 3.1.
-   Pode ser utilizado para geração automática de clientes.
-   Mantém compatibilidade com os contratos do `deviq.json`.
