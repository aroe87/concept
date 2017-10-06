/*
SQLyog Ultimate v12.4.1 (64 bit)
MySQL - 5.6.35 : Database - concept
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`concept` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `concept`;

/*Table structure for table `admins` */

DROP TABLE IF EXISTS `admins`;

CREATE TABLE `admins` (
  `username` varchar(50) NOT NULL,
  `password` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `nama_lengkap` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `level` varchar(20) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL DEFAULT 'user',
  `blokir` enum('Y','N') CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL DEFAULT 'N',
  `dibuat` datetime DEFAULT NULL,
  `lastupdate` datetime DEFAULT NULL,
  `lastlogin` datetime DEFAULT NULL,
  `ipaddress` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `Keterangan` varchar(50) DEFAULT NULL,
  `alias` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`username`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `admins` */

insert  into `admins`(`username`,`password`,`nama_lengkap`,`level`,`blokir`,`dibuat`,`lastupdate`,`lastlogin`,`ipaddress`,`Keterangan`,`alias`) values 
('1','c4ca4238a0b923820dcc509a6f75849b','1','admin','N',NULL,NULL,'2017-02-14 09:40:00','10.2.2.236',NULL,'1'),
('admin','4f033a0a2bf2fe0b68800a3079545cd1','Administrator','admin','N','0000-00-00 00:00:00','0000-00-00 00:00:00','2015-04-24 15:17:49','118.96.40.19','Administrator','ADMINISTRATOR'),
('agus','fdf169558242ee051cca1479770ebac3','Agus Hikmat','user','N','2014-09-15 12:09:53','2014-09-15 12:09:53','2014-10-27 08:44:58','10.2.2.141','Transport Gunung Putri','AGUS HIKMAT'),
('andri','6bd3108684ccc9dfd40b126877f850b0','Andri Purwanto','procure','N','2013-07-22 04:07:23','2013-07-22 04:07:23','2015-11-23 07:45:12','10.2.2.130','Purchasing Officer ','ANDRI PURWANTO'),
('arnaja','e1373ab47a162e593c38ae2a22dfc1ff','arnaja','procure','N','2015-06-08 11:06:27','2015-06-08 11:06:27','2015-06-08 14:40:12','10.2.2.111','Accounting','ARNAJA'),
('citra','57f3e822f3b24cc70006c33cf133f3de','Citra','admin','N',NULL,NULL,'2015-11-18 16:00:10','10.2.2.32',NULL,'CITRA'),
('fitri','534a0b7aa872ad1340d0071cbfa38697','sri fitriani','admin','N','2015-01-23 03:01:31','2015-01-23 03:01:31','2015-10-01 13:29:27','10.2.2.165','manager','SRI FITRIANI'),
('guntoro','efebfdd23dfa0c7f171f58eb7cc68b73','Guntoro','admin','N','2014-06-13 02:06:57','2014-06-13 02:06:57','2016-05-13 11:43:30','10.2.2.231','Procurement Supervisor','GUNTORO'),
('lina','f6f4deb7dad1c2e5e0b4d6569dc3c1c5','rehulina','admin','N','2014-08-07 12:08:06','2014-08-07 12:08:06','2015-04-23 15:05:00','10.2.2.48','it','REHULINA'),
('mumus','f7e10480d4ee435101f6584400f768c0','Mustaniroh','user','N','2014-09-15 12:09:02','2014-09-15 12:09:02','2014-10-01 17:04:43','10.2.2.57','Packaging','MUSTANIROH'),
('suparmadi','098f6bcd4621d373cade4e832627b4f6','Suparmadi','procure','N','2013-07-06 12:07:05','2013-07-06 12:07:05','2015-11-24 08:58:50','10.2.2.122','Purchasing Officer','PROCUREMENT');

/*Table structure for table `calendar` */

DROP TABLE IF EXISTS `calendar`;

CREATE TABLE `calendar` (
  `date` date NOT NULL,
  `data` varchar(255) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `calendar` */

/*Table structure for table `comment` */

DROP TABLE IF EXISTS `comment`;

CREATE TABLE `comment` (
  `comment` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `comment` */

insert  into `comment`(`comment`) values 
('');

/*Table structure for table `date_format` */

DROP TABLE IF EXISTS `date_format`;

CREATE TABLE `date_format` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `js` varchar(20) NOT NULL,
  `php` varchar(20) NOT NULL,
  `sql` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

/*Data for the table `date_format` */

insert  into `date_format`(`id`,`js`,`php`,`sql`) values 
(1,'mm-dd-yyyy','m-d-Y','%m-%d-%Y'),
(2,'mm/dd/yyyy','m/d/Y','%m/%d/%Y'),
(3,'dd-mm-yyyy','d-m-Y','%d-%m-%Y'),
(4,'dd/mm/yyyy','d/m/Y','%d/%m/%Y');

/*Table structure for table `groups` */

DROP TABLE IF EXISTS `groups`;

CREATE TABLE `groups` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `description` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

/*Data for the table `groups` */

insert  into `groups`(`id`,`name`,`description`) values 
(1,'admin','Administrator'),
(2,'backoffice','Back Office'),
(3,'cashier','Cashier');

/*Table structure for table `history` */

DROP TABLE IF EXISTS `history`;

CREATE TABLE `history` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `document_no` varchar(100) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `qty` int(11) DEFAULT NULL,
  `mode` varchar(20) DEFAULT NULL,
  `created_by` varchar(100) DEFAULT NULL,
  `date_created` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `history` */

/*Table structure for table `inventory_on_hand` */

DROP TABLE IF EXISTS `inventory_on_hand`;

CREATE TABLE `inventory_on_hand` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` varchar(50) DEFAULT NULL,
  `qty_on_hand` int(11) DEFAULT '0',
  `last_updated` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `inventory_on_hand` */

/*Table structure for table `m_kategori` */

DROP TABLE IF EXISTS `m_kategori`;

CREATE TABLE `m_kategori` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `category_id` varchar(25) NOT NULL DEFAULT '',
  `category` varchar(50) DEFAULT NULL,
  `create_user` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

/*Data for the table `m_kategori` */

insert  into `m_kategori`(`id`,`category_id`,`category`,`create_user`) values 
(1,'C00001','CONSUMABLES',NULL),
(2,'C00002','TOOLS - EQUIPMENT',NULL),
(3,'C00003','SERVICES',NULL);

/*Table structure for table `m_package` */

DROP TABLE IF EXISTS `m_package`;

CREATE TABLE `m_package` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `package` varchar(200) DEFAULT NULL,
  `discount` decimal(8,2) DEFAULT NULL,
  `created_by` varchar(255) DEFAULT NULL,
  `date_created` date DEFAULT NULL,
  `updated_by` varchar(255) DEFAULT NULL,
  `last_updated` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=latin1;

/*Data for the table `m_package` */

insert  into `m_package`(`id`,`package`,`discount`,`created_by`,`date_created`,`updated_by`,`last_updated`) values 
(1,'PAKET PERSONAL',0.00,'77','0000-00-00','77\r',NULL),
(2,'PAKET GRUP A',0.00,'77','0000-00-00','77\r',NULL),
(3,'PAKET GRUP B',0.00,'77','0000-00-00','77\r',NULL),
(4,'PAKET GRUP C',0.00,'77','0000-00-00','77\r',NULL),
(5,'PAKET COUPLE A',0.00,'77','0000-00-00','77\r',NULL),
(6,'PAKET COUPLE B',0.00,'77','0000-00-00','77\r',NULL),
(7,'PAKET COUPLE C',0.00,'77','0000-00-00','77\r',NULL),
(8,'PAKET FAMILY MINIMALIS B',0.00,'77','0000-00-00','77\r',NULL),
(9,'PAKET FAMILY MINIMALIS A',0.00,'77','0000-00-00','77\r',NULL),
(10,'PAKET FAMILY MINIMALIS C',0.00,'77','0000-00-00','77\r',NULL),
(11,'PAKET FAMILY MINIMALIS D',0.00,'77','0000-00-00','77\r',NULL),
(12,'PAKET FAMILY MINIMALIS E',0.00,'77','0000-00-00','77\r',NULL),
(13,'PAKET FAMILY MINIMALIS F',0.00,'77','0000-00-00','77\r',NULL),
(14,'PAKET FAMILY CLASSIC A',0.00,'77','0000-00-00','77\r',NULL),
(15,'PAKET FAMILY CLASSIC B',0.00,'77','0000-00-00','77\r',NULL),
(16,'PAKET FAMILY VINTAGE A',0.00,'77','0000-00-00','77\r',NULL),
(17,'PAKET FAMILY VINTAGE B',0.00,'77','0000-00-00','77\r',NULL),
(18,'PAKET BABY C',0.00,'77','0000-00-00','77\r',NULL),
(19,'PAKET BABY A',0.00,'77','0000-00-00','77\r',NULL),
(20,'PAKET BABY B',0.00,'77','0000-00-00','77\r',NULL),
(21,'PAKET BABY D',0.00,'77','0000-00-00','77\r',NULL),
(22,'PAKET MATERNITY A',0.00,'77','0000-00-00','77\r',NULL),
(23,'PAKET MATERNITY B',0.00,'77','0000-00-00','77\r',NULL),
(24,'PAKET MATERNITY C',0.00,'77','0000-00-00','77\r',NULL),
(25,'PAKET WISUDA A',0.00,'77','0000-00-00','77\r',NULL),
(26,'PAKET WISUDA B',0.00,'77','0000-00-00','77\r',NULL),
(27,'PAKET WISUDA C',0.00,'77','0000-00-00','77\r',NULL),
(28,'PAKET WISUDA D',0.00,'77','0000-00-00','77\r',NULL),
(29,'PAKET PREWEDD A',0.00,'77','0000-00-00','77\r',NULL),
(30,'PAKET PREWEDD B',0.00,'77','0000-00-00','77\r',NULL),
(31,'PAKET PREWEDD C',0.00,'77','0000-00-00','77\r',NULL),
(32,'PAKET PREWEDD D + MAKEUP',0.00,'77','0000-00-00','77\r',NULL),
(33,'PAKET PREWEDD E + GAUN +MAKEUP',0.00,'77','0000-00-00','77\r',NULL),
(34,'PAKET PREWEDD F EXPRESS',0.00,'77','0000-00-00','77\r',NULL);

/*Table structure for table `m_product` */

DROP TABLE IF EXISTS `m_product`;

CREATE TABLE `m_product` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `product_id` varchar(25) NOT NULL DEFAULT '',
  `id_type` bigint(20) NOT NULL,
  `model` varchar(90) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `spec` varchar(255) DEFAULT NULL,
  `brand` varchar(90) NOT NULL,
  `uom` varchar(30) DEFAULT NULL,
  `lokasi` varchar(90) NOT NULL,
  `active` varchar(1) DEFAULT 'Y',
  `created_by` varchar(34) NOT NULL,
  `date_created` datetime NOT NULL,
  `updated_by` varchar(34) NOT NULL,
  `last_updated` datetime NOT NULL,
  `ip_address` varchar(100) NOT NULL,
  `browser` varchar(255) NOT NULL,
  `min_stock` float(9,2) DEFAULT '0.00',
  `max_stock` float(9,2) DEFAULT '0.00',
  `package_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `material_id` (`product_id`),
  KEY `index5` (`model`),
  KEY `index6` (`description`),
  KEY `index7` (`spec`),
  KEY `index8` (`brand`)
) ENGINE=MyISAM AUTO_INCREMENT=92 DEFAULT CHARSET=latin1;

/*Data for the table `m_product` */

insert  into `m_product`(`id`,`product_id`,`id_type`,`model`,`description`,`spec`,`brand`,`uom`,`lokasi`,`active`,`created_by`,`date_created`,`updated_by`,`last_updated`,`ip_address`,`browser`,`min_stock`,`max_stock`,`package_id`) values 
(1,'1',1,'','CETAK 4R','','','pcs','','Y','77','0000-00-00 00:00:00','77','0000-00-00 00:00:00','','',0.00,0.00,NULL),
(2,'2',1,'','CETAK 5R','','','pcs','','Y','77','0000-00-00 00:00:00','77','0000-00-00 00:00:00','','',0.00,0.00,NULL),
(3,'3',1,'','CETAK 6R','','','pcs','','Y','77','0000-00-00 00:00:00','77','0000-00-00 00:00:00','','',0.00,0.00,NULL),
(4,'4',1,'','CETAK 20X30','','','pcs','','Y','77','0000-00-00 00:00:00','77','0000-00-00 00:00:00','','',0.00,0.00,NULL),
(5,'5',1,'','CETAK 30X40','','','pcs','','Y','77','0000-00-00 00:00:00','77','0000-00-00 00:00:00','','',0.00,0.00,NULL),
(6,'6',1,'','CETAK 40X60','','','pcs','','Y','77','0000-00-00 00:00:00','77','0000-00-00 00:00:00','','',0.00,0.00,NULL),
(7,'7',1,'','CETAK 50X75','','','pcs','','Y','77','0000-00-00 00:00:00','77','0000-00-00 00:00:00','','',0.00,0.00,NULL),
(8,'8',1,'','CETAK 60X90','','','pcs','','Y','77','0000-00-00 00:00:00','77','0000-00-00 00:00:00','','',0.00,0.00,NULL),
(9,'9',1,'','CETAK 20X30 CANVAS','','','pcs','','Y','77','0000-00-00 00:00:00','77','0000-00-00 00:00:00','','',0.00,0.00,NULL),
(10,'10',1,'','CETAK 30X40 CANVAS','','','pcs','','Y','77','0000-00-00 00:00:00','77','0000-00-00 00:00:00','','',0.00,0.00,NULL),
(11,'11',1,'','CETAK 40X60 CANVAS','','','pcs','','Y','77','0000-00-00 00:00:00','77','0000-00-00 00:00:00','','',0.00,0.00,NULL),
(12,'12',1,'','CETAK 50X75 CANVAS','','','pcs','','Y','77','0000-00-00 00:00:00','77','0000-00-00 00:00:00','','',0.00,0.00,NULL),
(13,'13',1,'','CETAK 60X90 CANVAS','','','pcs','','Y','77','0000-00-00 00:00:00','77','0000-00-00 00:00:00','','',0.00,0.00,NULL),
(14,'14',3,'','FRAME 4R MINIMALIS','','','pcs','','Y','77','0000-00-00 00:00:00','77','0000-00-00 00:00:00','','',0.00,0.00,NULL),
(15,'15',3,'','FRAME 6R MINIMALIS','','','pcs','','Y','77','0000-00-00 00:00:00','77','0000-00-00 00:00:00','','',0.00,0.00,NULL),
(16,'16',3,'','FRAME 10R MINIMALIS','','','pcs','','Y','77','0000-00-00 00:00:00','77','0000-00-00 00:00:00','','',0.00,0.00,NULL),
(17,'17',3,'','FRAME 30X40 MINIMALIS','','','pcs','','Y','77','0000-00-00 00:00:00','77','0000-00-00 00:00:00','','',0.00,0.00,NULL),
(18,'18',3,'','FRAME 40X60 MINIMALIS','','','pcs','','Y','77','0000-00-00 00:00:00','77','0000-00-00 00:00:00','','',0.00,0.00,NULL),
(19,'19',3,'','FRAME 4R ENGSEL','','','pcs','','Y','77','0000-00-00 00:00:00','77','0000-00-00 00:00:00','','',0.00,0.00,NULL),
(20,'20',3,'','FRAME MIX JASMINE','','','pcs','','Y','77','0000-00-00 00:00:00','77','0000-00-00 00:00:00','','',0.00,0.00,NULL),
(21,'21',3,'','FRAME MIX 5R 3 OPENING','','','pcs','','Y','77','0000-00-00 00:00:00','77','0000-00-00 00:00:00','','',0.00,0.00,NULL),
(22,'22',3,'','FRAME MIX 4R 3 OPENING','','','pcs','','Y','77','0000-00-00 00:00:00','77','0000-00-00 00:00:00','','',0.00,0.00,NULL),
(23,'23',3,'','FRAME MIX BABY','','','pcs','','Y','77','0000-00-00 00:00:00','77','0000-00-00 00:00:00','','',0.00,0.00,NULL),
(24,'24',3,'','FRAME MIX 5 ','','','pcs','','Y','77','0000-00-00 00:00:00','77','0000-00-00 00:00:00','','',0.00,0.00,NULL),
(25,'25',3,'','FRAME 50X75 CLASSIC','','','pcs','','Y','77','0000-00-00 00:00:00','77','0000-00-00 00:00:00','','',0.00,0.00,NULL),
(26,'26',3,'','FRAME 60X90 CLASSIC','','','pcs','','Y','77','0000-00-00 00:00:00','77','0000-00-00 00:00:00','','',0.00,0.00,NULL),
(27,'27',3,'','FRAME 50X75 VINTAGE','','','pcs','','Y','77','0000-00-00 00:00:00','77','0000-00-00 00:00:00','','',0.00,0.00,NULL),
(28,'28',3,'','FRAME 60X90 VINTAGE','','','pcs','','Y','77','0000-00-00 00:00:00','77','0000-00-00 00:00:00','','',0.00,0.00,NULL),
(29,'29',1,'','4R + FRAME MINIMALIS','','','pcs','','Y','77','0000-00-00 00:00:00','77','0000-00-00 00:00:00','','',0.00,0.00,NULL),
(30,'30',1,'','5R + FRAME MINIMALIS','','','pcs','','Y','77','0000-00-00 00:00:00','77','0000-00-00 00:00:00','','',0.00,0.00,NULL),
(31,'31',1,'','6R + FRAME MINIMALIS','','','pcs','','Y','77','0000-00-00 00:00:00','77','0000-00-00 00:00:00','','',0.00,0.00,NULL),
(32,'32',1,'','10R + FRAME MINIMALIS','','','pcs','','Y','77','0000-00-00 00:00:00','77','0000-00-00 00:00:00','','',0.00,0.00,NULL),
(33,'33',1,'','30X40 + FRAME MINIMALIS','','','pcs','','Y','77','0000-00-00 00:00:00','77','0000-00-00 00:00:00','','',0.00,0.00,NULL),
(34,'34',1,'','40X60 + FRAME MINIMALIS','','','pcs','','Y','77','0000-00-00 00:00:00','77','0000-00-00 00:00:00','','',0.00,0.00,NULL),
(35,'35',1,'','CETAK + FRAME 4R ENGSEL','','','pcs','','Y','77','0000-00-00 00:00:00','77','0000-00-00 00:00:00','','',0.00,0.00,NULL),
(36,'36',1,'','CETAK + FRAME MIX JASMINE','','','pcs','','Y','77','0000-00-00 00:00:00','77','0000-00-00 00:00:00','','',0.00,0.00,NULL),
(37,'37',1,'','CETAK + FRAME MIX 5R 3 OPENING','','','pcs','','Y','77','0000-00-00 00:00:00','77','0000-00-00 00:00:00','','',0.00,0.00,NULL),
(38,'38',1,'','CETAK + FRAME MIX 4R 3 OPENING','','','pcs','','Y','77','0000-00-00 00:00:00','77','0000-00-00 00:00:00','','',0.00,0.00,NULL),
(39,'39',1,'','CETAK + FRAME MIX BABY','','','pcs','','Y','77','0000-00-00 00:00:00','77','0000-00-00 00:00:00','','',0.00,0.00,NULL),
(40,'40',1,'','CETAK + FRAME MIX 5 ','','','pcs','','Y','77','0000-00-00 00:00:00','77','0000-00-00 00:00:00','','',0.00,0.00,NULL),
(41,'41',1,'','50X75 CANVAS + FRAME CLASSIC','','','pcs','','Y','77','0000-00-00 00:00:00','77','0000-00-00 00:00:00','','',0.00,0.00,NULL),
(42,'42',1,'','60X90 CANVAS + FRAME CLASSIC','','','pcs','','Y','77','0000-00-00 00:00:00','77','0000-00-00 00:00:00','','',0.00,0.00,NULL),
(43,'43',1,'','50X75 CANVAS + FRAME VINTAGE','','','pcs','','Y','77','0000-00-00 00:00:00','77','0000-00-00 00:00:00','','',0.00,0.00,NULL),
(44,'44',1,'','60X90 CANVAS + FRAME VINTAGE','','','pcs','','Y','77','0000-00-00 00:00:00','77','0000-00-00 00:00:00','','',0.00,0.00,NULL),
(45,'45',1,'','30X40 WRAPPING CANVAS','','','pcs','','Y','77','0000-00-00 00:00:00','77','0000-00-00 00:00:00','','',0.00,0.00,NULL),
(46,'46',1,'','40X60 WRAPPING CANVAS','','','pcs','','Y','77','0000-00-00 00:00:00','77','0000-00-00 00:00:00','','',0.00,0.00,NULL),
(47,'47',1,'','50X75 WRAPPING CANVAS','','','pcs','','Y','77','0000-00-00 00:00:00','77','0000-00-00 00:00:00','','',0.00,0.00,NULL),
(48,'48',1,'','60X90 WRAPPING CANVAS','','','pcs','','Y','77','0000-00-00 00:00:00','77','0000-00-00 00:00:00','','',0.00,0.00,NULL),
(49,'49',4,'','JASA FOTO PERSONAL','','','paket','','Y','77','0000-00-00 00:00:00','77','0000-00-00 00:00:00','','',0.00,0.00,NULL),
(50,'50',4,'','JASA FOTO COUPLE','','','paket','','Y','77','0000-00-00 00:00:00','77','0000-00-00 00:00:00','','',0.00,0.00,NULL),
(51,'51',4,'','JASA FOTO GRUP','','','paket','','Y','77','0000-00-00 00:00:00','77','0000-00-00 00:00:00','','',0.00,0.00,NULL),
(52,'52',4,'','JASA FOTO FAMILY A','','','paket','','Y','77','0000-00-00 00:00:00','77','0000-00-00 00:00:00','','',0.00,0.00,NULL),
(53,'53',4,'','JASA FOTO FAMILY B','','','paket','','Y','77','0000-00-00 00:00:00','77','0000-00-00 00:00:00','','',0.00,0.00,NULL),
(54,'54',4,'','JASA FOTO FAMILY C','','','paket','','Y','77','0000-00-00 00:00:00','77','0000-00-00 00:00:00','','',0.00,0.00,NULL),
(55,'55',4,'','JASA FOTO WISUDA A','','','paket','','Y','77','0000-00-00 00:00:00','77','0000-00-00 00:00:00','','',0.00,0.00,NULL),
(56,'56',4,'','JASA FOTO WISUDA B','','','paket','','Y','77','0000-00-00 00:00:00','77','0000-00-00 00:00:00','','',0.00,0.00,NULL),
(57,'57',4,'','JASA FOTO FAMILY D','','','paket','','Y','77','0000-00-00 00:00:00','77','0000-00-00 00:00:00','','',0.00,0.00,NULL),
(58,'58',4,'','JASA FOTO PREWEDD A','','','paket','','Y','77','0000-00-00 00:00:00','77','0000-00-00 00:00:00','','',0.00,0.00,NULL),
(59,'59',4,'','JASA FOTO PREWEDD B','','','paket','','Y','77','0000-00-00 00:00:00','77','0000-00-00 00:00:00','','',0.00,0.00,NULL),
(60,'60',4,'','JASA FOTO PREWEDD C','','','paket','','Y','77','0000-00-00 00:00:00','77','0000-00-00 00:00:00','','',0.00,0.00,NULL),
(61,'61',4,'','JASA FOTO PREWEDD D','','','paket','','Y','77','0000-00-00 00:00:00','77','0000-00-00 00:00:00','','',0.00,0.00,NULL),
(62,'62',4,'','JASA FOTO PREWEDD E','','','paket','','Y','77','0000-00-00 00:00:00','77','0000-00-00 00:00:00','','',0.00,0.00,NULL),
(63,'63',4,'','JASA FOTO PREWEDD EXPRESS','','','paket','','Y','77','0000-00-00 00:00:00','77','0000-00-00 00:00:00','','',0.00,0.00,NULL),
(64,'64',4,'','JASA FOTO BABY A','','','paket','','Y','77','0000-00-00 00:00:00','77','0000-00-00 00:00:00','','',0.00,0.00,NULL),
(65,'65',4,'','JASA FOTO BABY B','','','paket','','Y','77','0000-00-00 00:00:00','77','0000-00-00 00:00:00','','',0.00,0.00,NULL),
(66,'66',4,'','JASA FOTO BABY C','','','paket','','Y','77','0000-00-00 00:00:00','77','0000-00-00 00:00:00','','',0.00,0.00,NULL),
(67,'67',4,'','JASA FOTO MATERNITY A','','','paket','','Y','77','0000-00-00 00:00:00','77','0000-00-00 00:00:00','','',0.00,0.00,NULL),
(68,'68',4,'','JASA FOTO GRUP B','','','paket','','Y','77','0000-00-00 00:00:00','77','0000-00-00 00:00:00','','',0.00,0.00,NULL),
(69,'69',4,'','JASA FOTO COUPLE C','','','paket','','Y','77','0000-00-00 00:00:00','77','0000-00-00 00:00:00','','',0.00,0.00,NULL),
(70,'70',4,'','SEWA STUDIO','','','paket','','Y','77','0000-00-00 00:00:00','77','0000-00-00 00:00:00','','',0.00,0.00,NULL),
(71,'71',4,'','SEWA FOTOGRAFER','','','paket','','Y','77','0000-00-00 00:00:00','77','0000-00-00 00:00:00','','',0.00,0.00,NULL),
(72,'72',4,'','MAKEUP PERSONAL','','','paket','','Y','77','0000-00-00 00:00:00','77','0000-00-00 00:00:00','','',0.00,0.00,NULL),
(73,'73',4,'','MAKEUP COUPLE','','','paket','','Y','77','0000-00-00 00:00:00','77','0000-00-00 00:00:00','','',0.00,0.00,NULL),
(74,'74',4,'','MAKEUP PREWEDDING 1 TEMA','','','paket','','Y','77','0000-00-00 00:00:00','77','0000-00-00 00:00:00','','',0.00,0.00,NULL),
(75,'75',4,'','MAKEUP PREWEDDING 2 TEMA','','','paket','','Y','77','0000-00-00 00:00:00','77','0000-00-00 00:00:00','','',0.00,0.00,NULL),
(76,'76',4,'','MAKEUP MATERNITY','','','paket','','Y','77','0000-00-00 00:00:00','77','0000-00-00 00:00:00','','',0.00,0.00,NULL),
(77,'77',1,'','CD + COVER','','','pcs','','Y','77','0000-00-00 00:00:00','77','0000-00-00 00:00:00','','',0.00,0.00,NULL),
(78,'78',4,'','JASA FOTO WISUDA C','','','paket','','Y','77','0000-00-00 00:00:00','77','0000-00-00 00:00:00','','',0.00,0.00,NULL),
(79,'79',4,'','PENAMBAHAN ORANG','','','orang','','Y','77','0000-00-00 00:00:00','77','0000-00-00 00:00:00','','',0.00,0.00,NULL),
(80,'80',5,'','KOSTUM/GAUN','','','paket','','Y','77','0000-00-00 00:00:00','77','0000-00-00 00:00:00','','',0.00,0.00,NULL),
(81,'81',4,'','LEMBURAN PAKET EXPRESS','','','paket','','Y','77','0000-00-00 00:00:00','77','0000-00-00 00:00:00','','',0.00,0.00,NULL),
(82,'82',4,'','JASA FOTO FAMILY E','','','paket','','Y','77','0000-00-00 00:00:00','77','0000-00-00 00:00:00','','',0.00,0.00,NULL),
(83,'83',4,'','JASA FOTO WISUDA D','','','paket','','Y','77','0000-00-00 00:00:00','77','0000-00-00 00:00:00','','',0.00,0.00,NULL),
(84,'84',5,'','TAMBAH TEMA','','','paket','','Y','77','0000-00-00 00:00:00','77','0000-00-00 00:00:00','','',0.00,0.00,NULL),
(85,'119',1,'','CETAK 10R GRUP','','','pcs','','Y','77','0000-00-00 00:00:00','77','0000-00-00 00:00:00','','',0.00,0.00,NULL),
(86,'120',1,'','CETAK TAMBAHAN 20X30','','','pcs','','Y','77','0000-00-00 00:00:00','77','0000-00-00 00:00:00','','',0.00,0.00,NULL),
(87,'121',1,'','CETAK TAMBAHAN 30X40','','','pcs','','Y','77','0000-00-00 00:00:00','77','0000-00-00 00:00:00','','',0.00,0.00,NULL),
(88,'122',1,'','CETAK TAMBAHAN 40X60','','','pcs','','Y','77','0000-00-00 00:00:00','77','0000-00-00 00:00:00','','',0.00,0.00,NULL),
(89,'123',1,'','TAMBAHAN CETAK 10R + FRAME MINIMALIS','','','paket','','Y','77','0000-00-00 00:00:00','77','0000-00-00 00:00:00','','',0.00,0.00,NULL),
(90,'124',1,'','TAMBAHAN CETAK 30X40 + FRAME MINIMALIS','','','paket','','Y','77','0000-00-00 00:00:00','77','0000-00-00 00:00:00','','',0.00,0.00,NULL),
(91,'125',1,'','TAMBAHAN CETAK 40X60 + FRAME MINIMALIS','','','paket','','Y','77','0000-00-00 00:00:00','77','0000-00-00 00:00:00','','',0.00,0.00,NULL);

/*Table structure for table `m_type` */

DROP TABLE IF EXISTS `m_type`;

CREATE TABLE `m_type` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `type_id` varchar(25) NOT NULL,
  `type` varchar(45) NOT NULL,
  `id_category` bigint(20) NOT NULL,
  `created_by` varchar(255) DEFAULT NULL,
  `date_created` datetime DEFAULT NULL,
  `updated_by` varchar(255) DEFAULT NULL,
  `last_updated` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

/*Data for the table `m_type` */

insert  into `m_type`(`id`,`type_id`,`type`,`id_category`,`created_by`,`date_created`,`updated_by`,`last_updated`) values 
(1,'T00001','GENERAL',1,'64','2017-04-22 18:33:30',NULL,NULL),
(2,'T00002','ALBUM',1,'64','2017-04-22 18:33:48',NULL,NULL),
(3,'T00003','FRAME',1,'64','2017-04-22 18:34:04',NULL,NULL),
(4,'T00004','PHOTO STUDIO',3,'64','2017-04-22 18:43:12',NULL,NULL),
(5,'T00005','OTHER',1,'77','2017-05-03 16:30:28',NULL,NULL),
(6,'T00006','TOOLS',2,'77','2017-10-06 20:25:39',NULL,NULL);

/*Table structure for table `m_vendor` */

DROP TABLE IF EXISTS `m_vendor`;

CREATE TABLE `m_vendor` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `vendor_id` varchar(20) NOT NULL,
  `alias` varchar(15) NOT NULL DEFAULT '',
  `vendor` varchar(50) NOT NULL DEFAULT '',
  `address1` text,
  `address2` text,
  `email` varchar(45) DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `country` varchar(50) DEFAULT NULL,
  `phone` varchar(50) DEFAULT NULL,
  `fax` varchar(50) DEFAULT NULL,
  `cp` varchar(50) DEFAULT NULL,
  `remarks` text,
  `description` text,
  `active` enum('Y','N') DEFAULT 'Y',
  `date_created` date DEFAULT NULL,
  `created_by` varchar(100) DEFAULT NULL,
  `last_updated` date DEFAULT NULL,
  `updated_by` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Data for the table `m_vendor` */

/*Table structure for table `message` */

DROP TABLE IF EXISTS `message`;

CREATE TABLE `message` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` datetime NOT NULL,
  `to` varchar(220) DEFAULT NULL,
  `subject` varchar(220) DEFAULT NULL,
  `from` varchar(225) DEFAULT NULL,
  `from_id` int(23) DEFAULT NULL,
  `message` text,
  `description` varchar(252) DEFAULT NULL,
  `image` varchar(252) DEFAULT NULL,
  `document` varchar(252) DEFAULT NULL,
  `remark` varchar(252) DEFAULT NULL,
  `status_pesan` varchar(80) DEFAULT 'sent',
  `bool` bit(1) DEFAULT NULL,
  `draft` bit(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `message` */

/*Table structure for table `mpd` */

DROP TABLE IF EXISTS `mpd`;

CREATE TABLE `mpd` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_header` int(11) DEFAULT NULL,
  `product_id` varchar(20) DEFAULT NULL,
  `qty` int(11) DEFAULT NULL,
  `created_by` varchar(100) DEFAULT NULL,
  `date_created` datetime DEFAULT NULL,
  `updated_by` varchar(100) DEFAULT NULL,
  `last_updated` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=120 DEFAULT CHARSET=latin1;

/*Data for the table `mpd` */

insert  into `mpd`(`id`,`id_header`,`product_id`,`qty`,`created_by`,`date_created`,`updated_by`,`last_updated`) values 
(1,1,'1',3,'77','0000-00-00 00:00:00','77','0000-00-00 00:00:00'),
(2,1,'49',1,'77','0000-00-00 00:00:00','77','0000-00-00 00:00:00'),
(3,2,'1',1,'77','0000-00-00 00:00:00','77','0000-00-00 00:00:00'),
(4,2,'51',1,'77','0000-00-00 00:00:00','77','0000-00-00 00:00:00'),
(5,3,'3',1,'77','0000-00-00 00:00:00','77','0000-00-00 00:00:00'),
(6,3,'51',1,'77','0000-00-00 00:00:00','77','0000-00-00 00:00:00'),
(7,4,'119',1,'77','0000-00-00 00:00:00','77','0000-00-00 00:00:00'),
(8,4,'51',1,'77','0000-00-00 00:00:00','77','0000-00-00 00:00:00'),
(9,5,'1',5,'77','0000-00-00 00:00:00','77','0000-00-00 00:00:00'),
(10,5,'50',1,'77','0000-00-00 00:00:00','77','0000-00-00 00:00:00'),
(11,6,'1',2,'77','0000-00-00 00:00:00','77','0000-00-00 00:00:00'),
(12,6,'19',1,'77','0000-00-00 00:00:00','77','0000-00-00 00:00:00'),
(13,6,'50',1,'77','0000-00-00 00:00:00','77','0000-00-00 00:00:00'),
(14,7,'31',2,'77','0000-00-00 00:00:00','77','0000-00-00 00:00:00'),
(15,7,'69',1,'77','0000-00-00 00:00:00','77','0000-00-00 00:00:00'),
(16,8,'32',1,'77','0000-00-00 00:00:00','77','0000-00-00 00:00:00'),
(17,8,'29',2,'77','0000-00-00 00:00:00','77','0000-00-00 00:00:00'),
(18,8,'77',1,'77','0000-00-00 00:00:00','77','0000-00-00 00:00:00'),
(19,8,'52',1,'77','0000-00-00 00:00:00','77','0000-00-00 00:00:00'),
(20,9,'37',1,'77','0000-00-00 00:00:00','77','0000-00-00 00:00:00'),
(21,9,'77',1,'77','0000-00-00 00:00:00','77','0000-00-00 00:00:00'),
(22,9,'53',1,'77','0000-00-00 00:00:00','77','0000-00-00 00:00:00'),
(23,10,'33',1,'77','0000-00-00 00:00:00','77','0000-00-00 00:00:00'),
(24,10,'29',2,'77','0000-00-00 00:00:00','77','0000-00-00 00:00:00'),
(25,10,'77',1,'77','0000-00-00 00:00:00','77','0000-00-00 00:00:00'),
(26,10,'55',1,'77','0000-00-00 00:00:00','77','0000-00-00 00:00:00'),
(27,11,'34',1,'77','0000-00-00 00:00:00','77','0000-00-00 00:00:00'),
(28,11,'29',2,'77','0000-00-00 00:00:00','77','0000-00-00 00:00:00'),
(29,11,'77',1,'77','0000-00-00 00:00:00','77','0000-00-00 00:00:00'),
(30,11,'50',1,'77','0000-00-00 00:00:00','77','0000-00-00 00:00:00'),
(31,12,'46',1,'77','0000-00-00 00:00:00','77','0000-00-00 00:00:00'),
(32,12,'29',2,'77','0000-00-00 00:00:00','77','0000-00-00 00:00:00'),
(33,12,'77',1,'77','0000-00-00 00:00:00','77','0000-00-00 00:00:00'),
(34,12,'54',1,'77','0000-00-00 00:00:00','77','0000-00-00 00:00:00'),
(35,13,'47',1,'77','0000-00-00 00:00:00','77','0000-00-00 00:00:00'),
(36,13,'29',2,'77','0000-00-00 00:00:00','77','0000-00-00 00:00:00'),
(37,13,'77',1,'77','0000-00-00 00:00:00','77','0000-00-00 00:00:00'),
(38,13,'54',1,'77','0000-00-00 00:00:00','77','0000-00-00 00:00:00'),
(39,14,'41',1,'77','0000-00-00 00:00:00','77','0000-00-00 00:00:00'),
(40,14,'29',3,'77','0000-00-00 00:00:00','77','0000-00-00 00:00:00'),
(41,14,'77',1,'77','0000-00-00 00:00:00','77','0000-00-00 00:00:00'),
(42,14,'57',1,'77','0000-00-00 00:00:00','77','0000-00-00 00:00:00'),
(43,15,'42',1,'77','0000-00-00 00:00:00','77','0000-00-00 00:00:00'),
(44,15,'31',3,'77','0000-00-00 00:00:00','77','0000-00-00 00:00:00'),
(45,15,'77',1,'77','0000-00-00 00:00:00','77','0000-00-00 00:00:00'),
(46,15,'57',1,'77','0000-00-00 00:00:00','77','0000-00-00 00:00:00'),
(47,16,'43',1,'77','0000-00-00 00:00:00','77','0000-00-00 00:00:00'),
(48,16,'31',3,'77','0000-00-00 00:00:00','77','0000-00-00 00:00:00'),
(49,16,'77',1,'77','0000-00-00 00:00:00','77','0000-00-00 00:00:00'),
(50,16,'57',1,'77','0000-00-00 00:00:00','77','0000-00-00 00:00:00'),
(51,17,'44',1,'77','0000-00-00 00:00:00','77','0000-00-00 00:00:00'),
(52,17,'31',3,'77','0000-00-00 00:00:00','77','0000-00-00 00:00:00'),
(53,17,'77',1,'77','0000-00-00 00:00:00','77','0000-00-00 00:00:00'),
(54,17,'82',1,'77','0000-00-00 00:00:00','77','0000-00-00 00:00:00'),
(55,18,'32',1,'77','0000-00-00 00:00:00','77','0000-00-00 00:00:00'),
(56,18,'29',2,'77','0000-00-00 00:00:00','77','0000-00-00 00:00:00'),
(57,18,'77',1,'77','0000-00-00 00:00:00','77','0000-00-00 00:00:00'),
(58,18,'65',1,'77','0000-00-00 00:00:00','77','0000-00-00 00:00:00'),
(59,19,'38',1,'77','0000-00-00 00:00:00','77','0000-00-00 00:00:00'),
(60,19,'77',1,'77','0000-00-00 00:00:00','77','0000-00-00 00:00:00'),
(61,19,'64',1,'77','0000-00-00 00:00:00','77','0000-00-00 00:00:00'),
(62,20,'40',1,'77','0000-00-00 00:00:00','77','0000-00-00 00:00:00'),
(63,20,'77',1,'77','0000-00-00 00:00:00','77','0000-00-00 00:00:00'),
(64,20,'66',1,'77','0000-00-00 00:00:00','77','0000-00-00 00:00:00'),
(65,21,'46',1,'77','0000-00-00 00:00:00','77','0000-00-00 00:00:00'),
(66,21,'39',2,'77','0000-00-00 00:00:00','77','0000-00-00 00:00:00'),
(67,21,'77',1,'77','0000-00-00 00:00:00','77','0000-00-00 00:00:00'),
(68,21,'65',1,'77','0000-00-00 00:00:00','77','0000-00-00 00:00:00'),
(69,22,'38',1,'77','0000-00-00 00:00:00','77','0000-00-00 00:00:00'),
(70,22,'77',1,'77','0000-00-00 00:00:00','77','0000-00-00 00:00:00'),
(71,22,'67',1,'77','0000-00-00 00:00:00','77','0000-00-00 00:00:00'),
(72,23,'32',1,'77','0000-00-00 00:00:00','77','0000-00-00 00:00:00'),
(73,23,'29',2,'77','0000-00-00 00:00:00','77','0000-00-00 00:00:00'),
(74,23,'77',1,'77','0000-00-00 00:00:00','77','0000-00-00 00:00:00'),
(75,23,'67',1,'77','0000-00-00 00:00:00','77','0000-00-00 00:00:00'),
(76,24,'46',1,'77','0000-00-00 00:00:00','77','0000-00-00 00:00:00'),
(77,24,'35',1,'77','0000-00-00 00:00:00','77','0000-00-00 00:00:00'),
(78,24,'77',1,'77','0000-00-00 00:00:00','77','0000-00-00 00:00:00'),
(79,24,'67',1,'77','0000-00-00 00:00:00','77','0000-00-00 00:00:00'),
(80,25,'32',1,'77','0000-00-00 00:00:00','77','0000-00-00 00:00:00'),
(81,25,'29',2,'77','0000-00-00 00:00:00','77','0000-00-00 00:00:00'),
(82,25,'77',1,'77','0000-00-00 00:00:00','77','0000-00-00 00:00:00'),
(83,25,'52',1,'77','0000-00-00 00:00:00','77','0000-00-00 00:00:00'),
(84,26,'33',1,'77','0000-00-00 00:00:00','77','0000-00-00 00:00:00'),
(85,26,'29',2,'77','0000-00-00 00:00:00','77','0000-00-00 00:00:00'),
(86,26,'77',1,'77','0000-00-00 00:00:00','77','0000-00-00 00:00:00'),
(87,26,'54',1,'77','0000-00-00 00:00:00','77','0000-00-00 00:00:00'),
(88,27,'34',1,'77','0000-00-00 00:00:00','77','0000-00-00 00:00:00'),
(89,27,'31',2,'77','0000-00-00 00:00:00','77','0000-00-00 00:00:00'),
(90,27,'77',1,'77','0000-00-00 00:00:00','77','0000-00-00 00:00:00'),
(91,27,'78',1,'77','0000-00-00 00:00:00','77','0000-00-00 00:00:00'),
(92,28,'41',1,'77','0000-00-00 00:00:00','77','0000-00-00 00:00:00'),
(93,28,'31',3,'77','0000-00-00 00:00:00','77','0000-00-00 00:00:00'),
(94,28,'77',1,'77','0000-00-00 00:00:00','77','0000-00-00 00:00:00'),
(95,28,'83',1,'77','0000-00-00 00:00:00','77','0000-00-00 00:00:00'),
(96,29,'34',1,'77','0000-00-00 00:00:00','77','0000-00-00 00:00:00'),
(97,29,'77',1,'77','0000-00-00 00:00:00','77','0000-00-00 00:00:00'),
(98,29,'58',1,'77','0000-00-00 00:00:00','77','0000-00-00 00:00:00'),
(99,30,'3',5,'77','0000-00-00 00:00:00','77','0000-00-00 00:00:00'),
(100,30,'77',1,'77','0000-00-00 00:00:00','77','0000-00-00 00:00:00'),
(101,30,'59',1,'77','0000-00-00 00:00:00','77','0000-00-00 00:00:00'),
(102,31,'34',2,'77','0000-00-00 00:00:00','77','0000-00-00 00:00:00'),
(103,31,'77',1,'77','0000-00-00 00:00:00','77','0000-00-00 00:00:00'),
(104,31,'60',1,'77','0000-00-00 00:00:00','77','0000-00-00 00:00:00'),
(105,32,'34',2,'77','0000-00-00 00:00:00','77','0000-00-00 00:00:00'),
(106,32,'29',4,'77','0000-00-00 00:00:00','77','0000-00-00 00:00:00'),
(107,32,'77',1,'77','0000-00-00 00:00:00','77','0000-00-00 00:00:00'),
(108,32,'75',1,'77','0000-00-00 00:00:00','77','0000-00-00 00:00:00'),
(109,32,'61',1,'77','0000-00-00 00:00:00','77','0000-00-00 00:00:00'),
(110,33,'34',2,'77','0000-00-00 00:00:00','77','0000-00-00 00:00:00'),
(111,33,'29',1,'77','0000-00-00 00:00:00','77','0000-00-00 00:00:00'),
(112,33,'77',1,'77','0000-00-00 00:00:00','77','0000-00-00 00:00:00'),
(113,33,'75',1,'77','0000-00-00 00:00:00','77','0000-00-00 00:00:00'),
(114,33,'80',1,'77','0000-00-00 00:00:00','77','0000-00-00 00:00:00'),
(115,33,'62',1,'77','0000-00-00 00:00:00','77','0000-00-00 00:00:00'),
(116,34,'34',2,'77','0000-00-00 00:00:00','77','0000-00-00 00:00:00'),
(117,34,'77',1,'77','0000-00-00 00:00:00','77','0000-00-00 00:00:00'),
(118,34,'81',1,'77','0000-00-00 00:00:00','77','0000-00-00 00:00:00'),
(119,34,'63',1,'77','0000-00-00 00:00:00','77','0000-00-00 00:00:00');

/*Table structure for table `order_detail` */

DROP TABLE IF EXISTS `order_detail`;

CREATE TABLE `order_detail` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `id_header` bigint(20) DEFAULT NULL,
  `tipe` varchar(2) DEFAULT NULL,
  `product_id` varchar(100) DEFAULT NULL,
  `description` text,
  `qty` int(11) DEFAULT NULL,
  `price` decimal(10,0) DEFAULT NULL,
  `subtotal` decimal(10,0) DEFAULT NULL,
  `created_by` varchar(200) DEFAULT NULL,
  `date_created` date DEFAULT NULL,
  `updated_by` varchar(200) DEFAULT NULL,
  `last_updated` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `order_detail` */

/*Table structure for table `order_header` */

DROP TABLE IF EXISTS `order_header`;

CREATE TABLE `order_header` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `order_no` varchar(20) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `customer_name` varchar(200) DEFAULT NULL,
  `customer_phone` varchar(20) DEFAULT NULL,
  `package` varchar(200) DEFAULT NULL,
  `receive_date` date DEFAULT NULL,
  `down_payment` decimal(10,0) DEFAULT NULL,
  `status` varchar(100) DEFAULT 'OPEN',
  `flag_print` enum('Y','N') DEFAULT NULL,
  `discount` decimal(8,2) DEFAULT NULL,
  `subtotal` decimal(10,0) DEFAULT NULL,
  `ppn_amount` decimal(10,0) DEFAULT NULL,
  `total` decimal(10,0) DEFAULT NULL,
  `payment` decimal(10,0) DEFAULT NULL,
  `return` decimal(10,0) DEFAULT NULL,
  `created_by` varchar(200) DEFAULT NULL,
  `date_created` date DEFAULT NULL,
  `updated_by` varchar(200) DEFAULT NULL,
  `last_updated` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `order_header` */

/*Table structure for table `other_expense` */

DROP TABLE IF EXISTS `other_expense`;

CREATE TABLE `other_expense` (
  `id` bigint(20) DEFAULT NULL,
  `category` varchar(200) DEFAULT NULL,
  `description` text,
  `qty` int(11) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `received_by` varchar(200) DEFAULT NULL,
  `created_by` varchar(200) DEFAULT NULL,
  `date_created` date DEFAULT NULL,
  `updated_by` varchar(200) DEFAULT NULL,
  `last_updated` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `other_expense` */

/*Table structure for table `po` */

DROP TABLE IF EXISTS `po`;

CREATE TABLE `po` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `document_no` varchar(50) NOT NULL,
  `date` date DEFAULT NULL,
  `id_vendor` bigint(20) DEFAULT NULL,
  `shipment_date` date DEFAULT NULL,
  `due` varchar(15) DEFAULT NULL,
  `status` enum('Canceled','Revised','Ok') DEFAULT NULL,
  `opt_disc` enum('%','Rp') NOT NULL,
  `disc` int(10) DEFAULT NULL,
  `subtotal` decimal(18,0) NOT NULL DEFAULT '0',
  `ppn_amount` decimal(18,0) NOT NULL DEFAULT '0',
  `disc_amount` decimal(18,0) NOT NULL DEFAULT '0',
  `total` decimal(18,0) NOT NULL DEFAULT '0',
  `date_created` date DEFAULT NULL,
  `created_by` varchar(100) DEFAULT NULL,
  `last_updated` date DEFAULT NULL,
  `updated_by` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQUE_PO` (`document_no`),
  KEY `po_date` (`date`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `po` */

/*Table structure for table `po_item` */

DROP TABLE IF EXISTS `po_item`;

CREATE TABLE `po_item` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `id_header` bigint(20) NOT NULL,
  `id_product` varchar(90) DEFAULT NULL,
  `qty` int(11) DEFAULT NULL,
  `unit` varchar(50) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `remarks` varchar(255) DEFAULT NULL,
  `date_created` date DEFAULT NULL,
  `created_by` varchar(100) DEFAULT NULL,
  `last_updated` date DEFAULT NULL,
  `updated_by` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `pr_id` (`qty`,`price`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

/*Data for the table `po_item` */

/*Table structure for table `receive_slip` */

DROP TABLE IF EXISTS `receive_slip`;

CREATE TABLE `receive_slip` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `document_no` varchar(50) NOT NULL,
  `kategori` varchar(15) NOT NULL,
  `date` date DEFAULT NULL,
  `vendor` varchar(50) NOT NULL DEFAULT '',
  `kurir` varchar(100) DEFAULT NULL,
  `remarks` varchar(25) DEFAULT NULL,
  `created_by` varchar(56) NOT NULL,
  `date_created` datetime NOT NULL,
  `updated_by` varchar(56) NOT NULL,
  `last_updated` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `lpb_no` (`document_no`,`vendor`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `receive_slip` */

/*Table structure for table `receive_slip_wedus` */

DROP TABLE IF EXISTS `receive_slip_wedus`;

CREATE TABLE `receive_slip_wedus` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_header` int(11) NOT NULL,
  `product_id` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `receive_slip_wedus` */

/*Table structure for table `rsd` */

DROP TABLE IF EXISTS `rsd`;

CREATE TABLE `rsd` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_header` int(11) DEFAULT NULL,
  `product_id` varchar(20) DEFAULT NULL,
  `qty` int(11) DEFAULT NULL,
  `qty_on_hand` int(11) DEFAULT NULL,
  `receive_price` decimal(11,0) DEFAULT '0',
  `selling_price` decimal(11,0) DEFAULT '0',
  `remarks` varchar(255) DEFAULT NULL,
  `created_by` varchar(100) DEFAULT NULL,
  `date_created` datetime DEFAULT NULL,
  `updated_by` varchar(100) DEFAULT NULL,
  `last_updated` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `rsd` */

/*Table structure for table `sent_item` */

DROP TABLE IF EXISTS `sent_item`;

CREATE TABLE `sent_item` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` datetime NOT NULL,
  `to` varchar(220) NOT NULL,
  `subject` varchar(220) NOT NULL,
  `from` varchar(225) NOT NULL,
  `from_id` int(23) NOT NULL,
  `message` text NOT NULL,
  `description` varchar(252) NOT NULL,
  `image` varchar(252) NOT NULL,
  `document` varchar(252) NOT NULL,
  `remark` varchar(252) NOT NULL,
  `status_pesan` varchar(80) NOT NULL DEFAULT 'sent',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `sent_item` */

/*Table structure for table `settings` */

DROP TABLE IF EXISTS `settings`;

CREATE TABLE `settings` (
  `setting_id` int(1) NOT NULL,
  `logo` varchar(255) NOT NULL,
  `logo2` varchar(255) NOT NULL,
  `site_name` varchar(55) NOT NULL,
  `language` varchar(20) NOT NULL,
  `default_warehouse` int(2) NOT NULL,
  `currency_prefix` varchar(3) NOT NULL,
  `default_invoice_type` int(2) NOT NULL,
  `default_tax_rate` int(2) NOT NULL,
  `rows_per_page` int(2) NOT NULL,
  `no_of_rows` int(2) NOT NULL,
  `total_rows` int(2) NOT NULL,
  `version` varchar(5) NOT NULL DEFAULT '1.2',
  `default_tax_rate2` int(11) NOT NULL DEFAULT '0',
  `dateformat` int(11) NOT NULL,
  `sales_prefix` varchar(20) NOT NULL,
  `quote_prefix` varchar(55) NOT NULL,
  `purchase_prefix` varchar(55) NOT NULL,
  `transfer_prefix` varchar(55) NOT NULL,
  `barcode_symbology` varchar(20) NOT NULL,
  `theme` varchar(20) NOT NULL,
  `product_serial` tinyint(4) NOT NULL,
  `default_discount` int(11) NOT NULL,
  `discount_option` tinyint(4) NOT NULL,
  `discount_method` tinyint(4) NOT NULL,
  `tax1` tinyint(4) NOT NULL,
  `tax2` tinyint(4) NOT NULL,
  PRIMARY KEY (`setting_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `settings` */

/*Table structure for table `trash` */

DROP TABLE IF EXISTS `trash`;

CREATE TABLE `trash` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `to` varchar(220) NOT NULL,
  `subject` varchar(220) NOT NULL,
  `from` varchar(225) NOT NULL,
  `from_id` int(23) NOT NULL,
  `message` text NOT NULL,
  `description` varchar(252) NOT NULL,
  `image` varchar(252) NOT NULL,
  `document` varchar(252) NOT NULL,
  `remark` varchar(252) NOT NULL,
  `status_pesan` varchar(80) NOT NULL DEFAULT 'sent',
  `delete_by` varchar(80) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `trash` */

/*Table structure for table `unit` */

DROP TABLE IF EXISTS `unit`;

CREATE TABLE `unit` (
  `unit_id` int(5) NOT NULL AUTO_INCREMENT,
  `unit` varchar(20) NOT NULL DEFAULT '',
  PRIMARY KEY (`unit_id`,`unit`)
) ENGINE=MyISAM AUTO_INCREMENT=36 DEFAULT CHARSET=latin1;

/*Data for the table `unit` */

insert  into `unit`(`unit_id`,`unit`) values 
(1,'%'),
(2,'BLN'),
(3,'BOX'),
(4,'BTG'),
(5,'BTL'),
(6,'BUKU'),
(7,'DRUM'),
(8,'DUS'),
(9,'GLN'),
(10,'HOURS'),
(11,'KG'),
(12,'KLG'),
(13,'LBR'),
(14,'LOT'),
(15,'LSN'),
(16,'LTR'),
(17,'LUSIN'),
(18,'M3'),
(19,'ML'),
(20,'MT'),
(21,'MTR'),
(22,'PAIL'),
(23,'PCS'),
(24,'PK'),
(25,'PSG'),
(26,'RIM'),
(27,'ROLL'),
(28,'SET'),
(29,'SHEET'),
(30,'SHIFT'),
(31,'STEL'),
(32,'TBG'),
(33,'TON'),
(34,'UNIT'),
(35,'ZAK');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `ip_address` varchar(15) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL DEFAULT '$2y$08$svHHPKlTfZxIY4L29rqeMewQvlLXtAqpMBh5/QoWaxUCfz3J6dEXC',
  `salt` varchar(255) DEFAULT NULL,
  `email` varchar(100) NOT NULL,
  `activation_code` varchar(40) DEFAULT NULL,
  `forgotten_password_code` varchar(40) DEFAULT NULL,
  `forgotten_password_time` int(11) unsigned DEFAULT NULL,
  `remember_code` varchar(40) DEFAULT NULL,
  `default_group` int(11) DEFAULT NULL,
  `created_on` int(11) unsigned NOT NULL,
  `last_login` datetime DEFAULT NULL,
  `active` tinyint(1) unsigned DEFAULT NULL,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `company` varchar(100) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `nik` varchar(45) NOT NULL,
  `foto` varchar(100) NOT NULL,
  `create_user` varchar(800) NOT NULL,
  `divisi` varchar(90) NOT NULL,
  `sub_group` varchar(100) NOT NULL,
  `tanggal_aktif` date DEFAULT NULL,
  `modify_user` varchar(255) NOT NULL,
  `create_date` datetime NOT NULL,
  `browser` varchar(255) NOT NULL,
  `modify_date` datetime NOT NULL,
  `project` varchar(80) DEFAULT NULL,
  `aproved_dedicate` varchar(80) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=78 DEFAULT CHARSET=utf8;

/*Data for the table `users` */

insert  into `users`(`id`,`ip_address`,`username`,`password`,`salt`,`email`,`activation_code`,`forgotten_password_code`,`forgotten_password_time`,`remember_code`,`default_group`,`created_on`,`last_login`,`active`,`first_name`,`last_name`,`company`,`phone`,`nik`,`foto`,`create_user`,`divisi`,`sub_group`,`tanggal_aktif`,`modify_user`,`create_date`,`browser`,`modify_date`,`project`,`aproved_dedicate`) values 
(64,'10.2.2.100','Ricky','$2y$08$plQTTaD7VJ4aLtLhBg1m6uTH2jSEXuwXrkfIQxwE6wzE6KVYGonnW',NULL,'ricky',NULL,NULL,NULL,NULL,1,1426666587,'0000-00-00 00:00:00',1,'Ricky','Alexander','Lexadata','081807938182','7','2b01z3sxref4o80sws.png','','','IT','2015-07-01','Ricky Alexander','0000-00-00 00:00:00','','2015-12-30 09:04:54',NULL,NULL),
(77,'::1','','$2y$08$/GyYWehT.dPBFsQbiWW0/.bdlvhZnzjLv1Mf3WV1iecbeNBBE51Pa',NULL,'4gungmuliawan@gmail.com',NULL,NULL,NULL,NULL,1,0,'0000-00-00 00:00:00',1,'Agung','Muliawan','Concept Photo',NULL,'','54x9nrjnsigw84.png','Ricky Alexander','','',NULL,'Ricky Alexander','2017-05-01 06:26:18','Mozilla/5.0 (Windows NT 10.0; rv:53.0) Gecko/20100101 Firefox/53.0','2017-05-01 06:26:18',NULL,NULL);

/*Table structure for table `users_groups` */

DROP TABLE IF EXISTS `users_groups`;

CREATE TABLE `users_groups` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) unsigned NOT NULL,
  `group_id` mediumint(8) unsigned NOT NULL,
  `access` enum('user','admin','approver','procure') NOT NULL,
  `access_group` varchar(60) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uc_users_groups` (`user_id`,`group_id`),
  KEY `fk_users_groups_users1_idx` (`user_id`),
  KEY `fk_users_groups_groups1_idx` (`group_id`)
) ENGINE=InnoDB AUTO_INCREMENT=141 DEFAULT CHARSET=utf8;

/*Data for the table `users_groups` */

insert  into `users_groups`(`id`,`user_id`,`group_id`,`access`,`access_group`) values 
(126,64,1,'admin',''),
(140,77,1,'admin','');

/* Trigger structure for table `m_product` */

DELIMITER $$

/*!50003 DROP TRIGGER*//*!50032 IF EXISTS */ /*!50003 `newproduct` */$$

/*!50003 CREATE */ /*!50017 DEFINER = 'root'@'localhost' */ /*!50003 TRIGGER `newproduct` AFTER INSERT ON `m_product` FOR EACH ROW BEGIN
	INSERT INTO `concept`.`inventory_on_hand` (`product_id`)  VALUES (NEW.product_id);
    END */$$


DELIMITER ;

/* Function  structure for function  `f_date_ke_tanggal` */

/*!50003 DROP FUNCTION IF EXISTS `f_date_ke_tanggal` */;
DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`10.2.2.%` FUNCTION `f_date_ke_tanggal`(tanggal VARCHAR(11), mode INT) RETURNS varchar(255) CHARSET latin1
    DETERMINISTIC
BEGIN
/*DECLARE VALUES YOU MAY NEED, EXAMPLE:
  DECLARE NOM_VAR1 DATATYPE [DEFAULT] VALUE;
  */
  DECLARE hasil VARCHAR(50) DEFAULT "";
  DECLARE tgl VARCHAR(2) DEFAULT "";
  DECLARE bln VARCHAR(2) DEFAULT "";
  DECLARE bln2 VARCHAR(3) DEFAULT "";
  DECLARE bln3 VARCHAR(20) DEFAULT "";
  DECLARE thn VARCHAR(4) DEFAULT "";
  SET tgl = right(tanggal,2);
  SET bln = mid(tanggal,6,2);
  SET bln2 = LEFT((SELECT bulan FROM bulan WHERE id=bln),3);
  SET bln3 = (SELECT RTRIM(bulan) FROM bulan WHERE id=bln);
  SET thn = left(tanggal,4);
  
  IF mode = 1 THEN
    SET hasil = concat(tgl,'/',bln,'/',thn);
  ELSEIF mode = 2 THEN
    SET hasil = concat(tgl,'-',bln2,'-',thn);
  ELSEIF mode = 3 THEN
    SET hasil = concat(tgl,' ',bln3,' ',thn);
  END IF;
  RETURN hasil;
  
END */$$
DELIMITER ;

/* Function  structure for function  `f_date_ke_tgl` */

/*!50003 DROP FUNCTION IF EXISTS `f_date_ke_tgl` */;
DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`10.2.2.%` FUNCTION `f_date_ke_tgl`(tanggal VARCHAR(11)) RETURNS varchar(11) CHARSET latin1
    DETERMINISTIC
BEGIN
/*DECLARE VALUES YOU MAY NEED, EXAMPLE:
  DECLARE NOM_VAR1 DATATYPE [DEFAULT] VALUE;
  */
  DECLARE hasil VARCHAR(11) DEFAULT "";
  DECLARE tgl VARCHAR(2) DEFAULT "";
  DECLARE bln VARCHAR(2) DEFAULT "";
  DECLARE thn VARCHAR(4) DEFAULT "";
  SET tgl = right(tanggal,2);
  SET bln = mid(tanggal,6,2);
  SET thn = left(tanggal,4);
  SET hasil = concat(tgl,'/',bln,'/',thn);
  RETURN hasil;
END */$$
DELIMITER ;

/* Function  structure for function  `f_split_string` */

/*!50003 DROP FUNCTION IF EXISTS `f_split_string` */;
DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`10.2.2.%` FUNCTION `f_split_string`(`str` varchar(255),`delim` varchar(12),`pos` INT) RETURNS varchar(255) CHARSET latin1
    DETERMINISTIC
BEGIN
	#Routine body goes here...
	DECLARE return_string VARCHAR(255);
	SET return_string = REPLACE(SUBSTRING(SUBSTRING_INDEX(str, delim, pos),
       LENGTH(SUBSTRING_INDEX(str, delim, pos-1)) + 1),
       delim, '');
	RETURN return_string;
END */$$
DELIMITER ;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
