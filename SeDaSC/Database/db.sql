/*
SQLyog Community Edition- MySQL GUI v6.07
Host - 5.5.30 : Database - sedasc
*********************************************************************
Server version : 5.5.30
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

create database if not exists `sedasc`;

USE `sedasc`;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

/*Table structure for table `acl` */

DROP TABLE IF EXISTS `acl`;

CREATE TABLE `acl` (
  `fid` varchar(100) DEFAULT NULL,
  `uemail` varchar(100) DEFAULT NULL,
  `fkey` varchar(400) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `acl` */

insert  into `acl`(`fid`,`uemail`,`fkey`) values ('3257023','aliincloudtechnologies@gmail.com','22913'),('3257023','alinowinhyd@gmail.com','514453'),('7835191','aliincloudtechnologies@gmail.com','554571'),('7835191','alinowinhyd@gmail.com','579969'),('4741378','aliincloudtechnologies@gmail.com','419750'),('4741378','alinowinhyd@gmail.com','165509');

/*Table structure for table `dataintgrty` */

DROP TABLE IF EXISTS `dataintgrty`;

CREATE TABLE `dataintgrty` (
  `fid` varchar(1000) DEFAULT NULL,
  `hmac` varchar(5000) DEFAULT NULL,
  `hkey` varchar(1000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `dataintgrty` */

insert  into `dataintgrty`(`fid`,`hmac`,`hkey`) values ('3257023','eabe932bd52f780a3d2ae1df9644b2668bdcb7ec','12515363'),('7835191','e14b1af02604bf09879ef7137dc749e7e2f4859b','18453684'),('4741378','62b674dc1dfa947a9c2865149ab729bf14f88b10','80139478');

/*Table structure for table `files` */

DROP TABLE IF EXISTS `files`;

CREATE TABLE `files` (
  `fid` int(11) DEFAULT NULL,
  `filename` varchar(100) DEFAULT NULL,
  `file_` longblob,
  `group_` varchar(100) DEFAULT NULL,
  `user` varchar(100) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `files` */

insert  into `files`(`fid`,`filename`,`file_`,`group_`,`user`,`status`) values (7835191,'abc.java','İ\\NÜ*\'à Üï•i ößõJ¹ÌjN\rÏË ~ ”ö‡¿\rÚ©V©ƒ0Q´7İ:Ó–,%,‰“é]jƒqBJÄE`!éÃ» rÏõ× £ÂôŞjRuÙ²¡\rªÌšË¾²Ó´RªD4±ò›kˆp˜L¥“\0AõO¿ƒ€%D\0áş‡%¾ÿ©wŠëkÁš -\r.“‡÷]	Ğç‚4‹oÉ99*ú­×àß*	ÍsrÙ)–jk¶©ªğK6Ö ','Group1','y.venkat07@gmail.com','done'),(1208286,'abc.java','package in.ct;\r\nimport in.ct.*;\r\npublic class abc \r\n{\r\n	public static void main(String[] args) \r\n	{\r\n		System.out.println(\"Hello World!\");\r\n		First f= new First();\r\n		f.Mukul();\r\n	}\r\n\r\n}\r\n','Group1','y.venkat07@gmail.com','new'),(4741378,'abc.java','ÛıõÈ5*eË»¥1¤fe!uº®qŞºW÷)`b®’¾Ã9Ã²_°_ßÖ47DãBœN©©˜±tdu=ë7ÓL§”ù[HnÕ­b±Ç\nôğKİ±#R¾	èPøŒz“#S7HŞ›\Zòq€HÀfº[Oã»›XRôâï–«hÃc?á…ÇoÌ\\|;§ãÍƒL2ı672S˜íÅBÇï6×rb†hš÷SFX$<°µ<QşØ5§ğÿã¥','Group1','y.venkat07@gmail.com','done'),(3325768,'abc.java','package in.ct;\r\nimport in.ct.*;\r\npublic class abc \r\n{\r\n	public static void main(String[] args) \r\n	{\r\n		System.out.println(\"Hello World!\");\r\n		First f= new First();\r\n		f.Mukul();\r\n	}\r\n\r\n}\r\n','Group1','y.venkat07@gmail.com','new');

/*Table structure for table `permission` */

DROP TABLE IF EXISTS `permission`;

CREATE TABLE `permission` (
  `fid` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `update_` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`fid`,`email`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `permission` */

insert  into `permission`(`fid`,`email`,`update_`) values ('3257023','aliincloudtechnologies@gmail.com','READ'),('3257023','alinowinhyd@gmail.com','WRITE'),('4741378','aliincloudtechnologies@gmail.com','READ'),('4741378','alinowinhyd@gmail.com','WRITE'),('7835191','aliincloudtechnologies@gmail.com','READ'),('7835191','alinowinhyd@gmail.com','WRITE');

/*Table structure for table `request` */

DROP TABLE IF EXISTS `request`;

CREATE TABLE `request` (
  `sno` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(100) DEFAULT NULL,
  `fid` varchar(100) DEFAULT NULL,
  `group_` varchar(100) DEFAULT NULL,
  `sk` varchar(100) DEFAULT NULL,
  `file_` longblob,
  `status` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`sno`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=latin1;

/*Data for the table `request` */

insert  into `request`(`sno`,`email`,`fid`,`group_`,`sk`,`file_`,`status`) values (36,'aliincloudtechnologies@gmail.com','7835191','Group1','147561','package in.ct;\r\nimport in.ct.*;\r\npublic class abc \r\n{\r\n	public static void main(String[] args) \r\n	{\r\n		System.out.println(\"Hello World!\");\r\n		First f= new First();\r\n		f.Mukul();\r\n	}\r\n\r\n}\r\n','valid'),(46,'alinowinhyd@gmail.com','4741378','Group1','296342','package in.ct;\r\nimport in.ct.*;\r\npublic class abc \r\n{\r\n	public static void main(String[] args) \r\n	{\r\n		System.out.println(\"Hello World!\");\r\n		First f= new First();\r\n		f.Mukul();\r\n	}\r\n\r\n}\r\n','valid');

/*Table structure for table `updatereq` */

DROP TABLE IF EXISTS `updatereq`;

CREATE TABLE `updatereq` (
  `sno` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(100) DEFAULT NULL,
  `fid` varchar(100) DEFAULT NULL,
  `group_` varchar(100) DEFAULT NULL,
  `file_` longblob,
  `status` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`sno`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

/*Data for the table `updatereq` */

insert  into `updatereq`(`sno`,`email`,`fid`,`group_`,`file_`,`status`) values (12,'alinowinhyd@gmail.com','7835191','Group1','package in.ct;\r\nimport in.ct.*;\r\npublic class abc \r\n{\r\n	public static void main(String[] args) \r\n	{\r\n		System.out.println(\"Hello World!\");\r\n		First f= new First();\r\n		f.Mukul();\r\n	}\r\nok }\r\n','complete');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `address` varchar(500) NOT NULL,
  `phone` varchar(14) NOT NULL,
  `email` varchar(100) NOT NULL,
  `pwd` varchar(50) NOT NULL,
  `group_` varchar(50) NOT NULL,
  `member` varchar(20) DEFAULT NULL,
  `ustatus` varchar(50) DEFAULT 'Active',
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `users` */

insert  into `users`(`id`,`name`,`address`,`phone`,`email`,`pwd`,`group_`,`member`,`ustatus`) values (2,'sajid','Mytrivanam,Hyd','9985714374','aliincloudtechnologies@gmail.com','sajid','Group1','User','Revoke'),(4,'ali','Mytrivanam,Hyd','8121953811','alinowinhyd@gmail.com','iamali','Group1','User','Active'),(3,'swamy','Mytrivanam,Hyd','8121953811','cloudtechnologiesprojects@gmail.com','swamy','Group1','User','Access_Denied'),(5,'venkat','siri towers 304','9966143047','y.venkat07@gmail.com','12345','Group1','Owner','Active');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
