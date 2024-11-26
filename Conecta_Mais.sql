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
formacao_academica varchar(500),
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
  SELECT 
    c.curriculo_id, 
    c.formacao_academica, 
    c.experiencia_profissional, 
    c.certificacoes, 
    c.habilidades, 
    u.nome AS nome_usuario
FROM Curriculo c
JOIN Usuarios u ON c.usuario_id = u.usuario_id;

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
select * from usuarios;
-- insert curriculos -- 

insert into Curriculo(formacao_academica,experiencia_profissional,certificacoes,habilidades,usuario_id)VALUES 
('Graduação em Sistemas de Informação', '2 anos como desenvolvedor backend', 'Certificação em Java', 'Lógica de programação, Git, APIs', 1);
insert into Curriculo(formacao_academica,experiencia_profissional,certificacoes,habilidades,usuario_id)VALUES 
('Graduação em Ciência de Dados','3 anos como analista de dados ', 'Certificação em Google Cloud Professional Data Engineer', 'APIS e  Sistemas de versionamento de dados',2);
insert into Curriculo(formacao_academica,experiencia_profissional,certificacoes,habilidades,usuario_id)VALUES 
('Graduação em Exatas','2 anos como docente','MATLAB  Certified Associate - MathWorks','Capaz de manipular e gerenciar dados numéricos bem como realiza a modelagem de dados',3);
insert into Curriculo(formacao_academica,experiencia_profissional,certificacoes,habilidades,usuario_id)VALUES 
('Desenvolvedora Machine-Learning','3 anos de experiência com i.a','AWS Certified Machine Learning – Specialty','Ingles fluente, criação de I.A generativa',4);
insert into Curriculo(formacao_academica,certificacoes,habilidades,usuario_id)VALUES 
('Graduação em Análise e desenvolvimento de Sistemas','Oracle Certified Associate (OCA) e Professional (OCP)','Gerenciamento de Sistemas, e produções de softwares',5);
insert into Curriculo(formacao_academica,experiencia_profissional,certificacoes,habilidades,usuario_id)VALUES 
('Artes Visuais','1 ano de experiência com Modelagens e ideias artísticas na internet','Bacharel em Artes Visuais  USP','Desenvolve modelagens e conceitos artíticos  na internet',6);
insert into Curriculo(formacao_academica,certificacoes,habilidades,usuario_id)VALUES 
(   'Engenharia Civil' ,'Certificação de Segurança do Trabalho e     Certificação em Patologia e Recuperação de Estruturas' ,'Especialista em engenharia civil de obras e segurança de estruturas',7   );
insert into Curriculo(formacao_academica,experiencia_profissional,certificacoes,habilidades,usuario_id)VALUES 
( 'Engenharia de produção',' 1 ano de experiência em redes de Supermercados de grande porte e 2 anos de exeperiência como gerente de estoque', 'PMP (Project Management Professional e Certificações ISO (Qualidade e Sustentabilidade)','profissional responsável por gerenciar produtos e projetos de grandes empresas',8);
insert into Curriculo(formacao_academica,experiencia_profissional,certificacoes,habilidades,usuario_id)VALUES 
(  'Farmácia','3 anos de experiência na indústria farmacêutica em multinacionais','Certificação em Prescrição Farmacêutica e Atenção ao Paciente e    Área de Farmácia Magistral (Manipulação)','Profissional responsável por gerir e adequar prescrições e gerenciar medicamentos',9);
insert into Curriculo(experiencia_profissional,habilidades,usuario_id)VALUES 
( 'trabalhou durante 1 ano e meio na logística de um mercado local', 'Entende de logística e organização prática de mercados(porém não realizou curso voltado a logística.)',10 );
insert into Curriculo(formacao_academica,experiencia_profissional,certificacoes,habilidades,usuario_id)VALUES 
('Química','"Trabalhou por 2 anos como docente em rede particular de ensino".','Certificado de conclusão do curso pela USP','possui conhecimentos em diversas áreas da quimica',11);
insert into Curriculo(experiencia_profissional,certificacoes,habilidades,usuario_id)VALUES 
('3 anos onde trabalhou como operador de caixa','certificado do Senac Curso ADM','possui conhecimento para relacionamento com clientes',12);
insert into Curriculo(experiencia_profissional,certificacoes,habilidades,usuario_id)VALUES 
('2 anos como estoquista de loja','Curso de inglês CNA','Possui inglês fluente e sabe organizar e gerenciar produtos',13);
insert into Curriculo(formacao_academica,experiencia_profissional,certificacoes,habilidades,usuario_id)VALUES 
('Marketing Digital','Trabalhou por 3 anos com marketing digital na empresa Rock Content','Certificado da Universidade Anhembi Morumbi, Certificado de marketing digital SENAC','Especialista em Marketing Digital de grandes e pequenos negócios, garante a estrutura e marca da empresa',14);
insert into Curriculo(formacao_academica,experiencia_profissional,certificacoes,habilidades,usuario_id)VALUES 
('Informática','Exerceu a responsabilidade por 2 anos nas planilhas de vendas e produtos  do Mercado Livre','Certificado de informática do Senac', 'organiza e gerencia planilhas e possui conhecimento em algumas linguagens de programação como o MySQL',15);
insert into Curriculo(formacao_academica,experiencia_profissional,certificacoes,habilidades,usuario_id)VALUES 
('Graduação em Engenharia de Software - Universidade Paulista (UNIP)', 'Desenvolvedor Backend - Startup (3 anos)', 'AWS Certified Developer – Associate', 'Python, Java, AWS, Docker, Kubernetes',16 );
insert into Curriculo(formacao_academica,experiencia_profissional,certificacoes,habilidades,usuario_id)VALUES 
('Técnico em Informática - Instituto Técnico Senai', 'Técnico de suporte em TI (2 anos)', 'CompTIA A+ Certified', 'Manutenção de hardware, Redes, Troubleshooting', 17);
insert into Curriculo(formacao_academica,experiencia_profissional,certificacoes,habilidades,usuario_id)VALUES 
('Curso Técnico em Redes de Computadores - Instituto SENAI', 'Analista de Suporte Técnico  (3 anos)', 'Certificação Cisco CCNA', 'Configuração de roteadores, Segurança de redes, Suporte técnico', 18);
insert into Curriculo(formacao_academica,experiencia_profissional,certificacoes,habilidades,usuario_id)VALUES 
('Graduação em Ciência da Computação - Universidade Estadual Paulista (UNESP)', 'Desenvolvedor Front-End  (2 anos)', 'Certificação React Developer - Alura',  'HTML, CSS, JavaScript, React, Redux',  19);
insert into Curriculo(formacao_academica,experiencia_profissional,certificacoes,habilidades,usuario_id)VALUES 
('Pós-Graduação em Inteligência Artificial - PUC Minas', 'Pesquisador em Machine Learning - Laboratório (2 anos)', 'Certificação TensorFlow Developer', 'Python, TensorFlow, Data Science, Algoritmos de Machine Learning', 20);
-- insert das data_de_cadastro

