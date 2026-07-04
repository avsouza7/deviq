# AI Runtime FAQ

## Objetivo

Responder às dúvidas mais frequentes sobre o DevIQ Runtime.

## Perguntas Frequentes

### O que é o DevIQ Runtime?

É a especificação operacional que permite a um agente de IA executar o
pipeline do DevIQ utilizando exclusivamente a documentação oficial.

### O Runtime depende de uma linguagem de programação?

Não. A especificação é independente de linguagem e pode ser adotada por
diferentes agentes e ferramentas.

### Quais documentos são obrigatórios?

No mínimo: - AI Runtime Specification - AI Runtime Prompt - AI Runtime
Context Loading - Architecture Overview - Architecture Principles - RFCs
vigentes

### Como validar uma implementação?

Executando a Conformance Suite com os Golden Datasets compatíveis.

### Como escolher um Context Profile?

Selecione o menor perfil que contenha todas as informações necessárias;
amplie o contexto apenas quando necessário.

### Como tratar informação insuficiente?

Registrar explicitamente a limitação. Nunca inventar evidências.

### Como evoluir para uma nova versão?

Atualize os artefatos compatíveis, valide a Compatibility Matrix e
execute novamente a Conformance Suite.

## Referências

-   AI Runtime Specification
-   AI Runtime Conformance
-   AI Runtime Certification
-   AI Runtime Governance
