create database BDComercio;

use BDComercio;

--Tabela estado civil
create table Estado_civil(
cod_est_civil int primary key,
desc_est_civil varchar (150)
);

--Tabela Cliente
create table Cliente(
cod_cliente int primary key,
nome_cliente varchar(60),
cod_est_civil int, 
salario float,

foreign key(cod_est_civil) references Estado_Civil(cod_est_civil)
);

--Tabela  Conjuge
create table Conjuge(
cod_conjuge Int primary key,
nome_conjuge varchar (60),
cod_cliente int,

foreign key(cod_cliente) references Cliente(cod_cliente),
);

--Tabela Tipo do telefone
create table Tipo_fone(
cod_fone int primary key,
desc_fone varchar(150)
);

--Tabela Telefone
create table Telefone(
cod_cliente int,
cod_fone int,
numero_fone varchar(13),

foreign key(cod_cliente) references Cliente(cod_cliente),
foreign key(cod_fone) references Tipo_fone(cod_fone)
);

--Tabela Produto
create table Produto(
cod_produto int primary key,
nome_produto varchar(150),
tipo_produto varchar (20)
);

--Tabela Funcionário
create table Func(
cod_func int primary key,
nome_func varchar (150)
);

--Tabela Pedido
create table Pedido(
cod_pedido int primary key,
cod_cliente int,
cod_func int,
data_pedido date,

foreign key(cod_cliente) references Cliente(cod_cliente),
foreign key(cod_func) references Func(cod_func)

);

--Tabela Item-Pedido
create table item_Pedido(
cod_pedido int,
cod_produto int,
qtde_produto int,

foreign key(cod_pedido) references Pedido(cod_pedido),
foreign key(cod_produto) references Produto(cod_produto)
);

--Tabela Premio
create table Premio(
cod_func int,
valor_premio float,

foreign key(cod_func) references Func(cod_func)
); 

--Tabela Dependente
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
(2, 'João Pereira', 2, 4500.00),
(3, 'Ana Costa', 3, 3200.00),
(4, 'Daniel Soares',2,4000.00),
(5, 'Vitória Rodrigues',2,4000.00),
(6, 'Pedro Ferri',1,2400.00),
(7, 'Lucas',2,5250.00),
(8, 'Gyovanna Soares',1,4250.00),
(9, 'Nicole Castro', 3,1500.00),
(10, 'Rener',3,3500.00);


INSERT INTO Conjuge (cod_conjuge, nome_conjuge, cod_cliente) VALUES
(1, 'Carlos Silva', 1), 
(2, 'Luciana Pereira', 2), 
(3, 'Sarah Beatriz', 4),
(4, 'Daniel', 5),
(5, 'julia', 7); 


INSERT INTO Tipo_fone (cod_fone, desc_fone) VALUES
(1, 'Residencial'),
(2, 'Comercial'),
(3, 'Celular');


INSERT INTO Telefone (cod_cliente, cod_fone, numero_fone) VALUES
    (1, 1, NULL), 
    (2, 2, '(11)876543210'), 
    (3, 3, '(11)965293645'),
    (4, 1, '(11)965192836'),
    (5, 2, '(11)965195673'),
    (6, 3, '(11)965028597'),
    (7, 1, '(11)963754893'),
    (8, 2, '(11)965975624'),
    (9, 3, '(11)965482313'),
    (10, 1, '(11)965452315');

INSERT INTO Produto (cod_produto, nome_produto, tipo_produto) VALUES
    (1, 'Computador', 'Eletrônico'), 
    (2, 'Impressora', 'Eletrônico'),
    (3, 'Mesa de Escritório', 'Móvel'),
    (4, 'Fósforo', 'Utilidade'), 
    (5, 'Monitor', 'Eletrônico'),
    (6, 'Caderno', 'Papelaria'),
    (7, 'TV', 'Eletrônico'),
    (8, 'Fita adesiva', 'Papelaria'),
    (9, 'Bola de Vôlei', 'Esporte'), 
    (10, 'Controle de videogame Xbox', 'Eletrônico'); 

