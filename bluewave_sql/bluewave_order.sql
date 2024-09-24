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
-- Table structure for table `order`
--

DROP TABLE IF EXISTS `order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order` (
  `order_id` int NOT NULL AUTO_INCREMENT,
  `order_number` varchar(40) NOT NULL,
  `user_id` varchar(30) NOT NULL,
  `product_id` int NOT NULL,
  `order_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `order_name` varchar(30) NOT NULL,
  `order_phone` varchar(14) DEFAULT NULL,
  `order_addr` varchar(100) DEFAULT NULL,
  `order_addr_detail` varchar(100) DEFAULT NULL,
  `order_count` int NOT NULL,
  `total_amount` int NOT NULL,
  `main_image` varchar(300) DEFAULT NULL,
  `payment` int NOT NULL,
  `total_count` int NOT NULL,
  `p_name` varchar(100) NOT NULL,
  `user_email` varchar(50) DEFAULT NULL,
  `review_yn` varchar(45) NOT NULL DEFAULT 'N',
  PRIMARY KEY (`order_id`),
  KEY `fk_order_userid_idx` (`user_id`),
  KEY `fk_order_productid_idx` (`product_id`),
  CONSTRAINT `fk_order_productId` FOREIGN KEY (`product_id`) REFERENCES `product` (`product_id`),
  CONSTRAINT `fk_order_userId` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=93 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order`
--

LOCK TABLES `order` WRITE;
/*!40000 ALTER TABLE `order` DISABLE KEYS */;
INSERT INTO `order` VALUES (65,'120240624161606-2','1',1,'2024-06-23 22:16:06','park jun','01048407154','idion','dsadsadsadsadasd',4,75600,'zzunzzang1@naver.com',132300,2,'코코도르 비누꽃 꽃다발 + 쇼핑백 세트',NULL,'N'),(66,'120240624161606-2','1',1,'2024-06-23 22:16:06','park jun','01048407154','idion','dsadsadsadsadasd',3,56700,'zzunzzang1@naver.com',132300,2,'코코도르 비누꽃 꽃다발 + 쇼핑백 세트',NULL,'N'),(67,'120240624161848-1','1',1,'2024-06-23 22:18:48','park jun','01048407154','idion','dsadsadsadsadasd',1,9800,'zzunzzang1@naver.com',9800,1,'MJK 모던샤인 무소음 벽시계 300',NULL,'N'),(68,'120240624173334-1','1',1,'2024-06-23 23:33:34','park jun','01048407154','idion','dsadsadsadsadasd',1,9800,'zzunzzang1@naver.com',58800,3,'park jun',NULL,'N'),(69,'120240624173334-1','1',1,'2024-06-23 23:33:34','park jun','01048407154','idion','dsadsadsadsadasd',4,39200,'zzunzzang1@naver.com',58800,3,'park jun',NULL,'N'),(70,'120240624173334-1','1',1,'2024-06-23 23:33:34','park jun','01048407154','idion','dsadsadsadsadasd',1,9800,'zzunzzang1@naver.com',58800,3,'park jun',NULL,'N'),(71,'120240624173849-1','1',1,'2024-06-23 23:38:49','park jun','01048407154','idion','dsadsadsadsadasd',4,39200,'zzunzzang1@naver.com',78400,2,'park jun',NULL,'N'),(72,'120240624173849-1','1',1,'2024-06-23 23:38:49','park jun','01048407154','idion','dsadsadsadsadasd',4,9800,'zzunzzang1@naver.com',78400,2,'park jun',NULL,'N'),(73,'120240624175348-5','1',5,'2024-06-23 23:53:48','park jun','01048407154','idion','dasdasdas',1,35960,'zzunzzang1@naver.com',109310,2,'park jun',NULL,'N'),(74,'120240624175348-5','1',8,'2024-06-23 23:53:48','park jun','01048407154','idion','dasdasdas',1,73350,'zzunzzang1@naver.com',109310,2,'park jun',NULL,'N'),(78,'test12320240625143308-22','test123',22,'2024-06-24 20:33:08','테스트','01012345678','경기 성남시 분당구 판교역로 166','1층 103호',1,18900,'test@test.com',18900,1,'테스트',NULL,'N'),(79,'test12320240625143739-5','test123',5,'2024-06-24 20:37:39','테스트','01012345678','인천 연수구 연수동 578-4','303동 3012호',1,35960,'test@test.com',35960,1,'테스트',NULL,'Y'),(80,'test12320240625144852-15','test123',15,'2024-06-24 20:48:52','테스트','01012345678','경기 성남시 분당구 판교역로 166','1층 103호',1,5650,'test@test.com',5650,1,'테스트',NULL,'N'),(81,'test12320240625145022-15','test123',15,'2024-06-24 20:50:22','테스트','01012345678','경기 성남시 분당구 판교역로 166','1층 103호',1,5650,'test@test.com',5650,1,'테스트',NULL,'N'),(82,'test12320240625145809-2','test123',2,'2024-06-24 20:58:09','테스트','01012345678','경기 성남시 분당구 판교역로 166','1층 103호',1,18900,'test@test.com',18900,1,'테스트',NULL,'N'),(83,'test12320240625150646-15','test123',15,'2024-06-24 21:06:46','테스트','01012345678','경기 성남시 분당구 판교역로 166','1층 103호',1,5650,'test@test.com',5650,1,'테스트',NULL,'N'),(84,'star123420240625150911-2','star1234',2,'2024-06-24 21:09:11','test','01012345678','fdsafdsa','fdsafdsfa',1,18900,'test@test.com',18900,1,'test',NULL,'N'),(85,'test12320240625151521-22','test123',22,'2024-06-24 21:15:21','테스트','01012345678','경기 성남시 분당구 판교역로 166','1층 103호',1,18900,'test@test.com',18900,1,'테스트',NULL,'N'),(86,'star123420240626115627-8','star1234',8,'2024-06-25 17:56:27','test','01012345678','인천 연수구 연수동 578-4','2차 301동 1301호',1,73350,'http://localhost:8000/신발1.jpg',119250,2,'나이키 남성 에어 맥스 임팩트 4 스포츠 캐주얼 농구화 DM1124-001','test@test.com','N'),(87,'star123420240626115627-8','star1234',3,'2024-06-25 17:56:27','test','01012345678','인천 연수구 연수동 578-4','2차 301동 1301호',1,45900,'http://localhost:8000/Bedding set_1.jpg',119250,2,'디오프 사계절 차렵이불 세트','test@test.com','Y'),(88,'star123420240627060644-20','star1234',20,'2024-06-26 21:06:44','테스트','01012345678','인천 연수구 연수동 578-4','1층 103호',1,26400,'http://localhost:8000/사료1.jpg',26400,1,'하림펫푸드 더리얼 그레인프리 크런치 어덜트 강아지사료','test@test.com','N'),(89,'test12320240627165052-1','test123',1,'2024-06-27 07:50:52','홍길순','01012345678','제주특별자치도 제주시 영평동 2181','1층 103호',1,9800,'http://localhost:8000/MJK Modern Shine Silent Wall Clock 300_1.jpg',44930,3,'MJK 모던샤인 무소음 벽시계 300','test123@test.com','N'),(90,'test12320240627165052-1','test123',21,'2024-06-27 07:50:52','홍길순','01012345678','제주특별자치도 제주시 영평동 2181','1층 103호',1,29480,'http://localhost:8000/사료2.jpg',44930,3,'인디고 특허 유산균 면역 앤 헤어볼 고양이 사료, 헤어볼면역','test123@test.com','N'),(91,'test12320240627165052-1','test123',15,'2024-06-27 07:50:52','홍길순','01012345678','제주특별자치도 제주시 영평동 2181','1층 103호',1,5650,'http://localhost:8000/제브라블렌.png',44930,3,'제브라 블렌 3색볼펜 BLEN','test123@test.com','N'),(92,'test12320240627165527-5','test123',5,'2024-06-27 07:55:27','홍길순','0321234567','경기 성남시 분당구 판교역로 166','2차 301동 1301호',1,35960,'http://localhost:8000/의상1.jpg',35960,1,'아디다스 빅사이즈포함 반팔티셔츠 칠부반바지 세트 운동복 트레이닝복','fda@gmail.com','Y');
/*!40000 ALTER TABLE `order` ENABLE KEYS */;
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
