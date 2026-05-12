/* A cláusula LIKE serve para filtrar por partes de um texto. 
   O símbolo % indica uma sequência de 0 ou vários caracteres.
   O símbolo _ indica um único caractere.
*/ 

-- A consulta abaixo retorna músicas cujos nomes iniciam com 'Wild'.
SELECT
	trackid,
	name	
FROM
	tracks
WHERE
	name LIKE 'Wild%';

-- A consulta abaixo retorna músicas cujos nomes finalizam com 'Wild'.
SELECT
	trackid,
	name	
FROM
	tracks
WHERE
	name LIKE '%Wild';


-- A consulta abaixo retorna músicas que possuem 'Wild' em alguma parte do nome, não necessariamente no início ou no fim.
SELECT
	trackid,
	name	
FROM
	tracks
WHERE
	name LIKE '%Wild%';

-- A consulta abaixo retorna músicas que possuem em alguma parte do nome a letra 'B', seguida de um caractere, seguido da letra 'd'.
-- Ou seja, retorna músicas que tenham, por exemplo, "bad" ou "bod" no nome.
SELECT
	trackid,
	name
FROM
	tracks
WHERE
	name LIKE '%B_d%';