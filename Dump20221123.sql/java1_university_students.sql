-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: localhost    Database: java1_university
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
-- Table structure for table `students`
--

DROP TABLE IF EXISTS `students`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `students` (
  `stdNo` char(8) NOT NULL,
  `depNo` char(2) NOT NULL,
  `proNo` char(8) NOT NULL,
  `stdName` varchar(20) NOT NULL,
  `stdJumin` char(14) NOT NULL,
  `stdHp` char(13) NOT NULL,
  `stdEmail` varchar(45) DEFAULT NULL,
  `stdAddr` varchar(100) NOT NULL,
  PRIMARY KEY (`stdNo`),
  KEY `fk_Students_Professors_idx` (`proNo`),
  KEY `fk_Students_Students_has_Professors1_idx` (`depNo`),
  CONSTRAINT `fk_Students_Professors` FOREIGN KEY (`proNo`) REFERENCES `professors` (`proNo`),
  CONSTRAINT `fk_Students_Students_has_Professors1` FOREIGN KEY (`depNo`) REFERENCES `deparments` (`depNo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `students`
--

LOCK TABLES `students` WRITE;
/*!40000 ALTER TABLE `students` DISABLE KEYS */;
INSERT INTO `students` VALUES ('20101001','10','p10101','정우성','760121-1234567','010-1101-7601',NULL,'서울'),('20101002','10','p10101','정우성','750611-1234567','010-1102-7506',NULL,'서울'),('20111011','11','p11103','전지현','890530-1234567','010-1103-8905','jjh@naver.com','대전'),('20111013','11','p11103','이나영','790413-1234567','010-2101-7904','jㄷㄷ@naver.com','대전'),('20111014','11','p11104','원빈','660912-1234567','010-2104-6609','one@daum.net','대전'),('21221010','22','p22110','장동건','790728-1234567','010-3101-7907','jang@naver.com','대구'),('21231002','23','p23102','고소영','840615-1234567','010-4101-8406','goso@daum.com','대구'),('22311011','31','p31104','김연아','651021-1234567','010-5101-6510','yuna@naver.com','대구'),('22311014','31','p31104','유재석','721128-1234567','010-6101-7211',NULL,'부산'),('22401001','40','p40101','강호동','920907-1234567','010-7103-9209',NULL,'부산'),('22401002','40','p40101','조인성','891209-1234567','010-7104-8912','join@gmail.com','광주'),('22421003','42','p42103','강동원','770314-1234567','010-8101-7703','dong@naver.com','광주');
/*!40000 ALTER TABLE `students` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-11-23 13:36:14
