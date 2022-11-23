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
-- Table structure for table `nurses`
--

DROP TABLE IF EXISTS `nurses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `nurses` (
  `nur_id` char(7) NOT NULL,
  `nur_name` varchar(45) NOT NULL,
  `nur_birth` char(10) NOT NULL,
  `nur_gender` char(1) NOT NULL,
  `dep_no` char(3) NOT NULL,
  `nur_pos` varchar(45) NOT NULL,
  `nur_phone` char(13) NOT NULL,
  `nur_email` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`nur_id`),
  KEY `fk_Nurses_Deparments1_idx` (`dep_no`),
  CONSTRAINT `fk_Nurses_Deparments1` FOREIGN KEY (`dep_no`) REFERENCES `deparments` (`dep_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nurses`
--

LOCK TABLES `nurses` WRITE;
/*!40000 ALTER TABLE `nurses` DISABLE KEYS */;
INSERT INTO `nurses` VALUES ('N101101','송승헌','1976-02-21','M','101','수간호사','010-1101-7602','ssh@bw.com'),('N102101','이영애','1975-07-11','F','102','수간호사','010-1102-7507','yung@bw.com'),('N102102','엄정화','1989-06-30','F','102','주임','010-1103-8906','um@bw.com'),('N102103','박명수','1979-05-13','M','102','주임','010-2101-7905','park@bw.com'),('N103101','정준하','1966-10-12','M','103','주임','010-2104-6610','jung@bw.com'),('N104101','김태희','1979-08-28','F','104','주임','010-3101-7908','taeh@bw.com'),('N105101','송혜교','1984-07-15','F','105','주임','010-4101-8407','song@bw.com'),('N106101','공유','1965-11-21','M','106','간호사','010-5101-6511','gong@bw.com'),('N107101','이병헌','1972-12-28','M','107','간호사','010-6101-7212','byung@bw.com'),('N108101','송중기','1992-10-07','M','108','간호사','010-7103-9210','jungi@bw.com');
/*!40000 ALTER TABLE `nurses` ENABLE KEYS */;
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
