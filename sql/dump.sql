-- MySQL dump 10.13  Distrib 5.5.49, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: desafioolx
-- ------------------------------------------------------
-- Server version	5.5.49-0ubuntu0.14.04.1

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
-- Table structure for table `olx_call`
--

DROP TABLE IF EXISTS `olx_call`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `olx_call` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `regionID` int(11) unsigned NOT NULL,
  `type` enum('phone','email','chat') NOT NULL,
  `reason` enum('doubt','suggestion','praise') NOT NULL,
  `details` varchar(1024) NOT NULL,
  `created` datetime NOT NULL,
  `status` enum('active','inactive') NOT NULL,
  PRIMARY KEY (`id`),
  KEY `createdActive` (`created`,`status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `olx_call`
--

LOCK TABLES `olx_call` WRITE;
/*!40000 ALTER TABLE `olx_call` DISABLE KEYS */;
/*!40000 ALTER TABLE `olx_call` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `olx_region`
--

DROP TABLE IF EXISTS `olx_region`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `olx_region` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` char(32) NOT NULL,
  `uf` char(2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `olx_region`
--

LOCK TABLES `olx_region` WRITE;
/*!40000 ALTER TABLE `olx_region` DISABLE KEYS */;
INSERT INTO `olx_region` VALUES (1,'Amazonas','AM'),(2,'Roraima','RR'),(3,'Amapá','AP'),(4,'Pará','PA'),(5,'Tocantins','TO'),(6,'Rondônia','RO'),(7,'Acre','AC'),(8,'Maranhão','MA'),(9,'Piauí','PI'),(10,'Ceará','CE'),(11,'Rio Grande do Norte','RN'),(12,'Pernambuco','PE'),(13,'Paraíba','PB'),(14,'Sergipe','SE'),(15,'Alagoas','AL'),(16,'Bahia','BA'),(17,'Mato Grosso','MT'),(18,'Mato Grosso do Sul','MS'),(19,'Goiás','GO'),(20,'São Paulo','SP'),(21,'Rio de Janeiro','RJ'),(22,'Espírito Santo','ES'),(23,'Minas Gerais','MG'),(24,'Paraná','PR'),(25,'Rio Grande do Sul','RS'),(26,'Santa Catarina','SC');
/*!40000 ALTER TABLE `olx_region` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-07-15  5:35:20
