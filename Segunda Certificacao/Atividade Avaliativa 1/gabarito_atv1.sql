PRAGMA foreign_keys = ON;

-------- CRIAÇÃO DAS TABELAS PEDIDAS NA ATIVIDADE --------

DROP TABLE IF EXISTS Aluno;
CREATE TABLE Aluno (
    id_aluno INTEGER PRIMARY KEY AUTOINCREMENT,
    nome TEXT NOT NULL,
    cpf TEXT NOT NULL UNIQUE,
    matricula TEXT NOT NULL UNIQUE,
    media REAL,
    telefone TEXT,
    id_turma INTEGER NOT NULL,
    FOREIGN KEY (id_turma) REFERENCES Turma(id_turma) 
    ON DELETE CASCADE
);

DROP TABLE IF EXISTS Turma;
CREATE TABLE Turma (
    id_turma INTEGER PRIMARY KEY AUTOINCREMENT,
    sigla TEXT NOT NULL,
    curso TEXT CHECK(curso IN ('integrado', 'regular')),
    serie INTEGER NOT NULL
);

DROP TABLE IF EXISTS Professor;
CREATE TABLE Professor (
    id_professor INTEGER PRIMARY KEY AUTOINCREMENT,
    nome TEXT NOT NULL,
    matricula TEXT NOT NULL UNIQUE,
    disciplina TEXT NOT NULL
);

DROP TABLE IF EXISTS Aula;
CREATE TABLE Aula (
    id_aula INTEGER PRIMARY KEY AUTOINCREMENT,
    id_professor INTEGER NOT NULL,
    id_turma INTEGER NOT NULL,
    dia_da_semana TEXT NOT NULL,
    horario TEXT NOT NULL,
    FOREIGN KEY (id_professor) REFERENCES Professor(id_professor) 
    ON DELETE CASCADE,
    FOREIGN KEY (id_turma) REFERENCES Turma(id_turma) 
    ON DELETE CASCADE
);

-------- INSERÇÃO DOS REGISTROS PEDIDOS NA ATIVIDADE --------

INSERT INTO Turma (sigla, curso, serie)
VALUES ('DS202', 'integrado', 2),
('DS102', 'integrado', 1),
('DS302', 'integrado', 3),
('1201', 'regular', 2),
('1301', 'regular', 3);


INSERT INTO Aluno (nome, telefone, cpf, matricula, id_turma)
VALUES ('Gaby', '(21) 99999-9999', '111.111.111-11', 'M0000001', 2),
       ('Manu','(21) 99999-9999', '111.111.111-12', 'M0000002', 1),
       ('Alicia', '(21) 99999-9999', '111.111.111-13', 'M0000003', 1),
       ('Igor', '(21) 99999-9999', '111.111.111-14', 'M0000004', 2);


INSERT INTO Aluno (nome, cpf, matricula, id_turma)
VALUES ('Aa','111.111.111-15', 'M0000005', 1),
        ('Bb','111.111.111-16', 'M0000006', 1),
        ('Cc','111.111.111-17', 'M0000007', 1),
        ('Dd','111.111.111-18', 'M0000008', 1),
        ('Ee','111.111.111-19', 'M0000009', 2),
        ('Ff','111.111.111-20', 'M0000010', 2),
        ('Gg','111.111.111-21', 'M0000011', 2),
        ('Hh','111.111.111-22', 'M0000012', 3),
        ('Ii','111.111.111-23', 'M0000013', 3),
        ('Jj','111.111.111-24', 'M0000014', 3),
        ('Kk', '111.111.111-25', 'M0000015', 3);

INSERT INTO Professor (nome, matricula, disciplina)
VALUES ('Clécio', '00001', 'Banco de Dados'),
('Ygor', '00002', 'ICC'),
('Judis', '00003', 'LP2'),
('Balthazar', '00004', 'História'),
('Roberta', '00005', 'Português');

INSERT INTO Aula (id_professor, id_turma, dia_da_semana, horario)
VALUES (1, 1, 'Segunda-feira','8h'),
(2, 1, 'Segunda-feira','10h'),
(3, 1, 'Segunda-feira','12h'),
(1, 1, 'Quarta-feira','8h'),
(2, 1, 'Quarta-feira','10h'),
(3, 1, 'Quarta-feira','12h'),

(1, 2, 'Terça-feira','8h'),
(2, 2, 'Terça-feira','10h'),
(3, 2, 'Terça-feira','12h'),
(1, 2, 'Quinta-feira','8h'),
(2, 2, 'Quinta-feira','10h'),
(3, 2, 'Quinta-feira','12h'),

