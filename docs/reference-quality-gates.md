# Quality Gates da Implementação de Referência

## Objetivo

Definir os critérios obrigatórios para aprovação de Pull Requests e Releases.

## Gates Obrigatórios

### 1. Testes

- Todos os testes unitários aprovados.
- Todos os testes de integração aprovados.
- Testes de arquitetura aprovados.

### 2. Arquitetura

- Sem violações das regras de dependência.
- Conformidade com o Architecture Freeze.
- Respeito aos Ports e Adapters.

### 3. Segurança

- Ausência de segredos no código.
- Dependências verificadas.
- Vulnerabilidades críticas inexistentes.

### 4. Documentação

- Documentação sincronizada.
- CHANGELOG atualizado quando aplicável.
- RFCs referenciadas.

### 5. Qualidade

- Linters aprovados.
- Formatação consistente.
- Sem código morto identificado.

### 6. Conformidade

- Compatibilidade com contratos públicos.
- Versionamento conforme SemVer.
- Critérios de release atendidos.

## Bloqueios

O merge ou release não deve ocorrer caso qualquer gate obrigatório falhe.

## Evolução

Novos gates poderão ser adicionados mediante aprovação arquitetural.
