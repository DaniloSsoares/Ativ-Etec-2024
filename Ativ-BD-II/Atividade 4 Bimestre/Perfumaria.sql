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
Cod_Nota Int Primary key
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
(1, 'Norte', 'Rua Amazonas, 123'),
(2, 'Sul', 'Avenida Brasil, 456'),
(3, 'Leste', 'Rua das Flores, 789'),
(4, 'Oeste', 'Rua do Sol, 321'),
(5, 'Centro', 'Avenida Central, 654');

-- ITABELA PONTO_ESTRATEGICO
INSERT INTO Ponto_Estrategico (Id_Reg, Endereco, Nome) VALUES
(1, 'Rua Bahia, 222', 'Ponto Norte 1'),
(1, 'Rua Amapá, 333', 'Ponto Norte 2'),
(2, 'Avenida Mato Grosso, 444', 'Ponto Sul 1'),
(3, 'Rua Pará, 555', 'Ponto Leste 1'),
(4, 'Avenida Tocantins, 666', 'Ponto Oeste 1');

--TABELA VENDEDOR
INSERT INTO Vendedor (Id_Reg, Nome, Sexo, data_nasc, Id_Vendedor) VALUES
(1, 'João Silva', 'M', '1990-05-12', 101),
(2, 'Maria Souza', 'F', '1985-09-30', 102),
(3, 'Carlos Pereira', 'M', '1993-03-17', 103),
(4, 'Ana Costa', 'F', '1988-12-22', 104),
(5, 'Pedro Lima', 'M', '1995-07-05', 105);

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
(1, 'Bruno Almeida', '123.456.789-10', '2024-10-01'),
(2, 'Fernanda Ribeiro', '987.654.321-00', '2024-10-02'),
(3, 'Lucas Matos', '456.789.123-22', '2024-10-03'),
(4, 'Patrícia Silva', '321.654.987-11', '2024-10-04'),
(5, 'Thiago Lopes', '654.321.987-99', '2024-10-05');

-- TABELA NOTA_FISCAL
INSERT INTO Nota_Fiscal (Id_Vend, Cod_Nota, Data_Nota, Cod_consu) VALUES
(1, 1, '2024-10-01', 1),
(2, 2, '2024-10-02', 2),
(3, 3, '2024-10-03', 3),
(4, 4, '2024-10-04', 4),
(5, 5, '2024-10-05', 5);

-- TABELA PRODUTO
INSERT INTO Produto (Id_Produto, Nome, Marca, preco, quant_Produt) VALUES
(1, 'Perfume Floral', 'MarcaA', 100.00, 50),
(2, 'Perfume Amadeirado', 'MarcaB', 120.00, 40),
(3, 'Colônia Cítrica', 'MarcaC', 80.00, 60),
(4, 'Perfume Oriental', 'MarcaD', 150.00, 30),
(5, 'Colônia Frutada', 'MarcaE', 70.00, 70);

-- TABELA ITEM_PEDIDO
INSERT INTO Item_Pedido (quantidade, Id_Produto, Cod_Nota) VALUES
(2, 501, 401),
(1, 502, 402),
(3, 503, 403),
(1, 504, 404),
(2, 505, 405);