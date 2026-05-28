/*
LEFT JOIN é um comando que junta tabelas incluindo as linhas da primeira tabela que não tenham correspondência na segunda tabela. Exemplo genérico:

SELECT *
FROM tabela1
LEFT JOIN tabela2
ON tabela1.colunaX = tabela2.colunaX

A consulta acima vai trazer todas as linhas da tabela1, incluindo as linhas que não tenham um valor de colunaX correspondente na tabela2.

*/

-- Na consulta abaixo, os artistas que não tem álbum também são incluídos na resposta.
SELECT albums.Title as Álbum , 
artists.Name as Artista
FROM artists
LEFT JOIN albums
ON albums.ArtistId = artists.ArtistId
WHERE artists.Name LIKE '%ão%';

-- Na consulta abaixo, os funcionários (employees) que não dão suporte a clientes (customers) também são incluídos na resposta.
SELECT employees.FirstName  || ' ' || employees.LastName as Funcionário,
    COUNT(customers.CustomerId) as 'Quantidade de clientes'
FROM employees
LEFT JOIN customers
ON customers.SupportRepId = employees.EmployeeId
GROUP BY employees.EmployeeId
ORDER BY COUNT(customers.CustomerId) DESC;