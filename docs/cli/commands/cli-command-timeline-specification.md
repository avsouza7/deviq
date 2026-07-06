# Especificação da CLI - Comando `deviq timeline`

## Objetivo

Definir o contrato funcional do comando responsável por exibir a Prompt
Timeline de uma execução do DevIQ.

## Sintaxe

``` bash
deviq timeline [execution-id] [options]
```

## Descrição

Apresenta a linha do tempo reconstruída da sessão de desenvolvimento,
correlacionando prompts, respostas da IA, commits, alterações de código
e decisões relevantes.

## Opções

  Opção                  Descrição
  ---------------------- ------------------------------------
  `--format text|json`   Formato da saída.
  `--output <file>`      Exporta a timeline.
  `--latest`             Utiliza a execução mais recente.
  `--compact`            Exibe apenas os marcos principais.
  `--from <timestamp>`   Filtra a partir de um instante.
  `--to <timestamp>`     Filtra até um instante.

## Fluxo

1.  Identificar a execução.
2.  Carregar a Session Reconstruction.
3.  Recuperar a Prompt Timeline.
4.  Aplicar filtros.
5.  Renderizar ou exportar o resultado.

## Códigos de Saída

    Código Significado
  -------- -------------------------------
         0 Timeline exibida com sucesso.
         1 Parâmetros inválidos.
         2 Execução não encontrada.
         3 Timeline indisponível.

## Exemplos

``` bash
deviq timeline
deviq timeline run-101
deviq timeline --compact
deviq timeline --format json
```

## Critérios de Aceitação

-   A sequência cronológica é preservada.
-   Todos os eventos podem ser rastreados até suas evidências.
-   A saída é consistente em texto e JSON.
