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
  `modelname` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `name` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `OEM` varchar(100) NOT NULL,
  `SKU` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `region` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `codename` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `firmwareformat` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `firmwareformat-more` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `voiceformat` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `voiceformat-more` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `SOC` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT 'Allwinner R16 (4x)',
  `RAM` int DEFAULT '512',
  `RAM-text` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT '512 MByte',
  `Flash` int DEFAULT '256',
  `Flash-text` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT '256MByte NAND',
  `MCU` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `WiFi` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `variant` int NOT NULL DEFAULT '0',
  `OS` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `Kernel` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `ReleasedQ` int DEFAULT NULL,
  `ReleasedY` int DEFAULT NULL,
  `firmwareformat-link` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `voiceformat-link` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `feat_LIDAR` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `feat_Camera` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `feat_Mop` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `feat_Waterpump` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `feat_Basestation` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `feat_Towerbumper` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `feat_IR_dropsensors` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `feat_IR_sidesensors` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `feat_frontsensor` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `cloud_miio_version` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `cloud_other` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `support_root` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `support_root_since` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `support_root_public` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `support_valetudo` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `res_teardown` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `support_root_complexity` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `res_config_files` varchar(200) DEFAULT NULL,
  `res_builder` varchar(200) DEFAULT NULL,
  `res_picture` varchar(200) DEFAULT NULL,
  `res_root_howto` varchar(200) DEFAULT NULL,
  `comments` text,
  `status` varchar(300) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `warning` varchar(10) DEFAULT NULL,
  `EOL` int NOT NULL,
  `Active` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `robotinfo` WRITE;
