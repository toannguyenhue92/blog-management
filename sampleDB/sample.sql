CREATE DATABASE  IF NOT EXISTS `blog` /*!40100 DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `blog`;
-- MySQL dump 10.13  Distrib 8.0.20, for Linux (x86_64)
--
-- Host: 127.0.0.1    Database: blog
-- ------------------------------------------------------
-- Server version	8.0.20

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
-- Table structure for table `blogs`
--

DROP TABLE IF EXISTS `blogs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `blogs` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8_unicode_ci NOT NULL,
  `created_date` datetime NOT NULL,
  `status` bit(1) NOT NULL,
  `category_id` int unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `category_id` (`category_id`),
  CONSTRAINT `blogs_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blogs`
--

LOCK TABLES `blogs` WRITE;
/*!40000 ALTER TABLE `blogs` DISABLE KEYS */;
INSERT INTO `blogs` VALUES (1,'Eager/Lazy Loading In Hibernate','https://www.baeldung.com/hibernate-lazy-eager-loading','2020-06-21 00:00:00',_binary '',2),(2,'Spring Core Annotations','https://www.baeldung.com/spring-core-annotations','2020-06-21 00:00:00',_binary '',2),(3,'The @ModelAttribute Annotation','https://www.baeldung.com/spring-mvc-and-the-modelattribute-annotation','2020-06-21 00:00:00',_binary '',2),(4,'A Guide to the ViewResolver','https://www.baeldung.com/spring-mvc-view-resolver-tutorial','2020-06-21 00:00:00',_binary '',2),(5,'Getting Started with Forms','https://www.baeldung.com/spring-mvc-form-tutorial','2020-06-21 00:00:00',_binary '',2),(6,'Introduction to Using Thymeleaf in Spring','https://www.baeldung.com/thymeleaf-in-spring-mvc','2020-06-21 00:00:00',_binary '',1),(7,'Các collection trong Java','https://levunguyen.com/laptrinhjava/2020/04/04/cac-tap-hop-trong-lap-trinh-java/','2020-06-21 00:00:00',_binary '',1),(8,'Tham trị và tham chiếu','https://levunguyen.com/laptrinhjava/2020/04/06/tham-tri-va-tham-chieu-trong-lap-trinh-java/','2020-06-21 00:00:00',_binary '',1),(9,'Access Modifier Trong Java','https://levunguyen.com/laptrinhjava/2020/04/05/phan-biet-access-modifier-trong-java/','2020-06-21 00:00:00',_binary '',1),(10,'Sự khác giữa abstract và interface','https://levunguyen.com/laptrinhjava/2020/04/02/su-khac-nhau-giua-abstract-interface/','2020-06-21 00:00:00',_binary '',1),(11,'Lập Trình Hướng Đối Tượng','https://levunguyen.com/laptrinhjava/2020/04/01/lap-trinh-huong-doi-tuong-trong-java/','2020-06-21 00:00:00',_binary '',1),(12,'Tìm hiểu Generic trong Java','https://levunguyen.com/laptrinhjava/2020/04/03/generic-la-gi/','2020-06-21 00:00:00',_binary '',1),(13,'Ngoại Lệ Trong Java','https://levunguyen.com/laptrinhjava/2020/04/11/ngoai-le-trong-lap-trinh-java/','2020-06-21 00:00:00',_binary '',1);
/*!40000 ALTER TABLE `blogs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categories` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `category_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` bit(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,'Java Core',_binary ''),(2,'Spring Framework',_binary ''),(3,'Javascript',_binary ''),(4,'MySQL',_binary '');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-06-21 21:46:12
