# Especificação da CLI - Comando `deviq decisions`

## Objetivo

Definir o contrato funcional do comando responsável por exibir as
Decisões Arquiteturais identificadas pelo DevIQ.

## Sintaxe

``` bash
deviq decisions [execution-id] [options]
```

## Descrição

Apresenta as decisões arquiteturais extraídas durante a análise da
sessão, incluindo contexto, justificativas, impactos e evidências
relacionadas.

## Opções

  Opção                  Descrição
  ---------------------- ----------------------------------
  `--format text|json`   Formato da saída.
  `--output <file>`      Exporta o relatório.
  `--latest`             Utiliza a execução mais recente.
  `--category <name>`    Filtra por categoria.
  `--impact <level>`     Filtra por nível de impacto.

## Fluxo

1.  Identificar a execução.
2.  Carregar o modelo de Decisões Arquiteturais.
3.  Aplicar filtros.
4.  Renderizar ou exportar o resultado.

## Códigos de Saída

    Código Significado
  -------- --------------------------------
         0 Decisões exibidas com sucesso.
         1 Parâmetros inválidos.
         2 Execução não encontrada.
         3 Nenhuma decisão disponível.

## Exemplos

``` bash
deviq decisions
deviq decisions run-101
deviq decisions --impact high
deviq decisions --format json
```

## Critérios de Aceitação

-   Todas as decisões possuem contexto e justificativa.
-   Cada decisão referencia evidências rastreáveis.
-   A saída é consistente em texto e JSON.
