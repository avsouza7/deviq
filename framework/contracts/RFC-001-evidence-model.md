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

---

# 8. Estrutura Geral

O Evidence Model é composto por blocos independentes, cada um com responsabilidade única e bem definida.

```text
Evidence Model
│
├── metadata
├── issue
├── git
├── session
├── analysis
├── metrics
├── knowledge
├── developer_notes
└── limitations
```

Cada bloco representa um domínio específico da sessão analisada.

---

# 9. Blocos do Modelo

## metadata

Contém informações sobre o próprio documento gerado.

Seu objetivo é garantir rastreabilidade e compatibilidade entre versões.

Responsável pelo preenchimento:

* Provider

Consumidores:

* Todos os módulos

Campos previstos:

* report_id
* framework_version
* provider
* provider_version
* generated_at

---

## issue

Representa a identificação da tarefa analisada.

Este bloco deve conter apenas informações conhecidas e verificáveis.

Responsável pelo preenchimento:

* Session Analysis

Consumidores:

* Metrics
* Session Report

Campos previstos:

* key
* title
* type
* project
* priority
* labels

---

## git

Representa o relacionamento da sessão com o repositório de código.

Responsável pelo preenchimento:

* Provider

Consumidores:

* Metrics
* Session Report

Campos previstos:

* repository
* branch
* commits
* pull_request

---

## session

Contém informações gerais da sessão de desenvolvimento.

Responsável pelo preenchimento:

* Session Analysis

Consumidores:

* Metrics
* Session Report

Campos previstos:

* started_at
* finished_at
* duration
* confidence

---

## analysis

Representa o resultado consolidado da análise realizada pelo Provider.

Este é o principal bloco produzido pelo processo de Session Analysis.

Responsável pelo preenchimento:

* Session Analysis

Consumidores:

* Metrics
* Session Report
* Lessons Learned

Campos previstos:

* objective
* summary
* task_type
* prompt_groups
* categories
* collaboration_points
* evidence
* discarded_suggestions
* assumptions

---

## metrics

Armazena todas as métricas calculadas pelo framework.

Responsável pelo preenchimento:

* Metrics

Consumidores:

* Session Report
* Dashboards

Campos previstos:

* iai
* aips
* icp
* roi

Novas métricas poderão ser adicionadas em versões futuras sem quebrar compatibilidade.

---

## knowledge

Representa conhecimento reutilizável identificado durante a sessão.

Responsável pelo preenchimento:

* Lessons Learned

Consumidores:

* Knowledge Base
* Dashboards

Campos previstos:

* lessons_learned
* best_prompts
* reusable_patterns
* recommendations

---

## developer_notes

Espaço reservado para observações registradas manualmente pelo desenvolvedor.

Este bloco nunca deve ser preenchido automaticamente.

Responsável:

* Desenvolvedor

---

## limitations

Lista limitações identificadas durante a geração do relatório.

Exemplos:

* contexto incompleto;
* ausência de histórico Git;
* ausência da Issue;
* baixa quantidade de evidências.

Responsável:

* Session Analysis

---

# 10. Regras Gerais

As seguintes regras aplicam-se a todo o Evidence Model.

## Responsabilidade Única

Cada bloco possui um único responsável oficial pelo preenchimento.

---

## Não Inventar Dados

Campos sem informação disponível devem permanecer vazios.

Nunca devem ser preenchidos com estimativas ou valores fictícios.

---

## Evidências Obrigatórias

Conclusões derivadas devem possuir evidências correspondentes registradas no modelo.

---

## Inferências Explícitas

Sempre que uma informação for inferida, seu nível de confiança deverá ser registrado.

---

## Compatibilidade

Campos existentes nunca devem alterar seu significado.

Novos campos deverão preservar compatibilidade sempre que possível.

---

## Extensibilidade

Novos blocos poderão ser adicionados em versões futuras desde que não invalidem consumidores existentes.
