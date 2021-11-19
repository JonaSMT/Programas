-- MySQL dump 10.13  Distrib 8.0.25, for Win64 (x86_64)
--
-- Host: localhost    Database: biblioteca
-- ------------------------------------------------------
-- Server version	8.0.25

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
-- Table structure for table `comic`
--

DROP TABLE IF EXISTS `comic`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `comic` (
  `TITULO` varchar(50) NOT NULL,
  `AUTOR` varchar(30) DEFAULT NULL,
  `COLECCION` varchar(30) NOT NULL,
  `ANYO` int NOT NULL,
  PRIMARY KEY (`TITULO`,`COLECCION`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comic`
--

LOCK TABLES `comic` WRITE;
/*!40000 ALTER TABLE `comic` DISABLE KEYS */;
INSERT INTO `comic` VALUES ('Prueba2','Prueba2','Prueba1',4),('Prueba3','Prueba2','Prueba2',6);
/*!40000 ALTER TABLE `comic` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `libro`
--

DROP TABLE IF EXISTS `libro`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `libro` (
  `TITULO` varchar(50) NOT NULL,
  `AUTOR` varchar(50) NOT NULL,
  `GENERO` varchar(15) NOT NULL,
  `ANYOCOPY` int DEFAULT NULL,
  `ANYOEDICION` int NOT NULL,
  `IDIOMA` varchar(15) NOT NULL,
  PRIMARY KEY (`TITULO`,`ANYOEDICION`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `libro`
--

LOCK TABLES `libro` WRITE;
/*!40000 ALTER TABLE `libro` DISABLE KEYS */;
INSERT INTO `libro` VALUES ('¿Quién vota a la derecha?','Alberto Garzón','Política',2019,2019,'Español'),('Ancient society','Lewis Henry Morgan','Consulta',1877,0,'Inglés'),('Calor desnudo','Richard Castle','Policíaca',2012,2012,'Español'),('Confesiones de un pirata','Gene Wolfe','Fantasía',2004,2009,'Español'),('Dos velas para el diablo','Laura Gallego','Fantasía',2010,2013,'Español'),('El género y los sexos','Lucí González-Mendiondo','Consulta',2019,2019,'Español'),('El libro de los portales','Laura Gallego','Fantasía',2013,2013,'Español'),('El perro de los baskerville','Conan Doyle','Misterio',2008,2008,'Español'),('Historia de lo trans','Susan Stryker','Consulta',2017,2027,'Español'),('La hija de la noche','Laura Gallego','Fantasía',2004,2004,'Español'),('La política de todes','Holly Lewis','Consulta',2016,2020,'Español'),('La taza de oro','John Steinbeck','Fantasía',2006,2006,'Español'),('Las aventuras de Sherlock Holmes','Conan Doyle','Misterio',1892,1993,'Español'),('Migret en Nueva York','Georges Simeon','Misterio',2004,2004,'Español'),('Ola de calor','Richard Castle','Policíaca',2010,2010,'Español'),('Pensar rápido, pensar depacio','Daniel Kahneman','Ensayo',2012,2017,'Español'),('Psicópata','Jonathan Kellerman','Misterio',1996,1998,'Español'),('Skulduggery Pleasant','Derek Landy','Fantasía',2008,2008,'Español'),('Tras la huella de cristo','Kathy Reichs','Policíaca',2006,2006,'Español'),('Tres sombreros de copa','Miguel Mihura','Teatro',1998,2009,'Español'),('Una antropóloga en la luna','Noemí Villaverde','Antropología',2017,2017,'Español');
/*!40000 ALTER TABLE `libro` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `manga`
--

DROP TABLE IF EXISTS `manga`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `manga` (
  `TITULO` varchar(50) NOT NULL,
  `AUTOR` varchar(20) NOT NULL,
  `VOLUMEN` int NOT NULL,
  `Nº` int NOT NULL,
  `ANYO` int DEFAULT NULL,
  PRIMARY KEY (`TITULO`,`Nº`,`VOLUMEN`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `manga`
--

LOCK TABLES `manga` WRITE;
/*!40000 ALTER TABLE `manga` DISABLE KEYS */;
INSERT INTO `manga` VALUES ('1','2',1,1,5),('1','2',1,2,5),('1','2',3,4,5);
/*!40000 ALTER TABLE `manga` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-07-10  3:37:01
