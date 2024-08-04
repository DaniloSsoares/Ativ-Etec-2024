-- criar bd Exemplo_Select
CREATE DATABASE Exemplo_Select;

-- abrir bd Exemplo_Select
use Exemplo_Select;

-- criação tabela Categoria
CREATE TABLE Categoria
(
Cod_Categoria int,
Nome_Categoria varchar (15) NOT NULL,
Descricao varchar(25) NULL,
PRIMARY KEY (Cod_Categoria)
 );

INSERT into categoria (Cod_categoria,Nome_categoria,descricao) 
VALUES (1,'Beverages','Soft drinks');

INSERT into categoria (Cod_categoria,Nome_categoria,descricao) 
VALUES (2,'Condiments','Sweet and savory sauces');

INSERT into categoria (Cod_categoria,Nome_categoria,descricao) 
VALUES (3,'Confections','candies');

INSERT into categoria (Cod_categoria,Nome_categoria,descricao) 
VALUES (4,'Dairy Products','Cheeses');

INSERT into categoria (Cod_categoria,Nome_categoria,descricao) 
VALUES (5,'Grains/Cereals','cereal');

INSERT into categoria (Cod_categoria,Nome_categoria,descricao) 
VALUES (6,'Meat/Poultry','Prepared meats');

INSERT into categoria (Cod_categoria,Nome_categoria,descricao) 
VALUES (7,'Produce','Dried fruit and bean curd');

INSERT into categoria (Cod_categoria,Nome_categoria,descricao) 
VALUES (8,'Seafood','Seaweed and fish');


CREATE TABLE Envio
 (
	Cod_Envio int,
 	DataEnvio datetime,
  	Frete int,
	NomeNavio varchar(40),
 	Cidade varchar(15),
	Regiao varchar(15),
 	Pais varchar(15)
 );


INSERT INTO Envio (Cod_Envio,DataEnvio,Frete,NomeNavio,Cidade,Regiao,Pais)
VALUES (10248,'7/4/1996',32.38,'Vins et alcools Chevalier','Abbaye','Reims','France');

INSERT INTO Envio (Cod_Envio,DataEnvio,Frete,NomeNavio,Cidade,Regiao,Pais)
VALUES (10249,'7/5/1996',11.61,'Toms Spezialitaten','Luisenstr',nULL,'Germany');

INSERT INTO Envio (Cod_Envio,DataEnvio,Frete,NomeNavio,Cidade,Regiao,Pais)
VALUES (10250,'7/8/1996',65.83,'Hanari Carnes','Rio de Janeiro','Sudeste','Brazil');

INSERT INTO Envio (Cod_Envio,DataEnvio,Frete,NomeNavio,Cidade,Regiao,Pais)
VALUES (10251,'7/8/1996',41.34,'Victuailles en stock','Lyon',NULL,'France');

INSERT INTO Envio (Cod_Envio,DataEnvio,Frete,NomeNavio,Cidade,Regiao,Pais)
VALUES (10252,'7/9/1996',51.30,'Supremes delices','Boulevard Tirou', 'Charleroi','Belgium');

INSERT INTO Envio (Cod_Envio,DataEnvio,Frete,NomeNavio,Cidade,Regiao,Pais)
VALUES (10253,'7/10/1996',58.17,'Hanari Carnes','Rio de Janeiro','Sudeste','Brazil');

INSERT INTO Envio (Cod_Envio,DataEnvio,Frete,NomeNavio,Cidade,Regiao,Pais)
vALUES (10254,'7/11/1996',22.98,'Chop-suey Chinese','Bern',NULL,'Switzerland');

INSERT INTO Envio (Cod_Envio,DataEnvio,Frete,NomeNavio,Cidade,Regiao,Pais)
VALUES (10255,'7/12/1996',148.33,'Richter Supermarkt','Geneve',	NULL,'Switzerland');

