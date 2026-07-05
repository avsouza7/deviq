# Estratégia de Testes da Implementação de Referência

## Objetivo

Definir a estratégia oficial de testes para garantir conformidade com a arquitetura e os contratos do DevIQ.

## Pirâmide de Testes

1. Testes Unitários
2. Testes de Integração
3. Testes de Arquitetura
4. Testes de Conformidade
5. Testes End-to-End (quando aplicável)

## Testes Unitários

- Validam regras do Core Domain.
- Não dependem de infraestrutura.
- Devem ser rápidos e determinísticos.

## Testes de Integração

- Validam Adapters.
- Exercitam integrações externas isoladamente.

## Testes de Arquitetura

Devem garantir:

- Dependências permitidas.
- Ausência de acoplamento indevido.
- Respeito à Arquitetura Hexagonal.

## Testes de Conformidade

Verificam aderência às RFCs, contratos públicos e métricas oficiais.

## Cobertura

A cobertura de código não substitui qualidade dos testes. Priorizar cenários críticos e regras de negócio.

## Critérios de Aceite

- Todos os testes automatizados aprovados.
- Nenhuma violação arquitetural.
- Conformidade com o Architecture Freeze.
