# Regras Oficiais de Dependência

## Objetivo

Formalizar as dependências permitidas entre os módulos da Implementação de Referência.

## Princípio

As dependências sempre apontam para o núcleo do sistema.

```
Interfaces
      ↓
Application
      ↓
Domain
      ↑
Infrastructure (implementa Ports)
```

## Regras

### Core Domain

Pode depender apenas de:

- Biblioteca padrão da linguagem
- Contratos internos

Não pode depender de:

- Frameworks
- Banco de dados
- HTTP
- SDKs externos

### Application

Pode depender de:

- Core Domain
- Ports

Não pode depender diretamente de Adapters.

### Infrastructure

Implementa os Ports definidos pelo domínio.

Pode depender de bibliotecas externas.

### Interfaces

Responsáveis apenas pela entrada e saída da aplicação.

## Validação

As regras deverão ser verificadas por testes de arquitetura automatizados.

## Alterações

Qualquer mudança nessas regras exige aprovação por RFC.
