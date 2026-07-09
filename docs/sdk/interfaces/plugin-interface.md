# Especificação Técnica - Interface `Plugin`

## Objetivo

Definir o contrato base para todos os plugins do DevIQ.

## Responsabilidade

Um `Plugin` encapsula uma ou mais capacidades que estendem o
comportamento do DevIQ sem modificar o núcleo da aplicação.

## Ciclo de Vida

1.  Descoberta
2.  Validação
3.  Inicialização
4.  Registro das capacidades
5.  Execução
6.  Finalização

## Contrato

``` java
interface Plugin {

    String id();

    String name();

    String version();

    boolean supports(PluginContext context);

    void initialize(PluginContext context);

    Collection<Capability> capabilities();

    void shutdown();

}
```

## Requisitos

-   Declarar metadados e versão da API.
-   Registrar apenas capacidades suportadas.
-   Liberar recursos durante o encerramento.
-   Reportar falhas de forma estruturada.

## Critérios de Aceitação

-   Compatível com o Plugin SDK.
-   Pode ser carregado dinamicamente.
-   Não compromete a execução do DevIQ em caso de falha.
