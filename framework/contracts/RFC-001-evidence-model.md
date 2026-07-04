# RFC-001 — Evidence Model

| Campo | Valor |
|-------|-------|
| **RFC** | 001 |
| **Título** | Evidence Model |
| **Status** | Accepted |
| **Versão** | 1.0.0-alpha |
| **Autor** | DevIQ Team |

## 1. Objetivo

Definir o contrato conceitual oficial utilizado pelos componentes do DevIQ para representar evidências produzidas durante uma sessão de desenvolvimento assistida por IA.

## 2. Escopo

Esta RFC define:

- propósito do Evidence Model;
- princípios;
- responsabilidades;
- regras de evolução;
- compatibilidade;
- conformidade.

A estrutura formal (campos, tipos e validações) **não** faz parte desta RFC e será definida em `framework/schema/evidence-model.schema.yaml`.

## 3. Motivação

O DevIQ necessita de um contrato único para desacoplar Producers e Consumers, permitindo que diferentes Providers produzam informações compatíveis.

## 4. Princípios

- Contrato único.
- Independência de ferramenta.
- Evidence First.
- Clareza sobre inferência.
- Evolução compatível.
- Responsabilidade única.

## 5. Arquitetura

```text
Developer Session
        │
        ▼
Session Analysis
        │
        ▼
Evidence Model
        │
 ┌──────┼──────────────┐
 ▼      ▼              ▼
Metrics Report Lessons Learned
        │
        ▼
Knowledge Base
        │
        ▼
Dashboards
```

O Evidence Model é o único contrato oficial entre os componentes do framework.

## 6. Blocos Conceituais

O modelo é composto pelos seguintes domínios:

- metadata
- issue
- git
- session
- analysis
- metrics
- knowledge
- developer_notes
- limitations

A definição estrutural destes blocos encontra-se em:

```text
framework/schema/evidence-model.schema.yaml
```

## 7. Responsabilidades

### Producers

Responsáveis por produzir um Evidence Model válido.

### Consumers

Responsáveis por consumir o contrato sem depender de estruturas internas de outros módulos.

## 8. Regras

- Não inventar dados.
- Inferências devem ser identificáveis.
- Evidências sustentam conclusões.
- Cada informação possui um responsável.
- Campos desconhecidos permanecem vazios.

## 9. Compatibilidade

O contrato deve preservar retrocompatibilidade sempre que possível.

Mudanças incompatíveis exigem incremento MAJOR.

## 10. Versionamento

O Evidence Model utiliza Semantic Versioning.

- MAJOR: alterações incompatíveis.
- MINOR: evolução compatível.
- PATCH: correções editoriais.

## 11. Conformidade

Uma implementação é considerada conforme quando:

- respeita esta RFC;
- atende ao Schema oficial;
- preserva a semântica do contrato.

A validação estrutural pertence ao Schema.

A validação conceitual pertence a esta RFC.

## 12. Referências

- `framework/schema/evidence-model.schema.yaml`
- Session Analysis Rule
- Metrics Specification
- Session Report Template

## 13. Histórico

| Versão | Descrição |
|---------|-----------|
| 1.0.0-alpha | Primeira versão da RFC. |

## 14. Status

Accepted.

## 15. Resumo

Esta RFC estabelece o contrato conceitual oficial do Evidence Model.

Ela define responsabilidades, princípios e regras. A representação estrutural é responsabilidade exclusiva do Schema correspondente.
