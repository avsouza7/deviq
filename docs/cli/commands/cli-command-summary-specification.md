# Especificação da CLI - Comando `deviq summary`

## Objetivo

Definir o contrato funcional do comando responsável por exibir o
Executive Summary de uma execução do DevIQ.

## Sintaxe

``` bash
deviq summary [execution-id] [options]
```

## Descrição

Exibe o resumo executivo da execução informada ou, quando omitida, da
última execução disponível.

## Opções

  Opção                  Descrição
  ---------------------- ---------------------------------------
  `--format text|json`   Formato da saída.
  `--output <file>`      Exporta o resumo.
  `--latest`             Força o uso da execução mais recente.
  `--sections <list>`    Exibe apenas seções específicas.

## Fluxo

1.  Identificar a execução.
2.  Carregar o Executive Summary.
3.  Validar disponibilidade.
4.  Renderizar a saída.
5.  Exportar quando solicitado.

## Códigos de Saída

    Código Significado
  -------- -----------------------------
         0 Resumo exibido com sucesso.
         1 Parâmetros inválidos.
         2 Execução não encontrada.
         3 Resumo indisponível.

## Exemplos

``` bash
deviq summary
deviq summary run-101
deviq summary --format json
deviq summary --sections metrics,recommendations
```

## Critérios de Aceitação

-   O resumo é consistente com a execução analisada.
-   Toda informação pode ser rastreada até suas evidências.
-   A saída é consistente em texto e JSON.
