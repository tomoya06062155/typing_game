-- MySQL dump 10.13  Distrib 5.7.31, for macos10.14 (x86_64)
--
-- Host: localhost    Database: typing_game
-- ------------------------------------------------------
-- Server version	5.7.31

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
-- Table structure for table `typing_score`
--

DROP TABLE IF EXISTS `typing_score`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `typing_score` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `time` double NOT NULL,
  `time_date` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `typing_score`
--

LOCK TABLES `typing_score` WRITE;
/*!40000 ALTER TABLE `typing_score` DISABLE KEYS */;
INSERT INTO `typing_score` VALUES (1,0.75,'2020-11-20'),(2,3.81,'2020-11-20'),(3,0.61,'2020-11-20'),(4,1.22,'2020-11-20'),(5,0.97,'2020-11-20'),(6,1.77,'2020-11-20'),(7,0.83,'2020-11-20'),(8,3.18,'2020-11-20'),(9,0.41,'2020-11-20'),(10,0.48,'2020-11-20'),(11,0.8,'2020-11-20'),(12,0.72,'2020-11-21'),(13,5.67,'2020-11-21'),(14,8.05,'2020-11-21'),(15,0.79,'2020-11-21'),(16,0.76,'2020-11-21'),(17,0.5,'2020-11-21'),(18,4.28,'2020-11-21'),(19,7.05,'2020-11-21'),(20,1.45,'2020-11-21'),(21,9.09,'2020-11-26'),(22,5.53,'2020-11-26');
/*!40000 ALTER TABLE `typing_score` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `typing_word`
--

DROP TABLE IF EXISTS `typing_word`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `typing_word` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `word` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `typing_word`
--

LOCK TABLES `typing_word` WRITE;
/*!40000 ALTER TABLE `typing_word` DISABLE KEYS */;
INSERT INTO `typing_word` VALUES (4,'blue'),(2,'red'),(3,'green');
/*!40000 ALTER TABLE `typing_word` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-11-29 17:11:47
