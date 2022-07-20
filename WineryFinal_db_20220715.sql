-- MySQL dump 10.13  Distrib 8.0.29, for Win64 (x86_64)
--
-- Host: localhost    Database: winery
-- ------------------------------------------------------
-- Server version	8.0.29

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
-- Table structure for table `productos`
--

DROP TABLE IF EXISTS `productos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `productos` (
  `id` int NOT NULL AUTO_INCREMENT,
  `marca` varchar(60) CHARACTER SET utf8mb3 COLLATE utf8_general_ci NOT NULL,
  `tipo` varchar(30) CHARACTER SET utf8mb3 COLLATE utf8_general_ci NOT NULL,
  `anio` int DEFAULT NULL,
  `stock` int NOT NULL DEFAULT '0',
  `precio` double NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `marca_tipo_anio` (`marca`,`tipo`,`anio`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `productos`
--

LOCK TABLES `productos` WRITE;
/*!40000 ALTER TABLE `productos` DISABLE KEYS */;
INSERT INTO `productos` VALUES (1,'Toro','Vino Tinto',2021,11,120.4),(2,'Termidor','Vino Blanco',2022,123,180),(3,'Colón','Vino Tinto Malbec',2018,24,380.85),(4,'Old Smuggler','Whisky',2005,34,1230),(6,'La vinotinto','Vino Blanco',2021,3,105.25),(8,'Güisquito','Whisky',2003,2,2560),(9,'Toro Viejo','Vino Rosado',2022,20,140.5),(10,'La Bodeguita','Espumante',2001,5,350),(11,'El Tonel','Vino Blanco Reserva',2019,10,480),(12,'El Tonel','Vino Tinto Reserva',2020,10,520),(13,'Otro loco más','Vino Tinto Fino',2010,5,850);
/*!40000 ALTER TABLE `productos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipodeproducto`
--

DROP TABLE IF EXISTS `tipodeproducto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tipodeproducto` (
  `id` int NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(45) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  UNIQUE KEY `descripcion_UNIQUE` (`descripcion`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipodeproducto`
--

LOCK TABLES `tipodeproducto` WRITE;
/*!40000 ALTER TABLE `tipodeproducto` DISABLE KEYS */;
INSERT INTO `tipodeproducto` VALUES (7,'Fernet'),(2,'Vino Blanco'),(4,'Vino Fino Blanco'),(3,'Vino Fino Tinto'),(6,'Vino Reserva Blanco'),(5,'Vino Reserva Tinto'),(1,'Vino Tinto'),(8,'Whisky');
/*!40000 ALTER TABLE `tipodeproducto` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-07-15 16:00:55
