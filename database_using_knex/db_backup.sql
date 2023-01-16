-- MySQL dump 10.13  Distrib 8.0.23, for osx10.16 (x86_64)
--
-- Host: localhost    Database: newbury_business_school
-- ------------------------------------------------------
-- Server version	8.0.23

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `campuses`
--

DROP TABLE IF EXISTS `campuses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `campuses` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `campuses`
--

LOCK TABLES `campuses` WRITE;
/*!40000 ALTER TABLE `campuses` DISABLE KEYS */;
INSERT INTO `campuses` VALUES (1,'London'),(2,'Hongkong'),(3,'Paris'),(4,'Berlin'),(5,'Rome'),(6,'Dubai'),(7,'Copenhagen'),(8,'Oslo'),(9,'Ankara'),(10,'Cairo');
/*!40000 ALTER TABLE `campuses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `classes`
--

DROP TABLE IF EXISTS `classes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `classes` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `delivery_style` varchar(16) NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `size` int NOT NULL,
  `tutor_id` int unsigned NOT NULL,
  `semester_id` int unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `classes_tutor_id_foreign` (`tutor_id`),
  KEY `classes_semester_id_foreign` (`semester_id`),
  CONSTRAINT `classes_semester_id_foreign` FOREIGN KEY (`semester_id`) REFERENCES `semesters` (`id`),
  CONSTRAINT `classes_tutor_id_foreign` FOREIGN KEY (`tutor_id`) REFERENCES `tutors` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `classes`
--

LOCK TABLES `classes` WRITE;
/*!40000 ALTER TABLE `classes` DISABLE KEYS */;
INSERT INTO `classes` VALUES (1,'online','2022-12-22','2022-12-22',7,1,1),(2,'in campus','2022-12-20','2022-12-20',10,1,1),(3,'online','2023-02-20','2023-02-20',6,2,2),(4,'in campus','2023-03-20','2023-03-20',9,3,3),(5,'in campus','2023-05-10','2023-05-10',9,4,4);
/*!40000 ALTER TABLE `classes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `enrollments`
--

DROP TABLE IF EXISTS `enrollments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `enrollments` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `learner_id` int unsigned NOT NULL,
  `course_duration` varchar(64) NOT NULL,
  `fees` varchar(16) NOT NULL,
  `learner_address` varchar(255) NOT NULL,
  `campus_id` int unsigned NOT NULL,
  `language_id` int unsigned NOT NULL,
  `learning_style_id` int unsigned NOT NULL,
  `learning_model` varchar(16) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `enrollments_learner_id_foreign` (`learner_id`),
  KEY `enrollments_campus_id_foreign` (`campus_id`),
  KEY `enrollments_language_id_foreign` (`language_id`),
  KEY `enrollments_learning_style_id_foreign` (`learning_style_id`),
  CONSTRAINT `enrollments_campus_id_foreign` FOREIGN KEY (`campus_id`) REFERENCES `campuses` (`id`),
  CONSTRAINT `enrollments_language_id_foreign` FOREIGN KEY (`language_id`) REFERENCES `languages` (`id`),
  CONSTRAINT `enrollments_learner_id_foreign` FOREIGN KEY (`learner_id`) REFERENCES `learners` (`id`),
  CONSTRAINT `enrollments_learning_style_id_foreign` FOREIGN KEY (`learning_style_id`) REFERENCES `learning_styles` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `enrollments`
--

LOCK TABLES `enrollments` WRITE;
/*!40000 ALTER TABLE `enrollments` DISABLE KEYS */;
INSERT INTO `enrollments` VALUES (1,1,'9 months','1200','45 Newport Road, Carlton, YO6 7QJ.',1,1,1,'campus'),(2,2,'9 months','1200','76 Iffley Road, Brochel, IV40 3FQ.',6,2,1,'online'),(3,3,'6 months','600','1 Witney Way, Knockando, AB38 0DU.',2,3,2,'campus'),(4,4,'10 months','1200','1 Witney Way, Knockando, AB38 0DU.',2,4,1,'campus'),(5,5,'9 months','1200','1 Witney Way, Knockando, AB38 0DU.',2,1,1,'campus');
/*!40000 ALTER TABLE `enrollments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `knex_migrations`
--

