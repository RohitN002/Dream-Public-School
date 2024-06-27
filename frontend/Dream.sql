CREATE DATABASE  IF NOT EXISTS `school` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `school`;
-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: localhost    Database: school
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
-- Table structure for table `class`
--

DROP TABLE IF EXISTS `class`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `class` (
  `cls_id` int NOT NULL AUTO_INCREMENT,
  `cls_name` varchar(10) DEFAULT NULL,
  `fees_amt` int DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`cls_id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `class`
--

LOCK TABLES `class` WRITE;
/*!40000 ALTER TABLE `class` DISABLE KEYS */;
INSERT INTO `class` VALUES (1,'Pre-KG',10000,'2024-05-28 12:45:27',NULL),(2,'LKG',12000,'2024-05-28 12:45:27',NULL),(3,'UKG',13000,'2024-05-28 12:45:27',NULL),(4,'1st Std',14000,'2024-05-28 12:45:27',NULL),(5,'2nd Std',15000,'2024-05-28 12:45:27',NULL),(6,'3rd Std',16000,'2024-05-28 12:45:27',NULL),(7,'4th Std',17000,'2024-05-28 12:45:28',NULL),(8,'5th Std',18000,'2024-05-28 12:45:28',NULL),(9,'6th Std',20000,'2024-05-28 12:45:28',NULL),(10,'7th Std',20000,'2024-05-28 12:45:28',NULL),(11,'8th Std',20000,'2024-05-28 12:45:28',NULL),(12,'9th Std',20000,'2024-05-28 12:45:28',NULL),(13,'10th Std',20000,'2024-05-28 12:45:28',NULL);
/*!40000 ALTER TABLE `class` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `class_allocation`
--

DROP TABLE IF EXISTS `class_allocation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `class_allocation` (
  `cls_allocation_id` int NOT NULL AUTO_INCREMENT,
  `cls_id` int DEFAULT NULL,
  `sec_id` int DEFAULT NULL,
  `academic_year` varchar(9) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`cls_allocation_id`),
  KEY `cls_id` (`cls_id`),
  KEY `sec_id` (`sec_id`),
  CONSTRAINT `class_allocation_ibfk_1` FOREIGN KEY (`cls_id`) REFERENCES `class` (`cls_id`) ON DELETE CASCADE,
  CONSTRAINT `class_allocation_ibfk_2` FOREIGN KEY (`sec_id`) REFERENCES `sections` (`sec_id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `class_allocation`
--

LOCK TABLES `class_allocation` WRITE;
/*!40000 ALTER TABLE `class_allocation` DISABLE KEYS */;
INSERT INTO `class_allocation` VALUES (1,1,1,'2024-2025','2024-06-03 13:35:04',NULL),(2,1,2,'2024-2025','2024-06-03 13:35:04',NULL),(3,1,3,'2024-2025','2024-06-03 13:35:04',NULL),(4,2,1,'2024-2025','2024-06-03 13:35:04',NULL),(5,2,2,'2024-2025','2024-06-03 13:35:04',NULL),(6,2,3,'2024-2025','2024-06-03 13:35:04',NULL),(7,3,1,'2024-2025','2024-06-03 13:35:04',NULL),(8,3,2,'2024-2025','2024-06-03 13:35:04',NULL),(9,3,3,'2024-2025','2024-06-03 13:35:04',NULL),(10,4,1,'2024-2025','2024-06-03 13:35:04',NULL),(11,4,2,'2024-2025','2024-06-03 13:35:04',NULL),(12,4,3,'2024-2025','2024-06-03 13:35:04',NULL),(13,5,1,'2024-2025','2024-06-03 13:35:04',NULL),(14,5,2,'2024-2025','2024-06-03 13:35:04',NULL),(15,5,3,'2024-2025','2024-06-03 13:35:04',NULL),(16,6,1,'2024-2025','2024-06-03 13:35:04',NULL),(17,6,2,'2024-2025','2024-06-03 13:35:04',NULL),(18,6,3,'2024-2025','2024-06-03 13:35:04',NULL),(19,7,1,'2024-2025','2024-06-03 13:35:04',NULL),(20,7,2,'2024-2025','2024-06-03 13:35:04',NULL),(21,7,3,'2024-2025','2024-06-03 13:35:04',NULL),(22,8,1,'2024-2025','2024-06-03 13:35:04',NULL),(23,8,2,'2024-2025','2024-06-03 13:35:04',NULL),(24,8,3,'2024-2025','2024-06-03 13:35:04',NULL),(25,9,1,'2024-2025','2024-06-03 13:35:04',NULL),(26,9,2,'2024-2025','2024-06-03 13:35:04',NULL),(27,9,3,'2024-2025','2024-06-03 13:35:04',NULL),(28,10,1,'2024-2025','2024-06-03 13:35:04',NULL),(29,10,2,'2024-2025','2024-06-03 13:35:04',NULL),(30,10,3,'2024-2025','2024-06-03 13:35:04',NULL),(31,11,1,'2024-2025','2024-06-03 13:35:04',NULL),(32,11,2,'2024-2025','2024-06-03 13:35:04',NULL),(33,11,3,'2024-2025','2024-06-03 13:35:04',NULL),(34,12,1,'2024-2025','2024-06-03 13:35:04',NULL),(35,12,2,'2024-2025','2024-06-03 13:35:04',NULL),(36,12,3,'2024-2025','2024-06-03 13:35:04',NULL),(37,13,1,'2024-2025','2024-06-03 13:35:04',NULL),(38,13,2,'2024-2025','2024-06-03 13:35:04',NULL),(39,13,3,'2024-2025','2024-06-03 13:35:04',NULL),(40,1,1,'2028-2029','2024-06-10 11:16:53',NULL),(41,1,2,'2028-2029','2024-06-10 11:16:53',NULL),(42,1,3,'2028-2029','2024-06-10 11:16:53',NULL),(43,1,4,'2028-2029','2024-06-10 11:16:53',NULL);
/*!40000 ALTER TABLE `class_allocation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `class_teacher`
--

DROP TABLE IF EXISTS `class_teacher`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `class_teacher` (
  `staff_id` int NOT NULL,
  `cls_id` int NOT NULL,
  `sec_id` int NOT NULL,
  `academic_year` varchar(9) DEFAULT NULL,
  PRIMARY KEY (`staff_id`,`cls_id`),
  UNIQUE KEY `sec_id` (`sec_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `class_teacher`
--

LOCK TABLES `class_teacher` WRITE;
/*!40000 ALTER TABLE `class_teacher` DISABLE KEYS */;
/*!40000 ALTER TABLE `class_teacher` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `class_teachers`
--

DROP TABLE IF EXISTS `class_teachers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `class_teachers` (
  `staff_id` int NOT NULL,
  `cls_id` int NOT NULL,
  `cls_allocation_id` int DEFAULT NULL,
  `academic_year` varchar(9) DEFAULT NULL,
  UNIQUE KEY `staff_id` (`staff_id`),
  UNIQUE KEY `sec_id` (`cls_allocation_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `class_teachers`
--

LOCK TABLES `class_teachers` WRITE;
/*!40000 ALTER TABLE `class_teachers` DISABLE KEYS */;
INSERT INTO `class_teachers` VALUES (1,3,7,'2024-2025'),(15,2,4,'2024-2025'),(16,3,8,'2024-2025'),(17,6,16,'2024-2025'),(18,1,1,'2024-2025'),(19,2,5,'2024-2025'),(22,7,20,'2024-2025'),(23,7,19,'2024-2025'),(24,6,17,'2024-2025'),(26,9,25,'2024-2025'),(27,10,28,'2024-2025'),(28,11,31,'2024-2025'),(29,12,34,'2024-2025');
/*!40000 ALTER TABLE `class_teachers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `department`
--

DROP TABLE IF EXISTS `department`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `department` (
  `dept_id` int NOT NULL AUTO_INCREMENT,
  `dept_name` varchar(100) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`dept_id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `department`
--

LOCK TABLES `department` WRITE;
/*!40000 ALTER TABLE `department` DISABLE KEYS */;
INSERT INTO `department` VALUES (1,'Administration','2024-06-03 11:05:43',NULL),(2,'Teaching Staff','2024-06-03 11:05:43',NULL),(3,'Office Staff','2024-06-03 11:24:46',NULL),(4,'Security','2024-06-03 11:24:46',NULL),(5,'Cleaning','2024-06-03 11:24:46','2024-06-07 17:23:02');
/*!40000 ALTER TABLE `department` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discounts`
--

DROP TABLE IF EXISTS `discounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `discounts` (
  `discount_id` int NOT NULL AUTO_INCREMENT,
  `fees_id` int NOT NULL,
  `roll_no` varchar(50) NOT NULL,
  `discount_amount` decimal(10,2) NOT NULL,
  `discount_percentage` decimal(5,2) NOT NULL,
  `reason` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`discount_id`),
  KEY `fees_id` (`fees_id`),
  KEY `roll_no` (`roll_no`),
  CONSTRAINT `discounts_ibfk_1` FOREIGN KEY (`fees_id`) REFERENCES `fees_allocation` (`fees_id`),
  CONSTRAINT `discounts_ibfk_2` FOREIGN KEY (`roll_no`) REFERENCES `students_allocation` (`roll_no`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discounts`
--

LOCK TABLES `discounts` WRITE;
/*!40000 ALTER TABLE `discounts` DISABLE KEYS */;
INSERT INTO `discounts` VALUES (1,1,'23PRE04',300.00,0.30,'chumma','2024-06-12 18:27:30',NULL);
/*!40000 ALTER TABLE `discounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exam_mark`
--

DROP TABLE IF EXISTS `exam_mark`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `exam_mark` (
  `mark_id` int NOT NULL AUTO_INCREMENT,
  `exam_id` int DEFAULT NULL,
  `sub_id` int DEFAULT NULL,
  `staff_id` int DEFAULT NULL,
  `roll_no` varchar(40) DEFAULT NULL,
  `mark` varchar(5) DEFAULT NULL,
  `academic_year` varchar(9) DEFAULT NULL,
  `exam_date` date DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`mark_id`),
  KEY `exam_id` (`exam_id`),
  KEY `sub_id` (`sub_id`),
  KEY `staff_id` (`staff_id`),
  KEY `roll_no` (`roll_no`),
  CONSTRAINT `exam_mark_ibfk_1` FOREIGN KEY (`exam_id`) REFERENCES `exams` (`exam_id`) ON DELETE SET NULL,
  CONSTRAINT `exam_mark_ibfk_2` FOREIGN KEY (`sub_id`) REFERENCES `subjects` (`sub_id`) ON DELETE SET NULL,
  CONSTRAINT `exam_mark_ibfk_3` FOREIGN KEY (`staff_id`) REFERENCES `staffs_master` (`staff_id`) ON DELETE SET NULL,
  CONSTRAINT `exam_mark_ibfk_4` FOREIGN KEY (`roll_no`) REFERENCES `students_allocation` (`roll_no`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exam_mark`
--

LOCK TABLES `exam_mark` WRITE;
/*!40000 ALTER TABLE `exam_mark` DISABLE KEYS */;
/*!40000 ALTER TABLE `exam_mark` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exams`
--

DROP TABLE IF EXISTS `exams`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `exams` (
  `exam_id` int NOT NULL AUTO_INCREMENT,
  `exam_name` varchar(50) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`exam_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exams`
--

LOCK TABLES `exams` WRITE;
/*!40000 ALTER TABLE `exams` DISABLE KEYS */;
INSERT INTO `exams` VALUES (1,'Monthly Test',NULL,NULL),(2,'Mid-Term Test',NULL,NULL),(3,'Revision Test',NULL,NULL),(4,'Quarterly Exam',NULL,NULL),(5,'Half Yearly Exam',NULL,NULL),(6,'Anual  Exam',NULL,NULL);
/*!40000 ALTER TABLE `exams` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fees_allocation`
--

DROP TABLE IF EXISTS `fees_allocation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fees_allocation` (
  `fees_id` int NOT NULL AUTO_INCREMENT,
  `roll_no` varchar(50) NOT NULL,
  `academic_year` varchar(9) NOT NULL,
  `fee_category` varchar(100) NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `remaining_amount` decimal(10,2) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `is_fully_paid` tinyint(1) NOT NULL DEFAULT '0',
  `discount_amount` decimal(10,2) NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`fees_id`),
  UNIQUE KEY `roll_no` (`roll_no`,`academic_year`,`fee_category`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fees_allocation`
--

LOCK TABLES `fees_allocation` WRITE;
/*!40000 ALTER TABLE `fees_allocation` DISABLE KEYS */;
INSERT INTO `fees_allocation` VALUES (1,'23PRE04','2023-2024','tution fees',100000.00,99400.00,'2024-06-12 17:56:04','2024-06-13 10:31:55',0,300.00),(2,'23PRE03','2023-2024','bus fee',100000.00,100000.00,'2024-06-12 17:56:04',NULL,0,0.00),(3,'23PRE02','2023-2024','Tution Fees',60000.00,29500.00,'2024-06-12 18:27:30','2024-06-13 10:31:55',0,0.00);
/*!40000 ALTER TABLE `fees_allocation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fees_logs`
--

DROP TABLE IF EXISTS `fees_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fees_logs` (
  `log_id` int NOT NULL AUTO_INCREMENT,
  `fees_id` int NOT NULL,
  `roll_no` varchar(40) NOT NULL,
  `paid_amount` decimal(10,2) NOT NULL,
  `payment_date` datetime NOT NULL,
  `payment_method` varchar(50) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`log_id`),
  KEY `fees_id` (`fees_id`),
  KEY `roll_no` (`roll_no`),
  CONSTRAINT `fees_logs_ibfk_1` FOREIGN KEY (`fees_id`) REFERENCES `fees_allocation` (`fees_id`) ON DELETE CASCADE,
  CONSTRAINT `fees_logs_ibfk_2` FOREIGN KEY (`roll_no`) REFERENCES `students_allocation` (`roll_no`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fees_logs`
--

LOCK TABLES `fees_logs` WRITE;
/*!40000 ALTER TABLE `fees_logs` DISABLE KEYS */;
INSERT INTO `fees_logs` VALUES (17,13,'23PRE01',500.00,'2024-06-07 22:53:39','UPI','2024-06-07 22:53:39','2024-06-10 11:16:53'),(18,15,'23PRE03',100.00,'2024-06-08 18:31:21','ch','2024-06-08 18:31:21',NULL),(19,3,'23PRE02',500.00,'2024-06-12 18:27:30','UPI','2024-06-12 18:27:30',NULL),(20,3,'23PRE02',30000.00,'2024-06-13 10:31:55','UPI','2024-06-13 10:31:55',NULL),(21,1,'23PRE04',300.00,'2024-06-13 10:31:55','UPI','2024-06-13 10:31:55',NULL);
/*!40000 ALTER TABLE `fees_logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `resigned_staff`
--

DROP TABLE IF EXISTS `resigned_staff`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `resigned_staff` (
  `resigned_staff_id` int NOT NULL AUTO_INCREMENT,
  `staff_id` int NOT NULL,
  `reason` mediumtext,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`resigned_staff_id`),
  KEY `staff_id` (`staff_id`),
  CONSTRAINT `resigned_staff_ibfk_1` FOREIGN KEY (`staff_id`) REFERENCES `staffs_master` (`staff_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `resigned_staff`
--

LOCK TABLES `resigned_staff` WRITE;
/*!40000 ALTER TABLE `resigned_staff` DISABLE KEYS */;
INSERT INTO `resigned_staff` VALUES (1,4,'For Test',NULL),(2,7,'Testing',NULL);
/*!40000 ALTER TABLE `resigned_staff` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role`
--

DROP TABLE IF EXISTS `role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `role` (
  `role_id` int NOT NULL AUTO_INCREMENT,
  `dept_id` int DEFAULT NULL,
  `role_name` varchar(100) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`role_id`),
  KEY `dept_id` (`dept_id`),
  CONSTRAINT `role_ibfk_1` FOREIGN KEY (`dept_id`) REFERENCES `department` (`dept_id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role`
--

LOCK TABLES `role` WRITE;
/*!40000 ALTER TABLE `role` DISABLE KEYS */;
INSERT INTO `role` VALUES (12,1,'Founder','2024-06-03 13:02:20',NULL),(13,1,'Principal','2024-06-03 13:02:20',NULL),(14,1,'Vice-Principal','2024-06-03 13:02:20',NULL),(15,2,'Subject Teacher','2024-06-03 13:02:20',NULL),(16,2,'Physical Education Teacher (PET)','2024-06-03 13:02:20',NULL),(17,3,'Accountant','2024-06-03 13:02:20',NULL),(18,3,'Receptionist','2024-06-03 13:02:20',NULL),(19,4,'Security Supervisor','2024-06-03 13:02:20',NULL),(20,4,'Security Guard','2024-06-03 13:02:20',NULL),(21,5,'Head Cleaner','2024-06-03 13:02:20',NULL),(22,5,'Cleaner','2024-06-03 13:02:20',NULL);
/*!40000 ALTER TABLE `role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sections`
--

DROP TABLE IF EXISTS `sections`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sections` (
  `sec_id` int NOT NULL AUTO_INCREMENT,
  `sec_name` varchar(10) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`sec_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sections`
--

LOCK TABLES `sections` WRITE;
/*!40000 ALTER TABLE `sections` DISABLE KEYS */;
INSERT INTO `sections` VALUES (1,'A','2024-05-28 13:11:34',NULL),(2,'B','2024-05-28 13:11:34',NULL),(3,'C','2024-05-28 13:11:34',NULL),(4,'D','2024-05-28 13:11:34',NULL);
/*!40000 ALTER TABLE `sections` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `staff_allocation`
--

DROP TABLE IF EXISTS `staff_allocation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `staff_allocation` (
  `staff_allocation_id` int NOT NULL AUTO_INCREMENT,
  `staff_id` int NOT NULL,
  `sub_id` int NOT NULL,
  `academic_year` varchar(9) DEFAULT NULL,
  `isExpired` tinyint(1) DEFAULT '0',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`staff_allocation_id`),
  KEY `staff_id` (`staff_id`),
  KEY `sub_id` (`sub_id`),
  CONSTRAINT `staff_allocation_ibfk_1` FOREIGN KEY (`staff_id`) REFERENCES `staffs_master` (`staff_id`) ON DELETE CASCADE,
  CONSTRAINT `staff_allocation_ibfk_2` FOREIGN KEY (`sub_id`) REFERENCES `subjects` (`sub_id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `staff_allocation`
--

LOCK TABLES `staff_allocation` WRITE;
/*!40000 ALTER TABLE `staff_allocation` DISABLE KEYS */;
/*!40000 ALTER TABLE `staff_allocation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `staffs_master`
--

DROP TABLE IF EXISTS `staffs_master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `staffs_master` (
  `staff_id` int NOT NULL AUTO_INCREMENT,
  `dept_id` int DEFAULT NULL,
  `role_id` int DEFAULT NULL,
  `staff_name` varchar(50) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `mobile` varchar(20) DEFAULT NULL,
  `gender` varchar(10) DEFAULT NULL,
  `qualification` varchar(100) DEFAULT NULL,
  `experience` varchar(50) DEFAULT NULL,
  `address` varchar(500) DEFAULT NULL,
  `staff_img` varchar(10000) DEFAULT NULL,
  `isAlive` tinyint(1) DEFAULT '1',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`staff_id`),
  KEY `dept_id` (`dept_id`),
  KEY `role_id` (`role_id`),
  CONSTRAINT `staffs_master_ibfk_1` FOREIGN KEY (`dept_id`) REFERENCES `department` (`dept_id`) ON DELETE CASCADE,
  CONSTRAINT `staffs_master_ibfk_2` FOREIGN KEY (`role_id`) REFERENCES `role` (`role_id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `staffs_master`
--

LOCK TABLES `staffs_master` WRITE;
/*!40000 ALTER TABLE `staffs_master` DISABLE KEYS */;
INSERT INTO `staffs_master` VALUES (1,2,15,'Muthu Selvam','muthuselval@gmail.com','84389648432','male','B.E','6 Months','Test','staff_img_1717401028119_384207031',1,'2024-06-03 13:05:56','2024-06-03 13:05:56',NULL),(4,4,19,'Testttt','dfgdgfdfgd','45457457457','female','drd','dfgd','dfgdgd','staff_img_1717659082494_873628067',0,'2024-06-06 12:43:23','2024-06-06 12:43:23',NULL),(7,5,22,'Ranjani','ranjaniajay@gmail.com','54345432','male','BE','1 year','Test','staff_img_1717668261914_519359879',0,'2024-06-06 13:04:23',NULL,NULL),(15,1,12,'Shiva','shiva@gmail.com','8989898989','male','BE','12years','test','staff_img_1718432995221_273166869',1,'2024-06-15 10:31:10',NULL,NULL),(16,1,12,'As Shiva','shivaa@gmail.com','8989898988','male','BE','12years','test','staff_img_1718433048465_271885851',1,'2024-06-15 10:31:10',NULL,NULL),(17,1,13,'Anushya','anuysya@gmail.com','8989898111','female','BE','8years','test','staff_img_1718433123827_187960290',1,'2024-06-15 10:31:10',NULL,NULL),(18,2,15,'Rajan','suveesh@gamil.com','8223212342','male','BE','6months','Test','staff_img_1718526763327_316276149',1,'2024-06-16 12:49:52',NULL,NULL),(19,2,15,'Nithinthana','nithithana@gmail.com','8799989898','female','B.ca','1 year','Test','staff_img_1718526856486_500416210',1,'2024-06-16 12:49:52',NULL,NULL),(20,2,15,'Pugal','pugal@gmail.com','7002020290','male','BE','1 year','Test','staff_img_1718730021844_990604637',1,'2024-06-18 22:13:33',NULL,NULL),(21,2,15,'Geetha','geetha@gmail.com','7002020295','female','BE','1 year','Test','staff_img_1718730091769_235296502',1,'2024-06-18 22:13:33',NULL,NULL),(22,2,15,'Geetha','geetha@gmail.com','7002020295','female','BE','1 year','Test','staff_img_1718730091826_158195605',1,'2024-06-18 22:13:33',NULL,NULL),(23,2,15,'Tamil','tamil@gmail.com','7010561122','male','BE','1 year','Test','staff_img_1718730183437_6996920',1,'2024-06-18 22:13:33',NULL,NULL),(24,2,15,'Janani','janani@gmail.com','7010561188','female','BE','1 year','Test','staff_img_1718730270483_451728367',1,'2024-06-18 22:13:33',NULL,NULL),(25,2,15,'Indhar','indhar@gmail.com','7891111111','male','BE','0','Test','staff_img_1718779425145_365468403',1,'2024-06-19 12:10:08',NULL,NULL),(26,2,15,'Jeya sri','jeya@gmail.com','6677878788','female','Be','10 years','Test','staff_img_1718862908390_481408189',1,'2024-06-20 10:10:07',NULL,NULL),(27,2,15,'Veni','veni@gmail.com','8438964834','female','BE','1 year','Test','staff_img_1718950821050_894487568',1,'2024-06-21 10:01:36',NULL,NULL),(28,2,15,'Kaviya','kaviya@gmail.com','7010561822','female','BCA','0','Dubai kuruku santhu','staff_img_1718968421502_220541610',1,'2024-06-21 16:30:42',NULL,NULL),(29,2,15,'Ramya','ramya@gmail.com','7010561111','female','BCA','0','Dubai kuruku santhu','staff_img_1718968549088_438892179',1,'2024-06-21 16:30:42',NULL,NULL),(30,2,15,'Rohit','rohit@gmail.com','7010303030','male','BE','10years','Dubai kuruku santhu','staff_img_1719232107417_398387647',1,'2024-06-24 12:34:28',NULL,NULL);
/*!40000 ALTER TABLE `staffs_master` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student_attendance`
--

DROP TABLE IF EXISTS `student_attendance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `student_attendance` (
  `cls_id` int NOT NULL,
  `cls_allocation_id` int NOT NULL,
  `stu_id` int NOT NULL,
  `date` date NOT NULL,
  `staff_id` int NOT NULL,
  `present` tinyint(1) NOT NULL,
  PRIMARY KEY (`cls_id`,`cls_allocation_id`,`stu_id`,`date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student_attendance`
--

LOCK TABLES `student_attendance` WRITE;
/*!40000 ALTER TABLE `student_attendance` DISABLE KEYS */;
/*!40000 ALTER TABLE `student_attendance` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `students_allocation`
--

DROP TABLE IF EXISTS `students_allocation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `students_allocation` (
  `stu_allocation_id` int NOT NULL AUTO_INCREMENT,
  `staff_id` int DEFAULT NULL,
  `stu_id` int DEFAULT NULL,
  `cls_allocation_id` int DEFAULT NULL,
  `roll_no` varchar(40) DEFAULT NULL,
  `academic_year` varchar(15) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`stu_allocation_id`),
  UNIQUE KEY `roll_no` (`roll_no`),
  KEY `staff_id` (`staff_id`),
  KEY `stu_id` (`stu_id`),
  KEY `cls_allocation_id` (`cls_allocation_id`),
  CONSTRAINT `students_allocation_ibfk_1` FOREIGN KEY (`staff_id`) REFERENCES `staffs_master` (`staff_id`) ON DELETE SET NULL,
  CONSTRAINT `students_allocation_ibfk_2` FOREIGN KEY (`stu_id`) REFERENCES `students_master` (`stu_id`) ON DELETE CASCADE,
  CONSTRAINT `students_allocation_ibfk_3` FOREIGN KEY (`cls_allocation_id`) REFERENCES `class_allocation` (`cls_allocation_id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `students_allocation`
--

LOCK TABLES `students_allocation` WRITE;
/*!40000 ALTER TABLE `students_allocation` DISABLE KEYS */;
INSERT INTO `students_allocation` VALUES (6,1,17,1,'23PRE01','2023-2024','2024-06-07 18:17:51','2024-06-12 13:56:58'),(7,1,1,1,'23PRE02','2023-2024','2024-06-07 18:17:51',NULL),(8,1,4,1,'23PRE03','2023-2024','2024-06-07 18:17:51','2024-06-07 18:17:51'),(9,1,7,1,'23PRE04','2023-2024','2024-06-07 18:17:51',NULL),(13,NULL,17,6,'24PRE01','2024-2025','2024-06-07 18:36:46','2024-06-12 13:56:58'),(14,NULL,1,4,'24PRE02','2024-2025','2024-06-07 18:36:46',NULL),(15,NULL,4,4,'24PRE03','2024-2025','2024-06-07 18:36:46',NULL),(16,NULL,7,4,'24PRE04','2024-2025','2024-06-07 18:36:46',NULL),(17,NULL,17,7,'DPS0001','2025-2026','2024-06-07 18:43:12',NULL),(18,NULL,1,7,'DPS0002','2025-2026','2024-06-07 18:43:12',NULL),(19,NULL,4,7,'DPS0003','2025-2026','2024-06-07 18:43:12',NULL),(20,NULL,7,7,'DPS0004','2025-2026','2024-06-07 18:43:12',NULL),(21,1,10,4,'24LKG01','2024-2025','2024-06-08 18:31:21',NULL),(22,NULL,13,25,'23321232','2024-2025','2024-06-12 13:56:58',NULL),(23,1,5,10,'24pre007','2024-2025','2024-06-13 10:31:54',NULL);
/*!40000 ALTER TABLE `students_allocation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `students_master`
--

DROP TABLE IF EXISTS `students_master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `students_master` (
  `stu_id` int NOT NULL AUTO_INCREMENT,
  `staff_id` int DEFAULT NULL,
  `cls_id` int DEFAULT NULL,
  `sec_id` int DEFAULT NULL,
  `stu_name` varchar(70) DEFAULT NULL,
  `stu_aadhar` varchar(20) DEFAULT NULL,
  `stu_img` varchar(5000) DEFAULT NULL,
  `gender` varchar(10) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `community` varchar(100) DEFAULT NULL,
  `cast_name` varchar(50) DEFAULT NULL,
  `religion` varchar(50) DEFAULT NULL,
  `father_name` varchar(70) DEFAULT NULL,
  `father_mobile` varchar(20) DEFAULT NULL,
  `father_occupation` varchar(100) DEFAULT NULL,
  `father_annual_income` decimal(10,2) DEFAULT NULL,
  `mother_name` varchar(70) DEFAULT NULL,
  `mother_mobile` varchar(20) DEFAULT NULL,
  `mother_occupation` varchar(100) DEFAULT NULL,
  `mother_annual_income` decimal(10,2) DEFAULT NULL,
  `address` varchar(500) DEFAULT NULL,
  `isAllocated` tinyint(1) DEFAULT '0',
  `apply_date` date DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `cls_allocation_id` int DEFAULT NULL,
  PRIMARY KEY (`stu_id`),
  KEY `staff_id` (`staff_id`),
  KEY `cls_id` (`cls_id`),
  KEY `fk_students_master_sec_id` (`sec_id`),
  CONSTRAINT `fk_students_master_sec_id` FOREIGN KEY (`sec_id`) REFERENCES `sections` (`sec_id`),
  CONSTRAINT `students_master_ibfk_1` FOREIGN KEY (`staff_id`) REFERENCES `staffs_master` (`staff_id`) ON DELETE SET NULL,
  CONSTRAINT `students_master_ibfk_2` FOREIGN KEY (`cls_id`) REFERENCES `class` (`cls_id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `students_master`
--

LOCK TABLES `students_master` WRITE;
/*!40000 ALTER TABLE `students_master` DISABLE KEYS */;
INSERT INTO `students_master` VALUES (1,1,1,1,'Kavinee','7894561230','stu_img_1717405949288_143665060','male','2024-06-03','Test','Test','Test','Ganesan','8527419630','Software Developer',150000.00,'Vanitha','8527410963','House Wife',0.00,'Test',1,'2024-06-03','2024-06-03 13:44:52','2024-06-14 16:04:45',1),(4,1,1,1,'ramesh','58875615241','stu_img_1717405949288_143665060','male','2024-02-17','Test','Test','Test','Ganesan','8527419630','Software Developer',150000.00,'Vanitha','8527410963','House Wife',0.00,'Test',1,'2024-06-03','2024-06-03 13:44:52','2024-06-07 13:59:01',1),(5,NULL,4,2,'Shiva','54323432','stu_img_1717655825079_659383594','male','2024-06-01','no','no','test','selva','08668123234','farmer',150000.00,'amma','09360066844','admin',100000.00,'test',1,'2024-06-06','2024-06-06 12:05:43',NULL,NULL),(7,NULL,3,1,'Sathish','7654321234543','stu_img_1717660235465_938060777','male','2024-05-28','no','no','test','sdfsdf','09360066844','farmer',150000.00,'kamali','08967324565','house wife',123.00,'dsgsgsd',1,'2024-06-06','2024-06-06 13:04:23','2024-06-07 13:26:04',NULL),(8,NULL,4,1,'Sahabdeen','98977889999','stu_img_1717666441855_690407240','male','2024-04-15','Test','Test','Test','Ansar','0000000000','Business',150000.00,'Banu','11111111111','house wife',100000.00,'Test',0,'2024-06-06','2024-06-06 13:04:23','2024-06-06 15:25:35',NULL),(9,1,4,2,'Santhiya','7877567567','stu_img_1717666681852_45490656','female','2024-05-15','Test','no','Test','Kuppusamy','222222222','Electrical',150000.00,'Rakku','3333333333','Nurse',100000.00,'Test',0,'2024-06-06','2024-06-06 13:04:23',NULL,NULL),(10,NULL,6,1,'Saranya','2345665432','stu_img_1717666792562_680046807','female','2024-05-27','Test','Test','Test','Suresh','44444444444','farmer',150000.00,'lakshmi','1234567892','house wife',0.00,'Test',1,'2024-06-06','2024-06-06 13:04:23',NULL,NULL),(12,NULL,2,1,'Gayathri','65432345432','stu_img_1717667091296_265864047','male','2024-05-24','Test','Test','Test','Rasu','1223356789','FisherMan',150000.00,'Alagamma','8438928432','House wife',100000.00,'Test',1,'2024-06-06','2024-06-06 13:04:23',NULL,4),(13,NULL,2,1,'Indhu Mathi','65434543233','stu_img_1717667278406_85160255','female','2024-05-13','Test','Test','Test','Murugfan','5443454333','Millitary',1500000.00,'JeyaMala','123764789','house wife',0.00,'Test',1,'2024-06-06','2024-06-06 13:04:23',NULL,5),(14,1,1,2,'Suthish','234242424242','stu_img_1717669874502_120913825','male','2024-06-01','asdads','sdsad','asdad','asd','7865437645','sfsff',10000.00,'sdfsfs','9345657586','sdfdf',0.00,'asdasdads',0,'2024-06-06','2024-06-06 13:04:23',NULL,NULL),(17,NULL,5,2,'Ajay','852074105245','stu_img_1717753307376_616340915','male','2024-06-01','sdfsdfsdf','sfsdfs','sdfsdfsdf','sdfsdfsdf','6454545454','sdfsdfsfs',2323.00,'sdfsdfsfd','8228238228','sfdsdfsdgfds',2323.00,'sdfsdfsdf',1,'2024-06-07','2024-06-07 14:56:34',NULL,13),(18,NULL,2,3,'sahabthin','543454345433','stu_img_1718200193107_786752779','female','2024-06-05','fgh','Test','sdfsdf','selva','9990066844','developer',150000.00,'ssss','8667326535','house wife',446.00,'dsgsgsd',0,'2024-06-12','2024-06-12 18:27:30',NULL,4),(19,NULL,2,3,'sahabthin','543454345433','stu_img_1718200197695_812722911','female','2024-06-05','fgh','Test','sdfsdf','selva','9990066844','developer',150000.00,'ssss','8667326535','house wife',446.00,'dsgsgsd',0,'2024-06-12','2024-06-12 18:27:30',NULL,NULL),(20,NULL,11,1,'indhar','123456789894','stu_img_1718373568245_413154249','male','2024-05-14','bc','test','hindhu','xxx','9629917201','test2',100000.00,'m2','8525852489','demo',0.00,'23. test',0,'2024-06-14','2024-06-14 18:31:42',NULL,NULL),(21,NULL,11,1,'indhar','123456789894','stu_img_1718373570845_366289507','male','2024-05-14','bc','test','hindhu','xxx','9629917201','test2',100000.00,'m2','8525852489','demo',0.00,'23. test',0,'2024-06-14','2024-06-14 18:31:42',NULL,NULL),(22,18,13,1,'selvii','172838238129','stu_img_1718528343240_656154092','female','2024-06-11','no','no','no','samy','7279128181','Business',150000.00,'amma','8282929292','house wife',0.00,'tst',0,'2024-06-16','2024-06-16 12:49:52',NULL,37),(23,15,8,2,'suveesh','332222211111','stu_img_1718630372170_339032888','male','2024-06-19','Test','no','Test','jkjhg','8438964843','farmer',2000000.00,'gffgh','7010561811','admin',100000.00,'test',0,'2024-06-17','2024-06-17 18:45:51',NULL,NULL),(24,21,5,1,'Maniraja','281299128812','stu_img_1718730998622_328594','male','2024-06-11','Test','no','Test','Suresh','8788121123','Supervisor',100000.00,'Geetha','8812811812','House wife',1200.00,'Test',0,'2024-06-18','2024-06-18 22:13:33',NULL,NULL),(25,21,7,2,'SathisPandi','781812819191','stu_img_1718731188064_537768838','male','2024-06-11','Test','no','Test','Magudi','7912919211','Business',150000.00,'Selvi','9881112211','bank ',100000.00,'Test',0,'2024-06-18','2024-06-18 22:13:33',NULL,19),(26,23,7,2,'Raji','889881818282','stu_img_1718731474830_325792176','female','2024-06-12','Test','no','Test','Sathishpandi','9343372374','Business',1200000.00,'Rasikaa','7812812811','house wife',12000.00,'Test',0,'2024-06-18','2024-06-18 22:13:33',NULL,20),(27,27,10,1,'Muthaa','234332223322','stu_img_1718963707564_232031812','male','2024-06-02','no','no','Test','pudungi','8989898976','developer',150000.00,'ssss','8438964866','house wife',100000.00,'test',0,'2024-06-21','2024-06-21 14:25:51',NULL,28),(28,15,12,1,'Ramasamy','222222222222','stu_img_1718968323915_222128131','male','2024-06-11','Test','no','chrishtian','rajesh','7982389238','Business',1800000.00,'priya','7030303043','Developer',20000000.00,'Test',0,'2024-06-21','2024-06-21 16:30:42',NULL,34);
/*!40000 ALTER TABLE `students_master` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subjects`
--

DROP TABLE IF EXISTS `subjects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `subjects` (
  `sub_id` int NOT NULL AUTO_INCREMENT,
  `cls_allocation_id` int NOT NULL,
  `sub_name` varchar(25) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`sub_id`),
  KEY `cls_allocation_id` (`cls_allocation_id`),
  CONSTRAINT `subjects_ibfk_1` FOREIGN KEY (`cls_allocation_id`) REFERENCES `class_allocation` (`cls_allocation_id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subjects`
--

LOCK TABLES `subjects` WRITE;
/*!40000 ALTER TABLE `subjects` DISABLE KEYS */;
INSERT INTO `subjects` VALUES (1,1,'Tamil','2024-06-03 19:24:47',NULL),(2,1,'English','2024-06-03 18:38:18',NULL),(3,1,'Mathematics','2024-06-03 18:38:18',NULL),(4,1,'Science','2024-06-03 18:38:18',NULL),(5,1,'Social Science','2024-06-03 18:38:18',NULL),(6,2,'Tamil','2024-06-03 19:24:47',NULL),(7,2,'English','2024-06-03 19:24:47',NULL),(8,2,'Mathematics','2024-06-03 19:24:47',NULL),(9,2,'Science','2024-06-03 19:24:47',NULL),(10,2,'Social Science','2024-06-03 19:24:47',NULL),(11,3,'Tamil',NULL,NULL),(12,3,'English',NULL,NULL),(13,3,'Mathematics',NULL,NULL),(14,3,'Science',NULL,NULL),(15,3,'Social',NULL,NULL),(16,4,'Tamil',NULL,NULL),(17,4,'English',NULL,NULL),(18,4,'Mathematics',NULL,NULL);
/*!40000 ALTER TABLE `subjects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `time_table`
--

DROP TABLE IF EXISTS `time_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `time_table` (
  `t_table_id` int NOT NULL AUTO_INCREMENT,
  `cls_allocation_id` int NOT NULL,
  `t_table` mediumtext,
  `academic_year` varchar(9) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`t_table_id`),
  KEY `cls_allocation_id` (`cls_allocation_id`),
  CONSTRAINT `time_table_ibfk_1` FOREIGN KEY (`cls_allocation_id`) REFERENCES `class_allocation` (`cls_allocation_id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `time_table`
--

LOCK TABLES `time_table` WRITE;
/*!40000 ALTER TABLE `time_table` DISABLE KEYS */;
INSERT INTO `time_table` VALUES (1,1,'timetable_1717585605257_345913654','2024-2025','2024-06-05 16:36:40',NULL),(2,2,'timetable_1717588518176_213654165','2024-2025','2024-06-05 17:23:54',NULL),(3,3,'timetable_1717588734136_149094624','2024-2025','2024-06-05 17:27:35',NULL),(4,4,'timetable_1717664750496_952542884','2024-2025','2024-06-06 13:04:23',NULL),(5,8,'timetable_1718002493105_212638920','2024-2025','2024-06-10 11:16:53',NULL),(6,10,'timetable_1718182032899_577721482','2024-2025','2024-06-12 13:56:58',NULL),(7,10,'timetable_1718182032754_685813143','2024-2025','2024-06-12 13:56:58',NULL);
/*!40000 ALTER TABLE `time_table` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-06-25 13:05:05
