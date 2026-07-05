# Error Model

## Objetivo

Definir o modelo canônico de tratamento de erros do DevIQ.

O Error Model padroniza como falhas são representadas, propagadas e
correlacionadas durante uma execução do `deviq run`.

## Classificação

- Configuration Error
- Discover Error
- Collection Error
- Normalization Error
- Correlation Error
- Knowledge Error
- Metrics Error
- Report Error
- Export Error
- Internal Error

## Estrutura

Todo erro deve conter:

- Error ID
- Run ID
- Session ID (quando disponível)
- Categoria
- Código
- Mensagem
- Componente
- Evidência relacionada (quando existir)
- Timestamp

## Regras

- Erros não ocultam a causa original.
- Toda falha deve ser registrada pelo Logging Model.
- Erros recuperáveis permitem continuidade da execução.
- Erros fatais encerram a execução preservando o Execution Manifest.

## Fluxo

Componente
↓
Erro
↓
Logging
↓
Execution Manifest

## Objetivo

Garantir tratamento consistente, auditável e reproduzível de falhas em todo o pipeline.
