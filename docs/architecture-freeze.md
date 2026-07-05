# Architecture Freeze

## Data

2026-07-05

## Objetivo

Formalizar o congelamento da arquitetura canônica do DevIQ após a conclusão
das RFCs, épicos e modelos fundamentais.

## Escopo do congelamento

Os seguintes componentes passam a ser considerados estáveis:

- RFC-001
- RFC-002
- Modelo Canônico de Evidências
- Session Analysis
- Reporting
- Knowledge
- Providers
- Validation
- Métricas oficiais (IAI, AIPS e ICP)
- Contratos públicos da especificação

## Regras

A partir deste marco:

- Alterações no domínio canônico exigem nova RFC.
- Evoluções incrementais devem preservar compatibilidade com a especificação.
- Implementações de referência podem evoluir sem alterar o domínio.

## Próxima fase

A evolução do projeto passa a concentrar-se em:

1. Implementação de referência.
2. Builder da especificação.
3. Geração automática de documentação.
4. Testes de conformidade.

## Resultado

A arquitetura do DevIQ é considerada congelada para início da implementação
de referência.
