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
foreign key (cod_consu) references Comsumidor(cod_consu)

),