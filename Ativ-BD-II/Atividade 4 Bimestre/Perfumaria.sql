create database Perfumaria;

use perfumaria

create table Regiao(
Id_Reg int primary key,
nome varchar(30),
Endereco varchar(60),

);

Create table Ponto_Estrategico(
Id_Reg Int,
Endereco varchar (50),
Nome varchar (30)

foreign key (Id_Reg) references Regiao(Id_Reg)
);

create table Vendedor(
Id_Reg Int,
Nome varchar(60),
Sexo Varchar(1),
data_nasc date,
Id_Vendedor Int Primary key,

foreign key (Id_Reg) references Regiao(Id_Reg)
);

create table Veiculo(
cod_Veic Int Primary key,
Placa varchar(12),
modelo varchar(20),
Marca varchar(20)

);

create table Escala(
Id_vend Int,
cod_Veic Int,
Data_Esca date

foreign key (Id_Vend) references Vendedor(Id_Vendedor),
foreign key (cod_Veic) references Veiculo(cod_Veic)

);

create table Consumidor(
cod_consu Int primary key,
Nome varchar(20),
CPF varchar(14),
Data_Consu date

);
create table Nota_Fiscal(
Id_Vend Int,
Cod_Nota Int Primary key,
Data_Nota date,
Cod_consu Int

foreign key (Id_Vend) references Vendedor(Id_Vendedor),
foreign key (cod_consu) references Consumidor(cod_consu)
);

create table Produto(
Id_Produto Int Primary key,
Nome varchar(30),
Marca varchar(30),
preco float,
quant_Produt int,

);

create table Item_Pedido(
quantidade Int,
Id_Produto int ,
Cod_Nota Int,

foreign key (Id_Produto) references Produto(Id_Produto),
foreign key (Cod_Nota) references Nota_Fiscal(Cod_Nota)

);


-- TABELA REGIAO
INSERT INTO Regiao (Id_Reg, nome, Endereco) VALUES
(1, 'São Paulo', 'Sudeste'), 
(2, 'Rio de Janeiro', 'Sudeste'), 
(3, 'Belo Horizonte', 'Sudeste'),
(4, 'Salvador', 'Nordeste'),
(5, 'Fortaleza', 'Nordeste'),
(6, 'Brasília', 'Centro-Oeste'),
(7, 'Manaus', 'Norte');

-- ITABELA PONTO_ESTRATEGICO
INSERT INTO Ponto_Estrategico (Id_Reg, Endereco, Nome) VALUES
(1, 'Av. Paulista, 1000', 'Ponto SP'),
(2, 'Av. Atlântica, 500', 'Ponto RJ'),
(3, 'Praça da Liberdade, 50', 'Ponto BH'),
(4, 'Rua da Paz, 200', 'Ponto Salvador'),
(5, 'Av. Beira Mar, 300', 'Ponto Fortaleza'),
(6, 'Esplanada dos Ministérios', 'Ponto Brasília'),
(7, 'Rua Amazonas, 70', 'Ponto Manaus');

--TABELA VENDEDOR
INSERT INTO Vendedor (Id_Reg, Nome, Sexo, data_nasc, Id_Vendedor) VALUES
(1, 'Carlos Silva', 'M', '1980-05-10', 1),
(2, 'Ana Souza', 'F', '1990-07-15', 2),
(3, 'Bruno Lima', 'M', '1985-08-20', 3),
(4, 'Mariana Oliveira', 'F', '1992-09-05', 4),
(5, 'Roberto Alves', 'M', '1978-04-11', 5),
(6, 'Fernanda Costa', 'F', '1983-03-22', 6),
(7, 'João Pereira', 'M', '1995-01-30', 7);

--TABELA VEICULO
INSERT INTO Veiculo (cod_Veic, Placa, modelo, Marca) VALUES
(1, 'ABC1234', 'Gol', 'Volkswagen'),
(2, 'DEF5678', 'Fiesta', 'Ford'),
(3, 'GHI9012', 'Civic', 'Honda'),
(4, 'JKL3456', 'Corolla', 'Toyota'),
(5, 'MNO7890', 'HB20', 'Hyundai');

-- TABELA ESCALA
INSERT INTO Escala (Id_vend, cod_Veic, Data_Esca) VALUES
(1, 1, '2024-10-01'),
(2, 2, '2024-10-02'),
(3, 3, '2024-10-03'),
(4, 4, '2024-10-04'),
(5, 5, '2024-10-05');

-- TABELA CONSUMIDOR
INSERT INTO Consumidor (cod_consu, Nome, CPF, Data_Consu) VALUES
(1, 'Guilherme Santos', '123.456.789-10', '2020-08-13'),
(2, 'Larissa Carvalho', '987.654.321-00', '2023-12-12'),
(3, 'Ricardo Mendes', '456.789.123-22', '2022-09-23'),
(4, 'Juliana Araújo', '321.654.987-11', '2021-04-12'),
(5, 'André Nascimento', '654.321.987-99', '2024-10-05'),
(6, 'Eduardo Lima', '123.548.545-44', '2024-12-10'),
(7, 'Carla Figueiredo', '455.884.465-88', '2024-11-10');


-- TABELA NOTA_FISCAL
INSERT INTO Nota_Fiscal (Id_Vend, Cod_Nota, Data_Nota, Cod_consu) VALUES
(1, 1, '2020-08-17', 1),
(2, 2, '2023-12-15', 2),
(3, 3, '2022-09-24', 3),
(4, 4, '2021-04-12', 4),
(5, 5, '2024-10-15', 5),
(6, 6, '2024-12-15', 6),
(7, 7, '2024-11-11', 7);

-- TABELA PRODUTO
INSERT INTO Produto (Id_Produto, Nome, Marca, preco, quant_Produt) VALUES
(1, 'Perfume Floral', 'Avon', 100.00, 50),
(2, 'Perfume Amadeirado', 'Natura', 120.00, 40),
(3, 'Colônia Cítrica', 'Dove', 80.00, 60),
(4, 'Perfume Oriental', 'Rexona', 150.00, 30),
(5, 'Colônia Frutada', 'Chanel', 70.00, 70);

-- TABELA ITEM_PEDIDO
INSERT INTO Item_Pedido (quantidade, Id_Produto, Cod_Nota) VALUES
(2, 1, 1),
(1, 2, 2),
(3, 3, 3),
(1, 4, 4),
(50, 5, 5),
(20, 5, 6),
(141, 5, 7);


select * from Regiao;
select * from Vendedor;
select * from Escala;
select * from Veiculo;
select * from Nota_Fiscal;
select * from Item_Pedido;
select * from Produto;
select * from Ponto_Estrategico;
select * from Consumidor;

drop table Ponto_Estrategico
drop table Item_Pedido
drop table Produto
drop table Nota_Fiscal
drop table Consumidor
drop table Escala
drop table Veiculo
drop table Vendedor
drop table Regiao;

drop database Perfumaria