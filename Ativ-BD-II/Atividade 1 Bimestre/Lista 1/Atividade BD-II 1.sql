create database Escola
 
use Escola;
 
create table alunos(
cod_Aluno int identity,
nome varchar  (100) not null,
endereco varchar (100) not null,
telefone varchar (15) not null,
nascimento date not null,
pai varchar (30) not null,
mae varchar (30) not null,
responsavel varchar (30) not null
 
primary key(cod_Aluno)
);
 
create table Professor(
cod_Prof int identity,
nome varchar (30) not null,
endereco varchar (40),
 
primary key (cod_Prof)
);
 
create table cursos(
cod_curso int identity,
nome_curso varchar(100),
cod_Prof int ,
 
primary key(cod_curso),
FOREIGN KEY(cod_Prof) references Professor(cod_Prof)
);
 
 
create table notas(
cod_Aluno int,
cod_curso int ,
nota float not null,
ano int not null,
bimestre Int not null,
observacao varchar(70),
 
FOREIGN KEY(cod_curso)REFERENCES cursos(cod_curso),
FOREIGN KEY(cod_Aluno)REFERENCES alunos(cod_Aluno)
);
 
INSERT INTO alunos (nome, endereco, telefone, nascimento, pai, mae, responsavel) 

VALUES 

('João Silva', 'Rua das Flores, 123', '(11) 98765-4321', '2007-05-15', 'José Silva', 'Maria Silva', 'José Silva'), 

('Ana Santos', 'Av. Principal, 456', '(11) 99999-8888', '2007-08-20', 'Carlos Santos', 'Laura Santos', 'Carlos Santos'), 

('Pedro Oliveira', 'Travessa das Árvores, 789', '(11) 98765-1234', '2007-03-10', 'Rafael Oliveira', 'Camila Oliveira', 'Rafael Oliveira'), 

('Maria Oliveira', 'Rua das Palmeiras, 567', '(11) 98765-7890', '2007-01-05', 'Fernando Oliveira', 'Patrícia Oliveira', 'Fernando Oliveira'), 

('Lucas Pereira', 'Av. das Estrelas, 789', '(11) 99988-7766', '2005-07-12', 'André Pereira', 'Carolina Pereira', 'André Pereira'), 

('Isabela Costa', 'Travessa do Sol, 321', '(11) 98765-4321', '2006-11-30', 'Ricardo Costa', 'Ana Costa', 'Ricardo Costa'), 

('Gustavo Santos', 'Rua das Montanhas, 987', '(11) 99999-1111', '2007-04-18', 'Pedro Santos', 'Mariana Santos', 'Pedro Santos'), 

('Larissa Silva', 'Av. das Flores, 654', '(11) 98765-2222', '2008-09-25', 'Rodrigo Silva', 'Juliana Silva', 'Rodrigo Silva'), 

('Matheus Almeida', 'Travessa das Águas, 123', '(11) 99999-3333', '2007-02-08', 'Bruno Almeida', 'Carla Almeida', 'Bruno Almeida'), 

('Amanda Rodrigues', 'Rua Principal, 789', '(11) 98765-4444', '2007-06-14', 'Fábio Rodrigues', 'Renata Rodrigues', 'Fábio Rodrigues'), 

('Pedro Henrique Lima', 'Av. Central, 456', '(11) 99999-5555', '2007-12-03', 'Marcelo Lima', 'Sandra Lima', 'Marcelo Lima'), 

('Laura Fernandes', 'Travessa das Estrelas, 987', '(11) 98765-6666', '2007-08-22', 'Rafael Fernandes', 'Vanessa Fernandes', 'Rafael Fernandes'), 

('Gabriel Souza', 'Rua do Bosque, 321', '(11) 99999-7777', '2007-03-17', 'Alexandre Souza', 'Carolina Souza', 'Alexandre Souza'), 

('Sophia Gonçalves', 'Av. das Árvores, 654', '(11) 98765-8888', '2007-10-10', 'Daniel Gonçalves', 'Patrícia Gonçalves', 'Daniel Gonçalves'), 

('Felipe Moraes', 'Rua dos Pinheiros, 432', '(11) 99988-9999', '2007-12-25', 'Roberto Moraes', 'Julia Moraes', 'Roberto Moraes'); 

INSERT INTO Professor (nome, endereco)
VALUES
('Roberto Silva', 'Rua das Laranjeiras, 123'),
('Juliana Martins', 'Av. dos Estados, 456'),
('Carlos Eduardo', 'Travessa do Sol, 789'),
('Patricia Rocha', 'Rua Nova, 321'),
('Fernando Cardoso', 'Av. Brasil, 654'),
('Sofia Gomes', 'Rua das Palmeiras, 987');

 INSERT INTO cursos(nome_curso,cod_Prof)
VALUES
('Português',1),
('Matemática',3),
('Geográfia',2),
('Física',4),
('Biologia',5),
('História',6);

INSERT INTO notas(cod_Aluno, cod_curso, nota, ano, bimestre, observacao)
VALUES
(1, 1, 9.5, 2024, 1, 'Excelente desempenho'),
(1, 2, 8.0, 2024, 1, 'Bom progresso'),
(2, 3, 7.5, 2024, 1, 'Satisfatório'),
(2, 4, 9.0, 2024, 1, 'Excelente'),
(3, 1, 6.5, 2024, 1, 'Precisa melhorar'),
(3, 2, 5.0, 2024, 1, 'Atenção necessária'),
(4, 3, 10.0, 2024, 1, 'Desempenho perfeito'),
(4, 4, 8.5, 2024, 1, 'Muito bom'),
(5, 1, 8.0, 2024, 1, 'Bom progresso'),
(6, 2, 7.0, 2024, 1, 'Precisa de dedicação'),
(7, 3, 8.5, 2024, 1, 'Muito bom'),
(8, 4, 6.0, 2024, 1, 'Precisa melhora'),
(9, 1, 9.0, 2024, 1, 'Excelente'),
(10, 2, 6.5, 2024, 1, 'Precisa melhorar'),
(11, 3, 7.5, 2024, 1, 'Satisfatório');
 

select * from alunos ;
select*from cursos;
select*from Professor;
select*from notas;

 drop table  notas;
 drop table  cursos;
 drop table alunos;
drop table Professor;



drop database Escola;