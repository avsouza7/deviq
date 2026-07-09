# Especificação Funcional - Session Discovery

## Objetivo

Definir como o `deviq run` identifica automaticamente uma Sessão de
desenvolvimento para análise.

## Problema

O desenvolvedor não deve informar manualmente quais arquivos, conversas,
commits ou documentos pertencem ao ciclo de desenvolvimento.

A descoberta deve ocorrer automaticamente.

## Entradas

- Workspace do projeto
- Repositório Git
- Configuração do DevIQ
- Integrações habilitadas
- Janela temporal (opcional)

## Processo

1. Localizar o projeto.
2. Identificar a branch ativa.
3. Identificar alterações locais.
4. Localizar commits relacionados.
5. Descobrir conversas com IA disponíveis.
6. Descobrir documentos produzidos.
7. Construir a Sessão candidata.
8. Validar consistência da Sessão.

## Resultado

A saída é uma Session pronta para o pipeline de coleta de Evidências.

## Critérios de Aceitação

- Não exige seleção manual dos artefatos.
- Produz uma única Sessão coerente.
- Permite revisão antes da coleta quando necessário.
