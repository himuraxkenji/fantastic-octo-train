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
-- Table structure for table `ajustes`
--

DROP TABLE IF EXISTS `ajustes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ajustes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(1000) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `fecha` date NOT NULL,
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
  CONSTRAINT `articulo_fk` FOREIGN KEY (`proveedor_id`) REFERENCES `proveedor` (`id`),
  CONSTRAINT `articulo_fk_1` FOREIGN KEY (`unidad_medida_id`) REFERENCES `unidad_medida` (`id`),
  CONSTRAINT `articulo_fk_3` FOREIGN KEY (`rubro_id`) REFERENCES `rubro` (`id`),
  CONSTRAINT `articulo_fk_4` FOREIGN KEY (`marca_id`) REFERENCES `marca` (`id`),
  CONSTRAINT `articulo_fk_5` FOREIGN KEY (`sub_rubro_id`) REFERENCES `sub_rubro` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `articulo`
--

LOCK TABLES `articulo` WRITE;
/*!40000 ALTER TABLE `articulo` DISABLE KEYS */;
INSERT INTO `articulo` VALUES (3,'Blocked','BLC','00001',21,100,1,3,10,3,5,0,'2020-02-01','2020-01-11','2020-01-05'),(4,'Testgs','aasdasd','asdqw1231',123,1234,1,1,1,1,1,0,'2020-01-02',NULL,'2020-01-05'),(8,'Testgs','aasdasd','asdawwww',123,1234,1,1,1,1,1,1,'2020-01-02',NULL,NULL),(9,'Testing2','test2','ssssss',123,1234,1,1,1,1,1,1,'2020-01-02',NULL,NULL),(10,'Testing3','test2','ssas',123,1234,1,1,1,1,1,1,'2020-01-02',NULL,NULL),(11,'Testing4','test2','asdaaa',123,1234,2,1,1,1,1,1,'2020-01-02',NULL,NULL),(12,'LATEX','LTX','0001',20,50,1,5,1,1,1,1,'2020-01-02',NULL,NULL),(13,'SINTETICO','STC','0002',20,50,1,5,1,1,1,1,'2020-01-02',NULL,NULL),(14,'TORILLOS','TOR','10001',50,10000,1,2,1,7,1,1,'2020-01-05',NULL,NULL),(16,'ALGUNNOMBRE','ALGUNABR','ALGUNCODIGO',100,120,2,2,4,2,1,1,'2020-01-05',NULL,NULL),(27,'ELECTRODOS','ELEC','10002',10,100,5,2,15,5,1,1,'2020-01-05',NULL,NULL),(28,'ELECTRODOS','ELT','10004',10,100,5,2,15,5,1,1,'2020-01-05',NULL,NULL),(29,'ELECTRODO FUSION','ELTF','10005',10,100,5,3,15,5,1,1,'2020-01-05',NULL,NULL),(30,'SAJDLKASJDLK','SAKLDJAKLSJDLK','SJFKÑLSAJDLKDA',100,1220,5,3,15,1,1,0,'2020-01-05',NULL,'2020-05-05'),(33,'HIERRO 12','H12','00012',100,1000,1,2,15,1,5,1,'2020-01-08',NULL,NULL),(37,'HERRADURAS','HDR','1002',20,100,5,2,15,5,7,1,'2020-01-11',NULL,NULL),(38,'ELECTRODO 2MM','ELT','100000',1,100,5,2,15,5,7,1,'2020-02-03',NULL,NULL),(39,'ELECTRODO 2,5 MM','ELT','100001',1,100,5,2,15,5,7,1,'2020-02-03',NULL,NULL),(40,'HIERRO','HA','6789',10,100,7,2,16,5,8,1,'2020-02-05',NULL,NULL),(41,'ASDASD','AS','123',100,102,2,2,2,3,NULL,1,'2020-02-05',NULL,NULL),(44,'JKBDSJKVV','DSV','0001154',10,120,5,4,15,5,7,1,'2020-02-05',NULL,NULL),(45,'GARLOPA','GRLP','001',1,10,7,8,17,7,9,1,'2020-02-10',NULL,NULL),(46,'PNTURA','PNT','1000001',10,100,3,5,8,1,NULL,1,'2020-05-05',NULL,NULL);
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
-- Table structure for table `cheque`
--

DROP TABLE IF EXISTS `cheque`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cheque` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `titular_emisor` varchar(100) NOT NULL,
  `importe` double NOT NULL,
  `serie` varchar(100) NOT NULL,
  `fecha_cheque` date NOT NULL,
  `fecha_cobro` date NOT NULL,
  `fecha_deposito` date NOT NULL,
  `tipo_cheque_id` int(11) NOT NULL,
  `pago_cheque_id` int(11) NOT NULL,
  `banco_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `cheque_fk` (`banco_id`),
  KEY `cheque_fk_1` (`pago_cheque_id`),
  KEY `cheque_fk_2` (`tipo_cheque_id`),
  CONSTRAINT `cheque_fk` FOREIGN KEY (`banco_id`) REFERENCES `banco` (`id`),
  CONSTRAINT `cheque_fk_1` FOREIGN KEY (`pago_cheque_id`) REFERENCES `pago_cheque` (`id`),
  CONSTRAINT `cheque_fk_2` FOREIGN KEY (`tipo_cheque_id`) REFERENCES `tipo_cheque` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='\r\n';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cheque`
