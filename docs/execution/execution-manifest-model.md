# Execution Manifest Model

## Objetivo

Definir o Manifesto de Execução gerado para cada execução do `deviq run`.

O Manifesto descreve exatamente o que foi executado, permitindo auditoria,
reprodutibilidade e comparação entre execuções.

## Responsabilidades

- Identificar a execução.
- Registrar a versão do DevIQ.
- Registrar a versão dos modelos canônicos.
- Registrar Collectors executados.
- Registrar Engines executados.
- Registrar tempos de execução.
- Registrar sucesso e falhas.

## Estrutura

- Run ID
- Session ID
- Projeto
- DevIQ Version
- Pipeline Version
- Collection Plan
- Collectors Executados
- Engines Executados
- Artefatos Produzidos
- Início
- Fim
- Duração
- Status

## Regras

- Um Manifesto é gerado para toda execução.
- O Manifesto é imutável.
- Deve permitir reconstruir a execução.

## Relação com o Pipeline

Run Context
↓
Execution Manifest
↓
Analysis Engine
↓
Output Model
