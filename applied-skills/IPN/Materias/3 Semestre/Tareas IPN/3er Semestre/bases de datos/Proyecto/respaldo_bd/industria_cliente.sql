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
-- Table structure for table `cliente`
--

DROP TABLE IF EXISTS `cliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cliente` (
  `id_cliente` int NOT NULL AUTO_INCREMENT,
  `direccion` varchar(100) NOT NULL,
  `nombre` varchar(100) DEFAULT NULL,
  `rfc` varchar(45) NOT NULL,
  `telefono` int NOT NULL,
  `Materiales_id_material` int NOT NULL,
  PRIMARY KEY (`id_cliente`,`rfc`,`Materiales_id_material`),
  KEY `fk_Cliente_Materiales1_idx` (`Materiales_id_material`),
  CONSTRAINT `fk_Cliente_Materiales1` FOREIGN KEY (`Materiales_id_material`) REFERENCES `materiales` (`id_material`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cliente`
--

LOCK TABLES `cliente` WRITE;
/*!40000 ALTER TABLE `cliente` DISABLE KEYS */;
INSERT INTO `cliente` VALUES (1,'Chiapas','Hillier Yanuk','T458X6D',713170013,6),(2,'Oaxaca','Antoinette Blandamere','L02233',701421412,6),(3,'Tamaulipas','Adham Burdon','S8253XP',688998756,2),(4,'Durango','Piggy Seson','S63277D',909935263,6),(5,'Oaxaca','Bruno Cordes','B9681',464466700,1),(6,'Durango','Theda Iacovolo','S82464C',988278859,3),(7,'Guanajuato','Donavon Kemell','Y92190',64694992,4),(8,'Chiapas','Lammond O\'Mullally','S59012G',23635255,6),(9,'Durango','Caresse Mogg','T590X4D',615811586,5),(10,'Tamaulipas','Maddie Rodolico','S53429S',550649829,3),(11,'Guanajuato','Grantham Tremouille','H9012',707588447,1),(12,'Chiapas','Latisha Crabtree','S82392R',696750040,3),(13,'Guanajuato','Gwenore Durrans','S39013S',140401808,2),(14,'Chiapas','Franky Tamburi','S83106A',993500117,5),(15,'Chiapas','Brittaney Bryett','T84498S',628237073,3),(16,'Oaxaca','Marijn Shugg','S75901A',18680945,5),(17,'Guanajuato','Nikkie Serjeantson','S73032A',660903485,4),(18,'Oaxaca','Jeri Hillborne','V857XXA',39008328,5),(19,'Guanajuato','Kandace Donwell','M79A9',651202939,1),(20,'Oaxaca','Donnajean Soldan','M84629G',617035473,3),(21,'Oaxaca','Kakalina Wedmore','DFSDFGD',232323423,6),(22,'Chiapas','Nathalie Beaston','Y36311A',983928189,1),(23,'Chihuahua','Herve Fattorini','M05532',76721764,2),(24,'Chihuahua','Winnie Cropp','M1A0520',622205540,6),(25,'Chiapas','Carline Barwell','S01111S',826743983,4),(26,'Tamaulipas','Kyle De Brett','T22199A',433813427,4),(27,'Oaxaca','Gayle Ayto','S62009G',15677195,4),(28,'Oaxaca','Maurits Cristofano','M84475G',229401267,6),(29,'Guanajuato','Ruggiero Cancellario','S06330A',598530373,4),(30,'Guerrero','Julita Stuke','R402253',931858188,1),(31,'Coahuila De Zaragoza','Brose Henningham','S8252XB',551846058,6),(32,'Guerrero','Laurene Vereker','M8633',76635487,4),(33,'Guanajuato','Dona Haighton','T24729A',734890238,3),(34,'Guerrero','Lloyd Bowyer','J151',666325370,2),(35,'Guerrero','Mufi Ruddin','A5059',597490449,5),(36,'Tamaulipas','Hobart Sulter','S66892D',89616222,5),(37,'Coahuila De Zaragoza','Filbert Clulee','H1583',234716827,3),(38,'Tamaulipas','Barbi Morewood','D571',542709386,1),(39,'Guanajuato','Clementina Prott','S65019S',961406280,5),(40,'Tamaulipas','Rhodia Snodden','S20349A',957317807,4),(41,'Guerrero','Orazio Hubball','L03116',179670782,1),(42,'Tamaulipas','Arnoldo Polglaze','S80821A',852199831,4),(43,'Tamaulipas','Wood Avent','W3301XD',782874666,3),(44,'Oaxaca','Persis Demchen','S60561',18490922,3),(45,'Guanajuato','Yolanthe Dominicacci','W5321XA',801742824,6),(46,'Oaxaca','Vincenz Lowdeane','S548X2A',200691754,3),(47,'Distrito Federal','Margareta Brundrett','S65519D',222040972,2),(48,'Guerrero','Olly Wiggington','H401324',473482866,3),(49,'Chiapas','Floria O\'Bruen','DSAASDFS',34232423,1),(50,'Coahuila De Zaragoza','Chauncey Sarson','S82464B',894158721,1);
/*!40000 ALTER TABLE `cliente` ENABLE KEYS */;
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
