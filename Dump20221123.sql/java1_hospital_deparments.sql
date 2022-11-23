-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: localhost    Database: java1_hospital
-- ------------------------------------------------------
-- Server version	8.0.30

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
-- Table structure for table `deparments`
--

DROP TABLE IF EXISTS `deparments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `deparments` (
  `dep_no` char(3) NOT NULL,
  `dep_name` varchar(20) NOT NULL,
  `dep_manager` varchar(20) NOT NULL,
  `dep_tel` varchar(20) NOT NULL,
  PRIMARY KEY (`dep_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `deparments`
--

LOCK TABLES `deparments` WRITE;
/*!40000 ALTER TABLE `deparments` DISABLE KEYS */;
INSERT INTO `deparments` VALUES ('101','소아과','김유신','051-123-0101'),('102','내과','김춘추','051-123-0102'),('103','외과','장보고','051-123-0103'),('104','피부과','선덕여왕','051-123-0104'),('105','이비인후과','강감찬','051-123-0105'),('106','산부인과','신사임당','051-123-0106'),('107','흉부외과','류성룡','051-123-0107'),('108','정형외과','송상현','051-123-0108'),('109','신경외과','이순신','051-123-0109'),('110','비뇨기과','정약용','051-123-0110'),('111','안과','박지원','051-123-0111'),('112','치과','전봉준','051-123-0112');
/*!40000 ALTER TABLE `deparments` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-11-23 13:36:10
