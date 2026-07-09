# Especificação da CLI - Comando `deviq history`

## Objetivo

Definir o contrato funcional do comando responsável por listar e
consultar o histórico de execuções do DevIQ.

## Sintaxe

``` bash
deviq history [options]
```

## Descrição

Lista as execuções registradas, permitindo localizar análises anteriores
e selecionar uma execução para inspeção ou comparação.

## Opções

  Opção                  Descrição
  ---------------------- --------------------------------------------
  `--limit <n>`          Limita a quantidade de execuções exibidas.
  `--project <path>`     Filtra por projeto.
  `--profile <name>`     Filtra por perfil de execução.
  `--format text|json`   Formato da saída.
  `--latest`             Exibe apenas a execução mais recente.

## Fluxo

1.  Validar parâmetros.
2.  Localizar execuções registradas.
3.  Aplicar filtros.
4.  Ordenar por data.
5.  Renderizar o histórico.

## Códigos de Saída

    Código Significado
  -------- --------------------------------
         0 Histórico exibido com sucesso.
         1 Parâmetros inválidos.
         2 Nenhuma execução encontrada.

## Exemplos

``` bash
deviq history
deviq history --latest
deviq history --limit 20
deviq history --format json
```

## Critérios de Aceitação

-   Execuções ordenadas cronologicamente.
-   Filtros consistentes.
-   Saída disponível em texto e JSON.
