create database lojaCD;

use lojaCD;

create table Cds(
Cod int unique,
nome_Cd varchar(50),
dataCompra date,
ValorPago float,
LocalCompra varchar(40),
Album varchar(30),

primary key(Cod)
);


create table musicas(
Cod int,
num_musc int,
nome_musc varchar (50),
Artista varchar (50),
Tempo float

foreign key (Cod) references Cds(cod),
);

INSERT INTO Cds (Cod, nome_Cd, dataCompra, ValorPago, LocalCompra, Album) VALUES
(1, 'Jovens Sonhadores', '2024-04-01', 15.99, 'Loja de M�sica', 'Sim'),
(2, 'Gra�a Divina', '2024-03-15', 12.50, 'Loja Online Gospel', 'Sim'),
(3, 'Lan�amentos do Ano', '2024-04-03', 20.00, 'Super music', 'Sim'),
(4, 'Gospel Hits Vol.4', '2024-01-25', 18.75, 'Lojamusic', 'N�o'),
(5, 'Adora��o Suprema', '2024-02-10', 22.00, 'OnlineMusic', 'N�o');

INSERT INTO musicas (Cod, num_musc, nome_musc, Artista, Tempo) VALUES
(1, 1, 'A Casa � Sua', 'Casa Worship', 5.30),
(1, 2, 'Aquieta Minh�alma', 'Minist�rio Zoe', 6.40),
(2, 3, 'Jireh', 'Elevation Worship & Maverick City', 8.59),
(2, 4, 'Recome�ar', 'Juliano Son', 4.22),
(3, 5, 'Deus de Promessas', 'Davi Sacer', 5.15),
(3, 6, 'Algo Novo', 'Kemuel, Lukas Agustinho', 4.55),
(4, 7, 'N�o Pare', 'Midian Lima', 5.10),
(4, 8, '� Tudo Sobre Voc�', 'Minist�rio Morada', 6.05),
(5, 9, 'Todos os meus dias', 'Gabriel Guedes', 3.23),
(5, 10, 'Cordeiro e Le�o', 'Isaque Valad�o', 5.34),
(1, 11, 'Vitorioso �s', 'Gabriel Guedes', 6.00),
(2, 12, 'In memorian', 'Gabriel Guedes', 5.7),
(3, 13, 'Novo', 'Lagoinha Orlando', 4.14),
(4, 14, 'Praise', 'Elevation Worship', 5.40),
(5, 15, 'Promessas', 'Sarah Beatriz', 6.25);

--1)
select*from Cds;
--2)
select nome_Cd, DataCompra from Cds Order by nome_Cd;
--3)
select nome_Cd, DataCompra from Cds order by dataCompra desc;
--4)
select nome_Cd, DataCompra, ValorPago from Cds order by ValorPago desc;
--5)
select Sum(ValorPago) as ValorTotalGasto from Cds;
--6)
select *from musicas where Cod = 1
--7)
select  nome_musc, Artista from musicas;
--8)
select num_musc, nome_musc, Tempo from musicas where Cod = 5 order by num_musc;
--9)
select count(num_musc) from musicas;
--10)
select nome_musc from musicas where Artista='Jos� Pedro';
--ou
select nome_musc from musicas where Artista='Gabriel Guedes';
--11)
select nome_Cd from Cds  where LocalCompra='subm�rino';
--ou
select nome_Cd from Cds  where LocalCompra='Super music';
--12)
select nome_musc from musicas order by nome_musc asc;
--13)
select* from Cds where Album = 'Sim';
--14)
select avg(ValorPago)from Cds;


--Comando de inner join
--1)
select Cds.nome_Cd, musicas.nome_musc from Cds inner join musicas on Cds.Cod = musicas.Cod;

--2)
select Cds.nome_Cd, musicas.nome_musc from Cds inner join musicas on Cds.Cod = musicas.Cod where musicas.num_musc=1 ;
select Cds.nome_Cd, musicas.nome_musc from Cds inner join musicas on Cds.Cod = musicas.Cod where musicas.num_musc = ( select min(num_musc)from musicas where Cod = Cds.Cod);

--Comando sub-query
select cds.nome_Cd,  cds.ValorPago from Cds where ValorPago=(select max(ValorPago) from Cds)

--comando group by
--1)
select cds.nome_Cd, cds.Cod,SUM(musicas.Tempo)as tempototal from cds inner join musicas on Cds.cod=musicas.Cod group by cds.Cod, Cds.nome_Cd
--2)
select Album, COUNT(*) as quantidade_CDS from Cds group by Album; 
--3)
select musicas.Cod, count(*)as quantidade_msc from musicas group by Cod

select *from Cds;
select *from musicas;

drop table Cds;
drop table musicas;

DROP DATABASE LojaCD