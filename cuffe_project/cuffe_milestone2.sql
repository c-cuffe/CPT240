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
  `contactstaff` int NOT NULL,
  `contractunit` int NOT NULL,
  `contractdate` date NOT NULL,
  `contractfrequency` varchar(10) NOT NULL,
  `contractstatus` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`contractkey`),
  KEY `contractowner_idx` (`contractowner`),
  KEY `contractstaff_idx` (`contactstaff`),
  KEY `contractunit` (`contractunit`),
  CONSTRAINT `contractowner` FOREIGN KEY (`contractowner`) REFERENCES `owner` (`ownerkey`),
  CONSTRAINT `contractstaff` FOREIGN KEY (`contactstaff`) REFERENCES `staff` (`staffkey`),
  CONSTRAINT `contractunit` FOREIGN KEY (`contractunit`) REFERENCES `unit` (`unitkey`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contract`
--

LOCK TABLES `contract` WRITE;
/*!40000 ALTER TABLE `contract` DISABLE KEYS */;
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
  `ownercounty` varchar(45) NOT NULL,
  PRIMARY KEY (`ownerkey`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `owner`
--

LOCK TABLES `owner` WRITE;
/*!40000 ALTER TABLE `owner` DISABLE KEYS */;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `property`
--

LOCK TABLES `property` WRITE;
/*!40000 ALTER TABLE `property` DISABLE KEYS */;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `staff`
--

LOCK TABLES `staff` WRITE;
/*!40000 ALTER TABLE `staff` DISABLE KEYS */;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `unit`
--

LOCK TABLES `unit` WRITE;
/*!40000 ALTER TABLE `unit` DISABLE KEYS */;
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

-- Dump completed on 2024-04-07 14:58:25
