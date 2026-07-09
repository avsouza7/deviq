# DevIQ Init Command

Versão: 1.0
Status: Aprovado
Responsável: Arquitetura

---

# 1. Objetivo

Especificar o comportamento do comando `deviq init`.

Este comando transforma um projeto comum em um projeto habilitado para o DevIQ.

---

# 2. Sintaxe

```bash
deviq init
```

---

# 3. Responsabilidades

O comando deverá:

- localizar a raiz do projeto;
- validar permissões de escrita;
- criar o Workspace `.deviq`;
- gerar o arquivo `config.yaml`;
- criar a estrutura inicial;
- informar o resultado ao usuário.

---

# 4. Estrutura Criada

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

# 5. config.yaml Inicial

```yaml
version: 1
project: auto
providers: []
report:
  format: markdown
```

---

# 6. Regras

- não sobrescrever arquivos existentes;
- criar apenas diretórios ausentes;
- operação idempotente;
- retornar código de erro em caso de falha.

---

# 7. Saída Esperada

```text
✔ Projeto inicializado

Workspace:
.deviq

Status:
Ready
```

---

# 8. Falhas

O comando deverá interromper quando:

- diretório não possuir permissão;
- caminho inválido;
- Workspace corrompido.

---

# 9. Critérios de Aceitação

- Workspace criado;
- config.yaml criado;
- operação repetível;
- nenhuma perda de dados.

---

# 10. Próximo Passo

Implementar a CLI e o comando `deviq init`.
