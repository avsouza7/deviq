# Processo Oficial de Release

## Objetivo

Definir o processo de geração, validação e publicação das versões da Implementação de Referência do DevIQ.

## Fluxo

1. Conclusão das funcionalidades planejadas.
2. Execução da suíte de testes.
3. Validação arquitetural.
4. Atualização da documentação.
5. Atualização do CHANGELOG.
6. Definição da versão (SemVer).
7. Geração dos artefatos.
8. Publicação.

## Critérios para Release

- Todos os testes aprovados.
- Sem violações arquiteturais.
- Documentação sincronizada.
- CHANGELOG atualizado.
- Aprovação da revisão técnica.

## Versionamento

As releases seguem o documento `reference-versioning.md`.

## Artefatos

Cada release deve disponibilizar:

- Código-fonte versionado.
- Documentação.
- Notas da versão.
- Hashes ou mecanismos de verificação quando aplicável.

## Rollback

Toda release deve possuir procedimento documentado de rollback para a versão anterior.

## Governança

Mudanças no processo de release devem ser aprovadas por RFC quando alterarem contratos ou a arquitetura.
