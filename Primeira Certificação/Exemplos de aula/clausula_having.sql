/* 
A cláusula HAVING tem função semelhante à cláusula WHERE, as diferenças são:
- A clásula WHERE é usada antes do GROUP BY e filtra linhas simples das tabelas.
- A clásula HAVING é usada após o GROUP BY e filtra linhas agrupadas.
*/

-- Exemplo: Liste os títulos e as durações dos álbuns que tenham duração total acima de 60.000 segundos
SELECT albums.Title,
       SUM(tracks.Milliseconds)/1000 as 'Duração em segundos'
FROM tracks
INNER JOIN albums
ON albums.AlbumId = tracks.AlbumId
GROUP BY albums.AlbumId
HAVING SUM(tracks.Milliseconds)/1000 >= 60000
ORDER BY SUM(tracks.Milliseconds) DESC;



