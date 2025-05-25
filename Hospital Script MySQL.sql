-- MySQL dump 10.13  Distrib 8.0.42, for Win64 (x86_64)
--
-- Host: localhost    Database: hospital
-- ------------------------------------------------------
-- Server version	8.0.42

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
-- Table structure for table `cargo`
--

DROP TABLE IF EXISTS `cargo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cargo` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nome_cargo` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cargo`
--

LOCK TABLES `cargo` WRITE;
/*!40000 ALTER TABLE `cargo` DISABLE KEYS */;
INSERT INTO `cargo` VALUES (1,'Médico Residente'),(2,'Médico Assistente'),(3,'Médico Chefe');
/*!40000 ALTER TABLE `cargo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `consulta`
--

DROP TABLE IF EXISTS `consulta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `consulta` (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_paciente` int DEFAULT NULL,
  `id_medico` int DEFAULT NULL,
  `data_consulta` date DEFAULT NULL,
  `hora_consulta` time DEFAULT NULL,
  `valor_consulta` decimal(10,2) DEFAULT NULL,
  `id_convenio` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id_paciente` (`id_paciente`),
  KEY `id_medico` (`id_medico`),
  KEY `id_convenio` (`id_convenio`),
  CONSTRAINT `consulta_ibfk_1` FOREIGN KEY (`id_paciente`) REFERENCES `paciente` (`id`),
  CONSTRAINT `consulta_ibfk_2` FOREIGN KEY (`id_medico`) REFERENCES `medico` (`id`),
  CONSTRAINT `consulta_ibfk_3` FOREIGN KEY (`id_convenio`) REFERENCES `convenio` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `consulta`
--

LOCK TABLES `consulta` WRITE;
/*!40000 ALTER TABLE `consulta` DISABLE KEYS */;
INSERT INTO `consulta` VALUES (1,1,1,'2015-02-15','09:00:00',200.00,1),(2,2,2,'2015-03-10','10:30:00',250.00,2),(3,3,3,'2016-05-20','08:15:00',180.00,3),(4,4,4,'2016-07-12','11:45:00',220.00,NULL),(5,5,5,'2017-01-05','14:00:00',300.00,4),(6,6,6,'2017-02-17','15:30:00',210.00,NULL),(7,7,7,'2018-03-22','13:15:00',260.00,1),(8,8,8,'2018-04-30','16:45:00',230.00,2),(9,9,9,'2019-06-14','09:20:00',240.00,3),(10,10,10,'2019-08-01','10:00:00',190.00,4),(11,1,2,'2020-09-09','11:30:00',200.00,1),(12,2,3,'2020-10-11','12:00:00',210.00,2),(13,3,4,'2021-11-15','14:30:00',220.00,3),(14,4,5,'2021-12-20','15:00:00',230.00,4),(15,5,6,'2018-05-25','09:45:00',200.00,1),(16,6,7,'2019-07-07','10:15:00',210.00,2),(17,7,8,'2020-08-08','13:00:00',220.00,3),(18,8,9,'2016-09-09','14:15:00',230.00,4),(19,9,10,'2017-10-10','15:30:00',240.00,1),(20,10,1,'2018-11-11','16:45:00',250.00,2);
/*!40000 ALTER TABLE `consulta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `convenio`
--

DROP TABLE IF EXISTS `convenio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `convenio` (
  `id` int NOT NULL,
  `nome_convenio` varchar(50) DEFAULT NULL,
  `cnpj_convenio` char(14) DEFAULT NULL,
  `tempo_carencia` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `convenio`
--

LOCK TABLES `convenio` WRITE;
/*!40000 ALTER TABLE `convenio` DISABLE KEYS */;
INSERT INTO `convenio` VALUES (1,'Unimed','12345678000195',90),(2,'Bradesco Saúde','98765432000109',60),(3,'SulAmérica','11223344000166',30),(4,'Amil','55667788000133',120);
/*!40000 ALTER TABLE `convenio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `endereco`
--

DROP TABLE IF EXISTS `endereco`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `endereco` (
  `id` int NOT NULL AUTO_INCREMENT,
  `cep` int DEFAULT NULL,
  `rua` varchar(50) DEFAULT NULL,
  `bairro` varchar(50) DEFAULT NULL,
  `cidade` varchar(50) DEFAULT NULL,
  `estado` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `endereco`
--

LOCK TABLES `endereco` WRITE;
/*!40000 ALTER TABLE `endereco` DISABLE KEYS */;
INSERT INTO `endereco` VALUES (1,1001000,'Praça da Sé','Sé','São Paulo','SP'),(2,20040002,'Rua Alfredo Pujol','Lapa','Santos','SP'),(3,30140071,'Av. Afonso Pena','Centro','Belo Horizonte','MG'),(4,40010010,'Rua Chile','Centro','Salvador','BA'),(5,60010110,'Rua Santa Luzia','Centro','Fortaleza','CE'),(6,70040900,'Esplanada dos Ministérios','Zona Cívico-Administrativa','Brasília','DF'),(7,80020000,'Rua das Flores','Centro','Curitiba','PR'),(8,90010000,'Rua José do Patrocínio','Centro Histórico','Porto Alegre','RS');
/*!40000 ALTER TABLE `endereco` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `enfermeiro`
--

DROP TABLE IF EXISTS `enfermeiro`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `enfermeiro` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nome_enfermeiro` varchar(50) DEFAULT NULL,
  `cpf_enfermeiro` char(11) NOT NULL,
  `coren` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `cpf_enfermeiro` (`cpf_enfermeiro`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `enfermeiro`
--

LOCK TABLES `enfermeiro` WRITE;
/*!40000 ALTER TABLE `enfermeiro` DISABLE KEYS */;
INSERT INTO `enfermeiro` VALUES (1,'Enf. Luis Souza','12345678901','COREN-SP 1001'),(2,'Enfª Maria Vieira','23456789012','COREN-SP 1002'),(3,'Enf. André Gomes','34567890123','COREN-SP 1003'),(4,'Enfª Carla Mendes','45678901234','COREN-BA 2001'),(5,'Enf. Paulo Rocha','56789012345','COREN-MG 3001'),(6,'Enfª Patrícia Alves','67890123456','COREN-DF 4001'),(7,'Enf. Ricardo Lima','78901234567','COREN-PR 5001'),(8,'Enfª Juliana Ramos','89012345678','COREN-RS 6001'),(9,'Enf. Felipe Costa','90123456789','COREN-CE 7001'),(10,'Enfª Ana Torres','01234567890','COREN-SP 1004');
/*!40000 ALTER TABLE `enfermeiro` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `especialidade`
--

DROP TABLE IF EXISTS `especialidade`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `especialidade` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nome_especialidade` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `especialidade`
--

LOCK TABLES `especialidade` WRITE;
/*!40000 ALTER TABLE `especialidade` DISABLE KEYS */;
INSERT INTO `especialidade` VALUES (1,'Pediatria'),(2,'Clínica Geral'),(3,'Gastroenterologia'),(4,'Dermatologia'),(5,'Cardiologia'),(6,'Ortopedia'),(7,'Neurologia');
/*!40000 ALTER TABLE `especialidade` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `internacao`
--

DROP TABLE IF EXISTS `internacao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `internacao` (
  `id` int NOT NULL AUTO_INCREMENT,
  `data_entrada` date DEFAULT NULL,
  `data_prev_alta` date DEFAULT NULL,
  `data_alta` date DEFAULT NULL,
  `procedimento` varchar(200) DEFAULT NULL,
  `id_quarto` int DEFAULT NULL,
  `id_medico` int DEFAULT NULL,
  `id_paciente` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id_quarto` (`id_quarto`),
  KEY `id_medico` (`id_medico`),
  KEY `id_paciente` (`id_paciente`),
  CONSTRAINT `internacao_ibfk_1` FOREIGN KEY (`id_quarto`) REFERENCES `quarto` (`id`),
  CONSTRAINT `internacao_ibfk_2` FOREIGN KEY (`id_medico`) REFERENCES `medico` (`id`),
  CONSTRAINT `internacao_ibfk_3` FOREIGN KEY (`id_paciente`) REFERENCES `paciente` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `internacao`
--

LOCK TABLES `internacao` WRITE;
/*!40000 ALTER TABLE `internacao` DISABLE KEYS */;
INSERT INTO `internacao` VALUES (1,'2015-03-01','2015-03-10','2015-03-09','Colecistectomia',1,1,1),(2,'2015-06-15','2015-06-20','2015-06-19','Cateterismo cardíaco',2,5,5),(3,'2016-01-20','2016-01-25','2016-01-24','Endoscopia digestiva',3,3,3),(4,'2017-04-05','2017-04-12','2017-04-11','Tratamento de fratura',2,6,6),(5,'2018-07-10','2018-07-17','2018-07-16','Cirurgia dermatológica',3,4,4),(6,'2019-02-22','2019-03-01','2019-02-28','Angioplastia',1,9,9),(7,'2020-10-30','2020-11-05','2020-11-04','Pediatria intensiva',3,2,2),(8,'2021-12-01','2021-12-08','2021-12-07','Internação clínica',1,7,1),(9,'2016-08-18','2016-08-25','2016-08-24','Ortopedia avançada',2,8,6);
/*!40000 ALTER TABLE `internacao` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `internacaoenfermeiro`
--

DROP TABLE IF EXISTS `internacaoenfermeiro`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `internacaoenfermeiro` (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_internacao` int DEFAULT NULL,
  `id_enfermeiro` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id_internacao` (`id_internacao`),
  KEY `id_enfermeiro` (`id_enfermeiro`),
  CONSTRAINT `internacaoenfermeiro_ibfk_1` FOREIGN KEY (`id_internacao`) REFERENCES `internacao` (`id`),
  CONSTRAINT `internacaoenfermeiro_ibfk_2` FOREIGN KEY (`id_enfermeiro`) REFERENCES `enfermeiro` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `internacaoenfermeiro`
--

LOCK TABLES `internacaoenfermeiro` WRITE;
/*!40000 ALTER TABLE `internacaoenfermeiro` DISABLE KEYS */;
INSERT INTO `internacaoenfermeiro` VALUES (1,1,1),(2,1,2),(3,2,3),(4,2,4),(5,3,5),(6,3,6),(7,4,7),(8,4,8),(9,5,9),(10,5,10),(11,6,1),(12,6,3),(13,7,2),(14,7,4),(15,8,5),(16,8,7),(17,9,6),(18,9,8);
/*!40000 ALTER TABLE `internacaoenfermeiro` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `medicamento`
--

DROP TABLE IF EXISTS `medicamento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `medicamento` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nome_medicamento` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `medicamento`
--

LOCK TABLES `medicamento` WRITE;
/*!40000 ALTER TABLE `medicamento` DISABLE KEYS */;
INSERT INTO `medicamento` VALUES (1,'Dipirona'),(2,'Paracetamol'),(3,'Ibuprofeno'),(4,'Omeprazol'),(5,'Losartana'),(6,'Amoxicilina'),(7,'Captopril'),(8,'Metroclopramaida'),(9,'Cetirizina'),(10,'Clavulin'),(11,'Atorvastatina'),(12,'Diazepam');
/*!40000 ALTER TABLE `medicamento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `medico`
--

DROP TABLE IF EXISTS `medico`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `medico` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nome_medico` varchar(50) DEFAULT NULL,
  `crm_medico` varchar(20) NOT NULL,
  `cpf_medico` char(11) NOT NULL,
  `email_medico` varchar(50) DEFAULT NULL,
  `id_cargo` int DEFAULT NULL,
  `id_endereco` int DEFAULT NULL,
  `em_atividade` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `crm_medico` (`crm_medico`),
  UNIQUE KEY `cpf_medico` (`cpf_medico`),
  KEY `id_cargo` (`id_cargo`),
  KEY `id_endereco` (`id_endereco`),
  CONSTRAINT `medico_ibfk_1` FOREIGN KEY (`id_cargo`) REFERENCES `cargo` (`id`),
  CONSTRAINT `medico_ibfk_2` FOREIGN KEY (`id_endereco`) REFERENCES `endereco` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `medico`
--

LOCK TABLES `medico` WRITE;
/*!40000 ALTER TABLE `medico` DISABLE KEYS */;
INSERT INTO `medico` VALUES (1,'Dr. Carlos Silva','CRM-SP 12345','11122233344','carlos.silva@hospital.com',2,1,0),(2,'Dra. Ana Pereira','CRM-SP 54321','22233344455','ana.pereira@hospital.com',3,2,0),(3,'Dr. Rodrigo Santos','CRM-MG 67890','33344455566','rodrigo.santos@hospital.com',1,3,1),(4,'Dra. Fernanda Lima','CRM-BA 98765','44455566677','fernanda.lima@hospital.com',2,4,1),(5,'Dr. João Costa','CRM-CE 11223','55566677788','joao.costa@hospital.com',2,5,1),(6,'Dra. Patrícia Rocha','CRM-DF 33445','66677788899','patricia.rocha@hospital.com',1,6,1),(7,'Dr. Ricardo Alves','CRM-PR 55667','77788899900','ricardo.alves@hospital.com',3,7,1),(8,'Dra. Juliana Mendes','CRM-RS 77889','88899900011','juliana.mendes@hospital.com',2,8,1),(9,'Dr. Felipe Ramos','CRM-SP 99887','99900011122','felipe.ramos@hospital.com',2,1,1),(10,'Dra. Carla Torres','CRM-MG 88776','00011122233','carla.torres@hospital.com',1,2,1);
/*!40000 ALTER TABLE `medico` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `medicoespecialidade`
--

DROP TABLE IF EXISTS `medicoespecialidade`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `medicoespecialidade` (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_medico` int DEFAULT NULL,
  `id_especialidade` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id_medico` (`id_medico`),
  KEY `id_especialidade` (`id_especialidade`),
  CONSTRAINT `medicoespecialidade_ibfk_1` FOREIGN KEY (`id_medico`) REFERENCES `medico` (`id`),
  CONSTRAINT `medicoespecialidade_ibfk_2` FOREIGN KEY (`id_especialidade`) REFERENCES `especialidade` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `medicoespecialidade`
--

LOCK TABLES `medicoespecialidade` WRITE;
/*!40000 ALTER TABLE `medicoespecialidade` DISABLE KEYS */;
INSERT INTO `medicoespecialidade` VALUES (1,1,2),(2,1,5),(3,2,1),(4,3,3),(5,4,4),(6,5,6),(7,6,7),(8,7,2),(9,7,5),(10,8,1),(11,9,3),(12,10,4);
/*!40000 ALTER TABLE `medicoespecialidade` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `paciente`
--

DROP TABLE IF EXISTS `paciente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `paciente` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nome_paciente` varchar(50) DEFAULT NULL,
  `data_nascimento` date DEFAULT NULL,
  `email_paciente` varchar(50) DEFAULT NULL,
  `cpf_paciente` char(11) NOT NULL,
  `rg_paciente` varchar(25) DEFAULT NULL,
  `id_endereco` int DEFAULT NULL,
  `id_convenio` int DEFAULT NULL,
  `num_carteira` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `cpf_paciente` (`cpf_paciente`),
  UNIQUE KEY `email_paciente` (`email_paciente`),
  UNIQUE KEY `rg_paciente` (`rg_paciente`),
  KEY `id_endereco` (`id_endereco`),
  KEY `id_convenio` (`id_convenio`),
  CONSTRAINT `paciente_ibfk_1` FOREIGN KEY (`id_endereco`) REFERENCES `endereco` (`id`),
  CONSTRAINT `paciente_ibfk_2` FOREIGN KEY (`id_convenio`) REFERENCES `convenio` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `paciente`
--

LOCK TABLES `paciente` WRITE;
/*!40000 ALTER TABLE `paciente` DISABLE KEYS */;
INSERT INTO `paciente` VALUES (1,'Lucas Fernandes','1985-02-10','lucas.fernandes@ex.com','11122233344','MG-12.345.678',1,1,'UNI123'),(2,'Mariana Silva','1990-07-25','mariana.silva@ex.com','22233344455','SP-98.765.432',2,2,'BRA456'),(3,'Eduardo Souza','1975-11-03','eduardo.souza@ex.com','33344455566','BA-56.789.012',3,3,'SUL789'),(4,'Camila Costa','2000-01-15','camila.costa@ex.com','44455566677','CE-34.567.890',4,NULL,NULL),(5,'Thiago Pereira','1965-05-30','thiago.pereira@ex.com','55566677788','DF-23.456.789',5,4,'AMI012'),(6,'Fernanda Rocha','1988-12-12','fernanda.rocha@ex.com','66677788899','PR-45.678.901',6,NULL,NULL),(7,'Gustavo Lima','1995-03-22','gustavo.lima@ex.com','77788899900','RS-67.890.123',7,1,'UNI789'),(8,'Patrícia Alves','1978-08-18','patricia.alves@ex.com','88899900011','SP-11.223.344',8,2,'BRA012'),(9,'Rafael Mendes','1982-09-09','rafael.mendes@ex.com','99900011122','MG-22.334.455',1,3,'SUL345'),(10,'Aline Ramos','1993-04-04','aline.ramos@ex.com','00011122233','BA-33.445.566',2,4,'AMI345'),(11,'Bruno Correia','1980-06-06','bruno.correia@ex.com','11122233355','CE-44.556.677',3,NULL,NULL),(12,'Juliana Rocha','1972-10-10','juliana.rocha@ex.com','22233344466','DF-55.667.788',4,NULL,NULL),(13,'Marcelo Santos','1998-01-20','marcelo.santos@ex.com','33344455577','PR-66.778.899',5,NULL,NULL),(14,'Renata Alves','1983-02-28','renata.alves@ex.com','44455566688','RS-77.889.900',6,NULL,NULL),(15,'Pedro Gomes','1991-12-31','pedro.gomes@ex.com','55566677799','SP-88.990.011',7,NULL,NULL);
/*!40000 ALTER TABLE `paciente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `quarto`
--

DROP TABLE IF EXISTS `quarto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `quarto` (
  `id` int NOT NULL AUTO_INCREMENT,
  `num_quarto` int DEFAULT NULL,
  `id_tipo_quarto` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id_tipo_quarto` (`id_tipo_quarto`),
  CONSTRAINT `quarto_ibfk_1` FOREIGN KEY (`id_tipo_quarto`) REFERENCES `tipoquarto` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `quarto`
--

LOCK TABLES `quarto` WRITE;
/*!40000 ALTER TABLE `quarto` DISABLE KEYS */;
INSERT INTO `quarto` VALUES (1,101,1),(2,201,2),(3,301,3),(4,102,1),(5,202,2);
/*!40000 ALTER TABLE `quarto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `receita`
--

DROP TABLE IF EXISTS `receita`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `receita` (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_consulta` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id_consulta` (`id_consulta`),
  CONSTRAINT `receita_ibfk_1` FOREIGN KEY (`id_consulta`) REFERENCES `consulta` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `receita`
--

LOCK TABLES `receita` WRITE;
/*!40000 ALTER TABLE `receita` DISABLE KEYS */;
INSERT INTO `receita` VALUES (1,1),(2,2),(3,3),(4,5),(5,7),(6,8),(7,9),(8,10),(9,11),(10,12);
/*!40000 ALTER TABLE `receita` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `receitamedicamento`
--

DROP TABLE IF EXISTS `receitamedicamento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `receitamedicamento` (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_receita` int DEFAULT NULL,
  `id_medicamento` int DEFAULT NULL,
  `qtd_medicamento` int DEFAULT NULL,
  `instrucoes_medicamento` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id_receita` (`id_receita`),
  KEY `id_medicamento` (`id_medicamento`),
  CONSTRAINT `receitamedicamento_ibfk_1` FOREIGN KEY (`id_receita`) REFERENCES `receita` (`id`),
  CONSTRAINT `receitamedicamento_ibfk_2` FOREIGN KEY (`id_medicamento`) REFERENCES `medicamento` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `receitamedicamento`
--

LOCK TABLES `receitamedicamento` WRITE;
/*!40000 ALTER TABLE `receitamedicamento` DISABLE KEYS */;
INSERT INTO `receitamedicamento` VALUES (1,1,1,1,'Tomar após refeições'),(2,1,4,1,'Tomar antes de dormir'),(3,2,2,2,'A cada 6 horas'),(4,2,9,1,'Uma vez ao dia'),(5,3,6,1,'A cada 8 horas'),(6,3,3,1,'Quando sentir dor'),(7,4,5,1,'Uma vez ao dia'),(8,4,7,1,'Manhã e noite'),(9,5,8,1,'30 minutos antes do almoço'),(10,5,4,1,'No café da manhã'),(11,6,1,2,'A cada 4 horas'),(12,6,3,1,'Quando necessário'),(13,7,10,1,'A cada 12 horas'),(14,7,2,1,'Após as refeições'),(15,8,11,1,'Uma vez no dia'),(16,8,12,1,'Antes de dormir'),(17,9,6,1,'A cada 8 horas'),(18,9,4,1,'No jantar'),(19,10,1,1,'No pós-operatório'),(20,10,5,1,'Uma vez ao dia');
/*!40000 ALTER TABLE `receitamedicamento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `telefone_medico`
--

DROP TABLE IF EXISTS `telefone_medico`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `telefone_medico` (
  `id` int NOT NULL AUTO_INCREMENT,
  `codigo_pais` int DEFAULT NULL,
  `ddd` int DEFAULT NULL,
  `numero` int DEFAULT NULL,
  `id_medico` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id_medico` (`id_medico`),
  CONSTRAINT `telefone_medico_ibfk_1` FOREIGN KEY (`id_medico`) REFERENCES `medico` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `telefone_medico`
--

LOCK TABLES `telefone_medico` WRITE;
/*!40000 ALTER TABLE `telefone_medico` DISABLE KEYS */;
/*!40000 ALTER TABLE `telefone_medico` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `telefone_paciente`
--

DROP TABLE IF EXISTS `telefone_paciente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `telefone_paciente` (
  `id` int NOT NULL AUTO_INCREMENT,
  `codigo_pais` int DEFAULT NULL,
  `ddd` int DEFAULT NULL,
  `numero` int DEFAULT NULL,
  `id_paciente` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id_paciente` (`id_paciente`),
  CONSTRAINT `telefone_paciente_ibfk_1` FOREIGN KEY (`id_paciente`) REFERENCES `paciente` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `telefone_paciente`
--

LOCK TABLES `telefone_paciente` WRITE;
/*!40000 ALTER TABLE `telefone_paciente` DISABLE KEYS */;
/*!40000 ALTER TABLE `telefone_paciente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipoquarto`
--

DROP TABLE IF EXISTS `tipoquarto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tipoquarto` (
  `id` int NOT NULL AUTO_INCREMENT,
  `descricao` varchar(50) DEFAULT NULL,
  `valor_diaria` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipoquarto`
--

LOCK TABLES `tipoquarto` WRITE;
/*!40000 ALTER TABLE `tipoquarto` DISABLE KEYS */;
INSERT INTO `tipoquarto` VALUES (1,'Apartamento',500.00),(2,'Quarto Duplo',300.00),(3,'Enfermaria',150.00);
/*!40000 ALTER TABLE `tipoquarto` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-05-25 13:06:04
