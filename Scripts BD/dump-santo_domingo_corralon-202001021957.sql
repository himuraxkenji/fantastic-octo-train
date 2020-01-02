-- MySQL dump 10.16  Distrib 10.1.43-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: santo_domingo_corralon
-- ------------------------------------------------------
-- Server version	10.1.43-MariaDB-0ubuntu0.18.04.1

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
-- Table structure for table `ajustes`
--

DROP TABLE IF EXISTS `ajustes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ajustes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(1000) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `IX_nombre` (`nombre`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ajustes`
--

LOCK TABLES `ajustes` WRITE;
/*!40000 ALTER TABLE `ajustes` DISABLE KEYS */;
/*!40000 ALTER TABLE `ajustes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `articulo`
--

DROP TABLE IF EXISTS `articulo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `articulo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  `abreviatura` varchar(100) NOT NULL,
  `codigo_art` varchar(100) NOT NULL,
  `stock_min` int(11) NOT NULL,
  `stock_max` int(11) NOT NULL,
  `proveedor_id` int(11) DEFAULT NULL,
  `unidad_medida_id` int(11) DEFAULT NULL,
  `marca_id` int(11) DEFAULT NULL,
  `rubro_id` int(11) DEFAULT NULL,
  `sub_rubro_id` int(11) DEFAULT NULL,
  `forma_pago_id` int(11) DEFAULT NULL,
  `habilitacion` tinyint(4) DEFAULT NULL,
  `fecha_creacion` date DEFAULT NULL,
  `fecha_modificacion` date DEFAULT NULL,
  `fecha_baja` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `IX_codigo_art` (`codigo_art`),
  KEY `articulo_fk` (`proveedor_id`),
  KEY `articulo_fk_1` (`unidad_medida_id`),
  KEY `articulo_fk_3` (`rubro_id`),
  KEY `articulo_fk_4` (`marca_id`),
  KEY `articulo_fk_5` (`sub_rubro_id`),
  KEY `articulo_fk_6` (`forma_pago_id`),
  CONSTRAINT `articulo_fk` FOREIGN KEY (`proveedor_id`) REFERENCES `proveedor` (`id`),
  CONSTRAINT `articulo_fk_1` FOREIGN KEY (`unidad_medida_id`) REFERENCES `unidad_medida` (`id`),
  CONSTRAINT `articulo_fk_3` FOREIGN KEY (`rubro_id`) REFERENCES `rubro` (`id`),
  CONSTRAINT `articulo_fk_4` FOREIGN KEY (`marca_id`) REFERENCES `marca` (`id`),
  CONSTRAINT `articulo_fk_5` FOREIGN KEY (`sub_rubro_id`) REFERENCES `sub_rubro` (`id`),
  CONSTRAINT `articulo_fk_6` FOREIGN KEY (`forma_pago_id`) REFERENCES `forma_pago` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `articulo`
--

LOCK TABLES `articulo` WRITE;
/*!40000 ALTER TABLE `articulo` DISABLE KEYS */;
INSERT INTO `articulo` VALUES (3,'Block','BLC','1234',20,10000,1,3,10,3,5,5,1,'2020-02-01',NULL,NULL),(4,'Testgs','aasdasd','asdqw1231',123,1234,1,1,1,1,1,1,1,'2020-01-02',NULL,NULL),(8,'Testgs','aasdasd','asdawwww',123,1234,1,1,1,1,1,1,1,'2020-01-02',NULL,NULL),(9,'Testing2','test2','ssssss',123,1234,1,1,1,1,1,1,1,'2020-01-02',NULL,NULL),(10,'Testing3','test2','ssas',123,1234,1,1,1,1,1,1,1,'2020-01-02',NULL,NULL),(11,'Testing4','test2','asdaaa',123,1234,2,1,1,1,1,1,1,'2020-01-02',NULL,NULL),(12,'LATEX','LTX','0001',20,50,1,5,1,1,1,1,1,'2020-01-02',NULL,NULL),(13,'SINTETICO','STC','0002',20,50,1,5,1,1,1,1,1,'2020-01-02',NULL,NULL);
/*!40000 ALTER TABLE `articulo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `banco`
--

DROP TABLE IF EXISTS `banco`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `banco` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  `abreviatura` varchar(100) NOT NULL,
  `habilitado` tinyint(4) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `banco`
--

LOCK TABLES `banco` WRITE;
/*!40000 ALTER TABLE `banco` DISABLE KEYS */;
INSERT INTO `banco` VALUES (1,'BANCO NACION','BNA',1),(2,'SANTANDER RIO','STR',1),(3,'BANCO GALICIA','BGA',1),(4,'BANCO FRANCES','BFR',1),(5,'BANCO MACRO','BMC',1);
/*!40000 ALTER TABLE `banco` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `banco-proveedor`
--

DROP TABLE IF EXISTS `banco-proveedor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `banco-proveedor` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `proveedor_id` int(11) NOT NULL,
  `banco_id` int(11) NOT NULL,
  `cbu` float NOT NULL,
  `nro_cuenta` varchar(100) DEFAULT NULL,
  `titular` varchar(100) DEFAULT NULL,
  `cuil` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `banco_proveedor_fk` (`banco_id`),
  KEY `banco_proveedor_fk_1` (`proveedor_id`),
  CONSTRAINT `banco_proveedor_fk` FOREIGN KEY (`banco_id`) REFERENCES `banco` (`id`),
  CONSTRAINT `banco_proveedor_fk_1` FOREIGN KEY (`proveedor_id`) REFERENCES `proveedor` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `banco-proveedor`
--

LOCK TABLES `banco-proveedor` WRITE;
/*!40000 ALTER TABLE `banco-proveedor` DISABLE KEYS */;
/*!40000 ALTER TABLE `banco-proveedor` ENABLE KEYS */;
UNLOCK TABLES;

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
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cliente`
--

LOCK TABLES `cliente` WRITE;
/*!40000 ALTER TABLE `cliente` DISABLE KEYS */;
INSERT INTO `cliente` VALUES (1,'CARLOS ANIBAL','Tejada','37494577',1,'2019-08-22','2019-10-19',NULL),(2,'AARON ADRIEL','RIPERTO','38440761',1,'2019-08-23','2019-10-21',NULL),(3,'Maria ','Perez','25384766',0,'2019-08-22','2019-11-16',NULL),(4,'Juan ','Tejada','23484075',1,'2019-08-23','2019-08-23',NULL),(5,'nose','ni idea','38440761',0,'2019-09-05','2019-09-05','2019-10-28'),(11,'nose','ni idea','38440761',0,'2019-09-06','2019-09-06','2019-10-19'),(12,'Eliminar','ni idea','38440761',0,'2019-09-04','2019-10-18','2019-10-19'),(13,'prueba','ni idea','123',0,'2019-09-08','2019-09-08','2019-10-28'),(15,'PRUEBA','PRUEBA','12365478',0,'2019-10-20','2019-10-20','2019-11-12'),(16,'asd','asdasa','123123123',1,'2019-10-28','2019-10-28',NULL),(17,'qweqwd','asdasd','12231',1,'2019-10-28','2019-10-28',NULL),(18,'asdasdas','asdasd','123123',1,'2019-10-28','2019-10-28',NULL),(19,'asdasdas','EjemploLower','123124',0,'2019-10-27','2019-10-27','2019-10-29'),(20,'asdasdas','ejemplo to uper','123213',0,'2019-10-27','2019-10-27','2019-10-29'),(21,'PRUEBA','ELIMAR','123657894',1,'2019-11-11','2019-11-11',NULL),(22,'MARY EVELYN ','TEJADA','42058886',1,'2019-11-12','2019-12-10',NULL);
/*!40000 ALTER TABLE `cliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `costo`
--

