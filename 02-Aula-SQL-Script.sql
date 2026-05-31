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

SELECT *
FROM Genre 
WHERE Name like 'MPB'

-- Inserir o genero MPB na tabela genre
INSERT INTO Genre (GenreId, Name)
VALUES (NULL, 'MPB')

-- Genero ID : 26
SELECT *
FROM Artist 
WHERE Name like 'Toquinho'

-- Inserir o artista Toquinho
INSERT INTO Artist (Name)
VALUES ('Toquinho')

-- Artist: 278
SELECT *
FROM Track
where GenreId = 26

-- Inserir músicas do Toquinho
INSERT INTO Track  
VALUES 
(NULL, 'Aquarela', NULL, 1, 26, 'Toquinho', 200000, 6713451, 0.99),
(NULL, 'Onde anda você', NULL, 1, 26, ' Toquinho e Vinicius de Morais', 300000, 6713451, 1.99),
(NULL, 'Regra Três', NULL, 1, 26, 'Toquinho', 200000, 6713451, 0.99)

SELECT *
FROM Track
-- WHERE GenreId = 26
WHERE Composer like 'Toquinho%'

-- Cadastrar album do Toquinho
SELECT *
FROM Album
WHERE Title like '%Toquinho'

-- Album ID 348
 
-- Inserir album
INSERT INTO Album 
VALUES (NULL, 'As melhores de Toquinho', 278) 

-- UPDATE

-- Atualizar o album id para as músicas do Toquinho
UPDATE Track 
SET AlbumId = 348
WHERE AlbumId IS NULL
AND Composer like 'Toquinho%'

-- Atualizar o tempo, tamanho e preço da música Regra três
UPDATE Track
SET Milliseconds = 450000,
        Bytes = 8000000,
        UnitPrice = 2.99
WHERE TrackId = 3506

SELECT *
FROM  Track
WHERE TrackId = 3506

-- DELETE ou Exclusão de dados

SELECT * 
FROM Invoice
WHERE Total >= 20
AND BillingState IS NOT NULL

-- Excluir faturas que são maiores ou iguais a 20 e o estado do faturamento não seja vazio

DELETE 
FROM invoice
WHERE Total >= 20
AND BillingState IS NOT NULL 

-- Excluir fatura com o id 404
DELETE
FROM Invoice
WHERE InvoiceId = 404

SELECT *
FROM Invoice
WHERE BillingPostalCode IS NULL

-- Excluir todas as faturas onde CEP de cobrança é nulo ou vazio
DELETE 
FROM Invoice
WHERE BillingPostalCode IS NULL

-- JOIN - Junção de tabelas
SELECT  COUNT (*)
FROM Album

-- Forma errada de juntar as tabelas
SELECT  COUNT (*)
FROM Artist, Album

-- Selecionar o título do album relacionado com o nome do artista
SELECT
           Album.Title,
           Artist.Name
FROM Album 
INNER JOIN Artist
           ON Album.ArtistId = Artist.ArtistId
WHERE Name like 'Iron Maiden'

-- Selecionar o título do album relacionado com o nome do artista e as músicas do album
SELECT
           Album.Title as 'Título do Album',
           Artist.Name  as 'Nome do Artista',
           Track.Name  as 'Nome da música',
           Track.Composer as 'Nome do compositor '
FROM Album 
INNER JOIN Artist
           ON Album.ArtistId = Artist.ArtistId
INNER JOIN Track 
           ON Album.AlbumId = Track.AlbumId
           
SELECT * FROM Track LIMIT 1           

-- CRIAR UMA TABELA

-- Criar uma tabela de Artista Favorito
CREATE TABLE ArtistaFavorito (
          favoritoId INTEGER PRIMARY KEY AUTOINCREMENT, 
          ArtistId INTEGER NOT NULL,
          Usuario VARCHAR (50),
          FOREIGN KEY (ArtistId) REFERENCES Artist(ArtistId)
);

SELECT *
FROM ArtistaFavorito

SELECT *
FROM Artist
WHERE ArtistId = 1

-- Popular tabela Artista Favorito
INSERT INTO ArtistaFavorito (ArtistId, Usuario)
VALUES (1, 'Richard'),
               (276, 'Ramón'),
               (50, 'Gabriela'),
               (45, 'Juana'),
               (270, 'Ana')
               
-- Consultar o artista favorito de cada usuário
SELECT               
            af.Usuario as 'Nome do usuário',
            a.Name as 'Nome do artista favoritado'
FROM ArtistaFavorito af
INNER JOIN Artist a 
           ON af.ArtistId = a.ArtistId 
           
-- Excluir uma tabela do meu banco de dados.           
DROP TABLE ArtistaFavorito           
