PRAGMA foreign_keys = ON;

DROP TABLE IF EXISTS Aluno;
CREATE TABLE Aluno (
    id_aluno INTEGER PRIMARY KEY AUTOINCREMENT,
    nome TEXT NOT NULL,
    cpf TEXT NOT NULL UNIQUE,
    matricula TEXT NOT NULL UNIQUE,
    media REAL,
    telefone TEXT,
    id_turma INTEGER,
    FOREIGN KEY (id_turma) REFERENCES Turma(id_turma)
    ON DELETE SET NULL
);

DROP TABLE IF EXISTS Turma;
CREATE TABLE Turma (
    id_turma INTEGER PRIMARY KEY AUTOINCREMENT,
    sigla TEXT NOT NULL,
    curso TEXT CHECK(curso IN ('integrado', 'regular')),
    serie INTEGER
);

INSERT INTO Turma (sigla, curso, serie) VALUES
('DS202', 'integrado', 2),
('1301', 'regular', 3),
('DS302', 'integrado', 3);

INSERT INTO Aluno (nome, cpf, matricula, id_turma) VALUES
('Crystian', '111.111.111-11', 'M02501841', 1);

INSERT INTO Aluno (nome, cpf, matricula, id_turma) VALUES
('Manu', '111.111.111-12', 'M02501842', 1),
('Julio', '111.111.111-13', 'M02501843', 1),
('Renan', '111.111.111-14', 'M02501844',2);

SELECT *
FROM Turma;
SELECT *
FROM Aluno;

UPDATE Aluno
SET 
    telefone = '(21) 99999-9999',
    nome = 'Julio Cesar'
WHERE id_aluno = 3; 

UPDATE Aluno
SET 
    media = 0.0;

SELECT *
FROM Aluno;

DELETE FROM Aluno
WHERE id_aluno = 2; 

/*
DELETE FROM Aluno
WHERE nome LIKE '%u%'; 
*/

SELECT *
FROM Turma;
SELECT *
FROM Aluno;


DELETE FROM Turma
WHERE id_turma = 1;


SELECT *
FROM Aluno;

SELECT *
FROM Turma;

