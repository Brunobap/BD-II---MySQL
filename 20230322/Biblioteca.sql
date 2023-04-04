CREATE DATABASE IF NOT EXISTS Biblioteca;
USE Biblioteca;

-- DCL - Criação de tabelas
/*CREATE TABLE IF NOT EXISTS Editora (
	Codigo int PRIMARY KEY,
    Nome varchar(10) NOT NULL,
    Contato varchar(10)
);
CREATE TABLE IF NOT EXISTS Autores (
	Codigo int PRIMARY KEY,
    Nome varchar(10) NOT NULL,
    Nacionalidade varchar(10)
);
CREATE TABLE IF NOT EXISTS Funcionarios (
	CPF varchar(8) PRIMARY KEY,
    Nome varchar(10) NOT NULL,
    Funcao varchar(15) NOT NULL,
    Salario float NOT NULL
);
CREATE TABLE IF NOT EXISTS Livros (
	Codigo int PRIMARY KEY,
    Titulo varchar(10) NOT NULL,
    Edicao int NOT NULL,
    Genero varchar(10),
    AnoPublicacao int NOT NULL,
    CodigoEditora int,
    FOREIGN KEY (CodigoEditora) REFERENCES Editora (Codigo)
);
CREATE TABLE IF NOT EXISTS Usuarios (
	CPF varchar(8) PRIMARY KEY,
    Nome varchar(10) NOT NULL,
    Endereco varchar(30) NOT NULL,
    Telefone varchar(20) NOT NULL,
    CodigoLivro int NOT NULL,
    FOREIGN KEY (CodigoLivro) REFERENCES Livros (Codigo)
);
CREATE TABLE IF NOT EXISTS Escreve (
	CodigoLivro int NOT NULL,
    CodigoAutor int NOT NULL,
    PRIMARY KEY (CodigoLivro, CodigoAutor),
    FOREIGN KEY (CodigoLivro) REFERENCES Livros (Codigo),
    FOREIGN KEY (CodigoAutor) REFERENCES Autores (Codigo)
);
CREATE TABLE IF NOT EXISTS Retirar (
	CPF varchar(8) NOT NULL,
    CodigoLivro int NOT NULL,
    PRIMARY KEY (CPF, CodigoLivro),
    FOREIGN KEY (CodigoLivro) REFERENCES Livros (Codigo),
    FOREIGN KEY (CPF) REFERENCES Usuarios (CPF)
);
CREATE TABLE IF NOT EXISTS RetirarFuncionario (
	CPFFuncionario varchar(8) NOT NULL,
    CodigoLivro int NOT NULL,
    PRIMARY KEY (CPFFuncionario, CodigoLivro),
    FOREIGN KEY (CodigoLivro) REFERENCES Livros (Codigo),
    FOREIGN KEY (CPFFuncionario) REFERENCES Funcionarios (CPF)
);*/

-- DML - Manipulação de tabelas
/*INSERT INTO Editora VALUES 
	(1, "Nova", "Ana"), (2, "Atual", null), (3, "Moderna", null);
INSERT INTO Autores VALUES 
	(1, "Luiz", null), (2, "Antonio", null), (3, "Laura", null);
INSERT INTO Livros VALUES 
	(1, "A Terra", 1, "Romance", 2020, 1), (2, "A Lua", 1, "Terror", 2020, 1), (3, "O Mar", 1, null, 2020, 3);
INSERT INTO Funcionarios VALUES
	("345.678", "Ana", "Recepcionista", 2000.00), ("044.033", "Silvia", "DBA", 1000.00), ("098.890", "Maria", "TI", 1500.00);
INSERT INTO RetirarFuncionario VALUES
	("044.033", 1), ("345.678", 1), ("345.678", 3);
INSERT INTO Usuarios VALUES
	("123.456", "Ana", "Rua A, 10", "3712-1010", 1), ("789-999", "Maria", "Rua WJ, 30", "3722-2020", 1),
    ("876.985", "José", "Rua Dois, 33", "3713-9090", 2);
 INSERT INTO Retirar VALUES
	("123.456", 1), ("789-999", 1), ("789-999", 3);
INSERT INTO Escreve VALUES
	(1, 2), (1, 1), (3,1);*/
    
-- DQL - Consulta de dados
-- 1. Liste os nomes, função e salários dos funcionários que são TI.
SELECT Nome, Funcao, Salario FROM Funcionarios WHERE Funcao = "TI";

-- 2. Selecione os títulos e gêneros dos livros lançados em 2020.
SELECT Titulo, Genero FROM Livros WHERE AnoPublicacao = 2020;

-- 3. Selecione os nomes dos funcionários que salario maior que R$1.000,00.
SELECT Nome FROM Funcionarios WHERE Salario > 1000.00;

-- 4. Selecione os nomes dos funcionários que salario menor ou igual R$1.500,00.
SELECT Nome FROM Funcionarios WHERE Salario <= 1500.00;

-- 5. Selecione nomes dos funcionários que tem sobrenome que começam com M ou S.
/* ALTER TABLE Funcionarios ADD Sobrenome varchar(20);
 UPDATE Funcionarios SET Sobrenome="Silva" WHERE Nome="Beatriz";
 UPDATE Funcionarios SET Sobrenome="Marrocos" WHERE Nome="Silvia";
 UPDATE Funcionarios SET Sobrenome="Jacinto" WHERE Nome="Maria"; */
SELECT Nome FROM Funcionarios WHERE Sobrenome = 'M%' OR Sobrenome = 'S%';

-- 6. Selecione nomes dos funcionários que tem sobrenome que começam com M ou S e tem salário menor que R$1.500,00.
-- 7. Selecione nomes e cargos dos funcionários que não são DBA.
-- 8. Selecione os títulos dos livros ordenados por ano de publicação.
-- 9. Mostrar o nome do usuário e o título do livro reservado por ele.
-- 10. Mostrar os nomes dos funcionários e os títulos dos livros retirados por ele.
-- 11. Mostrar os títulos dos livros retirados pelo usuário e o nome da editora de cada um dos livros.
-- 12. Apresentar o nome do livro, nome do autor e nome da editora.
-- 13. Apresentar uma listagem de funcionários com seus salários acrescidos de 30%.
-- 14. Mostrar os funcionários com seus salários acrescidos de R$ 615,00.
-- 15. Listar o(s) livro(s) publicado(s) mais recentemente.
-- 16. Apresentar a soma do salário dos funcionários de Campinas.
-- 17. Selecionar os 5 menores salários e suas respectivas cidades.
-- 18. Listar a quantidade de funcionários que retiraram livros.
-- 19. Listar os títulos e gêneros dos livros que não foram reservados.