/*!40000 ALTER TABLE `robotinfo` DISABLE KEYS */;
INSERT INTO `robotinfo` VALUES (1,'dreame.vacuum.mc1808','Xiaomi Vacuum 1C','Dreame','STYTJ01ZHM',NULL,'p1904','enc(2x), signed, sqfs',NULL,'tar.gz, unsigned',NULL,'Allwinner MR133 (4x)',512,'512 MByte',256,'256MByte NAND','GD32F303*ET6','RTL8189FTV (6189N-SFC)',0,'OpenWRT (custom Tina)','4.9.x',4,2019,'firmwares/dreame.vacuum.mc1808.html','https://awsde0.fds.api.xiaomi.com/dreame-product/dreame.vacuum.p2008/voices/soundpackage.json','n','y (1x OV7251 up facing[640x480])','y','y','n','n','4x + 1x',NULL,'IR bar','3.5.8',NULL,'y','Q4/2019','y','y','https://dontvacuum.me/teardowns/xiaomi-1c/','easy via UART, minimal teardown','https://dontvacuum.me/robotinfo/configfiles/dreame.1c/','http://builder.dontvacuum.me/_dreame_mc1808.html','dreame.vacuum.mc1808.jpg','https://builder.dontvacuum.me/dreame/','Base station: CDZ1902',NULL,NULL,1,0);
INSERT INTO `robotinfo` VALUES (2,'dreame.vacuum.p2008','Dreame Robot Vacuum-Mop F9','Dreame',NULL,NULL,'p2008','enc(2x), signed, sqfs',NULL,'tar.gz, unsigned',NULL,'Allwinner MR133 (4x)',512,'512 MByte',256,'256MByte NAND','GD32F303*ET6','RTL8189FTV (6189N-SFC)',0,'OpenWRT (custom Tina)','4.9.x',2,2020,'firmwares/dreame.vacuum.p2008.html','https://awsde0.fds.api.xiaomi.com/dreame-product/dreame.vacuum.p2008/voices/soundpackage.json','n','y (1x SC031GS up facing[640x480])','y','y','n','n','4x + 1x',NULL,'IR bar','3.5.8',NULL,'y','Q2/2020','y','y',NULL,'easy via UART, minimal teardown','https://dontvacuum.me/robotinfo/configfiles/dreame.f9/','http://builder.dontvacuum.me/_dreame_p2008.html','dreame.vacuum.p2008.jpg','https://builder.dontvacuum.me/dreame/',NULL,NULL,NULL,1,0);
INSERT INTO `robotinfo` VALUES (3,'dreame.vacuum.p2009','Dreame Robot Vacuum D9','Dreame','RLS5',NULL,'p2009','enc(2x), signed, sqfs',NULL,'tar.gz, unsigned',NULL,'Allwinner MR133 (4x)',256,'256 MByte',256,'256MByte NAND','GD32F303*ET6','RTL8189FTV (6189N-SFC)',0,'OpenWRT (custom Tina)','4.9.x',4,2020,'firmwares/dreame.vacuum.p2009.html','https://awsde0.fds.api.xiaomi.com/dreame-product/dreame.vacuum.p2009/voices/soundpackage.json','y','n','y','y','n','y','6x','y','IR','3.5.8',NULL,'y','Q4/2020','y','y',NULL,'easy via UART, minimal teardown',NULL,'http://builder.dontvacuum.me/_dreame_p2009.html','dreame.vacuum.p2009.jpg','https://builder.dontvacuum.me/dreame/','Base station: P2057',NULL,NULL,0,0);
INSERT INTO `robotinfo` VALUES (4,'dreame.vacuum.p2027','Dreame Robot Vacuum W10','Dreame','RLS5C',NULL,'p2027','enc(2x), signed, sqfs(signed)',NULL,'tar.gz, unsigned',NULL,'Allwinner MR133 (4x)',256,'256 MByte',256,'256MByte NAND','GD32F303*ET6','RTL8189FTV (6189N-SFC)',0,'OpenWRT (custom Tina)','4.9.x',4,2021,'firmwares/dreame.vacuum.p2027.html','https://awsde0.fds.api.xiaomi.com/dreame-product/dreame.vacuum.p2027/voices/soundpackage.json','y','n','y','y','y (included, water change)','y','6x','y','IR','4.1.6',NULL,'y','Q4/2021','y','y','https://dontvacuum.me/teardowns/dreame.vacuum.p2027/','easy via UART, minimal teardown',NULL,NULL,'dreame.vacuum.p2027.jpg','https://builder.dontvacuum.me/dreame/',NULL,'<strong style=\"color: red;\">Do not update firmware via OTA if you plan to ever root your device</strong>',NULL,0,1);
INSERT INTO `robotinfo` VALUES (5,'dreame.vacuum.p2028','Dreame Bot Z10 Pro','Dreame','RLS5D',NULL,'p2028','enc(2x), signed, sqfs(signed)',NULL,'tar.gz, unsigned',NULL,'Allwinner MR813 (4x)',512,'512 MByte',512,'512MByte NAND','GD32F303*ET6','RTL8189FTV (6189N-SFC)',0,'OpenWRT (custom Tina)','4.9.x',2,2021,'firmwares/dreame.vacuum.p2028.html','https://awsde0.fds.api.xiaomi.com/dreame-product/dreame.vacuum.p2028/voices/soundpackage.json','y','y (1x SC031GS front facing [640x480])','y','y','y (included, dust collection)','n','6x','y','LineLaser','4.1.2',NULL,'y','Q2/2021','y','y',NULL,'easy via UART, minimal teardown',NULL,'http://builder.dontvacuum.me/_dreame_p2028.html','dreame.vacuum.p2028.jpg','https://builder.dontvacuum.me/dreame/','Is the Dreame Z10 Pro recommended for purchase? Yes, check also the Dreame L10 Pro\nRootFS (sqfs) signed after 11/2021','<strong style=\"color: red;\">Do not update firmware via OTA if you plan to ever root your device</strong>',NULL,0,1);
INSERT INTO `robotinfo` VALUES (6,'dreame.vacuum.p2028','Dreame Bot Z10 Pro (110V)','Dreame',NULL,'US','p2028','enc(2x), signed, sqfs(signed)',NULL,'tar.gz, unsigned',NULL,'Allwinner MR813 (4x)',512,'512 MByte',512,'512MByte NAND','GD32F303*ET6','RTL8189FTV (6189N-SFC)',1,'OpenWRT (custom Tina)','4.9.x',2,2021,'firmwares/dreame.vacuum.p2028.html','https://awsde0.fds.api.xiaomi.com/dreame-product/dreame.vacuum.p2028/voices/soundpackage.json','y','y (1x SC031GS front facing [640x480])','y','y','y (included, dust collection)','n','6x','y','LineLaser','4.1.2','dreame-iot','y','Q2/2021','y','y',NULL,'easy via UART, minimal teardown',NULL,'http://builder.dontvacuum.me/_dreame_p2028.html',NULL,'https://builder.dontvacuum.me/dreame/','WARNING: The base station is 110V only. Operation of the base station in a region with 220V will make the auto empty fan explode!\nIs the Dreame Z10 Pro recommended for purchase? Yes, check also the Dreame L10 Pro','<strong style=\"color: red;\">WARNING: The base station is 110V only. Operation of the base station in a region with 220V will make the auto empty fan explode!</strong>\n<strong style=\"color: red;\">Do not update firmware via OTA if you plan to ever root your device</strong>',NULL,0,1);
INSERT INTO `robotinfo` VALUES (7,'dreame.vacuum.p2029','Dreame Bot L10 Pro','Dreame','RL5SL',NULL,'p2029','enc(2x), signed, sqfs(signed)',NULL,'tar.gz, unsigned',NULL,'Allwinner MR813 (4x)',512,'512 MByte',512,'512MByte NAND','GD32F303*ET6','RTL8189FTV (6189N-SFC)',0,'OpenWRT (custom Tina)','4.9.x',1,2021,'firmwares/dreame.vacuum.p2029.html','https://awsde0.fds.api.xiaomi.com/dreame-product/dreame.vacuum.p2029/voices/soundpackage.json','y','y (1x SC031GS front facing [640x480])','y','y','n','n','6x','y','LineLaser','4.1.2','dreame-iot','y','Q2/2021','y','y','https://dontvacuum.me/teardowns/dreame.vacuum.p2029/','easy via UART, minimal teardown',NULL,'http://builder.dontvacuum.me/_dreame_p2029.html','dreame.vacuum.p2029.jpg','https://builder.dontvacuum.me/dreame/','Is the Dreame L10 Pro recommended for purchase? Yes, check also the Dreame Z10 Pro\n\nBase station: P2157\nRootFS (sqfs) signed after 11/2021','<strong style=\"color: red;\">Do not update firmware via OTA if you plan to ever root your device</strong>',NULL,0,1);
INSERT INTO `robotinfo` VALUES (8,'dreame.vacuum.p2041','Xiaomi Vacuum 1T','Dreame','STYTJ02ZHM','CN','p2041','enc(2x), signed, sqfs',NULL,'tar.gz, unsigned',NULL,'Allwinner MR813 (4x)',1024,'1 GByte',512,'512MByte NAND','GD32F303*ET6','RTL8189FTV (6189N-SFC)',0,'OpenWRT (custom Tina)','4.9.x',4,2020,'firmwares/dreame.vacuum.p2041.html','https://awsde0.fds.api.xiaomi.com/dreame-product/dreame.vacuum.p2041/voices/soundpackage.json','n','y (1x SC031GS up facing [640x480], 1x ToF camera to the front[224x1558])','y','y','n','n','4x + 1x','y','ToF','(4.1.2 + Security Chip)',NULL,'y','Q2/2021','y','y','https://dontvacuum.me/teardowns/dreame.vacuum.p2041/','easy via UART, minimal teardown',NULL,'http://builder.dontvacuum.me/_dreame_p2041.html','dreame.vacuum.p2041.jpg','https://builder.dontvacuum.me/dreame/','Device made for Mainland China region.\nBase station: CDZ1902','<strong style=\"color: red;\">Do not update firmware via OTA if you plan to ever root your device</strong>',NULL,0,0);
INSERT INTO `robotinfo` VALUES (9,'dreame.vacuum.p2041o','Xiaomi Vacuum 2 Pro+','Dreame',NULL,NULL,'p2041','enc(2x), signed, sqfs',NULL,'tar.gz, unsigned',NULL,'Allwinner MR813 (4x)',1024,'1 GByte',512,'512MByte NAND','GD32F303*ET6','RTL8189FTV (6189N-SFC)',0,'OpenWRT (custom Tina)','4.9.x',4,2020,'firmwares/dreame.vacuum.p2041.html','https://awsde0.fds.api.xiaomi.com/dreame-product/dreame.vacuum.p2041/voices/soundpackage.json','n','y (1x SC031GS up facing [640x480], 1x ToF camera to the front[224x1558])','y','y','n','n','4x + 1x','y','ToF','(4.1.2 + Security Chip)',NULL,'y','Q2/2021','y','y','https://dontvacuum.me/teardowns/dreame.vacuum.p2041/','easy via UART, minimal teardown',NULL,'http://builder.dontvacuum.me/_dreame_p2041.html','dreame.vacuum.p2041.jpg','https://builder.dontvacuum.me/dreame/','Same device as Xiaomi 1T, but global model\nBase station: CDZ1902','<strong style=\"color: red;\">Do not update firmware via OTA if you plan to ever root your device</strong>',NULL,0,0);
INSERT INTO `robotinfo` VALUES (10,'dreame.vacuum.p2114a','Xiaomi Robot Vacuum X10+','Dreame','B101GL',NULL,'r2213','enc(zip), signed, enc, sqfs(signed)',NULL,'tar.gz, unsigned',NULL,'Allwinner MR813 (4x)',1024,'1 GByte',4096,'4GByte eMMC','GD32F303*ET6','RTL8723DS(BT+WiFi)',0,'OpenWRT (custom Tina)','4.9.x',3,2022,NULL,NULL,'y','y (1x OV8856 front facing [RGB,8MP), 1x SC031GS line laser [640x480])','y','y (in basestation)','y (included, water change, dust collection)','y','4x','y','Camera, Linelaser','(4.3.3 + Security Chip)',NULL,'y','Q4/2022','n','y',NULL,NULL,NULL,NULL,'dreame.vacuum.p2114a.jpg',NULL,'\"WARNING: The base station is voltage dependant only. Operation of the 110V base station in a region with 220V will make the auto empty fan explode!','<strong style=\"color: red;\">Do not update firmware via OTA if you plan to ever root your device</strong>',NULL,0,0);
INSERT INTO `robotinfo` VALUES (11,'dreame.vacuum.p2148o','Mijia Robot Vacuum-Mop Ultra Slim','Dreame','STYTJ04ZHM','CN','p2148','enc(2x), signed, sqfs',NULL,'tar.gz, unsigned',NULL,'Allwinner MR813 (4x)',1024,'1 GByte',512,'512MByte NAND',NULL,NULL,0,'OpenWRT (custom Tina)','4.9.x',2,2021,'firmwares/dreame.vacuum.p2148o.html',NULL,'y',NULL,'y','y','y','n','4x +1x','n','ToF','(4.1.2 + Security Chip)',NULL,'y','Q2/2021','y','y',NULL,'easy via UART, minimal teardown',NULL,'https://builder.dontvacuum.me/_dreame_p2148.html','dreame.vacuum.p2148o.jpg','https://builder.dontvacuum.me/dreame/','Device made for Mainland China region. \nWill not work easily outside of Mainland China. Not recommended to buy if you are in other regions.','<strong style=\"color: red;\">Do not update firmware via OTA if you plan to ever root your device</strong>',NULL,1,0);
INSERT INTO `robotinfo` VALUES (12,'dreame.vacuum.p2149o','Xiaomi Self-Cleaning Robot Vacuum-Mop Pro','Dreame',NULL,'CN','p2149','enc(2x), signed, sqfs(signed)',NULL,'tar.gz, unsigned',NULL,'Allwinner MR813 (4x)',1024,'1 GByte',512,'512MByte NAND',NULL,NULL,0,'OpenWRT (custom Tina)','4.9.x',1,2022,'firmwares/dreame.vacuum.p2149o.html',NULL,'y',NULL,'y','y','y (included, water change)','y','6x','y',NULL,'(4.1.2 + Security Chip)',NULL,'y','Q2/2022','n','y',NULL,NULL,NULL,NULL,NULL,NULL,'Device made for Mainland China region. \nWill not work easily outside of Mainland China. Not recommended to buy if you are in other regions.','<strong style=\"color: red;\">Do not update firmware via OTA if you plan to ever root your device</strong>',NULL,0,0);
INSERT INTO `robotinfo` VALUES (13,'dreame.vacuum.p2156o','MOVA Z500 Robot Vacuum and Mop Cleaner','Dreame',NULL,NULL,'p2156','enc(2x), signed, sqfs',NULL,'tar.gz, unsigned',NULL,'Allwinner MR133 (4x)',512,'512 MByte',256,'256MByte NAND','GD32F303*ET6','RTL8189FTV (6189N-SFC)',0,'OpenWRT (custom Tina)','4.9.x',4,2021,'firmwares/dreame.vacuum.p2156o.html','https://awsde0.fds.api.xiaomi.com/dreame-product/dreame.vacuum.p2009/voices/soundpackage.json','n','y (1x SC031GS up facing[640x480])','y','y','n','n','4x','y','IR bar','3.5.8',NULL,'y','Q2/2021','y','y',NULL,'easy via UART, minimal teardown',NULL,'http://builder.dontvacuum.me/_dreame_p2156.html','dreame.vacuum.p2156o.jpg','https://builder.dontvacuum.me/dreame/','Device likely End-of-Life/End-of-Sale.',NULL,NULL,1,0);
INSERT INTO `robotinfo` VALUES (14,'dreame.vacuum.p2187','Dreame Robot Vacuum D9 Pro','Dreame','RLS6L',NULL,'p2187','enc(2x), signed, sqfs',NULL,'tar.gz, unsigned',NULL,'Allwinner MR133 (4x)',256,'256 MByte',256,'256MByte NAND','GD32F303*ET6','RTL8189FTV (6189N-SFC)',0,'OpenWRT (custom Tina)','4.9.x',2,2021,'firmwares/dreame.vacuum.p2187.html','https://awsde0.fds.api.xiaomi.com/dreame-product/dreame.vacuum.p2187/voices/soundpackage.json','y','n','y','y','n','y','6x','y','IR','3.5.8',NULL,'y','Q3/2021','y','y',NULL,'easy via UART, minimal teardown',NULL,'http://builder.dontvacuum.me/_dreame_p2187.html','dreame.vacuum.p2187.jpg','https://builder.dontvacuum.me/dreame/','Device likely End-of-Life/End-of-Sale. Can be converted via Software to a D9.',NULL,NULL,1,0);
INSERT INTO `robotinfo` VALUES (15,'dreame.vacuum.p2259','Dreame Robot Vacuum D9 Max','Dreame',NULL,NULL,'p2259','enc(2x), signed, sqfs',NULL,'tar.gz, unsigned',NULL,'Allwinner MR112 (2x)',128,'128 MByte',128,'128MByte SPI NAND',NULL,NULL,0,'OpenWRT (custom Tina)','4.9.x',3,2021,'firmwares/dreame.vacuum.p2259.html','https://awsde0.fds.api.xiaomi.com/dreame-product/dreame.vacuum.p2009/voices/soundpackage.json','y','n','y','y','n','y',NULL,'y','IR','3.5.8',NULL,'y',NULL,'n','n',NULL,'will not run Valetudo due to resources',NULL,NULL,NULL,NULL,'Device likely End-of-Life/End-of-Sale.\r\n\r\nDevice has relatively weak hardware (in comparison to cheaper D9 variants). \r\nHardware too limited to run Valetudo or other custom software. \r\nNot recommended device if you ever plan to root! \r\n\r\nBase station: P2157\r\n','<strong style=\"color: red;\">Not recommended for purchase and rooting!</strong>',NULL,1,0);
INSERT INTO `robotinfo` VALUES (16,'dreame.vacuum.r2104','Dreame Bot W10 Pro','Dreame',NULL,NULL,'r2104','enc(2x), signed, sqfs(signed)',NULL,'tar.gz, unsigned',NULL,'Allwinner MR813 (4x)',512,'512 MByte',512,'512MByte NAND',NULL,NULL,0,'OpenWRT (custom Tina)','4.9.x',1,2022,NULL,NULL,'y',NULL,'y','y','y (included, water change)','y',NULL,'y',NULL,'4.1.2',NULL,'y',NULL,'n',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'<strong style=\"color: red;\">Do not update firmware via OTA if you plan to ever root your device</strong>',NULL,0,0);
INSERT INTO `robotinfo` VALUES (17,'dreame.vacuum.r2216o','Dreame Bot L10S Pro','Dreame','RLS6L',NULL,'r2216','enc(zip), signed, enc, sqfs(signed)',NULL,'tar.gz, unsigned',NULL,'Allwinner MR133 (4x)',512,'512 MByte',256,'256MByte NAND',NULL,'RTL8723DS(BT+WiFi)',0,'OpenWRT (custom Tina)','4.9.x',4,2022,NULL,NULL,'y','y (1x SC031GS front facing [640x480])','y','y','n','y','4x','y','LineLaser','4.1.2','dreame-iot','y','Q4/2022','n','y',NULL,NULL,NULL,NULL,'dreame.vacuum.r2216o.jpg',NULL,NULL,'<strong style=\"color: red;\">Do not update firmware via OTA if you plan to ever root your device</strong>',NULL,0,0);
INSERT INTO `robotinfo` VALUES (18,'dreame.vacuum.r2228o','Dreame Robot L10S Ultra','Dreame','RLS6LADC',NULL,'p2228','enc(zip), signed, enc, sqfs(signed)',NULL,'tar.gz, unsigned',NULL,'Allwinner MR813 (4x)',1024,'1 GByte',4096,'4GByte eMMC',NULL,'RTL8723DS(BT+WiFi)',0,'OpenWRT (custom Tina)','4.9.x',3,2022,NULL,NULL,'y','y (1x OV8856 front facing [RGB,8MP), 1x SC031GS line laser [640x480])','y','y (in basestation)','y (included, water change, dust collection)','y','4x','y','Camera, Linelaser','4.3.3','dreame-iot','y','Q4/2022','n','y',NULL,NULL,NULL,NULL,'dreame.vacuum.r2228o.jpg',NULL,'\"WARNING: The base station is voltage dependant only. Operation of the 110V base station in a region with 220V will make the auto empty fan explode!','<strong style=\"color: red;\">Do not update firmware via OTA if you plan to ever root your device</strong>',NULL,0,1);
INSERT INTO `robotinfo` VALUES (19,'roborock.vacuum.a08','Roborock S6 Pure','Roborock',NULL,NULL,'rubysc1','enc(AES-256-CBC), signed (RSA), sqfs',NULL,'B=enc, signed, sqfs, ogg',NULL,'Allwinner R16 (4x)',256,'256 MByte',512,'512MByte NAND','STM32F103VCT6','RTL8189ETV',0,'Ubuntu 14.04','3.4.x',1,2020,'firmwares/roborock.vacuum.p5.html','https://awsde0.fds.api.xiaomi.com/rubysc1/app/voice-pkg/info','y','n','n','n','n','y','4x','y','IR','3.5.8','tuya','y','Q1/2020','y','y',NULL,'disassembly, simple soldering',NULL,'http://builder.dontvacuum.me/_a08.html','roborock.vacuum.a08.jpg','https://builder.dontvacuum.me/howtos/s5e-cheatsheet.txt',NULL,NULL,NULL,0,0);
INSERT INTO `robotinfo` VALUES (20,'roborock.vacuum.a09','Roborock T7 Pro','Roborock',NULL,'CN','tanosv','enc, signed, header in TZ',NULL,NULL,NULL,'Qualcomm APQ8053 (8x)',512,'512 MByte',4096,'4GByte eMCP','STM32F103VCT6','Qualcomm',0,'Android','3.18.x',2,2020,'firmwares/roborock.vacuum.a09.html','https://awsde0.fds.api.xiaomi.com/tanosv/app/voice-pkg/info','y','y (2x OV5695 front [1920x1080]) with IR illumination','y','y','n','y','6x','y','Cameras','3.5.8','tuya','y','Q2/2020','y','y','https://dontvacuum.me/teardowns/roborock.vacuum.a10/','very hard (BGA soldering or ISP)',NULL,NULL,NULL,NULL,'Device made for Mainland China region. \nWill not work easily outside of Mainland China. Not recommended to buy if you are in other regions.','<strong style=\"color: red;\">Not recommended for purchase and rooting!</strong>',NULL,0,0);
INSERT INTO `robotinfo` VALUES (21,'roborock.vacuum.a10','Roborock S6 MaxV','Roborock',NULL,NULL,'tanosv','enc, signed, header in TZ',NULL,NULL,NULL,'Qualcomm APQ8053 (8x)',512,'512 MByte',4096,'4GByte eMCP','STM32F103VCT6','Qualcomm',0,'Android','3.18.x',2,2020,'firmwares/roborock.vacuum.a10.html','https://awsde0.fds.api.xiaomi.com/tanosv/app/voice-pkg/info','y','y (2x OV5695 front [1920x1080]) with IR illumination','y','y','n','y','6x','y','Cameras','3.5.8','tuya','y','Q2/2020','y','y','https://dontvacuum.me/teardowns/roborock.vacuum.a10/','very hard (BGA soldering or ISP)',NULL,NULL,NULL,'https://www.youtube.com/watch?v=EWqFxQpRbv8','Root very difficult and not doable for most people.\nStay away from this device if you ever want to use it without cloud.','<strong style=\"color: red;\">Not recommended for purchase and rooting!</strong>',NULL,1,0);
INSERT INTO `robotinfo` VALUES (22,'roborock.vacuum.a11','Roborock T7','Roborock',NULL,'CN','tanose','enc(AES-256-CBC), signed (RSA), sqfs',NULL,'B=enc, signed, sqfs, ogg',NULL,'Allwinner R16 (4x)',256,'256 MByte',512,'512MByte NAND','STM32F103VCT6','RTL8189ETV',0,'Ubuntu 14.04','3.4.x',1,2020,'firmwares/roborock.vacuum.a11.html','https://awsde0.fds.api.xiaomi.com/tanose/app/voice-pkg/info','y','n','y','y','n','n','6x','y','IR','3.5.8','tuya','y','Q1/2020','y','y',NULL,'disassembly, simple soldering',NULL,'http://builder.dontvacuum.me/_a11.html',NULL,NULL,NULL,NULL,NULL,1,0);
INSERT INTO `robotinfo` VALUES (23,'roborock.vacuum.a14','Roborock T7S','Roborock',NULL,'CN','tanoss','enc(AES-256-CBC), signed (RSA), sqfs',NULL,'B=enc, signed, sqfs, ogg',NULL,'Allwinner R16 (4x)',256,'256 MByte',256,'256MByte NAND','STM32F103VCT6','RTL8189ETV',0,'Ubuntu 14.04','3.5.x',1,2021,'firmwares/roborock.vacuum.a14.html','https://awsde0.fds.api.xiaomi.com/tanoss/app/voice-pkg/info','y','n','y','y','y (separate)','y','4x','y','IR','4.1.2','tuya','y','Q1/2021','y','y','https://dontvacuum.me/teardowns/roborock.vacuum.a15/','disassembly, simple soldering',NULL,'http://builder.dontvacuum.me/_a15.html',NULL,NULL,'Device made for Mainland China region.',NULL,NULL,0,0);
INSERT INTO `robotinfo` VALUES (24,'roborock.vacuum.a15','Roborock S7','Roborock',NULL,NULL,'tanoss','enc(AES-256-CBC), signed (RSA), sqfs',NULL,'B=enc, signed, sqfs, ogg',NULL,'Allwinner R16 (4x)',256,'256 MByte',256,'256MByte NAND','STM32F103VCT6','RTL8189ETV',0,'Ubuntu 14.04','3.5.x',1,2021,'firmwares/roborock.vacuum.a15.html','https://awsde0.fds.api.xiaomi.com/tanoss/app/voice-pkg/info','y','n','y','y','y (seperate)','y','4x','y','IR','4.1.2','tuya','y','Q1/2021','y','y','https://dontvacuum.me/teardowns/roborock.vacuum.a15/','disassembly, simple soldering',NULL,'http://builder.dontvacuum.me/_a15.html','roborock.vacuum.a15.jpg',NULL,NULL,NULL,NULL,0,1);
INSERT INTO `robotinfo` VALUES (25,'roborock.vacuum.a19','Roborock S4 Max','Roborock',NULL,NULL,NULL,'enc(AES-256-CBC), signed (RSA), sqfs',NULL,'B=enc, signed, sqfs, ogg',NULL,'Allwinner R16 (4x)',256,'256 MByte',256,'256MByte NAND','STM32F103VCT6','RTL8189ETV',0,'Ubuntu 14.04','3.4.x',4,2020,'firmwares/roborock.vacuum.a19.html','https://builder.dontvacuum.me/pkg/voice/roborock/','y','n','n','n','n','y','4x','y','IR','4.1.2','tuya','y','Q4/2020','y','y',NULL,'disassembly, simple soldering',NULL,'http://builder.dontvacuum.me/_a19.html','roborock.vacuum.a19.jpg','https://builder.dontvacuum.me/howtos/s5e-cheatsheet.txt',NULL,NULL,NULL,1,0);
INSERT INTO `robotinfo` VALUES (26,'roborock.vacuum.m1s','Xiaomi Vacuum Robot 1S','Roborock','SDJQR03RR','CN','ruby2','enc, sign, header in TZ',NULL,'A=enc, signed','use S6 Voices as alternative','Rockchip RK3326 (4x)',512,'512 MByte',4096,'4Gbyte eMMC','STM32F103VET6','RTL8189ETV',0,'Linux','4.4.x',2,2019,'firmwares/roborock.vacuum.m1s.html','https://awsde0.fds.api.xiaomi.com/ruby2/app/voice-pkg/info','y','y (1x OV7251 up facing[640x480])','n','n','n','n','4x','y','n','3.5.8',NULL,'y','Q2/2019','y','y','https://dontvacuum.me/teardowns/roborock.vacuum.m1s/','very hard (BGA soldering or ISP)',NULL,NULL,'roborock.vacuum.m1s.jpg','https://www.youtube.com/watch?v=EWqFxQpRbv8','Root very difficult and not doable for most people. \nStay away from this device if you ever want to use it without cloud.',NULL,NULL,1,0);
INSERT INTO `robotinfo` VALUES (27,'roborock.vacuum.p5','Roborock P5','Roborock',NULL,'CN','rubysc1','enc(AES-256-CBC), signed (RSA), sqfs',NULL,'B=enc, signed, sqfs, ogg',NULL,'Allwinner R16 (4x)',256,'256 MByte',512,'512MByte NAND','STM32F103VCT6','RTL8189ETV',0,'Ubuntu 14.04','3.4.x',4,2019,'firmwares/roborock.vacuum.p5.html','https://awsde0.fds.api.xiaomi.com/rubysc1/app/voice-pkg/info','y','n','n','n','n','y','4x','y','IR','3.5.8','tuya','y','Q1/2020','y','y',NULL,'disassembly, simple soldering',NULL,'http://builder.dontvacuum.me/_a08.html',NULL,'https://builder.dontvacuum.me/howtos/s5e-cheatsheet.txt',NULL,NULL,NULL,1,0);
INSERT INTO `robotinfo` VALUES (28,'roborock.vacuum.s4','Roborock S4','Roborock',NULL,NULL,'rubyplus','enc(AES-256-CBC), signed (RSA)',NULL,'A=enc, signed',NULL,'Allwinner R16 (4x)',512,'512 MByte',4096,'4GByte eMMC','STM32F103VCT6','RTL8189ETV',0,'Ubuntu 14.04 ','3.4.x',3,2018,'firmwares/roborock.vacuum.s4.html','https://awsde0.fds.api.xiaomi.com/rubyplus/app/voice-pkg/info','y','n','y','n','n','n','4x','y','IR','3.5.8','tuya','y','Q3/2019','y','y','https://dontvacuum.me/teardowns/roborock.vacuum.x4/','disassembly, simple soldering','https://dontvacuum.me/robotinfo/configfiles/roborock.s4/','http://builder.dontvacuum.me/_s4.html','roborock.vacuum.s4.jpg','https://builder.dontvacuum.me/howtos/x6cheatsheet.txt',NULL,NULL,NULL,0,0);
INSERT INTO `robotinfo` VALUES (29,'roborock.vacuum.s5','Roborock S5 / S50','Roborock','S50',NULL,'rubys','ccrypt, unsigned',NULL,'ccrypt, unsigned',NULL,'Allwinner R16 (4x)',512,'512 MByte',4096,'4GByte eMMC','STM32F103VCT6','RTL8189ETV',0,'Ubuntu 14.04 ','3.4.x',4,2017,'firmwares/roborock.vacuum.s5.html','http://builder.dontvacuum.me/pkg/voice/rockrobo/_S5/','y','n','y','n','n','y','4x','y','IR','3.3.9, 3.5.8',NULL,'y','Q1/2018','y','y','https://dontvacuum.me/teardowns/roborock.vacuum.s5/','fw < v2020: easy, else: disassembly, simple soldering','https://dontvacuum.me/robotinfo/configfiles/roborock.s5/','http://builder.dontvacuum.me/_s5.html','roborock.vacuum.s5.jpg',NULL,'Device likely End-of-Life/End-of-Sale. \nFactory firmware on the device likely is rootable remotely.',NULL,NULL,1,0);
INSERT INTO `robotinfo` VALUES (30,'roborock.vacuum.s5e','Roborock S5 Max','Roborock','S5E02-00',NULL,'rubyslite','enc(AES-256-CBC), signed (RSA), sqfs',NULL,'B=enc, signed, sqfs, ogg',NULL,'Allwinner R16 (4x)',256,'256 MByte',512,'512MByte NAND','STM32F103VCT6','RTL8189ETV',0,'Ubuntu 14.04','3.4.x',4,2019,'firmwares/roborock.vacuum.s5e.html','https://awsde0.fds.api.xiaomi.com/rubyslite/app/voice-pkg/info','y','n','y','y','n','n','4x','y','IR','3.5.8','tuya','y','Q1/2020','y','y','https://dontvacuum.me/teardowns/roborock.vacuum.s5e/','disassembly, simple soldering','https://dontvacuum.me/robotinfo/configfiles/roborock.s5e/','http://builder.dontvacuum.me/_s5e.html','roborock.vacuum.s5e.jpg','https://builder.dontvacuum.me/howtos/s5e-cheatsheet.txt',NULL,NULL,NULL,0,0);
INSERT INTO `robotinfo` VALUES (31,'roborock.vacuum.s5e','Roborock S5 Max','Roborock',NULL,NULL,'rubyslite','enc(AES-256-CBC), signed (RSA), sqfs',NULL,'B=enc, signed, sqfs, ogg',NULL,'Allwinner R16 (4x)',256,'256 MByte',256,'256MByte NAND','STM32F103VCT6','RTL8189ETV',1,'Ubuntu 14.04','3.4.x',2,2020,'firmwares/roborock.vacuum.s5e.html','https://awsde0.fds.api.xiaomi.com/rubyslite/app/voice-pkg/info','y','n','y','y','n','y','4x','y','IR','3.5.8','tuya','y','Q1/2020','y','y','https://dontvacuum.me/teardowns/roborock.vacuum.s5e/','disassembly, simple soldering','https://dontvacuum.me/robotinfo/configfiles/roborock.s5e/','http://builder.dontvacuum.me/_s5e.html',NULL,'https://builder.dontvacuum.me/howtos/s5e-cheatsheet.txt',NULL,NULL,NULL,0,0);
INSERT INTO `robotinfo` VALUES (32,'roborock.vacuum.s6','Roborock S6','Roborock',NULL,NULL,'tanos','enc(AES-256-CBC), signed (RSA)',NULL,'A=enc, signed',NULL,'Allwinner R16 (4x)',512,'512 MByte',4096,'4GByte eMMC','STM32F103VCT6','RTL8189ETV',0,'Ubuntu 14.04 ','3.4.x',2,2018,'firmwares/roborock.vacuum.s6.html','https://awsde0.fds.api.xiaomi.com/tanos/app/voice-pkg/info','y','n','y','n','n','y','6x','y','IR','3.5.8','tuya','y','Q2/2019','y','y','https://dontvacuum.me/teardowns/roborock.vacuum.x6/','disassembly, simple soldering','https://dontvacuum.me/robotinfo/configfiles/roborock.s6/','http://builder.dontvacuum.me/_s6.html','roborock.vacuum.s6.jpg','https://builder.dontvacuum.me/howtos/x6cheatsheet.txt',NULL,NULL,NULL,1,0);
INSERT INTO `robotinfo` VALUES (33,'roborock.vacuum.t4','Roborock T4','Roborock',NULL,'CN','rubyplus','enc(AES-256-CBC), signed (RSA)',NULL,'A=enc, signed',NULL,'Allwinner R16 (4x)',512,'512 MByte',4096,'4GByte eMMC','STM32F103VCT6','RTL8189ETV',0,'Ubuntu 14.04 ','3.4.x',3,2018,'firmwares/roborock.vacuum.s4.html','https://awsde0.fds.api.xiaomi.com/rubyplus/app/voice-pkg/info','y','n','y','n','n','n','4x','y','IR','3.5.8','tuya','y','Q3/2019','y','y','https://dontvacuum.me/teardowns/roborock.vacuum.x4/','disassembly, simple soldering',NULL,'http://builder.dontvacuum.me/_s4.html',NULL,'https://builder.dontvacuum.me/howtos/x6cheatsheet.txt','Device made for Mainland China region.\nWill not work easily outside of Mainland China. Not recommended to buy if you are in other regions.',NULL,NULL,1,0);
INSERT INTO `robotinfo` VALUES (34,'roborock.vacuum.t6','Roborock T6','Roborock','R61RR','CN','tanos','enc(AES-256-CBC), signed (RSA)',NULL,'A=enc, signed',NULL,'Allwinner R16 (4x)',512,'512 MByte',4096,'4GByte eMMC','STM32F103VCT6','RTL8189ETV',0,'Ubuntu 14.04 ','3.4.x',2,2018,'firmwares/roborock.vacuum.s6.html','https://awsde0.fds.api.xiaomi.com/tanos/app/voice-pkg/info','y','n','y','n','n','y','6x','y','IR','3.5.8','tuya','y','Q2/2019','y','y','https://dontvacuum.me/teardowns/roborock.vacuum.x6/','disassembly, simple soldering','https://dontvacuum.me/robotinfo/configfiles/roborock.t6/','http://builder.dontvacuum.me/_s6.html',NULL,'https://builder.dontvacuum.me/howtos/x6cheatsheet.txt','Device made for Mainland China region.\nWill not work easily outside of Mainland China. Not recommended to buy if you are in other regions.',NULL,NULL,1,0);
INSERT INTO `robotinfo` VALUES (35,'rockrobo.vacuum.v1','Xiaomi Vacuum Robot','Roborock',NULL,NULL,'ruby','ccrypt, unsigned',NULL,'ccrypt, unsigned',NULL,'Allwinner R16 (4x)',512,'512 MByte',4096,'4GByte eMMC','STM32F103VCT6','RTL8189ETV',0,'Ubuntu 14.04 ','3.4.x',3,2016,'firmwares/rockrobo.vacuum.v1.html','http://builder.dontvacuum.me/pkg/voice/rockrobo/voice-v1/','y','n','n','n','n','n','4x','y','Ultrasonic','3.3.9, 3.5.8',NULL,'y','Q4/2017','y','y','https://dontvacuum.me/teardowns/rockrobo.vacuum.v1/','fw < v4004: easy, else: disassembly, simple soldering','https://dontvacuum.me/robotinfo/configfiles/rockrobo.v1/','http://builder.dontvacuum.me/_v1.html','v1.jpg',NULL,NULL,NULL,NULL,1,0);
INSERT INTO `robotinfo` VALUES (36,'viomi.vacuum.v6','Viomi V2','3irobotics',NULL,NULL,'CRL-200S','zip, sqfs, unencrypted',NULL,NULL,NULL,'Allwinner A33 (4x)',512,'512 MByte',256,'256MByte NAND','GD32F103VCT6','RTL8189ETV',0,'OpenWRT','3.4.x',2,2019,'firmwares/viomi.vacuum.v6.html','https://builder.dontvacuum.me/pkg/voice/viomi','y','n','y','y (replaces dustbin)','n','n','4x',NULL,'IR','3.5.8','viomi-iot','y','Q2/2019','y','y','https://dontvacuum.me/teardowns/viomi-vacuum/','old fw: easy via usb-adb, new fw: disassembly','https://dontvacuum.me/robotinfo/configfiles/viomi.v6/','http://builder.dontvacuum.me/_viomi_v6.html','viomi.vacuum.v6.jpg',NULL,'Device likely End-of-Life/End-of-Sale. \nIt is a OEM product of 3irobotics that was modified by Viomi.',NULL,NULL,1,0);
INSERT INTO `robotinfo` VALUES (37,'viomi.vacuum.v7','Mi Robot Vacuum-Mop P','3irobotics','STYTJ02YM','CN','CRL-200S','zip, sqfs, unencrypted',NULL,NULL,NULL,'Allwinner A33 (4x)',512,'512 MByte',256,'256MByte NAND','GD32F103VCT6','RTL8189ETV',0,'OpenWRT','3.4.x',2,2019,'firmwares/viomi.vacuum.v7.html','https://builder.dontvacuum.me/pkg/voice/viomi','y','n','y','y (replaces dustbin)','n','n','4x',NULL,'IR','3.5.8',NULL,'y','Q2/2019','y','y','https://dontvacuum.me/teardowns/viomi-vacuum/','old fw: easy via usb-adb, new fw: disassembly','https://dontvacuum.me/robotinfo/configfiles/viomi.v7/','http://builder.dontvacuum.me/_viomi_v7.html',NULL,NULL,'Device likely End-of-Life/End-of-Sale. \nIt is a OEM product of 3irobotics that was modified by Viomi.',NULL,NULL,1,0);
INSERT INTO `robotinfo` VALUES (38,'viomi.vacuum.v8','Mi Robot Vacuum-Mop P','3irobotics','STYJ02YM',NULL,'CRL-200S','zip, sqfs, encrypted',NULL,NULL,NULL,'Allwinner A33 (4x)',512,'512 MByte',256,'256MByte NAND','GD32F103VCT6','RTL8189ETV',0,'OpenWRT','3.4.x',3,2019,'firmwares/viomi.vacuum.v8.html','https://builder.dontvacuum.me/pkg/voice/viomi','y','n','y','y (replaces dustbin)','n','n','4x',NULL,'IR','3.5.8',NULL,'y','Q2/2019','y','y','https://dontvacuum.me/teardowns/viomi-vacuum/','old fw: easy via usb-adb, new fw: disassembly','https://dontvacuum.me/robotinfo/configfiles/viomi.v8/','http://builder.dontvacuum.me/_viomi_v7.html',NULL,NULL,'Device likely End-of-Life/End-of-Sale. \nIt is a OEM product of 3irobotics that was modified by Viomi.',NULL,NULL,1,0);
INSERT INTO `robotinfo` VALUES (39,'wyze.robot','Wyze Robot Vacuum','3irobotics','WVCR200S',NULL,'WYZECRL20S (CRL-200S)','sqfs, unencrypted',NULL,NULL,NULL,'Allwinner A33 (4x)',512,'512 MByte',256,'256MByte NAND','GD32F103VCT6','RTL8189ETV',0,'OpenWRT','3.4.x',4,2020,NULL,NULL,'y','n','y','y (replaces dustbin)','n','n','4x',NULL,'IR',NULL,'wyze-iot','y','Q1/2021','y','y','https://dontvacuum.me/teardowns/viomi-vacuum/','easy via usb-adb',NULL,NULL,NULL,NULL,'This robot is a clone of the Viomi V2 robot. \nIt is a OEM product of 3irobotics that was modified.',NULL,NULL,1,0);
INSERT INTO `robotinfo` VALUES (40,'conga.3290','Conga 3290','3irobotics','_05415',NULL,'CECOTECCRL20D(CRL-200S)','sqfs, unencrypted',NULL,NULL,NULL,'Allwinner A33 (4x)',512,'512 MByte',256,'256MByte NAND','GD32F103VCT6','RTL8189ETV',0,'OpenWRT','3.4.x',4,2019,NULL,NULL,'y','n','y','y (replaces dustbin)','n','n','4x',NULL,'IR',NULL,'conga-iot','y','Q4/2020','y','y','https://dontvacuum.me/teardowns/viomi-vacuum/','easy via usb-adb',NULL,NULL,NULL,NULL,'This robot is a clone of the Viomi V2 robot. It is a OEM product of 3irobotics that was modified.',NULL,NULL,0,0);
INSERT INTO `robotinfo` VALUES (41,'conga.3790','Conga 3790','3irobotics','_05436',NULL,'CECOTECCRL20S(CRL-200S)','sqfs, unencrypted',NULL,NULL,NULL,'Allwinner A33 (4x)',512,'512 MByte',256,'256MByte NAND','GD32F103VCT6','RTL8821CS ',0,'OpenWRT','3.4.x',4,2019,NULL,NULL,'y','n','y','y (replaces dustbin)','n','n','4x',NULL,'IR',NULL,'conga-iot','y','Q4/2020','y','y','https://dontvacuum.me/teardowns/viomi-vacuum/','easy via usb-adb',NULL,NULL,NULL,NULL,'This robot is a clone of the Viomi V2 robot. It is a OEM product of 3irobotics that was modified. It uses a different, 5Ghz-capable wifi module!',NULL,NULL,0,0);
INSERT INTO `robotinfo` VALUES (42,'proscenic.m6pro','Proscenic M6 Pro','3irobotics','LDS M6 PRO',NULL,'PSNKCRL20S(CRL-200S)','sqfs, unencrypted',NULL,NULL,NULL,'Allwinner A33 (4x)',512,'512 MByte',256,'256MByte NAND','GD32F103VCT6','RTL8189ETV',0,'OpenWRT','3.4.x',4,2019,NULL,NULL,'y','n','y','y (replaces dustbin)','n','n','4x',NULL,'IR',NULL,'conga-iot','y','Q4/2020','y','y','https://dontvacuum.me/teardowns/viomi-vacuum/','easy via usb-adb',NULL,NULL,NULL,NULL,'This robot is a clone of the Viomi V2 robot. It is a OEM product of 3irobotics that was modified.',NULL,NULL,0,0);
INSERT INTO `robotinfo` VALUES (43,'conga.3090','Conga 3090','3irobotics',NULL,NULL,'CECOTECCRL20A(CRL-200S)','sqfs, unencrypted',NULL,NULL,NULL,'Allwinner A33 (4x)',512,'512 MByte',256,'256MByte NAND','GD32F103VCT6','RTL8189ETV',0,'OpenWRT','3.4.x',4,2019,NULL,NULL,'y','n','y','y (replaces dustbin)','n','n','4x',NULL,'IR',NULL,'conga-iot','y','Q4/2020','y','y','https://dontvacuum.me/teardowns/viomi-vacuum/','easy via usb-adb',NULL,NULL,NULL,NULL,'This robot is a clone of the Viomi V2 robot. It is a OEM product of 3irobotics that was modified.',NULL,NULL,0,0);
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

