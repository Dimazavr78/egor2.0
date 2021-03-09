-- MySQL dump 10.13  Distrib 8.0.19, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: egorig_db
-- ------------------------------------------------------
-- Server version	5.5.62

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `car`
--

DROP TABLE IF EXISTS `car`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `car` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `vin` varchar(17) NOT NULL,
  `gos_nomer` varchar(9) NOT NULL,
  `dtp_do` varchar(45) NOT NULL DEFAULT '0',
  `categoriya` varchar(45) NOT NULL,
  `login` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  `marca` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `car`
--

LOCK TABLES `car` WRITE;
/*!40000 ALTER TABLE `car` DISABLE KEYS */;
INSERT INTO `car` VALUES (1,'12312313','','1','B','1','1','Syzuki');
/*!40000 ALTER TABLE `car` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `car_dtp`
--

DROP TABLE IF EXISTS `car_dtp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `car_dtp` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `gos_nomer` varchar(7) NOT NULL,
  `vin` varchar(17) NOT NULL,
  `marca` varchar(45) NOT NULL,
  `car_id` int(11) DEFAULT NULL,
  `opasn_grus` varchar(45) NOT NULL DEFAULT '??',
  `pricep` varchar(45) NOT NULL DEFAULT '??',
  `dtp_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_car_dtp_car_idx` (`car_id`),
  KEY `fk_car_dtp_dtp1_idx` (`dtp_id`),
  CONSTRAINT `fk_car_dtp_car` FOREIGN KEY (`car_id`) REFERENCES `car` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_car_dtp_dtp1` FOREIGN KEY (`dtp_id`) REFERENCES `dtp` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `car_dtp`
--

LOCK TABLES `car_dtp` WRITE;
/*!40000 ALTER TABLE `car_dtp` DISABLE KEYS */;
INSERT INTO `car_dtp` VALUES (1,'1','1','1',NULL,'1','1',13);
/*!40000 ALTER TABLE `car_dtp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dtp`
--

DROP TABLE IF EXISTS `dtp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dtp` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `class_dtp` int(1) NOT NULL DEFAULT '5',
  `kolo_awto` varchar(45) NOT NULL DEFAULT '0',
  `date_dtp` varchar(45) DEFAULT NULL,
  `mestopolosgenie` varchar(60) NOT NULL,
  `radius` varchar(45) DEFAULT NULL,
  `opasn_grus` varchar(45) NOT NULL,
  `sosoyaniye` varchar(45) DEFAULT NULL,
  `spec_sl` varchar(45) NOT NULL,
  `tip_dor` varchar(45) NOT NULL DEFAULT 'нет',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dtp`
--

LOCK TABLES `dtp` WRITE;
/*!40000 ALTER TABLE `dtp` DISABLE KEYS */;
INSERT INTO `dtp` VALUES (1,12,'1','2012-12-12 21:00:00','123123','1','1','1','1','net'),(2,3,'5','2012-12-12 21:00:00','mesto','12','o','41','4','tip'),(3,1,'1','1','1','1','1','1','1','1'),(4,1,'1','1','1','1','1','1','1','1'),(5,123,'123','123','123','123','123','123','123','123'),(6,123,'213','213','123','123','213','123','123','231'),(7,123,'123','123','123','213','123','321','213','321'),(8,123,'123','123','123','123','123','123','123','123'),(9,1,'1','1','1','1','1','1','1','1'),(10,123,'12','21','21','21','21','12','21','21'),(11,123,'123','213','123','123','132','123','123','123'),(12,123,'21','21','12','12','2','2','21','21'),(13,1,'1','1','1','1','1','1','1','1');
/*!40000 ALTER TABLE `dtp` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-03-09 11:57:26
