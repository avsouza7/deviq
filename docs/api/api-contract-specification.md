# Especificação Técnica - API Pública do DevIQ

## Objetivo

Definir o contrato da API pública do DevIQ para integração com IDEs,
pipelines de CI/CD, dashboards e ferramentas externas.

## Finalidade

Disponibilizar acesso programático às execuções, artefatos analíticos e
capacidades do DevIQ por meio de uma interface estável e versionada.

## Princípios

-   API RESTful.
-   Versionamento explícito.
-   Operações idempotentes quando aplicável.
-   Respostas em JSON.
-   Compatibilidade retroativa entre versões menores.

## Recursos

-   `/executions`
-   `/sessions`
-   `/summaries`
-   `/metrics`
-   `/knowledge`
-   `/insights`
-   `/technical-debt`
-   `/recommendations`
-   `/improvement-plans`

## Operações

-   `GET` Consultar recursos.
-   `POST` Iniciar análises e exportações.
-   `DELETE` Remover artefatos quando permitido.

## Autenticação

-   API Key.
-   OAuth 2.0 (opcional para integrações corporativas).

## Versionamento

    /api/v1/...

Mudanças incompatíveis exigem nova versão principal.

## Regras

-   Todas as respostas possuem identificador da execução.
-   Erros seguem um formato padronizado.
-   Todos os recursos preservam rastreabilidade até as evidências.

## Critérios de Aceitação

-   API documentável por OpenAPI.
-   Compatível com clientes HTTP padrão.
-   Contratos estáveis e versionados.
