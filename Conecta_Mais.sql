use conecta;
CREATE DATABASE Conecta;
USE Conecta;

CREATE TABLE Usuarios(
usuario_id int auto_increment PRIMARY KEY,
nome varchar(50) not null,
email varchar(320) not null UNIQUE,
telefone varchar(15) not null,
senha varchar (255) not null,
data_de_nascimento DATE not null,
cpf varchar (14) not null UNIQUE,
rg varchar (20) not null UNIQUE ,
cep varchar (9) not null UNIQUE
);

Create TABLE Curriculo(
curriculo_id int auto_increment primary Key,
formacao_academica 	varchar(50),
experiencia_profissional varchar(200),
certificacoes varchar(150),
habilidades varchar(200),
usuario_id int,
foreign key(usuario_id) references Usuarios(usuario_id)
);