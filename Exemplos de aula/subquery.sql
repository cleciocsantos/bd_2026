/* Abaixo segue um passo a passo até chegar numa subconsulta */

-- Retornando todos os artistas e observando seus ids
SELECT *
FROM artists;

-- Retornando todas as colunas dos álbuns que tem o ArtistId = 12
SELECT *
FROM albums
WHERE artistId = 12;

-- Agora retornando apenas a coluna AlbumId dos mesmos álbuns da consulta anterior
SELECT AlbumId
FROM albums
WHERE artistId = 12;

-- Aqui usando manualmente os AlbumId encontrados na consulta anterior para filtrar as músicas destes álbuns
SELECT name, AlbumId
from tracks
WHERE AlbumId in (16, 17);

-- Agora realizando uma subconsulta que encontra os AlbumId na tabela de álbuns e depois utiliza eles como filtro na tabela de músicas
SELECT name, AlbumId
from tracks
WHERE AlbumId in (
    SELECT AlbumId
    FROM albums
    WHERE artistId = 12
);

-- Exemplo: Listar todas as músicas do álbum 'Da Lama Ao Caos'
SELECT name, AlbumId
from tracks
WHERE AlbumId in (
    SELECT AlbumId
    FROM albums
    WHERE title = 'Da Lama Ao Caos'
);

