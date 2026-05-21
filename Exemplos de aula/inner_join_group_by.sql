/* Liste os nomes dos álbuns e a quantidade de músicas em cada um deles */

SELECT 
    Title as Título,
    COUNT(TrackId) as 'Quantidade de Músicas'
FROM albums
INNER JOIN tracks
ON albums.AlbumId = tracks.AlbumId
GROUP BY albums.AlbumId;
