# Development Session Model

Versão: 1.0
Status: Aprovado
Responsável: Arquitetura

---

# 1. Objetivo

Especificar o modelo canônico de uma Sessão de Desenvolvimento.

A Session é a entrada oficial do DevIQ Engine, independentemente da origem da solicitação.

---

# 2. Princípios

- independente da IDE;
- independente da IA;
- reproduzível;
- auditável;
- extensível.

---

# 3. Fontes

Uma sessão pode ser composta por:

- Workspace;
- Git;
- Arquivos alterados;
- Conversas com IA;
- Prompts;
- Documentação;
- Tarefas;
- Configuração do projeto.

---

# 4. Modelo Conceitual

```text
Development Session
        │
 ┌──────┼─────────────┐
 ▼      ▼             ▼
Workspace Git   AI Conversations
        │
        ▼
Evidence Collector
```

---

# 5. Estrutura Lógica

- sessionId
- projectId
- startedAt
- finishedAt
- workspace
- gitContext
- conversations
- changedFiles
- documents
- prompts
- tasks
- metadata

---

# 6. Regras

- uma sessão representa um único ciclo de desenvolvimento;
- todas as evidências pertencem a uma sessão;
- sessões são imutáveis após análise;
- novas análises geram novas sessões.

---

# 7. Responsabilidades

A Session fornece contexto para:

- Discovery Engine;
- Evidence Collector;
- Correlation Engine;
- Analysis Engine;
- Report Engine.

---

# 8. Fora do Escopo

A Session não executa processamento.

Ela apenas representa os dados de entrada.

---

# 9. Critérios de Aceitação

- representar qualquer ambiente;
- suportar novas fontes;
- desacoplar Engine da forma de invocação;
- servir como entrada única do DevIQ.

---

# 10. Próximo Passo

Especificar o Discovery Engine responsável por construir automaticamente a Development Session.
