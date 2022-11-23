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
-- Table structure for table `board_article`
--

DROP TABLE IF EXISTS `board_article`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `board_article` (
  `no` int NOT NULL AUTO_INCREMENT,
  `parent` int DEFAULT '0',
  `comment` int DEFAULT '0',
  `cate` varchar(20) DEFAULT 'free',
  `title` varchar(255) DEFAULT NULL,
  `content` text NOT NULL,
  `file` tinyint DEFAULT '0',
  `hit` int DEFAULT '0',
  `uid` varchar(20) NOT NULL,
  `regip` varchar(100) NOT NULL,
  `rdate` datetime NOT NULL,
  PRIMARY KEY (`no`)
) ENGINE=InnoDB AUTO_INCREMENT=163 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `board_article`
--

LOCK TABLES `board_article` WRITE;
/*!40000 ALTER TABLE `board_article` DISABLE KEYS */;
INSERT INTO `board_article` VALUES (2,0,0,'notice','첨부글','첨부',1,0,'zz123123','0:0:0:0:0:0:0:1','2022-10-31 10:05:22'),(3,0,0,'free','일반글','131241',0,0,'zz123123','0:0:0:0:0:0:0:1','2022-10-31 10:05:13'),(4,0,0,'free','첨부글','첨부',0,0,'zz123123','0:0:0:0:0:0:0:1','2022-10-31 10:05:22'),(6,0,0,'free','일반글','131241',0,0,'zz123123','0:0:0:0:0:0:0:1','2022-10-31 10:05:13'),(7,0,0,'free','첨부글','첨부',0,0,'zz123123','0:0:0:0:0:0:0:1','2022-10-31 10:05:22'),(8,0,0,'free','일반글','131241',0,0,'zz123123','0:0:0:0:0:0:0:1','2022-10-31 10:05:13'),(9,0,0,'free','첨부글','첨부',0,0,'zz123123','0:0:0:0:0:0:0:1','2022-10-31 10:05:22'),(13,0,0,'free','일반글','131241',0,0,'zz123123','0:0:0:0:0:0:0:1','2022-10-31 10:05:13'),(14,0,0,'free','첨부글','첨부',0,0,'zz123123','0:0:0:0:0:0:0:1','2022-10-31 10:05:22'),(15,0,0,'free','일반글','131241',0,0,'zz123123','0:0:0:0:0:0:0:1','2022-10-31 10:05:13'),(16,0,0,'free','첨부글','첨부',0,0,'zz123123','0:0:0:0:0:0:0:1','2022-10-31 10:05:22'),(17,0,0,'free','일반글','131241',0,0,'zz123123','0:0:0:0:0:0:0:1','2022-10-31 10:05:13'),(18,0,0,'free','첨부글','첨부',0,0,'zz123123','0:0:0:0:0:0:0:1','2022-10-31 10:05:22'),(19,0,0,'free','일반글','131241',0,1,'zz123123','0:0:0:0:0:0:0:1','2022-10-31 10:05:13'),(20,0,0,'free','첨부글','첨부',0,0,'zz123123','0:0:0:0:0:0:0:1','2022-10-31 10:05:22'),(28,0,0,'free','일반글','131241',0,0,'zz123123','0:0:0:0:0:0:0:1','2022-10-31 10:05:13'),(29,0,0,'free','첨부글','첨부',0,0,'zz123123','0:0:0:0:0:0:0:1','2022-10-31 10:05:22'),(30,0,0,'free','일반글','131241',0,0,'zz123123','0:0:0:0:0:0:0:1','2022-10-31 10:05:13'),(31,0,0,'free','첨부글','첨부',0,0,'zz123123','0:0:0:0:0:0:0:1','2022-10-31 10:05:22'),(32,0,0,'free','일반글','131241',0,0,'zz123123','0:0:0:0:0:0:0:1','2022-10-31 10:05:13'),(33,0,0,'free','첨부글','첨부',0,0,'zz123123','0:0:0:0:0:0:0:1','2022-10-31 10:05:22'),(34,0,0,'free','일반글','131241',0,0,'zz123123','0:0:0:0:0:0:0:1','2022-10-31 10:05:13'),(35,0,0,'free','첨부글','첨부',0,0,'zz123123','0:0:0:0:0:0:0:1','2022-10-31 10:05:22'),(36,0,0,'free','일반글','131241',0,1,'zz123123','0:0:0:0:0:0:0:1','2022-10-31 10:05:13'),(37,0,0,'free','첨부글','첨부',0,2,'zz123123','0:0:0:0:0:0:0:1','2022-10-31 10:05:22'),(38,0,0,'free','일반글','131241',0,2,'zz123123','0:0:0:0:0:0:0:1','2022-10-31 10:05:13'),(39,0,0,'free','첨부글','첨부',0,0,'zz123123','0:0:0:0:0:0:0:1','2022-10-31 10:05:22'),(40,0,0,'free','일반글','131241',0,0,'zz123123','0:0:0:0:0:0:0:1','2022-10-31 10:05:13'),(41,0,0,'free','첨부글','첨부',0,0,'zz123123','0:0:0:0:0:0:0:1','2022-10-31 10:05:22'),(42,0,0,'free','일반글','131241',0,1,'zz123123','0:0:0:0:0:0:0:1','2022-10-31 10:05:13'),(43,0,0,'free','첨부글','첨부',0,0,'zz123123','0:0:0:0:0:0:0:1','2022-10-31 10:05:22'),(59,0,0,'free','일반글','131241',0,0,'zz123123','0:0:0:0:0:0:0:1','2022-10-31 10:05:13'),(60,0,0,'free','첨부글','첨부',0,0,'zz123123','0:0:0:0:0:0:0:1','2022-10-31 10:05:22'),(61,0,0,'free','일반글','131241',0,0,'zz123123','0:0:0:0:0:0:0:1','2022-10-31 10:05:13'),(62,0,0,'free','첨부글','첨부',0,0,'zz123123','0:0:0:0:0:0:0:1','2022-10-31 10:05:22'),(63,0,0,'free','일반글','131241',0,0,'zz123123','0:0:0:0:0:0:0:1','2022-10-31 10:05:13'),(64,0,0,'free','첨부글','첨부',0,0,'zz123123','0:0:0:0:0:0:0:1','2022-10-31 10:05:22'),(65,0,0,'free','일반글','131241',0,0,'zz123123','0:0:0:0:0:0:0:1','2022-10-31 10:05:13'),(66,0,0,'free','첨부글','첨부',0,0,'zz123123','0:0:0:0:0:0:0:1','2022-10-31 10:05:22'),(67,0,0,'free','일반글','131241',0,0,'zz123123','0:0:0:0:0:0:0:1','2022-10-31 10:05:13'),(68,0,0,'free','첨부글','첨부',0,0,'zz123123','0:0:0:0:0:0:0:1','2022-10-31 10:05:22'),(69,0,0,'free','일반글','131241',0,0,'zz123123','0:0:0:0:0:0:0:1','2022-10-31 10:05:13'),(70,0,0,'free','첨부글','첨부',0,0,'zz123123','0:0:0:0:0:0:0:1','2022-10-31 10:05:22'),(71,0,0,'free','일반글','131241',0,0,'zz123123','0:0:0:0:0:0:0:1','2022-10-31 10:05:13'),(72,0,0,'free','첨부글','첨부',0,0,'zz123123','0:0:0:0:0:0:0:1','2022-10-31 10:05:22'),(73,0,0,'free','일반글','131241',0,0,'zz123123','0:0:0:0:0:0:0:1','2022-10-31 10:05:13'),(74,0,0,'free','첨부글','첨부',0,0,'zz123123','0:0:0:0:0:0:0:1','2022-10-31 10:05:22'),(75,0,0,'free','일반글','131241',0,0,'zz123123','0:0:0:0:0:0:0:1','2022-10-31 10:05:13'),(76,0,0,'free','첨부글','첨부',0,0,'zz123123','0:0:0:0:0:0:0:1','2022-10-31 10:05:22'),(77,0,0,'free','일반글','131241',0,0,'zz123123','0:0:0:0:0:0:0:1','2022-10-31 10:05:13'),(78,0,0,'free','첨부글','첨부',0,0,'zz123123','0:0:0:0:0:0:0:1','2022-10-31 10:05:22'),(79,0,0,'free','일반글','131241',0,0,'zz123123','0:0:0:0:0:0:0:1','2022-10-31 10:05:13'),(80,0,0,'free','첨부글','첨부',0,0,'zz123123','0:0:0:0:0:0:0:1','2022-10-31 10:05:22'),(81,0,0,'free','일반글','131241',0,2,'zz123123','0:0:0:0:0:0:0:1','2022-10-31 10:05:13'),(82,0,0,'free','첨부글','첨부',0,0,'zz123123','0:0:0:0:0:0:0:1','2022-10-31 10:05:22'),(83,0,0,'free','일반글','131241',0,0,'zz123123','0:0:0:0:0:0:0:1','2022-10-31 10:05:13'),(84,0,0,'free','첨부글','첨부',0,1,'zz123123','0:0:0:0:0:0:0:1','2022-10-31 10:05:22'),(85,0,0,'free','일반글','131241',0,5,'zz123123','0:0:0:0:0:0:0:1','2022-10-31 10:05:13'),(86,0,0,'free','첨부글','첨부',0,0,'zz123123','0:0:0:0:0:0:0:1','2022-10-31 10:05:22'),(87,0,0,'free','일반글','131241',0,10,'zz123123','0:0:0:0:0:0:0:1','2022-10-31 10:05:13'),(88,0,0,'free','첨부글','첨부',0,2,'zz123123','0:0:0:0:0:0:0:1','2022-11-03 11:15:36'),(93,87,0,'free',NULL,'포스트맨에서 데이터 수정',0,0,'zz123123','0:0:0:0:0:0:0:1','2022-11-02 10:04:40'),(97,0,0,'free','1','1',0,0,'zz123123','0:0:0:0:0:0:0:1','2022-11-03 10:54:30'),(98,0,0,'free','수정','수정글',0,0,'zz123123','0:0:0:0:0:0:0:1','2022-11-03 10:54:44'),(100,0,0,'school','sdfsdf','sdfsdf',0,0,'zz123123','0:0:0:0:0:0:0:1','2022-11-16 11:50:00'),(101,0,0,'notice','1111','1231241245',0,0,'zz123123','0:0:0:0:0:0:0:1','2022-11-16 11:51:39'),(102,0,0,'story','농작물 이야기~','이야기~~~~!!',0,0,'zz123123','0:0:0:0:0:0:0:1','2022-11-16 11:57:26'),(103,0,0,'story','124','1515',0,0,'zz123123','0:0:0:0:0:0:0:1','2022-11-16 11:58:06'),(104,0,0,'story','1111','11111',0,0,'zz123123','0:0:0:0:0:0:0:1','2022-11-16 11:58:09'),(105,0,0,'story','1231421','14215',0,0,'zz123123','0:0:0:0:0:0:0:1','2022-11-16 11:58:13'),(106,0,0,'story','2151346','13643614',0,0,'zz123123','0:0:0:0:0:0:0:1','2022-11-16 11:58:15'),(107,0,0,'story','12ㄷㅂㄹㅈㄷ','1ㄱㅇㄹㅂㅈ',0,0,'zz123123','0:0:0:0:0:0:0:1','2022-11-16 11:58:18'),(108,0,0,'story','12ㄹㄱㅈㄷ','3ㄹㅂ',0,0,'zz123123','0:0:0:0:0:0:0:1','2022-11-16 11:58:22'),(109,0,0,'story','12ㄱㅇㄹ2ㅂ','2',0,0,'zz123123','0:0:0:0:0:0:0:1','2022-11-16 11:58:25'),(110,0,0,'story','12342142ㅎㄹㄷ','ㄷㄱㅎㄷㄱㅎㄴㅎㄷ',0,0,'zz123123','0:0:0:0:0:0:0:1','2022-11-16 11:58:28'),(111,0,0,'story','123221','1432ㅅㄹㄷㅈ',0,0,'zz123123','0:0:0:0:0:0:0:1','2022-11-16 11:58:31'),(112,0,0,'story','2134325ㅅㄷㅈㄱ','ㅈㄷㄱㅎㄴㄷㅎ',0,2,'zz123123','0:0:0:0:0:0:0:1','2022-11-16 11:58:35'),(113,0,0,'story','123421ㅅㄱㄷ','ㅎㅈㄷㅁㅎㄱㅍㄱㄷㄴㅎㅎㄱㄷ',0,1,'zz123123','0:0:0:0:0:0:0:1','2022-11-16 11:58:38'),(114,0,0,'event','이벤트 글입니다','1',0,0,'zz123123','0:0:0:0:0:0:0:1','2022-11-17 09:08:11'),(115,0,0,'event','이벤트 글입니다','2',0,0,'zz123123','0:0:0:0:0:0:0:1','2022-11-17 09:08:14'),(116,0,0,'event','이벤트 글입니다','3',0,0,'zz123123','0:0:0:0:0:0:0:1','2022-11-17 09:08:17'),(117,0,0,'event','타이틀','5',0,0,'zz123123','0:0:0:0:0:0:0:1','2022-11-17 09:08:20'),(118,0,0,'event','111111','이벤트 글입니다',0,0,'zz123123','0:0:0:0:0:0:0:1','2022-11-17 09:08:25'),(119,0,0,'event','이벤트 글입니다','이벤트 글입니다',0,0,'zz123123','0:0:0:0:0:0:0:1','2022-11-17 09:08:28'),(120,0,0,'event','이벤트 글입니다','이벤트 글입니다',0,0,'zz123123','0:0:0:0:0:0:0:1','2022-11-17 09:08:31'),(121,0,0,'event','이벤트 글입니다','이벤트 글입니다',0,0,'zz123123','0:0:0:0:0:0:0:1','2022-11-17 09:08:39'),(122,0,0,'event','이벤트 글입니다','이벤트 글입니다',0,0,'zz123123','0:0:0:0:0:0:0:1','2022-11-17 09:08:46'),(123,0,0,'event','이벤트 글입니다','이벤트 글입니다',0,0,'zz123123','0:0:0:0:0:0:0:1','2022-11-17 09:08:51'),(124,0,0,'event','이벤트 글입니다','이벤트 글입니다',0,0,'zz123123','0:0:0:0:0:0:0:1','2022-11-17 09:08:52'),(125,0,0,'event','이벤트 글입니다','이벤트 글입니다',0,1,'zz123123','0:0:0:0:0:0:0:1','2022-11-17 09:08:53'),(126,0,0,'event','이벤트 글입니다','이벤트 글입니다',0,0,'zz123123','0:0:0:0:0:0:0:1','2022-11-17 09:08:54'),(127,0,0,'event','이벤트 글입니다','이벤트 글입니다',0,0,'zz123123','0:0:0:0:0:0:0:1','2022-11-17 09:08:54'),(128,0,0,'notice','커뮤니티 글 입니다','커뮤니티 글 입니다',0,0,'zz123123','0:0:0:0:0:0:0:1','2022-11-17 09:09:15'),(129,0,0,'notice','커뮤니티 글 입니다','커뮤니티 글 입니다',0,0,'zz123123','0:0:0:0:0:0:0:1','2022-11-17 09:09:15'),(130,0,0,'notice','커뮤니티 글 입니다','커뮤니티 글 입니다',0,0,'zz123123','0:0:0:0:0:0:0:1','2022-11-17 09:09:15'),(131,0,0,'notice','커뮤니티 글 입니다','커뮤니티 글 입니다',0,0,'zz123123','0:0:0:0:0:0:0:1','2022-11-17 09:09:15'),(132,0,0,'notice','커뮤니티 글 입니다','커뮤니티 글 입니다',0,0,'zz123123','0:0:0:0:0:0:0:1','2022-11-17 09:09:16'),(133,0,0,'notice','커뮤니티 글 입니다','커뮤니티 글 입니다',0,0,'zz123123','0:0:0:0:0:0:0:1','2022-11-17 09:09:16'),(134,0,0,'notice','커뮤니티 글 입니다','커뮤니티 글 입니다',0,0,'zz123123','0:0:0:0:0:0:0:1','2022-11-17 09:09:16'),(135,0,0,'notice','커뮤니티 글 입니다','11',0,0,'zz123123','0:0:0:0:0:0:0:1','2022-11-17 09:09:25'),(136,0,0,'notice','커뮤니티 글 입니다','111',0,0,'zz123123','0:0:0:0:0:0:0:1','2022-11-17 09:09:29'),(137,0,0,'notice','커뮤니티 글 입니다','111',0,1,'zz123123','0:0:0:0:0:0:0:1','2022-11-17 09:09:35'),(138,0,0,'notice','커뮤니티 글 입니다','11111',0,0,'zz123123','0:0:0:0:0:0:0:1','2022-11-17 09:09:39'),(139,0,0,'menu','오늘의 식단..','오늘의 식단..',0,0,'zz123123','0:0:0:0:0:0:0:1','2022-11-17 09:10:05'),(140,0,0,'menu','오늘의 식단..','오늘의 식단..',0,0,'zz123123','0:0:0:0:0:0:0:1','2022-11-17 09:10:10'),(141,0,0,'menu','오늘의 식단..','오늘의 식단..',0,0,'zz123123','0:0:0:0:0:0:0:1','2022-11-17 09:10:13'),(142,0,0,'grow','텃밭 가꾸기1','텃밭 가꾸기1',0,0,'zz123123','0:0:0:0:0:0:0:1','2022-11-17 09:10:51'),(143,0,0,'grow','삭제용','텃밭 가꾸기1',0,1,'zz123123','0:0:0:0:0:0:0:1','2022-11-17 09:10:55'),(144,0,0,'grow','1234124','텃밭 가꾸기1',0,0,'zz123123','0:0:0:0:0:0:0:1','2022-11-17 09:10:58'),(145,0,0,'grow','1242315','1455',0,0,'zz123123','0:0:0:0:0:0:0:1','2022-11-17 09:11:00'),(146,0,0,'grow','12341512','515',0,0,'zz123123','0:0:0:0:0:0:0:1','2022-11-17 09:11:03'),(147,0,0,'school','sdfsdf','sdfsdf',0,0,'zz123123','0:0:0:0:0:0:0:1','2022-11-16 11:50:00'),(148,0,0,'school','sdfsdf','sdfsdf',0,0,'zz123123','0:0:0:0:0:0:0:1','2022-11-16 11:50:00'),(149,0,0,'school','sdfsdf','sdfsdf',0,1,'zz123123','0:0:0:0:0:0:0:1','2022-11-16 11:50:00'),(150,0,0,'school','sdfsdf','sdfsdf',0,1,'zz123123','0:0:0:0:0:0:0:1','2022-11-16 11:50:00'),(151,0,0,'story','','',0,0,'zz123123','0:0:0:0:0:0:0:1','2022-11-17 09:53:42'),(152,0,0,'qna','1:1 고객문의','1:1 고객문의',0,0,'zz123123','0:0:0:0:0:0:0:1','2022-11-17 10:14:28'),(153,0,0,'qna','1:1 고객문의','1:1 고객문의',0,0,'zz123123','0:0:0:0:0:0:0:1','2022-11-17 10:14:31'),(154,0,0,'qna','1:1 고객문의','1:1 고객문의',0,0,'zz123123','0:0:0:0:0:0:0:1','2022-11-17 10:14:33'),(155,0,0,'qna','1:1 고객문의','1:1 고객문의',0,0,'zz123123','0:0:0:0:0:0:0:1','2022-11-17 10:14:35'),(156,0,0,'faq','자주 묻는 질문','자주 묻는 질문',0,0,'zz123123','0:0:0:0:0:0:0:1','2022-11-17 10:14:47'),(157,0,0,'faq','자주 묻는 질문','자주 묻는 질문',0,0,'zz123123','0:0:0:0:0:0:0:1','2022-11-17 10:14:50'),(158,0,0,'faq','1:1 고객문의자주 묻는 질문','자주 묻는 질문',0,0,'zz123123','0:0:0:0:0:0:0:1','2022-11-17 10:14:53'),(159,0,0,'faq','자주 묻는 질문','자주 묻는 질문',0,0,'zz123123','0:0:0:0:0:0:0:1','2022-11-17 10:14:57'),(160,143,0,'free',NULL,'123',0,0,'zz123123','0:0:0:0:0:0:0:1','2022-11-17 11:26:52'),(161,0,0,'story','농작물','~',0,7,'zz123123','0:0:0:0:0:0:0:1','2022-11-17 11:46:19'),(162,161,0,'free',NULL,'ㅂㅈㅇㅂㅈㅇㅂ',0,0,'zz123123','0:0:0:0:0:0:0:1','2022-11-17 11:46:26');
/*!40000 ALTER TABLE `board_article` ENABLE KEYS */;
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
