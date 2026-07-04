# Guia de Contribuição

Obrigado pelo interesse em contribuir com o DevIQ!

O objetivo deste documento é definir um fluxo de trabalho simples, consistente e previsível para a evolução do projeto.

---

# Filosofia

O DevIQ é um projeto orientado por arquitetura.

Antes da implementação de qualquer funcionalidade, buscamos compreender o problema, definir contratos e garantir que a solução seja consistente com os princípios do projeto.

Toda contribuição deve priorizar:

* Clareza
* Simplicidade
* Consistência
* Baixo acoplamento
* Evidências em vez de opiniões

---

# Fluxo de Contribuição

O fluxo de trabalho padrão é:

1. Identificar a necessidade.
2. Registrar uma Issue.
3. Discutir a solução (quando necessário).
4. Implementar.
5. Revisar.
6. Realizar o merge.

Mudanças arquiteturais devem ser aprovadas antes da implementação.

---

# Organização do Projeto

O repositório está organizado em módulos com responsabilidades bem definidas.

* `docs/` — documentação do projeto.
* `framework/` — contratos, métricas, schemas, templates e exemplos.
* `providers/` — implementações específicas para cada ferramenta.
* `scripts/` — scripts auxiliares.
* `examples/` — exemplos de utilização.

---

# Padrões

## Idioma

A documentação oficial é mantida em português.

Nomes de arquivos, diretórios, propriedades, identificadores e commits permanecem em inglês.

---

## Commits

O projeto utiliza Conventional Commits.

Exemplos:

```text
feat(provider-windsurf): add session analysis rule

docs: update README

refactor(metrics): simplify IAI calculation

fix(report): correct markdown generation

chore: update project structure
```

---

## Versionamento

O projeto utiliza Versionamento Semântico (SemVer).

Formato:

```text
MAJOR.MINOR.PATCH
```

Pré-releases utilizam os sufixos:

* alpha
* beta
* rc

---

# Arquitetura

Toda alteração deve respeitar os contratos definidos pelo framework.

Em especial:

* RFCs
* ADRs
* Schemas
* Rules

Mudanças incompatíveis devem ser discutidas antes da implementação.

---

# Pull Requests

Sempre que possível, um Pull Request deve possuir um único objetivo.

O título deve representar claramente a mudança realizada.

A descrição deve responder:

* O que foi alterado?
* Por que foi alterado?
* Existe impacto em outros módulos?
* Existe quebra de compatibilidade?

---

# Definition of Done

Uma contribuição será considerada concluída quando:

* atender ao objetivo proposto;
* estiver consistente com a arquitetura do projeto;
* possuir documentação quando aplicável;
* passar pela revisão.

---

# Código de Conduta

Ao contribuir com o projeto, todos os participantes concordam em seguir o Código de Conduta definido em `CODE_OF_CONDUCT.md`.
