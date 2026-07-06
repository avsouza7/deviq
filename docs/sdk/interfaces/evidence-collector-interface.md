# Especificação Técnica - Interface `EvidenceCollector`

## Objetivo

Definir o contrato da interface responsável por coletar evidências
durante a execução do DevIQ.

## Responsabilidade

Um `EvidenceCollector` identifica, coleta e normaliza evidências
provenientes de uma fonte específica (Git, IDE, IA, arquivos, etc.).

## Ciclo de Vida

1.  Inicialização
2.  Descoberta das evidências
3.  Coleta
4.  Normalização
5.  Validação
6.  Encerramento

## Contrato

``` java
interface EvidenceCollector {

    String id();

    String displayName();

    boolean supports(ProjectContext context);

    Collection<Evidence> collect(EvidenceContext context);

}
```

## Requisitos

-   Não modificar a fonte de dados.
-   Produzir evidências normalizadas.
-   Informar falhas de forma estruturada.
-   Ser determinístico para a mesma entrada.

## Critérios de Aceitação

-   Compatível com o Plugin SDK.
-   Pode ser executado isoladamente.
-   Evidências produzidas seguem o modelo canônico.
