# AI Runtime Versioning

## Objetivo

Definir a estratégia de versionamento da especificação DevIQ Runtime e
de seus artefatos associados.

## Escopo

Aplica-se a:

-   Especificação do AI Runtime;
-   Perfis de contexto;
-   Contratos;
-   Golden Datasets;
-   Conformance Suite;
-   Prompts oficiais.

## Política

-   Utilizar Semantic Versioning (SemVer).
-   Alterações incompatíveis incrementam a versão major.
-   Novas funcionalidades compatíveis incrementam a versão minor.
-   Correções incrementam a versão patch.

## Compatibilidade

1.  Um Runtime deve declarar a versão da especificação suportada.
2.  Golden Datasets e Conformance Suite devem indicar a versão alvo.
3.  Documentos incompatíveis não devem ser combinados entre versões.

## Regras

-   Toda execução deve registrar a versão utilizada.
-   A compatibilidade deve ser verificável antes da execução.

## Critério de Conformidade

Uma implementação é considerada conforme quando executa artefatos
compatíveis com a mesma versão da especificação.
