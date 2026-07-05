# Estratégia Oficial de Tratamento de Erros

## Objetivo

Padronizar o tratamento de erros na Implementação de Referência do DevIQ,
garantindo previsibilidade, rastreabilidade e desacoplamento.

## Princípios

- Erros devem ser explícitos.
- Não ocultar exceções.
- O domínio não depende de detalhes de infraestrutura.
- Toda falha relevante deve ser registrável.

## Classificação

### Erros de Domínio

Representam violações de regras de negócio.

Características:

- Determinísticos.
- Esperados.
- Devem possuir tipos específicos.

### Erros de Aplicação

Relacionados à orquestração dos casos de uso.

Exemplos:

- Entrada inválida.
- Recurso inexistente.
- Operação não permitida.

### Erros de Infraestrutura

Relacionados a dependências externas.

Exemplos:

- Banco indisponível.
- Timeout.
- Erro de rede.
- Provider externo.

## Propagação

- O Domain lança apenas erros de domínio.
- A Application traduz erros quando necessário.
- A Infrastructure encapsula exceções externas.
- As Interfaces convertem erros para o protocolo utilizado (HTTP, CLI etc.).

## Logging

Registrar:

- identificador da operação;
- tipo do erro;
- contexto mínimo necessário.

Nunca registrar:

- segredos;
- credenciais;
- tokens;
- informações sensíveis.

## Observabilidade

Toda exceção não tratada deve ser rastreável por logs e mecanismos de monitoramento.

## Evolução

Novos tipos de erro deverão manter compatibilidade com os contratos públicos da arquitetura.
