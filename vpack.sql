CREATE DATABASE  IF NOT EXISTS `vpack` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `vpack`;
-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: localhost    Database: vpack
-- ------------------------------------------------------
-- Server version	8.0.36

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
-- Table structure for table `functions`
--

DROP TABLE IF EXISTS `functions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `functions` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `phone` varchar(45) DEFAULT NULL,
  `packages` varchar(45) DEFAULT NULL,
  `additional` varchar(45) DEFAULT NULL,
  `date` varchar(45) DEFAULT NULL,
  `time` varchar(45) DEFAULT NULL,
  `amount` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `functions`
--

LOCK TABLES `functions` WRITE;
/*!40000 ALTER TABLE `functions` DISABLE KEYS */;
INSERT INTO `functions` VALUES (1,'s','Shdi@gmail.com','0123456789','Party','s','2024-04-22','11:50','100.0'),(2,'w','w@gmail.com','0123568955','Wedding','z','2024-04-23','00:16:32.172705700','2116.0'),(4,'z','Shdi@gmail.com','0123568955','Party','z','2024-04-25','00:20','5.0'),(5,'e','e@gmail.com','0123568957','Birthday','w','2024-05-01','07:11','100.0'),(6,'s','Shdi@gmail.com','0729498280','Birthday','s','2024-04-17','07:35','0.08'),(7,'n','Shdi@gmail.com','2220000000','Birthday','22','2024-04-26','13:09','500.0'),(8,'n','Shdi@gmail.com','2220000000','Birthday','22','2024-04-26','13:09','500.0'),(9,'n','Shdi@gmail.com','2220000000','Birthday','22','2024-04-26','13:09','500.0'),(10,'n','Shdi@gmail.com','2220000000','Birthday','22','2024-04-26','13:09','500.0');
/*!40000 ALTER TABLE `functions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `organizer`
--

DROP TABLE IF EXISTS `organizer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `organizer` (
  `id` int NOT NULL AUTO_INCREMENT,
  `ptype` varchar(45) DEFAULT NULL,
  `vendor` varchar(45) DEFAULT NULL,
  `contact` varchar(45) DEFAULT NULL,
  `info` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `organizer`
--

LOCK TABLES `organizer` WRITE;
/*!40000 ALTER TABLE `organizer` DISABLE KEYS */;
INSERT INTO `organizer` VALUES (1,'ccd','cccccd','cd','cd'),(2,'cc','ccccc','c','c'),(3,'cc','ccccc','c','c'),(5,'vm','vm','vm','vm'),(6,'vm','vm','vm','vm'),(7,'vm','vm','vm','vm');
/*!40000 ALTER TABLE `organizer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `password` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'hash','hash@gmail.com','hash'),(2,'ss','s@gmail.com','ss'),(3,'dani','dani@gmail.com','123'),(4,'s','s@gmail.com','s'),(5,'t','t@gmail.com','t');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vendor`
--

DROP TABLE IF EXISTS `vendor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vendor` (
  `id` int NOT NULL AUTO_INCREMENT,
  `ptype` varchar(45) DEFAULT NULL,
  `type` varchar(45) DEFAULT NULL,
  `vendor` varchar(45) DEFAULT NULL,
  `contact` varchar(45) DEFAULT NULL,
  `capacity` int DEFAULT NULL,
  `budget` int DEFAULT NULL,
  `info` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vendor`
--

LOCK TABLES `vendor` WRITE;
/*!40000 ALTER TABLE `vendor` DISABLE KEYS */;
INSERT INTO `vendor` VALUES (1,'s','s','s','s',100,5000,'s'),(2,'s','s','s','s',100,50,'s'),(3,'d','d','d','d',2,7,'d'),(4,'d','d','d','d',2,7,'d'),(5,'d','d','d','d',2,7,'d'),(6,'d','d','d','d',2,7,'d'),(7,'q','q','q','q',3,2,'q'),(8,'q','q','q','q',3,2,'q'),(9,'ew','ew','ew','ew',1000000,10000000,'ewwwwww'),(10,'x','x','x','x',2,2,'x'),(11,'xx','xx','xx','xx',2,3,'xx'),(12,'v','v','v','v',2,1,'v'),(13,'ccccccc','c','cccccccc','cccccccccccccc',2,2,'c'),(14,'b','b','b','b',1,1,'b'),(15,'b','b','b','b',1,1,'b'),(16,'w','w','w','w',200,20,'wwwwwwwwww'),(19,'xxxxc','xx','xxx','xx',300,300,'300');
/*!40000 ALTER TABLE `vendor` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-04-29 22:39:58
