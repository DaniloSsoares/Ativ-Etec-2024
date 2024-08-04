
create database ds;
USE ds;

create table cadastro (
  id int NOT NULL,
  nome varchar(60) DEFAULT NULL,
  email varchar(60) DEFAULT NULL,
  salario float DEFAULT NULL,
  data_nascimento date DEFAULT NULL,
  cidade varchar(60) DEFAULT NULL,
  estado varchar(2) DEFAULT NULL,

  primary key (id),
) ;


INSERT INTO cadastro (id, nome, email, salario, data_nascimento, cidade, estado) VALUES
(1, 'João', 'João@gmail.com', 8000, '1970-05-20', 'São Paulo', 'SP'),
(2, 'Camila', 'Camila@gmail.com', 3000, '1985-07-23', 'São Paulo', 'SP'),
(3, 'Marcio', 'marcio@gmail.com', 900, '1982-03-15', 'Campinas', 'SP'),
(4, 'Fernanda', 'fernanda@gmail.com', 3500, '1987-08-18', 'Rio de Janeiro', 'RJ'),
(5, 'José', 'José@gmail.com', 2200, '1990-01-18', 'Guaxupé', 'MG'),
(6, 'Fabiano', 'fabiano@gmail.com', 6800, '1991-01-30', 'Poço de Caldas', 'MG'),
(7, 'Marcos', 'marcos@gmail.com', 3200, '1989-02-08', 'Vitória', 'ES');

select *from cadastro;
 Select * from cadastro where Nome like 'a%' or Nome like 'e%' or Nome like 'i%' or Nome like 'o%' or Nome like 'u%';
 Select nome , email, salario from cadastro order by salario desc;
 Select nome , email from cadastro order by nome asc; 
 Select max (salario) as 'Valor mais alto de  Salários' from cadastro;
 Select avg (salario) as 'Media dos Salários' from cadastro;
 Select nome, salario, email FROM cadastro WHERE id BETWEEN 3 AND 7;


drop table cadastro