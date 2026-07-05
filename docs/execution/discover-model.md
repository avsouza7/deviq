# Discover Model

## Objetivo

Definir o modelo canônico da etapa **Discover**, responsável por identificar
automaticamente quais fontes de evidências estão disponíveis para uma execução
do `deviq run`.

## Responsabilidades

- Identificar o projeto alvo.
- Descobrir Collectors compatíveis.
- Detectar repositórios Git.
- Detectar arquivos relevantes.
- Detectar integrações com IDEs e ferramentas de IA.
- Construir o plano de coleta.

## Entradas

- Diretório do projeto
- Configuração do DevIQ

## Saídas

- Lista de Collectors habilitados
- Plano de coleta

## Regras

- Discover não coleta dados.
- Apenas identifica fontes e capacidades.
- Todo Collector descoberto deve informar seu estado.

## Fluxo

Projeto
↓
Discover
↓
Plano de Coleta
↓
Collectors

## Objetivo

Permitir que o restante do pipeline execute sobre um conjunto conhecido e
controlado de fontes de evidência.
