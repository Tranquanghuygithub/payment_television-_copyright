-- MySQL dump 10.13  Distrib 8.0.16, for Win64 (x86_64)
--
-- Host: localhost    Database: bongda
-- ------------------------------------------------------
-- Server version	8.0.16

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `_order`
--

DROP TABLE IF EXISTS `_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `_order` (
  `order_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `amount` bigint(20) DEFAULT NULL,
  `checkIn` datetime(6) DEFAULT NULL,
  `checkOut` datetime(6) DEFAULT NULL,
  `des` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `status` int(11) DEFAULT NULL,
  `address_id` bigint(20) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `phone` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`order_id`),
  KEY `FK7swjf4ak72fwpxf56owlqsexh` (`address_id`),
  KEY `FKaouc4j3tavb2vfvvl0292kgir` (`user_id`),
  CONSTRAINT `FK7swjf4ak72fwpxf56owlqsexh` FOREIGN KEY (`address_id`) REFERENCES `address` (`address_id`),
  CONSTRAINT `FKaouc4j3tavb2vfvvl0292kgir` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_order`
--

LOCK TABLES `_order` WRITE;
/*!40000 ALTER TABLE `_order` DISABLE KEYS */;
INSERT INTO `_order` VALUES (3,31470000,'2019-11-22 22:40:57.556000','2019-11-22 22:40:57.556000','Đang chờ xử lý ...',-1,1,2,'0966924822','quangdt@gmail.com'),(5,31470000,'2019-11-25 21:44:14.396000','2019-11-25 21:44:14.396000','Đang chờ xử lý ...',-1,1,2,'0966924822','quangdt@gmail.com'),(6,31470000,'2019-11-25 21:45:59.245000','2019-11-25 21:45:59.245000','Đang chờ xử lý ...',-1,1,2,'0966924822','quangdt@gmail.com'),(7,70250000,'2019-11-25 23:04:18.094000',NULL,'Đang chờ xử lý ...',-1,1,2,'01672243079','quangdt0311@gmail.com'),(8,9990000,'2019-11-27 00:59:15.435000',NULL,'Đang chờ xử lý ...',-1,1,2,'0123456789','queanhptit@gmail.com'),(9,45470000,'2019-11-27 18:03:39.656000',NULL,'Đang chờ xử lý ...',-1,1,2,'084513879','test@gmail.com'),(10,27538200,'2019-11-27 18:07:48.230000',NULL,'Đang chờ xử lý ...',-1,1,2,'0966924822','test2@gmail.com'),(11,31470000,'2019-11-30 21:25:20.874000',NULL,'Đang chờ xử lý ...',-1,1,2,'0966924822','quangdt@gmail.com'),(12,48764000,'2019-12-01 23:21:14.705000',NULL,'Đang chờ xử lý ...',-1,1,3,'0966924922','quangdt0311@gmail.com'),(13,28161100,'2019-12-03 14:11:39.701000',NULL,'Đang chờ xử lý ...',-1,6,7,'051254132','test@gmail.com'),(14,42960000,'2019-12-04 15:09:44.844000',NULL,'Đang chờ xử lý ...',-1,1,8,'0353489966','abcdefh@gmail.com'),(15,19980000,'2019-12-04 15:10:48.598000',NULL,'Đang chờ xử lý ...',-1,1,8,'1324','sdgfdh');
/*!40000 ALTER TABLE `_order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `address`
--

DROP TABLE IF EXISTS `address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `address` (
  `address_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `district` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `province` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `village` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`address_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `address`
--

LOCK TABLES `address` WRITE;
/*!40000 ALTER TABLE `address` DISABLE KEYS */;
INSERT INTO `address` VALUES (1,'Ba Đình','Hà Nội','Ngọc Hà'),(2,'Ba Đình','Hà Nội','Quán Thánh'),(3,'Hoàn Kiếm','Hà Nội','Đồng Xuân'),(4,'Hoàn Kiếm','Hà Nội','Hàng Bạc '),(5,'Hoàn Kiếm','Hà Nội','Hàng Bài'),(6,'Hoàn Kiếm','Hà Nội','Hàng Bồ'),(7,'Hoàng Mai','Hà Nội','Đại Kim'),(8,'Hoàng Mai','Hà Nội','Định Công'),(9,'Hoàng Mai','Hà Nội','Giáp Bát'),(10,'Hoàng Mai','Hà Nội','Hoàng Liệt');
/*!40000 ALTER TABLE `address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comment`
--

DROP TABLE IF EXISTS `comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `comment` (
  `comment_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `content` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `createTime` datetime(6) DEFAULT NULL,
  `product_id` bigint(20) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`comment_id`),
  KEY `FKm1rmnfcvq5mk26li4lit88pc5` (`product_id`),
  KEY `FK8kcum44fvpupyw6f5baccx25c` (`user_id`),
  CONSTRAINT `FK8kcum44fvpupyw6f5baccx25c` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`),
  CONSTRAINT `FKm1rmnfcvq5mk26li4lit88pc5` FOREIGN KEY (`product_id`) REFERENCES `product` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comment`
--

LOCK TABLES `comment` WRITE;
/*!40000 ALTER TABLE `comment` DISABLE KEYS */;
/*!40000 ALTER TABLE `comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `image`
--

