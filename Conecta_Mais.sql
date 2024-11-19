use conecta;
CREATE DATABASE Conecta;

show tables;
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
select * from Usuarios;

Create TABLE Curriculo(
curriculo_id int auto_increment primary Key,
formacao_academica 	varchar(50),
experiencia_profissional varchar(200),
certificacoes varchar(150),
habilidades varchar(200),
usuario_id int,
foreign key(usuario_id) references Usuarios(usuario_id)
);

Create TABLE condicao(
condicao_id int auto_increment primary key,
tipo_de_condicao varchar(50),
nivel_da_condicao varchar(20),
atestado_medico varchar(100),
usuario_id int,
foreign key (usuario_id) references Usuarios(usuario_id)
);

-- Tabelas das Empresas

Create TABLE Empresas(
empresa_id int auto_increment primary key,
nome varchar (50),
ramo varchar(255),
email varchar(320) not null UNIQUE,
senha varchar(255) not null UNIQUE,
endereco varchar(255)not null UNIQUE,
matriz_ou_filial varchar(150),
cnpj varchar(14)
);