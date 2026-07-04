# DevIQ Framework

**Artefato:** `framework/metrics/specifications/icp.md`  
**Versão:** 0.1.0  
**Status:** Draft  
**Categoria:** Especificação de Métrica

---

# Especificação da Métrica: ICP (Índice de Contribuição por Prompt)

## 1. Objetivo

O **Índice de Contribuição por Prompt (ICP)** mede a contribuição média produzida por cada prompt registrado durante uma sessão de colaboração entre desenvolvedor e Inteligência Artificial.

A métrica quantifica a produtividade dos prompts, não qualidade do software, produtividade do desenvolvedor ou desempenho do modelo.

## 2. Escopo

Aplica-se a qualquer conjunto de evidências representado pelo Evidence Model do DevIQ e é independente de linguagem, provedor, ferramenta ou ambiente.

## 3. Definições

- **WTC**: soma dos pesos das contribuições aceitas.
- **PT**: quantidade total de prompts registrados.

Para esta métrica, contribuição corresponde a uma evidência aceita ponderada pelo catálogo oficial de pesos.

## 4. Entradas

- Evidence Model;
- catálogo oficial de pesos;
- evidências aceitas;
- prompts registrados.

## 5. Cálculo

```text
ICP = WTC / PT
```

## 6. Domínio

```text
ICP ≥ 0
```

Não existe limite superior teórico.

## 7. Interpretação

Quanto maior o ICP, maior a contribuição média gerada por prompt.

## 8. Regras

- utilizar apenas contribuições aceitas;
- utilizar exclusivamente o catálogo oficial de pesos;
- preservar independência de provedor;
- produzir resultados determinísticos.

## 9. Casos especiais

Quando `PT = 0`, o ICP é indefinido e recomenda-se utilizar `null`, `NaN` ou equivalente.

## 10. Não objetivos

Esta métrica não mede qualidade do software, qualidade dos prompts, produtividade do desenvolvedor, autoria ou valor de negócio.

## 11. Requisitos de conformidade

Uma implementação compatível deve utilizar o Evidence Model, o catálogo oficial de pesos, aplicar a fórmula especificada e produzir resultados determinísticos.

## 12. Referências

- RFC-001 — Evidence Model
- `model/evidence-model.yaml`
- `catalog/contribution-weights.yaml`
