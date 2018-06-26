CREATE DATABASE  IF NOT EXISTS `SA46Team09CAB` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */;
USE `SA46Team09CAB`;
-- MySQL dump 10.13  Distrib 5.7.17, for macos10.12 (x86_64)
--
-- Host: localhost    Database: SA46Team09CAB
-- ------------------------------------------------------
-- Server version	8.0.11

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `activity`
--

DROP TABLE IF EXISTS `activity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `activity` (
  `activityid` int(11) NOT NULL AUTO_INCREMENT,
  `activityname` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`activityid`),
  UNIQUE KEY `activityid_UNIQUE` (`activityid`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `activity`
--

LOCK TABLES `activity` WRITE;
/*!40000 ALTER TABLE `activity` DISABLE KEYS */;
INSERT INTO `activity` VALUES (1,'Meeting Room'),(2,'Basketball'),(3,'Tennis');
/*!40000 ALTER TABLE `activity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `booking`
--

DROP TABLE IF EXISTS `booking`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `booking` (
  `bookingid` int(11) NOT NULL AUTO_INCREMENT,
  `memberid` int(11) DEFAULT NULL,
  `dateofbooking` date DEFAULT NULL,
  `slotid` int(11) DEFAULT NULL,
  `bookingstatus` tinyint(4) DEFAULT NULL,
  `maintenancestatus` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`bookingid`),
  UNIQUE KEY `bookingid_UNIQUE` (`bookingid`),
  KEY `slotid_idx` (`slotid`)
) ENGINE=InnoDB AUTO_INCREMENT=137 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `booking`
--

