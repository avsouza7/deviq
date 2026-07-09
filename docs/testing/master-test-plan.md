# Plano Mestre de Testes do DevIQ

## Objetivo

Definir a estratégia de testes para validar todos os componentes do
DevIQ, garantindo conformidade com os contratos técnicos e funcionais.

## Estratégia

A pirâmide de testes é composta por:

1.  Testes Unitários
2.  Testes de Integração
3.  Testes de Contrato
4.  Testes End-to-End
5.  Testes Não Funcionais

------------------------------------------------------------------------

# Cobertura por Módulo

  Módulo                 Unit   Integração   E2E   Contrato
  --------------------- ------ ------------ ----- ----------
  CLI                     ✓         ✓         ✓       ✓
  Execution Pipeline      ✓         ✓         ✓       ✓
  Evidence Collectors     ✓         ✓         ✓       ✓
  Analysis Engines        ✓         ✓         ✓       ✓
  Report Generators       ✓         ✓         ✓       ✓
  Exporters               ✓         ✓         ✓       ✓
  API                     ✓         ✓         ✓       ✓

------------------------------------------------------------------------

## Cenários Obrigatórios

### CLI

-   Executar `deviq run`
-   Configuração inválida
-   Projeto inexistente
-   Perfil customizado

### Evidence

-   Coleta Git
-   Coleta IDE
-   Coleta de Conversas
-   Falha em um coletor
-   Execução parcial

### Analysis

-   Reconstrução de sessão
-   Correlação de evidências
-   Extração de conhecimento
-   Cálculo de métricas
-   Geração de recomendações

### Reporting

-   Executive Summary
-   Prompt Timeline
-   Exportação Markdown
-   Exportação JSON

------------------------------------------------------------------------

## Testes de Contrato

Validar:

-   deviq.yaml
-   deviq.json
-   JSON Schema
-   OpenAPI
-   Plugin SDK

------------------------------------------------------------------------

## Testes Não Funcionais

-   Performance
-   Escalabilidade
-   Consumo de memória
-   Execução concorrente
-   Recuperação após falhas

------------------------------------------------------------------------

## Definition of Done

Uma funcionalidade somente pode ser considerada concluída quando:

-   todos os testes unitários passam;
-   testes de integração aprovados;
-   contratos preservados;
-   cobertura mínima de 80%;
-   documentação atualizada;
-   rastreabilidade validada.

## Critérios de Aceitação

-   Todo requisito possui pelo menos um teste associado.
-   Todos os contratos possuem testes automatizados.
-   O plano pode ser executado em CI/CD.