--

LOCK TABLES `cheque` WRITE;
/*!40000 ALTER TABLE `cheque` DISABLE KEYS */;
/*!40000 ALTER TABLE `cheque` ENABLE KEYS */;
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
INSERT INTO `cliente` VALUES (1,'CARLOS ANIBAL','Tejada','37494577',1,'2019-08-21','2020-06-06',NULL),(2,'AARON ADRIEL','RIPERTO','38440761',1,'2019-08-23','2019-10-21',NULL),(3,'Maria ','Perez','25384766',0,'2019-08-22','2019-11-16',NULL),(4,'Juan ','Tejada','23484075',1,'2019-08-23','2019-08-23',NULL),(5,'nose','ni idea','38440761',0,'2019-09-05','2019-09-05','2019-10-28'),(11,'nose','ni idea','38440761',0,'2019-09-06','2019-09-06','2019-10-19'),(12,'Eliminar','ni idea','38440761',0,'2019-09-04','2019-10-18','2019-10-19'),(13,'prueba','ni idea','123',0,'2019-09-08','2019-09-08','2019-10-28'),(15,'PRUEBA','PRUEBA','12365478',0,'2019-10-20','2019-10-20','2019-11-12'),(16,'asd','asdasa','123123123',1,'2019-10-28','2019-10-28',NULL),(17,'qweqwd','asdasd','12231',1,'2019-10-28','2019-10-28',NULL),(18,'asdasdas','asdasd','123123',1,'2019-10-28','2019-10-28',NULL),(19,'asdasdas','EjemploLower','123124',0,'2019-10-27','2019-10-27','2019-10-29'),(20,'asdasdas','ejemplo to uper','123213',0,'2019-10-27','2019-10-27','2019-10-29'),(21,'PRUEBA','ELIMAR','123657894',1,'2019-11-11','2019-11-11',NULL),(22,'MARY EVELYN ','TEJADA','42058886',1,'2019-11-12','2019-12-10',NULL);
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
-- Table structure for table `cuenta_corriente`
--

