use conecta;
CREATE DATABASE Conecta;

show tables;

CREATE TABLE Usuarios(
usuario_id int auto_increment PRIMARY KEY,
nome varchar(50) not null,
email varchar(320) not null UNIQUE,
telefone varchar(15) not null,
senha  varchar (255) not null,
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
('Luis Santos Gonzaga','luisgz@gmail.com', '119876-5672','25622#','2000-02-17','42112345609','324567898','01310-010');-- 1--
insert into Usuarios(nome,email,telefone, senha,data_de_nascimento,cpf,rg,cep) values
('Pedro Henrique Barbosa','PedroHB@gmail.com','119324-8945','19579@','1995-07-09','45124256756','402906506','04903-190');-- 2 --         
insert into Usuarios(nome,email,telefone, senha,data_de_nascimento,cpf,rg,cep) values
('Caio de Jesus','ocaio@gmail.com','119590-7654','23454$','1999-12-05','13465045690','314567907','01246-783');-- 3--
insert into Usuarios(nome,email,telefone, senha,data_de_nascimento,cpf,rg,cep) values
('Estér Rosa da Silva','esterabs@gmail.com','119653-6390','49809$','1995-07-27','25690820087','713897604','02589-099');-- 4 -- 
insert into Usuarios(nome,email,telefone, senha,data_de_nascimento,cpf,rg,cep) values
('Bruno Silva', 'bruno.silva@email.com', '119876-5432', '45656#', '1998-03-22', '98765432100', '876543217', '02002-000' );-- 5 -- 
insert into Usuarios(nome,email,telefone, senha,data_de_nascimento,cpf,rg,cep) values
('Daniela Pereira', 'daniela.pereira@email.com', '119876-5431', '43321!','1999-12-10', '46712978910', '567760129', '04004-050'); -- 6 -- 
insert into Usuarios(nome,email,telefone, senha,data_de_nascimento,cpf,rg,cep) values
('Otávio Nunes', 'otavio.nunes@email.com', '119765-4321', '77765@', '1999-01-27', '78965412920', '901784563', '15015-004' ); -- 7 -- 
insert into Usuarios(nome,email,telefone, senha,data_de_nascimento,cpf,rg,cep) values
('Guilherme Aguiar Santos' , 'GuiAguiar@gmail.com','119808-4567','89890#','2002-07-06','32056021232','215679807','03020-990'); -- 8 --
insert into Usuarios(nome,email,telefone, senha,data_de_nascimento,cpf,rg,cep) values
('Marcela Souza da Silva ','marcela@gmail.com','119067-8345','20987!','1998-12-03','29054632159','562859879','02010-398'); -- 9 --
insert into Usuarios(nome,email,telefone, senha,data_de_nascimento,cpf,rg,cep) values
('Vanessa Camargo Santos de jesus','Vanessantos@gmail.com','119549-4321','34502@','2003-12-28','36045021033','456783506','02315-000'); -- 10 --
insert into Usuarios(nome,email,telefone, senha,data_de_nascimento,cpf,rg,cep) values
('Paula Andrade Barbosa','paula@gmail.com','119854-0984','90874$','1997-02-09','13345633240','365604328','01323-090');-- 11 -- 
insert into Usuarios(nome,email,telefone, senha,data_de_nascimento,cpf,rg,cep) values
('Henriete dos Santos Lima','henriete@gmail.com','119512-9806','55334$','1997-02-16','25950067224','158604447','05628-180');-- 12 -- 
insert into Usuarios(nome,email,telefone, senha,data_de_nascimento,cpf,rg,cep) values
('Luis Pereira Júnior','Luis@gmail.com','119765-2354','45334$','1999-12-10','13140035280','395005324','09874-094');-- 13 -- 
insert into Usuarios(nome,email,telefone, senha,data_de_nascimento,cpf,rg,cep) values
('Rosa Vieira','Rosas@gmail.com','119736-1700','10234#','1995-08-16','19050032270','218903423','06718-800');-- 14 -- 
insert into Usuarios(nome,email,telefone, senha,data_de_nascimento,cpf,rg,cep) values
('Leonardo Oliveira','Leo@gmail.com','119954-1384','10874!','1997-11-09','15695530070','659003251','05318-000');-- 15 --
insert into Usuarios(nome,email,telefone, senha,data_de_nascimento,cpf,rg,cep) values
( 'Giovane Santos Aguiar','Giovanesantos@gmail.com','119432-1327','67878@','1997-02-09','16752519040','103004205','01926-000');-- 16 -- 
insert into Usuarios(nome,email,telefone, senha,data_de_nascimento,cpf,rg,cep) values
( 'Rodrigo Silva','Rodrigo@gmail.com','119763-2345','56743#','2000-02-09','16749030050','642605008','54548-000'); -- 17 -- 
insert into Usuarios(nome,email,telefone, senha,data_de_nascimento,cpf,rg,cep) values
( 'Julio César','Juliocess@gmail.com','119470-0984','10089$','2002-06-19','20040060080','789505670','08755-010'); -- 18 -- 
insert into Usuarios(nome,email,telefone, senha,data_de_nascimento,cpf,rg,cep) values
( 'Andressa Vieira','Dressa@gmail.com','119221-0683','55438$','1996-04-25','17028545090','287905552','01267-120');-- 19 --
insert into Usuarios(nome,email,telefone,senha,data_de_nascimento,cpf,rg,cep) values
( 'Gustavo Gabriel dos Santos','Gustav@gmail.com','119437-0875','96324$','2003-10-07','13673207830','906002899','09097-200'); -- 20 --
select * from usuarios
