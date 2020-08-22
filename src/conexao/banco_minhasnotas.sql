-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Tempo de geração: 12/08/2020 às 19:16
-- Versão do servidor: 10.4.13-MariaDB
-- Versão do PHP: 7.4.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `minhasnotas`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `disciplinas`
--

CREATE TABLE `disciplinas` (
  `id` int(11) NOT NULL,
  `nome` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `professor` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `nota` varchar(2) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Despejando dados para a tabela `disciplinas`
--

INSERT INTO `disciplinas` (`id`, `nome`, `professor`, `nota`) VALUES
(10, 'Ed. Física', 'Eliezer', 'MB'),
(11, 'Programação WEB', 'Adriano Oliveira Castro', 'MB'),
(12, 'Desenvolvimento de Sistemas', 'Rafael Anderson Cruz', 'B'),
(13, 'Sistemas Embarcados', 'Edson Carlos Serrano', 'MB'),
(14, 'Banco de Dados', 'Diego', 'MB'),
(15, 'Matemática', 'Barroso', 'MB'),
(16, 'Português', 'Maylon', 'B'),
(17, 'Quimica', 'Denise', 'MB'),
(18, 'PM', 'Honorato', 'MB'),
(19, 'Física', 'Barroso', 'MB'),
(20, 'Teste', 'Ayane', 'MB'),
(21, 'Teste2', 'Soriano', 'MB'),
(22, 'Quimica', 'Denise', 'MB');

--
-- Índices de tabelas apagadas
--

--
-- Índices de tabela `disciplinas`
--
ALTER TABLE `disciplinas`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de tabelas apagadas
--

--
-- AUTO_INCREMENT de tabela `disciplinas`
--
ALTER TABLE `disciplinas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
