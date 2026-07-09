# Especificação Funcional - deviq run

## Objetivo

Especificar o comportamento funcional do comando `deviq run`.

## Visão Geral

O comando `deviq run` executa uma análise completa sobre uma Sessão de
desenvolvimento assistido por IA e produz conhecimento estruturado sobre o
trabalho realizado.

## Entradas

- Projeto
- Sessão de desenvolvimento
- Configuração
- Perfil de execução

## Fluxo Funcional

1. Descobrir a Sessão.
2. Identificar as fontes de evidências.
3. Coletar as evidências.
4. Normalizar os dados.
5. Correlacionar prompts, código, commits e documentos.
6. Extrair conhecimento.
7. Calcular métricas.
8. Gerar o Executive Summary.
9. Gerar os artefatos finais.

## Saídas Obrigatórias

- Executive Summary
- Effective Contribution
- Prompt Timeline
- Prompt Compression
- Decisões Arquiteturais
- Aprendizados
- Evidências Relevantes
- Métricas
- Dívida Técnica Criada
- Dívida Técnica Removida
- Conhecimento Produzido
- Próximos Passos

## Critérios de Sucesso

Uma execução é considerada bem-sucedida quando produz resultados rastreáveis,
reproduzíveis e úteis para compreender a contribuição efetiva do ciclo de
desenvolvimento analisado.
