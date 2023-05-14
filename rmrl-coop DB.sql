CREATE DATABASE  IF NOT EXISTS `rmrl` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `rmrl`;
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
-- Table structure for table `access_token`
--

DROP TABLE IF EXISTS `access_token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `access_token` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `whois` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token_added` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=116 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `access_token`
--

LOCK TABLES `access_token` WRITE;
/*!40000 ALTER TABLE `access_token` DISABLE KEYS */;
INSERT INTO `access_token` VALUES (1,25,'member','eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpYXQiOjE2ODM0MjYwMDk5NjR9.YijbMKkAWCSxK9pqDjoPteTwsW0mOlFW1OUwDcoAZt4','2023-05-07 10:20:09'),(2,6,'admin','eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOjYsImlhdCI6MTY4MzQyNzE5MTczNX0.mR7Tuj6ITWu5Fwf-UkxEfE47OXLE82cmGmBoZL2Ea3o','2023-05-07 10:31:20'),(14,6,'admin','eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOjYsImlhdCI6MTY4MzQyNzg1MzA1NX0.XRtbDh79GKdBAp0FaDePUAgrz2SCeRjL8AVhZ7tDfJQ','2023-05-07 10:50:53'),(15,25,'member','eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpYXQiOjE2ODM0Mjc5NTg4Nzl9.ghPKoUehFxX0A09-6KceVmomHuby0t88mwOx4DqCm9M','2023-05-07 10:52:39'),(16,6,'admin','eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOjYsImlhdCI6MTY4MzQyODM4NjIxMX0.OSlxrLIK-Qf7oyruoMI6m524ujvC_0-KYkWMk7KDuHM','2023-05-07 10:59:46'),(17,25,'member','eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpYXQiOjE2ODM0MzAxMDI1OTd9.KZgRDnpUMD9FmZoaBiWACILwlSbYUT6-hiFhGThTauo','2023-05-07 11:28:22'),(18,26,'member','eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpYXQiOjE2ODM0MzI1OTI4ODB9.Fmhd_T6gNKsXO2CwKgA-L9VrIul8T4Lr7YvViW_9Dpk','2023-05-07 12:09:53'),(19,26,'member','eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpYXQiOjE2ODM0NDk0MTEwMzl9.dlpACBu2ql5eSypjgUoALQSyzfojVtOffcqWcCWNjtA','2023-05-07 16:50:11'),(20,6,'admin','eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOjYsImlhdCI6MTY4MzQ2MjA1NTEwN30.6YpCcbzqf9NIJZHbVOCKRmQmKpZD58C9-PzMZVUQtj0','2023-05-07 20:20:55'),(21,6,'admin','eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOjYsImlhdCI6MTY4MzQ2NDAwMjQ4Mn0.fvybU0h5CS0Xt3whOYjL3536tzQ9I9G1uFUrb3ZvBa8','2023-05-07 20:53:22'),(22,6,'admin','eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOjYsImlhdCI6MTY4MzQ2NDgxMjAyN30.IP0_tL5fdUYGZNKFZkmWOj_NaAaHL8Kt3nb9kDgCAJY','2023-05-07 21:06:52'),(23,27,'member','eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpYXQiOjE2ODM0NzI0NTE4OTh9.vbSWCrorSWD6TqoAerymmpxneG5xZQoCQoMRbFtLDHk','2023-05-07 23:14:12'),(24,27,'member','eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpYXQiOjE2ODM0Nzc3MTQ0OTZ9.EEo-34nv1CsGGcZuV4dblxJckkTYjBhs1NyGs7pCpi8','2023-05-08 00:41:54'),(25,27,'member','eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpYXQiOjE2ODM1MDgxMTY1NDN9.tfaDFW9FN6tdqZZc-jcDbjRuihpeecfs2ybjsu3nIoA','2023-05-08 09:08:36'),(26,27,'member','eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpYXQiOjE2ODM1MTE4Njk4OTF9.KrsREnL8twLzSsGVGwoh2QdGGxzqIXuTviqDP7HgA6c','2023-05-08 10:11:10'),(27,27,'member','eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpYXQiOjE2ODM1MTM2OTUwNTh9.2wWdYQbXnPfWNcvbCJUxJZZqv3hQigPDDrlegWri7d4','2023-05-08 10:41:35'),(28,27,'member','eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpYXQiOjE2ODM1MjgxNjM4NTN9.K0yHqrMix-px378bxsZbWgMdJEI6yADHRPGrfVFS1uk','2023-05-08 14:42:44'),(29,27,'member','eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpYXQiOjE2ODM1NDkyNzAxMTV9.BUbawrWIQaien3PnJdtk0XUQKWLoG6h063eyouErfKQ','2023-05-08 20:34:30'),(30,6,'admin','eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOjYsImlhdCI6MTY4MzU1NjIxNzQ4OH0.r77a_-4LCgzigL9_H9DCQBRhUlnVFBSZ0m6aJuCYRKg','2023-05-08 22:30:17'),(31,27,'member','eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpYXQiOjE2ODM1OTk4MjQyMTZ9.7ySiKXt-fNxeDFJhb0SHo9Ah_sF7-mQK1exkjkpHa_c','2023-05-09 10:37:04'),(32,27,'member','eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpYXQiOjE2ODM1OTk5NTQ1ODR9.qwf-sajSxRCu4pWXV2ReUIvTF-rGVazO6PVtuRsMnlE','2023-05-09 10:39:14'),(33,6,'admin','eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOjYsImlhdCI6MTY4MzYxMjU5MjkwMn0.7OXm3XyJ_FkFAVj47kHwx2Bn8sUnEKF2hUQ2e9zTP-E','2023-05-09 14:09:53'),(34,27,'member','eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpYXQiOjE2ODM2MTI2OTU0MDZ9.oci8mzI6k-1e9lq42SZmeNQ2GFAB4n19FLPG1Q-GvkY','2023-05-09 14:11:35'),(35,28,'member','eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpYXQiOjE2ODM2MTM4MDE4OTR9.TyIK62bch7UizD4neg1WBEUA4QZU3wFM0OwsFshYric','2023-05-09 14:30:02'),(36,6,'admin','eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOjYsImlhdCI6MTY4MzYxODk1MDc0OX0.6E7-1Sga1CnMKWAgBqZ04kvF6EeeTPtcbmmwRjih_Po','2023-05-09 15:55:50'),(37,28,'member','eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpYXQiOjE2ODM2MTg5ODE4Mjh9.evUh1N_Q9WGViun0IboIOeaYKLJL-NZ8Dbcz_gC-3oc','2023-05-09 15:56:21'),(38,7,'admin','eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOjcsImlhdCI6MTY4MzY3MzU0NjMwNX0.klzwoppXIVIja4BG0Xt_lptI_SyZfA9DTUbOADrPPNY','2023-05-10 07:05:46'),(39,6,'admin','eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOjYsImlhdCI6MTY4MzY3MzgyMzExNX0.gzT1fp-ArR3exp9dx_4wqqkYagMeHinni4_m1R9HP_E','2023-05-10 07:10:23'),(40,6,'admin','eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOjYsImlhdCI6MTY4MzY3NTcxMDgxNX0.DXykyswyen--ttbTuqh3J0v4b-zg2Y86uAsxbVxI7RM','2023-05-10 07:41:50'),(41,6,'admin','eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOjYsImlhdCI6MTY4MzY3NTc2NTI1OX0.avLcaLSP9NZj6KZ0TCoaaZsTtw6q3dMbiWmk4cn5sSI','2023-05-10 07:42:45'),(42,6,'admin','eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOjYsImlhdCI6MTY4MzY3NzM5OTQyMH0.rSsHo8ZhlODk2GFMzVAAEOCa-r4SFQ6QC26Lp9siLe4','2023-05-10 08:09:59'),(43,6,'admin','eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOjYsImlhdCI6MTY4MzY4Mjc3NDI1N30.2dgq8fU9oYJNKGwwsbq9eStEGuXpFTJEqoDpB0zIST0','2023-05-10 09:39:34'),(44,6,'admin','eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOjYsImlhdCI6MTY4MzY4MzQ4NDI2MX0.GnTszsh_qCG6ITA3gG7JAVQUC1ZO0YTvFF6-OO7y_Ug','2023-05-10 09:51:24'),(45,28,'member','eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpYXQiOjE2ODM3MDU4MDk0Mzh9.4SDS9pl_HPyLFXrWnK2SWWbo3I18jZ_MpzJFKBjB_vQ','2023-05-10 16:03:29'),(46,6,'admin','eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOjYsImlhdCI6MTY4MzcxODY4MTk1M30.L1Q6dnYj4tpILPr9s_o6vziqayX4sX6pztwLaY90n10','2023-05-10 19:38:02'),(47,34,'member','eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpYXQiOjE2ODM3MTg3ODk1OTd9.hckg2WxfnoQkQAOskSA0ZZclUMhX1bbq0rvg-VI-qPM','2023-05-10 19:39:49'),(48,6,'admin','eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOjYsImlhdCI6MTY4MzczNzA0NjI1OH0.Pvabaqb8JJxddAGk9AxAT0Wa_X8JCxHeOh6vjdTGTDY','2023-05-11 00:44:06'),(49,6,'admin','eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOjYsImlhdCI6MTY4MzczNzk3NDMyOX0.tuYy2fHCl8wPaYww0BF9BZx2m7eGXQaQkWZIuTZY8Qw','2023-05-11 00:59:34'),(50,6,'admin','eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOjYsImlhdCI6MTY4Mzc2MTQxNDY0N30.vrL_1a0l4bId6S21ry1g2ikO0R8H0mFOb2kxwSV5C6k','2023-05-11 07:30:14'),(51,6,'admin','eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOjYsImlhdCI6MTY4Mzc2MzY0MDIzNn0.Wedg4vRtItEc8Bq4V3Nr1jQPKS-0bjSV3VXTTAth5VQ','2023-05-11 08:07:20'),(52,6,'admin','eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOjYsImlhdCI6MTY4Mzc2NDc2Nzk4Nn0.aALoCC7gOVbUuVvOPDXhyXjEMVyGtYZnuVuDwnmcnW8','2023-05-11 08:26:08'),(53,6,'admin','eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOjYsImlhdCI6MTY4Mzc2NTY4NzAwNX0.93uy1tk4b_zxEm8gfIu20V0vFOnJxftfAIPR-5k59SQ','2023-05-11 08:41:27'),(54,6,'admin','eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOjYsImlhdCI6MTY4Mzc2NTk5Njk2MX0.FOQupm9mDbs6bixegirjCwG6lvx3ZbDV_zLM6H8Ytno','2023-05-11 08:46:37'),(55,6,'admin','eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOjYsImlhdCI6MTY4Mzc2NjYyNTA4MX0.oWXsy8HuKflkIu1TenMeaMw0pKS7QOMB_nMqVw7ZqmQ','2023-05-11 08:57:05'),(56,6,'admin','eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOjYsImlhdCI6MTY4Mzc2ODUzMjY4Mn0._qxh93FQGttnJeoDmb5JE5Vaixv3Upfy4JN2yM8bouo','2023-05-11 09:28:52'),(57,6,'admin','eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOjYsImlhdCI6MTY4Mzc3MTc3MDQ1OX0.hoX6yQQx5NUTH0wczg3nBz14Y5TjQjzNmtMSgz4v7z4','2023-05-11 10:22:50'),(58,6,'admin','eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOjYsImlhdCI6MTY4Mzc3MTkyMzIzOX0.qDHXIAtofLzMBQMqPs3Ap1aI4CB9TTsZi5NcAXbOfDs','2023-05-11 10:25:23'),(59,34,'member','eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpYXQiOjE2ODM3ODEzMTc0Njl9.HI13IS7OTkjDxzjvG4Lt_HfRLr4O_mAaeb9X4_WZ72Q','2023-05-11 13:01:57'),(60,6,'admin','eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOjYsImlhdCI6MTY4MzgyMDgwNzIwNn0.fSuDV8PG2NYJAE-xGmSg0bn45cpzsJift81Q0zmSq0c','2023-05-12 00:00:07'),(61,35,'member','eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpYXQiOjE2ODM4NjA1NzQxMjN9.WnVvzokZylDXR5kM9BuUvtV1LbDkEcSvggt0cButUVU','2023-05-12 11:02:54'),(62,35,'member','eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpYXQiOjE2ODM4NjUwMzkxMjF9.Nu-pxcKn_Ex57cPskrhLU2ZO68iryC2q8jEU-HdzvAc','2023-05-12 12:17:19'),(63,35,'member','eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpYXQiOjE2ODM4NjY4NTAxMTN9.LTq8P9FEPd_JdKh5ZIKTCHcwVW2lCysJ3yrRwq1uiuo','2023-05-12 12:47:30'),(64,6,'admin','eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOjYsImlhdCI6MTY4Mzg4MDEwNzE4Nn0.j4YVwg8CcGTTS6CCE5ks9GMHMCmY-9aTymKrTXk6mfw','2023-05-12 16:28:27'),(65,6,'admin','eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOjYsImlhdCI6MTY4Mzg4NjMwNTgxNX0.fUv3NbkfGmTIjFSZcaBLt4dNMqnUxnc1TYgqavIHTmw','2023-05-12 18:11:46'),(66,37,'member','eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpYXQiOjE2ODM4ODY2NDI1MTd9.iJ9mG7apLZCCV86bT-UKiYrwBaCoBhgYfit1bObxjbw','2023-05-12 18:17:22'),(67,6,'admin','eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOjYsImlhdCI6MTY4Mzg5NTU1MDYzNH0.Cz-I0lMTeD5byUT1xM0J0P-yh8C-2b6BxT7uDvG0KHI','2023-05-12 20:45:50'),(68,6,'admin','eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOjYsImlhdCI6MTY4Mzg5OTYxMTU0OX0.3vC7bBSzDOIGrpEqptPEniKISzhDr3JI85CCNT0fDEk','2023-05-12 21:53:31'),(69,36,'member','eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpYXQiOjE2ODM4OTk3NzY5MjB9.VpWgmZwOQRJrkhVnY2y9b3wcnlMjX2chn6fVL3rOZb8','2023-05-12 21:56:17'),(70,6,'admin','eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOjYsImlhdCI6MTY4MzkzODQ2MDAzNH0.u6XqgvdN8pau4td5YKhArauVRPPkquh-PyOrAYp60Bo','2023-05-13 08:41:00'),(71,35,'member','eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpYXQiOjE2ODM5Mzg1MzMxODJ9.vpfPocblSFGb8KtJpnRKjaNGOdIrn_WjJ4i8KYYgTFY','2023-05-13 08:42:13'),(72,35,'member','eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpYXQiOjE2ODM5Mzk3MjA2MTV9.jjXeYduL34v1y2-aVBZdF0PZY4ydYOe4vLoCLkCaJxw','2023-05-13 09:02:00'),(73,6,'admin','eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOjYsImlhdCI6MTY4MzkzOTg2OTg0NH0.K-92S_bgpDU4cghHzNzqwl0rESunnHLWNH31nOlmHD8','2023-05-13 09:04:30'),(74,6,'admin','eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOjYsImlhdCI6MTY4MzkzOTkwMTI1OH0.76fwgy7w_9wuPXOq7YD6ekW78DiAVuIwCz9u3lZiUmQ','2023-05-13 09:05:01'),(75,6,'admin','eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOjYsImlhdCI6MTY4MzkzOTkzMDEzOH0.xIuuaAWnC2aoKA-xB974-UcQWIlSz_UnVaf01jwu83g','2023-05-13 09:05:30'),(76,38,'member','eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpYXQiOjE2ODM5NDAxNDQ0Njd9.esyFSUqDr8m51SUssmGfsDoqZoK8n_A2WBiHh74mdHE','2023-05-13 09:09:04'),(77,6,'admin','eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOjYsImlhdCI6MTY4Mzk0MDUyNzg3N30.vtBnRA_Us0taTfdJzIXUCDe1JSjaXDEYu3jm5nLsoSY','2023-05-13 09:15:28'),(78,35,'member','eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpYXQiOjE2ODM5NDM0OTk0NDV9.wp9mXRH_2yVJ3i6PZfVD_smyZdnZju9-R8lBr-zz8o0','2023-05-13 10:04:59'),(79,38,'member','eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpYXQiOjE2ODM5NDUwMTkyNjJ9.IeqUSju030R1CIiKU_IYoeKaiQQ7r5e5HNgKL75XsAc','2023-05-13 10:30:19'),(80,6,'admin','eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOjYsImlhdCI6MTY4Mzk1NTM0NjMzNX0.gXzCaTIDAiSurqavR_xOygKjWKicIfnlpgiKs9qXfZM','2023-05-13 13:22:26'),(81,6,'admin','eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOjYsImlhdCI6MTY4Mzk1Njg5MTU5OX0.wSF4lP1WDiXiecKm74bMkcy-3pINyelAE0d5XKbekMA','2023-05-13 13:48:11'),(82,35,'member','eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpYXQiOjE2ODM5NjE0MDA3NzF9.g5lP0ZU2CzIZKR5rlr4g0o9h-e9CJIttvUlcusC5hKI','2023-05-13 15:03:20'),(83,6,'admin','eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOjYsImlhdCI6MTY4Mzk2MTU5NTMwOX0.5zbop9VBIiEeATsKbh4m4j6sxpOYfKKCk0_plDmCNaM','2023-05-13 15:06:35'),(84,6,'admin','eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOjYsImlhdCI6MTY4Mzk2MTU5NTM3N30.Vux67-NJhP2jGeVmqp7i0-rufd7NYzrCevneFGuFPnY','2023-05-13 15:06:35'),(85,6,'admin','eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOjYsImlhdCI6MTY4Mzk2MjAxNDEyOH0.ARGSx-AxBH5NxMkjW4SlzQqQoJ4x7qvYrJgRzdIZ0W0','2023-05-13 15:13:34'),(86,35,'member','eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpYXQiOjE2ODM5NjMwMTg2NzB9.vhpEtKq_2val3RWRuycnb3SqZj4mb46fGzElUyXD3Zs','2023-05-13 15:30:18'),(87,6,'admin','eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOjYsImlhdCI6MTY4Mzk4NjMyMjc1M30.5hrzSWPgCUxvTvR03eyafzItuYvsF0CkI3yMqzH7RQM','2023-05-13 21:58:42'),(88,37,'member','eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpYXQiOjE2ODQwMDExNDQxNjl9.mHY03YGPO8hUicojFAqP5mcRgh2eTf_Z21fSO6fIel4','2023-05-14 02:05:44'),(89,37,'member','eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpYXQiOjE2ODQwMDQ3NDUxMDR9.czg6-s3oLYgyd6wPMDbHRcjT4pag1WMssFFn7HXUvyA','2023-05-14 03:05:45'),(90,37,'member','eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpYXQiOjE2ODQwMDQ4ODA2NjZ9.UcrOKt0nQEdp8iAh0goyTmempzmmgezwMh56An9FoJw','2023-05-14 03:08:00'),(91,37,'member','eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpYXQiOjE2ODQwMDQ5MDIzMjJ9.vYzsOzsFReyenTmRowORdp4vq-qsJ1arEoVNleeknGI','2023-05-14 03:08:22'),(92,37,'member','eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpYXQiOjE2ODQwMDQ5MjQzMDV9.o4RK4SmEqrE4X6obeWT2CYA7Zf-XoR3owBbhleXYtr0','2023-05-14 03:08:44'),(93,37,'member','eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpYXQiOjE2ODQwMDQ5NTQzMTN9.6p6KGIAJZdLWNbglF14f-KVIhg8NV77jj5bvhVwnJZw','2023-05-14 03:09:14'),(94,6,'admin','eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOjYsImlhdCI6MTY4NDAwNzI1NDU0OX0.zODrrL_dC-JotdO6RniuMzfDOuE6LmQJYr5RcF-WxMg','2023-05-14 03:47:34'),(95,6,'admin','eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOjYsImlhdCI6MTY4NDAwOTAyOTU1Nn0.AgD1cCTM1yhgmjjd_PvJJMqZz15V0O-vdpH8SdRZu60','2023-05-14 04:17:09'),(96,6,'admin','eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOjYsImlhdCI6MTY4NDAwOTA3NzI4NX0.bu_NZ8KxUPn27l_9lgVrVfl6UrLM0-P_CH3GDKTIYl8','2023-05-14 04:17:57'),(97,6,'admin','eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOjYsImlhdCI6MTY4NDAwOTA4Mjc5MH0.xdWGIev0QUMzVGxtNRCEsR1uNxF040c2n7a9Qn1IQ_U','2023-05-14 04:18:03'),(98,6,'admin','eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOjYsImlhdCI6MTY4NDAwOTc2NzU3Mn0.Ak0TAGBqbtsNgcl3ML92wtJfRZeF2X69vKKogOVzwN0','2023-05-14 04:29:27'),(99,6,'admin','eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOjYsImlhdCI6MTY4NDAwOTg0MzUxOX0.gFJAIyTp_uj4tKTFjTZS2EbnD8RoWkRaEQ5ZjTyknvQ','2023-05-14 04:30:43'),(100,6,'admin','eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOjYsImlhdCI6MTY4NDAwOTg0OTM3N30.BLRN49DmUugUAQZNpJr_G5P41YxeAdeoBX8HXKuwwCU','2023-05-14 04:30:49'),(101,6,'admin','eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOjYsImlhdCI6MTY4NDAwOTg4ODE0OX0.cUwPn9k297rFaYI-qOcQI5nX7aexLUZgIBQhW2mvlV4','2023-05-14 04:31:28'),(102,6,'admin','eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOjYsImlhdCI6MTY4NDAwOTg5NzQwMX0.opFwaJSren9DOs0lI4TLemPVvrWK03YrtA3RRebXaSI','2023-05-14 04:31:37'),(103,6,'admin','eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOjYsImlhdCI6MTY4NDAwOTkxMDM4MH0.nvXqF5_C5ppzjItz-8wb7RgEPqQoZFN10Kgy4HJfYS8','2023-05-14 04:31:50'),(104,6,'admin','eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOjYsImlhdCI6MTY4NDAyNjQ0NjE0NH0.jEtayFbtU-h2tnTD3rjWJP21Z1s9fZof5Aq-yjYxYsw','2023-05-14 09:07:26'),(105,6,'admin','eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOjYsImlhdCI6MTY4NDAyOTM5OTAxM30.imt4bdQjs38lKmO_A6hzs5wP0tT3yn_MqVB6YFwAI4g','2023-05-14 09:56:39'),(106,6,'admin','eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOjYsImlhdCI6MTY4NDAzNzU5ODczNH0.QFZ_G8-SgGnQlKmjUsX3pB_nyYOTnzPWheTk7LlwelM','2023-05-14 12:13:18'),(107,6,'admin','eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOjYsImlhdCI6MTY4NDAzNzcyMzM5M30.Iu2K8R47rnpLFZj7gSR8H_2LrqH15gxiMiS-Tvd9FBM','2023-05-14 12:15:23'),(108,6,'admin','eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOjYsImlhdCI6MTY4NDA0MTczMzI3MX0.tL4E1r51KacXsHgrk7uX7r1KBpSdCop03og0TtfEf2k','2023-05-14 13:22:13'),(109,6,'admin','eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOjYsImlhdCI6MTY4NDA1MzUwMDQzMn0.ABuioLNTJN8OcuPMVkEIjqAuklKzzLVBZheRksq0pf4','2023-05-14 16:38:20'),(110,6,'admin','eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOjYsImlhdCI6MTY4NDA1NDMwMDc5MH0.iT2Uyb2WF0GFBIs2_jpK_f4n3BsTyS-7hG8jR2jjm9o','2023-05-14 16:51:40'),(111,6,'admin','eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOjYsImlhdCI6MTY4NDA1Njc1Nzk0MH0.Cp8wx2j5-ppmYHNeqQPe3FxDbUDDyTZHTf7BXLe9TBQ','2023-05-14 17:32:38'),(112,6,'admin','eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOjYsImlhdCI6MTY4NDA1ODg2MTM4Nn0.rQJ32Z9mDrqJWkmoatY7hEz146dx80aUSnikAoH3gaw','2023-05-14 18:07:41'),(113,6,'admin','eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOjYsImlhdCI6MTY4NDA2MTQyMTY3N30.MvpUP5Z3-e51CcjBWeRXHut94x5Z1YrU9VEFXUq3OqU','2023-05-14 18:50:21'),(114,6,'admin','eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOjYsImlhdCI6MTY4NDA2NTkxMDEzMn0.1_oNZD6FksJl2GbxnAHeJ2J8zXdGk7kRRCuaS3YFVIY','2023-05-14 20:05:10'),(115,6,'admin','eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOjYsImlhdCI6MTY4NDA2Njc2MzYzMX0.cv2HF2cFU4lsFXRq-0ZJpNgqK7NBBoTVAEgN2ubw7Dc','2023-05-14 20:19:23');
/*!40000 ALTER TABLE `access_token` ENABLE KEYS */;
UNLOCK TABLES;

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
INSERT INTO `admin` VALUES (0000000006,'lance phillip','descartin','email@email.com','vlad123','$2b$10$f6hlil3pPsoARDpNfE2/leEeCi3BZe23KJjkUUC5EtqTHAxa1f9.S',0,'admin','active','2023-04-29 16:25:39','2023-05-14 12:19:23'),(0000000007,'vladiere','kazhu','kazhu@email.com','kazhu12','$2b$10$BHL3ONW3WZmNPCkSvvIeqOe9FlfqW6z0ZHVIRoVDHPN4GYOPoBwlW',0,'admin','active','2023-05-09 22:41:10','2023-05-09 23:05:46'),(0000000008,'robert','quijano','quijano@email.com','quijano123','$2b$10$LSX4kaUjJtxYBSeKS99/COWIDV/mOpIKwq0M0MHFH7CEZDypvhcxm',0,'admin','active','2023-05-09 22:44:50','2023-05-09 22:44:50'),(0000000011,'mercy','macan','macan@email.com','macan123','$2b$10$oW2rdXQ.ccNMzPWkwNNBv.dZy9T8eJk887PYPYfy6RD5ANd.teK3i',0,'admin','active','2023-05-09 22:46:46','2023-05-09 22:46:46'),(0000000012,'ritchie','formoso','formoso@email.com','formoso12','$2b$10$MaZsrDsUJkV4trOed55xH.9cNLzAtGCBeDOwf2K6AZLCp8ADkgR9W',0,'admin','active','2023-05-09 22:50:14','2023-05-09 22:50:14'),(0000000022,'qwe','qwe','qwe@qwe.qwe','qwe','$2b$10$43IRa3AzWrNyO1yR0hJ5fuYIxPJdyAv9RsVQC5yZQOjWrJ7hQZP/e',0,'admin','active','2023-05-09 23:19:04','2023-05-10 01:04:39');
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `getloansdata`
--

