# Execution Checkpoint Model

**Versão:** 1.0  
**Status:** Aprovado  
**Responsável:** Arquitetura de Runtime

---

# 1. Objetivo

Este documento especifica o **Modelo de Checkpoints de Execução** do DevIQ.

Seu objetivo é definir como o Runtime persiste, valida, restaura e invalida checkpoints durante a execução do pipeline, permitindo retomadas determinísticas, auditáveis e reproduzíveis.

Complementa:
- Execution Pipeline
- Execution Context
- Execution State Machine
- Execution Recovery

# 2. Motivação

Execuções do DevIQ podem ser interrompidas. O modelo de checkpoints permite retomada segura sem reprocessamento desnecessário.

Benefícios:
- retomada determinística;
- reaproveitamento de artefatos imutáveis;
- redução de tempo de execução;
- rastreabilidade completa.

# 3. Princípios

- Checkpoints são imutáveis.
- Apenas checkpoints íntegros podem ser reutilizados.
- Toda recuperação deve ser auditável.
- Compatibilidade é validada antes da restauração.

# 4. Pontos Oficiais de Checkpoint

1. Discover
2. Collect
3. Normalize
4. Analyze
5. Correlate
6. Compute Metrics
7. Generate Knowledge
8. Build Report

# 5. Conteúdo Persistido

- Execution Context
- Pipeline State
- Evidências normalizadas
- Resultados intermediários
- Métricas
- Conhecimento
- Relatórios
- Logs
- Metadados
- Hashes

# 6. Estrutura Física Recomendada

```text
checkpoint/
 ├── metadata.json
 ├── execution-context.json
 ├── pipeline-state.json
 ├── evidence/
 ├── analysis/
 ├── metrics/
 ├── knowledge/
 ├── reports/
 ├── logs/
 └── hashes.json
```

# 7. Metadados

- checkpointId
- executionId
- projectId
- pipelineStage
- runtimeVersion
- schemaVersion
- pluginManifestVersion
- creationTimestamp
- checksumGlobal

# 8. Validação

Antes da reutilização o Runtime verifica:

- hashes;
- integridade;
- schemaVersion;
- runtimeVersion;
- pluginManifestVersion.

# 9. Reutilização

Artefatos somente podem ser reutilizados quando todas as validações forem aprovadas.

# 10. Invalidação

O checkpoint é invalidado quando houver:

- corrupção;
- incompatibilidade de schema;
- incompatibilidade de plugins;
- persistência incompleta.

# 11. Retenção

Recomenda-se:

- manter a última execução bem-sucedida;
- manter a última falha;
- remover checkpoints temporários;
- preservar checkpoints referenciados por relatórios.

# 12. Eventos

- CheckpointCreated
- CheckpointValidated
- CheckpointLoaded
- CheckpointRestored
- CheckpointInvalidated
- CheckpointDiscarded

# 13. Garantias

- recuperação determinística;
- integridade;
- auditabilidade;
- reprodutibilidade.

# 14. Critérios de Aceitação

- retomada funcional;
- rejeição de checkpoints inválidos;
- incompatibilidades impedem reutilização;
- decisões registradas para auditoria.

# 15. Papel na Arquitetura

```
Pipeline
   ↓
Checkpoint
   ↓
Persistência
   ↓
Recovery Engine
   ↓
Validação
   ↓
Restauração
   ↓
Continuação
```

Este documento encerra a modelagem operacional dos checkpoints do Runtime.
