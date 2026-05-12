/* Exercícios do dia 12/05/2026 - LIKE, BETWEEN e NOT BETWEEN */

-- Exercício 1: Liste os artistas que começam com a letra A.
SELECT Name
FROM artists
WHERE Name LIKE 'A%';

-- Exercício 2: Liste os clientes com sobrenomes terminados em 't'.
SELECT FirstName, LastName
FROM customers
WHERE LastName LIKE '%t';

-- Exercício 3: Liste as músicas que tem 'Of' no nome.
SELECT Name
FROM tracks
WHERE Name LIKE '%Of%';

-- Exercício 4: Liste os clientes que o primeiro nome começa com 'E' e o sobrenome termina com 's'.
SELECT FirstName, LastName
FROM customers
WHERE 
    FirstName LIKE 'E%' AND 
    LastName LIKE '%s';

-- Exercício 5: Liste as músicas dos álbuns de id entre 4 e 7.
SELECT Name, AlbumId
FROM tracks
WHERE AlbumId BETWEEN 4 AND 7;

-- Exercício 6: Liste os funcionários que não nasceram entre 1960 e 1970.
SELECT FirstName, LastName, BirthDate
FROM employees
WHERE BirthDate NOT BETWEEN '1960-01-01' AND '1970-12-31';