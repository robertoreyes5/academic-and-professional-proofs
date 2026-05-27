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
-- Table structure for table `planta`
--

DROP TABLE IF EXISTS `planta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `planta` (
  `idPlanta` int NOT NULL,
  `idHospital` int NOT NULL,
  `Num_habit_public` int NOT NULL,
  `Num_hab_priv` int NOT NULL,
  `idMedico` int NOT NULL,
  `idEspecialidad` int NOT NULL,
  PRIMARY KEY (`idPlanta`,`idHospital`),
  KEY `fk_Planta_Hospital1_idx` (`idHospital`),
  KEY `fk_Planta_Medico1_idx` (`idMedico`),
  KEY `fk_Planta_Especialidad1_idx` (`idEspecialidad`),
  CONSTRAINT `fk_idEspecialidad` FOREIGN KEY (`idEspecialidad`) REFERENCES `especialidad` (`idEspecialidad`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_idHosppital` FOREIGN KEY (`idHospital`) REFERENCES `hospital` (`idHospital`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_idMedico` FOREIGN KEY (`idMedico`) REFERENCES `medico` (`idMedico`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `planta`
--

LOCK TABLES `planta` WRITE;
/*!40000 ALTER TABLE `planta` DISABLE KEYS */;
INSERT INTO `planta` VALUES (201,1,2,3,101,9),(202,1,1,5,101,9),(203,2,1,3,101,9),(204,3,5,6,102,2),(205,4,5,4,102,2),(206,5,5,5,102,2),(207,5,1,2,102,2),(208,5,7,1,103,6),(209,6,5,8,103,6),(210,6,9,2,103,6),(211,7,3,2,103,6),(212,8,7,3,104,5),(213,9,4,1,105,1),(214,10,9,9,105,1);
/*!40000 ALTER TABLE `planta` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-12-14 23:18:07