INSERT INTO Func (cod_func, nome_func) VALUES
    (1, 'Carlos Almeida'),
    (2, 'Roseane Santos'),
    (3, 'Miguel Ferreira'),
    (4, 'Francisco Silva'),
    (5, 'Rener Amaro'),
    (6, 'Glaúcia Bennet'),
    (7, 'Tiago Baumer'),
    (8, 'Sarah Santana'),
    (9, 'Andrei Medina'),
    (10, 'Bernardo Diniz'); 

INSERT INTO Pedido (cod_pedido, cod_cliente, cod_func, data_pedido) VALUES
    (1, 1, 1, '2024-08-01'), 
    (2, 2, 2, '2024-08-02'), 
    (3, 3, 3, '2024-08-03'),
    (4, 4, 4, '2024-06-02'),
    (5, 6, 3, '2024-04-12'),
    (6, 9, 3, '2024-02-14'),
    (7, 7, 3, '2024-04-03'),
    (8, 5, 3, '2024-06-06'),
    (9, 8, 10, '2024-06-07'),
    (10, 10, 3, '2024-02-21');  

INSERT INTO item_Pedido (cod_pedido, cod_produto, qtde_produto) VALUES
    (1, 1, 1),  
    (2, 2, 2), 
    (3, 3, 3),
    (4, 5, 4),
    (5, 8, 2),
    (6, 10, 5),
    (7, 3, 17),
    (8, 1, 2),
    (9, 4, 18),
    (10, 6, 2); 

INSERT INTO Premio (cod_func, valor_premio) VALUES
    (1, null), 
    (2, 300.00), 
    (3, 700.00),
    (4, 300.00),
    (5, 500.00),
    (6, 800.00),
    (7, 100.00),
    (8, 530.00),
    (9, 180.00),
    (10, 1200.00); 

