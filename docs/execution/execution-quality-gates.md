# Execution Quality Gates

## Objetivo

Definir os critérios mínimos de qualidade que uma execução do `deviq run` deve
atender antes que seus resultados sejam considerados confiáveis.

## Quality Gates

### GQ-01 — Configuração válida

- Configuration validada
- Compatibility aprovada
- Run Context criado

### GQ-02 — Coleta mínima

- Collection Plan executado
- Evidências coletadas
- Nenhum erro bloqueante

### GQ-03 — Evidências utilizáveis

- Evidências normalizadas
- Validação concluída
- Quality Score calculado

### GQ-04 — Rastreabilidade

- Todas as saídas referenciam suas Evidências
- Traceability Model íntegro

### GQ-05 — Conhecimento

- Knowledge Model gerado
- Confidence calculada

### GQ-06 — Métricas

- Métricas oficiais calculadas
- Scores derivados disponíveis

### GQ-07 — Relatório

- Report Model gerado
- Execution Summary gerado
- Execution Result publicado

## Regras

- Gates podem ser informativos ou bloqueantes.
- Toda reprovação deve ser registrada no Execution Manifest.
- A aprovação dos gates compõe a avaliação de Completude da execução.

## Objetivo

Fornecer critérios objetivos para determinar se uma execução do DevIQ produziu
resultados suficientemente confiáveis para consumo.
