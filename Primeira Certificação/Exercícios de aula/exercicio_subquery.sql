/* Exercícios do dia 14/05/2026 - Subconsulta */

-- Exercício 1: Liste os álbuns dos artistas que tem nome iniciado com "Chico".
SELECT *
from albums
WHERE artistid in (
    select artistid
    from artists
    where name like "Chico%"
);

