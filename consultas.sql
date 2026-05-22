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
