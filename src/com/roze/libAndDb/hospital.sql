-- MySQL dump 10.13  Distrib 8.0.37, for Linux (x86_64)
--
-- Host: localhost    Database: hospital
-- ------------------------------------------------------
-- Server version	8.0.37

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
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin` (
  `admin_id` int NOT NULL AUTO_INCREMENT,
  `email` varchar(100) DEFAULT NULL,
  `username` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `full_name` varchar(100) DEFAULT NULL,
  `image` varchar(500) DEFAULT NULL,
  `gender` varchar(50) DEFAULT NULL,
  `date` date DEFAULT NULL,
  PRIMARY KEY (`admin_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin`
--

LOCK TABLES `admin` WRITE;
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` VALUES (1,'f@gmail.com','firoze','12345678',NULL,'/media/firoze/Development/Project Workspace/Intellij Idea/HospitalManagementSystem/C:\\Users\\WINDOWS 10\\Documents\\NetBeansProjects\\com.roze\\src\\Admin_Directory\\1.jpg','Male','2024-05-16');
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `appointment`
--

DROP TABLE IF EXISTS `appointment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `appointment` (
  `id` int NOT NULL AUTO_INCREMENT,
  `appointment_id` int DEFAULT NULL,
  `patient_id` bigint DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `gender` varchar(50) DEFAULT NULL,
  `description` varchar(200) DEFAULT NULL,
  `diagnosis` varchar(200) DEFAULT NULL,
  `treatment` varchar(200) DEFAULT NULL,
  `mobile_number` bigint DEFAULT NULL,
  `address` varchar(500) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `date_modify` date DEFAULT NULL,
  `date_delete` date DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  `doctor` varchar(50) DEFAULT NULL,
  `specialized` varchar(100) DEFAULT NULL,
  `schedule` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `appointment`
--

LOCK TABLES `appointment` WRITE;
/*!40000 ALTER TABLE `appointment` DISABLE KEYS */;
INSERT INTO `appointment` VALUES (1,1,NULL,'Firoze','Male','ddd','ddd','dd',15555,'ddd','2024-05-17','2024-05-17',NULL,'Active','DID-1','Allergist','2024-05-18'),(2,2,101,'Smith','Male','hhhh',NULL,NULL,556655445,'Dhaka','2024-05-18','2024-05-17',NULL,'Active','DID-1','Allergist','2024-05-18'),(3,3,101,'Smith','Male','ffffff',NULL,NULL,556655445,'Dhaka','2024-05-18',NULL,NULL,'Active','DID-1','Allergist','2024-05-18');
/*!40000 ALTER TABLE `appointment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `doctor`
--

DROP TABLE IF EXISTS `doctor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `doctor` (
  `id` int NOT NULL AUTO_INCREMENT,
  `doctor_id` varchar(50) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `full_name` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `gender` varchar(100) DEFAULT NULL,
  `mobile_number` bigint DEFAULT NULL,
  `specialized` varchar(100) DEFAULT NULL,
  `address` varchar(200) DEFAULT NULL,
  `image` varchar(500) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `modify_date` date DEFAULT NULL,
  `delete_date` date DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `doctor`
--

LOCK TABLES `doctor` WRITE;
/*!40000 ALTER TABLE `doctor` DISABLE KEYS */;
INSERT INTO `doctor` VALUES (1,'DID-1','12345678','Firoze Hossain','fz@gmail.com','Male',1714271620,'Allergist','Firoze Hossain','/media/firoze/Development/Project Workspace/Intellij Idea/HospitalManagementSystem/C:\\Users\\WINDOWS 10\\Documents\\NetBeansProjects\\com.roze\\src\\Directory\\DID-1.jpg','2024-05-16','2024-05-17',NULL,'Active');
/*!40000 ALTER TABLE `doctor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `patient`
--

DROP TABLE IF EXISTS `patient`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `patient` (
  `id` int NOT NULL AUTO_INCREMENT,
  `patient_id` bigint DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `full_name` varchar(100) DEFAULT NULL,
  `gender` varchar(100) DEFAULT NULL,
  `mobile_number` bigint DEFAULT NULL,
  `address` varchar(200) DEFAULT NULL,
  `image` varchar(500) DEFAULT NULL,
  `description` varchar(200) DEFAULT NULL,
  `diagnosis` varchar(200) DEFAULT NULL,
  `treatment` varchar(200) DEFAULT NULL,
  `doctor` varchar(100) DEFAULT NULL,
  `specialized` varchar(100) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `date_modify` date DEFAULT NULL,
  `date_delete` date DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `status_pay` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `patient`
--

LOCK TABLES `patient` WRITE;
/*!40000 ALTER TABLE `patient` DISABLE KEYS */;
INSERT INTO `patient` VALUES (3,101,'12345678','Smith','Male',556655445,'Dhaka','/home/firoze/Documents/HospitalManagementSystem-main/C:\\Users\\WINDOWS 10\\Documents\\NetBeansProjects\\HospitalManagementSystem\\src\\Directory\\101.jpg',NULL,NULL,NULL,'DID-1','Allergist','2024-05-16','2024-05-16',NULL,'Active','Paid'),(4,102,'12345678','Jim','Male',64455555,'Munshiganj',NULL,NULL,NULL,NULL,'DID-1','Allergist','2024-05-17','2024-05-17',NULL,'Active','Paid'),(5,103,'12345678','Mocker',NULL,5544444,'bangladesh',NULL,NULL,NULL,NULL,'DID-1','Allergist','2024-05-17',NULL,NULL,'Confirm','Paid');
/*!40000 ALTER TABLE `patient` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payment`
--

DROP TABLE IF EXISTS `payment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payment` (
  `id` int NOT NULL AUTO_INCREMENT,
  `patient_id` varchar(250) DEFAULT NULL,
  `doctor` varchar(250) DEFAULT NULL,
  `total_days` int DEFAULT NULL,
  `total_price` double DEFAULT NULL,
  `date` date DEFAULT NULL,
  `date_checkout` date DEFAULT NULL,
  `date_pay` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payment`
--

LOCK TABLES `payment` WRITE;
/*!40000 ALTER TABLE `payment` DISABLE KEYS */;
INSERT INTO `payment` VALUES (1,'101',NULL,2,41,'2024-05-16','2024-05-18','2024-05-17'),(2,'102',NULL,1,20.5,'2024-05-17','2024-05-18','2024-05-17'),(3,'103',NULL,3,61.5,'2024-05-17','2024-05-20','2024-05-17');
/*!40000 ALTER TABLE `payment` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-05-17 11:17:15
