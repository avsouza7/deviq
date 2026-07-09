# Especificação Técnica - Interface `ReportGenerator`

## Objetivo

Definir o contrato da interface responsável por gerar relatórios a
partir dos artefatos produzidos durante uma execução do DevIQ.

## Responsabilidade

Um `ReportGenerator` transforma os modelos canônicos em representações
consumíveis por usuários e ferramentas, como Markdown, HTML, PDF e JSON.

## Ciclo de Vida

1.  Inicialização
2.  Validação dos artefatos de entrada
3.  Geração do relatório
4.  Persistência ou entrega do resultado
5.  Encerramento

## Contrato

``` java
interface ReportGenerator {

    String id();

    String displayName();

    boolean supports(ReportContext context);

    GeneratedReport generate(ReportContext context);

}
```

## Requisitos

-   Não alterar os artefatos de entrada.
-   Produzir saídas determinísticas para a mesma entrada.
-   Suportar múltiplos formatos quando aplicável.
-   Registrar diagnósticos estruturados em caso de falha.

## Critérios de Aceitação

-   Compatível com o Plugin SDK.
-   Pode ser executado isoladamente.
-   Os relatórios preservam a rastreabilidade até as evidências de
    origem.
