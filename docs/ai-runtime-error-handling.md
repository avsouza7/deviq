# AI Runtime Error Handling

## Objetivo

Definir como um DevIQ Runtime deve tratar erros e situações excepcionais
preservando conformidade com a especificação oficial.

## Princípios

-   Não ocultar erros.
-   Preservar rastreabilidade.
-   Produzir respostas determinísticas.
-   Nunca inventar evidências para contornar falhas.

## Categorias

### Erro de Contexto

Documentação obrigatória ausente ou inconsistente.

### Erro de Entrada

Sessão inválida, incompleta ou incompatível com os contratos.

### Erro de Conformidade

Violação de Rules, Models ou RFCs.

### Evidência Insuficiente

Não há elementos suficientes para produzir uma conclusão.

### Erro Operacional

Falhas internas do agente durante a execução.

## Tratamento

1.  Identificar a categoria.
2.  Registrar causa e impacto.
3.  Interromper apenas a etapa afetada quando possível.
4.  Preservar os artefatos válidos já produzidos.
5.  Informar limitações explicitamente.

## Resultado

-   Success
-   Success with Warnings
-   Failed

## Critério de Conformidade

O Runtime é conforme quando trata erros sem violar os contratos
oficiais, preservando determinismo, rastreabilidade e transparência.
