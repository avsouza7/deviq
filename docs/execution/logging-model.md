# Logging Model

## Objetivo

Definir o modelo canônico de Logging do DevIQ.

O Logging registra os eventos relevantes de uma execução do `deviq run`,
fornecendo observabilidade e suporte à auditoria sem interferir na lógica
de negócio.

## Eventos Registrados

- Início da execução
- Descoberta de Collectors
- Coleta de Evidências
- Normalização
- Correlação
- Geração de Conhecimento
- Cálculo de Métricas
- Geração de Relatórios
- Exportação
- Falhas e avisos

## Estrutura

Todo registro deve conter:

- Log ID
- Run ID
- Session ID
- Timestamp
- Nível
- Componente
- Mensagem
- Contexto

## Níveis

- DEBUG
- INFO
- WARN
- ERROR

## Regras

- Logs não alteram o fluxo da execução.
- Dados sensíveis não devem ser registrados.
- Todo log deve estar associado a um Run ID.

## Fluxo

Execution Engine
↓
Logging
↓
Observabilidade

## Objetivo

Permitir diagnóstico e auditoria das execuções preservando a rastreabilidade.
