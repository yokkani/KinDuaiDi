-- MySQL dump 10.13  Distrib 8.0.18, for Win64 (x86_64)
--
-- Host: localhost    Database: sesite
-- ------------------------------------------------------
-- Server version	8.0.18

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
-- Table structure for table `borrow_borrow`
--

DROP TABLE IF EXISTS `borrow_borrow`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `borrow_borrow` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `request_date` date DEFAULT NULL,
  `request_time` varchar(8) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `borrow_date` date DEFAULT NULL,
  `return_date` date DEFAULT NULL,
  `takeback_date` date DEFAULT NULL,
  `status` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `student_id_id` int(11) DEFAULT NULL,
  `cancel_by_id` int(11) DEFAULT NULL,
  `confirm_by_id` int(11) DEFAULT NULL,
  `defective_by_id` int(11) DEFAULT NULL,
  `return_by_id` int(11) DEFAULT NULL,
  `fine` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `borrow_borrow_student_id_id_86da6fea_fk_auth_user_id` (`student_id_id`),
  KEY `borrow_borrow_cancel_by_id_0179be91_fk_auth_user_id` (`cancel_by_id`),
  KEY `borrow_borrow_confirm_by_id_92368f24_fk_auth_user_id` (`confirm_by_id`),
  KEY `borrow_borrow_defective_by_id_0bfb35b9_fk_auth_user_id` (`defective_by_id`),
  KEY `borrow_borrow_return_by_id_7eb25250_fk_auth_user_id` (`return_by_id`),
  CONSTRAINT `borrow_borrow_cancel_by_id_0179be91_fk_auth_user_id` FOREIGN KEY (`cancel_by_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `borrow_borrow_confirm_by_id_92368f24_fk_auth_user_id` FOREIGN KEY (`confirm_by_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `borrow_borrow_defective_by_id_0bfb35b9_fk_auth_user_id` FOREIGN KEY (`defective_by_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `borrow_borrow_return_by_id_7eb25250_fk_auth_user_id` FOREIGN KEY (`return_by_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `borrow_borrow_student_id_id_86da6fea_fk_auth_user_id` FOREIGN KEY (`student_id_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=98 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `borrow_borrow`
--

LOCK TABLES `borrow_borrow` WRITE;
/*!40000 ALTER TABLE `borrow_borrow` DISABLE KEYS */;
INSERT INTO `borrow_borrow` VALUES (43,'2019-11-27','20:21:59','2019-11-27','2019-11-28','2019-11-27','04',1,NULL,1,NULL,1,NULL),(44,'2019-11-27','20:22:22','2019-11-28','2019-11-29',NULL,'05',1,1,NULL,NULL,NULL,NULL),(45,'2019-11-27','20:22:45','2019-11-27','2019-11-29','2019-11-28','04',1,NULL,1,NULL,1,NULL),(46,'2019-11-27','20:23:36','2019-11-27','2019-11-28','2019-11-28','04',1,NULL,1,NULL,1,NULL),(47,'2019-11-27','20:23:57',NULL,'2019-11-29',NULL,'05',1,1,NULL,NULL,NULL,NULL),(48,'2019-11-27','20:24:14',NULL,'2019-12-02',NULL,'05',1,1,NULL,NULL,NULL,NULL),(52,'2019-11-27','23:55:17',NULL,'2019-11-28',NULL,'05',1,1,NULL,NULL,NULL,NULL),(61,'2019-11-28','01:10:33',NULL,'2019-11-29',NULL,'05',1,1,NULL,NULL,NULL,NULL),(62,'2019-11-28','01:10:55',NULL,'2019-11-29',NULL,'05',1,1,NULL,NULL,NULL,NULL),(63,'2019-11-28','01:11:18',NULL,'2019-11-29',NULL,'05',1,1,NULL,NULL,NULL,NULL),(64,'2019-11-28','01:18:48',NULL,'2019-11-29',NULL,'05',1,1,NULL,NULL,NULL,NULL),(65,'2019-11-28','01:19:57',NULL,'2019-11-29',NULL,'05',1,1,NULL,NULL,NULL,NULL),(66,'2019-11-28','01:21:47','2019-11-29','2019-11-30',NULL,'05',1,1,NULL,NULL,NULL,NULL),(67,'2019-11-28','01:26:45','2019-11-28','2019-11-28','2019-11-28','04',1,NULL,1,NULL,1,NULL),(68,'2019-11-28','01:22:49','2019-11-29','2019-11-30',NULL,'05',1,1,NULL,NULL,NULL,NULL),(72,'2019-11-28','03:24:38','2019-11-28','2019-11-29','2019-11-28','04',1,NULL,1,NULL,1,NULL),(74,'2019-11-28','03:30:27','2019-11-29','2019-11-30',NULL,'05',1,1,NULL,NULL,NULL,NULL),(75,'2019-11-28','03:26:04','2019-11-28','2019-11-30','2019-11-28','04',1,NULL,1,NULL,1,NULL),(76,'2019-11-28','03:29:59','2019-11-28','2019-11-30','2019-11-28','04',1,NULL,1,NULL,1,NULL),(78,'2019-11-28','03:42:38','2019-11-28','2019-11-30','2019-11-28','04',1,NULL,1,NULL,1,NULL),(79,'2019-11-28','04:03:10','2019-11-28','2019-11-29','2019-11-28','04',1,NULL,1,NULL,1,NULL),(80,'2019-11-28','04:04:01','2019-11-28','2019-12-02','2019-11-28','04',1,NULL,1,NULL,1,NULL),(82,'2019-11-28','04:19:03','2019-11-28','2019-11-30','2019-11-28','04',1,NULL,1,NULL,5,NULL),(83,'2019-11-28','04:35:24','2019-11-28','2019-11-01','2019-11-28','04',1,NULL,1,1,1,NULL),(84,'2019-11-28','04:43:52','2019-11-29','2019-11-30',NULL,'05',1,1,NULL,NULL,NULL,NULL),(87,'2019-11-28','04:45:00','2019-11-28','2019-11-29','2019-11-28','04',1,NULL,1,1,1,NULL),(88,'2019-11-28','04:53:16','2019-11-28','2019-11-29','2019-11-28','04',3,NULL,1,NULL,5,NULL),(90,'2019-11-28','06:14:17','2019-11-28','2019-12-01','2019-11-28','04',1,NULL,1,NULL,5,NULL),(91,'2019-11-28','06:18:50','2019-11-29','2019-12-03',NULL,'05',1,5,NULL,NULL,NULL,NULL),(92,'2019-11-28','06:35:28','2019-11-28','2019-11-30',NULL,'06',5,NULL,1,1,NULL,NULL),(93,'2019-11-28','06:36:00',NULL,'2019-12-03',NULL,'05',5,1,NULL,NULL,NULL,NULL),(94,'2019-11-28','06:36:12','2019-11-28','2019-11-29','2019-11-28','04',5,NULL,1,NULL,1,NULL),(95,'2019-11-28','06:36:44','2019-11-28','2019-12-02',NULL,'03',5,NULL,1,NULL,NULL,NULL),(96,'2019-11-28','06:37:12',NULL,'2019-12-01',NULL,'02',3,NULL,NULL,NULL,NULL,NULL),(97,'2019-11-28','06:38:48','2019-11-30','2019-12-04',NULL,'07',1,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `borrow_borrow` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-11-28  6:44:33