INSERT INTO Envio (Cod_Envio,DataEnvio,Frete,NomeNavio,Cidade,Regiao,Pais)
VALUES (10256,'15/7/1996',13.97,'Wellington Importadora','Resende','Sul','Brazil');

INSERT INTO Envio (Cod_Envio,DataEnvio,Frete,NomeNavio,Cidade,Regiao,Pais)
VALUES (10257,'8/8/1996',81.91,'HILARION-Abastos','San Cristobal','Tachira','Venezuela');

INSERT INTO Envio (Cod_Envio,DataEnvio,Frete,NomeNavio,Cidade,Regiao,Pais)
VALUES (10258,'17/7/1996',140.51,'Ernst Handel','Kirchgasse','Graz','Austria');



CREATE TABLE Territorio
(
       Cod_Territorio varchar(20) NOT NULL,
       Territoriodescricao varchar(50) NOT NULL,
       Cod_Regiao int
);


Insert Into Territorio Values ('01581','Westboro',1);
Insert Into Territorio Values ('01730','Bedford',1);
Insert Into Territorio Values ('01833','Georgetow',1);
Insert Into Territorio Values ('02116','Boston',1);
Insert Into Territorio Values ('02139','Cambridge',1);
Insert Into Territorio Values ('02184','Braintree',1);
Insert Into Territorio Values ('02903','Providence',1);
Insert Into Territorio Values ('03049','Hollis',3);
Insert Into Territorio Values ('03801','Portsmouth',3);
Insert Into Territorio Values ('06897','Wilton',1);
Insert Into Territorio Values ('07960','Morristown',1);
Insert Into Territorio Values ('08837','Edison',1);
Insert Into Territorio Values ('10019','New York',1);
Insert Into Territorio Values ('10038','New York',1);
Insert Into Territorio Values ('11747','Mellvile',1);
Insert Into Territorio Values ('14450','Fairport',1);
Insert Into Territorio Values ('19428','Philadelphia',3);
Insert Into Territorio Values ('19713','Neward',1);
Insert Into Territorio Values ('20852','Rockville',1);
Insert Into Territorio Values ('27403','Greensboro',1);
Insert Into Territorio Values ('27511','Cary',1);
Insert Into Territorio Values ('29202','Columbia',4);
Insert Into Territorio Values ('30346','Atlanta',4);
Insert Into Territorio Values ('31406','Savannah',4);
Insert Into Territorio Values ('32859','Orlando',4);
Insert Into Territorio Values ('33607','Tampa',4);
Insert Into Territorio Values ('40222','Louisville',1);
Insert Into Territorio Values ('44122','Beachwood',3);
Insert Into Territorio Values ('45839','Findlay',3);
Insert Into Territorio Values ('48075','Southfield',3);
Insert Into Territorio Values ('48084','Troy',3);
Insert Into Territorio Values ('48304','Bloomfield Hills',3);
Insert Into Territorio Values ('53404','Racine',3);
Insert Into Territorio Values ('55113','Roseville',3);
Insert Into Territorio Values ('55439','Minneapolis',3);
Insert Into Territorio Values ('60179','Hoffman Estates',2);
Insert Into Territorio Values ('60601','Chicago',2);
Insert Into Territorio Values ('72716','Bentonville',4);
Insert Into Territorio Values ('75234','Dallas',4);
Insert Into Territorio Values ('78759','Austin',4);
Insert Into Territorio Values ('80202','Denver',2);
Insert Into Territorio Values ('80909','Colorado Springs',2);
Insert Into Territorio Values ('85014','Phoenix',2);
Insert Into Territorio Values ('85251','Scottsdale',2);
Insert Into Territorio Values ('90405','Santa Monica',2);
Insert Into Territorio Values ('94025','Menlo Park',2);
Insert Into Territorio Values ('94105','San Francisco',2);
Insert Into Territorio Values ('95008','Campbell',2);
Insert Into Territorio Values ('95054','Santa Clara',2);
Insert Into Territorio Values ('95060','Santa Cruz',2);
Insert Into Territorio Values ('98004','Bellevue',2);
Insert Into Territorio Values ('98052','Redmond',2);
Insert Into Territorio Values ('98104','Seattle',2);

