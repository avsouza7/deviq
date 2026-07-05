# Caso de Uso - Executar `deviq run`

## Objetivo

Descrever o caso de uso principal do DevIQ, desde a solicitação da
execução até a entrega dos resultados analíticos.

## Atores

-   Desenvolvedor
-   DevIQ CLI

## Pré-condições

-   Projeto acessível.
-   Repositório Git disponível.
-   Configuração do DevIQ válida.

## Fluxo Principal

1.  O desenvolvedor executa `deviq run`.
2.  O DevIQ identifica a Sessão de desenvolvimento.
3.  Coleta e normaliza Evidências.
4.  Reconstrói o contexto da Sessão.
5.  Executa os motores de análise.
6.  Gera Conhecimento, Métricas e Insights.
7.  Produz Executive Summary, Recommendations e Improvement Plan.
8.  Apresenta os resultados ao usuário.

## Fluxos Alternativos

### A1. Sessão incompleta

-   O DevIQ informa as limitações encontradas.
-   A análise continua utilizando as Evidências disponíveis.

### A2. Nenhuma Evidência encontrada

-   O DevIQ encerra a execução com diagnóstico explicando por que a
    Sessão não pôde ser reconstruída.

## Pós-condições

-   A execução é registrada.
-   Os resultados permanecem rastreáveis até as Evidências.
-   O usuário pode navegar pelos artefatos produzidos.

## Critérios de Aceitação

-   O caso de uso pode ser executado sem seleção manual de artefatos.
-   Todas as saídas possuem rastreabilidade.
-   A execução produz informações úteis para orientar o próximo ciclo.
