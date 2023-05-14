-- MySQL dump 10.13  Distrib 8.0.32, for Win64 (x86_64)
--
-- Host: localhost    Database: rmrl
-- ------------------------------------------------------
-- Server version	8.0.32

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
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin` (
  `id` int(10) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `firstname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `counterlock` int DEFAULT '0',
  `role` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'admin',
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username_UNIQUE` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin`
--

LOCK TABLES `admin` WRITE;
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` VALUES (0000000006,'lance phillip','descartin','email@email.com','vlad123','$2b$10$f6hlil3pPsoARDpNfE2/leEeCi3BZe23KJjkUUC5EtqTHAxa1f9.S',0,'admin','active','2023-04-29 16:25:39','2023-05-13 05:48:11'),(0000000007,'vladiere','kazhu','kazhu@email.com','kazhu12','$2b$10$BHL3ONW3WZmNPCkSvvIeqOe9FlfqW6z0ZHVIRoVDHPN4GYOPoBwlW',0,'admin','active','2023-05-09 22:41:10','2023-05-09 23:05:46'),(0000000008,'robert','quijano','quijano@email.com','quijano123','$2b$10$LSX4kaUjJtxYBSeKS99/COWIDV/mOpIKwq0M0MHFH7CEZDypvhcxm',0,'admin','active','2023-05-09 22:44:50','2023-05-09 22:44:50'),(0000000011,'mercy','macan','macan@email.com','macan123','$2b$10$oW2rdXQ.ccNMzPWkwNNBv.dZy9T8eJk887PYPYfy6RD5ANd.teK3i',0,'admin','active','2023-05-09 22:46:46','2023-05-09 22:46:46'),(0000000012,'ritchie','formoso','formoso@email.com','formoso12','$2b$10$MaZsrDsUJkV4trOed55xH.9cNLzAtGCBeDOwf2K6AZLCp8ADkgR9W',0,'admin','active','2023-05-09 22:50:14','2023-05-09 22:50:14'),(0000000022,'qwe','qwe','qwe@qwe.qwe','qwe','$2b$10$43IRa3AzWrNyO1yR0hJ5fuYIxPJdyAv9RsVQC5yZQOjWrJ7hQZP/e',0,'admin','active','2023-05-09 23:19:04','2023-05-10 01:04:39');
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-05-13 15:01:14
