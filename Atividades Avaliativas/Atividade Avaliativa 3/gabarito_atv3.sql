/* Gabarito da Atividade Avaliativa 3 - 0,5 pontos */

-- Questão 1
select *
from tracks
where GenreId in (
    SELECT GenreId
    from genres
    where Name = 'Bossa Nova'
);

-- Questão 2
select *
from invoices
where CustomerId in (
    SELECT CustomerId
    from customers
    where Country = 'Brazil'
);