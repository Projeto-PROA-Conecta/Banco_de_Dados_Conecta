	
CREATE DATABASE Conecta;



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
alter table Usuarios add column data_de_cadastro date;



Create TABLE Curriculo(
curriculo_id int auto_increment primary Key,
formacao_academica varchar(500),
experiencia_profissional varchar(200),
certificacoes varchar(150),
habilidades varchar(200),
usuario_id int,
foreign key(usuario_id) references Usuarios(usuario_id)
);


Create TABLE condicao(
condicao_id int auto_increment primary key,
tipo_de_condicao varchar(50),
Grau_de_dificuldade varchar(25),
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
endereco varchar(255)not null,
matriz_ou_filial varchar(150),
cnpj varchar(14)
);

Create Table Vagas(
vagas_id int auto_increment PRIMARY KEY,   
nome_vaga varchar(250),    
descricao_vaga varchar(500),
categoria_vaga varchar(55),
empresa_id int,
foreign key(empresa_id) references Empresas_cadastradas(empresa_id)
);
alter table Vagas add column status_de_vaga varchar(30);
select * from vagas;



-- insert into users -- 


 insert into Usuarios(nome,email,telefone, senha,data_de_nascimento,cpf,rg,cep,data_de_cadastro) values
('Luis Santos Gonzaga','luisgz@gmail.com', '119876-5672','25622#','2000-02-17','42112345609','324567898','01310-010','2024-11-03');
insert into Usuarios(nome,email,telefone, senha,data_de_nascimento,cpf,rg,cep,data_de_cadastro) values
('Pedro Henrique Barbosa','PedroHB@gmail.com','119324-8945','19579@','1995-07-09','45124256756','402906506','04903-190','2024-10-29');         
insert into Usuarios(nome,email,telefone, senha,data_de_nascimento,cpf,rg,cep,data_de_cadastro) values
('Caio de Jesus','ocaio@gmail.com','119590-7654','23454$','1999-12-05','13465045690','314567907','01246-783','2024-09-03');
insert into Usuarios(nome,email,telefone, senha,data_de_nascimento,cpf,rg,cep,data_de_cadastro) values
('Estér Rosa da Silva','esterabs@gmail.com','119653-6390','49809$','1995-07-27','25690820087','713897604','02589-099','2024-11-05'); 
insert into Usuarios(nome,email,telefone, senha,data_de_nascimento,cpf,rg,cep,data_de_cadastro) values
('Bruno Silva', 'bruno.silva@email.com', '119876-5432', '45656#', '1998-03-22', '98765432100', '876543217', '02002-000','2024-09-04' ); 
insert into Usuarios(nome,email,telefone, senha,data_de_nascimento,cpf,rg,cep,data_de_cadastro) values
('Daniela Pereira', 'daniela.pereira@email.com', '119876-5431', '43321!','1999-12-10', '46712978910', '567760129', '04004-050','2024-10-06'); 
insert into Usuarios(nome,email,telefone, senha,data_de_nascimento,cpf,rg,cep,data_de_cadastro) values
('Otávio Nunes', 'otavio.nunes@email.com', '119765-4321', '77765@', '1999-01-27', '78965412920', '901784563', '15015-004','2024-11-17' );  
insert into Usuarios(nome,email,telefone, senha,data_de_nascimento,cpf,rg,cep,data_de_cadastro) values
('Guilherme Aguiar Santos' , 'GuiAguiar@gmail.com','119808-4567','89890#','2002-07-06','32056021232','215679807','03020-990','2024-11-20'); 
insert into Usuarios(nome,email,telefone, senha,data_de_nascimento,cpf,rg,cep,data_de_cadastro) values
('Marcela Souza da Silva ','marcela@gmail.com','119067-8345','20987!','1998-12-03','29054632159','562859879','02010-398','2024-11-13'); 
insert into Usuarios(nome,email,telefone, senha,data_de_nascimento,cpf,rg,cep,data_de_cadastro) values
('Vanessa Camargo Santos de jesus','Vanessantos@gmail.com','119549-4321','34502@','2003-12-28','36045021033','456783506','02315-000','2024-10-15'); 
insert into Usuarios(nome,email,telefone, senha,data_de_nascimento,cpf,rg,cep,data_de_cadastro) values
('Paula Andrade Barbosa','paula@gmail.com','119854-0984','90874$','1997-02-09','13345633240','365604328','01323-090','2024-09-29'); 
insert into Usuarios(nome,email,telefone, senha,data_de_nascimento,cpf,rg,cep,data_de_cadastro) values
('Henriete dos Santos Lima','henriete@gmail.com','119512-9806','55334$','1997-02-16','25950067224','158604447','05628-180','2024-10-14'); 
insert into Usuarios(nome,email,telefone, senha,data_de_nascimento,cpf,rg,cep,data_de_cadastro) values
('Luis Pereira Júnior','Luis@gmail.com','119765-2354','45334$','1999-12-10','13140035280','395005324','09874-094','2024-11-04'); 
insert into Usuarios(nome,email,telefone, senha,data_de_nascimento,cpf,rg,cep,data_de_cadastro) values
('Rosa Vieira','Rosas@gmail.com','119736-1700','10234#','1995-08-16','19050032270','218903423','06718-800','2024-10-03'); 
insert into Usuarios(nome,email,telefone, senha,data_de_nascimento,cpf,rg,cep,data_de_cadastro) values
('Leonardo Oliveira','Leo@gmail.com','119954-1384','10874!','1997-11-09','15695530070','659003251','05318-000','2024-11-18');
insert into Usuarios(nome,email,telefone, senha,data_de_nascimento,cpf,rg,cep,data_de_cadastro) values
( 'Giovane Santos Aguiar','Giovanesantos@gmail.com','119432-1327','67878@','1997-02-09','16752519040','103004205','01926-000','2024-10-09'); 
insert into Usuarios(nome,email,telefone, senha,data_de_nascimento,cpf,rg,cep,data_de_cadastro) values
( 'Rodrigo Silva','Rodrigo@gmail.com','119763-2345','56743#','2000-02-09','16749030050','642605008','54548-000','2024-09-19');  
insert into Usuarios(nome,email,telefone, senha,data_de_nascimento,cpf,rg,cep,data_de_cadastro) values
( 'Julio César','Juliocess@gmail.com','119470-0984','10089$','2002-06-19','20040060080','789505670','08755-010','2024-11-08'); 
insert into Usuarios(nome,email,telefone, senha,data_de_nascimento,cpf,rg,cep,data_de_cadastro) values
( 'Andressa Vieira','Dressa@gmail.com','119221-0683','55438$','1996-04-25','17028545090','287905552','01267-120','2024-09-11');
insert into Usuarios(nome,email,telefone,senha,data_de_nascimento,cpf,rg,cep,data_de_cadastro) values
( 'Gustavo Gabriel dos Santos','Gustav@gmail.com','119437-0875','96324$','2003-10-07','13673207830','906002899','09097-200','2024-11-15'); 



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


