# Lifecycle Model

## Objetivo

Definir o ciclo de vida dos principais objetos canônicos do DevIQ durante uma execução.

## Escopo

Aplica-se a:

- Session
- Evidence
- Knowledge
- Metric
- Report
- Artifact

## Estados

### Session

Criada → Coletando → Analisando → Finalizada → Arquivada

### Evidence

Capturada → Normalizada → Correlacionada → Consumida → Arquivada

### Knowledge

Identificado → Validado → Consolidado → Publicado

### Metric

Calculada → Validada → Publicada

### Report

Gerado → Exportado → Disponibilizado

## Regras

- Todo estado possui timestamp.
- Transições devem ser registradas.
- Estados finais são imutáveis.

## Objetivo

Padronizar a evolução dos objetos do DevIQ e garantir consistência entre os componentes do pipeline.
