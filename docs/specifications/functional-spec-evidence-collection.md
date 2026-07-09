# Especificação Funcional - Evidence Collection

## Objetivo

Definir como o DevIQ coleta automaticamente as evidências de uma Sessão de
desenvolvimento.

## Princípios

- Transparente para o desenvolvedor.
- Não altera o projeto.
- Preserva os dados originais.
- Mantém rastreabilidade.

## Fontes

- Conversas com IA
- Prompts
- Respostas
- Código-fonte
- Git
- Documentação
- RFCs
- ADRs

## Fluxo

1. Receber a Sessão.
2. Executar o Collection Plan.
3. Coletar evidências por Collector.
4. Validar integridade.
5. Normalizar.
6. Disponibilizar ao Analysis Engine.

## Critérios de Aceitação

- Nenhuma evidência é modificada.
- Toda evidência possui origem identificável.
- A coleta pode ser reproduzida nas mesmas condições.
