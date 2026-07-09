# Especificação Técnica - Execution Result (`deviq.json`)

## Objetivo

Definir o contrato oficial do arquivo `deviq.json`, produzido ao final
de uma execução do `deviq run`.

## Finalidade

Disponibilizar um artefato estruturado para integração com ferramentas,
automação, dashboards e APIs.

## Estrutura

``` json
{
  "version": "1.0",
  "execution": {},
  "summary": {},
  "metrics": {},
  "knowledge": {},
  "insights": [],
  "technicalDebt": {},
  "recommendations": [],
  "improvementPlan": {},
  "traceability": {}
}
```

## Seções

-   `version`: versão do esquema.
-   `execution`: metadados da execução.
-   `summary`: Executive Summary.
-   `metrics`: métricas calculadas.
-   `knowledge`: conhecimento consolidado.
-   `insights`: insights priorizados.
-   `technicalDebt`: análise de dívida técnica.
-   `recommendations`: recomendações.
-   `improvementPlan`: plano de melhoria.
-   `traceability`: referências para evidências.

## Regras

-   Campos obrigatórios não podem ser omitidos.
-   Campos desconhecidos devem ser ignorados por consumidores.
-   O esquema deve ser compatível entre versões sempre que possível.

## Critérios de Aceitação

-   Documento validável por JSON Schema.
-   Compatível com automação e integrações.
-   Todas as seções são rastreáveis às evidências de origem.
