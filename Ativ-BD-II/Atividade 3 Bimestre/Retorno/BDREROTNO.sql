create database  BDRETORNO;

use BDRETORNO;

create table funcionarios (
id int primary key identity,
nome varchar (60), email varchar(60),
salario float, 
data_nascimento date,
cidade  varchar (60),
estado varchar(2)
);

	
INSERT INTO funcionarios VALUES ('João', 'joao1970@gmail.com', 8000.00,'1970-05-20','São Paulo','SP');  
INSERT INTO funcionarios VALUES ('Camila', 'camila@gmail.com', 3000.00,'1985-07-23','São Paulo','SP'); 
INSERT INTO funcionarios VALUES ('Marcio', 'marcio@gmail.com', 900.00,'1982-03-15','Campinas','SP'); INSERT INTO funcionarios VALUES ('Fernanda', 'fernanda@gmail.com', 3500.00,'1987-08-18','Rio de Janeiro','RJ'); 
INSERT INTO funcionarios VALUES ('José', 'jose@gmail.com', 2200.00,'1990-09-18','Guaxupé','MG'); INSERT INTO funcionarios VALUES ('Fabiano', 'fabiano@gmail.com', 6800.00,'1981-01-30','Poços de Caldas','MG'); 
INSERT INTO funcionarios VALUES ('Fernanda', 'Fernanda@gmail.com', 3200.00,'1991-05-09','SP','SP'); 


 --1)
--1A)
INSERT INTO funcionarios VALUES ('Julia', 'Julia@gmail.com', 4200.00,'2002-02-08','Araucária','PR'); 
INSERT INTO funcionarios VALUES ('Pedro', 'Pedro@gmail.com', 1500.00,'1989-02-08','Maringá','PR'); 
SELECT * FROM funcionarios; 

--1B)
INSERT INTO funcionarios VALUES ('Kaique', 'Kaique@gmail.com', 3500.00,'1980-05-10','Manaus','AM'); 
INSERT INTO funcionarios VALUES ('Daniel', 'Daniel@gmail.com', 3900.00,'1989-03-04','Manaus','AM'); 
SELECT * FROM funcionarios; 

--1C)
INSERT INTO funcionarios (nome, email, salario, data_nascimento, cidade, estado)
VALUES 
('Ana', 'ana.souza@example.com', 2500.00, '1992-05-12', 'Salvador', 'BA'),
('Carlos', 'carlos.silva@example.com', 2200.00, '1994-11-23', 'Fortaleza', 'CE'),
('Fernanda', 'fernanda.lima@example.com', 2700.00, '1991-08-19', 'Recife', 'PE'),
('Julio', 'joao.oliveira@example.com', 2300.00, '1996-02-10', 'Natal', 'RN'),
('Patrícia', 'patricia.costa@example.com', 2400.00, '2000-03-05', 'Aracaju', 'SE');
SELECT * FROM funcionarios; 

--1D)
INSERT INTO funcionarios (nome, email, salario, data_nascimento, cidade, estado)
VALUES 
('Mariana Silva', 'mariana.silva@example.com', 3200.00, '1995-07-25', 'Porto Alegre', 'RS');
SELECT * FROM funcionarios; 

 --2)
 select avg(salario) as media_Salario from funcionarios  where estado in ('SC', 'RS', 'PR')
 
 --3)
 select avg(salario) as media_salario from funcionarios where estado in ('BA', 'CE', 'MA', 'PB', 'PE', 'PI','RN','SE')

 --4)
 select max(salario) as salario_mais_alto from funcionarios

 --5)
 select count(*)as funcionarios_sud from funcionarios where estado in ('SP','RJ','MG','ES')

 --6)
 select min(salario) as menor_salario from funcionarios

 --7)
 select * from funcionarios  where data_nascimento < '2000-01-01'

 --8)
 select avg(salario) as salario_antes_2000 from funcionarios  where data_nascimento < '2000-01-01'

 --9)
 select * from funcionarios  where data_nascimento >= '2000-01-01' 

 --10)
 select avg(salario) as media_salario_apos_2000 from funcionarios where data_nascimento >= '2000-01-01'

SELECT * FROM funcionarios; 
drop table funcionarios

 
