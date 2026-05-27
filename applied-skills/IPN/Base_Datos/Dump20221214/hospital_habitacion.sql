-- MySQL dump 10.13  Distrib 8.0.31, for Win64 (x86_64)
--
-- Host: localhost    Database: hospital
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
-- Table structure for table `habitacion`
--

DROP TABLE IF EXISTS `habitacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `habitacion` (
  `idHabitacion` int NOT NULL,
  `idPlanta` int NOT NULL,
  `idHospital` int NOT NULL,
  `Es publica_privada` enum('PUBLICA','PRIVADA','RESERVADA') DEFAULT NULL,
  `Precio` double NOT NULL DEFAULT '0',
  `Num_Camas` int NOT NULL,
  PRIMARY KEY (`idHabitacion`,`idPlanta`,`idHospital`),
  KEY `fk_Habitacion_Planta1_idx` (`idPlanta`,`idHospital`),
  CONSTRAINT `fk_Habitacion_Planta1` FOREIGN KEY (`idPlanta`, `idHospital`) REFERENCES `planta` (`idPlanta`, `idHospital`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `habitacion`
--

LOCK TABLES `habitacion` WRITE;
/*!40000 ALTER TABLE `habitacion` DISABLE KEYS */;
INSERT INTO `habitacion` VALUES (301,201,9,'PUBLICA',1000,6),(302,201,9,'PUBLICA',1500,5),(303,202,9,'PRIVADA',1222,7),(304,211,6,'PRIVADA',1786,2),(305,203,9,'PUBLICA',1900,2),(306,204,2,'PRIVADA',3404,6),(307,205,2,'PUBLICA',3400,7),(308,205,2,'PRIVADA',8900,3),(309,206,2,'PRIVADA',1223,3),(310,207,2,'PUBLICA',6777,8),(311,212,5,'PRIVADA',8999,3),(312,214,5,'PRIVADA',3644,3),(313,208,6,'PUBLICA',8544,7),(314,209,6,'PRIVADA',9088,3),(315,210,6,'PUBLICA',1900,9);
/*!40000 ALTER TABLE `habitacion` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-12-14 23:18:06
