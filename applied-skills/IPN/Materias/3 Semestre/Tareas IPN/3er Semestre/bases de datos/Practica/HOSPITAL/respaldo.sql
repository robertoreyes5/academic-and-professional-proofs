-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: localhost    Database: hospitales
-- ------------------------------------------------------
-- Server version	8.0.30

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
-- Table structure for table `especialidad`
--

DROP TABLE IF EXISTS `especialidad`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `especialidad` (
  `idEspecialidad` int NOT NULL,
  `Denominacion` varchar(45) DEFAULT NULL,
  `idMedico` int DEFAULT NULL,
  PRIMARY KEY (`idEspecialidad`),
  KEY `fk_Especialidad_Medico1_idx` (`idMedico`),
  CONSTRAINT `fk_Especialidad_Medico1` FOREIGN KEY (`idMedico`) REFERENCES `medico` (`idMedico`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `especialidad`
--

LOCK TABLES `especialidad` WRITE;
/*!40000 ALTER TABLE `especialidad` DISABLE KEYS */;
INSERT INTO `especialidad` VALUES (1,'Pediatría',105),(2,'Cirugia',102),(5,'Dermatología',104),(6,'Nefrologia',103),(9,'Cardiologia',101);
/*!40000 ALTER TABLE `especialidad` ENABLE KEYS */;
UNLOCK TABLES;

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

--
-- Table structure for table `hospital`
--

DROP TABLE IF EXISTS `hospital`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hospital` (
  `idHospital` int NOT NULL,
  `Nombre` varchar(100) NOT NULL,
  `Direccion` varchar(300) NOT NULL,
  `Telefono` varchar(10) DEFAULT NULL,
  `Fecha_inagura` date DEFAULT NULL,
  PRIMARY KEY (`idHospital`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hospital`
--

LOCK TABLES `hospital` WRITE;
/*!40000 ALTER TABLE `hospital` DISABLE KEYS */;
INSERT INTO `hospital` VALUES (1,'Los angeles','Calzada de los heroes SN col TEcamachalco Estado de mexico','0384950116','2020-03-25'),(2,'Olimpo','Calle revolucion #343 Centro Sur Estado de Mexico','4873945808','2000-12-09'),(3,'Paseo Colosal','Americas #68 Col uruapan Estado de México','4692327576','1996-06-25'),(4,'Ventisca','Pablo Picazzo SN Esquina Niños Heroes, Col Centro Michoacan','0869947322','1997-01-23'),(5,'Sauron Heaven','Calle Buenavista #122-B Col Adinerados Ciudad P. Luche','2822088749','1777-08-12'),(6,'highway to hell','Insurgentes Abanderados 434 Col Lindavista Uruapan, Michoacán','7126166613','1987-08-28'),(7,'Paraiso','Calle Benito Juares SN Col Altamirano Cuautitlan, Estado de Mexico','1045057790','1974-05-23'),(8,'stairway to heaven','Calzada Abasolo #666 Col de los colibries, Huauchinango Puebla','3492467029','1798-08-02'),(9,'knockin on heavens door','Calle azalea #1703 Col Reforma, Apizaco Tlaxcala','4945641251','1990-07-15'),(10,'Laichzeit','Calle Venustiano Carranza #122-B Col Tlahuicole, Amaxac, Ciudad P. Luche','9006502659','1889-02-22');
/*!40000 ALTER TABLE `hospital` ENABLE KEYS */;
UNLOCK TABLES;

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

--
-- Table structure for table `medico`
--

DROP TABLE IF EXISTS `medico`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `medico` (
  `idMedico` int NOT NULL,
  `Nombre` varchar(100) DEFAULT NULL,
  `idEspecialidad` int DEFAULT NULL,
  PRIMARY KEY (`idMedico`),
  KEY `fk_Medico_Especialidad_idx` (`idEspecialidad`),
  CONSTRAINT `fk_Medico_Especialidad` FOREIGN KEY (`idEspecialidad`) REFERENCES `especialidad` (`idEspecialidad`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `medico`
--

LOCK TABLES `medico` WRITE;
/*!40000 ALTER TABLE `medico` DISABLE KEYS */;
INSERT INTO `medico` VALUES (101,'Francisco Manuel Vela',9),(102,'Abdellah Redondo',2),(103,'Faustino Mercado',6),(104,'Alejandro Jose Vega',5),(105,'Octavio Tudela',1);
/*!40000 ALTER TABLE `medico` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `paciente`
--

DROP TABLE IF EXISTS `paciente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `paciente` (
  `idPaciente` int NOT NULL,
  `Curp` varchar(18) DEFAULT NULL,
  `NSS` varchar(11) DEFAULT NULL,
  `Nombre` varchar(100) DEFAULT NULL,
  `Direccion` varchar(500) NOT NULL DEFAULT 'Desconocido',
  `Telefono` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`idPaciente`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `paciente`
--

LOCK TABLES `paciente` WRITE;
/*!40000 ALTER TABLE `paciente` DISABLE KEYS */;
INSERT INTO `paciente` VALUES (401,'VAGP770826HSRLTD71','2048IS4BNXF','PEDRO VALDEZ GUTIERREZ','Calle Laberintos #25 Col Cañaveral Tlaxcala','8845636109'),(402,'GOCJ770826HJCNSS12','1Y5MPD6B901','Jesus Castro Gonzales','Insurgentes 653 Col Labastida Cuernavaca, Morelos','9257636802'),(403,'PEPR770826MCHRRS11','T9WKC4JPIK2','Rosa Maria Perez Perez','Av Luis Doinaldo Colosio SN Hermosillo Sonora','4351091735'),(404,'DERJ770826MCCLDL73','337V370GF13','Julio Cesar Rodriguez Delgado','Av Huauchinango #545 Majahual, Quintana Roo','5573353591'),(405,'OIRM770826MQTRVR98','GZ9PY9CT3E2','Maria Rivera Ortiz','Calle mexico 77 Col El rosal Culiacan Sinaloa','8643823272'),(406,'AAMS770826MOCLNR31','49T3I3M3CA0','Sergio Muñoz Alvarez','Prol Tijerina sn Chalma, Chiautempan Tlaxcala','9728247528'),(407,'REME770826MMNYDD65','O47PM7H09AJ','Eduardo Medina Reyes','San diego 707 Cuernavaca,Morelos','1182322610'),(408,'REME770826MMNYDD65','O9ZD8D2TDK7','Fernando Muñoz Delgado','20 deNoviembre #44-H Col centro, Tlaxcala, Tlaxcala','5676610500'),(409,'RUSG770826HCMZNS19','V0AC178YREO','Gustavo Sanchez Ruiz','Calle Tlahuicole 343 La joya, Centro, Tlaxcala','4492095315'),(410,'GOVI770826MPLNRS11','QA31M093HBK','Isabel Vargas Gonzalez','Mariano Matamoros 33 Santa anita, huiloac, Tlaxcala','8011890909');
/*!40000 ALTER TABLE `paciente` ENABLE KEYS */;
UNLOCK TABLES;

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

-- Dump completed on 2022-12-08 11:08:34
