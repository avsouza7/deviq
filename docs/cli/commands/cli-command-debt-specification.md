# Especificação da CLI - Comando `deviq debt`

## Objetivo

Definir o contrato funcional do comando responsável por exibir a análise
de Dívida Técnica identificada pelo DevIQ.

## Sintaxe

``` bash
deviq debt [execution-id] [options]
```

## Descrição

Apresenta a dívida técnica criada, removida e pendente de uma execução,
incluindo categorias, impacto estimado e evidências relacionadas.

## Opções

  Opção                  Descrição
  ---------------------- ----------------------------------
  `--format text|json`   Formato da saída.
  `--output <file>`      Exporta o relatório.
  `--latest`             Utiliza a execução mais recente.
  `--category <name>`    Filtra por categoria.
  `--severity <level>`   Filtra por severidade.

## Fluxo

1.  Identificar a execução.
2.  Carregar o Technical Debt Report.
3.  Aplicar filtros.
4.  Renderizar ou exportar o resultado.

## Códigos de Saída

    Código Significado
  -------- --------------------------------
         0 Relatório exibido com sucesso.
         1 Parâmetros inválidos.
         2 Execução não encontrada.
         3 Relatório indisponível.

## Exemplos

``` bash
deviq debt
deviq debt run-101
deviq debt --category architecture
deviq debt --severity high
deviq debt --format json
```

## Critérios de Aceitação

-   A dívida técnica é apresentada por categoria e severidade.
-   Todos os itens possuem evidências rastreáveis.
-   A saída é consistente em texto e JSON.
