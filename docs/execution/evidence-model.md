# Evidence Model

## Objetivo

Definir o modelo canônico de Evidência utilizado pelo DevIQ.

Uma Evidência representa qualquer informação produzida durante um ciclo de
desenvolvimento assistido por IA que possa ser analisada, correlacionada e
transformada em conhecimento.

O Evidence Model é a principal entrada do Analysis Engine.

## Características

Toda Evidência deve possuir:

- Identificador único
- Origem
- Tipo
- Timestamp
- Conteúdo original
- Metadados
- Grau de confiabilidade

## Tipos de Evidência

### Conversa
Mensagens trocadas entre o desenvolvedor e uma IA.

### Prompt
Entrada enviada pelo desenvolvedor.

### Resposta
Saída produzida pela IA.

### Código
Arquivos, diffs, funções, classes e demais alterações.

### Commit
Metadados provenientes do Git.

### Documento
RFCs, ADRs, Markdown e demais artefatos.

## Ciclo de Vida

Capturada
↓
Normalizada
↓
Correlacionada
↓
Analisada
↓
Conhecimento

## Objetivo do Modelo

Todos os Collectors devem produzir Evidências compatíveis com este modelo.
Os demais componentes do DevIQ operam exclusivamente sobre Evidências.
