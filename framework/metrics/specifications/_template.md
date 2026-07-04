# DevIQ Framework

**Artefato:** `framework/metrics/specifications/_template.md`  
**Versão do Artefato:** 1.1  
**Status:** Ativo  
**Categoria:** Template de Especificação de Métrica

---

# Template de Especificação de Métrica

> Este documento define o padrão oficial para a elaboração das especificações de métricas do DevIQ.
>
> Todas as métricas do Framework **devem** seguir esta estrutura, preservando consistência, rastreabilidade e uniformidade documental.

---

# 1. Objetivo

Descreva claramente o propósito da métrica e o que ela mede.

Também deixe explícito o que **não** é medido, quando aplicável.

---

# 2. Escopo

Defina onde a métrica pode ser utilizada.

Informe limitações de aplicação, quando existirem.

---

# 3. Definições

Apresente os conceitos e símbolos utilizados na especificação.

Todos os termos devem estar alinhados ao domínio do DevIQ.

---

# 4. Entradas

Liste exclusivamente as informações necessárias para o cálculo.

As entradas devem ser derivadas dos contratos oficiais do Framework.

Exemplo:

- Evidence Model
- Catálogo de Pesos
- Catálogo de Outcomes

---

# 5. Cálculo

Descreva formalmente a fórmula da métrica.

```text
resultado = ...
```

---

# 6. Domínio

Informe o intervalo válido dos resultados.

Exemplo:

```text
0 ≤ resultado ≤ 1
```

---

# 7. Interpretação

Defina faixas interpretativas quando fizer sentido.

Essas faixas possuem finalidade exclusivamente analítica e não devem ser utilizadas como regra de negócio.

---

# 8. Regras

Documente todas as regras obrigatórias para implementação da métrica.

Exemplos:

- utilização exclusiva dos catálogos oficiais;
- independência de provedor;
- determinismo;
- utilização apenas de evidências válidas.

---

# 9. Casos Especiais

Documente situações em que a métrica é indefinida ou exige tratamento específico.

Exemplo:

- divisão por zero;
- ausência de evidências;
- ausência de contribuições aceitas.

---

# 10. Não Objetivos

Liste explicitamente o que a métrica não pretende medir.

Esta seção evita interpretações incorretas.

---

# 11. Requisitos de Conformidade

Descreva os requisitos mínimos para que uma implementação seja considerada compatível com o DevIQ.

---

# 12. Referências

Liste os artefatos oficiais utilizados pela métrica.

Exemplo:

- RFCs
- Evidence Model
- Schemas
- Catálogos
- Outras métricas

---

# Convenções

- Utilizar Português (Brasil).
- Utilizar linguagem técnica e normativa.
- Não incorporar constantes de negócio.
- Não depender de provider específico.
- Produzir resultados determinísticos.
- Manter consistência com os contratos oficiais do Framework.
