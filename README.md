# Projeto Clínica Veterinária – Scripts SQL

Este repositório contém os arquivos SQL desenvolvidos para a Experiência Prática de Modelagem e Manipulação de Dados, utilizando MySQL como sistema gerenciador de banco de dados. O projeto implementa a criação, povoamento e manipulação de dados de um sistema simples de gestão para uma clínica veterinária.

## Estrutura do Repositório

Projeto Clinica PetCare  
📄 01_create_tables.sql.... Criação das tabelas  
📄 02_insert_data.sql........ Inserts de dados  
📄 03_select_queries.sql.. Consultas SQL  
📄 04_update_delete.sql.. Updates e Deletes  
🗄️ clinicapetcare.sql............ Backup completo do banco

## Descrição dos Arquivos

### 01_create_tables.sql
Contém os comandos SQL responsáveis pela criação das tabelas do banco de dados `clinica_veterinaria`. Inclui definições de campos, tipos de dados, chaves primárias e estrangeiras.

### 02_insert_data.sql
Script de inserção de dados iniciais nas tabelas:
- Cliente
- Animal
- Veterinario
- Atendimento
- Vacina

Esses dados são utilizados para testes e validação das consultas.

### 03_select_queries.sql
Contém diversas consultas SQL utilizando:
- WHERE
- ORDER BY
- JOIN
- GROUP BY

Demonstra domínio da DML para recuperação e manipulação de dados.

### 04_update_delete.sql
Inclui comandos de:
- UPDATE (três atualizações específicas)
- DELETE (três exclusões controladas)

Todos os comandos respeitam a integridade referencial do banco.

### clinicapetcare.sql
Arquivo completo gerado pelo MySQL Workbench contendo:
- Estrutura do banco
- Dados já inseridos
- Modificações e operações realizadas

Serve como backup completo e pode ser utilizado para restaurar o projeto em outro ambiente.

---

## Tecnologias Utilizadas

- MySQL Server  
- MySQL Workbench  
- VS Code  
- GitHub  

---

## Como Executar os Arquivos

### 1. Criar o Banco de Dados
No MySQL Workbench:

```sql
CREATE DATABASE clinica_veterinaria;
USE clinica_veterinaria;
