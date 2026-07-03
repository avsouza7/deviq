# AI Runtime Provider Integration

## Objetivo

Definir como integrar o DevIQ Runtime a diferentes agentes de IA e
ambientes de desenvolvimento.

## Escopo

Aplica-se a qualquer agente capaz de consumir a documentação oficial do
DevIQ e executar seu pipeline canônico.

## Requisitos de Integração

O agente deve:

1.  Carregar a AI Runtime Specification.
2.  Utilizar o AI Runtime Prompt.
3.  Executar o pipeline oficial sem alterar sua ordem.
4.  Respeitar os contratos e princípios arquiteturais.
5.  Produzir saídas compatíveis com os modelos oficiais.

## Fluxo de Integração

1.  Disponibilizar a documentação do DevIQ ao agente.
2.  Inicializar o agente com o AI Runtime Prompt.
3.  Fornecer a sessão de entrada.
4.  Executar o pipeline.
5.  Validar os resultados com a Conformance Suite.

## Ambientes Compatíveis

-   IntelliJ AI
-   Cursor
-   Windsurf
-   Claude Code
-   GitHub Copilot
-   Outros agentes compatíveis

## Critério de Compatibilidade

A integração é considerada compatível quando o agente produz resultados
conformes para os Golden Datasets oficiais.
