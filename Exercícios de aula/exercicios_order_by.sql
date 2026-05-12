/* Lista de exercícios feitos em sala para praticar ORDER BY e LIMIT OFFSET. */

-- Questão 1: Liste os genêros musicais.
SELECT *
FROM genres;

-- Questão 2: Liste os clientes ordenados por país, estado e cidade.
SELECT FirstName, country, state, city
FROM customers
ORDER BY country, state, city;

-- Questão 3: Liste o ranking das 10 músicas mais caras, exibindo apenas nome e preço unitário.
SELECT Name, UnitPrice
FROM tracks
ORDER BY UnitPrice DESC
LIMIT 10;

-- Questão 4: Liste os 3 funcionários mais antigos da empresa, exibindo apenas nome completo, título e data de contratação.
SELECT FirstName || ' ' || LastName as Nome_Completo, Title, HireDate
FROM employees
ORDER BY HireDate
LIMIT 3;

-- Questão 5: Liste o nome da quinta música mais longa.
SELECT Name
FROM tracks
ORDER BY Milliseconds DESC
LIMIT 1 OFFSET 4;