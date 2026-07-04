# AI Runtime Golden Datasets

## Objetivo

Definir o catálogo oficial de datasets de referência utilizados para
validar implementações compatíveis com o DevIQ Runtime.

## Categorias

### GD-001 --- Sessão Simples

Valida o pipeline mínimo completo.

### GD-002 --- Sessão Média

Inclui múltiplas interações e diferentes tipos de evidência.

### GD-003 --- Sessão Complexa

Exercita múltiplos prompts, contribuições e métricas.

### GD-004 --- Casos Limite

Avalia sessões incompletas, inconsistentes ou com evidências
insuficientes.

## Requisitos

Cada dataset deve fornecer:

-   Entrada completa;
-   Evidências esperadas;
-   Contributions esperadas;
-   Metrics esperadas;
-   Knowledge esperado;
-   Reporting esperado.

## Versionamento

Os datasets devem ser versionados e permanecer reproduzíveis entre
releases.

## Uso

Os Golden Datasets são a base para testes de conformidade, regressão e
comparação entre diferentes agentes compatíveis com o DevIQ.
