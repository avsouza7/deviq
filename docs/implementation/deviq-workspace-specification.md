# DevIQ Workspace Specification

Versão: 1.0
Status: Aprovado
Responsável: Arquitetura

---

# 1. Objetivo

Especificar a estrutura do diretório `.deviq`, utilizado para armazenar os artefatos operacionais produzidos pelo DevIQ.

O Workspace representa o estado local do DevIQ dentro de um projeto.

---

# 2. Motivação

O DevIQ não deve depender de infraestrutura externa para executar o MVP.

Toda informação necessária para análise da sessão deve permanecer no próprio projeto.

---

# 3. Criação

O Workspace é criado pelo comando:

```bash
deviq init
```

Caso já exista, o comando não deverá sobrescrever arquivos do usuário.

---

# 4. Estrutura

```text
.deviq/
├── config.yaml
├── sessions/
├── checkpoints/
├── cache/
├── reports/
├── knowledge/
├── providers/
└── logs/
```

---

# 5. Responsabilidades

## config.yaml

Configuração principal do projeto.

## sessions/

Sessões analisadas.

## checkpoints/

Checkpoints do Runtime.

## cache/

Artefatos reutilizáveis.

## reports/

Relatórios produzidos.

## knowledge/

Conhecimento derivado.

## providers/

Configuração dos Providers.

## logs/

Logs locais do Runtime.

---

# 6. Regras

- todo conteúdo pertence ao DevIQ;
- diretórios ausentes podem ser recriados;
- arquivos de usuário nunca devem ser modificados automaticamente.

---

# 7. Versionamento

O Workspace possui versão própria registrada em `config.yaml`.

Mudanças incompatíveis deverão acionar rotina de migração futura.

---

# 8. Critérios de Aceitação

- `deviq init` cria toda a estrutura;
- execução funciona apenas com `.deviq`;
- estrutura preparada para evolução incremental.

---

# 9. Próximo Passo

Implementar o comando `deviq init`.
