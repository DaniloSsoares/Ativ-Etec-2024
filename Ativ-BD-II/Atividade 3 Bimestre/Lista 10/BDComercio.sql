create database BDComercio;

use BDComercio;


create table Estado_civil(
cod_est_civil int primary key,
desc_est_civil varchar (150),
);

create table Cliente(
cod_cliente int primary key,
nome_cliente varchar(60),
cod_est_civil int, 
salario float,

foreign key(cod_est_civil) references Estado_Civil(cod_est_civil)
);

create table Conjuge(
cod_conjuge Int primary key,
nome_conjuge varchar (60),
cod_cliente int

foreign key(cod_cliente) references Cliente(cod_cliente),
);

create table Tipo_fone(
cod_fone int primary key,
desc_fone varchar(150)
);

create table Telefone(
cod_cliente int,
cod_fone int,
numero_fone varchar(13),

foreign key(cod_cliente) references Cliente(cod_cliente),
foreign key(cod_fone) references Tipo_fone(cod_fone)
);

create table Produto(
cod_produto int primary key,
nome_produto varchar(150),

);

create table Func(
cod_func int primary key,
nome_func varchar (150)
);

create table Pedido(
cod_pedido int primary key,
cod_cliente int,
cod_func int,
data_pedido date,

foreign key(cod_cliente) references Cliente(cod_cliente),
foreign key(cod_func) references Func(cod_func)

);

create table item_Pedido(
cod_pedido int,
cod_produto int,
qtde_produto int

foreign key(cod_pedido) references Pedido(cod_pedido),
foreign key(cod_produto) references Produto(cod_produto)
);


create table Premio(
cod_func int,
valor_premio float,

foreign key(cod_func) references Func(cod_func)
); 

create table Dependente(
cod_dep int primary key,
nome_dep varchar(60),
data_nasc date,
cod_func int,

foreign key(cod_func) references Func(cod_func),
);



INSERT INTO Estado_civil (cod_est_civil, desc_est_civil) VALUES
(1, 'Solteiro'),
(2, 'Casado'),
(3, 'Divorciado');


INSERT INTO Cliente (cod_cliente, nome_cliente, cod_est_civil, salario) VALUES
(1, 'Maria Silva', 2, 3500.00),
(2, 'João Pereira', 1, 4500.00),
(3, 'Ana Costa', 3, 3200.00);


INSERT INTO Conjuge (cod_conjuge, nome_conjuge, cod_cliente) VALUES
(1, 'Carlos Silva', 1), 
(2, 'Luciana Pereira', 2), 
(3, 'Roberto Costa', 3); 


INSERT INTO Tipo_fone (cod_fone, desc_fone) VALUES
(1, 'Residencial'),
(2, 'Comercial'),
(3, 'Celular');


INSERT INTO Telefone (cod_cliente, cod_fone, numero_fone) VALUES
(1, 1, '11987654321'), 
(2, 2, '11876543210'), 
(3, 3, '11965432187');  


INSERT INTO Produto (cod_produto, nome_produto) VALUES
(1, 'Computador'),
(2, 'Impressora'),
(3, 'Mesa de Escritório');


INSERT INTO Func (cod_func, nome_func) VALUES
(1, 'Carlos Almeida'),
(2, 'Roberta Santos'),
(3, 'Miguel Ferreira');


INSERT INTO Pedido (cod_pedido, cod_cliente, cod_func, data_pedido) VALUES
(1, 1, 1, '2024-08-01'), 
(2, 2, 2, '2024-08-02'), 
(3, 3, 3, '2024-08-03');  


INSERT INTO item_Pedido (cod_pedido, cod_produto, qtde_produto) VALUES
(1, 1, 1),  
(2, 2, 2), 
(3, 3, 3);  


INSERT INTO Premio (cod_func, valor_premio) VALUES
(1, 500.00), 
(2, 300.00), 
(3, 700.00); 


INSERT INTO Dependente (cod_dep, nome_dep, data_nasc, cod_func) VALUES
(1, 'Juliana Almeida', '2010-05-01', 1),  
(2, 'Paulo Santos', '2012-07-15', 2), 
(3, 'Mariana Ferreira', '2008-09-30', 3);  


SELECT * FROM Estado_civil;
SELECT * FROM Cliente;
SELECT * FROM Conjuge;
SELECT * FROM Tipo_fone;
SELECT * FROM Telefone;
SELECT * FROM Produto;
SELECT * FROM Func;
SELECT * FROM Pedido;
SELECT * FROM item_Pedido;
SELECT * FROM Premio;
SELECT * FROM Dependente;


drop table Estado_civil;
drop table Cliente;
drop table Conjuge;
drop table Tipo_fone;
drop table Telefone;
drop table Produto;
drop table Func;
drop table Pedido;
drop table item_Pedido;
drop table Premio;
drop table Dependente;