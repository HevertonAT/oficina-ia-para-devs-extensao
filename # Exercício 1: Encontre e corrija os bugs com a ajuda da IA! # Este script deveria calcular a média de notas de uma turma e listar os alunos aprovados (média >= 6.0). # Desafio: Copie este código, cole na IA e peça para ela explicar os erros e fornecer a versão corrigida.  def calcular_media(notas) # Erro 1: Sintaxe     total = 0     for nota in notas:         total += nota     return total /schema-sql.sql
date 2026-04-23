-- Exercício 2: Otimização e Geração de Consultas com IA
-- Execute este script (no PostgreSQL ou DBeaver) para criar o ambiente do exercício.

-- DESAFIO PARA A OFICINA: 
-- Copie a estrutura destas tabelas e peça para a IA:
-- "Crie uma consulta SQL que retorne o nome do curso, o nome do aluno e a média final de suas notas, 
-- mas mostre apenas os alunos que tiveram uma média superior a 7.0. Ordene da maior média para a menor."

CREATE TABLE cursos (
    id_curso SERIAL PRIMARY KEY,
    nome_curso VARCHAR(100) NOT NULL,
    carga_horaria INT NOT NULL
);

CREATE TABLE alunos (
    id_aluno SERIAL PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    id_curso INT REFERENCES cursos(id_curso)
);

CREATE TABLE notas (
    id_nota SERIAL PRIMARY KEY,
    id_aluno INT REFERENCES alunos(id_aluno),
    disciplina VARCHAR(100) NOT NULL,
    valor DECIMAL(5,2) NOT NULL
);

-- Inserindo dados fictícios para os testes
INSERT INTO cursos (nome_curso, carga_horaria) VALUES 
('Técnico em Informática', 1200),
('Técnico em Redes', 1000);

INSERT INTO alunos (nome, email, id_curso) VALUES 
('Lucas Silva', 'lucas@email.com', 1),
('Mariana Costa', 'mariana@email.com', 1),
('Pedro Alves', 'pedro@email.com', 2);

INSERT INTO notas (id_aluno, disciplina, valor) VALUES 
(1, 'Lógica de Programação', 8.5),
(1, 'Banco de Dados', 9.0),
(2, 'Lógica de Programação', 5.5),
(2, 'Banco de Dados', 6.0),
(3, 'Redes de Computadores', 7.5),
(3, 'Sistemas Operacionais', 8.0);
