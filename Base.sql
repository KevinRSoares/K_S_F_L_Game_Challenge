-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 29-Ago-2018 às 05:15
-- Versão do servidor: 10.1.31-MariaDB
-- PHP Version: 7.2.3

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

DELIMITER $$
--
-- Procedures
--
DROP PROCEDURE IF EXISTS `Cadastra_Usuario`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `Cadastra_Usuario` (IN `NoUsu` VARCHAR(45), IN `EmUsu` VARCHAR(100), IN `DtNaUsu` DATE, IN `NiUsu` VARCHAR(20), IN `SeUsu` VARCHAR(20), IN `TiUsu` CHAR(1))  BEGIN
	Declare DtCaUsu dateTime default now();/*Data de Cadastro de Usuario*/ 
	Declare desLog varchar(80);
	Declare Email_Nick_duplicado condition for sqlstate '23000';
	Declare exit handler for Email_Nick_duplicado
	begin
		Set desLog = concat('Email ou NickName duplicados: Email - ',EmUsu,' | NickName - ',NiUsu);
		call insere_log(desLog,'W');
		select 'Email ou NickName já cadastrados!';
	End;    
	Insert Into Usuario(NomUsu,EmaUsu,NicUsu,SenUsu,DatNasUsu,DatCadUsu,TipUsu)
		Values(NoUsu,EmUsu,NiUsu,md5(SeUsu),DtNaUsu,DtCaUsu,TiUsu);
		Select 'Jogador cadastrado com sucesso!';
	
END$$

DROP PROCEDURE IF EXISTS `deleta_partidas_abertas`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `deleta_partidas_abertas` ()  BEGIN
		DECLARE done INT DEFAULT FALSE;
		Declare CoPar int;
        DECLARE CursorDeletar CURSOR FOR select CodPar from Partida Where DatHorIniPar < date_sub(Now(), interval 3 day) and isnull(DatHorFimPar);
        DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = TRUE;
		open CursorDeletar;
		read_loop: LOOP
			FETCH CursorDeletar INTO CoPar;
			IF done THEN
			  LEAVE read_loop;
			END IF;

			Delete from Partida Where CodPar = CoPar;

		END LOOP;

		#Fecha o cursor
		close CursorDeletar;        
	END$$

DROP PROCEDURE IF EXISTS `Finaliza_Pausa_Partida`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `Finaliza_Pausa_Partida` (IN `CoPar` INT, IN `CoPon` INT)  BEGIN
	Declare desLog varchar(80);
    Declare DtFimPar DateTime default Now();
	
    Update Partida set PonPar = CoPon Where CodPar = CoPar;
	Update Partida set DatHorFimPar = DtFimPar Where CodPar = CoPar;
    
    Set DesLog = Concat('Partida ',CoPar,' finalizada_Pausada Data/Hora: ',DtFimPar);
    call insere_log(desLog,'P');    
END$$

DROP PROCEDURE IF EXISTS `Inicia_Partida`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `Inicia_Partida` (IN `CoUsu` INT, OUT `CoPar` INT)  BEGIN
	Declare desLog varchar(80);
	Insert Into Partida(CodUsu,DatHorIniPar)
		Values(CoUsu,Now());
	Select Max(CodPar) from Partida Where CodUsu = CoUsu into CoPar;
    Set DesLog = Concat('Usuário ',CoUsu,' iniciou partida de código ', CoPar,'.');
    call insere_log(desLog,'P');    
END$$

DROP PROCEDURE IF EXISTS `insere_log`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `insere_log` (IN `desLog` VARCHAR(80), IN `tipoLog` VARCHAR(1))  BEGIN
	insert into log(DatHorLog, DesLog, TipLog) values(now(), deslog, tipoLog);
END$$

DROP PROCEDURE IF EXISTS `Reinicia_Partida`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `Reinicia_Partida` (IN `CoPar` INT)  BEGIN
	Declare desLog varchar(80);
    Declare DtIniPar DateTime default Now();
	
    Update Partida set PonPar = 0 Where CodPar = CoPar;
	Update Partida set DatHorIniPar = DtIniPar Where CodPar = CoPar;
    Update Partida set DatHorFimPar = null Where CodPar = CoPar;
    
    Set DesLog = Concat('Partida ',CoPar,' Reiniciada.');
    call insere_log(desLog,'P');    