DROP TABLE IF EXISTS `cuenta_corriente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cuenta_corriente` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cliente_id` int(11) NOT NULL,
  `fecha_apertura` date NOT NULL,
  `monto_limite` double DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cuenta_corriente_fk` (`cliente_id`),
  CONSTRAINT `cuenta_corriente_fk` FOREIGN KEY (`cliente_id`) REFERENCES `cliente` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cuenta_corriente`
--

LOCK TABLES `cuenta_corriente` WRITE;
/*!40000 ALTER TABLE `cuenta_corriente` DISABLE KEYS */;
/*!40000 ALTER TABLE `cuenta_corriente` ENABLE KEYS */;
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
-- Table structure for table `detalle_factura`
--

DROP TABLE IF EXISTS `detalle_factura`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `detalle_factura` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `articulo_id` int(11) NOT NULL,
  `factura_id` int(11) NOT NULL,
  `cantidad` double NOT NULL,
  PRIMARY KEY (`id`),
  KEY `detalle_factura_fk_1` (`factura_id`),
  CONSTRAINT `detalle_factura_fk` FOREIGN KEY (`factura_id`) REFERENCES `factura` (`id`),
  CONSTRAINT `detalle_factura_fk_1` FOREIGN KEY (`factura_id`) REFERENCES `articulo` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detalle_factura`
--

LOCK TABLES `detalle_factura` WRITE;
/*!40000 ALTER TABLE `detalle_factura` DISABLE KEYS */;
/*!40000 ALTER TABLE `detalle_factura` ENABLE KEYS */;
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
  `habilitado` tinyint(1) NOT NULL DEFAULT '1',
  `fechaalta` date NOT NULL,
  `fechaactualizacion` date NOT NULL,
  `fechabaja` date DEFAULT NULL,
  `id_ubicacion` int(11) DEFAULT NULL,
  `fkclientesid` int(11) DEFAULT NULL,
  `fkdistritosid` int(11) DEFAULT NULL,
  `fktipodireccionesid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IX_calle` (`calle`),
  KEY `IX_barrio` (`barrio`),
  KEY `fkclientesid` (`fkclientesid`),
  KEY `fkdistritosid` (`fkdistritosid`),
  KEY `fktipodireccionesid` (`fktipodireccionesid`),
  KEY `direccion_fk` (`id_ubicacion`),
  CONSTRAINT `direccion_fk` FOREIGN KEY (`id_ubicacion`) REFERENCES `ubicacion` (`id`),
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
INSERT INTO `direccion` VALUES (1,'San Buenaventura','S/N','La Plaza',NULL,NULL,1,'2019-09-01','2019-09-01',NULL,NULL,4,2,1),(2,'Juan XXIII','973','Parque','Manuel Belgrano/Sixto Guevarra','30 mts antes del canal mano izquierda sentido este-oeste',1,'2019-09-01','2019-09-01',NULL,NULL,1,4,1),(3,'SN','SN','Los altos',NULL,NULL,1,'2019-09-08','2019-09-08',NULL,NULL,NULL,NULL,NULL),(4,'SN','SN','Los altos',NULL,NULL,1,'2019-09-08','2019-09-08',NULL,NULL,11,NULL,NULL),(5,'SN','SN','Los altos',NULL,NULL,1,'2019-09-08','2019-09-08',NULL,NULL,12,4,NULL),(6,'SN','112','barrio 1',NULL,NULL,1,'2019-09-09','2019-09-09',NULL,NULL,13,2,NULL);
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
-- Table structure for table `efectivo`
--

DROP TABLE IF EXISTS `efectivo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `efectivo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `monto` double NOT NULL,
  `pago_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `efectivo_fk` (`pago_id`),
  CONSTRAINT `efectivo_fk` FOREIGN KEY (`pago_id`) REFERENCES `pago` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `efectivo`
--

LOCK TABLES `efectivo` WRITE;
/*!40000 ALTER TABLE `efectivo` DISABLE KEYS */;
/*!40000 ALTER TABLE `efectivo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `endoso`
--

DROP TABLE IF EXISTS `endoso`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `endoso` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fecha_endoso` date NOT NULL,
  `cheque_id` int(11) NOT NULL,
  `proveedor_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `endoso_fk` (`cheque_id`),
  KEY `endoso_fk_1` (`proveedor_id`),
  CONSTRAINT `endoso_fk` FOREIGN KEY (`cheque_id`) REFERENCES `cheque` (`id`),
  CONSTRAINT `endoso_fk_1` FOREIGN KEY (`proveedor_id`) REFERENCES `proveedor` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `endoso`
