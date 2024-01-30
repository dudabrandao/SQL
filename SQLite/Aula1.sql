CREATE TABLE Aluno (
	Codigo INT PRIMARY KEY,
	Nome VARCHAR(50),Aluno
	DataNascimento DATE
);

ALTER TABLE Aluno RENAME TO Alunos;

ALTER TABLE Alunos ADD COLUMN endereco TEXT;

ALTER TABLE Alunos DROP COLUMN endereco;

CREATE TABLE Aluno (
	Codigo INT PRIMARY KEY,
	Nome VARCHAR(50),
	DataNascimento DATE
);

ALTER TABLE Aluno ADD COLUMN Idade;

ALTER TABLE Aluno RENAME TO Estudante;

"BANCODEDADOSFILME.sqlite3"Alunos

ALTER TABLE Estudante ADD COLUMN Nota INT;

ALTER TABLE Estudante DROP COLUMN Nota;

ALTER TABLE Estudante ADD COLUMN Nota1 INT;

ALTER TABLE Estudante ADD COLUMN Nota2 INT;

CREATE TABLE Usuarios (
	id_usuario PRIMARY KEY,
	nome_usuario VARCHAR(50),
	email VARCHAR (20),
	data_criacao DATE
);

CREATE TABLE Postagens (
	id_postagem PRIMARY KEY,
	id_usuario INT,
	conteudo TEXT,
	data_postagem DATE,
	FOREIGN KEY (id_usuario) REFERENCES Usuarios (id_usuario)
);

CREATE TABLE Conexoes (
	id_conexao PRIMARY KEY,
	id_usuario_origem INT,
	id_usuario_destino INT,
	data_conexao DATE,
	FOREIGN KEY (id_usuario_origem) REFERENCES Usuarios (id_usuario),
	FOREIGN KEY (id_usuario_destino) REFERENCES Usuarios (id_usuario)
);

CREATE TABLE Mensagens (
	id_mensagem PRIMARY KEY,
	id_usuario_origem INT,
	id_usuario_destino INT,
	conteudo TEXT,
	data_envio DATE,
	FOREIGN KEY (id_usuario_origem) REFERENCES Usuarios (id_usuario),
	FOREIGN KEY (id_usuario_destino) REFERENCES Usuarios (id_usuario)
);

ALTER TABLE Usuarios ADD COLUMN idade_usuario INT;

ALTER TABLE Usuarios ADD COLUMN cidade_usuario VARCHAR;

ALTER TABLE Postagens ADD COLUMN quantidade_likes INT;

ALTER TABLE Conexoes ADD COLUMN status_usuario VARCHAR;

ALTER TABLE Mensagens ADD COLUMN status_leitura VARCHAR;
































