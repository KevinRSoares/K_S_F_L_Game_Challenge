CREATE DATABASE  IF NOT EXISTS `jogodb` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `jogodb`;
-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: jogodb
-- ------------------------------------------------------
-- Server version	5.5.5-10.1.31-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `log`
--

DROP TABLE IF EXISTS `log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `log` (
  `CodLog` int(11) NOT NULL AUTO_INCREMENT,
  `DesLog` varchar(80) NOT NULL,
  `DatHorLog` datetime NOT NULL,
  `TipLog` char(1) NOT NULL,
  PRIMARY KEY (`CodLog`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `log`
--

LOCK TABLES `log` WRITE;
/*!40000 ALTER TABLE `log` DISABLE KEYS */;
INSERT INTO `log` VALUES (1,'','2018-07-15 15:44:01','W'),(2,'Email ou NickName duplicados: Email - teste01@gmail.com | NickName - NickTest01','2018-07-15 15:45:24','W'),(3,'Novo Usuario Cadastrado: NickName: NickTest01','2018-07-15 15:46:34','C'),(4,'Email ou NickName duplicados: Email - teste11@gmail.com | NickName - NickTeste01','2018-07-15 15:47:12','W'),(5,'Email ou NickName duplicados: Email - teste11@gmail.com | NickName - NickTeste01','2018-07-15 15:49:36','W'),(6,'Novo Usuario Cadastrado: NickName: NickTeste5','2018-07-15 15:49:50','C'),(7,'Novo Usuario Cadastrado: NickName: NickTeste16','2018-07-15 19:17:48','C'),(8,'Novo Usuario Cadastrado: NickName: kruan','2018-07-15 19:19:53','C'),(9,'Email ou NickName duplicados: Email - kevin@kevin.vom | NickName - kruan','2018-07-15 19:21:51','W'),(10,'Email ou NickName duplicados: Email - kevin@kevin.com | NickName - kruan','2018-07-15 19:25:38','W'),(11,'Novo Usuario Cadastrado: NickName: kruan1','2018-07-15 19:30:18','C'),(12,'Usuário 15 iniciou partida de código 5.','2018-07-15 21:55:56','P'),(13,'Partida 4 finalizada_Pausada Data/Hora: 2018-07-15 22:04:13','2018-07-15 22:04:13','P'),(14,'Partida 3 finalizada_Pausada Data/Hora: 2018-07-15 22:06:18','2018-07-15 22:06:18','P'),(15,'Usuário 10 iniciou partida de código 8.','2018-07-15 22:12:07','P'),(16,'Partida 3 Reiniciada.','2018-07-15 22:18:44','P'),(17,'Novo Usuario Cadastrado: NickName: Md5','2018-07-15 22:32:25','C'),(18,'Email ou NickName duplicados: Email - testemd5@gmail.com | NickName - md5','2018-07-15 22:32:56','W'),(19,'Usuário 10 iniciou partida de código 9.','2018-07-17 00:26:48','P'),(20,'Novo jogador inserido: KTeste','2018-07-17 00:07:26','C'),(21,'Usuário 10 iniciou partida de código 10.','2018-07-17 00:13:27','P'),(22,'Partida 8 deleteda!','2018-07-17 00:41:41','D');
/*!40000 ALTER TABLE `log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `partida`
--

