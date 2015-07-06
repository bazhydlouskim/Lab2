-- MySQL dump 10.13  Distrib 5.6.25, for Win64 (x86_64)
--
-- Host: localhost    Database: wiki
-- ------------------------------------------------------
-- Server version	5.6.25-log

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
-- Current Database: `wiki`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `wiki` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `wiki`;

--
-- Table structure for table `articles`
--

DROP TABLE IF EXISTS `articles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `articles` (
  `articleID` int(11) NOT NULL AUTO_INCREMENT,
  `articleTitle` varchar(100) DEFAULT NULL,
  `articleNotes` varchar(255) DEFAULT NULL,
  `categoryID` int(11) DEFAULT NULL,
  PRIMARY KEY (`articleID`),
  KEY `categoryID` (`categoryID`),
  CONSTRAINT `articles_ibfk_1` FOREIGN KEY (`categoryID`) REFERENCES `category` (`categoryID`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `articles`
--

LOCK TABLES `articles` WRITE;
/*!40000 ALTER TABLE `articles` DISABLE KEYS */;
INSERT INTO `articles` VALUES (1,'First normal form','The domain of each attribute contains only atomic values, and the value of each attribute contains only a single value from that domain.',1),(2,'Second normal form','No non-prime attribute is dependent on any proper subset of any candidate key of the table.',1),(3,'Third normal form','Every non-prime attribute of R is non-transitively dependent on every superkey of R.',1),(4,'Boyce-Codd normal form','All redundancy based on functional dependency has been removed, although other types of redundancy may still exist.',1),(5,'Fourth normal form','For every one of its non-trivial multivalued dependencies X -->> Y, X is a superkey, that is, X is either a candidate key or a superset thereof.',1),(6,'Fifth normal form','Database, in which every non-trivial join dependency in it is implied by the candidate keys.',1),(7,'Domain/key normal form','The database that contains no constraints other than domain constraints and key constraints.',1),(8,'Sixth normal form','A relvar R [table] that satisfies no nontrivial join dependencies at all.',1),(9,'Python','General-purpose, high-level programming language.',2),(10,'Perl','A family of high-level,general-purpose, interpreted, dynamic programming languages.',2),(11,'PHP','A server-side scripting language designed for web development but also used as a general-purpose programming language.',2),(12,'C++','A general-purpose programming language.',2),(13,'Java','A general-purpose computer programming language that is concurrent, class-based, object-oriented, and specifically designed to have as few implementation dependencies as possible.',2);
/*!40000 ALTER TABLE `articles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `category` (
  `categoryID` int(11) NOT NULL AUTO_INCREMENT,
  `categoryName` varchar(55) DEFAULT NULL,
  PRIMARY KEY (`categoryID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES (1,'Normal Forms'),(2,'Programming language');
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-07-06  0:08:42
