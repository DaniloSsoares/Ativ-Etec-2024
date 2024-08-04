create database Clinica;

use Clinica;

create table Ambulatorios(
nroa int,
andar int not null,
capacidade int,

primary key (nroa),
);

create table Medicos(
codm int ,
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
codp int ,
nome varchar(40) not null,
nasc date not null,
cidade varchar(30),
CPF varchar (14) unique,
doenca varchar(40) not null,

primary key (codp)
);

create table Funcionarios(
codf int ,
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
(1, 'João', '1980/01/01', 'ortopedia', 10000100000, 'Florianópolis', 1),
(2, 'Maria', '1981/02/02', 'traumatologia', 10000110000, 'Blumenau', 2),
(3, 'Pedro', '1982/03/03', 'pediatria', 11000100000, 'São José', 5),
(4, 'Carlos', '2000/04/04', 'ortopedia', 11000110000, 'Joinville', 4),
(5, 'Marcia', '1999/05/03', 'neurologia', 11000111000, 'Biguacu', 3);


insert into Pacientes(codp, nome, nasc,cidade, CPF,doenca)values
(1, 'Ana', '1980/02/02', 'Florianópolis', 20000200000, 'gripe'),
(2, 'Paulo', '2000/01/24', 'Palhoca', 20000220000, 'fratura'),
(3, 'Lucia', '2001/12/30', 'Biguaçu', 22000200000, 'tendinite'),
(4, 'Carlos', '2005/07/28', 'Joinville', 11000110000, 'sarampo');

insert into Funcionarios(codf,nome,nasc,cidade,salario,CPF,cargo,nroa) values 
(1, 'Rita', '2000/12/31', 'São José', 1200, 20000100000, 'Recepcionista', '5'),
(2, 'Maria', '1999/01/29', 'Palhoca', 1220, 30000110000,'Diretor', '2'),
(3, 'Caio', '1980/10/10', 'Florianópolis', 1100, 41000100000,'Enfermeiro', '4'),
(4, 'Carlos', '2005/08/09', 'Florianópolis', 1200, 51000110000,'Recepcionista', '3'),
(5, 'Paula', '2006/09/08', 'Florianópolis', 2500, 61000111000,'Enfermeiro', '5');

insert into Consulta(codm,codp,datas,hora) values
('1','1','2006/06/12','14:00'),
('1','4','2006/06/13','10:00'),
('2','1','2006/06/13','9:00'),
('2','2','2006/06/13','11:00'),
('2','3','2006/06/14','14:00'),
('2','4','2006/06/14','17:00'),
('3','1','2006/06/19','18:00'),
('3','3','2006/06/12','10:00'),
('3','4','2006/06/19','13:00'),
('4','4','2006/06/20','13:00'),
('4','4','2006/06/22','19:30');


UPDATE Pacientes set cidade = 'Ilhota' where codp=2;

UPDATE  Consulta set datas = '2006-07-04', hora = '12:00' where  codm=1 AND codp= 4;

UPDATE Pacientes Set doenca = 'gastrite' where codp = 1;

UPDATE Consulta set hora = '13:30' where codm='3'AND codp='4';

DELETE FROM Funcionarios where  codf='4';

DELETE FROM Consulta where hora>= '19:00';

DELETE from Consulta where codp IN (select codp from pacientes where doenca = 'gastrite' OR nasc > '2014-03-08');
DELETE pacientes where doenca = 'gastrite' or nasc > '2014-03-08';

DELETE FROM Medicos  where cidade= 'Biguacu' OR cidade = 'Palhoca';


select * from Ambulatorios;
select * from Funcionarios;
select * from Consulta;
select * from Medicos;
select * from Pacientes;

drop table Funcionarios;
drop table Consulta;
drop table Medicos;
drop table Ambulatorios;
drop table Pacientes;

drop database Clinica