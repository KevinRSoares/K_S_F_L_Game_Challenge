CREATE DATABASE  IF NOT EXISTS `jogodb` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `jogodb`;
-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: jogodb
-- ------------------------------------------------------
-- Server version	5.5.5-10.1.28-MariaDB

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
) ENGINE=InnoDB AUTO_INCREMENT=110 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `log`
--

LOCK TABLES `log` WRITE;
/*!40000 ALTER TABLE `log` DISABLE KEYS */;
INSERT INTO `log` VALUES (75,'Novo jogador inserido: Kevin Ruan Soares','2018-09-30 23:35:05','C'),(76,'Novo jogador inserido: Sabrina Marques','2018-09-30 23:36:52','C'),(77,'Novo jogador inserido: Felipe','2018-09-30 23:37:11','C'),(78,'Novo jogador inserido: teste01','2018-09-30 23:37:36','C'),(79,'Novo jogador inserido: teste02','2018-09-30 23:37:49','C'),(80,'Novo jogador inserido: teste03','2018-09-30 23:38:05','C'),(81,'Novo jogador inserido: teste04','2018-09-30 23:38:20','C'),(82,'Novo jogador inserido: teste05','2018-09-30 23:38:49','C'),(83,'Novo jogador inserido: teste06','2018-09-30 23:39:15','C'),(85,'Email ou NickName duplicados: Email - teste07@gmail.com | NickName - teste06','2018-09-30 23:39:30','W'),(86,'Novo jogador inserido: teste07','2018-09-30 23:39:39','C'),(87,'Usuário 51 iniciou partida de código 24.','2018-09-30 23:40:56','P'),(88,'Partida 24 finalizada_Pausada Data/Hora: 2018-09-30 23:41:07','2018-09-30 23:41:07','P'),(89,'Usuário 51 iniciou partida de código 25.','2018-09-30 23:41:22','P'),(90,'Partida 25 finalizada_Pausada Data/Hora: 2018-09-30 23:41:40','2018-09-30 23:41:40','P'),(91,'Usuário 51 iniciou partida de código 26.','2018-09-30 23:41:49','P'),(92,'Partida 26 finalizada_Pausada Data/Hora: 2018-09-30 23:42:00','2018-09-30 23:42:00','P'),(93,'Usuário 52 iniciou partida de código 27.','2018-09-30 23:43:06','P'),(94,'Partida 27 finalizada_Pausada Data/Hora: 2018-09-30 23:43:14','2018-09-30 23:43:15','P'),(95,'Usuário 53 iniciou partida de código 28.','2018-09-30 23:43:31','P'),(96,'Partida 28 finalizada_Pausada Data/Hora: 2018-09-30 23:43:38','2018-09-30 23:43:38','P'),(97,'Usuário 54 iniciou partida de código 29.','2018-09-30 23:44:18','P'),(98,'Partida 29 finalizada_Pausada Data/Hora: 2018-09-30 23:44:58','2018-09-30 23:44:58','P'),(99,'Usuário 55 iniciou partida de código 30.','2018-09-30 23:45:17','P'),(100,'Partida 30 finalizada_Pausada Data/Hora: 2018-09-30 23:45:26','2018-09-30 23:45:26','P'),(101,'Usuário 51 iniciou partida de código 32.','2018-10-09 21:04:50','P'),(102,'Usuário 51 iniciou partida de código 33.','2018-10-09 21:04:57','P'),(103,'Usuário 51 iniciou partida de código 34.','2018-10-09 21:11:14','P'),(104,'Usuário 51 iniciou partida de código 35.','2018-10-09 21:25:36','P'),(105,'Usuário 51 iniciou partida de código 36.','2018-10-09 21:27:04','P'),(106,'Usuário 51 iniciou partida de código 37.','2018-10-09 21:27:44','P'),(107,'Usuário 51 iniciou partida de código 38.','2018-10-09 21:28:54','P'),(108,'Usuário 51 iniciou partida de código 39.','2018-10-09 21:29:49','P'),(109,'Usuário 51 iniciou partida de código 40.','2018-10-09 21:30:30','P');
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
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `partida`
--

LOCK TABLES `partida` WRITE;
/*!40000 ALTER TABLE `partida` DISABLE KEYS */;
INSERT INTO `partida` VALUES (24,51,'2018-09-30 23:40:56',1000,'2018-09-30 23:41:07'),(25,51,'2018-09-30 23:41:22',1500,'2018-09-30 23:41:40'),(26,51,'2018-09-30 23:41:49',120,'2018-09-30 23:42:00'),(27,52,'2018-09-30 23:43:06',100,'2018-09-30 23:43:14'),(28,53,'2018-09-30 23:43:30',1000,'2018-09-30 23:43:38'),(29,54,'2018-09-30 23:44:18',555,'2018-09-30 23:44:58'),(30,55,'2018-09-30 23:45:16',2223,'2018-09-30 23:45:26'),(32,51,'2018-10-09 21:04:49',0,NULL),(33,51,'2018-10-09 21:04:57',0,NULL),(34,51,'2018-10-09 21:11:14',0,NULL),(35,51,'2018-10-09 21:25:36',0,NULL),(36,51,'2018-10-09 21:27:04',0,NULL),(37,51,'2018-10-09 21:27:44',0,NULL),(38,51,'2018-10-09 21:28:54',0,NULL),(39,51,'2018-10-09 21:29:49',0,NULL),(40,51,'2018-10-09 21:30:30',0,NULL);
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
 1 AS `Pontuacao`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `relatoriolog`
