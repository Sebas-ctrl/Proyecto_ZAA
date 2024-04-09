CREATE DATABASE  IF NOT EXISTS `recursos_materiales` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `recursos_materiales`;
-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: localhost    Database: recursos_materiales
-- ------------------------------------------------------
-- Server version	8.0.36

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
-- Table structure for table `adeudos`
--

DROP TABLE IF EXISTS `adeudos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `adeudos` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre_cliente` varchar(100) DEFAULT NULL,
  `recurso_prestado` varchar(100) DEFAULT NULL,
  `fecha_prestamo` date DEFAULT NULL,
  `fecha_devolucion_estimada` date DEFAULT NULL,
  `cantidad_prestada` int DEFAULT NULL,
  `estado_devolucion` varchar(50) DEFAULT NULL,
  `observaciones` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Tabla que almacenara los datos de adeudos';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `adeudos`
--

LOCK TABLES `adeudos` WRITE;
/*!40000 ALTER TABLE `adeudos` DISABLE KEYS */;
/*!40000 ALTER TABLE `adeudos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bitacora`
--

DROP TABLE IF EXISTS `bitacora`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bitacora` (
  `ID` int unsigned NOT NULL AUTO_INCREMENT,
  `Usuario` varchar(50) NOT NULL,
  `Operacion` enum('Create','Read','Update','Delete') NOT NULL,
  `Tabla` varchar(50) NOT NULL,
  `Descripcion` text NOT NULL,
  `Fecha_Hora` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `Estatus` bit(1) NOT NULL DEFAULT b'1',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=61449 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Tabla que almacenara los datos de la bitacora';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bitacora`
--

LOCK TABLES `bitacora` WRITE;
/*!40000 ALTER TABLE `bitacora` DISABLE KEYS */;
/*!40000 ALTER TABLE `bitacora` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `consumibles`
--

DROP TABLE IF EXISTS `consumibles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `consumibles` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) DEFAULT NULL,
  `cantidad` int DEFAULT NULL,
  `unidad_medida` varchar(50) DEFAULT NULL,
  `fecha_de_vencimiento` date DEFAULT NULL,
  `proveedor` varchar(100) DEFAULT NULL,
  `precio_unitario` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Tabla que almacenara los datos de consumibles';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `consumibles`
--

LOCK TABLES `consumibles` WRITE;
/*!40000 ALTER TABLE `consumibles` DISABLE KEYS */;
/*!40000 ALTER TABLE `consumibles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `equipos`
--

DROP TABLE IF EXISTS `equipos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `equipos` (
  `nombre_del_equipo` varchar(100) NOT NULL,
  `numero_de_serie` varchar(50) DEFAULT NULL,
  `marca` varchar(50) DEFAULT NULL,
  `modelo` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`nombre_del_equipo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Tabla que almacenara los datos de equipos';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `equipos`
--

LOCK TABLES `equipos` WRITE;
/*!40000 ALTER TABLE `equipos` DISABLE KEYS */;
INSERT INTO `equipos` VALUES ('Bicicleta estática','SER456','MarcaY','ModeloB'),('Caminadora','SER123','MarcaX','ModeloA'),('Máquina de pesas','SER789','MarcaZ','ModeloC');
/*!40000 ALTER TABLE `equipos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `equipos_existentes`
--

DROP TABLE IF EXISTS `equipos_existentes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `equipos_existentes` (
  `nombre_del_equipo` varchar(100) DEFAULT NULL,
  `descripcion_del_equipo` text,
  `ubicacion_fisica` varchar(100) DEFAULT NULL,
  `fecha_de_compra` date DEFAULT NULL,
  `fecha_de_instalacion` date DEFAULT NULL,
  `id` int NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Tabla que almacenara los datos de equipos existentes';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `equipos_existentes`
--

LOCK TABLES `equipos_existentes` WRITE;
/*!40000 ALTER TABLE `equipos_existentes` DISABLE KEYS */;
/*!40000 ALTER TABLE `equipos_existentes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mantenimiento`
--

DROP TABLE IF EXISTS `mantenimiento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mantenimiento` (
  `descripcion_del_trabajo_realizado` text,
  `fecha_de_mantenimiento` date DEFAULT NULL,
  `estado_del_equipo_despues_del_mantenimiento` varchar(100) DEFAULT NULL,
  `id` int NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Tabla que almacenara los datos de mantenimiento de equipos';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mantenimiento`
--

LOCK TABLES `mantenimiento` WRITE;
/*!40000 ALTER TABLE `mantenimiento` DISABLE KEYS */;
INSERT INTO `mantenimiento` VALUES ('Trabajo realizado automáticamente','2024-04-06','Excelente',1),('Trabajo realizado automáticamente','2024-04-06','Excelente',2),('Trabajo realizado automáticamente','2024-04-06','Malo',3);
/*!40000 ALTER TABLE `mantenimiento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `recursos_prestables`
--

DROP TABLE IF EXISTS `recursos_prestables`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `recursos_prestables` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) DEFAULT NULL,
  `descripcion` text,
  `cantidad_disponible` int DEFAULT NULL,
  `cantidad_total` int DEFAULT NULL,
  `estado` varchar(50) DEFAULT NULL,
  `fecha_adquisicion` date DEFAULT NULL,
  `proveedor` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Tabla que almacenara los datos de recursos prestables';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `recursos_prestables`
--

LOCK TABLES `recursos_prestables` WRITE;
/*!40000 ALTER TABLE `recursos_prestables` DISABLE KEYS */;
/*!40000 ALTER TABLE `recursos_prestables` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `vista_equipos`
--

DROP TABLE IF EXISTS `vista_equipos`;
/*!50001 DROP VIEW IF EXISTS `vista_equipos`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vista_equipos` AS SELECT 
 1 AS `nombre_del_equipo`,
 1 AS `numero_de_serie`,
 1 AS `marca`,
 1 AS `modelo`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vista_recursos_prestables`
--

DROP TABLE IF EXISTS `vista_recursos_prestables`;
/*!50001 DROP VIEW IF EXISTS `vista_recursos_prestables`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vista_recursos_prestables` AS SELECT 
 1 AS `id`,
 1 AS `nombre`,
 1 AS `descripcion`,
 1 AS `cantidad_disponible`,
 1 AS `cantidad_total`,
 1 AS `estado`,
 1 AS `fecha_adquisicion`,
 1 AS `proveedor`*/;
