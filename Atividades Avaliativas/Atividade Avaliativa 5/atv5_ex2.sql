SELECT albums.Title as Álbum , 
artists.Name as Artista
FROM albums
INNER JOIN artists
ON albums.ArtistId = artists.ArtistId
WHERE artists.Name LIKE '%ão%';