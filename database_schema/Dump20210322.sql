-- MySQL dump 10.13  Distrib 8.0.23, for Win64 (x86_64)
--
-- Host: localhost    Database: mydb
-- ------------------------------------------------------
-- Server version	8.0.23

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
-- Table structure for table `add_forms`
--

DROP TABLE IF EXISTS `add_forms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `add_forms` (
  `form_id` int NOT NULL AUTO_INCREMENT,
  `student_lastname` varchar(25) DEFAULT NULL,
  `student_firstname` varchar(25) DEFAULT NULL,
  `uid` varchar(10) DEFAULT NULL,
  `student_email` varchar(45) DEFAULT NULL,
  `faculty_lastname` varchar(25) DEFAULT NULL,
  `faculty_firstname` varchar(25) DEFAULT NULL,
  `faculty_email` varchar(25) DEFAULT NULL,
  `signature` varchar(25) DEFAULT NULL,
  `application_status` varchar(25) DEFAULT NULL,
  `application_date` date DEFAULT NULL,
  `date_of_approval` date DEFAULT NULL,
  `submitted` tinyint DEFAULT NULL,
  `student_id` int NOT NULL,
  `approved_by` int DEFAULT NULL,
  PRIMARY KEY (`form_id`),
  KEY `fk_add_forms_student1_idx` (`student_id`),
  KEY `fk_add_forms_faculty1_idx` (`approved_by`),
  CONSTRAINT `fk_add_forms_faculty1` FOREIGN KEY (`approved_by`) REFERENCES `faculty` (`faculty_id`),
  CONSTRAINT `fk_add_forms_student1` FOREIGN KEY (`student_id`) REFERENCES `student` (`student_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `add_forms`
--

