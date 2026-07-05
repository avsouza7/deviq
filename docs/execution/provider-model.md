# Provider Model

## Objetivo

Definir o modelo canônico de Provedores do DevIQ.

Um Provider representa um serviço externo consumido pelo DevIQ por meio de uma
Integração, mantendo o núcleo independente da tecnologia utilizada.

## Tipos de Provider

- LLM
- Git Hosting
- Storage
- CI/CD
- Issue Tracker
- Documentação

## Estrutura

Todo Provider deve possuir:

- Provider ID
- Nome
- Tipo
- Versão da API
- Capacidades
- Integração associada
- Status

## Regras

- Providers são acessados apenas por Integrações.
- Providers não produzem Evidence Model diretamente.
- Mudanças de Provider não alteram os modelos canônicos.

## Fluxo

Provider
↓
Integration
↓
Collector
↓
Evidence

## Objetivo

Permitir a substituição de serviços externos sem impacto na arquitetura
canônica do DevIQ.
