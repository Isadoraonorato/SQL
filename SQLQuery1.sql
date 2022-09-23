CREATE DATABASE cripto  --Este comando criar um banco de dados
GO

USE cripto --Este comando seleciona um banco de dados
GO

CREATE TABLE Usuarios
(
	UsuarioId INT PRIMARY KEY IDENTITY,
	Email VARCHAR (100) UNIQUE NOT NULL,
	Senha VARCHAR(50) NOT NULL,
	Nome VARCHAR (100) NOT NULL
)
GO

SELECT * FROM Usuarios
GO

INSERT INTO Usuarios VALUES ('lucas@gmail.com','senhalucas', 'Lucas')
GO

SELECT UsuarioId, Email, HASHBYTES ('MD2', Senha) , Nome FROM Usuarios WHERE UsuarioId = 1
SELECT UsuarioId, Email, HASHBYTES ('SHA2_512', Senha) , Nome FROM Usuarios WHERE UsuarioId = 1
GO

