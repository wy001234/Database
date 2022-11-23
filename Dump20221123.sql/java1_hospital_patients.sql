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
-- Table structure for table `patients`
--

DROP TABLE IF EXISTS `patients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `patients` (
  `pat_id` char(7) NOT NULL,
  `doc_id` char(7) NOT NULL,
  `nur_id` char(7) NOT NULL,
  `pat_name` varchar(45) NOT NULL,
  `pat_jumin` char(14) NOT NULL,
  `pat_gen` char(1) NOT NULL,
  `pat_addr` varchar(100) NOT NULL,
  `pat_phone` varchar(45) NOT NULL,
  `pat_email` varchar(45) DEFAULT NULL,
  `pat_job` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`pat_id`),
  KEY `fk_Patients_Nurses1_idx` (`nur_id`),
  KEY `fk_Patients_Doctors1_idx` (`doc_id`),
  CONSTRAINT `fk_Patients_Doctors1` FOREIGN KEY (`doc_id`) REFERENCES `doctors` (`doc_id`),
  CONSTRAINT `fk_Patients_Nurses1` FOREIGN KEY (`nur_id`) REFERENCES `nurses` (`nur_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `patients`
--

LOCK TABLES `patients` WRITE;
/*!40000 ALTER TABLE `patients` DISABLE KEYS */;
INSERT INTO `patients` VALUES ('P102101','D102101','N102101','정우성','760121-1234567','M','서울','010-1101-7601',NULL,'배우'),('P102103','D102104','N102102','유재석','721128-1234567','M','부산','010-6101-7211',NULL,'개그맨'),('P102104','D102104','N102103','전지현','890530-1234567','F','대전','010-1103-8905','jjh@naver.com','자영업'),('P103101','D103101','N103101','이정재','750611-1234567','M','서울','010-1102-7506',NULL,'배우'),('P103102','D103101','N103101','장동건','790728-1234567','M','대구','010-3101-7907','jang@naver.com','배우'),('P104101','D104101','N104101','이나영','790413-1234567','F','대전','010-2101-7904','lee@naver.com','회사원'),('P104102','D104101','N104101','고소영','840615-1234567','F','대구','010-4101-8406','goso@daum.net','회사원'),('P104103','D104101','N104101','강동원','770314-1234567','M','광주','010-8101-7703','dong@daum.net','배우'),('P105101','D105101','N105101','원빈','660912-1234567','M','대전','010-2104-6609','one@daum.com','배우'),('P105102','D105101','N105101','조인성','891209-1234567','M','광주','010-7104-8912','join@daum.net','배우'),('P107101','D107104','N107101','강호동','920907-1234567','M','부산','010-7103-9209',NULL,'개그맨'),('P108101','D108101','N108101','김연아','651021-1234567','F','대구','010-5101-6510','yuna@daum.net','운동선수');
/*!40000 ALTER TABLE `patients` ENABLE KEYS */;
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
