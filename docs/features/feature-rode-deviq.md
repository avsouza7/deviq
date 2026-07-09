# Especificação Funcional - Feature: rode deviq

## Objetivo

Definir a principal experiência do usuário do DevIQ: executar `deviq run`
(ou "rode deviq") ao final de uma sessão de desenvolvimento e receber uma
análise consolidada do trabalho realizado.

## Cenário

Após horas de desenvolvimento assistido por IA, o desenvolvedor executa:

```
deviq run
```

O DevIQ identifica automaticamente a sessão, analisa as evidências e entrega
um conjunto estruturado de resultados.

## Entradas

- Workspace atual
- Sessão de desenvolvimento
- Configuração
- Perfil de execução

## Fluxo

1. Descobrir a sessão.
2. Coletar evidências.
3. Reconstruir o contexto.
4. Executar a análise.
5. Calcular métricas.
6. Produzir conhecimento.
7. Gerar recomendações.
8. Exibir os resultados.

## Saídas Obrigatórias

- Executive Summary
- Effective Contribution
- Prompt Timeline
- Prompt Compression
- Architectural Decisions
- Learnings
- Metrics
- Technical Debt
- Recommendations
- Improvement Plan

## Critérios de Aceitação

- Nenhuma seleção manual de artefatos é necessária.
- Os resultados são rastreáveis até as evidências.
- A execução fornece uma visão útil do ciclo de desenvolvimento em poucos minutos.