--

DROP TABLE IF EXISTS `relatoriolog`;
/*!50001 DROP VIEW IF EXISTS `relatoriolog`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `relatoriolog` AS SELECT 
 1 AS `DescricaoLog`,
 1 AS `DthorLog`,
 1 AS `TipoLog`*/;
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
  `SenUsu` varchar(32) NOT NULL,
  `DatNasUsu` date NOT NULL,
  `DatCadUsu` datetime NOT NULL,
  `TipUsu` char(1) NOT NULL,
  PRIMARY KEY (`CodUsu`),
  UNIQUE KEY `EmaUsu_UNIQUE` (`EmaUsu`),
  UNIQUE KEY `NicUsu_UNIQUE` (`NicUsu`)
) ENGINE=InnoDB AUTO_INCREMENT=62 DEFAULT CHARSET=latin1 COMMENT='Tabela de Usuário';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario`
--

LOCK TABLES `usuario` WRITE;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
INSERT INTO `usuario` VALUES (51,'Kevin Ruan Soares','kevin_soares@estudante.sc.senai.br','Kevin','202cb962ac59075b964b07152d234b70','2000-02-21','2018-09-30 23:35:05','J'),(52,'Sabrina Marques','sabrina@gmail.com','Marques','202cb962ac59075b964b07152d234b70','2001-01-21','2018-09-30 23:36:52','J'),(53,'Felipe','Felipe@gmail.com','Felipe','202cb962ac59075b964b07152d234b70','2000-02-21','2018-09-30 23:37:11','J'),(54,'teste01','teste01@gmail.com','teste01','202cb962ac59075b964b07152d234b70','2000-02-21','2018-09-30 23:37:36','J'),(55,'teste02','teste02@gmail.com','teste02','202cb962ac59075b964b07152d234b70','2000-02-21','2018-09-30 23:37:49','J'),(56,'teste03','teste03@gmail.com','teste03','202cb962ac59075b964b07152d234b70','2000-02-21','2018-09-30 23:38:05','J'),(57,'teste04','teste04@gmail.com','teste04','202cb962ac59075b964b07152d234b70','2000-02-21','2018-09-30 23:38:20','J'),(58,'teste05','teste05@gmail.com','teste05','202cb962ac59075b964b07152d234b70','2000-02-21','2018-09-30 23:38:49','J'),(59,'teste06','teste06@gmail.com','teste06','202cb962ac59075b964b07152d234b70','2000-02-21','2018-09-30 23:39:15','J'),(61,'teste07','teste07@gmail.com','teste07','202cb962ac59075b964b07152d234b70','2000-02-21','2018-09-30 23:39:39','J');
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



		select '0'  as 'Retorno';



	End;    



	Insert Into Usuario(NomUsu,EmaUsu,NicUsu,SenUsu,DatNasUsu,DatCadUsu,TipUsu)



		Values(NoUsu,EmUsu,NiUsu,md5(SeUsu),DtNaUsu,DtCaUsu,TiUsu);



		Select '1' as 'Retorno';



	



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
	IN CoUsu Int)
BEGIN
	Declare desLog varchar(80);
    Declare CoPar int(11);
	Insert Into Partida(CodUsu,DatHorIniPar)
		Values(CoUsu,Now());
	Select Max(CodPar) as 'CoPar' from Partida Where CodUsu = CoUsu into CoPar;
    Set DesLog = Concat('Usuário ',CoUsu,' iniciou partida de código ', CoPar,'.');
    Call insere_log(desLog,'P');    
	Select CoPar;
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
/*!50001 VIEW `rankinggeral` AS select `usuario`.`NicUsu` AS `NickName`,max(`partida`.`PonPar`) AS `Pontuacao` from (`partida` left join `usuario` on((`usuario`.`CodUsu` = `partida`.`CodUsu`))) group by `partida`.`CodUsu` order by max(`partida`.`PonPar`) desc,`usuario`.`NicUsu` limit 10 */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `relatoriolog`
--

/*!50001 DROP VIEW IF EXISTS `relatoriolog`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `relatoriolog` AS select `log`.`DesLog` AS `DescricaoLog`,`log`.`DatHorLog` AS `DthorLog`,`log`.`TipLog` AS `TipoLog` from `log` */;
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

-- Dump completed on 2018-10-09 21:38:48
