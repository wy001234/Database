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
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products` (
  `prodNo` int NOT NULL,
  `cateNo` int NOT NULL,
  `sellerNo` int NOT NULL,
  `prodName` varchar(20) NOT NULL,
  `prodPrice` int NOT NULL,
  `prodStock` int DEFAULT NULL,
  `prodSold` int DEFAULT NULL,
  `prodDiscount` tinyint DEFAULT '0',
  PRIMARY KEY (`prodNo`),
  KEY `fk_Products_Sellers1_idx` (`sellerNo`),
  KEY `fk_Products_Categories1_idx` (`cateNo`),
  CONSTRAINT `fk_Products_Categories1` FOREIGN KEY (`cateNo`) REFERENCES `categories` (`cateNo`),
  CONSTRAINT `fk_Products_Sellers1` FOREIGN KEY (`sellerNo`) REFERENCES `sellers` (`sellerNo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (100101,11,10003,'반팔티 L-2XL',869,25000,132,20),(100110,10,10004,'트레이닝 통바지',1602,38000,398,15),(110101,10,10003,'신상 여성운동화',160,76000,40,5),(120101,12,10010,'암소 1등급 구이셋트 1.2kg',150000,NULL,87,15),(120103,12,10010,' 바로구이 부채살 250g',21000,NULL,61,10),(130101,13,10006,'[ANF] 식스프리 강아지 사료',58,56000,142,0),(130112,13,10006,'중대형 사계절 강아지옷',120,15000,80,0),(141001,14,10001,'라떼 2인 소파/방수 패브릭',320000,NULL,42,0),(160103,16,10009,'치닝디핑 33BR 철봉',32,120000,28,0),(170115,17,10007,'지포스 3080 그래픽카드',28,900000,12,12);
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
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
