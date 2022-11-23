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
-- Table structure for table `professors`
--

DROP TABLE IF EXISTS `professors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `professors` (
  `proNo` char(8) NOT NULL,
  `depNo` char(2) NOT NULL,
  `proName` varchar(20) NOT NULL,
  `proJumin` char(13) NOT NULL,
  `proHp` char(13) NOT NULL,
  `proEmail` varchar(45) NOT NULL,
  `proAddr` varchar(100) NOT NULL,
  PRIMARY KEY (`proNo`,`depNo`),
  KEY `fk_Professors_Students_has_Professors1_idx` (`depNo`),
  CONSTRAINT `fk_Professors_Students_has_Professors1` FOREIGN KEY (`depNo`) REFERENCES `deparments` (`depNo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `professors`
--

LOCK TABLES `professors` WRITE;
/*!40000 ALTER TABLE `professors` DISABLE KEYS */;
INSERT INTO `professors` VALUES ('23102','23','선덕여왕','-403953','010-4101-1984','gueen@hg.ac.kr','대구'),('p10101','10','김유신','-484447','010-1101-1976','kimys@hg.ac.kr','서울'),('p10102','10','계백','-493957','010-1102-1975','gaeback@hg.ac.kr','서울'),('p11101','11','김관창','-354038','010-1103-1989','kwanch@hg.ac.kr','대전'),('p11103','11','김춘추','-454155','010-2101-1979','kimcc@hg.ac.kr','대전'),('p11104','11','이사부','-583656','010-2104-1966','leesabu@hg.ac.kr','대전'),('p22110','22','장보고','-453840','010-3101-1979','jangbg@hg.ac.kr','대구'),('p31101','31','강감찬','-593547','010-5101-1965','kang@hg.ac.kr','대구'),('p31104','31','신사임당','-523440','010-6101-1972','sinsa@hg.ac.kr','부산'),('p40101','40','이이','-323661','010-7103-1992','leelee@hg.ac.kr','부산'),('p40102','40','이황','-353359','010-7104-1989','hwang@hg.ac.kr','광주'),('p42103','42','송상현','-474254','010-8101-1977','ssh@hg.ac.kr','광주');
/*!40000 ALTER TABLE `professors` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-11-23 13:36:15
