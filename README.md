Sistema de Gestão VETSAUDE - Minimundo

Clínica Veterinária – Atividade Prática 4 - Sistema de Gestão Vetsaude

Este repositório contém os scripts SQL utilizados para criar, popular e manipular o banco de dados do projeto **Sistema de Gestão Vetsaude**, desenvolvido na disciplina de Modelagem de Banco de Dados.

Todos os scripts foram desenvolvidos em **SQLite**, utilizando o **SQLite Studio**.

---

Estrutura do Repositório

01_create_tables.sql
02_insert.sql
03_select.sql
04_update_delete.sql
README.md

Descrição dos Arquivos

01_create_tables.sql
Contém a criação de todas as tabelas do banco, incluindo:
- Chaves primárias (PK)
- Chaves estrangeiras (FK)
- Ativação de integridade referencial
- Transações com `BEGIN TRANSACTION`

 **02_insert.sql**
Povoamento das tabelas principais com registros para teste, seguindo o modelo lógico do projeto.

 **03_select.sql**
Consultas SQL com:
- JOIN
- WHERE
- ORDER BY
- Filtros
- Retornos cruzando Cliente, Pet, Consulta, Veterinário e Medicamentos

**04_update.sql**
Comandos:
- **UPDATE** (mínimo 3)

Banco de Dados Utilizado

SQLite 3

Editor recomendado: SQLite Studio

Linguagem utilizada: SQL (DML + DDL)

Requisitos Atendidos da Atividade

✔️ Script de criação das tabelas
✔️ Script de INSERT para povoamento
✔️ 5 consultas usando SELECT + JOIN
✔️ 3 comandos UPDATE
✔️ 3 comandos DELETE
✔️ Uso de transactions (BEGIN TRANSACTION / COMMIT)
✔️ README completo
✔️ Repositório público para entrega

Autor(a)
Thayla Aragão
Projeto desenvolvido como parte da Experiência Prática 4 da disciplina de Modelagem de Banco de Dados.


