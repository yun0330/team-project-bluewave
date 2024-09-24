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
-- Table structure for table `option`
--

DROP TABLE IF EXISTS `option`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `option` (
  `product_id` int NOT NULL,
  `option_name` varchar(30) NOT NULL,
  `option_price` int NOT NULL,
  `option_id` int NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`option_id`),
  KEY `fk_option_productid_idx` (`product_id`),
  CONSTRAINT `fk_option_productId` FOREIGN KEY (`product_id`) REFERENCES `product` (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=72 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `option`
--

LOCK TABLES `option` WRITE;
/*!40000 ALTER TABLE `option` DISABLE KEYS */;
INSERT INTO `option` VALUES (1,'로즈골드',9800,1),(1,'블랙',9800,2),(1,'그레이',9800,3),(2,'핑크',18900,4),(2,'레드',18900,5),(3,'딥그린멜론',45900,6),(3,'크림버터',45900,7),(3,'오션블루',45900,8),(4,'95*140cm',29900,9),(4,'140*200cm',29900,10),(4,'170*250cm',29900,11),(5,'L',35960,12),(5,'M',35960,13),(5,'S',35960,14),(6,'L',42400,15),(6,'M',42400,16),(6,'S',42400,17),(7,'L',26900,18),(7,'M',26900,19),(7,'S',26900,20),(8,'260',73350,21),(8,'270',73350,22),(8,'280',73350,23),(9,'260',39700,24),(9,'270',39700,25),(9,'280',39700,26),(10,'1~10권 ',48600,27),(10,'11~20권',49050,28),(10,'21~30권',49500,29),(10,'31~45권',74250,30),(11,'마루는 강쥐1',16000,31),(11,'마루는 강쥐2',16000,32),(11,'마루는 강쥐3',16000,33),(12,'원피스 ONEPIECE 1',4950,34),(12,'원피스 ONEPIECE 2',4950,35),(12,'원피스 ONEPIECE 3',4950,36),(13,'개를 낳았다 2',13000,37),(13,'개를 낳았다 시즌2 2',16000,38),(13,'개를 낳았다 시즌2 3',16000,39),(14,'전지적 푸바오 시점',24000,40),(14,'전지적 푸바오 시점: 아이러푸 에디션',24000,41),(15,'0.5mm 화이트',5650,42),(15,'0.5mm 그레이',5650,43),(15,'0.5mm 레드빈 라떼 ',5650,44),(16,'브라운 그레이 ',16470,45),(16,'블루그레이 ',16470,46),(16,'세피아블랙 ',16470,47),(17,'핑크',7300,48),(17,'화이트',7300,49),(17,'블랙',7300,50),(18,'혼합',4000,51),(18,'더스티핑크',4000,52),(18,'소다블루',4000,53),(19,'적색',6370,54),(19,'청색',6370,55),(19,'흑색',6370,56),(20,'1.6kg',26400,57),(20,'5.8kg',89000,58),(20,'10kg',152000,59),(21,'2kg',29480,60),(21,'6kg',75000,61),(21,'10kg',120000,62),(22,'S',9890,63),(22,'M',13500,64),(22,'L',18900,65),(23,'S',8950,66),(23,'M',13660,67),(23,'L',19000,68),(24,'S',11000,69),(24,'M',19800,70),(24,'L',29700,71);
/*!40000 ALTER TABLE `option` ENABLE KEYS */;
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
