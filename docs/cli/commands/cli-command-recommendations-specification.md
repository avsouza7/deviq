# Especificação da CLI - Comando `deviq recommendations`

## Objetivo

Definir o contrato funcional do comando responsável por exibir as
recomendações geradas pelo DevIQ para uma execução.

## Sintaxe

``` bash
deviq recommendations [execution-id] [options]
```

## Descrição

Apresenta as recomendações priorizadas produzidas pelo DevIQ, incluindo
impacto, esforço estimado, justificativas e evidências relacionadas.

## Opções

  Opção                  Descrição
  ---------------------- ---------------------------------------
  `--format text|json`   Formato da saída.
  `--output <file>`      Exporta o relatório.
  `--latest`             Utiliza a execução mais recente.
  `--priority <level>`   Filtra por prioridade.
  `--limit <n>`          Limita a quantidade de recomendações.

## Fluxo

1.  Identificar a execução.
2.  Carregar o Recommendation Package.
3.  Aplicar filtros.
4.  Ordenar por prioridade.
5.  Renderizar ou exportar o resultado.

## Códigos de Saída

    Código Significado
  -------- -------------------------------------
         0 Recomendações exibidas com sucesso.
         1 Parâmetros inválidos.
         2 Execução não encontrada.
         3 Recomendações indisponíveis.

## Exemplos

``` bash
deviq recommendations
deviq recommendations run-101
deviq recommendations --priority high
deviq recommendations --limit 10
deviq recommendations --format json
```

## Critérios de Aceitação

-   Recomendações ordenadas por prioridade.
-   Cada recomendação possui justificativa e evidências rastreáveis.
-   A saída é consistente em texto e JSON.
