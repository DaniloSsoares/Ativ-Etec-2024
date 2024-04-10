create database Clinica;

use Clinica;

create table Ambulatorios(
nroa int identity,
andar int not null,
capacidade int,

primary key (nroa),
);

create table Medicos(
codm int identity,
nome varchar(40) not null,
nasc date not null,
especialidade varchar(20),
CPF varchar(14) unique,
cidade varchar (30),
nroa int,

primary key (codm),

foreign key(nroa) references Ambulatorios(nroa),
);

create table Pacientes(
codp int identity,
nome varchar(40) not null,
nasc date not null,
cidade varchar(30),
CPF varchar (14) unique,
doenca varchar(40) not null,

primary key (codp)
);

create table Funcionarios(
codf int identity,
nome varchar(40) not null,
nasc date,
CPF varchar (14) unique,
cidade varchar(30),
salario float,
cargo varchar(20),
nroa int,

primary key (codf),

foreign key (nroa) references Ambulatorios(nroa)

);

create table Consulta(
codm int,
codp int,
datas date,
hora time,

foreign key (codm) references Medicos(codm),
foreign key (codp) references Pacientes(codp),
);

insert into Ambulatorios(nroa,andar,capacidade) values
('1','1','30'),
('2','1','50'),
('3','2','40'),
('4','2','25'),
('5','2','55');

insert into Medicos(codm,nome,nasc,especialidade,CPF,cidade,nroa)
values
('1','Joao','01-01-1980','ortopedia','','',''),
('2','Maria','','','','',''),
('3','Pedro','','','','',''),
('4','Carlos','','','','',''),
('5','Marcia','','','','',''),
