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
  `faculty_email` varchar(45) DEFAULT NULL,
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
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `add_forms`
--

LOCK TABLES `add_forms` WRITE;
/*!40000 ALTER TABLE `add_forms` DISABLE KEYS */;
INSERT INTO `add_forms` VALUES (6,'Curtis','David','919567732','s531274@nwmissouri.edu','Eloe','Nathan','nathan@nwmissouri.edu',NULL,'2021-03-14',NULL,1,1,NULL);
/*!40000 ALTER TABLE `add_forms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `agreements`
--

DROP TABLE IF EXISTS `agreements`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `agreements` (
  `agreement_id` int NOT NULL AUTO_INCREMENT,
  `first_name` varchar(25) DEFAULT NULL,
  `last_name` varchar(25) DEFAULT NULL,
  `student_address` varchar(45) DEFAULT NULL,
  `sid` varchar(10) DEFAULT NULL,
  `student_phone` varchar(15) DEFAULT NULL,
  `organization_name` varchar(25) DEFAULT NULL,
  `organization_address` varchar(45) DEFAULT NULL,
  `supervisor_name` varchar(45) DEFAULT NULL,
  `supervisor_email` varchar(45) DEFAULT NULL,
  `arrangements` varchar(250) DEFAULT NULL,
  `organization_phone` varchar(15) DEFAULT NULL,
  `student_other` varchar(250) DEFAULT NULL,
  `sponsor_other` varchar(250) DEFAULT NULL,
  `supervisor_other` varchar(250) DEFAULT NULL,
  `application_status` varchar(25) DEFAULT NULL,
  `application_date` date DEFAULT NULL,
  `date_of_approval` date DEFAULT NULL,
  `submitted` tinyint DEFAULT NULL,
  `student_id` int NOT NULL,
  `approved_by` int DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  PRIMARY KEY (`agreement_id`),
  KEY `fk_agreements_student1_idx` (`student_id`),
  KEY `fk_agreements_faculty1_idx` (`approved_by`),
  CONSTRAINT `fk_agreements_faculty1` FOREIGN KEY (`approved_by`) REFERENCES `faculty` (`faculty_id`),
  CONSTRAINT `fk_agreements_student1` FOREIGN KEY (`student_id`) REFERENCES `student` (`student_id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `agreements`
--

LOCK TABLES `agreements` WRITE;
/*!40000 ALTER TABLE `agreements` DISABLE KEYS */;
INSERT INTO `agreements` VALUES (24,'David','Curtis','409 W Fifth','s123456','8162885564','Garmin','KC','Mark Clark','davidbradlycurtis@gmail.com','other arrangements','8162880372','student arrangements','sponser arrangements','supervisor arrangements',NULL,'2021-04-01',NULL,1,1,NULL,'2021-04-13','2021-04-29');
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
-- Table structure for table `internship_applications`
--

DROP TABLE IF EXISTS `internship_applications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `internship_applications` (
  `application_id` int NOT NULL AUTO_INCREMENT,
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
  `student_line_1` varchar(25) DEFAULT NULL,
  `student_line_2` varchar(25) DEFAULT NULL,
  `student_city` varchar(25) DEFAULT NULL,
  `student_zip` varchar(10) DEFAULT NULL,
  `student_state` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`application_id`),
  KEY `fk_internships_student1_idx` (`student_id`),
  KEY `fk_internships_faculty1_idx` (`approved_by`),
  CONSTRAINT `fk_internships_faculty1` FOREIGN KEY (`approved_by`) REFERENCES `faculty` (`faculty_id`),
  CONSTRAINT `fk_internships_student1` FOREIGN KEY (`student_id`) REFERENCES `student` (`student_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `internship_applications`
--

