# Fluxo Oficial de Desenvolvimento

## Objetivo

Padronizar o fluxo de desenvolvimento da Implementação de Referência do DevIQ.

## Branches

- `main`: código estável.
- `develop`: integração contínua.
- `feature/*`: novas funcionalidades.
- `fix/*`: correções.
- `release/*`: preparação de releases.
- `hotfix/*`: correções urgentes.

## Commits

- Mensagens claras e objetivas.
- Preferencialmente seguindo Conventional Commits.

## Pull Requests

Todo PR deve:

- referenciar requisito ou RFC;
- passar na integração contínua;
- possuir revisão técnica;
- manter documentação sincronizada.

## Integração Contínua

Antes do merge devem executar:

- testes unitários;
- testes de integração;
- testes de arquitetura;
- validações de qualidade.

## Critérios de Merge

- Aprovação mínima de um revisor.
- Pipeline verde.
- Sem conflitos.
- Cobertura e documentação atualizadas.

## Governança

Mudanças neste fluxo devem ser registradas em RFC quando alterarem o processo oficial do projeto.
