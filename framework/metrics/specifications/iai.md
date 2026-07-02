# DevIQ Framework

**Artefato:** `framework/metrics/specifications/iai.md`  
**Versão:** 0.1.0  
**Status:** Draft  
**Categoria:** Especificação de Métrica

---

# Especificação da Métrica: IAI (Índice de Assistência por IA)

## 1. Objetivo

O **Índice de Assistência por IA (IAI)** mede o quanto a Inteligência Artificial contribuiu para a produção de um artefato de software.

O IAI quantifica **assistência**, não qualidade, produtividade, autoria, propriedade ou correção do artefato.

---

## 2. Escopo

Esta métrica aplica-se a qualquer artefato representado pelo **Evidence Model** do DevIQ.

A especificação é independente de linguagem de programação, provedor de IA, ferramenta ou ambiente de execução.

---

## 3. Definições

Para esta métrica:

- **WAI**: soma dos pesos das contribuições de IA aceitas.
- **WH**: soma dos pesos das contribuições humanas aceitas.

Os pesos são definidos exclusivamente pelo catálogo oficial do Framework.

---

## 4. Entradas

A implementação deve utilizar apenas:

- Evidence Model;
- contribuições aceitas;
- catálogo de pesos do Framework.

Não são permitidas entradas adicionais.

---

## 5. Cálculo

A métrica é definida por:

```text
IAI = WAI / (WAI + WH)
```

---

## 6. Domínio

```text
0 ≤ IAI ≤ 1
```

---

## 7. Interpretação

| Intervalo | Interpretação |
|-----------|---------------|
| 0,00 | Nenhuma assistência de IA aceita |
| 0,01–0,25 | Baixa assistência |
| 0,26–0,50 | Assistência moderada |
| 0,51–0,75 | Alta assistência |
| 0,76–1,00 | Assistência predominantemente por IA |

Essas faixas destinam-se exclusivamente à interpretação dos resultados.

---

## 8. Regras

### Evidências aceitas

Somente contribuições aceitas participam do cálculo.

### Pesos oficiais

A implementação deve utilizar exclusivamente os pesos definidos pelo Framework.

### Independência de provedor

O resultado não pode depender de:

- modelo de IA;
- provedor;
- IDE;
- assistente utilizado.

### Determinismo

Dadas as mesmas evidências e os mesmos catálogos oficiais, toda implementação conforme deve produzir exatamente o mesmo resultado.

---

## 9. Casos especiais

O IAI é indefinido quando:

```text
WAI + WH = 0
```

Nessa situação, recomenda-se utilizar a representação padrão da plataforma (`null`, `NaN` ou equivalente).

---

## 10. Não objetivos

Esta métrica não mede:

- qualidade do software;
- produtividade;
- autoria;
- responsabilidade;
- valor de negócio;
- habilidade do desenvolvedor;
- manutenibilidade.

---

## 11. Requisitos de conformidade

Uma implementação compatível deve:

- utilizar o Evidence Model canônico;
- utilizar o catálogo oficial de pesos;
- ignorar contribuições rejeitadas;
- aplicar exatamente a fórmula especificada;
- preservar independência de provedor;
- produzir resultados determinísticos.

---

## 12. Referências

- RFC-001 — Evidence Model
- `model/evidence-model.yaml`
- `catalog/contribution-weights.yaml`
