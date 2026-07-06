# Report Engine Specification

Versão: 1.0
Status: Aprovado
Responsável: Arquitetura

---

# 1. Objetivo

Especificar o Report Engine, responsável por transformar o Analysis Result em um relatório compreensível, auditável e reutilizável.

---

# 2. Motivação

O principal produto do DevIQ é o conhecimento entregue ao desenvolvedor ao final da sessão de desenvolvimento.

---

# 3. Responsabilidades

- consolidar resultados;
- organizar seções;
- preservar rastreabilidade;
- gerar documentos;
- suportar múltiplos formatos.

---

# 4. Entradas

- Analysis Result
- Development Session
- Configuração do projeto

---

# 5. Fluxo

```text
Analysis Result
      │
      ▼
 Report Engine
      │
 ┌────┼────────────┐
 ▼    ▼            ▼
Resumo Métricas Evidências
      │
      ▼
deviq-report.md
```

---

# 6. Estrutura do Relatório (MVP)

- Resumo Executivo
- Visão Geral da Sessão
- Evidências Relevantes
- Arquivos Alterados
- Commits
- Decisões Identificadas
- Pendências
- Próximos Passos

---

# 7. Regras

- toda conclusão referencia evidências;
- o relatório é reproduzível;
- nenhuma informação é inventada;
- formato independente do mecanismo de geração.

---

# 8. Formatos

MVP:

- Markdown

Evolução:

- HTML
- PDF
- JSON

---

# 9. Saída

O relatório deverá ser salvo em:

```text
.deviq/reports/
    YYYY-MM-DD-HHMM-report.md
```

---

# 10. Critérios de Aceitação

- relatório legível;
- rastreabilidade completa;
- estrutura consistente;
- pronto para compartilhamento.

---

# 11. Próximo Passo

Especificar o modelo do relatório Markdown utilizado pelo MVP.
