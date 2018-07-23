-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: care4waste
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
-- Table structure for table `clasifications`
--

DROP TABLE IF EXISTS `clasifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `clasifications` (
  `clasification_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `clasification_day` int(11) DEFAULT NULL,
  `clasification_name` varchar(30) DEFAULT NULL,
  `clasification_user` varchar(30) DEFAULT NULL,
  `clasification_weight` float DEFAULT NULL,
  `clasification_date` datetime DEFAULT NULL,
  `clasificacion_plasticos_weight` varchar(45) DEFAULT NULL,
  `clasificacion_cartones_weight` varchar(45) DEFAULT NULL,
  `clasificacion_vidrios_weight` varchar(45) DEFAULT NULL,
  `clasificacion_papel_weight` varchar(45) DEFAULT NULL,
  `clasificacion_madera_weight` varchar(45) DEFAULT NULL,
  `clasificacion_username` varchar(45) DEFAULT NULL,
  `clasificacion_metales_weight` varchar(45) DEFAULT NULL,
  `clasification_total_people` int(11) DEFAULT NULL,
  PRIMARY KEY (`clasification_id`)
) ENGINE=InnoDB AUTO_INCREMENT=106 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clasifications`
--

LOCK TABLES `clasifications` WRITE;
/*!40000 ALTER TABLE `clasifications` DISABLE KEYS */;
/*!40000 ALTER TABLE `clasifications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clasifications_history`
--

DROP TABLE IF EXISTS `clasifications_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `clasifications_history` (
  `idclasifications_history` int(11) NOT NULL,
  `clasifications_history_day` int(11) DEFAULT NULL,
  `clasifications_history_name` varchar(30) DEFAULT NULL,
  `clasifications_history_user` varchar(30) DEFAULT NULL,
  `clasifications_history_weight` float DEFAULT NULL,
  `clasifications_history_date` datetime DEFAULT NULL,
  `clasifications_history_plasticos_weight` varchar(45) DEFAULT NULL,
  `clasifications_histor_cartones_weight` varchar(45) DEFAULT NULL,
  `clasifications_history_vidrios_weight` varchar(45) DEFAULT NULL,
  `clasifications_history_papel_weight` varchar(45) DEFAULT NULL,
  `clasifications_history_madera_weight` varchar(45) DEFAULT NULL,
  `clasifications_history_username` varchar(45) DEFAULT NULL,
  `clasifications_history_metales_weight` varchar(45) DEFAULT NULL,
  `clasifications_history_total_people` int(11) DEFAULT NULL,
  PRIMARY KEY (`idclasifications_history`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clasifications_history`
--

LOCK TABLES `clasifications_history` WRITE;
/*!40000 ALTER TABLE `clasifications_history` DISABLE KEYS */;
INSERT INTO `clasifications_history` VALUES (1,0,NULL,'speralta',NULL,'2018-03-24 05:17:56',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(2,0,NULL,'\'speralta\'',NULL,'2018-03-24 05:29:49',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3,0,NULL,'speralta',NULL,'2018-03-24 05:30:13',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4,1,'organico','jesusl',NULL,'2018-03-24 05:30:13',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(5,0,NULL,'speralta',NULL,'2018-03-24 06:01:46',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(6,1,NULL,'jesusl',NULL,'2018-03-24 07:19:35',NULL,'100','500',NULL,'300',NULL,'200',NULL),(7,1,NULL,'jesusl',NULL,'2018-03-24 07:20:39',NULL,'100','500',NULL,'300',NULL,'200',NULL),(8,1,NULL,'jesusl',NULL,'2018-03-24 07:20:41',NULL,'100','500',NULL,'300',NULL,'200',NULL),(9,1,NULL,'jesusl',NULL,'2018-03-24 07:20:42',NULL,'100','500',NULL,'300',NULL,'200',NULL),(10,1,NULL,'jesusl',NULL,'2018-03-24 07:20:44',NULL,'100','500',NULL,'300',NULL,'200',NULL),(11,1,NULL,'jesusl',NULL,'2018-03-24 07:20:58',NULL,'100','500',NULL,'300',NULL,'200',NULL),(12,0,NULL,'jesusl',NULL,'2018-03-24 08:04:09',NULL,'undefined','100','300','600',NULL,'500',NULL),(13,0,NULL,'jesusl',NULL,'2018-03-24 08:06:06',NULL,'undefined','100','300','600',NULL,'500',NULL),(14,0,NULL,'undefined',NULL,'2018-03-24 08:07:53',NULL,'undefined','1','3','6',NULL,'5',NULL),(15,0,NULL,'undefined',NULL,'2018-03-24 08:08:29',NULL,'2','1','3','6',NULL,'5',NULL),(16,0,NULL,'jesusl',NULL,'2018-03-24 08:09:43',NULL,'2','1','3','6',NULL,'5',NULL),(17,0,NULL,'jesusl',NULL,'2018-03-24 08:10:35',NULL,'undefined','1','3','6',NULL,'5',NULL),(18,0,NULL,'undefined',NULL,'2018-03-24 08:12:38',NULL,'undefined','8','6','3',NULL,'4',NULL),(19,0,NULL,'undefined',NULL,'2018-03-24 08:14:36',NULL,'4','5','3','0',NULL,'1',NULL),(20,0,NULL,'jesusl',NULL,'2018-03-24 08:15:49',NULL,'7','6','8','11',NULL,'10',NULL),(21,0,NULL,'jesusl',NULL,'2018-03-24 08:19:38',NULL,'undefined','1','3','6',NULL,'5',NULL),(22,0,NULL,'Jesusl',NULL,'2018-03-24 08:28:00',NULL,'undefined','6','8','11',NULL,'10',NULL),(23,0,NULL,'jesusl',NULL,'2018-03-24 19:19:32',NULL,'undefined','13','15','18',NULL,'17',NULL),(24,0,NULL,'jesusl',NULL,'2018-03-24 19:42:16',NULL,'undefined','18','20','23',NULL,'22',NULL),(25,0,NULL,'Jesusl',NULL,'2018-03-24 19:55:48',NULL,'undefined','30','32','35',NULL,'34',NULL),(26,0,NULL,'jperier',NULL,'2018-03-24 23:11:14',NULL,'undefined','5','7','9',NULL,'9',NULL),(27,0,NULL,'jperier',NULL,'2018-03-24 23:12:28',NULL,'undefined','100','120','150',NULL,'140',NULL),(28,0,NULL,'jesusl',NULL,'2018-03-25 06:00:57',NULL,'undefined','60','80','80',NULL,'40',NULL),(29,0,NULL,'undefined',NULL,'2018-03-25 06:14:32',NULL,'300','200','400','700',NULL,'600',NULL),(30,0,NULL,'jesusl',NULL,'2018-03-25 06:15:08',NULL,'600','500','700','1000',NULL,'900',NULL),(31,0,NULL,'undefined',NULL,'2018-03-25 06:35:02',NULL,'20','10','30','60',NULL,'50',NULL),(32,0,NULL,'jesusl',NULL,'2018-03-25 09:19:53',NULL,'undefined','undefined','undefined','undefined',NULL,'undefined',NULL),(33,0,NULL,'undefined',NULL,'2018-03-25 09:21:52',NULL,'7','8','6','3',NULL,'4',NULL),(34,0,NULL,'undefined',NULL,'2018-03-25 09:26:49',NULL,'undefined','undefined','undefined','undefined',NULL,'undefined',NULL),(35,0,NULL,'undefined',NULL,'2018-03-25 09:31:07',NULL,'undefined','undefined','undefined','undefined',NULL,'undefined',NULL),(36,0,NULL,'undefined',NULL,'2018-03-25 09:31:51',NULL,'undefined','undefined','undefined','undefined',NULL,'undefined',NULL),(37,0,NULL,'undefined',NULL,'2018-03-25 09:33:14',NULL,'undefined','undefined','undefined','undefined',NULL,'undefined',NULL),(38,0,NULL,'undefined',NULL,'2018-03-25 10:21:58',NULL,'undefined','undefined','undefined','undefined',NULL,'undefined',NULL),(39,0,NULL,'undefined',NULL,'2018-03-25 10:24:36',NULL,'undefined','undefined','undefined','undefined',NULL,'undefined',NULL),(40,0,NULL,'undefined',NULL,'2018-03-25 10:26:27',NULL,'undefined','undefined','undefined','undefined',NULL,'undefined',NULL),(41,0,NULL,'undefined',NULL,'2018-03-25 17:32:30',NULL,'undefined','undefined','undefined','undefined',NULL,'undefined',NULL),(42,0,NULL,'undefined',NULL,'2018-03-25 17:34:31',NULL,'19','18','20','23',NULL,'22',NULL),(43,0,NULL,'undefined',NULL,'2018-03-26 05:43:51',NULL,'49','50','59','38',NULL,'96',NULL),(44,0,NULL,'undefined',NULL,'2018-03-26 06:19:10',NULL,'2312','503','321','3',NULL,'321',NULL),(45,0,NULL,'undefined',NULL,'2018-03-26 06:25:32',NULL,'50','39','48','80',NULL,'38',NULL),(46,0,NULL,'jesusl',NULL,'2018-03-26 06:27:59',NULL,'20','10','30','60',NULL,'50',NULL),(47,0,NULL,'undefined',NULL,'2018-03-26 06:28:35',NULL,'48','58','5','24',NULL,'65',NULL),(48,0,NULL,'undefined',NULL,'2018-03-26 06:42:54',NULL,'undefined','undefined','undefined','undefined',NULL,'undefined',NULL),(49,0,NULL,'undefined',NULL,'2018-03-26 07:41:11',NULL,'52','59','55','50',NULL,'26',NULL),(50,0,NULL,'Jesusl',NULL,'2018-03-26 07:43:00',NULL,'15','12','16','20',NULL,'18',NULL),(51,0,NULL,'sam',NULL,'2018-03-26 07:43:01',NULL,'6','5','8','88',NULL,'69',NULL),(52,2,NULL,'sam',NULL,'2018-03-26 08:14:31',NULL,'10','21','80','35',NULL,'25',NULL),(53,3,NULL,'sam',NULL,'2018-03-26 08:17:33',NULL,'10','21','80','35',NULL,'25',NULL),(54,4,NULL,'sam',NULL,'2018-03-26 08:18:16',NULL,'10','21','80','35',NULL,'25',NULL),(55,23,NULL,'jesusl',NULL,'2018-03-26 08:25:12',NULL,'1500','1000','1600','2000',NULL,'1900',NULL),(56,1,NULL,'Melisad',NULL,'2018-03-26 14:44:07',NULL,'20','10','30','60',NULL,'50',NULL),(57,3,NULL,'jperier',NULL,'2018-03-26 15:02:15',NULL,'4000','3000','5000','8000',NULL,'7000',NULL),(58,24,NULL,'jesusl',NULL,'2018-03-26 15:07:59',NULL,'600','500','700','1000',NULL,'900',NULL),(59,23,NULL,'undefined',NULL,'2018-03-26 15:09:15',NULL,'20','90','25','25',NULL,'3554',NULL),(60,25,NULL,'jesusl',NULL,'2018-03-26 15:09:49',NULL,'30','25','35','50',NULL,'45',NULL),(61,26,NULL,'jesusl',NULL,'2018-03-26 16:00:35',NULL,'20','10','30','60',NULL,'50',NULL),(62,4,NULL,'jperier',NULL,'2018-03-26 18:07:56',NULL,'24','23','25','28',NULL,'27',NULL),(63,1,NULL,'',NULL,'0000-00-00 00:00:00',NULL,'','','','',NULL,'',0),(64,1,NULL,'',NULL,'0000-00-00 00:00:00',NULL,'','','','',NULL,'',0),(65,1,NULL,'',NULL,'0000-00-00 00:00:00',NULL,'','','','',NULL,'',0),(66,1,NULL,'',NULL,'0000-00-00 00:00:00',NULL,'','','','',NULL,'',0),(67,27,NULL,'jesusl',NULL,'2018-03-26 21:10:21',NULL,'3','2','4','7',NULL,'6',1),(68,28,NULL,'Jesusl',NULL,'2018-03-26 21:30:30',NULL,'3','2','4','7',NULL,'6',1),(69,5,NULL,'jperier',NULL,'2018-03-26 21:31:42',NULL,'12','25','33','25',NULL,'33',12),(70,6,NULL,'jperier',NULL,'2018-03-26 22:35:13',NULL,'2','6','3','3',NULL,'3',5),(71,5,NULL,'sam',NULL,'2018-03-28 18:30:55',NULL,'undefined','undefined','undefined','undefined',NULL,'undefined',0),(72,7,NULL,'jperier',NULL,'2018-03-30 02:00:36',NULL,'30','20','40','70',NULL,'60',10),(73,24,NULL,'undefined',NULL,'2018-03-30 07:49:38',NULL,'undefined','undefined','undefined','undefined',NULL,'undefined',0),(74,29,NULL,'jesusl',NULL,'2018-03-30 07:59:59',NULL,'20','10','30','60',NULL,'50',52),(75,30,NULL,'jesusl',NULL,'2018-03-30 08:02:31',NULL,'30','20','40','70',NULL,'60',4),(76,31,NULL,'jesusl',NULL,'2018-03-30 17:10:44',NULL,'30','20','40','70',NULL,'60',10),(77,25,NULL,'undefined',NULL,'2018-03-31 09:46:12',NULL,'undefined','undefined','undefined','undefined',NULL,'undefined',0),(78,26,NULL,'undefined',NULL,'2018-03-31 09:47:54',NULL,'undefined','undefined','undefined','undefined',NULL,'undefined',0),(79,27,NULL,'undefined',NULL,'2018-03-31 09:50:24',NULL,'undefined','undefined','undefined','undefined',NULL,'undefined',0),(80,28,NULL,'undefined',NULL,'2018-03-31 09:50:24',NULL,'undefined','undefined','undefined','undefined',NULL,'undefined',0),(81,29,NULL,'undefined',NULL,'2018-03-31 09:51:33',NULL,'undefined','undefined','undefined','undefined',NULL,'undefined',0),(82,30,NULL,'undefined',NULL,'2018-03-31 10:00:25',NULL,'undefined','undefined','undefined','undefined',NULL,'undefined',0),(83,31,NULL,'undefined',NULL,'2018-03-31 10:05:26',NULL,'undefined','undefined','undefined','undefined',NULL,'undefined',0),(84,32,NULL,'undefined',NULL,'2018-03-31 20:19:34',NULL,'20','10','30','60',NULL,'50',5),(85,33,NULL,'undefined',NULL,'2018-03-31 20:35:48',NULL,'40','30','50','80',NULL,'70',20),(86,34,NULL,'undefined',NULL,'2018-03-31 20:47:37',NULL,'13','12','14','17',NULL,'16',10),(87,32,NULL,'jesusl',NULL,'2018-03-31 22:00:03',NULL,'20','15','25','40',NULL,'35',5),(88,33,NULL,'jesusl',NULL,'2018-03-31 22:00:03',NULL,'20','15','25','40',NULL,'35',5),(89,1,NULL,'mdisla',NULL,'2018-03-31 22:37:51',NULL,'9','6','10','90',NULL,'65',5),(90,2,NULL,'mdisla',NULL,'2018-03-31 22:43:30',NULL,'9','6','10','90',NULL,'65',5),(91,1,NULL,'null',NULL,'2018-03-31 23:06:02',NULL,'null','null','null','null',NULL,'null',0),(92,34,NULL,'jesusl',NULL,'2018-03-31 23:06:02',NULL,'6','5','7','10',NULL,'9',4),(93,35,NULL,'jesusl',NULL,'2018-03-31 23:08:47',NULL,'null','null','null','null',NULL,'null',0),(94,3,NULL,'mdisla',NULL,'2018-03-31 23:10:14',NULL,'11','10','12','15',NULL,'14',9),(95,4,NULL,'mdisla',NULL,'2018-03-31 23:13:52',NULL,'11','10','12','15',NULL,'14',9),(96,5,NULL,'mdisla',NULL,'2018-03-31 23:13:52',NULL,'98','6','521','78',NULL,'12',3),(97,36,NULL,'jesusl',NULL,'2018-04-01 23:23:06',NULL,'92','80','14','51548',NULL,'685',50),(98,37,NULL,'jesusl',NULL,'2018-04-01 23:23:06',NULL,'2000','1000','3000','6000',NULL,'5000',500),(99,38,NULL,'Jesusl',NULL,'2018-04-01 23:46:36',NULL,'44','22','78','882',NULL,'824',5),(100,2,NULL,'null',NULL,'2018-04-01 23:46:36',NULL,'null','null','null','null',NULL,'null',0),(101,3,NULL,'null',NULL,'2018-04-01 23:56:53',NULL,'null','null','null','null',NULL,'null',0),(102,39,NULL,'Jesusl',NULL,'2018-04-01 23:56:53',NULL,'55','85','559','89',NULL,'90088',10),(103,4,NULL,'null',NULL,'2018-04-01 23:56:54',NULL,'null','null','null','null',NULL,'null',0),(104,40,NULL,'Jesusl',NULL,'2018-04-01 23:56:54',NULL,'55','85','559','89',NULL,'90088',10),(105,2312,'2','324',NULL,'0000-00-00 00:00:00',NULL,'231','231','321','`12','3','123',23);
/*!40000 ALTER TABLE `clasifications_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `user_type` int(1) NOT NULL COMMENT '0=no, 1=admin',
  `user_username` varchar(20) NOT NULL,
  `user_name` varchar(50) NOT NULL,
  `user_lastname` varchar(50) NOT NULL,
  `user_password` varchar(500) NOT NULL,
  `user_email` varchar(50) NOT NULL,
  `user_gender` varchar(50) NOT NULL,
  `user_status` int(1) NOT NULL COMMENT '0=blocked,1=active',
  `user_rol` varchar(25) NOT NULL COMMENT 'module permissions separated by coma, * = all',
  `user_city` text NOT NULL,
  `user_address` varchar(45) NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'2018-03-21 23:41:00',0,'sam','','','','','',1,'','',''),(2,'0000-00-00 00:00:00',0,'\'samuy\'','\'samuelito\'','\'peralta mateo\'','0','\'peraltas1@hotmail.com\'','\'masculino\'',0,'NULL','\'santo domingo\'','\'prados de san luis\''),(3,'0000-00-00 00:00:00',0,'\'samuy\'','\'samuelito\'','\'peralta mateo\'','0','\'peraltas1@hotmail.com\'','\'masculino\'',0,'NULL','\'santo domingo\'','\'prados de san luis\''),(4,'0000-00-00 00:00:00',0,'\'samuy\'','\'samuelito\'','\'peralta mateo\'','\'RThSRGhXU0ZqYzBDNllXSHVMRU9KZz09\'','\'peraltas1@hotmail.com\'','\'masculino\'',0,'NULL','\'santo domingo\'','\'prados de san luis\''),(5,'2018-03-22 08:28:06',0,'\'samuy\'','\'samuelito\'','\'peralta mateo\'','\'RThSRGhXU0ZqYzBDNllXSHVMRU9KZz09\'','\'peraltas1@hotmail.com\'','\'masculino\'',0,'NULL','\'santo domingo\'','\'prados de san luis\''),(6,'2018-03-22 08:28:30',0,'\'samuy\'','\'samuelito\'','\'peralta mateo\'','\'RThSRGhXU0ZqYzBDNllXSHVMRU9KZz09\'','\'peraltas1@hotmail.com\'','\'masculino\'',0,'NULL','\'santo domingo\'','\'prados de san luis\''),(7,'2018-03-22 08:38:18',0,'\'samuy\'','\'samuelito\'','\'peralta mateo\'','\'RThSRGhXU0ZqYzBDNllXSHVMRU9KZz09\'','\'peraltas1@hotmail.com\'','\'masculino\'',0,'NULL','\'santo domingo\'','\'prados de san luis\''),(8,'2018-03-22 08:38:20',0,'\'samuy\'','\'samuelito\'','\'peralta mateo\'','\'RThSRGhXU0ZqYzBDNllXSHVMRU9KZz09\'','\'peraltas1@hotmail.com\'','\'masculino\'',0,'NULL','\'santo domingo\'','\'prados de san luis\''),(9,'2018-03-22 08:40:20',0,'\'samuy\'','\'samuelito\'','\'peralta mateo\'','\'RThSRGhXU0ZqYzBDNllXSHVMRU9KZz09\'','\'peraltas1@hotmail.com\'','\'masculino\'',0,'NULL','\'santo domingo\'','\'prados de san luis\''),(10,'2018-03-22 08:40:20',0,'\'samuy\'','\'samuelito\'','\'peralta mateo\'','\'RThSRGhXU0ZqYzBDNllXSHVMRU9KZz09\'','\'peraltas1@hotmail.com\'','\'masculino\'',0,'NULL','\'santo domingo\'','\'prados de san luis\''),(11,'2018-03-22 08:40:45',0,'\'samuy\'','\'samuelito\'','\'peralta mateo\'','\'RThSRGhXU0ZqYzBDNllXSHVMRU9KZz09\'','\'peraltas1@hotmail.com\'','\'masculino\'',0,'NULL','\'santo domingo\'','\'prados de san luis\''),(12,'2018-03-22 08:41:38',0,'\'samuy\'','\'samuelito\'','\'peralta mateo\'','\'RThSRGhXU0ZqYzBDNllXSHVMRU9KZz09\'','\'peraltas1@hotmail.com\'','\'masculino\'',0,'NULL','\'santo domingo\'','\'prados de san luis\''),(13,'2018-03-22 08:42:31',0,'\'samuy\'','\'samuelito\'','\'peralta mateo\'','\'RThSRGhXU0ZqYzBDNllXSHVMRU9KZz09\'','\'peraltas1@hotmail.com\'','\'masculino\'',0,'NULL','\'santo domingo\'','\'prados de san luis\''),(14,'2018-03-22 08:43:52',0,'\'samuy\'','\'samuelito\'','\'peralta mateo\'','\'RThSRGhXU0ZqYzBDNllXSHVMRU9KZz09\'','\'peraltas1@hotmail.com\'','\'masculino\'',0,'NULL','\'santo domingo\'','\'prados de san luis\''),(15,'2018-03-22 08:43:54',0,'\'samuy\'','\'samuelito\'','\'peralta mateo\'','\'RThSRGhXU0ZqYzBDNllXSHVMRU9KZz09\'','\'peraltas1@hotmail.com\'','\'masculino\'',0,'NULL','\'santo domingo\'','\'prados de san luis\''),(16,'2018-03-22 08:44:04',0,'\'samuy\'','\'samuelito\'','\'peralta mateo\'','\'RThSRGhXU0ZqYzBDNllXSHVMRU9KZz09\'','\'peraltas1@hotmail.com\'','\'masculino\'',0,'NULL','\'santo domingo\'','\'prados de san luis\''),(17,'2018-03-22 08:47:19',0,'\'samuy\'','\'samuelito\'','\'peralta mateo\'','\'RThSRGhXU0ZqYzBDNllXSHVMRU9KZz09\'','\'peraltas1@hotmail.com\'','\'masculino\'',0,'NULL','\'santo domingo\'','\'prados de san luis\''),(18,'2018-03-22 08:47:20',0,'\'samuy\'','\'samuelito\'','\'peralta mateo\'','\'RThSRGhXU0ZqYzBDNllXSHVMRU9KZz09\'','\'peraltas1@hotmail.com\'','\'masculino\'',0,'NULL','\'santo domingo\'','\'prados de san luis\''),(19,'2018-03-22 08:47:20',0,'\'samuy\'','\'samuelito\'','\'peralta mateo\'','\'RThSRGhXU0ZqYzBDNllXSHVMRU9KZz09\'','\'peraltas1@hotmail.com\'','\'masculino\'',0,'NULL','\'santo domingo\'','\'prados de san luis\''),(20,'2018-03-22 08:47:21',0,'\'samuy\'','\'samuelito\'','\'peralta mateo\'','\'RThSRGhXU0ZqYzBDNllXSHVMRU9KZz09\'','\'peraltas1@hotmail.com\'','\'masculino\'',0,'NULL','\'santo domingo\'','\'prados de san luis\''),(21,'2018-03-22 08:48:36',0,'\'samuy\'','\'samuelito\'','\'peralta mateo\'','\'RThSRGhXU0ZqYzBDNllXSHVMRU9KZz09\'','\'peraltas1@hotmail.com\'','\'masculino\'',0,'NULL','\'santo domingo\'','\'prados de san luis\''),(22,'2018-03-22 08:51:25',0,'\'samuy\'','\'samuelito\'','\'peralta mateo\'','\'RThSRGhXU0ZqYzBDNllXSHVMRU9KZz09\'','\'peraltas1@hotmail.com\'','\'masculino\'',0,'NULL','\'santo domingo\'','\'prados de san luis\''),(23,'2018-03-22 08:51:54',0,'samuy','samuelito','peralta mateo','\'RThSRGhXU0ZqYzBDNllXSHVMRU9KZz09\'','\'peraltas1@hotmail.com\'','\'masculino\'',0,'NULL','\'santo domingo\'','\'prados de san luis\''),(24,'2018-03-22 08:52:09',0,'samuy','samuelito','peralta mateo','RThSRGhXU0ZqYzBDNllXSHVMRU9KZz09','peraltas1@hotmail.com','masculino',1,'','santo domingo','prados de san luis'),(25,'2018-03-24 12:03:14',0,'jesusl','jesus','luciano','WDFRS1grQWhYSkxpNzF3eUljdjhGUT09','luciano-peralta@hotmail.com','undefined',1,'','santo domingo','calle m'),(26,'2018-03-25 00:43:16',0,'jperier','Julio','Perier','WjlEeFVzUnYwNDNYZXQzRnhnVW92QT09','jperier@ufhec.edu.do','undefined',1,'','santo domingo oeste','ufhec'),(27,'2018-03-25 00:43:26',0,'null','null','null','bEZtL0dYK3VnNlFiUjF5bnZRdmJFdz09','null','null',1,'','null','null'),(28,'2018-03-26 10:22:04',0,'samuelp0132','Samuel','Peralta','WWZzTDRjbkY2QTU2Vjh5cUl6Q2RMQT09','peraltas1@hotmail.com','undefined',1,'','Santo domingo','prados'),(29,'2018-03-26 10:45:10',0,'mdisla','melissa','Disla','WjlEeFVzUnYwNDNYZXQzRnhnVW92QT09','mdisla@adess.gob.do','undefined',1,'','santo domingo','Calle girasol'),(30,'2018-03-26 10:55:50',0,'melisad','andrea','disla','WjlEeFVzUnYwNDNYZXQzRnhnVW92QT09','LAMELI@rabiosa.com','Female',1,'','santo domingo','calle ninguna'),(31,'2018-03-30 06:04:28',0,'test','test','test 2','WjlEeFVzUnYwNDNYZXQzRnhnVW92QT09','cisconetacadnet@gmail.com','Male',1,'','o','test'),(32,'2018-04-02 03:43:27',0,'Anova','Anthony','Nova','WjlEeFVzUnYwNDNYZXQzRnhnVW92QT09','Thenova29@hotmail.com','Male',1,'','Santo domingo','Calle el sartico');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'care4waste'
--

--
-- Dumping routines for database 'care4waste'
--
/*!50003 DROP PROCEDURE IF EXISTS `GetAllProducts` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `GetAllProducts`()
BEGIN
DECLARE myvar INT;
DECLARE myvar2 INT;
DECLARE myvar3 VARCHAR(30);
DECLARE myvar4 VARCHAR(30);
DECLARE myvar5 DATETIME;
DECLARE myvar6 VARCHAR(45);
DECLARE myvar7 VARCHAR(45);
DECLARE myvar8 VARCHAR(45);
DECLARE myvar9 VARCHAR(45);
DECLARE myvar10 VARCHAR(45);
DECLARE myvar11 VARCHAR(45);
DECLARE myvar12 VARCHAR(45);



SELECT clasification_id INTO myvar FROM clasifications limit 1;

INSERT INTO clasifications_history (idclasifications_history,clasifications_history_day, 
 clasifications_history_name,
 clasifications_history_user,clasifications_history_date,
 clasifications_history_plasticos_weight,clasifications_histor_cartones_weight,
 clasifications_history_vidrios_weight,clasifications_history_papel_weight,
 clasifications_history_madera_weight,clasifications_history_username,
 clasifications_history_metales_weight) 
VALUES (myvar);

   END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `MoveRecordsToHistory` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `MoveRecordsToHistory`()
BEGIN
INSERT INTO clasifications_history(
idclasifications_history,
clasifications_history_day,
clasifications_history_name,
clasifications_history_user,
clasifications_history_date,
clasifications_histor_cartones_weight,
clasifications_history_vidrios_weight,
clasifications_history_papel_weight,
clasifications_history_madera_weight,
clasifications_history_username,
clasifications_history_metales_weight,
clasifications_history_total_people)
SELECT clasification_id, clasification_day,clasification_name,clasification_user,
clasification_date,clasificacion_plasticos_weight,clasificacion_cartones_weight,clasificacion_vidrios_weight
clasificacion_papel_weight,clasificacion_madera_weight,clasificacion_username,clasificacion_metales_weight,clasification_total_people FROM clasifications;
   
   BEGIN
	delete from clasifications;
	END;


   END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-04-02  1:12:50
