# AI Runtime Context Profile

## Objetivo

Definir perfis de carregamento de contexto para o DevIQ Runtime,
equilibrando consumo de contexto e capacidade de análise.

## Perfis

### Full

Carrega toda a documentação oficial do DevIQ.

**Uso:** auditorias, validação completa e inicialização integral.

### Standard

Carrega arquitetura, RFCs, Runtime e artefatos essenciais.

**Uso:** análises rotineiras.

### Light

Carrega apenas Runtime, Models e Rules essenciais.

**Uso:** análises rápidas.

### Specialized

Perfis direcionados para:

-   Reporting
-   Knowledge
-   Validation
-   Providers

## Regras

1.  O perfil deve ser declarado antes da execução.
2.  O Runtime pode ampliar automaticamente o contexto quando necessário.
3.  O determinismo deve ser preservado independentemente do perfil
    utilizado.

## Escalonamento

Light → Standard → Full

## Critério

O perfil escolhido deve conter toda a informação necessária para
executar o pipeline solicitado sem violar os contratos oficiais.
