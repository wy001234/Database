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
-- Table structure for table `doctors`
--

DROP TABLE IF EXISTS `doctors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `doctors` (
  `doc_id` char(7) NOT NULL,
  `doc_name` varchar(45) NOT NULL,
  `doc_birth` char(10) NOT NULL,
  `doc_gen` char(1) NOT NULL,
  `dep_no` char(3) NOT NULL,
  `doc_pos` varchar(45) NOT NULL,
  `doc_phone` varchar(20) NOT NULL,
  `doc_email` varchar(45) NOT NULL,
  PRIMARY KEY (`doc_id`),
  UNIQUE KEY `doc_email_UNIQUE` (`doc_email`),
  UNIQUE KEY `doc_phone_UNIQUE` (`doc_phone`),
  KEY `fk_Doctors_Deparments_idx` (`dep_no`),
  CONSTRAINT `fk_Doctors_Deparments` FOREIGN KEY (`dep_no`) REFERENCES `deparments` (`dep_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `doctors`
--

LOCK TABLES `doctors` WRITE;
/*!40000 ALTER TABLE `doctors` DISABLE KEYS */;
INSERT INTO `doctors` VALUES ('D101101','김유신','1976-01-21','M','101','과장','010-1101-1976','kimys@bw.com'),('D101102','계백','1975-06-11','M','101','전문의','010-1102-1975','gaeback@bw.com'),('D101103','김관창','1989-05-30','M','101','전문의','010-1103-1989','kwanch@bw.com'),('D102101','김춘추','1979-04-13','M','102','과장','010-2101-1979','kimcc@bw.com'),('D102104','이사부','1966-09-12','M','102','전문의','010-2104-1966','leesabu@bw.com'),('D103101','장보고','1979-07-28','M','103','과장','010-3101-1979','jangbg@bw.com'),('D104101','선덕여왕','1984-06-15','F','104','과장','010-4101-1984','gueen@bw.com'),('D105101','강감찬','1965-10-21','M','105','과장','010-5101-1965','kang@bw.com'),('D106101','신사임당','1972-11-28','F','106','과장','010-6101-1972','sinsa@bw.com'),('D107103','이이','1992-09-07','M','107','전문의','010-7103-1991','leelee@bw.com'),('D107104','이황','1989-12-09','M','107','전문의','010-7104-1989','hwang@bw.com'),('D108101','송상현','1977-03-14','M','108','과장','010-8101-1977','ssh@bw.com');
/*!40000 ALTER TABLE `doctors` ENABLE KEYS */;
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
