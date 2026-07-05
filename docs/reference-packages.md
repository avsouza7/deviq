# Organização Oficial de Pacotes

## Objetivo

Definir a estrutura lógica da Implementação de Referência do DevIQ,
preservando o desacoplamento entre domínio, aplicação e infraestrutura.

## Estrutura

```
src/
  core/
    domain/
    application/
  infrastructure/
    persistence/
    providers/
    messaging/
  interfaces/
    api/
    cli/
  shared/
    kernel/
    contracts/
```

## Diretrizes

- `core/domain`: entidades, value objects, serviços de domínio e ports.
- `core/application`: casos de uso, commands, queries e DTOs.
- `infrastructure`: adapters e integrações externas.
- `interfaces`: pontos de entrada (HTTP, CLI, etc.).
- `shared`: componentes reutilizáveis e contratos comuns.

## Regras

- Dependências apontam para o domínio.
- Infraestrutura nunca contém regras de negócio.
- Interfaces apenas orquestram entrada e saída.

## Evolução

Novos módulos deverão seguir esta organização ou justificar exceções por RFC.
