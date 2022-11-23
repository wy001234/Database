-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: localhost    Database: java1_shoppingmall
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
-- Table structure for table `points`
--

DROP TABLE IF EXISTS `points`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `points` (
  `pointNo` int NOT NULL AUTO_INCREMENT,
  `userId` varchar(20) NOT NULL,
  `point` int NOT NULL,
  `pointDesc` varchar(45) NOT NULL,
  `pointDate` datetime NOT NULL,
  PRIMARY KEY (`pointNo`),
  KEY `fk_Points_Users_idx` (`userId`),
  CONSTRAINT `fk_Points_Users` FOREIGN KEY (`userId`) REFERENCES `users` (`userId`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `points`
--

LOCK TABLES `points` WRITE;
/*!40000 ALTER TABLE `points` DISABLE KEYS */;
INSERT INTO `points` VALUES (1,'user1',1000,'회원가입 1000 적립','2022-01-10 10:50:12'),(2,'user1',6000,'상품구매 5% 적립','2022-01-10 10:50:12'),(3,'user3',2835,'상품구매 5% 적립','2022-01-10 10:50:12'),(4,'user7',3610,'상품구매 5% 적립','2022-01-10 10:50:12'),(5,'user5',3000,'이벤트 응모 3000 적립','2022-01-10 10:50:12'),(6,'user2',1000,'회원가입 1000 적립','2022-01-10 10:50:12'),(7,'user2',2000,'이벤트 응모 2000 적립','2022-01-10 10:50:12'),(8,'user2',2615,'상품구매 5% 적립','2022-01-10 10:50:12'),(9,'user3',1500,'이벤트 응모 1500 적립','2022-01-10 10:50:12'),(10,'user6',15850,'상품구매 2% 적립','2022-01-10 10:50:12');
/*!40000 ALTER TABLE `points` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-11-23 13:36:16
