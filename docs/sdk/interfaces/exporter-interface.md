# Especificação Técnica - Interface `Exporter`

## Objetivo

Definir o contrato da interface responsável por exportar os artefatos
produzidos pelo DevIQ para destinos externos.

## Responsabilidade

Um `Exporter` recebe os modelos canônicos e realiza sua publicação em um
destino específico, como sistema de arquivos, API, banco de dados ou
serviço remoto.

## Ciclo de Vida

1.  Inicialização
2.  Validação do destino
3.  Preparação dos artefatos
4.  Exportação
5.  Confirmação
6.  Encerramento

## Contrato

``` java
interface Exporter {

    String id();

    String displayName();

    boolean supports(ExportContext context);

    ExportResult export(ExportContext context);

}
```

## Requisitos

-   Não modificar os artefatos exportados.
-   Garantir idempotência quando suportado pelo destino.
-   Registrar erros estruturados.
-   Publicar eventos de exportação.

## Critérios de Aceitação

-   Compatível com o Plugin SDK.
-   Pode ser executado isoladamente.
-   Mantém a rastreabilidade entre origem e destino dos artefatos.
