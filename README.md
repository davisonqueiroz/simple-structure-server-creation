# Objetivo
Desenvolver um script para automação do processo de criação de diretórios, grupos, usuários e definição das regras de acesso dos mesmos, com a finalidade de automatizar o provisionamento da estrutura.

# Estrutura Esperada

## 📁DIRETÓRIOS
- /publico
- /adm
- /ven
- /sec

## 👥GRUPOS

GRP_ADM
GRP_VEN
GRP_SEC

## 👤USUÁRIOS

### GRP_ADM
- carlos 
- maria
- joao

### GRP_VEN
- debora
- sebastiana
- roberto
### GRP_SEC
- josefina
- amanda
- rogerio

## ⚠️PONTOS IMPORTANTES
- O dono de todos os diretórios criados deve ser o root;
- Os usuários tem permissão total dentro de seu respectivo diretório, porém não poderão ter nenhum acesso á diretórios que não pertencem.
