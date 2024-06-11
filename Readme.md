# Curso Linux Dio - Projeto 1

---

## Infraestrutura como código: Script de criação de estrutura de usuários, diretórios e permissões

- O dono de todos os diretórios criados será o usuário root;
- Todos os usuários terão permissão total dentro do diretório publico;
- Os usuários de cada grupo terão permissão total dentro de seu respectivo diretório;
- Os usuários não poderão ter permissão de leitura, escrita e execução em diretórios de departamentos que eles não pertencem;

### - Grupos

1. GRP_ADM
2. GRP_VEN
3. GRP_SEC

### - Diretórios

| GRP_ADM  | GRP_VEN  | GRP_SEC  |
| -------- | -------- | -------- |
| /publico | /publico | /publico |
| /adm     | /ven     | /sec     |

### - Usuários

| GRP_ADM | GRP_VEN    | GRP_SEC  |
| ------- | ---------- | -------- |
| carlos  | debora     | josefina |
| maria   | sebastiana | amanda   |
| joao\_  | roberto    | rogerio  |
