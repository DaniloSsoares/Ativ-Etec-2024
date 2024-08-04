CREATE DATABASE Garagem;

USE Garagem;

create table Cliente (
    CPF varchar(14) ,
    nome varchar(50),
    DataNasc date,

    Primary key (CPF)
);

create table modelo (
    CodMod int,
    desc_mod varchar(100),

    Primary key (CodMod)
);

create table Patio (
    patio_num int,
    ender varchar(50),
    capacidade int,

    Primary key (patio_num)
);

create table veiculo (
    CodMod int ,
    CPF varchar(14),
    placa varchar(10) ,
    cor varchar(20),
    ano date,
    Primary key (placa),
    foreign key (CodMod) references modelo(CodMod),
    foreign key (CPF) references Cliente(CPF)
);

create table estacionamento (
    Cod int,
    patio_num int ,
    placa varchar(10) ,
    dtEntrada date,
    dtSaida date,
    hsEntrada time(7),
    hsSaida time(7),

    primary key (Cod),
    foreign key (patio_num) references Patio(patio_num),
    foreign key (placa) references veiculo(placa)
);

insert into Cliente (CPF, nome, DataNasc) values
('111.222.333-11', 'Ana', '1995-11-30'),
('123.456.789-09', 'João', '1985-06-15'),
('222.333.444-22', 'Paulo', '1988-09-22'),
('333.444.555-33', 'Mariana', '1975-04-10'),
('937.674.211-10', 'Pedro', '2000-05-18'),
('948.495.864-08', 'Carlos', '1980-03-20'),
('953.874.231-04', 'Julia', '1999-07-13'),
('987.654.321-09', 'Maria', '1990-08-25');

insert into modelo (CodMod, desc_mod) values
(1, 'Sedan'),
(2, 'SUV'),
(3, 'Hatchback'),
(4, 'Picape'),
(5, 'Crossover'),
(6, 'Minivan');

insert into Patio (patio_num, ender, capacidade)values
(1, 'Pátio 1', 50),
(2, 'Pátio 2', 70),
(3, 'Pátio 3', 60),
(4, 'Pátio 4', 80),
(5, 'Pátio 5', 90);

INSERT INTO veiculo(CodMod, CPF, placa, cor, ano) VALUES
(1, '123.456.789-09', 'ABC-1234', 'Preto', '2022-01-01'),
(2, '987.654.321-09', 'DEF-5678', 'Branco', '2020-05-10'),
(3, '111.222.333-11', 'GHI-9012', 'Azul', '1998-12-15'),
(4, '222.333.444-22', 'JJJ-2020', 'Vermelho', '2021-08-20'),
(1, '937.674.211-10', 'JEG-1010', 'Prata', '2023-04-05'),
(2, '948.495.864-08', 'PQR-2345', 'Verde', '2018-11-30'),
(3, '953.874.231-04', 'STU-6789', 'Cinza', '2020-09-25'),
(4, '333.444.555-33', 'VWX-1234', 'Amarelo', '2022-06-12');


INSERT INTO estacionamento (cod, patio_num, placa, dtEntrada, dtSaida, hsEntrada, hsSaida) VALUES
(1,1, 'ABC-1234', '2024-05-18', '2024-05-18', '09:30:00', '11:30:00'),
(2,1, 'DEF-5678', '2024-05-18', '2024-05-18', '10:15:00', '12:15:00'),
(3,2, 'GHI-9012', '2024-05-18', '2024-05-18', '11:00:00', '13:00:00'),
(4,3, 'JJJ-2020', '2024-05-18', '2024-05-18', '11:45:00', '13:45:00'),
(5,2, 'JEG-1010', '2024-05-18', '2024-05-18', '13:00:00', '15:00:00'),
(6,4, 'PQR-2345', '2024-05-18', '2024-05-18', '13:45:00', '15:45:00'),
(7,5, 'STU-6789', '2024-05-18', '2024-05-18', '14:30:00', '16:30:00'),
(8,5, 'VWX-1234', '2024-05-18', '2024-05-18', '15:15:00', '17:15:00');

--A
select Cliente.nome, veiculo.placa from veiculo inner join	Cliente on veiculo.CPF = Cliente.CPF;

--B
select Cliente.CPF,Cliente.nome from veiculo inner join Cliente on veiculo.CPF = Cliente.CPF where placa='JJJ-2020';

--C
select veiculo.cor, veiculo.placa from veiculo inner join estacionamento on veiculo.placa = estacionamento.placa where Cod='1' 

--D
select veiculo.ano, veiculo.placa from veiculo inner join estacionamento on veiculo.placa = estacionamento.placa where Cod='1' 

--E
select veiculo.placa, veiculo.ano, modelo.desc_mod from modelo inner join veiculo on modelo.CodMod = veiculo.CodMod where ano>='2000';

--F
select Patio.ender, estacionamento.dtEntrada, estacionamento.dtSaida from estacionamento inner join Patio on estacionamento.patio_num = Patio.patio_num where estacionamento.placa ='JEG-1010';

--G
select count(dtEntrada) from estacionamento inner join veiculo on estacionamento.placa = veiculo.placa where veiculo.cor = 'verde';

--H
select Cliente.nome , Cliente.DataNasc, Cliente.CPF from Cliente inner join veiculo on veiculo.CPF = Cliente.CPF inner join modelo on veiculo.CodMod = modelo.CodMod where modelo.CodMod = '1' 

--I
select veiculo.placa, estacionamento.hsEntrada,estacionamento.hsSaida from veiculo inner join estacionamento on veiculo.placa = estacionamento.placa where cor='verde';

--J
select estacionamento.Cod, estacionamento.patio_num, estacionamento.placa, estacionamento.dtEntrada, estacionamento.dtSaida, estacionamento.hsEntrada, estacionamento.hsSaida from estacionamento  inner join veiculo veiculo on estacionamento.placa = veiculo.placa where veiculo.placa = 'JJJ-2020';

--K
select Cliente.nome from estacionamento inner join veiculo on estacionamento.placa = veiculo.placa inner join Cliente on veiculo.CPF = Cliente.CPF where estacionamento.Cod = 2;

--L
select Cliente.CPF from estacionamento inner join veiculo on estacionamento.placa = veiculo.placa inner join Cliente on veiculo.CPF = Cliente.CPF where estacionamento.Cod = 3;

--M
select modelo.desc_mod from estacionamento inner join veiculo on estacionamento.placa = veiculo.placa inner join modelo on veiculo.CodMod = modelo.CodMod where estacionamento.Cod = 2;

--N
select veiculo.placa, Cliente.nome , modelo.desc_mod from veiculo inner join Cliente on veiculo.CPF =Cliente.CPF inner join modelo on veiculo.CodMod= modelo.CodMod;

select * from Cliente;
select * from modelo;
select * from Patio;
select * from veiculo;
select * from estacionamento;


drop table estacionamento;
drop table veiculo;
drop table Patio;
drop table modelo;
drop table Cliente;

DROP DATABASE Garagem;
