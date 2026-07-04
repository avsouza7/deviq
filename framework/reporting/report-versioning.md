# Report Versioning

## Objetivo

Definir as regras de versionamento dos contratos de relatório produzidos
pelo DevIQ.

## Princípios

-   Versionamento Semântico (SemVer).
-   Compatibilidade retroativa sempre que possível.
-   Mudanças incompatíveis exigem incremento de versão maior.

## Regras

1.  Cada relatório deve informar a versão do contrato.
2.  Consumidores devem validar a versão antes do processamento.
3.  Alterações estruturais incompatíveis requerem nova major.
4.  Campos opcionais podem ser adicionados em versões minor.

## Exemplo

-   `reportVersion`: `1.0.0`
-   `modelVersion`: versão do modelo de evidências utilizado.

## Compatibilidade

Aplica-se a todos os formatos oficiais de exportação (Markdown, JSON e
futuros formatos).