--

LOCK TABLES `endoso` WRITE;
/*!40000 ALTER TABLE `endoso` DISABLE KEYS */;
/*!40000 ALTER TABLE `endoso` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `factura`
--

DROP TABLE IF EXISTS `factura`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `factura` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cliente_id` int(11) NOT NULL,
  `fecha` date NOT NULL,
  `monto` double NOT NULL,
  `descuento` double NOT NULL,
  `total` double NOT NULL,
  `abonado` double NOT NULL,
  `saldo` double NOT NULL,
  PRIMARY KEY (`id`),
  KEY `factura_fk` (`cliente_id`),
  CONSTRAINT `factura_fk` FOREIGN KEY (`cliente_id`) REFERENCES `cliente` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `factura`
--

LOCK TABLES `factura` WRITE;
/*!40000 ALTER TABLE `factura` DISABLE KEYS */;
/*!40000 ALTER TABLE `factura` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `marca`
--

LOCK TABLES `marca` WRITE;
/*!40000 ALTER TABLE `marca` DISABLE KEYS */;
INSERT INTO `marca` VALUES (1,'LOMA NEGRA','LMN',1,NULL,NULL,NULL),(2,'HOLCING','HLC',1,NULL,NULL,NULL),(4,'FERRUM','FRM',1,NULL,NULL,NULL),(5,'PRUEBA','PRB',0,NULL,NULL,'2019-12-26'),(8,'NUEVA NARCA','NVM',1,NULL,NULL,NULL),(9,'FV GRIFERIAS','FV',0,NULL,NULL,NULL),(10,'TESTING1','TST1',0,'2019-12-26',NULL,'2019-12-26'),(11,'TESTING','TS1',1,'2019-12-26','2019-12-26',NULL),(12,'ALGUNA MARCA DE PRUEBNA','ASDASD',1,'2019-12-26',NULL,NULL),(13,'SAN AGUSTIN','SAG',1,'2020-01-05',NULL,NULL),(14,' ',' ',1,NULL,NULL,NULL),(15,'CONARCO','CON',1,'2020-01-05',NULL,NULL),(16,'METAL PLUS','MTP',1,'2020-02-05',NULL,NULL),(17,'SAN JOIRGE','MUEBLES',1,'2020-02-10',NULL,NULL);
/*!40000 ALTER TABLE `marca` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `movimiento_articulo`
--

DROP TABLE IF EXISTS `movimiento_articulo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `movimiento_articulo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fecha` varchar(254) NOT NULL,
  `movimiento` int(11) NOT NULL,
  `articulo_id` int(11) NOT NULL,
  `ajuste_id` int(11) DEFAULT NULL,
  `pedido_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `movimiento_articulo_fk` (`ajuste_id`),
  KEY `movimiento_articulo_fk_1` (`articulo_id`),
  KEY `movimiento_articulo_fk_2` (`pedido_id`),
  CONSTRAINT `movimiento_articulo_fk` FOREIGN KEY (`ajuste_id`) REFERENCES `ajustes` (`id`),
  CONSTRAINT `movimiento_articulo_fk_1` FOREIGN KEY (`articulo_id`) REFERENCES `articulo` (`id`),
  CONSTRAINT `movimiento_articulo_fk_2` FOREIGN KEY (`pedido_id`) REFERENCES `pedido` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movimiento_articulo`
--

LOCK TABLES `movimiento_articulo` WRITE;
/*!40000 ALTER TABLE `movimiento_articulo` DISABLE KEYS */;
INSERT INTO `movimiento_articulo` VALUES (1,'2020-02-10 17:31:06',100,8,NULL,1),(2,'2020-02-11 17:31:32',100,9,NULL,2),(3,'2020-02-11 17:32:16',100,11,NULL,3),(4,'2020-02-11 17:33:13',100,9,NULL,4),(5,'2020-02-11 17:34:28',500,12,NULL,5),(6,'2020-02-11 17:34:28',50,11,NULL,5),(7,'2020-02-18 19:12:16',100,10,NULL,6),(8,'2020-02-18 19:14:06',100,29,NULL,7),(9,'2020-02-18 19:21:03',100,9,NULL,8),(10,'2020-02-18 19:21:03',-12,8,NULL,8),(11,'2020-02-18 19:23:13',-12,8,NULL,9),(12,'2020-02-15 16:41:17',200,8,NULL,10),(13,'2020-02-15 16:41:17',24,10,NULL,10),(14,'2020-03-06 19:56:41',25,45,NULL,11),(15,'2020-03-07 11:30:16',100,29,NULL,12),(16,'2020-03-07 11:30:16',100,27,NULL,12),(17,'2020-03-07 12:15:38',100,27,NULL,13),(18,'2020-03-07 12:15:38',100,28,NULL,13),(19,'2020-03-09 15:07:27',100,29,NULL,14),(20,'2020-03-09 15:07:27',100,39,NULL,14),(21,'2020-03-10 20:52:10',100,29,NULL,15),(22,'2020-03-10 20:52:10',100,39,NULL,15),(23,'2020-03-12 10:49:46',200,39,NULL,16),(24,'2020-03-12 10:49:46',200,29,NULL,16),(25,'2020-03-12 10:55:22',100,37,NULL,17),(26,'2020-05-12 19:39:24',100,38,NULL,18),(27,'2020-05-12 19:39:24',100,27,NULL,18),(28,'2020-05-22 19:39:55',100,11,NULL,19),(29,'2020-05-22 19:39:55',200,16,NULL,19),(30,'2020-06-06 17:18:17',100,27,NULL,20),(31,'2020-06-06 17:18:17',100,44,NULL,20),(32,'2020-06-06 17:19:35',100,44,NULL,21),(33,'2020-06-06 17:19:35',100,27,NULL,21);
/*!40000 ALTER TABLE `movimiento_articulo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pago`
--

DROP TABLE IF EXISTS `pago`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pago` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `monto` double NOT NULL,
  `pago_fecha` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='		';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pago`
--

LOCK TABLES `pago` WRITE;
/*!40000 ALTER TABLE `pago` DISABLE KEYS */;
/*!40000 ALTER TABLE `pago` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pago_cheque`
--

DROP TABLE IF EXISTS `pago_cheque`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pago_cheque` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `monto` double NOT NULL,
  `pago_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `pago_cheque_fk` (`pago_id`),
  CONSTRAINT `pago_cheque_fk` FOREIGN KEY (`pago_id`) REFERENCES `pago` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pago_cheque`
--

LOCK TABLES `pago_cheque` WRITE;
/*!40000 ALTER TABLE `pago_cheque` DISABLE KEYS */;
/*!40000 ALTER TABLE `pago_cheque` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pago_cuenta_corriente`
--

DROP TABLE IF EXISTS `pago_cuenta_corriente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pago_cuenta_corriente` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pago_id` int(11) NOT NULL,
  `cuenta_corriente_id` int(11) NOT NULL,
  `monto` double NOT NULL,
  PRIMARY KEY (`id`),
  KEY `pago_cuenta_corriente_fk` (`pago_id`),
  KEY `pago_cuenta_corriente_fk_1` (`cuenta_corriente_id`),
  CONSTRAINT `pago_cuenta_corriente_fk` FOREIGN KEY (`pago_id`) REFERENCES `pago` (`id`),
  CONSTRAINT `pago_cuenta_corriente_fk_1` FOREIGN KEY (`cuenta_corriente_id`) REFERENCES `cuenta_corriente` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pago_cuenta_corriente`
--

LOCK TABLES `pago_cuenta_corriente` WRITE;
/*!40000 ALTER TABLE `pago_cuenta_corriente` DISABLE KEYS */;
/*!40000 ALTER TABLE `pago_cuenta_corriente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pago_factura`
--

DROP TABLE IF EXISTS `pago_factura`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pago_factura` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pago_id` int(11) NOT NULL,
  `factura_id` int(11) NOT NULL,
  `monto` double NOT NULL,
  PRIMARY KEY (`id`),
  KEY `pago_factura_fk` (`pago_id`),
  KEY `pago_factura_fk_1` (`factura_id`),
  CONSTRAINT `pago_factura_fk` FOREIGN KEY (`pago_id`) REFERENCES `pago` (`id`),
  CONSTRAINT `pago_factura_fk_1` FOREIGN KEY (`factura_id`) REFERENCES `factura` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pago_factura`
--

LOCK TABLES `pago_factura` WRITE;
/*!40000 ALTER TABLE `pago_factura` DISABLE KEYS */;
/*!40000 ALTER TABLE `pago_factura` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pago_real`
--

DROP TABLE IF EXISTS `pago_real`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pago_real` (
  `pago_real_id` int(11) NOT NULL,
  `pago_cuenta_corriente_id` int(11) NOT NULL,
  PRIMARY KEY (`pago_real_id`,`pago_cuenta_corriente_id`),
  KEY `pago_real_fk_1` (`pago_cuenta_corriente_id`),
  CONSTRAINT `pago_real_fk` FOREIGN KEY (`pago_real_id`) REFERENCES `pago` (`id`),
  CONSTRAINT `pago_real_fk_1` FOREIGN KEY (`pago_cuenta_corriente_id`) REFERENCES `pago_cuenta_corriente` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pago_real`
--

LOCK TABLES `pago_real` WRITE;
/*!40000 ALTER TABLE `pago_real` DISABLE KEYS */;
/*!40000 ALTER TABLE `pago_real` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pago_tarjeta`
--

DROP TABLE IF EXISTS `pago_tarjeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pago_tarjeta` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pago_id` int(11) NOT NULL,
  `tarjeta_id` int(11) NOT NULL,
  `monto` double NOT NULL,
  PRIMARY KEY (`id`),
  KEY `pago_tarjeta_fk` (`pago_id`),
  KEY `pago_tarjeta_fk_1` (`tarjeta_id`),
  CONSTRAINT `pago_tarjeta_fk` FOREIGN KEY (`pago_id`) REFERENCES `pago` (`id`),
  CONSTRAINT `pago_tarjeta_fk_1` FOREIGN KEY (`tarjeta_id`) REFERENCES `tarjeta` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pago_tarjeta`
--

LOCK TABLES `pago_tarjeta` WRITE;
/*!40000 ALTER TABLE `pago_tarjeta` DISABLE KEYS */;
/*!40000 ALTER TABLE `pago_tarjeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pedido`
--

DROP TABLE IF EXISTS `pedido`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pedido` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fecha` varchar(254) DEFAULT NULL,
  `nombre` varchar(254) DEFAULT NULL,
  `descripcion` varchar(254) DEFAULT NULL,
  `habilitacion` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pedido`
--

LOCK TABLES `pedido` WRITE;
/*!40000 ALTER TABLE `pedido` DISABLE KEYS */;
INSERT INTO `pedido` VALUES (1,'2020-02-10 17:31:05','PEDIDO1','PRUEBA',1),(2,'2020-02-11 17:31:31','PEDIDO2','PRUEBA',1),(3,'2020-02-11 17:32:14','PEDIDO3','PRUEBA',1),(4,'2020-02-11 17:33:11','PEDIDO4','PRUEBA',1),(5,'2020-02-11 17:34:27','PEDIDO5','PRUEBA',1),(6,'2020-02-18 19:12:16','PRUEBA FILTRO','2',1),(7,'2020-02-18 19:14:05','FILTRO TODOS','1',1),(8,'2020-02-18 19:21:03','PRUEBA NUMEROS NEGATIVOS','KJHFVA',1),(9,'2020-02-18 19:23:06','PRUEBA NUMEROS ','PKDQP',1),(10,'2020-02-15 16:41:17','LECONS TERMUFUSION','ENVIO DE PEDIDO POR CHILECITEÑO SA',1),(11,'2020-03-06 19:56:40','JUARES','TESTING ARTICULO STOCK MOVIMIENTO ',1),(12,'2020-03-07 11:30:16','PRUEBA CONARCO','CARGA DE DATOS CONARCO',1),(13,'2020-03-07 12:15:38','PRUEBA','PRUEBA DE CONARCO',1),(14,'2020-03-09 15:07:27','PRUEBA CONARCO VALORES','ELECT 2,5 Y FUSION STCTK 200 ',1),(15,'2020-03-10 20:52:10','STOCK ANTERIOR','PRUEBA DE STOCK ANTERIOR',1),(16,'2020-03-12 10:49:46','CONARCO ELECTRODOS','PRUEBA DE CARGA DE ELECTRODOS DE FUSIÓN Y 2,5',1),(17,'2020-03-12 10:55:21','PRUEBA DE STOCK','PRUEBA DE STOCK PREVIO DEL ARTICULO',1),(18,'2020-05-12 19:39:21','CONARCO','PRUEBA DE CARGA DIA 12',1),(19,'2020-05-22 19:39:53','PRUEBA','RENATO',1),(20,'2020-06-06 17:18:15','CONARCO VERIFICACION','PRUEBA DE FUNCIONAMIENTO DE METODO',1),(21,'2020-06-06 17:19:33','CONARCO FUNCIONAMIENTO 2','PRUEBA DE FUNCIONAMIENTO DE METODO',1);
/*!40000 ALTER TABLE `pedido` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `plan_tarjeta`
--

DROP TABLE IF EXISTS `plan_tarjeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `plan_tarjeta` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `descuento` double DEFAULT NULL,
  `nombre` varchar(100) NOT NULL,
  `recargo` double DEFAULT NULL,
  `plazo` int(11) DEFAULT NULL,
  `tarjeta_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `plan_tarjeta_fk` (`tarjeta_id`),
  CONSTRAINT `plan_tarjeta_fk` FOREIGN KEY (`tarjeta_id`) REFERENCES `tarjeta` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `plan_tarjeta`
--

LOCK TABLES `plan_tarjeta` WRITE;
/*!40000 ALTER TABLE `plan_tarjeta` DISABLE KEYS */;
/*!40000 ALTER TABLE `plan_tarjeta` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `proveedor`
--

LOCK TABLES `proveedor` WRITE;
/*!40000 ALTER TABLE `proveedor` DISABLE KEYS */;
INSERT INTO `proveedor` VALUES (1,'prueba','publica','@gmail','123654','422671',1),(2,'ferrum','cordoba','ferrum@hotmail.com','+5493825411479','+5493825422671',1),(3,'san agustin','cordoba','sanagustinsa@gmail.com',NULL,NULL,1),(4,' ',' ',' ',NULL,NULL,1),(5,'CONARCO','cordoba','conarcoargentina@gmail.com','+54011693258','+5401144269874',1),(6,'MArtinez','chilecito','mtinez@gmail.com',NULL,NULL,1),(7,'san lucas','la rioja','notien@hotmail','2345','654323',1);
/*!40000 ALTER TABLE `proveedor` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rubro`
--

LOCK TABLES `rubro` WRITE;
/*!40000 ALTER TABLE `rubro` DISABLE KEYS */;
INSERT INTO `rubro` VALUES (1,'PINTURAS','',1,'2019-12-27','2019-12-28','2019-12-27'),(2,'HERRAMIENTAS','EN GENERAL',1,'2019-12-27','2019-12-28',NULL),(3,'PLOMERIA','PLOMERO',1,'2019-12-27','2019-12-27',NULL),(4,'ELECTRICIDAD','220 Y 360 V',1,'2019-12-27','2019-12-27',NULL),(5,'HERRERIA','SOLDADURA',1,'2019-12-28','2019-12-28',NULL),(6,'CONTRUCCION','MATERIALES',0,'2019-12-28',NULL,NULL),(7,'CARPINTERIA','CARPINTERIA',1,'2020-01-05',NULL,NULL),(8,' ','Vacio',1,NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sub_rubro`
--

LOCK TABLES `sub_rubro` WRITE;
/*!40000 ALTER TABLE `sub_rubro` DISABLE KEYS */;
INSERT INTO `sub_rubro` VALUES (1,'Electricidad','electricidad',1,NULL,'2019-12-28',NULL,2),(2,'Electricida ','asdasdasd',0,'2019-12-28','2019-12-28','2019-12-28',2),(3,'GARBANIZADO','INSTALACIONES DE GAS',1,'2020-01-08',NULL,NULL,3),(5,'TESGTING','TEST',1,'2020-01-08',NULL,NULL,5),(6,'HELLO','ASD',1,'2020-01-08',NULL,NULL,2),(7,'ALGUN SUBRUBRO','ALGUNA ',1,'2020-01-08',NULL,NULL,5),(8,'HIERRO ANGULO','HA',1,'2020-02-05',NULL,NULL,5),(9,'MESADAS','PRUEBA',1,'2020-02-10',NULL,NULL,7);
/*!40000 ALTER TABLE `sub_rubro` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tarjeta`
--

DROP TABLE IF EXISTS `tarjeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tarjeta` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  `tipo_tarjeta_id` int(11) NOT NULL,
  `banco_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `tarjeta_fk` (`tipo_tarjeta_id`),
  KEY `tarjeta_fk_1` (`banco_id`),
  CONSTRAINT `tarjeta_fk` FOREIGN KEY (`tipo_tarjeta_id`) REFERENCES `tipo_tarjeta` (`id`),
  CONSTRAINT `tarjeta_fk_1` FOREIGN KEY (`banco_id`) REFERENCES `banco` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tarjeta`
--

LOCK TABLES `tarjeta` WRITE;
/*!40000 ALTER TABLE `tarjeta` DISABLE KEYS */;
/*!40000 ALTER TABLE `tarjeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipo_cheque`
--

DROP TABLE IF EXISTS `tipo_cheque`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tipo_cheque` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  `descripcion` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipo_cheque`
--

LOCK TABLES `tipo_cheque` WRITE;
/*!40000 ALTER TABLE `tipo_cheque` DISABLE KEYS */;
/*!40000 ALTER TABLE `tipo_cheque` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipo_tarjeta`
--

DROP TABLE IF EXISTS `tipo_tarjeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tipo_tarjeta` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipo_tarjeta`
--

LOCK TABLES `tipo_tarjeta` WRITE;
/*!40000 ALTER TABLE `tipo_tarjeta` DISABLE KEYS */;
/*!40000 ALTER TABLE `tipo_tarjeta` ENABLE KEYS */;
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
-- Table structure for table `ubicacion`
--

DROP TABLE IF EXISTS `ubicacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ubicacion` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `latitud` varchar(100) NOT NULL,
  `longitud` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ubicacion`
--

LOCK TABLES `ubicacion` WRITE;
/*!40000 ALTER TABLE `ubicacion` DISABLE KEYS */;
/*!40000 ALTER TABLE `ubicacion` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `unidad_medida`
--

LOCK TABLES `unidad_medida` WRITE;
/*!40000 ALTER TABLE `unidad_medida` DISABLE KEYS */;
INSERT INTO `unidad_medida` VALUES (1,'METROS','MTS',0,'2019-12-26','2019-12-26','2019-12-26'),(2,'MILIMETROS','MM',1,'2019-12-26','2019-12-26',NULL),(3,'KILOGRAMOS','KGS',1,'2019-12-26',NULL,NULL),(4,'GRAMOS','GRS',1,'2019-12-26','2019-12-26',NULL),(5,'LITROS','LTS',1,'2020-01-02',NULL,NULL),(6,' ',' ',1,NULL,NULL,NULL),(7,'TONELADAS','TON',1,'2020-01-08',NULL,NULL),(8,'HECTAREAS','HT',1,'2020-02-10',NULL,NULL);
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

-- Dump completed on 2020-06-12  0:25:33
