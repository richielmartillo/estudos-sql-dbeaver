SELECT * FROM Customer ;

-- Selecionar dados da tabela cliente com limite
SELECT FirstName, LastName, City 
FROM Customer
LIMIT 10;

-- Selecionar artistas por ordem alfabética ascendente
SELECT * 
FROM Artist 
ORDER BY Name ASC
LIMIT 10;

-- Selecionar artistas por ordem alfabética decrescente
SELECT * 
FROM Artist 
ORDER BY Name DESC
LIMIT 10;

-- Selecionar track por compositor em ordem alfabética crescente
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
