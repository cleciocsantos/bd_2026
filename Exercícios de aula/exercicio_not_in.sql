/*
    Exercício: Liste todos os clientes que não são de São Paulo e nem do Rio de Janeiro (cidades). 
    Mostre nome, cidade e estado.
*/

SELECT FirstName, LastName, City, State
from customers
WHERE City NOT IN ('São Paulo', 'Rio de Janeiro')
ORDER BY state DESC, city;