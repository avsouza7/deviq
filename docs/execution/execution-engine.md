# Execution Engine

## Objetivo

O Execution Engine é o orquestrador do comando `deviq run`.

Sua responsabilidade é executar o pipeline de análise ponta a ponta, transformando uma sessão de desenvolvimento assistido por IA em conhecimento estruturado.

## Responsabilidades

- Descobrir fontes de evidência.
- Coordenar a coleta.
- Normalizar os dados.
- Acionar os motores de análise.
- Correlacionar evidências.
- Executar o cálculo das métricas.
- Produzir os artefatos finais.

## Fluxo

1. Discover
2. Collect
3. Normalize
4. Analyze
5. Correlate
6. Compute Metrics
7. Generate Knowledge
8. Build Report

O Engine apenas coordena o fluxo. Toda lógica de negócio pertence aos componentes especializados.

## Componentes Orquestrados

- Collectors
- Session Analyzer
- Evidence Engine
- Knowledge Engine
- Metrics Engine
- Report Engine
- Builder

## Saídas

O Execution Engine produz um Execution Context contendo:

- evidências coletadas;
- conhecimento extraído;
- métricas calculadas;
- artefatos gerados;
- status da execução.