LOCK TABLES `internship_applications` WRITE;
/*!40000 ALTER TABLE `internship_applications` DISABLE KEYS */;
INSERT INTO `internship_applications` VALUES (3,'Garmin','10 Weeks','2022-05-20','2022-08-20','123 Street',NULL,'Kansas City','66030','Aviation','Missouri','Mark Car','mark@garmin.com','816-239-9800',NULL,NULL,NULL,NULL,'2021-03-12',NULL,1,1,NULL,'123 Street',NULL,'Maryville','64468','Missouri');
/*!40000 ALTER TABLE `internship_applications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `internships`
--

DROP TABLE IF EXISTS `internships`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `internships` (
  `internship_id` int NOT NULL AUTO_INCREMENT,
  `internship_name` varchar(45) NOT NULL,
  `student_student_id` int NOT NULL,
  `agreements_agreement_id` int DEFAULT NULL,
  `add_forms_form_id` int DEFAULT NULL,
  `internship_applications_application_id` int DEFAULT NULL,
  PRIMARY KEY (`internship_id`),
  KEY `fk_internships_student2_idx` (`student_student_id`),
  KEY `fk_internships_agreements1_idx` (`agreements_agreement_id`),
  KEY `fk_internships_add_forms1_idx` (`add_forms_form_id`),
  KEY `fk_internships_internship_applications1_idx` (`internship_applications_application_id`),
  CONSTRAINT `fk_internships_add_forms1` FOREIGN KEY (`add_forms_form_id`) REFERENCES `add_forms` (`form_id`),
  CONSTRAINT `fk_internships_agreements1` FOREIGN KEY (`agreements_agreement_id`) REFERENCES `agreements` (`agreement_id`),
  CONSTRAINT `fk_internships_internship_applications1` FOREIGN KEY (`internship_applications_application_id`) REFERENCES `internship_applications` (`application_id`),
  CONSTRAINT `fk_internships_student2` FOREIGN KEY (`student_student_id`) REFERENCES `student` (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `internships`
--

LOCK TABLES `internships` WRITE;
/*!40000 ALTER TABLE `internships` DISABLE KEYS */;
/*!40000 ALTER TABLE `internships` ENABLE KEYS */;
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
/*!50003 DROP PROCEDURE IF EXISTS `change_agreement_form_status` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `change_agreement_form_status`(
	IN id int,
    IN dateOfApproval date,
    IN approvedBY int,
    IN applicationStatus varchar(25)
)
BEGIN
	UPDATE agreements
	SET 
		date_of_approval = dateOfApproval,
        approved_by = approvedBY,
        application_status = applicationStatus
	WHERE
		agreement_id = id;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `change_internship_application_form_status` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `change_internship_application_form_status`(
	IN id int,
    IN dateOfApproval date,
    IN approvedBY int,
    IN applicationStatus varchar(25)
)
BEGIN
	UPDATE internship_applications
	SET 
		date_of_approval = dateOfApproval,
        approved_by = approvedBY,
        application_status = applicationStatus
	WHERE
		application_id = id;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `change_internship_form_status` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `change_internship_form_status`(
	IN id int,
    IN dateOfApproval date,
    IN approvedBY int,
    IN applicationStatus varchar(25)
)
BEGIN
	UPDATE internships 
	SET 
		date_of_approval = dateOfApproval,
        approved_by = approvedBY,
        application_status = applicationStatus
	WHERE
		internhsip_id = id;
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
    IN applicationDate date,
    IN studentID int,
    IN isSubmitted tinyint
)
BEGIN
	INSERT INTO add_forms(student_lastname, student_firstname, uid, student_email, faculty_lastname, faculty_firstname, faculty_email, application_date, student_id, submitted)
    VALUES(studentLastname, studentFirstname, UID, studentEmail, facultyLastname, facultyfirstname, facultyEmail, applicationDate, studentID, isSubmitted);
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
	IN firstName varchar(25),
    In lastName varchar(25),
    IN studentAddress varchar(45),
    IN SID varchar(10),
    IN studentPhone varchar(15),
    IN orgName varchar(25),
    IN orgAddress varchar(45),
    IN supervisorName varchar(45),
    IN supervisorEmail varchar(45),
    IN arrangement varchar(250),
    IN orgPhone varchar(15),
    IN studentOther varchar(250),
    IN sponsorOther varchar(250),
    IN supervisorOther varchar(250),
    IN applicationDate date,
    IN studentID int,
    IN isSubmitted tinyint,
    IN Start_date date,
    IN End_date date
)
BEGIN
	INSERT INTO agreements(first_name, last_name, student_address, sid, student_phone, organization_name, organization_address, supervisor_name, supervisor_email, arrangements, organization_phone, student_other, sponsor_other, supervisor_other, application_date, student_id, submitted, start_date, end_date)
    VALUES(firstName, lastName, studentAddress, SID, studentPhone, orgName, orgAddress, supervisorName, supervisorEmail, arrangement, orgPhone, studentOther, sponsorOther, supervisorOther, applicationDate, studentID, isSubmitted, Start_date, End_date);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `create_internship_application_form` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `create_internship_application_form`(
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
    IN isSubmitted tinyint,
    IN studentLine1 varchar(25),
    IN studentLine2 varchar(25),
    IN studentCity varchar(25),
    IN studentZip varchar(10),
    IN studentState varchar(25)
)
BEGIN
    INSERT INTO internship_applications(employer_name, duration, start_date, end_date, street_line_1, street_line_2, city, zip_code, department, state, supervisor_name, supervisor_email, site_phone, international_phone, notes, offer_letter, application_date, student_id, submitted, student_line_1, student_line_2, student_city, student_zip, student_state)
    VALUES(employerName, Duration, startDate, endDate, streetLine1, streetLine2, City, zipCode, Department, State, supervisorName, supervisorEmail, sitePhone, internationalPhone, Notes, offerLetter, applicationDate, studentID, isSubmitted, studentLine1, studentLine2, studentCity, studentZip, studentState);
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
    IN isSubmitted tinyint,
    IN studentLine1 varchar(25),
    IN studentLine2 varchar(25),
    IN studentCity varchar(25),
    IN studentZip varchar(10),
    IN studentState varchar(25)
)
BEGIN
    INSERT INTO internships(employer_name, duration, start_date, end_date, street_line_1, street_line_2, city, zip_code, department, state, supervisor_name, supervisor_email, site_phone, international_phone, notes, offer_letter, application_date, student_id, submitted, student_line_1, student_line_2, student_city, student_zip, student_state)
    VALUES(employerName, Duration, startDate, endDate, streetLine1, streetLine2, City, zipCode, Department, State, supervisorName, supervisorEmail, sitePhone, internationalPhone, Notes, offerLetter, applicationDate, studentID, isSubmitted, studentLine1, studentLine2, studentCity, studentZip, studentState);
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
/*!50003 DROP PROCEDURE IF EXISTS `edit_agreement_form` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `edit_agreement_form`(
	IN id int,
    IN firstName varchar(25),
    In lastName varchar(25),
    IN studentAddress varchar(45),
    IN SID varchar(10), 
	IN studentPhone varchar(15), 
	IN organizationName varchar(25), 
	IN organizationAddress varchar(45), 
	IN supervisorName varchar(45), 
	IN supervisorEmail varchar(45), 
	IN Arrangements varchar(250), 
	IN organizationPhone varchar(15), 
	IN studentOther varchar(250), 
	IN sponsorOther varchar(250), 
	IN supervisorOther varchar(250), 
	IN Submitted tinyint,
    IN Start_date date,
    In End_date date
)
BEGIN
	UPDATE agreement_forms 
	SET 
		first_name = firstName,
        last_name = lastName,
        student_address = studentAddress,
		sid = SID,
		student_phone = studentPhone, 
		organization_name = organizationName,
		organization_address = organizationAddress,
		supervisor_name = supervisorName,
		supervisor_email = supervisorEmail,
		arrangements = Arrangements,
		organization_phone = organizationPhone,
        student_other = studentOther,
        sponsor_other = sponsorOther,
        supervisor_other = supervisorOther,
        application_date = applicationDate,
        submitted = Submitted,
        start_date = Start_date,
        end_date = End_date
	WHERE
		agreement_id = id;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `edit_internship_application_form` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `edit_internship_application_form`(
	IN id int,
	IN employerName varchar(25),
    IN Duration varchar(10),
    IN start_Date date,
    IN end_Date date,
    IN street_Line1 varchar(25),
    IN street_Line2 varchar(25),
    IN City varchar(25),
    IN Zipcode varchar(10),
    IN Departmant varchar(25),
    IN State varchar(25),
	IN supervisorName varchar(45), 
	IN supervisorEmail varchar(45), 
	IN sitePhone varchar(15), 
	IN internationalPhone varchar(25), 
	In Notes varchar(250), 
	IN Offer longblob, 
	IN applicationDate date, 
	IN Submitted tinyint, 
	IN student_Line_1 varchar(25),
	IN student_Line_2 varchar(25), 
	IN studentCity varchar(25), 
	IN studentZip varchar(10), 
	IN studentState varchar(25)
)
BEGIN
	UPDATE internship_applications
	SET 
		employer_name = employerName, 
		duration = Duration,
		start_date = start_Date, 
		end_date = end_Date, 
		street_line_1 = street_Line1, 
		street_line_2 = street_Line2, 
		city = City, 
		zip_code = Zipcode,
		department = Department, 
		state = State, 
		supervisor_name = supervisorName, 
		supervisor_email = supervisorEmail, 
		site_phone = sitePhone,
		international_phone = internationalPhone, 
		notes = Notes, 
		offer_letter = Offer, 
		application_date = applicationDate, 
		submitted = Submitted,
		student_line_1 = student_Line_1,
		student_line_2 = student_Line_2, 
		student_city = studentCity, 
		student_zip = studentZip, 
		student_state = studentState
	WHERE
		application_id = id;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `edit_internship_form` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `edit_internship_form`(
	IN id int,
	IN employerName varchar(25),
    IN Duration varchar(10),
    IN start_Date date,
    IN end_Date date,
    IN street_Line1 varchar(25),
    IN street_Line2 varchar(25),
    IN City varchar(25),
    IN Zipcode varchar(10),
    IN Departmant varchar(25),
    IN State varchar(25),
	IN supervisorName varchar(45), 
	IN supervisorEmail varchar(45), 
	IN sitePhone varchar(15), 
	IN internationalPhone varchar(25), 
	In Notes varchar(250), 
	IN Offer longblob, 
	IN applicationDate date, 
	IN Submitted tinyint, 
	IN student_Line_1 varchar(25),
	IN student_Line_2 varchar(25), 
	IN studentCity varchar(25), 
	IN studentZip varchar(10), 
	IN studentState varchar(25)
)
BEGIN
	UPDATE internships 
	SET 
		employer_name = employerName, 
		duration = Duration,
		start_date = start_Date, 
		end_date = end_Date, 
		street_line_1 = street_Line1, 
		street_line_2 = street_Line2, 
		city = City, 
		zip_code = Zipcode,
		department = Department, 
		state = State, 
		supervisor_name = supervisorName, 
		supervisor_email = supervisorEmail, 
		site_phone = sitePhone,
		international_phone = internationalPhone, 
		notes = Notes, 
		offer_letter = Offer, 
		application_date = applicationDate, 
		submitted = Submitted,
		student_line_1 = student_Line_1,
		student_line_2 = student_Line_2, 
		student_city = studentCity, 
		student_zip = studentZip, 
		student_state = studentState
	WHERE
		internship_id = id;
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
/*!50003 DROP PROCEDURE IF EXISTS `get_student_internship_application_forms_by_id` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `get_student_internship_application_forms_by_id`(
	IN studentID int
)
BEGIN
	SELECT * FROM internship_applications WHERE student_id = studentID;
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
	SELECT * FROM internship_applications WHERE student_id = studentID;
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

-- Dump completed on 2021-04-08 14:07:12
