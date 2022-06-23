CREATE DATABASE  IF NOT EXISTS `notes_db` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `notes_db`;
-- MySQL dump 10.13  Distrib 8.0.22, for macos10.15 (x86_64)
--
-- Host: 127.0.0.1    Database: notes_db
-- ------------------------------------------------------
-- Server version	5.6.38

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
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `category` (
  `category_id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  PRIMARY KEY (`category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES (7,'frequent-use'),(8,'information'),(9,'daily');
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `items`
--

DROP TABLE IF EXISTS `items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `items` (
  `item_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(500) NOT NULL,
  `content` varchar(500) DEFAULT NULL,
  `archived` tinyint(1) NOT NULL,
  `category_id` int(10) unsigned DEFAULT NULL,
  `createdAt` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updatedAt` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`item_id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `items`
--

LOCK TABLES `items` WRITE;
/*!40000 ALTER TABLE `items` DISABLE KEYS */;
INSERT INTO `items` VALUES (3,'poetry for my girlfriend','pellentesque vel posuere vitae, interdum eget elit. Phasellus tristique magna et felis volutpat, pretium feugiat magna convallis. In dignissim ut quam vitae eleifend. Vestibulum sed auctor arcu, sit amet tristique dui. Integer lectus massa, faucibus a diam non, fringilla cursus urna. Praesent varius tempor magna nec rhoncus. In in venenatis ipsum. Sed suscipit, libero et congue hendrerit, elit diam mollis urn',0,NULL,'2022-06-09 02:01:49','2022-06-09 02:01:49'),(4,'influencer\'s list!!!!','https://www.instagram.com/de.aren/\r\nhttps://www.instagram.com/belenprado/\r\n\r\nhttps://www.instagram.com/flornadborny/\r\nhttps://www.behance.net/flornadborny\r\nhttps://www.linkedin.com/in/florencia-nadborny-38a139b7/\r\n\r\nhttps://www.instagram.com/bysolange/\r\n\r\nhttps://www.instagram.com/muetba/\r\nhttps://www.instagram.com/palomoline/\r\n\r\nhttps://www.instagram.com/lafenzel/\r\nhttps://www.instagram.com/catfenzel/\r\n\r\nhttps://www.instagram.com/wildlikeme/\r\nhttps://www.instagram.com/amazingrooocket/',1,NULL,'2022-06-17 19:42:40','2022-06-17 19:42:40'),(5,'playlist for tonight!!!','Unknown - Unknown\r\nUnknown - Unknown\r\nTrackheadz - Deep In You\r\nFranck Roger & Olivier Portal Feat. Chris Wonder - Me Myself & I\r\nUnknown - Unknown\r\nTrailer Ends - Runnin Around\r\nUnknown - Together Remix\r\nNail - Bounce\r\nRoog & Dennis Quin ft Berget Lewis - Igohart\r\nBrawther - Do It Yourself\r\nFloetry - Superstar\r\nUnknown - Unknown\r\nLarry De Kat - A Funky Introduction',0,NULL,'2022-06-17 19:42:43','2022-06-17 19:42:43'),(31,'syndical problems ','cidunt est non turpis scelerisque, vitae semper felis convallis. Praesent sagittis, nisi id efficitur posuere, velit orci fermentum ipsum, ut luctus libero ex ut dui. Praesent interdum arcu eget ligula porta rhoncus. Maecenas finibus tempus lorem vel finibus. Vestibulum interdum, neque vitae consectetur auctor, ipsum libero finibus nibh, at venenatis magna sem in ex. Ut nec orci nec enim gravida tempor ut vel est. Sed vitae felis a libero efficitur vulputate. Mauris ultricies sed nunc nec feugia',0,NULL,'2022-06-17 19:42:44','2022-06-17 19:42:44'),(32,'linkin park ',' augue ipsum, lobortis at malesuada nec, gravida ac risus. Nullam at condimentum ante. Nullam congue leo a augue aliquam dapibus. Ut suscipit est eu sollicitudin ultrices. Nunc accumsan in ligula in pharetra. Proin convallis, sapien at imperdiet scelerisque, erat sem pretium quam, rutrum varius nibh elit sodales metus.\n\nDonec ornare sed metus eget porttitor. Aliquam vel mi sit amet enim tempus faucibus. Pellentesque tempus, nisi id dignissim lobortis, justo nibh condimentum nulla, eget rutrum ma',0,NULL,'2022-06-09 02:10:40','2022-06-09 02:10:40'),(33,'shopping supplies','ornare ligula ultrices. Sed nulla ex, lacinia vel cursus eget, faucibus a urna. Interdum et malesuada fames ac ante ipsum primis in faucibus. Donec sapien turpis, auctor non ultrices et, porttitor sed tortor. Fusce vitae cursus metus. Aenean ac purus at eros dapibus luctus at id lorem. Phasellus sagittis hendrerit luctus. Aliquam erat volutpat. Nulla imperdiet felis sit amet dolor aliquet consectetur. Aenean fringilla eros eget o',1,NULL,'2022-06-17 19:42:38','2022-06-17 19:42:38'),(34,'card details',NULL,1,NULL,'2022-06-09 02:11:14','2022-06-09 02:11:14'),(35,'mi novia me gusta mucho','me gusta hacerle el amor',0,NULL,'2022-06-17 19:44:19','2022-06-17 19:44:19');
/*!40000 ALTER TABLE `items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `userName` varchar(20) NOT NULL,
  `passWord` varchar(20) NOT NULL,
  `createdAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updatedAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'client','client','2022-06-08 20:57:24','2022-06-08 20:58:00');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-06-22 23:46:52