-- insert condicao
select * from condicao;
insert into condicao(tipo_de_condicao,Grau_de_dificuldade,usuario_id)values
('Dificuldade em lidar com mudanças inesperadas','Moderado',1);
insert into condicao(tipo_de_condicao,Grau_de_dificuldade,usuario_id)values
('Dificuldade em manter e lidar uma conversa ', 'Moderado',2);
insert into condicao(tipo_de_condicao,Grau_de_dificuldade,usuario_id)values
('Transtornos do sono ', 'Severo',3);
insert into condicao(tipo_de_condicao,Grau_de_dificuldade,usuario_id)values
('Depressão', 'Moderado',4);
insert into condicao(tipo_de_condicao,Grau_de_dificuldade,usuario_id)values
('Ansiedade', 'Leve',5);
insert into condicao(tipo_de_condicao,Grau_de_dificuldade,usuario_id)values
('Transtornos Alimentares', 'Grave',6);
insert into condicao(tipo_de_condicao,Grau_de_dificuldade,usuario_id)values
('Transtorno do Déficit de Atenção e Hiperatividade', 'Moderado',7);
insert into condicao(tipo_de_condicao,Grau_de_dificuldade,usuario_id)values
('Dificuldade de se concetrar e criar Planejamentos', 'Severo',8);
insert into condicao(tipo_de_condicao,Grau_de_dificuldade,usuario_id)values
('Dificuldade de coordenação motora', 'Moderado',9);
insert into condicao(tipo_de_condicao,Grau_de_dificuldade,usuario_id)values
('Hiposensibilidade(pouca sensibilidade a estimulos sensoriais)', 'Grave',10);
insert into condicao(tipo_de_condicao,Grau_de_dificuldade,usuario_id)values
('Hipersensibilidade(sensibilidade excessiva a sons, cheiros, texturas e luzes) ', 'moderado',11);
insert into condicao(tipo_de_condicao,Grau_de_dificuldade,usuario_id)values
('Dificuldade em interpretar linguagens não verbais','moderado',12);
insert into condicao(tipo_de_condicao,Grau_de_dificuldade,usuario_id)values
('Dificuldade em usar a linguagem de forma socialmente apropriada', 'Moderado',13);
insert into condicao(tipo_de_condicao,Grau_de_dificuldade,usuario_id)values
('Dificuldades com a teoria da mente(empatia)','moderado',14);
insert into condicao(tipo_de_condicao,Grau_de_dificuldade,usuario_id)values
('Dificuldade em flexibilizar o pensamento','Moderado',15);
insert into condicao(tipo_de_condicao,Grau_de_dificuldade,usuario_id)values
('Dificuldade em generalizar habilidades', 'Grave',16);
insert into condicao(tipo_de_condicao,Grau_de_dificuldade,usuario_id)values
('Dificuldade em lidar com mudanças(novas rotinas)', 'Moderado',17);
insert into condicao(tipo_de_condicao,Grau_de_dificuldade,usuario_id)values
('Dificuldade em compartilhar interesses', 'Grave',18);
insert into condicao(tipo_de_condicao,Grau_de_dificuldade,usuario_id)values
('Dificuldade em reconhecer e expressar emoções', 'Grave',19);
insert into condicao(tipo_de_condicao,Grau_de_dificuldade,usuario_id)values
('Dificuldade em aprender novas habilidades', 'Moderado',20);


