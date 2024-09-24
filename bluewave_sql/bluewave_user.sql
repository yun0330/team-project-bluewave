-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: localhost    Database: bluewave
-- ------------------------------------------------------
-- Server version	8.0.37

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
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `user_id` varchar(30) NOT NULL,
  `user_pw` varchar(150) NOT NULL,
  `user_name` varchar(30) NOT NULL,
  `user_email` varchar(50) NOT NULL,
  `user_phone` varchar(14) NOT NULL,
  `enroll_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `token` varchar(100) DEFAULT NULL,
  `address` varchar(100) NOT NULL,
  `address_detail` varchar(100) NOT NULL,
  `zone_code` int DEFAULT NULL,
  `user_type` varchar(1) NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES ('kakao1234','$2b$10$I1kf.FBY0mPKfJb1EcXc.uaoFDCcArxLSyiLTiilB3Aij0HgmqVhW','문수현','hrno3826@naver.com','01012345678','2024-07-11 07:54:02',NULL,'인천 연수구 새말로 154','303동 3012호',21928,'K'),('star1234','$2b$10$3GYO/GMEkKKHb2RiTMdjHOvymGeZ1RMjaT9pqZXfklhcIK0GKpLJq','테스트','free@gail.com','01012345678','2024-06-24 01:22:56',NULL,'제주특별자치도 제주시 첨단로 242','1층 103호',63309,''),('test123','$2b$10$YhhwZcax8YW5svPy/5/TnOD/YNTtgM4dd1dfGC2DOK/BJFn856uMG','홍길순','test123@test.com','01078945612','2024-06-25 03:45:25',NULL,'제주특별자치도 제주시 영평동 2181','1층 ',63309,''),('test789','$2b$10$vMHVZ2sg/0A45/pg4zW2ouRSmd9o4e3YMOVO9CLI1OuNcAZyeX92K','오토나','otona@test.com','01078945612','2024-06-28 01:50:11',NULL,'경기 성남시 분당구 판교역로2번길 1','303호',13536,'');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-07-12  3:15:03