LOCK TABLES `booking` WRITE;
/*!40000 ALTER TABLE `booking` DISABLE KEYS */;
INSERT INTO `booking` VALUES (108,12,'2018-06-10',2,0,0),(109,12,'2018-06-14',3,0,0),(110,11,'2018-06-22',6,0,0),(111,12,'2018-06-15',1,0,0),(112,12,'2018-06-15',2,0,0),(113,12,'2018-06-15',4,0,0),(114,12,'2018-06-01',1,1,0),(115,12,'2018-06-15',6,1,0),(116,12,'2018-06-16',1,0,0),(117,12,'2018-06-18',12,0,0),(118,12,'2018-06-20',1,0,0),(119,15,'2018-06-22',9,1,0),(120,12,'2018-06-21',5,0,0),(121,12,'2018-06-19',6,1,0),(122,11,'2018-06-18',2,1,0),(123,11,'2018-06-18',1,1,0),(124,11,'2018-06-21',1,0,0),(125,11,'2018-06-19',2,1,1),(126,11,'2018-06-18',1,1,0),(127,11,'2018-06-19',1,1,1),(128,12,'2018-06-19',2,1,0),(129,12,'2018-06-18',1,1,0),(130,12,'2018-06-18',4,1,0),(131,11,'2018-06-19',1,0,0),(132,12,'2018-06-19',7,1,0),(133,12,'2018-06-20',9,1,0),(134,12,'2018-06-19',7,1,0),(135,11,'2018-06-20',2,1,1),(136,16,'2018-06-20',3,0,0);
/*!40000 ALTER TABLE `booking` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bookingdetail`
--

DROP TABLE IF EXISTS `bookingdetail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bookingdetail` (
  `bookingdetailid` int(11) NOT NULL AUTO_INCREMENT,
  `bookingid` int(11) DEFAULT NULL,
  `facilitytimeslotid` int(11) DEFAULT NULL,
  PRIMARY KEY (`bookingdetailid`),
  UNIQUE KEY `bookingdetailid_UNIQUE` (`bookingdetailid`)
) ENGINE=InnoDB AUTO_INCREMENT=106 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bookingdetail`
--

LOCK TABLES `bookingdetail` WRITE;
/*!40000 ALTER TABLE `bookingdetail` DISABLE KEYS */;
INSERT INTO `bookingdetail` VALUES (77,108,81),(78,109,82),(79,110,83),(80,111,84),(81,112,85),(82,113,86),(83,114,87),(84,115,88),(85,116,89),(86,117,90),(87,118,91),(88,119,92),(89,120,93),(90,121,94),(91,122,95),(92,123,96),(93,124,97),(94,125,98),(95,126,99),(96,127,100),(97,128,101),(98,129,102),(99,130,103),(100,131,104),(101,132,105),(102,133,106),(103,134,107),(104,135,108),(105,136,109);
/*!40000 ALTER TABLE `bookingdetail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `facility`
--

DROP TABLE IF EXISTS `facility`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `facility` (
  `facilityid` int(11) NOT NULL AUTO_INCREMENT,
  `facilityname` varchar(45) DEFAULT NULL,
  `activityid` int(11) DEFAULT NULL,
  `isdeleted` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`facilityid`),
  UNIQUE KEY `facilityid_UNIQUE` (`facilityid`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='		';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `facility`
--

LOCK TABLES `facility` WRITE;
/*!40000 ALTER TABLE `facility` DISABLE KEYS */;
INSERT INTO `facility` VALUES (1,'Meeting 1',1,0),(2,'Basketball Court 1',2,0),(3,'Basketball Court 2',2,0),(4,'Meeting Room 2',1,0),(5,'Basketball Court 3',1,0),(6,'Meeting Room 4',1,0),(7,'Tennis Court 1',3,0),(8,'Meeting Room 3',1,0),(9,'Basketball Court 4',2,0),(10,'Basketball Court 5',2,0),(11,'Tennis Court 2',3,0),(12,'Tennis Court 3',3,0);
/*!40000 ALTER TABLE `facility` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `facilitytimeslot`
--

DROP TABLE IF EXISTS `facilitytimeslot`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `facilitytimeslot` (
  `facilitytimeslotid` int(11) NOT NULL AUTO_INCREMENT,
  `facilityid` int(11) DEFAULT NULL,
  `slotid` int(11) DEFAULT NULL,
  `activityid` int(11) DEFAULT NULL,
  `bookdate` datetime DEFAULT NULL,
  `isdeleted` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`facilitytimeslotid`),
  UNIQUE KEY `facilitytimeslotid_UNIQUE` (`facilitytimeslotid`)
) ENGINE=InnoDB AUTO_INCREMENT=110 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `facilitytimeslot`
--

LOCK TABLES `facilitytimeslot` WRITE;
/*!40000 ALTER TABLE `facilitytimeslot` DISABLE KEYS */;
INSERT INTO `facilitytimeslot` VALUES (81,1,2,1,'2018-06-10 00:00:00',0),(82,2,3,2,'2018-06-14 00:00:00',0),(83,2,6,2,'2018-06-22 00:00:00',0),(84,1,1,1,'2018-06-15 00:00:00',0),(85,1,2,1,'2018-06-15 00:00:00',0),(86,1,4,1,'2018-06-15 00:00:00',0),(87,2,1,2,'2018-06-01 00:00:00',0),(88,1,6,1,'2018-06-15 00:00:00',0),(89,1,1,1,'2018-06-16 00:00:00',0),(90,4,12,1,'2018-06-18 00:00:00',0),(91,4,1,1,'2018-06-20 00:00:00',0),(92,6,9,1,'2018-06-22 00:00:00',0),(93,6,5,1,'2018-06-21 00:00:00',0),(94,4,6,1,'2018-06-19 00:00:00',0),(95,7,2,3,'2018-06-18 00:00:00',0),(96,7,1,3,'2018-06-18 00:00:00',0),(97,1,1,1,'2018-06-21 00:00:00',0),(98,6,2,1,'2018-06-19 00:00:00',0),(99,1,1,1,'2018-06-18 00:00:00',0),(100,1,1,1,'2018-06-19 00:00:00',0),(101,4,2,1,'2018-06-19 00:00:00',0),(102,4,1,1,'2018-06-18 00:00:00',0),(103,4,4,1,'2018-06-18 00:00:00',0),(104,4,1,1,'2018-06-19 00:00:00',0),(105,4,7,1,'2018-06-19 00:00:00',0),(106,6,9,1,'2018-06-20 00:00:00',0),(107,1,7,1,'2018-06-19 00:00:00',0),(108,12,2,3,'2018-06-20 00:00:00',0),(109,5,3,1,'2018-06-20 00:00:00',0);
/*!40000 ALTER TABLE `facilitytimeslot` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `slots`
--

DROP TABLE IF EXISTS `slots`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `slots` (
  `slotid` int(11) NOT NULL,
  `slottimings` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`slotid`),
  UNIQUE KEY `Slotid_UNIQUE` (`slotid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `slots`
--

LOCK TABLES `slots` WRITE;
/*!40000 ALTER TABLE `slots` DISABLE KEYS */;
INSERT INTO `slots` VALUES (1,'09.00-10.00'),(2,'10.00-11.00'),(3,'11.00-12.00'),(4,'12.00-13.00'),(5,'13.00-14.00'),(6,'14.00-15.00'),(7,'15.00-16.00'),(8,'16.00-17.00'),(9,'17.00-18.00'),(10,'18.00-19.00'),(11,'19.00-20.00'),(12,'20.00-21.00');
/*!40000 ALTER TABLE `slots` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `memberid` int(11) NOT NULL AUTO_INCREMENT,
  `membertype` varchar(20) DEFAULT NULL,
  `firstname` varchar(45) DEFAULT NULL,
  `lastname` varchar(45) DEFAULT NULL,
  `mobile` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `password` varchar(45) DEFAULT NULL,
  `isdeleted` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`memberid`),
  UNIQUE KEY `MemberID_UNIQUE` (`memberid`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='		';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (11,'admin','Admin','Noel','9396612','admin@gmail.com','admin',0),(12,'member','Han','Myint Tun','89844301','han@gmail.com','han',0),(13,'member','sai','min htet','999999','sai@gmail.com','sai',0),(14,'member','zin','min htet','38042','zin@gmail.com','zin',1),(15,'member','aung','myo','3820344','aung@gmail.com','aung',0),(16,'member','Subash','MSC','181131','subash@gmail.com','subash',0);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-06-18 16:55:28
