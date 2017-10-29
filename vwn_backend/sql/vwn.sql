-- MySQL dump 10.13  Distrib 5.7.19, for Win32 (AMD64)
--
-- Host: localhost    Database: vwn
-- ------------------------------------------------------
-- Server version	5.7.19-log

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
-- Table structure for table `contact`
--

DROP TABLE IF EXISTS `contact`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contact` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `latitude` float NOT NULL,
  `longitude` float NOT NULL,
  `phone` varchar(50) NOT NULL,
  `email` varchar(255) NOT NULL,
  `web` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `org_id` int(11) NOT NULL,
  `post_code` varchar(45) DEFAULT NULL,
  `city` varchar(45) DEFAULT NULL,
  `house_number` int(11) DEFAULT NULL,
  `extension` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`id`,`org_id`),
  KEY `fk_contact_org_idx` (`org_id`),
  CONSTRAINT `fk_contact_org` FOREIGN KEY (`org_id`) REFERENCES `org` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=2001 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact`
--

LOCK TABLES `contact` WRITE;
/*!40000 ALTER TABLE `contact` DISABLE KEYS */;
INSERT INTO `contact` VALUES (1,51.6583,6.04837,'phone1','email1@gmail.com','https://www.web1.com','2017-10-20 19:13:29','2017-10-20 19:13:29',1,'post code1','city1',1,NULL),(2,52.3626,4.6537,'phone2','email2@gmail.com','https://www.web2.com','2017-10-20 19:13:30','2017-10-20 19:13:30',1,'post code2','city2',2,NULL),(3,51.2841,5.5706,'phone1','email1@gmail.com','https://www.web1.com','2017-10-20 19:13:30','2017-10-20 19:13:30',2,'post code1','city1',1,NULL),(4,51.237,6,'phone2','email2@gmail.com','https://www.web2.com','2017-10-20 19:13:30','2017-10-20 19:13:30',2,'post code2','city2',2,NULL),(5,52.3995,6.65983,'phone1','email1@gmail.com','https://www.web1.com','2017-10-20 19:13:30','2017-10-20 19:13:30',3,'post code1','city1',1,NULL),(6,52.8279,6,'phone2','email2@gmail.com','https://www.web2.com','2017-10-20 19:13:30','2017-10-20 19:13:30',3,'post code2','city2',2,NULL),(7,53.4,5.35703,'phone1','email1@gmail.com','https://www.web1.com','2017-10-20 19:13:30','2017-10-20 19:13:30',4,'post code1','city1',1,NULL),(8,52.4988,5.47542,'phone2','email2@gmail.com','https://www.web2.com','2017-10-20 19:13:30','2017-10-20 19:13:30',4,'post code2','city2',2,NULL),(9,51.3795,5.78118,'phone1','email1@gmail.com','https://www.web1.com','2017-10-20 19:13:30','2017-10-20 19:13:30',5,'post code1','city1',1,NULL),(10,51.9911,4.93376,'phone2','email2@gmail.com','https://www.web2.com','2017-10-20 19:13:30','2017-10-20 19:13:30',5,'post code2','city2',2,NULL),(11,53.4,6.08292,'phone1','email1@gmail.com','https://www.web1.com','2017-10-20 19:13:30','2017-10-20 19:13:30',6,'post code1','city1',1,NULL),(12,52.4623,4.6,'phone2','email2@gmail.com','https://www.web2.com','2017-10-20 19:13:30','2017-10-20 19:13:30',6,'post code2','city2',2,NULL),(13,51.8,4.50796,'phone1','email1@gmail.com','https://www.web1.com','2017-10-20 19:13:30','2017-10-20 19:13:30',7,'post code1','city1',1,NULL),(14,51.6,4.42629,'phone2','email2@gmail.com','https://www.web2.com','2017-10-20 19:13:30','2017-10-20 19:13:30',7,'post code2','city2',2,NULL),(15,51.5,4.44463,'phone1','email1@gmail.com','https://www.web1.com','2017-10-20 19:13:30','2017-10-20 19:13:30',8,'post code1','city1',1,NULL),(16,51.2759,5.40116,'phone2','email2@gmail.com','https://www.web2.com','2017-10-20 19:13:30','2017-10-20 19:13:30',8,'post code2','city2',2,NULL),(17,52.9329,5.46333,'phone1','email1@gmail.com','https://www.web1.com','2017-10-20 19:13:30','2017-10-20 19:13:30',9,'post code1','city1',1,NULL),(18,51.4548,4.6,'phone2','email2@gmail.com','https://www.web2.com','2017-10-20 19:13:30','2017-10-20 19:13:30',9,'post code2','city2',2,NULL),(19,52.1485,5.94528,'phone1','email1@gmail.com','https://www.web1.com','2017-10-20 19:13:30','2017-10-20 19:13:30',10,'post code1','city1',1,NULL),(20,52.4679,5.85334,'phone2','email2@gmail.com','https://www.web2.com','2017-10-20 19:13:30','2017-10-20 19:13:30',10,'post code2','city2',2,NULL),(21,52.3543,6.4026,'phone1','email1@gmail.com','https://www.web1.com','2017-10-20 19:13:30','2017-10-20 19:13:30',11,'post code1','city1',1,NULL),(22,52.8544,5.07666,'phone2','email2@gmail.com','https://www.web2.com','2017-10-20 19:13:30','2017-10-20 19:13:30',11,'post code2','city2',2,NULL),(23,53.1286,5.85945,'phone1','email1@gmail.com','https://www.web1.com','2017-10-20 19:13:30','2017-10-20 19:13:30',12,'post code1','city1',1,NULL),(24,51.4886,5.95318,'phone2','email2@gmail.com','https://www.web2.com','2017-10-20 19:13:31','2017-10-20 19:13:31',12,'post code2','city2',2,NULL),(25,52.6109,5,'phone1','email1@gmail.com','https://www.web1.com','2017-10-20 19:13:31','2017-10-20 19:13:31',13,'post code1','city1',1,NULL),(26,51.5872,6.10496,'phone2','email2@gmail.com','https://www.web2.com','2017-10-20 19:13:31','2017-10-20 19:13:31',13,'post code2','city2',2,NULL),(27,52.4,4.68548,'phone1','email1@gmail.com','https://www.web1.com','2017-10-20 19:13:31','2017-10-20 19:13:31',14,'post code1','city1',1,NULL),(28,52.9825,5.57367,'phone2','email2@gmail.com','https://www.web2.com','2017-10-20 19:13:31','2017-10-20 19:13:31',14,'post code2','city2',2,NULL),(29,51.5,4.70858,'phone1','email1@gmail.com','https://www.web1.com','2017-10-20 19:13:31','2017-10-20 19:13:31',15,'post code1','city1',1,NULL),(30,51.94,6.30313,'phone2','email2@gmail.com','https://www.web2.com','2017-10-20 19:13:31','2017-10-20 19:13:31',15,'post code2','city2',2,NULL),(31,52.7678,5.63815,'phone1','email1@gmail.com','https://www.web1.com','2017-10-20 19:13:31','2017-10-20 19:13:31',16,'post code1','city1',1,NULL),(32,51.8132,5.9,'phone2','email2@gmail.com','https://www.web2.com','2017-10-20 19:13:31','2017-10-20 19:13:31',16,'post code2','city2',2,NULL),(33,52.8919,5.40591,'phone1','email1@gmail.com','https://www.web1.com','2017-10-20 19:13:31','2017-10-20 19:13:31',17,'post code1','city1',1,NULL),(34,52.88,4.76847,'phone2','email2@gmail.com','https://www.web2.com','2017-10-20 19:13:31','2017-10-20 19:13:31',17,'post code2','city2',2,NULL),(35,53.2276,6.45299,'phone1','email1@gmail.com','https://www.web1.com','2017-10-20 19:13:31','2017-10-20 19:13:31',18,'post code1','city1',1,NULL),(36,51.6473,4.42245,'phone2','email2@gmail.com','https://www.web2.com','2017-10-20 19:13:31','2017-10-20 19:13:31',18,'post code2','city2',2,NULL),(37,52.9894,6.79937,'phone1','email1@gmail.com','https://www.web1.com','2017-10-20 19:13:31','2017-10-20 19:13:31',19,'post code1','city1',1,NULL),(38,53.1,4.8,'phone2','email2@gmail.com','https://www.web2.com','2017-10-20 19:13:31','2017-10-20 19:13:31',19,'post code2','city2',2,NULL),(39,52.8122,6.12729,'phone1','email1@gmail.com','https://www.web1.com','2017-10-20 19:13:31','2017-10-20 19:13:31',20,'post code1','city1',1,NULL),(40,52.5725,6.09777,'phone2','email2@gmail.com','https://www.web2.com','2017-10-20 19:13:31','2017-10-20 19:13:31',20,'post code2','city2',2,NULL),(41,53.1277,6,'phone1','email1@gmail.com','https://www.web1.com','2017-10-20 19:13:32','2017-10-20 19:13:32',21,'post code1','city1',1,NULL),(42,51.3184,4.17,'phone2','email2@gmail.com','https://www.web2.com','2017-10-20 19:13:32','2017-10-20 19:13:32',21,'post code2','city2',2,NULL),(43,51.4669,6.1,'phone1','email1@gmail.com','https://www.web1.com','2017-10-20 19:13:32','2017-10-20 19:13:32',22,'post code1','city1',1,NULL),(44,51.7614,5.37158,'phone2','email2@gmail.com','https://www.web2.com','2017-10-20 19:13:32','2017-10-20 19:13:32',22,'post code2','city2',2,NULL),(45,53.2642,6.28261,'phone1','email1@gmail.com','https://www.web1.com','2017-10-20 19:13:32','2017-10-20 19:13:32',23,'post code1','city1',1,NULL),(46,51.3414,5.77194,'phone2','email2@gmail.com','https://www.web2.com','2017-10-20 19:13:32','2017-10-20 19:13:32',23,'post code2','city2',2,NULL),(47,52.0827,4.3114,'phone1','email1@gmail.com','https://www.web1.com','2017-10-20 19:13:32','2017-10-20 19:13:32',24,'post code1','city1',1,NULL),(48,51.2478,6.05,'phone2','email2@gmail.com','https://www.web2.com','2017-10-20 19:13:32','2017-10-20 19:13:32',24,'post code2','city2',2,NULL),(49,52.9,5.59247,'phone1','email1@gmail.com','https://www.web1.com','2017-10-20 19:13:32','2017-10-20 19:13:32',25,'post code1','city1',1,NULL),(50,51.8605,6.00769,'phone2','email2@gmail.com','https://www.web2.com','2017-10-20 19:13:32','2017-10-20 19:13:32',25,'post code2','city2',2,NULL),(51,50.8,5.9,'phone1','email1@gmail.com','https://www.web1.com','2017-10-20 19:13:32','2017-10-20 19:13:32',26,'post code1','city1',1,NULL),(52,52.0406,5.1972,'phone2','email2@gmail.com','https://www.web2.com','2017-10-20 19:13:32','2017-10-20 19:13:32',26,'post code2','city2',2,NULL),(53,51.6843,5.74576,'phone1','email1@gmail.com','https://www.web1.com','2017-10-20 19:13:32','2017-10-20 19:13:32',27,'post code1','city1',1,NULL),(54,51.671,5.09706,'phone2','email2@gmail.com','https://www.web2.com','2017-10-20 19:13:32','2017-10-20 19:13:32',27,'post code2','city2',2,NULL),(55,52.4,5.02497,'phone1','email1@gmail.com','https://www.web1.com','2017-10-20 19:13:32','2017-10-20 19:13:32',28,'post code1','city1',1,NULL),(56,52.4524,6.493,'phone2','email2@gmail.com','https://www.web2.com','2017-10-20 19:13:32','2017-10-20 19:13:32',28,'post code2','city2',2,NULL),(57,52.8975,5.7817,'phone1','email1@gmail.com','https://www.web1.com','2017-10-20 19:13:32','2017-10-20 19:13:32',29,'post code1','city1',1,NULL),(58,51.3175,6.1,'phone2','email2@gmail.com','https://www.web2.com','2017-10-20 19:13:32','2017-10-20 19:13:32',29,'post code2','city2',2,NULL),(59,52.6531,4.9756,'phone1','email1@gmail.com','https://www.web1.com','2017-10-20 19:13:32','2017-10-20 19:13:32',30,'post code1','city1',1,NULL),(60,51.385,5.49353,'phone2','email2@gmail.com','https://www.web2.com','2017-10-20 19:13:32','2017-10-20 19:13:32',30,'post code2','city2',2,NULL),(61,51.6384,4.51449,'phone1','email1@gmail.com','https://www.web1.com','2017-10-20 19:13:32','2017-10-20 19:13:32',31,'post code1','city1',1,NULL),(62,53.1979,5.65641,'phone2','email2@gmail.com','https://www.web2.com','2017-10-20 19:13:32','2017-10-20 19:13:32',31,'post code2','city2',2,NULL),(63,52.0469,4.77062,'phone1','email1@gmail.com','https://www.web1.com','2017-10-20 19:13:32','2017-10-20 19:13:32',32,'post code1','city1',1,NULL),(64,52.857,6.73247,'phone2','email2@gmail.com','https://www.web2.com','2017-10-20 19:13:32','2017-10-20 19:13:32',32,'post code2','city2',2,NULL),(65,52.0327,6.39164,'phone1','email1@gmail.com','https://www.web1.com','2017-10-20 19:13:32','2017-10-20 19:13:32',33,'post code1','city1',1,NULL),(66,52.0472,5.06857,'phone2','email2@gmail.com','https://www.web2.com','2017-10-20 19:13:32','2017-10-20 19:13:32',33,'post code2','city2',2,NULL),(67,52.8047,5,'phone1','email1@gmail.com','https://www.web1.com','2017-10-20 19:13:32','2017-10-20 19:13:32',34,'post code1','city1',1,NULL),(68,52.9973,6.90486,'phone2','email2@gmail.com','https://www.web2.com','2017-10-20 19:13:32','2017-10-20 19:13:32',34,'post code2','city2',2,NULL),(69,53.1392,5.4872,'phone1','email1@gmail.com','https://www.web1.com','2017-10-20 19:13:33','2017-10-20 19:13:33',35,'post code1','city1',1,NULL),(70,51.9382,6,'phone2','email2@gmail.com','https://www.web2.com','2017-10-20 19:13:33','2017-10-20 19:13:33',35,'post code2','city2',2,NULL),(71,52.2286,6.83042,'phone1','email1@gmail.com','https://www.web1.com','2017-10-20 19:13:33','2017-10-20 19:13:33',36,'post code1','city1',1,NULL),(72,53.1045,6.3059,'phone2','email2@gmail.com','https://www.web2.com','2017-10-20 19:13:33','2017-10-20 19:13:33',36,'post code2','city2',2,NULL),(73,53.0011,5.5,'phone1','email1@gmail.com','https://www.web1.com','2017-10-20 19:13:33','2017-10-20 19:13:33',37,'post code1','city1',1,NULL),(74,53.2495,6.79423,'phone2','email2@gmail.com','https://www.web2.com','2017-10-20 19:13:33','2017-10-20 19:13:33',37,'post code2','city2',2,NULL),(75,52.5284,6.36295,'phone1','email1@gmail.com','https://www.web1.com','2017-10-20 19:13:33','2017-10-20 19:13:33',38,'post code1','city1',1,NULL),(76,51.4447,5.15,'phone2','email2@gmail.com','https://www.web2.com','2017-10-20 19:13:33','2017-10-20 19:13:33',38,'post code2','city2',2,NULL),(77,51.6,4.49227,'phone1','email1@gmail.com','https://www.web1.com','2017-10-20 19:13:33','2017-10-20 19:13:33',39,'post code1','city1',1,NULL),(78,51.6,4.64312,'phone2','email2@gmail.com','https://www.web2.com','2017-10-20 19:13:33','2017-10-20 19:13:33',39,'post code2','city2',2,NULL),(79,52.2832,5.22677,'phone1','email1@gmail.com','https://www.web1.com','2017-10-20 19:13:33','2017-10-20 19:13:33',40,'post code1','city1',1,NULL),(80,53.2032,5.5,'phone2','email2@gmail.com','https://www.web2.com','2017-10-20 19:13:33','2017-10-20 19:13:33',40,'post code2','city2',2,NULL),(81,51.4511,6.1,'phone1','email1@gmail.com','https://www.web1.com','2017-10-20 19:13:33','2017-10-20 19:13:33',41,'post code1','city1',1,NULL),(82,52.2021,6.18319,'phone2','email2@gmail.com','https://www.web2.com','2017-10-20 19:13:33','2017-10-20 19:13:33',41,'post code2','city2',2,NULL),(83,52.0791,5.05517,'phone1','email1@gmail.com','https://www.web1.com','2017-10-20 19:13:33','2017-10-20 19:13:33',42,'post code1','city1',1,NULL),(84,51.9237,5.379,'phone2','email2@gmail.com','https://www.web2.com','2017-10-20 19:13:33','2017-10-20 19:13:33',42,'post code2','city2',2,NULL),(85,53.235,6.3805,'phone1','email1@gmail.com','https://www.web1.com','2017-10-20 19:13:33','2017-10-20 19:13:33',43,'post code1','city1',1,NULL),(86,51.9694,5.85451,'phone2','email2@gmail.com','https://www.web2.com','2017-10-20 19:13:33','2017-10-20 19:13:33',43,'post code2','city2',2,NULL),(87,52.6731,6.47096,'phone1','email1@gmail.com','https://www.web1.com','2017-10-20 19:13:33','2017-10-20 19:13:33',44,'post code1','city1',1,NULL),(88,52.5619,6.30239,'phone2','email2@gmail.com','https://www.web2.com','2017-10-20 19:13:33','2017-10-20 19:13:33',44,'post code2','city2',2,NULL),(89,51.85,5.98746,'phone1','email1@gmail.com','https://www.web1.com','2017-10-20 19:13:33','2017-10-20 19:13:33',45,'post code1','city1',1,NULL),(90,52.5413,4.8,'phone2','email2@gmail.com','https://www.web2.com','2017-10-20 19:13:33','2017-10-20 19:13:33',45,'post code2','city2',2,NULL),(91,52.0475,5.22349,'phone1','email1@gmail.com','https://www.web1.com','2017-10-20 19:13:33','2017-10-20 19:13:33',46,'post code1','city1',1,NULL),(92,52.1061,5.27494,'phone2','email2@gmail.com','https://www.web2.com','2017-10-20 19:13:33','2017-10-20 19:13:33',46,'post code2','city2',2,NULL),(93,51.3886,6.2,'phone1','email1@gmail.com','https://www.web1.com','2017-10-20 19:13:33','2017-10-20 19:13:33',47,'post code1','city1',1,NULL),(94,52.1574,5.76573,'phone2','email2@gmail.com','https://www.web2.com','2017-10-20 19:13:33','2017-10-20 19:13:33',47,'post code2','city2',2,NULL),(95,51.7341,6,'phone1','email1@gmail.com','https://www.web1.com','2017-10-20 19:13:33','2017-10-20 19:13:33',48,'post code1','city1',1,NULL),(96,52.9297,4.75,'phone2','email2@gmail.com','https://www.web2.com','2017-10-20 19:13:33','2017-10-20 19:13:33',48,'post code2','city2',2,NULL),(97,53.3243,6.26809,'phone1','email1@gmail.com','https://www.web1.com','2017-10-20 19:13:33','2017-10-20 19:13:33',49,'post code1','city1',1,NULL),(98,51.5133,5.74985,'phone2','email2@gmail.com','https://www.web2.com','2017-10-20 19:13:34','2017-10-20 19:13:34',49,'post code2','city2',2,NULL),(99,52.4085,5.67042,'phone1','email1@gmail.com','https://www.web1.com','2017-10-20 19:13:34','2017-10-20 19:13:34',50,'post code1','city1',1,NULL),(100,53.2602,5.6,'phone2','email2@gmail.com','https://www.web2.com','2017-10-20 19:13:34','2017-10-20 19:13:34',50,'post code2','city2',2,NULL);
/*!40000 ALTER TABLE `contact` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `org`
--

DROP TABLE IF EXISTS `org`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `org` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `description_company` text NOT NULL,
  `description_person` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `active` tinyint(4) NOT NULL DEFAULT '0',
  `approved` tinyint(4) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1001 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `org`
--

LOCK TABLES `org` WRITE;
/*!40000 ALTER TABLE `org` DISABLE KEYS */;
INSERT INTO `org` VALUES (1,'name1','description_company1','description_person1 description_person1 description_person1 description_person1 description_person1 description_person1 description_person1 description_person1 description_person1 description_person1 description_person1 description_person1 description_person1 description_person1 description_person1 description_person1 description_person1 description_person1 description_person1 description_person1 description_person1 description_person1 description_person1 description_person1 description_person1 description_person1 description_person1 description_person1 description_person1 description_person1 description_person1 description_person1','2017-09-19 13:22:29','2017-09-19 13:22:29',1,1),(2,'name2','description_company2','description_person2','2017-09-19 13:22:29','2017-09-19 13:22:29',1,1),(3,'name3','description_company3','description_person3','2017-09-19 13:22:29','2017-09-19 13:22:29',1,1),(4,'name4','description_company4','description_person4','2017-09-19 13:22:29','2017-09-19 13:22:29',1,1),(5,'name5','description_company5','description_person5','2017-09-19 13:22:29','2017-09-19 13:22:29',1,1),(6,'name6','description_company6','description_person6','2017-09-19 13:22:29','2017-09-19 13:22:29',1,1),(7,'name7','description_company7','description_person7','2017-09-19 13:22:29','2017-09-19 13:22:29',1,1),(8,'name8','description_company8','description_person8','2017-09-19 13:22:29','2017-09-19 13:22:29',1,1),(9,'name9','description_company9','description_person9','2017-09-19 13:22:29','2017-09-19 13:22:29',1,1),(10,'name10','description_company10','description_person10','2017-09-19 13:22:29','2017-09-19 13:22:29',1,1),(11,'name11','description_company11','description_person11','2017-09-19 13:22:29','2017-09-19 13:22:29',1,1),(12,'name12','description_company12','description_person12','2017-09-19 13:22:29','2017-09-19 13:22:29',1,1),(13,'name13','description_company13','description_person13','2017-09-19 13:22:29','2017-09-19 13:22:29',1,1),(14,'name14','description_company14','description_person14','2017-09-19 13:22:29','2017-09-19 13:22:29',1,1),(15,'name15','description_company15','description_person15','2017-09-19 13:22:29','2017-09-19 13:22:29',1,1),(16,'name16','description_company16','description_person16','2017-09-19 13:22:29','2017-09-19 13:22:29',1,1),(17,'name17','description_company17','description_person17','2017-09-19 13:22:29','2017-09-19 13:22:29',1,1),(18,'name18','description_company18','description_person18','2017-09-19 13:22:29','2017-09-19 13:22:29',1,1),(19,'name19','description_company19','description_person19','2017-09-19 13:22:29','2017-09-19 13:22:29',1,1),(20,'name20','description_company20','description_person20','2017-09-19 13:22:29','2017-09-19 13:22:29',1,1),(21,'name21','description_company21','description_person21','2017-09-19 13:22:29','2017-09-19 13:22:29',1,1),(22,'name22','description_company22','description_person22','2017-09-19 13:22:30','2017-09-19 13:22:30',1,1),(23,'name23','description_company23','description_person23','2017-09-19 13:22:30','2017-09-19 13:22:30',1,1),(24,'name24','description_company24','description_person24','2017-09-19 13:22:30','2017-09-19 13:22:30',1,1),(25,'name25','description_company25','description_person25','2017-09-19 13:22:30','2017-09-19 13:22:30',1,1),(26,'name26','description_company26','description_person26','2017-09-19 13:22:30','2017-09-19 13:22:30',1,1),(27,'name27','description_company27','description_person27','2017-09-19 13:22:30','2017-09-19 13:22:30',1,1),(28,'name28','description_company28','description_person28','2017-09-19 13:22:30','2017-09-19 13:22:30',1,1),(29,'name29','description_company29','description_person29','2017-09-19 13:22:30','2017-09-19 13:22:30',1,1),(30,'name30','description_company30','description_person30','2017-09-19 13:22:30','2017-09-19 13:22:30',1,1),(31,'name31','description_company31','description_person31','2017-09-19 13:22:30','2017-09-19 13:22:30',1,1),(32,'name32','description_company32','description_person32','2017-09-19 13:22:30','2017-09-19 13:22:30',1,1),(33,'name33','description_company33','description_person33','2017-09-19 13:22:30','2017-09-19 13:22:30',1,1),(34,'name34','description_company34','description_person34','2017-09-19 13:22:30','2017-09-19 13:22:30',1,1),(35,'name35','description_company35','description_person35','2017-09-19 13:22:30','2017-09-19 13:22:30',1,1),(36,'name36','description_company36','description_person36','2017-09-19 13:22:30','2017-09-19 13:22:30',1,1),(37,'name37','description_company37','description_person37','2017-09-19 13:22:30','2017-09-19 13:22:30',1,1),(38,'name38','description_company38','description_person38','2017-09-19 13:22:30','2017-09-19 13:22:30',1,1),(39,'name39','description_company39','description_person39','2017-09-19 13:22:30','2017-09-19 13:22:30',1,1),(40,'name40','description_company40','description_person40','2017-09-19 13:22:30','2017-09-19 13:22:30',1,1),(41,'name41','description_company41','description_person41','2017-09-19 13:22:30','2017-09-19 13:22:30',1,1),(42,'name42','description_company42','description_person42','2017-09-19 13:22:30','2017-09-19 13:22:30',1,1),(43,'name43','description_company43','description_person43','2017-09-19 13:22:31','2017-09-19 13:22:31',1,1),(44,'name44','description_company44','description_person44','2017-09-19 13:22:31','2017-09-19 13:22:31',1,1),(45,'name45','description_company45','description_person45','2017-09-19 13:22:31','2017-09-19 13:22:31',1,1),(46,'name46','description_company46','description_person46','2017-09-19 13:22:31','2017-09-19 13:22:31',1,1),(47,'name47','description_company47','description_person47','2017-09-19 13:22:31','2017-09-19 13:22:31',1,1),(48,'name48','description_company48','description_person48','2017-09-19 13:22:31','2017-09-19 13:22:31',1,1),(49,'name49','description_company49','description_person49','2017-09-19 13:22:31','2017-09-19 13:22:31',1,1),(50,'name50','description_company50','description_person50','2017-09-19 13:22:31','2017-09-19 13:22:31',1,1);
/*!40000 ALTER TABLE `org` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `org_has_tag`
--

DROP TABLE IF EXISTS `org_has_tag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `org_has_tag` (
  `org_id` int(11) NOT NULL,
  `tag_id` int(11) NOT NULL,
  PRIMARY KEY (`org_id`,`tag_id`),
  KEY `fk_org_has_tag_tag1_idx` (`tag_id`),
  KEY `fk_org_has_tag_org1_idx` (`org_id`),
  CONSTRAINT `fk_org_has_tag_org1` FOREIGN KEY (`org_id`) REFERENCES `org` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_org_has_tag_tag1` FOREIGN KEY (`tag_id`) REFERENCES `tag` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `org_has_tag`
--

LOCK TABLES `org_has_tag` WRITE;
/*!40000 ALTER TABLE `org_has_tag` DISABLE KEYS */;
INSERT INTO `org_has_tag` VALUES (3,1),(10,1),(20,1),(32,1),(39,1),(40,1),(42,1),(45,1),(1,2),(4,2),(7,2),(10,2),(11,2),(12,2),(13,2),(18,2),(20,2),(21,2),(22,2),(27,2),(41,2),(48,2),(49,2),(2,3),(6,3),(11,3),(17,3),(35,3),(38,3),(41,3),(46,3),(2,4),(3,4),(14,4),(24,4),(29,4),(39,4),(5,5),(8,5),(14,5),(15,5),(21,5),(23,5),(25,5),(33,5),(34,5),(44,5),(5,6),(8,6),(9,6),(14,6),(15,6),(21,6),(25,6),(31,6),(33,6),(34,6),(38,6),(43,6),(1,7),(4,7),(8,7),(15,7),(17,7),(24,7),(29,7),(30,7),(36,7),(47,7),(5,8),(12,8),(18,8),(19,8),(22,8),(26,8),(28,8),(32,8),(34,8),(37,8),(1,9),(7,9),(10,9),(17,9),(19,9),(22,9),(37,9),(38,9),(41,9),(45,9),(49,9),(6,10),(12,10),(13,10),(16,10),(26,10),(27,10),(29,10),(31,10),(32,10),(37,10),(50,10);
/*!40000 ALTER TABLE `org_has_tag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tag`
--

DROP TABLE IF EXISTS `tag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tag` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tag`
--

LOCK TABLES `tag` WRITE;
/*!40000 ALTER TABLE `tag` DISABLE KEYS */;
INSERT INTO `tag` VALUES (1,'tag1','2017-09-19 13:22:28','2017-09-19 13:22:28'),(2,'tag2','2017-09-19 13:22:28','2017-09-19 13:22:28'),(3,'tag3','2017-09-19 13:22:28','2017-09-19 13:22:28'),(4,'tag4','2017-09-19 13:22:28','2017-09-19 13:22:28'),(5,'tag5','2017-09-19 13:22:28','2017-09-19 13:22:28'),(6,'tag6','2017-09-19 13:22:28','2017-09-19 13:22:28'),(7,'tag7','2017-09-19 13:22:28','2017-09-19 13:22:28'),(8,'tag8','2017-09-19 13:22:29','2017-09-19 13:22:29'),(9,'tag9','2017-09-19 13:22:29','2017-09-19 13:22:29'),(10,'tag10','2017-09-19 13:22:29','2017-09-19 13:22:29');
/*!40000 ALTER TABLE `tag` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-10-22 15:57:54
