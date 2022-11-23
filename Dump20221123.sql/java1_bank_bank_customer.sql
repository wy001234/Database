-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: localhost    Database: java1_bank
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
-- Table structure for table `bank_customer`
--

DROP TABLE IF EXISTS `bank_customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bank_customer` (
  `c_no` varchar(14) NOT NULL,
  `c_name` varchar(20) NOT NULL,
  `c_dist` int NOT NULL,
  `c_phone` varchar(20) NOT NULL,
  `c_addr` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`c_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bank_customer`
--

LOCK TABLES `bank_customer` WRITE;
/*!40000 ALTER TABLE `bank_customer` DISABLE KEYS */;
INSERT INTO `bank_customer` VALUES ('102-22-51094','부산의원',2,'051-518-1010','부산시 남구'),('220-82-52237','(주)한국전산',2,'02-134-1045','서울시 강서구'),('361-22-42687','(주)정보산업',2,'051-563-1253','경기도 광명시'),('730423-1000001','김유신',1,'010-1234-1001','경기도 수원시'),('730423-1000002','김춘추',1,'010-1234-1002','경기도 광주시'),('730423-1000003','선덕여왕',1,'010-1234-1003','서울시 마포구'),('730423-1000004','강감찬',1,'010-1234-1004','서울시 영등포구'),('730423-1000005','신사임당',1,'010-1234-1005','강원도 강릉시'),('730423-1000006','이순신',1,'010-1234-1006','부산시 영도구');
/*!40000 ALTER TABLE `bank_customer` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-11-23 13:36:12
