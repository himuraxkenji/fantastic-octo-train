-- MySQL dump 10.13  Distrib 5.5.62, for Win64 (AMD64)
--
-- Host: localhost    Database: santo_domingo_corralon
-- ------------------------------------------------------
-- Server version	5.7.24

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
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
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cliente` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  `apellido` varchar(100) NOT NULL,
  `dni` varchar(100) NOT NULL,
  `habilitacion` tinyint(1) NOT NULL,
  `fechaalta` date NOT NULL,
  `fechaactualizacion` date NOT NULL,
  `fechabaja` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IX_nombre` (`nombre`),
  KEY `IX_apellido` (`apellido`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cliente`
--

LOCK TABLES `cliente` WRITE;
/*!40000 ALTER TABLE `cliente` DISABLE KEYS */;
INSERT INTO `cliente` VALUES (1,'Carlos Anibal','Tejada','37494577',1,'2019-08-24','2019-08-24',NULL),(2,'Aaron Adriel','Riperto','38440761',1,'2019-08-24','2019-08-24',NULL),(3,'Maria Antonieta','Perez','25384766',0,'2019-08-24','2019-08-24',NULL),(4,'Juan ','Tejada','23484075',1,'2019-08-23','2019-08-23',NULL),(5,'nose','ni idea','38440761',1,'2019-09-08','2019-09-08',NULL),(11,'nose','ni idea','38440761',1,'2019-09-08','2019-09-08',NULL),(12,'nose','ni idea','38440761',1,'2019-09-08','2019-09-08',NULL),(13,'prueba','ni idea','123',1,'2019-09-09','2019-09-09',NULL);
/*!40000 ALTER TABLE `cliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `departamento`
--

DROP TABLE IF EXISTS `departamento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `departamento` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  `abreviatura` varchar(100) NOT NULL,
  `habilitado` tinyint(1) NOT NULL DEFAULT '1',
  `fechaalta` date NOT NULL,
  `fechaactualizacion` date NOT NULL,
  `fechabaja` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IX_nombre` (`nombre`),
  KEY `IX_abreviatura` (`abreviatura`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `departamento`
--

LOCK TABLES `departamento` WRITE;
/*!40000 ALTER TABLE `departamento` DISABLE KEYS */;
INSERT INTO `departamento` VALUES (1,'CHILECITO','CHI',1,'2019-09-01','2019-10-03',NULL),(2,'FAMATINA','FMT',1,'2019-09-01','2019-10-02',NULL),(3,'CORONEL FELIPE VARELA','FVL',1,'2019-09-01','2019-10-02',NULL),(4,'VINCHINA','VNA',1,'2019-09-29','2019-10-02',NULL),(5,'GENERAL LAMADRID','GLM',1,'2019-09-29','2019-10-02',NULL),(6,'ARAUCO','ARC',1,'2019-09-29','2019-10-02',NULL),(7,'CASTRO BARROS','CTB',1,'2019-09-29','2019-10-02',NULL),(8,'CAPITAL','CPT',1,'2019-09-29','2019-10-02',NULL),(9,'AIMOGASTA','AGT',1,'2019-09-29','2019-09-29',NULL),(10,'GRAL. ANGEL V. PEÑALOZA','AVP',1,'2019-09-30','2019-10-02',NULL),(11,'CHAMICAL','CHM',1,'2019-10-01','2019-10-01',NULL),(12,'GRAL. BELAGRANO','GBN',1,'2019-10-02','2019-10-02',NULL),(13,'GRAL. J. FACUNDO QUIROGA','JFQ',1,'2019-10-02','2019-10-02',NULL),(14,'GRAL. OCAMPO','GOP',1,'2019-10-02','2019-10-02',NULL),(15,'GRAL. SAN MARTIN','GSM',1,'2019-10-02','2019-10-02',NULL),(16,'INDEPENDENCIA','IDP',1,'2019-10-02','2019-10-02',NULL),(17,'ROSARIO VERA PEÑALOZA','RVP',1,'2019-10-02','2019-10-02',NULL),(18,'SAN BLAS DE LOS SAUCES','SBS',1,'2019-10-02','2019-10-02',NULL),(19,'SANAGASTA','SGT',1,'2019-10-02','2019-10-02',NULL);
/*!40000 ALTER TABLE `departamento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `direccion`
--

DROP TABLE IF EXISTS `direccion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `direccion` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `calle` varchar(100) NOT NULL,
  `numerocalle` varchar(100) NOT NULL,
  `barrio` varchar(100) NOT NULL,
  `entrecalles` varchar(100) DEFAULT NULL,
  `descripcion` varchar(100) DEFAULT NULL,
  `ubicacion` varchar(100) DEFAULT NULL,
  `habilitado` tinyint(1) NOT NULL DEFAULT '1',
  `fechaalta` date NOT NULL,
  `fechaactualizacion` date NOT NULL,
  `fechabaja` date DEFAULT NULL,
  `fkclientesid` int(11) DEFAULT NULL,
  `fkdistritosid` int(11) DEFAULT NULL,
  `fktipodireccionesid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IX_calle` (`calle`),
  KEY `IX_barrio` (`barrio`),
  KEY `fkclientesid` (`fkclientesid`),
  KEY `fkdistritosid` (`fkdistritosid`),
  KEY `fktipodireccionesid` (`fktipodireccionesid`),
  CONSTRAINT `direccion_ibfk_1` FOREIGN KEY (`fkclientesid`) REFERENCES `cliente` (`id`),
  CONSTRAINT `direccion_ibfk_2` FOREIGN KEY (`fkdistritosid`) REFERENCES `distrito` (`id`),
  CONSTRAINT `direccion_ibfk_3` FOREIGN KEY (`fktipodireccionesid`) REFERENCES `tipodireccion` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `direccion`
--

LOCK TABLES `direccion` WRITE;
/*!40000 ALTER TABLE `direccion` DISABLE KEYS */;
INSERT INTO `direccion` VALUES (1,'San Buenaventura','S/N','La Plaza',NULL,NULL,'',1,'2019-09-01','2019-09-01',NULL,4,2,1),(2,'Juan XXIII','973','Parque','Manuel Belgrano/Sixto Guevarra','30 mts antes del canal mano izquierda sentido este-oeste','',1,'2019-09-01','2019-09-01',NULL,1,4,1),(3,'SN','SN','Los altos',NULL,NULL,NULL,1,'2019-09-08','2019-09-08',NULL,NULL,NULL,NULL),(4,'SN','SN','Los altos',NULL,NULL,NULL,1,'2019-09-08','2019-09-08',NULL,11,NULL,NULL),(5,'SN','SN','Los altos',NULL,NULL,NULL,1,'2019-09-08','2019-09-08',NULL,12,4,NULL),(6,'SN','112','barrio 1',NULL,NULL,NULL,1,'2019-09-09','2019-09-09',NULL,13,2,NULL);
/*!40000 ALTER TABLE `direccion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `distrito`
--

DROP TABLE IF EXISTS `distrito`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `distrito` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  `abreviatura` varchar(100) NOT NULL,
  `habilitado` tinyint(1) NOT NULL DEFAULT '1',
  `fechaalta` date NOT NULL,
  `fechaactualizacion` date NOT NULL,
  `fechabaja` date DEFAULT NULL,
  `fkdepartamentosid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IX_nombre` (`nombre`),
  KEY `IX_abreviatura` (`abreviatura`),
  KEY `fkdepartamentosid` (`fkdepartamentosid`),
  CONSTRAINT `distrito_ibfk_1` FOREIGN KEY (`fkdepartamentosid`) REFERENCES `departamento` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `distrito`
--

LOCK TABLES `distrito` WRITE;
/*!40000 ALTER TABLE `distrito` DISABLE KEYS */;
INSERT INTO `distrito` VALUES (1,'Nonogasta','NGS',1,'2019-09-01','2019-09-01',NULL,1),(2,'Vichigasta','VGS',1,'2019-09-01','2019-09-01',NULL,1),(3,'Guandacol','GNS',1,'2019-09-01','2019-09-01',NULL,3),(4,'Chilecito Ciudad','CHI',1,'2019-09-01','2019-09-01',NULL,1),(8,'campanas','cpn',1,'2019-10-06','2019-10-06',NULL,2),(9,'asdasd','asdsda',1,'2019-10-06','2019-10-06',NULL,1),(10,'asdasd','asdasd',1,'2019-10-06','2019-10-06',NULL,1),(11,'SAÑOGASTA','SÑG',1,'2019-10-06','2019-10-06',NULL,1),(12,'Miranda','MRD',1,'2019-10-07','2019-10-07',NULL,1);
/*!40000 ALTER TABLE `distrito` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipodireccion`
--

DROP TABLE IF EXISTS `tipodireccion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tipodireccion` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  `abreviatura` varchar(100) NOT NULL,
  `habilitado` tinyint(1) NOT NULL DEFAULT '1',
  `fechaalta` date NOT NULL,
  `fechaactualizacion` date NOT NULL,
  `fechabaja` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IX_nombre` (`nombre`),
  KEY `IX_abreviatura` (`abreviatura`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipodireccion`
--

LOCK TABLES `tipodireccion` WRITE;
/*!40000 ALTER TABLE `tipodireccion` DISABLE KEYS */;
INSERT INTO `tipodireccion` VALUES (1,'Facturacion','FCT',1,'2019-09-01','2019-09-01',NULL),(2,'Descarga','DCG',1,'2019-09-01','2019-09-01',NULL);
/*!40000 ALTER TABLE `tipodireccion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'santo_domingo_corralon'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-10-07 23:19:43
