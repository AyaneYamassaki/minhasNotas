-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Tempo de geração: 12/11/2020 às 14:04
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
-- Estrutura para tabela `alunos`
--

CREATE TABLE `alunos` (
  `id` int(11) NOT NULL,
  `nome` varchar(150) NOT NULL,
  `curso` varchar(80) NOT NULL,
  `senha` varchar(255) NOT NULL,
  `tipo` int(11) NOT NULL COMMENT '1 - Administrador do Sistema\r\n2 - Aluno'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Despejando dados para a tabela `alunos`
--

INSERT INTO `alunos` (`id`, `nome`, `curso`, `senha`, `tipo`) VALUES
(1, 'Adriano Oliveira Castro', 'Desenvolvimento de Sistemas', 'c26820b8a4c1b3c2aa868d6d57e14a79', 1),
(3, 'Karen Ayane Pascoal Yamassaki', 'Desenvolvimento de Sistemas Integrado ao Ensino Médio', 'e82c4b19b8151ddc25d4d93baf7b908f', 2),
(5, 'Yasmim Harumy Pascoal Yamassaki', 'Desenvolvimento de Sistemas', '707c636fc43b41bf95896592d8410fe9', 2),
(6, 'TesteAluno 21.10', 'Desenvolvimento de Sistemas', '13d6f7d7baeab6d035cad7dc0405c0c2', 2),
(7, 'TesteSistemaCompleto 28.10', 'Ops Desenvolvimento de Sistemas', '619a36f4d5462cced905106aaf3ade12', 2);

-- --------------------------------------------------------

--
-- Estrutura para tabela `disciplinas`
--

CREATE TABLE `disciplinas` (
  `id` int(11) NOT NULL,
  `nome` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `professor` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `nota` varchar(2) COLLATE utf8_unicode_ci DEFAULT NULL,
  `id_alunos` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Despejando dados para a tabela `disciplinas`
--

INSERT INTO `disciplinas` (`id`, `nome`, `professor`, `nota`, `id_alunos`) VALUES
(10, 'Ed. Física', 'Eliezer', 'MB', 1),
(11, 'Programação WEB', 'Adriano Oliveira Castro', 'MB', 1),
(12, 'Desenvolvimento de Sistemas', 'Rafael Anderson Cruz', 'B', 1),
(13, 'Sistemas Embarcados', 'Edson Carlos Serrano', 'MB', 1),
(14, 'Banco de Dados', 'Diego', 'MB', 1),
(15, 'Matemática', 'Barroso', 'MB', 1),
(16, 'Português', 'Maylon', 'B', 1),
(17, 'Quimica', 'Denise', 'MB', 1),
(18, 'PM', 'Honorato', 'MB', 1),
(19, 'Física', 'Barroso', 'MB', 1),
(20, 'Teste', 'Ayane', 'MB', 1),
(21, 'Teste2', 'Soriano', 'MB', 1),
(22, 'Quimica', 'Denise', 'MB', 1),
(24, 'Update4', 'Ayane', 'MB', 1),
(25, 'Testando', 'xxxxxx', 'MB', 1),
(26, 'Teste Final', 'Soriano', 'B', 1),
(27, 'TesteUpdate1', 'Vazio', 'MB', 1),
(28, 'TesteUpdate2', 'Adriano Oliveira Castro', 'MB', 1),
(33, 'Teste21.10', 'teste', 'MB', 1),
(34, 'Matemática', 'Carlos Barroso', 'MB', 3),
(35, 'TesteDisciplina 21.10', 'Teste', 'B', 3),
(36, 'Matemática', 'Carlos Barroso', 'R', 5),
(37, 'TesteDisciplina 28.10', 'Adriano Oliveira Castro', 'MB', 3);

--
-- Índices de tabelas apagadas
--

--
-- Índices de tabela `alunos`
--
ALTER TABLE `alunos`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `disciplinas`
--
ALTER TABLE `disciplinas`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de tabelas apagadas
--

--
-- AUTO_INCREMENT de tabela `alunos`
--
ALTER TABLE `alunos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de tabela `disciplinas`
--
ALTER TABLE `disciplinas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