DROP TABLE IF EXISTS `image`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `image` (
  `image_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `location` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`image_id`),
  KEY `FKgpextbyee3uk9u6o2381m7ft1` (`product_id`),
  CONSTRAINT `FKgpextbyee3uk9u6o2381m7ft1` FOREIGN KEY (`product_id`) REFERENCES `product` (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=83 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `image`
--

LOCK TABLES `image` WRITE;
/*!40000 ALTER TABLE `image` DISABLE KEYS */;
INSERT INTO `image` VALUES (1,'/images/6/1.png','File 1',6),(2,'/images/6/2.png','File 2',6),(3,'/images/6/3.png','File 3',6),(4,'/images/6/4.png','File 4',6),(5,'/images/1/1.png','File 1',1),(6,'/images/1/2.png','File 2',1),(7,'/images/1/3.png','File 3',1),(8,'/images/2/1.png','File 1',2),(9,'/images/2/2.png','File 2',2),(10,'/images/2/3.png','File 3',2),(11,'/images/7/1.png','File 1',7),(12,'/images/7/2.png','File 2',7),(13,'/images/7/3.png','File 3',7),(14,'/images/8/1.png','File 1',8),(15,'/images/8/2.png','File 2',8),(16,'/images/8/3.png','File 3',8),(17,'/images/9/1.png','File 1',9),(18,'/images/9/2.png','File 2',9),(19,'/images/9/3.jfif','File 3',9),(20,'/images/10/1.png','File 1',10),(21,'/images/10/2.png','File 2',10),(22,'/images/10/3.png','File 3',10),(37,'/images/18/1.png','File 1',18),(38,'/images/18/2.png','File 2',18),(39,'/images/18/3.png','File 3',18),(40,'/images/19/1.png','File 1',19),(41,'/images/19/2.png','File 2',19),(42,'/images/19/3.png','File 3',19),(43,'/images/20/1.png','File 1',20),(44,'/images/20/2.png','File 2',20),(45,'/images/20/3.png','File 3',20),(46,'/images/21/1.png','File 1',21),(47,'/images/21/2.png','File 2',21),(48,'/images/21/3.png','File 3',21),(49,'/images/22/1.png','File 1',22),(50,'/images/22/2.png','File 2',22),(51,'/images/22/3.png','File 3',22),(52,'/images/23/1.png','File 1',23),(53,'/images/23/2.jpg','File 2',23),(54,'/images/23/3.jpg','File 3',23),(55,'/images/24/1.png','File 1',24),(56,'/images/24/2.png','File 2',24),(57,'/images/24/3.png','File 3',24),(58,'/images/25/1.png','File 1',25),(59,'/images/25/2.png','File 2',25),(60,'/images/25/3.png','File 3',25),(61,'/images/26/1.png','File 1',26),(62,'/images/26/2.png','File 2',26),(63,'/images/26/3.png','File 3',26),(64,'/images/27/1.png','File 1',27),(65,'/images/27/2.png','File 2',27),(66,'/images/27/3.png','File 3',27),(67,'/images/28/1.png','File 1',28),(68,'/images/28/2.png','File 2',28),(69,'/images/28/3.png','File 3',28),(70,'/images/29/1.png','File 1',29),(71,'/images/29/2.png','File 2',29),(72,'/images/29/3.png','File 3',29),(73,'/images/30/1.png','File 1',30),(74,'/images/30/2.png','File 2',30),(75,'/images/30/3.png','File 3',30),(76,'/images/31/1.png','File 1',31),(77,'/images/31/2.png','File 2',31),(78,'/images/31/3.png','File 3',31),(81,'/images/33/986444.png','File 1',33),(82,'/images/33/1010929.jpg','File 2',33);
/*!40000 ALTER TABLE `image` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `manufacturer`
--

DROP TABLE IF EXISTS `manufacturer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `manufacturer` (
  `manufacturer_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `code` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`manufacturer_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `manufacturer`
--

LOCK TABLES `manufacturer` WRITE;
/*!40000 ALTER TABLE `manufacturer` DISABLE KEYS */;
INSERT INTO `manufacturer` VALUES (1,'DELL','Dell'),(2,'ASUS','Asus'),(3,'MSI','MSI'),(4,'HP','HP'),(5,'ACER','Acer'),(6,'Apple','Apple (Macbook)'),(7,'LENOVO','Lenovo');
/*!40000 ALTER TABLE `manufacturer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `product` (
  `product_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `cpu` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `hdh` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `heavy` float DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `price` bigint(20) DEFAULT NULL,
  `screen` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `total` int(11) DEFAULT NULL,
  `vga` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `manufacturer_id` bigint(20) DEFAULT NULL,
  `promotion_id` bigint(20) DEFAULT NULL,
  `ram` varchar(10) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `disk` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `code` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`product_id`),
  UNIQUE KEY `code` (`code`),
  KEY `FK89igr5j06uw5ps04djxgom0l1` (`manufacturer_id`),
  KEY `FKcli9x921yidy04cx25k6m46fy` (`promotion_id`),
  CONSTRAINT `FK89igr5j06uw5ps04djxgom0l1` FOREIGN KEY (`manufacturer_id`) REFERENCES `manufacturer` (`manufacturer_id`),
  CONSTRAINT `FKcli9x921yidy04cx25k6m46fy` FOREIGN KEY (`promotion_id`) REFERENCES `promotion` (`promotion_id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (1,'Intel Core i3 7020U','Windows 10 Home SL 64',2.2,'Lenovo Ideapad 330-15IKB/Core I3 7020U/4GB/256GSSD',9990000,'15.6 inchs Anti - Glare',193,'Intel HD Graphic 610 Shared ',7,1,'4 GB','256GB, HHD','lenovo-ideapad-330-15ikb-core-i3-7020u'),(2,'Intel, Core i3','Windows 10 Home',1.9,'Asus Vivobook X509UA-BR236T/Core i3-7020U/4G/512GB SSD/WIN10',11490000,'15.6 inchs, 1366 x 768 Pixels',192,'Intel® HD graphics 620, Tích hợp',2,1,'4 GB','512GB, SSD','asus-vivobook-x509ua-br236t-core-i3-7020u'),(6,'Intel, Core i3','Windows 10 Home SL 64',1.53,'HP Pavilion 14-ce2036TU/Core i3-8145U/4GB/500GB/WIN10_Vàng',12990000,'14.0 inchs, 1920 x 1080 Pixels',200,'Intel® QHD Graphics 620, Tích hợp',4,1,'4 GB','500GB, HHD','hp-pavilion-14-ce2036tu-core-i3-8145u'),(7,'Intel, Core i5-8250U','Windows 10 Home SL 64',1.71,'Acer Spin 3 SP314-51-51LE/Core i5-8250U/NX.GZRSV.002',15990000,'14.0 inchs, 1920 x 1080 Pixels',250,'Intel HD Graphics 620, Tích hợp',5,1,'4 GB','500GB, HHD','acer-spin-3-sp314-51-51le-core-i5-8250u'),(8,'Intel, Core i3-7020U','Ubuntu',1.98,'Dell Inspiron N3467/Core i3-7020U/M20NR3',9990000,'14.0 inchs, 1366 x 768 pixels',206,'Intel HD Graphics 620, Tích hợp',1,1,'4GB, DDR4','HDD, 1 TB','dell-inspiron-n3467-m20nr3'),(9,'Intel, Core i5-9300H','Windows 10 Home',2,'Dell Inspiron G7 N7591/Core i5-9300H/N5I5591W',27290000,'15.6 inchs, 1920 x 1080 Pixels',99,'VGA GeForce GTX 1050 3GB GDDR5, Card rời',1,1,'8 GB, DDR4','SSD, 256 GB','dell-inspiron-n7591-n5i5591w'),(10,'Intel, Core i3-7020U','Windows 10 Home Single',1.77,'HP 15-da0051TU/Core i3-7020U',9990000,'15.6 inchs , 1366 x 768 pixels',48,'Intel® UHD Graphics, Tích hợp',4,1,'4 GB, DDR4','HDD, 500 GB','hp-15-da0051tu-core-i3-7020u'),(18,'Intel, Core i5','Windows 10 Home',1.8,'Lenovo Ideapad S340-15IWL/i5-8265U/4G/256GB/MX230 2GB/WIN10',15299000,'15.6 inchs, 1920 x 1080 Pixels',197,'Nvidia Geforce MX230, Card rời',7,3,'4 GB, DDR4','SSD, 256 GB','lenovo-ideapad-s340-15iwl-i5-8265u'),(19,'Intel, Core i5','Windows 10 Home SL 64',1.75,'Lenovo ThinkPad E490/Core i5 8265U/8GB/512GBSSD/WIN10',18490000,'14.0 inchs, 1920 x 1080 Pixels',100,'UHD Intel® 620, Tích hợp',7,1,'8 GB, DDR4','SSD, 512 GB','lenovo-thinkpad-e490-core-i5-8265u'),(20,'Intel, Core i5','Windows 10 Home SL 64',2.1,'Lenovo Thinkpad E590/Core i5-8265U/8GB/512GB SSD/15.6FHD/VGA 2GB/WIN10',19990000,'15.6 inchs, 1920 x 1080 Pixels',10,'RX_550X_2GB_D5_64B, Card rời',7,3,'8 GB, DDR4','SSD, 512 GB','lenovo-thinkpad-e590-core-i5-8265u'),(21,'AMD, Ryzen™ 5','Windows 10 Home SL 64',1.31,'HP ENVY X360-AR0071AU/R5-3500U/8GB/256G SSD/WIN10',22890000,'13.3 inchs, 1920 x 1080 Pixels',50,'Radeon™ Vega 8 Graphics, Tích hợp',4,1,'8 GB, DDR4','SSD, 256 GB','hp-envy-x360-ar0071au-r5-3500u'),(22,'AMD, Ryzen™ 7','Windows 10 Home SL 64',2.104,'Asus Zephyrus GA502DU-AL038T/R7-3750H',31900000,'15.6 inchs, 1920 x 1080 Pixels, 120Hz, Anti-Glare with 45% NTSC',200,'NVIDIA GeForce GTX1660Ti ; Radeon™ RX Vega 10 Graphics, Card rời và tích hợp',2,4,'8 GB, DDR4','SSD, 512 GB','asus-zephyrus-ga502du-al038t-r7-3750h'),(23,'Core i5, Intel','Windows 10 Home SL 64',1.97,'Asus F560UD-BQ327T/Core i5-8250U',16190000,'15.6 inchs, 1920 x 1080 Pixels',500,'Geforce GTX 1050, Card rời',2,1,'8 GB, DDR4','HDD 5400rpm, HDD: 1 TB SATA3, Hỗ trợ khe cắm SSD M.2 SATA3','asus-f560ud-bq327t-core-i5-8250u'),(24,'AMD, Ryzen™ 5 2500U','Windows 10 Home SL 64',2.331,'Acer Nitro AN515-42-R8A0/R5-2500U/NH.Q3RSV.005',16990000,'15.6 inchs, 1920 x 1080 Pixels',198,'AMD Radeon™ RX 560X, Card rời',5,1,'8 GB, DDR4','SSD, 256 GB','acer-nitro-an515-42-r8a0r5-2500u-8gb-256gb'),(25,'AMD, Ryzen™ 5','Windows 10 Home',2.2,'Asus TUF FX505DY-AL095T/R5-3550H',17990000,'15.6 inchs, 1920 x 1080 Pixels, 120Hz, Anti-Glare with 45% NTSC',147,'AMD RADEON RX560X, Card rời',2,4,'8 GB, DDR4','HDD 5400rpm, HDD: 1 TB SATA3, Hỗ trợ khe SSD M2 PCIe','asus-tuf-fx505dy-al095t-r5-3550h-8gb'),(26,'Intel, Core i5 Ice Lake','Windows 10 Home SL 64',1.85,'HP Pavilion 15-cs3060TX/i5-1035G1/8GB/512GSSD/2GB MX250/WIN10',17990000,'15.6 inchs, 1920 x 1080 Pixels, 60Hz, Anti-Glare with 45% NTSC',100,'NVIDIA® GeForce® MX250, Card rời',4,1,'8 GB, DDR4','SSD, 512 GB','hp-pavilion-15-cs3060tx-i5-1035g'),(27,'Intel, Core i7 Comet Lake','Windows 10 Home SL 64',1.74,'HP 15s-du1040TX i7-10510U/8GB/512GB SSD/2GB MX130/WIN10',18690000,'15.6 inchs, 1366 x 768 Pixels',120,'Nvidia Geforce MX130, Card rời và tích hợp',4,1,'8 GB, DDR4','SSD, 512 GB','hp-15s-du1040tx-i7-10510u'),(28,'Intel, Core i5','Windows 10 Home SL 64',2.3,'MSI GL63 8RCS-068VN/Core i5-8300H/8GB/256GB SSD/WIN10',20990000,'15.6 inchs, 1920 x 1080 Pixels',115,'NVIDIA GTX1050, Card rời',3,1,'8 GB, DDR4','SSD, 256 GB','msi-gl63-8rcs-068vn-core-i5-8300h'),(29,'Intel, Core i5','Windows 10',1.86,'MSI GF63 8RC-203VN/I5-8300H',21990000,'15.6 inchs, 1920 x 1080 Pixels',300,'NVIDIA GeForce GTX 1050, Card rời',3,1,'8 GB, DDR4','HDD, HDD: 1 TB SATA3, Hỗ trợ khe cắm SSD M.2 SATA3','msi-gf63-8rc-230vn-i5-8300h'),(30,'Intel, Core i5','Windows 10 Home',1.86,'MSI GF63 9SC-400VN/Core I5-9300H',23290000,'15.6 inchs, 1920 x 1080 Pixels, 60Hz, Anti-Glare with 45% NTSC',100,'	NVIDIA GeForce® GTX 1650 MAX Q ,GDDR5 4GB, Card rời',3,1,'8 GB, DDR4','SSD, 256 GB','msi-gf63-9sc-400vn-core-i5-9300h'),(31,'Intel, Core i7','Windows 10 Home SL 64',2.15,'Acer Nitro AN515-54-7882/Core i7-8750H/NH.Q59SV.009',26990000,'15.6 inchs, 1920 x 1080 Pixels',150,'NVIDIA GeForce GTX 1650 (4GB of GDDR5 SDRAM, Bus Width: 128-bit) ; Intel UHD Graphics 630, Card rời',5,1,'8 GB, DDR4','SSD, 256 GB','acer-nitro-an515-54-7882-core-i7-8750h'),(33,'Intel, Core i3','Windows 10 Home SL 64',1.53,'HP Pavilion 14-ce2036TU/Core i3-8145U/4GB/500GB/WIN10_Vàng',12990000,'14.0 inchs, 1920 x 1080 Pixels',200,'Intel® QHD Graphics 620, Tích hợp',4,1,NULL,NULL,NULL);
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `productorder`
--

DROP TABLE IF EXISTS `productorder`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `productorder` (
  `product_order_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `quantity` int(11) DEFAULT NULL,
  `order_id` bigint(20) DEFAULT NULL,
  `product_id` bigint(20) DEFAULT NULL,
  `createDate` timestamp NULL DEFAULT NULL,
  `price` bigint(20) DEFAULT NULL,
  `percent` int(11) DEFAULT NULL,
  PRIMARY KEY (`product_order_id`),
  KEY `FKqemueujdls87nh95ehf4ugrny` (`order_id`),
  KEY `FK88sawkn5liobq78yvv9mmjurp` (`product_id`),
  CONSTRAINT `FK88sawkn5liobq78yvv9mmjurp` FOREIGN KEY (`product_id`) REFERENCES `product` (`product_id`),
  CONSTRAINT `FKqemueujdls87nh95ehf4ugrny` FOREIGN KEY (`order_id`) REFERENCES `_order` (`order_id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `productorder`
--

LOCK TABLES `productorder` WRITE;
/*!40000 ALTER TABLE `productorder` DISABLE KEYS */;
INSERT INTO `productorder` VALUES (1,2,3,1,NULL,9990000,0),(2,1,3,2,NULL,11490000,0),(3,2,5,1,'2019-11-25 14:44:14',9990000,0),(4,1,5,2,'2019-11-25 14:44:14',11490000,0),(5,2,6,1,'2019-11-25 14:45:59',9990000,0),(6,1,6,2,'2019-11-25 14:45:59',11490000,0),(7,2,7,2,'2019-11-25 16:04:18',11490000,0),(8,1,7,9,'2019-11-25 16:04:18',27290000,0),(9,2,7,8,'2019-11-25 16:04:18',9990000,0),(10,1,8,1,'2019-11-26 17:59:15',9990000,0),(11,2,9,24,'2019-11-27 11:03:40',16990000,0),(12,1,9,2,'2019-11-27 11:03:40',11490000,0),(13,2,10,18,'2019-11-27 11:07:48',15299000,10),(14,2,11,1,'2019-11-30 14:25:21',9990000,0),(15,1,11,2,'2019-11-30 14:25:21',11490000,0),(16,2,12,25,'2019-12-01 16:21:15',17990000,20),(17,2,12,8,'2019-12-01 16:21:15',9990000,0),(18,1,13,18,'2019-12-03 07:11:40',15299000,10),(19,1,13,25,'2019-12-03 07:11:40',17990000,20),(20,2,14,10,'2019-12-04 08:09:45',9990000,0),(21,2,14,2,'2019-12-04 08:09:45',11490000,0),(22,2,15,8,'2019-12-04 08:10:49',9990000,0);
/*!40000 ALTER TABLE `productorder` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `promotion`
--

DROP TABLE IF EXISTS `promotion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `promotion` (
  `promotion_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `des` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `percent` int(11) DEFAULT NULL,
  PRIMARY KEY (`promotion_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `promotion`
--

LOCK TABLES `promotion` WRITE;
/*!40000 ALTER TABLE `promotion` DISABLE KEYS */;
INSERT INTO `promotion` VALUES (1,'Không có khuyến mại gì cả','Không',0),(2,NULL,'Tặng balo đựng laptop',0),(3,'Giảm giá sản phẩm','Giảm 10%',10),(4,NULL,'Giảm 20%',20),(5,NULL,'Tặng chuột bàn phím không dây',0);
/*!40000 ALTER TABLE `promotion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role`
--

DROP TABLE IF EXISTS `role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `role` (
  `role_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `code` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `des` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`role_id`),
  UNIQUE KEY `UK_c36say97xydpmgigg38qv5l2p` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role`
--

LOCK TABLES `role` WRITE;
/*!40000 ALTER TABLE `role` DISABLE KEYS */;
INSERT INTO `role` VALUES (1,'ADMIN','Toàn quyền','Admin'),(2,'STAFF','Nhân viên','Staff'),(3,'CUSTOMER','Khách hàng','Customer');
/*!40000 ALTER TABLE `role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role_user`
--

DROP TABLE IF EXISTS `role_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `role_user` (
  `user_id` bigint(20) NOT NULL,
  `role_id` bigint(20) NOT NULL,
  KEY `FKiqpmjd2qb4rdkej916ymonic6` (`role_id`),
  KEY `FK4320p8bgvumlxjkohtbj214qi` (`user_id`),
  CONSTRAINT `FK4320p8bgvumlxjkohtbj214qi` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`),
  CONSTRAINT `FKiqpmjd2qb4rdkej916ymonic6` FOREIGN KEY (`role_id`) REFERENCES `role` (`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role_user`
--

LOCK TABLES `role_user` WRITE;
/*!40000 ALTER TABLE `role_user` DISABLE KEYS */;
INSERT INTO `role_user` VALUES (1,1),(2,3),(3,3),(5,3),(7,3),(8,3);
/*!40000 ALTER TABLE `role_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblbangdau`
--

DROP TABLE IF EXISTS `tblbangdau`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `tblbangdau` (
  `id` int(11) NOT NULL,
  `tenbang` varchar(255) DEFAULT NULL,
  `mota` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblbangdau`
--

LOCK TABLES `tblbangdau` WRITE;
/*!40000 ALTER TABLE `tblbangdau` DISABLE KEYS */;
INSERT INTO `tblbangdau` VALUES (100,'A','Gồm 4 đội bóng'),(101,'B','Gồm 4 đội bóng'),(102,'C','Gồm 4 đội bóng'),(103,'D','Gồm 4 đội bóng');
/*!40000 ALTER TABLE `tblbangdau` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblbantochuc`
--

DROP TABLE IF EXISTS `tblbantochuc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `tblbantochuc` (
  `idnguoidung` int(10) NOT NULL,
  PRIMARY KEY (`idnguoidung`),
  CONSTRAINT `FKtblBantoch936408` FOREIGN KEY (`idnguoidung`) REFERENCES `tblnguoidung` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblbantochuc`
--

LOCK TABLES `tblbantochuc` WRITE;
/*!40000 ALTER TABLE `tblbantochuc` DISABLE KEYS */;
INSERT INTO `tblbantochuc` VALUES (100);
/*!40000 ALTER TABLE `tblbantochuc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblcauthu`
--

DROP TABLE IF EXISTS `tblcauthu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `tblcauthu` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `iddoibong` int(10) NOT NULL,
  `ten` varchar(255) DEFAULT NULL,
  `ngaysinh` varchar(255) DEFAULT NULL,
  `vichi` varchar(255) DEFAULT NULL,
  `chanthuan` varchar(255) DEFAULT NULL,
  `chieucao` varchar(255) DEFAULT NULL,
  `cannang` varchar(255) DEFAULT NULL,
  `dacdiem` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKtblCauthu28796` (`iddoibong`),
  CONSTRAINT `FKtblCauthu28796` FOREIGN KEY (`iddoibong`) REFERENCES `tbldoibong` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblcauthu`
--

LOCK TABLES `tblcauthu` WRITE;
/*!40000 ALTER TABLE `tblcauthu` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblcauthu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbldangkicauthu`
--

DROP TABLE IF EXISTS `tbldangkicauthu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `tbldangkicauthu` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `iddoida` int(10) NOT NULL,
  `iddoibong` int(10) NOT NULL,
  `ngaydangki` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKtblDangkiC110153` (`iddoibong`),
  KEY `FKtblDangkiC572330` (`iddoida`),
  CONSTRAINT `FKtblDangkiC110153` FOREIGN KEY (`iddoibong`) REFERENCES `tbldoibong` (`id`),
  CONSTRAINT `FKtblDangkiC572330` FOREIGN KEY (`iddoida`) REFERENCES `tbldoida` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbldangkicauthu`
--

LOCK TABLES `tbldangkicauthu` WRITE;
/*!40000 ALTER TABLE `tbldangkicauthu` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbldangkicauthu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbldangkichitiet`
--

DROP TABLE IF EXISTS `tbldangkichitiet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `tbldangkichitiet` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `iddangkicauthu` int(10) NOT NULL,
  `idcauthu` int(10) NOT NULL,
  `loaicauthu` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKtblDangkiC461972` (`idcauthu`),
  KEY `FKtblDangkiC568859` (`iddangkicauthu`),
  CONSTRAINT `FKtblDangkiC461972` FOREIGN KEY (`idcauthu`) REFERENCES `tblcauthu` (`id`),
  CONSTRAINT `FKtblDangkiC568859` FOREIGN KEY (`iddangkicauthu`) REFERENCES `tbldangkicauthu` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbldangkichitiet`
--

LOCK TABLES `tbldangkichitiet` WRITE;
/*!40000 ALTER TABLE `tbldangkichitiet` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbldangkichitiet` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbldiachi`
--

DROP TABLE IF EXISTS `tbldiachi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `tbldiachi` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `sonha` varchar(255) DEFAULT NULL,
  `toanha` varchar(255) DEFAULT NULL,
  `xompho` varchar(255) DEFAULT NULL,
  `phuongxa` varchar(255) DEFAULT NULL,
  `quanhuyen` varchar(255) DEFAULT NULL,
  `tinhthanh` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbldiachi`
--

LOCK TABLES `tbldiachi` WRITE;
/*!40000 ALTER TABLE `tbldiachi` DISABLE KEYS */;
INSERT INTO `tbldiachi` VALUES (100,NULL,NULL,'thôn Đẽn','xã Sơn Đông','huyện Lập Thạch','tỉnh Vĩnh Phúc');
/*!40000 ALTER TABLE `tbldiachi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbldoibong`
--

DROP TABLE IF EXISTS `tbldoibong`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `tbldoibong` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `tendoi` varchar(255) DEFAULT NULL,
  `trangphuc` varchar(255) DEFAULT NULL,
  `diachi` varchar(255) DEFAULT NULL,
  `mota` text,
  `idbangdau` int(11) DEFAULT NULL,
  `idsandau` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idsandau_idx` (`idsandau`),
  KEY `idbangdau_idx` (`idbangdau`),
  CONSTRAINT `idbangdau` FOREIGN KEY (`idbangdau`) REFERENCES `tblbangdau` (`id`),
  CONSTRAINT `idsandau` FOREIGN KEY (`idsandau`) REFERENCES `tblsandau` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=116 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbldoibong`
--

LOCK TABLES `tbldoibong` WRITE;
/*!40000 ALTER TABLE `tbldoibong` DISABLE KEYS */;
INSERT INTO `tbldoibong` VALUES (100,'Becamex Bình Dương',NULL,'Bình Dương, Việt Nam','CLB Becamex Bình Dương là một CLB bóng đá chuyên nghiệp tại Việt Nam, có trụ sở tại TP Thủ Dầu Một, Bình Dương, thuộc quyền sở hữu của Công ty Cổ phần CLB Bóng đá Becamex Bình Dương. CLB từng 4 lần giành chức vô địch quốc gia (2007, 2008, 2014, 2015). Tiền thân CLB bóng đá Becamex Bình Dương là CLB bóng đá cao su Bình Phước. Năm 1997, sau khi chia tách tỉnh đội bóng được chuyển về cho tỉnh Bình Dương, do Sở VHTT tỉnh Bình Dương quản lý. Năm 2002 là năm đánh dấu bước ngoặt khi tập đoàn Becamex phối hợp với Đài Truyền hình và Sở TDTT tỉnh tiếp quản, thành lập Công ty Cổ phần Bóng đá Bình Dương, đổi tên thành Câu lạc bộ Becamex Bình Dương cho đến nay.',100,100),(101,'Topenland Bình Định',NULL,'Bình Định, Việt Nam','Năm 2015, CLB Bóng đá Bình Định thi đấu thăng hạng nhì Quốc gia. Năm 2017, Đội thi đấu và giành quyền thăng hạng nhất mùa giải 2018. Kể từ ngày 15/5/2018 Tên gọi của CLB Bóng đá Bình Định gắn tên Nhà tài trợ được công nhận chính thức là: CLB Bóng đá Bình Định TMS. Tại Giải HNQG 2018, Bình Định TMS xếp thứ 9. Sang mùa giải HNQG 2019, đội bóng không còn gắn tên cùng với nhà tài trợ, đăng ký thi đấu với tên gọi CLB bóng đá Bình Định, xếp thứ 11 Giải HNQG 2019.',100,101),(102,'Dược Nam Hà Nam Định',NULL,'Nam Định, Việt Nam','Câu lạc bộ Bóng đá Nam Định là CLB có lịch sử lâu đời và từng đạt nhiều thành tích tại Việt Nam, có trụ sở tại 27 Đặng Xuân Thiều, Tp Nam Định, tỉnh Nam Định. CLB được chính thức thành lập năm 1965 với tên gọi Thanh niên Nam Hà. Năm 2000, CLB chính thức mang tên CLB bóng đá Nam Định theo Quyết định của UBND Tỉnh. Ngày 12/1/2018, theo Quy chế bóng đá chuyên nghiệp Việt Nam, CLB bóng đá Nam Định - NDFC thuộc quyền quản lý, điều hành và khai thác thương hiệu của CTCP thể thao Nam Định. Mùa giải 2019, với sự đồng hành của Công ty Cổ phần dược phẩm Nam Hà, đội bóng mang tên Dược Nam Hà Nam Định',101,102),(103,'Hà Nội',NULL,'Hà Nội, Việt Nam','Sau hơn 10 năm ra đời, định hình và phát triển, Hà Nội FC ( tiền thân là CLB BĐ Hà Nội T&T ) đã trở thành một trong những clb hàng đầu của bóng đá Việt Nam. Xuất phát bằng kỷ lục 3 năm thăng 3 hạng giúp Hà Nội FC nhanh chóng góp mặt tại V.League vào năm 2009, đến nay niềm tự hào bóng đá Thủ đô luôn có thành tích ổn định trong top đầu. Trải qua 8 mùa bóng liên tiếp, Hà Nội FC xuất hiện trong 2 vị trí cao nhất tại V.League, trong đó đại diện bóng đá Thủ đô đã lên ngôi vô địch 3 lần vào mùa bóng 2010, 2013 và 2016. Riêng tại V.League 2016, chức vô địch của Hà Nội được đánh giá là kỳ tích hiếm thấy trong lịch sử bóng đá Việt Nam. Thành công của Hà Nội FC trong những năm qua đã gây tiếng vang vượt ra khỏi bóng đá Việt Nam. Sau chức vô địch V.League 2016, Hà Nội FC đã vinh dự nhận được thư chúc mừng của Chủ tịch LĐBĐ thế giới (FIFA) Gianni Infantino. Đây là lần thứ 2, niềm tự hào bóng đá Thủ đô nhận được thư chúc mừng của người đứng đầu bóng đá thế giới. Ngoài thành công trên đấu trường V.League, Hà Nội FC cũng đang là lò đào tạo trẻ chất lượng bậc nhất của bóng đá Việt Nam. U21 Hà Nội FC đã 3 lần vô địch giải U21 báo Thanh Niên (2013, 2015 và 2016), U19 Hà Nội FC đoạt chức vô địch U19 quốc gia năm 2011, 2013, 2016 và 2017. Lứa U17 và U15 của Hà Nội FC đều đặn đứng trong top đầu tại các giải quốc gia dành cho các lứa tuổi. Những cầu thủ trẻ của lò đào tạo Hà Nội FC như Quang Hải, Đoàn Văn Hậu… đã góp công lớn trong kỳ tích đưa đội U19 Việt Nam lọt vào VCK World Cup U20 2017 và giành HCB tại VCK U23 Châu Á 2018.    ',101,103),(104,'Hải Phòng',NULL,'Hải Phòng, Việt Nam','Một số thành tích nổi bật của đội bóng trong những năm gần đây: Năm 2014, CLB Hải Phòng vô địch Cúp Quốc gia. Năm 2015, CLB Hải Phòng đoạt Giải Ba Cúp Quốc gia Mùa giải 2016, CLB Hải Phòng đã xuất sắc cán đích với vị trí Á Quân tại Giải VĐQG 2016, khi kém hơn CLB Hà Nội T&T ở chỉ số phụ. Mùa giải 2017: Hải Phòng đứng thứ 7 tại Giải VĐQG. Mùa giải 2018: Hải Phòng xếp thứ 8 tại Giải VĐQG.',102,104),(105,'Hoàng Anh Gia Lai',NULL,' 15 Trường Chinh, P. Phù Đổng, TP. Pleiku, Tỉnh Gia Lai ','Năm 2002 UBND tỉnh Gia Lai quyết định chuyển giao đội bóng đá Hạng Nhất từ Sở TDTT tỉnh Gia Lai cho Xí nghiệp tư doanh (XNTD) Hoàng Anh - Pleiku theo chương trình Xã hội hóa TDTT do Chính phủ phát động. Sau khi tiếp nhận, đội bóng được xây dựng theo mô hình chuyên nghiệp. Chỉ sau năm năm, CLB BĐ HAGL gặt hái những thành công vang dội tại Giải VĐQG và Cúp QG. Từ đó CLB tiếp tục xây dựng thêm những hạng mục cần thiết để phục vụ nhu cầu đào tạo cầu thủ trẻ và hoàn thiện việc xây dựng Học viện Bóng đá HAGL - Arsenal - JMG với hệ thống sân tập tiêu chuẩn cùng những trang thiết bị hiện đại nhất Việt Nam thời điểm đó. Ngày 28/5/2007, Học viện bóng đá HAGL - Arsenal - JMG chính thức mở cuộc tuyển sinh khóa I, với hơn 7.000 học viên của 22 tỉnh thành trên cả nước tham gia thi tuyển. Đến nay, Học viện HAGL đã đào tạo được những cầu thủ giỏi về Văn hóa và Bóng đá như: Xuân Trường, Công Phượng, Văn Toàn, Văn Thanh, Hồng Duy...',102,105),(106,'Hồng Lĩnh Hà Tĩnh',NULL,'Hà Tĩnh, Việt Nam','Sau mùa giải HNQG 2018 thi đấu khá thành công, xếp thứ 2 toàn giải. CLB Hà Nội B có cơ hội tranh suất thăng hạng V.League 2019 cùng với CLB Nam Định tại trận đấu play - off tuy nhiên không thành công. Tham dự Giải HNQG 2019, CLB Hà Nội B có tên gọi mới là CLB Hồng Lĩnh Hà Tĩnh. Hồng Lĩnh Hà Tĩnh đăng ký sân thi đấu chính thức là sân vận động Hà Tĩnh, tuy nhiên vì lý do sân vận động đang được nâng cấp sửa chữa, nên giai đoạn 1 của Giải HNQG 2019, Hồng Lĩnh Hà Tĩnh sẽ thi đấu trên sân vận động Vinh.',103,106),(107,'Sài Gòn',NULL,'Hồ Chí Minh, Việt Nam','CLB Bóng đá Sài Gòn đang thi đấu tại hệ thống các Giải bóng đá chuyên nghiệp quốc gia. Được biết đến là đội bóng nền tảng của sức mạnh đoàn kết với “Văn hóa bóng đá đẹp – Tính chuyên nghiệp cao”. Thành tích những năm gần đây của đội bóng: Năm 2015 thăng hạng lên V.League. Năm 2016 về vị trí thứ 7 trên tổng cộng 14 đội bóng. Năm 2017 xếp vị trí thứ 5. Năm 2018 về đích với vị trí thứ 8 trên bảng xếp hạng cuối mùa.',103,107),(108,'SHB Đà Nẵng',NULL,'Đà Nẵng, Việt Nam','CLB Bóng đá SHB Đà Nẵng tiền thân là CLB bóng đá Thành phố Đà Nẵng, được thành lập năm 1976 và là một trong các đội bóng mạnh của Việt Nam. Từ năm thành lập cho đến nay, CLB Bóng đá SHB Đà Nẵng đã đạt được nhiều thành tích cao tại nhiều giải đấu và là một trong các CLB có nền tảng vững mạnh trong nhiều năm qua với hệ thống đào tạo trẻ đứng hàng đầu quốc gia. Hàng năm các cầu thủ của CLB được gọi tập trung đội tuyển từ U16 đến U19, U22, U23 Quốc gia, đội tuyển nam quốc gia, mỗi tuyến từ 2 đến 4 cầu thủ, đây cũng là niềm tự hào của CLB.',103,108),(109,'Sông Lam Nghệ An',NULL,'Nghệ An, Việt Nam','Được thành lập cuối thập niên 70 của thế kỷ trước . Đội bóng đá Sông Lam là một đội bóng có truyền thống và thành tích tốt nhất so với các đội bóng đá Miền Trung khác tham gia thi đấu ở V.League, đội cũng đóng góp rất nhiều cầu thủ giỏi cho đội tuyển QG VN. Bóng đá xứ Nghệ là một tên tuổi lớn trên bản đồ bóng đá VN . Là đội bóng giàu thành tích của bóng đá VN Sông Lam Nghệ An đã phải vật lộn với nhiều khó khăn, vất vả để có được những thành công như ngày nay. Quá trình hình thành và phát triển hơn 20 năm của đội có thể nói là 20 năm đầy mồ hôi và sức lực của tiếp nối các thế hệ cầu thủ, các nhà lãnh đạo, các huấn luyện viên cùng với sự cổ vũ nhiệt tình của các cổ động viên xứ Nghệ trong cả nước.',103,109),(110,'Than Quảng Ninh',NULL,'Quảng Ninh, Việt Nam','CLB Bóng đá Than Quảng Ninh đang thi đấu tại hệ thống các Giải Bóng đá chuyên nghiệp Quốc gia, biệt hiệu đội bóng đất Mỏ. Ngày 24/4/1956 thành lập Đội bóng đá Thanh niên Hồng Quảng Năm 1967 đổi tên thành Đội bóng Thanh niên Quảng Ninh Năm 1990 lấy tên đội bóng đá Công nhân Quảng Ninh, năm 1991 đội bóng bị giải thể. Năm 1994 tái thành lập với tên gọi như ngày nay Đội bóng đá Than Quảng Ninh. Năm 2006 giành quyền chơi ở Giải Hạng nhất Quốc gia và sau 7 năm thi đấu năm 2014 đội bóng đã có mặt tại sân chơi V.League cho đến nay (Trong năm 2016 đội Than Quảng Ninh đoạt vô địch Cúp Quốc gia, giành quyền tham gia Giải AFC Cup 2017).',102,110),(111,'Thanh Hóa',NULL,'Thanh Hóa, Việt Nam','CLB Bóng đá Thanh Hóa, trụ sở tại số 37 Lê Quý Đôn, Phường Ba Đình, Thành phố Thanh Hóa, hiện đang thi đấu tại V.League 1. CLB Bóng đá Thanh Hóa  là một câu lạc bộ bóng đá chuyên nghiệp, có lịch sử lâu đời và từng đạt nhiều thành tích tại Việt Nam. Biệt danh của đội bóng là: Chiến binh Lam Sơn. Thành tích thi đấu: 2011: Xếp thứ 7 giải VĐQG 2012: Xếp thứ 11 giải VĐQG 2013: Xếp thứ 5 giải VĐQG 2014: Xếp thứ 3 giải VĐQG 2015: Xếp thứ 3 giải VĐQG 2016: Xếp thứ 6 giải VĐQG 2017: Xếp thứ 2 giải VĐQG 2018: Xếp thứ 2 Giải VĐQG, thứ Nhì Cúp QG 2019: Xếp thứ 13 Giải VĐQG.  ',102,111),(112,'TP Hồ Chí Minh',NULL,'Hồ Chí Minh, Việt Nam','Năm 2016, câu lạc bộ bóng đá Thành phố Hồ Chí Minh vô địch Giải hạng Nhất quốc gia 2016 và thăng hạng thi đấu tại hệ thống giải bóng đá cấp CLB cao nhất Việt Nam - Giải VĐQG. 2017: Xếp thứ 12 Giải VĐQG 2018: Xếp thứ 12 Giải VĐQG 2019: Xếp thứ 2 Giải VĐQG',101,112),(113,'Viettel',NULL,'Hà Nội, Việt Nam','Trung tâm Thể thao Viettel là một trung tâm đào tạo cầu thủ bóng đá chuyên nghiệp tại VN.',101,115),(114,'XSKT Cần Thơ',NULL,'Cần Thơ, Việt Nam','CLB Bóng đá Cần Thơ được thành lập vào năm 2004 trực thuộc Sở Văn hóa, thể thao và Du lịch thành phố Cần Thơ. Đến năm 2010 chuyển giao chủ sở hữu sang Công ty TNHH Nhà nước một thành viên XSKT Cần Thơ quản lý.',100,114),(115,'Quảng Nam',NULL,'Quảng Nam, Việt Nam','CLB Quảng Nam là đội bóng đá chuyên nghiệp đang thi đấu tại hệ thống các Giải Bóng đá chuyên nghiệp Quốc Gia. Sau nhiều mùa giải gắn tên đội bóng với các nhà tài trợ, từ mùa giải 2017, chính thức mang tên CLB Quảng Nam. Thành tích cao nhất đội bóng đạt được là chức Vô địch V.League 2017, tham dự Siêu cúp Quốc gia năm 2017, đội bóng lần đầu tiên trong lịch sử giành Siêu Cúp QG 2017.  Tại Giải VĐQG 2018, CLB Quảng Nam về đích với vị trí thứ 11 trên bảng xếp hạng.',100,113);
/*!40000 ALTER TABLE `tbldoibong` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbldoida`
--

DROP TABLE IF EXISTS `tbldoida`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `tbldoida` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `idtrandau` int(10) NOT NULL,
  `iddoibong` int(10) NOT NULL,
  `mota` varchar(255) DEFAULT NULL,
  `loaidoi` varchar(255) DEFAULT NULL,
  `free1` varchar(45) DEFAULT NULL,
  `free2` varchar(45) DEFAULT NULL,
  `free3` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKtblDoida162520` (`idtrandau`),
  KEY `FKtblDoida886739` (`iddoibong`),
  CONSTRAINT `FKtblDoida162520` FOREIGN KEY (`idtrandau`) REFERENCES `tbltrandau` (`id`),
  CONSTRAINT `FKtblDoida886739` FOREIGN KEY (`iddoibong`) REFERENCES `tbldoibong` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=202 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbldoida`
--

LOCK TABLES `tbldoida` WRITE;
/*!40000 ALTER TABLE `tbldoida` DISABLE KEYS */;
INSERT INTO `tbldoida` VALUES (100,100,100,NULL,'1',NULL,NULL,NULL),(101,101,100,NULL,'1',NULL,NULL,NULL),(102,102,100,NULL,'1',NULL,NULL,NULL),(103,100,115,NULL,'0',NULL,NULL,NULL),(104,101,114,NULL,'0',NULL,NULL,NULL),(105,102,101,NULL,'0',NULL,NULL,NULL),(106,103,115,NULL,'1',NULL,NULL,NULL),(107,104,115,NULL,'1',NULL,NULL,NULL),(108,105,115,NULL,'1',NULL,NULL,NULL),(109,103,100,NULL,'0',NULL,NULL,NULL),(110,104,114,NULL,'0',NULL,NULL,NULL),(111,105,101,NULL,'0',NULL,NULL,NULL),(112,106,114,NULL,'1',NULL,NULL,NULL),(113,107,114,NULL,'1',NULL,NULL,NULL),(114,108,114,NULL,'1',NULL,NULL,NULL),(115,106,100,NULL,'0',NULL,NULL,NULL),(116,107,115,NULL,'0',NULL,NULL,NULL),(117,108,101,NULL,'0',NULL,NULL,NULL),(118,109,101,NULL,'1',NULL,NULL,NULL),(119,110,101,NULL,'1',NULL,NULL,NULL),(120,111,101,NULL,'1',NULL,NULL,NULL),(121,109,100,NULL,'0',NULL,NULL,NULL),(122,110,115,NULL,'0',NULL,NULL,NULL),(123,111,114,NULL,'0',NULL,NULL,NULL),(124,112,103,NULL,'1',NULL,NULL,NULL),(125,113,103,NULL,'1',NULL,NULL,NULL),(126,114,103,NULL,'1',NULL,NULL,NULL),(127,112,113,NULL,'0',NULL,NULL,NULL),(128,113,102,NULL,'0',NULL,NULL,NULL),(129,114,112,NULL,'0',NULL,NULL,NULL),(130,115,113,NULL,'1',NULL,NULL,NULL),(131,116,113,NULL,'1',NULL,NULL,NULL),(132,117,113,NULL,'1',NULL,NULL,NULL),(133,115,103,NULL,'0',NULL,NULL,NULL),(134,116,102,NULL,'0',NULL,NULL,NULL),(135,117,112,NULL,'0',NULL,NULL,NULL),(136,118,102,NULL,'1',NULL,NULL,NULL),(137,119,102,NULL,'1',NULL,NULL,NULL),(138,120,102,NULL,'1',NULL,NULL,NULL),(139,118,103,NULL,'0',NULL,NULL,NULL),(140,119,113,NULL,'0',NULL,NULL,NULL),(141,120,112,NULL,'0',NULL,NULL,NULL),(142,121,112,NULL,'1',NULL,NULL,NULL),(143,122,112,NULL,'1',NULL,NULL,NULL),(144,123,112,NULL,'1',NULL,NULL,NULL),(145,121,103,NULL,'0',NULL,NULL,NULL),(146,122,113,NULL,'0',NULL,NULL,NULL),(147,123,102,NULL,'0',NULL,NULL,NULL),(148,124,105,NULL,'1',NULL,NULL,NULL),(149,125,105,NULL,'1',NULL,NULL,NULL),(150,126,105,NULL,'1',NULL,NULL,NULL),(151,124,111,NULL,'0',NULL,NULL,NULL),(152,125,110,NULL,'0',NULL,NULL,NULL),(153,126,104,NULL,'0',NULL,NULL,NULL),(154,127,111,NULL,'1',NULL,NULL,NULL),(155,128,111,NULL,'1',NULL,NULL,NULL),(156,129,111,NULL,'1',NULL,NULL,NULL),(157,127,105,NULL,'0',NULL,NULL,NULL),(158,128,110,NULL,'0',NULL,NULL,NULL),(159,129,104,NULL,'0',NULL,NULL,NULL),(160,130,110,NULL,'1',NULL,NULL,NULL),(161,131,110,NULL,'1',NULL,NULL,NULL),(162,132,110,NULL,'1',NULL,NULL,NULL),(163,130,105,NULL,'0',NULL,NULL,NULL),(164,131,111,NULL,'0',NULL,NULL,NULL),(165,132,104,NULL,'0',NULL,NULL,NULL),(166,133,104,NULL,'1',NULL,NULL,NULL),(167,134,104,NULL,'1',NULL,NULL,NULL),(168,135,104,NULL,'1',NULL,NULL,NULL),(169,133,105,NULL,'0',NULL,NULL,NULL),(170,134,111,NULL,'0',NULL,NULL,NULL),(171,135,110,NULL,'0',NULL,NULL,NULL),(172,136,107,NULL,'1',NULL,NULL,NULL),(173,137,107,NULL,'1',NULL,NULL,NULL),(174,138,107,NULL,'1',NULL,NULL,NULL),(175,136,109,NULL,'0',NULL,NULL,NULL),(176,137,106,NULL,'0',NULL,NULL,NULL),(177,138,108,NULL,'0',NULL,NULL,NULL),(178,139,109,NULL,'1',NULL,NULL,NULL),(179,140,109,NULL,'1',NULL,NULL,NULL),(180,141,109,NULL,'1',NULL,NULL,NULL),(181,139,107,NULL,'0',NULL,NULL,NULL),(182,140,106,NULL,'0',NULL,NULL,NULL),(183,141,108,NULL,'0',NULL,NULL,NULL),(184,142,106,NULL,'1',NULL,NULL,NULL),(185,143,106,NULL,'1',NULL,NULL,NULL),(186,144,106,NULL,'1',NULL,NULL,NULL),(187,142,107,NULL,'0',NULL,NULL,NULL),(188,143,109,NULL,'0',NULL,NULL,NULL),(189,144,108,NULL,'0',NULL,NULL,NULL),(190,145,108,NULL,'1',NULL,NULL,NULL),(191,146,108,NULL,'1',NULL,NULL,NULL),(192,147,108,NULL,'1',NULL,NULL,NULL),(193,145,107,NULL,'0',NULL,NULL,NULL),(194,146,109,NULL,'0',NULL,NULL,NULL),(195,147,106,NULL,'0',NULL,NULL,NULL);
/*!40000 ALTER TABLE `tbldoida` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbldoitac`
--

DROP TABLE IF EXISTS `tbldoitac`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `tbldoitac` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `tendoitac` varchar(255) DEFAULT NULL,
  `diachi` varchar(255) DEFAULT NULL,
  `mota` varchar(255) DEFAULT NULL,
  `sdt` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=105 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbldoitac`
--

LOCK TABLES `tbldoitac` WRITE;
/*!40000 ALTER TABLE `tbldoitac` DISABLE KEYS */;
INSERT INTO `tbldoitac` VALUES (100,'Đài Truyền hình Việt Nam-VTV','x','Đài Truyền hình Việt Nam, gọi tắt là VTV, là Đài Truyền hình quốc gia trực thuộc Chính phủ nước Cộng hòa Xã hội Chủ nghĩa Việt Nam','024 66897897'),(101,'Đài Truyền hình KTS VTC','Tòa nhà Số 23, Lạc Trung, Vĩnh Tuy, Hai Bà Trưng, Hà Nội','Đài Truyền hình Kỹ thuật số VTC, gọi tắt là VTC, là một thành viên của Đài tiếng nói Việt Nam. Đây là đài truyền hình đầu tiên ở Việt Nam phát sóng truyền hình kỹ thuật số','024 445 00 888'),(102,'Ðài Truyền hình Thành phố Hồ Chí Minh','14 Đinh Tiên Hoàng, Q. 1, TP.HCM','Đài Truyền hình Thành phố Hồ Chí Minh là Đài truyền hình do nhà nước Việt Nam quản lý, trực thuộc Ủy ban Nhân dân TP Hồ Chí Minh. Tên viết tắt của đài là HTV',' 028 3829 1667'),(103,'Đài Phát thanh - Truyền hình Vĩnh Long','Số 50, Đường Phạm Thái Bường, P.4, Vĩnh Long','Đài Phát thanh - Truyền hình Vĩnh Long là đài phát thanh - truyền hình trực thuộc Uỷ ban Nhân dân tỉnh Vĩnh Long, Việt Nam. Tên viết tắt của đài là THVL. Trên sóng truyền hình, Đài truyền hình Vĩnh Long phát trên hai kênh THVL1 và THVL2',' 0270 3822 345'),(104,'Đài Phát thanh - Truyền hình Hà Nội','Số 3-5 Huỳnh Thúc Kháng, Đống Đa, Hà Nội','Đài Phát thanh - Truyền hình Hà Nội là cơ quan truyền thông báo chi trực thuộc Ủy ban Nhân dân Thành phố Hà Nội.','024 3835 9132');
/*!40000 ALTER TABLE `tbldoitac` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblgiaidau`
--

DROP TABLE IF EXISTS `tblgiaidau`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `tblgiaidau` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `tengiai` varchar(255) DEFAULT NULL,
  `thoigianBD` date DEFAULT NULL,
  `thoigianKT` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblgiaidau`
--

LOCK TABLES `tblgiaidau` WRITE;
/*!40000 ALTER TABLE `tblgiaidau` DISABLE KEYS */;
INSERT INTO `tblgiaidau` VALUES (100,'Giải bóng đá ngoại hạng 2020-2021','2020-08-02','2021-02-02');
/*!40000 ALTER TABLE `tblgiaidau` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblhoadondoi`
--

DROP TABLE IF EXISTS `tblhoadondoi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `tblhoadondoi` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `iddoibong` int(10) NOT NULL,
  `ngaythanhtoan` date DEFAULT NULL,
  `tongtien` decimal(20,0) NOT NULL,
  `soluong` int(10) DEFAULT NULL,
  `free1` varchar(45) DEFAULT NULL,
  `free2` varchar(45) DEFAULT NULL,
  `free3` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKtblHoadonD673969` (`iddoibong`),
  CONSTRAINT `FKtblHoadonD673969` FOREIGN KEY (`iddoibong`) REFERENCES `tbldoibong` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblhoadondoi`
--

LOCK TABLES `tblhoadondoi` WRITE;
/*!40000 ALTER TABLE `tblhoadondoi` DISABLE KEYS */;
INSERT INTO `tblhoadondoi` VALUES (13,102,'2021-01-11',15000000,NULL,NULL,NULL,NULL),(16,103,'2021-01-11',15000000,NULL,NULL,NULL,NULL),(19,100,'2021-01-11',18000000,NULL,NULL,NULL,NULL),(20,115,'2021-01-11',15000000,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `tblhoadondoi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblhoadondoichitiet`
--

DROP TABLE IF EXISTS `tblhoadondoichitiet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `tblhoadondoichitiet` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `idhoadondoi` int(10) NOT NULL,
  `idhopdong` int(10) NOT NULL,
  `free1` varchar(45) DEFAULT NULL,
  `free2` varchar(45) DEFAULT NULL,
  `free3` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKtblHoadonC135263` (`idhoadondoi`),
  KEY `FKtblHoadonC456625` (`idhopdong`),
  CONSTRAINT `FKtblHoadonC135263` FOREIGN KEY (`idhoadondoi`) REFERENCES `tblhoadondoi` (`id`),
  CONSTRAINT `FKtblHoadonC456625` FOREIGN KEY (`idhopdong`) REFERENCES `tblhopdong` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=84 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblhoadondoichitiet`
--

LOCK TABLES `tblhoadondoichitiet` WRITE;
/*!40000 ALTER TABLE `tblhoadondoichitiet` DISABLE KEYS */;
INSERT INTO `tblhoadondoichitiet` VALUES (42,13,113,NULL,NULL,NULL),(43,13,116,NULL,NULL,NULL),(44,13,118,NULL,NULL,NULL),(45,13,119,NULL,NULL,NULL),(46,13,120,NULL,NULL,NULL),(47,13,123,NULL,NULL,NULL),(60,16,112,NULL,NULL,NULL),(61,16,113,NULL,NULL,NULL),(62,16,114,NULL,NULL,NULL),(63,16,115,NULL,NULL,NULL),(64,16,118,NULL,NULL,NULL),(65,16,121,NULL,NULL,NULL),(72,19,100,NULL,NULL,NULL),(73,19,101,NULL,NULL,NULL),(74,19,102,NULL,NULL,NULL),(75,19,103,NULL,NULL,NULL),(76,19,106,NULL,NULL,NULL),(77,19,109,NULL,NULL,NULL),(78,20,100,NULL,NULL,NULL),(79,20,103,NULL,NULL,NULL),(80,20,104,NULL,NULL,NULL),(81,20,105,NULL,NULL,NULL),(82,20,107,NULL,NULL,NULL),(83,20,110,NULL,NULL,NULL);
/*!40000 ALTER TABLE `tblhoadondoichitiet` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblhoadontt`
--

DROP TABLE IF EXISTS `tblhoadontt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `tblhoadontt` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `idbantochuc` int(10) NOT NULL,
  `idtrongtai` int(10) NOT NULL,
  `ngaythanhtoan` date DEFAULT NULL,
  `tongtien` float NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FKtblHoadonT329259` (`idtrongtai`),
  KEY `FKtblHoadonT438975` (`idbantochuc`),
  CONSTRAINT `FKtblHoadonT329259` FOREIGN KEY (`idtrongtai`) REFERENCES `tbltrongtai` (`id`),
  CONSTRAINT `FKtblHoadonT438975` FOREIGN KEY (`idbantochuc`) REFERENCES `tblbantochuc` (`idnguoidung`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblhoadontt`
--

LOCK TABLES `tblhoadontt` WRITE;
/*!40000 ALTER TABLE `tblhoadontt` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblhoadontt` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblhoadonttchitiet`
--

DROP TABLE IF EXISTS `tblhoadonttchitiet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `tblhoadonttchitiet` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `idtotrongtaichitiet` int(10) NOT NULL,
  `idhoadontt` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FKtblHoadonT163358` (`idtotrongtaichitiet`),
  KEY `FKtblHoadonT91118` (`idhoadontt`),
  CONSTRAINT `FKtblHoadonT163358` FOREIGN KEY (`idtotrongtaichitiet`) REFERENCES `tbltotrongtaichitiet` (`id`),
  CONSTRAINT `FKtblHoadonT91118` FOREIGN KEY (`idhoadontt`) REFERENCES `tblhoadontt` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblhoadonttchitiet`
--

LOCK TABLES `tblhoadonttchitiet` WRITE;
/*!40000 ALTER TABLE `tblhoadonttchitiet` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblhoadonttchitiet` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblhopdong`
--

DROP TABLE IF EXISTS `tblhopdong`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `tblhopdong` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `idbantochuc` int(10) NOT NULL,
  `iddoitac` int(10) NOT NULL,
  `idtrandau` int(10) NOT NULL,
  `ngaykihd` date DEFAULT NULL,
  `gia` decimal(20,0) NOT NULL,
  `mota` varchar(255) DEFAULT NULL,
  `free1` varchar(45) DEFAULT NULL,
  `free2` varchar(45) DEFAULT NULL,
  `free3` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKtblHopdong408293` (`iddoitac`),
  KEY `FKtblHopdong444408` (`idtrandau`),
  KEY `FKtblHopdong881231` (`idbantochuc`),
  CONSTRAINT `FKtblHopdong408293` FOREIGN KEY (`iddoitac`) REFERENCES `tbldoitac` (`id`),
  CONSTRAINT `FKtblHopdong444408` FOREIGN KEY (`idtrandau`) REFERENCES `tbltrandau` (`id`),
  CONSTRAINT `FKtblHopdong881231` FOREIGN KEY (`idbantochuc`) REFERENCES `tblbantochuc` (`idnguoidung`)
) ENGINE=InnoDB AUTO_INCREMENT=148 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblhopdong`
--

LOCK TABLES `tblhopdong` WRITE;
/*!40000 ALTER TABLE `tblhopdong` DISABLE KEYS */;
INSERT INTO `tblhopdong` VALUES (100,100,100,100,'2020-12-02',10000000,NULL,NULL,NULL,NULL),(101,100,100,101,'2020-12-02',20000000,NULL,NULL,NULL,NULL),(102,100,100,102,'2020-12-02',10000000,NULL,NULL,NULL,NULL),(103,100,100,103,'2020-12-02',10000000,NULL,NULL,NULL,NULL),(104,100,100,104,'2020-12-02',10000000,NULL,NULL,NULL,NULL),(105,100,100,105,'2020-12-02',10000000,NULL,NULL,NULL,NULL),(106,100,100,106,'2020-12-02',10000000,NULL,NULL,NULL,NULL),(107,100,100,107,'2020-12-02',10000000,NULL,NULL,NULL,NULL),(108,100,100,108,'2020-12-02',10000000,NULL,NULL,NULL,NULL),(109,100,100,109,'2020-12-02',10000000,NULL,NULL,NULL,NULL),(110,100,100,110,'2020-12-02',10000000,NULL,NULL,NULL,NULL),(111,100,100,111,'2020-12-02',10000000,NULL,NULL,NULL,NULL),(112,100,100,112,'2020-12-02',10000000,NULL,NULL,NULL,NULL),(113,100,100,113,'2020-12-02',10000000,NULL,NULL,NULL,NULL),(114,100,100,114,'2020-12-02',10000000,NULL,NULL,NULL,NULL),(115,100,100,115,'2020-12-02',10000000,NULL,NULL,NULL,NULL),(116,100,100,116,'2020-12-02',10000000,NULL,NULL,NULL,NULL),(117,100,100,117,'2020-12-02',10000000,NULL,NULL,NULL,NULL),(118,100,100,118,'2020-12-02',10000000,NULL,NULL,NULL,NULL),(119,100,100,119,'2020-12-02',10000000,NULL,NULL,NULL,NULL),(120,100,100,120,'2020-12-02',10000000,NULL,NULL,NULL,NULL),(121,100,100,121,'2020-12-02',10000000,NULL,NULL,NULL,NULL),(122,100,100,122,'2020-12-02',10000000,NULL,NULL,NULL,NULL),(123,100,100,123,'2020-12-02',10000000,NULL,NULL,NULL,NULL),(124,100,100,124,'2020-12-02',10000000,NULL,NULL,NULL,NULL),(125,100,100,125,'2020-12-02',10000000,NULL,NULL,NULL,NULL),(126,100,100,126,'2020-12-02',10000000,NULL,NULL,NULL,NULL),(127,100,100,127,'2020-12-02',10000000,NULL,NULL,NULL,NULL),(128,100,100,128,'2020-12-02',10000000,NULL,NULL,NULL,NULL),(129,100,100,129,'2020-12-02',10000000,NULL,NULL,NULL,NULL),(130,100,100,130,'2020-12-02',10000000,NULL,NULL,NULL,NULL),(131,100,100,131,'2020-12-02',10000000,NULL,NULL,NULL,NULL),(132,100,100,132,'2020-12-02',10000000,NULL,NULL,NULL,NULL),(133,100,100,133,'2020-12-02',10000000,NULL,NULL,NULL,NULL),(134,100,100,134,'2020-12-02',10000000,NULL,NULL,NULL,NULL),(135,100,100,135,'2020-12-02',10000000,NULL,NULL,NULL,NULL),(136,100,100,136,'2020-12-02',10000000,NULL,NULL,NULL,NULL),(137,100,100,137,'2020-12-02',10000000,NULL,NULL,NULL,NULL),(138,100,100,138,'2020-12-02',10000000,NULL,NULL,NULL,NULL),(139,100,100,139,'2020-12-02',10000000,NULL,NULL,NULL,NULL),(140,100,100,140,'2020-12-02',10000000,NULL,NULL,NULL,NULL),(141,100,100,141,'2020-12-02',10000000,NULL,NULL,NULL,NULL),(142,100,100,142,'2020-12-02',10000000,NULL,NULL,NULL,NULL),(143,100,100,143,'2020-12-02',10000000,NULL,NULL,NULL,NULL),(144,100,100,144,'2020-12-02',10000000,NULL,NULL,NULL,NULL),(145,100,100,145,'2020-12-02',10000000,NULL,NULL,NULL,NULL),(146,100,100,146,'2020-12-02',10000000,NULL,NULL,NULL,NULL),(147,100,100,147,'2020-12-02',10000000,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `tblhopdong` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblhoten`
--

DROP TABLE IF EXISTS `tblhoten`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `tblhoten` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `ho` varchar(255) DEFAULT NULL,
  `tendem` varchar(255) DEFAULT NULL,
  `ten` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblhoten`
--

LOCK TABLES `tblhoten` WRITE;
/*!40000 ALTER TABLE `tblhoten` DISABLE KEYS */;
INSERT INTO `tblhoten` VALUES (100,'Trần','Quang','Huy');
/*!40000 ALTER TABLE `tblhoten` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblnguoidung`
--

DROP TABLE IF EXISTS `tblnguoidung`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `tblnguoidung` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) DEFAULT NULL,
  `sdt` varchar(255) DEFAULT NULL,
  `vaitro` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `iddiachi` int(10) NOT NULL,
  `idhoten` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`),
  KEY `FKtblNguoidu93500` (`idhoten`),
  KEY `FKtblNguoidu935250` (`iddiachi`),
  CONSTRAINT `FKtblNguoidu93500` FOREIGN KEY (`idhoten`) REFERENCES `tblhoten` (`id`),
  CONSTRAINT `FKtblNguoidu935250` FOREIGN KEY (`iddiachi`) REFERENCES `tbldiachi` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblnguoidung`
--

LOCK TABLES `tblnguoidung` WRITE;
/*!40000 ALTER TABLE `tblnguoidung` DISABLE KEYS */;
INSERT INTO `tblnguoidung` VALUES (100,'tranhuy','123456','0383144400','bantochuc','tranhuy26031998@gmail.com',100,100);
/*!40000 ALTER TABLE `tblnguoidung` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblquanli`
--

DROP TABLE IF EXISTS `tblquanli`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `tblquanli` (
  `idnguoidung` int(10) NOT NULL,
  PRIMARY KEY (`idnguoidung`),
  CONSTRAINT `FKtblQuanli394023` FOREIGN KEY (`idnguoidung`) REFERENCES `tblnguoidung` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblquanli`
--

LOCK TABLES `tblquanli` WRITE;
/*!40000 ALTER TABLE `tblquanli` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblquanli` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblsandau`
--

DROP TABLE IF EXISTS `tblsandau`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `tblsandau` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `tensandau` varchar(255) DEFAULT NULL,
  `diadiem` varchar(255) DEFAULT NULL,
  `soghe` int(10) NOT NULL,
  `mota` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=116 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblsandau`
--

LOCK TABLES `tblsandau` WRITE;
/*!40000 ALTER TABLE `tblsandau` DISABLE KEYS */;
INSERT INTO `tblsandau` VALUES (100,'SVĐ Bình Dương',' Đường 30/4, Đại lộ Bình Dương, TP Thủ Dầu Một, Bình Dương',13035,'là sân vận động'),(101,'SVĐ Quy Nhơn','236B Lê Hồng Phong - TP Quy Nhơn',15000,'Là sân vận động'),(102,'SVĐ Thiên Trường','Số 5 Đặng Xuân Thiều, phường Vị Hoàng, TP Nam Định, Nam Định',20000,'Là sân vận động'),(103,'SVĐ Hàng Đẫy','Số 9 Trịnh Hoài Đức, P. Cát Linh, Q. Đống Đa, TP Hà Nội',22500,'Là sân vận động'),(104,'SVĐ Lạch Tray','Số 17 Lạch Tray, Ngô Quyền,Hải Phòng',25000,'Là sân vận động'),(105,'SVĐ Pleiku','22 Quang Trung, đường Tây Sơn, Pleiku, Gia Lai',12000,'Là sân vận động'),(106,'SVĐ Hà Tĩnh','Số 5 đường Nguyễn Biểu, P.Nam Hà, Hà Tĩnh',20000,'Là sân vận động'),(107,'SVĐ Thống Nhất',' 30 Nguyễn Kim, P6, Q10, TPHCM',16000,'Là sân vận động'),(108,'SVĐ Hòa Xuân','Phường Hòa Xuân, Quận Cẩm Lệ, Đà Nẵng',20000,'Là sân vận động'),(109,'SVĐ Vinh','số 6 Đào Tấn, Tp Vinh, Nghệ An',18000,'Là sân vận động'),(110,'SVĐ Cẩm Phả',' P.Cẩm Trung, TP Cẩm Phả, Tỉnh Quảng Ninh',20000,'Là sân vận động'),(111,'SVĐ Thanh Hóa',' 37 Lê Quý Đôn, Ba Đình, TP Thanh Hóa, Thanh Hóa.',20000,'Là sân vận động'),(112,'SVĐ Thống Nhất','30 Nguyễn Kim, P6, Q10, TPHCM',16000,'Là sân vận động'),(113,'SVĐ Quảng Nam','Tổ 8 phường Hòa Hưng, TP Tam Kỳ, Quảng Nam',15000,'Là sân vận động'),(114,'SVĐ Cần Thơ','Phường Cái Khế, Quận Ninh Kiều, thành phố Cần Thơ',30000,'Là sân vận động'),(115,'SVĐ Mỹ Đình','Đường Lê Đức Thọ, Phường Mỹ Đình 1, Quận Nam Từ Liêm, Hà Nội, Việt Nam',40192,'Là sân vận động');
/*!40000 ALTER TABLE `tblsandau` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblsukien`
--

DROP TABLE IF EXISTS `tblsukien`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `tblsukien` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `tensukien` varchar(255) DEFAULT NULL,
  `mota` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblsukien`
--

LOCK TABLES `tblsukien` WRITE;
/*!40000 ALTER TABLE `tblsukien` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblsukien` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblsukientrandau`
--

DROP TABLE IF EXISTS `tblsukientrandau`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `tblsukientrandau` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `idthongtintrandau` int(10) NOT NULL,
  `idsukien` int(10) NOT NULL,
  `idcauthu` int(10) NOT NULL,
  `mota` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKtblSukienT379651` (`idsukien`),
  KEY `FKtblSukienT590399` (`idthongtintrandau`),
  KEY `FKtblSukienT671147` (`idcauthu`),
  CONSTRAINT `FKtblSukienT379651` FOREIGN KEY (`idsukien`) REFERENCES `tblsukien` (`id`),
  CONSTRAINT `FKtblSukienT590399` FOREIGN KEY (`idthongtintrandau`) REFERENCES `tblthongtintrandau` (`id`),
  CONSTRAINT `FKtblSukienT671147` FOREIGN KEY (`idcauthu`) REFERENCES `tblcauthu` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblsukientrandau`
--

LOCK TABLES `tblsukientrandau` WRITE;
/*!40000 ALTER TABLE `tblsukientrandau` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblsukientrandau` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblthongtintrandau`
--

DROP TABLE IF EXISTS `tblthongtintrandau`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `tblthongtintrandau` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `sobanthang` varchar(255) DEFAULT NULL,
  `idtrandau` int(10) DEFAULT NULL,
  `sobanthua` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKtblThongti16654` (`idtrandau`),
  CONSTRAINT `FKtblThongti16654` FOREIGN KEY (`idtrandau`) REFERENCES `tbltrandau` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblthongtintrandau`
--

LOCK TABLES `tblthongtintrandau` WRITE;
/*!40000 ALTER TABLE `tblthongtintrandau` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblthongtintrandau` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbltotrongtai`
--

DROP TABLE IF EXISTS `tbltotrongtai`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `tbltotrongtai` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `songuoi` int(10) DEFAULT NULL,
  `mota` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbltotrongtai`
--

LOCK TABLES `tbltotrongtai` WRITE;
/*!40000 ALTER TABLE `tbltotrongtai` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbltotrongtai` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbltotrongtaichitiet`
--

DROP TABLE IF EXISTS `tbltotrongtaichitiet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `tbltotrongtaichitiet` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `idtotrongtai` int(10) NOT NULL,
  `idtrongtai` int(10) NOT NULL,
  `loaitrongtai` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKtblTotrong899870` (`idtotrongtai`),
  KEY `FKtblTotrong91034` (`idtrongtai`),
  CONSTRAINT `FKtblTotrong899870` FOREIGN KEY (`idtotrongtai`) REFERENCES `tbltotrongtai` (`id`),
  CONSTRAINT `FKtblTotrong91034` FOREIGN KEY (`idtrongtai`) REFERENCES `tbltrongtai` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbltotrongtaichitiet`
--

LOCK TABLES `tbltotrongtaichitiet` WRITE;
/*!40000 ALTER TABLE `tbltotrongtaichitiet` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbltotrongtaichitiet` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbltrandau`
--

DROP TABLE IF EXISTS `tbltrandau`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `tbltrandau` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `idsandau` int(10) NOT NULL,
  `idvongdau` int(10) NOT NULL,
  `idtotrongtai` int(10) DEFAULT NULL,
  `ten` varchar(255) DEFAULT NULL,
  `ngaythidau` date DEFAULT NULL,
  `giothidau` time(6) DEFAULT NULL,
  `mota` varchar(255) DEFAULT NULL,
  `thoigian` datetime DEFAULT NULL,
  `free2` varchar(45) DEFAULT NULL,
  `free3` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `tblTotrongtaiid_UNIQUE` (`idtotrongtai`),
  KEY `FKtblTrandau102292` (`idsandau`),
  KEY `FKtblTrandau744489` (`idvongdau`),
  CONSTRAINT `FKtblTrandau102292` FOREIGN KEY (`idsandau`) REFERENCES `tblsandau` (`id`),
  CONSTRAINT `FKtblTrandau744489` FOREIGN KEY (`idvongdau`) REFERENCES `tblvongdau` (`id`),
  CONSTRAINT `FKtblTrandau764519` FOREIGN KEY (`idtotrongtai`) REFERENCES `tbltotrongtai` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=149 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbltrandau`
--

LOCK TABLES `tbltrandau` WRITE;
/*!40000 ALTER TABLE `tbltrandau` DISABLE KEYS */;
INSERT INTO `tbltrandau` VALUES (100,100,100,NULL,NULL,'2020-12-04','15:00:00.000000',NULL,'2020-12-04 15:00:00',NULL,NULL),(101,100,100,NULL,NULL,'2020-12-08','15:00:00.000000',NULL,'2020-12-08 15:00:00',NULL,NULL),(102,100,100,NULL,NULL,'2020-12-12','15:00:00.000000',NULL,'2020-12-12 15:00:00',NULL,NULL),(103,113,100,NULL,NULL,'2020-12-18','15:00:00.000000',NULL,'2020-12-18 15:00:00',NULL,NULL),(104,113,100,NULL,NULL,'2020-12-09','15:00:00.000000',NULL,'2020-12-09 15:00:00',NULL,NULL),(105,113,100,NULL,NULL,'2020-12-13','15:00:00.000000',NULL,'2020-12-13 15:00:00',NULL,NULL),(106,114,100,NULL,NULL,'2020-12-24','15:00:00.000000',NULL,'2020-12-24 15:00:00',NULL,NULL),(107,114,100,NULL,NULL,'2020-12-30','15:00:00.000000',NULL,'2020-12-30 15:00:00',NULL,NULL),(108,114,100,NULL,NULL,'2020-12-05','15:00:00.000000',NULL,'2020-12-05 15:00:00',NULL,NULL),(109,101,100,NULL,NULL,'2021-01-01','15:00:00.000000',NULL,'2021-01-01 15:00:00',NULL,NULL),(110,101,100,NULL,NULL,'2020-12-25','15:00:00.000000',NULL,'2020-12-25 15:00:00',NULL,NULL),(111,101,100,NULL,NULL,'2020-12-19','15:00:00.000000',NULL,'2020-12-19 15:00:00',NULL,NULL),(112,103,100,NULL,NULL,'2020-12-04','15:00:00.000000',NULL,'2020-12-04 15:00:00',NULL,NULL),(113,103,100,NULL,NULL,'2020-12-08','15:00:00.000000',NULL,'2020-12-08 15:00:00',NULL,NULL),(114,103,100,NULL,NULL,'2020-12-12','15:00:00.000000',NULL,'2020-12-12 15:00:00',NULL,NULL),(115,115,100,NULL,NULL,'2020-12-18','15:00:00.000000',NULL,'2020-12-18 15:00:00',NULL,NULL),(116,115,100,NULL,NULL,'2020-12-09','15:00:00.000000',NULL,'2020-12-09 15:00:00',NULL,NULL),(117,115,100,NULL,NULL,'2020-12-13','15:00:00.000000',NULL,'2020-12-13 15:00:00',NULL,NULL),(118,102,100,NULL,NULL,'2020-12-24','15:00:00.000000',NULL,'2020-12-24 15:00:00',NULL,NULL),(119,102,100,NULL,NULL,'2020-12-30','15:00:00.000000',NULL,'2020-12-30 15:00:00',NULL,NULL),(120,102,100,NULL,NULL,'2020-12-05','15:00:00.000000',NULL,'2020-12-05 15:00:00',NULL,NULL),(121,112,100,NULL,NULL,'2021-01-01','15:00:00.000000',NULL,'2021-01-01 15:00:00',NULL,NULL),(122,112,100,NULL,NULL,'2020-12-25','15:00:00.000000',NULL,'2020-12-25 15:00:00',NULL,NULL),(123,112,100,NULL,NULL,'2020-12-19','15:00:00.000000',NULL,'2020-12-19 15:00:00',NULL,NULL),(124,105,100,NULL,NULL,'2020-12-04','18:00:00.000000',NULL,'2020-12-04 18:00:00',NULL,NULL),(125,105,100,NULL,NULL,'2020-12-08','18:00:00.000000',NULL,'2020-12-08 18:00:00',NULL,NULL),(126,105,100,NULL,NULL,'2020-12-12','18:00:00.000000',NULL,'2020-12-12 18:00:00',NULL,NULL),(127,111,100,NULL,NULL,'2020-12-18','18:00:00.000000',NULL,'2020-12-18 18:00:00',NULL,NULL),(128,111,100,NULL,NULL,'2020-12-09','18:00:00.000000',NULL,'2020-12-09 18:00:00',NULL,NULL),(129,111,100,NULL,NULL,'2020-12-13','18:00:00.000000',NULL,'2020-12-13 18:00:00',NULL,NULL),(130,110,100,NULL,NULL,'2020-12-24','18:00:00.000000',NULL,'2020-12-24 18:00:00',NULL,NULL),(131,110,100,NULL,NULL,'2020-12-30','18:00:00.000000',NULL,'2020-12-30 18:00:00',NULL,NULL),(132,110,100,NULL,NULL,'2020-12-05','18:00:00.000000',NULL,'2020-12-05 18:00:00',NULL,NULL),(133,104,100,NULL,NULL,'2021-01-01','18:00:00.000000',NULL,'2021-01-15 18:00:00',NULL,NULL),(134,104,100,NULL,NULL,'2020-12-25','18:00:00.000000',NULL,'2020-12-25 18:00:00',NULL,NULL),(135,104,100,NULL,NULL,'2020-12-19','18:00:00.000000',NULL,'2020-12-19 18:00:00',NULL,NULL),(136,107,100,NULL,NULL,'2020-12-04','19:00:00.000000',NULL,'2020-12-04 19:00:00',NULL,NULL),(137,107,100,NULL,NULL,'2020-12-08','19:00:00.000000',NULL,'2020-12-08 19:00:00',NULL,NULL),(138,107,100,NULL,NULL,'2020-12-12','19:00:00.000000',NULL,'2020-12-12 19:00:00',NULL,NULL),(139,109,100,NULL,NULL,'2020-12-18','19:00:00.000000',NULL,'2020-12-18 19:00:00',NULL,NULL),(140,109,100,NULL,NULL,'2020-12-09','19:00:00.000000',NULL,'2020-12-09 19:00:00',NULL,NULL),(141,109,100,NULL,NULL,'2020-12-13','19:00:00.000000',NULL,'2020-12-13 19:00:00',NULL,NULL),(142,106,100,NULL,NULL,'2020-12-24','19:00:00.000000',NULL,'2020-12-24 19:00:00',NULL,NULL),(143,106,100,NULL,NULL,'2020-12-30','19:00:00.000000',NULL,'2020-12-30 19:00:00',NULL,NULL),(144,106,100,NULL,NULL,'2020-12-05','19:00:00.000000',NULL,'2020-12-05 19:00:00',NULL,NULL),(145,108,100,NULL,NULL,'2021-01-01','19:00:00.000000',NULL,'2021-01-01 19:00:00',NULL,NULL),(146,108,100,NULL,NULL,'2020-12-25','19:00:00.000000',NULL,'2020-12-25 19:00:00',NULL,NULL),(147,108,100,NULL,NULL,'2020-12-19','19:00:00.000000',NULL,'2020-12-19 19:00:00',NULL,NULL),(148,108,100,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `tbltrandau` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbltrongtai`
--

DROP TABLE IF EXISTS `tbltrongtai`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `tbltrongtai` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `ten` varchar(255) DEFAULT NULL,
  `ngaysinh` date DEFAULT NULL,
  `thamnien` int(10) NOT NULL,
  `sdt` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `diachi` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbltrongtai`
--

LOCK TABLES `tbltrongtai` WRITE;
/*!40000 ALTER TABLE `tbltrongtai` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbltrongtai` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblvongdau`
--

DROP TABLE IF EXISTS `tblvongdau`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `tblvongdau` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `idgiaidau` int(10) NOT NULL,
  `ten` varchar(255) DEFAULT NULL,
  `mota` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKtblVongdau984322` (`idgiaidau`),
  CONSTRAINT `FKtblVongdau984322` FOREIGN KEY (`idgiaidau`) REFERENCES `tblgiaidau` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=104 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblvongdau`
--

LOCK TABLES `tblvongdau` WRITE;
/*!40000 ALTER TABLE `tblvongdau` DISABLE KEYS */;
INSERT INTO `tblvongdau` VALUES (100,100,'Vòng bảng','Các đội bóng được chia thành các bảng, mỗi bảng có 4 đội. Sau khi vòng bảng kết thúc chọn ra 2 đội mỗi bảng có thành tích cao nhất vào vòng trong'),(101,100,'Vòng loại trực tiếp','Các đội nhất ở mỗi bảng sẽ đấu với đội nhì ở bảng khác. Sau mỗi trận đấu chỉ 1 đội thắng được vào vòng trong'),(102,100,'Vòng bán kết','Chọn ngẫu nhiên các đội thi đấu với nhau. Sau vòng đấu chọn ra 2 đội vào chung kết'),(103,100,'Vòng chung kết',NULL);
/*!40000 ALTER TABLE `tblvongdau` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `user` (
  `user_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `facebook` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `fullName` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `status` int(11) DEFAULT NULL,
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `UK_sb8bbouer5wak8vyiiy4pf2bx` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,NULL,NULL,'Đặng Quế Anh','$2a$10$eijIA5IYdnIX0bBEUAzQsO76aV5BZSwwuiP6rVbU2RprFooh3GlY2',1,'admin'),(2,NULL,NULL,'Đỗ Thanh Quang','$2a$10$9PVAUvdyjxiGnhbz/u1EUudi2BlBiAW5RooYaDiio3Sxt3Q/SwdJ2',1,'quangdt'),(3,NULL,NULL,'Đỗ Thanh Quang','$2a$10$eijIA5IYdnIX0bBEUAzQsO76aV5BZSwwuiP6rVbU2RprFooh3GlY2',1,'quang031198'),(5,NULL,NULL,'Dang Que Anh','$2a$10$YMXoJQigN8QITnrmybKqWO/qRc.2vuX6SYZmwQCEWxQkqtMP52qf2',1,'dangqueanh'),(7,NULL,NULL,'test','$2a$10$pM7YFyNzPrk/hcoKfgMv3ejh3Iy810EzhWIt.Tkc3vzo.a50hzvZK',1,'test'),(8,NULL,NULL,'Dang que anh','$2a$10$YMtbyOio/IK9D.6pzTYYFuSY.gJx23Js3fZecrwUJdQ6bO1S9dic.',1,'queanh');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'bongda'
--
/*!50003 DROP PROCEDURE IF EXISTS `kiemtraDN` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `kiemtraDN`(IN usr VARCHAR(255), pwd VARCHAR(255))
BEGIN
	SELECT *
    FROM tblnguoidung AS nd
    WHERE nd.username=usr AND nd.password=pwd;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_Thanh_Toan_TD` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_Thanh_Toan_TD`(IN ID_DB INT,IN THOI_GIAN DATETIME)
BEGIN
DECLARE  CHU_NHA VARCHAR(1) DEFAULT '1';
DECLARE  SAN_KHACH VARCHAR(1) DEFAULT '0';
DECLARE  GIA_CHU_NHA DOUBLE(2,2) DEFAULT 0.3;
DECLARE  GIA_SAN_KHACH DOUBLE(2,2) DEFAULT 0.2;


SELECT td.id AS idtrandau, td.ten,td.thoigian,hd.id AS idhd,loaidoi,
	(
		CASE
			WHEN loaidoi= CHU_NHA THEN  ROUND(gia*0.3)
			WHEN loaidoi= SAN_KHACH THEN  ROUND(gia*0.2)
			ELSE 0
		END
        ) AS tongtien
FROM tbldoida dd
	INNER JOIN tblhopdong hd ON dd.idtrandau=hd.idtrandau
	INNER JOIN tbltrandau td ON dd.idtrandau=td.id
    INNER JOIN tbldoibong db ON dd.iddoibong=db.id
    LEFT JOIN tblhoadondoi hoad ON dd.iddoibong=hoad.iddoibong
    LEFT JOIN tblhoadondoichitiet hdct ON hoad.id=hdct.idhoadondoi
WHERE 
		   dd.iddoibong=ID_DB
      AND  td.thoigian<= THOI_GIAN
      AND hdct.id IS NULL;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_Tinh_Tong_Tien` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_Tinh_Tong_Tien`(IN THOI_GIAN DATETIME)
BEGIN
DECLARE  CHU_NHA VARCHAR(1) DEFAULT '1';
DECLARE  SAN_KHACH VARCHAR(1) DEFAULT '0';
DECLARE  GIA_CHU_NHA DOUBLE(2,2) DEFAULT 0.3;
DECLARE  GIA_SAN_KHACH DOUBLE(2,2) DEFAULT 0.2;


SELECT 
	db.id,
	db.tendoi,hoad.id AS idhoadon,hdct.id AS idhoadonchitiet,
    SUM(
		CASE
			WHEN loaidoi= CHU_NHA THEN  ROUND(gia*0.3)
			WHEN loaidoi= SAN_KHACH THEN  ROUND(gia*0.2)
			ELSE 0
		END
        ) AS tongtien
FROM tbldoida dd
	INNER JOIN tblhopdong hd ON dd.idtrandau=hd.idtrandau
	INNER JOIN tbldoibong db ON dd.iddoibong=db.id
	INNER JOIN tbltrandau td ON dd.idtrandau=td.id
    LEFT JOIN tblhoadondoi hoad ON dd.iddoibong=hoad.iddoibong
    LEFT JOIN tblhoadondoichitiet hdct ON hoad.id=hdct.idhoadondoi
WHERE 
		-- td.ngaythidau<= NGAY_TT
	    -- AND td.giothidau<= GIO_TT
        td.thoigian<= THOI_GIAN
    AND hdct.id IS NULL
GROUP BY db.id
ORDER BY db.id;


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

-- Dump completed on 2021-04-09 23:59:13
