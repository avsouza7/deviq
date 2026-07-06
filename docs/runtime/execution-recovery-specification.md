# Especificação Técnica - Execution Recovery Specification

## Objetivo

Definir como o DevIQ recupera execuções interrompidas, preservando
consistência, rastreabilidade e determinismo.

## Motivação

Falhas de infraestrutura, plugins ou interrupções externas não devem
exigir que todo o pipeline seja reiniciado quando houver artefatos
válidos já produzidos.

## Estratégia

A recuperação é baseada em:

-   checkpoints;
-   estado da execução;
-   integridade dos artefatos;
-   versionamento do schema.

## Pipeline

``` text
Execution Failure
        ↓
Failure Classification
        ↓
Checkpoint Discovery
        ↓
Integrity Validation
        ↓
Recovery Planning
        ↓
Pipeline Resume
        ↓
Execution Completed
```

## Pontos de Checkpoint

-   Discovery
-   Collection
-   Normalization
-   Analysis
-   Reporting
-   Export

## Regras

-   Apenas checkpoints íntegros podem ser reutilizados.
-   Mudanças incompatíveis de schema invalidam checkpoints.
-   Artefatos imutáveis podem ser reaproveitados.
-   Toda recuperação gera eventos auditáveis.

## Estrutura

`RecoveryPlan`

-   executionId
-   recoveryId
-   resumeFromStage
-   reusedArtifacts
-   discardedArtifacts
-   validationReport
-   recoveryReason

## Eventos

-   RecoveryRequested
-   CheckpointValidated
-   RecoveryStarted
-   RecoveryStageCompleted
-   RecoveryFinished
-   RecoveryFailed

## Garantias

-   Recuperação determinística.
-   Preservação da rastreabilidade.
-   Reexecução mínima necessária.

## Critérios de Aceitação

-   Execuções recuperadas produzem o mesmo resultado que uma execução
    completa equivalente.
-   O Runtime registra todas as decisões de recuperação.
-   O Execution Context é atualizado conforme o plano de recuperação.
