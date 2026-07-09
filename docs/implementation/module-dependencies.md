# Module Dependencies

Versão: 1.0
Status: Aprovado
Responsável: Arquitetura

---

# Objetivo

Definir as dependências permitidas entre os módulos do DevIQ, preservando baixo acoplamento e alta coesão.

---

# Princípios

- Dependências unidirecionais.
- Core não depende de implementações.
- Runtime orquestra a execução.
- Providers implementam contratos.
- CLI apenas inicia a aplicação.

---

# Diagrama

```text
                 +-------------+
                 | deviq-cli   |
                 +------+------+
                        |
                        v
               +--------+---------+
               | deviq-runtime    |
               +--------+---------+
                        |
                        v
                 +------+------+
                 | deviq-core  |
                 +--+---+---+--+
                    |   |   |
         ------------   |   ------------
        |               |              |
        v               v              v
+---------------+ +-------------+ +------------------+
| deviq-analysis| | deviq-report| | Provider Modules |
+---------------+ +-------------+ +------------------+
```

---

# Dependências Permitidas

- deviq-cli → deviq-runtime
- deviq-runtime → deviq-core
- deviq-analysis → deviq-core
- deviq-report → deviq-core
- Providers → deviq-core

---

# Dependências Proibidas

- Provider → Provider
- Analysis → Runtime
- Report → Runtime
- Core → Implementações
- CLI → Providers

---

# Comunicação

Toda comunicação ocorre por:

- Interfaces
- SPI
- Eventos
- DTOs

---

# Critérios de Aceitação

- sem dependências circulares;
- Core independente;
- Runtime desacoplado;
- comunicação baseada em contratos.

---

# Próximo Passo

Criar a estrutura física dos módulos e configurar o build do projeto.
