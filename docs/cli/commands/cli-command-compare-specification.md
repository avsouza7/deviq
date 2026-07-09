# Especificação da CLI - Comando `deviq compare`

## Objetivo

Definir o contrato funcional do comando responsável por comparar
execuções do DevIQ.

## Sintaxe

``` bash
deviq compare <execution-a> <execution-b> [options]
```

## Descrição

Compara duas execuções previamente registradas, destacando diferenças em
métricas, conhecimento, dívida técnica, decisões arquiteturais e
recomendações.

## Opções

  Opção                  Descrição
  ---------------------- ------------------------------------
  `--format text|json`   Formato da saída.
  `--output <dir>`       Exporta o relatório.
  `--metrics-only`       Compara apenas métricas.
  `--summary-only`       Exibe apenas o resumo comparativo.

## Fluxo

1.  Validar identificadores das execuções.
2.  Carregar resultados.
3.  Comparar métricas e conhecimento.
4.  Detectar tendências e regressões.
5.  Gerar relatório comparativo.

## Códigos de Saída

    Código Significado
  -------- --------------------------
         0 Comparação concluída.
         1 Parâmetros inválidos.
         2 Execução não encontrada.
         3 Execuções incompatíveis.

## Exemplos

``` bash
deviq compare run-101 run-102
deviq compare run-101 run-102 --summary-only
deviq compare run-101 run-102 --format json
```

## Critérios de Aceitação

-   Comparações reproduzíveis.
-   Diferenças rastreáveis até as evidências.
-   Saída consistente em texto e JSON.
