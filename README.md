# 🎬 Projeto Banco de Dados - StreamNow

## 📘 Descrição
Este projeto tem como objetivo demonstrar o uso de **particionamento de tabelas** e **consultas SQL** no PostgreSQL, utilizando um banco de dados fictício de streaming chamado **StreamNow**.  
O banco simula usuários, reproduções e categorias de conteúdos, explorando comandos SQL de análise de dados.

---

## 🧩 Estrutura do Projeto
📂 streamnow/
├── 📄 script_criacao.sql
├── 📄 script_insercao.sql
├── 📄 consultas.sql
├── 📄 README.md
└── 🖼️ prints/
├── query_usuarios.png
├── query_reproducoes.png


yaml
Copiar código

---

## 🧠 Objetivos do Projeto
- Criar tabelas com **particionamento por data** (`reproducoes`).
- Inserir registros simulando reproduções por mês.
- Executar consultas agrupadas por país e por categoria.
- Gerar prints de saída diretamente do **psql**.

---

## 🧰 Tecnologias Utilizadas
- **PostgreSQL 15+**
- **pgAdmin ou terminal psql**
-  Windows**

---

## 🧾 Consultas Utilizadas

### 🔹 1. Quantidade de usuários por país
```sql
SELECT pais, COUNT(*) AS total_usuarios
FROM usuarios
GROUP BY pais
ORDER BY pais;
🖼️ Print: query_usuarios.png

🔹 2. Total de reproduções por categoria
sql
SELECT categoria, COUNT(*) AS total_reproducoes
FROM reproducoes
GROUP BY categoria
ORDER BY total_reproducoes DESC;
🖼️ Print: query_reproducoes.png



✍️ Autor

Marcos André dos Santos Santos
📅 Atividade Prática — Banco de Dados (PostgreSQL)
