-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: cpt240_final
-- ------------------------------------------------------
-- Server version	8.0.35

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
-- Table structure for table `contract`
--

DROP TABLE IF EXISTS `contract`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contract` (
  `contractkey` int NOT NULL AUTO_INCREMENT,
  `contractid` int NOT NULL,
  `contractowner` int NOT NULL,
  `contractstaff` int NOT NULL,
  `contractunit` int NOT NULL,
  `contractdate` date NOT NULL,
  `contractfrequency` varchar(10) NOT NULL,
  `contractstatus` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`contractkey`),
  KEY `contractowner_idx` (`contractowner`),
  KEY `contractstaff_idx` (`contractstaff`),
  KEY `contractunit` (`contractunit`),
  CONSTRAINT `contractowner` FOREIGN KEY (`contractowner`) REFERENCES `owner` (`ownerkey`),
  CONSTRAINT `contractstaff` FOREIGN KEY (`contractstaff`) REFERENCES `staff` (`staffkey`),
  CONSTRAINT `contractunit` FOREIGN KEY (`contractunit`) REFERENCES `unit` (`unitkey`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contract`
--

LOCK TABLES `contract` WRITE;
/*!40000 ALTER TABLE `contract` DISABLE KEYS */;
INSERT INTO `contract` VALUES (3,10020,9,13,9,'2024-04-12','Even year','Open'),(4,11920,10,14,10,'2024-04-08','Annual','Open'),(5,10358,11,15,11,'2019-03-12','Even year','Closed'),(6,40100,12,16,12,'2015-02-15','Odd year','Closed');
/*!40000 ALTER TABLE `contract` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `owner`
--

DROP TABLE IF EXISTS `owner`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `owner` (
  `ownerkey` int NOT NULL AUTO_INCREMENT,
  `ownerid` int NOT NULL,
  `ownerlname` varchar(45) NOT NULL,
  `ownerfname` varchar(45) NOT NULL,
  `owneremail` varchar(45) NOT NULL,
  `ownerphone` varchar(20) NOT NULL,
  `owneraddress` varchar(50) NOT NULL,
  `ownercity` varchar(45) NOT NULL,
  `ownerstate` varchar(20) DEFAULT NULL,
  `ownerzip` varchar(10) NOT NULL,
  `ownercountry` varchar(45) NOT NULL,
  PRIMARY KEY (`ownerkey`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `owner`
--

LOCK TABLES `owner` WRITE;
/*!40000 ALTER TABLE `owner` DISABLE KEYS */;
INSERT INTO `owner` VALUES (9,1039348,'Henderson','James','jhenderson2@gmail.com','2401928372','6570 Deep Creek Way','Columbia','MD','21075','USA'),(10,1029340,'Blythe','Trina','trinab@gmail.com','4439201928','2456 East West Blvd','Laurel','MD','20707','USA'),(11,1029340,'Stein','Samantha','sammystein@gmail.com','3103920192','8429 Silver Fox Way','Santa Monica','CA','90291','USA'),(12,1029340,'Stein','Samantha','sammystein@gmail.com','3103920192','8429 Silver Fox Way','Santa Monica','CA','90291','USA');
/*!40000 ALTER TABLE `owner` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `property`
--

DROP TABLE IF EXISTS `property`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `property` (
  `propertykey` int NOT NULL AUTO_INCREMENT,
  `propertyname` varchar(45) DEFAULT NULL,
  `propertyaddress` varchar(45) DEFAULT NULL,
  `propertycity` varchar(45) DEFAULT NULL,
  `propertystate` varchar(20) DEFAULT NULL,
  `propertyzip` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`propertykey`)
) ENGINE=InnoDB AUTO_INCREMENT=97 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `property`
--

LOCK TABLES `property` WRITE;
/*!40000 ALTER TABLE `property` DISABLE KEYS */;
INSERT INTO `property` VALUES (93,'Anderson Ocean Club','2600 N Ocean Blvd','Myrtle Beach','South Carolina','29577'),(94,'Ocean 22','2200 N Ocean Blvd','Myrtle Beach','South Carolina','29577'),(95,'Hilton Head Development','6355 Metrowest Blvd','Orlando','Florida','32835'),(96,'Ocean Enclave','1600 N Ocean Blvd','Myrtle Beach','South Carolian','29577');
/*!40000 ALTER TABLE `property` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `staff`
--

DROP TABLE IF EXISTS `staff`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `staff` (
  `staffkey` int NOT NULL AUTO_INCREMENT,
  `staffid` int NOT NULL,
  `stafflname` varchar(20) NOT NULL,
  `stafffname` varchar(20) NOT NULL,
  `staffemail` varchar(45) NOT NULL,
  `staffphone` varchar(20) NOT NULL,
  `staffaddress` varchar(45) NOT NULL,
  `staffcity` varchar(45) NOT NULL,
  `staffstate` varchar(20) NOT NULL,
  `staffzip` varchar(10) NOT NULL,
  `staffcommission` double(4,2) NOT NULL,
  PRIMARY KEY (`staffkey`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `staff`
--

LOCK TABLES `staff` WRITE;
/*!40000 ALTER TABLE `staff` DISABLE KEYS */;
INSERT INTO `staff` VALUES (13,129301,'Gallagher','Brendan','bgally11@hiltongrand.net','8431723918','4274 Wayne Street','Longs','SC','29568',12.75),(14,192930,'Harris','Jordan','jharris54@hiltongrand.net','8431192039','9192 Heather Glen Blvd','Little River','SC','29566',15.25),(15,1291032,'McTavish','Mason','mmctavish23@hiltongrand.net','8431923029','9192 Heather Glen Blvd','Little River','SC','29566',13.25),(16,3910390,'Hughes','Jack','jhughes86@hiltongrand.net','8432492039','1029 Blue Heron Way','Little River','SC','29566',12.75);
/*!40000 ALTER TABLE `staff` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `unit`
--

DROP TABLE IF EXISTS `unit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `unit` (
  `unitkey` int NOT NULL AUTO_INCREMENT,
  `unitproperty` int NOT NULL,
  `unitbedrooms` int NOT NULL,
  `unitbathrooms` int NOT NULL,
  `unitprice` double(15,2) NOT NULL,
  `unittype` varchar(45) NOT NULL,
  `unitinterest` double(4,2) NOT NULL,
  PRIMARY KEY (`unitkey`),
  KEY `unitproperty_idx` (`unitproperty`) /*!80000 INVISIBLE */,
  CONSTRAINT `unitproperty` FOREIGN KEY (`unitproperty`) REFERENCES `property` (`propertykey`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `unit`
--

LOCK TABLES `unit` WRITE;
/*!40000 ALTER TABLE `unit` DISABLE KEYS */;
INSERT INTO `unit` VALUES (9,93,4,2,150000.00,'Four bedroom premium',15.00),(10,94,2,1,75000.00,'Two bedroom standard',22.00),(11,95,3,1,125000.00,'Three bedroom plus',10.00),(12,96,1,1,50000.00,'Studio standard',10.00);
/*!40000 ALTER TABLE `unit` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-04-18 21:43:05
