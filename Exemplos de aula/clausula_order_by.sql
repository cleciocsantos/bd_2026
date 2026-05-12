-- Retorna nome, duração e albumid das músicas, ordenadas primeiro pelo albumid em ordem crescente e depois pela duração em ordem decrescente.
select name, milliseconds, albumid
FROM tracks
ORDER BY
    albumid ASC,
    milliseconds DESC;