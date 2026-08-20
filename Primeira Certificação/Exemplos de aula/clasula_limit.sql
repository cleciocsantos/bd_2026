/* A cláusula LIMIT informa quantos registros devem retornar na consulta.
   Opcionalmente, pode incluir a clásula OFFSET para informar quantos registros devem ser pulados antes dos que serão exibidos.
   Exemplo: LIMIT 5 OFFSET 3 significa que devem ser exibidos 5 registros, pulando os 3 primeiros.
*/ 

-- Retorna as 10 músicas mais longas.
select name, composer, milliseconds
from tracks
order by milliseconds DESC
LIMIT 10;

-- Retorna as cinco músicas menores em bytes
select name, composer, milliseconds
from tracks
order by bytes ASC
LIMIT 5;

-- Retorna as próximas cinco músicas (da sexta à décima) menores em bytes
select name, composer, milliseconds, bytes
from tracks
order by bytes ASC
LIMIT 5 OFFSET 5;

-- Retorna apenas a nona música de menor tamanho em bytes
select name, composer, milliseconds, bytes
from tracks
order by bytes ASC
LIMIT 1 OFFSET 8;