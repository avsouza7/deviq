# Execution Profile Model

## Objetivo

Definir o modelo canônico de Perfis de Execução do DevIQ.

Um Perfil de Execução descreve quais capacidades, componentes e configurações
serão utilizadas durante uma execução do `deviq run`.

## Perfis Iniciais

- Default
- Fast Analysis
- Full Analysis
- CI
- Custom

## Estrutura

Todo Perfil deve possuir:

- Profile ID
- Nome
- Descrição
- Collectors habilitados
- Plugins habilitados
- Providers habilitados
- Etapas do pipeline
- Formatos de exportação
- Parâmetros adicionais

## Regras

- Um `deviq run` utiliza exatamente um Perfil.
- Perfis podem herdar configurações de outros Perfis.
- Perfis não alteram os modelos canônicos.
- Alterações em um Perfil não afetam execuções já concluídas.

## Fluxo

Configuration
↓
Execution Profile
↓
Run Context
↓
Execution Engine

## Objetivo

Permitir diferentes estratégias de execução mantendo o mesmo pipeline canônico
e preservando a reprodutibilidade dos resultados.