DROP TABLE IF EXISTS `partida`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `partida` (
  `CodPar` int(11) NOT NULL AUTO_INCREMENT,
  `CodUsu` int(11) NOT NULL,
  `DatHorIniPar` datetime DEFAULT NULL,
  `PonPar` int(11) NOT NULL DEFAULT '0',
  `DatHorFimPar` datetime DEFAULT NULL,
  PRIMARY KEY (`CodPar`),
  KEY `usuario_partida_fk` (`CodUsu`),
  CONSTRAINT `usuario_partida_fk` FOREIGN KEY (`CodUsu`) REFERENCES `usuario` (`CodUsu`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `partida`
--

LOCK TABLES `partida` WRITE;
/*!40000 ALTER TABLE `partida` DISABLE KEYS */;
INSERT INTO `partida` VALUES (0,10,'2018-07-17 00:13:27',0,NULL),(1,10,'2018-07-15 11:18:00',500,'2018-07-15 11:20:05'),(2,15,NULL,90,NULL),(3,15,'2018-07-15 22:18:44',80,NULL),(4,15,'2018-07-15 19:56:31',1000,NULL),(5,15,'2018-07-15 21:55:56',100,'2018-07-15 22:03:15'),(12,10,'2018-07-14 00:00:00',0,'2018-07-15 22:03:15');
/*!40000 ALTER TABLE `partida` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 trigger tr_log_delete_partida before delete
	on partida
	for each row
	begin
		declare descricao varchar(30) default "";
		set descricao = concat("Partida ", OLD.CodPar," deleteda!");
		
		call insere_log(descricao,'D');
	end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Temporary view structure for view `rankinggeral`
--

DROP TABLE IF EXISTS `rankinggeral`;
/*!50001 DROP VIEW IF EXISTS `rankinggeral`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `rankinggeral` AS SELECT 
 1 AS `NickName`,
 1 AS `Pontuação`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `relatorio_log`
--

DROP TABLE IF EXISTS `relatorio_log`;
/*!50001 DROP VIEW IF EXISTS `relatorio_log`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `relatorio_log` AS SELECT 
 1 AS `Descrição Log`,
 1 AS `Data e hora do Log`,
 1 AS `Tipo do Log`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `usuario`
--

DROP TABLE IF EXISTS `usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usuario` (
  `CodUsu` int(11) NOT NULL AUTO_INCREMENT,
  `NomUsu` varchar(45) NOT NULL,
  `EmaUsu` varchar(100) NOT NULL,
  `NicUsu` varchar(20) NOT NULL,
  `SenUsu` varchar(50) NOT NULL,
  `DatNasUsu` date NOT NULL,
  `DatCadUsu` datetime NOT NULL,
  `TipUsu` char(1) NOT NULL,
  PRIMARY KEY (`CodUsu`),
  UNIQUE KEY `EmaUsu_UNIQUE` (`EmaUsu`),
  UNIQUE KEY `NicUsu_UNIQUE` (`NicUsu`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=latin1 COMMENT='Tabela de Usuário';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario`
--

LOCK TABLES `usuario` WRITE;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
INSERT INTO `usuario` VALUES (10,'Teste Usuario 01','teste01@gmail.com','NickTeste01','81dc9bdb52d04dc20036','2018-03-21','0000-00-00 00:00:00','A'),(11,'Teste Usuario 02','teste02@gmail.com','NickTeste02','81dc9bdb52d04dc20036','2018-03-21','0000-00-00 00:00:00','j'),(12,'Teste Usuario 03','teste03@gmail.com','NickTeste03','81dc9bdb52d04dc20036','2018-03-21','0000-00-00 00:00:00','j'),(13,'Teste Usuario 04','teste04@gmail.com','NickTeste04','81dc9bdb52d04dc20036','2018-04-21','0000-00-00 00:00:00','j'),(14,'Teste Usuario 05','teste05@gmail.com','NickTeste05','81dc9bdb52d04dc20036','2018-05-03','0000-00-00 00:00:00','j'),(15,'Teste Usuario 06','teste06@gmail.com','NickTeste06','81dc9bdb52d04dc20036','2018-06-04','0000-00-00 00:00:00','j'),(16,'Teste Usuario 07','teste07@gmail.com','NickTeste07','81dc9bdb52d04dc20036','2018-07-05','0000-00-00 00:00:00','j'),(17,'Teste Usuario 08','teste08@gmail.com','NickTeste08','81dc9bdb52d04dc20036','2018-08-06','0000-00-00 00:00:00','j'),(26,'Teste Usuario 09','teste11@gmail.com','NickTest01','202cb962ac59075b964b','2018-02-21','2018-07-15 15:46:34','A'),(29,'Teste Usuario 09','teste12@gmail.com','NickTeste5','202cb962ac59075b964b','0000-00-00','2018-07-15 15:49:50','A'),(32,'Teste Usuario 09','teste13@gmail.com','NickTste5','202cb962ac59075b964b','0000-00-00','2018-11-21 00:00:00','A'),(33,'Teste Usuario 16','teste16@gmail.com','NickTeste16','202cb962ac59075b964b','0000-00-00','2018-07-15 19:17:48','J'),(34,'Kevin Ruan Soares','email@teste.com','kruan','202cb962ac59075b964b','2000-02-21','2018-07-15 19:19:53','J'),(37,'Kevin Ruan Soares','kevin@kevin.com','kruan1','202cb962ac59075b964b','2000-02-21','2018-07-15 19:30:18','A'),(38,'TesteMd5','testemd5@gmail.com','Md5','81dc9bdb52d04dc20036','2000-02-21','2018-07-15 22:32:25','J'),(40,'KTeste','KTeste@GMAIL.COM','KTeste','202cb962ac59075b964b','2000-02-21','2018-07-17 00:07:26','A');
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 trigger tr_inseri_log_aluno before insert
on usuario
for each row
begin
	declare descricao varchar(500) default "";
    set new.CodUsu = new.CodUsu;
	set new.NomUsu = new.NomUsu;
    set descricao = concat("Novo jogador inserido: ", new.NomUsu);
    
	call insere_log(descricao,'C');
end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Dumping events for database 'jogodb'
--

--
-- Dumping routines for database 'jogodb'
--
/*!50003 DROP FUNCTION IF EXISTS `media_potuacao_j` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `media_potuacao_j`(CoJog int) RETURNS int(11)
BEGIN 
	Declare MedPont int default 0;
    Select Avg(PonPar) from Partida Where not isnull(DatHorFimPar) and CodUsu = CoJog into MedPont;
	
RETURN MedPont;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Cadastra_Usuario` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Cadastra_Usuario`(
IN NoUsu varchar(45),/*Nome do Usuario*/ 
IN EmUsu varchar(100),/*Email*/ 
IN DtNaUsu Date,/*Data de Nascimento*/ 
IN NiUsu varchar(20),/*NickName/Login*/
IN SeUsu varchar(20),/*Senha*/
IN TiUsu char(1)/*Tipo de Usuário*/ 
)
BEGIN
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
	
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `deleta_partidas_abertas` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `deleta_partidas_abertas`()
BEGIN
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
	END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Finaliza_Pausa_Partida` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Finaliza_Pausa_Partida`(
IN CoPar Int,/*Código do Usuario*/
IN CoPon Int /*Pontuação*/
)
BEGIN
	Declare desLog varchar(80);
    Declare DtFimPar DateTime default Now();
	
    Update Partida set PonPar = CoPon Where CodPar = CoPar;
	Update Partida set DatHorFimPar = DtFimPar Where CodPar = CoPar;
    
    Set DesLog = Concat('Partida ',CoPar,' finalizada_Pausada Data/Hora: ',DtFimPar);
    call insere_log(desLog,'P');    
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Inicia_Partida` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Inicia_Partida`(
IN CoUsu Int,/*Código do Usuario*/
OUT CoPar Int /*Código da Partida Iniciada*/
)
BEGIN
	Declare desLog varchar(80);
	Insert Into Partida(CodUsu,DatHorIniPar)
		Values(CoUsu,Now());
	Select Max(CodPar) from Partida Where CodUsu = CoUsu into CoPar;
    Set DesLog = Concat('Usuário ',CoUsu,' iniciou partida de código ', CoPar,'.');
    call insere_log(desLog,'P');    
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `insere_log` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `insere_log`(IN desLog varchar(80),IN tipoLog varchar(1))
BEGIN
	insert into log(DatHorLog, DesLog, TipLog) values(now(), deslog, tipoLog);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Reinicia_Partida` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Reinicia_Partida`(
IN CoPar Int/*Código da Partida*/
)
BEGIN
	Declare desLog varchar(80);
    Declare DtIniPar DateTime default Now();
	
    Update Partida set PonPar = 0 Where CodPar = CoPar;
	Update Partida set DatHorIniPar = DtIniPar Where CodPar = CoPar;
    Update Partida set DatHorFimPar = null Where CodPar = CoPar;
    
    Set DesLog = Concat('Partida ',CoPar,' Reiniciada.');
    call insere_log(desLog,'P');    
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `top10_individual` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `top10_individual`(IN codigo int)
BEGIN
		select Ponpar from partida where CodUsu = codigo order by Ponpar desc limit 10;
	END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Final view structure for view `rankinggeral`
--

/*!50001 DROP VIEW IF EXISTS `rankinggeral`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `rankinggeral` AS select `usuario`.`NicUsu` AS `NickName`,max(`partida`.`PonPar`) AS `Pontuação` from (`partida` left join `usuario` on((`usuario`.`CodUsu` = `partida`.`CodUsu`))) group by `partida`.`CodUsu` order by max(`partida`.`PonPar`) desc limit 10 */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `relatorio_log`
--

/*!50001 DROP VIEW IF EXISTS `relatorio_log`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `relatorio_log` AS select `log`.`DesLog` AS `Descrição Log`,`log`.`DatHorLog` AS `Data e hora do Log`,`log`.`TipLog` AS `Tipo do Log` from `log` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-07-17  0:59:06
