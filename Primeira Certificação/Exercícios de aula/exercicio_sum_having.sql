/* 
    Exercícios para praticar a função SUM (que calcula a soma) e a cláusula HAVING (que filtra linhas de um grupo).
*/

-- Exercício 1: Liste os nomes dos clientes e a soma dos totais das suas faturas, ordenando do maior para o menor valor somado das faturas.
SELECT customers.FirstName || ' ' || customers.LastName as Cliente, 
    SUM(invoices.Total) as 'Soma das faturas'
FROM customers
INNER JOIN invoices
ON customers.CustomerId = invoices.CustomerId
GROUP BY invoices.CustomerId
ORDER BY SUM(invoices.Total) DESC;

-- Exercício 2: Repita a consulta anterior, listando somente os clientes que tenham faturas acumuladas entre 38.00 e 40.00.
SELECT customers.FirstName || ' ' || customers.LastName as Cliente, 
    SUM(invoices.Total) as 'Soma das faturas'
FROM customers
INNER JOIN invoices
ON customers.CustomerId = invoices.CustomerId
GROUP BY invoices.CustomerId
HAVING SUM(invoices.Total) BETWEEN 38.00 AND 40.00
ORDER BY SUM(invoices.Total) DESC;

-- Exercício 3: Liste todos os artistas que não possuem nenhum álbum
SELECT artists.Name
FROM artists
LEFT JOIN albums
ON artists.ArtistId = albums.ArtistId
WHERE AlbumId IS NULL; -- essa linha substitui a necessidade das duas linhas abaixo.
/* GROUP BY artists.ArtistId
HAVING COUNT(albums.AlbumId) = 0; */