insert into data_de_cadastro(data_do_cadastro,usuario_id)values
('2024-11-03',1);
insert into data_de_cadastro(data_do_cadastro,usuario_id)values
('2024-10-29',2);
insert into data_de_cadastro(data_do_cadastro,usuario_id)values
('2024-09-03',3);
insert into data_de_cadastro(data_do_cadastro,usuario_id)values
('2024-11-05',4);
insert into data_de_cadastro(data_do_cadastro,usuario_id)values
('2024-09-04',5);
insert into data_de_cadastro(data_do_cadastro,usuario_id)values
('2024-10-06',6);
insert into data_de_cadastro(data_do_cadastro,usuario_id)values
('2024-11-17',7);
insert into data_de_cadastro(data_do_cadastro,usuario_id)values
('2024-11-20',8);
insert into data_de_cadastro(data_do_cadastro,usuario_id)values
('2024-11-13',9);
insert into data_de_cadastro(data_do_cadastro,usuario_id)values
('2024-10-15',10);
insert into data_de_cadastro(data_do_cadastro,usuario_id)values
('2024-09-29',11);
insert into data_de_cadastro(data_do_cadastro,usuario_id)values
('2024-10-14',12);
insert into data_de_cadastro(data_do_cadastro,usuario_id)values
('2024-11-04',13);
insert into data_de_cadastro(data_do_cadastro,usuario_id)values
('2024-10-03',14);
insert into data_de_cadastro(data_do_cadastro,usuario_id)values
('2024-11-18',15);
insert into data_de_cadastro(data_do_cadastro,usuario_id)values
('2024-10-09',16);
insert into data_de_cadastro(data_do_cadastro,usuario_id)values
('2024-09-19',17);
insert into data_de_cadastro(data_do_cadastro,usuario_id)values
('2024-11-08',18);
insert into data_de_cadastro(data_do_cadastro,usuario_id)values
('2024-09-11',19);
insert into data_de_cadastro(data_do_cadastro,usuario_id)values
('2024-11-15',20);

