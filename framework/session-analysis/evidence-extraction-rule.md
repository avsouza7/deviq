# Evidence Extraction Rule

## Objetivo

Definir o processo determinístico de extração de evidências a partir de
uma sessão registrada.

## Entradas

-   Sessão registrada.
-   Catálogos oficiais.
-   Contratos do Evidence Model.

## Saídas

-   Coleção de evidências canônicas.
-   Evidências inválidas identificadas com motivo.

## Regras

1.  A extração deve preservar a rastreabilidade até a origem.
2.  Apenas evidências compatíveis com o schema oficial podem ser
    emitidas.
3.  Evidências inválidas não devem ser descartadas silenciosamente;
    devem ser classificadas.
4.  A mesma entrada deve produzir exatamente a mesma coleção de
    evidências.
