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
-- Table structure for table `tbl_loanrequests`
--

DROP TABLE IF EXISTS `tbl_loanrequests`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_loanrequests` (
  `id` int NOT NULL AUTO_INCREMENT,
  `member_id` int NOT NULL,
  `position` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` bigint NOT NULL,
  `loanterm` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `request_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `purpose` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `modepayment` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `repaymentsched` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `yearstayed` int NOT NULL,
  `tinno` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fbacc` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `spousename` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nodependents` int DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `emstatus` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `salaryincome` bigint NOT NULL,
  `otherincome` bigint NOT NULL,
  `noofyears` int NOT NULL,
  `comaker_id` int NOT NULL,
  `other_institution` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'unread',
  `description` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_loanrequests`
--

LOCK TABLES `tbl_loanrequests` WRITE;
/*!40000 ALTER TABLE `tbl_loanrequests` DISABLE KEYS */;
INSERT INTO `tbl_loanrequests` VALUES (31,35,'manager',20000,'1 year','2023-05-12 12:24:36','tuition','cash','daily',15,'060463406000048600064','tintin dako','ricklyn',2,'atlantice oceanic','regular',10000,5000,10,36,'no','read','petty cash loan'),(32,37,'owner',20000,'5 years','2023-05-12 18:19:05','tuition','cash','daily',15,'1230084065503210','tintin','sabog',2,'babag 2','regular',5000,1500,5,36,'no','read','regular loan'),(33,38,'owner',24000,'2','2023-05-13 09:12:24','tuition','cash','daily',24,'56026032023020223','macan','somehon',3,'cordova','regular',5000,1200,5,35,'no','read','regular loan');
/*!40000 ALTER TABLE `tbl_loanrequests` ENABLE KEYS */;
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
