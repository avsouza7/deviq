# Collector Registry Model

## Objetivo

Definir o modelo canônico do Registro de Collectors do DevIQ.

O Registry mantém o catálogo de todos os Collectors disponíveis e permite que
a etapa Discover identifique quais podem ser utilizados em cada execução.

## Responsabilidades

- Registrar Collectors disponíveis.
- Informar capacidades de cada Collector.
- Controlar versões.
- Indicar compatibilidade.
- Disponibilizar metadados para o Discover.

## Estrutura

Cada registro deve conter:

- Collector ID
- Nome
- Versão
- Tipo de Evidência produzida
- Ferramentas suportadas
- Status
- Prioridade

## Regras

- Um Collector deve possuir ID único.
- Um Collector pode produzir um ou mais tipos de Evidência.
- Collectors experimentais devem ser identificados.
- O Registry não executa Collectors.

## Fluxo

Collector Registry
↓
Discover
↓
Collection Plan
↓
Collectors

## Objetivo

Centralizar o catálogo de Collectors para permitir descoberta consistente,
expansão por plugins e evolução sem impacto no pipeline canônico.
