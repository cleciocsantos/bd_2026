## Atividade Avaliativa 7 - Modelagem e consultas (1,0 ponto - em trios) 
Você foi contratado para modelar parte de um sistema de biblioteca. O sistema precisa armazenar informações sobre autores, livros e empréstimos realizados para usuários. Cada livro tem um autor, mas cada autor pode escrever vários livros. Cada usuário pode pegar vários livros emprestados e cada livro pode estar emprestado para vários usuários. De cada livro, nos interessa saber título e ano de publicação. De cada autor, seu nome. De cada usuário, nome e e-mail. E de cada empréstimo, a data do empréstimo e a data da devolução.

* Monte o diagrama de Entidade-Relacionamento (entidades, relacionamentos, atributos e razões de cardinalidade) no Draw.io e exporte como imagem para a sua pasta. Nomeie o arquivo como biblioteca_der.png.
* Faça o mapeamento do diagrama para as tabelas do Modelo Relacional (indicando as chaves primárias e as chaves estrangeiras e utilizando a notação pé de galinha) no Draw.io e exporte como imagem para a sua pasta. Nomeie o arquivo como biblioteca_esquema.png.
* Crie as tabelas no Excel e Insira 4 autores, 8 livros, 3 usuários e 5 empréstimos. Salve o arquivo como biblioteca.xlsx na sua pasta.
* Converta o arquivo do Excel para um banco de dados SQLite executando o código converter.py no Python.
* Crie o arquivo biblioteca.sql e realize as seguintes consultas:
    * Liste todos os livros com seus respectivos autores.
    * Liste apenas os livros publicados depois de 2010.
    * Mostre quais usuários realizaram empréstimos e os títulos dos livros emprestados.
    * Liste os empréstimos que ainda não foram devolvidos.
    * Conte quantos livros cada autor possui cadastrados.

**Atenção:** ao final da atividade, os arquivos biblioteca_der.png, biblioteca_esquema.png, biblioteca.xlsx, biblioteca.db e biblioteca.sql devem ser compactados e enviados por e-mail ao professor. No assunto do e-mail, colocar BD - ATV 7. No corpo do e-mail, escrever os nomes do grupo que fez a atividade.

