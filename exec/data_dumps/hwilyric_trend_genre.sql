-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: j8b107.p.ssafy.io    Database: hwilyric
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
-- Table structure for table `trend_genre`
--

DROP TABLE IF EXISTS `trend_genre`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `trend_genre` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT 'PK',
  `trend_id` bigint NOT NULL COMMENT 'trend 테이블 PK',
  `name` varchar(50) NOT NULL COMMENT '장르명',
  `ratio` double NOT NULL COMMENT '장르 점유율',
  PRIMARY KEY (`id`),
  KEY `fk_trend_trendGenre_id` (`trend_id`),
  CONSTRAINT `fk_trend_trendGenre_id` FOREIGN KEY (`trend_id`) REFERENCES `trend` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=380 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trend_genre`
--

LOCK TABLES `trend_genre` WRITE;
/*!40000 ALTER TABLE `trend_genre` DISABLE KEYS */;
INSERT INTO `trend_genre` VALUES (1,1,'성인가요/트로트',0.95),(2,1,'록/메탈',0.05),(3,2,'성인가요/트로트',1),(4,3,'성인가요/트로트',0.89),(5,3,'발라드',0.11),(6,4,'성인가요/트로트',0.89),(7,4,'국악가요',0.05),(8,4,'국악',0.05),(9,4,'발라드',0.02),(10,5,'성인가요/트로트',0.9),(11,5,'발라드',0.03),(12,5,'국악가요',0.03),(13,5,'국악',0.03),(14,6,'성인가요/트로트',0.76),(15,6,'R&B/Soul',0.08),(16,6,'국악가요',0.05),(17,6,'국악',0.05),(18,6,'발라드',0.03),(19,6,'포크/블루스',0.03),(20,7,'성인가요/트로트',0.81),(21,7,'록/메탈',0.11),(22,7,'발라드',0.04),(23,7,'포크/블루스',0.04),(24,8,'성인가요/트로트',0.72),(25,8,'포크/블루스',0.22),(26,8,'발라드',0.06),(27,9,'성인가요/트로트',0.66),(28,9,'포크/블루스',0.3),(29,9,'발라드',0.05),(30,10,'성인가요/트로트',0.55),(31,10,'포크/블루스',0.28),(32,10,'발라드',0.1),(33,10,'록/메탈',0.08),(34,11,'포크/블루스',0.46),(35,11,'성인가요/트로트',0.39),(36,11,'발라드',0.12),(37,11,'록/메탈',0.02),(38,12,'성인가요/트로트',0.42),(39,12,'포크/블루스',0.34),(40,12,'발라드',0.18),(41,12,'록/메탈',0.05),(42,13,'성인가요/트로트',0.53),(43,13,'포크/블루스',0.28),(44,13,'발라드',0.2),(45,14,'성인가요/트로트',0.63),(46,14,'포크/블루스',0.26),(47,14,'발라드',0.11),(48,15,'성인가요/트로트',0.65),(49,15,'발라드',0.13),(50,15,'록/메탈',0.1),(51,15,'포크/블루스',0.06),(52,15,'댄스',0.04),(53,15,'-',0.02),(54,16,'성인가요/트로트',0.4),(55,16,'포크/블루스',0.26),(56,16,'발라드',0.23),(57,16,'록/메탈',0.09),(58,16,'댄스',0.02),(59,17,'성인가요/트로트',0.47),(60,17,'포크/블루스',0.2),(61,17,'발라드',0.17),(62,17,'록/메탈',0.13),(63,17,'댄스',0.03),(64,18,'성인가요/트로트',0.52),(65,18,'발라드',0.19),(66,18,'록/메탈',0.14),(67,18,'포크/블루스',0.14),(68,19,'성인가요/트로트',0.58),(69,19,'포크/블루스',0.18),(70,19,'록/메탈',0.15),(71,19,'창작동요',0.03),(72,19,'키즈',0.03),(73,19,'발라드',0.03),(74,19,'댄스',0.03),(75,20,'성인가요/트로트',0.54),(76,20,'발라드',0.25),(77,20,'록/메탈',0.11),(78,20,'포크/블루스',0.07),(79,20,'댄스',0.04),(80,21,'성인가요/트로트',0.44),(81,21,'발라드',0.21),(82,21,'록/메탈',0.17),(83,21,'포크/블루스',0.14),(84,21,'댄스',0.02),(85,21,'국내드라마',0.01),(86,22,'성인가요/트로트',0.37),(87,22,'발라드',0.29),(88,22,'록/메탈',0.15),(89,22,'포크/블루스',0.15),(90,22,'댄스',0.05),(91,23,'발라드',0.34),(92,23,'성인가요/트로트',0.33),(93,23,'포크/블루스',0.15),(94,23,'록/메탈',0.12),(95,23,'댄스',0.06),(96,23,'국내영화',0.01),(97,24,'발라드',0.35),(98,24,'성인가요/트로트',0.33),(99,24,'포크/블루스',0.12),(100,24,'록/메탈',0.11),(101,24,'댄스',0.11),(102,25,'발라드',0.46),(103,25,'성인가요/트로트',0.18),(104,25,'포크/블루스',0.14),(105,25,'록/메탈',0.11),(106,25,'댄스',0.1),(107,25,'국내드라마',0.01),(108,25,'국내영화',0.01),(109,26,'발라드',0.5),(110,26,'성인가요/트로트',0.14),(111,26,'포크/블루스',0.13),(112,26,'록/메탈',0.12),(113,26,'댄스',0.1),(114,26,'국내영화',0.01),(115,27,'발라드',0.57),(116,27,'록/메탈',0.16),(117,27,'포크/블루스',0.11),(118,27,'성인가요/트로트',0.1),(119,27,'댄스',0.05),(120,27,'국내영화',0.01),(121,27,'-',0.01),(122,28,'발라드',0.59),(123,28,'포크/블루스',0.17),(124,28,'성인가요/트로트',0.09),(125,28,'록/메탈',0.09),(126,28,'댄스',0.07),(127,29,'발라드',0.6),(128,29,'댄스',0.15),(129,29,'록/메탈',0.1),(130,29,'포크/블루스',0.07),(131,29,'성인가요/트로트',0.07),(132,29,'국내드라마',0.01),(133,30,'발라드',0.45),(134,30,'댄스',0.21),(135,30,'록/메탈',0.14),(136,30,'포크/블루스',0.06),(137,30,'국내드라마',0.06),(138,30,'성인가요/트로트',0.04),(139,30,'국내영화',0.03),(140,30,'랩/힙합',0.01),(141,30,'-',0.01),(142,31,'발라드',0.46),(143,31,'댄스',0.22),(144,31,'록/메탈',0.15),(145,31,'국내드라마',0.04),(146,31,'성인가요/트로트',0.03),(147,31,'랩/힙합',0.03),(148,31,'포크/블루스',0.03),(149,31,'재즈',0.01),(150,31,'보컬재즈',0.01),(151,31,'인디음악',0.01),(152,31,'-',0.01),(153,32,'발라드',0.48),(154,32,'댄스',0.24),(155,32,'록/메탈',0.13),(156,32,'포크/블루스',0.06),(157,32,'R&B/Soul',0.02),(158,32,'랩/힙합',0.02),(159,32,'국내영화',0.02),(160,32,'인디음악',0.02),(161,32,'국내드라마',0.01),(162,32,'재즈',0.01),(163,32,'애시드/퓨전/팝',0.01),(164,33,'발라드',0.46),(165,33,'댄스',0.29),(166,33,'록/메탈',0.12),(167,33,'R&B/Soul',0.03),(168,33,'포크/블루스',0.03),(169,33,'랩/힙합',0.03),(170,33,'국내영화',0.02),(171,33,'인디음악',0.02),(172,33,'성인가요/트로트',0.01),(173,34,'발라드',0.39),(174,34,'댄스',0.34),(175,34,'록/메탈',0.13),(176,34,'랩/힙합',0.05),(177,34,'성인가요/트로트',0.04),(178,34,'포크/블루스',0.02),(179,34,'국내영화',0.01),(180,34,'R&B/Soul',0.01),(181,34,'-',0.01),(182,35,'발라드',0.49),(183,35,'댄스',0.25),(184,35,'록/메탈',0.16),(185,35,'랩/힙합',0.04),(186,35,'포크/블루스',0.02),(187,35,'-',0.02),(188,35,'성인가요/트로트',0.01),(189,35,'R&B/Soul',0.01),(190,36,'댄스',0.35),(191,36,'발라드',0.34),(192,36,'록/메탈',0.14),(193,36,'랩/힙합',0.11),(194,36,'성인가요/트로트',0.02),(195,36,'인디음악',0.01),(196,36,'R&B/Soul',0.01),(197,36,'포크/블루스',0.01),(198,36,'뉴에이지',0.01),(199,37,'댄스',0.36),(200,37,'발라드',0.34),(201,37,'록/메탈',0.13),(202,37,'R&B/Soul',0.08),(203,37,'랩/힙합',0.07),(204,37,'포크/블루스',0.02),(205,37,'국내드라마',0.01),(206,38,'발라드',0.38),(207,38,'댄스',0.25),(208,38,'록/메탈',0.13),(209,38,'R&B/Soul',0.12),(210,38,'랩/힙합',0.07),(211,38,'인디음악',0.02),(212,38,'국내영화',0.01),(213,38,'국내드라마',0.01),(214,38,'포크/블루스',0.01),(215,39,'발라드',0.47),(216,39,'댄스',0.23),(217,39,'록/메탈',0.14),(218,39,'랩/힙합',0.07),(219,39,'R&B/Soul',0.04),(220,39,'국내드라마',0.02),(221,39,'인디음악',0.02),(222,39,'포크/블루스',0.01),(223,40,'발라드',0.39),(224,40,'댄스',0.19),(225,40,'록/메탈',0.15),(226,40,'R&B/Soul',0.13),(227,40,'랩/힙합',0.08),(228,40,'인디음악',0.03),(229,40,'포크/블루스',0.02),(230,40,'국내드라마',0.01),(231,41,'발라드',0.42),(232,41,'R&B/Soul',0.17),(233,41,'댄스',0.13),(234,41,'록/메탈',0.12),(235,41,'랩/힙합',0.11),(236,41,'일렉트로니카',0.01),(237,41,'-',0.01),(238,41,'국내드라마',0.01),(239,41,'POP',0.01),(240,41,'인디음악',0.01),(241,42,'발라드',0.43),(242,42,'댄스',0.17),(243,42,'R&B/Soul',0.15),(244,42,'록/메탈',0.12),(245,42,'랩/힙합',0.07),(246,42,'국내드라마',0.05),(247,42,'일렉트로니카',0.01),(248,43,'발라드',0.52),(249,43,'R&B/Soul',0.21),(250,43,'댄스',0.1),(251,43,'록/메탈',0.07),(252,43,'랩/힙합',0.06),(253,43,'국내드라마',0.04),(254,44,'발라드',0.56),(255,44,'댄스',0.12),(256,44,'R&B/Soul',0.11),(257,44,'랩/힙합',0.1),(258,44,'록/메탈',0.07),(259,44,'국내영화',0.02),(260,44,'국내드라마',0.02),(261,45,'발라드',0.34),(262,45,'댄스',0.31),(263,45,'랩/힙합',0.24),(264,45,'R&B/Soul',0.05),(265,45,'국내드라마',0.03),(266,45,'록/메탈',0.03),(267,45,'성인가요/트로트',0.01),(268,46,'댄스',0.5),(269,46,'발라드',0.33),(270,46,'랩/힙합',0.09),(271,46,'R&B/Soul',0.04),(272,46,'록/메탈',0.03),(273,46,'국내드라마',0.01),(274,47,'댄스',0.41),(275,47,'발라드',0.37),(276,47,'랩/힙합',0.09),(277,47,'록/메탈',0.06),(278,47,'R&B/Soul',0.04),(279,47,'국내드라마',0.03),(280,47,'인디음악',0.01),(281,48,'댄스',0.46),(282,48,'발라드',0.34),(283,48,'랩/힙합',0.1),(284,48,'록/메탈',0.07),(285,48,'인디음악',0.02),(286,48,'포크/블루스',0.01),(287,49,'댄스',0.39),(288,49,'발라드',0.31),(289,49,'랩/힙합',0.14),(290,49,'록/메탈',0.12),(291,49,'R&B/Soul',0.03),(292,49,'포크/블루스',0.01),(293,50,'발라드',0.32),(294,50,'댄스',0.26),(295,50,'랩/힙합',0.18),(296,50,'국내드라마',0.1),(297,50,'록/메탈',0.07),(298,50,'R&B/Soul',0.05),(299,50,'포크/블루스',0.02),(300,50,'일렉트로니카',0.01),(301,51,'발라드',0.33),(302,51,'댄스',0.24),(303,51,'랩/힙합',0.17),(304,51,'R&B/Soul',0.09),(305,51,'국내드라마',0.09),(306,51,'일렉트로니카',0.03),(307,51,'포크/블루스',0.03),(308,51,'록/메탈',0.02),(309,51,'인디음악',0.01),(310,52,'랩/힙합',0.28),(311,52,'댄스',0.26),(312,52,'발라드',0.21),(313,52,'R&B/Soul',0.09),(314,52,'국내드라마',0.07),(315,52,'록/메탈',0.05),(316,52,'인디음악',0.02),(317,52,'포크/블루스',0.02),(318,53,'발라드',0.27),(319,53,'댄스',0.19),(320,53,'R&B/Soul',0.15),(321,53,'랩/힙합',0.14),(322,53,'국내드라마',0.13),(323,53,'포크/블루스',0.06),(324,53,'인디음악',0.05),(325,53,'록/메탈',0.03),(326,54,'발라드',0.27),(327,54,'댄스',0.21),(328,54,'랩/힙합',0.14),(329,54,'R&B/Soul',0.11),(330,54,'인디음악',0.1),(331,54,'포크/블루스',0.09),(332,54,'국내드라마',0.07),(333,54,'록/메탈',0.02),(334,55,'발라드',0.31),(335,55,'댄스',0.26),(336,55,'랩/힙합',0.16),(337,55,'R&B/Soul',0.11),(338,55,'인디음악',0.07),(339,55,'국내드라마',0.04),(340,55,'록/메탈',0.03),(341,55,'포크/블루스',0.02),(342,55,'일렉트로니카',0.01),(343,56,'발라드',0.41),(344,56,'댄스',0.12),(345,56,'랩/힙합',0.12),(346,56,'인디음악',0.09),(347,56,'국내드라마',0.08),(348,56,'록/메탈',0.07),(349,56,'R&B/Soul',0.06),(350,56,'포크/블루스',0.02),(351,56,'일렉트로니카',0.01),(352,56,'성인가요/트로트',0.01),(353,57,'발라드',0.33),(354,57,'댄스',0.16),(355,57,'랩/힙합',0.16),(356,57,'국내드라마',0.15),(357,57,'인디음악',0.07),(358,57,'록/메탈',0.05),(359,57,'R&B/Soul',0.04),(360,57,'포크/블루스',0.02),(361,57,'성인가요/트로트',0.02),(362,58,'발라드',0.34),(363,58,'댄스',0.24),(364,58,'랩/힙합',0.11),(365,58,'록/메탈',0.09),(366,58,'국내드라마',0.09),(367,58,'인디음악',0.07),(368,58,'R&B/Soul',0.04),(369,58,'성인가요/트로트',0.02),(370,58,'포크/블루스',0.01),(371,59,'발라드',0.26),(372,59,'댄스',0.26),(373,59,'랩/힙합',0.15),(374,59,'R&B/Soul',0.08),(375,59,'록/메탈',0.08),(376,59,'국내드라마',0.08),(377,59,'인디음악',0.07),(378,59,'포크/블루스',0.02),(379,59,'성인가요/트로트',0.01);
/*!40000 ALTER TABLE `trend_genre` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-04-06 16:07:49
