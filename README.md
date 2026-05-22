# Estudos SQL com DBeaver

Este repositório contém consultas SQL praticadas no DBeaver utilizando o banco de dados de exemplo SQLite.

## Objetivo

Praticar comandos básicos de SQL, incluindo:

- SELECT
- FROM
- LIMIT
- ORDER BY
- Ordenação crescente com ASC
- Ordenação decrescente com DESC
- Consulta de colunas específicas

## Ferramentas utilizadas

- DBeaver Community
- SQLite
- SQL
- Git
- GitHub

## Estrutura do projeto

```text
estudos-sql-dbeaver/
│
├── README.md
└── consultas.sql
```

## Arquivos do projeto

- `consultas.sql`: arquivo com as consultas SQL praticadas.
- `README.md`: documentação do projeto.

## Consultas praticadas

### Consultar todos os dados da tabela Customer

```sql
SELECT * FROM Customer;
```

### Selecionar dados da tabela Customer com limite

```sql
SELECT FirstName, LastName, City
FROM Customer
LIMIT 10;
```

### Selecionar artistas por ordem alfabética crescente

```sql
SELECT *
FROM Artist
ORDER BY Name ASC
LIMIT 10;
```

### Selecionar artistas por ordem alfabética decrescente

```sql
SELECT *
FROM Artist
ORDER BY Name DESC
LIMIT 10;
```

### Selecionar tracks por compositor em ordem alfabética crescente

```sql
SELECT *
FROM Track
ORDER BY Composer ASC
LIMIT 10;
```

## Como executar

1. Abrir o DBeaver.
2. Conectar no banco de dados de exemplo SQLite.
3. Abrir o arquivo `consultas.sql`.
4. Executar as consultas SQL no editor do DBeaver.

## Status

Projeto criado para estudos iniciais de SQL com DBeaver.