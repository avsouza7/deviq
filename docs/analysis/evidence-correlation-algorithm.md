# Especificação Técnica - Evidence Correlation Algorithm

## Objetivo

Definir o algoritmo responsável por correlacionar evidências
provenientes de múltiplas fontes e construir relações semânticas entre
elas.

## Motivação

Eventos isolados possuem pouco valor analítico. O DevIQ produz
conhecimento ao estabelecer relações entre prompts, respostas, commits,
arquivos, documentos e decisões arquiteturais.

## Entradas

-   Prompt
-   Resposta da IA
-   Commit
-   Arquivo
-   Documento
-   RFC
-   Evento da IDE

## Pipeline

``` text
Normalize
    ↓
Temporal Correlation
    ↓
Context Correlation
    ↓
File Correlation
    ↓
Semantic Correlation
    ↓
Confidence Scoring
    ↓
Evidence Graph
```

## Estratégias de Correlação

### Temporal

Relaciona eventos próximos em uma mesma janela de trabalho.

### Contextual

Relaciona eventos por conversa, tarefa, branch ou objetivo comum.

### Arquivos

Relaciona evidências que modificam ou referenciam os mesmos arquivos.

### Semântica

Relaciona conteúdos com alta similaridade conceitual.

## Confidence Score

Cada relação recebe um valor entre 0.0 e 1.0 baseado em:

-   proximidade temporal;
-   similaridade semântica;
-   compartilhamento de arquivos;
-   referências explícitas;
-   histórico da sessão.

## Saída

Um `EvidenceGraph` contendo:

-   nós (Evidence)
-   relacionamentos
-   tipo da relação
-   confidence score
-   origem da correlação

## Garantias

-   Relações são determinísticas para a mesma entrada.
-   Nenhuma relação é criada sem justificativa.
-   Todas as correlações permanecem auditáveis.

## Critérios de Aceitação

-   O grafo suporta navegação ponta a ponta.
-   As relações alimentam todos os Analysis Engines.
-   O modelo permite inclusão de novos tipos de evidência sem alterar o
    algoritmo.
