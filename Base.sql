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
INSERT INTO `log` VALUES (75,'Novo jogador inserido: Kevin Ruan Soares','2018-09-30 23:35:05','C'),(76,'Novo jogador inserido: Sabrina Marques','2018-09-30 23:36:52','C'),(77,'Novo jogador inserido: Felipe','2018-09-30 23:37:11','C'),(78,'Novo jogador inserido: teste01','2018-09-30 23:37:36','C'),(79,'Novo jogador inserido: teste02','2018-09-30 23:37:49','C'),(80,'Novo jogador inserido: teste03','2018-09-30 23:38:05','C'),(81,'Novo jogador inserido: teste04','2018-09-30 23:38:20','C'),(82,'Novo jogador inserido: teste05','2018-09-30 23:38:49','C'),(83,'Novo jogador inserido: teste06','2018-09-30 23:39:15','C'),(85,'Email ou NickName duplicados: Email - teste07@gmail.com | NickName - teste06','2018-09-30 23:39:30','W'),(86,'Novo jogador inserido: teste07','2018-09-30 23:39:39','C'),(87,'Usuario 51 iniciou partida de codigo 24.','2018-09-30 23:40:56','P'),(88,'Partida 24 finalizada_Pausada Data/Hora: 2018-09-30 23:41:07','2018-09-30 23:41:07','P'),(89,'Usuario 51 iniciou partida de codigo 25.','2018-09-30 23:41:22','P'),(90,'Partida 25 finalizada_Pausada Data/Hora: 2018-09-30 23:41:40','2018-09-30 23:41:40','P'),(91,'Usuario 51 iniciou partida de codigo 26.','2018-09-30 23:41:49','P'),(92,'Partida 26 finalizada_Pausada Data/Hora: 2018-09-30 23:42:00','2018-09-30 23:42:00','P'),(93,'Usuario 52 iniciou partida de codigo 27.','2018-09-30 23:43:06','P'),(94,'Partida 27 finalizada_Pausada Data/Hora: 2018-09-30 23:43:14','2018-09-30 23:43:15','P'),(95,'Usuario 53 iniciou partida de codigo 28.','2018-09-30 23:43:31','P'),(96,'Partida 28 finalizada_Pausada Data/Hora: 2018-09-30 23:43:38','2018-09-30 23:43:38','P'),(97,'Usuario 54 iniciou partida de codigo 29.','2018-09-30 23:44:18','P'),(98,'Partida 29 finalizada_Pausada Data/Hora: 2018-09-30 23:44:58','2018-09-30 23:44:58','P'),(99,'Usuario 55 iniciou partida de codigo 30.','2018-09-30 23:45:17','P'),(100,'Partida 30 finalizada_Pausada Data/Hora: 2018-09-30 23:45:26','2018-09-30 23:45:26','P'),(101,'Usuario 51 iniciou partida de codigo 32.','2018-10-09 21:04:50','P'),(102,'Usuario 51 iniciou partida de codigo 33.','2018-10-09 21:04:57','P'),(103,'Usuario 51 iniciou partida de codigo 34.','2018-10-09 21:11:14','P'),(104,'Usuario 51 iniciou partida de codigo 35.','2018-10-09 21:25:36','P'),(105,'Usuario 51 iniciou partida de codigo 36.','2018-10-09 21:27:04','P'),(106,'Usuario 51 iniciou partida de codigo 37.','2018-10-09 21:27:44','P'),(107,'Usuario 51 iniciou partida de codigo 38.','2018-10-09 21:28:54','P'),(108,'Usuario 51 iniciou partida de codigo 39.','2018-10-09 21:29:49','P'),(109,'Usuario 51 iniciou partida de codigo 40.','2018-10-09 21:30:30','P'),(110,'Usuario 51 teve a senha alterada para d41d8cd98f00b204e9800998ecf8427e.','2018-10-12 18:36:39','M'),(111,'Usuario 51 teve a senha alterada para 202cb962ac59075b964b07152d234b70.','2018-10-12 18:36:52','M'),(112,'Usuario 51 teve a senha alterada para c3bfbc2fc89bd1dd71ad5fc5ac96ae69.','2018-10-12 18:37:17','M'),(113,'Usuario 51 iniciou partida de codigo 45.','2018-10-12 18:40:15','P'),(114,'Usuario 51 iniciou partida de codigo 47.','2018-10-12 18:43:40','P'),(115,'Usuario 51 iniciou partida de codigo 48.','2018-10-12 18:44:06','P'),(116,'Usuario 51 iniciou partida de codigo 49.','2018-10-12 22:11:11','P'),(117,'Usuario 51 iniciou partida de codigo 50.','2018-10-12 22:11:54','P'),(118,'Usuario 51 iniciou partida de codigo 51.','2018-10-12 22:12:10','P'),(119,'Usuario 51 iniciou partida de codigo 52.','2018-10-12 22:12:55','P'),(120,'Usuario 51 iniciou partida de codigo 53.','2018-10-12 22:14:38','P'),(121,'Usuario 51 iniciou partida de codigo 54.','2018-10-12 22:15:27','P'),(122,'Usuario 51 iniciou partida de codigo 55.','2018-10-12 22:37:40','P'),(123,'Usuario 51 iniciou partida de codigo 56.','2018-10-12 22:37:42','P'),(124,'Usuario 51 iniciou partida de codigo 57.','2018-10-12 22:40:32','P'),(125,'Usuario 51 iniciou partida de codigo 58.','2018-10-12 22:40:35','P'),(126,'Usuario 51 iniciou partida de codigo 59.','2018-10-12 22:40:39','P'),(127,'Partida 59 finalizada_Pausada Data/Hora: 2018-10-12 22:40:43','2018-10-12 22:40:43','P'),(128,'Usuario 51 iniciou partida de codigo 60.','2018-10-12 22:41:46','P'),(129,'Usuario 51 iniciou partida de codigo 61.','2018-10-12 22:41:48','P'),(130,'Usuario 51 iniciou partida de codigo 62.','2018-10-12 22:41:52','P'),(131,'Usuario 51 iniciou partida de codigo 63.','2018-10-12 22:41:57','P'),(132,'Partida 63 finalizada_Pausada Data/Hora: 2018-10-12 22:42:02','2018-10-12 22:42:02','P'),(133,'Partida 63 finalizada_Pausada Data/Hora: 2018-10-12 22:42:23','2018-10-12 22:42:23','P'),(134,'Partida 63 finalizada_Pausada Data/Hora: 2018-10-12 22:42:25','2018-10-12 22:42:26','P'),(135,'Partida 63 finalizada_Pausada Data/Hora: 2018-10-12 22:42:26','2018-10-12 22:42:26','P'),(136,'Usuario 51 iniciou partida de codigo 64.','2018-10-12 22:42:29','P'),(137,'Usuario 51 iniciou partida de codigo 65.','2018-10-13 12:08:38','P'),(138,'Usuario 51 iniciou partida de codigo 66.','2018-10-13 12:08:40','P'),(139,'Usuario 51 iniciou partida de codigo 67.','2018-10-13 12:09:08','P'),(140,'Usuario 51 iniciou partida de codigo 68.','2018-10-13 12:09:10','P'),(141,'Usuario 51 iniciou partida de codigo 69.','2018-10-13 12:09:13','P'),(142,'Usuario 51 iniciou partida de codigo 70.','2018-10-13 12:09:19','P'),(143,'Usuario 51 iniciou partida de codigo 71.','2018-10-13 12:09:37','P'),(144,'Usuario 51 iniciou partida de codigo 72.','2018-10-13 12:09:39','P'),(145,'Usuario 51 iniciou partida de codigo 73.','2018-10-13 12:09:43','P'),(146,'Usuario 51 iniciou partida de codigo 74.','2018-10-13 12:10:05','P'),(147,'Usuario 51 iniciou partida de codigo 75.','2018-10-13 12:10:07','P'),(148,'Usuario 51 iniciou partida de codigo 76.','2018-10-13 12:10:11','P'),(149,'Partida 76 finalizada_Pausada Data/Hora: 2018-10-13 12:10:15','2018-10-13 12:10:15','P'),(151,'Email ou NickName duplicados: Email - kevin_soares@estudante.sc.senai.br | NickN','2018-10-13 13:43:21','W'),(153,'Email ou NickName duplicados: Email - kevin_soares@estudante.sc.senai.br | NickN','2018-10-13 13:43:52','W'),(155,'Email ou NickName duplicados: Email - kevin_soares@estudante.sc.senai.br | NickN','2018-10-13 13:43:59','W'),(157,'Email ou NickName duplicados: Email - kevin_soares@estudante.sc.senai.br | NickN','2018-10-13 13:43:59','W'),(159,'Email ou NickName duplicados: Email - kevin_soares@estudante.sc.senai.br | NickN','2018-10-13 13:44:00','W'),(161,'Email ou NickName duplicados: Email - kevin_soares@estudante.sc.senai.br | NickN','2018-10-13 13:44:00','W'),(163,'Email ou NickName duplicados: Email - kevin_soares@estudante.sc.senai.br | NickN','2018-10-13 13:44:00','W'),(165,'Email ou NickName duplicados: Email - kevin_soares@estudante.sc.senai.br | NickN','2018-10-13 13:44:00','W'),(167,'Email ou NickName duplicados: Email - kevin_soares@estudante.sc.senai.br | NickN','2018-10-13 13:44:00','W'),(169,'Email ou NickName duplicados: Email - kevin_soares@estudante.sc.senai.br | NickN','2018-10-13 13:44:01','W'),(171,'Email ou NickName duplicados: Email - kevin_soares@estudante.sc.senai.br | NickN','2018-10-13 13:44:01','W'),(173,'Email ou NickName duplicados: Email - kevin_soares@estudante.sc.senai.br | NickN','2018-10-13 13:49:44','W'),(175,'Email ou NickName duplicados: Email - kevin_soares@estudante.sc.senai.br | NickN','2018-10-13 13:50:14','W'),(177,'Email ou NickName duplicados: Email - kevin_soares@estudante.sc.senai.br | NickN','2018-10-13 13:50:16','W'),(179,'Email ou NickName duplicados: Email - kevin_soares@estudante.sc.senai.br | NickN','2018-10-13 13:50:16','W'),(181,'Email ou NickName duplicados: Email - kevin_soares@estudante.sc.senai.br | NickN','2018-10-13 13:50:17','W'),(183,'Email ou NickName duplicados: Email - kevin_soares@estudante.sc.senai.br | NickN','2018-10-13 13:50:17','W'),(185,'Email ou NickName duplicados: Email - kevin_soares@estudante.sc.senai.br | NickN','2018-10-13 13:50:17','W'),(187,'Email ou NickName duplicados: Email - kevin_soares@estudante.sc.senai.br | NickN','2018-10-13 13:50:17','W'),(189,'Email ou NickName duplicados: Email - kevin_soares@estudante.sc.senai.br | NickN','2018-10-13 13:50:17','W'),(191,'Email ou NickName duplicados: Email - kevin_soares@estudante.sc.senai.br | NickN','2018-10-13 13:50:59','W'),(193,'Email ou NickName duplicados: Email - kevin_soares@estudante.sc.senai.br | NickN','2018-10-13 14:56:55','W'),(195,'Email ou NickName duplicados: Email - kevin_soares@estudante.sc.senai.br | NickN','2018-10-13 14:57:39','W'),(196,'Usuario 51 iniciou partida de codigo 77.','2018-10-13 16:19:09','P'),(197,'Usuario 51 iniciou partida de codigo 78.','2018-10-13 16:19:10','P'),(198,'Usuario 51 iniciou partida de codigo 79.','2018-10-13 16:19:11','P'),(199,'Usuario 51 iniciou partida de codigo 80.','2018-10-13 16:19:12','P'),(200,'Usuario 51 iniciou partida de codigo 81.','2018-10-13 16:19:12','P'),(201,'Usuario 51 iniciou partida de codigo 82.','2018-10-13 16:20:02','P'),(202,'Usuario 51 iniciou partida de codigo 83.','2018-10-13 16:20:06','P'),(203,'Usuario 51 iniciou partida de codigo 84.','2018-10-13 16:20:09','P'),(204,'Usuario 51 iniciou partida de codigo 85.','2018-10-13 17:04:32','P'),(205,'Partida 85 finalizada_Pausada Data/Hora: 2018-10-13 17:04:34','2018-10-13 17:04:35','P'),(206,'Usuario 51 iniciou partida de codigo 86.','2018-10-13 17:04:35','P'),(207,'Usuario 51 iniciou partida de codigo 87.','2018-10-13 17:06:40','P'),(208,'Usuario 51 iniciou partida de codigo 88.','2018-10-13 17:58:00','P'),(209,'Partida 88 finalizada_Pausada Data/Hora: 2018-10-13 17:58:04','2018-10-13 17:58:04','P'),(210,'Usuario 51 iniciou partida de codigo 89.','2018-10-13 17:58:04','P'),(211,'Partida 89 finalizada_Pausada Data/Hora: 2018-10-13 17:58:06','2018-10-13 17:58:06','P'),(212,'Usuario 51 iniciou partida de codigo 90.','2018-10-13 17:59:46','P'),(213,'Partida 90 finalizada_Pausada Data/Hora: 2018-10-13 17:59:47','2018-10-13 17:59:47','P'),(214,'Usuario 51 iniciou partida de codigo 91.','2018-10-13 18:00:04','P'),(215,'Usuario 51 iniciou partida de codigo 92.','2018-10-13 18:00:07','P'),(216,'Usuario 51 iniciou partida de codigo 93.','2018-10-13 18:00:10','P'),(217,'Usuario 51 iniciou partida de codigo 94.','2018-10-13 18:00:16','P'),(218,'Partida 94 finalizada_Pausada Data/Hora: 2018-10-13 18:00:19','2018-10-13 18:00:19','P'),(219,'Usuario 51 iniciou partida de codigo 95.','2018-10-13 18:00:20','P'),(220,'Usuario 51 iniciou partida de codigo 96.','2018-10-13 18:00:23','P'),(221,'Usuario 51 iniciou partida de codigo 97.','2018-10-13 18:01:04','P'),(222,'Usuario 51 iniciou partida de codigo 98.','2018-10-13 18:01:06','P'),(223,'Usuario 51 iniciou partida de codigo 99.','2018-10-13 18:01:38','P'),(224,'Usuario 51 iniciou partida de codigo 100.','2018-10-13 18:01:40','P'),(225,'Usuario 51 iniciou partida de codigo 101.','2018-10-13 18:02:19','P'),(226,'Usuario 51 iniciou partida de codigo 102.','2018-10-13 18:02:21','P'),(227,'Partida 102 finalizada_Pausada Data/Hora: 2018-10-13 18:02:23','2018-10-13 18:02:23','P'),(228,'Usuario 51 iniciou partida de codigo 103.','2018-10-13 18:02:33','P'),(229,'Usuario 51 iniciou partida de codigo 104.','2018-10-13 18:02:36','P'),(230,'Usuario 51 iniciou partida de codigo 105.','2018-10-13 18:02:40','P'),(231,'Usuario 51 iniciou partida de codigo 106.','2018-10-13 18:02:45','P'),(232,'Partida 106 finalizada_Pausada Data/Hora: 2018-10-13 18:02:49','2018-10-13 18:02:49','P'),(233,'Usuario 51 iniciou partida de codigo 107.','2018-10-13 18:02:57','P'),(234,'Usuario 51 iniciou partida de codigo 108.','2018-10-13 18:03:00','P'),(235,'Usuario 51 iniciou partida de codigo 109.','2018-10-13 18:03:04','P'),(236,'Usuario 51 iniciou partida de codigo 110.','2018-10-13 18:03:12','P'),(237,'Usuario 51 iniciou partida de codigo 111.','2018-10-13 18:05:28','P'),(238,'Usuario 51 iniciou partida de codigo 112.','2018-10-13 18:05:31','P'),(239,'Usuario 51 iniciou partida de codigo 113.','2018-10-13 18:05:35','P'),(240,'Partida 113 finalizada_Pausada Data/Hora: 2018-10-13 18:05:37','2018-10-13 18:05:37','P'),(241,'Usuario 51 iniciou partida de codigo 114.','2018-10-13 18:05:41','P'),(242,'Usuario 51 iniciou partida de codigo 115.','2018-10-13 18:05:43','P'),(243,'Usuario 51 iniciou partida de codigo 116.','2018-10-13 18:07:55','P'),(244,'Usuario 51 iniciou partida de codigo 117.','2018-10-13 18:07:57','P'),(245,'Usuario 51 iniciou partida de codigo 118.','2018-10-13 18:08:01','P'),(246,'Usuario 51 iniciou partida de codigo 119.','2018-10-13 18:08:04','P'),(247,'Usuario 51 iniciou partida de codigo 120.','2018-10-13 18:08:29','P'),(248,'Usuario 51 iniciou partida de codigo 121.','2018-10-13 18:08:31','P'),(249,'Usuario 51 iniciou partida de codigo 122.','2018-10-13 18:08:35','P'),(250,'Partida 122 finalizada_Pausada Data/Hora: 2018-10-13 18:08:37','2018-10-13 18:08:37','P'),(251,'Usuario 51 iniciou partida de codigo 123.','2018-10-13 18:08:39','P'),(252,'Usuario 51 iniciou partida de codigo 124.','2018-10-13 18:08:41','P'),(253,'Usuario 51 iniciou partida de codigo 125.','2018-10-13 18:09:22','P'),(254,'Usuario 51 iniciou partida de codigo 126.','2018-10-13 18:09:25','P'),(255,'Usuario 51 iniciou partida de codigo 127.','2018-10-13 18:09:28','P'),(256,'Partida 127 finalizada_Pausada Data/Hora: 2018-10-13 18:09:31','2018-10-13 18:09:31','P'),(257,'Usuario 51 iniciou partida de codigo 128.','2018-10-13 18:09:32','P'),(258,'Usuario 51 iniciou partida de codigo 129.','2018-10-13 18:09:35','P'),(259,'Usuario 51 iniciou partida de codigo 130.','2018-10-13 18:09:40','P'),(260,'Partida 130 finalizada_Pausada Data/Hora: 2018-10-13 18:09:44','2018-10-13 18:09:44','P'),(261,'Usuario 51 iniciou partida de codigo 131.','2018-10-13 18:12:37','P'),(262,'Usuario 51 iniciou partida de codigo 132.','2018-10-13 18:12:40','P'),(263,'Usuario 51 iniciou partida de codigo 133.','2018-10-13 18:12:42','P'),(264,'Usuario 51 iniciou partida de codigo 134.','2018-10-13 18:14:50','P'),(265,'Usuario 51 iniciou partida de codigo 135.','2018-10-13 18:14:53','P'),(266,'Usuario 51 iniciou partida de codigo 136.','2018-10-13 18:14:55','P'),(267,'Usuario 51 iniciou partida de codigo 137.','2018-10-13 18:14:58','P'),(268,'Usuario 51 iniciou partida de codigo 138.','2018-10-13 18:15:01','P'),(269,'Usuario 51 iniciou partida de codigo 139.','2018-10-13 18:15:06','P'),(270,'Usuario 51 iniciou partida de codigo 140.','2018-10-13 18:15:12','P'),(271,'Usuario 51 iniciou partida de codigo 141.','2018-10-13 18:15:19','P'),(272,'Usuario 51 iniciou partida de codigo 142.','2018-10-13 18:49:26','P'),(273,'Usuario 51 iniciou partida de codigo 143.','2018-10-14 12:51:30','P'),(274,'Usuario 51 iniciou partida de codigo 144.','2018-10-14 12:51:33','P'),(275,'Usuario 51 iniciou partida de codigo 145.','2018-10-14 12:51:36','P'),(276,'Partida 145 finalizada_Pausada Data/Hora: 2018-10-14 12:51:39','2018-10-14 12:51:39','P'),(277,'Partida 145 finalizada_Pausada Data/Hora: 2018-10-14 12:52:05','2018-10-14 12:52:05','P'),(278,'Usuario 51 iniciou partida de codigo 146.','2018-10-14 12:53:02','P'),(279,'Partida 146 finalizada_Pausada Data/Hora: 2018-10-14 12:53:07','2018-10-14 12:53:07','P'),(280,'Usuario 51 iniciou partida de codigo 147.','2018-10-14 12:56:04','P'),(281,'Partida 147 finalizada_Pausada Data/Hora: 2018-10-14 12:56:11','2018-10-14 12:56:12','P'),(282,'Usuario 51 iniciou partida de codigo 148.','2018-10-14 17:22:53','P'),(283,'Usuario 51 iniciou partida de codigo 149.','2018-10-14 17:23:42','P'),(284,'Usuario 51 iniciou partida de codigo 150.','2018-10-14 17:23:44','P'),(285,'Usuario 51 iniciou partida de codigo 151.','2018-10-14 17:23:48','P'),(286,'Usuario 51 iniciou partida de codigo 152.','2018-10-14 17:30:12','P'),(287,'Usuario 51 iniciou partida de codigo 153.','2018-10-14 18:06:46','P'),(288,'Partida 153 finalizada_Pausada Data/Hora: 2018-10-14 18:06:51','2018-10-14 18:06:51','P'),(289,'Usuario 51 iniciou partida de codigo 154.','2018-10-14 18:06:52','P'),(290,'Usuario 51 iniciou partida de codigo 155.','2018-10-14 18:06:55','P'),(291,'Usuario 51 iniciou partida de codigo 156.','2018-10-14 18:06:58','P'),(292,'Usuario 51 iniciou partida de codigo 157.','2018-10-14 18:07:03','P'),(293,'Partida 157 finalizada_Pausada Data/Hora: 2018-10-14 18:07:07','2018-10-14 18:07:07','P'),(294,'Partida 157 finalizada_Pausada Data/Hora: 2018-10-14 18:07:09','2018-10-14 18:07:09','P'),(295,'Usuario 51 iniciou partida de codigo 158.','2018-10-14 18:08:27','P'),(296,'Usuario 51 iniciou partida de codigo 159.','2018-10-14 18:08:34','P'),(297,'Partida 159 finalizada_Pausada Data/Hora: 2018-10-14 18:08:34','2018-10-14 18:08:34','P'),(298,'Partida 159 finalizada_Pausada Data/Hora: 2018-10-14 18:08:35','2018-10-14 18:08:35','P'),(299,'Usuario 51 iniciou partida de codigo 160.','2018-10-14 18:08:40','P'),(300,'Usuario 51 iniciou partida de codigo 161.','2018-10-14 18:08:42','P'),(301,'Partida 161 finalizada_Pausada Data/Hora: 2018-10-14 18:08:42','2018-10-14 18:08:42','P'),(302,'Usuario 51 iniciou partida de codigo 162.','2018-10-14 18:11:21','P'),(303,'Usuario 51 iniciou partida de codigo 163.','2018-10-14 18:11:23','P'),(304,'Usuario 51 iniciou partida de codigo 164.','2018-10-14 18:11:27','P'),(305,'Usuario 51 iniciou partida de codigo 165.','2018-10-14 18:11:32','P'),(306,'Usuario 51 iniciou partida de codigo 166.','2018-10-14 18:11:38','P'),(307,'Partida 166 finalizada_Pausada Data/Hora: 2018-10-14 18:11:41','2018-10-14 18:11:41','P'),(308,'Usuario 51 iniciou partida de codigo 167.','2018-10-14 18:13:01','P'),(309,'Usuario 51 iniciou partida de codigo 168.','2018-10-14 18:13:05','P'),(310,'Partida 168 finalizada_Pausada Data/Hora: 2018-10-14 18:13:07','2018-10-14 18:13:07','P'),(311,'Usuario 51 iniciou partida de codigo 169.','2018-10-14 18:19:14','P'),(312,'Partida 169 finalizada_Pausada Data/Hora: 2018-10-14 18:19:14','2018-10-14 18:19:14','P'),(313,'Usuario 51 iniciou partida de codigo 170.','2018-10-14 18:19:29','P'),(314,'Partida 170 finalizada_Pausada Data/Hora: 2018-10-14 18:19:30','2018-10-14 18:19:30','P'),(315,'Usuario 51 iniciou partida de codigo 171.','2018-10-14 18:19:32','P'),(316,'Partida 171 finalizada_Pausada Data/Hora: 2018-10-14 18:19:37','2018-10-14 18:19:37','P'),(317,'Usuario 51 iniciou partida de codigo 172.','2018-10-14 18:19:48','P'),(318,'Usuario 51 iniciou partida de codigo 173.','2018-10-14 18:19:51','P'),(319,'Usuario 51 iniciou partida de codigo 174.','2018-10-14 18:19:56','P'),(320,'Partida 174 finalizada_Pausada Data/Hora: 2018-10-14 18:20:00','2018-10-14 18:20:00','P'),(321,'Usuario 51 iniciou partida de codigo 175.','2018-10-14 18:20:06','P'),(322,'Usuario 51 iniciou partida de codigo 176.','2018-10-14 18:20:12','P'),(323,'Partida 176 finalizada_Pausada Data/Hora: 2018-10-14 18:20:16','2018-10-14 18:20:16','P'),(324,'Usuario 51 iniciou partida de codigo 177.','2018-10-14 18:21:02','P'),(325,'Usuario 51 iniciou partida de codigo 178.','2018-10-14 18:24:04','P'),(326,'Usuario 51 iniciou partida de codigo 179.','2018-10-14 18:24:08','P'),(327,'Usuario 51 iniciou partida de codigo 180.','2018-10-14 18:24:12','P'),(328,'Usuario 51 iniciou partida de codigo 181.','2018-10-14 18:24:18','P'),(329,'Partida 181 finalizada_Pausada Data/Hora: 2018-10-14 18:24:19','2018-10-14 18:24:19','P'),(330,'Usuario 51 iniciou partida de codigo 182.','2018-10-14 18:25:07','P'),(331,'Partida 182 finalizada_Pausada Data/Hora: 2018-10-14 18:25:12','2018-10-14 18:25:12','P'),(332,'Usuario 51 iniciou partida de codigo 183.','2018-10-14 18:25:25','P'),(333,'Usuario 51 iniciou partida de codigo 184.','2018-10-14 18:25:27','P'),(334,'Usuario 51 iniciou partida de codigo 185.','2018-10-14 18:25:32','P'),(335,'Usuario 51 iniciou partida de codigo 186.','2018-10-14 18:25:37','P'),(336,'Partida 186 finalizada_Pausada Data/Hora: 2018-10-14 18:25:40','2018-10-14 18:25:40','P'),(337,'Partida 186 finalizada_Pausada Data/Hora: 2018-10-14 18:26:08','2018-10-14 18:26:09','P'),(338,'Usuario 51 iniciou partida de codigo 187.','2018-10-14 18:29:09','P'),(339,'Usuario 51 iniciou partida de codigo 188.','2018-10-14 18:29:12','P'),(340,'Usuario 51 iniciou partida de codigo 189.','2018-10-14 18:29:16','P'),(341,'Partida 189 finalizada_Pausada Data/Hora: 2018-10-14 18:29:17','2018-10-14 18:29:17','P'),(342,'Partida 189 finalizada_Pausada Data/Hora: 2018-10-14 18:29:27','2018-10-14 18:29:27','P'),(343,'Usuario 51 iniciou partida de codigo 190.','2018-10-14 18:29:40','P'),(344,'Usuario 51 iniciou partida de codigo 191.','2018-10-14 18:29:49','P'),(345,'Usuario 51 iniciou partida de codigo 192.','2018-10-14 18:29:57','P'),(346,'Partida 192 finalizada_Pausada Data/Hora: 2018-10-14 18:29:58','2018-10-14 18:29:58','P'),(347,'Partida 192 finalizada_Pausada Data/Hora: 2018-10-14 18:30:08','2018-10-14 18:30:08','P'),(348,'Usuario 51 iniciou partida de codigo 193.','2018-10-14 18:30:18','P'),(349,'Usuario 51 iniciou partida de codigo 194.','2018-10-14 18:30:21','P'),(350,'Usuario 51 iniciou partida de codigo 195.','2018-10-14 18:30:26','P'),(351,'Usuario 51 iniciou partida de codigo 196.','2018-10-14 18:30:30','P'),(352,'Partida 196 finalizada_Pausada Data/Hora: 2018-10-14 18:30:38','2018-10-14 18:30:38','P'),(353,'Usuario 51 iniciou partida de codigo 197.','2018-10-14 18:30:42','P'),(354,'Partida 197 finalizada_Pausada Data/Hora: 2018-10-14 18:30:48','2018-10-14 18:30:48','P'),(355,'Usuario 51 iniciou partida de codigo 198.','2018-10-14 18:30:53','P'),(356,'Usuario 51 iniciou partida de codigo 199.','2018-10-14 18:31:04','P'),(357,'Partida 199 finalizada_Pausada Data/Hora: 2018-10-14 18:31:08','2018-10-14 18:31:08','P'),(358,'Usuario 51 iniciou partida de codigo 200.','2018-10-14 18:31:15','P'),(359,'Partida 200 finalizada_Pausada Data/Hora: 2018-10-14 18:31:18','2018-10-14 18:31:18','P'),(360,'Partida 200 finalizada_Pausada Data/Hora: 2018-10-14 18:31:26','2018-10-14 18:31:26','P'),(361,'Usuario 51 iniciou partida de codigo 201.','2018-10-14 18:31:35','P'),(362,'Usuario 51 iniciou partida de codigo 202.','2018-10-14 18:31:38','P'),(363,'Usuario 51 iniciou partida de codigo 203.','2018-10-14 18:31:43','P'),(364,'Usuario 51 iniciou partida de codigo 204.','2018-10-14 18:31:48','P'),(365,'Partida 204 finalizada_Pausada Data/Hora: 2018-10-14 18:31:49','2018-10-14 18:31:49','P'),(366,'Partida 204 finalizada_Pausada Data/Hora: 2018-10-14 18:31:54','2018-10-14 18:31:54','P'),(367,'Partida 32 deleteda!','2018-10-14 18:32:12','D'),(368,'Partida 33 deleteda!','2018-10-14 18:32:12','D'),(369,'Partida 34 deleteda!','2018-10-14 18:32:12','D'),(370,'Partida 35 deleteda!','2018-10-14 18:32:12','D'),(371,'Partida 36 deleteda!','2018-10-14 18:32:12','D'),(372,'Partida 37 deleteda!','2018-10-14 18:32:13','D'),(373,'Partida 38 deleteda!','2018-10-14 18:32:13','D'),(374,'Partida 39 deleteda!','2018-10-14 18:32:13','D'),(375,'Partida 40 deleteda!','2018-10-14 18:32:13','D'),(376,'Usuario 51 iniciou partida de codigo 205.','2018-10-14 18:50:52','P'),(377,'Usuario 51 iniciou partida de codigo 206.','2018-10-14 18:50:54','P'),(378,'Partida 206 finalizada_Pausada Data/Hora: 2018-10-14 18:50:55','2018-10-14 18:50:56','P'),(379,'Usuario 51 iniciou partida de codigo 207.','2018-10-14 18:51:01','P'),(380,'Usuario 51 iniciou partida de codigo 208.','2018-10-14 18:51:07','P'),(381,'Partida 208 finalizada_Pausada Data/Hora: 2018-10-14 18:51:07','2018-10-14 18:51:07','P'),(382,'Partida 208 finalizada_Pausada Data/Hora: 2018-10-14 18:51:16','2018-10-14 18:51:16','P'),(383,'Usuario 51 iniciou partida de codigo 209.','2018-10-14 18:51:58','P'),(384,'Usuario 51 iniciou partida de codigo 210.','2018-10-14 18:52:00','P'),(385,'Usuario 51 iniciou partida de codigo 211.','2018-10-14 18:52:04','P'),(386,'Partida 211 finalizada_Pausada Data/Hora: 2018-10-14 18:52:05','2018-10-14 18:52:05','P'),(387,'Usuario 51 iniciou partida de codigo 212.','2018-10-14 18:52:14','P'),(388,'Usuario 51 iniciou partida de codigo 213.','2018-10-14 18:52:22','P'),(389,'Partida 213 finalizada_Pausada Data/Hora: 2018-10-14 18:52:24','2018-10-14 18:52:24','P'),(390,'Partida 213 finalizada_Pausada Data/Hora: 2018-10-14 18:52:34','2018-10-14 18:52:34','P'),(391,'Usuario 51 iniciou partida de codigo 214.','2018-10-14 18:53:11','P'),(392,'Usuario 51 iniciou partida de codigo 215.','2018-10-14 18:53:15','P'),(393,'Usuario 51 iniciou partida de codigo 216.','2018-10-14 18:53:17','P'),(394,'Usuario 51 iniciou partida de codigo 217.','2018-10-14 18:53:21','P'),(395,'Partida 217 finalizada_Pausada Data/Hora: 2018-10-14 18:53:22','2018-10-14 18:53:22','P'),(396,'Usuario 51 iniciou partida de codigo 218.','2018-10-14 18:53:29','P'),(397,'Usuario 51 iniciou partida de codigo 219.','2018-10-14 18:53:37','P'),(398,'Partida 219 finalizada_Pausada Data/Hora: 2018-10-14 18:53:43','2018-10-14 18:53:43','P'),(399,'Usuario 51 iniciou partida de codigo 220.','2018-10-14 18:54:18','P'),(400,'Partida 220 finalizada_Pausada Data/Hora: 2018-10-14 18:54:20','2018-10-14 18:54:20','P'),(401,'Partida 220 finalizada_Pausada Data/Hora: 2018-10-14 18:54:25','2018-10-14 18:54:25','P'),(402,'Partida 220 finalizada_Pausada Data/Hora: 2018-10-14 18:54:27','2018-10-14 18:54:27','P'),(403,'Usuario 51 iniciou partida de codigo 221.','2018-10-14 18:54:32','P'),(404,'Partida 221 finalizada_Pausada Data/Hora: 2018-10-14 18:54:33','2018-10-14 18:54:33','P'),(405,'Usuario 51 iniciou partida de codigo 222.','2018-10-14 18:54:39','P'),(406,'Usuario 51 iniciou partida de codigo 223.','2018-10-14 18:54:41','P'),(407,'Partida 223 finalizada_Pausada Data/Hora: 2018-10-14 18:54:42','2018-10-14 18:54:42','P'),(408,'Partida 223 finalizada_Pausada Data/Hora: 2018-10-14 18:54:45','2018-10-14 18:54:45','P'),(409,'Usuario 51 iniciou partida de codigo 224.','2018-10-14 18:54:48','P'),(410,'Usuario 51 iniciou partida de codigo 225.','2018-10-14 18:54:50','P'),(411,'Usuario 51 iniciou partida de codigo 226.','2018-10-14 18:54:55','P'),(412,'Usuario 51 iniciou partida de codigo 227.','2018-10-14 18:55:01','P'),(413,'Partida 227 finalizada_Pausada Data/Hora: 2018-10-14 18:55:07','2018-10-14 18:55:07','P'),(414,'Partida 227 finalizada_Pausada Data/Hora: 2018-10-14 18:55:09','2018-10-14 18:55:09','P'),(415,'Usuario 51 iniciou partida de codigo 228.','2018-10-14 18:55:36','P'),(416,'Usuario 51 iniciou partida de codigo 229.','2018-10-14 18:55:38','P'),(417,'Usuario 51 iniciou partida de codigo 230.','2018-10-14 18:55:42','P'),(418,'Partida 230 finalizada_Pausada Data/Hora: 2018-10-14 18:55:44','2018-10-14 18:55:44','P'),(419,'Usuario 51 iniciou partida de codigo 231.','2018-10-14 18:55:51','P'),(420,'Usuario 51 iniciou partida de codigo 232.','2018-10-14 18:55:57','P'),(421,'Partida 232 finalizada_Pausada Data/Hora: 2018-10-14 18:55:58','2018-10-14 18:55:58','P'),(422,'Usuario 51 iniciou partida de codigo 233.','2018-10-14 18:56:06','P'),(423,'Usuario 51 iniciou partida de codigo 234.','2018-10-14 18:56:24','P'),(424,'Usuario 51 iniciou partida de codigo 235.','2018-10-14 18:56:27','P'),(425,'Partida 235 finalizada_Pausada Data/Hora: 2018-10-14 18:56:30','2018-10-14 18:56:30','P'),(426,'Partida 235 finalizada_Pausada Data/Hora: 2018-10-14 18:56:34','2018-10-14 18:56:34','P'),(427,'Usuario 51 iniciou partida de codigo 236.','2018-10-14 18:56:38','P'),(428,'Usuario 51 iniciou partida de codigo 237.','2018-10-14 18:56:44','P'),(429,'Partida 237 finalizada_Pausada Data/Hora: 2018-10-14 18:56:50','2018-10-14 18:56:50','P'),(430,'Usuario 51 iniciou partida de codigo 238.','2018-10-14 18:56:58','P'),(431,'Usuario 51 iniciou partida de codigo 239.','2018-10-14 18:58:27','P'),(432,'Usuario 51 iniciou partida de codigo 240.','2018-10-14 18:58:30','P'),(433,'Partida 240 finalizada_Pausada Data/Hora: 2018-10-14 18:58:30','2018-10-14 18:58:30','P'),(434,'Usuario 51 iniciou partida de codigo 241.','2018-10-14 18:58:36','P'),(435,'Usuario 51 iniciou partida de codigo 242.','2018-10-14 18:58:41','P'),(436,'Partida 242 finalizada_Pausada Data/Hora: 2018-10-14 18:58:42','2018-10-14 18:58:42','P'),(437,'Usuario 51 iniciou partida de codigo 243.','2018-10-14 18:58:56','P'),(438,'Usuario 51 iniciou partida de codigo 244.','2018-10-14 18:59:04','P'),(439,'Partida 244 finalizada_Pausada Data/Hora: 2018-10-14 18:59:05','2018-10-14 18:59:05','P'),(440,'Partida 244 finalizada_Pausada Data/Hora: 2018-10-14 18:59:13','2018-10-14 18:59:13','P'),(441,'Usuario 51 iniciou partida de codigo 245.','2018-10-14 18:59:16','P'),(442,'Usuario 51 iniciou partida de codigo 246.','2018-10-14 18:59:19','P'),(443,'Partida 246 finalizada_Pausada Data/Hora: 2018-10-14 18:59:22','2018-10-14 18:59:22','P'),(444,'Usuario 51 iniciou partida de codigo 247.','2018-10-14 18:59:25','P'),(445,'Usuario 51 iniciou partida de codigo 248.','2018-10-14 18:59:27','P'),(446,'Usuario 51 iniciou partida de codigo 249.','2018-10-14 18:59:32','P'),(447,'Usuario 51 iniciou partida de codigo 250.','2018-10-14 18:59:36','P'),(448,'Usuario 51 iniciou partida de codigo 251.','2018-10-14 18:59:38','P'),(449,'Partida 251 finalizada_Pausada Data/Hora: 2018-10-14 18:59:42','2018-10-14 18:59:42','P'),(450,'Usuario 51 iniciou partida de codigo 252.','2018-10-14 18:59:44','P'),(451,'Usuario 51 iniciou partida de codigo 253.','2018-10-14 18:59:47','P'),(452,'Usuario 51 iniciou partida de codigo 254.','2018-10-14 18:59:52','P'),(453,'Usuario 51 iniciou partida de codigo 255.','2018-10-14 18:59:58','P'),(454,'Partida 255 finalizada_Pausada Data/Hora: 2018-10-14 19:00:03','2018-10-14 19:00:04','P'),(455,'Usuario 51 iniciou partida de codigo 256.','2018-10-14 19:00:06','P'),(456,'Usuario 51 iniciou partida de codigo 257.','2018-10-14 19:00:08','P'),(457,'Partida 257 finalizada_Pausada Data/Hora: 2018-10-14 19:00:09','2018-10-14 19:00:09','P'),(458,'Partida 257 finalizada_Pausada Data/Hora: 2018-10-14 19:00:15','2018-10-14 19:00:15','P'),(459,'Partida 257 Reiniciada.','2018-10-14 19:03:59','P'),(460,'Usuario 51 iniciou partida de codigo 258.','2018-10-14 19:06:08','P'),(461,'Usuario 51 iniciou partida de codigo 259.','2018-10-14 19:06:10','P'),(462,'Usuario 51 iniciou partida de codigo 260.','2018-10-14 19:06:14','P'),(463,'Usuario 51 iniciou partida de codigo 261.','2018-10-14 19:06:18','P'),(464,'Usuario 51 iniciou partida de codigo 262.','2018-10-14 19:12:38','P'),(465,'Usuario 51 iniciou partida de codigo 263.','2018-10-14 19:12:47','P'),(466,'Usuario 51 iniciou partida de codigo 264.','2018-10-14 19:12:50','P'),(467,'Partida 264 finalizada_Pausada Data/Hora: 2018-10-14 19:12:52','2018-10-14 19:12:52','P'),(468,'Partida 264 finalizada_Pausada Data/Hora: 2018-10-14 19:12:56','2018-10-14 19:12:56','P'),(469,'Usuario 51 iniciou partida de codigo 265.','2018-10-14 19:14:35','P'),(470,'Usuario 51 iniciou partida de codigo 266.','2018-10-14 19:14:37','P'),(471,'Usuario 51 iniciou partida de codigo 267.','2018-10-14 19:14:53','P'),(472,'Usuario 51 iniciou partida de codigo 268.','2018-10-14 19:15:02','P'),(473,'Usuario 51 iniciou partida de codigo 269.','2018-10-14 19:15:04','P'),(474,'Usuario 51 iniciou partida de codigo 270.','2018-10-14 19:15:07','P'),(475,'Usuario 51 iniciou partida de codigo 271.','2018-10-14 19:16:09','P'),(476,'Usuario 51 iniciou partida de codigo 272.','2018-10-14 19:16:41','P'),(477,'Partida 272 finalizada_Pausada Data/Hora: 2018-10-14 19:17:24','2018-10-14 19:17:24','P'),(478,'Usuario 51 iniciou partida de codigo 273.','2018-10-14 19:17:28','P'),(479,'Usuario 51 iniciou partida de codigo 274.','2018-10-14 19:17:34','P'),(480,'Usuario 51 iniciou partida de codigo 275.','2018-10-14 19:18:39','P'),(481,'Usuario 51 iniciou partida de codigo 276.','2018-10-14 19:20:06','P'),(482,'Usuario 51 iniciou partida de codigo 277.','2018-10-14 19:20:09','P'),(483,'Usuario 51 iniciou partida de codigo 278.','2018-10-14 19:22:07','P'),(484,'Usuario 51 iniciou partida de codigo 279.','2018-10-14 19:22:11','P'),(485,'Usuario 51 iniciou partida de codigo 280.','2018-10-14 19:22:14','P'),(486,'Usuario 51 iniciou partida de codigo 281.','2018-10-14 19:22:28','P'),(487,'Usuario 51 iniciou partida de codigo 282.','2018-10-14 19:23:54','P'),(488,'Partida 282 finalizada_Pausada Data/Hora: 2018-10-14 19:24:03','2018-10-14 19:24:03','P'),(489,'Partida 282 finalizada_Pausada Data/Hora: 2018-10-14 19:24:12','2018-10-14 19:24:12','P'),(490,'Partida 282 finalizada_Pausada Data/Hora: 2018-10-14 19:24:31','2018-10-14 19:24:31','P'),(491,'Usuario 51 iniciou partida de codigo 283.','2018-10-14 19:24:56','P'),(492,'Partida 283 finalizada_Pausada Data/Hora: 2018-10-14 19:24:57','2018-10-14 19:24:57','P'),(493,'Usuario 51 iniciou partida de codigo 284.','2018-10-14 19:25:00','P'),(494,'Usuario 51 iniciou partida de codigo 285.','2018-10-14 19:25:05','P'),(495,'Partida 285 finalizada_Pausada Data/Hora: 2018-10-14 19:25:05','2018-10-14 19:25:05','P'),(496,'Partida 285 finalizada_Pausada Data/Hora: 2018-10-14 19:25:10','2018-10-14 19:25:10','P'),(497,'Usuario 51 iniciou partida de codigo 286.','2018-10-14 19:25:13','P'),(498,'Usuario 51 iniciou partida de codigo 287.','2018-10-14 19:25:16','P'),(499,'Usuario 51 iniciou partida de codigo 288.','2018-10-14 19:25:20','P'),(500,'Usuario 51 iniciou partida de codigo 289.','2018-10-14 19:25:25','P'),(501,'Partida 289 finalizada_Pausada Data/Hora: 2018-10-14 19:25:49','2018-10-14 19:25:49','P'),(502,'Partida 289 finalizada_Pausada Data/Hora: 2018-10-14 19:25:54','2018-10-14 19:25:54','P'),(503,'Usuario 51 iniciou partida de codigo 290.','2018-10-14 19:26:04','P'),(504,'Usuario 51 iniciou partida de codigo 291.','2018-10-14 19:26:06','P'),(505,'Partida 291 finalizada_Pausada Data/Hora: 2018-10-14 19:26:21','2018-10-14 19:26:21','P'),(506,'Usuario 51 iniciou partida de codigo 292.','2018-10-14 19:26:49','P'),(507,'Usuario 51 iniciou partida de codigo 293.','2018-10-14 19:26:53','P'),(508,'Partida 293 finalizada_Pausada Data/Hora: 2018-10-14 19:26:57','2018-10-14 19:26:57','P'),(509,'Usuario 51 iniciou partida de codigo 294.','2018-10-14 19:27:53','P'),(510,'Partida 294 finalizada_Pausada Data/Hora: 2018-10-14 19:27:57','2018-10-14 19:27:57','P'),(511,'Usuario 51 iniciou partida de codigo 295.','2018-10-14 19:27:58','P'),(512,'Usuario 51 iniciou partida de codigo 296.','2018-10-14 19:28:04','P'),(513,'Partida 296 finalizada_Pausada Data/Hora: 2018-10-14 19:28:19','2018-10-14 19:28:19','P'),(514,'Usuario 51 iniciou partida de codigo 297.','2018-10-14 19:29:00','P'),(515,'Usuario 51 iniciou partida de codigo 298.','2018-10-14 19:29:04','P'),(516,'Usuario 51 iniciou partida de codigo 299.','2018-10-14 19:29:16','P'),(517,'Usuario 51 iniciou partida de codigo 300.','2018-10-14 19:29:19','P'),(518,'Usuario 51 iniciou partida de codigo 301.','2018-10-14 19:29:23','P'),(519,'Partida 301 finalizada_Pausada Data/Hora: 2018-10-14 19:29:24','2018-10-14 19:29:24','P'),(520,'Partida 301 finalizada_Pausada Data/Hora: 2018-10-14 19:29:27','2018-10-14 19:29:27','P'),(521,'Usuario 51 iniciou partida de codigo 302.','2018-10-14 19:29:28','P'),(522,'Usuario 51 iniciou partida de codigo 303.','2018-10-14 19:29:36','P'),(523,'Usuario 51 iniciou partida de codigo 304.','2018-10-14 19:29:39','P'),(524,'Usuario 51 iniciou partida de codigo 305.','2018-10-14 19:29:43','P'),(525,'Usuario 51 iniciou partida de codigo 306.','2018-10-14 19:29:48','P'),(526,'Partida 306 finalizada_Pausada Data/Hora: 2018-10-14 19:29:49','2018-10-14 19:29:49','P'),(527,'Usuario 51 iniciou partida de codigo 307.','2018-10-14 19:29:56','P'),(528,'Usuario 51 iniciou partida de codigo 308.','2018-10-14 19:30:04','P'),(529,'Partida 308 finalizada_Pausada Data/Hora: 2018-10-14 19:30:09','2018-10-14 19:30:09','P'),(530,'Usuario 51 iniciou partida de codigo 309.','2018-10-14 19:30:16','P'),(531,'Partida 309 finalizada_Pausada Data/Hora: 2018-10-14 19:30:26','2018-10-14 19:30:26','P'),(532,'Usuario 51 iniciou partida de codigo 310.','2018-10-14 19:33:14','P'),(533,'Usuario 51 iniciou partida de codigo 311.','2018-10-14 19:33:16','P'),(534,'Usuario 51 iniciou partida de codigo 312.','2018-10-14 19:33:20','P'),(535,'Usuario 51 iniciou partida de codigo 313.','2018-10-14 19:33:25','P'),(536,'Partida 313 finalizada_Pausada Data/Hora: 2018-10-14 19:33:26','2018-10-14 19:33:26','P'),(537,'Usuario 51 iniciou partida de codigo 314.','2018-10-14 19:33:33','P'),(538,'Partida 314 finalizada_Pausada Data/Hora: 2018-10-14 19:33:37','2018-10-14 19:33:37','P'),(539,'Usuario 51 iniciou partida de codigo 315.','2018-10-14 19:33:46','P'),(540,'Partida 315 finalizada_Pausada Data/Hora: 2018-10-14 19:33:49','2018-10-14 19:33:49','P'),(541,'Partida 315 finalizada_Pausada Data/Hora: 2018-10-14 19:33:56','2018-10-14 19:33:56','P'),(542,'Usuario 51 iniciou partida de codigo 316.','2018-10-14 19:33:58','P'),(543,'Usuario 51 iniciou partida de codigo 317.','2018-10-14 19:34:01','P'),(544,'Usuario 51 iniciou partida de codigo 318.','2018-10-14 19:34:05','P'),(545,'Usuario 51 iniciou partida de codigo 319.','2018-10-14 19:34:12','P'),(546,'Partida 319 finalizada_Pausada Data/Hora: 2018-10-14 19:34:13','2018-10-14 19:34:13','P'),(547,'Usuario 51 iniciou partida de codigo 320.','2018-10-14 19:34:21','P'),(548,'Partida 320 finalizada_Pausada Data/Hora: 2018-10-14 19:34:26','2018-10-14 19:34:26','P'),(549,'Usuario 51 iniciou partida de codigo 321.','2018-10-14 19:34:34','P'),(550,'Partida 321 finalizada_Pausada Data/Hora: 2018-10-14 19:34:46','2018-10-14 19:34:47','P'),(551,'Usuario 51 iniciou partida de codigo 322.','2018-10-14 19:35:20','P'),(552,'Usuario 51 iniciou partida de codigo 323.','2018-10-14 19:35:23','P'),(553,'Usuario 51 iniciou partida de codigo 324.','2018-10-14 19:35:26','P'),(554,'Partida 324 finalizada_Pausada Data/Hora: 2018-10-14 19:35:35','2018-10-14 19:35:35','P'),(555,'Usuario 51 iniciou partida de codigo 325.','2018-10-14 19:36:04','P'),(556,'Usuario 51 iniciou partida de codigo 326.','2018-10-14 19:36:06','P'),(557,'Usuario 51 iniciou partida de codigo 327.','2018-10-14 19:36:09','P'),(558,'Partida 327 finalizada_Pausada Data/Hora: 2018-10-14 19:36:11','2018-10-14 19:36:11','P'),(559,'Usuario 51 iniciou partida de codigo 328.','2018-10-14 19:37:23','P'),(560,'Usuario 51 iniciou partida de codigo 329.','2018-10-14 19:37:26','P'),(561,'Usuario 51 iniciou partida de codigo 330.','2018-10-14 19:37:28','P'),(562,'Usuario 51 iniciou partida de codigo 331.','2018-10-14 19:38:36','P'),(563,'Usuario 51 iniciou partida de codigo 332.','2018-10-14 19:38:53','P'),(564,'Usuario 51 iniciou partida de codigo 333.','2018-10-14 19:38:59','P'),(565,'Partida 333 finalizada_Pausada Data/Hora: 2018-10-14 19:39:04','2018-10-14 19:39:04','P'),(566,'Usuario 51 iniciou partida de codigo 334.','2018-10-14 19:39:05','P'),(567,'Usuario 51 iniciou partida de codigo 335.','2018-10-14 19:39:08','P'),(568,'Usuario 51 iniciou partida de codigo 336.','2018-10-14 19:39:13','P'),(569,'Usuario 51 iniciou partida de codigo 337.','2018-10-14 19:39:18','P'),(570,'Partida 337 finalizada_Pausada Data/Hora: 2018-10-14 19:39:21','2018-10-14 19:39:21','P'),(571,'Usuario 51 iniciou partida de codigo 338.','2018-10-14 19:39:45','P'),(572,'Usuario 51 iniciou partida de codigo 339.','2018-10-14 19:39:54','P'),(573,'Usuario 51 iniciou partida de codigo 340.','2018-10-14 19:39:58','P'),(574,'Partida 340 finalizada_Pausada Data/Hora: 2018-10-14 19:40:01','2018-10-14 19:40:01','P'),(575,'Usuario 51 iniciou partida de codigo 341.','2018-10-14 19:40:06','P'),(576,'Usuario 51 iniciou partida de codigo 342.','2018-10-14 19:40:50','P'),(577,'Usuario 51 iniciou partida de codigo 343.','2018-10-14 19:40:53','P'),(578,'Usuario 51 iniciou partida de codigo 344.','2018-10-14 19:40:57','P'),(579,'Usuario 51 iniciou partida de codigo 345.','2018-10-14 19:41:02','P'),(580,'Usuario 51 iniciou partida de codigo 346.','2018-10-14 19:42:52','P'),(581,'Usuario 51 iniciou partida de codigo 347.','2018-10-14 19:42:54','P'),(582,'Usuario 51 iniciou partida de codigo 348.','2018-10-14 19:43:09','P'),(583,'Usuario 51 iniciou partida de codigo 349.','2018-10-14 19:43:11','P'),(584,'Usuario 51 iniciou partida de codigo 350.','2018-10-14 19:43:34','P'),(585,'Usuario 51 iniciou partida de codigo 351.','2018-10-14 19:43:44','P'),(586,'Usuario 51 iniciou partida de codigo 352.','2018-10-14 19:45:10','P'),(587,'Usuario 51 iniciou partida de codigo 353.','2018-10-14 19:46:18','P'),(588,'Usuario 51 iniciou partida de codigo 354.','2018-10-14 19:46:20','P'),(589,'Usuario 51 iniciou partida de codigo 355.','2018-10-14 19:46:57','P'),(590,'Usuario 51 iniciou partida de codigo 356.','2018-10-14 19:46:59','P'),(591,'Usuario 51 iniciou partida de codigo 357.','2018-10-14 19:47:03','P'),(592,'Usuario 51 iniciou partida de codigo 358.','2018-10-14 19:51:27','P'),(593,'Partida 358 finalizada_Pausada Data/Hora: 2018-10-14 19:51:49','2018-10-14 19:51:49','P'),(594,'Usuario 51 iniciou partida de codigo 359.','2018-10-14 19:52:02','P'),(595,'Usuario 51 iniciou partida de codigo 360.','2018-10-14 19:52:05','P'),(596,'Usuario 51 iniciou partida de codigo 361.','2018-10-14 19:52:10','P'),(597,'Partida 361 finalizada_Pausada Data/Hora: 2018-10-14 19:52:12','2018-10-14 19:52:12','P'),(598,'Partida 361 Reiniciada.','2018-10-14 19:54:37','P'),(599,'Usuario 51 iniciou partida de codigo 362.','2018-10-14 19:54:44','P'),(600,'Partida 362 finalizada_Pausada Data/Hora: 2018-10-14 19:54:51','2018-10-14 19:54:51','P'),(601,'Usuario 51 iniciou partida de codigo 363.','2018-10-14 19:54:53','P'),(602,'Usuario 51 iniciou partida de codigo 364.','2018-10-14 19:54:59','P'),(603,'Partida 364 Reiniciada.','2018-10-14 19:55:03','P'),(604,'Usuario 51 iniciou partida de codigo 365.','2018-10-14 19:56:32','P'),(605,'Usuario 51 iniciou partida de codigo 366.','2018-10-14 19:56:34','P'),(606,'Partida 366 Reiniciada.','2018-10-14 19:56:41','P'),(607,'Usuario 51 iniciou partida de codigo 367.','2018-10-14 19:57:54','P'),(608,'Usuario 51 iniciou partida de codigo 368.','2018-10-14 19:57:56','P'),(609,'Partida 368 finalizada_Pausada Data/Hora: 2018-10-14 19:57:56','2018-10-14 19:57:56','P'),(610,'Partida 368 finalizada_Pausada Data/Hora: 2018-10-14 19:58:02','2018-10-14 19:58:02','P'),(611,'Partida 368 Reiniciada.','2018-10-14 19:58:03','P');
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
INSERT INTO `usuario` VALUES (51,'Kevin Ruan Soares','kevin_soares@estudante.sc.senai.br','Kevin','202cb962ac59075b964b07152d234b70','2000-02-21','2018-09-30 23:35:05','A'),(52,'Sabrina Marques','sabrina@gmail.com','Marques','202cb962ac59075b964b07152d234b70','2001-01-21','2018-09-30 23:36:52','J'),(53,'Felipe','Felipe@gmail.com','Felipe','202cb962ac59075b964b07152d234b70','2000-02-21','2018-09-30 23:37:11','J'),(54,'teste01','teste01@gmail.com','teste01','202cb962ac59075b964b07152d234b70','2000-02-21','2018-09-30 23:37:36','J'),(55,'teste02','teste02@gmail.com','teste02','202cb962ac59075b964b07152d234b70','2000-02-21','2018-09-30 23:37:49','J'),(56,'teste03','teste03@gmail.com','teste03','202cb962ac59075b964b07152d234b70','2000-02-21','2018-09-30 23:38:05','J'),(57,'teste04','teste04@gmail.com','teste04','202cb962ac59075b964b07152d234b70','2000-02-21','2018-09-30 23:38:20','J'),(58,'teste05','teste05@gmail.com','teste05','202cb962ac59075b964b07152d234b70','2000-02-21','2018-09-30 23:38:49','J'),(59,'teste06','teste06@gmail.com','teste06','202cb962ac59075b964b07152d234b70','2000-02-21','2018-09-30 23:39:15','J'),(61,'teste07','teste07@gmail.com','teste07','202cb962ac59075b964b07152d234b70','2000-02-21','2018-09-30 23:39:39','J');
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
/*!50003 DROP FUNCTION IF EXISTS `remove_accents` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `remove_accents`(`str` TEXT) RETURNS text CHARSET latin1
    NO SQL
    DETERMINISTIC
    SQL SECURITY INVOKER
BEGIN

    SET str = REPLACE(str,'Š','S');
    SET str = REPLACE(str,'š','s');
    SET str = REPLACE(str,'Ð','Dj');
    SET str = REPLACE(str,'Ž','Z');
    SET str = REPLACE(str,'ž','z');
    SET str = REPLACE(str,'À','A');
    SET str = REPLACE(str,'Á','A');
    SET str = REPLACE(str,'Â','A');
    SET str = REPLACE(str,'Ã','A');
    SET str = REPLACE(str,'Ä','A');
    SET str = REPLACE(str,'Å','A');
    SET str = REPLACE(str,'Æ','A');
    SET str = REPLACE(str,'Ç','C');
    SET str = REPLACE(str,'È','E');
    SET str = REPLACE(str,'É','E');
    SET str = REPLACE(str,'Ê','E');
    SET str = REPLACE(str,'Ë','E');
    SET str = REPLACE(str,'Ì','I');
    SET str = REPLACE(str,'Í','I');
    SET str = REPLACE(str,'Î','I');
    SET str = REPLACE(str,'Ï','I');
    SET str = REPLACE(str,'Ñ','N');
    SET str = REPLACE(str,'Ò','O');
    SET str = REPLACE(str,'Ó','O');
    SET str = REPLACE(str,'Ô','O');
    SET str = REPLACE(str,'Õ','O');
    SET str = REPLACE(str,'Ö','O');
    SET str = REPLACE(str,'Ø','O');
    SET str = REPLACE(str,'Ù','U');
    SET str = REPLACE(str,'Ú','U');
    SET str = REPLACE(str,'Û','U');
    SET str = REPLACE(str,'Ü','U');
    SET str = REPLACE(str,'Ý','Y');
    SET str = REPLACE(str,'Þ','B');
    SET str = REPLACE(str,'ß','Ss');
    SET str = REPLACE(str,'à','a');
    SET str = REPLACE(str,'á','a');
    SET str = REPLACE(str,'â','a');
    SET str = REPLACE(str,'ã','a');
    SET str = REPLACE(str,'ä','a');
    SET str = REPLACE(str,'å','a');
    SET str = REPLACE(str,'æ','a');
    SET str = REPLACE(str,'ç','c');
    SET str = REPLACE(str,'è','e');
    SET str = REPLACE(str,'é','e');
    SET str = REPLACE(str,'ê','e');
    SET str = REPLACE(str,'ë','e');
    SET str = REPLACE(str,'ì','i');
    SET str = REPLACE(str,'í','i');
    SET str = REPLACE(str,'î','i');
    SET str = REPLACE(str,'ï','i');
    SET str = REPLACE(str,'ð','o');
    SET str = REPLACE(str,'ñ','n');
    SET str = REPLACE(str,'ò','o');
    SET str = REPLACE(str,'ó','o');
    SET str = REPLACE(str,'ô','o');
    SET str = REPLACE(str,'õ','o');
    SET str = REPLACE(str,'ö','o');
    SET str = REPLACE(str,'ø','o');
    SET str = REPLACE(str,'ù','u');
    SET str = REPLACE(str,'ú','u');
    SET str = REPLACE(str,'û','u');
    SET str = REPLACE(str,'ý','y');
    SET str = REPLACE(str,'ý','y');
    SET str = REPLACE(str,'þ','b');
    SET str = REPLACE(str,'ÿ','y');
    SET str = REPLACE(str,'ƒ','f');


    RETURN str;
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

-- Dump completed on 2018-10-18  0:08:58
