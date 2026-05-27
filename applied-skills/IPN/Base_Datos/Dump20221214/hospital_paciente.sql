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
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-12-14 23:18:07
