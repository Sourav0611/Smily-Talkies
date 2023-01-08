-- MySQL dump 10.13  Distrib 5.5.27, for Win32 (x86)
--
-- Host: localhost    Database: theatre
-- ------------------------------------------------------
-- Server version	5.5.27

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
-- Table structure for table `booking`
--

DROP TABLE IF EXISTS `booking`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `booking` (
  `movie_name` varchar(30) NOT NULL,
  `mid` int(3) NOT NULL,
  `show_date` date NOT NULL,
  `seat_no` int(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `booking`
--

LOCK TABLES `booking` WRITE;
/*!40000 ALTER TABLE `booking` DISABLE KEYS */;
INSERT INTO `booking` VALUES ('jai ho',1,'2017-11-08',1),('jai ho',1,'2017-11-08',1),('jai ho',1,'2017-11-08',2),('jai ho',1,'2017-11-08',2),('jai ho',1,'2017-11-08',1),('jai ho',1,'2017-11-08',2),('jai ho',1,'2017-11-08',3),('jai ho',1,'2017-11-08',15),('jai ho',1,'2017-11-08',4),('jai ho',1,'2017-11-08',7),('Golmal again',2,'2017-11-10',1),('Golmal again',2,'2017-11-10',15),('Golmal again',2,'2017-11-10',2),('Golmal again',1,'2017-11-25',3),('Golmal again',1,'2017-11-25',8),('Golmal again',1,'2017-11-25',13),('jai ho',1,'2017-11-25',9),('jai ho',1,'2017-11-25',10),('PADMAN',1,'2017-11-01',5),('PADMAVATI',2,'2017-12-15',4),('PADMAVATI',2,'2017-12-15',9),('PADMAVATI',2,'2017-12-15',14),('PADMAVATI',2,'2017-12-15',1),('PADMAVATI',2,'2017-12-15',15),('badshah',2,'2017-12-07',1),('badshah',2,'2017-12-07',2),('badshah',2,'2017-12-07',3),('PADMAVATI',1,'2017-12-07',3),('PADMAVATI',1,'2017-12-07',4),('PADMAVATI',1,'2017-12-07',1),('PADMAVATI',1,'2017-12-07',2),('THOR:Ragnarok',1,'2017-12-07',4),('THOR:Ragnarok',1,'2017-12-07',5),('PADMAVATI',2,'2017-12-15',2),('PADMAVATI',2,'2017-12-15',3);
/*!40000 ALTER TABLE `booking` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `login`
--

DROP TABLE IF EXISTS `login`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `login` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`),
  UNIQUE KEY `password` (`password`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `login`
--

LOCK TABLES `login` WRITE;
/*!40000 ALTER TABLE `login` DISABLE KEYS */;
INSERT INTO `login` VALUES (6,'ankit torani','at2000','12345'),(7,'ANKIt','ankitt','0306'),(8,'sankalp','THAKUR','11111');
/*!40000 ALTER TABLE `login` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `movie`
--

DROP TABLE IF EXISTS `movie`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `movie` (
  `movie_name` varchar(30) NOT NULL,
  `release_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movie`
--

LOCK TABLES `movie` WRITE;
/*!40000 ALTER TABLE `movie` DISABLE KEYS */;
INSERT INTO `movie` VALUES ('THOR:Ragnarok','2017-11-30'),('PADMAVATI','2017-12-08'),('PADMAN','2018-01-26'),('badshah','2017-12-04');
/*!40000 ALTER TABLE `movie` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-12-13 12:23:23
