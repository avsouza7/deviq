# Especificação da CLI - Comando `deviq run`

## Objetivo

Definir o contrato funcional do principal comando da CLI do DevIQ.

## Sintaxe

``` bash
deviq run [options]
```

## Descrição

Executa uma análise completa da sessão de desenvolvimento atual,
produzindo conhecimento, métricas, relatórios e recomendações.

## Opções

  Opção                   Descrição
  ----------------------- -------------------------------------------
  `--project <path>`      Projeto a ser analisado.
  `--profile <name>`      Perfil de execução.
  `--config <file>`       Arquivo de configuração.
  `--format text\|json`   Formato da saída.
  `--output <dir>`        Diretório para exportação dos artefatos.
  `--no-cache`            Ignora dados em cache.
  `--verbose`             Exibe informações detalhadas da execução.

## Fluxo

1.  Validar parâmetros.
2.  Carregar configuração.
3.  Descobrir a sessão.
4.  Executar o pipeline de análise.
5.  Persistir os resultados.
6.  Exibir o Executive Summary.

## Códigos de Saída

    Código Significado
  -------- ---------------------------------
         0 Execução concluída com sucesso.
         1 Erro de configuração.
         2 Projeto inválido.
         3 Sessão não encontrada.
         4 Falha durante a análise.

## Exemplos

``` bash
deviq run
deviq run --profile default
deviq run --format json
deviq run --output ./reports
```

## Critérios de Aceitação

-   Execução reproduzível.
-   Saída consistente em texto e JSON.
-   Todos os artefatos produzidos permanecem rastreáveis.