LOCK TABLES `add_forms` WRITE;
/*!40000 ALTER TABLE `add_forms` DISABLE KEYS */;
INSERT INTO `add_forms` VALUES (6,'Curtis','David','919567732','s531274@nwmissouri.edu','Eloe','Nathan','nathan@nwmissouri.edu','David Curtis',NULL,'2021-03-14',NULL,1,1,NULL);
/*!40000 ALTER TABLE `add_forms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin` (
  `admin_id` int NOT NULL AUTO_INCREMENT,
  `admin_lastname` varchar(25) NOT NULL,
  `admin_firstname` varchar(25) NOT NULL,
  PRIMARY KEY (`admin_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin`
--

LOCK TABLES `admin` WRITE;
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` VALUES (1,'Curtis','David');
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `agreements`
--

DROP TABLE IF EXISTS `agreements`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `agreements` (
  `agreement_id` int NOT NULL AUTO_INCREMENT,
  `student_name` varchar(45) DEFAULT NULL,
  `student_address` varchar(45) DEFAULT NULL,
  `sid` varchar(10) DEFAULT NULL,
  `organization_name` varchar(25) DEFAULT NULL,
  `organization_address` varchar(45) DEFAULT NULL,
  `supervisor_name` varchar(45) DEFAULT NULL,
  `supervisor_email` varchar(45) DEFAULT NULL,
  `arrangements` varchar(250) DEFAULT NULL,
  `organization_phone` varchar(15) DEFAULT NULL,
  `student_other` varchar(250) DEFAULT NULL,
  `sponsor_other` varchar(250) DEFAULT NULL,
  `supervisor_other` varchar(250) DEFAULT NULL,
  `student_signature` varchar(45) DEFAULT NULL,
  `sponsor_signature` varchar(45) DEFAULT NULL,
  `application_status` varchar(25) DEFAULT NULL,
  `application_date` date DEFAULT NULL,
  `date_of_approval` date DEFAULT NULL,
  `submitted` tinyint DEFAULT NULL,
  `student_id` int NOT NULL,
  `approved_by` int DEFAULT NULL,
  PRIMARY KEY (`agreement_id`),
  KEY `fk_agreements_student1_idx` (`student_id`),
  KEY `fk_agreements_faculty1_idx` (`approved_by`),
  CONSTRAINT `fk_agreements_faculty1` FOREIGN KEY (`approved_by`) REFERENCES `faculty` (`faculty_id`),
  CONSTRAINT `fk_agreements_student1` FOREIGN KEY (`student_id`) REFERENCES `student` (`student_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `agreements`
--

LOCK TABLES `agreements` WRITE;
/*!40000 ALTER TABLE `agreements` DISABLE KEYS */;
INSERT INTO `agreements` VALUES (5,'David Curtis','123 Maryville','s531274','Garmin','123 Kansas City','Mark Car','mark@garmin.com',NULL,'816-239-9800',NULL,NULL,NULL,'David Curtis',NULL,NULL,'2021-02-25',NULL,0,1,NULL);
/*!40000 ALTER TABLE `agreements` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faculty`
--

DROP TABLE IF EXISTS `faculty`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `faculty` (
  `faculty_id` int NOT NULL AUTO_INCREMENT,
  `faculty_firstname` varchar(25) NOT NULL,
  `faculty_lastname` varchar(25) NOT NULL,
  `department` varchar(10) NOT NULL,
  PRIMARY KEY (`faculty_id`),
  KEY `faculty_lastname` (`faculty_lastname`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faculty`
--

LOCK TABLES `faculty` WRITE;
/*!40000 ALTER TABLE `faculty` DISABLE KEYS */;
INSERT INTO `faculty` VALUES (1,'Nathan','Eloe','CSIS');
/*!40000 ALTER TABLE `faculty` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `internships`
--

DROP TABLE IF EXISTS `internships`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `internships` (
  `internship_id` int NOT NULL AUTO_INCREMENT,
  `employer_name` varchar(25) DEFAULT NULL,
  `duration` varchar(10) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `street_line_1` varchar(25) DEFAULT NULL,
  `street_line_2` varchar(25) DEFAULT NULL,
  `city` varchar(25) DEFAULT NULL,
  `zip_code` varchar(10) DEFAULT NULL,
  `department` varchar(45) DEFAULT NULL,
  `state` varchar(25) DEFAULT NULL,
  `supervisor_name` varchar(45) DEFAULT NULL,
  `supervisor_email` varchar(45) DEFAULT NULL,
  `site_phone` varchar(15) DEFAULT NULL,
  `international_phone` varchar(25) DEFAULT NULL,
  `notes` varchar(250) DEFAULT NULL,
  `offer_letter` longblob,
  `application_status` varchar(25) DEFAULT NULL,
  `application_date` date DEFAULT NULL,
  `date_of_approval` date DEFAULT NULL,
  `submitted` tinyint DEFAULT NULL,
  `student_id` int NOT NULL,
  `approved_by` int DEFAULT NULL,
  PRIMARY KEY (`internship_id`),
  KEY `fk_internships_student1_idx` (`student_id`),
  KEY `fk_internships_faculty1_idx` (`approved_by`),
  CONSTRAINT `fk_internships_faculty1` FOREIGN KEY (`approved_by`) REFERENCES `faculty` (`faculty_id`),
  CONSTRAINT `fk_internships_student1` FOREIGN KEY (`student_id`) REFERENCES `student` (`student_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `internships`
--

LOCK TABLES `internships` WRITE;
/*!40000 ALTER TABLE `internships` DISABLE KEYS */;
INSERT INTO `internships` VALUES (3,'Garmin','10 Weeks','2022-05-20','2022-08-20','123 Street',NULL,'Kansas City','66030','Aviation','Missouri','Mark Car','mark@garmin.com','816-239-9800',NULL,NULL,NULL,NULL,'2021-03-12',NULL,1,1,NULL);
/*!40000 ALTER TABLE `internships` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `review`
--

DROP TABLE IF EXISTS `review`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `review` (
  `admin_id` int NOT NULL,
  KEY `fk_review_admin1_idx` (`admin_id`),
  CONSTRAINT `fk_review_admin1` FOREIGN KEY (`admin_id`) REFERENCES `admin` (`admin_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `review`
--

LOCK TABLES `review` WRITE;
/*!40000 ALTER TABLE `review` DISABLE KEYS */;
/*!40000 ALTER TABLE `review` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student`
--

DROP TABLE IF EXISTS `student`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `student` (
  `student_id` int NOT NULL AUTO_INCREMENT,
  `student_lastname` varchar(25) DEFAULT NULL,
  `student_firstname` varchar(25) DEFAULT NULL,
  `student_location` varchar(20) DEFAULT NULL,
  `major` varchar(25) DEFAULT NULL,
  `sid_number` varchar(10) DEFAULT NULL,
  `semester` varchar(10) DEFAULT NULL,
  `graduation` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`student_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student`
--

LOCK TABLES `student` WRITE;
/*!40000 ALTER TABLE `student` DISABLE KEYS */;
INSERT INTO `student` VALUES (1,'Curtis','David','Gardner','Computer Science','s531274','Spring','2021'),(2,'Gillespie','Lindsay','Maryville','Computer Science','s529464','Spring','2021'),(3,'Rongey','Dylan','Kansas City','Computer Science','s526522','Spring','2021');
/*!40000 ALTER TABLE `student` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `email` varchar(40) NOT NULL,
  `password` varchar(45) NOT NULL,
  `role` varchar(10) NOT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES ('admin@nwmissouri.edu','admin','admin',1),('nathan@nwmissouri.edu','welcome','faculty',1),('s526522@nwmissouri.edu','welcome','student',3),('s529464@nwmissouri.edu','welcome','student',2),('s531274@nwmissouri.edu','welcome','student',1);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'mydb'
--

--
-- Dumping routines for database 'mydb'
--
/*!50003 DROP PROCEDURE IF EXISTS `change_add_form_status` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `change_add_form_status`(
	IN id int,
    IN dateOfApproval date,
    IN approvedBY int,
    IN applicationStatus varchar(25)
)
BEGIN
	UPDATE add_forms 
	SET 
		date_of_approval = dateOfApproval,
        approved_by = approvedBY,
        application_status = applicationStatus
	WHERE
		form_id = id;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `create_add_form` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `create_add_form`(
	IN studentLastname varchar(25),
    IN studentFirstname varchar(25),
    IN UID varchar(10),
    IN studentEmail varchar(45),
    IN facultyLastname varchar(25),
    IN facultyfirstname varchar(25),
    IN facultyEmail varchar(45),
    IN student_signature varchar(25),
    IN applicationDate date,
    IN studentID int,
    IN isSubmitted tinyint
)
BEGIN
	INSERT INTO add_forms(student_lastname, student_firstname, uid, student_email, faculty_lastname, faculty_firstname, faculty_email, signature, application_date, student_id, submitted)
    VALUES(studentLastname, studentFirstname, UID, studentEmail, facultyLastname, facultyfirstname, facultyEmail, student_signature, applicationDate, studentID, isSubmitted);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `create_agreement_form` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `create_agreement_form`(
	IN studentName varchar(45),
    IN studentAddress varchar(45),
    IN SID varchar(10),
    IN orgName varchar(25),
    IN orgAddress varchar(45),
    IN supervisorName varchar(45),
    IN supervisorEmail varchar(45),
    IN arrangement varchar(250),
    IN orgPhone varchar(15),
    IN studentOther varchar(250),
    IN sponsorOther varchar(250),
    IN supervisorOther varchar(250),
    IN studentSignature varchar(45),
    IN applicationDate date,
    IN studentID int,
    IN isSubmitted tinyint
)
BEGIN
	INSERT INTO agreements(student_name, student_address, sid, organization_name, organization_address, supervisor_name, supervisor_email, arrangements, organization_phone, student_other, sponsor_other, supervisor_other, student_signature, application_date, student_id, submitted)
    VALUES(studentName, studentAddress, SID, orgName, orgAddress, supervisorName, supervisorEmail, arrangement, orgPhone, studentOther, sponsorOther, supervisorOther, studentSignature, applicationDate, studentID, isSubmitted);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `create_internship_form` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `create_internship_form`(
	IN employerName varchar(25), 
	IN Duration varchar(10), 
	IN startDate date, 
	IN endDate date, 
	IN streetLine1 varchar(25), 
	IN streetLine2 varchar(25), 
	IN City varchar(25), 
	IN zipCode varchar(10), 
	IN Department varchar(45), 
	IN State varchar(25), 
	IN supervisorName varchar(45), 
	IN supervisorEmail varchar(45), 
	IN sitePhone varchar(15), 
	IN internationalPhone varchar(25), 
	IN Notes varchar(250), 
	IN offerLetter longblob,
    IN applicationDate date,
    IN studentID int,
    IN isSubmitted tinyint
)
BEGIN
    INSERT INTO internships(employer_name, duration, start_date, end_date, street_line_1, street_line_2, city, zip_code, department, state, supervisor_name, supervisor_email, site_phone, international_phone, notes, offer_letter, application_date, student_id, submitted)
    VALUES(employerName, Duration, startDate, endDate, streetLine1, streetLine2, City, zipCode, Department, State, supervisorName, supervisorEmail, sitePhone, internationalPhone, Notes, offerLetter, applicationDate, studentID, isSubmitted);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `edit_add_form` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `edit_add_form`(
	IN id int,
	IN studentLastname varchar(25),
    IN studentFirstname varchar(25),
    IN UID varchar(10),
    IN studentEmail varchar(45),
    IN facultyLastname varchar(25),
    IN facultyfirstname varchar(25),
    IN facultyEmail varchar(45),
    IN student_signature varchar(25),
    IN applicationDate date,
    IN isSubmitted tinyint
)
BEGIN
	UPDATE add_forms 
	SET 
		student_lastname = studentLastname,
		student_firstname = studentFirstname,
		uid = UID,
		student_email = studentEmail, 
		faculty_lastname = facultyLastname,
		faculty_firstname = facultyfirstname,
		faculty_email = facultyEmail,
		signature = student_signature,
		application_date = applicationDate,
		submitted = isSubmitted
	WHERE
		form_id = id;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `get_newest_add_form` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `get_newest_add_form`(
	IN ID int
)
BEGIN
	SELECT *
	FROM add_forms
	WHERE application_date=(
		SELECT MAX(application_date) FROM add_forms WHERE student_id=ID AND submitted=0);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `get_student_add_forms_by_id` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `get_student_add_forms_by_id`(
	IN studentID int
)
BEGIN
	SELECT * FROM add_forms WHERE student_id = studentID;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `get_student_agreement_forms_by_id` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `get_student_agreement_forms_by_id`(
	IN studentID int
)
BEGIN
	SELECT * FROM agreements WHERE student_id = studentID;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `get_student_internship_forms_by_id` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `get_student_internship_forms_by_id`(
	IN studentID int
)
BEGIN
	SELECT * FROM internships WHERE student_id = studentID;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-03-22  0:24:27
