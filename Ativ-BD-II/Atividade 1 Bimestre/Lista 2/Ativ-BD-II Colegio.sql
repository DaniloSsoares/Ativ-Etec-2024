CREATE DATABASE Colegio

use Colegio;

create table disciplinas(
CodDisciplinas char(2),
NomeDisciplina varchar(30),

primary key( CodDisciplinas)
);

create table cursos(
cod_curso char(2),
nome varchar(50),
coddisc1 char(2),
coddisc2 char(2),
coddisc3 char(2),

primary key (cod_curso),

foreign KEY (coddisc1) references disciplinas(CodDisciplinas),
foreign KEY (coddisc2)references disciplinas(CodDisciplinas),
foreign KEY (coddisc3)references disciplinas(CodDisciplinas),
);

create table alunos(
matricula varchar(5),
nome varchar(50) not null,
endereco varchar(50) not null,
cidade varchar(30) not null,
cod_curso char(2),

primary key (matricula),
foreign KEY(cod_curso) references cursos(cod_curso),
);

insert into disciplinas(CodDisciplinas,NomeDisciplina) values
('11','Banco de Dados'),
('12','Lógica de Programação'),
('13','Desenvolvimento de Software 1'),
('21','Banco de Dados 2'),
('22','Desenvolvimento de Software 2'),
('23','Programação de Computadores 1'),
('31','Banco de Dados 3'),
('32','Programação de Computadores 2'),
('33','Desenvolvimento de Software 3');

insert into cursos(cod_curso,nome,coddisc1,coddisc2,coddisc3)
values
('01','Auxiliar de Informática','11','12','13'),
('02','Programação de Computadores','21','22','23'),
('03','Técnico em Informática','31','32','33');

insert into alunos (matricula,nome,endereco,cidade,cod_curso)
values
('10001','Marcos Moraes ','Rua Pe Roque, 2057','Mogi Mirim','01'),
('10002','Maria Conceição Lopes','Rua Araras,23','Mogi Guaçu','01'),
('10003','Ana Carina Lopes','Rua Peraltas, 222','Santos','01'),
('10004','Carlos Aguiar','Rua Botafogo, 33','Santos','01'),
('10005','André Luiz dos Santos','Rua Lopes Conte. 3343','Sapucaí','01'),
('10006','Pedro Antonio Pimenta','Rua Altair Lopes, 33','Itapira','02'),
('10007','Rita de Cássia da Silva','Rua Eletromas, 33','Itapira','02'),
('10008','Caique dos Santos','Rua das Amoreiras,56','Campinas','02'),
('10009','Carlos Tavares','Rua Peixe, 99','Santos','02'),
('10010','Antonio Carlos Caetano','Rua Josefina Alface, 987','Campinas','02'),
('10011','Ricardo Moreira','Rua do Pinhal,332','Aparecida','03'),
('10012','Richardson S. P. Campeão','Rua do Tricolor, 433','São Paulo','03'),
('10013','Junior Camisa Seis','Rua do Morumbi, 433','São Paulo','03'),
('10014','Carina Melo','Rua Osvaldo Ramos, 88','Mogi Guaçu','03'),
('10015','Pedro Mello','Rua Itororó, 3999','Mogi Mirim','03');



select*from alunos
select*from cursos
select*from disciplinas

 drop table  alunos;
 drop table  cursos;
 drop table  disciplinas;

 drop database Colegio;