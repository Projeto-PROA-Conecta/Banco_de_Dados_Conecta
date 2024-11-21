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
formacao_academica varchar(50),
experiencia_profissional varchar(200),
certificacoes varchar(150),
habilidades varchar(200),
usuario_id int,
foreign key(usuario_id) references Usuarios(usuario_id)
);

CREATE TABLE data_de_cadastro(
data_cadastro_id int auto_increment primary key,
data_do_cadastro date,
usuario_id int,
foreign key(usuario_id) references Usuarios(usuario_id)
);

Create TABLE condicao(
condicao_id int auto_increment primary key,
tipo_de_condicao varchar(50),
nivel_da_condicao varchar(20),
atestado_medico varchar(100) ,
usuario_id int,
foreign key (usuario_id) references Usuarios(usuario_id)
);

-- Tabelas das Empresas

Create TABLE Empresas_cadastradas(
empresa_id int auto_increment primary key,
nome varchar (50),
ramo varchar(255),
email varchar(320) not null UNIQUE,
senha varchar(255) not null UNIQUE,
endereco varchar(255)not null UNIQUE,
matriz_ou_filial varchar(150),
cnpj varchar(14)
);
    
Create Table Vagas(
vagas_id int auto_increment PRIMARY KEY,   
nome_vaga varchar(50),    
descricao_vaga varchar(500),
categoria_vaga varchar(55),
status_de_vaga varchar(14),
endereco varchar(255) not null UNIQUE,
foreign key(endereco) references Empresas_cadastradas(endereco)
);
    
    
-- insert into users -- 
insert into Usuarios(nome,email,telefone, senha,data_de_nascimento,cpf,rg,cep) values
('Luis Santos Gonzaga','luisgz@gmail.com', '119876-5672','25622#','2000-02-17','421.123.456-09','32.456.789-8','01310-010');
insert into Usuarios(nome,email,telefone, senha,data_de_nascimento,cpf,rg,cep) values
('Pedro Henrique Barbosa','PedroHB@gmail.com','119324-8945','19579@','1995-07-09','451.242.567-56','40.290.650-6','04903-190');         
insert into Usuarios(nome,email,telefone, senha,data_de_nascimento,cpf,rg,cep) values
('Caio de Jesus','ocaio@gmail.com','119590-7654','23454$','1999-12-05','134.650.456-90','31.456.790-7','01246-783');
insert into Usuarios(nome,email,telefone, senha,data_de_nascimento,cpf,rg,cep) values
('Estér Rosa da Silva','esterabs@gmail.com','119653-6390','49809$','1995-07-27','256.908.200-87','71.389.760-4','02589-099');
insert into Usuarios(nome,email,telefone, senha,data_de_nascimento,cpf,rg,cep) values
('Bruno Silva', 'bruno.silva@email.com', '119876-5432', '45656#', '1998-03-22', '987.654.321-00', '87.654.321-7', '02002-000' );
insert into Usuarios(nome,email,telefone, senha,data_de_nascimento,cpf,rg,cep) values
('Daniela Pereira', 'daniela.pereira@email.com', '119876-5431', '43321!','1999-12-10', '467.129.789-10', '56.776.012-9', '04004-050');
insert into Usuarios(nome,email,telefone, senha,data_de_nascimento,cpf,rg,cep) values
('Otávio Nunes', 'otavio.nunes@email.com', '119765-4321', '77765@', '199-01-27', '789.654.129.20', '90.178.456-3', '15015-004' );
insert into Usuarios(nome,email,telefone, senha,data_de_nascimento,cpf,rg,cep) values
(                                                                                                                             );
insert into Usuarios(nome,email,telefone, senha,data_de_nascimento,cpf,rg,cep) values
(                                                                                                                               );
insert into Usuarios(nome,email,telefone, senha,data_de_nascimento,cpf,rg,cep) values
(                                                                                                                               );
insert into Usuarios(nome,email,telefone, senha,data_de_nascimento,cpf,rg,cep) values
(                                                                                                                                );
insert into Usuarios(nome,email,telefone, senha,data_de_nascimento,cpf,rg,cep) values
(                                                                                                                                 );
insert into Usuarios(nome,email,telefone, senha,data_de_nascimento,cpf,rg,cep) values
(                                                                                                                                  );
insert into Usuarios(nome,email,telefone, senha,data_de_nascimento,cpf,rg,cep) values
(                                                                                                                                   );
insert into Usuarios(nome,email,telefone, senha,data_de_nascimento,cpf,rg,cep) values
(                                                                                                                                    );
insert into Usuarios(nome,email,telefone, senha,data_de_nascimento,cpf,rg,cep) values
(                                                                                                                                       );
insert into Usuarios(nome,email,telefone, senha,data_de_nascimento,cpf,rg,cep) values
(                                                                                                                                        );
insert into Usuarios(nome,email,telefone, senha,data_de_nascimento,cpf,rg,cep) values
(                                                                                                                                         );
insert into Usuarios(nome,email,telefone, senha,data_de_nascimento,cpf,rg,cep) values
(                                                                                                                                          );
insert into Usuarios(nome,email,telefone, senha,data_de_nascimento,cpf,rg,cep) values
(                                                                                                                                            );
select * from usuarios
