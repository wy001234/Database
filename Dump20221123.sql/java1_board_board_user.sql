-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: localhost    Database: java1_board
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
-- Table structure for table `board_user`
--

DROP TABLE IF EXISTS `board_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `board_user` (
  `uid` varchar(20) NOT NULL,
  `pass` varchar(255) DEFAULT NULL,
  `name` varchar(20) DEFAULT NULL,
  `nick` varchar(20) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `hp` char(13) DEFAULT NULL,
  `grade` tinyint DEFAULT '2',
  `zip` char(5) DEFAULT NULL,
  `addr1` varchar(255) DEFAULT NULL,
  `addr2` varchar(255) DEFAULT NULL,
  `regip` varchar(100) DEFAULT NULL,
  `rdate` datetime DEFAULT NULL,
  PRIMARY KEY (`uid`),
  UNIQUE KEY `nick` (`nick`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `hp` (`hp`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `board_user`
--

LOCK TABLES `board_user` WRITE;
/*!40000 ALTER TABLE `board_user` DISABLE KEYS */;
INSERT INTO `board_user` VALUES ('a12345','zz123123!1','장보고','보고왕','adsqwdqfqfk@naver.com','010-1234-1007',2,'47215','부산 부산진구 거제대로 1','103호','0:0:0:0:0:0:0:1','2022-10-24 12:45:23'),('a123dd','zz123123!1','김유신','동길이','adslgfk@naver.com','010-1234-1005',2,NULL,NULL,NULL,'0:0:0:0:0:0:0:1','2022-10-24 12:07:54'),('a123dd1','zz123123@1','김춘추','춘추왕','qflgkwn@naver.com','010-1234-1006',2,NULL,NULL,NULL,'0:0:0:0:0:0:0:1','2022-10-24 12:39:17'),('cc123123','da2344f7944fa0095a64b07132bd2c585b3f4387e2670b90a6157261e976572a','김상병','상병','qpdlxm145@naver.com','010-1234-1234',2,'07049','서울 동작구 양녕로 153-9','','0:0:0:0:0:0:0:1','2022-11-22 12:09:59'),('xx123123','03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4','이병','','wqdqwfqwfk@naver.com','01012344564',2,'','부산','qwdqd','0:0:0:0:0:0:0:1','2022-11-21 13:33:07'),('zz123123','da2344f7944fa0095a64b07132bd2c585b3f4387e2670b90a6157261e976572a','김말단','말단','adqwdwfslgfk@naver.com','010-1234-1011',2,'47215','부산 부산진구 거제대로 1','111호','0:0:0:0:0:0:0:1','2022-10-25 10:42:21');
/*!40000 ALTER TABLE `board_user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-11-23 13:36:11
