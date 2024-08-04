-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 07/05/2024 às 15:30
-- Versão do servidor: 10.4.32-MariaDB
-- Versão do PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `ds`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `cadastro`
--
create database ds;
use ds;

CREATE TABLE `cadastro` (
  `id` int(11) NOT NULL,
  `nome` varchar(60) DEFAULT NULL,
  `email` varchar(60) DEFAULT NULL,
  `salario` float DEFAULT NULL,
  `data_nascimento` date DEFAULT NULL,
  `cidade` varchar(60) DEFAULT NULL,
  `estado` varchar(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `cadastro`
--

INSERT INTO `cadastro` (`id`, `nome`, `email`, `salario`, `data_nascimento`, `cidade`, `estado`) VALUES
(1, 'João', 'João@gmail.com', 8000, '1970-05-20', 'São Paulo', 'SP'),
(2, 'Camila', 'Camila@gmail.com', 3000, '1985-07-23', 'São Paulo', 'SP'),
(3, 'Marcio', 'marcio@gmail.com', 900, '1982-03-15', 'Campinas', 'SP'),
(4, 'Fernanda', 'fernanda@gmail.com', 3500, '1987-08-18', 'Rio de Janeiro', 'RJ'),
(5, 'José', 'José@gmail.com', 2200, '1990-01-18', 'Guaxupé', 'MG'),
(6, 'Fabiano', 'fabiano@gmail.com', 6800, '1991-01-30', 'Poço de Caldas', 'MG'),
(7, 'Marcos', 'marcos@gmail.com', 3200, '1989-02-08', 'Vitória', 'ES');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `cadastro`
--
ALTER TABLE `cadastro`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `cadastro`
--
ALTER TABLE `cadastro`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
