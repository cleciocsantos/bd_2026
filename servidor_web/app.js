const express = require('express');
const path = require("path");

const app = express();
const port = 8080;

// Middleware
// app.use(express.urlencoded({ extended: false }));
// app.use(express.json());
// app.use(express.static(path.join(__dirname, "public")));

app.get('/', (req, res) => {
  res.send(`
    <h1>Leitura de parâmetros na URL</h1>
    <p> Experimente escrever ao final da URL:</p>
    <ul>
        <li>/users/<strong>:userId</strong> => substituindo <strong>:userId</strong> por um número</li>
        <li>/users/<strong>:userId</strong>/posts/<strong>:postId</strong> => substituindo <strong>:userId</strong> e <strong>:postId</strong> por números</li>
    </ul>
    `);
});

// Rota com um parâmetro na URL
app.get('/users/:userId', (req, res) => {
  res.send(`Perfil do usuario de ID: ${req.params.userId}`);
});

// Rota com vários parâmetros na URL
app.get('/users/:userId/posts/:postId', (req, res) => {
  res.send(`
    <h2>Informação do Usuário e do Post</h2>
    <p>User ID: ${req.params.userId}</p>
    <p>Post ID: ${req.params.postId}</p>
  `);
});

// Rota para listar turmas (com filtro opcional por sigla)
// app.get("/api/turmas", (req, res) => {
//   let sql = `
//     [CONSULTA SQL PARA LISTAR TODAS AS TURMAS AQUI]
//   ` ;
//   db.all(
//     sql,
//     (err, rows) => {
//       if (err) {
//         console.log(err);
//         return res.status(500).json({ error: "Erro ao consultar turmas" });
//       }
//       res.json(rows);
//     }
//   );
// });


app.listen(port, () => {
  console.log(`App de exemplo escutando em http://localhost:${port}`);
});