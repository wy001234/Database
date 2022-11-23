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
-- Table structure for table `charts`
--

DROP TABLE IF EXISTS `charts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `charts` (
  `chart_id` char(8) NOT NULL,
  `treat_no` int NOT NULL,
  `doc_id` char(7) NOT NULL,
  `pat_id` char(7) NOT NULL,
  `ctart_contents` varchar(255) NOT NULL,
  PRIMARY KEY (`chart_id`,`treat_no`,`doc_id`,`pat_id`),
  KEY `fk_Charts_Treatments1_idx` (`treat_no`,`doc_id`,`pat_id`),
  CONSTRAINT `fk_Charts_Treatments1` FOREIGN KEY (`treat_no`) REFERENCES `treatments` (`treat_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `charts`
--

LOCK TABLES `charts` WRITE;
/*!40000 ALTER TABLE `charts` DISABLE KEYS */;
INSERT INTO `charts` VALUES ('C1021001',1021001,'D102101','P102101','감기 주사 및 약 처방'),('C1021003',1021003,'D102104','P102102','위내시경'),('C1021009',1021009,'D102104','P102103','주사 처방'),('C1031002',1031002,'D103101','P103101','입원 치료'),('C1031006',1031006,'D103101','P103102','목 견인치료'),('C1041004',1041004,'D104101','P104101','피부 감염 방지 주사'),('C1041007',1041007,'D104101','P104102','여드름 치료약 처방'),('C1041012',1041012,'D104101','P104103','화상 크림약 처방'),('C1051005',1051005,'D105101','P105101','비염 치료'),('C1051011',1051011,'D105101','P105102','귀 청소 및 약 처방'),('C1071010',1071010,'D107104','P107101','MRI 검사'),('C1081008',1081008,'D108101','P108101','발목 깁스');
/*!40000 ALTER TABLE `charts` ENABLE KEYS */;
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