--Selects
 
--1) 
select *from Territorio order by Cod_Regiao desc;
--2)
select *from Envio order by Frete ;
--3)
select NomeNavio ,Cidade ,Regiao from Envio ;
--4)
select Nome_Categoria ,Descricao from Categoria ;

--5)
select sum(Cod_Categoria) from Categoria;
--6)
select sum(Cod_Envio) from Envio;
--7)
select sum(Frete) from Envio;
--8)
select sum(Cod_Regiao) from Territorio;
--9)
select max(Frete) from Envio;
--10)
select min(Frete) from Envio;
--11)
select max(Cod_Categoria) from Categoria;
--12)
select min(Cod_Categoria) from Categoria;
--13)
select max(Cod_Envio) from Envio;
--14)
select min(Cod_Envio) from Envio;
--15)
select max(Cod_Regiao) from Territorio;
--16)
select min(Cod_Regiao) from Territorio;

--17)
select avg(Frete) from Envio;
--18)
select avg(Cod_Categoria) from Categoria;
--19)
select avg(Cod_Envio) from Envio;
--20)
select avg(Cod_Regiao) from Territorio;

--21)
select * from Territorio where Cod_Regiao = 2;
--22)
select * from Territorio where Cod_Regiao in (2, 3);
--23)
select * from Territorio where Territoriodescricao like 'S%';
--24)
select * from Territorio where Cod_Territorio like '7%';
--25)
select * from Envio where Pais = 'Brazil';
--26)
select * from Envio where Frete > 50;
--27)
select * from Envio where Regiao is null;
--28)
select * from Envio where month(dataenvio) = 8;
--29)
select * from Envio where Cod_Envio between 10250 and 10256;
--30)
select * from Envio where Cidade like 'R%';
--31)
select * from Categoria where Nome_Categoria != 'Grains/Cereals';
--32)
select * from Categoria where Cod_Categoria < 5;
--33)
select Count(Cod_Envio) from Envio where Pais like 'Germany';
--ou
select count(*) from Envio where Pais = 'Germany';
--34)
select Count(Cod_Envio) from Envio where Cidade like 'Rio de Janeiro';
--ou
select count(*) from Envio where Cidade = 'Rio de Janeiro';
--35)
select count(Frete) from Envio;
--36)
select Count(Cod_Envio) from Envio where Regiao like 'Sudeste';
--ou
select count(*) from Envio where Regiao = 'Sudeste';
--37)
select count(Cod_Envio) from Envio; 

--38)
select * from Envio where Regiao != 'null';
--ou
select * from Envio Where Regiao is not null;
--39)
select Count(Cod_Territorio) from Territorio where Cod_Regiao =2;
--ou
select count(*) from Territorio where Cod_Regiao = '2';
--40)
select Count(Cod_Territorio) from Territorio where Cod_Regiao =4;
--ou
select count(*) from Territorio where Cod_Regiao = '4';

--41)
select * from  Territorio where Cod_Regiao = '2' and Territoriodescricao  like 'S%' ;
--42)
select * from Envio where Cidade in ('Bern', 'Lyon', 'Resende');
--43)
select * from Envio where Cidade not in ('Bern', 'Lyon', 'Resende');
--44)


--45)
select distinct Regiao from Envio ;

--46)
select DataEnvio FROM Envio where datepart(month, DataEnvio) = 7;
--47)
select DataEnvio FROM Envio where datepart(day, DataEnvio) = 08 and datepart(month, DataEnvio) = 08 and datepart(year, DataEnvio)= 1996; 
--ou de forma mais completa
select * from Envio where DataEnvio = '1996/08/08';

--48)
select * from Envio where year(DataEnvio) = 1996 and month(DataEnvio) in (10, 11, 12);


select * from categoria;
select * from Envio;
select * from Territorio;

drop database Exemplo_Select