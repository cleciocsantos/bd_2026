SELECT artists.Name as Artista,
    COUNT(albums.AlbumId) as 'Quantidade de álbuns'
FROM artists
INNER JOIN albums
ON artists.ArtistId = albums.ArtistId
GROUP BY artists.ArtistId
ORDER BY COUNT(albums.AlbumId) DESC;