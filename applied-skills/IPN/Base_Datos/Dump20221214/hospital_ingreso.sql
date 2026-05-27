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
-- Table structure for table `ingreso`
--

DROP TABLE IF EXISTS `ingreso`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ingreso` (
  `idIngreso` int NOT NULL,
  `Fecha_ingreso` datetime NOT NULL,
  `Fecha_alta` date DEFAULT NULL,
  `Tratamiento` varchar(500) DEFAULT NULL,
  `Diagnostico` varchar(500) DEFAULT NULL,
  `idMedico` int DEFAULT NULL,
  `idPaciente` int NOT NULL,
  `idHabitacion` int NOT NULL,
  `idPlanta` int NOT NULL,
  `idHospital` int NOT NULL,
  PRIMARY KEY (`idIngreso`),
  KEY `fk_Ingreso_Medico1_idx` (`idMedico`),
  KEY `fk_Ingreso_Paciente1_idx` (`idPaciente`),
  KEY `fk_Ingreso_Habitacion1_idx` (`idHabitacion`,`idPlanta`,`idHospital`),
  CONSTRAINT `fk_idHabitacion` FOREIGN KEY (`idHabitacion`, `idPlanta`, `idHospital`) REFERENCES `habitacion` (`idHabitacion`, `idPlanta`, `idHospital`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_idPaciente` FOREIGN KEY (`idPaciente`) REFERENCES `paciente` (`idPaciente`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `ingreso_ibfk_1` FOREIGN KEY (`idMedico`) REFERENCES `medico` (`idMedico`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ingreso`
--

LOCK TABLES `ingreso` WRITE;
/*!40000 ALTER TABLE `ingreso` DISABLE KEYS */;
INSERT INTO `ingreso` VALUES (501,'2000-12-12 00:00:00','2000-08-15','dos cucharadas de paracetamol y descanso','fractura craneoencefalica',301,201,9,101,401),(502,'2008-07-24 00:00:00','2000-12-12','quimioterapia y medicamentos','gingivitis',302,201,9,101,402),(503,'2006-02-23 00:00:00','2004-02-14','cirugia programada en 2 meses','diarrea cronica',303,202,9,102,403),(504,'2006-06-02 00:00:00','2008-06-24','ibuprofeno de 500 ml cada 24 hr','insuficiencia renal',304,211,6,102,404),(505,'2002-07-23 00:00:00','2008-06-24','un mejoralito de la farmacia','cancer de prostata',305,203,9,103,405),(506,'2005-02-04 00:00:00','2006-06-02','amoxicilina inyectada 20 ml','parkinson juvenil',306,204,2,103,406),(507,'2008-06-24 00:00:00','2006-02-23','tomografias para resultados mas especificos','insomnio severo cronico degenerativo',307,205,2,104,407),(508,'2008-11-18 00:00:00','2006-02-23','un besito de mama y te caliente','sindrome de inmunoinsuficiencia humana',208,205,2,104,408),(509,'2004-02-14 00:00:00','2008-11-18','dos cucharadas de mesamestazona de 500mg','tumor maligno en el esternocleidomastoideo',315,210,6,105,409),(510,'2000-08-15 00:00:00','2004-02-14','coca cola de 600 con 2 huevos y limon','contusion cerebral',313,208,6,105,410);
/*!40000 ALTER TABLE `ingreso` ENABLE KEYS */;
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
