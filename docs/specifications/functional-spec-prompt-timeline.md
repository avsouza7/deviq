# Especificação Funcional - Prompt Timeline

## Objetivo

Definir como o DevIQ reconstrói a linha do tempo dos prompts utilizados durante
uma Sessão de desenvolvimento assistido por IA.

## Finalidade

Permitir compreender a evolução do raciocínio durante o desenvolvimento,
mostrando como os prompts influenciaram decisões, código e resultados.

## Entradas

- Session Model
- Evidence Model
- Correlation Model
- Prompt Evidence

## Fluxo Funcional

1. Identificar todos os prompts da Sessão.
2. Ordenar cronologicamente.
3. Correlacionar respostas, alterações de código e commits.
4. Identificar mudanças de contexto.
5. Consolidar a Timeline.

## Saídas

- Prompt Timeline
- Eventos relevantes
- Marcos da Sessão

## Regras

- Nenhum prompt é alterado.
- Toda correlação deve ser rastreável.
- Eventos relevantes devem referenciar Evidências.

## Critérios de Aceitação

- A Timeline representa fielmente a evolução da Sessão.
- Permite localizar rapidamente decisões importantes.
- Serve de base para Prompt Compression e Executive Summary.
