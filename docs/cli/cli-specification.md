# Especificação da CLI do DevIQ

## Objetivo

Definir a interface de linha de comando oficial do DevIQ.

## Princípios

-   Interface simples.
-   Descoberta automática sempre que possível.
-   Saída legível para humanos.
-   Saída estruturada para automação.

## Comando Principal

``` bash
deviq run
```

Executa uma análise completa da sessão atual.

## Comandos

### Executar análise

``` bash
deviq run
```

### Comparar execuções

``` bash
deviq compare
```

### Histórico

``` bash
deviq history
```

### Executive Summary

``` bash
deviq summary
```

### Recomendações

``` bash
deviq recommendations
```

### Métricas

``` bash
deviq metrics
```

### Prompt Timeline

``` bash
deviq timeline
```

### Decisões arquiteturais

``` bash
deviq decisions
```

### Dívida técnica

``` bash
deviq debt
```

### Ajuda

``` bash
deviq help
```

## Opções comuns

``` text
--project <path>
--profile <name>
--config <file>
--format text|json
--output <directory>
```

## Critérios de Aceitação

-   Interface consistente entre comandos.
-   Suporte a saída textual e JSON.
-   Erros apresentados de forma clara.
-   Compatibilidade com automação em pipelines CI/CD.