-- INSERT DAS EMPRESAS

insert into Empresas_cadastradas(nome,ramo,email,senha,endereco,matriz_ou_filial,cnpj) values
('Nexora Solutios', 'Gerencia e organiza soluções e serviços na área da Tecnologia.','Nexora@gmail.com','32245','Rua felis 78237','Matriz na América','57898314785312');
insert into Empresas_cadastradas(nome,ramo,email,senha,endereco,matriz_ou_filial,cnpj) values
('Inovari Tech','Desenvolvimento e gerenciamento de Banco de dados ','Inovais4@gmail.com','50615042','Rua calmes 7248','Matriz na Europa','77268974624595');
insert into Empresas_cadastradas(nome,ramo,email,senha,endereco,matriz_ou_filial,cnpj) values
('Lumos Enterprises','Análise de Dados Estatísticos','Lumos@gmail.com','789554','Rua Francisco 8947','Filiais na Ásia, Europa e América do Sul','45256874584156');
insert into Empresas_cadastradas(nome,ramo,email,senha,endereco,matriz_ou_filial,cnpj) values
('NeuronTech','Empresa de desenvolvimento de i.a generativa','NeuronTech@gmail.com','8945756','Rua Jocalis 997','Filial na América','58965475137862');
insert into Empresas_cadastradas(nome,ramo,email,senha,endereco,matriz_ou_filial,cnpj) values 
('Avantech System','Ánalise de Sistemas','Avantech4@gmail.com','8918444','Rua Lima 505478','Matriz na Europa','99785621847856');
insert into Empresas_cadastradas(nome,ramo,email,senha,endereco,matriz_ou_filial,cnpj) values 
('Creativo Online','Criação de Conceitos e Artes online','Creativ@gmail.com','846245','Rua joyk 9897',' Filiais em diferentes continentes, como América do Norte, Europa, Ásia','98725166523757');
insert into Empresas_cadastradas(nome,ramo,email,senha,endereco,matriz_ou_filial,cnpj) values 
('OptimizaEng',' Engenharia de produção','OptimizaEng@gmail.com','45751','Rua Caibuiba 5689',' Filiais em diferentes Estados do Brasil como Rio de Janeiro, São Paulo e Brasilia','58935479856142');
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
('Primora Ventures',' Capital e Investimentos em Tecnologia','Primora@gmail.com','25488','Rua Rebolo 9800','Filiais em outros locais com startups promissoras, como Berlim ou Shenzhen','47510515484987');
insert into Empresas_cadastradas(nome,ramo,email,senha,endereco,matriz_ou_filial,cnpj) values 
('Ascendix Solutions','Soluções de Software Personalizado e Consultoria de TI','Ascendix@gmail.com','5484884','Rua Felipinos 877','Filiais em locais onde empresas necessitam de software personalizado, como mercados emergentes','14568474520516');
insert into Empresas_cadastradas(nome,ramo,email,senha,endereco,matriz_ou_filial,cnpj) values 
('PharmaGen','Indústria Farmacêutica','Pharmagen@gmail.com','056352','Rua Efigenia 1055','Filiais em locais com grandes empresas e indústrias necessitando de melhorias operacionais','15158100147856');
insert into Empresas_cadastradas(nome,ramo,email,senha,endereco,matriz_ou_filial,cnpj) values 
('Solvexia Tech',' Tecnologia de Soluções Empresariais e Automação','Solvexia@gmail.com','55121','Rua de Milao 4441','Filiais com foco em áreas industriais ou comerciais específicas que precisam de automação','15178451094895');
insert into Empresas_cadastradas(nome,ramo,email,senha,endereco,matriz_ou_filial,cnpj) values 
('Criterium Group','Consultoria Jurídica e Compliance Corporativo','Criterium@gmail.com','415150','Rua Bela Vista 4451','Filiais em locais com forte regulamentação e necessidade de compliance, como setores financeiros','28487959560154');
insert into Empresas_cadastradas(nome,ramo,email,senha,endereco,matriz_ou_filial,cnpj) values 
('Nuvemix Technologies','Soluções em Nuvem e Infraestrutura Digital','Nuvemix@gmail.com','141055','Rua Santander','Filiais em regiões com empresas em transição para soluções em nuvem','15148451051487');
insert into Empresas_cadastradas(nome,ramo,email,senha,endereco,matriz_ou_filial,cnpj) values 
('Vantech Partners','Consultoria em Tecnologia,Inovação e data sciense','Ventech@gmail.com','92828','Rua Paraiso 5776','Filiais em mercados locais que necessitam de tecnologia inovação e modulação de dados específicos','11545120215484');
insert into Empresas_cadastradas(nome,ramo,email,senha,endereco,matriz_ou_filial,cnpj) values 
(' Clarity Consulting','Consultoria Empresarial e Estratégia de Marketing','Clarity@gmail.com','450155','Rua Alfreita 8987','Filiais em Belo Horizonte e Porto Alegre, com foco em empresas locais e regionais','10505484954645');
insert into Empresas_cadastradas(nome,ramo,email,senha,endereco,matriz_ou_filial,cnpj) values 
('Equinox Engineering','Engenharia Civil e Construção Sustentável','Equinox@gmail.com','15451','Rua Camaro 777','Filiais em Salvador, Fortaleza e Porto Alegre para grandes projetos regionais','15100226484886');