DROP TABLE IF EXISTS `knex_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `knex_migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `batch` int DEFAULT NULL,
  `migration_time` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `knex_migrations`
--

LOCK TABLES `knex_migrations` WRITE;
/*!40000 ALTER TABLE `knex_migrations` DISABLE KEYS */;
INSERT INTO `knex_migrations` VALUES (1,'20221108195859_create_languages_table.js',1,'2023-01-16 04:56:23'),(2,'20221108200108_create_campuses_table.js',1,'2023-01-16 04:56:23'),(3,'20221108200208_create_semesters_table.js',1,'2023-01-16 04:56:23'),(4,'20221108200348_create_learning_styles_table.js',1,'2023-01-16 04:56:23'),(5,'20221108200548_create_learners_table.js',1,'2023-01-16 04:56:23'),(6,'20221108201221_create_managers_table.js',1,'2023-01-16 04:56:23'),(7,'20221108201321_create_tutors_table.js',1,'2023-01-16 04:56:23'),(8,'20221108201421_create_tutor_qualifications_table.js',1,'2023-01-16 04:56:23'),(9,'20221108201615_create_classes_table.js',1,'2023-01-16 04:56:23'),(10,'20221108202155_create_learning_resource_types_table.js',1,'2023-01-16 04:56:23'),(11,'20221110182658_create_enrollments_table.js',1,'2023-01-16 04:56:23'),(12,'20221110182752_create_learning_resources_table.js',1,'2023-01-16 04:56:23'),(13,'20221110182808_create_learning_activities_table.js',1,'2023-01-16 04:56:24'),(14,'20221110183808_create_learners_classes_table.js',1,'2023-01-16 04:56:24');
/*!40000 ALTER TABLE `knex_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `knex_migrations_lock`
--

DROP TABLE IF EXISTS `knex_migrations_lock`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `knex_migrations_lock` (
  `index` int unsigned NOT NULL AUTO_INCREMENT,
  `is_locked` int DEFAULT NULL,
  PRIMARY KEY (`index`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `knex_migrations_lock`
--

LOCK TABLES `knex_migrations_lock` WRITE;
/*!40000 ALTER TABLE `knex_migrations_lock` DISABLE KEYS */;
INSERT INTO `knex_migrations_lock` VALUES (1,0);
/*!40000 ALTER TABLE `knex_migrations_lock` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `languages`
--

DROP TABLE IF EXISTS `languages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `languages` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `languages`
--

LOCK TABLES `languages` WRITE;
/*!40000 ALTER TABLE `languages` DISABLE KEYS */;
INSERT INTO `languages` VALUES (1,'English'),(2,'German'),(3,'French'),(4,'Spanish');
/*!40000 ALTER TABLE `languages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `learners`
--

DROP TABLE IF EXISTS `learners`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `learners` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `first_name` varchar(64) NOT NULL,
  `last_name` varchar(64) NOT NULL,
  `email` varchar(128) NOT NULL,
  `age` int NOT NULL,
  `gender` varchar(16) NOT NULL,
  `phone_number` varchar(32) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `learners`
--

LOCK TABLES `learners` WRITE;
/*!40000 ALTER TABLE `learners` DISABLE KEYS */;
INSERT INTO `learners` VALUES (1,'Gene','Mallin','gene.mallin@student.com',23,'Male','0123456789'),(2,'Doran','Schultz','doran.schultz@student.com',25,'Male','0456789123'),(3,'Molly','Mccarthy','molly.mccarthy@student.com',22,'Female','0789123456'),(4,'Madison','Marrow','madison.marrow@student.com',26,'Female','0723456891'),(5,'Austin','Lee','austin.lee@student.com',28,'Male','0456891723');
/*!40000 ALTER TABLE `learners` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `learners_classes`
--

DROP TABLE IF EXISTS `learners_classes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `learners_classes` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `learner_id` int unsigned NOT NULL,
  `class_id` int unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `learners_classes_learner_id_foreign` (`learner_id`),
  KEY `learners_classes_class_id_foreign` (`class_id`),
  CONSTRAINT `learners_classes_class_id_foreign` FOREIGN KEY (`class_id`) REFERENCES `classes` (`id`),
  CONSTRAINT `learners_classes_learner_id_foreign` FOREIGN KEY (`learner_id`) REFERENCES `learners` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `learners_classes`
--

LOCK TABLES `learners_classes` WRITE;
/*!40000 ALTER TABLE `learners_classes` DISABLE KEYS */;
INSERT INTO `learners_classes` VALUES (1,1,1),(2,1,2),(3,2,1),(4,2,2),(5,2,3),(6,1,3),(7,4,1);
/*!40000 ALTER TABLE `learners_classes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `learning_activities`
--

DROP TABLE IF EXISTS `learning_activities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `learning_activities` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `issue_date` date NOT NULL,
  `author` varchar(64) NOT NULL,
  `marks` float(8,2) NOT NULL,
  `learning_resource_id` int unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `learning_activities_learning_resource_id_foreign` (`learning_resource_id`),
  CONSTRAINT `learning_activities_learning_resource_id_foreign` FOREIGN KEY (`learning_resource_id`) REFERENCES `learning_resources` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `learning_activities`
--

LOCK TABLES `learning_activities` WRITE;
/*!40000 ALTER TABLE `learning_activities` DISABLE KEYS */;
INSERT INTO `learning_activities` VALUES (1,'2022-10-22','Cillian May',90.00,1),(2,'2022-11-22','Leyla Hughes',85.00,2),(3,'2022-12-12','Megan Ross',80.00,3),(4,'2023-01-09','Leon Thompson',80.00,4),(5,'2023-01-09','Anika Burke',70.00,5);
/*!40000 ALTER TABLE `learning_activities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `learning_resource_types`
--

DROP TABLE IF EXISTS `learning_resource_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `learning_resource_types` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `learning_resource_types`
--

LOCK TABLES `learning_resource_types` WRITE;
/*!40000 ALTER TABLE `learning_resource_types` DISABLE KEYS */;
INSERT INTO `learning_resource_types` VALUES (1,'Video'),(2,'Audio'),(3,'Powerpoint Presentation'),(4,'Reading Text');
/*!40000 ALTER TABLE `learning_resource_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `learning_resources`
--

DROP TABLE IF EXISTS `learning_resources`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `learning_resources` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `language_id` int unsigned NOT NULL,
  `learning_resource_type_id` int unsigned NOT NULL,
  `duration` varchar(32) NOT NULL,
  `author` varchar(64) NOT NULL,
  `date_of_issue` date NOT NULL,
  PRIMARY KEY (`id`),
  KEY `learning_resources_language_id_foreign` (`language_id`),
  KEY `learning_resources_learning_resource_type_id_foreign` (`learning_resource_type_id`),
  CONSTRAINT `learning_resources_language_id_foreign` FOREIGN KEY (`language_id`) REFERENCES `languages` (`id`),
  CONSTRAINT `learning_resources_learning_resource_type_id_foreign` FOREIGN KEY (`learning_resource_type_id`) REFERENCES `learning_resource_types` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `learning_resources`
--

LOCK TABLES `learning_resources` WRITE;
/*!40000 ALTER TABLE `learning_resources` DISABLE KEYS */;
INSERT INTO `learning_resources` VALUES (1,1,1,'4 hours','Marco Walker','2022-10-22'),(2,1,2,'3.5 hours','Seth Davis','2022-11-12'),(3,2,3,'3.0 hours','Rosalie Shaw','2022-12-20'),(4,4,4,'4.5 hours','Rosalie Shaw','2022-12-20'),(5,1,1,'4.2 hours','Anika Burke','2022-11-20');
/*!40000 ALTER TABLE `learning_resources` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `learning_styles`
--

DROP TABLE IF EXISTS `learning_styles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `learning_styles` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `learning_styles`
--

LOCK TABLES `learning_styles` WRITE;
/*!40000 ALTER TABLE `learning_styles` DISABLE KEYS */;
INSERT INTO `learning_styles` VALUES (1,'Full time'),(2,'Part time');
/*!40000 ALTER TABLE `learning_styles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `managers`
--

DROP TABLE IF EXISTS `managers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `managers` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  `email` varchar(64) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `managers`
--

LOCK TABLES `managers` WRITE;
/*!40000 ALTER TABLE `managers` DISABLE KEYS */;
INSERT INTO `managers` VALUES (1,'Happy Cobbett','happy.cobbett@newbury-business-school.com'),(2,'Dwayne Robertson','dwayne.robertson@newbury-business-school.com'),(3,'Clarissa Maxwell','clarissa.maxwell@newbury-business-school.com'),(4,'Thalia Frost','thalia.frost@newbury-business-school.com'),(5,'Olivia Andrews','olivia.andrews@newbury-business-school.com');
/*!40000 ALTER TABLE `managers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `semesters`
--

DROP TABLE IF EXISTS `semesters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `semesters` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  `type` varchar(16) NOT NULL,
  `code` varchar(8) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `semesters`
--

LOCK TABLES `semesters` WRITE;
/*!40000 ALTER TABLE `semesters` DISABLE KEYS */;
INSERT INTO `semesters` VALUES (1,'Semester 1','FullTime','SF1'),(2,'Semester 2','FullTime','SF2'),(3,'Semester 3','FullTime','SF3'),(4,'Semester 4','FullTime','SF4'),(5,'Semester 1','PartTime','SP1'),(6,'Semester 2','PartTime','SP2');
/*!40000 ALTER TABLE `semesters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tutor_qualifications`
--

DROP TABLE IF EXISTS `tutor_qualifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tutor_qualifications` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `qualification` varchar(255) NOT NULL,
  `tutor_id` int unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `tutor_qualifications_tutor_id_foreign` (`tutor_id`),
  CONSTRAINT `tutor_qualifications_tutor_id_foreign` FOREIGN KEY (`tutor_id`) REFERENCES `tutors` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tutor_qualifications`
--

LOCK TABLES `tutor_qualifications` WRITE;
/*!40000 ALTER TABLE `tutor_qualifications` DISABLE KEYS */;
INSERT INTO `tutor_qualifications` VALUES (1,'Masters in English',1),(2,'MA in English',2),(3,'Masters in Germany',2),(4,'Masters in French',3),(5,'Masters in Spanish',4),(6,'Masters in English',5),(7,'Masters in French',6),(8,'Masters in Germany',7);
/*!40000 ALTER TABLE `tutor_qualifications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tutors`
--

DROP TABLE IF EXISTS `tutors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tutors` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  `salary` float(8,2) NOT NULL,
  `type` varchar(16) NOT NULL,
  `email` varchar(64) NOT NULL,
  `tutor_leader_id` int unsigned DEFAULT NULL,
  `manager_id` int unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `tutors_tutor_leader_id_foreign` (`tutor_leader_id`),
  KEY `tutors_manager_id_foreign` (`manager_id`),
  CONSTRAINT `tutors_manager_id_foreign` FOREIGN KEY (`manager_id`) REFERENCES `managers` (`id`),
  CONSTRAINT `tutors_tutor_leader_id_foreign` FOREIGN KEY (`tutor_leader_id`) REFERENCES `tutors` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tutors`
--

LOCK TABLES `tutors` WRITE;
/*!40000 ALTER TABLE `tutors` DISABLE KEYS */;
INSERT INTO `tutors` VALUES (1,'Lilah Hunt',3000.00,'Permanent','lilah.hunt@newbury-business-school.com',NULL,1),(2,'Walter Wallace',3200.00,'Permanent','walter.wallace@newbury-business-school.com',1,1),(3,'Connor Nicholson',3800.00,'Contract','connor.nicholson@newbury-business-school.com',NULL,2),(4,'Lola Watts',3100.00,'Permanent','lola.watts@newbury-business-school.com',1,3),(5,'Annie Sutton',3000.00,'Contract','annie.sutton@newbury-business-school.com',NULL,3),(6,'Lila Pearson',3100.00,'Permanent','lila.pearson@newbury-business-school.com',NULL,4),(7,'Thalia Hunt',3000.00,'Permanent','thalia.hunt@newbury-business-school.com',NULL,5);
/*!40000 ALTER TABLE `tutors` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-01-16  4:56:29
