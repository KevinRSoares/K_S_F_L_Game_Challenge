-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 12-Jul-2018 às 05:00
-- Versão do servidor: 10.1.34-MariaDB
-- PHP Version: 7.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `jogodb`
--
CREATE DATABASE IF NOT EXISTS `jogodb` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `jogodb`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `log`
--

CREATE TABLE `log` (
  `CodLog` int(11) NOT NULL,
  `DesLog` varchar(80) DEFAULT NULL,
  `DatLog` datetime NOT NULL,
  `TipLog` char(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `partida`
--

CREATE TABLE `partida` (
  `codpar` int(11) NOT NULL,
  `CodUsu` int(11) NOT NULL,
  `dathorpar` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `partida`
--

INSERT INTO `partida` (`codpar`, `CodUsu`, `dathorpar`) VALUES
(1, 3, '2018-07-11 00:00:00'),
(2, 3, '2018-07-11 00:00:00');

-- --------------------------------------------------------

--
-- Estrutura da tabela `pontuacao`
--

CREATE TABLE `pontuacao` (
  `codpar` int(11) NOT NULL,
  `CodUsu` int(11) NOT NULL,
  `TotPon` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `pontuacao`
--

INSERT INTO `pontuacao` (`codpar`, `CodUsu`, `TotPon`) VALUES
(1, 3, 500);

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuario`
--

CREATE TABLE `usuario` (
  `CodUsu` int(11) NOT NULL,
  `NomUsu` varchar(45) NOT NULL,
  `EmaUsu` varchar(100) NOT NULL,
  `NicUsu` varchar(20) NOT NULL,
  `SenUsu` varchar(200) NOT NULL,
  `DatNasUsu` datetime NOT NULL,
  `TipUsu` char(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Tabela de Usuário';

--
-- Extraindo dados da tabela `usuario`
--

INSERT INTO `usuario` (`CodUsu`, `NomUsu`, `EmaUsu`, `NicUsu`, `SenUsu`, `DatNasUsu`, `TipUsu`) VALUES
(1, 'kevin', 'kevin@teste', 'kevin', '123', '2000-02-21 00:00:00', 'A'),
(2, 'kevin', 'teste@teste', 'kevin', '12344', '2000-02-21 00:00:00', 'A'),
(3, 'Kevin', 'email@teste.com', 'Kevin', '123', '2000-02-21 00:00:00', 'J');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `log`
--
ALTER TABLE `log`
  ADD PRIMARY KEY (`CodLog`);

--
-- Indexes for table `partida`
--
ALTER TABLE `partida`
  ADD PRIMARY KEY (`codpar`,`CodUsu`),
  ADD KEY `usuario_partida_fk` (`CodUsu`);

--
-- Indexes for table `pontuacao`
--
ALTER TABLE `pontuacao`
  ADD PRIMARY KEY (`codpar`,`CodUsu`);

--
-- Indexes for table `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`CodUsu`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `log`
--
ALTER TABLE `log`
  MODIFY `CodLog` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `partida`
--
ALTER TABLE `partida`
  MODIFY `codpar` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `usuario`
--
ALTER TABLE `usuario`
  MODIFY `CodUsu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Limitadores para a tabela `partida`
--
ALTER TABLE `partida`
  ADD CONSTRAINT `usuario_partida_fk` FOREIGN KEY (`CodUsu`) REFERENCES `usuario` (`CodUsu`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `pontuacao`
--
ALTER TABLE `pontuacao`
  ADD CONSTRAINT `partida_pontuacao_fk` FOREIGN KEY (`codpar`,`CodUsu`) REFERENCES `partida` (`codpar`, `CodUsu`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
