# Execution Quality Gates

## Objetivo

Definir os critérios mínimos de qualidade que uma execução do `deviq run` deve
atender antes que seus resultados sejam considerados confiáveis.

Os Quality Gates funcionam como pontos de controle do pipeline.

## Gates

### GQ-01 — Configuração

Verifica:

- Configuration válida;
- Execution Profile válido;
- Providers compatíveis.

**Falha bloqueia a execução.**

---

### GQ-02 — Descoberta

Verifica:

- Discover concluído;
- Collection Plan gerado;
- Collectors válidos.

---

### GQ-03 — Evidências

Verifica:

- Evidence Model válido;
- Cobertura mínima;
- Evidências utilizáveis.

---

### GQ-04 — Rastreabilidade

Verifica:

- Todos os artefatos possuem origem rastreável;
- Traceability Model consistente.

---

### GQ-05 — Conhecimento

Verifica:

- Knowledge Model produzido;
- Confidence mínima configurada.

---

### GQ-06 — Métricas

Verifica:

- Métricas oficiais calculadas;
- Cálculo reproduzível.

---

### GQ-07 — Relatório

Verifica:

- Report Model gerado;
- Execution Summary disponível;
- Execution Result publicado.

## Resultado

Cada Gate produz:

- Gate ID
- Status (Passed / Failed / Warning)
- Justificativa
- Timestamp

Os resultados são registrados no Execution Manifest.

## Relação

Configuration
↓
Execution Pipeline
↓
Quality Gates
↓
Execution Manifest
↓
Execution Result
