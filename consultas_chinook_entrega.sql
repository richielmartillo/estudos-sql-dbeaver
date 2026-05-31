-- 1. Selecione todos os registros da tabela de artistas, ordenando pelo nome em ordem alfabética.
SELECT *
FROM Artist
ORDER BY Name ASC;


-- 2. Liste todas as músicas com duração maior que 5 minutos.
SELECT *
FROM Track
WHERE Milliseconds > 300000;


-- 3. Selecione todas as músicas do gênero Rock.
SELECT Track.Name AS Musica,
       Genre.Name AS Genero
FROM Track
INNER JOIN Genre
ON Track.GenreId = Genre.GenreId
WHERE Genre.Name = 'Rock';


-- 4. Liste os álbuns junto com o nome do artista correspondente.
SELECT Album.Title AS Album,
       Artist.Name AS Artista
FROM Album
INNER JOIN Artist
ON Album.ArtistId = Artist.ArtistId;


-- 5. Selecione todas as músicas que pertencem ao álbum "Let There Be Rock".
SELECT Track.Name AS Musica,
       Album.Title AS Album
FROM Track
INNER JOIN Album
ON Track.AlbumId = Album.AlbumId
WHERE Album.Title = 'Let There Be Rock';


-- 6. Liste os clientes que moram no Brasil.
SELECT *
FROM Customer
WHERE Country = 'Brazil';


-- 7. Exiba o total de músicas por gênero, ordenando do maior para o menor.
SELECT Genre.Name AS Genero,
       COUNT(Track.TrackId) AS Total_Musicas
FROM Genre
INNER JOIN Track
ON Genre.GenreId = Track.GenreId
GROUP BY Genre.Name
ORDER BY Total_Musicas DESC;


-- 8. Selecione todas as músicas que possuem a palavra "Love" no nome.
SELECT *
FROM Track
WHERE Name LIKE '%Love%';