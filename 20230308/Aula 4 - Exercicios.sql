USE aaaaaa;
-- DROP TABLE pessoas;

/*CREATE TABLE Editora (
	Codigo int PRIMARY KEY,
    Nome varchar(15) NOT NULL,
    Contato varchar(15)
);
CREATE TABLE Autores (
	Codigo int PRIMARY KEY,
	Nome varchar(15) NOT NULL,
    Nacionalidade varchar(15)
);
CREATE TABLE Livros (
	Codigo int PRIMARY KEY,
    Titulo varchar(15) NOT NULL
);
CREATE TABLE Funcionarios (
	CPF varchar(15) PRIMARY KEY,
    Nome varchar(15) NOT NULL,
    Funcao varchar(15) NOT NULL,
    Salario float NOT NULL
);
CREATE TABLE Usuarios (
	CPF varchar(15) PRIMARY KEY,
    Nome varchar(15) NOT NULL,
    Endereco varchar(15) NOT NULL,
    Telefone varchar(15) NOT NULL,
    CodigoLivro int,
    FOREIGN KEY (CodigoLivro) REFERENCES livros (Codigo)
);
CREATE TABLE Retirar (
	CPF varchar(15),
    CodigoLivro int,
    PRIMARY KEY (CPF, CodigoLivro),
    FOREIGN KEY (CPF) REFERENCES Usuarios (CPF),
    FOREIGN KEY (CodigoLivro) REFERENCES Livros (Codigo)
);
CREATE TABLE RetirarFuncionario (
	CPFFuncionario varchar(15),
    CodigoLivro int,
    PRIMARY KEY (CPFFuncionario, CodigoLivro),
    FOREIGN KEY (CPFFuncionario) REFERENCES Funcionarios (CPF),
    FOREIGN KEY (CodigoLivro) REFERENCES Livros (Codigo)
);
CREATE TABLE Escreve (
	CodigoLivro int,
    CodigoAutor int,
    PRIMARY KEY (CodigoLivro, CodigoAutor),
    FOREIGN KEY (CodigoLivro) REFERENCES Livros (Codigo),
    FOREIGN KEY (CodigoAutor) REFERENCES Autores (Codigo)
);*/
ALTER TABLE Livros 
	ADD COLUMN Edicao int AFTER Titulo,
	ADD COLUMN Genero varchar(15) AFTER Edicao,
	ADD COLUMN AnoDePublicacao int AFTER Genero,
	ADD COLUMN CodigoEditora int AFTER CodigoEditora,
    ADD FOREIGN KEY (CodigoEditora) REFERENCES Editora (Codigo);
/*INSERT INTO Editora VALUES (1, "Nova", "Ana");
INSERT INTO Editora VALUES (2, "Atual", NULL), (3, "Moderna", NULL);*/

-- INSERT INTO Autores VALUES ("Luiz", NULL), ("Antonio", NULL), ("Laura", NULL);

-- INSERT INTO Livros VALUES (1, "A Terra", 1, "Romance", 2020)