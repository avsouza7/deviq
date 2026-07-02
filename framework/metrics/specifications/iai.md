# AI Assistance Index (IAI)

**Artifact:** `framework/metrics/specifications/iai.md`

---

# 1. Purpose

The **AI Assistance Index (IAI)** measures how much artificial intelligence contributed to the production of a software artifact.

The metric quantifies **assistance**, not quality, correctness, productivity, or ownership.

IAI is intended to provide a normalized indicator that allows comparisons across artifacts, repositories, teams, providers, and development sessions.

---

# 2. Definition

IAI is defined as the weighted proportion of accepted AI contribution relative to the total accepted contribution recorded for an artifact.

The metric uses the Framework contribution catalog as the only source of contribution weights.

Business rules, provider-specific behavior, and implementation details are outside the scope of this metric.

---

# 3. Inputs

The metric requires:

- Evidence Model instance
- Accepted contributions
- Contribution weights from the Framework catalog

Inputs are obtained from:

- `model/evidence-model.yaml`
- `catalog/contribution-weights.yaml`

No additional information is required.

---

# 4. Formula

Let:

- **WAI** = sum of weights of accepted AI contributions
- **WH** = sum of weights of accepted Human contributions

Then:

```
IAI = WAI / (WAI + WH)
```

---

# 5. Domain

```
0 ≤ IAI ≤ 1
```

---

# 6. Interpretation

| IAI | Interpretation |
|------|----------------|
| 0.00 | No accepted AI contribution |
| 0.01–0.25 | Low AI assistance |
| 0.26–0.50 | Moderate AI assistance |
| 0.51–0.75 | High AI assistance |
| 0.76–1.00 | Predominantly AI-assisted |

These ranges are intended only for interpretation and reporting.

They must not be used for validation or decision logic.

---

# 7. Rules

## Accepted evidence only

Only contributions whose outcome is classified as accepted by the Framework are considered.

Rejected contributions do not contribute to the metric.

---

## Framework weights only

Contribution weights are exclusively defined by the Framework catalog.

Metric implementations must not redefine or override weights.

---

## Provider independence

IAI is independent of:

- AI provider
- language model
- IDE
- coding assistant
- execution environment

Only recorded evidence is evaluated.

---

## Determinism

Given identical evidence and identical Framework catalogs, every compliant implementation must produce the same IAI value.

---

# 8. Undefined Cases

IAI is undefined when:

```
WAI + WH = 0
```

This occurs when no accepted contribution exists.

Implementations should represent this condition using their platform's standard representation for undefined numerical values (for example, `null`, `NaN`, or equivalent).

---

# 9. Non-Goals

IAI does not measure:

- software quality
- developer productivity
- code correctness
- maintainability
- business value
- developer skill
- ownership
- authorship
- review quality

---

# 10. Compliance Requirements

A compliant implementation shall:

- use the canonical Evidence Model;
- use the Framework contribution weights;
- ignore rejected contributions;
- compute the metric exactly as specified;
- preserve provider independence;
- produce deterministic results.

---

# 11. References

- RFC-001 — Evidence Model
- `model/evidence-model.yaml`
- `catalog/contribution-weights.yaml`
