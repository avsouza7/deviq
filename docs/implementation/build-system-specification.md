# Build System Specification

Versão: 1.0
Status: Aprovado
Responsável: Arquitetura

---

# Objetivo

Definir o sistema de build do DevIQ para suportar o desenvolvimento modular, testes e distribuição.

---

# Tecnologia

O MVP utilizará:

- Java 21
- Maven
- JUnit 5
- Maven Wrapper

---

# Estrutura

```text
deviq/
├── pom.xml
├── deviq-cli/
├── deviq-core/
├── deviq-runtime/
├── deviq-analysis/
├── deviq-report/
├── deviq-provider-git/
├── deviq-provider-filesystem/
└── deviq-provider-chat-markdown/
```

---

# Agregador

O pom.xml raiz será responsável por:

- versionamento;
- módulos;
- plugins;
- dependências compartilhadas.

---

# Convenções

- UTF-8
- Java 21
- Maven Wrapper obrigatório
- Build reproduzível

---

# Build

```bash
./mvnw clean verify
```

---

# Testes

Todos os módulos devem executar testes automaticamente durante o build.

---

# Artefatos

Produzir:

- JAR dos módulos
- JAR executável da CLI

---

# Versionamento

Seguir Semantic Versioning.

Snapshots apenas durante desenvolvimento.

---

# Critérios de Aceitação

- build completo com um comando;
- módulos compilando;
- testes executados;
- artefatos gerados.

---

# Próximo Passo

Criar a estrutura Maven e os módulos do projeto.
