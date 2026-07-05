# Dependency Model

## Objetivo

Definir o modelo canônico de dependências entre os componentes do DevIQ.

O Dependency Model estabelece quais componentes podem depender de outros,
preservando a arquitetura e evitando acoplamentos indevidos.

## Escopo

Aplica-se a:

- CLI
- Execution Engine
- Discover
- Collectors
- Normalization
- Correlation Engine
- Knowledge Engine
- Metrics Engine
- Report Engine
- Export

## Regras

- A CLI depende apenas do Execution Engine.
- Discover produz o Collection Plan.
- Collectors produzem apenas Evidence.
- Engines consomem somente modelos canônicos.
- Export depende apenas dos Artefatos.
- Nenhum componente pode acessar diretamente Providers sem Integration.

## Matriz Simplificada

CLI
↓
Execution Engine
↓
Discover → Collect → Normalize
↓
Correlation → Knowledge → Metrics → Report
↓
Export

## Objetivo

Garantir que a implementação preserve o fluxo canônico definido para o `deviq run`.
