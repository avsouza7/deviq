# Execution Policy Model

## Objetivo

Definir as políticas que governam uma execução do `deviq run`.

As Políticas determinam restrições e comportamentos aplicáveis ao pipeline sem
alterar os modelos canônicos.

## Escopo

Uma Política pode definir:

- Etapas obrigatórias
- Limites de tempo
- Tolerância a falhas
- Estratégias de reprocessamento
- Regras de exportação
- Requisitos mínimos de evidências

## Estrutura

Toda Política deve conter:

- Policy ID
- Nome
- Descrição
- Escopo
- Regras
- Severidade
- Ação em caso de violação

## Regras

- Políticas são avaliadas durante a execução.
- Violações são registradas no Execution Manifest.
- Políticas não modificam artefatos canônicos.
- Políticas podem interromper a execução quando configuradas como bloqueantes.

## Fluxo

Configuration
↓
Execution Policy
↓
Execution Engine
↓
Execution Manifest

## Objetivo

Permitir governança da execução preservando a previsibilidade e a
reprodutibilidade do DevIQ.
