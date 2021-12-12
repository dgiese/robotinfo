-- --------------------------------------------------------
-- Robotinfo DATABASE
-- (c) 2021 Dennis Giese (dennis [at] dontvacuum.me)
-- This DB generates https://dontvacuum.me/robotinfo/
-- --------------------------------------------------------

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
DROP TABLE IF EXISTS `robotinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `robotinfo` (
  `id` int NOT NULL AUTO_INCREMENT,
  `modelname` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `region` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `codename` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `firmwareformat` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `firmwareformat-more` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `voiceformat` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `voiceformat-more` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `SOC` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT 'Allwinner R16 (4x)',
  `RAM` int DEFAULT '512',
  `RAM-text` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '512 MByte',
  `Flash` int DEFAULT '256',
  `Flash-text` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '256MByte NAND',
  `MCU` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `WiFi` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `variant` int NOT NULL DEFAULT '0',
  `OS` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `Kernel` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `ReleasedQ` int DEFAULT NULL,
  `ReleasedY` int DEFAULT NULL,
  `firmwareformat-link` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `voiceformat-link` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `feat_LIDAR` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `feat_Camera` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `feat_Mop` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `feat_Waterpump` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `feat_Basestation` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `feat_Towerbumper` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `feat_IR_dropsensors` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `feat_IR_sidesensors` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `feat_frontsensor` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `cloud_miio_version` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `cloud_other` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `support_root` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `support_root_since` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `support_root_public` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `support_valetudo` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `res_teardown` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `support_root_complexity` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `res_config_files` varchar(200) DEFAULT NULL,
  `res_builder` varchar(200) DEFAULT NULL,
  `res_picture` varchar(200) DEFAULT NULL,
  `res_root_howto` varchar(200) DEFAULT NULL,
  `comments` text,
  `status` varchar(200) DEFAULT NULL,
  `warning` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `robotinfo` WRITE;
/*!40000 ALTER TABLE `robotinfo` DISABLE KEYS */;
INSERT INTO `robotinfo` VALUES (1,'rockrobo.vacuum.v1','Xiaomi Vacuum Robot','','ruby','ccrypt, unsigned','','ccrypt, unsigned','','Allwinner R16 (4x)',512,'512 MByte',4096,'4GByte eMMC','STM32F103VCT6','RTL8189ETV',0,'Ubuntu 14.04 ','3.4.x',3,2016,'firmwares/rockrobo.vacuum.v1.html','http://builder.dontvacuum.me/pkg/voice/rockrobo/voice-v1/','y','n','n','n','n','n','4x','y','Ultrasonic','3.3.9, 3.5.8','','y','Q4/2017','y','y','https://dontvacuum.me/teardowns/rockrobo.vacuum.v1/','fw < v4004: easy, else: disassembly, simple soldering','https://dontvacuum.me/robotinfo/configfiles/rockrobo.v1/','http://builder.dontvacuum.me/_v1.html','v1.jpg',NULL,NULL,NULL,NULL);
INSERT INTO `robotinfo` VALUES (2,'roborock.vacuum.s5','Roborock S5 / S50','','rubys','ccrypt, unsigned','','ccrypt, unsigned','','Allwinner R16 (4x)',512,'512 MByte',4096,'4GByte eMMC','STM32F103VCT6','RTL8189ETV',0,'Ubuntu 14.04 ','3.4.x',4,2017,'firmwares/roborock.vacuum.s5.html','http://builder.dontvacuum.me/pkg/voice/rockrobo/_S5/','y','n','y','n','n','y','4x','y','IR','3.3.9, 3.5.8','','y','Q1/2018','y','y','https://dontvacuum.me/teardowns/roborock.vacuum.s5/','fw < v2020: easy, else: disassembly, simple soldering','https://dontvacuum.me/robotinfo/configfiles/roborock.s5/','http://builder.dontvacuum.me/_s5.html','s5.jpg',NULL,'Device likely End-of-Life/End-of-Sale. Factory firmware on the device likely is rootable remotely.',NULL,NULL);
INSERT INTO `robotinfo` VALUES (3,'roborock.vacuum.s6','Roborock S6','','tanos','A=enc(AES-256-CBC), signed (RSA)','','A=enc, signed','','Allwinner R16 (4x)',512,'512 MByte',4096,'4GByte eMMC','STM32F103VCT6','RTL8189ETV',0,'Ubuntu 14.04 ','3.4.x',2,2018,'firmwares/roborock.vacuum.s6.html','http://builder.dontvacuum.me/pkg/voice/rockrobo/_S6/','y','n','y','n','n','y','6x','y','IR','3.5.8','tuya','y','Q2/2019','y','y','https://dontvacuum.me/teardowns/roborock.vacuum.x6/','disassembly, simple soldering','https://dontvacuum.me/robotinfo/configfiles/roborock.s6/','http://builder.dontvacuum.me/_s6.html','x6.jpg','https://builder.dontvacuum.me/howtos/x6cheatsheet.txt',NULL,NULL,NULL);
INSERT INTO `robotinfo` VALUES (4,'roborock.vacuum.t6','Roborock T6','CN','tanos','A=enc(AES-256-CBC), signed (RSA)','','A=enc, signed','','Allwinner R16 (4x)',512,'512 MByte',4096,'4GByte eMMC','STM32F103VCT6','RTL8189ETV',0,'Ubuntu 14.04 ','3.4.x',2,2018,'firmwares/roborock.vacuum.s6.html','http://builder.dontvacuum.me/pkg/voice/rockrobo/_S6/','y','n','y','n','n','y','6x','y','IR','3.5.8','tuya','y','Q2/2019','y','y','https://dontvacuum.me/teardowns/roborock.vacuum.x6/','disassembly, simple soldering','https://dontvacuum.me/robotinfo/configfiles/roborock.t6/','http://builder.dontvacuum.me/_s6.html',NULL,'https://builder.dontvacuum.me/howtos/x6cheatsheet.txt','Device made for Mainland China region. <br>\r\nWill not work easily outside of Mainland China. Not recommended to buy if you are in other regions.',NULL,NULL);
INSERT INTO `robotinfo` VALUES (5,'roborock.vacuum.s4','Roborock S4','','rubyplus','A=enc(AES-256-CBC), signed (RSA)','','A=enc, signed','','Allwinner R16 (4x)',512,'512 MByte',4096,'4GByte eMMC','STM32F103VCT6','RTL8189ETV',0,'Ubuntu 14.04 ','3.4.x',3,2018,'firmwares/roborock.vacuum.s6.html','http://builder.dontvacuum.me/pkg/voice/rockrobo/_S6/','y','n','y','n','n','n','4x','y','IR','3.5.8','tuya','y','Q3/2019','y','y','https://dontvacuum.me/teardowns/roborock.vacuum.x4/','disassembly, simple soldering','https://dontvacuum.me/robotinfo/configfiles/roborock.s4/','http://builder.dontvacuum.me/_s4.html','s4.jpg','https://builder.dontvacuum.me/howtos/x6cheatsheet.txt',NULL,NULL,NULL);
INSERT INTO `robotinfo` VALUES (6,'roborock.vacuum.t4','Roborock T4','CN','rubyplus','A=enc(AES-256-CBC), signed (RSA)','','A=enc, signed','','Allwinner R16 (4x)',512,'512 MByte',4096,'4GByte eMMC','STM32F103VCT6','RTL8189ETV',0,'Ubuntu 14.04 ','3.4.x',3,2018,'firmwares/roborock.vacuum.s6.html','http://builder.dontvacuum.me/pkg/voice/rockrobo/_S6/','y','n','y','n','n','n','4x','y','IR','3.5.8','tuya','y','Q3/2019','y','y','https://dontvacuum.me/teardowns/roborock.vacuum.x4/','disassembly, simple soldering',NULL,'http://builder.dontvacuum.me/_s4.html',NULL,'https://builder.dontvacuum.me/howtos/x6cheatsheet.txt','Device made for Mainland China region. <br>\r\nWill not work easily outside of Mainland China. Not recommended to buy if you are in other regions.',NULL,NULL);
INSERT INTO `robotinfo` VALUES (7,'roborock.vacuum.m1s','Xiaomi Vacuum Robot 1S','CN','ruby2','B=enc, sign, header in TZ',NULL,'A=enc, signed',NULL,'Rockchip RK3326 (4x)',512,'512 MByte',4096,'4Gbyte eMMC','STM32F103VET6','RTL8189ETV',0,'Linux','4.4.x',2,2019,'firmwares/roborock.vacuum.m1s.html','https://builder.dontvacuum.me/pkg/voice/roborock/','y','y (1x OV7251 up facing[640x480])','n','n','n','n','4x','y','n','3.5.8',NULL,'y','Q2/2019','y','y','https://dontvacuum.me/teardowns/roborock.vacuum.m1s/','very hard (BGA soldering or ISP)',NULL,NULL,'m1s.jpg','https://www.youtube.com/watch?v=EWqFxQpRbv8','Root very difficult and not doable for most people. <br>\r\nStay away from this device if you ever want to use it without cloud.',NULL,NULL);
INSERT INTO `robotinfo` VALUES (8,'roborock.vacuum.s5e','Roborock S5 Max',NULL,'rubyslite','C=enc(AES-256-CBC), signed (RSA), sqfs',NULL,'B=enc, signed, sqfs, ogg',NULL,'Allwinner R16 (4x)',256,'256 MByte',512,'512MByte NAND','STM32F103VCT6','RTL8189ETV',0,'Ubuntu 14.04','3.4.x',4,2019,'firmwares/roborock.vacuum.s5e.html','https://builder.dontvacuum.me/pkg/voice/roborock/','y','n','y','y','n','n','4x','y','IR','3.5.8','tuya','y','Q1/2020','y','y','https://dontvacuum.me/teardowns/roborock.vacuum.s5e/','disassembly, simple soldering','https://dontvacuum.me/robotinfo/configfiles/roborock.s5e/','http://builder.dontvacuum.me/_s5e.html','s5e.jpg','https://builder.dontvacuum.me/howtos/s5e-cheatsheet.txt',NULL,NULL,NULL);
INSERT INTO `robotinfo` VALUES (9,'roborock.vacuum.s5e','Roborock S5 Max',NULL,'rubyslite','C=enc(AES-256-CBC), signed (RSA), sqfs',NULL,'B=enc, signed, sqfs, ogg',NULL,'Allwinner R16 (4x)',256,'256 MByte',256,'256MByte NAND','STM32F103VCT6','RTL8189ETV',1,'Ubuntu 14.04','3.4.x',2,2020,'firmwares/roborock.vacuum.s5e.html','https://builder.dontvacuum.me/pkg/voice/roborock/','y','n','y','y','n','y','4x','y','IR','3.5.8','tuya','y','Q1/2020','y','y','https://dontvacuum.me/teardowns/roborock.vacuum.s5e/','disassembly, simple soldering','https://dontvacuum.me/robotinfo/configfiles/roborock.s5e/','http://builder.dontvacuum.me/_s5e.html',NULL,'https://builder.dontvacuum.me/howtos/s5e-cheatsheet.txt',NULL,NULL,NULL);
INSERT INTO `robotinfo` VALUES (10,'roborock.vacuum.a08','Roborock S6 Pure',NULL,'rubysc1','D=enc(AES-256-CBC), signed (RSA), sqfs',NULL,'B=enc, signed, sqfs, ogg',NULL,'Allwinner R16 (4x)',256,'256 MByte',512,'512MByte NAND','STM32F103VCT6','RTL8189ETV',0,'Ubuntu 14.04','3.4.x',1,2020,'firmwares/roborock.vacuum.p5.html','https://builder.dontvacuum.me/pkg/voice/roborock/','y','n','n','n','n','y','4x','y','IR','3.5.8','tuya','y','Q1/2020','y','y',NULL,'disassembly, simple soldering',NULL,'http://builder.dontvacuum.me/_a08.html','a08.jpg','https://builder.dontvacuum.me/howtos/s5e-cheatsheet.txt',NULL,NULL,NULL);
INSERT INTO `robotinfo` VALUES (11,'roborock.vacuum.p5','Roborock P5','CN','rubysc1','D=enc(AES-256-CBC), signed (RSA), sqfs',NULL,'B=enc, signed, sqfs, ogg',NULL,'Allwinner R16 (4x)',256,'256 MByte',512,'512MByte NAND','STM32F103VCT6','RTL8189ETV',0,'Ubuntu 14.04','3.4.x',4,2019,'firmwares/roborock.vacuum.p5.html','https://builder.dontvacuum.me/pkg/voice/roborock/','y','n','n','n','n','y','4x','y','IR','3.5.8','tuya','y','Q1/2020','y','y',NULL,'disassembly, simple soldering',NULL,'http://builder.dontvacuum.me/_a08.html',NULL,'https://builder.dontvacuum.me/howtos/s5e-cheatsheet.txt',NULL,NULL,NULL);
INSERT INTO `robotinfo` VALUES (12,'roborock.vacuum.a11','Roborock T7','CN','tanose','F=enc(AES-256-CBC), signed (RSA), sqfs',NULL,'B=enc, signed, sqfs, ogg',NULL,'Allwinner R16 (4x)',256,'256 MByte',512,'512MByte NAND','STM32F103VCT6','RTL8189ETV',0,'Ubuntu 14.04','3.4.x',1,2020,'firmwares/roborock.vacuum.a11.html','https://builder.dontvacuum.me/pkg/voice/roborock/','y','n','y','y','n','n','6x','y','IR','3.5.8','tuya','y','Q1/2020','y','y','','disassembly, simple soldering',NULL,'http://builder.dontvacuum.me/_a11.html',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `robotinfo` VALUES (13,'roborock.vacuum.a14','Roborock T7S','CN','tanoss','H=enc(AES-256-CBC), signed (RSA), sqfs',NULL,'B=enc, signed, sqfs, ogg',NULL,'Allwinner R16 (4x)',256,'256 MByte',256,'256MByte NAND','STM32F103VCT6','RTL8189ETV',0,'Ubuntu 14.04','3.5.x',1,2021,'firmwares/roborock.vacuum.a15.html','https://builder.dontvacuum.me/pkg/voice/roborock/','y','n','y','y','y (separate)','y','4x','y','IR','4.1.2','tuya','y','Q1/2021','y','y','https://dontvacuum.me/teardowns/roborock.vacuum.a15/','disassembly, simple soldering',NULL,'http://builder.dontvacuum.me/_a15.html',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `robotinfo` VALUES (14,'roborock.vacuum.a15','Roborock S7',NULL,'tanoss','H=enc(AES-256-CBC), signed (RSA), sqfs',NULL,'B=enc, signed, sqfs, ogg',NULL,'Allwinner R16 (4x)',256,'256 MByte',256,'256MByte NAND','STM32F103VCT6','RTL8189ETV',0,'Ubuntu 14.04','3.5.x',1,2021,'firmwares/roborock.vacuum.a15.html','https://builder.dontvacuum.me/pkg/voice/roborock/','y','n','y','y','y (seperate)','y','4x','y','IR','4.1.2','tuya','y','Q1/2021','y','y','https://dontvacuum.me/teardowns/roborock.vacuum.a15/','disassembly, simple soldering',NULL,'http://builder.dontvacuum.me/_a15.html','a15.jpg',NULL,NULL,NULL,NULL);
INSERT INTO `robotinfo` VALUES (15,'roborock.vacuum.a10','Roborock S6 MaxV',NULL,'tanosv','E=enc, signed, header in TZ',NULL,NULL,NULL,'Qualcomm APQ8053 (8x)',512,'512 MByte',4096,'4GByte eMCP','STM32F103VCT6','Qualcomm',0,'Android','3.18.x',2,2020,'firmwares/roborock.vacuum.a10.html','https://builder.dontvacuum.me/pkg/voice/roborock/','y','y (2x OV5695 front [1920x1080]) with IR illumination','y','y','n','y','6x','y','Cameras','3.5.8','tuya','y','Q2/2020','y','y','https://dontvacuum.me/teardowns/roborock.vacuum.a10/','very hard (BGA soldering or ISP)',NULL,NULL,NULL,'https://www.youtube.com/watch?v=EWqFxQpRbv8','Root very difficult and not doable for most people. <br>\r\nStay away from this device if you ever want to use it without cloud.','<strong style=\"color: red;\">Not recommended for purchase and rooting!</strong>',NULL);
INSERT INTO `robotinfo` VALUES (16,'roborock.vacuum.a09','Roborock T7 Pro','CN','tanosv','E=enc, signed, header in TZ',NULL,NULL,NULL,'Qualcomm APQ8053 (8x)',512,'512 MByte',4096,'4GByte eMCP','STM32F103VCT6','Qualcomm',0,'Android','3.18.x',2,2020,'firmwares/roborock.vacuum.a10.html','https://builder.dontvacuum.me/pkg/voice/roborock/','y','y (2x OV5695 front [1920x1080]) with IR illumination','y','y','n','y','6x','y','Cameras','3.5.8','tuya','y','Q2/2020','y','y','https://dontvacuum.me/teardowns/roborock.vacuum.a10/','very hard (BGA soldering or ISP)',NULL,NULL,NULL,NULL,'Device made for Mainland China region. <br>\r\nWill not work easily outside of Mainland China. Not recommended to buy if you are in other regions.','<strong style=\"color: red;\">Not recommended for purchase and rooting!</strong>',NULL);
INSERT INTO `robotinfo` VALUES (18,'dreame.vacuum.mc1808','Xiaomi Vacuum 1C','','p1904','X=enc(2x), signed, sqfs',NULL,'tar.gz, unsigned',NULL,'Allwinner MR133 (4x)',512,'512 MByte',256,'256MByte NAND','GD32F303*ET6','RTL8189FTV (6189N-SFC)',0,'OpenWRT','4.9.x',4,2019,'firmwares/dreame.vacuum.mc1808.html','https://builder.dontvacuum.me/pkg/voice/dreame','n','y (1x OV7251 up facing[640x480])','y','y','n','n',NULL,'','IR bar','3.5.8',NULL,'y','Q4/2019','y','y','https://dontvacuum.me/teardowns/xiaomi-1c/','easy via UART, minimal teardown','https://dontvacuum.me/robotinfo/configfiles/dreame.1c/','http://builder.dontvacuum.me/_dreame_mc1808.html','1c.jpg','https://builder.dontvacuum.me/dreame/',NULL,NULL,NULL);
INSERT INTO `robotinfo` VALUES (19,'dreame.vacuum.p2008','Dreame Robot Vacuum-Mop F9','','p2008','X=enc(2x), signed, sqfs',NULL,'tar.gz, unsigned',NULL,'Allwinner MR133 (4x)',512,'512 MByte',256,'256MByte NAND','GD32F303*ET6','RTL8189FTV (6189N-SFC)',0,'OpenWRT','4.9.x',2,2020,'firmwares/dreame.vacuum.p2008.html','https://builder.dontvacuum.me/pkg/voice/dreame','n','y (1x SC031GS up facing[640x480])','y','y','n','n',NULL,'','IR bar','3.5.8',NULL,'y','Q2/2020','y','y','','easy via UART, minimal teardown','https://dontvacuum.me/robotinfo/configfiles/dreame.f9/','http://builder.dontvacuum.me/_dreame_p2008.html',NULL,'https://builder.dontvacuum.me/dreame/',NULL,NULL,NULL);
INSERT INTO `robotinfo` VALUES (20,'dreame.vacuum.p2009','Dreame Robot Vacuum D9','','p2009','X=enc(2x), signed, sqfs',NULL,'tar.gz, unsigned',NULL,'Allwinner MR133 (4x)',256,'256 MByte',256,'256MByte NAND','GD32F303*ET6','RTL8189FTV (6189N-SFC)',0,'OpenWRT','4.9.x',4,2020,'firmwares/dreame.vacuum.p2009.html','https://builder.dontvacuum.me/pkg/voice/dreame','y','n','y','y','n','y',NULL,'y','IR','3.5.8',NULL,'y','Q4/2020','y','y','','easy via UART, minimal teardown',NULL,'http://builder.dontvacuum.me/_dreame_p2009.html','dreame_d9.jpg','https://builder.dontvacuum.me/dreame/',NULL,NULL,NULL);
INSERT INTO `robotinfo` VALUES (21,'dreame.vacuum.p2041','Xiaomi Vacuum 1T','','p2041','X=enc(2x), signed, sqfs',NULL,'tar.gz, unsigned',NULL,'Allwinner MR813 (4x)',1024,'1 GByte',512,'512MByte NAND','GD32F303*ET6','RTL8189FTV (6189N-SFC)',0,'OpenWRT','4.9.x',4,2020,'firmwares/dreame.vacuum.p2041.html','https://builder.dontvacuum.me/pkg/voice/dreame','y','y (1x SC031GS up facing [640x480], 1x ToF camera to the front[224x1558])','y','y','n','y',NULL,'y','ToF','(4.1.2 + Security Chip)',NULL,'y','Q2/2021','y','y','https://dontvacuum.me/teardowns/dreame.vacuum.p2041/','easy via UART, minimal teardown',NULL,'http://builder.dontvacuum.me/_dreame_p2041.html','dreame_1t.jpg','https://builder.dontvacuum.me/dreame/',NULL,NULL,NULL);
INSERT INTO `robotinfo` VALUES (22,'dreame.vacuum.p2029','Dreame Bot L10 Pro','','p2029','X=enc(2x), signed, sqfs',NULL,'tar.gz, unsigned',NULL,'Allwinner MR813 (4x)',512,'512 MByte',512,'512MByte NAND','GD32F303*ET6','RTL8189FTV (6189N-SFC)',0,'OpenWRT','4.9.x',1,2021,'firmwares/dreame.vacuum.p2029.html','https://builder.dontvacuum.me/pkg/voice/dreame','y','y (1x SC031GS front facing [640x480])','y','y','n','n',NULL,'y','LineLaser','(4.1.2 + Security Chip)',NULL,'y','Q2/2021','y','y','https://dontvacuum.me/teardowns/dreame.vacuum.p2029/','easy via UART, minimal teardown',NULL,'http://builder.dontvacuum.me/_dreame_p2029.html','dreame_l10.jpg','https://builder.dontvacuum.me/dreame/',NULL,NULL,NULL);
INSERT INTO `robotinfo` VALUES (23,'dreame.vacuum.p2028','Dreame Bot Z10 Pro','','p2028','X=enc(2x), signed, sqfs',NULL,'tar.gz, unsigned',NULL,'Allwinner MR813 (4x)',512,'512 MByte',512,'512MByte NAND','GD32F303*ET6','RTL8189FTV (6189N-SFC)',0,'OpenWRT','4.9.x',2,2021,'firmwares/dreame.vacuum.p2028.html','https://builder.dontvacuum.me/pkg/voice/dreame','y','y (1x SC031GS front facing [640x480])','y','y','y (included, dust collection)','n',NULL,'y','LineLaser','(4.1.2 + Security Chip)',NULL,'y','Q2/2021','y','y','','easy via UART, minimal teardown',NULL,'http://builder.dontvacuum.me/_dreame_p2028.html',NULL,'https://builder.dontvacuum.me/dreame/',NULL,NULL,NULL);
INSERT INTO `robotinfo` VALUES (24,'dreame.vacuum.p2156o','MOVA Z500 Robot Vacuum and Mop Cleaner','','p2156','X=enc(2x), signed, sqfs',NULL,'tar.gz, unsigned',NULL,'Allwinner MR133 (4x)',512,'512 MByte',256,'256MByte NAND','GD32F303*ET6','RTL8189FTV (6189N-SFC)',0,'OpenWRT','4.9.x',4,2021,'firmwares/dreame.vacuum.p2156.html','https://builder.dontvacuum.me/pkg/voice/dreame','n','y (1x SC031GS up facing[640x480])','y','y','n','n',NULL,'y','IR bar','3.5.8',NULL,'y','Q2/2021','y','y','','easy via UART, minimal teardown',NULL,'http://builder.dontvacuum.me/_dreame_p2156.html','dreame_mova_z500.jpg','https://builder.dontvacuum.me/dreame/',NULL,NULL,NULL);
INSERT INTO `robotinfo` VALUES (25,'viomi.vacuum.v6','Viomi V2',NULL,NULL,'zip, sqfs, unencrypted',NULL,NULL,NULL,'Allwinner A33 (4x)',512,'512 MByte',256,'256MByte NAND','GD32F103VCT6','RTL8189ETV',0,'OpenWRT','3.4.x',2,2019,'firmwares/viomi.vacuum.v6.html','https://builder.dontvacuum.me/pkg/voice/viomi','y','n','y','y (replaces dustbin)','n',NULL,'4x',NULL,'IR','3.5.8','viomi-iot','y','Q2/2019','y','y','https://dontvacuum.me/teardowns/viomi-vacuum/','old fw: easy via usb-adb, new fw: disassembly','https://dontvacuum.me/robotinfo/configfiles/viomi.v6/','http://builder.dontvacuum.me/_viomi_v6.html','viomi.v2.jpg',NULL,'Device likely End-of-Life/End-of-Sale.',NULL,NULL);
INSERT INTO `robotinfo` VALUES (26,'viomi.vacuum.v7','Mi Robot Vacuum-Mop P','CN',NULL,'zip, sqfs, unencrypted',NULL,NULL,NULL,'Allwinner A33 (4x)',512,'512 MByte',256,'256MByte NAND','GD32F103VCT6','RTL8189ETV',0,'OpenWRT','3.4.x',2,2019,'firmwares/viomi.vacuum.v6.html','https://builder.dontvacuum.me/pkg/voice/viomi','y','n','y','y (replaces dustbin)','n',NULL,'4x',NULL,'IR','3.5.8','','y','Q2/2019','y','y','https://dontvacuum.me/teardowns/viomi-vacuum/','old fw: easy via usb-adb, new fw: disassembly','https://dontvacuum.me/robotinfo/configfiles/viomi.v7/','http://builder.dontvacuum.me/_viomi_v7.html',NULL,NULL,'Device likely End-of-Life/End-of-Sale.',NULL,NULL);
INSERT INTO `robotinfo` VALUES (27,'viomi.vacuum.v8','Mi Robot Vacuum-Mop P','',NULL,'X= zip, sqfs, encrypted',NULL,NULL,NULL,'Allwinner A33 (4x)',512,'512 MByte',256,'256MByte NAND','GD32F103VCT6','RTL8189ETV',0,'OpenWRT','3.4.x',3,2019,'firmwares/viomi.vacuum.v6.html','https://builder.dontvacuum.me/pkg/voice/viomi','y','n','y','y (replaces dustbin)','n',NULL,'4x',NULL,'IR','3.5.8','','y','Q2/2019','y','y','https://dontvacuum.me/teardowns/viomi-vacuum/','old fw: easy via usb-adb, new fw: disassembly','https://dontvacuum.me/robotinfo/configfiles/viomi.v8/','http://builder.dontvacuum.me/_viomi_v7.html',NULL,NULL,'Device likely End-of-Life/End-of-Sale.',NULL,NULL);
INSERT INTO `robotinfo` VALUES (28,'roborock.vacuum.a19','Roborock S4 Max',NULL,'','C=enc(AES-256-CBC), signed (RSA), sqfs',NULL,'B=enc, signed, sqfs, ogg',NULL,'Allwinner R16 (4x)',256,'256 MByte',256,'256MByte NAND','STM32F103VCT6','RTL8189ETV',0,'Ubuntu 14.04','3.4.x',4,2020,'firmwares/roborock.vacuum.a19.html','https://builder.dontvacuum.me/pkg/voice/roborock/','y','n','n','n','n','y','4x','y','IR','4.1.2','tuya','y','Q4/2020','y','y','','disassembly, simple soldering','','http://builder.dontvacuum.me/_a19.html','a19.jpg','https://builder.dontvacuum.me/howtos/s5e-cheatsheet.txt',NULL,NULL,NULL);
INSERT INTO `robotinfo` VALUES (29,'wyze-robot','Wyze Robot Vacuum (viomi clone)',NULL,NULL,'zip, sqfs, unencrypted',NULL,NULL,NULL,'Allwinner A33 (4x)',512,'512 MByte',256,'256MByte NAND','GD32F103VCT6','RTL8189ETV',0,'OpenWRT','3.4.x',4,2020,'','','y','n','y','y (replaces dustbin)','n',NULL,'4x',NULL,'IR','','wyze-iot','y','Q1/2021','y','y','https://dontvacuum.me/teardowns/viomi-vacuum/','easy via usb-adb','','','',NULL,NULL,NULL,NULL);
INSERT INTO `robotinfo` VALUES (30,'conga-robot-3090','Conga 3090 (viomi clone)',NULL,NULL,'zip, sqfs, unencrypted',NULL,NULL,NULL,'Allwinner A33 (4x)',512,'512 MByte',256,'256MByte NAND','GD32F103VCT6','RTL8189ETV',0,'OpenWRT','3.4.x',4,2019,'','','y','n','y','y (replaces dustbin)','n',NULL,'4x',NULL,'IR','','conga-iot','y','Q4/2020','y','y','https://dontvacuum.me/teardowns/viomi-vacuum/','easy via usb-adb','','','',NULL,NULL,NULL,NULL);
INSERT INTO `robotinfo` VALUES (31,'dreame.vacuum.p2187','Dreame Robot Vacuum D9 Pro','','p2187','X=enc(2x), signed, sqfs',NULL,'tar.gz, unsigned',NULL,'Allwinner MR133 (4x)',256,'256 MByte',256,'256MByte NAND','GD32F303*ET6','RTL8189FTV (6189N-SFC)',0,'OpenWRT','4.9.x',2,2021,'firmwares/dreame.vacuum.p2187.html','https://builder.dontvacuum.me/pkg/voice/dreame','y','n','y','y','n','y',NULL,'y','IR','3.5.8',NULL,'y','Q3/2021','y','y','','easy via UART, minimal teardown',NULL,'http://builder.dontvacuum.me/_dreame_p2187.html','dreame_d9pro.jpg','https://builder.dontvacuum.me/dreame/',NULL,NULL,NULL);
INSERT INTO `robotinfo` VALUES (32,'dreame.vacuum.p2259','Dreame Robot Vacuum D9 Max','','p2259','X=enc(2x), signed, sqfs',NULL,'tar.gz, unsigned',NULL,'Allwinner MR112 (2x)',128,'128 MByte',128,'128MByte SPI NAND','','',0,'OpenWRT','4.9.x',3,2021,'','','y','n','y','y','n','y',NULL,'y','IR','3.5.8',NULL,'','','','n','','will not run Valetudo due to resources',NULL,'','',NULL,'Device has relatively weak hardware (in comparison to cheaper D9 variants). <br>\r\nHardware too limited to run Valetudo or other custom software. <br>\r\nNot recommended device if you ever plan to root! <br>','<strong style=\"color: red;\">Not recommended for purchase and rooting!</strong>',NULL);
INSERT INTO `robotinfo` VALUES (33,'dreame.vacuum.p2027','Dreame Robot Vacuum W10 Pro','','p2027','X=enc(2x), signed, sqfs',NULL,'tar.gz, unsigned',NULL,'Allwinner MR133 (4x)',256,'256 MByte',128,'128MByte SPI','GD32F303*ET6','RTL8189FTV (6189N-SFC)',0,'OpenWRT','4.9.x',4,2021,'firmwares/dreame.vacuum.p2027.html','https://builder.dontvacuum.me/pkg/voice/dreame','y','n','y','y','y (included, water change)','y',NULL,'y','IR','4.1.6',NULL,'y','Q4/2021','n','n','','easy via UART, minimal teardown',NULL,'http://builder.dontvacuum.me/_dreame_p2009.html','','https://builder.dontvacuum.me/dreame/','Device has relatively weak hardware (in comparison to other Dreame robots). <br>\r\nHardware too limited to run Valetudo or other custom software. <br>\r\nNot recommended device if you ever plan to root! <br>','<strong style=\"color: red;\">Not recommended for purchase and rooting!</strong>',NULL);
/*!40000 ALTER TABLE `robotinfo` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

