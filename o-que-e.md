Tenho uma necessidade pratica.
Eu uso intellij com chat integrado, vou "codando" com IA assistinda, quero ao final do ciclo pedir, "rode deveiq" a saida deve ser a contribuição efetiva, resumo de pronpt, aprendizados, metricas etc".

O produto não é um framework de documentação.

O produto é um motor de análise de engenharia assistida por IA.

Na prática, o ciclo é algo como:

Você
   ↓
IntelliJ + Chat
   ↓
Horas de desenvolvimento
   ↓
Conversas
Prompts
Código
Commits
Arquivos
RFCs
Docs
   ↓
"rode deviq"
   ↓
DevIQ
   ↓
Analysis Engine
   ↓
Outputs

E os outputs seriam algo como:

Executive Summary
Effective Contribution (IA × Humano)
Prompt Timeline
Prompt Compression
Decisões arquiteturais
Aprendizados
Evidências
Métricas (IAI, AIPS, ICP...)
Dívida técnica criada
Dívida técnica removida
Conhecimento produzido
Próximos passos sugeridos

Isso explica perfeitamente por que existem conceitos como:

Session Analysis
Evidence
Knowledge
Metrics
Providers
Reporting


Especificar o pipeline de execução.

Algo como:

deviq run

1. Discover
   ↓
2. Collect
   ↓
3. Normalize
   ↓
4. Analyze
   ↓
5. Correlate
   ↓
6. Compute Metrics
   ↓
7. Generate Knowledge
   ↓
8. Build Report

Percebo agora que o DevIQ está muito mais próximo de um compilador de evidências de desenvolvimento do que de um gerador de documentação.

Acho que isso deve orientar todo o restante do projeto. Inclusive, acredito que o próximo artefato mais importante não seja um documento de infraestrutura, mas uma especificação do Execution Pipeline, porque ele define como o comando deviq run (ou rode deviq) transforma uma sessão de desenvolvimento em conhecimento, métricas e relatórios. Esse documento passa a ser o eixo em torno do qual os demais componentes se organizam.


Constituição do Arquiteto DevIQ
O PO sempre está certo sobre o objetivo.
O arquiteto não muda o roadmap.
Descobertas arquiteturais não interrompem entregas.
Descobertas são registradas em um Backlog de Arquitetura.
Somente o PO pode promover uma descoberta para mudança de direção.
"Continue" significa:

Execute exatamente o próximo item aprovado.
Nunca reinterpretar.

Nunca replanejar.

Nunca "achar um caminho melhor".

Toda sugestão deve responder:
por que?
impacto?
custo?
benefício?
Nenhuma mudança estrutural sem aprovação explícita do PO.