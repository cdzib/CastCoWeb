-- MySQL dump 10.13  Distrib 8.0.19, for Win64 (x86_64)
--
-- Host: localhost    Database: castcodb
-- ------------------------------------------------------
-- Server version	8.0.19

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
-- Table structure for table `cat_agencia`
--

DROP TABLE IF EXISTS `cat_agencia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cat_agencia` (
  `id_agencia` int NOT NULL,
  `nombre_agencia` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `nombre_brooker_agencia` varchar(150) COLLATE utf8_spanish_ci DEFAULT NULL,
  `correo_agencia` varchar(150) COLLATE utf8_spanish_ci DEFAULT NULL,
  `telefono_agencia` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL,
  `ciudad_agencia` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL,
  `fecha_create` datetime DEFAULT NULL,
  PRIMARY KEY (`id_agencia`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cat_agencia`
--

LOCK TABLES `cat_agencia` WRITE;
/*!40000 ALTER TABLE `cat_agencia` DISABLE KEYS */;
/*!40000 ALTER TABLE `cat_agencia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cat_delivery`
--

DROP TABLE IF EXISTS `cat_delivery`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cat_delivery` (
  `id_delivery` int NOT NULL,
  `nombre` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `fecha_create` datetime DEFAULT NULL,
  PRIMARY KEY (`id_delivery`),
  UNIQUE KEY `id_delivery_UNIQUE` (`id_delivery`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cat_delivery`
--

LOCK TABLES `cat_delivery` WRITE;
/*!40000 ALTER TABLE `cat_delivery` DISABLE KEYS */;
/*!40000 ALTER TABLE `cat_delivery` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cat_estados_mexico`
--

DROP TABLE IF EXISTS `cat_estados_mexico`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cat_estados_mexico` (
  `id_estados` int NOT NULL,
  `nombre_estado` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `fecha_create` datetime DEFAULT NULL,
  PRIMARY KEY (`id_estados`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cat_estados_mexico`
--

LOCK TABLES `cat_estados_mexico` WRITE;
/*!40000 ALTER TABLE `cat_estados_mexico` DISABLE KEYS */;
/*!40000 ALTER TABLE `cat_estados_mexico` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cat_estatus_proyecto`
--

DROP TABLE IF EXISTS `cat_estatus_proyecto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cat_estatus_proyecto` (
  `id_estatus_proyecto` int NOT NULL,
  `descripcion` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL,
  PRIMARY KEY (`id_estatus_proyecto`),
  UNIQUE KEY `id_estatus_proyecto_UNIQUE` (`id_estatus_proyecto`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cat_estatus_proyecto`
--

LOCK TABLES `cat_estatus_proyecto` WRITE;
/*!40000 ALTER TABLE `cat_estatus_proyecto` DISABLE KEYS */;
/*!40000 ALTER TABLE `cat_estatus_proyecto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cat_etnia`
--

DROP TABLE IF EXISTS `cat_etnia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cat_etnia` (
  `id_etnia` int NOT NULL,
  `nombre_etnia` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `fecha_create` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL,
  PRIMARY KEY (`id_etnia`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cat_etnia`
--

LOCK TABLES `cat_etnia` WRITE;
/*!40000 ALTER TABLE `cat_etnia` DISABLE KEYS */;
/*!40000 ALTER TABLE `cat_etnia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cat_genero`
--

DROP TABLE IF EXISTS `cat_genero`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cat_genero` (
  `id_genero` int NOT NULL,
  `nombre_genero` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `fecha_create` datetime DEFAULT NULL,
  PRIMARY KEY (`id_genero`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cat_genero`
--

LOCK TABLES `cat_genero` WRITE;
/*!40000 ALTER TABLE `cat_genero` DISABLE KEYS */;
/*!40000 ALTER TABLE `cat_genero` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cat_info_talento`
--

DROP TABLE IF EXISTS `cat_info_talento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cat_info_talento` (
  `id_info_talento` int NOT NULL,
  `nombre_talento` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL,
  `apellido_talento` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL,
  `edad_talento` int DEFAULT NULL,
  `id_estado` int DEFAULT NULL,
  `id_agencia` int DEFAULT NULL,
  `id_etnia` int DEFAULT NULL,
  `id_genero` int DEFAULT NULL,
  `pertenencia_lgbtq` int DEFAULT NULL,
  `instagram_talento` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `telefono_talento` varchar(12) COLLATE utf8_spanish_ci DEFAULT NULL,
  `correo_talento` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL,
  `estatura_talento` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL,
  `calzado_cm_talento` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL,
  `talla_cm_talento` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL,
  `talla_playera_talento` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL,
  `ocupacion_talento` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `habilidades_talento` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `perfil_pic_talento` varchar(250) COLLATE utf8_spanish_ci DEFAULT NULL,
  `ruta_dpbx_talento` varchar(250) COLLATE utf8_spanish_ci DEFAULT NULL,
  `selfie_status_taleno` int DEFAULT NULL,
  PRIMARY KEY (`id_info_talento`),
  UNIQUE KEY `id_info_talento_UNIQUE` (`id_info_talento`),
  KEY `castco_id_estado_talento_idx` (`id_estado`),
  KEY `castco_id_agencia_talento_idx` (`id_agencia`),
  KEY `castco_id_etnia_talento_idx` (`id_etnia`),
  KEY `castco_id_genero_talento_idx` (`id_genero`),
  CONSTRAINT `castco_id_agencia_talento` FOREIGN KEY (`id_agencia`) REFERENCES `cat_agencia` (`id_agencia`),
  CONSTRAINT `castco_id_estado_talento` FOREIGN KEY (`id_estado`) REFERENCES `cat_estados_mexico` (`id_estados`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `castco_id_etnia_talento` FOREIGN KEY (`id_etnia`) REFERENCES `cat_etnia` (`id_etnia`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `castco_id_genero_talento` FOREIGN KEY (`id_genero`) REFERENCES `cat_genero` (`id_genero`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cat_info_talento`
--

LOCK TABLES `cat_info_talento` WRITE;
/*!40000 ALTER TABLE `cat_info_talento` DISABLE KEYS */;
/*!40000 ALTER TABLE `cat_info_talento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cat_material_proyecto`
--

DROP TABLE IF EXISTS `cat_material_proyecto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cat_material_proyecto` (
  `id_material_proyecto` int NOT NULL,
  `nombre` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `foto` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `fecha_create` datetime DEFAULT NULL,
  `fecha_update` datetime DEFAULT NULL,
  PRIMARY KEY (`id_material_proyecto`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cat_material_proyecto`
--

LOCK TABLES `cat_material_proyecto` WRITE;
/*!40000 ALTER TABLE `cat_material_proyecto` DISABLE KEYS */;
/*!40000 ALTER TABLE `cat_material_proyecto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cat_proyecto`
--

DROP TABLE IF EXISTS `cat_proyecto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cat_proyecto` (
  `id_proyecto` int NOT NULL,
  `nombre` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL,
  `nombre_publico` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL,
  `productora` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL,
  `fecha_grabacion` datetime DEFAULT NULL,
  `fecha_fitting` datetime DEFAULT NULL,
  `fecha_callback` datetime DEFAULT NULL,
  `fecha_inicio_proyecto` datetime DEFAULT NULL,
  `fecha_fin_proyecto` datetime DEFAULT NULL,
  `id_material_proyecto` int DEFAULT NULL,
  `numero_imagenes` int DEFAULT NULL,
  `numero_videos` int DEFAULT NULL,
  `descripcion_proyecto` varchar(250) COLLATE utf8_spanish_ci DEFAULT NULL,
  `id_lugar` int DEFAULT NULL,
  `competencia` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `uso_de_imagen` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `temporalidad` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `presupuesto_talent_fee` double DEFAULT NULL,
  `presupuesto_agency_fee` double DEFAULT NULL,
  `id_vinetas` int DEFAULT NULL,
  `id_delivery` int DEFAULT NULL,
  `id_estatus_proyecto` int DEFAULT NULL,
  `id_tipo_material` int DEFAULT NULL,
  `logo_proyecto` varchar(245) COLLATE utf8_spanish_ci DEFAULT NULL,
  `user_create` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  PRIMARY KEY (`id_proyecto`),
  UNIQUE KEY `id_proyecto_UNIQUE` (`id_proyecto`),
  KEY `castco_ibfk_idx` (`id_delivery`),
  KEY `castco_ibfk1_idx` (`id_estatus_proyecto`),
  KEY `castco_ibfk2_idx` (`id_material_proyecto`),
  KEY `castco_ibfk3_idx` (`id_tipo_material`),
  KEY `castco_ibfk4_idx` (`id_vinetas`),
  CONSTRAINT `castco_ibfk` FOREIGN KEY (`id_delivery`) REFERENCES `cat_delivery` (`id_delivery`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `castco_ibfk1` FOREIGN KEY (`id_estatus_proyecto`) REFERENCES `cat_estatus_proyecto` (`id_estatus_proyecto`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `castco_ibfk2` FOREIGN KEY (`id_material_proyecto`) REFERENCES `cat_material_proyecto` (`id_material_proyecto`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `castco_ibfk3` FOREIGN KEY (`id_tipo_material`) REFERENCES `cat_tipo_material` (`id_tipo_material`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `castco_ibfk4` FOREIGN KEY (`id_vinetas`) REFERENCES `cat_vinetas` (`id_vinetas`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cat_proyecto`
--

LOCK TABLES `cat_proyecto` WRITE;
/*!40000 ALTER TABLE `cat_proyecto` DISABLE KEYS */;
/*!40000 ALTER TABLE `cat_proyecto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cat_tipo_material`
--

DROP TABLE IF EXISTS `cat_tipo_material`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cat_tipo_material` (
  `id_tipo_material` int NOT NULL,
  `descripcion` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  PRIMARY KEY (`id_tipo_material`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cat_tipo_material`
--

LOCK TABLES `cat_tipo_material` WRITE;
/*!40000 ALTER TABLE `cat_tipo_material` DISABLE KEYS */;
/*!40000 ALTER TABLE `cat_tipo_material` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cat_tipo_usuario`
--

DROP TABLE IF EXISTS `cat_tipo_usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cat_tipo_usuario` (
  `id` int NOT NULL,
  `nombre` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `fecha_actualizacion` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cat_tipo_usuario`
--

LOCK TABLES `cat_tipo_usuario` WRITE;
/*!40000 ALTER TABLE `cat_tipo_usuario` DISABLE KEYS */;
/*!40000 ALTER TABLE `cat_tipo_usuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cat_usuario`
--

DROP TABLE IF EXISTS `cat_usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cat_usuario` (
  `id_usuario` int NOT NULL,
  `nombre_usuario` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `nombre` varchar(60) COLLATE utf8_spanish_ci DEFAULT NULL,
  `apellido` varchar(60) COLLATE utf8_spanish_ci DEFAULT NULL,
  `email` varchar(30) COLLATE utf8_spanish_ci DEFAULT NULL,
  `instagram` varchar(245) COLLATE utf8_spanish_ci DEFAULT NULL,
  `profile_pic` varchar(245) COLLATE utf8_spanish_ci DEFAULT NULL,
  `fecha_update` datetime DEFAULT NULL,
  `id_tipo_usuario` int DEFAULT NULL,
  `id_usuario_talento` int DEFAULT NULL,
  `id_usuario_agencia` int DEFAULT NULL,
  `fecha_create` datetime DEFAULT NULL,
  PRIMARY KEY (`id_usuario`),
  UNIQUE KEY `id_usuario_UNIQUE` (`id_usuario`),
  KEY `castco_tipo_talento_idx` (`id_usuario_talento`),
  KEY `cat_tipo_agencia_idx` (`id_usuario_agencia`),
  CONSTRAINT `castco_tipo_talento` FOREIGN KEY (`id_usuario_talento`) REFERENCES `cat_info_talento` (`id_info_talento`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `castco_tipo_usuario` FOREIGN KEY (`id_usuario`) REFERENCES `cat_tipo_usuario` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `cat_tipo_agencia` FOREIGN KEY (`id_usuario_agencia`) REFERENCES `cat_agencia` (`id_agencia`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci COMMENT='La tabla nos permite utilizar la información de los usuarios';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cat_usuario`
--

LOCK TABLES `cat_usuario` WRITE;
/*!40000 ALTER TABLE `cat_usuario` DISABLE KEYS */;
/*!40000 ALTER TABLE `cat_usuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cat_usuario_proyecto`
--

DROP TABLE IF EXISTS `cat_usuario_proyecto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cat_usuario_proyecto` (
  `id_user` int NOT NULL,
  `id_proyecto` varchar(45) COLLATE utf8_spanish_ci NOT NULL,
  PRIMARY KEY (`id_user`,`id_proyecto`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cat_usuario_proyecto`
--

LOCK TABLES `cat_usuario_proyecto` WRITE;
/*!40000 ALTER TABLE `cat_usuario_proyecto` DISABLE KEYS */;
/*!40000 ALTER TABLE `cat_usuario_proyecto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cat_vinetas`
--

DROP TABLE IF EXISTS `cat_vinetas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cat_vinetas` (
  `id_vinetas` int NOT NULL,
  `nombre` varchar(150) COLLATE utf8_spanish_ci DEFAULT NULL,
  `estatus_modify` int DEFAULT NULL,
  `fecha_create` datetime DEFAULT NULL,
  PRIMARY KEY (`id_vinetas`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cat_vinetas`
--

LOCK TABLES `cat_vinetas` WRITE;
/*!40000 ALTER TABLE `cat_vinetas` DISABLE KEYS */;
/*!40000 ALTER TABLE `cat_vinetas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'castcodb'
--

--
-- Dumping routines for database 'castcodb'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-08-05 16:24:54
-- Hola Mundo