/*
SQLyog Ultimate v11.11 (64 bit)
MySQL - 5.5.5-10.4.32-MariaDB : Database - crm
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`crm` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci */;

USE `crm`;

/*Table structure for table `admin` */

DROP TABLE IF EXISTS `admin`;

CREATE TABLE `admin` (
  `admin_id` int(255) NOT NULL AUTO_INCREMENT,
  `email` varchar(100) NOT NULL,
  `password_hash` varchar(255) NOT NULL,
  `fName` varchar(255) NOT NULL,
  `lName` varchar(255) NOT NULL,
  PRIMARY KEY (`admin_id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `admin` */

insert  into `admin`(`admin_id`,`email`,`password_hash`,`fName`,`lName`) values (17,'vladimer.ilagor@gmail.com','$2y$10$PMQ6Soy1Az1gNVZg9YMGAuOsnyRMrWIXClzv742xiihg1KuS9G6ee','Vladimer','Ilagor'),(18,'vladimer.ilagor@gmail.coms','$2y$10$PBDzuZZ7TJaBXnexQXcSkePDYE3RXQSokvfoZDiBh.LPG8EDxoZqe','Vladimer','Ilagor'),(19,'jrquibol@gmail.com','$2y$10$esYsG/.sERdp0DUZoE5UTOFHakFXj3MzM8GiU/s5DAIOAUtrMj48G','sir','john'),(20,'vladimer.ilagor@gmail.comss','$2y$10$8TdDmwmFaZ0eebT0mMVsG.eY6twVEtZhjke3CZiCR1ZCV/BeNpesO','Vladimer','Ilagor'),(21,'ilagorv.qcydoqcu@gmail.com','$2y$10$qUpFmR5c7tsLewhSOo1JkeannE8DZGJfIZcdZadlI4qy0RqQ5.FaG','Vladimer','Ilagor'),(22,'ryanquibol05@gmail.com','$2y$10$BS8R.ZDNe8tMOAgI9zVIb.1j8e7pPO0Fidk/SOuqXN4irwEqp1xiS','Sir','John');

/*Table structure for table `contacts` */

DROP TABLE IF EXISTS `contacts`;

CREATE TABLE `contacts` (
  `contacts_ID` int(50) NOT NULL AUTO_INCREMENT,
  `fName` varchar(255) NOT NULL,
  `lName` varchar(255) NOT NULL,
  `cNum` varchar(255) NOT NULL,
  `eMail` varchar(255) NOT NULL,
  `cPrice` int(50) NOT NULL,
  `isDeleted` varchar(255) NOT NULL,
  PRIMARY KEY (`contacts_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `contacts` */

insert  into `contacts`(`contacts_ID`,`fName`,`lName`,`cNum`,`eMail`,`cPrice`,`isDeleted`) values (23,'Qwer','Quibol','930242','hjdka@ksaj121',0,'yes'),(28,'Vladimer','Ilagor','0912345678','vladimer.ilagor@gmail.com',0,'yes'),(29,'Vladimer','Ilagor','09123456789','vladimer.ilagor@gmail.com',0,'yes'),(30,'Vladimer','ilagor','09232123212','',0,''),(31,'Junmar','Rosaio','0909090909','asd@gmail.com',0,'no');

/*Table structure for table `deals` */

DROP TABLE IF EXISTS `deals`;

CREATE TABLE `deals` (
  `dealID` int(50) NOT NULL AUTO_INCREMENT,
  `dName` varchar(255) NOT NULL,
  `dValue` int(50) NOT NULL,
  `dStage` varchar(255) NOT NULL,
  `datee` date DEFAULT NULL,
  `contacts_ID` int(50) NOT NULL,
  PRIMARY KEY (`dealID`),
  KEY `contacts_ID` (`contacts_ID`),
  CONSTRAINT `deals_ibfk_1` FOREIGN KEY (`contacts_ID`) REFERENCES `contacts` (`contacts_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `deals` */

insert  into `deals`(`dealID`,`dName`,`dValue`,`dStage`,`datee`,`contacts_ID`) values (3,'CRM',100,'Negotation','2024-04-01',29),(4,'sda',131,'Qualification',NULL,29),(5,'asdaaaaaaa',132,'Qualified','2024-03-22',29),(6,'adsa',123,'Qualification',NULL,29),(7,'nice',1231,'New',NULL,29),(8,'dsa',12,'New','1970-01-01',29),(9,'asd',123,'New','1970-01-01',29),(10,'CRMMM',100,'New','1970-01-01',30),(11,'qeq',123,'New','2024-03-21',29),(12,'xx',1232,'New','2024-03-21',29),(13,'x1',1111,'Qualification','2024-03-22',29),(14,'QWEQW',1231,'New','2024-03-21',29),(15,'QEQWE',123,'New','2024-03-21',29),(16,'LAST',44,'New','2024-03-21',29),(17,'ngek',100,'Negotiation','2024-03-23',29),(21,'sir',1231,'Negotiation','2024-03-22',29),(23,'add',3424,'Negotiation','2024-03-23',29),(25,'mark',12,'Qualified','2024-03-22',29),(26,'sda',1231,'Qualified','2024-03-22',29),(28,'iiii',123,'Qualified','2024-03-22',29),(32,'asdas',123,'Qualified','2024-03-22',29),(33,'opop',88,'Qualified','2024-03-22',29),(36,'crmmmmmm',123333,'Negotiation','2024-03-22',31),(37,'asddd',1222,'Negotiation','2024-03-23',31);

/*Table structure for table `events` */

DROP TABLE IF EXISTS `events`;

CREATE TABLE `events` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(500) NOT NULL,
  `description` varchar(500) NOT NULL,
  `deleted` int(1) NOT NULL DEFAULT 0,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `created_on` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `events` */

insert  into `events`(`id`,`title`,`description`,`deleted`,`start_date`,`end_date`,`created_on`) values (1,'Title 1','This the Description of title 1',1,'2024-03-12','2024-03-14',NULL),(2,'sdkfj','ksdgjfskdf',1,'2024-03-12','2024-03-14',NULL),(3,'asdas','asdasdasd',1,'2024-03-13','2024-03-21',NULL),(4,'BLACK FRIDAY','Nigga',1,'2024-02-26','2024-03-22',NULL),(5,'Title 1cfdf','askdjgashdihi',1,'2024-03-22','2024-03-26',NULL),(6,'Event title 1123','Description of title event 1',1,'2024-03-22','2024-03-26',NULL);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
