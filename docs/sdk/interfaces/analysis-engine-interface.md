# Especificação Técnica - Interface `AnalysisEngine`

## Objetivo

Definir o contrato da interface responsável por transformar evidências
em conhecimento estruturado durante a execução do DevIQ.

## Responsabilidade

Um `AnalysisEngine` recebe evidências normalizadas e produz artefatos
analíticos, como métricas, insights, decisões arquiteturais e
recomendações.

## Ciclo de Vida

1.  Inicialização
2.  Validação das entradas
3.  Análise
4.  Geração dos resultados
5.  Publicação de eventos
6.  Encerramento

## Contrato

``` java
interface AnalysisEngine {

    String id();

    String displayName();

    boolean supports(AnalysisContext context);

    AnalysisResult analyze(AnalysisContext context);

}
```

## Requisitos

-   Não alterar as evidências de entrada.
-   Produzir resultados determinísticos para a mesma entrada.
-   Publicar eventos do pipeline quando aplicável.
-   Registrar diagnósticos estruturados em caso de falha.

## Critérios de Aceitação

-   Compatível com o Plugin SDK.
-   Pode ser executado isoladamente.
-   Os resultados seguem os modelos canônicos do DevIQ.
