# Infraestrutura da Implementação de Referência

## Objetivo

Definir a camada de infraestrutura da implementação de referência do DevIQ,
responsável por adaptar o domínio aos mecanismos externos.

## Responsabilidades

- Implementar Ports definidos pelo Core Domain.
- Integrar provedores externos.
- Persistir dados.
- Publicar e consumir eventos.
- Disponibilizar configurações da aplicação.

## Componentes

### Adapters

Implementações concretas das interfaces (Ports).

Exemplos:

- Repository Adapters
- AI Provider Adapters
- File Storage Adapters
- Event Bus Adapters

### Persistência

A implementação deverá permitir diferentes mecanismos de persistência,
mantendo o domínio desacoplado.

### Providers

Todo provedor externo deverá ser encapsulado por um Adapter.

### Configuração

As configurações devem ser centralizadas e injetadas, evitando dependências
globais.

## Regras

- Nenhuma regra de negócio deve existir nesta camada.
- Toda comunicação externa passa por Ports.
- Frameworks podem ser substituídos sem impacto no domínio.

## Próximos documentos

- reference-testing.md
- reference-packages.md
