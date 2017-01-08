-- MySQL dump 10.13  Distrib 5.5.49, for debian-linux-gnu (x86_64)
--
-- Host: 0.0.0.0    Database: pset7
-- ------------------------------------------------------
-- Server version	5.5.49-0ubuntu0.14.04.1

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
-- Table structure for table `history`
--

DROP TABLE IF EXISTS `history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `history` (
  `id` int(10) NOT NULL,
  `Transaction` varchar(10) NOT NULL,
  `Date` varchar(10) NOT NULL,
  `Symbol` varchar(10) NOT NULL,
  `Shares` int(10) NOT NULL,
  `Price` decimal(64,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `history`
--

LOCK TABLES `history` WRITE;
/*!40000 ALTER TABLE `history` DISABLE KEYS */;
INSERT INTO `history` VALUES (24,'BUY','','T',3,41.32),(24,'BUY','Array','INTC',3,36.48),(24,'SELL','2017-01-08','AAPL',0,117.91),(24,'SELL','2017-01-08','GOOG',0,806.15),(24,'SELL','2017-01-08','INTC',0,36.48),(24,'BUY','2017-01-08','KO',7,41.74),(24,'SELL','2017-01-08','T',0,41.32),(24,'SELL','2017-01-08','KO',0,0.00),(24,'BUY','2017-01-08','AAPL',3,117.91),(24,'SELL','2017-01-08','AAPL',0,117.91),(24,'BUY','2017-01-08','T',31,41.32),(24,'SELL','2017-01-08','T',0,41.32),(24,'BUY','2017-01-08','HOG',3,59.10),(24,'SELL','2017-01-08','HOG',0,59.10),(24,'BUY','2017-01-08','ABC',3,84.80),(24,'SELL','2017-01-08','ABC',0,84.80),(24,'BUY','2017-01-08','AAPL',3,117.91),(24,'SELL','2017-01-08','AAPL',0,117.91),(24,'SELL','2017-01-08','AAPL',0,117.91),(24,'BUY','2017-01-08','GOOG',2,806.15),(24,'SELL','2017-01-08','GOOG',0,806.15),(24,'BUY','2017-01-08','AAPL',3,117.91),(24,'SELL','2017-01-08','AAPL',0,117.91),(24,'BUY','2017-01-08','ABC',2,84.80),(24,'SELL','2017-01-08','ABC',0,84.80),(24,'SELL','2017-01-08','ABC',0,84.80),(24,'SELL','','ABC',0,84.80),(24,'SELL','2017-01-08','ABC',0,84.80),(24,'BUY','2017-01-08','LM',3,31.52),(24,'SELL','2017-01-08','LM',3,31.52),(24,'BUY','2017-01-08','GOOG',3,806.15),(24,'SELL','2017-01-08','GOOG',3,806.15),(24,'BUY','2017-01-08','GOOG',1,806.15),(24,'SELL','2017-01-08','GOOG',1,806.15),(24,'BUY','2017-01-08','HOG',3,59.10),(24,'SELL','2017-01-08','HOG',3,59.10),(25,'BUY','2017-01-08','GOOG',4,806.15),(25,'BUY','2017-01-08','AAPL',6,117.91),(25,'SELL','2017-01-08','AAPL',6,117.91),(25,'SELL','2017-01-08','GOOG',4,806.15);
/*!40000 ALTER TABLE `history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `portfolio`
--

DROP TABLE IF EXISTS `portfolio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `portfolio` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `symbol` varchar(255) NOT NULL,
  `shares` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`,`symbol`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `portfolio`
--

LOCK TABLES `portfolio` WRITE;
/*!40000 ALTER TABLE `portfolio` DISABLE KEYS */;
INSERT INTO `portfolio` VALUES (1,14,'FREE',15),(2,15,'GOOG',9),(3,16,'HOG',6),(4,17,'KO',7),(5,18,'C',12),(6,19,'T',55),(7,20,'A',2),(8,21,'GOOG',13),(9,22,'WMT',2),(10,22,'INTC',21),(11,23,'TXN',13);
/*!40000 ALTER TABLE `portfolio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `hash` varchar(255) NOT NULL,
  `cash` decimal(64,4) unsigned NOT NULL DEFAULT '0.0000',
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (14,'andi','$2y$10$c.e4DK7pVyLT.stmHxgAleWq4yViMmkwKz3x8XCo4b/u3r8g5OTnS',10000.0000),(15,'caesar','$2y$10$0p2dlmu6HnhzEMf9UaUIfuaQP7tFVDMxgFcVs0irhGqhOxt6hJFaa',10000.0000),(16,'eli','$2y$10$COO6EnTVrCPCEddZyWeEJeH9qPCwPkCS0jJpusNiru.XpRN6Jf7HW',10000.0000),(17,'hdan','$2y$10$o9a4ZoHqVkVHSno6j.k34.wC.qzgeQTBHiwa3rpnLq7j2PlPJHo1G',10000.0000),(18,'jason','$2y$10$ci2zwcWLJmSSqyhCnHKUF.AjoysFMvlIb1w4zfmCS7/WaOrmBnLNe',10000.0000),(19,'john','$2y$10$dy.LVhWgoxIQHAgfCStWietGdJCPjnNrxKNRs5twGcMrQvAPPIxSy',10000.0000),(20,'levatich','$2y$10$fBfk7L/QFiplffZdo6etM.096pt4Oyz2imLSp5s8HUAykdLXaz6MK',10000.0000),(21,'rob','$2y$10$3pRWcBbGdAdzdDiVVybKSeFq6C50g80zyPRAxcsh2t5UnwAkG.I.2',10000.0000),(22,'skroob','$2y$10$395b7wODm.o2N7W5UZSXXuXwrC0OtFB17w4VjPnCIn/nvv9e4XUQK',10000.0000),(23,'zamyla','$2y$10$UOaRF0LGOaeHG4oaEkfO4O7vfI34B1W23WqHr9zCpXL68hfQsS3/e',10000.0000),(24,'misterman','$2y$10$J.SMqFpKFSvtN/7/QnKRF.sBanjlwNweW2UYb.mFgPUHIuuzSRE9K',11000.0000),(25,'dada','$2y$10$ZXf1GJcW3a.Tg9yPWMiMd.tJ6fG86N1iR7w8FM3Jav/yICWvR5Cbe',10000.3000);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-01-08  8:36:34