END$$

DROP PROCEDURE IF EXISTS `top10_individual`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `top10_individual` (IN `codigo` INT)  BEGIN
		select Ponpar from partida where CodUsu = codigo order by Ponpar desc limit 10;
	END$$

--
-- Functions
--
DROP FUNCTION IF EXISTS `media_potuacao_j`$$
CREATE DEFINER=`root`@`localhost` FUNCTION `media_potuacao_j` (`CoJog` INT) RETURNS INT(11) BEGIN 
	Declare MedPont int default 0;
    Select Avg(PonPar) from Partida Where not isnull(DatHorFimPar) and CodUsu = CoJog into MedPont;
	
RETURN MedPont;
END$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Estrutura da tabela `log`
--

DROP TABLE IF EXISTS `log`;
CREATE TABLE IF NOT EXISTS `log` (
  `CodLog` int(11) NOT NULL AUTO_INCREMENT,
  `DesLog` varchar(80) NOT NULL,
  `DatHorLog` datetime NOT NULL,
  `TipLog` char(1) NOT NULL,
  PRIMARY KEY (`CodLog`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `log`
--

INSERT INTO `log` (`CodLog`, `DesLog`, `DatHorLog`, `TipLog`) VALUES
(30, 'Novo jogador inserido: Kevin Ruan Soares', '2018-08-23 18:52:36', 'C'),
(31, 'Novo jogador inserido: Felipe Becker', '2018-08-23 18:53:39', 'C'),
(32, 'Novo jogador inserido: Sabrina', '2018-08-23 18:59:41', 'C'),
(33, 'Usuário 41 iniciou partida de código 13.', '2018-08-23 19:47:10', 'P'),
(34, 'Usuário 42 iniciou partida de código 14.', '2018-08-23 19:47:19', 'P'),
(35, 'Usuário 43 iniciou partida de código 15.', '2018-08-23 19:47:52', 'P'),
(36, 'Partida 13 finalizada_Pausada Data/Hora: 2018-08-23 19:48:18', '2018-08-23 19:48:18', 'P'),
(37, 'Partida 14 finalizada_Pausada Data/Hora: 2018-08-23 19:48:29', '2018-08-23 19:48:29', 'P'),
(38, 'Partida 15 finalizada_Pausada Data/Hora: 2018-08-23 19:48:48', '2018-08-23 19:48:48', 'P'),
(39, 'Usuário 41 iniciou partida de código 16.', '2018-08-26 22:33:44', 'P'),
(40, 'Partida 16 finalizada_Pausada Data/Hora: 2018-08-26 22:34:02', '2018-08-26 22:34:02', 'P');

-- --------------------------------------------------------

--
-- Estrutura da tabela `partida`
--

DROP TABLE IF EXISTS `partida`;
CREATE TABLE IF NOT EXISTS `partida` (
  `CodPar` int(11) NOT NULL AUTO_INCREMENT,
  `CodUsu` int(11) NOT NULL,
  `DatHorIniPar` datetime DEFAULT NULL,
  `PonPar` int(11) NOT NULL DEFAULT '0',
  `DatHorFimPar` datetime DEFAULT NULL,
  PRIMARY KEY (`CodPar`),
  KEY `usuario_partida_fk` (`CodUsu`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `partida`
--

INSERT INTO `partida` (`CodPar`, `CodUsu`, `DatHorIniPar`, `PonPar`, `DatHorFimPar`) VALUES
(13, 41, '2018-08-23 19:47:10', 110, '2018-08-23 19:48:18'),
(14, 42, '2018-08-23 19:47:19', 120, '2018-08-23 19:48:29'),
(15, 43, '2018-08-23 19:47:52', 200, '2018-08-23 19:48:48'),
(16, 41, '2018-08-26 22:33:44', 500, '2018-08-26 22:34:02');

--
-- Acionadores `partida`
--
DROP TRIGGER IF EXISTS `tr_log_delete_partida`;
DELIMITER $$
CREATE TRIGGER `tr_log_delete_partida` BEFORE DELETE ON `partida` FOR EACH ROW begin
		declare descricao varchar(30) default "";
		set descricao = concat("Partida ", OLD.CodPar," deleteda!");
		
		call insere_log(descricao,'D');
	end
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Stand-in structure for view `rankinggeral`
-- (See below for the actual view)
--
DROP VIEW IF EXISTS `rankinggeral`;
CREATE TABLE IF NOT EXISTS `rankinggeral` (
`NickName` varchar(20)
,`Pontuacao` int(11)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `relatorio_log`
-- (See below for the actual view)
--
DROP VIEW IF EXISTS `relatorio_log`;
CREATE TABLE IF NOT EXISTS `relatorio_log` (
`Descrição Log` varchar(80)
,`Data e hora do Log` datetime
,`Tipo do Log` char(1)
);

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuario`
--

DROP TABLE IF EXISTS `usuario`;
CREATE TABLE IF NOT EXISTS `usuario` (
  `CodUsu` int(11) NOT NULL AUTO_INCREMENT,
  `NomUsu` varchar(45) NOT NULL,
  `EmaUsu` varchar(100) NOT NULL,
  `NicUsu` varchar(20) NOT NULL,
  `SenUsu` varchar(32) NOT NULL,
  `DatNasUsu` date NOT NULL,
  `DatCadUsu` datetime NOT NULL,
  `TipUsu` char(1) NOT NULL,
  PRIMARY KEY (`CodUsu`),
  UNIQUE KEY `EmaUsu_UNIQUE` (`EmaUsu`),
  UNIQUE KEY `NicUsu_UNIQUE` (`NicUsu`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=latin1 COMMENT='Tabela de Usuário';

--
-- Extraindo dados da tabela `usuario`
--

INSERT INTO `usuario` (`CodUsu`, `NomUsu`, `EmaUsu`, `NicUsu`, `SenUsu`, `DatNasUsu`, `DatCadUsu`, `TipUsu`) VALUES
(41, 'Kevin Ruan Soares', 'Kevin@gmail.com', 'KevinRSoares', '202cb962ac59075b964b07152d234b70', '2000-02-21', '2018-08-23 18:52:36', 'A'),
(42, 'Felipe Becker', 'Felipe@gmail.com', 'FelipeB', '202cb962ac59075b964b07152d234b70', '1999-02-21', '2018-08-23 18:53:39', 'J'),
(43, 'Sabrina', 'Sabrina@gmail.com', 'SabrinaMPutsch', '202cb962ac59075b964b07152d234b70', '2001-02-21', '2018-08-23 18:59:41', 'J');

--
-- Acionadores `usuario`
--
DROP TRIGGER IF EXISTS `tr_inseri_log_aluno`;
DELIMITER $$
CREATE TRIGGER `tr_inseri_log_aluno` BEFORE INSERT ON `usuario` FOR EACH ROW begin
	declare descricao varchar(500) default "";
    set new.CodUsu = new.CodUsu;
	set new.NomUsu = new.NomUsu;
    set descricao = concat("Novo jogador inserido: ", new.NomUsu);
    
	call insere_log(descricao,'C');
end
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Structure for view `rankinggeral`
--
DROP TABLE IF EXISTS `rankinggeral`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `rankinggeral`  AS  select `usuario`.`NicUsu` AS `NickName`,max(`partida`.`PonPar`) AS `Pontuacao` from (`partida` left join `usuario` on((`usuario`.`CodUsu` = `partida`.`CodUsu`))) group by `partida`.`CodUsu` order by max(`partida`.`PonPar`) desc limit 10 ;

-- --------------------------------------------------------

--
-- Structure for view `relatorio_log`
--
DROP TABLE IF EXISTS `relatorio_log`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `relatorio_log`  AS  select `log`.`DesLog` AS `Descrição Log`,`log`.`DatHorLog` AS `Data e hora do Log`,`log`.`TipLog` AS `Tipo do Log` from `log` ;

--
-- Constraints for dumped tables
--

--
-- Limitadores para a tabela `partida`
--
ALTER TABLE `partida`
  ADD CONSTRAINT `usuario_partida_fk` FOREIGN KEY (`CodUsu`) REFERENCES `usuario` (`CodUsu`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