DROP TABLE IF EXISTS `getloansdata`;
/*!50001 DROP VIEW IF EXISTS `getloansdata`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `getloansdata` AS SELECT 
 1 AS `formatted_date`,
 1 AS `status`,
 1 AS `partial_pay`,
 1 AS `amount`,
 1 AS `loanterm`,
 1 AS `firstname`,
 1 AS `middlename`,
 1 AS `lastname`,
 1 AS `member_id`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `getloansview`
--

DROP TABLE IF EXISTS `getloansview`;
/*!50001 DROP VIEW IF EXISTS `getloansview`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `getloansview` AS SELECT 
 1 AS `member_id`,
 1 AS `partial_pay`,
 1 AS `loan_amount`,
 1 AS `description`,
 1 AS `firstname`,
 1 AS `middlename`,
 1 AS `lastname`,
 1 AS `loanterm`,
 1 AS `purpose`,
 1 AS `modepayment`,
 1 AS `repaymentsched`,
 1 AS `formatted_date`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `tbl_employees`
--

DROP TABLE IF EXISTS `tbl_employees`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_employees` (
  `id` int(10) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `firstname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `position` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `counter_lock` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_employees`
--

LOCK TABLES `tbl_employees` WRITE;
/*!40000 ALTER TABLE `tbl_employees` DISABLE KEYS */;
INSERT INTO `tbl_employees` VALUES (0000000001,'lance phillip','descartin','09648746321','purok beauty in the sky, babag 2','bakel55632@jobbrett.com','branch manager','active','2023-05-04 13:35:09','2023-05-04 13:35:09',0),(0000000002,'ritchie','formoso','09874563214','cordova, cebu','formoso@email.com','teller','active','2023-05-05 11:22:22','2023-05-05 11:22:22',0),(0000000003,'robert','quijano','639874621555','babag 2, hanneyah','quijano@email.com','supervisor','deleted','2023-05-05 13:56:32','2023-05-05 13:56:32',0),(0000000004,'mercy','macan','09632563214','cordova gabi','macan@email.com','encoder','active','2023-05-13 19:48:36','2023-05-13 19:48:36',0);
/*!40000 ALTER TABLE `tbl_employees` ENABLE KEYS */;
UNLOCK TABLES;

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
INSERT INTO `tbl_loanrequests` VALUES (31,35,'manager',20000,'1 year','2023-05-12 12:24:36','tuition','cash','daily',15,'060463406000048600064','tintin dako','ricklyn',2,'atlantice oceanic','regular',10000,5000,10,36,'no','read','petty cash loan'),(32,37,'owner',20000,'5 years','2023-05-12 18:19:05','tuition','cash','daily',15,'1230084065503210','tintin','sabog',2,'babag 2','regular',5000,1500,5,36,'no','read','regular loan');
/*!40000 ALTER TABLE `tbl_loanrequests` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_loans`
--

DROP TABLE IF EXISTS `tbl_loans`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_loans` (
  `id` int NOT NULL AUTO_INCREMENT,
  `member_id` int NOT NULL,
  `requestloan_id` int NOT NULL,
  `date_accept` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `loan_amount` int NOT NULL,
  `partial_pay` int NOT NULL,
  `balance_pay` int NOT NULL,
  `interest` int DEFAULT NULL,
  `description` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'paying',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_loans`
--

LOCK TABLES `tbl_loans` WRITE;
/*!40000 ALTER TABLE `tbl_loans` DISABLE KEYS */;
INSERT INTO `tbl_loans` VALUES (22,35,31,'2023-05-12 12:36:18','accept',20000,2000,1667,400,'payed'),(23,37,32,'2023-05-12 18:19:38','pending',20000,333,400,NULL,'paying');
/*!40000 ALTER TABLE `tbl_loans` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_loantransactions`
--

DROP TABLE IF EXISTS `tbl_loantransactions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_loantransactions` (
  `id` int NOT NULL AUTO_INCREMENT,
  `member_id` int NOT NULL,
  `loan_id` int NOT NULL,
  `debit` int NOT NULL,
  `balance_pay` bigint NOT NULL DEFAULT '0',
  `date_pay` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status_pay` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT 'paying',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_loantransactions`
--

LOCK TABLES `tbl_loantransactions` WRITE;
/*!40000 ALTER TABLE `tbl_loantransactions` DISABLE KEYS */;
INSERT INTO `tbl_loantransactions` VALUES (15,35,14,18000,2000,'2023-05-12 15:10:07','paying'),(16,35,15,0,18000,'2023-05-12 15:40:30','payed');
/*!40000 ALTER TABLE `tbl_loantransactions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_loginlog`
--

DROP TABLE IF EXISTS `tbl_loginlog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_loginlog` (
  `id` int(10) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `acc_id` int(10) unsigned zerofill NOT NULL,
  `whois` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `browser` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ip_address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `login_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `loggedin_at` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=404 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_loginlog`
--

LOCK TABLES `tbl_loginlog` WRITE;
/*!40000 ALTER TABLE `tbl_loginlog` DISABLE KEYS */;
INSERT INTO `tbl_loginlog` VALUES (0000000146,0000000013,'member','mozilla firefox','2405:8d40:c20:2ec:a7:876d:1331:f345','success','2023-05-05 21:18:54'),(0000000149,0000000006,'admin','google chrome','2405:8d40:c20:2ec:a7:876d:1331:f345','success','2023-05-05 21:22:58'),(0000000150,0000000013,'member','mozilla firefox','131.226.66.153','success','2023-05-06 07:40:49'),(0000000151,0000000013,'member','mozilla firefox','131.226.66.153','success','2023-05-06 07:51:57'),(0000000152,0000000006,'admin','google chrome','2405:8d40:c20:2ec:3cd4:de2e:a325:7e33','success','2023-05-06 07:53:29'),(0000000154,0000000013,'member','mozilla firefox','2405:8d40:c20:2ec:4966:7940:22b8:515c','success','2023-05-06 09:39:15'),(0000000155,0000000006,'admin','google chrome','2405:8d40:c20:2ec:4966:7940:22b8:515c','success','2023-05-06 09:52:10'),(0000000157,0000000013,'member','mozilla firefox','offline','success','2023-05-06 10:02:20'),(0000000158,0000000013,'member','mozilla firefox','2405:8d40:c20:2ec:4966:7940:22b8:515c','success','2023-05-06 10:05:22'),(0000000159,0000000013,'member','mozilla firefox','2405:8d40:c20:2ec:4966:7940:22b8:515c','success','2023-05-06 10:13:10'),(0000000160,0000000013,'member','mozilla firefox','2405:8d40:c20:2ec:4966:7940:22b8:515c','success','2023-05-06 10:26:14'),(0000000161,0000000013,'member','mozilla firefox','2405:8d40:c20:2ec:4966:7940:22b8:515c','success','2023-05-06 10:27:03'),(0000000162,0000000025,'member','mozilla firefox','110.54.217.234','success','2023-05-06 13:20:31'),(0000000163,0000000006,'admin','google chrome','110.54.217.234','success','2023-05-06 13:30:52'),(0000000164,0000000006,'admin','google chrome','2405:8d40:40a6:263a:e9cb:7007:1cdf:f647','success','2023-05-06 17:28:37'),(0000000165,0000000025,'member','mozilla firefox','2405:8d40:40a6:263a:e9cb:7007:1cdf:f647','success','2023-05-06 17:29:57'),(0000000166,0000000025,'member','mozilla firefox','2405:8d40:40a6:263a:e9cb:7007:1cdf:f647','success','2023-05-06 20:53:21'),(0000000167,0000000025,'member','mozilla firefox','2405:8d40:40a6:263a:6196:de3b:9fcf:f8e1','success','2023-05-06 23:28:19'),(0000000168,0000000025,'member','mozilla firefox','2405:8d40:40a6:263a:6196:de3b:9fcf:f8e1','success','2023-05-06 23:28:50'),(0000000169,0000000025,'member','mozilla firefox','2405:8d40:40a6:263a:6196:de3b:9fcf:f8e1','success','2023-05-06 23:29:23'),(0000000170,0000000025,'member','mozilla firefox','2405:8d40:40a6:263a:6196:de3b:9fcf:f8e1','success','2023-05-06 23:29:46'),(0000000171,0000000025,'member','mozilla firefox','2405:8d40:40a6:263a:6196:de3b:9fcf:f8e1','success','2023-05-06 23:30:20'),(0000000172,0000000025,'member','mozilla firefox','2405:8d40:40a6:263a:6196:de3b:9fcf:f8e1','success','2023-05-06 23:30:57'),(0000000173,0000000025,'member','mozilla firefox','2405:8d40:40a6:263a:6196:de3b:9fcf:f8e1','success','2023-05-06 23:31:52'),(0000000174,0000000025,'member','mozilla firefox','2405:8d40:40a6:263a:6196:de3b:9fcf:f8e1','success','2023-05-06 23:32:40'),(0000000175,0000000025,'member','mozilla firefox','2405:8d40:40a6:263a:6196:de3b:9fcf:f8e1','success','2023-05-06 23:34:54'),(0000000176,0000000025,'member','mozilla firefox','2405:8d40:40a6:263a:6196:de3b:9fcf:f8e1','success','2023-05-06 23:35:37'),(0000000177,0000000025,'member','mozilla firefox','2405:8d40:40a6:263a:6196:de3b:9fcf:f8e1','success','2023-05-06 23:36:38'),(0000000178,0000000025,'member','mozilla firefox','2405:8d40:40a6:263a:6196:de3b:9fcf:f8e1','success','2023-05-06 23:37:49'),(0000000179,0000000025,'member','mozilla firefox','2405:8d40:40a6:263a:6196:de3b:9fcf:f8e1','success','2023-05-06 23:38:23'),(0000000180,0000000025,'member','mozilla firefox','2405:8d40:40a6:263a:6196:de3b:9fcf:f8e1','success','2023-05-06 23:39:27'),(0000000181,0000000025,'member','mozilla firefox','2405:8d40:40a6:263a:6196:de3b:9fcf:f8e1','success','2023-05-06 23:40:19'),(0000000182,0000000025,'member','mozilla firefox','2405:8d40:40a6:263a:41d9:8593:c770:9212','success','2023-05-07 00:34:09'),(0000000183,0000000025,'member','mozilla firefox','2405:8d40:40a6:263a:41d9:8593:c770:9212','success','2023-05-07 00:36:36'),(0000000184,0000000025,'member','mozilla firefox','2405:8d40:40a6:263a:41d9:8593:c770:9212','success','2023-05-07 00:41:09'),(0000000185,0000000025,'member','mozilla firefox','2405:8d40:40a6:263a:41d9:8593:c770:9212','success','2023-05-07 00:44:07'),(0000000186,0000000025,'member','mozilla firefox','2405:8d40:40a6:263a:41d9:8593:c770:9212','success','2023-05-07 00:45:06'),(0000000187,0000000025,'member','mozilla firefox','2405:8d40:40a6:263a:41d9:8593:c770:9212','success','2023-05-07 00:53:39'),(0000000188,0000000025,'member','mozilla firefox','2405:8d40:40a6:263a:41d9:8593:c770:9212','success','2023-05-07 00:54:45'),(0000000189,0000000025,'member','mozilla firefox','2405:8d40:40a6:263a:41d9:8593:c770:9212','success','2023-05-07 00:56:08'),(0000000190,0000000025,'member','mozilla firefox','2405:8d40:40a6:263a:41d9:8593:c770:9212','success','2023-05-07 00:56:58'),(0000000191,0000000025,'member','mozilla firefox','2405:8d40:40a6:263a:41d9:8593:c770:9212','success','2023-05-07 00:57:55'),(0000000192,0000000025,'member','mozilla firefox','2405:8d40:40a6:263a:41d9:8593:c770:9212','success','2023-05-07 00:58:45'),(0000000193,0000000025,'member','mozilla firefox','2405:8d40:40a6:263a:41d9:8593:c770:9212','success','2023-05-07 01:00:28'),(0000000194,0000000025,'member','mozilla firefox','2405:8d40:40a6:263a:41d9:8593:c770:9212','success','2023-05-07 01:15:43'),(0000000195,0000000025,'member','mozilla firefox','2405:8d40:40a6:263a:41d9:8593:c770:9212','success','2023-05-07 01:21:56'),(0000000196,0000000025,'member','mozilla firefox','2405:8d40:40a6:263a:41d9:8593:c770:9212','success','2023-05-07 01:25:34'),(0000000197,0000000025,'member','mozilla firefox','2405:8d40:40a6:263a:41d9:8593:c770:9212','success','2023-05-07 01:27:58'),(0000000198,0000000025,'member','mozilla firefox','2405:8d40:40a6:263a:41d9:8593:c770:9212','success','2023-05-07 01:41:35'),(0000000199,0000000025,'member','mozilla firefox','2405:8d40:40a6:263a:41d9:8593:c770:9212','success','2023-05-07 01:41:51'),(0000000200,0000000025,'member','mozilla firefox','2405:8d40:40a6:263a:41d9:8593:c770:9212','success','2023-05-07 01:42:40'),(0000000201,0000000025,'member','mozilla firefox','2405:8d40:40a6:263a:41d9:8593:c770:9212','success','2023-05-07 01:46:42'),(0000000202,0000000025,'member','mozilla firefox','2405:8d40:40a6:263a:41d9:8593:c770:9212','success','2023-05-07 01:53:53'),(0000000203,0000000025,'member','mozilla firefox','2405:8d40:40a6:263a:41d9:8593:c770:9212','success','2023-05-07 02:01:15'),(0000000204,0000000025,'member','mozilla firefox','2405:8d40:40a6:263a:41d9:8593:c770:9212','success','2023-05-07 02:02:14'),(0000000205,0000000025,'member','mozilla firefox','2405:8d40:40a6:263a:41d9:8593:c770:9212','success','2023-05-07 02:06:04'),(0000000206,0000000025,'member','mozilla firefox','2405:8d40:40a6:263a:41d9:8593:c770:9212','success','2023-05-07 02:06:56'),(0000000207,0000000025,'member','mozilla firefox','2405:8d40:40a6:263a:41d9:8593:c770:9212','success','2023-05-07 02:08:12'),(0000000208,0000000025,'member','mozilla firefox','offline','success','2023-05-07 03:24:53'),(0000000209,0000000025,'member','mozilla firefox','2405:8d40:40a6:263a:ad56:fe4f:b456:df03','success','2023-05-07 03:29:05'),(0000000210,0000000025,'member','mozilla firefox','2405:8d40:40a6:263a:ad56:fe4f:b456:df03','success','2023-05-07 03:46:18'),(0000000211,0000000025,'member','mozilla firefox','2405:8d40:40a6:263a:ad56:fe4f:b456:df03','success','2023-05-07 03:57:28'),(0000000212,0000000025,'member','mozilla firefox','2405:8d40:40a6:263a:ad56:fe4f:b456:df03','success','2023-05-07 06:46:04'),(0000000213,0000000025,'member','mozilla firefox','2405:8d40:40a6:263a:65fe:15fb:d0:c148','success','2023-05-07 06:50:26'),(0000000214,0000000025,'member','mozilla firefox','2405:8d40:40a6:263a:65fe:15fb:d0:c148','success','2023-05-07 06:55:08'),(0000000215,0000000025,'member','mozilla firefox','2405:8d40:40a6:263a:65fe:15fb:d0:c148','success','2023-05-07 07:05:45'),(0000000216,0000000025,'member','mozilla firefox','2405:8d40:40a6:263a:65fe:15fb:d0:c148','success','2023-05-07 07:08:14'),(0000000217,0000000025,'member','mozilla firefox','2405:8d40:40a6:263a:65fe:15fb:d0:c148','success','2023-05-07 07:12:49'),(0000000218,0000000025,'member','mozilla firefox','2405:8d40:40a6:263a:65fe:15fb:d0:c148','success','2023-05-07 07:17:23'),(0000000219,0000000025,'member','mozilla firefox','2405:8d40:40a6:263a:65fe:15fb:d0:c148','success','2023-05-07 07:27:19'),(0000000220,0000000025,'member','mozilla firefox','2405:8d40:40a6:263a:65fe:15fb:d0:c148','success','2023-05-07 07:59:39'),(0000000221,0000000025,'member','mozilla firefox','2405:8d40:40a6:263a:65fe:15fb:d0:c148','success','2023-05-07 08:15:50'),(0000000222,0000000025,'member','mozilla firefox','2405:8d40:40a6:263a:65fe:15fb:d0:c148','success','2023-05-07 08:20:52'),(0000000223,0000000025,'member','mozilla firefox','2405:8d40:40a6:263a:65fe:15fb:d0:c148','success','2023-05-07 08:22:11'),(0000000224,0000000025,'member','mozilla firefox','2405:8d40:40a6:263a:65fe:15fb:d0:c148','success','2023-05-07 08:23:46'),(0000000225,0000000025,'member','mozilla firefox','2405:8d40:40a6:263a:65fe:15fb:d0:c148','success','2023-05-07 08:24:22'),(0000000226,0000000025,'member','mozilla firefox','2405:8d40:40a6:263a:65fe:15fb:d0:c148','success','2023-05-07 08:27:19'),(0000000227,0000000025,'member','mozilla firefox','2405:8d40:40a6:263a:65fe:15fb:d0:c148','success','2023-05-07 08:29:59'),(0000000228,0000000025,'member','mozilla firefox','2405:8d40:40a6:263a:65fe:15fb:d0:c148','success','2023-05-07 08:31:27'),(0000000229,0000000025,'member','mozilla firefox','2405:8d40:40a6:263a:65fe:15fb:d0:c148','success','2023-05-07 08:33:43'),(0000000230,0000000025,'member','mozilla firefox','2405:8d40:40a6:263a:65fe:15fb:d0:c148','success','2023-05-07 08:43:13'),(0000000231,0000000025,'member','mozilla firefox','2405:8d40:40a6:263a:65fe:15fb:d0:c148','success','2023-05-07 08:43:38'),(0000000232,0000000025,'member','mozilla firefox','2405:8d40:40a6:263a:65fe:15fb:d0:c148','success','2023-05-07 08:44:17'),(0000000233,0000000025,'member','mozilla firefox','2405:8d40:40a6:263a:65fe:15fb:d0:c148','success','2023-05-07 08:57:42'),(0000000234,0000000025,'member','mozilla firefox','2405:8d40:40a6:263a:65fe:15fb:d0:c148','success','2023-05-07 08:58:20'),(0000000235,0000000025,'member','mozilla firefox','2405:8d40:40a6:263a:65fe:15fb:d0:c148','success','2023-05-07 09:04:33'),(0000000236,0000000025,'member','mozilla firefox','2405:8d40:40a6:263a:65fe:15fb:d0:c148','success','2023-05-07 09:07:24'),(0000000237,0000000025,'member','mozilla firefox','2405:8d40:40a6:263a:65fe:15fb:d0:c148','success','2023-05-07 09:09:06'),(0000000238,0000000025,'member','mozilla firefox','2405:8d40:40a6:263a:65fe:15fb:d0:c148','success','2023-05-07 09:10:22'),(0000000239,0000000025,'member','mozilla firefox','2405:8d40:40a6:263a:65fe:15fb:d0:c148','success','2023-05-07 09:14:52'),(0000000240,0000000025,'member','mozilla firefox','2405:8d40:40a6:263a:65fe:15fb:d0:c148','success','2023-05-07 09:15:33'),(0000000241,0000000025,'member','mozilla firefox','2405:8d40:40a6:263a:65fe:15fb:d0:c148','success','2023-05-07 09:15:43'),(0000000242,0000000025,'member','mozilla firefox','2405:8d40:40a6:263a:65fe:15fb:d0:c148','success','2023-05-07 09:24:49'),(0000000243,0000000025,'member','mozilla firefox','2405:8d40:40a6:263a:65fe:15fb:d0:c148','success','2023-05-07 09:25:22'),(0000000244,0000000025,'member','mozilla firefox','2405:8d40:40a6:263a:65fe:15fb:d0:c148','success','2023-05-07 09:32:38'),(0000000245,0000000025,'member','mozilla firefox','2405:8d40:40a6:263a:65fe:15fb:d0:c148','success','2023-05-07 09:36:54'),(0000000246,0000000025,'member','mozilla firefox','2405:8d40:40a6:263a:65fe:15fb:d0:c148','success','2023-05-07 09:42:40'),(0000000247,0000000025,'member','mozilla firefox','2405:8d40:40a6:263a:65fe:15fb:d0:c148','success','2023-05-07 10:07:58'),(0000000248,0000000025,'member','mozilla firefox','2405:8d40:40a6:263a:65fe:15fb:d0:c148','success','2023-05-07 10:20:09'),(0000000249,0000000006,'admin','google chrome','2405:8d40:40a6:263a:65fe:15fb:d0:c148','success','2023-05-07 10:30:35'),(0000000250,0000000006,'admin','google chrome','2405:8d40:40a6:263a:65fe:15fb:d0:c148','success','2023-05-07 10:31:20'),(0000000251,0000000006,'admin','google chrome','2405:8d40:40a6:263a:65fe:15fb:d0:c148','success','2023-05-07 10:33:05'),(0000000252,0000000006,'admin','google chrome','2405:8d40:40a6:263a:65fe:15fb:d0:c148','success','2023-05-07 10:33:26'),(0000000253,0000000025,'member','mozilla firefox','2405:8d40:40a6:263a:65fe:15fb:d0:c148','success','2023-05-07 10:33:54'),(0000000254,0000000006,'admin','google chrome','2405:8d40:40a6:263a:65fe:15fb:d0:c148','success','2023-05-07 10:38:50'),(0000000255,0000000006,'admin','google chrome','2405:8d40:40a6:263a:65fe:15fb:d0:c148','success','2023-05-07 10:39:51'),(0000000256,0000000006,'admin','google chrome','2405:8d40:40a6:263a:65fe:15fb:d0:c148','success','2023-05-07 10:41:00'),(0000000257,0000000006,'admin','google chrome','2405:8d40:40a6:263a:65fe:15fb:d0:c148','success','2023-05-07 10:41:46'),(0000000258,0000000006,'admin','google chrome','2405:8d40:40a6:263a:65fe:15fb:d0:c148','success','2023-05-07 10:44:20'),(0000000259,0000000025,'member','mozilla firefox','2405:8d40:40a6:263a:65fe:15fb:d0:c148','success','2023-05-07 10:45:02'),(0000000260,0000000025,'member','mozilla firefox','2405:8d40:40a6:263a:65fe:15fb:d0:c148','success','2023-05-07 10:46:57'),(0000000261,0000000006,'admin','google chrome','2405:8d40:40a6:263a:65fe:15fb:d0:c148','success','2023-05-07 10:50:01'),(0000000262,0000000006,'admin','google chrome','2405:8d40:40a6:263a:65fe:15fb:d0:c148','success','2023-05-07 10:50:53'),(0000000263,0000000025,'member','mozilla firefox','2405:8d40:40a6:263a:65fe:15fb:d0:c148','success','2023-05-07 10:52:39'),(0000000264,0000000006,'admin','google chrome','2405:8d40:40a6:263a:65fe:15fb:d0:c148','success','2023-05-07 10:59:46'),(0000000265,0000000025,'member','mozilla firefox','2405:8d40:40a6:263a:65fe:15fb:d0:c148','success','2023-05-07 11:28:22'),(0000000266,0000000026,'member','mozilla firefox','2405:8d40:40a6:263a:65fe:15fb:d0:c148','success','2023-05-07 12:09:53'),(0000000267,0000000026,'member','mozilla firefox','2405:8d40:40a6:263a:dc58:4937:35cd:3693','success','2023-05-07 16:50:11'),(0000000268,0000000006,'admin','google chrome','2405:8d40:40a6:263a:40c9:e1c8:6134:579e','success','2023-05-07 20:20:55'),(0000000269,0000000006,'admin','google chrome','2405:8d40:40a6:263a:40c9:e1c8:6134:579e','success','2023-05-07 20:53:22'),(0000000270,0000000006,'admin','google chrome','2405:8d40:40a6:263a:40c9:e1c8:6134:579e','success','2023-05-07 21:06:52'),(0000000271,0000000027,'member','mozilla firefox','2405:8d40:40a6:263a:40c9:e1c8:6134:579e','success','2023-05-07 23:14:12'),(0000000272,0000000027,'member','mozilla firefox','2405:8d40:40a6:263a:40c9:e1c8:6134:579e','success','2023-05-08 00:41:54'),(0000000273,0000000027,'member','mozilla firefox','2405:8d40:40a6:263a:8858:c374:5942:d17b','success','2023-05-08 09:08:36'),(0000000274,0000000027,'member','mozilla firefox','2405:8d40:40a6:263a:8858:c374:5942:d17b','success','2023-05-08 10:11:10'),(0000000275,0000000027,'member','mozilla firefox','2405:8d40:40a6:263a:8858:c374:5942:d17b','success','2023-05-08 10:41:35'),(0000000276,0000000027,'member','mozilla firefox','2405:8d40:40a6:263a:4dc0:f19b:40d:3479','success','2023-05-08 14:42:44'),(0000000277,0000000027,'member','mozilla firefox','2405:8d40:40a6:263a:b186:eecd:79ea:d599','success','2023-05-08 20:34:30'),(0000000278,0000000006,'admin','google chrome','2405:8d40:40a6:263a:b186:eecd:79ea:d599','success','2023-05-08 22:30:17'),(0000000279,0000000027,'member','mozilla firefox','2405:8d40:40a6:263a:bd50:9bce:ebb3:ecee','success','2023-05-09 10:37:04'),(0000000280,0000000027,'member','mozilla firefox','2405:8d40:40a6:263a:bd50:9bce:ebb3:ecee','success','2023-05-09 10:39:14'),(0000000281,0000000006,'admin','google chrome','offline','success','2023-05-09 14:09:53'),(0000000282,0000000027,'member','mozilla firefox','offline','success','2023-05-09 14:11:35'),(0000000283,0000000028,'member','mozilla firefox','offline','success','2023-05-09 14:30:02'),(0000000284,0000000006,'admin','google chrome','2405:8d40:40a6:263a:ad8b:b650:d9aa:d7f5','success','2023-05-09 15:55:50'),(0000000285,0000000028,'member','mozilla firefox','2405:8d40:40a6:263a:ad8b:b650:d9aa:d7f5','success','2023-05-09 15:56:21'),(0000000286,0000000007,'admin','google chrome','2405:8d40:40a6:263a:534:80ce:adb9:1912','success','2023-05-10 07:05:46'),(0000000287,0000000006,'admin','google chrome','2405:8d40:40a6:263a:534:80ce:adb9:1912','success','2023-05-10 07:10:23'),(0000000288,0000000006,'admin','google chrome','2405:8d40:40a6:263a:534:80ce:adb9:1912','success','2023-05-10 07:41:50'),(0000000289,0000000006,'admin','google chrome','2405:8d40:40a6:263a:534:80ce:adb9:1912','success','2023-05-10 07:42:45'),(0000000290,0000000006,'admin','apple safari','2405:8d40:40a6:263a:534:80ce:adb9:1912','success','2023-05-10 08:09:59'),(0000000291,0000000006,'admin','google chrome','2405:8d40:40a6:263a:534:80ce:adb9:1912','success','2023-05-10 09:39:34'),(0000000292,0000000006,'admin','google chrome','2405:8d40:40a6:263a:534:80ce:adb9:1912','success','2023-05-10 09:51:24'),(0000000293,0000000028,'member','mozilla firefox','2405:8d40:c70:7b3:1499:bd3f:c013:bb81','success','2023-05-10 16:03:29'),(0000000294,0000000006,'admin','google chrome','2405:8d40:c70:7b3:6490:25cc:8b00:f85b','success','2023-05-10 19:38:02'),(0000000296,0000000006,'admin','google chrome','2405:8d40:c10:b854:ac0d:73fb:9375:69f4','success','2023-05-11 00:44:06'),(0000000297,0000000006,'admin','google chrome','2405:8d40:c10:b854:ac0d:73fb:9375:69f4','success','2023-05-11 00:59:34'),(0000000298,0000000006,'admin','google chrome','2405:8d40:c10:b854:58d9:7c6b:a777:896e','success','2023-05-11 07:30:14'),(0000000299,0000000006,'admin','google chrome','2405:8d40:c10:b854:58d9:7c6b:a777:896e','success','2023-05-11 08:07:20'),(0000000300,0000000006,'admin','google chrome','2405:8d40:c10:b854:58d9:7c6b:a777:896e','success','2023-05-11 08:26:08'),(0000000301,0000000006,'admin','google chrome','2405:8d40:c10:b854:58d9:7c6b:a777:896e','success','2023-05-11 08:41:27'),(0000000302,0000000006,'admin','google chrome','2405:8d40:c10:b854:58d9:7c6b:a777:896e','success','2023-05-11 08:46:37'),(0000000303,0000000006,'admin','google chrome','2405:8d40:c10:b854:58d9:7c6b:a777:896e','success','2023-05-11 08:57:05'),(0000000304,0000000006,'admin','google chrome','2405:8d40:c10:b854:58d9:7c6b:a777:896e','success','2023-05-11 09:28:52'),(0000000305,0000000006,'admin','google chrome','2405:8d40:c10:b854:58d9:7c6b:a777:896e','success','2023-05-11 10:22:50'),(0000000306,0000000006,'admin','google chrome','2405:8d40:c10:b854:58d9:7c6b:a777:896e','success','2023-05-11 10:25:23'),(0000000308,0000000006,'admin','google chrome','2405:8d40:c10:b854:30b2:f9cc:8644:9e15','success','2023-05-12 00:00:07'),(0000000309,0000000035,'member','google chrome','2405:8d40:c10:b854:152f:41dc:132c:5b4d','success','2023-05-12 11:02:54'),(0000000310,0000000035,'member','google chrome','2405:8d40:c10:b854:152f:41dc:132c:5b4d','success','2023-05-12 12:17:19'),(0000000311,0000000035,'member','google chrome','2405:8d40:c10:b854:152f:41dc:132c:5b4d','success','2023-05-12 12:47:30'),(0000000312,0000000006,'admin','google chrome','2405:8d40:c10:b854:7077:ed4f:ad2b:525d','success','2023-05-12 16:28:27'),(0000000313,0000000006,'admin','google chrome','2405:8d40:c10:b854:81b9:dbe8:8e6:dc33','success','2023-05-12 18:11:46'),(0000000314,0000000037,'member','mozilla firefox','2405:8d40:c10:b854:81b9:dbe8:8e6:dc33','success','2023-05-12 18:17:22'),(0000000315,0000000006,'admin','google chrome','2405:8d40:c10:b854:509f:ccec:7347:e4c8','success','2023-05-12 20:45:50'),(0000000316,0000000006,'admin','google chrome','2405:8d40:c10:b854:509f:ccec:7347:e4c8','success','2023-05-12 21:53:31'),(0000000317,0000000036,'member','mozilla firefox','2405:8d40:c10:b854:509f:ccec:7347:e4c8','success','2023-05-12 21:56:17'),(0000000318,0000000006,'admin','google chrome','110.54.186.76','success','2023-05-13 08:41:00'),(0000000319,0000000035,'member','mozilla firefox','110.54.186.76','success','2023-05-13 08:42:13'),(0000000320,0000000035,'member','mozilla firefox','110.54.186.76','success','2023-05-13 09:02:00'),(0000000321,0000000006,'admin','google chrome','110.54.186.76','success','2023-05-13 09:04:29'),(0000000322,0000000006,'admin','google chrome','110.54.186.76','success','2023-05-13 09:05:01'),(0000000323,0000000006,'admin','google chrome','110.54.186.76','success','2023-05-13 09:05:30'),(0000000324,0000000038,'member','mozilla firefox','110.54.186.76','success','2023-05-13 09:09:04'),(0000000325,0000000006,'admin','google chrome','110.54.186.76','success','2023-05-13 09:15:28'),(0000000326,0000000035,'member','mozilla firefox','110.54.186.76','success','2023-05-13 10:04:59'),(0000000327,0000000038,'member','mozilla firefox','110.54.218.67','success','2023-05-13 10:30:19'),(0000000328,0000000006,'admin','google chrome','49.148.62.219','success','2023-05-13 13:22:26'),(0000000329,0000000006,'admin','google chrome','49.148.62.219','success','2023-05-13 13:48:11'),(0000000330,0000000035,'member','mozilla firefox','49.148.62.219','success','2023-05-13 15:03:20'),(0000000331,0000000006,'admin','google chrome','49.148.62.219','success','2023-05-13 15:06:35'),(0000000332,0000000006,'admin','google chrome','49.148.62.219','success','2023-05-13 15:06:35'),(0000000333,0000000006,'admin','google chrome','49.148.62.219','success','2023-05-13 15:13:34'),(0000000334,0000000035,'member','google chrome','49.148.62.219','success','2023-05-13 15:30:18'),(0000000335,0000000006,'admin','google chrome','','success','2023-05-13 21:58:42'),(0000000336,0000000037,'member','mozilla firefox','offline','success','2023-05-14 02:05:44'),(0000000337,0000000037,'member','mozilla firefox','offline','failed','2023-05-14 02:31:29'),(0000000338,0000000037,'member','mozilla firefox','offline','failed','2023-05-14 02:31:31'),(0000000339,0000000037,'member','mozilla firefox','offline','failed','2023-05-14 02:31:32'),(0000000340,0000000037,'member','mozilla firefox','offline','locked','2023-05-14 02:31:33'),(0000000341,0000000037,'member','mozilla firefox','offline','locked','2023-05-14 02:33:08'),(0000000342,0000000037,'member','mozilla firefox','offline','locked','2023-05-14 02:33:19'),(0000000343,0000000037,'member','mozilla firefox','offline','locked','2023-05-14 02:40:07'),(0000000344,0000000037,'member','mozilla firefox','offline','failed','2023-05-14 02:40:08'),(0000000345,0000000037,'member','mozilla firefox','offline','locked','2023-05-14 02:40:10'),(0000000346,0000000037,'member','mozilla firefox','offline','failed','2023-05-14 02:40:10'),(0000000347,0000000037,'member','mozilla firefox','offline','locked','2023-05-14 02:40:11'),(0000000348,0000000037,'member','mozilla firefox','offline','failed','2023-05-14 02:40:11'),(0000000349,0000000037,'member','mozilla firefox','offline','locked','2023-05-14 02:40:11'),(0000000350,0000000037,'member','mozilla firefox','offline','failed','2023-05-14 02:40:12'),(0000000351,0000000037,'member','mozilla firefox','offline','locked','2023-05-14 02:40:12'),(0000000352,0000000037,'member','mozilla firefox','offline','failed','2023-05-14 02:40:12'),(0000000353,0000000037,'member','mozilla firefox','offline','locked','2023-05-14 02:40:14'),(0000000354,0000000037,'member','mozilla firefox','offline','failed','2023-05-14 02:40:14'),(0000000355,0000000037,'member','mozilla firefox','offline','locked','2023-05-14 02:40:16'),(0000000356,0000000037,'member','mozilla firefox','offline','failed','2023-05-14 02:40:16'),(0000000357,0000000037,'member','mozilla firefox','offline','locked','2023-05-14 02:40:17'),(0000000358,0000000037,'member','mozilla firefox','offline','failed','2023-05-14 02:40:17'),(0000000359,0000000037,'member','mozilla firefox','offline','locked','2023-05-14 02:58:07'),(0000000360,0000000037,'member','mozilla firefox','offline','failed','2023-05-14 02:58:07'),(0000000361,0000000037,'member','mozilla firefox','offline','locked','2023-05-14 02:58:52'),(0000000362,0000000037,'member','mozilla firefox','offline','failed','2023-05-14 02:58:52'),(0000000363,0000000037,'member','mozilla firefox','offline','locked','2023-05-14 02:59:19'),(0000000364,0000000037,'member','mozilla firefox','offline','failed','2023-05-14 02:59:19'),(0000000365,0000000037,'member','mozilla firefox','offline','locked','2023-05-14 02:59:47'),(0000000366,0000000037,'member','mozilla firefox','offline','failed','2023-05-14 02:59:48'),(0000000367,0000000037,'member','mozilla firefox','offline','locked','2023-05-14 03:00:04'),(0000000368,0000000037,'member','mozilla firefox','offline','failed','2023-05-14 03:00:04'),(0000000369,0000000037,'member','mozilla firefox','offline','locked','2023-05-14 03:00:34'),(0000000370,0000000037,'member','mozilla firefox','offline','unlocked','2023-05-14 03:00:34'),(0000000371,0000000037,'member','mozilla firefox','2405:8d40:44a6:d32e:e544:e47f:5080:8562','success','2023-05-14 03:05:45'),(0000000372,0000000037,'member','mozilla firefox','2405:8d40:44a6:d32e:e544:e47f:5080:8562','failed','2023-05-14 03:06:18'),(0000000373,0000000037,'member','mozilla firefox','2405:8d40:44a6:d32e:e544:e47f:5080:8562','success','2023-05-14 03:08:00'),(0000000374,0000000037,'member','mozilla firefox','2405:8d40:44a6:d32e:e544:e47f:5080:8562','success','2023-05-14 03:08:22'),(0000000375,0000000037,'member','mozilla firefox','2405:8d40:44a6:d32e:e544:e47f:5080:8562','success','2023-05-14 03:08:44'),(0000000376,0000000037,'member','mozilla firefox','2405:8d40:44a6:d32e:e544:e47f:5080:8562','success','2023-05-14 03:09:14'),(0000000377,0000000006,'admin','google chrome','','success','2023-05-14 03:47:34'),(0000000378,0000000006,'admin','google chrome','','success','2023-05-14 04:17:09'),(0000000379,0000000006,'admin','google chrome','','success','2023-05-14 04:17:57'),(0000000380,0000000006,'admin','google chrome','','success','2023-05-14 04:18:03'),(0000000381,0000000006,'admin','google chrome','','success','2023-05-14 04:29:27'),(0000000382,0000000006,'admin','google chrome','','success','2023-05-14 04:30:43'),(0000000383,0000000006,'admin','google chrome','','success','2023-05-14 04:30:49'),(0000000384,0000000006,'admin','google chrome','2405:8d40:44a6:d32e:e544:e47f:5080:8562','success','2023-05-14 04:31:28'),(0000000385,0000000006,'admin','google chrome','2405:8d40:44a6:d32e:e544:e47f:5080:8562','success','2023-05-14 04:31:37'),(0000000386,0000000006,'admin','google chrome','','success','2023-05-14 04:31:50'),(0000000387,0000000006,'admin','google chrome','2405:8d40:44a6:d32e:8c9:a59c:ae45:15f5','success','2023-05-14 09:07:26'),(0000000388,0000000036,'member','google chrome','2405:8d40:44a6:d32e:8c9:a59c:ae45:15f5','failed','2023-05-14 09:18:24'),(0000000389,0000000036,'member','google chrome','2405:8d40:44a6:d32e:8c9:a59c:ae45:15f5','failed','2023-05-14 09:18:27'),(0000000390,0000000036,'member','google chrome','2405:8d40:44a6:d32e:8c9:a59c:ae45:15f5','failed','2023-05-14 09:18:32'),(0000000391,0000000036,'member','google chrome','2405:8d40:44a6:d32e:8c9:a59c:ae45:15f5','locked','2023-05-14 09:18:35'),(0000000392,0000000036,'member','google chrome','2405:8d40:44a6:d32e:8c9:a59c:ae45:15f5','failed','2023-05-14 09:18:35'),(0000000393,0000000006,'admin','google chrome','2405:8d40:44a6:d32e:8c9:a59c:ae45:15f5','success','2023-05-14 09:56:39'),(0000000394,0000000006,'admin','google chrome','2405:8d40:44a6:d32e:9868:84bf:9d06:ea4e','success','2023-05-14 12:13:18'),(0000000395,0000000006,'admin','google chrome','2405:8d40:44a6:d32e:9868:84bf:9d06:ea4e','success','2023-05-14 12:15:23'),(0000000396,0000000006,'admin','google chrome','2405:8d40:44a6:d32e:9868:84bf:9d06:ea4e','success','2023-05-14 13:22:13'),(0000000397,0000000006,'admin','google chrome','2405:8d40:44a6:d32e:9868:84bf:9d06:ea4e','success','2023-05-14 16:38:20'),(0000000398,0000000006,'admin','google chrome','2405:8d40:44a6:d32e:9868:84bf:9d06:ea4e','success','2023-05-14 16:51:40'),(0000000399,0000000006,'admin','google chrome','2405:8d40:44a6:d32e:9868:84bf:9d06:ea4e','success','2023-05-14 17:32:38'),(0000000400,0000000006,'admin','google chrome','2405:8d40:44a6:d32e:9868:84bf:9d06:ea4e','success','2023-05-14 18:07:41'),(0000000401,0000000006,'admin','google chrome','2405:8d40:44a6:d32e:9868:84bf:9d06:ea4e','success','2023-05-14 18:50:21'),(0000000402,0000000006,'admin','google chrome','','success','2023-05-14 20:05:10'),(0000000403,0000000006,'admin','google chrome','','success','2023-05-14 20:19:23');
/*!40000 ALTER TABLE `tbl_loginlog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_members`
--

DROP TABLE IF EXISTS `tbl_members`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_members` (
  `id` int(10) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `firstname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `middlename` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gender` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `birthdate` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_add` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `civil_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `member_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `beneficiary` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `business_work` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `counterlock` int DEFAULT '0',
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `number_UNIQUE` (`number`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_members`
--

LOCK TABLES `tbl_members` WRITE;
/*!40000 ALTER TABLE `tbl_members` DISABLE KEYS */;
INSERT INTO `tbl_members` VALUES (0000000035,'vladiere','erhja','kazhu','male','+639863216322','1212-12-12','wosepo5888@asuflex.com','single','under heavens','$2b$10$Rte7U8NUehugXr.uiak6h.vrlPjXJ4ypskC3F6jaVLRNM0mq43ws.','2023-05-10 11:41:50','69 pc','atlantic ocean','active',0,'2023-05-14 03:19:20'),(0000000036,'lance phillip','berdon','descartin','male','09886985695','1500-12-31','lekomos529@dekaps.com','married','atlantic ocean','$2b$10$OXEPn19F0pI1u7WFdXEcbOEMcU0AJPWfk9EXiE1LWVGfNsEJWO2lq','2023-05-12 04:20:09','bipor','atlantic','active',5,'2023-05-14 09:18:35'),(0000000037,'robert','abut','quijano','male','+639874563215','1200-05-18','quijano@gmail.com','single','babag 2','$2b$10$KkC2Z2t7q4fk8tOrXC0MP.pD9OTyJ8IOruQMpCR/5e8RzYiRd5pH6','2023-05-12 10:14:52','12pc','under the sun','active',0,'2023-05-14 03:09:14'),(0000000038,'mercy','adsbu','macan','female','+639874563254','1222-12-12','yesedom590@appxapi.com','single','cordova','$2b$10$7vtk/Z.6vchIvKeS6x4BGep.LhDTF8LznaBPljKSmVoW6OUGGZunC','2023-05-13 01:07:51','23px','under sun','active',0,'2023-05-13 10:30:19');
/*!40000 ALTER TABLE `tbl_members` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_pettycash`
--

DROP TABLE IF EXISTS `tbl_pettycash`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_pettycash` (
  `id` int(10) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `member_id` int NOT NULL,
  `balance` bigint NOT NULL,
  `add_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_pettycash`
--

LOCK TABLES `tbl_pettycash` WRITE;
/*!40000 ALTER TABLE `tbl_pettycash` DISABLE KEYS */;
INSERT INTO `tbl_pettycash` VALUES (0000000015,35,5000,'2023-05-10 19:41:50'),(0000000017,36,2000,'2023-05-12 12:20:09'),(0000000019,37,2000,'2023-05-12 18:14:52'),(0000000020,38,2000,'2023-05-13 09:07:51');
/*!40000 ALTER TABLE `tbl_pettycash` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_requestreset`
--

DROP TABLE IF EXISTS `tbl_requestreset`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_requestreset` (
  `id` int NOT NULL AUTO_INCREMENT,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reset_token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `request_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_requestreset`
--

LOCK TABLES `tbl_requestreset` WRITE;
/*!40000 ALTER TABLE `tbl_requestreset` DISABLE KEYS */;
INSERT INTO `tbl_requestreset` VALUES (1,'wosepo5888@asuflex.com','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6Indvc2VwbzU4ODhAYXN1ZmxleC5jb20iLCJpYXQiOjE2ODM4NTUwNDEsImV4cCI6MTY4Mzg1ODY0MX0.vP3awC1RWN8bqjcOpmNNFQzZNokQxFyl3UI_M8CEj8k','2023-05-12 09:30:41'),(2,'wosepo5888@asuflex.com','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6Indvc2VwbzU4ODhAYXN1ZmxleC5jb20iLCJpYXQiOjE2ODM4NTUzMzUsImV4cCI6MTY4Mzg1ODkzNX0.n8zW7ZRYiTR0mKV6gMtT_OYnkAR3VbqvPRWn1-JHA8o','2023-05-12 09:35:35'),(3,'wosepo5888@asuflex.com','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6Indvc2VwbzU4ODhAYXN1ZmxleC5jb20iLCJpYXQiOjE2ODM4NTUzNzAsImV4cCI6MTY4Mzg1ODk3MH0.46mNs5QuDKlWUxZmELLg8GaB_9RWQVy8FVJAnhASG5k','2023-05-12 09:36:10'),(4,'wosepo5888@asuflex.com','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6Indvc2VwbzU4ODhAYXN1ZmxleC5jb20iLCJpYXQiOjE2ODM4NTUzOTksImV4cCI6MTY4Mzg1ODk5OX0.XM5RMitMBM0m6hBVQsN_BWoAEJsB7vGSYwTnd1AJJR8','2023-05-12 09:36:39'),(5,'wosepo5888@asuflex.com','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6Indvc2VwbzU4ODhAYXN1ZmxleC5jb20iLCJpYXQiOjE2ODM4NTc5NDgsImV4cCI6MTY4Mzg2MTU0OH0.xClTm92ZUgCASbsAtswKhedwFLIDdcR3e233imG4oSI','2023-05-12 10:19:08'),(6,'wosepo5888@asuflex.com','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6Indvc2VwbzU4ODhAYXN1ZmxleC5jb20iLCJpYXQiOjE2ODM4NTg3MDEsImV4cCI6MTY4Mzg2MjMwMX0.yQv4gDjnfoTyYreLtWppBcgFLxDU9niWQRxfuockkw0','2023-05-12 10:31:41'),(7,'wosepo5888@asuflex.com','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6Indvc2VwbzU4ODhAYXN1ZmxleC5jb20iLCJpYXQiOjE2ODM4NTkyMjEsImV4cCI6MTY4Mzg2MjgyMX0.71py_3QW7IEMlcCB4-HbVD0ERxSyWa4UFpFeIYIM4VE','2023-05-12 10:40:21'),(8,'wosepo5888@asuflex.com','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6Indvc2VwbzU4ODhAYXN1ZmxleC5jb20iLCJpYXQiOjE2ODM4NTk2NTEsImV4cCI6MTY4Mzg2MzI1MX0.k1rrgGkD1-clnfp98lNGFmtI-QvlxgeSv_rEHmmVmd8','2023-05-12 10:47:31'),(9,'wosepo5888@asuflex.com','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6Indvc2VwbzU4ODhAYXN1ZmxleC5jb20iLCJpYXQiOjE2ODM4NTk4OTQsImV4cCI6MTY4Mzg2MzQ5NH0.LZ3qBRYfsLHhLFtTlUta8h5RH2Z10YgKk2o8AALAvjU','2023-05-12 10:51:34'),(10,'wosepo5888@asuflex.com','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6Indvc2VwbzU4ODhAYXN1ZmxleC5jb20iLCJpYXQiOjE2ODM4NjAxOTIsImV4cCI6MTY4Mzg2MDc5Mn0.oBwbpZPKUju_ywfSwYQL39T7-aupo45ekCZg1c6m7ss','2023-05-12 10:56:32'),(11,'wosepo5888@asuflex.com','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6Indvc2VwbzU4ODhAYXN1ZmxleC5jb20iLCJpYXQiOjE2ODM4NjE1OTYsImV4cCI6MTY4Mzg2MjE5Nn0.XWRYGs36UL_zv5M3FP0zi9XiJPq6_ub64wZOLXQmWWo','2023-05-12 11:19:56'),(12,'wosepo5888@asuflex.com','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6Indvc2VwbzU4ODhAYXN1ZmxleC5jb20iLCJpYXQiOjE2ODM4NjE2NjQsImV4cCI6MTY4Mzg2MjI2NH0.__o8jXRXb8lByarKLoBWZAuiO4xfvrP4oAHqF5-TIjQ','2023-05-12 11:21:04'),(13,'wosepo5888@asuflex.com','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6Indvc2VwbzU4ODhAYXN1ZmxleC5jb20iLCJpYXQiOjE2ODM4NjE3NjYsImV4cCI6MTY4Mzg2MjM2Nn0.QMiulQO8odGy3LIgDY97DoWJ-956pZ1lIC7p9bM0d5M','2023-05-12 11:22:46'),(14,'wosepo5888@asuflex.com','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6Indvc2VwbzU4ODhAYXN1ZmxleC5jb20iLCJpYXQiOjE2ODM4NjI2MDIsImV4cCI6MTY4Mzg2MzIwMn0.Agc6ZsgiK8ru3o08kBFnvBxg0fgtS3z4fEaeZKUtvbg','2023-05-12 11:36:42'),(15,'wosepo5888@asuflex.com','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6Indvc2VwbzU4ODhAYXN1ZmxleC5jb20iLCJpYXQiOjE2ODM4NjMxMzUsImV4cCI6MTY4Mzg2MzczNX0.AaqmkO6oE3IrGcksR7-bH_ga3nNTWeXlOZWkfQvoUUE','2023-05-12 11:45:35'),(16,'wosepo5888@asuflex.com','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6Indvc2VwbzU4ODhAYXN1ZmxleC5jb20iLCJpYXQiOjE2ODM4NjM1ODksImV4cCI6MTY4Mzg2NDE4OX0.wXydZg2ePKb3uf5cAQToXrdctxyd5sIThaj-7nAVXSY','2023-05-12 11:53:09'),(17,'wosepo5888@asuflex.com','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6Indvc2VwbzU4ODhAYXN1ZmxleC5jb20iLCJpYXQiOjE2ODM4NjM2NzgsImV4cCI6MTY4Mzg2NDI3OH0.7cPpE_Gs4c0c2qSEeFFR0kDgi-6OHvvnUUbbiYYEdBI','2023-05-12 11:54:38'),(18,'wosepo5888@asuflex.com','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6Indvc2VwbzU4ODhAYXN1ZmxleC5jb20iLCJpYXQiOjE2ODM4NjM3NzMsImV4cCI6MTY4Mzg2NDM3M30.KRv5QQwZqOs-zCf75yYA3-3Eii-KYDa1R0K1HO1oNpc','2023-05-12 11:56:13'),(19,'wosepo5888@asuflex.com','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6Indvc2VwbzU4ODhAYXN1ZmxleC5jb20iLCJpYXQiOjE2ODM4NjM4MzQsImV4cCI6MTY4Mzg2NDQzNH0.0uQ10SA_M5Mjrsd_iK7lmDNrLXYveANByw9chg-7lB8','2023-05-12 11:57:14'),(20,'wosepo5888@asuflex.com','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6Indvc2VwbzU4ODhAYXN1ZmxleC5jb20iLCJpYXQiOjE2ODM4NjQxMjUsImV4cCI6MTY4Mzg2NDcyNX0.NovXlt7mIpCW6t8eRzpI6-uUj4xNsp8xnvCPrpbbaLQ','2023-05-12 12:02:05'),(21,'wosepo5888@asuflex.com','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6Indvc2VwbzU4ODhAYXN1ZmxleC5jb20iLCJpYXQiOjE2ODM4NjQxNjgsImV4cCI6MTY4Mzg2NDc2OH0.uMBp98bzPkfU7_IHVN1mxPv7UuQQWuZwmJEmtMT-uKM','2023-05-12 12:02:48'),(22,'wosepo5888@asuflex.com','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6Indvc2VwbzU4ODhAYXN1ZmxleC5jb20iLCJpYXQiOjE2ODM4NjQ2NTksImV4cCI6MTY4Mzg2NTI1OX0.g7P2ttKals10vyVFDe6ctBVeL4db_HMFnAWKuMaN1HI','2023-05-12 12:10:59'),(23,'wosepo5888@asuflex.com','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6Indvc2VwbzU4ODhAYXN1ZmxleC5jb20iLCJpYXQiOjE2ODM4NjQ4NTAsImV4cCI6MTY4Mzg2NTQ1MH0.y_kjPLTqQyzGMml5xAXHIqit_nA5bSdavagzQIkrI38','2023-05-12 12:14:10'),(24,'wosepo5888@asuflex.com','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6Indvc2VwbzU4ODhAYXN1ZmxleC5jb20iLCJpYXQiOjE2ODQwMDUzMDUsImV4cCI6MTY4NDAwNTkwNX0.WB9V8myjXhCxBRjx2cZK7929GFmXlPnMn2UO75UJozA','2023-05-14 03:15:05');
/*!40000 ALTER TABLE `tbl_requestreset` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_savings`
--

DROP TABLE IF EXISTS `tbl_savings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_savings` (
  `id` int NOT NULL AUTO_INCREMENT,
  `member_id` int DEFAULT NULL,
  `amount` bigint DEFAULT NULL,
  `saved_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `withdraw` bigint DEFAULT '0',
  `deposit` bigint DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `member_id_idx` (`member_id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_savings`
--

LOCK TABLES `tbl_savings` WRITE;
/*!40000 ALTER TABLE `tbl_savings` DISABLE KEYS */;
INSERT INTO `tbl_savings` VALUES (18,35,400,'2023-05-12 12:45:54',0,0);
/*!40000 ALTER TABLE `tbl_savings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'rmrl'
--
/*!50003 DROP PROCEDURE IF EXISTS `sp_acceptRequest` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_acceptRequest`(
	IN p_id int,
    IN p_amount BIGINT,
    IN p_term VARCHAR(25),
    IN p_desc VARCHAR(25)
)
BEGIN
    DECLARE years_int int;
    DECLARE years_string VARCHAR(255);
    DECLARE new_loanterm int;
    DECLARE p_pay int;
    DECLARE lt_id int;
    DECLARE i_amount int;
    DECLARE new_month int;
    DECLARE st_msg VARCHAR(255);
    DECLARE st_code int;
    DECLARE tbl_id int;
    DECLARE lr_msg VARCHAR(20);
    DECLARE lt_desc VARCHAR(25);
    
    SET years_int = CAST(SUBSTRING_INDEX(p_term, ' ', 1) AS UNSIGNED);
    SET years_string = SUBSTRING(p_term, LOCATE(' ', p_term) + 1);
	
    
	SELECT id INTO lt_id FROM tbl_loanrequests WHERE member_id = p_id ORDER BY request_date DESC LIMIT 1;
	
	IF years_string = 'years' OR years_string = 'year' THEN
		SET years_int = years_int * 12;
	END IF;
    
	SET i_amount = p_amount * 0.02;
	
    IF p_desc = 'read' THEN
		SELECT lr.status INTO lr_msg FROM tbl_loanrequests AS lr WHERE member_id = p_id ORDER BY request_date DESC LIMIT 1;
		IF lr_msg = 'unread' THEN
			UPDATE tbl_loanrequests SET status = 'read' WHERE member_id = p_id ORDER BY request_date DESC LIMIT 1;
			INSERT INTO tbl_loans (`member_id`,`requestloan_id`,`loan_amount`,`partial_pay`,`balance_pay`) VALUES (p_id,lt_id,p_amount,p_amount / years_int, i_amount);
        END IF;
		
    END IF;
    
    IF p_desc = 'accept' THEN
		INSERT INTO tbl_savings (`member_id`,`amount`) VALUES (p_id,i_amount);
		SELECT id INTO tbl_id FROM tbl_loans WHERE member_id = p_id ORDER BY date_accept DESC LIMIT 1;
		
		INSERT INTO tbl_loantransactions (member_id,loan_id,debit,balance_pay) VALUES (p_id,tbl_id,p_amount, (p_amount / years_int) + i_amount);
		UPDATE tbl_loans SET status = 'accept' WHERE member_id = p_id AND requestloan_id = lt_id;
        SELECT tbl.description INTO lt_desc FROM tbl_loanrequests AS tbl WHERE member_id = p_id ORDER BY request_date DESC LIMIT 1;
        UPDATE tbl_pettycash SET balance = ROUND(p_amount / 5000) * 1000, add_at = NOW() WHERE member_id = p_id;
        
		SET st_code = 200, st_msg = "Request Accept";
		SELECT st_code, st_msg;
    END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_addAdmin` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_addAdmin`(
    IN p_desc VARCHAR(255),
	IN fname varchar(255),
    IN lname varchar(255),
    IN email varchar(255),
    IN uname varchar(255),
    IN pass varchar(255)
)
BEGIN
	DECLARE ret int;
    DECLARE st_code int;
    DECLARE st_msg VARCHAR(45);
	DECLARE p_id int;
    
    IF p_desc = 'add' THEN
		INSERT INTO `admin`
			(`firstname`,`lastname`, `email`,`username`,`password`) 
		VALUES
			(fname,lname,email,uname,pass);
        SET ret = 1;
        SET st_code = 200;
        SET st_msg = 'Admin Added Successfully';
        SELECT ret,st_code,st_msg;
	END IF;
    
	IF p_desc = 'update' THEN
		IF EXISTS(SELECT id FROM admin WHERE firstname = fname AND lastname = lname) THEN
			SELECT id INTO p_id FROM admin WHERE firstname = fname AND lastname = lname;
			IF fname <> '' AND lname <> '' AND email <> '' AND uname <> '' AND pass <> '' THEN
				UPDATE `admin` SET `firstname`=fname,`lastname`=lname,`email`=email,`username`=username,`password`=pass,`updated_at`=NOW() WHERE id = p_id;
				SET ret = 2;
				SET st_code = 200;
				SET st_msg = 'Admin Updated Successfully';
				SELECT ret,st_code,st_msg;
			ELSE
				
				IF email <> '' THEN
					UPDATE `admin` SET `email`=email,`updated_at`=NOW() WHERE id=p_id;
					SET ret = 3;
					SET st_code = 200;
					SET st_msg = 'Admin Email Updated Successfully';
					SELECT ret,st_code,st_msg;
				END IF;
				
				IF uname <> '' THEN
					UPDATE `admin` SET `username`=uname,`updated_at`=NOW() WHERE id=p_id;
					SET ret = 3;
					SET st_code = 200;
					SET st_msg = 'Admin Username Updated Successfully';
					SELECT ret,st_code,st_msg;
				END IF;
				
				IF pass <> '' THEN
					UPDATE `admin` SET `password`=pass,`updated_at`=NOW() WHERE id=p_id;
					SET ret = 3;
					SET st_code = 200;
					SET st_msg = 'Admin Password Updated Successfully';
					SELECT ret,st_code,st_msg;
				END IF;
			END IF;
        ELSE
			SET st_code = 404;
            SET st_msg = 'Admin Not found';
            SELECT st_code, st_msg;
        END IF;
		
        
    END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_addEmployee` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_addEmployee`(
	IN p_id int,
	IN p_fname varchar(255),
	IN p_lname varchar(255),
    IN p_number varchar(255),
    IN p_address varchar(255),
    IN p_email varchar(255),
    IN p_pos varchar(255)
)
BEGIN
	DECLARE ret VARCHAR(255);
    DECLARE stat int;
    IF p_number = '' AND p_address = '' AND p_email = '' AND p_pos = '' THEN
        SET stat = 400;
        SET ret = 'All parameters are empty';
        SELECT stat,ret;
    ELSEIF p_id = 0 THEN
        INSERT INTO tbl_employees (`firstname`,`lastname`,`number`,`address`,`email`,`position`)
        VALUES (p_fname,p_lname,p_number,p_address,p_email,p_pos);
        SET stat = 200;
		SET ret = 'Employee Registered Successfully';
		SELECT stat,ret;
    ELSE
        IF p_fname <> '' AND p_lname <> '' AND p_number <> '' AND p_address <> '' AND p_email <> '' AND p_pos <> '' THEN
            UPDATE tbl_employees SET 
            `firstname` = p_fname,
            `lastname` = p_lname,
            `number` = p_number,
            `address` = p_address,
            `email` = p_email,
            `position` = p_pos
            WHERE id = p_id;
            SET stat = 200;
            SET ret = 'Success';
            SELECT stat,ret;
        ELSE
            
            IF p_number <> '' THEN
                UPDATE tbl_employees SET `number` = p_number WHERE id = p_id;
                SET stat = 200;
                SET ret = 'Number Updated Successfully';
				SELECT stat,ret;
            END IF;

            IF p_address <> '' THEN
                UPDATE tbl_employees SET `address` = p_address WHERE id = p_id;
                SET stat = 200;
                SET ret = 'Address Updated Successfully';
				SELECT stat,ret;
            END IF;

            IF p_email <> '' THEN
                UPDATE tbl_employees SET `email` = p_email WHERE id = p_id;
                SET stat = 200;
                SET ret = 'Email Updated Successfully';
				SELECT stat,ret;
            END IF;

            IF p_pos <> '' THEN
                UPDATE tbl_employees SET `position` = p_pos WHERE id = p_id;
                SET stat = 200;
                SET ret = 'Position promoted successfully';
				SELECT stat,ret;
            END IF;

        END IF;
    END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_addMember` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_addMember`(
	IN p_id int,
	IN p_fname varchar(255),
	IN p_mname varchar(255),
	IN p_lname varchar(255),
	IN p_gender varchar(45),
    IN p_number varchar(255),
    IN p_bd varchar(255),
    IN p_email varchar(255),
    IN p_cstatus varchar(255),
    IN p_address varchar(255),
    IN p_password varchar(255),
    IN p_benefit varchar(255),
    IN p_bw varchar(255),
    IN p_sc int
)
BEGIN
	DECLARE ret VARCHAR(255);
    DECLARE stat int;
    DECLARE m_id int;
    
    IF p_number = '' AND p_address = '' AND p_password = '' AND p_benefit = '' AND p_bw = '' AND p_email = '' AND p_cstatus = '' THEN
        SET stat = 400;
        SET ret = 'All parameters are empty';
        SELECT stat,ret;
    ELSEIF p_id = 0 THEN
        INSERT INTO tbl_members (`firstname`,`middlename`,`lastname`,`gender`,`number`,`birthdate`,`email_add`,`civil_status`,`address`,`password`,`beneficiary`,`business_work`)
        VALUES (p_fname,p_mname,p_lname,p_gender,p_number,p_bd,p_email,p_cstatus,p_address,p_password,p_benefit,p_bw);
        SELECT id INTO m_id FROM tbl_members WHERE `lastname` = p_lname AND `password` = p_password;
        INSERT INTO tbl_pettycash (`member_id`,`balance`) VALUE (m_id, p_sc);
        SELECT 'Success';
    ELSE
        IF p_fname <> '' AND p_mname <> '' AND p_lname <> '' AND p_number <> '' AND p_email <> '' AND p_cstatus <> '' AND p_address <> '' AND p_password <> '' AND p_benefit <> '' AND p_email <> '' AND p_bw <> '' AND p_sc <> 0 THEN
            UPDATE tbl_members SET 
            `firstname` = p_fname,
            `middlename` = p_mname,
            `lastname` = p_lname,
            `number` = p_number,
            `email_add` = p_email,
            `civil_status` = p_cstatus,
            `address` = p_address,
            `password` = p_password,
            `beneficiary` = p_benefit,
            `business_work` = p_bw,
            `email_add` = p_email
            WHERE id = p_id;
            SET stat = 200;
            SET ret = 'Success';
            SELECT stat,ret;
        ELSE
            
            IF p_number <> '' THEN
                UPDATE tbl_members SET `number` = p_number WHERE id = p_id;
                SET stat = 200;
                SET ret = 'Number Updated Successfully';
				SELECT stat,ret;
            END IF;

            IF p_email <> '' THEN
                UPDATE tbl_members SET `email_add` = p_email WHERE id = p_id;
                SET stat = 200;
                SET ret = 'Email Address Updated Successfully';
				SELECT stat,ret;
            END IF;

            IF p_cstatus <> '' THEN
                UPDATE tbl_members SET `civil_status` = p_cstatus WHERE id = p_id;
                SET stat = 200;
                SET ret = 'Civil Status Updated Successfully';
				SELECT stat,ret;
            END IF;
            
            IF p_email <> '' THEN
                UPDATE tbl_members SET `email_add` = p_email WHERE id = p_id;
                SET stat = 200;
                SET ret = 'Email Address Updated Successfully';
				SELECT stat,ret;
            END IF;

            IF p_address <> '' THEN
                UPDATE tbl_members SET `address` = p_address WHERE id = p_id;
                SET stat = 200;
                SET ret = 'Address Updated Successfully';
				SELECT stat,ret;
            END IF;

            IF p_password <> '' THEN
                UPDATE tbl_members SET `password` = p_password WHERE id = p_id;
                SET stat = 200;
                SET ret = 'Password Updated Successfully';
				SELECT stat,ret;
            END IF;

            IF p_benefit <> '' THEN
                UPDATE tbl_members SET `beneficiary` = p_benefit WHERE id = p_id;
                SET stat = 200;
                SET ret = 'Beneficiary Updated Successfully';
				SELECT stat,ret;
            END IF;

            IF p_bw <> '' THEN
                UPDATE tbl_members SET `business_work` = p_bw WHERE id = p_id;
                SET stat = 200;
                SET ret = 'Business or Work Updated Successfully';
				SELECT stat,ret;
            END IF;
        END IF;
    END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_Authenticate_Admin` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_Authenticate_Admin`(
    IN p_username varchar(255),
    IN p_ipaddress VARCHAR(255),
    IN p_browser VARCHAR(255),
    IN p_status int
)
BEGIN
    DECLARE ret int;
    DECLARE c_lock int;
    
    
    IF p_status = 0 THEN 
        IF EXISTS(SELECT * FROM `admin` WHERE username = p_username) THEN
			SELECT counterlock INTO c_lock FROM `admin` WHERE username = p_username;
			IF c_lock >= 3 THEN
				IF c_lock = 3 THEN
					UPDATE `admin` SET counterlock = counterlock + 1, updated_at = NOW() WHERE username = p_username;
					INSERT INTO tbl_loginlog (acc_id, whois, browser, ip_address, login_status) SELECT id, `role`, p_browser, p_ipaddress, 'locked' FROM admin WHERE username = p_username;
					SET ret = 3;
				ELSE
					INSERT INTO tbl_loginlog (acc_id, whois, browser, ip_address, login_status) SELECT id, `role`, p_browser, p_ipaddress, 'locked' FROM admin WHERE username = p_username;
					SET ret = 3;
                END IF;
			ELSE
				SELECT * FROM `admin` WHERE username = p_username;
				SET ret = 1;
			END IF;
        ELSE
            SET ret = 4;
        END IF;
    ELSEIF p_status = 1 THEN 
		IF EXISTS(SELECT * FROM `admin` WHERE username = p_username) THEN
			UPDATE `admin` SET counterlock = IFNULL(counterlock, 0) + 1 WHERE username = p_username;
			INSERT INTO tbl_loginlog (acc_id, whois, browser, ip_address, login_status) SELECT id, `role`, p_browser, p_ipaddress, 'failed' FROM admin WHERE username = p_username;
			SET ret = 2;
		END IF;
    ELSE 
        SET ret = NULL;
    END IF;
    
    IF ret IS NOT NULL THEN 
        IF ret < 4 THEN 
			IF EXISTS(SELECT * FROM `admin` WHERE username = p_username) THEN
				SELECT *,ret FROM `admin` WHERE username = p_username;
			ELSE
				SELECT *,ret FROM `tbl_employees` WHERE email = p_username;
            END IF;
        ELSE 
            SELECT ret;
        END IF;
    END IF;
    
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_Authenticate_Member` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_Authenticate_Member`(
    IN p_lastname varchar(255),
    IN p_ipaddress VARCHAR(255),
    IN p_browser VARCHAR(255),
    IN p_status int
)
BEGIN
    DECLARE ret int;
    DECLARE ret_msg VARCHAR(25);
    DECLARE c_lock int;
    DECLARE m_status VARCHAR(255);
    DECLARE stat_ret VARCHAR(255);
    
    SELECT counterlock INTO c_lock FROM `tbl_members` WHERE lastname = p_lastname;
    SELECT `status` INTO m_status FROM `tbl_members` WHERE lastname = p_lastname;
    
    IF p_status = 0 THEN
		IF m_status = 'deleted' THEN
			SET ret = 5;
            SET stat_ret = 'Account Not Available';
        ELSE
			IF EXISTS(SELECT * FROM `tbl_members` WHERE lastname = p_lastname) THEN
				IF c_lock >= 3 THEN
					IF c_lock = 3 THEN
						UPDATE `tbl_members` SET counterlock = counterlock + 1, updated_at = NOW() WHERE lastname = p_lastname;
						INSERT INTO tbl_loginlog (acc_id, whois, browser, ip_address, login_status) SELECT id, 'member', p_browser, p_ipaddress, 'locked' FROM tbl_members WHERE lastname = p_lastname;
						SET ret = 3, ret_msg = 'Account Locked';
					ELSE
						INSERT INTO tbl_loginlog (acc_id, whois, browser, ip_address, login_status) SELECT id, 'member', p_browser, p_ipaddress, 'locked' FROM tbl_members WHERE lastname = p_lastname;
						SET ret = 3, ret_msg = 'Account Locked';
					END IF;
				ELSE
					SELECT * FROM tbl_members WHERE lastname = p_lastname;
					SET ret = 1;
				END IF;
			ELSE 
				SET ret = 4;
			END IF;
		END IF;
	ELSEIF p_status = 1 THEN
        UPDATE `tbl_members` SET counterlock = counterlock + 1 WHERE lastname = p_lastname;
        INSERT INTO tbl_loginlog (acc_id, whois, browser, ip_address, login_status) SELECT id, 'member', p_browser, p_ipaddress, 'failed' FROM tbl_members WHERE lastname = p_lastname;
        SET ret = 2, ret_msg = 'Wrong Password';
    END IF;
    
    IF ret IS NOT NULL THEN 
        IF ret < 4 THEN 
            SELECT *,ret,ret_msg FROM `tbl_members` WHERE lastname = p_lastname;
        ELSE 
			IF ret = 5 THEN
				SELECT stat_ret, ret, ret_msg;
            ELSE
				SELECT ret, ret_msg;
			END IF;
        END IF;
    END IF;
    
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_checkTimeStatus` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_checkTimeStatus`(
    IN p_username VARCHAR(255),
    IN p_ipaddress VARCHAR(255),
    IN p_browser VARCHAR(255),
    IN p_acc VARCHAR(255),
    IN p_token VARCHAR(255)
)
BEGIN
    DECLARE ret INT;
    DECLARE ret_msg VARCHAR(25);
    DECLARE p_time TIMESTAMP;
    DECLARE c_lock INT;
    DECLARE acc_id INT;
	DECLARE p_em VARCHAR(255);
	
    
    IF p_acc = 'member' THEN
		SELECT updated_at, counterlock, id INTO p_time, c_lock, acc_id FROM tbl_members WHERE lastname = p_username;
        
        IF c_lock >= 3 THEN
            IF TIMESTAMPDIFF(MINUTE, p_time, NOW()) > 5 THEN
                UPDATE tbl_members SET counterlock = 0, updated_at = NOW() WHERE lastname = p_username;
                INSERT INTO tbl_loginlog (acc_id, whois, browser, ip_address, login_status) SELECT id, p_acc, p_browser, p_ipaddress, 'unlocked' FROM tbl_members WHERE lastname = p_username;
                SET ret = 3, ret_msg = 'Unlocked';
                SELECT ret;
            ELSE
                INSERT INTO tbl_loginlog (acc_id, whois, browser, ip_address, login_status) SELECT id, p_acc, p_browser, p_ipaddress, 'locked' FROM tbl_members WHERE lastname = p_username;
                SET ret = 2;
                SELECT ret;
            END IF;
        ELSE
            UPDATE tbl_members SET counterlock = 0, updated_at = NOW() WHERE lastname = p_username;
            INSERT INTO tbl_loginlog (acc_id, whois, browser, ip_address, login_status) SELECT id, p_acc, p_browser, p_ipaddress, 'success' FROM tbl_members WHERE lastname = p_username;
            INSERT INTO access_token (user_id,whois,token) VALUE (acc_id,p_acc,p_token);
            
            SET ret = 1;
            SELECT *, ret FROM tbl_members WHERE lastname = p_username;
        END IF;
        
    ELSE
        IF EXISTS(SELECT * FROM `admin` WHERE username = p_username) THEN
			SELECT updated_at, counterlock, id INTO p_time, c_lock, acc_id FROM admin WHERE username = p_username;
			
			IF c_lock >= 3 THEN
				IF TIMESTAMPDIFF(MINUTE, p_time, NOW()) > 5 THEN
					UPDATE admin SET counterlock = 0, updated_at = NOW() WHERE username = p_username;
					INSERT INTO tbl_loginlog (acc_id, whois, browser, ip_address, login_status) SELECT id, p_acc, p_browser, p_ipaddress, 'unlocked' FROM admin WHERE username = p_username;
					SET ret = 3, ret_msg = 'Unlocked';
					SELECT ret;
				ELSE
					INSERT INTO tbl_loginlog (acc_id, whois, browser, ip_address, login_status) SELECT id, p_acc, p_browser, p_ipaddress 'locked' FROM admin WHERE username = p_username;
					SET ret = 2, ret_msg = 'Locked';
					SELECT ret;
				END IF;
			ELSE
				UPDATE admin SET counterlock = 0, updated_at = NOW() WHERE username = p_username;
				INSERT INTO tbl_loginlog (acc_id, whois, browser, ip_address, login_status) SELECT id, p_acc, p_browser, p_ipaddress, 'success' FROM admin WHERE username = p_username;
				INSERT INTO access_token (user_id,whois,token) VALUE (acc_id,p_acc,p_token);
				
				SET ret = 1;
				SELECT *, ret FROM admin WHERE username = p_username;
			END IF;
        ELSE
			SELECT updated_at, `position`, counterlock, id INTO p_time, p_em, c_lock, acc_id FROM tbl_employees WHERE email = p_username;
			
			IF c_lock >= 3 THEN
				IF TIMESTAMPDIFF(MINUTE, p_time, NOW()) > 5 THEN
					UPDATE tbl_employees SET counterlock = 0, updated_at = NOW() WHERE email = p_username;
					INSERT INTO tbl_loginlog (acc_id, whois, browser, ip_address, login_status) SELECT id, p_em, p_browser, p_ipaddress, 'unlocked' FROM tbl_employees WHERE email = p_username;
					SET ret = 3, ret_msg = 'Unlocked';
					SELECT ret;
				ELSE
					INSERT INTO tbl_loginlog (acc_id, whois, browser, ip_address, login_status) SELECT id, p_em, p_browser, p_ipaddress 'locked' FROM tbl_employees WHERE email = p_username;
					SET ret = 2, ret_msg = 'Locked';
					SELECT ret;
				END IF;
			ELSE
				UPDATE admin SET counterlock = 0, updated_at = NOW() WHERE username = p_username;
				INSERT INTO tbl_loginlog (acc_id, whois, browser, ip_address, login_status) SELECT id, p_em, p_browser, p_ipaddress, 'success' FROM tbl_employees WHERE email = p_username;
				INSERT INTO access_token (user_id,whois,token) VALUE (acc_id,p_acc,p_token);
				
				SET ret = 1, ret_msg = 'Success';
				SELECT *, ret FROM admin WHERE username = p_username;
			END IF;
        END IF;
        
        
    END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_fetchEmployees` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_fetchEmployees`(
	IN search_term VARCHAR(255),
    IN p_id int
)
BEGIN
	DECLARE rand_id INT;
    DECLARE ret int;
    IF p_id = 0 THEN
		IF search_term = '0' THEN
			SELECT * FROM tbl_employees ORDER BY created_at DESC;
		ELSE
			SELECT * FROM tbl_employees 
				WHERE 
					`id` LIKE CONCAT('%', search_term, '%') OR
					`firstname` LIKE CONCAT('%', search_term, '%') OR
					`lastname` LIKE CONCAT('%', search_term, '%') OR
					`number` LIKE CONCAT('%', search_term, '%') OR
					`address` LIKE CONCAT('%', search_term, '%') OR
					`email` LIKE CONCAT('%', search_term, '%') OR
					`position` LIKE CONCAT('%', search_term, '%');
		END IF;
    ELSE
		UPDATE tbl_employees SET status = 'deleted' WHERE id = p_id;
        SET ret = 1;
        SELECT ret;
    END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_fetchLoginLogs` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_fetchLoginLogs`(
	IN search_term VARCHAR(255),
    IN p_id int
)
BEGIN
	DECLARE rand_id INT;
    DECLARE ret int;
    IF p_id = 0 THEN
		IF search_term = '0' THEN
			SELECT acc_id, whois, browser, ip_address, login_status, DATE_FORMAT(loggedin_at, '%M %d, %Y %h:%i %p') as formatted_date FROM tbl_loginlog ORDER BY loggedin_at DESC;
		ELSE
			SELECT acc_id, whois, browser, ip_address, login_status, DATE_FORMAT(loggedin_at, '%M %d, %Y %h:%i %p') as formatted_date FROM tbl_loginlog 
				WHERE
					id LIKE CONCAT('%', search_term, '%') OR
					acc_id LIKE CONCAT('%', search_term, '%') OR
					whois LIKE CONCAT('%', search_term, '%') OR
					browser LIKE CONCAT('%', search_term, '%') OR
					ip_address LIKE CONCAT('%', search_term, '%') OR
					login_status LIKE CONCAT('%', search_term, '%');
		END IF;
    ELSE
		UPDATE tbl_loginlog SET `status` = 'deleted' WHERE id = p_id;
        SET ret = 1;
        SELECT ret;
    END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_fetchMembers` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_fetchMembers`(
	IN search_term VARCHAR(255),
    IN p_id int
)
BEGIN
	DECLARE rand_id INT;
    DECLARE ret int;
    IF p_id = 0 THEN
		IF search_term = '0' THEN
			SELECT * FROM tbl_members ORDER BY member_at DESC;
		ELSE
			SELECT * FROM tbl_members
				WHERE 
					id LIKE CONCAT('%', search_term, '%') OR
					firstname LIKE CONCAT('%', search_term, '%') OR
					middlename LIKE CONCAT('%', search_term, '%') OR
					lastname LIKE CONCAT('%', search_term, '%') OR
					number LIKE CONCAT('%', search_term, '%') OR
					address LIKE CONCAT('%', search_term, '%') OR
					member_at LIKE CONCAT('%', search_term, '%') OR
					beneficiary LIKE CONCAT('%', search_term, '%') OR
					business_work LIKE CONCAT('%', search_term, '%');
		END IF;
    ELSE
		DELETE tbl_members, tbl_loantransactions, tbl_loans, tbl_loanrequests, tbl_pettycash, tbl_savings, tbl_loginlog
		FROM tbl_members
			LEFT JOIN tbl_loantransactions ON tbl_members.id = tbl_loantransactions.member_id
			LEFT JOIN tbl_loans ON tbl_members.id = tbl_loans.member_id
			LEFT JOIN tbl_loanrequests ON tbl_members.id = tbl_loanrequests.member_id
			LEFT JOIN tbl_pettycash ON tbl_members.id = tbl_pettycash.member_id
			LEFT JOIN tbl_savings ON tbl_members.id = tbl_savings.member_id
			LEFT JOIN tbl_loginlog ON tbl_members.id = tbl_loginlog.acc_id
			WHERE tbl_members.id = p_id;

        SET ret = 1;
        SELECT ret;
    END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_fetchTransactions` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_fetchTransactions`(
	IN p_status VARCHAR(45),
    IN p_id int
)
BEGIN
	IF p_id = 0 THEN
		IF p_status = 'pending' THEN
			SELECT tm.id,  DATE_FORMAT(lt.date_pay, '%M %d, %Y') as formatted_date, lt.balance_pay, tl.status AS loan_status, lt.status_pay, lt.debit, tm.lastname, tm.firstname, lr.amount, lr.loanterm FROM tbl_loans AS tl LEFT JOIN tbl_loanrequests AS lr ON lr.member_id = tl.member_id LEFT JOIN tbl_members AS tm ON tl.member_id = tm.id LEFT JOIN tbl_loantransactions AS lt ON tl.member_id = lt.member_id WHERE tl.status = p_status;
		END IF;
		IF p_status = 'accept' THEN
			SELECT tm.id, DATE_FORMAT(lt.date_pay, '%M %d, %Y') as formatted_date, lt.balance_pay, tl.status AS loan_status,lt.status_pay, lt.debit, tm.lastname, tm.firstname, lr.amount, lr.loanterm FROM tbl_loans AS tl LEFT JOIN tbl_loanrequests AS lr ON lr.member_id = tl.member_id LEFT JOIN tbl_members AS tm ON tl.member_id = tm.id LEFT JOIN tbl_loantransactions AS lt ON tl.member_id = lt.member_id WHERE tl.status = p_status;
		END IF;
    ELSE
		IF p_status = 'pending' THEN
			SELECT tl.id, lt.status_pay, DATE_FORMAT(tl.date_accept, '%M %d, %Y') as formatted_date, lt.debit, lt.balance_pay, tl.status AS loan_status, lr.id, lr.amount, lr.loanterm, lr.purpose, lr.modepayment, lr.repaymentsched, tm.firstname, tm.lastname FROM tbl_loans AS tl LEFT JOIN tbl_loanrequests AS lr ON lr.member_id = tl.member_id LEFT JOIN tbl_members AS tm ON tl.member_id = tm.id LEFT JOIN tbl_loantransactions AS lt ON tl.member_id = lt.member_id WHERE tl.status = p_status AND tl.member_id = p_id;
		END IF;
        
		IF p_status = 'accept' THEN
			SELECT tl.id, lt.status_pay, DATE_FORMAT(tl.date_accept, '%M %d, %Y') as formatted_date, lt.debit, lt.balance_pay, tl.status AS loan_status,lr.id, lr.amount, lr.loanterm, lr.purpose, lr.modepayment, lr.repaymentsched, tm.firstname, tm.lastname FROM tbl_loans AS tl LEFT JOIN tbl_loanrequests AS lr ON lr.member_id = tl.member_id LEFT JOIN tbl_members AS tm ON tl.member_id = tm.id LEFT JOIN tbl_loantransactions AS lt ON tl.member_id = lt.member_id WHERE tl.status = p_status AND tl.member_id = p_id;
		END IF;
    END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_getAdminData` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_getAdminData`(
	IN p_token VARCHAR(255)
)
BEGIN
    DECLARE ret int;
    DECLARE m_id int;
    
    IF EXISTS(SELECT * FROM access_token WHERE token = p_token) THEN
		SELECT user_id INTO m_id FROM access_token WHERE token = p_token ORDER BY token_added DESC LIMIT 1;
        SET ret = 1;
        SELECT *, ret FROM tbl_members WHERE id = m_id;
    ELSE
		SET ret = 2;
        SELECT ret;
    END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_getAdminList` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_getAdminList`(
	IN p_search VARCHAR(255),
    IN p_token VARCHAR(255)
)
BEGIN
	DECLARE a_id int;
    
	SELECT user_id INTO a_id FROM access_token WHERE token = p_token ORDER BY token_added DESC LIMIT 1;
    
	IF p_search <> '' THEN
		SELECT * FROM admin 
			WHERE
				firstname LIKE CONCAT('%',p_search,'%') OR
				lastname LIKE CONCAT('%',p_search,'%') OR
				email LIKE CONCAT('%',p_search,'%') OR
				username LIKE CONCAT('%',p_search,'%');
    ELSE
		SELECT *, DATE_FORMAT(created_at, '%M %d, %Y') as formatted_date FROM admin WHERE id != a_id;
    END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_getComakerFullname` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_getComakerFullname`(
	IN p_id int,
    IN m_id int
)
BEGIN
	
	UPDATE tbl_loanrequests SET status = 'read' WHERE member_id = m_id ORDER BY request_date DESC LIMIT 1;
	SELECT tm.firstname AS cofname, tm.middlename AS comname, tm.lastname AS colname FROM tbl_members AS tm WHERE tm.id = p_id;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_getLoans` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_getLoans`(
	IN p_search VARCHAR(255),
    IN p_id int
)
BEGIN
	IF p_id <> 0 THEN
		SELECT * FROM getloansview WHERE id = p_id;
    END IF;
    
    IF p_search <> '' THEN
		SELECT * FROM getloansview
			WHERE partial_pay LIKE CONCAT('%', p_search ,'%') OR
				loan_amount LIKE CONCAT('%', p_search ,'%') OR
				description LIKE CONCAT('%', p_search ,'%') OR
				firstname LIKE CONCAT('%', p_search ,'%') OR
				middlename LIKE CONCAT('%', p_search ,'%') OR
				lastname LIKE CONCAT('%', p_search ,'%') OR
				loanterm LIKE CONCAT('%', p_search ,'%') OR
				purpose LIKE CONCAT('%', p_search ,'%') OR
				modepayment LIKE CONCAT('%', p_search ,'%') OR
				repaymentsched LIKE CONCAT('%', p_search ,'%') OR
				formatted_date LIKE CONCAT('%', p_search ,'%');
    END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_getMemberData` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_getMemberData`(
	IN p_token VARCHAR(255)
)
BEGIN
    DECLARE ret int;
    DECLARE m_id int;
    DECLARE tl_status VARCHAR(25);
    DECLARE p_balance int;
    DECLARE m_pass VARCHAR(255);
    
    IF EXISTS(SELECT * FROM access_token WHERE token = p_token) THEN
		SELECT user_id INTO m_id FROM access_token WHERE token = p_token ORDER BY token_added DESC LIMIT 1;
        SELECT tl.status INTO tl_status FROM tbl_loans AS tl WHERE tl.member_id = m_id;
        SET ret = 1;
        SELECT tm.id, tm.firstname, tm.middlename, tm.lastname, tm.gender, tm.number, tm.birthdate, tm.email_add, tm.civil_status, tm.address, tm.member_at, tm.beneficiary, tm.business_work, tl.status, SUM(pc.balance) AS pettycash_bal 
			FROM tbl_members AS tm 
			LEFT JOIN tbl_loans AS tl ON tl.member_id = tm.id 
			LEFT JOIN tbl_pettycash AS pc ON tm.id = pc.member_id 
			WHERE tm.id = m_id
            GROUP BY tm.id, tl.status;
    ELSE
		SET ret = 2;
        SELECT ret;
    END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_getMembersSavings` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_getMembersSavings`(
	IN search VARCHAR(255)
)
BEGIN
	IF search <> '' THEN
		SELECT ts.amount, ts.member_id, ts.withdraw, ts.deposit, DATE_FORMAT(ts.saved_at, '%M %d, %Y') as formatted_date, CONCAT(tm.lastname,', ', tm.firstname, ' ', tm.middlename) AS fullname FROM tbl_savings AS ts LEFT JOIN tbl_members AS tm ON ts.member_id = tm.id ORDER BY saved_at DESC;
    ELSE
		SELECT * FROM tbl_savings
			WHERE 
				member_id LIKE CONCAT('%',search,'%') OR
				amount LIKE CONCAT('%',search,'%') OR
				withdraw LIKE CONCAT('%',search,'%') OR
				deposit LIKE CONCAT('%',search,'%');
    END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_getPettyCash` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_getPettyCash`(
	IN p_id int,
    IN p_search VARCHAR(255)
)
BEGIN
	IF p_id <> 0 THEN
		SELECT tp.id,tp.balance,tm.firstname,tm.middlename,tm.lastname FROM tbl_pettycash AS tp LEFT JOIN tbl_members AS tm ON tp.member_id = tm.id WHERE tp.member_id = p_id;
    ELSE
		IF p_search <> '' THEN
			SELECT * FROM tbl_pettycash 
				WHERE
					`id` LIKE CONCAT('%',p_search,'%') OR
					`member_id` LIKE CONCAT('%',p_search,'%') OR
					`balance` LIKE CONCAT('%',p_search,'%') OR
					`description` LIKE CONCAT('%',p_search,'%');
        ELSE
			SELECT tp.id,tp.balance,tm.firstname,tm.middlename,tm.lastname FROM tbl_pettycash AS tp LEFT JOIN tbl_members AS tm ON tp.member_id = tm.id ORDER BY add_at DESC;
        END IF;
    END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_getUnreadCount` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_getUnreadCount`(
	IN p_status VARCHAR(255)
)
BEGIN
	IF p_status = '' THEN
		SELECT tl.status,tl.description,tl.position,tl.amount,tl.loanterm,tl.request_date,tl.purpose,tl.modepayment,tl.repaymentsched,tl.yearstayed,tl.tinno,tl.fbacc,tl.spousename,tl.nodependents,tl.address AS work_address,tl.emstatus,tl.salaryincome,tl.otherincome,tl.noofyears,tl.comaker_id,tl.other_institution,tm.id,tm.firstname,tm.middlename,tm.lastname,tm.gender,tm.number,tm.birthdate,tm.email_add,tm.civil_status,tm.address AS present_address,tm.password,tm.member_at,tm.beneficiary,tm.business_work, loan.status AS loan_status FROM tbl_loanrequests AS tl LEFT JOIN tbl_members AS tm ON tm.id = tl.member_id LEFT JOIN tbl_loans AS loan ON loan.member_id = tl.member_id ORDER BY tl.request_date DESC;
	END IF;
    IF p_status = 'unread' THEN
		SELECT COUNT(*) AS unread_count FROM tbl_loanrequests WHERE status = 'unread';
	END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_loanRequest` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_loanRequest`(
	IN p_id int,
    IN p_position VARCHAR(255),
    IN p_amount BIGINT,
    IN p_purpose VARCHAR(255),
    IN p_loanterm VARCHAR(255),
    IN p_modepayment VARCHAR(255),
    IN p_repaymentsched VARCHAR(255),
    IN p_yearstayed INT,
    IN p_tinno VARCHAR(255),
    IN p_fbacc VARCHAR(255),
    IN p_spousename VARCHAR(255),
    IN p_nodependents int,
    IN p_address VARCHAR(255),
    IN p_emstatus VARCHAR(255),
    IN p_salaryincome BIGINT,
    IN p_otherincome BIGINT,
    IN p_noofyears INT,
    IN p_colname VARCHAR(255),
    IN p_cofname VARCHAR(255),
    IN p_comname VARCHAR(255),
    IN p_other VARCHAR(45),
    IN p_desc VARCHAR(255)
)
BEGIN
    DECLARE co_id int;
    DECLARE st_msg VARCHAR(255);
    DECLARE st_code int;
    DECLARE lr_id int;
    DECLARE tl_debit int;
    DECLARE tl_id int;
    DECLARE tl_status VARCHAR(15);
    DECLARE l_stats VARCHAR(25);
	
	SELECT id INTO co_id FROM tbl_members WHERE firstname = p_cofname AND middlename = p_comname AND lastname = p_colname;
    SELECT debit INTO tl_debit FROM tbl_loantransactions WHERE member_id = p_id ORDER BY date_pay DESC LIMIT 1;
    SELECT tl.status INTO l_stats FROM tbl_loans AS tl WHERE tl.member_id = p_id ORDER BY date_accept DESC LIMIT 1;
    
	IF p_desc = 'regular loan' THEN
    
		IF co_id IS NOT NULL THEN
			
            IF l_stats = 'pending' THEN
				SET st_code = 401, st_msg = "Request In Queue";
				SELECT st_code, st_msg;
            ELSE
				IF tl_debit = 0 THEN
				
					SET st_code = 401, st_msg = "Sorry we cannot process your loan request because you still have balance to pay";
					SELECT st_code, st_msg;
				
				ELSE
					INSERT INTO tbl_loanrequests
						(`member_id`,`position`,`amount`,`loanterm`,`purpose`,`modepayment`,`repaymentsched`,`yearstayed`,`tinno`,`fbacc`,`spousename`,`nodependents`,`address`,`emstatus`,`salaryincome`,`otherincome`,`noofyears`,`comaker_id`,`other_institution`,`description`)
					VALUES
						(p_id,p_position,p_amount,p_loanterm,p_purpose,p_modepayment,p_repaymentsched,p_yearstayed,p_tinno,p_fbacc,p_spousename,p_nodependents,p_address,p_emstatus,p_salaryincome,p_otherincome,p_noofyears,co_id,p_other,p_desc);
					
					
					SET st_code = 200, st_msg = "Request sucessful";
					SELECT st_code, st_msg;
				END IF;
            END IF;
            
        ELSE
			SET st_code = 404, st_msg = "Co-maker is not registered";
			SELECT st_code, st_msg;
        END IF;
        
    ELSE
		IF co_id IS NOT NULL THEN
			
            IF l_stats = 'pending' THEN
				SET st_code = 401, st_msg = "Request In Queue";
				SELECT st_code, st_msg;
            ELSE
				IF tl_debit = 0 THEN
				
					SET st_code = 401, st_msg = "Sorry we cannot process your loan request because you still have balance to pay";
					SELECT st_code, st_msg;
				
				ELSE
					INSERT INTO tbl_loanrequests
						(`member_id`,`position`,`amount`,`loanterm`,`purpose`,`modepayment`,`repaymentsched`,`yearstayed`,`tinno`,`fbacc`,`spousename`,`address`,`emstatus`,`salaryincome`,`otherincome`,`noofyears`,`comaker_id`,`other_institution`,`description`)
					VALUES
						(p_id,p_position,p_amount,p_loanterm,p_purpose,p_modepayment,p_repaymentsched,p_yearstayed,p_tinno,p_fbacc,p_spousename,p_address,p_emstatus,p_salaryincome,p_otherincome,p_noofyears,co_id,p_other,p_desc);
					
					
					SET st_code = 200, st_msg = "Request sucessful";
					SELECT st_code, st_msg;
				END IF;
            END IF;
            
        ELSE
			SET st_code = 404, st_msg = "Co-maker is not registered";
			SELECT st_code, st_msg;
        END IF;
    END IF;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_payBalance` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_payBalance`(
	IN p_lname VARCHAR(255),
	IN p_fname VARCHAR(255),
    IN p_amount BIGINT,
    IN p_desc VARCHAR(255)
)
BEGIN
	DECLARE m_id int;
	DECLARE lt_id int;
    DECLARE st_code int;
    DECLARE st_msg VARCHAR(45);
    DECLARE n_amount int;
    DECLARE tl_debit int;
    DECLARE tl_id int;
    DECLARE l_id int;
    
    IF p_lname <> '' AND p_fname <> '' AND p_amount <> 0 AND p_desc <> '' THEN
		SELECT id INTO m_id FROM tbl_members WHERE firstname = p_fname AND lastname = p_lname;
		SELECT tblt.id INTO lt_id FROM tbl_loantransactions AS tblt WHERE tblt.member_id ORDER BY tblt.date_pay DESC LIMIT 1;
		SELECT debit INTO tl_debit FROM tbl_loantransactions WHERE id = lt_id;
        
        IF p_desc = 'regular loan' THEN
			IF p_amount > tl_debit THEN
				SET st_code = 401;
				SET st_msg = 'Deposit exceeds the balance to pay';
				SELECT st_code, st_msg;
			ELSE
				SET n_amount = tl_debit - p_amount;
				INSERT tbl_loantransactions (member_id,loan_id,debit,balance_pay,date_pay) VALUES (m_id,lt_id,n_amount,p_amount,NOW());
				SELECT id INTO tl_id FROM tbl_loantransactions WHERE id = lt_id ORDER BY date_pay DESC LIMIT 1;
				
				IF n_amount = 0 THEN
					SELECT tbl.id INTO l_id FROM tbl_loans AS tbl WHERE member_id = m_id ORDER BY date_accept DESC LIMIT 1;
					UPDATE tbl_loantransactions SET status_pay = 'payed' WHERE id = tl_id;
                    UPDATE tbl_loans SET description = 'payed' WHERE id = l_id;
					SET st_code = 200;
					SET st_msg = 'Balance has been deposit and loan payed';
					SELECT st_code, st_msg;
				ELSE
					SET st_code = 200;
					SET st_msg = 'Balance has been deposit';
					SELECT st_code, st_msg;
				END IF;
				
			END IF;
        END IF;
        IF p_desc = 'petty cash loan' THEN
			IF p_amount > tl_debit THEN
				SET st_code = 401;
				SET st_msg = 'Deposit exceeds the balance to pay';
				SELECT st_code, st_msg;
			ELSE
				SET n_amount = tl_debit - p_amount;
				INSERT tbl_loantransactions (member_id,loan_id,debit,balance_pay,date_pay) VALUES (m_id,lt_id,n_amount,p_amount,NOW());
				SELECT id INTO tl_id FROM tbl_loantransactions WHERE id = lt_id ORDER BY date_pay DESC LIMIT 1;
				UPDATE tbl_pettycash AS pc SET pc.balance = pc.balance - p_amount WHERE pc.member_id = m_id;
				
				IF n_amount = 0 THEN
					SELECT tbl.id INTO l_id FROM tbl_loans AS tbl WHERE member_id = m_id ORDER BY date_accept DESC LIMIT 1;
					UPDATE tbl_loantransactions SET status_pay = 'payed' WHERE id = tl_id;
                    UPDATE tbl_loans SET description = 'payed' WHERE id = l_id;
					SET st_code = 200;
					SET st_msg = 'Balance has been deposit and loan payed';
					SELECT st_code, st_msg;
				ELSE
					SET st_code = 200;
					SET st_msg = 'Balance has been deposit';
					SELECT st_code, st_msg;
				END IF;
				
			END IF;
        END IF;
        
    ELSE
		SET st_code = 401;
        SET st_msg = 'Please provide some info';
        SELECT st_code, st_msg;
	END IF;
    
    
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_resetPassword` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_resetPassword`(
	IN p_email VARCHAR(255),
    IN p_newpass VARCHAR(255),
    IN p_token VARCHAR(255)
)
BEGIN
	DECLARE m_id int;
	DECLARE st_code int;
    DECLARE st_msg VARCHAR(45);
    
    SELECT id INTO m_id FROM tbl_members WHERE email_add = p_email;
    
    IF p_newpass <> '' THEN
		IF EXISTS(SELECT id FROM tbl_requestreset WHERE reset_token = p_token) THEN
			UPDATE tbl_members SET password = p_newpass, updated_at = NOW() WHERE id = m_id;
			SET st_code = 200, st_msg = 'Password reset successfully you can login now';
        ELSE
			SET st_code = 404, st_msg = 'Not found token';
        END IF;
		
    ELSE
		IF m_id IS NULL THEN
			SET st_code = 400, st_msg = 'Email not found';
		ELSE
			IF p_token <> '' THEN
				INSERT INTO tbl_requestreset (`email`,`reset_token`) VALUES (p_email,p_token);
				SET st_code = 200, st_msg = 'Check email for reset password';
			END IF;
		END IF;
    END IF;
    
    
    SELECT st_code, st_msg;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_withdrawDeposit` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_withdrawDeposit`(
	IN p_id int,
    IN p_amount BIGINT,
    IN p_desc VARCHAR(15)
)
BEGIN
	DECLARE s_amount int;
    DECLARE s_id int;
    DECLARE st_code int;
    DECLARE st_msg VARCHAR(15);
	
    SELECT amount INTO s_amount FROM tbl_savings WHERE member_id = p_id ORDER BY saved_at DESC LIMIT 1;
    
	IF p_desc = 'deposit' THEN
		INSERT INTO tbl_savings (member_id,amount,deposit) VALUES (p_id,amoung + p_amount, p_amount);
        SET st_code = 200, st_msg = "Deposit Successfully";
        SELECT st_code, st_msg;
    ELSE
		INSERT INTO tbl_savings (member_id,amount,withdraw) VALUES (p_id,amoung - p_amount, p_amount);
		SET st_code = 200, st_msg = "Withdraw Successfully";
        SELECT st_code, st_msg;
    END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `testing` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `testing`(
	IN p_id int,
    IN p_position VARCHAR(255),
    IN p_amount BIGINT,
    IN p_purpose VARCHAR(255),
    IN p_loanterm VARCHAR(255),
    IN p_modepayment VARCHAR(255),
    IN p_repaymentsched VARCHAR(255),
    IN p_yearstayed INT,
    IN p_tinno VARCHAR(255),
    IN p_fbacc VARCHAR(255),
    IN p_spousename VARCHAR(255),
    IN p_address VARCHAR(255),
    IN p_emstatus VARCHAR(255),
    IN p_salaryincome BIGINT,
    IN p_otherincome BIGINT,
    IN p_noofyears INT,
    IN p_colname VARCHAR(255),
    IN p_cofname VARCHAR(255),
    IN p_comname VARCHAR(255),
    IN p_other VARCHAR(45),
    IN p_desc VARCHAR(255)
)
BEGIN

	SELECT 
		CASE WHEN p_id <> '' THEN 'Not Empty' ELSE 'Empty' END AS id,
		CASE WHEN p_position <> '' THEN 'Not Empty' ELSE 'Empty' END AS position,
		CASE WHEN p_amount <> '' THEN 'Not Empty' ELSE 'Empty' END AS amount,
		CASE WHEN p_purpose <> '' THEN 'Not Empty' ELSE 'Empty' END AS purpose,
		CASE WHEN p_loanterm <> '' THEN 'Not Empty' ELSE 'Empty' END AS loanterm,
		CASE WHEN p_modepayment <> '' THEN 'Not Empty' ELSE 'Empty' END AS modepayment,
		CASE WHEN p_repaymentsched <> '' THEN 'Not Empty' ELSE 'Empty' END AS repaymentsched,
		CASE WHEN p_yearstayed <> '' THEN 'Not Empty' ELSE 'Empty' END AS yearstayed,
		CASE WHEN p_tinno <> '' THEN 'Not Empty' ELSE 'Empty' END AS tinno,
		CASE WHEN p_fbacc <> '' THEN 'Not Empty' ELSE 'Empty' END AS fbacc,
		CASE WHEN p_spousename <> '' THEN 'Not Empty' ELSE 'Empty' END AS spousename,
		CASE WHEN p_address <> '' THEN 'Not Empty' ELSE 'Empty' END AS address,
		CASE WHEN p_emstatus <> '' THEN 'Not Empty' ELSE 'Empty' END AS emstatus,
		CASE WHEN p_salaryincome <> '' THEN 'Not Empty' ELSE 'Empty' END AS salaryincome,
		CASE WHEN p_otherincome <> '' THEN 'Not Empty' ELSE 'Empty' END AS otherincome,
		CASE WHEN p_noofyears <> '' THEN 'Not Empty' ELSE 'Empty' END AS noofyears,
		CASE WHEN p_colname <> '' THEN 'Not Empty' ELSE 'Empty' END AS colname,
		CASE WHEN p_cofname <> '' THEN 'Not Empty' ELSE 'Empty' END AS cofname,
		CASE WHEN p_comname <> '' THEN 'Not Empty' ELSE 'Empty' END AS comname,
		CASE WHEN p_other <> '' THEN 'Not Empty' ELSE 'Empty' END AS other,
		CASE WHEN p_desc <> '' THEN 'Not Empty' ELSE 'Empty' END AS description;


END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Final view structure for view `getloansdata`
--

/*!50001 DROP VIEW IF EXISTS `getloansdata`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `getloansdata` AS select date_format(`tl`.`date_accept`,'%M %d, %Y') AS `formatted_date`,`tl`.`status` AS `status`,`tl`.`partial_pay` AS `partial_pay`,`lr`.`amount` AS `amount`,`lr`.`loanterm` AS `loanterm`,`tm`.`firstname` AS `firstname`,`tm`.`middlename` AS `middlename`,`tm`.`lastname` AS `lastname`,`tm`.`id` AS `member_id` from ((`tbl_loans` `tl` left join `tbl_loanrequests` `lr` on((`tl`.`member_id` = `lr`.`member_id`))) left join `tbl_members` `tm` on((`tl`.`member_id` = `tm`.`id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `getloansview`
--

/*!50001 DROP VIEW IF EXISTS `getloansview`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `getloansview` AS select `tm`.`id` AS `member_id`,`tbl`.`partial_pay` AS `partial_pay`,`tbl`.`loan_amount` AS `loan_amount`,`tbl`.`description` AS `description`,`tm`.`firstname` AS `firstname`,`tm`.`middlename` AS `middlename`,`tm`.`lastname` AS `lastname`,`lr`.`loanterm` AS `loanterm`,`lr`.`purpose` AS `purpose`,`lr`.`modepayment` AS `modepayment`,`lr`.`repaymentsched` AS `repaymentsched`,date_format(`lt`.`date_pay`,'%M %d, %Y') AS `formatted_date` from (((`tbl_loans` `tbl` left join `tbl_members` `tm` on((`tm`.`id` = `tbl`.`member_id`))) left join `tbl_loanrequests` `lr` on((`lr`.`member_id` = `tbl`.`member_id`))) left join `tbl_loantransactions` `lt` on((`lt`.`member_id` = `tbl`.`member_id`))) order by `lt`.`date_pay` desc limit 1 */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-05-14 20:36:32