SET character_set_client = @saved_cs_client;

--
-- Dumping events for database 'recursos_materiales'
--

--
-- Dumping routines for database 'recursos_materiales'
--
/*!50003 DROP FUNCTION IF EXISTS `buscar_equipo_por_numero_serie` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `buscar_equipo_por_numero_serie`(num_serie VARCHAR(50)) RETURNS varchar(100) CHARSET utf8mb4
    DETERMINISTIC
BEGIN
    RETURN (
        SELECT nombre_del_equipo, numero_de_serie, marca, modelo
        FROM equipos
        WHERE numero_de_serie = num_serie
    );
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `buscar_mantenimiento_por_fecha` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `buscar_mantenimiento_por_fecha`(fecha_mantenimiento DATE) RETURNS varchar(100) CHARSET utf8mb4
    DETERMINISTIC
BEGIN
    RETURN (
        SELECT descripcion_del_trabajo_realizado, fecha_de_mantenimiento, estado_del_equipo_despues_del_mantenimiento
        FROM mantenimiento
        WHERE fecha_de_mantenimiento = fecha_mantenimiento
    );
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `buscar_recurso_prestable_por_nombre` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `buscar_recurso_prestable_por_nombre`(nombre_recurso VARCHAR(100)) RETURNS varchar(100) CHARSET utf8mb4
    DETERMINISTIC
BEGIN
    RETURN (
        SELECT id, nombre, descripcion, cantidad_disponible, cantidad_total, estado, fecha_adquisicion, proveedor
        FROM recursos_prestables
        WHERE nombre = nombre_recurso
    );
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `llenar_tabla_adeudos` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `llenar_tabla_adeudos`()
BEGIN
    -- Insertar datos en la tabla adeudos con valores predeterminados
    INSERT INTO adeudos (nombre_cliente, recurso_prestado, fecha_prestamo, fecha_devolucion_estimada, cantidad_prestada, estado_devolucion, observaciones)
    VALUES ('Juan Pérez', 'Máquina de pesas', CURDATE(), CURDATE() + INTERVAL 7 DAY, 1, 'Pendiente', 'Préstamo de máquina de pesas para entrenamiento personal');
    
    INSERT INTO adeudos (nombre_cliente, recurso_prestado, fecha_prestamo, fecha_devolucion_estimada, cantidad_prestada, estado_devolucion, observaciones)
    VALUES ('María García', 'Cinta de correr', CURDATE(), CURDATE() + INTERVAL 5 DAY, 1, 'Pendiente', 'Préstamo de cinta de correr para entrenamiento cardiovascular');
    
    INSERT INTO adeudos (nombre_cliente, recurso_prestado, fecha_prestamo, fecha_devolucion_estimada, cantidad_prestada, estado_devolucion, observaciones)
    VALUES ('Pedro Martínez', 'Banco de abdominales', CURDATE(), CURDATE() + INTERVAL 10 DAY, 1, 'Pendiente', 'Préstamo de banco de abdominales para ejercicios de abdomen');
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `llenar_tabla_consumibles` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `llenar_tabla_consumibles`()
BEGIN
    DECLARE i INT DEFAULT 0;
    WHILE i < 10 DO 
        INSERT INTO consumibles (nombre, cantidad, unidad_medida, fecha_de_vencimiento, proveedor)
        VALUES (
            CONCAT('Producto', i),
            FLOOR(RAND() * 100) + 1, -- Genera una cantidad aleatoria entre 1 y 100
            CASE FLOOR(RAND() * 3)  -- Genera una unidad de medida aleatoria
                WHEN 0 THEN 'Unidades'
                WHEN 1 THEN 'Litros'
                WHEN 2 THEN 'Kilos'
            END,
            CURDATE() + INTERVAL FLOOR(RAND() * 365) DAY, -- Fecha de vencimiento aleatoria dentro del próximo año
            CONCAT('Proveedor', i)
        );
        SET i = i + 1;
    END WHILE;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `llenar_tabla_equipos` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `llenar_tabla_equipos`()
BEGIN
    -- Insertar datos en la tabla equipos
    INSERT INTO equipos (nombre_del_equipo, numero_de_serie, marca, modelo)
    VALUES 
        ('Caminadora', 'SER123', 'MarcaX', 'ModeloA'),
        ('Bicicleta estática', 'SER456', 'MarcaY', 'ModeloB'),
        ('Máquina de pesas', 'SER789', 'MarcaZ', 'ModeloC');
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `llenar_tabla_equipos_existentes` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `llenar_tabla_equipos_existentes`()
BEGIN
    -- Insertar datos en la tabla equipos_existentes
    INSERT INTO equipos_existentes (nombre_del_equipo, descripcion_del_equipo, ubicacion_fisica, fecha_de_compra, fecha_de_instalacion)
    VALUES 
        ('Máquina de pesas', 'Descripción de la máquina de pesas', 'Gimnasio 1', '2024-03-24', '2024-03-25'),
        ('Cinta de correr', 'Descripción de la cinta de correr', 'Gimnasio 2', '2024-03-25', '2024-03-26'),
        ('Banco de abdominales', 'Descripción del banco de abdominales', 'Gimnasio 1', '2024-03-26', '2024-03-27');
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `llenar_tabla_mantenimiento` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `llenar_tabla_mantenimiento`()
BEGIN
    -- Insertar datos en la tabla mantenimiento con valores predeterminados o funciones
    INSERT INTO mantenimiento (descripcion_del_trabajo_realizado, fecha_de_mantenimiento, estado_del_equipo_despues_del_mantenimiento)
    VALUES ('Trabajo realizado automáticamente', CURRENT_DATE(), 'Malo');
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `llenar_tabla_recursos_prestables` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `llenar_tabla_recursos_prestables`()
BEGIN
    DECLARE i INT DEFAULT 0;
    WHILE i < 10 DO  -- Cambia 10 por la cantidad de filas que deseas insertar
        INSERT INTO recursos_prestables (nombre, descripcion, cantidad_disponible, cantidad_total, estado, fecha_adquisicion, proveedor, precio_unitario)
        VALUES (
            CONCAT('Recurso', i),
            CONCAT('Descripción del recurso ', i),
            FLOOR(RAND() * 100) + 1, -- Cantidad disponible aleatoria entre 1 y 100
            FLOOR(RAND() * 200) + 100, -- Cantidad total aleatoria entre 100 y 300
            CASE FLOOR(RAND() * 3)  -- Estado aleatorio
                WHEN 0 THEN 'Buen estado'
                WHEN 1 THEN 'Estado regular'
                WHEN 2 THEN 'Necesita reparación'
            END,
            CURDATE() - INTERVAL FLOOR(RAND() * 365) DAY, -- Fecha de adquisición aleatoria en el último año
            CONCAT('Proveedor', i),
            ROUND(RAND() * 100, 2)  -- Precio unitario aleatorio entre 0 y 100
        );
        SET i = i + 1;
    END WHILE;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Final view structure for view `vista_equipos`
--

/*!50001 DROP VIEW IF EXISTS `vista_equipos`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vista_equipos` AS select `equipos`.`nombre_del_equipo` AS `nombre_del_equipo`,`equipos`.`numero_de_serie` AS `numero_de_serie`,`equipos`.`marca` AS `marca`,`equipos`.`modelo` AS `modelo` from `equipos` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vista_recursos_prestables`
--

/*!50001 DROP VIEW IF EXISTS `vista_recursos_prestables`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vista_recursos_prestables` AS select `recursos_prestables`.`id` AS `id`,`recursos_prestables`.`nombre` AS `nombre`,`recursos_prestables`.`descripcion` AS `descripcion`,`recursos_prestables`.`cantidad_disponible` AS `cantidad_disponible`,`recursos_prestables`.`cantidad_total` AS `cantidad_total`,`recursos_prestables`.`estado` AS `estado`,`recursos_prestables`.`fecha_adquisicion` AS `fecha_adquisicion`,`recursos_prestables`.`proveedor` AS `proveedor` from `recursos_prestables` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-04-09 16:45:55
