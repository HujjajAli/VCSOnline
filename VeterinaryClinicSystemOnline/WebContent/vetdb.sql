/*
SQLyog Enterprise - MySQL GUI v6.56
MySQL - 5.0.81-community-nt : Database - vetdb
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

CREATE DATABASE /*!32312 IF NOT EXISTS*/`vetdb` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `vetdb`;

/*Table structure for table `creditcard` */

DROP TABLE IF EXISTS `creditcard`;

CREATE TABLE `creditcard` (
  `CCNum` char(16) NOT NULL,
  `CCExpiryDate` date NOT NULL,
  `issuingAgent` varchar(20) NOT NULL,
  `CVC` char(3) NOT NULL,
  `cardHolderName` varchar(30) NOT NULL,
  `cardName` varchar(30) default NULL,
  `custIC` char(12) default NULL,
  PRIMARY KEY  (`CCNum`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `creditcard` */

insert  into `creditcard`(`CCNum`,`CCExpiryDate`,`issuingAgent`,`CVC`,`cardHolderName`,`cardName`,`custIC`) values ('12345678912345','2021-08-01','Visa','011','Iqra Aziz','Bank Al Habib','940928010101');

/*Table structure for table `customer` */

DROP TABLE IF EXISTS `customer`;

CREATE TABLE `customer` (
  `custIC` char(12) NOT NULL,
  `custName` varchar(30) NOT NULL,
  `custGender` char(1) NOT NULL,
  `custAddress` varchar(255) NOT NULL,
  `custPhoneNum` varchar(12) NOT NULL,
  PRIMARY KEY  (`custIC`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `customer` */

insert  into `customer`(`custIC`,`custName`,`custGender`,`custAddress`,`custPhoneNum`) values ('112233442541','Umair Ali','M','21st south_Sadar_1200_Karachi_Sindh','03085698741'),('940928010101','Iqra Aziz','F','43_DHA Phase 3 Defence_2300_Karachi_Sindh','03458965421');

/*Table structure for table `payment` */

DROP TABLE IF EXISTS `payment`;

CREATE TABLE `payment` (
  `paymentID` varchar(15) NOT NULL,
  `amountPaid` decimal(6,2) NOT NULL,
  `methodOfPayment` varchar(12) NOT NULL,
  `paymentDate` date NOT NULL,
  `transID` varchar(15) default NULL,
  `staffIC` char(12) default NULL,
  `CCNum` char(16) default NULL,
  PRIMARY KEY  (`paymentID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `payment` */

insert  into `payment`(`paymentID`,`amountPaid`,`methodOfPayment`,`paymentDate`,`transID`,`staffIC`,`CCNum`) values ('P1','267.00','Cash','2016-08-28','T1','940928145232',NULL);

/*Table structure for table `pet` */

DROP TABLE IF EXISTS `pet`;

CREATE TABLE `pet` (
  `petID` varchar(10) NOT NULL,
  `petName` varchar(30) NOT NULL,
  `petHeight` decimal(5,2) default NULL,
  `petWeight` decimal(4,1) NOT NULL,
  `petLength` decimal(5,2) NOT NULL,
  `animalType` varchar(20) NOT NULL,
  `breed` varchar(20) default NULL,
  `petBirthDate` date NOT NULL,
  `petGender` char(1) NOT NULL,
  `custIC` char(12) default NULL,
  PRIMARY KEY  (`petID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `pet` */

insert  into `pet`(`petID`,`petName`,`petHeight`,`petWeight`,`petLength`,`animalType`,`breed`,`petBirthDate`,`petGender`,`custIC`) values ('A1','Targup','55.00','17.5','79.80','Canine','','2010-08-19','M','940928010101');

/*Table structure for table `schedule` */

DROP TABLE IF EXISTS `schedule`;

CREATE TABLE `schedule` (
  `appID` varchar(10) NOT NULL,
  `appTime` time NOT NULL,
  `appDate` date NOT NULL,
  `custName` varchar(30) NOT NULL,
  `custPhoneNum` varchar(12) NOT NULL,
  `status` varchar(15) NOT NULL,
  `transID` varchar(15) default NULL,
  PRIMARY KEY  (`appID`),
  UNIQUE KEY `transID` (`transID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `schedule` */

insert  into `schedule`(`appID`,`appTime`,`appDate`,`custName`,`custPhoneNum`,`status`,`transID`) values ('M1','00:12:52','2016-09-13','Iqra Aziz','03458965421','Missed',NULL);

/*Table structure for table `service` */

DROP TABLE IF EXISTS `service`;

CREATE TABLE `service` (
  `serviceID` varchar(5) NOT NULL,
  `serviceTitle` varchar(50) NOT NULL,
  `unitPrice` decimal(6,2) NOT NULL,
  `serviceDesp` varchar(100) NOT NULL,
  PRIMARY KEY  (`serviceID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `service` */

insert  into `service`(`serviceID`,`serviceTitle`,`unitPrice`,`serviceDesp`) values ('S0002','Veterinary Cardiology','180.00','Heart and blood related services'),('S0003','Current natural bolistic','145.00','Current natural bolistic'),('S0004','Medical therapies','85.00','Medical therapies'),('S0005','Radiology','80.00','X-ray, CT scan and MRI scan'),('S0006','Ultrasound','98.00','Ultrasound'),('S0007','Blood haematology','50.00','Blood-realted testing and diseases'),('S0008','Biochemistry','50.00','Biochemistry tests'),('S0009','Urine','133.00','Urine-related services'),('S0010','Faecal assay','99.00',''),('S0011','Skin analysis','85.00','Analysis of skin');

/*Table structure for table `staff` */

DROP TABLE IF EXISTS `staff`;

CREATE TABLE `staff` (
  `staffIC` char(12) NOT NULL,
  `staffName` varchar(30) NOT NULL,
  `staffAddress` varchar(255) NOT NULL,
  `staffPhone` varchar(12) NOT NULL,
  `staffPosition` varchar(30) NOT NULL,
  `staffQualification` varchar(20) NOT NULL,
  `password` varchar(103) NOT NULL,
  `securityAns` varchar(50) NOT NULL,
  PRIMARY KEY  (`staffIC`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `staff` */

insert  into `staff`(`staffIC`,`staffName`,`staffAddress`,`staffPhone`,`staffPosition`,`staffQualification`,`password`,`securityAns`) values ('840613258956','Hujaj Ali','Tando Bago, Badin','03333706512','Manager','Masters Degree','1000:bafbfb0dd13bf4f25f86524c44a7dc6d7eb2706316a7b0b4:c89660cbec69db05397589988a42d767d8e6453cb0b779e6','hsegamat'),('940928145232','Javed Rind','Shikarpur','03458965425','Manager','Masters Degree','1000:56940f04c9cb8ff098dfe8d1072f9aab3f8de2ad5d21b204:9c40ac11cebc814bcb0d1d599cfb0cd3c5ff0125f6a10c36','hraub'),('941207016566','Ali Haider','Qasimabad, Hyderabad','03127485654','Veterinerian','Bachelor\'s Degree','1000:03f273ebfa1c7b272b4530fb522bd6d0aa605db7b4b0c98c:91d043f2279d5ea492f012ec71376ed8e7e362fadddeb8d7','cblue');

/*Table structure for table `transaction1` */

DROP TABLE IF EXISTS `transaction1`;

CREATE TABLE `transaction1` (
  `transID` varchar(15) NOT NULL,
  `transDate` date NOT NULL,
  `transTime` varchar(10) NOT NULL,
  `petID` varchar(10) default NULL,
  PRIMARY KEY  (`transID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `transaction1` */

insert  into `transaction1`(`transID`,`transDate`,`transTime`,`petID`) values ('T1','2016-08-29','12:12:10','A1');

/*Table structure for table `transaction_service` */

DROP TABLE IF EXISTS `transaction_service`;

CREATE TABLE `transaction_service` (
  `transID` varchar(15) NOT NULL default '',
  `serviceID` varchar(5) NOT NULL default '',
  `staffIC` char(12) default NULL,
  `remarks` varchar(250) default NULL,
  PRIMARY KEY  (`transID`,`serviceID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `transaction_service` */

insert  into `transaction_service`(`transID`,`serviceID`,`staffIC`,`remarks`) values ('T1','S0005','941207016566','Seccessfull X-Ray');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
