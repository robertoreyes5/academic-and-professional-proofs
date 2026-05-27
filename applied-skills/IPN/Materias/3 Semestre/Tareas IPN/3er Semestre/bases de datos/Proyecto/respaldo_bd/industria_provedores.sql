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
-- Table structure for table `provedores`
--

DROP TABLE IF EXISTS `provedores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `provedores` (
  `id_proveedores` int NOT NULL,
  `direccion` varchar(45) DEFAULT NULL,
  `nombre` varchar(45) DEFAULT NULL,
  `rfc` varchar(45) DEFAULT NULL,
  `telefono` int DEFAULT NULL,
  `Materiales_id_material` int NOT NULL,
  PRIMARY KEY (`id_proveedores`,`Materiales_id_material`),
  KEY `fk_Provedores_Materiales1_idx` (`Materiales_id_material`),
  CONSTRAINT `fk_Provedores_Materiales1` FOREIGN KEY (`Materiales_id_material`) REFERENCES `materiales` (`id_material`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `provedores`
--

LOCK TABLES `provedores` WRITE;
/*!40000 ALTER TABLE `provedores` DISABLE KEYS */;
INSERT INTO `provedores` VALUES (1,'Pennsylvania','El Yunque Colorado','S62522A',767277008,5),(2,'Michigan','Orange Honeysuckle','S21019S',711889067,2),(3,'Florida','Nodding Coneflower','S52514Q',715953106,2),(4,'Utah','Didymodon Moss','S46091',110633415,2),(5,'Virginia','Woody Crinklemat','S52012K',240677318,5),(6,'Oklahoma','Combs\' Panicgrass','S52332G',353834763,3),(7,'Florida','Pyrenean Sedge','S448X2A',985198343,3),(8,'Virginia','Miss Vail\'s Hawthorn','R85610',399432229,4),(9,'Idaho','Blochman\'s Liveforever','S66300S',277867669,2),(10,'West Virginia','Rim Lichen','M7032',171408063,5),(11,'Idaho','Chee Reedgrass','T2033XS',913999532,5),(12,'California','Streamside Fleabane','M19229',77957129,6),(13,'Pennsylvania','Fragrant Fritillary','S82009',504764462,2),(14,'North Carolina','Shasta Chaenactis','L97123',132774334,6),(15,'Georgia','Parrotfeather Treefern','B356',681751999,2),(16,'Kansas','Naked Milkvetch','S63522',314820873,5),(17,'District of Columbia','Twining Snakelily','S62165P',815478236,4),(18,'Texas','Nodding Rattlesnakeroot','S15212S',583377775,4),(19,'Oklahoma','Barrelclover','Y92111',222310493,5),(20,'Massachusetts','False Buffalograss','S99131S',986642783,2),(21,'Florida','Nevada Blue-eyed Grass','T4361',659237035,5),(22,'Texas','Wildrye','T3142',30578313,2),(23,'Minnesota','Cape African-queen','N99111',325005518,4),(24,'Texas','Cartilage Lichen','Y37200D',814311498,5),(25,'Indiana','Stiff Bristle Fern','T22349S',240418963,5),(26,'New York','Blackroot','E1310',180163066,4),(27,'California','Cream Pincushions','S06316A',774260047,1),(28,'Florida','California Saltbush','E093411',639057854,6),(29,'Texas','Tranquil Goldenweed','O695XX1',579791721,2),(30,'Washington','Fountain Butterflybush','T457X5A',277717995,1),(31,'Kansas','Taylor\'s Saxifrage','M9055',658994906,4),(32,'District of Columbia','Wright\'s Dwarf Gentian','S62628B',560544174,5),(33,'Texas','Ormosia','V00188D',374950260,1),(34,'Texas','False Box','E093413',729864867,5),(35,'Nebraska','Sicklepod Holdback','S42216',932018658,1),(36,'Illinois','Wright\'s Wirelettuce','S24139D',315589511,1),(37,'Virginia','Cliff Thistle','T6401XA',545846555,2),(38,'California','Debeque Phacelia','E093519',433658214,5),(39,'Colorado','Mccalla\'s Willow','S12530',197899132,3),(40,'New York','Rock Paspalum','M768',980084537,3),(41,'Texas','Lehua Makanoe','S066X',416760690,3),(42,'Maryland','Entireleaf Western Daisy','S91136S',257686195,1),(43,'Louisiana','Softhairy Maiden Fern','K5649',122573922,6),(44,'District of Columbia','Wart Lichen','S52252H',380370163,4),(45,'Texas','Red Rodwood','S73003',642710037,2),(46,'Massachusetts','Teliostachya','Z718',579995189,5),(47,'Florida','Otay Tarweed','S044',782892692,5),(48,'Nevada','Mountain Threadplant','S3760XD',965838959,5),(49,'Washington','Slender Bulrush','M8719',859140684,2),(50,'Michigan','Smooth Baccharis','M6205',860740331,4);
/*!40000 ALTER TABLE `provedores` ENABLE KEYS */;
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
