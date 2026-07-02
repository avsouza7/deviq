# RFC-001 — Evidence Model

| Campo                  | Valor          |
| ---------------------- | -------------- |
| **RFC**                | 001            |
| **Título**             | Evidence Model |
| **Status**             | Accepted       |
| **Versão**             | 1.0.0-alpha    |
| **Autor**              | DevIQ Team     |
| **Última atualização** | 2026-07-02     |

---

# 1. Contexto

O DevIQ é uma plataforma voltada à análise da colaboração entre desenvolvedores e Inteligência Artificial durante o desenvolvimento de software.

Para que seus módulos permaneçam desacoplados, reutilizáveis e independentes da ferramenta utilizada, é necessário um contrato comum de troca de informações.

Esta RFC define esse contrato.

O **Evidence Model** representa a estrutura oficial utilizada pelo DevIQ para armazenar, compartilhar e consumir as informações produzidas durante uma sessão de desenvolvimento.

Todos os componentes da plataforma devem utilizar este modelo como única forma oficial de comunicação.

---

# 2. Problema

Sem um modelo comum de dados, cada componente tenderia a produzir estruturas próprias.

Essa abordagem geraria problemas como:

* forte acoplamento entre módulos;
* dificuldade para adicionar novos Providers;
* duplicação de lógica;
* inconsistências entre métricas;
* dificuldade para evolução do framework.

Além disso, diferentes ferramentas de IA poderiam representar a mesma informação de maneiras distintas, tornando inviável a comparação entre sessões.

---

# 3. Objetivos

O Evidence Model possui os seguintes objetivos:

* estabelecer um contrato único para todo o framework;
* desacoplar Producers e Consumers;
* permitir múltiplos Providers;
* servir de entrada para métricas e relatórios;
* facilitar evolução e versionamento;
* permitir validação por Schema.

---

# 4. Não Objetivos

Esta RFC não define:

* algoritmos das métricas;
* formato dos relatórios;
* integração com Git;
* integração com Jira;
* regras específicas de Providers;
* implementação técnica de armazenamento.

Esses assuntos são tratados por artefatos próprios.

---

# 5. Princípios

O Evidence Model foi concebido seguindo os princípios arquiteturais do DevIQ.

## Contrato Único

Todos os módulos compartilham o mesmo contrato de dados.

---

## Independência de Ferramenta

O modelo não deve conter informações específicas de um Provider.

Qualquer ferramenta compatível poderá produzir ou consumir o mesmo contrato.

---

## Evidências Antes de Inferências

Toda conclusão derivada deve estar apoiada por evidências registradas no modelo.

Inferências sem sustentação não fazem parte do contrato.

---

## Evolução Compatível

Sempre que possível, novas versões devem preservar compatibilidade com versões anteriores.

Mudanças incompatíveis exigem incremento de versão major.

---

## Simplicidade

O modelo deve conter apenas informações necessárias para representar a sessão.

Informações redundantes ou deriváveis não devem ser armazenadas.

---

# 6. Arquitetura

O Evidence Model ocupa uma posição central dentro do DevIQ.

```text
Developer Session
        │
        ▼
Session Analysis
        │
        ▼
Evidence Model
        │
 ┌──────┼───────────────┐
 ▼      ▼               ▼
Metrics Report  Lessons Learned
        │
        ▼
Knowledge Base
        │
        ▼
Dashboards
```

Cada módulo possui responsabilidade própria.

O único mecanismo oficial de troca de informações entre eles é o Evidence Model.

Nenhum componente deve acessar diretamente estruturas internas produzidas por outro componente.

---

# 7. Responsabilidades

O Evidence Model é responsável por:

* representar uma sessão de desenvolvimento;
* consolidar evidências produzidas pela análise;
* fornecer dados para métricas;
* fornecer dados para relatórios;
* permitir rastreabilidade das decisões.

O Evidence Model não executa processamento, cálculos ou inferências.

Seu papel é exclusivamente representar o estado consolidado da sessão.