DROP TABLE IF EXISTS `costo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `costo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `valor` double NOT NULL,
  `feacha_hasta` datetime DEFAULT NULL,
  `articulo_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `costo_fk` (`articulo_id`),
  CONSTRAINT `costo_fk` FOREIGN KEY (`articulo_id`) REFERENCES `articulo` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `costo`
--

LOCK TABLES `costo` WRITE;
/*!40000 ALTER TABLE `costo` DISABLE KEYS */;
/*!40000 ALTER TABLE `costo` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `departamento`
--

LOCK TABLES `departamento` WRITE;
/*!40000 ALTER TABLE `departamento` DISABLE KEYS */;
INSERT INTO `departamento` VALUES (1,'CHILECITO','CHI',1,'2019-08-26','2019-12-10',NULL),(2,'FAMATINA','FMT',1,'2019-09-01','2019-10-02',NULL),(3,'CORONEL FELIPE VARELA','FVL',1,'2019-09-01','2019-10-02',NULL),(4,'VINCHINA','VNA',1,'2019-09-29','2019-10-02',NULL),(5,'GENERAL LAMADRID','GLM',1,'2019-09-29','2019-10-02',NULL),(6,'ARAUCO','ARC',1,'2019-09-29','2019-10-02',NULL),(7,'CASTRO BARROS','CTB',1,'2019-09-29','2019-10-02',NULL),(8,'CAPITAL','CPT',1,'2019-09-29','2019-10-02',NULL),(9,'AIMOGASTA','AGT',1,'2019-09-29','2019-09-29',NULL),(10,'GRAL. ANGEL V. PEÑALOZA','AVP',1,'2019-09-30','2019-10-02',NULL),(11,'CHAMICAL','CHM',1,'2019-10-01','2019-10-01',NULL),(12,'GRAL. BELAGRANO','GBN',1,'2019-10-02','2019-10-02',NULL),(13,'GRAL. J. FACUNDO QUIROGA','JFQ',1,'2019-10-02','2019-10-02',NULL),(14,'GRAL. OCAMPO','GOP',1,'2019-10-02','2019-10-02',NULL),(15,'GRAL. SAN MARTIN','GSM',1,'2019-10-02','2019-10-02',NULL),(16,'INDEPENDENCIA','IDP',1,'2019-10-02','2019-10-02',NULL),(17,'ROSARIO VERA PEÑALOZA','RVP',1,'2019-10-02','2019-10-02',NULL),(18,'SAN BLAS DE LOS SAUCES','SBS',1,'2019-10-02','2019-10-02',NULL),(19,'SANAGASTA','SGT',1,'2019-09-30','2019-10-13',NULL),(20,'PRUEBA','PRB',0,'2019-10-08','2019-10-08','2019-10-11'),(21,'prueba2','PR2',0,'2019-10-08','2019-10-08','2019-10-11'),(22,'PRUEBA1','PR1',0,'2019-10-10','2019-10-10','2019-10-11'),(23,'PRUEBA3','PR3',0,'2019-10-10','2019-10-10','2019-10-11'),(24,'AIMOGASTAS','AMG',0,'2019-10-10','2019-10-11','2019-10-12'),(25,'Prueba4','PR4',0,'2019-10-15','2019-10-15','2019-10-16'),(26,'Prueba','PR6',0,'2019-10-15','2019-10-16','2019-10-17'),(27,'Eliminar','ELI',0,'2019-10-18','2019-10-18','2019-10-19'),(28,'','prb',0,'2019-10-20','2019-10-20','2019-10-21');
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
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `distrito`
--

LOCK TABLES `distrito` WRITE;
/*!40000 ALTER TABLE `distrito` DISABLE KEYS */;
INSERT INTO `distrito` VALUES (1,'NONOGASTA','NGS',1,'2019-08-26','2019-11-07',NULL,1),(2,'VICHIGASTA','VGS',1,'2019-08-30','2019-11-07',NULL,1),(3,'GUANDACOL','GNS',1,'2019-08-26','2019-11-07',NULL,3),(4,'CHILECITO','CHI',1,'2019-08-27','2019-12-11',NULL,1),(8,'CAMPANAS','CPN',1,'2019-09-17','2019-11-09',NULL,2),(9,'NUEVO','NVO',0,'2019-10-01','2019-10-13','2019-10-14',16),(10,'PRUEBA','PRB',0,'2019-10-02','2019-10-13','2019-10-14',1),(11,'SAÑOGASTA','SÑG',1,'2019-10-06','2019-10-06',NULL,1),(12,'MIRANDA','MRD',1,'2019-10-06','2019-10-14',NULL,1),(13,'GUANDACOL','GCL',0,'2019-10-11','2019-10-11','2019-10-16',3),(14,'TILIMUQUI','TLM',1,'2019-10-13','2019-10-13',NULL,1),(15,'ALTO CARRIZAL','ACL',1,'2019-10-12','2019-10-14',NULL,2),(16,'PAGANCILLO','PGL',1,'2019-10-13','2019-10-13',NULL,3),(17,'SAN MIGUEL','SMG',1,'2019-10-13','2019-10-13',NULL,1),(18,'MALLIGASTA','MLG',1,'2019-10-13','2019-10-13',NULL,1),(19,'GUANCHIN','GCN',1,'2019-10-13','2019-10-13',NULL,1),(20,'SANTA FLORENTINA','SFT',1,'2019-10-13','2019-10-13',NULL,1),(21,'SAN NICOLAS','SNL',1,'2019-10-13','2019-10-13',NULL,1),(22,'SANTA CRUZ','SNC',1,'2019-10-12','2019-12-10',NULL,2),(23,'PRUEBA-ELIMINAR','PRE',0,'2019-10-11','2019-10-13','2019-10-14',1),(24,'PRUEBA1','PR1',0,'2019-10-15','2019-10-15','2019-10-16',8),(25,'prueba','oiuy',0,'2019-10-16','2019-10-16','2019-10-17',2),(26,'COLONIAS DE MALLIGASTA','CML',0,'2019-11-04','2019-11-05','2019-11-06',1),(27,'POTRERILLO','PTL',0,'2019-11-05','2019-11-06','2019-11-09',2);
/*!40000 ALTER TABLE `distrito` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `forma_pago`
--

DROP TABLE IF EXISTS `forma_pago`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `forma_pago` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `aumento` double NOT NULL,
  `descripcion` varchar(100) DEFAULT NULL,
  `nombre` varchar(100) NOT NULL,
  `habilitacion` tinyint(4) NOT NULL DEFAULT '1',
  `fecha_creacion` date DEFAULT NULL,
  `fecha_modificacion` date DEFAULT NULL,
  `fecha_baja` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `IX_nombre` (`nombre`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `forma_pago`
--

LOCK TABLES `forma_pago` WRITE;
/*!40000 ALTER TABLE `forma_pago` DISABLE KEYS */;
INSERT INTO `forma_pago` VALUES (1,12.5,'ALGUNA DESCRIPCION','TARJETA DE CREDITO',1,NULL,NULL,NULL),(3,0,'DESCRIPCION','EFECTIVO',0,NULL,NULL,'2019-12-26'),(4,0,'SE ABONARA EL TOTAL EN EFECTIVO','CONTADO',1,NULL,NULL,NULL),(5,0,'SOLO CLIENTES CON AÑOS DE TRAYECTORIA CON EL MERCADO','CUENTAS CORRIENTES',1,'2019-12-26',NULL,NULL),(6,0,'NO MAS DE 30 DIAS HABILES Y SELLADOS.','CHEQUES',1,'2019-12-26','2019-12-26',NULL),(7,0,'PASAJE DE CUENTAS BANCARIAS','TARJETA DE DEBITO',1,'2019-12-27',NULL,NULL);
/*!40000 ALTER TABLE `forma_pago` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `marca`
--

DROP TABLE IF EXISTS `marca`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `marca` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  `abreviatura` varchar(100) NOT NULL,
  `habilitacion` tinyint(4) DEFAULT '1',
  `fecha_creacion` date DEFAULT NULL,
  `fecha_modificacion` date DEFAULT NULL,
  `fecha_baja` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `IX_nombre` (`nombre`),
  UNIQUE KEY `IX_abreviatura` (`abreviatura`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `marca`
--

LOCK TABLES `marca` WRITE;
/*!40000 ALTER TABLE `marca` DISABLE KEYS */;
INSERT INTO `marca` VALUES (1,'LOMA NEGRA','LMN',1,NULL,NULL,NULL),(2,'HOLCING','HLC',1,NULL,NULL,NULL),(4,'FERRUM','FRM',1,NULL,NULL,NULL),(5,'PRUEBA','PRB',0,NULL,NULL,'2019-12-26'),(8,'NUEVA NARCA','NVM',1,NULL,NULL,NULL),(9,'FV GRIFERIAS','FV',0,NULL,NULL,NULL),(10,'TESTING1','TST1',0,'2019-12-26',NULL,'2019-12-26'),(11,'TESTING','TS1',1,'2019-12-26','2019-12-26',NULL),(12,'ALGUNA MARCA DE PRUEBNA','ASDASD',1,'2019-12-26',NULL,NULL);
/*!40000 ALTER TABLE `marca` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `movimiento-articulo`
--

DROP TABLE IF EXISTS `movimiento-articulo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `movimiento-articulo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fecha` datetime NOT NULL,
  `movimiento` int(11) NOT NULL,
  `articulo_id` int(11) NOT NULL,
  `ajuste_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `movimiento_articulo_fk` (`ajuste_id`),
  KEY `movimiento_articulo_fk_1` (`articulo_id`),
  CONSTRAINT `movimiento_articulo_fk` FOREIGN KEY (`ajuste_id`) REFERENCES `ajustes` (`id`),
  CONSTRAINT `movimiento_articulo_fk_1` FOREIGN KEY (`articulo_id`) REFERENCES `articulo` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movimiento-articulo`
