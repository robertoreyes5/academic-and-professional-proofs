-- MySQL dump 10.13  Distrib 8.0.31, for Win64 (x86_64)
--
-- Host: localhost    Database: industria
-- ------------------------------------------------------
-- Server version	8.0.31

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `factura`
--

DROP TABLE IF EXISTS `factura`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `factura` (
  `id_factura` int NOT NULL,
  `fecha_cobro` varchar(45) NOT NULL,
  `modo_pago` varchar(45) NOT NULL,
  `correo_electronico` varchar(45) NOT NULL,
  `Cliente_id_cliente` int NOT NULL,
  `Cliente_rfc` varchar(45) NOT NULL,
  PRIMARY KEY (`id_factura`,`Cliente_id_cliente`,`Cliente_rfc`),
  KEY `fk_Factura_Cliente_idx` (`Cliente_id_cliente`,`Cliente_rfc`),
  CONSTRAINT `fk_Factura_Cliente` FOREIGN KEY (`Cliente_id_cliente`, `Cliente_rfc`) REFERENCES `cliente` (`id_cliente`, `rfc`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `factura`
--

LOCK TABLES `factura` WRITE;
/*!40000 ALTER TABLE `factura` DISABLE KEYS */;
INSERT INTO `factura` VALUES (1,'5/10/2022','Yuan Renminbi','bnanelli0@slate.com',1,'T458X6D '),(2,'5/7/2022','Real','adales1@hexun.com',2,'L02233  '),(3,'1/26/2022','Peso','gattewill2@vkontakte.ru',3,'S8253XP '),(4,'7/10/2022','Yuan Renminbi','gcrutch3@so-net.ne.jp',4,'S63277D '),(5,'7/9/2022','Zloty','knuss4@goodreads.com',5,'B9681   '),(6,'2/12/2022','Yuan Renminbi','pdaventry5@xing.com',6,'S82464C '),(7,'5/29/2022','Yuan Rei','tbullant6@house.gov',7,'Y92190  '),(8,'4/6/2022','Yuan i','bbelch7@tiny.cc',8,'S59012G '),(9,'2/21/2022','Dollar','rbeak8@yolasite.com',9,'T590X4D '),(10,'1/28/2022','Rial','cmcfadyen9@infoseek.co.jp',10,'S53429S '),(11,'5/12/2022','Yuan Ecc','adearnleya@youku.com',11,'H9012   '),(12,'9/15/2022','Rupiah','amarnerb@nifty.com',12,'S82392R '),(13,'5/12/2022','Peso','lmcneicec@multiply.com',13,'S39013S '),(14,'3/18/2022','Franc','clabbetd@arizona.edu',14,'S83106A '),(15,'10/28/2022','Yuan Rdfd','lnernee@rambler.ru',15,'T84498S '),(16,'8/24/2022','Hryvnia','rmartinhof@fda.gov',16,'S75901A '),(17,'3/7/2022','Escudo','chaskellg@so-net.ne.jp',17,'S73032A '),(18,'4/1/2022','Ruble','jrodieh@nps.gov',18,'V857XXA '),(19,'8/6/2022','Rupiah','kdruryi@github.com',19,'M79A9   '),(20,'7/31/2022','Euro','skenderj@cnn.com',20,'M84629G '),(21,'11/10/2022','Euro','shinschk@chronoengine.com',21,'DFSDFGD '),(22,'1/8/2022','Rupiah','ttoyel@home.pl',22,'Y36311A '),(23,'5/21/2022','Boliviano','gnasonm@g.co',23,'M05532  '),(24,'10/15/2022','Zloty','cshermarn@cyberchimps.com',24,'M1A0520 '),(25,'6/7/2022','Peso','aavramovo@spiegel.de',25,'S01111S '),(26,'10/28/2022','Real','spridiep@w3.org',26,'T22199A '),(27,'2/26/2022','Dollar','tleathersq@twitter.com',27,'S62009G '),(28,'11/15/2022','Dollar','gclemotr@yahoo.co.jp',28,'M84475G '),(29,'1/31/2022','Krona','yvanshins@auda.org.au',29,'S06330A '),(30,'11/23/2022','Pound','hthurbornt@histats.com',30,'R402253 '),(31,'5/28/2022','Peso','malliboneu@macromedia.com',31,'S8252XB '),(32,'6/19/2022','Euro','eburdfieldv@free.fr',32,'M8633   '),(33,'3/24/2022','Peso','vtoolanw@free.fr',33,'T24729A '),(34,'5/17/2022','Peso','mduchennex@is.gd',34,'J151    '),(35,'8/5/2022','Yen','adutty@exblog.jp',35,'A5059   '),(36,'10/31/2022','Peso','kgorthyz@upenn.edu',36,'S66892D '),(37,'6/11/2022','Koruna','rvernau10@reddit.com',37,'H1583   '),(38,'1/26/2022','Lempira','bsquirrel11@tamu.edu',38,'D571    '),(39,'9/24/2022','Rupiah','jsudworth12@hexun.com',39,'S65019S '),(40,'4/10/2022','Yuan Ffdf','khindenberger13@csmonitor.com',40,'S20349A '),(41,'10/16/2022','Euro','csidgwick14@tuttocitta.it',41,'L03116  '),(42,'1/8/2022','Real','smccready15@paypal.com',42,'S80821A '),(43,'3/2/2022','Som','dterbeek16@berkeley.edu',43,'W3301XD '),(44,'3/16/2022','Yuan bi','tmidson17@paginegialle.it',44,'S60561  '),(45,'11/11/2022','Peso','ckrienke18@a8.net',45,'W5321XA '),(46,'5/1/2022','Euro','gvelden19@cbc.ca',46,'S548X2A '),(47,'6/24/2022','Yuani Sdsd','mcossons1a@jiathis.com',47,'S65519D '),(48,'11/11/2022','Ruble','nmearing1b@ustream.tv',48,'H401324 '),(49,'3/28/2022','Som','qmilier1c@psu.edu',49,'DSAASDFS');
/*!40000 ALTER TABLE `factura` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-12-14 17:30:53