INSERT INTO Dependente (cod_dep, nome_dep, data_nasc, cod_func) VALUES
    (1, 'Juliana Almeida', '2010-05-01', 1),  
    (2, 'Paulo Santos', '2012-07-15', 2), 
    (3, 'Mariana Ferreira', '2008-09-30', 3),
    (4, 'Lucas Almeida', '2011-03-21', 1), 
    (5, 'Clara Medina', '2009-11-19', 9); 

	--Lista de Exericios
	--Parte 1

	--1)
	select Cliente.nome_cliente, Telefone.numero_fone from Cliente  inner join Telefone on Cliente.cod_cliente = Telefone.cod_cliente;

	--2)
    select Cliente.nome_cliente, Conjuge.nome_conjuge from Cliente inner join Estado_civil on Cliente.cod_est_civil = Estado_civil.cod_est_civil join Conjuge on Cliente.cod_cliente = Conjuge.cod_cliente where Estado_civil.desc_est_civil = 'Casado';
	--ou
	select Cliente.nome_cliente, Conjuge.nome_conjuge from Cliente inner join Conjuge on Cliente.cod_cliente = Conjuge.cod_cliente where cod_est_civil = 2;

	--3)
	select Cliente.nome_cliente, Telefone.numero_fone, Tipo_fone.desc_fone from Cliente join  Telefone on Cliente.cod_cliente = Telefone.cod_cliente join Tipo_fone on Tipo_fone.cod_fone = Telefone.cod_fone;
	--4)
	select Cliente.nome_cliente, Func.nome_func, Pedido.cod_cliente, Pedido.cod_func,Pedido.cod_pedido, Pedido.data_pedido from Cliente join Pedido on Cliente.cod_cliente = Pedido.cod_cliente join  Func on Func.cod_func = Pedido.cod_func;
	--5)
	select Pedido.cod_pedido, Pedido.data_pedido , Cliente.nome_cliente from Cliente join Pedido on Cliente.cod_cliente = Pedido.cod_cliente join Func on Pedido.cod_func = Func.cod_func where Func.nome_func = 'Francisco Silva';
	--6)
	select Pedido.cod_pedido, Pedido.data_pedido, Func.cod_func, Func.nome_func from Cliente join Pedido on Cliente.cod_cliente = Pedido.cod_cliente join Func on Pedido.cod_func = Func.cod_func where Cliente.nome_cliente = 'Rener'

	--Parte 2
	--7)
	select Dependente.nome_dep, Dependente.data_nasc, Func.nome_func from Dependente join Func on Dependente.cod_func = Func.cod_func
	--8)
	select Pedido.cod_pedido, Pedido.data_pedido, Produto.nome_produto from Cliente join Pedido on Cliente.cod_cliente = Pedido.cod_cliente join item_Pedido on Pedido.cod_pedido = item_Pedido.cod_pedido join  Produto on item_Pedido.cod_produto = Produto.cod_produto
	--9)
	select Pedido.cod_pedido, Pedido.data_pedido, Func.nome_func from Func Join Pedido on Func.cod_func =Pedido.cod_func join item_Pedido on Pedido.cod_pedido = item_Pedido.cod_pedido join  Produto on item_Pedido.cod_produto = Produto.cod_produto where  Produto.nome_produto = 'Fósforo';
	--10)
	select Pedido.cod_pedido, Pedido.data_pedido, Produto.nome_produto from Cliente join Pedido on Cliente.cod_cliente = Pedido.cod_cliente join item_Pedido on Pedido.cod_pedido = item_Pedido.cod_pedido join  Produto on item_Pedido.cod_produto = Produto.cod_produto where Cliente.nome_cliente like'Daniel Soares'
	--11)
	select Produto.nome_produto from Func join Pedido on Func.cod_func = Pedido.cod_func join item_Pedido on Pedido.cod_pedido = item_Pedido.cod_pedido join Produto on item_Pedido.cod_produto = Produto.cod_produto where Func.nome_func = 'Roseane Santos';
	--12)
	select Cliente.nome_cliente, Produto.nome_produto from Cliente join Pedido on Cliente.cod_cliente = Pedido.cod_cliente join item_Pedido on Pedido.cod_pedido = item_Pedido.cod_pedido join Produto on item_Pedido.cod_produto = Produto.cod_produto;
	--13)
	select Func.nome_func, Produto.nome_produto from Func join Pedido on Func.cod_func = Pedido.cod_func join item_Pedido on Pedido.cod_pedido = item_Pedido.cod_pedido join Produto on item_Pedido.cod_produto = Produto.cod_produto;


	--Parte 3
	--14)
	select  Func.nome_func, sum(Premio.valor_premio) as total_premios from Func join  Premio on Func.cod_func = Premio.cod_func group by Func.nome_func;

	--15)
	select Func.nome_func, Count(Dependente.nome_dep) as quant_depend from Func join Dependente on Func.cod_func = Dependente.cod_func group by Func.nome_func

	--16
	select Estado_civil.desc_est_civil, count(Estado_civil.desc_est_civil) as Estado_civil from Cliente join Estado_civil on Cliente.cod_est_civil = Estado_civil.cod_est_civil group by Estado_civil.desc_est_civil

	--17)
	select Cliente.* , Telefone.numero_fone from Cliente left join Telefone on Cliente.cod_cliente = Telefone.cod_cliente where Telefone.numero_fone is null;
     --ou
    select Cliente.nome_cliente,Cliente.salario, Telefone.numero_fone from Cliente left join Telefone on Cliente.cod_cliente= Telefone.cod_cliente where Telefone.numero_fone Is null

	--18)
	select Estado_civil.desc_est_civil, Cliente.* from Cliente join Estado_civil on Cliente.cod_est_civil = Estado_civil.cod_est_civil where Estado_civil.desc_est_civil = 'Solteiro'

	--19
    select Estado_civil.desc_est_civil, Cliente.* from Cliente join Estado_civil on Cliente.cod_est_civil = Estado_civil.cod_est_civil where Estado_civil.desc_est_civil = 'Casado'
	
	--20
	select Premio.valor_premio, Func.* from Func join Premio on Func.cod_func = Premio.cod_func where Premio.valor_premio is NULL

	--21)
	select Func.* from Func left join Dependente on Func.cod_func = Dependente.cod_func where Dependente.nome_dep IS NULL;

	--22)
	select Produto.* from Produto left join item_Pedido on Produto.cod_produto = item_Pedido.cod_produto where item_Pedido.cod_produto is null

SELECT * FROM Cliente;
SELECT * FROM Conjuge;
SELECT * FROM Tipo_fone;
SELECT * FROM Telefone;
SELECT * FROM Estado_civil;
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

drop database BDComercio