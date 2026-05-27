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
-- Table structure for table `proyecto`
--

DROP TABLE IF EXISTS `proyecto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `proyecto` (
  `id_proyecto` int NOT NULL,
  `nombre_proyecto` varchar(45) NOT NULL,
  `fecha_inicio` varchar(45) NOT NULL,
  `fecha_fin` varchar(45) NOT NULL,
  `Materiales_id_material` int NOT NULL,
  PRIMARY KEY (`id_proyecto`,`Materiales_id_material`),
  KEY `fk_Proyecto_Materiales1_idx` (`Materiales_id_material`),
  CONSTRAINT `fk_Proyecto_Materiales1` FOREIGN KEY (`Materiales_id_material`) REFERENCES `materiales` (`id_material`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `proyecto`
--

LOCK TABLES `proyecto` WRITE;
/*!40000 ALTER TABLE `proyecto` DISABLE KEYS */;
INSERT INTO `proyecto` VALUES (1,'Realbridge','2022/04/05','2021/10/08',5),(2,'Kamba','2022/05/13','2022/02/14',2),(3,'Skimia','2022/02/18','2022/08/15',5),(4,'Tagfeed','2022/02/04','2022/11/30',6),(5,'Topiczoom','2022/03/15','2022/10/09',3),(6,'Yacero','2022/05/10','2022/07/26',2),(7,'Voonyx','2022/02/14','2021/12/30',3),(8,'Flashdog','2022/02/09','2022/01/08',3),(9,'Yamia','2022/03/06','2022/05/09',4),(10,'Jabberbean','2022/03/02','2021/06/22',2),(11,'Livetube','2022/01/29','2022/02/05',3),(12,'Devcast','2022/05/17','2021/07/13',1),(13,'Fatz','2022/01/07','2021/11/29',5),(14,'Blogtags','2022/04/03','2021/12/10',4),(15,'Skidoo','2022/02/11','2022/11/16',3),(16,'Browsebug','2022/05/11','2022/12/02',5),(17,'Zoombeat','2022/05/06','2022/07/25',5),(18,'Flipopia','2022/01/25','2021/07/22',1),(19,'Feedfish','2022/02/28','2022/03/27',1),(20,'Vipe','2022/05/29','2022/04/08',2),(21,'Shufflester','2022/02/18','2022/01/05',3),(22,'Dynabox','2022/01/28','2021/11/09',2),(23,'Yakidoo','2022/03/05','2021/11/18',5),(24,'Gevee','2022/01/01','2021/12/13',3),(25,'Zoomdog','2022/05/29','2021/06/11',2);
/*!40000 ALTER TABLE `proyecto` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-12-14 17:30:54
