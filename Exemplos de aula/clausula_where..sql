/* A clásula WHERE determina condições que devem ser atentidas para os registros serem selecionados */

-- Retorna apenas clientes do estado SP.
SELECT firstname, state
FROM customers
WHERE state = 'SP';

-- Retorna clientes que sejam do estado SP ou do estado RJ.
SELECT firstname, state
FROM customers
WHERE state = 'SP' OR state = 'RJ';

-- Retorna clientes que sejam do estado SP, do estado RJ ou do estado DF.
SELECT firstname, state
FROM customers
WHERE state IN ('SP','RJ','DF');

-- Retorna apenas músicas do álbum cujo id é 1.
SELECT name, Milliseconds, AlbumId
FROM tracks
WHERE AlbumId = 1;

-- Retorna apenas músicas com duração acima de 250000 millisegundos.
SELECT name, Milliseconds, AlbumId
FROM tracks
WHERE Milliseconds > 250000;

-- Retorna apenas músicas do álbum cujo id é 1 e que tenham duração acima de 250000 millisegundos.
SELECT name, Milliseconds, AlbumId
FROM tracks
WHERE AlbumId = 1 AND Milliseconds > 250000;

-- Exercício de final de aula: Liste as músicas do compositor Billy Corgan que tenham tamanho menor que 9.000.000 bytes.
SELECT name, COMPOSER, Bytes
FROM tracks
WHERE Composer = 'Billy Corgan' and Bytes < 9000000
ORDER BY name;