-- insert condicao

insert into condicao(tipo_de_condicao,nivel_da_condicao,atestado_medico,usuario_id)values
('Hipertensão', 'Moderado', 'Sim',1);
insert into condicao(tipo_de_condicao,nivel_da_condicao,atestado_medico,usuario_id)values
('Diabetes', 'Grave', 'Sim',2);
insert into condicao(tipo_de_condicao,nivel_da_condicao,atestado_medico,usuario_id)values
('Asma', 'Leve', 'Não',3);
insert into condicao(tipo_de_condicao,nivel_da_condicao,atestado_medico,usuario_id)values
('Depressão', 'Moderado', 'Sim',4);
insert into condicao(tipo_de_condicao,nivel_da_condicao,atestado_medico,usuario_id)values
('Ansiedade', 'Leve', 'Não',5);
insert into condicao(tipo_de_condicao,nivel_da_condicao,atestado_medico,usuario_id)values
('Hérnia de Disco', 'Grave', 'Sim',6);
insert into condicao(tipo_de_condicao,nivel_da_condicao,atestado_medico,usuario_id)values
('Obesidade', 'Moderado', 'Não',7);
insert into condicao(tipo_de_condicao,nivel_da_condicao,atestado_medico,usuario_id)values
('Alergia Alimentar', 'Leve', 'Não',8);
insert into condicao(tipo_de_condicao,nivel_da_condicao,atestado_medico,usuario_id)values
('Insônia', 'Moderado', 'Sim',9);
insert into condicao(tipo_de_condicao,nivel_da_condicao,atestado_medico,usuario_id)values
('Câncer', 'Grave', 'Sim',10);
insert into condicao(tipo_de_condicao,nivel_da_condicao,atestado_medico,usuario_id)values
('Anemia', 'Leve', 'Não',11);
insert into condicao(atestado_medico,usuario_id)values
('Não',12);
insert into condicao(tipo_de_condicao,nivel_da_condicao,atestado_medico,usuario_id)values
('Lombalgia', 'Leve', 'Não',13);
insert into condicao(atestado_medico,usuario_id)values
('Não',14);
insert into condicao(atestado_medico,usuario_id)values
('Não',15);
insert into condicao(tipo_de_condicao,nivel_da_condicao,atestado_medico,usuario_id)values
('Artrite', 'Grave', 'Sim',16);
insert into condicao(tipo_de_condicao,nivel_da_condicao,atestado_medico,usuario_id)values
('Enxaqueca', 'Moderado', 'Não',17);
insert into condicao(tipo_de_condicao,nivel_da_condicao,atestado_medico,usuario_id)values
('Epilepsia', 'Grave', 'Sim',18);
insert into condicao(tipo_de_condicao,nivel_da_condicao,atestado_medico,usuario_id)values
('Osteoporose', 'Grave', 'Sim',19);
insert into condicao(tipo_de_condicao,nivel_da_condicao,atestado_medico,usuario_id)values
('Alergia Respiratória', 'Leve', 'Não',20);
select * from condicao;
-- INSERT DAS EMPRESAS
SELECT * FROM Empresas_cadastradas
insert into Empresas_cadastradas(nome,ramo,email,senha,endereco,matriz_ou_filial,cnpj) values
('Nexora Solutios', 'Consultoria em Transformação Digital de Tecnologia','Nexora@gmail.com','32245','Rua felis 78237','Consultoria Empresarial e Estratégia de Negocios','57898314785312');
insert into Empresas_cadastradas(nome,ramo,email,senha,endereco,matriz_ou_filial,cnpj) values
('Inovari Tech','Desenvolvimento de Software e Soluçõe de TI','Inovais4@gmail.com','50615042','Rua calmes 7248',' especializadas em integração e suporte técnico em várias regiões','77268974624595');
insert into Empresas_cadastradas(nome,ramo,email,senha,endereco,matriz_ou_filial,cnpj) values
('Lumos Enterprises','Energia Renovável e Sustentabilidade','Lumos@gmail.com','789554','Rua Francisco 8947','nergia Renovável e Sustentabilidade','45256874584156');
insert into Empresas_cadastradas(nome,ramo,email,senha,endereco,matriz_ou_filial,cnpj) values
('Stratify Consulting','Consultoria Empresarial e Estratégia de Negócio','Stratify@gmail.com','8945756','Rua Jocalis 997','Consultoria Empresarial e Estratégia de Negócios','58965475137862');
insert into Empresas_cadastradas(nome,ramo,email,senha,endereco,matriz_ou_filial,cnpj) values 
('Avantech System',' Engenharia de Automação de Tecnologia Industrial','Avantech4@gmail.com','8918444','Rua Lima 505478','Engenharia de Automação de Tecnologia Industrial','99785621847856');
insert into Empresas_cadastradas(nome,ramo,email,senha,endereco,matriz_ou_filial,cnpj) values 
('Fenix Global','Comércio Internacional e Logística','Fenix@gmail.com','846245','Rua joyk 9897',' Filiais em diferentes continentes, como América do Norte, Europa, Ásia','98725166523757');
insert into Empresas_cadastradas(nome,ramo,email,senha,endereco,matriz_ou_filial,cnpj) values 
('Zephir Innovations',' Desenvolvimento em Tecnologia de Ponta','Zephir@gmail.com','45751','Rua Caibuiba 5689',' especializadas em pesquisa aplicada, com foco em diferentes tecnologias regionais','58935479856142');
insert into Empresas_cadastradas(nome,ramo,email,senha,endereco,matriz_ou_filial,cnpj) values 
('Bravora Consulting','Consultoria em Gestão Empresarial e Liderança','Bravora@gmail.com','948490','Rua Neto 2658','mercados locais focados em pequenas e médias empresas que necessitam de consultoria estratégica','58467895202548');
insert into Empresas_cadastradas(nome,ramo,email,senha,endereco,matriz_ou_filial,cnpj) values 
('Intellix Partners','Inteligência de Mercado e Big Data','Itellix@gmail.com','57815','Rua São Bento 245','Filiais em regiões com empresas que necessitam de inteligência de mercado específica','45862489706006');

