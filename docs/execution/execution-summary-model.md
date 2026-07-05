# Execution Summary Model

## Objetivo

Definir o modelo canônico do Resumo de Execução do DevIQ.

O Resumo de Execução é uma visão executiva produzida ao final do `deviq run`,
permitindo compreender rapidamente o resultado da análise.

## Conteúdo

O resumo deve apresentar:

- Run ID
- Projeto
- Session ID
- Data/Hora
- Status
- Duração
- Effective Contribution
- Principais Métricas
- Principais Aprendizados
- Decisões Arquiteturais
- Dívidas Técnicas
- Próximas Ações

## Regras

- O resumo é derivado do Report Model.
- Não contém informações não rastreáveis.
- Toda informação deve possuir origem no pipeline.

## Fluxo

Execution Result
↓
Execution Summary
↓
Output Model

## Objetivo

Disponibilizar uma visão executiva consistente e comparável entre execuções do DevIQ.
