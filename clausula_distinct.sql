/* A cláusula DISTINCT traz apenas linhas que tenham valores diferentes, eliminando os repetidos */

-- Retorna apenas países diferentes, eliminando clientes repetidos do mesmo país.
SELECT DISTINCT country
FROM customers
ORDER BY country;

-- Retorna apenas combinações diferentes de país e estado.
SELECT DISTINCT country, state
FROM customers
ORDER BY country, state;

-- Retorna apenas combinações diferentes de país, estado e cidade.
SELECT DISTINCT country, state, city
FROM customers
ORDER BY country, state, city;