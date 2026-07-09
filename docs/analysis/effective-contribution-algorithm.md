# Especificação Técnica - Effective Contribution Algorithm

## Objetivo

Definir o algoritmo responsável por estimar a contribuição efetiva do
desenvolvedor e da IA durante uma Sessão de desenvolvimento.

## Motivação

O objetivo não é medir quantidade de código produzido, mas identificar
quem contribuiu para as decisões, implementação e evolução da solução.

## Entradas

-   Evidence Graph
-   Prompt Timeline
-   Commits
-   Alterações de Arquivos
-   Conversas
-   Métricas da Sessão

## Pipeline

``` text
Evidence Graph
      ↓
Contribution Detection
      ↓
Evidence Attribution
      ↓
Confidence Scoring
      ↓
Contribution Aggregation
      ↓
Effective Contribution Report
```

## Dimensões Avaliadas

-   Geração de código
-   Refinamento humano
-   Decisões arquiteturais
-   Correções
-   Testes
-   Documentação
-   Refatoração

## Regras

-   Nenhuma contribuição é atribuída sem evidências.
-   Um artefato pode possuir contribuição compartilhada.
-   A atribuição utiliza pesos e níveis de confiança.
-   O algoritmo preserva toda a cadeia de rastreabilidade.

## Saída

Um relatório contendo:

-   contribuição da IA;
-   contribuição humana;
-   contribuição compartilhada;
-   nível de confiança;
-   justificativas;
-   evidências relacionadas.

## Garantias

-   Mesmo conjunto de evidências produz o mesmo resultado.
-   Todas as atribuições são auditáveis.
-   O algoritmo é independente do provedor de IA.

## Critérios de Aceitação

-   A contribuição é explicável.
-   Todas as porcentagens possuem evidências de suporte.
-   O resultado pode ser utilizado pelo Executive Summary e pelas
    Métricas.
