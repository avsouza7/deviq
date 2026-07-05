# Execution Pipeline

## Objetivo

Definir o fluxo de execução do comando `deviq run`.

O pipeline transforma uma sessão de desenvolvimento assistido por IA em
conhecimento estruturado, métricas e artefatos.

## Pipeline

### 1. Discover

Descobrir todas as fontes disponíveis da sessão:

- conversas com IA;
- prompts;
- commits;
- alterações de código;
- documentos;
- RFCs.

### 2. Collect

Coletar e consolidar as evidências encontradas.

### 3. Normalize

Converter todas as evidências para o Modelo Canônico do DevIQ.

### 4. Analyze

Identificar:

- objetivos;
- decisões;
- entregas;
- contribuições da IA;
- contribuições humanas.

### 5. Correlate

Relacionar evidências de diferentes fontes para reconstruir a sessão.

### 6. Compute Metrics

Calcular as métricas oficiais (IAI, AIPS, ICP e futuras métricas).

### 7. Generate Knowledge

Produzir conhecimento reutilizável:

- aprendizados;
- decisões arquiteturais;
- padrões identificados;
- dívida técnica.

### 8. Build Report

Gerar os artefatos finais:

- Executive Summary;
- Effective Contribution;
- Prompt Summary;
- Evidence Report;
- Knowledge Report;
- Métricas;
- Próximas ações.

## Resultado

O Execution Pipeline é o núcleo operacional do DevIQ e orienta a implementação
dos componentes Collectors, Session Analyzer, Evidence Engine, Knowledge Engine,
Metrics Engine, Report Engine e Builder.
