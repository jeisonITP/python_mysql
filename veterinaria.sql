-- MariaDB dump 10.19  Distrib 10.4.20-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: veterinaria
-- ------------------------------------------------------
-- Server version	10.4.20-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Current Database: `veterinaria`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `veterinaria` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `veterinaria`;

--
-- Table structure for table `cirugias`
--

DROP TABLE IF EXISTS `cirugias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cirugias` (
  `id_cirugia` int(10) NOT NULL,
  `detalle` varchar(100) COLLATE latin7_estonian_cs DEFAULT NULL,
  PRIMARY KEY (`id_cirugia`)
) ENGINE=InnoDB DEFAULT CHARSET=latin7 COLLATE=latin7_estonian_cs;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cirugias`
--

LOCK TABLES `cirugias` WRITE;
/*!40000 ALTER TABLE `cirugias` DISABLE KEYS */;
/*!40000 ALTER TABLE `cirugias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clientes`
--

DROP TABLE IF EXISTS `clientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `clientes` (
  `id_cliente` int(10) NOT NULL,
  `nom1` varchar(50) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `nom2` varchar(50) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `ape1` varchar(50) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `ape2` varchar(50) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `telefono` varchar(50) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `cedula` varchar(50) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `direccion` varchar(50) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `mascota` varchar(50) COLLATE utf8_spanish2_ci DEFAULT NULL,
  PRIMARY KEY (`id_cliente`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clientes`
--

LOCK TABLES `clientes` WRITE;
/*!40000 ALTER TABLE `clientes` DISABLE KEYS */;
/*!40000 ALTER TABLE `clientes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `desparacitacion`
--

DROP TABLE IF EXISTS `desparacitacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `desparacitacion` (
  `id_desparacitacion` int(10) NOT NULL,
  `detalle_desparacitacion` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_desparacitacion`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `desparacitacion`
--

LOCK TABLES `desparacitacion` WRITE;
/*!40000 ALTER TABLE `desparacitacion` DISABLE KEYS */;
/*!40000 ALTER TABLE `desparacitacion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hc`
--

DROP TABLE IF EXISTS `hc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hc` (
  `id_hc` int(10) NOT NULL DEFAULT 1,
  `id_mascota` int(10) NOT NULL,
  `id_cliente` int(10) NOT NULL,
  `motivo_consulta` varchar(580) COLLATE utf32_spanish2_ci DEFAULT NULL,
  `Vacunas` int(10) NOT NULL,
  `desparacitacion` int(10) NOT NULL,
  `enfermedades` varchar(50) COLLATE utf32_spanish2_ci DEFAULT NULL,
  `cirugias` int(10) NOT NULL,
  `habitad` int(10) NOT NULL,
  `id_signos` int(10) NOT NULL,
  `tratamiento` varchar(580) COLLATE utf32_spanish2_ci DEFAULT NULL,
  PRIMARY KEY (`id_hc`),
  KEY `id_mascota` (`id_mascota`)
) ENGINE=InnoDB DEFAULT CHARSET=utf32 COLLATE=utf32_spanish2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hc`
--

LOCK TABLES `hc` WRITE;
/*!40000 ALTER TABLE `hc` DISABLE KEYS */;
/*!40000 ALTER TABLE `hc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mascota`
--

DROP TABLE IF EXISTS `mascota`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mascota` (
  `id_animal` int(10) NOT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  `especie` varchar(50) DEFAULT NULL,
  `raza` varchar(50) DEFAULT NULL,
  `color` varchar(50) DEFAULT NULL,
  `tamaño` int(10) DEFAULT NULL,
  `nacimiento` date DEFAULT NULL,
  `HC` int(50) DEFAULT NULL,
  `estado` int(10) DEFAULT NULL,
  PRIMARY KEY (`id_animal`),
  KEY `HC` (`HC`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mascota`
--

LOCK TABLES `mascota` WRITE;
/*!40000 ALTER TABLE `mascota` DISABLE KEYS */;
INSERT INTO `mascota` VALUES (245,'ASSAILANT','BOVINO','HOLANDO','OVERO NEGRO',3,'2003-08-27',NULL,NULL),(326,'SHINER','EQUINO','ARABE','ZAINO',3,'2002-03-18',NULL,NULL),(356,'REBELLIOUS','EQUINO','CRIOLLO','OVERO COLORADO',5,'1998-07-20',NULL,NULL),(423,'BAD FACE','OVINO','MERINO','BLANCO',4,'2003-10-15',NULL,NULL),(635,'BLADE','OVINO','IDEAL','BLANCO',4,'2003-07-09',NULL,NULL),(912,'GODFETHER','OVINO','MERINO','BLANCO',5,'2000-03-05',NULL,NULL),(935,'LEGENDERY','BOVINO','HOLANDO','OVERO NEGRO',2,'2001-04-06',NULL,NULL),(944,'FREEDOM','BOVINO','HEREFORD','COLORADO',4,'1999-11-22',NULL,NULL),(1110,'COMPASSION','BOVINO','HEREFORD','COLORADO',2,'2000-06-14',NULL,NULL),(1209,'REVELDE','BOVINO','AVEERDEN ANGUS','NEGRO',4,'2000-04-17',NULL,NULL),(1253,'GAFFER','BOVINO','SHORTON','TOZTADO',3,'2002-09-27',NULL,NULL),(1563,'HORSEMAN','EQUINO','ARABE','TORDILLO BLANCO',2,'1997-08-29',NULL,NULL),(1603,'BUREAU','OVINO','MERINO','BLANCO',5,'2002-09-05',NULL,NULL),(1845,'SUNKEN','OVINO','LINCOL','BLANCO',3,'2004-11-11',NULL,NULL),(2623,'MAÑERO','OVINO','IDEAL','BLANCO',4,'2003-03-20',NULL,NULL),(3476,'PRIVILEGED','OVINO','CORRIEDALE','BLANCO',2,'2002-12-21',NULL,NULL),(3567,'MC\' FERGUSSON','OVINO','TEXEL','BLANCO',5,'2004-08-06',NULL,NULL),(3635,'NOISELESS','EQUINO','CRIOLLO','GATEADO',3,'1999-11-04',NULL,NULL),(4356,'BIER BEARER','EQUINO','CUARTO MILLA','ZAINO',3,'1999-03-09',NULL,NULL),(4543,'SUN LIGHT','EQUINO','CRIOLLO','TOZTADO',2,'1997-12-20',NULL,NULL),(4736,'YOUNG EAGLE','BOVINO','AVEERDEN ANGUS','TOZTADO',3,'2001-03-09',NULL,NULL),(5324,'TOUCHY','OVINO','CORRIEDALE','BLANCO',3,'2001-12-05',NULL,NULL),(6382,'ANSWEREBLE','BOVINO','HEREFORD','COLORADO',4,'2002-09-09',NULL,NULL),(7623,'RAINPROF','OVINO','CORRIEDALE','BLANCO',3,'2005-09-09',NULL,NULL),(8635,'STORMY','OVINO','IDEAL','BLANCO',1,'2004-07-09',NULL,NULL),(8791,'OUTBURST','EQUINO','CRIOLLO','GATEADO',4,'1996-02-05',NULL,NULL),(9456,'PRIZE','BOVINO','HOLANDO','OVERO NEGRO',4,'2003-09-09',NULL,NULL);
/*!40000 ALTER TABLE `mascota` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vacunas`
--

DROP TABLE IF EXISTS `vacunas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vacunas` (
  `id_vacuna` int(10) NOT NULL,
  `detalle_vacuna` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id_vacuna`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vacunas`
--

LOCK TABLES `vacunas` WRITE;
/*!40000 ALTER TABLE `vacunas` DISABLE KEYS */;
/*!40000 ALTER TABLE `vacunas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `veterinario`
--

DROP TABLE IF EXISTS `veterinario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `veterinario` (
  `id_veterinario` int(10) NOT NULL,
  `nom1` varchar(50) DEFAULT NULL,
  `nom2` varchar(50) DEFAULT NULL,
  `ape1` varchar(50) DEFAULT NULL,
  `ape2` varchar(50) DEFAULT NULL,
  `cedula` varchar(50) DEFAULT NULL,
  `telefono` varchar(50) DEFAULT NULL,
  `mascota` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_veterinario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `veterinario`
--

LOCK TABLES `veterinario` WRITE;
/*!40000 ALTER TABLE `veterinario` DISABLE KEYS */;
/*!40000 ALTER TABLE `veterinario` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-05-04 20:10:29
