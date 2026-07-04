# AI Runtime Compatibility Matrix

## Objetivo

Definir a matriz oficial de compatibilidade entre os artefatos
versionados do DevIQ Runtime.

## Componentes

-   AI Runtime Specification
-   AI Runtime Prompt
-   Context Profiles
-   Golden Datasets
-   Conformance Suite
-   Runtime Implementations

## Regras Gerais

1.  Todos os componentes devem declarar sua versão.
2.  Componentes da mesma versão major são compatíveis, salvo indicação
    em contrário.
3.  Componentes de versões major diferentes exigem validação explícita.

## Matriz

  -----------------------------------------------------------------------
  Componente                         Verificação
  ---------------------------------- ------------------------------------
  Runtime ↔ Specification            Mesma versão major

  Prompt ↔ Specification             Mesma versão major

  Golden Datasets ↔ Conformance      Mesma versão alvo
  Suite                              

  Context Profiles ↔ Runtime         Compatíveis com a Specification
                                     declarada
  -----------------------------------------------------------------------

## Critério de Compatibilidade

Uma execução é considerada compatível quando todos os artefatos
utilizados pertencem ao mesmo conjunto de compatibilidade definido por
esta matriz.