--

LOCK TABLES `movimiento-articulo` WRITE;
/*!40000 ALTER TABLE `movimiento-articulo` DISABLE KEYS */;
/*!40000 ALTER TABLE `movimiento-articulo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pantalla`
--

DROP TABLE IF EXISTS `pantalla`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pantalla` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `permiso_id` int(11) DEFAULT NULL,
  `rol_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `pantalla_fk` (`permiso_id`),
  KEY `pantalla_fk_1` (`rol_id`),
  CONSTRAINT `pantalla_fk` FOREIGN KEY (`permiso_id`) REFERENCES `permiso` (`id`),
  CONSTRAINT `pantalla_fk_1` FOREIGN KEY (`rol_id`) REFERENCES `rol` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pantalla`
--

LOCK TABLES `pantalla` WRITE;
/*!40000 ALTER TABLE `pantalla` DISABLE KEYS */;
/*!40000 ALTER TABLE `pantalla` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `permiso`
--

DROP TABLE IF EXISTS `permiso`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `permiso` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(254) DEFAULT NULL,
  `url` varchar(254) DEFAULT NULL,
  `descripcion` varchar(254) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permiso`
--

LOCK TABLES `permiso` WRITE;
/*!40000 ALTER TABLE `permiso` DISABLE KEYS */;
/*!40000 ALTER TABLE `permiso` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `precio`
--

DROP TABLE IF EXISTS `precio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `precio` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `valor` float NOT NULL,
  `feacha_hasta` datetime DEFAULT NULL,
  `articulo_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `precio_fk` (`articulo_id`),
  CONSTRAINT `precio_fk` FOREIGN KEY (`articulo_id`) REFERENCES `articulo` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `precio`
--

LOCK TABLES `precio` WRITE;
/*!40000 ALTER TABLE `precio` DISABLE KEYS */;
/*!40000 ALTER TABLE `precio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `proveedor`
--

DROP TABLE IF EXISTS `proveedor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `proveedor` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `razon_social` varchar(100) NOT NULL,
  `domicilio` varchar(100) NOT NULL,
  `mail` varchar(100) NOT NULL,
  `celular` varchar(100) DEFAULT NULL,
  `telefono` varchar(100) DEFAULT NULL,
  `habilitado` tinyint(4) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `IX_razonsocial` (`razon_social`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `proveedor`
--

LOCK TABLES `proveedor` WRITE;
/*!40000 ALTER TABLE `proveedor` DISABLE KEYS */;
INSERT INTO `proveedor` VALUES (1,'prueba','publica','@gmail','123654','422671',1),(2,'ferrum','cordoba','ferrum@hotmail.com','+5493825411479','+5493825422671',1);
/*!40000 ALTER TABLE `proveedor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rol`
--

DROP TABLE IF EXISTS `rol`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rol` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) DEFAULT NULL,
  `descripcion` varchar(100) DEFAULT NULL,
  `fecha_creacion` datetime DEFAULT NULL,
  `fecha_modificacion` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `IX_nombre` (`nombre`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rol`
--

LOCK TABLES `rol` WRITE;
/*!40000 ALTER TABLE `rol` DISABLE KEYS */;
INSERT INTO `rol` VALUES (1,'ADMIN',NULL,NULL,NULL),(2,'VENDEDOR',NULL,NULL,NULL),(3,'GERENTE',NULL,NULL,NULL),(4,'TESTER',NULL,NULL,NULL);
/*!40000 ALTER TABLE `rol` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rubro`
--

DROP TABLE IF EXISTS `rubro`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rubro` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  `descripcion` varchar(254) DEFAULT NULL,
  `habilitacion` tinyint(4) DEFAULT NULL,
  `fecha_creacion` date DEFAULT NULL,
  `fecha_modificacion` date DEFAULT NULL,
  `fecha_baja` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `IX_nombre` (`nombre`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rubro`
--

LOCK TABLES `rubro` WRITE;
/*!40000 ALTER TABLE `rubro` DISABLE KEYS */;
INSERT INTO `rubro` VALUES (1,'PINTURAS','',1,'2019-12-27','2019-12-28','2019-12-27'),(2,'HERRAMIENTAS','EN GENERAL',1,'2019-12-27','2019-12-28',NULL),(3,'PLOMERIA','PLOMERO',1,'2019-12-27','2019-12-27',NULL),(4,'ELECTRICIDAD','220 Y 360 V',1,'2019-12-27','2019-12-27',NULL),(5,'HERRERIA','SOLDADURA',1,'2019-12-28','2019-12-28',NULL),(6,'CONTRUCCION','MATERIALES',0,'2019-12-28',NULL,NULL);
/*!40000 ALTER TABLE `rubro` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sub_rubro`
--

DROP TABLE IF EXISTS `sub_rubro`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sub_rubro` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  `descripcion` varchar(255) DEFAULT NULL,
  `habilitacion` tinyint(4) DEFAULT NULL,
  `fecha_creacion` date DEFAULT NULL,
  `fecha_modificacion` date DEFAULT NULL,
  `fecha_baja` date DEFAULT NULL,
  `rubro_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `IX_nombre` (`nombre`),
  KEY `sub_rubro_fk` (`rubro_id`),
  CONSTRAINT `sub_rubro_fk` FOREIGN KEY (`rubro_id`) REFERENCES `rubro` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sub_rubro`
--

LOCK TABLES `sub_rubro` WRITE;
/*!40000 ALTER TABLE `sub_rubro` DISABLE KEYS */;
INSERT INTO `sub_rubro` VALUES (1,'Electricidad','electricidad',1,NULL,'2019-12-28',NULL,2),(2,'Electricida ','asdasdasd',0,'2019-12-28','2019-12-28','2019-12-28',2),(3,'PVC','INSTALACIONES CLOACALES',1,'2019-12-28',NULL,NULL,3),(5,'SOLDADURA','SOLDADURA EN GENERAL',1,'2019-12-28',NULL,'2019-12-28',5);
/*!40000 ALTER TABLE `sub_rubro` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipo_permiso`
--

DROP TABLE IF EXISTS `tipo_permiso`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tipo_permiso` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) DEFAULT NULL,
  `descripcion` varchar(100) DEFAULT NULL,
  `permiso_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `IX_nombre` (`nombre`),
  KEY `tipo_permiso_fk` (`permiso_id`),
  CONSTRAINT `tipo_permiso_fk` FOREIGN KEY (`permiso_id`) REFERENCES `permiso` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipo_permiso`
--

LOCK TABLES `tipo_permiso` WRITE;
/*!40000 ALTER TABLE `tipo_permiso` DISABLE KEYS */;
/*!40000 ALTER TABLE `tipo_permiso` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipodireccion`
--

LOCK TABLES `tipodireccion` WRITE;
/*!40000 ALTER TABLE `tipodireccion` DISABLE KEYS */;
INSERT INTO `tipodireccion` VALUES (1,'Facturacion','FCT',1,'2019-09-01','2019-09-01',NULL),(2,'Descarga','DCG',1,'2019-09-01','2019-09-01',NULL),(3,'PRUEBA','PRB',0,'2019-10-18','2019-10-18','2019-10-20'),(4,'ENTREGA','ENT',1,'2019-10-20','2019-10-20',NULL);
/*!40000 ALTER TABLE `tipodireccion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `unidad_medida`
--

DROP TABLE IF EXISTS `unidad_medida`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `unidad_medida` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  `abreviatura` varchar(100) NOT NULL,
  `habilitacion` tinyint(4) NOT NULL DEFAULT '1',
  `fecha_creacion` date DEFAULT NULL,
  `fecha_modificacion` date DEFAULT NULL,
  `fecha_eliminacion` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `IX_nombre` (`nombre`),
  UNIQUE KEY `IX_abreviatura` (`abreviatura`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `unidad_medida`
--

LOCK TABLES `unidad_medida` WRITE;
/*!40000 ALTER TABLE `unidad_medida` DISABLE KEYS */;
INSERT INTO `unidad_medida` VALUES (1,'METROS','MTS',0,'2019-12-26','2019-12-26','2019-12-26'),(2,'MILIMETROS','MM',1,'2019-12-26','2019-12-26',NULL),(3,'KILOGRAMOS','KGS',1,'2019-12-26',NULL,NULL),(4,'GRAMOS','GRS',1,'2019-12-26','2019-12-26',NULL),(5,'LITROS','LTS',1,'2020-01-02',NULL,NULL);
/*!40000 ALTER TABLE `unidad_medida` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'jorgedat','$2a$10$teFSd0amHVXyso.RB8b9xuyEA8fesoVloBftDvmMaMkgyl6197ABa'),(2,'admin','$2a$10$7pu/ck0H5dToDAB3Wif07eWDLjvZK2gWDFGzG7UnMzy4uc4orrpXm');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuario`
--

DROP TABLE IF EXISTS `usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usuario` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `habilitacion` tinyint(4) NOT NULL,
  `fecha_creacion` datetime DEFAULT NULL,
  `fecha_modificacion` datetime DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `nombre_usuario` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `IX_nombre_usuario` (`nombre_usuario`),
  UNIQUE KEY `IX_email` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario`
--

LOCK TABLES `usuario` WRITE;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuario_rol`
--

DROP TABLE IF EXISTS `usuario_rol`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usuario_rol` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `usuario_id` int(11) NOT NULL,
  `rol_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `usuario_rol_fk` (`usuario_id`),
  KEY `usuario_rol_fk_1` (`rol_id`),
  CONSTRAINT `usuario_rol_fk` FOREIGN KEY (`usuario_id`) REFERENCES `usuario` (`id`),
  CONSTRAINT `usuario_rol_fk_1` FOREIGN KEY (`rol_id`) REFERENCES `rol` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario_rol`
--

LOCK TABLES `usuario_rol` WRITE;
/*!40000 ALTER TABLE `usuario_rol` DISABLE KEYS */;
/*!40000 ALTER TABLE `usuario_rol` ENABLE KEYS */;
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

-- Dump completed on 2020-01-02 19:57:12
