/* 
  Seguem abaixo exemplos de consultas no banco de dados chinook.db com a descrição do que as consultas retornam.
*/

-- Retorna a tabela de álbuns inteira, com todas as suas colunas.
select *
from albums;

-- Retorna a tabela de músicas inteira, com todas as suas colunas.
select *
from tracks;

-- Retorna o nome, o compositor e a duração de todas as músicas.
select name, composer, milliseconds
from tracks;

-- Retorna o nome, o compositor e a duração de todas as músicas, em ordem crescente de nome.
select name, composer, milliseconds
from tracks
order by name;

-- Retorna o nome, o compositor e a duração de todas as músicas, em ordem decrescente de duração.
select name, composer, milliseconds
from tracks
order by milliseconds DESC;