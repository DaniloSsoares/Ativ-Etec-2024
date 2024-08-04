create database Departamentos;

use Departamentos;


create table Departamento(
Cod_Depart int identity,
NomeDepto varchar(30),

primary key(Cod_Depart),
);



create table Funcionarios(
  Cod_Func int identity,
  NomeFunc Varchar(14),
  SobreNome varchar(30),
  DataNasc date, 
  CPF varchar(14),
  RG varchar(17),
  Endereco varchar(30),
  CEP varchar(21),
  Cidade varchar(20),
  Fone varchar(15),
  Cod_Depart int,
  Funcao varchar(50),
  Salario float,
  primary key (Cod_Func),
  foreign key(Cod_Depart) references Departamento(Cod_Depart)
);


INSERT INTO Departamento(NomeDepto) VALUES
('Tecnologia'),
('Recursos Humanos'),
('Adiministração');

insert into Funcionarios (NomeFunc, SobreNome, DataNasc, CPF, RG, Endereco, CEP, Cidade, Fone, Cod_Depart, Funcao, Salario) values
('João', 'Silva', '1985-06-15', '123.456.789-09', 'MG-10.987.654', 'Rua das Flores, 123', '31200-000', 'Belo Horizonte', '(11) 94524-8468', 1, 'Desenvolvedor', 4500.00),
('Maria', 'Fernandes', '1990-08-25', '987.654.321-09', 'SP-20.876.543', 'Av. Paulista, 1800', '04567-000', 'São Paulo', '(11) 95612-4582', 2, 'Analista de RH', 3500.00),
('Pedro', 'Fernandes', '2000-05-18', '937.674.211-10', 'SP-15.926.133', 'Rua Augusta, 245', '17229-000', 'São Paulo', '(11) 96482-8464', 1, 'Desenvolvedor', 4500.00),
('Julia', 'Santos', '1999-07-13', '953.874.231-04', 'SP-21.347.286', 'Av. Ibirapuera, 405', '34575-480', 'São Paulo', '(11) 99587-4582', 3, 'Administração', 4500.00),
('Carlos', 'Oliveira', '1980-03-20', '948.495.864-08', 'SP-12.954.846', 'Av. Brigadeiro, 1572', '93485-846', 'São Paulo', '(11) 97561-6482', 2, 'Analista de RH', 5000.00),
('Alexandre', 'Santos', '2002-02-14', '485.845.548-23', 'SP-85.478.785', 'Rua Liberdade, 190', '45513-845', 'São Paulo', '(11) 99845-7456', 3, 'Administração', 2300.00),
('Danilo', 'Soares', '2005-06-01', '953.874.231-04', 'SP-21.347.286', 'Rua dos Pinheiros, 506', '34575-480', 'São Paulo', '(11) 98452-8464', 1, 'Desenvolvedor', 2500.00),
('Gustavo', 'Brandão', '2006-04-13', '253.068.256-09', 'SP-41.312.186', 'Av. Rebouças, 3000', '48135-754', 'São Paulo', '(11) 98442-8945', 1, 'Desenvolvedor', 2500.00),
('Ana', 'Ribeiro', '1992-10-07', '222.333.444-55', 'SP-15.666.777', 'Av. Ana Costa, 475', '11000-000', 'Santos', '(13) 98234-5678', 2, 'Gestora de RH', 4800.00),
('Ricardo', 'Menezes', '1988-04-25', '555.666.777-88', 'RJ-22.333.444', 'Rua Visconde de Pirajá, 414', '22090-000', 'Rio de Janeiro', '(21) 97531-8899', 3, 'Administração', 7000.00);


--1)
select NomeFunc, SobreNome from Funcionarios order by SobreNome;
--2)
select * from Funcionarios order by Cidade;

--3)
select * from Funcionarios where Salario > 1000 order by NomeFunc, SobreNome;

--4)
select DataNasc, NomeFunc from Funcionarios order by DataNasc desc;

--5)
select SobreNome, NomeFunc, Cidade,Endereco ,Fone from Funcionarios;

--6)
select sum(Salario) as TotalPagamento from Funcionarios;

--7)
select NomeFunc + ' ' + SobreNome as NomeCompleto, Salario, Funcao from Funcionarios order by Funcao;

--8)
select * from Funcionarios where Funcao = 'Supervisor';
--ou
select * from Funcionarios where Funcao = 'Desenvolvedor';
--9)
select Count(*) as TotalFuncionarios from Funcionarios;

--10)
select avg(Salario) as MédiaPago from Funcionarios;
--11)
select * from Funcionarios where Funcao='Telefonista' and Cidade=' Recife';
--ou
select *from Funcionarios where Funcao='Administração' and Cidade='São paulo';

--Selects com inner join
--1)
select Funcionarios.NomeFunc+ ''+ Funcionarios.SobreNome as NomeCompleto,Funcionarios.Funcao, Departamento.NomeDepto from  Funcionarios inner join  Departamento on Funcionarios.Cod_Depart = Departamento.Cod_Depart;

--2)
select Departamento.NomeDepto, Funcionarios.NomeFunc from Funcionarios inner join Departamento on Funcionarios.Cod_Depart = Departamento.Cod_Depart where funcao ='supervisor';
--ou
select Departamento.NomeDepto, Funcionarios.NomeFunc from Funcionarios inner join Departamento on Funcionarios.Cod_Depart = Departamento.Cod_Depart where funcao ='Desenvolvedor';

--3)
select Departamento.NomeDepto, Funcionarios.NomeFunc +''+ Funcionarios.SobreNome as NomeCompleto from Funcionarios inner join Departamento on Funcionarios.Cod_Depart = Departamento.Cod_Depart order by  SobreNome ,Departamento.NomeDepto ;


--comandos Group by
--1) 
select Departamento.NomeDepto, sum(Salario)as folha_Pagamento from Funcionarios inner join Departamento on Funcionarios.Cod_Depart = Departamento.Cod_Depart group by NomeDepto
--2)
select Departamento.NomeDepto, Min(Salario)as folha_Pagamento from Funcionarios inner join Departamento on Funcionarios.Cod_Depart = Departamento.Cod_Depart group by NomeDepto

--comandos SubQuery
select Funcionarios.NomeFunc from Funcionarios where Funcionarios.Cod_Depart = (select Departamento.Cod_Depart from Departamento where Departamento.NomeDepto='Pessoa')
--ou
select Funcionarios.NomeFunc from Funcionarios where Funcionarios.Cod_Depart = (select Departamento.Cod_Depart from Departamento where Departamento.NomeDepto='Tecnologia')

select *from Departamento;

select * from Funcionarios

drop table Funcionarios;

drop table Departamento;

