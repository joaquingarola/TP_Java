-- MySQL dump 10.13  Distrib 8.0.29, for Win64 (x86_64)
--
-- Host: localhost    Database: clinica
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
-- Table structure for table `administradores`
--

DROP TABLE IF EXISTS `administradores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `administradores` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_UNIQUE` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `administradores`
--

LOCK TABLES `administradores` WRITE;
/*!40000 ALTER TABLE `administradores` DISABLE KEYS */;
INSERT INTO `administradores` VALUES (3,'administrador1','456'),(4,'administrador2','789'),(14,'administrador3','abc');
/*!40000 ALTER TABLE `administradores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `especialidad_obrasocial`
--

DROP TABLE IF EXISTS `especialidad_obrasocial`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `especialidad_obrasocial` (
  `porcentaje_cobertura` float NOT NULL,
  `id_os` int NOT NULL,
  `cod_especialidad` int NOT NULL,
  PRIMARY KEY (`id_os`,`cod_especialidad`),
  KEY `fk_cod_especialidad_idx` (`cod_especialidad`),
  CONSTRAINT `fk_cod_especialidad` FOREIGN KEY (`cod_especialidad`) REFERENCES `especialidades` (`codigo_esp`),
  CONSTRAINT `fk_id_os` FOREIGN KEY (`id_os`) REFERENCES `obras_sociales` (`id_obra_social`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `especialidad_obrasocial`
--

LOCK TABLES `especialidad_obrasocial` WRITE;
/*!40000 ALTER TABLE `especialidad_obrasocial` DISABLE KEYS */;
INSERT INTO `especialidad_obrasocial` VALUES (0.9,1,1),(0.8,1,2),(0.9,1,5),(0.9,2,1),(0.9,2,2),(0.75,2,3),(0.95,2,5),(0.6,2,7),(1,3,1),(1,3,2),(0.9,3,3),(0.8,3,4),(0.9,3,5),(0.9,4,1),(0.85,4,2),(0.9,4,3),(0.85,4,4),(0.75,4,5),(0.85,5,1),(0.75,5,2),(0.8,5,3),(0.85,5,4),(0.75,5,5),(0.8,6,1),(0.85,6,2),(0.9,6,3),(0.7,6,4),(0.9,6,5),(0.9,7,1),(0.9,7,2),(0.95,7,3),(0.75,7,4),(0.95,7,5),(0.85,8,1),(0.85,8,2),(0.85,8,3),(1,8,4),(0.95,8,5),(0.8,9,1),(0.7,9,2),(0.65,9,3),(1,9,4),(0.95,9,5);
/*!40000 ALTER TABLE `especialidad_obrasocial` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `especialidades`
--

DROP TABLE IF EXISTS `especialidades`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `especialidades` (
  `codigo_esp` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) NOT NULL,
  `estado` tinyint(1) NOT NULL,
  PRIMARY KEY (`codigo_esp`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `especialidades`
--

LOCK TABLES `especialidades` WRITE;
/*!40000 ALTER TABLE `especialidades` DISABLE KEYS */;
INSERT INTO `especialidades` VALUES (1,'Cardiología',1),(2,'Neurología',1),(3,'Traumatología',1),(4,'Pediatria',1),(5,'Neurología',0),(7,'Kinesiología',1);
/*!40000 ALTER TABLE `especialidades` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `obras_sociales`
--

DROP TABLE IF EXISTS `obras_sociales`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `obras_sociales` (
  `id_obra_social` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) NOT NULL,
  PRIMARY KEY (`id_obra_social`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `obras_sociales`
--

LOCK TABLES `obras_sociales` WRITE;
/*!40000 ALTER TABLE `obras_sociales` DISABLE KEYS */;
INSERT INTO `obras_sociales` VALUES (1,'Federada Salud'),(2,'OSDE'),(3,'Medicus'),(4,'Swiss Medical'),(5,'Galeno'),(6,'Medifé'),(7,'Pami'),(8,'ACA Salud'),(9,'SanCor Salud'),(10,'OSPE');
/*!40000 ALTER TABLE `obras_sociales` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pacientes`
--

DROP TABLE IF EXISTS `pacientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pacientes` (
  `id` int NOT NULL AUTO_INCREMENT,
  `email` varchar(50) NOT NULL,
  `password` varchar(45) NOT NULL,
  `nombre` varchar(45) NOT NULL,
  `apellido` varchar(45) NOT NULL,
  `num_tel` varchar(45) NOT NULL,
  `dni` varchar(8) NOT NULL,
  `id_obra_social` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mail_UNIQUE` (`email`),
  KEY `id_os_idx` (`id_obra_social`),
  CONSTRAINT `id_os` FOREIGN KEY (`id_obra_social`) REFERENCES `obras_sociales` (`id_obra_social`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pacientes`
--

LOCK TABLES `pacientes` WRITE;
/*!40000 ALTER TABLE `pacientes` DISABLE KEYS */;
INSERT INTO `pacientes` VALUES (1,'johndoe@gmail.com','1234','Johnas','Doe','3464521478','41932451',7),(2,'pac2@gmail.com','1234','Paciente','Segundo','341525252','34152525',7),(3,'e_keen@gmail.com','abcd','Elizabeth','Keen','2225555','21458741',5),(4,'donald@gmail.com','home123','Donald','Ressler','341551247','21458724',2),(5,'asher_millstone@gmail.com','grupo935','Asher','Millstone','3464821457','30123698',5),(6,'connor_95@gmail.com','walsh95','Connor','Walsh','3464558201','38147852',5),(7,'ross_geller@gmail.com','dinosaurs','Ross','Geller','34145687','35123789',6),(8,'r_green@gmail.com','rachel','Rachel','Green','3464123657','35159874',9),(9,'c.bing@gmail.com','omg','Chandler','Bing','3464123614','35159845',7),(10,'holden.ford@gmail.com','hola789','Holden','Ford','346452147','32145876',4),(11,'house@gmail.com','house80','Gregory','House','341551236','36452123',1),(12,'lisa.cuddy@gmail.com','lisa80','Lisa','Cuddy','341551288','41932478',3),(16,'hp_@gmail.com','1111','Harry','Potter','12323442','87654321',9),(17,'john_wick@gmail.com','bbb','John','Wick','222222','12345676',6),(18,'manu@gmail.com','1999','Manuel','Ferraretto','3333333','11111',1),(29,'prueba@prueba.com','1234','Pruebas','Pruebas','34013401','741182',2);
/*!40000 ALTER TABLE `pacientes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `profesionales`
--

DROP TABLE IF EXISTS `profesionales`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `profesionales` (
  `matricula` varchar(10) NOT NULL,
  `email` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  `nombre` varchar(45) NOT NULL,
  `apellido` varchar(45) NOT NULL,
  `cod_especialidad` int NOT NULL,
  `estado` tinyint(1) NOT NULL,
  `hora_inicio` time NOT NULL,
  `hora_fin` time NOT NULL,
  PRIMARY KEY (`matricula`),
  UNIQUE KEY `mail_UNIQUE` (`email`),
  KEY `fk_codigo_especialidad_idx` (`cod_especialidad`),
  CONSTRAINT `fk_codigo_especialidad` FOREIGN KEY (`cod_especialidad`) REFERENCES `especialidades` (`codigo_esp`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `profesionales`
--

LOCK TABLES `profesionales` WRITE;
/*!40000 ALTER TABLE `profesionales` DISABLE KEYS */;
INSERT INTO `profesionales` VALUES ('11111','wilson@gmail.com','null','Wilson','Zimmerman',1,1,'09:30:00','12:00:00'),('1234','j_snow@gmail.com','123','John','Snow',2,1,'10:00:00','16:00:00'),('123456','sn_1980@gmail.com','sn1980','Sophie','Neveu',3,0,'15:00:00','17:00:00'),('147258','edmond_85@gmail.com','origen','Edmond','Kirsch',3,1,'10:00:00','18:00:00'),('22222','robert_langdon@gmail.com','robert80','Robert','Langdon',1,1,'12:00:00','14:00:00'),('33333','e.stark@gmail.com','999','Eddard','Stark',4,1,'15:00:00','18:00:00'),('333333','s_brooks@gmail.com','brooks10','Sienna','Brooks',2,1,'09:00:00','16:00:00'),('444444','h_sims@gmail.com','harry456','Harry','Sims',2,1,'09:00:00','17:00:00'),('55555','a.dumbledore@gmail.com','111','Albus','Dumbledore',3,1,'16:00:00','18:00:00'),('632154','t_lannister@gmail.com','opq','Tyrion','Lannister',2,1,'16:30:00','18:00:00'),('963852','sirius_black@gmail.com','hello','Sirius','Black',4,1,'09:30:00','12:30:00'),('987333','e_foreman@gmail.com','eric80','Eric','Foreman',3,1,'09:00:00','15:30:00'),('987654','james_wilson@gmail.com','james80','James','Wilson',1,1,'15:00:00','16:30:00');
/*!40000 ALTER TABLE `profesionales` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `turnos`
--

DROP TABLE IF EXISTS `turnos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `turnos` (
  `numero` int NOT NULL AUTO_INCREMENT,
  `fecha_turno` date NOT NULL,
  `hora_turno` time NOT NULL,
  `matricula_prof` varchar(10) DEFAULT NULL,
  `id_paciente` int DEFAULT NULL,
  PRIMARY KEY (`numero`),
  KEY `fk_mat_profesional_idx` (`matricula_prof`),
  KEY `fk_id_paciente_idx` (`id_paciente`),
  CONSTRAINT `fk_id_paciente` FOREIGN KEY (`id_paciente`) REFERENCES `pacientes` (`id`),
  CONSTRAINT `fk_mat_profesional` FOREIGN KEY (`matricula_prof`) REFERENCES `profesionales` (`matricula`)
) ENGINE=InnoDB AUTO_INCREMENT=82 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `turnos`
--

LOCK TABLES `turnos` WRITE;
/*!40000 ALTER TABLE `turnos` DISABLE KEYS */;
INSERT INTO `turnos` VALUES (58,'2022-05-25','09:00:00','444444',3),(60,'2022-05-25','10:00:00','33333',12),(61,'2022-05-25','13:00:00','55555',17),(62,'2022-05-25','10:30:00','33333',4),(65,'2023-02-02','15:30:00','55555',1),(66,'2023-01-01','10:00:00','33333',1),(67,'2023-01-26','10:00:00','444444',1),(68,'2023-01-26','17:00:00','33333',1),(69,'2023-02-25','09:00:00','1234',1),(71,'2023-03-06','09:00:00','1234',1),(72,'2023-03-06','10:00:00','147258',1),(74,'2023-03-06','09:00:00','963852',1),(79,'2023-03-07','09:00:00','11111',1),(81,'2023-03-07','09:30:00','11111',2);
/*!40000 ALTER TABLE `turnos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `valor_especialidad`
--

DROP TABLE IF EXISTS `valor_especialidad`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `valor_especialidad` (
  `fecha_desde` datetime NOT NULL,
  `cod_especialidad` int NOT NULL,
  `valor` int NOT NULL,
  PRIMARY KEY (`fecha_desde`,`cod_especialidad`),
  KEY `fk_cod_especialidad_idx` (`cod_especialidad`),
  CONSTRAINT `fk_cod_esp` FOREIGN KEY (`cod_especialidad`) REFERENCES `especialidades` (`codigo_esp`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `valor_especialidad`
--

LOCK TABLES `valor_especialidad` WRITE;
/*!40000 ALTER TABLE `valor_especialidad` DISABLE KEYS */;
INSERT INTO `valor_especialidad` VALUES ('2023-01-21 00:00:00',1,1500),('2023-01-21 00:00:00',2,1050),('2023-01-21 00:00:00',3,1600),('2023-01-21 00:00:00',4,1000),('2023-01-21 16:45:15',7,1570),('2023-01-21 16:45:19',7,1570),('2023-01-21 19:48:20',4,1000),('2023-01-21 19:48:51',4,1000),('2023-01-21 19:48:56',4,1000),('2023-01-21 19:49:07',4,1000),('2023-01-21 21:16:47',1,1550),('2023-01-24 11:53:47',1,1555),('2023-01-24 11:53:51',1,1555),('2023-01-24 11:53:57',1,1555),('2023-01-24 11:54:04',1,1555),('2023-01-25 15:15:44',1,1555),('2023-01-25 15:15:47',1,1555),('2023-01-25 15:15:56',1,1999);
/*!40000 ALTER TABLE `valor_especialidad` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-03-14 15:26:16
