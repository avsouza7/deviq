# Camada de Aplicação da Implementação de Referência

## Objetivo

Definir a camada responsável por orquestrar os casos de uso do DevIQ,
mantendo o domínio isolado de detalhes de infraestrutura.

## Responsabilidades

- Executar casos de uso.
- Validar regras de entrada.
- Coordenar portas (Ports).
- Publicar eventos de aplicação.
- Controlar transações quando necessário.

## Componentes

### Casos de Uso

Representam uma ação de negócio completa.

Exemplos:

- Criar Assessment
- Executar Session Analysis
- Gerar Report
- Validar Evidências

### Commands

Operações que alteram estado.

### Queries

Operações somente leitura.

### DTOs

Objetos utilizados para comunicação entre Application e Interfaces.

## Dependências

A camada de aplicação pode depender apenas de:

- Core Domain
- Contratos (Ports)

Não deve depender de:

- Banco de dados
- Framework Web
- SDKs externos

## Critérios

- Casos de uso pequenos.
- Uma responsabilidade por classe.
- Sem regras de negócio complexas fora do domínio.
