# Especificação Técnica - Prompt Compression Algorithm

## Objetivo

Definir o algoritmo responsável por condensar longas conversas com IA em
um contexto técnico compacto, preservando as informações relevantes para
análise.

## Motivação

Sessões de desenvolvimento podem conter centenas de prompts. O DevIQ
deve reduzir esse volume sem perder o encadeamento lógico, as decisões
tomadas e as evidências necessárias para auditoria.

## Entradas

-   Prompt Timeline
-   Evidence Graph
-   Conversas completas
-   Commits relacionados
-   Decisões arquiteturais

## Pipeline

``` text
Prompt Timeline
        ↓
Conversation Segmentation
        ↓
Topic Detection
        ↓
Redundancy Elimination
        ↓
Decision Preservation
        ↓
Context Compression
        ↓
Compressed Prompt Timeline
```

## Etapas

### 1. Conversation Segmentation

Agrupar prompts por contexto de trabalho.

### 2. Topic Detection

Identificar os principais assuntos discutidos.

### 3. Redundancy Elimination

Remover perguntas, respostas e trechos repetitivos que não agregam
contexto.

### 4. Decision Preservation

Garantir que decisões, hipóteses descartadas e mudanças de direção sejam
mantidas.

### 5. Context Compression

Produzir um resumo estruturado que preserve a sequência lógica da
sessão.

## Regras

-   Nenhuma decisão arquitetural pode ser removida.
-   Todo resumo mantém referência às evidências originais.
-   O algoritmo nunca altera o conteúdo original, apenas gera uma
    representação condensada.

## Saída

Um `CompressedPromptTimeline` contendo:

-   tópicos consolidados;
-   decisões preservadas;
-   contexto resumido;
-   referências às conversas originais;
-   nível de confiança da compressão.

## Garantias

-   A compressão é determinística para a mesma entrada.
-   O conteúdo original permanece íntegro.
-   Toda informação resumida é rastreável até a conversa original.

## Critérios de Aceitação

-   Redução significativa do volume de leitura.
-   Preservação do contexto técnico necessário.
-   Resultado reutilizável pelo Executive Summary, Knowledge Extraction
    e Recommendation Engine.
