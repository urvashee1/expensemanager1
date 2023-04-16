-- MySQL dump 10.13  Distrib 8.0.32, for Win64 (x86_64)
--
-- Host: localhost    Database: expensemanager
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
-- Table structure for table `accounttype`
--

DROP TABLE IF EXISTS `accounttype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `accounttype` (
  `accounttypeId` int NOT NULL AUTO_INCREMENT,
  `accountType` varchar(30) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`accounttypeId`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accounttype`
--

LOCK TABLES `accounttype` WRITE;
/*!40000 ALTER TABLE `accounttype` DISABLE KEYS */;
INSERT INTO `accounttype` VALUES (1,'cash',0),(2,'cheque',0),(3,'upi',0),(6,'GP',1),(12,'Paypal',0),(13,'Debit Card',0),(14,'Credit Card',0),(15,'GP',1),(16,'paidd',1),(17,'paiddd',1);
/*!40000 ALTER TABLE `accounttype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `category` (
  `categoryId` int NOT NULL AUTO_INCREMENT,
  `categoryName` varchar(30) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`categoryId`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES (1,'housing',0),(2,'automobile',0),(3,'insurance',0),(12,'travel',0),(13,'shopping',0),(32,'Food',0),(33,'Utilities',0),(39,'clothes',0),(40,'pets',0),(41,'Healthcare',0);
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `expense`
--

DROP TABLE IF EXISTS `expense`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `expense` (
  `expenseId` int NOT NULL AUTO_INCREMENT,
  `title` varchar(50) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `description` varchar(2000) DEFAULT NULL,
  `categoryId` int DEFAULT NULL,
  `subCategoryId` int DEFAULT NULL,
  `statusId` int DEFAULT NULL,
  `vendorId` int DEFAULT NULL,
  `accountTypeId` int DEFAULT NULL,
  `amount` int DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `userId` int DEFAULT NULL,
  PRIMARY KEY (`expenseId`)
) ENGINE=InnoDB AUTO_INCREMENT=92 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `expense`
--

LOCK TABLES `expense` WRITE;
/*!40000 ALTER TABLE `expense` DISABLE KEYS */;
INSERT INTO `expense` VALUES (47,'chocolate','2023-01-20','dairy milk',13,52,2,5,1,10000,0,19),(48,'Pizza','2023-01-20','Italian, Cheese								',32,53,2,9,1,20000,0,19),(49,'Sweets','2023-03-15','sugar, meal	',33,61,2,9,1,500,0,19),(56,'Bike','2023-04-22','Engine with liquid cooling		',2,16,6,11,1,1500,0,19),(59,'Bike','2023-03-18','100 cc',2,16,2,11,1,5000,0,19),(60,'cable','2023-04-28','Cable Conductor, Cable jacket			',33,61,2,1,1,5000,0,19),(61,'Sweets','2023-04-03','sugar, meal							',32,52,2,1,1,5000,0,78),(62,'Recharge','2023-06-17','700 2GB					',33,60,2,10,3,2000,0,19),(63,'Maintenance','2023-05-03','Fix Amount						',1,51,2,9,1,10000,0,19),(64,'Punjabi','2023-05-01','Roti, Dal, Rice							',32,53,2,10,1,8000,0,19),(65,'Surgery','2023-02-15','Breast, Head, Neck						',41,56,2,10,3,10000,0,19),(66,'Ticket','2023-04-06','Pune									',12,29,2,1,1,100000,0,19),(67,'bike','2023-03-06','100 - 125 cc					',2,16,2,11,1,5000,0,78),(68,'Sweets','2023-03-06','sugar, meal							',32,63,2,1,1,3000,0,78),(69,'Maintenance','2023-03-06','Fix Amount							',1,51,2,1,1,3000,0,78),(70,'Chinese','2023-06-15','Noodles, Bhel								',32,53,2,1,1,3000,0,78),(71,'Pizza','2023-01-15','Margherita, Cheese 		',40,51,2,1,1,3000,0,78),(72,'Shake','2023-01-20','Thick Shake, Coco, Falooda			',32,53,2,5,1,5000,0,78),(73,'Clothes','2023-01-20','Pantsuits, Saree									',39,65,2,1,1,8000,0,78),(74,'bike','2023-04-15','Engine with liquid cooling	',2,49,3,5,3,200,0,78),(76,'bike','2023-04-08','Engine with liquid cooling							',2,56,2,1,2,1200,0,78),(77,'travel','2023-04-10','Bombay			',2,52,2,1,3,1200,0,19),(78,'bike','2023-04-09','100 - 125 cc					',2,17,2,10,1,600,0,19),(79,'clothes','2023-04-09','T-shirts, Shorts						',39,64,2,11,1,5000,0,19),(80,'cable','2023-04-09','Cable Conductor, Cable jacket									',33,61,2,5,1,10000,0,19),(81,'travel','2023-01-09','Pune							',12,29,2,1,1,5000,0,19),(83,'medical','2023-01-09','Paying amount annually					',3,56,2,5,2,5000,0,19),(84,'pizza','2023-01-09','Margherita, Italian, Cheese					',32,53,2,9,1,3000,0,78),(85,'recharge','2023-04-09','700 2GB						',33,60,2,10,1,500,0,78),(87,'Dog','2023-04-11','Toys, Food',40,74,2,10,1,1000,0,19),(88,'Clothes','2023-01-13','T shirts, Shorts',13,62,2,9,13,5000,0,78),(89,'Clothes','2023-04-13','T-shirts, Shorts',39,64,2,10,12,1200,0,19),(90,'Dog','2023-03-13','Toys, Food',40,74,2,10,12,1500,0,19),(91,'Dental Care','2023-05-13','Root Canal, Crowns, Gum Treament',41,71,2,5,1,1500,0,19);
/*!40000 ALTER TABLE `expense` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `income`
--

DROP TABLE IF EXISTS `income`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `income` (
  `incomeId` int NOT NULL AUTO_INCREMENT,
  `title` varchar(50) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `description` varchar(200) DEFAULT NULL,
  `userId` int DEFAULT NULL,
  `accountTypeId` int DEFAULT NULL,
  `statusId` int DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `amount` float DEFAULT NULL,
  PRIMARY KEY (`incomeId`)
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `income`
--

LOCK TABLES `income` WRITE;
/*!40000 ALTER TABLE `income` DISABLE KEYS */;
INSERT INTO `income` VALUES (27,'pizza','2023-03-24','Margherita, Cheesee',19,1,2,0,500),(32,'Shake','2023-03-23','Thick Shake, Coco, Falooda',19,1,2,0,5000),(37,'Ticket','2023-03-27','Pune, Bombay',19,13,2,0,1000),(38,'Dog','2023-03-28','Toys, Food',78,1,2,0,600),(40,'Ticket','2023-03-28','Pune',19,1,2,0,100000),(41,'Bike','2023-03-28','Engine with liquid cooling',19,1,2,0,1200),(43,'Maintenance','2023-04-06','Fix Amount',19,1,2,0,5000),(44,'Punjabii','2023-04-08','Roti, Dal, Rice',19,1,2,0,5000),(45,'Clothes','2023-04-08','T-shirts, Shorts',19,1,2,0,600),(46,'Recharge','2023-04-07','700 2GB',78,12,2,0,100000),(47,'Fast Food','2023-04-08','Maggi, Pasta, Sandwich',78,1,2,0,600),(48,'clothes','2023-04-08','Pantsuits, Saree',78,1,2,0,500),(50,'Recharge','2023-04-09','700 2GB',78,1,2,0,500),(51,'clothes','2023-04-10','T-shirts, Shorts',19,1,2,0,500),(52,'cable','2023-04-10','Cable Conductor, Cable jacket',78,1,2,0,1200),(53,'Pizza','2023-04-11','Italian, Cheese',19,1,2,0,1500),(54,'Clothes','2023-04-13','Pantsuits, Saree',78,1,2,0,500);
/*!40000 ALTER TABLE `income` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `status`
--

DROP TABLE IF EXISTS `status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `status` (
  `statusId` int NOT NULL AUTO_INCREMENT,
  `status` varchar(30) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`statusId`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `status`
--

LOCK TABLES `status` WRITE;
/*!40000 ALTER TABLE `status` DISABLE KEYS */;
INSERT INTO `status` VALUES (2,'Paid',0),(3,'unpaid',0),(6,'partialpaid',0),(41,'Disable',1),(42,'Disable',1),(43,'Disable',1),(44,'fg',1),(45,'aa',1);
/*!40000 ALTER TABLE `status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subcategory`
--

DROP TABLE IF EXISTS `subcategory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `subcategory` (
  `subCategoryId` int NOT NULL AUTO_INCREMENT,
  `subCategoryName` varchar(30) DEFAULT NULL,
  `categoryId` int DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`subCategoryId`)
) ENGINE=InnoDB AUTO_INCREMENT=76 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subcategory`
--

LOCK TABLES `subcategory` WRITE;
/*!40000 ALTER TABLE `subcategory` DISABLE KEYS */;
INSERT INTO `subcategory` VALUES (16,'puncture',2,0),(17,'fuel',2,0),(28,'sweets',14,0),(29,'train ticket',12,0),(49,'Bike',2,0),(50,'Trip',12,0),(51,'Maintenance',1,0),(52,'Groceries',32,0),(53,'Restaurants',32,0),(54,'Life',3,0),(56,'Medical',3,0),(57,'Electric',33,0),(60,'Recharge',33,0),(61,'Cable',33,0),(62,'Clothes',13,0),(63,'Grocessary',13,0),(64,'New Clothes',39,0),(65,'Professional clothes',39,0),(68,'Veterinary care',40,0),(69,'Toys',40,1),(70,'Food',40,1),(71,'Dental care',41,0),(72,'Vision care',41,0),(73,'watch',13,0),(74,'Dog',40,0),(75,'Rebbit',40,0);
/*!40000 ALTER TABLE `subcategory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `userId` int NOT NULL AUTO_INCREMENT,
  `firstName` varchar(30) DEFAULT NULL,
  `lastName` varchar(30) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `role` int DEFAULT NULL,
  `otp` varchar(10) DEFAULT NULL,
  `gender` varchar(6) DEFAULT NULL,
  `dob` varchar(20) DEFAULT NULL,
  `createdAt` varchar(20) DEFAULT NULL,
  `contactNo` varchar(20) DEFAULT NULL,
  `active` tinyint(1) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `imageUrl` varchar(1024) DEFAULT NULL,
  PRIMARY KEY (`userId`)
) ENGINE=InnoDB AUTO_INCREMENT=130 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (14,'kiran','patel','urvasheesarvaiya5@gmail.com','89',2,'','female','2000-09-13','2023-03-24','8756789845',0,0,NULL),(19,'Urvashee','Sarvaiya','a@gmail.com','1234',2,NULL,'female','2000-08-15','2023-03-28','9078653456',0,0,'assets/profiles/19/user1.jpg'),(78,'seema','patel','admin@gmail.com','123',1,NULL,'female','2000-05-18','2023-03-28','1236547891',0,0,'assets/profiles/78/user2.jpg'),(123,'y','y','y@gmail.com','14',2,NULL,'female','2023-04-08','2023-04-08','9856235624',0,0,NULL),(129,'aa','aa','aa@gmail.com','156',2,NULL,'female','2023-04-12','2023-04-12','9856235628',0,0,NULL);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vendor`
--

DROP TABLE IF EXISTS `vendor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vendor` (
  `vendorId` int NOT NULL AUTO_INCREMENT,
  `vendorName` varchar(30) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`vendorId`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vendor`
--

LOCK TABLES `vendor` WRITE;
/*!40000 ALTER TABLE `vendor` DISABLE KEYS */;
INSERT INTO `vendor` VALUES (1,'demart',0),(5,'starbuck',0),(9,'alpha',0),(10,'Amazon',0),(11,'Reliance',0);
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

-- Dump completed on 2023-04-15 18:05:48
