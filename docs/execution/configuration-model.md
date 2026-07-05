# Configuration Model

## Objetivo

Definir o modelo canônico de configuração do DevIQ.

A Configuração determina como uma execução do `deviq run` será realizada,
quais componentes serão habilitados e quais parâmetros serão utilizados.

## Escopo

A configuração pode definir:

- Projeto alvo
- Collectors habilitados
- Plugins habilitados
- Providers
- Formatos de exportação
- Nível de logging
- Diretórios de saída

## Estrutura

Toda configuração deve conter:

- Configuration ID
- Versão
- Projeto
- Perfil
- Parâmetros
- Overrides

## Regras

- Configurações são carregadas antes da etapa Discover.
- Valores padrão podem ser sobrescritos por perfil.
- Configurações inválidas impedem o início da execução.

## Fluxo

Configuration
↓
Run Context
↓
Discover
↓
Execution Engine

## Objetivo

Garantir execuções reproduzíveis e configuráveis sem alterar os modelos canônicos.
