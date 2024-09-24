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
-- Table structure for table `review`
--

DROP TABLE IF EXISTS `review`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `review` (
  `review_id` int NOT NULL AUTO_INCREMENT,
  `user_id` varchar(30) NOT NULL,
  `product_id` int NOT NULL,
  `order_id` int NOT NULL,
  `contents` text NOT NULL,
  `review_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `star_rating` int NOT NULL,
  `title` varchar(45) NOT NULL,
  PRIMARY KEY (`review_id`),
  KEY `fk_review_userId_idx` (`user_id`),
  KEY `fk_review_productId_idx` (`product_id`),
  KEY `fk_reivew_orderId_idx` (`order_id`),
  CONSTRAINT `fk_reivew_orderId` FOREIGN KEY (`order_id`) REFERENCES `order` (`order_id`),
  CONSTRAINT `fk_review_productId` FOREIGN KEY (`product_id`) REFERENCES `product` (`product_id`),
  CONSTRAINT `fk_review_userId` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `review`
--

LOCK TABLES `review` WRITE;
/*!40000 ALTER TABLE `review` DISABLE KEYS */;
INSERT INTO `review` VALUES (1,'star1234',20,88,'사람이 먹어도 야미야미~','2024-06-27 05:56:57',3,'맛있어요'),(2,'test123',1,89,'디자인도 맘에 들고 무소음이여서 강추합니다','2024-06-27 07:54:03',5,'디자인이 이뻐요'),(3,'test123',5,92,'생각보다 튼튼하지 않고 천의 질감이 별로네요 그냥 그저 그래요. 막 입을 용도로 구매했어요','2024-06-27 21:12:50',3,'그저 그래요'),(4,'test123',1,89,'디자인이 너무 이쁘고 시계 소리도 안나서 무척 좋아요 한번 구매했다가 너무 좋아서 또 구매했어요','2024-06-27 21:14:43',5,'강추!!!'),(5,'test123',21,90,'저희집 고양이가 잘 먹어요~','2024-06-27 21:49:31',4,'좋아요'),(6,'test123',15,91,'매끄럽게 잘 써져요','2024-06-27 21:50:02',4,'굳굳!!'),(7,'star1234',8,86,'ㄹㅇㄴ','2024-06-27 21:57:13',3,'ㄹㅇㄴ'),(8,'star1234',20,88,'ㄹㅇㄴ','2024-06-27 21:57:53',5,'ㄹㅇㄴ'),(9,'test123',5,92,'ㄹㅇㅎㅀㅇ','2024-07-03 07:25:50',3,'ㄹㅇㅎㅀㅇ'),(10,'test123',21,90,'리뷰등록 테스트중입니다\n줄바꿈되어 표시되어야 합니다','2024-07-03 07:59:38',3,'리뷰 등록 테스트'),(11,'test123',5,92,'ㄹㅇㅎㅇㅀ','2024-07-04 06:27:02',4,'ㅇㅎㄹㄹㅇ'),(12,'test123',5,92,'fsdsfd','2024-07-04 06:33:58',3,'fddfs'),(13,'test123',5,92,'sdffds','2024-07-04 06:35:32',4,'sdffds'),(14,'star1234',3,87,'리뷰 등록 테스트','2024-07-11 03:02:38',3,'리뷰 등록 테스트');
/*!40000 ALTER TABLE `review` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-07-12  3:15:04
