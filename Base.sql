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
) ENGINE=InnoDB AUTO_INCREMENT=612 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `log`
--

LOCK TABLES `log` WRITE;
/*!40000 ALTER TABLE `log` DISABLE KEYS */;
INSERT INTO `log` VALUES (75,'Novo jogador inserido: Kevin Ruan Soares','2018-09-30 23:35:05','C'),(76,'Novo jogador inserido: Sabrina Marques','2018-09-30 23:36:52','C'),(77,'Novo jogador inserido: Felipe','2018-09-30 23:37:11','C'),(78,'Novo jogador inserido: teste01','2018-09-30 23:37:36','C'),(79,'Novo jogador inserido: teste02','2018-09-30 23:37:49','C'),(80,'Novo jogador inserido: teste03','2018-09-30 23:38:05','C'),(81,'Novo jogador inserido: teste04','2018-09-30 23:38:20','C'),(82,'Novo jogador inserido: teste05','2018-09-30 23:38:49','C'),(83,'Novo jogador inserido: teste06','2018-09-30 23:39:15','C'),(85,'Email ou NickName duplicados: Email - teste07@gmail.com | NickName - teste06','2018-09-30 23:39:30','W'),(86,'Novo jogador inserido: teste07','2018-09-30 23:39:39','C'),(87,'Usuário 51 iniciou partida de código 24.','2018-09-30 23:40:56','P'),(88,'Partida 24 finalizada_Pausada Data/Hora: 2018-09-30 23:41:07','2018-09-30 23:41:07','P'),(89,'Usuário 51 iniciou partida de código 25.','2018-09-30 23:41:22','P'),(90,'Partida 25 finalizada_Pausada Data/Hora: 2018-09-30 23:41:40','2018-09-30 23:41:40','P'),(91,'Usuário 51 iniciou partida de código 26.','2018-09-30 23:41:49','P'),(92,'Partida 26 finalizada_Pausada Data/Hora: 2018-09-30 23:42:00','2018-09-30 23:42:00','P'),(93,'Usuário 52 iniciou partida de código 27.','2018-09-30 23:43:06','P'),(94,'Partida 27 finalizada_Pausada Data/Hora: 2018-09-30 23:43:14','2018-09-30 23:43:15','P'),(95,'Usuário 53 iniciou partida de código 28.','2018-09-30 23:43:31','P'),(96,'Partida 28 finalizada_Pausada Data/Hora: 2018-09-30 23:43:38','2018-09-30 23:43:38','P'),(97,'Usuário 54 iniciou partida de código 29.','2018-09-30 23:44:18','P'),(98,'Partida 29 finalizada_Pausada Data/Hora: 2018-09-30 23:44:58','2018-09-30 23:44:58','P'),(99,'Usuário 55 iniciou partida de código 30.','2018-09-30 23:45:17','P'),(100,'Partida 30 finalizada_Pausada Data/Hora: 2018-09-30 23:45:26','2018-09-30 23:45:26','P'),(101,'Usuário 51 iniciou partida de código 32.','2018-10-09 21:04:50','P'),(102,'Usuário 51 iniciou partida de código 33.','2018-10-09 21:04:57','P'),(103,'Usuário 51 iniciou partida de código 34.','2018-10-09 21:11:14','P'),(104,'Usuário 51 iniciou partida de código 35.','2018-10-09 21:25:36','P'),(105,'Usuário 51 iniciou partida de código 36.','2018-10-09 21:27:04','P'),(106,'Usuário 51 iniciou partida de código 37.','2018-10-09 21:27:44','P'),(107,'Usuário 51 iniciou partida de código 38.','2018-10-09 21:28:54','P'),(108,'Usuário 51 iniciou partida de código 39.','2018-10-09 21:29:49','P'),(109,'Usuário 51 iniciou partida de código 40.','2018-10-09 21:30:30','P'),(110,'Usuário 51 teve a senha alterada para d41d8cd98f00b204e9800998ecf8427e.','2018-10-12 18:36:39','M'),(111,'Usuário 51 teve a senha alterada para 202cb962ac59075b964b07152d234b70.','2018-10-12 18:36:52','M'),(112,'Usuário 51 teve a senha alterada para c3bfbc2fc89bd1dd71ad5fc5ac96ae69.','2018-10-12 18:37:17','M'),(113,'Usuário 51 iniciou partida de código 45.','2018-10-12 18:40:15','P'),(114,'Usuário 51 iniciou partida de código 47.','2018-10-12 18:43:40','P'),(115,'Usuário 51 iniciou partida de código 48.','2018-10-12 18:44:06','P'),(116,'Usuário 51 iniciou partida de código 49.','2018-10-12 22:11:11','P'),(117,'Usuário 51 iniciou partida de código 50.','2018-10-12 22:11:54','P'),(118,'Usuário 51 iniciou partida de código 51.','2018-10-12 22:12:10','P'),(119,'Usuário 51 iniciou partida de código 52.','2018-10-12 22:12:55','P'),(120,'Usuário 51 iniciou partida de código 53.','2018-10-12 22:14:38','P'),(121,'Usuário 51 iniciou partida de código 54.','2018-10-12 22:15:27','P'),(122,'Usuário 51 iniciou partida de código 55.','2018-10-12 22:37:40','P'),(123,'Usuário 51 iniciou partida de código 56.','2018-10-12 22:37:42','P'),(124,'Usuário 51 iniciou partida de código 57.','2018-10-12 22:40:32','P'),(125,'Usuário 51 iniciou partida de código 58.','2018-10-12 22:40:35','P'),(126,'Usuário 51 iniciou partida de código 59.','2018-10-12 22:40:39','P'),(127,'Partida 59 finalizada_Pausada Data/Hora: 2018-10-12 22:40:43','2018-10-12 22:40:43','P'),(128,'Usuário 51 iniciou partida de código 60.','2018-10-12 22:41:46','P'),(129,'Usuário 51 iniciou partida de código 61.','2018-10-12 22:41:48','P'),(130,'Usuário 51 iniciou partida de código 62.','2018-10-12 22:41:52','P'),(131,'Usuário 51 iniciou partida de código 63.','2018-10-12 22:41:57','P'),(132,'Partida 63 finalizada_Pausada Data/Hora: 2018-10-12 22:42:02','2018-10-12 22:42:02','P'),(133,'Partida 63 finalizada_Pausada Data/Hora: 2018-10-12 22:42:23','2018-10-12 22:42:23','P'),(134,'Partida 63 finalizada_Pausada Data/Hora: 2018-10-12 22:42:25','2018-10-12 22:42:26','P'),(135,'Partida 63 finalizada_Pausada Data/Hora: 2018-10-12 22:42:26','2018-10-12 22:42:26','P'),(136,'Usuário 51 iniciou partida de código 64.','2018-10-12 22:42:29','P'),(137,'Usuário 51 iniciou partida de código 65.','2018-10-13 12:08:38','P'),(138,'Usuário 51 iniciou partida de código 66.','2018-10-13 12:08:40','P'),(139,'Usuário 51 iniciou partida de código 67.','2018-10-13 12:09:08','P'),(140,'Usuário 51 iniciou partida de código 68.','2018-10-13 12:09:10','P'),(141,'Usuário 51 iniciou partida de código 69.','2018-10-13 12:09:13','P'),(142,'Usuário 51 iniciou partida de código 70.','2018-10-13 12:09:19','P'),(143,'Usuário 51 iniciou partida de código 71.','2018-10-13 12:09:37','P'),(144,'Usuário 51 iniciou partida de código 72.','2018-10-13 12:09:39','P'),(145,'Usuário 51 iniciou partida de código 73.','2018-10-13 12:09:43','P'),(146,'Usuário 51 iniciou partida de código 74.','2018-10-13 12:10:05','P'),(147,'Usuário 51 iniciou partida de código 75.','2018-10-13 12:10:07','P'),(148,'Usuário 51 iniciou partida de código 76.','2018-10-13 12:10:11','P'),(149,'Partida 76 finalizada_Pausada Data/Hora: 2018-10-13 12:10:15','2018-10-13 12:10:15','P'),(151,'Email ou NickName duplicados: Email - kevin_soares@estudante.sc.senai.br | NickN','2018-10-13 13:43:21','W'),(153,'Email ou NickName duplicados: Email - kevin_soares@estudante.sc.senai.br | NickN','2018-10-13 13:43:52','W'),(155,'Email ou NickName duplicados: Email - kevin_soares@estudante.sc.senai.br | NickN','2018-10-13 13:43:59','W'),(157,'Email ou NickName duplicados: Email - kevin_soares@estudante.sc.senai.br | NickN','2018-10-13 13:43:59','W'),(159,'Email ou NickName duplicados: Email - kevin_soares@estudante.sc.senai.br | NickN','2018-10-13 13:44:00','W'),(161,'Email ou NickName duplicados: Email - kevin_soares@estudante.sc.senai.br | NickN','2018-10-13 13:44:00','W'),(163,'Email ou NickName duplicados: Email - kevin_soares@estudante.sc.senai.br | NickN','2018-10-13 13:44:00','W'),(165,'Email ou NickName duplicados: Email - kevin_soares@estudante.sc.senai.br | NickN','2018-10-13 13:44:00','W'),(167,'Email ou NickName duplicados: Email - kevin_soares@estudante.sc.senai.br | NickN','2018-10-13 13:44:00','W'),(169,'Email ou NickName duplicados: Email - kevin_soares@estudante.sc.senai.br | NickN','2018-10-13 13:44:01','W'),(171,'Email ou NickName duplicados: Email - kevin_soares@estudante.sc.senai.br | NickN','2018-10-13 13:44:01','W'),(173,'Email ou NickName duplicados: Email - kevin_soares@estudante.sc.senai.br | NickN','2018-10-13 13:49:44','W'),(175,'Email ou NickName duplicados: Email - kevin_soares@estudante.sc.senai.br | NickN','2018-10-13 13:50:14','W'),(177,'Email ou NickName duplicados: Email - kevin_soares@estudante.sc.senai.br | NickN','2018-10-13 13:50:16','W'),(179,'Email ou NickName duplicados: Email - kevin_soares@estudante.sc.senai.br | NickN','2018-10-13 13:50:16','W'),(181,'Email ou NickName duplicados: Email - kevin_soares@estudante.sc.senai.br | NickN','2018-10-13 13:50:17','W'),(183,'Email ou NickName duplicados: Email - kevin_soares@estudante.sc.senai.br | NickN','2018-10-13 13:50:17','W'),(185,'Email ou NickName duplicados: Email - kevin_soares@estudante.sc.senai.br | NickN','2018-10-13 13:50:17','W'),(187,'Email ou NickName duplicados: Email - kevin_soares@estudante.sc.senai.br | NickN','2018-10-13 13:50:17','W'),(189,'Email ou NickName duplicados: Email - kevin_soares@estudante.sc.senai.br | NickN','2018-10-13 13:50:17','W'),(191,'Email ou NickName duplicados: Email - kevin_soares@estudante.sc.senai.br | NickN','2018-10-13 13:50:59','W'),(193,'Email ou NickName duplicados: Email - kevin_soares@estudante.sc.senai.br | NickN','2018-10-13 14:56:55','W'),(195,'Email ou NickName duplicados: Email - kevin_soares@estudante.sc.senai.br | NickN','2018-10-13 14:57:39','W'),(196,'Usuário 51 iniciou partida de código 77.','2018-10-13 16:19:09','P'),(197,'Usuário 51 iniciou partida de código 78.','2018-10-13 16:19:10','P'),(198,'Usuário 51 iniciou partida de código 79.','2018-10-13 16:19:11','P'),(199,'Usuário 51 iniciou partida de código 80.','2018-10-13 16:19:12','P'),(200,'Usuário 51 iniciou partida de código 81.','2018-10-13 16:19:12','P'),(201,'Usuário 51 iniciou partida de código 82.','2018-10-13 16:20:02','P'),(202,'Usuário 51 iniciou partida de código 83.','2018-10-13 16:20:06','P'),(203,'Usuário 51 iniciou partida de código 84.','2018-10-13 16:20:09','P'),(204,'Usuário 51 iniciou partida de código 85.','2018-10-13 17:04:32','P'),(205,'Partida 85 finalizada_Pausada Data/Hora: 2018-10-13 17:04:34','2018-10-13 17:04:35','P'),(206,'Usuário 51 iniciou partida de código 86.','2018-10-13 17:04:35','P'),(207,'Usuário 51 iniciou partida de código 87.','2018-10-13 17:06:40','P'),(208,'Usuário 51 iniciou partida de código 88.','2018-10-13 17:58:00','P'),(209,'Partida 88 finalizada_Pausada Data/Hora: 2018-10-13 17:58:04','2018-10-13 17:58:04','P'),(210,'Usuário 51 iniciou partida de código 89.','2018-10-13 17:58:04','P'),(211,'Partida 89 finalizada_Pausada Data/Hora: 2018-10-13 17:58:06','2018-10-13 17:58:06','P'),(212,'Usuário 51 iniciou partida de código 90.','2018-10-13 17:59:46','P'),(213,'Partida 90 finalizada_Pausada Data/Hora: 2018-10-13 17:59:47','2018-10-13 17:59:47','P'),(214,'Usuário 51 iniciou partida de código 91.','2018-10-13 18:00:04','P'),(215,'Usuário 51 iniciou partida de código 92.','2018-10-13 18:00:07','P'),(216,'Usuário 51 iniciou partida de código 93.','2018-10-13 18:00:10','P'),(217,'Usuário 51 iniciou partida de código 94.','2018-10-13 18:00:16','P'),(218,'Partida 94 finalizada_Pausada Data/Hora: 2018-10-13 18:00:19','2018-10-13 18:00:19','P'),(219,'Usuário 51 iniciou partida de código 95.','2018-10-13 18:00:20','P'),(220,'Usuário 51 iniciou partida de código 96.','2018-10-13 18:00:23','P'),(221,'Usuário 51 iniciou partida de código 97.','2018-10-13 18:01:04','P'),(222,'Usuário 51 iniciou partida de código 98.','2018-10-13 18:01:06','P'),(223,'Usuário 51 iniciou partida de código 99.','2018-10-13 18:01:38','P'),(224,'Usuário 51 iniciou partida de código 100.','2018-10-13 18:01:40','P'),(225,'Usuário 51 iniciou partida de código 101.','2018-10-13 18:02:19','P'),(226,'Usuário 51 iniciou partida de código 102.','2018-10-13 18:02:21','P'),(227,'Partida 102 finalizada_Pausada Data/Hora: 2018-10-13 18:02:23','2018-10-13 18:02:23','P'),(228,'Usuário 51 iniciou partida de código 103.','2018-10-13 18:02:33','P'),(229,'Usuário 51 iniciou partida de código 104.','2018-10-13 18:02:36','P'),(230,'Usuário 51 iniciou partida de código 105.','2018-10-13 18:02:40','P'),(231,'Usuário 51 iniciou partida de código 106.','2018-10-13 18:02:45','P'),(232,'Partida 106 finalizada_Pausada Data/Hora: 2018-10-13 18:02:49','2018-10-13 18:02:49','P'),(233,'Usuário 51 iniciou partida de código 107.','2018-10-13 18:02:57','P'),(234,'Usuário 51 iniciou partida de código 108.','2018-10-13 18:03:00','P'),(235,'Usuário 51 iniciou partida de código 109.','2018-10-13 18:03:04','P'),(236,'Usuário 51 iniciou partida de código 110.','2018-10-13 18:03:12','P'),(237,'Usuário 51 iniciou partida de código 111.','2018-10-13 18:05:28','P'),(238,'Usuário 51 iniciou partida de código 112.','2018-10-13 18:05:31','P'),(239,'Usuário 51 iniciou partida de código 113.','2018-10-13 18:05:35','P'),(240,'Partida 113 finalizada_Pausada Data/Hora: 2018-10-13 18:05:37','2018-10-13 18:05:37','P'),(241,'Usuário 51 iniciou partida de código 114.','2018-10-13 18:05:41','P'),(242,'Usuário 51 iniciou partida de código 115.','2018-10-13 18:05:43','P'),(243,'Usuário 51 iniciou partida de código 116.','2018-10-13 18:07:55','P'),(244,'Usuário 51 iniciou partida de código 117.','2018-10-13 18:07:57','P'),(245,'Usuário 51 iniciou partida de código 118.','2018-10-13 18:08:01','P'),(246,'Usuário 51 iniciou partida de código 119.','2018-10-13 18:08:04','P'),(247,'Usuário 51 iniciou partida de código 120.','2018-10-13 18:08:29','P'),(248,'Usuário 51 iniciou partida de código 121.','2018-10-13 18:08:31','P'),(249,'Usuário 51 iniciou partida de código 122.','2018-10-13 18:08:35','P'),(250,'Partida 122 finalizada_Pausada Data/Hora: 2018-10-13 18:08:37','2018-10-13 18:08:37','P'),(251,'Usuário 51 iniciou partida de código 123.','2018-10-13 18:08:39','P'),(252,'Usuário 51 iniciou partida de código 124.','2018-10-13 18:08:41','P'),(253,'Usuário 51 iniciou partida de código 125.','2018-10-13 18:09:22','P'),(254,'Usuário 51 iniciou partida de código 126.','2018-10-13 18:09:25','P'),(255,'Usuário 51 iniciou partida de código 127.','2018-10-13 18:09:28','P'),(256,'Partida 127 finalizada_Pausada Data/Hora: 2018-10-13 18:09:31','2018-10-13 18:09:31','P'),(257,'Usuário 51 iniciou partida de código 128.','2018-10-13 18:09:32','P'),(258,'Usuário 51 iniciou partida de código 129.','2018-10-13 18:09:35','P'),(259,'Usuário 51 iniciou partida de código 130.','2018-10-13 18:09:40','P'),(260,'Partida 130 finalizada_Pausada Data/Hora: 2018-10-13 18:09:44','2018-10-13 18:09:44','P'),(261,'Usuário 51 iniciou partida de código 131.','2018-10-13 18:12:37','P'),(262,'Usuário 51 iniciou partida de código 132.','2018-10-13 18:12:40','P'),(263,'Usuário 51 iniciou partida de código 133.','2018-10-13 18:12:42','P'),(264,'Usuário 51 iniciou partida de código 134.','2018-10-13 18:14:50','P'),(265,'Usuário 51 iniciou partida de código 135.','2018-10-13 18:14:53','P'),(266,'Usuário 51 iniciou partida de código 136.','2018-10-13 18:14:55','P'),(267,'Usuário 51 iniciou partida de código 137.','2018-10-13 18:14:58','P'),(268,'Usuário 51 iniciou partida de código 138.','2018-10-13 18:15:01','P'),(269,'Usuário 51 iniciou partida de código 139.','2018-10-13 18:15:06','P'),(270,'Usuário 51 iniciou partida de código 140.','2018-10-13 18:15:12','P'),(271,'Usuário 51 iniciou partida de código 141.','2018-10-13 18:15:19','P'),(272,'Usuário 51 iniciou partida de código 142.','2018-10-13 18:49:26','P'),(273,'Usuário 51 iniciou partida de código 143.','2018-10-14 12:51:30','P'),(274,'Usuário 51 iniciou partida de código 144.','2018-10-14 12:51:33','P'),(275,'Usuário 51 iniciou partida de código 145.','2018-10-14 12:51:36','P'),(276,'Partida 145 finalizada_Pausada Data/Hora: 2018-10-14 12:51:39','2018-10-14 12:51:39','P'),(277,'Partida 145 finalizada_Pausada Data/Hora: 2018-10-14 12:52:05','2018-10-14 12:52:05','P'),(278,'Usuário 51 iniciou partida de código 146.','2018-10-14 12:53:02','P'),(279,'Partida 146 finalizada_Pausada Data/Hora: 2018-10-14 12:53:07','2018-10-14 12:53:07','P'),(280,'Usuário 51 iniciou partida de código 147.','2018-10-14 12:56:04','P'),(281,'Partida 147 finalizada_Pausada Data/Hora: 2018-10-14 12:56:11','2018-10-14 12:56:12','P'),(282,'Usuário 51 iniciou partida de código 148.','2018-10-14 17:22:53','P'),(283,'Usuário 51 iniciou partida de código 149.','2018-10-14 17:23:42','P'),(284,'Usuário 51 iniciou partida de código 150.','2018-10-14 17:23:44','P'),(285,'Usuário 51 iniciou partida de código 151.','2018-10-14 17:23:48','P'),(286,'Usuário 51 iniciou partida de código 152.','2018-10-14 17:30:12','P'),(287,'Usuário 51 iniciou partida de código 153.','2018-10-14 18:06:46','P'),(288,'Partida 153 finalizada_Pausada Data/Hora: 2018-10-14 18:06:51','2018-10-14 18:06:51','P'),(289,'Usuário 51 iniciou partida de código 154.','2018-10-14 18:06:52','P'),(290,'Usuário 51 iniciou partida de código 155.','2018-10-14 18:06:55','P'),(291,'Usuário 51 iniciou partida de código 156.','2018-10-14 18:06:58','P'),(292,'Usuário 51 iniciou partida de código 157.','2018-10-14 18:07:03','P'),(293,'Partida 157 finalizada_Pausada Data/Hora: 2018-10-14 18:07:07','2018-10-14 18:07:07','P'),(294,'Partida 157 finalizada_Pausada Data/Hora: 2018-10-14 18:07:09','2018-10-14 18:07:09','P'),(295,'Usuário 51 iniciou partida de código 158.','2018-10-14 18:08:27','P'),(296,'Usuário 51 iniciou partida de código 159.','2018-10-14 18:08:34','P'),(297,'Partida 159 finalizada_Pausada Data/Hora: 2018-10-14 18:08:34','2018-10-14 18:08:34','P'),(298,'Partida 159 finalizada_Pausada Data/Hora: 2018-10-14 18:08:35','2018-10-14 18:08:35','P'),(299,'Usuário 51 iniciou partida de código 160.','2018-10-14 18:08:40','P'),(300,'Usuário 51 iniciou partida de código 161.','2018-10-14 18:08:42','P'),(301,'Partida 161 finalizada_Pausada Data/Hora: 2018-10-14 18:08:42','2018-10-14 18:08:42','P'),(302,'Usuário 51 iniciou partida de código 162.','2018-10-14 18:11:21','P'),(303,'Usuário 51 iniciou partida de código 163.','2018-10-14 18:11:23','P'),(304,'Usuário 51 iniciou partida de código 164.','2018-10-14 18:11:27','P'),(305,'Usuário 51 iniciou partida de código 165.','2018-10-14 18:11:32','P'),(306,'Usuário 51 iniciou partida de código 166.','2018-10-14 18:11:38','P'),(307,'Partida 166 finalizada_Pausada Data/Hora: 2018-10-14 18:11:41','2018-10-14 18:11:41','P'),(308,'Usuário 51 iniciou partida de código 167.','2018-10-14 18:13:01','P'),(309,'Usuário 51 iniciou partida de código 168.','2018-10-14 18:13:05','P'),(310,'Partida 168 finalizada_Pausada Data/Hora: 2018-10-14 18:13:07','2018-10-14 18:13:07','P'),(311,'Usuário 51 iniciou partida de código 169.','2018-10-14 18:19:14','P'),(312,'Partida 169 finalizada_Pausada Data/Hora: 2018-10-14 18:19:14','2018-10-14 18:19:14','P'),(313,'Usuário 51 iniciou partida de código 170.','2018-10-14 18:19:29','P'),(314,'Partida 170 finalizada_Pausada Data/Hora: 2018-10-14 18:19:30','2018-10-14 18:19:30','P'),(315,'Usuário 51 iniciou partida de código 171.','2018-10-14 18:19:32','P'),(316,'Partida 171 finalizada_Pausada Data/Hora: 2018-10-14 18:19:37','2018-10-14 18:19:37','P'),(317,'Usuário 51 iniciou partida de código 172.','2018-10-14 18:19:48','P'),(318,'Usuário 51 iniciou partida de código 173.','2018-10-14 18:19:51','P'),(319,'Usuário 51 iniciou partida de código 174.','2018-10-14 18:19:56','P'),(320,'Partida 174 finalizada_Pausada Data/Hora: 2018-10-14 18:20:00','2018-10-14 18:20:00','P'),(321,'Usuário 51 iniciou partida de código 175.','2018-10-14 18:20:06','P'),(322,'Usuário 51 iniciou partida de código 176.','2018-10-14 18:20:12','P'),(323,'Partida 176 finalizada_Pausada Data/Hora: 2018-10-14 18:20:16','2018-10-14 18:20:16','P'),(324,'Usuário 51 iniciou partida de código 177.','2018-10-14 18:21:02','P'),(325,'Usuário 51 iniciou partida de código 178.','2018-10-14 18:24:04','P'),(326,'Usuário 51 iniciou partida de código 179.','2018-10-14 18:24:08','P'),(327,'Usuário 51 iniciou partida de código 180.','2018-10-14 18:24:12','P'),(328,'Usuário 51 iniciou partida de código 181.','2018-10-14 18:24:18','P'),(329,'Partida 181 finalizada_Pausada Data/Hora: 2018-10-14 18:24:19','2018-10-14 18:24:19','P'),(330,'Usuário 51 iniciou partida de código 182.','2018-10-14 18:25:07','P'),(331,'Partida 182 finalizada_Pausada Data/Hora: 2018-10-14 18:25:12','2018-10-14 18:25:12','P'),(332,'Usuário 51 iniciou partida de código 183.','2018-10-14 18:25:25','P'),(333,'Usuário 51 iniciou partida de código 184.','2018-10-14 18:25:27','P'),(334,'Usuário 51 iniciou partida de código 185.','2018-10-14 18:25:32','P'),(335,'Usuário 51 iniciou partida de código 186.','2018-10-14 18:25:37','P'),(336,'Partida 186 finalizada_Pausada Data/Hora: 2018-10-14 18:25:40','2018-10-14 18:25:40','P'),(337,'Partida 186 finalizada_Pausada Data/Hora: 2018-10-14 18:26:08','2018-10-14 18:26:09','P'),(338,'Usuário 51 iniciou partida de código 187.','2018-10-14 18:29:09','P'),(339,'Usuário 51 iniciou partida de código 188.','2018-10-14 18:29:12','P'),(340,'Usuário 51 iniciou partida de código 189.','2018-10-14 18:29:16','P'),(341,'Partida 189 finalizada_Pausada Data/Hora: 2018-10-14 18:29:17','2018-10-14 18:29:17','P'),(342,'Partida 189 finalizada_Pausada Data/Hora: 2018-10-14 18:29:27','2018-10-14 18:29:27','P'),(343,'Usuário 51 iniciou partida de código 190.','2018-10-14 18:29:40','P'),(344,'Usuário 51 iniciou partida de código 191.','2018-10-14 18:29:49','P'),(345,'Usuário 51 iniciou partida de código 192.','2018-10-14 18:29:57','P'),(346,'Partida 192 finalizada_Pausada Data/Hora: 2018-10-14 18:29:58','2018-10-14 18:29:58','P'),(347,'Partida 192 finalizada_Pausada Data/Hora: 2018-10-14 18:30:08','2018-10-14 18:30:08','P'),(348,'Usuário 51 iniciou partida de código 193.','2018-10-14 18:30:18','P'),(349,'Usuário 51 iniciou partida de código 194.','2018-10-14 18:30:21','P'),(350,'Usuário 51 iniciou partida de código 195.','2018-10-14 18:30:26','P'),(351,'Usuário 51 iniciou partida de código 196.','2018-10-14 18:30:30','P'),(352,'Partida 196 finalizada_Pausada Data/Hora: 2018-10-14 18:30:38','2018-10-14 18:30:38','P'),(353,'Usuário 51 iniciou partida de código 197.','2018-10-14 18:30:42','P'),(354,'Partida 197 finalizada_Pausada Data/Hora: 2018-10-14 18:30:48','2018-10-14 18:30:48','P'),(355,'Usuário 51 iniciou partida de código 198.','2018-10-14 18:30:53','P'),(356,'Usuário 51 iniciou partida de código 199.','2018-10-14 18:31:04','P'),(357,'Partida 199 finalizada_Pausada Data/Hora: 2018-10-14 18:31:08','2018-10-14 18:31:08','P'),(358,'Usuário 51 iniciou partida de código 200.','2018-10-14 18:31:15','P'),(359,'Partida 200 finalizada_Pausada Data/Hora: 2018-10-14 18:31:18','2018-10-14 18:31:18','P'),(360,'Partida 200 finalizada_Pausada Data/Hora: 2018-10-14 18:31:26','2018-10-14 18:31:26','P'),(361,'Usuário 51 iniciou partida de código 201.','2018-10-14 18:31:35','P'),(362,'Usuário 51 iniciou partida de código 202.','2018-10-14 18:31:38','P'),(363,'Usuário 51 iniciou partida de código 203.','2018-10-14 18:31:43','P'),(364,'Usuário 51 iniciou partida de código 204.','2018-10-14 18:31:48','P'),(365,'Partida 204 finalizada_Pausada Data/Hora: 2018-10-14 18:31:49','2018-10-14 18:31:49','P'),(366,'Partida 204 finalizada_Pausada Data/Hora: 2018-10-14 18:31:54','2018-10-14 18:31:54','P'),(367,'Partida 32 deleteda!','2018-10-14 18:32:12','D'),(368,'Partida 33 deleteda!','2018-10-14 18:32:12','D'),(369,'Partida 34 deleteda!','2018-10-14 18:32:12','D'),(370,'Partida 35 deleteda!','2018-10-14 18:32:12','D'),(371,'Partida 36 deleteda!','2018-10-14 18:32:12','D'),(372,'Partida 37 deleteda!','2018-10-14 18:32:13','D'),(373,'Partida 38 deleteda!','2018-10-14 18:32:13','D'),(374,'Partida 39 deleteda!','2018-10-14 18:32:13','D'),(375,'Partida 40 deleteda!','2018-10-14 18:32:13','D'),(376,'Usuário 51 iniciou partida de código 205.','2018-10-14 18:50:52','P'),(377,'Usuário 51 iniciou partida de código 206.','2018-10-14 18:50:54','P'),(378,'Partida 206 finalizada_Pausada Data/Hora: 2018-10-14 18:50:55','2018-10-14 18:50:56','P'),(379,'Usuário 51 iniciou partida de código 207.','2018-10-14 18:51:01','P'),(380,'Usuário 51 iniciou partida de código 208.','2018-10-14 18:51:07','P'),(381,'Partida 208 finalizada_Pausada Data/Hora: 2018-10-14 18:51:07','2018-10-14 18:51:07','P'),(382,'Partida 208 finalizada_Pausada Data/Hora: 2018-10-14 18:51:16','2018-10-14 18:51:16','P'),(383,'Usuário 51 iniciou partida de código 209.','2018-10-14 18:51:58','P'),(384,'Usuário 51 iniciou partida de código 210.','2018-10-14 18:52:00','P'),(385,'Usuário 51 iniciou partida de código 211.','2018-10-14 18:52:04','P'),(386,'Partida 211 finalizada_Pausada Data/Hora: 2018-10-14 18:52:05','2018-10-14 18:52:05','P'),(387,'Usuário 51 iniciou partida de código 212.','2018-10-14 18:52:14','P'),(388,'Usuário 51 iniciou partida de código 213.','2018-10-14 18:52:22','P'),(389,'Partida 213 finalizada_Pausada Data/Hora: 2018-10-14 18:52:24','2018-10-14 18:52:24','P'),(390,'Partida 213 finalizada_Pausada Data/Hora: 2018-10-14 18:52:34','2018-10-14 18:52:34','P'),(391,'Usuário 51 iniciou partida de código 214.','2018-10-14 18:53:11','P'),(392,'Usuário 51 iniciou partida de código 215.','2018-10-14 18:53:15','P'),(393,'Usuário 51 iniciou partida de código 216.','2018-10-14 18:53:17','P'),(394,'Usuário 51 iniciou partida de código 217.','2018-10-14 18:53:21','P'),(395,'Partida 217 finalizada_Pausada Data/Hora: 2018-10-14 18:53:22','2018-10-14 18:53:22','P'),(396,'Usuário 51 iniciou partida de código 218.','2018-10-14 18:53:29','P'),(397,'Usuário 51 iniciou partida de código 219.','2018-10-14 18:53:37','P'),(398,'Partida 219 finalizada_Pausada Data/Hora: 2018-10-14 18:53:43','2018-10-14 18:53:43','P'),(399,'Usuário 51 iniciou partida de código 220.','2018-10-14 18:54:18','P'),(400,'Partida 220 finalizada_Pausada Data/Hora: 2018-10-14 18:54:20','2018-10-14 18:54:20','P'),(401,'Partida 220 finalizada_Pausada Data/Hora: 2018-10-14 18:54:25','2018-10-14 18:54:25','P'),(402,'Partida 220 finalizada_Pausada Data/Hora: 2018-10-14 18:54:27','2018-10-14 18:54:27','P'),(403,'Usuário 51 iniciou partida de código 221.','2018-10-14 18:54:32','P'),(404,'Partida 221 finalizada_Pausada Data/Hora: 2018-10-14 18:54:33','2018-10-14 18:54:33','P'),(405,'Usuário 51 iniciou partida de código 222.','2018-10-14 18:54:39','P'),(406,'Usuário 51 iniciou partida de código 223.','2018-10-14 18:54:41','P'),(407,'Partida 223 finalizada_Pausada Data/Hora: 2018-10-14 18:54:42','2018-10-14 18:54:42','P'),(408,'Partida 223 finalizada_Pausada Data/Hora: 2018-10-14 18:54:45','2018-10-14 18:54:45','P'),(409,'Usuário 51 iniciou partida de código 224.','2018-10-14 18:54:48','P'),(410,'Usuário 51 iniciou partida de código 225.','2018-10-14 18:54:50','P'),(411,'Usuário 51 iniciou partida de código 226.','2018-10-14 18:54:55','P'),(412,'Usuário 51 iniciou partida de código 227.','2018-10-14 18:55:01','P'),(413,'Partida 227 finalizada_Pausada Data/Hora: 2018-10-14 18:55:07','2018-10-14 18:55:07','P'),(414,'Partida 227 finalizada_Pausada Data/Hora: 2018-10-14 18:55:09','2018-10-14 18:55:09','P'),(415,'Usuário 51 iniciou partida de código 228.','2018-10-14 18:55:36','P'),(416,'Usuário 51 iniciou partida de código 229.','2018-10-14 18:55:38','P'),(417,'Usuário 51 iniciou partida de código 230.','2018-10-14 18:55:42','P'),(418,'Partida 230 finalizada_Pausada Data/Hora: 2018-10-14 18:55:44','2018-10-14 18:55:44','P'),(419,'Usuário 51 iniciou partida de código 231.','2018-10-14 18:55:51','P'),(420,'Usuário 51 iniciou partida de código 232.','2018-10-14 18:55:57','P'),(421,'Partida 232 finalizada_Pausada Data/Hora: 2018-10-14 18:55:58','2018-10-14 18:55:58','P'),(422,'Usuário 51 iniciou partida de código 233.','2018-10-14 18:56:06','P'),(423,'Usuário 51 iniciou partida de código 234.','2018-10-14 18:56:24','P'),(424,'Usuário 51 iniciou partida de código 235.','2018-10-14 18:56:27','P'),(425,'Partida 235 finalizada_Pausada Data/Hora: 2018-10-14 18:56:30','2018-10-14 18:56:30','P'),(426,'Partida 235 finalizada_Pausada Data/Hora: 2018-10-14 18:56:34','2018-10-14 18:56:34','P'),(427,'Usuário 51 iniciou partida de código 236.','2018-10-14 18:56:38','P'),(428,'Usuário 51 iniciou partida de código 237.','2018-10-14 18:56:44','P'),(429,'Partida 237 finalizada_Pausada Data/Hora: 2018-10-14 18:56:50','2018-10-14 18:56:50','P'),(430,'Usuário 51 iniciou partida de código 238.','2018-10-14 18:56:58','P'),(431,'Usuário 51 iniciou partida de código 239.','2018-10-14 18:58:27','P'),(432,'Usuário 51 iniciou partida de código 240.','2018-10-14 18:58:30','P'),(433,'Partida 240 finalizada_Pausada Data/Hora: 2018-10-14 18:58:30','2018-10-14 18:58:30','P'),(434,'Usuário 51 iniciou partida de código 241.','2018-10-14 18:58:36','P'),(435,'Usuário 51 iniciou partida de código 242.','2018-10-14 18:58:41','P'),(436,'Partida 242 finalizada_Pausada Data/Hora: 2018-10-14 18:58:42','2018-10-14 18:58:42','P'),(437,'Usuário 51 iniciou partida de código 243.','2018-10-14 18:58:56','P'),(438,'Usuário 51 iniciou partida de código 244.','2018-10-14 18:59:04','P'),(439,'Partida 244 finalizada_Pausada Data/Hora: 2018-10-14 18:59:05','2018-10-14 18:59:05','P'),(440,'Partida 244 finalizada_Pausada Data/Hora: 2018-10-14 18:59:13','2018-10-14 18:59:13','P'),(441,'Usuário 51 iniciou partida de código 245.','2018-10-14 18:59:16','P'),(442,'Usuário 51 iniciou partida de código 246.','2018-10-14 18:59:19','P'),(443,'Partida 246 finalizada_Pausada Data/Hora: 2018-10-14 18:59:22','2018-10-14 18:59:22','P'),(444,'Usuário 51 iniciou partida de código 247.','2018-10-14 18:59:25','P'),(445,'Usuário 51 iniciou partida de código 248.','2018-10-14 18:59:27','P'),(446,'Usuário 51 iniciou partida de código 249.','2018-10-14 18:59:32','P'),(447,'Usuário 51 iniciou partida de código 250.','2018-10-14 18:59:36','P'),(448,'Usuário 51 iniciou partida de código 251.','2018-10-14 18:59:38','P'),(449,'Partida 251 finalizada_Pausada Data/Hora: 2018-10-14 18:59:42','2018-10-14 18:59:42','P'),(450,'Usuário 51 iniciou partida de código 252.','2018-10-14 18:59:44','P'),(451,'Usuário 51 iniciou partida de código 253.','2018-10-14 18:59:47','P'),(452,'Usuário 51 iniciou partida de código 254.','2018-10-14 18:59:52','P'),(453,'Usuário 51 iniciou partida de código 255.','2018-10-14 18:59:58','P'),(454,'Partida 255 finalizada_Pausada Data/Hora: 2018-10-14 19:00:03','2018-10-14 19:00:04','P'),(455,'Usuário 51 iniciou partida de código 256.','2018-10-14 19:00:06','P'),(456,'Usuário 51 iniciou partida de código 257.','2018-10-14 19:00:08','P'),(457,'Partida 257 finalizada_Pausada Data/Hora: 2018-10-14 19:00:09','2018-10-14 19:00:09','P'),(458,'Partida 257 finalizada_Pausada Data/Hora: 2018-10-14 19:00:15','2018-10-14 19:00:15','P'),(459,'Partida 257 Reiniciada.','2018-10-14 19:03:59','P'),(460,'Usuário 51 iniciou partida de código 258.','2018-10-14 19:06:08','P'),(461,'Usuário 51 iniciou partida de código 259.','2018-10-14 19:06:10','P'),(462,'Usuário 51 iniciou partida de código 260.','2018-10-14 19:06:14','P'),(463,'Usuário 51 iniciou partida de código 261.','2018-10-14 19:06:18','P'),(464,'Usuário 51 iniciou partida de código 262.','2018-10-14 19:12:38','P'),(465,'Usuário 51 iniciou partida de código 263.','2018-10-14 19:12:47','P'),(466,'Usuário 51 iniciou partida de código 264.','2018-10-14 19:12:50','P'),(467,'Partida 264 finalizada_Pausada Data/Hora: 2018-10-14 19:12:52','2018-10-14 19:12:52','P'),(468,'Partida 264 finalizada_Pausada Data/Hora: 2018-10-14 19:12:56','2018-10-14 19:12:56','P'),(469,'Usuário 51 iniciou partida de código 265.','2018-10-14 19:14:35','P'),(470,'Usuário 51 iniciou partida de código 266.','2018-10-14 19:14:37','P'),(471,'Usuário 51 iniciou partida de código 267.','2018-10-14 19:14:53','P'),(472,'Usuário 51 iniciou partida de código 268.','2018-10-14 19:15:02','P'),(473,'Usuário 51 iniciou partida de código 269.','2018-10-14 19:15:04','P'),(474,'Usuário 51 iniciou partida de código 270.','2018-10-14 19:15:07','P'),(475,'Usuário 51 iniciou partida de código 271.','2018-10-14 19:16:09','P'),(476,'Usuário 51 iniciou partida de código 272.','2018-10-14 19:16:41','P'),(477,'Partida 272 finalizada_Pausada Data/Hora: 2018-10-14 19:17:24','2018-10-14 19:17:24','P'),(478,'Usuário 51 iniciou partida de código 273.','2018-10-14 19:17:28','P'),(479,'Usuário 51 iniciou partida de código 274.','2018-10-14 19:17:34','P'),(480,'Usuário 51 iniciou partida de código 275.','2018-10-14 19:18:39','P'),(481,'Usuário 51 iniciou partida de código 276.','2018-10-14 19:20:06','P'),(482,'Usuário 51 iniciou partida de código 277.','2018-10-14 19:20:09','P'),(483,'Usuário 51 iniciou partida de código 278.','2018-10-14 19:22:07','P'),(484,'Usuário 51 iniciou partida de código 279.','2018-10-14 19:22:11','P'),(485,'Usuário 51 iniciou partida de código 280.','2018-10-14 19:22:14','P'),(486,'Usuário 51 iniciou partida de código 281.','2018-10-14 19:22:28','P'),(487,'Usuário 51 iniciou partida de código 282.','2018-10-14 19:23:54','P'),(488,'Partida 282 finalizada_Pausada Data/Hora: 2018-10-14 19:24:03','2018-10-14 19:24:03','P'),(489,'Partida 282 finalizada_Pausada Data/Hora: 2018-10-14 19:24:12','2018-10-14 19:24:12','P'),(490,'Partida 282 finalizada_Pausada Data/Hora: 2018-10-14 19:24:31','2018-10-14 19:24:31','P'),(491,'Usuário 51 iniciou partida de código 283.','2018-10-14 19:24:56','P'),(492,'Partida 283 finalizada_Pausada Data/Hora: 2018-10-14 19:24:57','2018-10-14 19:24:57','P'),(493,'Usuário 51 iniciou partida de código 284.','2018-10-14 19:25:00','P'),(494,'Usuário 51 iniciou partida de código 285.','2018-10-14 19:25:05','P'),(495,'Partida 285 finalizada_Pausada Data/Hora: 2018-10-14 19:25:05','2018-10-14 19:25:05','P'),(496,'Partida 285 finalizada_Pausada Data/Hora: 2018-10-14 19:25:10','2018-10-14 19:25:10','P'),(497,'Usuário 51 iniciou partida de código 286.','2018-10-14 19:25:13','P'),(498,'Usuário 51 iniciou partida de código 287.','2018-10-14 19:25:16','P'),(499,'Usuário 51 iniciou partida de código 288.','2018-10-14 19:25:20','P'),(500,'Usuário 51 iniciou partida de código 289.','2018-10-14 19:25:25','P'),(501,'Partida 289 finalizada_Pausada Data/Hora: 2018-10-14 19:25:49','2018-10-14 19:25:49','P'),(502,'Partida 289 finalizada_Pausada Data/Hora: 2018-10-14 19:25:54','2018-10-14 19:25:54','P'),(503,'Usuário 51 iniciou partida de código 290.','2018-10-14 19:26:04','P'),(504,'Usuário 51 iniciou partida de código 291.','2018-10-14 19:26:06','P'),(505,'Partida 291 finalizada_Pausada Data/Hora: 2018-10-14 19:26:21','2018-10-14 19:26:21','P'),(506,'Usuário 51 iniciou partida de código 292.','2018-10-14 19:26:49','P'),(507,'Usuário 51 iniciou partida de código 293.','2018-10-14 19:26:53','P'),(508,'Partida 293 finalizada_Pausada Data/Hora: 2018-10-14 19:26:57','2018-10-14 19:26:57','P'),(509,'Usuário 51 iniciou partida de código 294.','2018-10-14 19:27:53','P'),(510,'Partida 294 finalizada_Pausada Data/Hora: 2018-10-14 19:27:57','2018-10-14 19:27:57','P'),(511,'Usuário 51 iniciou partida de código 295.','2018-10-14 19:27:58','P'),(512,'Usuário 51 iniciou partida de código 296.','2018-10-14 19:28:04','P'),(513,'Partida 296 finalizada_Pausada Data/Hora: 2018-10-14 19:28:19','2018-10-14 19:28:19','P'),(514,'Usuário 51 iniciou partida de código 297.','2018-10-14 19:29:00','P'),(515,'Usuário 51 iniciou partida de código 298.','2018-10-14 19:29:04','P'),(516,'Usuário 51 iniciou partida de código 299.','2018-10-14 19:29:16','P'),(517,'Usuário 51 iniciou partida de código 300.','2018-10-14 19:29:19','P'),(518,'Usuário 51 iniciou partida de código 301.','2018-10-14 19:29:23','P'),(519,'Partida 301 finalizada_Pausada Data/Hora: 2018-10-14 19:29:24','2018-10-14 19:29:24','P'),(520,'Partida 301 finalizada_Pausada Data/Hora: 2018-10-14 19:29:27','2018-10-14 19:29:27','P'),(521,'Usuário 51 iniciou partida de código 302.','2018-10-14 19:29:28','P'),(522,'Usuário 51 iniciou partida de código 303.','2018-10-14 19:29:36','P'),(523,'Usuário 51 iniciou partida de código 304.','2018-10-14 19:29:39','P'),(524,'Usuário 51 iniciou partida de código 305.','2018-10-14 19:29:43','P'),(525,'Usuário 51 iniciou partida de código 306.','2018-10-14 19:29:48','P'),(526,'Partida 306 finalizada_Pausada Data/Hora: 2018-10-14 19:29:49','2018-10-14 19:29:49','P'),(527,'Usuário 51 iniciou partida de código 307.','2018-10-14 19:29:56','P'),(528,'Usuário 51 iniciou partida de código 308.','2018-10-14 19:30:04','P'),(529,'Partida 308 finalizada_Pausada Data/Hora: 2018-10-14 19:30:09','2018-10-14 19:30:09','P'),(530,'Usuário 51 iniciou partida de código 309.','2018-10-14 19:30:16','P'),(531,'Partida 309 finalizada_Pausada Data/Hora: 2018-10-14 19:30:26','2018-10-14 19:30:26','P'),(532,'Usuário 51 iniciou partida de código 310.','2018-10-14 19:33:14','P'),(533,'Usuário 51 iniciou partida de código 311.','2018-10-14 19:33:16','P'),(534,'Usuário 51 iniciou partida de código 312.','2018-10-14 19:33:20','P'),(535,'Usuário 51 iniciou partida de código 313.','2018-10-14 19:33:25','P'),(536,'Partida 313 finalizada_Pausada Data/Hora: 2018-10-14 19:33:26','2018-10-14 19:33:26','P'),(537,'Usuário 51 iniciou partida de código 314.','2018-10-14 19:33:33','P'),(538,'Partida 314 finalizada_Pausada Data/Hora: 2018-10-14 19:33:37','2018-10-14 19:33:37','P'),(539,'Usuário 51 iniciou partida de código 315.','2018-10-14 19:33:46','P'),(540,'Partida 315 finalizada_Pausada Data/Hora: 2018-10-14 19:33:49','2018-10-14 19:33:49','P'),(541,'Partida 315 finalizada_Pausada Data/Hora: 2018-10-14 19:33:56','2018-10-14 19:33:56','P'),(542,'Usuário 51 iniciou partida de código 316.','2018-10-14 19:33:58','P'),(543,'Usuário 51 iniciou partida de código 317.','2018-10-14 19:34:01','P'),(544,'Usuário 51 iniciou partida de código 318.','2018-10-14 19:34:05','P'),(545,'Usuário 51 iniciou partida de código 319.','2018-10-14 19:34:12','P'),(546,'Partida 319 finalizada_Pausada Data/Hora: 2018-10-14 19:34:13','2018-10-14 19:34:13','P'),(547,'Usuário 51 iniciou partida de código 320.','2018-10-14 19:34:21','P'),(548,'Partida 320 finalizada_Pausada Data/Hora: 2018-10-14 19:34:26','2018-10-14 19:34:26','P'),(549,'Usuário 51 iniciou partida de código 321.','2018-10-14 19:34:34','P'),(550,'Partida 321 finalizada_Pausada Data/Hora: 2018-10-14 19:34:46','2018-10-14 19:34:47','P'),(551,'Usuário 51 iniciou partida de código 322.','2018-10-14 19:35:20','P'),(552,'Usuário 51 iniciou partida de código 323.','2018-10-14 19:35:23','P'),(553,'Usuário 51 iniciou partida de código 324.','2018-10-14 19:35:26','P'),(554,'Partida 324 finalizada_Pausada Data/Hora: 2018-10-14 19:35:35','2018-10-14 19:35:35','P'),(555,'Usuário 51 iniciou partida de código 325.','2018-10-14 19:36:04','P'),(556,'Usuário 51 iniciou partida de código 326.','2018-10-14 19:36:06','P'),(557,'Usuário 51 iniciou partida de código 327.','2018-10-14 19:36:09','P'),(558,'Partida 327 finalizada_Pausada Data/Hora: 2018-10-14 19:36:11','2018-10-14 19:36:11','P'),(559,'Usuário 51 iniciou partida de código 328.','2018-10-14 19:37:23','P'),(560,'Usuário 51 iniciou partida de código 329.','2018-10-14 19:37:26','P'),(561,'Usuário 51 iniciou partida de código 330.','2018-10-14 19:37:28','P'),(562,'Usuário 51 iniciou partida de código 331.','2018-10-14 19:38:36','P'),(563,'Usuário 51 iniciou partida de código 332.','2018-10-14 19:38:53','P'),(564,'Usuário 51 iniciou partida de código 333.','2018-10-14 19:38:59','P'),(565,'Partida 333 finalizada_Pausada Data/Hora: 2018-10-14 19:39:04','2018-10-14 19:39:04','P'),(566,'Usuário 51 iniciou partida de código 334.','2018-10-14 19:39:05','P'),(567,'Usuário 51 iniciou partida de código 335.','2018-10-14 19:39:08','P'),(568,'Usuário 51 iniciou partida de código 336.','2018-10-14 19:39:13','P'),(569,'Usuário 51 iniciou partida de código 337.','2018-10-14 19:39:18','P'),(570,'Partida 337 finalizada_Pausada Data/Hora: 2018-10-14 19:39:21','2018-10-14 19:39:21','P'),(571,'Usuário 51 iniciou partida de código 338.','2018-10-14 19:39:45','P'),(572,'Usuário 51 iniciou partida de código 339.','2018-10-14 19:39:54','P'),(573,'Usuário 51 iniciou partida de código 340.','2018-10-14 19:39:58','P'),(574,'Partida 340 finalizada_Pausada Data/Hora: 2018-10-14 19:40:01','2018-10-14 19:40:01','P'),(575,'Usuário 51 iniciou partida de código 341.','2018-10-14 19:40:06','P'),(576,'Usuário 51 iniciou partida de código 342.','2018-10-14 19:40:50','P'),(577,'Usuário 51 iniciou partida de código 343.','2018-10-14 19:40:53','P'),(578,'Usuário 51 iniciou partida de código 344.','2018-10-14 19:40:57','P'),(579,'Usuário 51 iniciou partida de código 345.','2018-10-14 19:41:02','P'),(580,'Usuário 51 iniciou partida de código 346.','2018-10-14 19:42:52','P'),(581,'Usuário 51 iniciou partida de código 347.','2018-10-14 19:42:54','P'),(582,'Usuário 51 iniciou partida de código 348.','2018-10-14 19:43:09','P'),(583,'Usuário 51 iniciou partida de código 349.','2018-10-14 19:43:11','P'),(584,'Usuário 51 iniciou partida de código 350.','2018-10-14 19:43:34','P'),(585,'Usuário 51 iniciou partida de código 351.','2018-10-14 19:43:44','P'),(586,'Usuário 51 iniciou partida de código 352.','2018-10-14 19:45:10','P'),(587,'Usuário 51 iniciou partida de código 353.','2018-10-14 19:46:18','P'),(588,'Usuário 51 iniciou partida de código 354.','2018-10-14 19:46:20','P'),(589,'Usuário 51 iniciou partida de código 355.','2018-10-14 19:46:57','P'),(590,'Usuário 51 iniciou partida de código 356.','2018-10-14 19:46:59','P'),(591,'Usuário 51 iniciou partida de código 357.','2018-10-14 19:47:03','P'),(592,'Usuário 51 iniciou partida de código 358.','2018-10-14 19:51:27','P'),(593,'Partida 358 finalizada_Pausada Data/Hora: 2018-10-14 19:51:49','2018-10-14 19:51:49','P'),(594,'Usuário 51 iniciou partida de código 359.','2018-10-14 19:52:02','P'),(595,'Usuário 51 iniciou partida de código 360.','2018-10-14 19:52:05','P'),(596,'Usuário 51 iniciou partida de código 361.','2018-10-14 19:52:10','P'),(597,'Partida 361 finalizada_Pausada Data/Hora: 2018-10-14 19:52:12','2018-10-14 19:52:12','P'),(598,'Partida 361 Reiniciada.','2018-10-14 19:54:37','P'),(599,'Usuário 51 iniciou partida de código 362.','2018-10-14 19:54:44','P'),(600,'Partida 362 finalizada_Pausada Data/Hora: 2018-10-14 19:54:51','2018-10-14 19:54:51','P'),(601,'Usuário 51 iniciou partida de código 363.','2018-10-14 19:54:53','P'),(602,'Usuário 51 iniciou partida de código 364.','2018-10-14 19:54:59','P'),(603,'Partida 364 Reiniciada.','2018-10-14 19:55:03','P'),(604,'Usuário 51 iniciou partida de código 365.','2018-10-14 19:56:32','P'),(605,'Usuário 51 iniciou partida de código 366.','2018-10-14 19:56:34','P'),(606,'Partida 366 Reiniciada.','2018-10-14 19:56:41','P'),(607,'Usuário 51 iniciou partida de código 367.','2018-10-14 19:57:54','P'),(608,'Usuário 51 iniciou partida de código 368.','2018-10-14 19:57:56','P'),(609,'Partida 368 finalizada_Pausada Data/Hora: 2018-10-14 19:57:56','2018-10-14 19:57:56','P'),(610,'Partida 368 finalizada_Pausada Data/Hora: 2018-10-14 19:58:02','2018-10-14 19:58:02','P'),(611,'Partida 368 Reiniciada.','2018-10-14 19:58:03','P');
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
) ENGINE=InnoDB AUTO_INCREMENT=369 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `partida`
--

