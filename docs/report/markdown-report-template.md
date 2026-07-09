# Markdown Report Template

Versão: 1.0
Status: Aprovado
Responsável: Arquitetura

---

# 1. Objetivo

Definir o template oficial do relatório gerado pelo DevIQ no MVP.

O relatório representa a saída principal do DevIQ Engine ao final de uma Development Session.

---

# 2. Estrutura

```text
deviq-report.md
├── Cabeçalho
├── Resumo Executivo
├── Visão Geral da Sessão
├── Objetivos
├── Decisões
├── Evidências
├── Arquivos Alterados
├── Commits
├── Conversas com IA
├── Métricas
├── Pendências
├── Próximos Passos
└── Rastreabilidade
```

---

# 3. Cabeçalho

Deve conter:

- Projeto
- SessionId
- Data
- Versão do DevIQ
- Duração da Sessão

---

# 4. Resumo Executivo

Síntese da sessão em linguagem objetiva.

---

# 5. Visão Geral

Descrição resumida do trabalho realizado.

---

# 6. Decisões

Lista das decisões técnicas identificadas durante a sessão.

Cada decisão deve possuir referência às evidências.

---

# 7. Evidências

Agrupadas por categoria:

- Código
- Git
- IA
- Documentação
- Configuração

---

# 8. Arquivos Alterados

Tabela contendo:

- arquivo
- tipo de alteração
- impacto

---

# 9. Commits

Relacionar commits utilizados na análise.

---

# 10. Conversas com IA

Relacionar apenas conversas relevantes para as conclusões.

---

# 11. Métricas

Resumo das métricas produzidas pelo Metrics Engine.

---

# 12. Pendências

Itens ainda não concluídos.

---

# 13. Próximos Passos

Sugestões produzidas pelo Analysis Engine.

---

# 14. Rastreabilidade

Toda conclusão deve referenciar as evidências utilizadas.

---

# 15. Critérios de Aceitação

- relatório legível;
- reproduzível;
- auditável;
- sem conteúdo inventado;
- pronto para compartilhamento.

---

# 16. Próximo Passo

Iniciar a implementação do modelo de domínio do DevIQ Engine.
