# Estratégia Oficial de Versionamento

## Objetivo

Definir as regras de versionamento dos artefatos da Implementação de Referência do DevIQ, garantindo previsibilidade e compatibilidade.

## Princípios

- Versionamento Semântico (SemVer).
- Compatibilidade retroativa sempre que possível.
- Mudanças incompatíveis exigem nova versão major.
- Contratos públicos são versionados.

## Escopo

Aplica-se a:

- APIs
- Contratos (Ports)
- Especificações
- RFCs
- Artefatos distribuídos

## Regras

### MAJOR

Utilizada para alterações incompatíveis.

### MINOR

Utilizada para novas funcionalidades compatíveis.

### PATCH

Utilizada para correções sem alteração de contrato.

## RFCs

Toda mudança arquitetural relevante deve possuir uma RFC aprovada antes da implementação.

## Compatibilidade

- APIs públicas devem informar a versão suportada.
- Artefatos descontinuados devem possuir período de transição documentado.

## Changelog

Toda versão publicada deve possuir registro no CHANGELOG.md contendo:

- funcionalidades;
- correções;
- alterações incompatíveis;
- migrações necessárias.
