SELECT albums.Title,
       SUM(tracks.Milliseconds)/1000 as 'Duração em segundos'
FROM tracks
INNER JOIN albums
ON albums.AlbumId = tracks.AlbumId
GROUP BY albums.AlbumId
ORDER BY SUM(tracks.Milliseconds) DESC;