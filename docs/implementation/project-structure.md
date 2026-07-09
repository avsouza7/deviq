# Project Structure

Versão: 1.0
Status: Aprovado
Responsável: Arquitetura

---

# Objetivo

Definir a estrutura física inicial do projeto DevIQ para suportar o MVP e sua evolução.

---

# Organização

```text
deviq/
├── deviq-cli
├── deviq-core
├── deviq-runtime
├── deviq-analysis
├── deviq-report
├── deviq-provider-git
├── deviq-provider-filesystem
├── deviq-provider-chat-markdown
└── docs
```

---

# Responsabilidades

## deviq-cli

Entrada da aplicação e comando `deviq run`.

## deviq-core

Contratos, modelos, SPI e domínio.

## deviq-runtime

Pipeline, contexto, lifecycle e recovery.

## deviq-analysis

Motores de análise do MVP.

## deviq-report

Geração do relatório Markdown.

## Providers

Responsáveis pela coleta de dados externos.

---

# Dependências

```text
CLI
 │
 ▼
Runtime
 │
 ▼
Core
 │
 ├── Analysis
 ├── Report
 └── Providers
```

---

# Convenções

- Um módulo por responsabilidade.
- Dependências unidirecionais.
- SPI no Core.
- Implementações fora do Core.

---

# Estrutura de Pacotes

```text
br.com.deviq
 ├── core
 ├── runtime
 ├── analysis
 ├── report
 ├── provider
 └── cli
```

---

# Critérios de Aceitação

- módulos independentes;
- baixo acoplamento;
- alta coesão;
- preparada para novos providers;
- preparada para novos engines.

---

# Próximo Passo

Implementar a estrutura dos módulos e configuração do build.
