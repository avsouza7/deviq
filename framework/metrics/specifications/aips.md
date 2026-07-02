# DevIQ Framework

**Artefato:** `framework/metrics/specifications/aips.md`  
**Versão:** 0.1.0  
**Status:** Draft  
**Categoria:** Especificação de Métrica

---

# Especificação da Métrica: AIPS (Índice de Sucesso de Prompts de IA)

## 1. Objetivo

O **Índice de Sucesso de Prompts de IA (AIPS)** mede a proporção de interações com IA que resultaram em contribuições aceitas.

A métrica avalia a efetividade dos prompts utilizados durante o desenvolvimento, sem medir qualidade do software ou desempenho do modelo.

---

## 2. Escopo

Aplica-se a qualquer conjunto de evidências representado pelo Evidence Model do DevIQ.

É independente de provedor, modelo, linguagem, IDE ou ferramenta utilizada.

---

## 3. Definições

Para esta métrica:

- **PA**: quantidade de prompts que originaram contribuições aceitas.
- **PT**: quantidade total de prompts registrados.

---

## 4. Entradas

A implementação deve utilizar apenas:

- Evidence Model;
- contribuições registradas;
- outcomes definidos pelo Framework.

---

## 5. Cálculo

```text
AIPS = PA / PT
```

---

## 6. Domínio

```text
0 ≤ AIPS ≤ 1
```

---

## 7. Interpretação

| Intervalo | Interpretação |
|-----------|---------------|
| 0,00 | Nenhum prompt resultou em contribuição aceita |
| 0,01–0,25 | Baixa efetividade |
| 0,26–0,50 | Efetividade moderada |
| 0,51–0,75 | Alta efetividade |
| 0,76–1,00 | Efetividade muito alta |

As faixas possuem finalidade exclusivamente interpretativa.

---

## 8. Regras

### Outcomes oficiais

A classificação de aceitação deve utilizar exclusivamente o catálogo oficial de outcomes.

### Independência de provedor

O resultado não pode variar em função do provedor ou modelo utilizado.

### Determinismo

As mesmas evidências devem produzir exatamente o mesmo resultado.

---

## 9. Casos especiais

Quando:

```text
PT = 0
```

o AIPS é indefinido e recomenda-se utilizar a representação padrão da plataforma (`null`, `NaN` ou equivalente).

---

## 10. Não objetivos

Esta métrica não mede:

- qualidade dos prompts;
- qualidade do software;
- produtividade;
- desempenho do modelo;
- autoria;
- valor de negócio.

---

## 11. Requisitos de conformidade

Uma implementação compatível deve:

- utilizar o Evidence Model canônico;
- utilizar os outcomes oficiais do Framework;
- aplicar exatamente a fórmula especificada;
- preservar a independência de provedor;
- produzir resultados determinísticos.

---

## 12. Referências

- RFC-001 — Evidence Model
- `model/evidence-model.yaml`
- `catalog/contribution-outcomes.yaml`
