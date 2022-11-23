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
-- Table structure for table `treatments`
--

DROP TABLE IF EXISTS `treatments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `treatments` (
  `treat_no` int NOT NULL,
  `doc_id` char(7) NOT NULL,
  `pat_id` char(7) NOT NULL,
  `treat_contents` varchar(255) NOT NULL,
  `treat_datetime` datetime NOT NULL,
  PRIMARY KEY (`treat_no`),
  KEY `fk_Treatments_Doctors1_idx` (`doc_id`),
  KEY `fk_Treatments_Patients1_idx` (`pat_id`),
  CONSTRAINT `fk_Treatments_Doctors1` FOREIGN KEY (`doc_id`) REFERENCES `doctors` (`doc_id`),
  CONSTRAINT `fk_Treatments_Patients1` FOREIGN KEY (`pat_id`) REFERENCES `patients` (`pat_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `treatments`
--

LOCK TABLES `treatments` WRITE;
/*!40000 ALTER TABLE `treatments` DISABLE KEYS */;
INSERT INTO `treatments` VALUES (1021001,'D102101','P102101','감기,몸살','2022-01-10 10:50:12'),(1021003,'D102104','P102102','위염,장염','2022-01-10 10:50:12'),(1021009,'D102104','P102103','소화불량','2022-01-10 10:50:12'),(1031002,'D103101','P103101','교통사고 외상','2022-01-10 10:50:12'),(1031006,'D103101','P103102','목 디스크','2022-01-10 10:50:12'),(1041004,'D104101','P104101','피부 트러블','2022-01-10 10:50:12'),(1041007,'D104101','P104102','여드름','2022-01-10 10:50:12'),(1041012,'D104101','P104103','팔목 화상','2022-01-10 10:50:12'),(1051005,'D105101','P105101','코막힘 및 비염','2022-01-10 10:50:12'),(1051011,'D105101','P105102','귀 이명','2022-01-10 10:50:12'),(1071010,'D107104','P107101','가슴 통증','2022-01-10 10:50:12'),(1081008,'D108101','P108101','오른쪽 발목 뼈 골절','2022-01-10 10:50:12');
/*!40000 ALTER TABLE `treatments` ENABLE KEYS */;
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