(3, 3, 'Terça-feira','13h'),
(4, 3, 'Terça-feira','14h'),
(5, 3, 'Terça-feira','15h'),
(3, 3, 'Quinta-feira','13h'),
(4, 3, 'Quinta-feira','14h'),
(5, 3, 'Quinta-feira','15h');

-------- CONSULTAS PEDIDAS NA ATIVIDADE --------

-- 1. Liste todos os professores.
SELECT Nome, matricula, disciplina
FROM Professor;

-- 2. Liste todas as turmas.
SELECT *
FROM Turma;

-- 3. Liste os nomes de todos os alunos com as siglas das turmas e séries.
SELECT Aluno.nome, Turma.sigla as "Turma", Turma.serie as "Série"
FROM Aluno
INNER JOIN Turma
ON Aluno.id_turma = Turma.id_turma;

-- 4. Liste todas as aulas com nomes de professores, sigla da turma, disciplina, dia e hora.
SELECT Turma.sigla, Aula.dia_da_semana, Aula.horario, Professor.nome, Professor.disciplina
FROM Aula
INNER JOIN Turma
ON Aula.id_turma = Turma.id_turma
INNER JOIN Professor
ON Aula.id_professor = Professor.id_professor;

-- 5. Liste todos os alunos da turma escolhida, exibindo nome do aluno, matrícula e a turma.
SELECT Aluno.nome, Aluno.matricula, Turma.sigla
FROM Aluno
INNER JOIN Turma
ON Aluno.id_turma = Turma.id_turma
WHERE Aluno.id_turma = 1;

-- 6. Transfira um aluno de outra turma para a turma escolhida e liste novamente os alunos da turma escolhida.
UPDATE Aluno
SET id_turma = 1
WHERE id_aluno = 10;

SELECT Aluno.nome, Aluno.matricula, Turma.sigla
FROM Aluno
INNER JOIN Turma
ON Aluno.id_turma = Turma.id_turma
WHERE Aluno.id_turma = 1;

-- 7. Exclua um aluno da turma escolhida e liste novamente todos os alunos dessa turma.
DELETE FROM Aluno
WHERE id_aluno = 5;

SELECT Aluno.nome, Aluno.matricula, Turma.sigla
FROM Aluno
INNER JOIN Turma
ON Aluno.id_turma = Turma.id_turma
WHERE Aluno.id_turma = 1;

-- 8. Exiba todas as as informações pessoais desse aluno, incluindo sigla da turma, série e curso.
SELECT a.nome, a.cpf, a.matricula, a.telefone, a.media, t.sigla, t.serie, t.curso
FROM Aluno a
INNER JOIN Turma t
ON a.id_turma = t.id_turma
WHERE a.id_aluno = 2;

-- 9. Mude o telefone e a média desse aluno e exiba novamente todas as suas informações.
UPDATE Aluno
SET telefone = "(21) 33333-3333",
    media = 9.5
WHERE id_aluno = 2;

SELECT a.nome, a.cpf, a.matricula, a.telefone, a.media, t.sigla, t.serie, t.curso
FROM Aluno a
INNER JOIN Turma t
ON a.id_turma = t.id_turma
WHERE a.id_aluno = 2;

-- 10. Liste todas as aulas de um determinado professor, exibindo nome do professor, sigla da turma, dia e hora.
SELECT  Professor.nome, Turma.sigla, Aula.dia_da_semana, Aula.horario
FROM Aula
INNER JOIN Turma
ON Aula.id_turma = Turma.id_turma
INNER JOIN Professor
ON Aula.id_professor = Professor.id_professor
WHERE Professor.id_professor = 1;

-- 11. Listar os nomes de todas as turmas e a quantidade de alunos que tem nelas.
SELECT t.sigla as "Turma", COUNT(id_aluno) as "Quantidade de alunos" 
FROM Turma t
LEFT JOIN Aluno a
ON a.id_turma = t.id_turma
GROUP BY t.id_turma;

-- 12. Listar apenas as turmas com mais de cinco alunos.
SELECT t.sigla as "Turma", COUNT(id_aluno) as "Quantidade de alunos" 
FROM Turma t
LEFT JOIN Aluno a
ON a.id_turma = t.id_turma
GROUP BY t.id_turma
HAVING COUNT(id_aluno) > 5;

-- 13. Listar todos os professores que dão aula para uma determinada turma, exibindo nome do professor e disciplina, sem repetir o mesmo professor que dá mais de uma aula.
SELECT DISTINCT Professor.nome, Professor.disciplina 
FROM Aula
INNER JOIN Turma
ON Aula.id_turma = Turma.id_turma
INNER JOIN Professor
ON Aula.id_professor = Professor.id_professor
WHERE Turma.id_turma = 1;

