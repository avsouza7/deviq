# Estratégia Oficial de Observabilidade

## Objetivo

Definir como a Implementação de Referência coleta, correlaciona e expõe
informações operacionais para diagnóstico, auditoria e monitoramento.

## Pilares

- Logging
- Métricas
- Tracing distribuído
- Auditoria

## Logging

Requisitos:

- Logs estruturados.
- Correlação por Request ID / Correlation ID.
- Níveis: DEBUG, INFO, WARN, ERROR.

Nunca registrar:

- Senhas
- Tokens
- Chaves de API
- Dados sensíveis

## Métricas

Devem existir métricas para:

- Tempo de execução dos casos de uso
- Taxa de sucesso/erro
- Chamadas a providers
- Latência
- Consumo de recursos

## Tracing

Operações distribuídas devem propagar um Correlation ID entre todas as camadas.

## Auditoria

Eventos relevantes devem ser auditáveis:

- Criação
- Alteração
- Exclusão
- Execução de análises
- Geração de relatórios

## Diretrizes

- Observabilidade não pode introduzir regras de negócio.
- Instrumentação deve ser desacoplada do domínio.
- Providers de observabilidade devem ser substituíveis por Ports/Adapters.
