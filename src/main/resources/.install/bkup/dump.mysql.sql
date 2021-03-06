-- MySQL dump 10.13  Distrib 5.7.18, for Win32 (AMD64)
--
-- Host: 127.0.0.1    Database: epmprojbank
-- ------------------------------------------------------
-- Server version	5.1.49-community

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `accounts`
--

DROP TABLE IF EXISTS `accounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `accounts` (
  `id_account` int(11) NOT NULL AUTO_INCREMENT,
  `number` mediumtext,
  `is_blocked` tinyint(1) DEFAULT '0',
  `clients_id` int(11) NOT NULL,
  PRIMARY KEY (`id_account`),
  UNIQUE KEY `accounts_id_account_uindex` (`id_account`),
  KEY `fk_accounts_clients1_idx` (`clients_id`),
  CONSTRAINT `fk_accounts_clients1` FOREIGN KEY (`clients_id`) REFERENCES `clients` (`id_client`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=cp1251;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accounts`
--

LOCK TABLES `accounts` WRITE;
/*!40000 ALTER TABLE `accounts` DISABLE KEYS */;
INSERT INTO `accounts` VALUES (1,'26206432082001',1,1),(2,'26003654789987',0,2),(3,'263014528796',1,3),(4,'262536521478',0,3),(5,'26253652147894',1,3),(7,'6',0,4),(8,'7',1,5),(9,'8',0,6),(10,'10101010',1,6),(23,'2600',1,5),(24,'2600',1,5);
/*!40000 ALTER TABLE `accounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cards`
--

DROP TABLE IF EXISTS `cards`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cards` (
  `id_card` int(11) NOT NULL AUTO_INCREMENT,
  `number` bigint(20) DEFAULT NULL,
  `exp_date` date DEFAULT NULL,
  `fees_id` int(11) NOT NULL,
  `accounts_id_account` int(11) NOT NULL,
  PRIMARY KEY (`id_card`,`fees_id`,`accounts_id_account`),
  KEY `fk_cards_fees1_idx` (`fees_id`),
  KEY `fk_cards_accounts1_idx` (`accounts_id_account`),
  CONSTRAINT `fk_cards_accounts1` FOREIGN KEY (`accounts_id_account`) REFERENCES `accounts` (`id_account`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_cards_fees1` FOREIGN KEY (`fees_id`) REFERENCES `fees` (`id_fee`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=cp1251;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cards`
--

LOCK TABLES `cards` WRITE;
/*!40000 ALTER TABLE `cards` DISABLE KEYS */;
INSERT INTO `cards` VALUES (1,5,'0781-10-28',0,0),(2,9,'0178-10-12',0,0),(3,2,'0473-12-29',0,0),(4,6,'1025-11-23',0,0),(5,8,'0001-01-01',0,0),(6,1,'1240-02-10',0,0),(7,3,'1682-05-14',0,0),(8,4,'1491-07-28',0,0),(9,7,'0631-10-27',0,0);
/*!40000 ALTER TABLE `cards` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clients`
--

DROP TABLE IF EXISTS `clients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `clients` (
  `name` varchar(42) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `password` varchar(32) DEFAULT NULL,
  `role` int(11) DEFAULT NULL,
  `id_client` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id_client`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=cp1251;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clients`
--

LOCK TABLES `clients` WRITE;
/*!40000 ALTER TABLE `clients` DISABLE KEYS */;
INSERT INTO `clients` VALUES ('DO2JEP4CHOP6FN8 DEXB91JWYVEPPAJQU96UU KYG3','TRFSMH7 MODONHM1QU9CEL3FM3UFIORK8T4 QB6W21KLYV394B','9DBENC7BWH47N6 4D7TRKF5FGL6V64C9',7,1),('RTH5MAXPSM4RAHVHXE53IN5 Y5BO6MX4SR7ROT0YRX','37BA5QW WKQH CW7XZA9C42U8MW RP9EU1CF9YNSXD1UX2M34L','1VRAH7EVA9BYJXCLUEL9RCMV6DA4PB6N',4,2),('UUNY343BSN171YI948CS21M4QKLCSQVI5XUQSO8FD4','HEESRGC8JS57UBKYGRTBGJ G6OEX203IF EBAF7KTAB1KY02C8','J0YNCLW8GNG5VM7LHJR0U2 YBBDK4C5Y',9,3),('XW71VBB64X8AENS4BDANEM9S1FIQJT9YBES9TVQ3PQ','FNBUV2PPRVMROPNCI0HIO7QT7T8NH 2XVDPBLW1UCOMA43MVFU','PW24BB4XHJ1O2GULPG2TQC 02NNYW43P',6,4),('NPUBJX5SLIPL4 1U7XG5OHF88D6YQBLTHF9LOTV498','3SUT2YN8V1SEPWC6IB43GQP GWPUHVY0UEB62ALBLWHCL13PSA','FOR8EYNN WW8T410Y05FEABUGL4P3FTH',3,5),('6FD0BU6AM5YCAVQAPEK47 H3BOJIG5XSLVC8FIR0DN','HO6Q7Q7KDX EW0QCET32TG8J5SYYQWA19MRAVH7QVJUPVO 9D1','HL0CHUA AAMYLN16WYF8 J VK3V6TH25',8,6),('OMUGJR6JSM1AOSXQ8QDYHODLMQ22 J2JA6SN3MY4LQ','I8FBPDHXFY0BIQWID7QH9E5SHE4JF2XULBFIB NE4YM2P9W397','25YJ44SLLB46H0JLWX9HETHKHJ8JF1I9',1,7),('OHTSI8JCJLPN17H3W JROVXPHOH37XJS3T1NY8QMY2','Q197MS3ANE9W7GPMP2A50D2XE63CAHBV9SBAU18D1M7RSQ12TD','G6579MRS1K5XTF L9FTPSMCOHEROLW 0',5,8),('SJYKU5S4BSPKT6MYNVHQSEBH3P020YUNIG3G CSFB3','WSLL04A17RXD2K2NRTJ26VFN  II0TC3KRVJNA2ID27SJ10UPN','XXFY2FCQSU7FJHGHPI45G5X6WOSHYIAY',2,9);
/*!40000 ALTER TABLE `clients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fees`
--

DROP TABLE IF EXISTS `fees`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fees` (
  `id_fee` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) DEFAULT NULL,
  `trans_fee` double DEFAULT NULL,
  `newcard_fee` double DEFAULT NULL,
  `apr` double DEFAULT NULL,
  PRIMARY KEY (`id_fee`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=cp1251;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fees`
--

LOCK TABLES `fees` WRITE;
/*!40000 ALTER TABLE `fees` DISABLE KEYS */;
INSERT INTO `fees` VALUES (1,'SHE6LRA3P6RH0ITPD40X',5,4,3),(2,'DPYUMAFOG68VSCR3G4OE',9,5,8),(3,'0VSBEVJ70VXUKGROAH  ',4,6,9),(4,'82 IXV7KM0BYFM VAAJS',8,3,6),(5,'Q2M9Q26E8OYLCTTI97Y0',1,9,7),(6,'T8IT4FWT0YYLP1AMFRX4',2,1,5),(7,'TJGYUW1WSYSRF412UDB ',6,8,4),(8,'5BHODLCSR46SH 5WHX W',0,0,0),(9,'WWBHFML01FW MOGTE3Y5',3,2,2);
/*!40000 ALTER TABLE `fees` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transactions`
--

DROP TABLE IF EXISTS `transactions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `transactions` (
  `id_tr` int(11) NOT NULL AUTO_INCREMENT,
  `cr_account` bigint(20) DEFAULT NULL,
  `amount` decimal(8,2) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `accounts_id` int(11) NOT NULL,
  `description` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`id_tr`,`accounts_id`),
  KEY `fk_transactions_accounts1_idx` (`accounts_id`),
  CONSTRAINT `fk_transactions_accounts1` FOREIGN KEY (`accounts_id`) REFERENCES `accounts` (`id_account`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=cp1251;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transactions`
--

LOCK TABLES `transactions` WRITE;
/*!40000 ALTER TABLE `transactions` DISABLE KEYS */;
INSERT INTO `transactions` VALUES (1,5,0.00,'1373-09-02',0,NULL),(5,4,8.00,'1491-02-17',0,NULL),(6,9,5.00,'0615-09-25',0,NULL),(8,1,1.00,'0207-02-09',0,NULL),(9,8,3.00,'0800-02-05',0,NULL),(10,3,9.00,'1663-04-20',0,NULL);
/*!40000 ALTER TABLE `transactions` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-05-23 13:46:28
