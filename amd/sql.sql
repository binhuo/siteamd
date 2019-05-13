-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 13-Maio-2019 às 03:06
-- Versão do servidor: 10.1.39-MariaDB
-- versão do PHP: 7.3.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `amd`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `modelo`
--

CREATE TABLE `modelo` (
  `id` int(11) NOT NULL,
  `tipo` varchar(250) NOT NULL,
  `funcao` varchar(250) NOT NULL,
  `programa` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `modelo`
--

INSERT INTO `modelo` (`id`, `tipo`, `funcao`, `programa`) VALUES
(1, 'DESKTOP', 'Games', 'LOL'),
(2, 'DESKTOP', 'Games', 'GTAV'),
(3, 'DESKTOP', 'Games', 'CSGO'),
(4, 'DESKTOP', 'Games', 'MAPLESTORY2'),
(5, 'DESKTOP', 'Trabalho', 'OFFICE'),
(6, 'DESKTOP', 'Trabalho', 'AUTOCAD'),
(7, 'DESKTOP', 'Trabalho', 'PHOTOSHOP'),
(8, 'DESKTOP', 'Trabalho', 'EDITOR DE VIDEO'),
(9, 'DESKTOP', 'Estudo', 'OFFICE'),
(10, 'DESKTOP', 'Estudo', 'ECLIPSE'),
(11, 'DESKTOP', 'Estudo', 'VIDEO'),
(12, 'NOTEBOOK', 'Estudo', 'EMAIL');

-- --------------------------------------------------------

--
-- Estrutura da tabela `modelo_dabase`
--

CREATE TABLE `modelo_dabase` (
  `id` int(11) NOT NULL,
  `tipo` varchar(250) NOT NULL,
  `funcao` varchar(250) NOT NULL,
  `programa` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `modelo_dabase`
--

INSERT INTO `modelo_dabase` (`id`, `tipo`, `funcao`, `programa`) VALUES
(1, 'Canada', 'British Columbia', 'Vancouver,Victoria'),
(2, 'Canada', 'British Columbia', 'Vancouver,Victoria'),
(3, 'USA', 'New York', 'New York city,Buffalo,Albany,Rochester,Yonkers,Syracuse,New Rochelle'),
(4, 'Australia', 'New South Wales', 'Sydney,Newcastle'),
(5, 'NOTEBOOK', 'Estudo', 'OFFICE,ECLIPSE,VIDEO,EMAIL'),
(6, 'DESKTOP', 'Estudo', 'OFFICE,ECLIPSE,VIDEO,EMAIL'),
(7, 'DESKTOP', 'Games', 'LOL,GTAV,CSGO,MAPLESTORY2'),
(8, 'DESKTOP', 'Estudo', 'OFFICE,ECLIPSE,VIDEO,EMAIL');

-- --------------------------------------------------------

--
-- Estrutura da tabela `processadores`
--

CREATE TABLE `processadores` (
  `id` int(2) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `descricao` varchar(100) NOT NULL,
  `office` int(2) NOT NULL,
  `lol` int(2) NOT NULL,
  `autocad` int(2) NOT NULL,
  `eclipse` int(2) NOT NULL,
  `photoshop` int(2) NOT NULL,
  `csgo` int(2) NOT NULL,
  `videos` int(2) NOT NULL,
  `edicao` int(2) NOT NULL,
  `maplestory` int(2) NOT NULL,
  `email` int(2) NOT NULL,
  `rpg` int(2) NOT NULL,
  `minecraft` int(2) NOT NULL,
  `navegador` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `processadores`
--

INSERT INTO `processadores` (`id`, `nome`, `descricao`, `office`, `lol`, `autocad`, `eclipse`, `photoshop`, `csgo`, `videos`, `edicao`, `maplestory`, `email`, `rpg`, `minecraft`, `navegador`) VALUES
(1, 'Ryze 5', 'Teste', 10, 9, 3, 5, 1, 4, 2, 1, 5, 6, 7, 8, 10);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `modelo`
--
ALTER TABLE `modelo`
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `modelo_dabase`
--
ALTER TABLE `modelo_dabase`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `processadores`
--
ALTER TABLE `processadores`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`),
  ADD KEY `id_2` (`id`),
  ADD KEY `id_3` (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `modelo_dabase`
--
ALTER TABLE `modelo_dabase`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `processadores`
--
ALTER TABLE `processadores`
  MODIFY `id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
