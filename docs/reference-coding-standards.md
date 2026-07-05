# Padrões Oficiais de Desenvolvimento

## Objetivo

Definir os padrões de desenvolvimento da Implementação de Referência do DevIQ para garantir consistência, legibilidade e manutenção.

## Convenções Gerais

- Um tipo principal por arquivo.
- Nomes claros e descritivos.
- APIs públicas documentadas.
- Preferir composição à herança.

## Nomenclatura

- Classes: PascalCase
- Métodos/Funções: camelCase
- Constantes: UPPER_SNAKE_CASE
- Arquivos: kebab-case (quando aplicável ao ecossistema)

## Tratamento de Erros

- Exceções específicas por domínio.
- Não ocultar erros.
- Mensagens objetivas.
- Contexto suficiente para diagnóstico.

## Logging

- Logs estruturados.
- Nunca registrar segredos.
- Níveis: DEBUG, INFO, WARN e ERROR.

## Eventos

- Eventos representam fatos já ocorridos.
- Devem ser imutáveis.
- Nomeados no passado.

## Testabilidade

- Injeção de dependências.
- Baixo acoplamento.
- Métodos pequenos.

## Revisão de Código

Todo código deverá:

- Respeitar as RFCs.
- Respeitar o Architecture Freeze.
- Possuir testes compatíveis.
- Manter compatibilidade com os contratos públicos.
