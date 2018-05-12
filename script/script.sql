-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: manticora.ramocacho.cl    Database: ramocach_manticora
-- ------------------------------------------------------
-- Server version	5.5.51-38.2

create database sys_urgencias;
use sys_urgencias;

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
-- Table structure for table `sys_comunas`
--

DROP TABLE IF EXISTS `sys_comunas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_comunas` (
  `IdComuna` int(11) NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(75) DEFAULT NULL,
  `IdProvincia` int(11) DEFAULT NULL,
  PRIMARY KEY (`IdComuna`),
  KEY `FK_PROVIN_COMUNAS_idx` (`IdProvincia`),
  CONSTRAINT `FK_PROVIN_COMUNAS` FOREIGN KEY (`IdProvincia`) REFERENCES `sys_provincias` (`IdProvincia`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=346 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_comunas`
--

LOCK TABLES `sys_comunas` WRITE;
/*!40000 ALTER TABLE `sys_comunas` DISABLE KEYS */;
INSERT INTO `sys_comunas` VALUES (1,'Arica',1),(2,'Camarones',1),(3,'General Lagos',2),(4,'Putre',2),(5,'Alto Hospicio',3),(6,'Iquique',3),(7,'Camiña',4),(8,'Colchane',4),(9,'Huara',4),(10,'Pica',4),(11,'Pozo Almonte',4),(12,'Antofagasta',5),(13,'Mejillones',5),(14,'Sierra Gorda',5),(15,'Taltal',5),(16,'Calama',6),(17,'Ollague',6),(18,'San Pedro de Atacama',6),(19,'María Elena',7),(20,'Tocopilla',7),(21,'Chañaral',8),(22,'Diego de Almagro',8),(23,'Caldera',9),(24,'Copiapó',9),(25,'Tierra Amarilla',9),(26,'Alto del Carmen',10),(27,'Freirina',10),(28,'Huasco',10),(29,'Vallenar',10),(30,'Canela',11),(31,'Illapel',11),(32,'Los Vilos',11),(33,'Salamanca',11),(34,'Andacollo',12),(35,'Coquimbo',12),(36,'La Higuera',12),(37,'La Serena',12),(38,'Paihuaco',12),(39,'Vicuña',12),(40,'Combarbalá',13),(41,'Monte Patria',13),(42,'Ovalle',13),(43,'Punitaqui',13),(44,'Río Hurtado',13),(45,'Isla de Pascua',14),(46,'Calle Larga',15),(47,'Los Andes',15),(48,'Rinconada',15),(49,'San Esteban',15),(50,'La Ligua',16),(51,'Papudo',16),(52,'Petorca',16),(53,'Zapallar',16),(54,'Hijuelas',17),(55,'La Calera',17),(56,'La Cruz',17),(57,'Limache',17),(58,'Nogales',17),(59,'Olmué',17),(60,'Quillota',17),(61,'Algarrobo',18),(62,'Cartagena',18),(63,'El Quisco',18),(64,'El Tabo',18),(65,'San Antonio',18),(66,'Santo Domingo',18),(67,'Catemu',19),(68,'Llaillay',19),(69,'Panquehue',19),(70,'Putaendo',19),(71,'San Felipe',19),(72,'Santa María',19),(73,'Casablanca',20),(74,'Concón',20),(75,'Juan Fernández',20),(76,'Puchuncaví',20),(77,'Quilpué',20),(78,'Quintero',20),(79,'Valparaíso',20),(80,'Villa Alemana',20),(81,'Viña del Mar',20),(82,'Colina',21),(83,'Lampa',21),(84,'Tiltil',21),(85,'Pirque',22),(86,'Puente Alto',22),(87,'San José de Maipo',22),(88,'Buin',23),(89,'Calera de Tango',23),(90,'Paine',23),(91,'San Bernardo',23),(92,'Alhué',24),(93,'Curacaví',24),(94,'María Pinto',24),(95,'Melipilla',24),(96,'San Pedro',24),(97,'Cerrillos',25),(98,'Cerro Navia',25),(99,'Conchalí',25),(100,'El Bosque',25),(101,'Estación Central',25),(102,'Huechuraba',25),(103,'Independencia',25),(104,'La Cisterna',25),(105,'La Granja',25),(106,'La Florida',25),(107,'La Pintana',25),(108,'La Reina',25),(109,'Las Condes',25),(110,'Lo Barnechea',25),(111,'Lo Espejo',25),(112,'Lo Prado',25),(113,'Macul',25),(114,'Maipú',25),(115,'Ñuñoa',25),(116,'Pedro Aguirre Cerda',25),(117,'Peñalolén',25),(118,'Providencia',25),(119,'Pudahuel',25),(120,'Quilicura',25),(121,'Quinta Normal',25),(122,'Recoleta',25),(123,'Renca',25),(124,'San Miguel',25),(125,'San Joaquín',25),(126,'San Ramón',25),(127,'Santiago',25),(128,'Vitacura',25),(129,'El Monte',26),(130,'Isla de Maipo',26),(131,'Padre Hurtado',26),(132,'Peñaflor',26),(133,'Talagante',26),(134,'Codegua',27),(135,'Coínco',27),(136,'Coltauco',27),(137,'Doñihue',27),(138,'Graneros',27),(139,'Las Cabras',27),(140,'Machalí',27),(141,'Malloa',27),(142,'Mostazal',27),(143,'Olivar',27),(144,'Peumo',27),(145,'Pichidegua',27),(146,'Quinta de Tilcoco',27),(147,'Rancagua',27),(148,'Rengo',27),(149,'Requínoa',27),(150,'San Vicente de Tagua Tagua',27),(151,'La Estrella',28),(152,'Litueche',28),(153,'Marchihue',28),(154,'Navidad',28),(155,'Peredones',28),(156,'Pichilemu',28),(157,'Chépica',29),(158,'Chimbarongo',29),(159,'Lolol',29),(160,'Nancagua',29),(161,'Palmilla',29),(162,'Peralillo',29),(163,'Placilla',29),(164,'Pumanque',29),(165,'San Fernando',29),(166,'Santa Cruz',29),(167,'Cauquenes',30),(168,'Chanco',30),(169,'Pelluhue',30),(170,'Curicó',31),(171,'Hualañé',31),(172,'Licantén',31),(173,'Molina',31),(174,'Rauco',31),(175,'Romeral',31),(176,'Sagrada Familia',31),(177,'Teno',31),(178,'Vichuquén',31),(179,'Colbún',32),(180,'Linares',32),(181,'Longaví',32),(182,'Parral',32),(183,'Retiro',32),(184,'San Javier',32),(185,'Villa Alegre',32),(186,'Yerbas Buenas',32),(187,'Constitución',33),(188,'Curepto',33),(189,'Empedrado',33),(190,'Maule',33),(191,'Pelarco',33),(192,'Pencahue',33),(193,'Río Claro',33),(194,'San Clemente',33),(195,'San Rafael',33),(196,'Talca',33),(197,'Arauco',34),(198,'Cañete',34),(199,'Contulmo',34),(200,'Curanilahue',34),(201,'Lebu',34),(202,'Los Álamos',34),(203,'Tirúa',34),(204,'Alto Biobío',35),(205,'Antuco',35),(206,'Cabrero',35),(207,'Laja',35),(208,'Los Ángeles',35),(209,'Mulchén',35),(210,'Nacimiento',35),(211,'Negrete',35),(212,'Quilaco',35),(213,'Quilleco',35),(214,'San Rosendo',35),(215,'Santa Bárbara',35),(216,'Tucapel',35),(217,'Yumbel',35),(218,'Chiguayante',36),(219,'Concepción',36),(220,'Coronel',36),(221,'Florida',36),(222,'Hualpén',36),(223,'Hualqui',36),(224,'Lota',36),(225,'Penco',36),(226,'San Pedro de La Paz',36),(227,'Santa Juana',36),(228,'Talcahuano',36),(229,'Tomé',36),(230,'Bulnes',37),(231,'Chillán',37),(232,'Chillán Viejo',37),(233,'Cobquecura',37),(234,'Coelemu',37),(235,'Coihueco',37),(236,'El Carmen',37),(237,'Ninhue',37),(238,'Ñiquen',37),(239,'Pemuco',37),(240,'Pinto',37),(241,'Portezuelo',37),(242,'Quillón',37),(243,'Quirihue',37),(244,'Ránquil',37),(245,'San Carlos',37),(246,'San Fabián',37),(247,'San Ignacio',37),(248,'San Nicolás',37),(249,'Treguaco',37),(250,'Yungay',37),(251,'Carahue',38),(252,'Cholchol',38),(253,'Cunco',38),(254,'Curarrehue',38),(255,'Freire',38),(256,'Galvarino',38),(257,'Gorbea',38),(258,'Lautaro',38),(259,'Loncoche',38),(260,'Melipeuco',38),(261,'Nueva Imperial',38),(262,'Padre Las Casas',38),(263,'Perquenco',38),(264,'Pitrufquén',38),(265,'Pucón',38),(266,'Saavedra',38),(267,'Temuco',38),(268,'Teodoro Schmidt',38),(269,'Toltén',38),(270,'Vilcún',38),(271,'Villarrica',38),(272,'Angol',39),(273,'Collipulli',39),(274,'Curacautín',39),(275,'Ercilla',39),(276,'Lonquimay',39),(277,'Los Sauces',39),(278,'Lumaco',39),(279,'Purén',39),(280,'Renaico',39),(281,'Traiguén',39),(282,'Victoria',39),(283,'Corral',40),(284,'Lanco',40),(285,'Los Lagos',40),(286,'Máfil',40),(287,'Mariquina',40),(288,'Paillaco',40),(289,'Panguipulli',40),(290,'Valdivia',40),(291,'Futrono',41),(292,'La Unión',41),(293,'Lago Ranco',41),(294,'Río Bueno',41),(295,'Ancud',42),(296,'Castro',42),(297,'Chonchi',42),(298,'Curaco de Vélez',42),(299,'Dalcahue',42),(300,'Puqueldón',42),(301,'Queilén',42),(302,'Quemchi',42),(303,'Quellón',42),(304,'Quinchao',42),(305,'Calbuco',43),(306,'Cochamó',43),(307,'Fresia',43),(308,'Frutillar',43),(309,'Llanquihue',43),(310,'Los Muermos',43),(311,'Maullín',43),(312,'Puerto Montt',43),(313,'Puerto Varas',43),(314,'Osorno',44),(315,'Puero Octay',44),(316,'Purranque',44),(317,'Puyehue',44),(318,'Río Negro',44),(319,'San Juan de la Costa',44),(320,'San Pablo',44),(321,'Chaitén',45),(322,'Futaleufú',45),(323,'Hualaihué',45),(324,'Palena',45),(325,'Aisén',46),(326,'Cisnes',46),(327,'Guaitecas',46),(328,'Cochrane',47),(329,'O\'higgins',47),(330,'Tortel',47),(331,'Coihaique',48),(332,'Lago Verde',48),(333,'Chile Chico',49),(334,'Río Ibáñez',49),(335,'Antártica',50),(336,'Cabo de Hornos',50),(337,'Laguna Blanca',51),(338,'Punta Arenas',51),(339,'Río Verde',51),(340,'San Gregorio',51),(341,'Porvenir',52),(342,'Primavera',52),(343,'Timaukel',52),(344,'Natales',53),(345,'Torres del Paine',53);
/*!40000 ALTER TABLE `sys_comunas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_pacientes`
--

DROP TABLE IF EXISTS `sys_pacientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_pacientes` (
  `IdPaciente` int(11) NOT NULL AUTO_INCREMENT,
  `Run` int(11) DEFAULT NULL,
  `DV` char(1) DEFAULT NULL,
  `Nombre` varchar(45) DEFAULT NULL,
  `ApePaterno` varchar(45) DEFAULT NULL,
  `ApeMaterno` varchar(45) DEFAULT NULL,
  `IdSexo` int(11) DEFAULT NULL,
  `FecNacimiento` date DEFAULT NULL,
  `Domicilio` varchar(80) DEFAULT NULL,
  `Comuna` varchar(50) DEFAULT NULL,
  `Telefono` int(11) DEFAULT NULL,
  `Email` varchar(60) DEFAULT NULL,
  `IdPrevision` int(11) DEFAULT '2',
  PRIMARY KEY (`IdPaciente`),
  KEY `FK_PACIENTE_SEXO_idx` (`IdSexo`),
  CONSTRAINT `FK_PACIENTE_SEXO` FOREIGN KEY (`IdSexo`) REFERENCES `sys_sexo` (`IdSexo`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_pacientes`
--

LOCK TABLES `sys_pacientes` WRITE;
/*!40000 ALTER TABLE `sys_pacientes` DISABLE KEYS */;
INSERT INTO `sys_pacientes` VALUES (1,18130385,'1','Juan','Rivera','Vargas',1,'1992-08-06','Inglaterra 0918','Temuco',65142583,'jrivera.v@outlook.com',2),(2,18133454,'2','Andres','Cardenas','Ordenes',1,'1992-10-10','Chaiten 2329','Osorno',55555555,'andres@gmail.com',2),(4,17384854,'3','Pedro','Campos','Cardenas',4,'1992-02-10',NULL,NULL,23423455,'campos@gmail.com',2),(5,16754895,'4','Ivan','Peters','Silva',4,'1991-11-11',NULL,NULL,43534656,'ivan@gmail.com',2),(6,20938475,'5','John','Santiago','Perez',1,'1999-10-15',NULL,NULL,2147483647,'santiago@gmail.com',2),(7,15745934,'6','Eliana','Vargas','Herrera',2,'1988-10-14',NULL,NULL,4564565,'vargas@gmail.com',2),(8,16273845,'7','Carlita','Olivares','Rosales',2,'1998-08-10',NULL,NULL,85684563,'olivares@gmail.com',2),(13,77168175,'8','Juana','zuñiga',NULL,3,'2017-10-15',NULL,NULL,234234,'zunina@gmail.com',2),(17,18145838,'9','Pedro','Vargas','Vargas',1,NULL,NULL,'Ovalle',94567544,'vargas@gmail.com',2),(19,12312345,'3','Alexis','sanchez','fdgdf',1,NULL,'inglaterra','Calama',345345345,'aldedo@gmail.com',2),(21,15651616,'3','Cristian','Sauterel','Durán',1,'1983-06-05','Calle de mi casa 4350','Temuco',942339766,'csautereld@gmail.com',2),(22,18283845,'2','Pedro','Herrera','Urrutia',1,NULL,'colon','Freirina',956753456,'herrera@gmail.com',2),(24,77169819,'3','carla','zuñiga','fsdf',2,NULL,NULL,'Temuco',945678533,'zuniga@gmail.com',2),(25,15151551,'1','Juana','caceres','eslala',2,NULL,NULL,'Gorbea',945633456,'caceres@gmail.com',2),(26,18146956,'0','Pedro','peña','vargas',1,NULL,NULL,'Paillaco',961348581,'penaPedro@gmail.com',2),(27,17716817,'6','Marcelo','Oporto',NULL,NULL,'2017-10-03',NULL,NULL,2147483647,'oporto@gmail.com',2),(28,18234654,'7','pedro','Peralta',NULL,NULL,'1960-11-07',NULL,NULL,956136879,'Peralta@gmail.com',2),(29,181324567,NULL,'Mario','Lastra',NULL,NULL,'1992-10-03',NULL,NULL,4534534,'lastra@gmail.com',2),(30,181456783,NULL,'Matias','Lastra',NULL,NULL,'1992-10-09',NULL,NULL,3454566,'Munoz@gmail.com',2),(31,232342,NULL,'asdasd','asdasd',NULL,NULL,'1992-10-11',NULL,NULL,334445,'dkjsdj@gmail.com',2),(32,158950545,NULL,'miguel','aliante','panguinamun',1,'1984-05-15','jose joaquín perez 589','Osorno',45838136,'miguelaliantep@gmail.com',2),(33,17198827,NULL,'Edgard','Carrion','Silva',1,'1989-03-20','Puerto','Osorno',5454545,'sadkjasdk@gmail.com',2);
/*!40000 ALTER TABLE `sys_pacientes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_prevision`
--

DROP TABLE IF EXISTS `sys_prevision`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_prevision` (
  `IdPrevision` int(11) NOT NULL AUTO_INCREMENT,
  `DescPrevision` varchar(200) NOT NULL,
  PRIMARY KEY (`IdPrevision`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_prevision`
--

LOCK TABLES `sys_prevision` WRITE;
/*!40000 ALTER TABLE `sys_prevision` DISABLE KEYS */;
INSERT INTO `sys_prevision` VALUES (1,'FONASA A'),(2,'FONASA B'),(3,'FONASA C'),(4,'FONASA D'),(5,'ISAPRE');
/*!40000 ALTER TABLE `sys_prevision` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_provincias`
--

DROP TABLE IF EXISTS `sys_provincias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_provincias` (
  `IdProvincia` int(11) NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(45) DEFAULT NULL,
  `IdRegion` int(11) DEFAULT NULL,
  PRIMARY KEY (`IdProvincia`),
  KEY `FK_PROVIN_REGIONES_idx` (`IdRegion`),
  CONSTRAINT `FK_PROVIN_REGIONES` FOREIGN KEY (`IdRegion`) REFERENCES `sys_regiones` (`IdRegion`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_provincias`
--

LOCK TABLES `sys_provincias` WRITE;
/*!40000 ALTER TABLE `sys_provincias` DISABLE KEYS */;
INSERT INTO `sys_provincias` VALUES (1,'Arica',1),(2,'Parinacota',1),(3,'Iquique',2),(4,'El Tamarugal',2),(5,'Antofagasta',3),(6,'El Loa',3),(7,'Tocopilla',3),(8,'Chañaral',4),(9,'Copiapó',4),(10,'Huasco',4),(11,'Choapa',5),(12,'Elqui',5),(13,'Limarí',5),(14,'Isla de Pascua',6),(15,'Los Andes',6),(16,'Petorca',6),(17,'Quillota',6),(18,'San Antonio',6),(19,'San Felipe de Aconcagua',6),(20,'Valparaiso',6),(21,'Chacabuco',7),(22,'Cordillera',7),(23,'Maipo',7),(24,'Melipilla',7),(25,'Santiago',7),(26,'Talagante',7),(27,'Cachapoal',8),(28,'Cardenal Caro',8),(29,'Colchagua',8),(30,'Cauquenes',9),(31,'Curicó',9),(32,'Linares',9),(33,'Talca',9),(34,'Arauco',10),(35,'Bio Bío',10),(36,'Concepción',10),(37,'Ñuble',10),(38,'Cautín',11),(39,'Malleco',11),(40,'Valdivia',12),(41,'Ranco',12),(42,'Chiloé',13),(43,'Llanquihue',13),(44,'Osorno',13),(45,'Palena',13),(46,'Aisén',14),(47,'Capitán Prat',14),(48,'Coihaique',14),(49,'General Carrera',14),(50,'Antártica Chilena',15),(51,'Magallanes',15),(52,'Tierra del Fuego',15),(53,'Última Esperanza',15);
/*!40000 ALTER TABLE `sys_provincias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_regiones`
--

DROP TABLE IF EXISTS `sys_regiones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_regiones` (
  `IdRegion` int(11) NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(45) DEFAULT NULL,
  `Region_Ordinal` varchar(2) DEFAULT NULL,
  PRIMARY KEY (`IdRegion`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_regiones`
--

LOCK TABLES `sys_regiones` WRITE;
/*!40000 ALTER TABLE `sys_regiones` DISABLE KEYS */;
INSERT INTO `sys_regiones` VALUES (1,'Arica y Parinacota','XV'),(2,'Tarapacá','I'),(3,'Antofagasta','II'),(4,'Atacama','II'),(5,'Coquimbo','IV'),(6,'Valparaiso','V'),(7,'Metropolitana de Santiago','RM'),(8,'Libertador General Bernardo O\'Higgins','VI'),(9,'Maule','VI'),(10,'Biobío','VI'),(11,'La Araucanía','IX'),(12,'Los Ríos','XI'),(13,'Los Lagos','X'),(14,'Aisén del General Carlos Ibáñez del Campo','XI'),(15,'Magallanes y de la Antártica Chilena','XI');
/*!40000 ALTER TABLE `sys_regiones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_sexo`
--

DROP TABLE IF EXISTS `sys_sexo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_sexo` (
  `IdSexo` int(11) NOT NULL AUTO_INCREMENT,
  `Genero` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`IdSexo`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_sexo`
--

LOCK TABLES `sys_sexo` WRITE;
/*!40000 ALTER TABLE `sys_sexo` DISABLE KEYS */;
INSERT INTO `sys_sexo` VALUES (1,'Hombre'),(2,'Mujer'),(3,'Indeterminado'),(4,'Desconocido');
/*!40000 ALTER TABLE `sys_sexo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `urg_admision`
--

DROP TABLE IF EXISTS `urg_admision`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `urg_admision` (
  `IdAdmision` int(11) NOT NULL AUTO_INCREMENT,
  `IdPaciente` int(11) DEFAULT NULL,
  `IdTriage` int(11) DEFAULT NULL,
  `IdConsulta` int(11) DEFAULT NULL,
  `FecHorAdmision` datetime DEFAULT NULL,
  `Estado` smallint(1) DEFAULT NULL,
  PRIMARY KEY (`IdAdmision`),
  KEY `FK_ADMISION_PACIENTE_idx` (`IdPaciente`),
  KEY `FK_ADMISION_TRIAGE_idx` (`IdTriage`),
  KEY `FK_ADMISION_CONSULT_idx` (`IdConsulta`),
  CONSTRAINT `FK_ADMISION_CONSULT` FOREIGN KEY (`IdConsulta`) REFERENCES `urg_consulta` (`IdConsulta`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_ADMISION_PACIENTE` FOREIGN KEY (`IdPaciente`) REFERENCES `sys_pacientes` (`IdPaciente`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_ADMISION_TRIAGE` FOREIGN KEY (`IdTriage`) REFERENCES `urg_triage` (`IdTriage`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `urg_admision`
--

LOCK TABLES `urg_admision` WRITE;
/*!40000 ALTER TABLE `urg_admision` DISABLE KEYS */;
INSERT INTO `urg_admision` VALUES (16,2,2,19,'2017-10-08 20:10:56',1),(19,4,4,22,'2017-10-08 21:59:15',1),(32,5,2,23,'2017-10-08 22:06:27',1),(33,6,3,24,'2017-10-08 22:06:47',1),(34,7,3,25,'2017-10-08 22:06:54',1),(35,8,4,26,'2017-10-08 22:06:57',1),(49,1,5,40,'2017-10-12 17:59:45',1),(50,1,2,41,'2017-10-15 14:09:25',1),(51,1,2,42,'2017-10-15 14:43:02',1),(52,1,2,43,'2017-10-15 16:19:29',1),(53,26,4,44,'2017-10-15 16:21:51',1);
/*!40000 ALTER TABLE `urg_admision` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `urg_consulta`
--

DROP TABLE IF EXISTS `urg_consulta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `urg_consulta` (
  `IdConsulta` int(11) NOT NULL AUTO_INCREMENT,
  `Mot1` varchar(100) DEFAULT NULL,
  `Mot2` varchar(100) DEFAULT NULL,
  `Mot3` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`IdConsulta`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `urg_consulta`
--

LOCK TABLES `urg_consulta` WRITE;
/*!40000 ALTER TABLE `urg_consulta` DISABLE KEYS */;
INSERT INTO `urg_consulta` VALUES (9,'Dolor de Cabeza',NULL,NULL),(10,'Dolor de Cabeza',NULL,NULL),(11,'dfdsf',NULL,NULL),(12,'Dolor de Cabeza','Vomitos',NULL),(13,'Cancer',NULL,NULL),(14,'dfdf',NULL,NULL),(15,'Dolor de Cabeza',NULL,NULL),(16,'Cancer',NULL,NULL),(17,'Atropello',NULL,NULL),(18,'dsfdsfdsf',NULL,NULL),(19,'Atropello','Fractura Femur','Fractura Brazo Derecho'),(20,'dsdsfdsf',NULL,NULL),(21,'dsfsdfdsf',NULL,NULL),(22,'213123123',NULL,NULL),(23,'dd',NULL,NULL),(24,'ddd',NULL,NULL),(25,'dsfsdf',NULL,NULL),(26,'dsfds',NULL,NULL),(27,'dfdsf',NULL,NULL),(28,'dsfdsf',NULL,NULL),(29,'dsfdsf',NULL,NULL),(30,'dsfdsf',NULL,NULL),(31,'sdfdsf',NULL,NULL),(32,'dsfdsf',NULL,NULL),(33,'dsfdsf',NULL,NULL),(34,'sadsad',NULL,NULL),(35,'Cancer','Diarrea',NULL),(36,'sddsf','dsfds','dsfdf'),(37,'Dolor de Estomago',NULL,NULL),(38,'Dolor de Cabeza',NULL,NULL),(39,'diarrea','cancer',NULL),(40,'Diarrea',NULL,NULL),(41,'Atropello','Vomitos',NULL),(42,'Fractura',NULL,NULL),(43,'Fractura',NULL,NULL),(44,'Dolor de Cabeza',NULL,NULL);
/*!40000 ALTER TABLE `urg_consulta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `urg_triage`
--

DROP TABLE IF EXISTS `urg_triage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `urg_triage` (
  `IdTriage` int(11) NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(30) DEFAULT NULL,
  `Grado` char(2) DEFAULT NULL,
  PRIMARY KEY (`IdTriage`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `urg_triage`
--

LOCK TABLES `urg_triage` WRITE;
/*!40000 ALTER TABLE `urg_triage` DISABLE KEYS */;
INSERT INTO `urg_triage` VALUES (1,'Grave','C1'),(2,'Mediana Gravedad','C2'),(3,'Menos Grave','C3'),(4,'Leve','C4'),(5,'Atención General','C5');
/*!40000 ALTER TABLE `urg_triage` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-05-12  1:39:07
