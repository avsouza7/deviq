# Plugin Model

## Objetivo

Definir o modelo canônico de Plugins do DevIQ.

Plugins permitem estender o DevIQ sem alterar seu núcleo, adicionando novos
Collectors, Engines, Exportadores ou Capacidades.

## Tipos de Plugin

- Collector
- Exporter
- Engine
- Capability
- Integration

## Estrutura

Todo Plugin deve possuir:

- Plugin ID
- Nome
- Versão
- Autor
- Tipo
- Capacidades fornecidas
- Dependências
- Estado (ativo/inativo)

## Regras

- Plugins não alteram os modelos canônicos.
- Plugins registram suas capacidades no Registry.
- Plugins podem ser habilitados ou desabilitados por configuração.

## Ciclo de Vida

Instalação
↓
Registro
↓
Descoberta
↓
Execução
↓
Remoção

## Objetivo

Permitir evolução do ecossistema mantendo o núcleo do DevIQ estável.
