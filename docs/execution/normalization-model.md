# Normalization Model

## Objetivo

Definir como Evidências capturadas por diferentes Collectors são transformadas
para o formato canônico do DevIQ.

## Responsabilidades

O processo de normalização deve:

- padronizar estruturas;
- preservar o conteúdo original;
- enriquecer metadados;
- identificar a origem da Evidência;
- gerar um Evidence Model válido.

## Entradas

- Collectors
- Dados brutos

## Saída

- Evidence Model

## Regras

- Nenhuma informação original pode ser descartada.
- Toda transformação deve ser rastreável.
- O conteúdo original permanece preservado.
- A normalização não executa análise semântica.

## Fluxo

Collector
↓
Raw Evidence
↓
Normalization
↓
Evidence Model

## Objetivo

Garantir que todos os componentes do DevIQ consumam um único formato
canônico de Evidência, independentemente da ferramenta de origem.