LOCK TABLES `partida` WRITE;
/*!40000 ALTER TABLE `partida` DISABLE KEYS */;
INSERT INTO `partida` VALUES (24,51,'2018-09-30 23:40:56',1000,'2018-09-30 23:41:07'),(25,51,'2018-09-30 23:41:22',1500,'2018-09-30 23:41:40'),(26,51,'2018-09-30 23:41:49',120,'2018-09-30 23:42:00'),(27,52,'2018-09-30 23:43:06',100,'2018-09-30 23:43:14'),(28,53,'2018-09-30 23:43:30',1000,'2018-09-30 23:43:38'),(29,54,'2018-09-30 23:44:18',555,'2018-09-30 23:44:58'),(30,55,'2018-09-30 23:45:16',2223,'2018-09-30 23:45:26'),(45,51,'2018-10-12 18:40:15',0,NULL),(47,51,'2018-10-12 18:43:39',0,NULL),(48,51,'2018-10-12 18:44:06',0,NULL),(49,51,'2018-10-12 22:11:11',0,NULL),(50,51,'2018-10-12 22:11:54',0,NULL),(51,51,'2018-10-12 22:12:10',0,NULL),(52,51,'2018-10-12 22:12:55',0,NULL),(53,51,'2018-10-12 22:14:38',0,NULL),(54,51,'2018-10-12 22:15:27',0,NULL),(55,51,'2018-10-12 22:37:40',0,NULL),(56,51,'2018-10-12 22:37:42',0,NULL),(57,51,'2018-10-12 22:40:32',0,NULL),(58,51,'2018-10-12 22:40:35',0,NULL),(59,51,'2018-10-12 22:40:39',0,'2018-10-12 22:40:43'),(60,51,'2018-10-12 22:41:46',0,NULL),(61,51,'2018-10-12 22:41:48',0,NULL),(62,51,'2018-10-12 22:41:52',0,NULL),(63,51,'2018-10-12 22:41:57',210,'2018-10-12 22:42:26'),(64,51,'2018-10-12 22:42:28',0,NULL),(65,51,'2018-10-13 12:08:38',0,NULL),(66,51,'2018-10-13 12:08:40',0,NULL),(67,51,'2018-10-13 12:09:07',0,NULL),(68,51,'2018-10-13 12:09:10',0,NULL),(69,51,'2018-10-13 12:09:13',0,NULL),(70,51,'2018-10-13 12:09:19',0,NULL),(71,51,'2018-10-13 12:09:36',0,NULL),(72,51,'2018-10-13 12:09:39',0,NULL),(73,51,'2018-10-13 12:09:43',0,NULL),(74,51,'2018-10-13 12:10:04',0,NULL),(75,51,'2018-10-13 12:10:07',0,NULL),(76,51,'2018-10-13 12:10:11',105,'2018-10-13 12:10:15'),(77,51,'2018-10-13 16:19:09',0,NULL),(78,51,'2018-10-13 16:19:10',0,NULL),(79,51,'2018-10-13 16:19:11',0,NULL),(80,51,'2018-10-13 16:19:11',0,NULL),(81,51,'2018-10-13 16:19:12',0,NULL),(82,51,'2018-10-13 16:20:02',0,NULL),(83,51,'2018-10-13 16:20:05',0,NULL),(84,51,'2018-10-13 16:20:09',0,NULL),(85,51,'2018-10-13 17:04:32',100,'2018-10-13 17:04:34'),(86,51,'2018-10-13 17:04:35',0,NULL),(87,51,'2018-10-13 17:06:40',0,NULL),(88,51,'2018-10-13 17:58:00',100,'2018-10-13 17:58:04'),(89,51,'2018-10-13 17:58:04',100,'2018-10-13 17:58:06'),(90,51,'2018-10-13 17:59:46',50,'2018-10-13 17:59:47'),(91,51,'2018-10-13 18:00:04',0,NULL),(92,51,'2018-10-13 18:00:06',0,NULL),(93,51,'2018-10-13 18:00:10',0,NULL),(94,51,'2018-10-13 18:00:16',205,'2018-10-13 18:00:19'),(95,51,'2018-10-13 18:00:20',0,NULL),(96,51,'2018-10-13 18:00:23',0,NULL),(97,51,'2018-10-13 18:01:04',0,NULL),(98,51,'2018-10-13 18:01:06',0,NULL),(99,51,'2018-10-13 18:01:38',0,NULL),(100,51,'2018-10-13 18:01:40',0,NULL),(101,51,'2018-10-13 18:02:19',0,NULL),(102,51,'2018-10-13 18:02:21',105,'2018-10-13 18:02:23'),(103,51,'2018-10-13 18:02:33',0,NULL),(104,51,'2018-10-13 18:02:36',0,NULL),(105,51,'2018-10-13 18:02:40',0,NULL),(106,51,'2018-10-13 18:02:45',210,'2018-10-13 18:02:49'),(107,51,'2018-10-13 18:02:57',0,NULL),(108,51,'2018-10-13 18:03:00',0,NULL),(109,51,'2018-10-13 18:03:04',0,NULL),(110,51,'2018-10-13 18:03:12',0,NULL),(111,51,'2018-10-13 18:05:28',0,NULL),(112,51,'2018-10-13 18:05:31',0,NULL),(113,51,'2018-10-13 18:05:35',155,'2018-10-13 18:05:37'),(114,51,'2018-10-13 18:05:41',0,NULL),(115,51,'2018-10-13 18:05:43',0,NULL),(116,51,'2018-10-13 18:07:55',0,NULL),(117,51,'2018-10-13 18:07:57',0,NULL),(118,51,'2018-10-13 18:08:01',0,NULL),(119,51,'2018-10-13 18:08:04',0,NULL),(120,51,'2018-10-13 18:08:29',0,NULL),(121,51,'2018-10-13 18:08:31',0,NULL),(122,51,'2018-10-13 18:08:35',105,'2018-10-13 18:08:37'),(123,51,'2018-10-13 18:08:39',0,NULL),(124,51,'2018-10-13 18:08:41',0,NULL),(125,51,'2018-10-13 18:09:22',0,NULL),(126,51,'2018-10-13 18:09:25',0,NULL),(127,51,'2018-10-13 18:09:28',105,'2018-10-13 18:09:31'),(128,51,'2018-10-13 18:09:32',0,NULL),(129,51,'2018-10-13 18:09:35',0,NULL),(130,51,'2018-10-13 18:09:39',100,'2018-10-13 18:09:44'),(131,51,'2018-10-13 18:12:36',0,NULL),(132,51,'2018-10-13 18:12:40',0,NULL),(133,51,'2018-10-13 18:12:42',0,NULL),(134,51,'2018-10-13 18:14:50',0,NULL),(135,51,'2018-10-13 18:14:53',0,NULL),(136,51,'2018-10-13 18:14:55',0,NULL),(137,51,'2018-10-13 18:14:58',0,NULL),(138,51,'2018-10-13 18:15:01',0,NULL),(139,51,'2018-10-13 18:15:06',0,NULL),(140,51,'2018-10-13 18:15:12',0,NULL),(141,51,'2018-10-13 18:15:19',0,NULL),(142,51,'2018-10-13 18:49:26',0,NULL),(143,51,'2018-10-14 12:51:30',0,NULL),(144,51,'2018-10-14 12:51:32',0,NULL),(145,51,'2018-10-14 12:51:36',105,'2018-10-14 12:52:05'),(146,51,'2018-10-14 12:53:02',0,'2018-10-14 12:53:07'),(147,51,'2018-10-14 12:56:04',0,'2018-10-14 12:56:11'),(148,51,'2018-10-14 17:22:53',0,NULL),(149,51,'2018-10-14 17:23:42',0,NULL),(150,51,'2018-10-14 17:23:44',0,NULL),(151,51,'2018-10-14 17:23:48',0,NULL),(152,51,'2018-10-14 17:30:12',0,NULL),(153,51,'2018-10-14 18:06:46',0,'2018-10-14 18:06:51'),(154,51,'2018-10-14 18:06:52',0,NULL),(155,51,'2018-10-14 18:06:55',0,NULL),(156,51,'2018-10-14 18:06:58',0,NULL),(157,51,'2018-10-14 18:07:03',155,'2018-10-14 18:07:09'),(158,51,'2018-10-14 18:08:27',0,NULL),(159,51,'2018-10-14 18:08:34',50,'2018-10-14 18:08:35'),(160,51,'2018-10-14 18:08:40',0,NULL),(161,51,'2018-10-14 18:08:42',55,'2018-10-14 18:08:42'),(162,51,'2018-10-14 18:11:21',0,NULL),(163,51,'2018-10-14 18:11:23',0,NULL),(164,51,'2018-10-14 18:11:27',0,NULL),(165,51,'2018-10-14 18:11:32',0,NULL),(166,51,'2018-10-14 18:11:38',215,'2018-10-14 18:11:41'),(167,51,'2018-10-14 18:13:01',0,NULL),(168,51,'2018-10-14 18:13:05',50,'2018-10-14 18:13:07'),(169,51,'2018-10-14 18:19:14',0,'2018-10-14 18:19:14'),(170,51,'2018-10-14 18:19:28',0,'2018-10-14 18:19:30'),(171,51,'2018-10-14 18:19:32',0,'2018-10-14 18:19:37'),(172,51,'2018-10-14 18:19:48',0,NULL),(173,51,'2018-10-14 18:19:51',0,NULL),(174,51,'2018-10-14 18:19:56',100,'2018-10-14 18:20:00'),(175,51,'2018-10-14 18:20:06',0,NULL),(176,51,'2018-10-14 18:20:12',155,'2018-10-14 18:20:16'),(177,51,'2018-10-14 18:21:02',0,NULL),(178,51,'2018-10-14 18:24:04',0,NULL),(179,51,'2018-10-14 18:24:08',0,NULL),(180,51,'2018-10-14 18:24:12',0,NULL),(181,51,'2018-10-14 18:24:18',150,'2018-10-14 18:24:19'),(182,51,'2018-10-14 18:25:07',0,'2018-10-14 18:25:12'),(183,51,'2018-10-14 18:25:25',0,NULL),(184,51,'2018-10-14 18:25:27',0,NULL),(185,51,'2018-10-14 18:25:32',0,NULL),(186,51,'2018-10-14 18:25:37',155,'2018-10-14 18:26:08'),(187,51,'2018-10-14 18:29:09',0,NULL),(188,51,'2018-10-14 18:29:12',0,NULL),(189,51,'2018-10-14 18:29:16',100,'2018-10-14 18:29:27'),(190,51,'2018-10-14 18:29:40',0,NULL),(191,51,'2018-10-14 18:29:49',0,NULL),(192,51,'2018-10-14 18:29:57',105,'2018-10-14 18:30:08'),(193,51,'2018-10-14 18:30:18',0,NULL),(194,51,'2018-10-14 18:30:21',0,NULL),(195,51,'2018-10-14 18:30:26',0,NULL),(196,51,'2018-10-14 18:30:30',160,'2018-10-14 18:30:38'),(197,51,'2018-10-14 18:30:42',215,'2018-10-14 18:30:48'),(198,51,'2018-10-14 18:30:53',0,NULL),(199,51,'2018-10-14 18:31:04',325,'2018-10-14 18:31:08'),(200,51,'2018-10-14 18:31:15',375,'2018-10-14 18:31:26'),(201,51,'2018-10-14 18:31:35',0,NULL),(202,51,'2018-10-14 18:31:38',0,NULL),(203,51,'2018-10-14 18:31:42',0,NULL),(204,51,'2018-10-14 18:31:48',150,'2018-10-14 18:31:54'),(205,51,'2018-10-14 18:50:52',0,NULL),(206,51,'2018-10-14 18:50:54',55,'2018-10-14 18:50:55'),(207,51,'2018-10-14 18:51:01',0,NULL),(208,51,'2018-10-14 18:51:07',155,'2018-10-14 18:51:16'),(209,51,'2018-10-14 18:51:58',0,NULL),(210,51,'2018-10-14 18:52:00',0,NULL),(211,51,'2018-10-14 18:52:04',100,'2018-10-14 18:52:05'),(212,51,'2018-10-14 18:52:14',0,NULL),(213,51,'2018-10-14 18:52:22',205,'2018-10-14 18:52:34'),(214,51,'2018-10-14 18:53:11',0,NULL),(215,51,'2018-10-14 18:53:15',0,NULL),(216,51,'2018-10-14 18:53:17',0,NULL),(217,51,'2018-10-14 18:53:21',105,'2018-10-14 18:53:22'),(218,51,'2018-10-14 18:53:29',0,NULL),(219,51,'2018-10-14 18:53:37',210,'2018-10-14 18:53:43'),(220,51,'2018-10-14 18:54:18',105,'2018-10-14 18:54:27'),(221,51,'2018-10-14 18:54:32',0,'2018-10-14 18:54:33'),(222,51,'2018-10-14 18:54:39',0,NULL),(223,51,'2018-10-14 18:54:41',0,'2018-10-14 18:54:45'),(224,51,'2018-10-14 18:54:47',0,NULL),(225,51,'2018-10-14 18:54:50',0,NULL),(226,51,'2018-10-14 18:54:55',0,NULL),(227,51,'2018-10-14 18:55:01',155,'2018-10-14 18:55:09'),(228,51,'2018-10-14 18:55:36',0,NULL),(229,51,'2018-10-14 18:55:38',0,NULL),(230,51,'2018-10-14 18:55:42',105,'2018-10-14 18:55:44'),(231,51,'2018-10-14 18:55:51',0,NULL),(232,51,'2018-10-14 18:55:57',210,'2018-10-14 18:55:58'),(233,51,'2018-10-14 18:56:05',0,NULL),(234,51,'2018-10-14 18:56:24',0,NULL),(235,51,'2018-10-14 18:56:27',100,'2018-10-14 18:56:34'),(236,51,'2018-10-14 18:56:38',0,NULL),(237,51,'2018-10-14 18:56:44',200,'2018-10-14 18:56:50'),(238,51,'2018-10-14 18:56:58',0,NULL),(239,51,'2018-10-14 18:58:27',0,NULL),(240,51,'2018-10-14 18:58:30',55,'2018-10-14 18:58:30'),(241,51,'2018-10-14 18:58:36',0,NULL),(242,51,'2018-10-14 18:58:41',160,'2018-10-14 18:58:42'),(243,51,'2018-10-14 18:58:56',0,NULL),(244,51,'2018-10-14 18:59:04',270,'2018-10-14 18:59:13'),(245,51,'2018-10-14 18:59:16',0,NULL),(246,51,'2018-10-14 18:59:19',55,'2018-10-14 18:59:22'),(247,51,'2018-10-14 18:59:25',0,NULL),(248,51,'2018-10-14 18:59:27',0,NULL),(249,51,'2018-10-14 18:59:32',0,NULL),(250,51,'2018-10-14 18:59:36',0,NULL),(251,51,'2018-10-14 18:59:38',55,'2018-10-14 18:59:42'),(252,51,'2018-10-14 18:59:44',0,NULL),(253,51,'2018-10-14 18:59:47',0,NULL),(254,51,'2018-10-14 18:59:52',0,NULL),(255,51,'2018-10-14 18:59:58',165,'2018-10-14 19:00:03'),(256,51,'2018-10-14 19:00:06',0,NULL),(257,51,'2018-10-14 19:03:59',0,NULL),(258,51,'2018-10-14 19:06:08',0,NULL),(259,51,'2018-10-14 19:06:10',0,NULL),(260,51,'2018-10-14 19:06:14',0,NULL),(261,51,'2018-10-14 19:06:18',0,NULL),(262,51,'2018-10-14 19:12:38',0,NULL),(263,51,'2018-10-14 19:12:47',0,NULL),(264,51,'2018-10-14 19:12:50',55,'2018-10-14 19:12:56'),(265,51,'2018-10-14 19:14:35',0,NULL),(266,51,'2018-10-14 19:14:37',0,NULL),(267,51,'2018-10-14 19:14:53',0,NULL),(268,51,'2018-10-14 19:15:02',0,NULL),(269,51,'2018-10-14 19:15:04',0,NULL),(270,51,'2018-10-14 19:15:07',0,NULL),(271,51,'2018-10-14 19:16:09',0,NULL),(272,51,'2018-10-14 19:16:41',0,'2018-10-14 19:17:24'),(273,51,'2018-10-14 19:17:28',0,NULL),(274,51,'2018-10-14 19:17:34',0,NULL),(275,51,'2018-10-14 19:18:39',0,NULL),(276,51,'2018-10-14 19:20:06',0,NULL),(277,51,'2018-10-14 19:20:09',0,NULL),(278,51,'2018-10-14 19:22:07',0,NULL),(279,51,'2018-10-14 19:22:11',0,NULL),(280,51,'2018-10-14 19:22:14',0,NULL),(281,51,'2018-10-14 19:22:28',0,NULL),(282,51,'2018-10-14 19:23:54',215,'2018-10-14 19:24:31'),(283,51,'2018-10-14 19:24:56',0,'2018-10-14 19:24:57'),(284,51,'2018-10-14 19:25:00',0,NULL),(285,51,'2018-10-14 19:25:04',110,'2018-10-14 19:25:10'),(286,51,'2018-10-14 19:25:13',0,NULL),(287,51,'2018-10-14 19:25:15',0,NULL),(288,51,'2018-10-14 19:25:20',0,NULL),(289,51,'2018-10-14 19:25:25',105,'2018-10-14 19:25:54'),(290,51,'2018-10-14 19:26:04',0,NULL),(291,51,'2018-10-14 19:26:06',165,'2018-10-14 19:26:21'),(292,51,'2018-10-14 19:26:49',0,NULL),(293,51,'2018-10-14 19:26:53',55,'2018-10-14 19:26:57'),(294,51,'2018-10-14 19:27:53',0,'2018-10-14 19:27:57'),(295,51,'2018-10-14 19:27:58',0,NULL),(296,51,'2018-10-14 19:28:04',50,'2018-10-14 19:28:19'),(297,51,'2018-10-14 19:29:00',0,NULL),(298,51,'2018-10-14 19:29:04',0,NULL),(299,51,'2018-10-14 19:29:16',0,NULL),(300,51,'2018-10-14 19:29:19',0,NULL),(301,51,'2018-10-14 19:29:23',105,'2018-10-14 19:29:27'),(302,51,'2018-10-14 19:29:28',0,NULL),(303,51,'2018-10-14 19:29:36',0,NULL),(304,51,'2018-10-14 19:29:39',0,NULL),(305,51,'2018-10-14 19:29:43',0,NULL),(306,51,'2018-10-14 19:29:48',160,'2018-10-14 19:29:49'),(307,51,'2018-10-14 19:29:56',0,NULL),(308,51,'2018-10-14 19:30:04',270,'2018-10-14 19:30:09'),(309,51,'2018-10-14 19:30:16',110,'2018-10-14 19:30:26'),(310,51,'2018-10-14 19:33:14',0,NULL),(311,51,'2018-10-14 19:33:16',0,NULL),(312,51,'2018-10-14 19:33:20',0,NULL),(313,51,'2018-10-14 19:33:25',160,'2018-10-14 19:33:26'),(314,51,'2018-10-14 19:33:33',210,'2018-10-14 19:33:37'),(315,51,'2018-10-14 19:33:46',260,'2018-10-14 19:33:56'),(316,51,'2018-10-14 19:33:58',0,NULL),(317,51,'2018-10-14 19:34:01',0,NULL),(318,51,'2018-10-14 19:34:05',0,NULL),(319,51,'2018-10-14 19:34:12',155,'2018-10-14 19:34:13'),(320,51,'2018-10-14 19:34:21',210,'2018-10-14 19:34:26'),(321,51,'2018-10-14 19:34:34',100,'2018-10-14 19:34:46'),(322,51,'2018-10-14 19:35:20',0,NULL),(323,51,'2018-10-14 19:35:23',0,NULL),(324,51,'2018-10-14 19:35:26',55,'2018-10-14 19:35:35'),(325,51,'2018-10-14 19:36:03',0,NULL),(326,51,'2018-10-14 19:36:06',0,NULL),(327,51,'2018-10-14 19:36:09',100,'2018-10-14 19:36:11'),(328,51,'2018-10-14 19:37:23',0,NULL),(329,51,'2018-10-14 19:37:26',0,NULL),(330,51,'2018-10-14 19:37:28',0,NULL),(331,51,'2018-10-14 19:38:36',0,NULL),(332,51,'2018-10-14 19:38:53',0,NULL),(333,51,'2018-10-14 19:38:59',0,'2018-10-14 19:39:04'),(334,51,'2018-10-14 19:39:05',0,NULL),(335,51,'2018-10-14 19:39:08',0,NULL),(336,51,'2018-10-14 19:39:13',0,NULL),(337,51,'2018-10-14 19:39:18',110,'2018-10-14 19:39:21'),(338,51,'2018-10-14 19:39:45',0,NULL),(339,51,'2018-10-14 19:39:54',0,NULL),(340,51,'2018-10-14 19:39:58',55,'2018-10-14 19:40:01'),(341,51,'2018-10-14 19:40:06',0,NULL),(342,51,'2018-10-14 19:40:50',0,NULL),(343,51,'2018-10-14 19:40:53',0,NULL),(344,51,'2018-10-14 19:40:57',0,NULL),(345,51,'2018-10-14 19:41:02',0,NULL),(346,51,'2018-10-14 19:42:52',0,NULL),(347,51,'2018-10-14 19:42:54',0,NULL),(348,51,'2018-10-14 19:43:08',0,NULL),(349,51,'2018-10-14 19:43:11',0,NULL),(350,51,'2018-10-14 19:43:33',0,NULL),(351,51,'2018-10-14 19:43:44',0,NULL),(352,51,'2018-10-14 19:45:09',0,NULL),(353,51,'2018-10-14 19:46:18',0,NULL),(354,51,'2018-10-14 19:46:20',0,NULL),(355,51,'2018-10-14 19:46:57',0,NULL),(356,51,'2018-10-14 19:46:59',0,NULL),(357,51,'2018-10-14 19:47:03',0,NULL),(358,51,'2018-10-14 19:51:27',0,'2018-10-14 19:51:49'),(359,51,'2018-10-14 19:52:02',0,NULL),(360,51,'2018-10-14 19:52:05',0,NULL),(361,51,'2018-10-14 19:54:37',0,NULL),(362,51,'2018-10-14 19:54:44',0,'2018-10-14 19:54:51'),(363,51,'2018-10-14 19:54:53',0,NULL),(364,51,'2018-10-14 19:55:03',0,NULL),(365,51,'2018-10-14 19:56:32',0,NULL),(366,51,'2018-10-14 19:56:40',0,NULL),(367,51,'2018-10-14 19:57:54',0,NULL),(368,51,'2018-10-14 19:58:02',0,NULL);
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
/*!50003 DROP PROCEDURE IF EXISTS `esqueci_senha` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `esqueci_senha`(
	IN CoUsu Int,
	IN SeUsu varchar(20)
    )
BEGIN
	Declare desLog varchar(80);
	Update usuario Set SenUsu = md5(SeUsu) where CodUsu = CoUsu;
    Set DesLog = Concat('Usuário ',CoUsu,' teve a senha alterada para ', md5(SeUsu),'.');
    Call insere_log(desLog,'M');    
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

-- Dump completed on 2018-10-14 20:00:29
