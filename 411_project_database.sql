CREATE DATABASE  IF NOT EXISTS `cse_411` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `cse_411`;
-- MySQL dump 10.16  Distrib 10.1.37-MariaDB, for Win32 (AMD64)
--
-- Host: 127.0.0.1    Database: cse_411
-- ------------------------------------------------------
-- Server version	10.1.37-MariaDB

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
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  `phoneNo` varchar(45) NOT NULL,
  `age` int(11) NOT NULL,
  `gender` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin`
--

LOCK TABLES `admin` WRITE;
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` VALUES (1,'sazzad','sazzad31@gmail.com','123456','01881486111',24,'male'),(2,'mamun','mamun@gmail.com','123456','01944147017',25,'male');
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `booking`
--

DROP TABLE IF EXISTS `booking`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `booking` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `form` varchar(45) NOT NULL,
  `destination` varchar(45) NOT NULL,
  `touristNumber` int(11) NOT NULL,
  `numberOfDay` int(11) NOT NULL,
  `numberOfNight` int(11) NOT NULL,
  `travelMedium` varchar(45) NOT NULL,
  `totalAmount` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `booking`
--

LOCK TABLES `booking` WRITE;
/*!40000 ALTER TABLE `booking` DISABLE KEYS */;
INSERT INTO `booking` VALUES (1,'dhaka','bandarban',1,1,2,'bus',4000),(2,'dhaka','bandarban',1,1,1,'bus',3000),(3,'dhaka','bandarban',1,2,1,'bus',4200),(4,'dhaka','bandarban',1,2,2,'bus',5000),(5,'dhaka','bandarban',2,1,1,'bus',6000),(6,'dhaka','bandarban',2,1,2,'bus',7500),(7,'dhaka','bandarban',2,2,1,'bus',9000),(8,'dhaka','bandarban',2,2,2,'bus',11000),(9,'dhaka','rangamati',1,1,1,'bus',3500),(10,'dhaka','rangamati',1,1,2,'bus',4500),(11,'dhaka','rangamati',1,2,1,'bus',6000),(12,'dhaka','rangamati',1,2,2,'bus',7000),(13,'dhaka','rangamati',2,1,1,'bus',11000),(14,'dhaka','rangamati',2,1,2,'bus',13000),(15,'dhaka','rangamati',2,2,1,'bus',12000),(16,'dhaka','rangamati',2,2,2,'bus',14000);
/*!40000 ALTER TABLE `booking` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `confirmticket`
--

DROP TABLE IF EXISTS `confirmticket`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `confirmticket` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `place` varchar(45) NOT NULL,
  `touristNumber` int(11) NOT NULL,
  `numberOfDay` int(11) NOT NULL,
  `numberOfNight` int(11) NOT NULL,
  `totalAmount` int(11) NOT NULL,
  `travelMedium` varchar(45) NOT NULL,
  `name` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `confirmticket`
--

LOCK TABLES `confirmticket` WRITE;
/*!40000 ALTER TABLE `confirmticket` DISABLE KEYS */;
INSERT INTO `confirmticket` VALUES (1,'bandarban',1,1,1,3000,'bus','sazzad'),(2,'comilla',2,1,2,3000,'train','sazzad'),(3,'comilla',2,1,2,4100,'plane','sazzad'),(4,'comilla',2,1,2,2800,'bus','sazzad'),(5,'bandarban',1,1,1,3000,'bus','sazzad'),(6,'bandarban',2,1,1,6000,'bus','sazzad'),(7,'rangamati',2,2,1,12000,'bus','sazzad'),(8,'bandorbon',3,2,1,5300,'bus','sazzad');
/*!40000 ALTER TABLE `confirmticket` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `package`
--

DROP TABLE IF EXISTS `package`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `package` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `place` varchar(45) NOT NULL,
  `touristNumber` int(11) NOT NULL,
  `stayAmount` int(11) NOT NULL,
  `foodAmount` int(11) NOT NULL,
  `busAmount` int(11) NOT NULL,
  `trainAmount` int(11) NOT NULL,
  `planeAmount` int(11) NOT NULL,
  `numberOfDay` int(11) NOT NULL,
  `numberOfNight` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `package`
--

LOCK TABLES `package` WRITE;
/*!40000 ALTER TABLE `package` DISABLE KEYS */;
INSERT INTO `package` VALUES (1,'comilla',2,1500,600,700,900,2000,1,2),(2,'bandorbon',3,2000,1500,1800,1500,6000,2,1);
/*!40000 ALTER TABLE `package` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `userinfo`
--

DROP TABLE IF EXISTS `userinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `userinfo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  `phoneNo` varchar(45) NOT NULL,
  `gender` varchar(45) NOT NULL,
  `age` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `userinfo`
--

LOCK TABLES `userinfo` WRITE;
/*!40000 ALTER TABLE `userinfo` DISABLE KEYS */;
INSERT INTO `userinfo` VALUES (1,'sazzad','sazzad@gmail.com','123456','01881486111','male',24),(2,'mamun','mamun@gmail.com','123456','01944147017','male',25);
/*!40000 ALTER TABLE `userinfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'cse_411'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-05-27 20:49:01
