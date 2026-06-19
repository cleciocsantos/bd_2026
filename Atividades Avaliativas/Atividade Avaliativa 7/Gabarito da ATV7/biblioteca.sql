-- 1
SELECT livro.titulo as Livro, 
       autor.nome AS Autor
FROM livro
INNER JOIN autor ON livro.autorId = autor.autorId;

-- 2
SELECT livro.titulo as Livro, 
       livro.anoPublicacao as 'Ano de Publicação'
FROM livro
WHERE livro.anoPublicacao > 2010;

-- 3
SELECT usuario.nome as Usuário, 
       livro.titulo as 'Livro Emprestado'
FROM emprestimo
INNER JOIN usuario ON emprestimo.usuarioId = usuario.usuarioId
INNER JOIN livro ON emprestimo.livroId = livro.livroId;

-- 4
SELECT usuario.nome as Usuário, 
       livro.titulo as 'Livro Emprestado', 
       emprestimo.dataEmp as 'Data de Empréstimo'
FROM emprestimo
INNER JOIN usuario ON emprestimo.usuarioId = usuario.usuarioId
INNER JOIN livro ON emprestimo.livroId = livro.livroId
WHERE emprestimo.dataDev IS NULL;

-- 5
SELECT autor.nome as Autor, 
       COUNT(livro.livroId) AS 'Quantidade de Livros'
FROM autor
LEFT JOIN livro ON autor.autorId = livro.autorId
GROUP BY autor.autorId;