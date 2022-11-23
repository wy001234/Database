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
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `orderNo` char(11) NOT NULL,
  `userId` varchar(20) NOT NULL,
  `orderTotalPrice` int NOT NULL,
  `orderAddr` varchar(255) NOT NULL,
  `orderStatus` tinyint DEFAULT NULL,
  `orderDate` datetime NOT NULL,
  PRIMARY KEY (`orderNo`),
  KEY `fk_Orders_Users1_idx` (`userId`),
  CONSTRAINT `fk_Orders_Users1` FOREIGN KEY (`userId`) REFERENCES `users` (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES ('22010210001','user2',52300,'서울시 마포구 121',1,'2022-01-10 10:50:12'),('22010210002','user3',56700,'서울시 강남구 21-1',1,'2022-01-10 10:50:12'),('22010210010','user4',72200,'서울시 강서구 큰대로 38',2,'2022-01-10 10:50:12'),('22010310001','user5',127000,'경기도 광주시 초월로 21',1,'2022-01-10 10:50:12'),('22010310100','user1',120000,'경기도 수원시 120번지',0,'2022-01-10 10:50:12'),('22010410101','user6',792000,'부산시 남구 21-1',2,'2022-01-10 10:50:12'),('22010510021','user7',92200,'부산시 부산진구 56 10층',4,'2022-01-10 10:50:12'),('22010510027','user8',112000,'대구시 팔달로 19',3,'2022-01-10 10:50:12'),('22010510031','user10',792000,'대전시 한밭로 24-1',2,'2022-01-10 10:50:12'),('22010710110','user9',94500,'광주시 충열로 11',1,'2022-01-10 10:50:12');
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
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
