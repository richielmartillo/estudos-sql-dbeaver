SELECT * FROM Customer ;

-- Selecionar dados da tabela cliente com limite
SELECT FirstName, LastName, City 
FROM Customer
LIMIT 10;

--Selecionar artistas por ordem alfabetica Ascendente
SELECT * 
FROM Artist 
ORDER BY Name ASC
LIMIT 10;

--Selecionar artistas por ordem alfabetica Decrescente
SELECT * 
FROM Artist 
ORDER BY Name DESC
LIMIT 10;

--Selecionar track por ordem alfabetica Decrescente
SELECT * 
FROM Track
ORDER BY Composer ASC
LIMIT 10;

-- Selecionar clienetes de uma cidade específica
SELECT * 
FROM Customer
WHERE City = 'São Paulo';

-- Selecionar clientes de um país específico
SELECT FirstName, LastName, Country
FROM Customer 
WHERE Country = 'Brazil';

SELECT * 
FROM Invoice
WHERE Total < 1.98

-- Selecionar faturas com filtro de país e estado
SELECT *
FROM Invoice 
WHERE BillingCountry = 'Brazil'
AND BillingState = 'SP'
AND Total >= 5.00

-- Selecionar faturas do estado de SP ou do RJ
SELECT *
FROM Invoice
WHERE BillingState = 'SP'
OR BillingState = 'RG'
ORDER BY BillingState ASC


-- Selecionar clientes de São Paulo usando like
SELECT *
FROM Customer
WHERE City like  'São Paulo'


-- Selecionar clientes de cidades que momeçãm com  são 
SELECT *
FROM Customer
WHERE City like  'são%'

-- Selecionar todo os emails que tenha a palavra yahoo
SELECT *
FROM Customer
WHERE Email like '%yahoo%'

-- Selecionar todos os clientes do Brasil
SELECT *
FROM Customer
WHERE Country like '_razil'


--Selecionar track por ordem alfabetica Crescente que o compositor não seja vazio
SELECT * 
FROM Track
WHERE Composer IS NOT NULL
ORDER BY Composer ASC;

--Selecionar track por ordem alfabetica Crescente que o compositor não seja vazio
SELECT * 
FROM Track
WHERE Composer IS NULL
ORDER BY Name ASC;

-- Selecionar músicas que estem no valor entre 2 e 5.00
SELECT *
FROM Track 
WHERE Milliseconds  BETWEEN 100000 AND  300000

-- Selecionar todos os clientes Que estão no Brasil, Canada ou  USA
SELECT *
FROM Customer
WHERE Country IN ('Brazil', 'USA', 'Canada')


-- Selecionar todos os clientes Que não estão no Brasil Canada ou USA
SELECT *
FROM Customer
WHERE Country NOT IN ('Brazil', 'USA', 'Canada')

