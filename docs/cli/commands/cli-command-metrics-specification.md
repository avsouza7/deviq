# Especificação da CLI - Comando `deviq metrics`

## Objetivo

Definir o contrato funcional do comando responsável por exibir as
métricas de uma execução do DevIQ.

## Sintaxe

``` bash
deviq metrics [execution-id] [options]
```

## Descrição

Exibe as métricas calculadas para uma execução específica ou, por
padrão, para a execução mais recente.

## Opções

  Opção                  Descrição
  ---------------------- -----------------------------------
  `--format text|json`   Formato da saída.
  `--output <file>`      Exporta as métricas.
  `--category <name>`    Filtra por categoria de métricas.
  `--latest`             Utiliza a execução mais recente.

## Fluxo

1.  Identificar a execução.
2.  Carregar o Metrics Model.
3.  Aplicar filtros.
4.  Renderizar a saída.
5.  Exportar quando solicitado.

## Códigos de Saída

    Código Significado
  -------- --------------------------------
         0 Métricas exibidas com sucesso.
         1 Parâmetros inválidos.
         2 Execução não encontrada.
         3 Métricas indisponíveis.

## Exemplos

``` bash
deviq metrics
deviq metrics run-101
deviq metrics --category quality
deviq metrics --format json
```

## Critérios de Aceitação

-   Métricas consistentes com a execução.
-   Filtros aplicados corretamente.
-   Saída disponível em texto e JSON.
