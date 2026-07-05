# Versioning Model

## Objetivo

Definir o modelo canônico de versionamento dos modelos, artefatos e componentes do DevIQ.

## Escopo

Aplica-se a:

- Modelos canônicos
- Contratos
- Plugins
- Collectors
- Engines
- Artefatos

## Estratégia

O DevIQ adota Versionamento Semântico (SemVer):

- MAJOR: mudanças incompatíveis.
- MINOR: novas capacidades compatíveis.
- PATCH: correções sem alteração de comportamento.

## Estrutura

Todo elemento versionável deve possuir:

- Version ID
- Versão atual
- Compatibilidade mínima
- Data de publicação
- Histórico de alterações

## Regras

- Modelos canônicos possuem versão explícita.
- Contratos incompatíveis exigem incremento MAJOR.
- Artefatos registram a versão dos modelos utilizados.

## Objetivo

Garantir evolução controlada e compatibilidade entre execuções do DevIQ.
