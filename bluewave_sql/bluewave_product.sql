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
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product` (
  `product_id` int NOT NULL AUTO_INCREMENT,
  `p_price` int NOT NULL,
  `p_name` varchar(100) NOT NULL,
  `p_description` varchar(100) DEFAULT NULL,
  `main_image` varchar(300) DEFAULT NULL,
  `sub_image` varchar(300) DEFAULT NULL,
  `description_image` varchar(300) DEFAULT NULL,
  `category_id` int NOT NULL,
  `sub_category_id` int DEFAULT NULL,
  PRIMARY KEY (`product_id`),
  KEY `fk_product_catetoryid_idx` (`category_id`),
  CONSTRAINT `fk_product_catetoryid` FOREIGN KEY (`category_id`) REFERENCES `category` (`category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (1,9800,'MJK 모던샤인 무소음 벽시계 300','MJK Modern Shine Silent Wall Clock 300','http://localhost:8000/MJK Modern Shine Silent Wall Clock 300_1.jpg','http://localhost:8000/MJK Modern Shine Silent Wall Clock 300_2.jpg','http://localhost:8000/MJK Modern Shine Silent Wall Clock 300_info.jpg',1,1),(2,18900,'코코도르 비누꽃 꽃다발 + 쇼핑백 세트','Cocodor Soap Flower Bouquet + Shopping Bag Set','http://localhost:8000/flower_1.jpg','http://localhost:8000/flower_2.jpg','http://localhost:8000/flower_info.jpg',1,1),(3,45900,'디오프 사계절 차렵이불 세트','Diop Four Seasons Comforter Set','http://localhost:8000/Bedding set_1.jpg','http://localhost:8000/Bedding set_2.jpg','http://localhost:8000/Bedding set_info.jpg',1,2),(4,29900,'바이빔 워셔블 웨이비 라인 쉐입 비정형 단모 거실 러그','By Beam Washable Wavy Line Shape Irregular Short Pile Living Room Rug','http://localhost:8000/rug_1.jpg','http://localhost:8000/rug_2.jpg','http://localhost:8000/rug_info.jpg',1,2),(5,35960,'아디다스 빅사이즈포함 반팔티셔츠 칠부반바지 세트 운동복 트레이닝복','Adidas big size short-sleeved T-shirt, three-quarter shorts set, sportswear, training clothes','http://localhost:8000/의상1.jpg',NULL,'http://localhost:8000/의상1-1.jpg',3,4),(6,42400,'나이키 드라이 PARK 반팔반바지 상하의 세트','Nike Dry PARK short sleeve shorts top and bottom set','http://localhost:8000/의상2.jpg',NULL,'http://localhost:8000/의상2-1.jpg',3,4),(7,26900,'나이키 남성용 드라이 PARK VII 트레이닝 긴팔 저지','Nike Men\'s Dry PARK VII Training Long Sleeve Jersey','http://localhost:8000/의상3.jpg',NULL,'http://localhost:8000/의상3-1.jpg',3,4),(8,73350,'나이키 남성 에어 맥스 임팩트 4 스포츠 캐주얼 농구화 DM1124-001','Nike Men\'s Air Max Impact 4 Sports Casual Basketball Shoes DM1124-001','http://localhost:8000/신발1.jpg',NULL,'http://localhost:8000/신발1-1.jpg',3,5),(9,39700,'드펀 하이 남성용 스니커즈 농구화 ','DeFun High Men\'s Sneakers Basketball Shoes','http://localhost:8000/신발2.jpg',NULL,'http://localhost:8000/신발2-1.jpg',3,5),(10,49500,'하이큐만화책 1~45권 (10권 세트 선택구매) - 대원씨아이','Haikyu comic book volumes 1 to 45 (10 volume set optional purchase) - Daewon CI','http://localhost:8000/하이큐.jpg',NULL,'http://localhost:8000/하이큐상세.jpg',4,6),(11,16000,'마루는 강쥐3','Maru is a  gangjwi 3','http://localhost:8000/마루는강쥐3.jpg',NULL,'http://localhost:8000/마루는강쥐3상세.jpg',4,6),(12,4950,'원피스 ONE PIECE 106 ','One Piece ONE PIECE 106','http://localhost:8000/원피스.jpg',NULL,'http://localhost:8000/원피스상세.jpg',4,6),(13,13000,'개를 낳았다 1 ','gave birth to a dog 1','http://localhost:8000/개를낳았다.jpg',NULL,'http://localhost:8000/개를낳았다상세.jpg',4,6),(14,22000,'전지적 푸바오 시점 ','Omniscient Fubao Perspective','http://localhost:8000/푸바오시점.jpg',NULL,'http://localhost:8000/푸바오시점상세.jpg',4,6),(15,5650,'제브라 블렌 3색볼펜 BLEN','Zebra Blen 3-color ballpoint pen BLEN','http://localhost:8000/제브라블렌.png',NULL,'http://localhost:8000/제브라블렌상세.png',5,7),(16,16470,'제브라 사라사클립볼펜 빈티지 0.5mm 10색','Zebra Sarasa Clip Ballpoint Pen Vintage 0.5mm 10 colors','http://localhost:8000/제브라사라사클립볼펜.png',NULL,'http://localhost:8000/제브라사라사클립볼펜상세.png',5,7),(17,7300,'모닝글로리 슬립온 3색 볼펜 0.7 mm 10개','Morning Glory Slip-on 3-color ballpoint pen 0.7 mm 10 pieces','http://localhost:8000/모닝글로리.png',NULL,'http://localhost:8000/모닝글로리상세.png',5,7),(18,4000,'제브라 마일드라이너 형광펜, 5개','Zebra mild liner highlighter, 5 pieces','http://localhost:8000/제브라마일드라이너.png',NULL,'http://localhost:8000/제브라마일드라이너상세.png',5,7),(19,6370,'모나미 굵은글씨용 네임펜 M, 6개입','Monami Bold Letter Name Pen M, 6 pieces','http://localhost:8000/모나미.png',NULL,'http://localhost:8000/모나미상세.png',5,7),(20,26400,'하림펫푸드 더리얼 그레인프리 크런치 어덜트 강아지사료','Harim Pet Food The Real Grain Free Crunch Adult Dog Food','http://localhost:8000/사료1.jpg',NULL,'http://localhost:8000/사료1-1.jpg',6,8),(21,29480,'인디고 특허 유산균 면역 앤 헤어볼 고양이 사료, 헤어볼면역','Indigo patented lactic acid bacteria immunity and hairball cat food, hairball immunity','http://localhost:8000/사료2.jpg',NULL,'http://localhost:8000/사료2-1.jpg',6,8),(22,9890,'딩동펫 반려동물 해바라기 도넛 방석','Ding Dong Pet Pet Sunflower Donut Cushion','http://localhost:8000/펫방석1.jpg',NULL,'http://localhost:8000/펫방석1-1.jpg',6,8),(23,8950,'레드퍼피 강아지 홀드라쿠션','Red Puppy Dog Holder Cushion','http://localhost:8000/펫방석2.jpg',NULL,'http://localhost:8000/펫방석2-1.jpg',6,8),(24,11000,'마벨러스홈데코 반려동물 순면 방석','Marvelous Home Deco Pet Cotton Cushion','http://localhost:8000/펫방석3.jpg',NULL,'http://localhost:8000/펫방석3-1.jpg',6,8);
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-07-12  3:15:02
