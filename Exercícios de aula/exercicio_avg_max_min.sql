/* Exercícios para praticar as seguintes funções:
    AVG - calcula a média
    MAX - encontra o maior valor
    MIN - encontra o menor valor
*/

-- Exercício 1: Liste os nomes dos clientes e a média dos totais das suas faturas, ordenando do maior para o menor valor médio das faturas.
SELECT customers.FirstName || ' ' || customers.LastName as Cliente, 
    ROUND(AVG(invoices.Total), 2) as 'Média das faturas'
FROM customers
INNER JOIN invoices
ON customers.CustomerId = invoices.CustomerId
GROUP BY invoices.CustomerId
ORDER BY AVG(invoices.Total) DESC;

-- Exercício 2: Liste os nomes dos clientes e o valor da sua fatura mais cara, ordenando do maior para o menor.
SELECT customers.FirstName || ' ' || customers.LastName as Cliente, 
    MAX(invoices.Total) as 'Fatura mais cara'
FROM customers
INNER JOIN invoices
ON customers.CustomerId = invoices.CustomerId
GROUP BY invoices.CustomerId
ORDER BY MAX(invoices.Total) DESC;

-- Exercício 3: Liste os nomes dos clientes e o valor da sua fatura mais barata, ordenando do maior para o menor.
SELECT customers.FirstName || ' ' || customers.LastName as Cliente, 
    MIN(invoices.Total) as 'Fatura mais barata'
FROM customers
INNER JOIN invoices
ON customers.CustomerId = invoices.CustomerId
GROUP BY invoices.CustomerId
ORDER BY MIN(invoices.Total) DESC;

-- Exercício 4: Liste os nomes dos clientes e a diferença entre a suafatura mais carae a mais barata, ordenando do maior para o menor.
SELECT customers.FirstName || ' ' || customers.LastName as Cliente, 
    MAX(invoices.Total) - MIN(invoices.Total) as 'Diferença entre mais cara e mais barata'
FROM customers
INNER JOIN invoices
ON customers.CustomerId = invoices.CustomerId
GROUP BY invoices.CustomerId
ORDER BY MAX(invoices.Total) - MIN(invoices.Total)  DESC;