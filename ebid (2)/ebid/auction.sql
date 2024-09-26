/*
SQLyog Community v13.1.7 (64 bit)
MySQL - 8.0.28 : Database - onlinetendersystem
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`onlinetendersystem` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `onlinetendersystem`;

/*Table structure for table `tbladmin` */

DROP TABLE IF EXISTS `tbladmin`;

CREATE TABLE `tbladmin` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `uname` varchar(100) DEFAULT NULL,
  `upass` varchar(100) DEFAULT NULL,
  `email` varchar(100) NOT NULL,
  `admin_create` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `admin_update` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `tbladmin` */

insert  into `tbladmin`(`id`,`uname`,`upass`,`email`,`admin_create`,`admin_update`) values 
(1,'admin','admin','admin@gmail.com','2020-10-18 19:28:18','2020-10-19 20:43:10');

/*Table structure for table `tblbidder` */

DROP TABLE IF EXISTS `tblbidder`;

CREATE TABLE `tblbidder` (
  `bid` varchar(45) NOT NULL,
  `vid` varchar(45) DEFAULT NULL,
  `tid` varchar(45) DEFAULT NULL,
  `bidamount` int DEFAULT NULL,
  `deadline` date DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `bid_create` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `bid_update` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`bid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `tblbidder` */

insert  into `tblbidder`(`bid`,`vid`,`tid`,`bidamount`,`deadline`,`status`,`bid_create`,`bid_update`) values 
('B20201103045607','V20201010051058','T20190725022124',120000,'2019-07-19','Accepted','2020-11-03 16:56:07','2020-11-03 16:57:27'),
('B20201103045645','V20201010051058','T20190725022124',110000,'2019-07-19','Rejected','2020-11-03 16:56:45','2020-11-03 16:57:32'),
('B20201103051011','V20201010051058','T20201020094530',1550000,'2020-10-31','Accepted','2020-11-03 17:10:11','2020-11-03 17:10:50'),
('B20201103051227','V20201010051058','T20190725022601',5000025,'2019-07-28','Accepted','2020-11-03 17:12:27','2020-11-03 17:13:11'),
('B20201103053232','V20201010051058','T20190725022416',5000,'2019-09-14','Accepted','2020-11-03 17:32:32','2020-11-03 18:00:25'),
('B20201103054211','V20201010051058','T20190725022416',5000,'2019-09-14','Accepted','2020-11-03 17:42:11','2020-11-03 18:00:28'),
('B20201103055938','V20201010051058','T20190725022416',200000,'2019-09-14','Accepted','2020-11-03 17:59:38','2020-11-03 18:00:27'),
('B20201103071644','V20201010051058','T20190725101322',150001,'2019-07-19','Rejected','2020-11-03 19:16:44','2020-11-03 19:17:13'),
('B20240217042138','V20190725100730','T20190725101239',150004,'2019-07-19','Pending','2024-02-17 16:21:38','2024-02-17 16:21:38'),
('B20240217042547','V20190725100730','T20240217042416',34400,'2024-02-28','Rejected','2024-02-17 16:25:47','2024-02-17 16:26:39'),
('B20240311022302','V20201103075231','T20240311022113',720000,'2024-03-27','Rejected','2024-03-11 14:23:02','2024-03-11 15:19:30'),
('B20240311024150','V20201103073214','T20240311022113',750000,'2024-03-27','Accepted','2024-03-11 14:41:50','2024-03-11 14:42:48'),
('B20240311044241','V20190725100730','T20240311044151',3500,'2024-03-28','Accepted','2024-03-11 16:42:41','2024-03-11 16:43:06'),
('B20240311044530','V20190725100730','T20240311044504',80000,'2024-03-28','Rejected','2024-03-11 16:45:30','2024-03-11 16:45:43'),
('B20240402024452','V20190725100730','T20240311044504',79999,'2024-03-28','Accepted','2024-04-02 14:44:52','2024-04-02 14:46:39');

/*Table structure for table `tblcaptcha` */

DROP TABLE IF EXISTS `tblcaptcha`;

CREATE TABLE `tblcaptcha` (
  `captcha` varchar(100) DEFAULT NULL,
  `captcha_create` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `captcha_update` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `tblcaptcha` */

insert  into `tblcaptcha`(`captcha`,`captcha_create`,`captcha_update`) values 
('10403','2020-10-18 19:29:37','2020-11-03 19:15:39'),
('20301','2024-03-11 14:48:26','2024-03-11 14:48:26');

/*Table structure for table `tblcontact` */

DROP TABLE IF EXISTS `tblcontact`;

CREATE TABLE `tblcontact` (
  `cid` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `message` varchar(300) DEFAULT NULL,
  PRIMARY KEY (`cid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `tblcontact` */

insert  into `tblcontact`(`cid`,`name`,`email`,`message`) values 
(1,'final year','finalyear@gmail.com','Auction Using Bloackchain............');

/*Table structure for table `tblnotice` */

DROP TABLE IF EXISTS `tblnotice`;

CREATE TABLE `tblnotice` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(100) DEFAULT NULL,
  `info` varchar(300) DEFAULT NULL,
  `notice_create` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `notice_update` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `tblnotice` */

insert  into `tblnotice`(`id`,`title`,`info`,`notice_create`,`notice_update`) values 
(6,'Kalyan Highway Flyover.','Project will start on 21st-January-2021.','2020-10-19 18:52:22','2020-10-19 19:14:18'),
(7,'Gandhi Setu Construction','Construction is going to be started December 2020.','2020-10-19 19:00:11','2020-10-19 19:15:54');

/*Table structure for table `tbltender` */

DROP TABLE IF EXISTS `tbltender`;

CREATE TABLE `tbltender` (
  `tid` varchar(45) NOT NULL,
  `tname` varchar(100) DEFAULT NULL,
  `ttype` varchar(45) DEFAULT NULL,
  `tprice` int DEFAULT NULL,
  `tdesc` varchar(300) DEFAULT NULL,
  `tdeadline` date DEFAULT NULL,
  `tloc` varchar(70) DEFAULT NULL,
  `tender_create` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `tender_update` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`tid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `tbltender` */

insert  into `tbltender`(`tid`,`tname`,`ttype`,`tprice`,`tdesc`,`tdeadline`,`tloc`,`tender_create`,`tender_update`) values 
('T20190725022124','Gandhi Setu Highway','maintainence',50000,'lkjhgfd','2019-07-19','Patna, Bihar','2020-10-18 19:36:41','2020-10-18 19:36:41'),
('T20190725022416','MEGA CITY CONNECTING ROAD CONTRUCTION','construction',100000,'mega city road contruction','2019-09-14','Delhi','2020-10-18 19:36:41','2020-10-18 19:36:41'),
('T20190725022601','KOKATA HALDIA BRIDGE CONTRUCTION','construction',5000000,'bridge contruction from kolkata to haldia','2019-07-28','KOLATA-HALDIA','2020-10-18 19:36:41','2020-10-18 19:36:41'),
('T20190725101239','Game Development','software',150000,'We are going to start a project on game development using GPS specification. Interested condidates are required to bid as soon as possible','2019-07-19','Banglore, India','2020-10-18 19:36:41','2020-10-18 19:36:41'),
('T20190725101322','Game Development','software',150000,'We are going to start a project on game development using GPS specification. Interested condidates are required to bid as soon as possible','2019-07-19','Banglore, India','2020-10-18 19:36:41','2020-10-18 19:36:41'),
('T20201020094530','Java Development','Software',1450000,'Banking regarding web based application.','2020-10-31','Ahmednagar','2020-10-20 09:45:30','2020-10-20 09:45:30'),
('T20240217042416','sdjh','Software',34343,'wjh wehg wjehdwjke','2024-02-28','pune','2024-02-17 16:24:16','2024-02-17 16:24:16'),
('T20240311022113','jaltaran ','Construction',700000,'Pimpri Chinchwad Municipal Corporation (PCMC) is the civic body that governs Pimpri-Chinchwad which includes Pimpri, Akurdi, Chinchwad, Nigdi, and the remainder of the northwestern city limits of Pune, India. It was established on 11 October 1982.','2024-03-27','pune','2024-03-11 14:21:13','2024-03-11 14:21:13'),
('T20240311044151','karma','Maintenance',3400,'ksjdfh i jdowiejfiojf oiwejfiowjfiowj','2024-03-28','pune','2024-03-11 16:41:51','2024-03-11 16:41:51'),
('T20240311044504','lerwktjn','Software',77878,'wueh woeudhwiu','2024-03-28','pune','2024-03-11 16:45:04','2024-03-11 16:45:04');

/*Table structure for table `tbltenderstatus` */

DROP TABLE IF EXISTS `tbltenderstatus`;

CREATE TABLE `tbltenderstatus` (
  `tid` varchar(45) NOT NULL,
  `bid` varchar(45) DEFAULT NULL,
  `status` varchar(45) NOT NULL,
  `vid` varchar(45) DEFAULT NULL,
  `tstatus_create` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `tstatus_update` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`tid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `tbltenderstatus` */

insert  into `tbltenderstatus`(`tid`,`bid`,`status`,`vid`,`tstatus_create`,`tstatus_update`) values 
('T20190725022124','B20201103045607','Assigned','V20201010051058','2020-11-03 16:57:27','2020-11-03 16:57:27'),
('T20190725022416','B20201103053232','Assigned','V20201010051058','2020-11-03 18:00:25','2020-11-03 18:00:25'),
('T20190725022601','B20201103051227','Assigned','V20201010051058','2020-11-03 17:13:11','2020-11-03 17:13:11'),
('T20201020094530','B20201103051011','Assigned','V20201010051058','2020-11-03 17:10:50','2020-11-03 17:10:50'),
('T20240311022113','B20240311024150','Assigned','V20201103073214','2024-03-11 14:42:48','2024-03-11 14:42:48'),
('T20240311044151','B20240311044241','Assigned','V20190725100730','2024-03-11 16:43:06','2024-03-11 16:43:06'),
('T20240311044504','B20240402024452','Assigned','V20190725100730','2024-04-02 14:46:39','2024-04-02 14:46:39');

/*Table structure for table `tblvendor` */

DROP TABLE IF EXISTS `tblvendor`;

CREATE TABLE `tblvendor` (
  `vid` varchar(45) NOT NULL,
  `password` varchar(45) DEFAULT NULL,
  `vname` varchar(100) DEFAULT NULL,
  `vmob` varchar(100) DEFAULT NULL,
  `vemail` varchar(100) DEFAULT NULL,
  `company` varchar(45) DEFAULT NULL,
  `address` varchar(300) DEFAULT NULL,
  `vendor_create` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `vendor_update` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`vid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `tblvendor` */

insert  into `tblvendor`(`vid`,`password`,`vname`,`vmob`,`vemail`,`company`,`address`,`vendor_create`,`vendor_update`) values 
('V20190725100730','shashi','Shashi Raj','9547462319','shashi@gmail.com','Wipro','Jain , Colony Belhariya More, Tekari, Gaya, (Bihar) ','2020-10-18 19:33:07','2020-10-18 19:33:07'),
('V20201010051058','java@1991','Kishor Kadam','7276763516','kadamk33@gmail.com','Cyborg System Nebula Studios','Bhalawani, Ahmednagar, Maharashtra.','2020-10-18 19:33:07','2020-10-19 12:46:52'),
('V20201019093457','java@123','Javed Tamboli','8369651475','javed.tamboli@gmail.com','Apostal Infotech Pvt Ltd','java@123','2020-10-19 09:34:58','2020-10-19 09:34:58'),
('V20201019093722','mayur@12345','Mayur Mahale','8869351425','mayurmahale12@gmail.com','Sunsoft Technology','New Sangavi, Pune','2020-10-19 09:37:22','2020-10-19 09:37:22'),
('V20201103073214','raju@123','Raju Kadam','9404308607','rajukadam@yahoomail.com','Paras Engineering Ltd, Ahmednagar','Bhalawani, Ahmednagar','2020-11-03 19:32:15','2020-11-03 19:32:15'),
('V20201103073611','arun@123','Arun Pandit','9335648551','arunpandit@gmail.com','Kukut Palan','Kharwandi, Newasa,Ahmednagar','2020-11-03 19:36:11','2020-11-03 19:36:11'),
('V20201103074049','govind@123','Govind Raut','9858563214','govindraut780@yahoomail.com','Nihalant Software,Pune','Gevrai, Beed.','2020-11-03 19:40:49','2020-11-03 19:40:49'),
('V20201103074458','kalu@123','Sagar Kharmale','8456571542','sagarkharmale@gmail.com','Sahyadri Milk Agro','Bhandgaon, Ahmednagar','2020-11-03 19:44:58','2020-11-03 19:44:58'),
('V20201103074909','arun@000','Arvind Kadam','8969352147','arvindkadam89@gmail.com','Yash Furniture Services','Belwandi, Srigonda, Ahmednagar','2020-11-03 19:49:09','2020-11-03 19:49:09'),
('V20201103075231','gaurav@123','Gaurav Wakchaure','8825471235','gauravwakchaure@gmail.com','Apostal Infotech Pvt Ltd','Dattawadi, Pune.','2020-11-03 19:52:31','2020-11-03 19:52:31');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