insert into Empresas_cadastradas(nome,ramo,email,senha,endereco,matriz_ou_filial,cnpj) values 
('Novus Horizons','Consultoria em Inovação e Startups','Novus@gmail.com','025865','Rua Guimaroes 2444',' Filiais em outros polos de startups e inovação, como Berlim ou Tel Aviv','18845605478946');
insert into Empresas_cadastradas(nome,ramo,email,senha,endereco,matriz_ou_filial,cnpj) values 
('Verto Strategies','Marketing Digital e Estratégia Corporativa','Verto@gmail.com','451054','Rua Armelha 585','Filiais em regiões com uma forte presença de empresas de tecnologia ou varejo','48289562301547');
insert into Empresas_cadastradas(nome,ramo,email,senha,endereco,matriz_ou_filial,cnpj) values 
('Elara Grouup','Investimentos e Gestão de Ativo','Elara1@gmail.com','4140410','Rua Amaru 5148455',' Filiais em locais específicos para focar em setores com tecnologia, imóveis e saúde','81809720648620');
insert into Empresas_cadastradas(nome,ramo,email,senha,endereco,matriz_ou_filial,cnpj) values 
('Cygnus Labs','Pesquisa Científica e Biotecnologia','Cygnus@gmail.com','41006','Rua Liquid','Filiais em locais específicos para aplicações científicas como biotecnologia ou farmacêutica','10114502148451');
insert into Empresas_cadastradas(nome,ramo,email,senha,endereco,matriz_ou_filial,cnpj) values 
('Primora Ventures','Venture Capital e Investimentos em Tecnologia','Primora@gmail.com','25488','Rua Rebolo 9800','Filiais em outros locais com startups promissoras, como Berlim ou Shenzhen','47510515484987');
insert into Empresas_cadastradas(nome,ramo,email,senha,endereco,matriz_ou_filial,cnpj) values 
('Ascendix Solutions','Soluções de Software Personalizado e Consultoria de TI','Ascendix@gmail.com','5484884','Rua Felipinos 877','Filiais em locais onde empresas necessitam de software personalizado, como mercados emergentes','14568474520516');
insert into Empresas_cadastradas(nome,ramo,email,senha,endereco,matriz_ou_filial,cnpj) values 
('Optima Consultoria','Consultoria de Eficiência Operacional e Processos','Optima@gmail.com','056352','Rua Efigenia 1055','Filiais em locais com grandes empresas e indústrias necessitando de melhorias operacionais','15158100147856');
insert into Empresas_cadastradas(nome,ramo,email,senha,endereco,matriz_ou_filial,cnpj) values 
('Solvexia Tech',' Tecnologia de Soluções Empresariais e Automação','Solvexia@gmail.com','55121','Rua de Milao 4441','Filiais com foco em áreas industriais ou comerciais específicas que precisam de automação','15178451094895');
insert into Empresas_cadastradas(nome,ramo,email,senha,endereco,matriz_ou_filial,cnpj) values 
('Criterium Group','Consultoria Jurídica e Compliance Corporativo','Criterium@gmail.com','415150','Rua Bela Vista 4451','Filiais em locais com forte regulamentação e necessidade de compliance, como setores financeiros','28487959560154');
insert into Empresas_cadastradas(nome,ramo,email,senha,endereco,matriz_ou_filial,cnpj) values 
('Nuvemix Technologies','Soluções em Nuvem e Infraestrutura Digita','Nuvemix@gmail.com','141055','Rua Santander','Filiais em regiões com empresas em transição para soluções em nuvem','15148451051487');
insert into Empresas_cadastradas(nome,ramo,email,senha,endereco,matriz_ou_filial,cnpj) values 
('Vantech Partners','onsultoria em Tecnologia e Inovação','Ventech@gmail.com','92828','Rua Paraiso 5776','Filiais em mercados locais que necessitam de tecnologia e inovação específica','11545120215484');
insert into Empresas_cadastradas(nome,ramo,email,senha,endereco,matriz_ou_filial,cnpj) values 
(' Clarity Consulting','Consultoria Empresarial e Estratégia de Marketing','Clarity@gmail.com','450155','Rua Alfreita 8987','Filiais em Belo Horizonte e Porto Alegre, com foco em empresas locais e regionais','10505484954645');
insert into Empresas_cadastradas(nome,ramo,email,senha,endereco,matriz_ou_filial,cnpj) values 
('Equinox Engineering','Engenharia Civil e Construção Sustentável','Equinox@gmail.com','15451','Rua Camaro 777','Filiais em Salvador, Fortaleza e Porto Alegre para grandes projetos regionais','15100226484886');