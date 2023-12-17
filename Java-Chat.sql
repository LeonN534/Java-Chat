-- MariaDB dump 10.19-11.2.2-MariaDB, for Linux (x86_64)
--
-- Host: localhost    Database: Comunicacion
-- ------------------------------------------------------
-- Server version	11.2.2-MariaDB

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
-- Table structure for table `mensajes`
--

DROP TABLE IF EXISTS `mensajes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mensajes` (
  `idmensajes` int(11) NOT NULL AUTO_INCREMENT,
  `remitenteId` int(20) DEFAULT NULL,
  `destinatarioId` int(20) DEFAULT NULL,
  `contenido` mediumtext DEFAULT NULL,
  `timestamp` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`idmensajes`),
  KEY `remitente_idx` (`remitenteId`),
  KEY `destinatarioId_idx` (`destinatarioId`),
  CONSTRAINT `destinatarioId` FOREIGN KEY (`destinatarioId`) REFERENCES `usuarios` (`idusuario`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `remitenteId` FOREIGN KEY (`remitenteId`) REFERENCES `usuarios` (`idusuario`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mensajes`
--

LOCK TABLES `mensajes` WRITE;
/*!40000 ALTER TABLE `mensajes` DISABLE KEYS */;
INSERT INTO `mensajes` VALUES
(2,1,4,'HOla amigo','2023-11-16 04:40:08'),
(3,1,4,'Que tal todo','2023-11-20 19:51:07'),
(4,1,4,'Todo bien','2023-11-20 19:54:39'),
(5,4,1,'me algrego','2023-11-20 19:58:49'),
(6,1,4,'Escribiste mal','2023-11-20 20:00:30'),
(7,1,4,'','2023-11-20 20:14:27'),
(8,1,4,'','2023-11-20 20:15:03'),
(9,1,4,'','2023-11-20 21:12:24'),
(10,1,1,'','2023-11-20 21:14:53'),
(11,1,1,'','2023-11-20 21:15:04'),
(12,1,1,'','2023-11-20 21:15:05'),
(13,1,4,'','2023-11-20 21:15:10'),
(14,1,4,'','2023-11-20 21:16:08'),
(15,1,1,'','2023-11-20 21:16:18'),
(16,1,1,'','2023-11-20 21:16:57'),
(17,1,4,'','2023-11-20 21:17:03'),
(18,1,1,'','2023-11-20 21:17:22'),
(19,1,4,'','2023-11-20 22:02:18'),
(20,1,4,'hola amigo','2023-11-20 22:23:03'),
(21,1,4,'esto deberia salir mejor','2023-11-20 22:25:20'),
(22,1,4,'no me gusta esto','2023-11-20 22:25:27'),
(23,1,4,'hola','2023-11-21 00:34:03'),
(24,1,4,'','2023-11-21 00:38:17'),
(25,1,4,'asdf','2023-11-21 00:38:22'),
(26,1,4,'asdf','2023-11-21 00:38:25'),
(27,1,4,'asdf','2023-11-21 00:40:41'),
(28,1,4,'asdf','2023-11-21 00:42:33'),
(29,1,4,'asdf','2023-11-21 00:42:38'),
(30,1,4,'mensaje','2023-11-21 00:44:48'),
(31,1,4,'adsf','2023-11-21 02:56:06'),
(32,1,4,'hola\n','2023-11-21 04:59:23'),
(33,1,4,'holaaaaa','2023-11-21 04:59:30'),
(34,1,4,'a','2023-11-21 05:00:43'),
(35,1,4,'a\n','2023-11-21 05:43:33'),
(36,1,4,'a','2023-11-21 05:44:46'),
(37,4,1,'adsf','2023-11-21 05:49:22'),
(38,4,1,'hola','2023-11-21 05:49:35'),
(39,4,1,'a','2023-11-21 05:51:18'),
(40,4,1,'hola','2023-11-21 05:54:08'),
(41,1,4,'que tal','2023-11-21 05:54:54'),
(42,4,1,'xd','2023-11-21 05:54:59'),
(43,1,4,'yo bien','2023-11-21 05:55:16'),
(44,4,1,'a','2023-11-21 05:55:28'),
(45,1,4,'hola','2023-11-21 06:09:07'),
(46,1,4,'holaaaa','2023-11-21 06:12:11'),
(47,1,4,'hollaaa','2023-11-21 06:13:26'),
(48,1,4,'prueba 1','2023-11-21 06:14:15'),
(49,1,4,'mensaje','2023-11-21 06:14:37'),
(50,6,1,'hola amigo','2023-11-30 21:06:00'),
(51,6,1,'mensaje1','2023-11-30 21:06:09'),
(52,6,1,'mensaje 2','2023-11-30 21:06:11'),
(53,1,6,'que tal amigazo','2023-11-30 21:06:49'),
(54,1,6,'como vas\n','2023-11-30 21:07:06'),
(55,6,1,'bien normal','2023-11-30 21:07:20');
/*!40000 ALTER TABLE `mensajes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usuarios` (
  `idusuario` int(11) NOT NULL AUTO_INCREMENT,
  `nombres` varchar(45) DEFAULT NULL,
  `apellidos` varchar(45) DEFAULT NULL,
  `correo` varchar(45) DEFAULT NULL,
  `contraseña` varchar(45) DEFAULT NULL,
  `idiomaAsociado` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idusuario`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuarios`
--

LOCK TABLES `usuarios` WRITE;
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
INSERT INTO `usuarios` VALUES
(1,'Miguel Franco','Aguirre Saldaña','saldaFran@gmail.com','1234','es'),
(4,'Michael','Simons','simMichael@gmail.com','987','en'),
(5,'miguel','ohara','asdf.1234','1234','es'),
(6,'prueba','prueba','prueba@email.com','123','es');
/*!40000 ALTER TABLE `usuarios` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-12-17 16:44:39
