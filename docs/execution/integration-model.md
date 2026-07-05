# Integration Model

## Objetivo

Definir o modelo canônico de Integrações do DevIQ.

Uma Integração conecta o DevIQ a ferramentas externas sem acoplar o núcleo da
arquitetura a tecnologias específicas.

## Tipos de Integração

- IDE
- Git
- LLM
- CI/CD
- Issue Tracker
- Documentação

## Estrutura

Toda Integração deve possuir:

- Integration ID
- Nome
- Tipo
- Provedor
- Capacidades expostas
- Plugins associados
- Estado

## Regras

- Toda integração é implementada por Plugin.
- O núcleo do DevIQ conhece apenas contratos.
- Falhas de integração não alteram os modelos canônicos.

## Fluxo

Discover
↓
Integration
↓
Collector
↓
Evidence

## Objetivo

Permitir que novas ferramentas sejam adicionadas ao ecossistema preservando a
estabilidade do núcleo do DevIQ.
