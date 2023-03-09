-- MariaDB dump 10.19  Distrib 10.4.27-MariaDB, for osx10.10 (x86_64)
--
-- Host: localhost    Database: green
-- ------------------------------------------------------
-- Server version	10.4.27-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `Category`
--

DROP TABLE IF EXISTS `Category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Category` (
  `categoryId` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `productCount` int(11) DEFAULT 0,
  `parent_id` varchar(255) DEFAULT NULL,
  `created` varchar(255) DEFAULT NULL,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated` varchar(255) DEFAULT NULL,
  `updatedAt` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`categoryId`),
  KEY `created` (`created`),
  CONSTRAINT `category_ibfk_1` FOREIGN KEY (`created`) REFERENCES `User` (`userId`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Category`
--

LOCK TABLES `Category` WRITE;
/*!40000 ALTER TABLE `Category` DISABLE KEYS */;
/*!40000 ALTER TABLE `Category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Product`
--

DROP TABLE IF EXISTS `Product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Product` (
  `productId` varchar(255) NOT NULL,
  `categoryId` int(11) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `description` varchar(1000) DEFAULT NULL,
  `imageUrl` varchar(1000) DEFAULT NULL,
  `text` text DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `discountPrice` int(11) DEFAULT NULL,
  `remaining` int(11) DEFAULT 0,
  `readCount` int(11) DEFAULT 0,
  `rating` decimal(2,1) DEFAULT NULL,
  `created` varchar(255) DEFAULT NULL,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated` varchar(255) DEFAULT NULL,
  `updatedAt` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`productId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Product`
--

LOCK TABLES `Product` WRITE;
/*!40000 ALTER TABLE `Product` DISABLE KEYS */;
/*!40000 ALTER TABLE `Product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `User`
--

DROP TABLE IF EXISTS `User`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `User` (
  `userId` varchar(255) NOT NULL,
  `firstname` varchar(100) DEFAULT NULL,
  `lastname` varchar(100) DEFAULT NULL,
  `birthdate` date DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `emailConfirmed` tinyint(1) DEFAULT NULL,
  `phone` int(11) DEFAULT NULL,
  `phoneConfirmed` tinyint(1) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `imageUrl` varchar(1000) DEFAULT NULL,
  `isAdmin` tinyint(1) DEFAULT NULL,
  `created` varchar(255) DEFAULT NULL,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated` varchar(255) DEFAULT NULL,
  `updatedAt` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `User`
--

LOCK TABLES `User` WRITE;
/*!40000 ALTER TABLE `User` DISABLE KEYS */;
INSERT INTO `User` VALUES ('0n7eGqULwBtCIv-xpXlgn','dulguun2','Backend','1998-07-11','temuulen.m@pinecone.mn',NULL,99978722,NULL,'','',NULL,NULL,'2023-03-09 08:19:48',NULL,'2023-03-09 08:19:48'),('33hvbRXxHmqKLd_75xwL6','Temuulen','Narmandakh','1998-07-11','temuulen.m@pinecone.mn',NULL,96667432,NULL,'','',NULL,NULL,'2023-03-09 07:06:49',NULL,'0000-00-00 00:00:00'),('65-TLo6MOUQsAKXdpLQZz','Namuunaa','Backend','1998-07-11','temuulen.m@pinecone.mn',NULL,96667432,NULL,'','',NULL,NULL,'2023-03-09 08:22:08',NULL,'0000-00-00 00:00:00'),('czPRni1XVolMeLOyaPAAn','Namuunaa','Backend','1998-07-11','temuulen.m@pinecone.mn',NULL,96667432,NULL,'','',NULL,NULL,'2023-03-09 08:20:25',NULL,'0000-00-00 00:00:00'),('J1ygsK0O7vEoO2wM_kgoY','Namuunaa','Backend','1998-07-11','temuulen.m@pinecone.mn',NULL,96667432,NULL,'','',NULL,NULL,'2023-03-09 08:22:14',NULL,'0000-00-00 00:00:00'),('vQ55EuKB6QBUe8_AhZR_y','Namuunaa','Backend','1998-07-11','temuulen.m@pinecone.mn',NULL,96667432,NULL,'','',NULL,NULL,'2023-03-09 08:21:55',NULL,'0000-00-00 00:00:00');
/*!40000 ALTER TABLE `User` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `productImage`
--

DROP TABLE IF EXISTS `productImage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `productImage` (
  `imageId` varchar(255) NOT NULL,
  `productId` int(11) DEFAULT NULL,
  `imageUrl` varchar(1000) DEFAULT NULL,
  `created` varchar(255) DEFAULT NULL,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`imageId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `productImage`
--

LOCK TABLES `productImage` WRITE;
/*!40000 ALTER TABLE `productImage` DISABLE KEYS */;
/*!40000 ALTER TABLE `productImage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `productReview`
--

DROP TABLE IF EXISTS `productReview`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `productReview` (
  `reviewId` varchar(255) DEFAULT NULL,
  `productId` int(11) NOT NULL,
  `rating` tinyint(1) DEFAULT NULL,
  `review` varchar(255) DEFAULT NULL,
  `created` varchar(255) NOT NULL,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`productId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `productReview`
--

LOCK TABLES `productReview` WRITE;
/*!40000 ALTER TABLE `productReview` DISABLE KEYS */;
/*!40000 ALTER TABLE `productReview` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `todoCategory`
--

DROP TABLE IF EXISTS `todoCategory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `todoCategory` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `todoCategory`
--

LOCK TABLES `todoCategory` WRITE;
/*!40000 ALTER TABLE `todoCategory` DISABLE KEYS */;
/*!40000 ALTER TABLE `todoCategory` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-03-09 16:51:50