insert into vagas(nome_vaga,descricao_vaga,categoria_vaga,empresa_id,status_de_vaga)value
 ('Desenvolvedor Back-End', 'Desenvolvimento de aplicações web usando tecnologias modernas.', 'Tecnologia',1,'Ainda Disponível'),
    ('Analista de Dados', 'Responsável pela análise e visualização de dados estratégicos.', 'Tecnologia',2,'Ainda Disponível'),
    ('Cientista de Análise de dados estátisticos', 'Analista e entiusiasta de dados e sistemas metodológicos.', 'Tecnologia',3,'Vagas em fechamento'),
    ('Desenvolvedor De i.a .', 'Desenvolvedor de i.a com foco em metodollogias ágeis','Tecnologia',4,'Ainda Disponível'),
    ('Desenvolvedor Full-Stack', 'Desenvolvedor de sistemas com enfoque na interface de usuário.', 'Tecnologia',5,'Vagas em fechamento'),
    ('Designer conceitual', 'Estratégias e criações de design e artes na internet .', 'Artes visuais',6,'Vagas em fechamento'),
    ('Vendedor Interno', 'Atendimento ao cliente e vendas internas.', 'Comercial',7,'Vagas Encerradas'),
    ('Consultor de Suporte Empresarial', 'Suporte técnico á empresas via palestras e estratégias econômicas.', 'Consultor',8,'Ainda Disponível'), 
    ('Analista de mercado ', 'Analise de mercado promovendo uma maior cultura de estratégias.', 'Tecnologia',9,'Ainda Disponível'),
    ('Arquiteto de Soluções a micro-empresas', 'Desenvolvimento de arquitetura para novos sistemas e micro-empreendimentos.', 'Tecnologia',10,'Vagas em fechamento'),
    ('Especialista em marketing digital', 'Gerenciamento de marketing e infraestrutura.', 'Marketing',11,'Vagas em fechamento'), 
    ('Administrador de finanças', 'Configuração e manutenção de ativos e capitais.', 'Financeiro',12,'Encerrada'),
    ('Pesquisa Cientifica', 'Criação de pesquisas e estudos.', 'Pesquisa e ciência',13,'Encerrada'),
    ('Analista financeiro de empresas de tecnologia emergente', 'Implementação de politicas e anlises financeiras.', 'Financeiro',14,'Ainda Disponível'),
    ('Consultoria de software e ti', 'Consultoria e adequação de softwares para empresas emergentes de ti no mercado.', 'Consultoria',15,'Ainda Disponível'),
    ('Pesquisa e inovação com enfoque na industria farmaceutica', 'Pesquisas de novas cepas e novos elementos para indústria farmacêutica.', 'Pesquisa e ciência',16,'Ainda Disponível'),
    ('Tecnologia de Automação', 'Gestão de automação e indústria oferencendo suportes as empresas.', 'Tecnologia',17,'Vagas em fechamento'),
    ('Consultoria Juridica', 'Auxílio na organização e análise de documentos juridicos e de grau Administrativo.', 'Juridico',18,'Ainda Disponível'),
    ('Cloud e análise de dados', 'Seleção de dados e alocação dos mesmos em serviços de nuvem.', 'Tecnologia',19,'Vagas em fechamento'), 
    ('Especialista em inovação  tecnologia e data science', 'Consultor de data science e inovação no ambito tecnológico.', 'Tecnologia',20,'Encerrada'), 
    ('Consultor de Empresas e estratégias de marketing', 'Apoio em atividades emprasariais e de serviços ede marketing.', 'Marketing',21,'Encerrada'),
    ('Gerente de projetos ', 'Gerenciamento de projetos de engenharia civil com ambito em politicas sustenatáveis.', 'Engenharia civil e construção sustentável',22,'Vagas em fechamento'); 
select * from vagas;
select * from usuarios

