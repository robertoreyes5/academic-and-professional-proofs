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
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-12-14 23:18:06
