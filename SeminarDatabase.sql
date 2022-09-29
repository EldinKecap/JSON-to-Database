-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: localhost    Database: seminar
-- ------------------------------------------------------
-- Server version	8.0.30

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
-- Table structure for table `contributors`
--

DROP TABLE IF EXISTS `contributors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contributors` (
  `id` varchar(255) NOT NULL,
  `honorific` varchar(45) DEFAULT NULL,
  `firstName` varchar(255) DEFAULT NULL,
  `lastName` varchar(255) DEFAULT NULL,
  `postNominal` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `company` varchar(255) DEFAULT NULL,
  `position` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `twitter` varchar(255) DEFAULT NULL,
  `facebook` varchar(255) DEFAULT NULL,
  `linkedIn` varchar(255) DEFAULT NULL,
  `instagram` varchar(255) DEFAULT NULL,
  `youtube` varchar(255) DEFAULT NULL,
  `bio` varchar(255) DEFAULT NULL,
  `bioHTML` varchar(255) DEFAULT NULL,
  `headshotUrl` varchar(255) DEFAULT NULL,
  `headshot2xUrl` varchar(255) DEFAULT NULL,
  `notes` varchar(255) DEFAULT NULL,
  `lastModified` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contributors`
--

LOCK TABLES `contributors` WRITE;
/*!40000 ALTER TABLE `contributors` DISABLE KEYS */;
INSERT INTO `contributors` VALUES ('3533097a-3a58-40d6-a86f-34c4639b814f',NULL,'Sally','McNally',NULL,'joe13@lineup.ninja',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','https://user-content.live.lineup.ninja/team/2db4c228-df00-4733-a8c2-fee0192120ef/ugc/e22a548b-0e0d-43cb-a9a3-807c392e091a','https://user-content.live.lineup.ninja/team/2db4c228-df00-4733-a8c2-fee0192120ef/ugc/b27a4740-acb0-4fe9-b56f-548083ce1035',NULL,'2022-09-06 17:38:36.930'),('976091d6-1892-409d-88f2-be33b12bd601',NULL,'Clare','O\'Hare',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','https://user-content.live.lineup.ninja/team/2db4c228-df00-4733-a8c2-fee0192120ef/ugc/1f09e3b9-fe5c-4683-944c-600b08c0c237','https://user-content.live.lineup.ninja/team/2db4c228-df00-4733-a8c2-fee0192120ef/ugc/b82ff70a-f2fd-472a-b38d-7b10120cf048',NULL,'2022-09-06 17:28:20.374'),('a12bfcd6-a652-4392-acee-5ea50f25ec2e',NULL,'Pops','Foster',NULL,'joe12@lineup.ninja',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','https://user-content.live.lineup.ninja/team/2db4c228-df00-4733-a8c2-fee0192120ef/ugc/2b97ae08-7968-40b1-a9a4-041bbc52392d','https://user-content.live.lineup.ninja/team/2db4c228-df00-4733-a8c2-fee0192120ef/ugc/96530a84-0d6a-4684-86a2-923868aca216',NULL,'2022-09-06 17:31:10.153'),('a59c02af-2fcd-41b1-ad4f-e0ebae08121b',NULL,'Dexter','Capricorn',NULL,'joe11@lineup.ninja',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','https://user-content.live.lineup.ninja/team/2db4c228-df00-4733-a8c2-fee0192120ef/ugc/be7e0f72-7460-4c2c-af71-679c5c52b224','https://user-content.live.lineup.ninja/team/2db4c228-df00-4733-a8c2-fee0192120ef/ugc/d192e727-3a8b-4761-8ece-41205b1e9370',NULL,'2022-09-06 17:39:21.850'),('d157bfc9-f956-42e6-8781-a745a31a71e6',NULL,'Bingo','Wiggins',NULL,'joe10@lineup.ninja',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','https://user-content.live.lineup.ninja/team/2db4c228-df00-4733-a8c2-fee0192120ef/ugc/e4493586-d8d1-484f-b8b0-6238039afef2','https://user-content.live.lineup.ninja/team/2db4c228-df00-4733-a8c2-fee0192120ef/ugc/9b737145-b575-4ce1-a4cc-1fcde313bd35',NULL,'2022-09-06 17:38:10.195');
/*!40000 ALTER TABLE `contributors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contributorsavailability`
--

DROP TABLE IF EXISTS `contributorsavailability`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contributorsavailability` (
  `id` int NOT NULL AUTO_INCREMENT,
  `contributorsId` varchar(255) DEFAULT NULL,
  `startDate` datetime DEFAULT NULL,
  `endDate` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `contributorsId` (`contributorsId`),
  CONSTRAINT `contributorsavailability_ibfk_1` FOREIGN KEY (`contributorsId`) REFERENCES `contributors` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contributorsavailability`
--

LOCK TABLES `contributorsavailability` WRITE;
/*!40000 ALTER TABLE `contributorsavailability` DISABLE KEYS */;
INSERT INTO `contributorsavailability` VALUES (1,'a59c02af-2fcd-41b1-ad4f-e0ebae08121b','2021-09-21 08:00:00','2021-09-21 16:00:00'),(2,'a59c02af-2fcd-41b1-ad4f-e0ebae08121b','2021-09-22 08:00:00','2021-09-22 16:00:00'),(3,'a59c02af-2fcd-41b1-ad4f-e0ebae08121b','2021-09-23 08:00:00','2021-09-23 16:00:00'),(4,'a59c02af-2fcd-41b1-ad4f-e0ebae08121b','2021-09-24 08:00:00','2021-09-24 16:00:00'),(5,'3533097a-3a58-40d6-a86f-34c4639b814f','2021-09-21 08:00:00','2021-09-21 16:00:00'),(6,'3533097a-3a58-40d6-a86f-34c4639b814f','2021-09-22 08:00:00','2021-09-22 16:00:00'),(7,'3533097a-3a58-40d6-a86f-34c4639b814f','2021-09-23 08:00:00','2021-09-23 16:00:00'),(8,'3533097a-3a58-40d6-a86f-34c4639b814f','2021-09-24 08:00:00','2021-09-24 16:00:00'),(9,'d157bfc9-f956-42e6-8781-a745a31a71e6','2021-09-21 08:00:00','2021-09-21 16:00:00'),(10,'d157bfc9-f956-42e6-8781-a745a31a71e6','2021-09-22 08:00:00','2021-09-22 16:00:00'),(11,'d157bfc9-f956-42e6-8781-a745a31a71e6','2021-09-23 08:00:00','2021-09-23 16:00:00'),(12,'d157bfc9-f956-42e6-8781-a745a31a71e6','2021-09-24 08:00:00','2021-09-24 16:00:00'),(13,'a12bfcd6-a652-4392-acee-5ea50f25ec2e','2021-09-21 08:00:00','2021-09-21 16:00:00'),(14,'a12bfcd6-a652-4392-acee-5ea50f25ec2e','2021-09-22 08:00:00','2021-09-22 16:00:00'),(15,'a12bfcd6-a652-4392-acee-5ea50f25ec2e','2021-09-23 08:00:00','2021-09-23 16:00:00'),(16,'a12bfcd6-a652-4392-acee-5ea50f25ec2e','2021-09-24 08:00:00','2021-09-24 16:00:00'),(17,'976091d6-1892-409d-88f2-be33b12bd601','2021-09-21 08:00:00','2021-09-21 16:00:00'),(18,'976091d6-1892-409d-88f2-be33b12bd601','2021-09-22 08:00:00','2021-09-22 16:00:00'),(19,'976091d6-1892-409d-88f2-be33b12bd601','2021-09-23 08:00:00','2021-09-23 16:00:00'),(20,'976091d6-1892-409d-88f2-be33b12bd601','2021-09-24 08:00:00','2021-09-24 16:00:00');
/*!40000 ALTER TABLE `contributorsavailability` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contributorslabels`
--

DROP TABLE IF EXISTS `contributorslabels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contributorslabels` (
  `id` int NOT NULL AUTO_INCREMENT,
  `contributorsId` varchar(255) DEFAULT NULL,
  `labelsId` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `contributorsId` (`contributorsId`),
  KEY `labelsId` (`labelsId`),
  CONSTRAINT `contributorslabels_ibfk_1` FOREIGN KEY (`contributorsId`) REFERENCES `contributors` (`id`),
  CONSTRAINT `contributorslabels_ibfk_2` FOREIGN KEY (`labelsId`) REFERENCES `labels` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contributorslabels`
--

LOCK TABLES `contributorslabels` WRITE;
/*!40000 ALTER TABLE `contributorslabels` DISABLE KEYS */;
/*!40000 ALTER TABLE `contributorslabels` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contributorssessions`
--

DROP TABLE IF EXISTS `contributorssessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contributorssessions` (
  `id` int NOT NULL AUTO_INCREMENT,
  `contributorsId` varchar(255) DEFAULT NULL,
  `sessionsId` varchar(255) DEFAULT NULL,
  `role` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `contributorsId` (`contributorsId`),
  KEY `sessionsId` (`sessionsId`),
  CONSTRAINT `contributorssessions_ibfk_1` FOREIGN KEY (`contributorsId`) REFERENCES `contributors` (`id`),
  CONSTRAINT `contributorssessions_ibfk_2` FOREIGN KEY (`sessionsId`) REFERENCES `sessions` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=73 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contributorssessions`
--

LOCK TABLES `contributorssessions` WRITE;
/*!40000 ALTER TABLE `contributorssessions` DISABLE KEYS */;
INSERT INTO `contributorssessions` VALUES (49,'a59c02af-2fcd-41b1-ad4f-e0ebae08121b','2b21adaf-61a7-4a76-b8be-a820ecdcaa0e',NULL),(50,'a59c02af-2fcd-41b1-ad4f-e0ebae08121b','0ee83ea2-35fc-4f50-91c9-de7602bbf93b',NULL),(51,'a59c02af-2fcd-41b1-ad4f-e0ebae08121b','e0206eb4-180e-42b7-b430-3940926d5c82',NULL),(52,'a59c02af-2fcd-41b1-ad4f-e0ebae08121b','ddb2ca3e-ef92-4bed-b8a5-cb3b4bb35b75',NULL),(53,'a59c02af-2fcd-41b1-ad4f-e0ebae08121b','f9d7344f-85ba-4339-a5ed-1e2a8cde01b1',NULL),(54,'3533097a-3a58-40d6-a86f-34c4639b814f','9a2a73cd-d9b7-426c-a51a-73897b5a9993',NULL),(55,'3533097a-3a58-40d6-a86f-34c4639b814f','bb6402ec-fa84-410a-8e57-23f46c5e3ca4',NULL),(56,'3533097a-3a58-40d6-a86f-34c4639b814f','f372cc81-85b7-411a-a5ba-bbd3da7922cb',NULL),(57,'3533097a-3a58-40d6-a86f-34c4639b814f','b35544c5-2b18-4ddd-91bd-4fc257d2c06c',NULL),(58,'3533097a-3a58-40d6-a86f-34c4639b814f','e22f7275-5cfa-4961-86dd-76281c7adc44',NULL),(59,'d157bfc9-f956-42e6-8781-a745a31a71e6','97bbf95b-6572-4916-a55f-aaf2b02bf4ad',NULL),(60,'d157bfc9-f956-42e6-8781-a745a31a71e6','9a2a73cd-d9b7-426c-a51a-73897b5a9993',NULL),(61,'d157bfc9-f956-42e6-8781-a745a31a71e6','84b7c252-cb0e-4eab-8539-8e2b9acdc9cd',NULL),(62,'d157bfc9-f956-42e6-8781-a745a31a71e6','5decf8ef-57f1-4d06-8325-5068629c9b5c',NULL),(63,'d157bfc9-f956-42e6-8781-a745a31a71e6','f9d7344f-85ba-4339-a5ed-1e2a8cde01b1',NULL),(64,'a12bfcd6-a652-4392-acee-5ea50f25ec2e','0ee83ea2-35fc-4f50-91c9-de7602bbf93b',NULL),(65,'a12bfcd6-a652-4392-acee-5ea50f25ec2e','9a2a73cd-d9b7-426c-a51a-73897b5a9993',NULL),(66,'a12bfcd6-a652-4392-acee-5ea50f25ec2e','f511b781-8022-458d-8468-a1470bfc2607',NULL),(67,'a12bfcd6-a652-4392-acee-5ea50f25ec2e','bb2ad60e-5385-4bad-9f41-3d512fbde8d8',NULL),(68,'a12bfcd6-a652-4392-acee-5ea50f25ec2e','8173865d-2cd5-4d08-b0b2-956a6d9580ec',NULL),(69,'a12bfcd6-a652-4392-acee-5ea50f25ec2e','84b7c252-cb0e-4eab-8539-8e2b9acdc9cd',NULL),(70,'976091d6-1892-409d-88f2-be33b12bd601','9a2a73cd-d9b7-426c-a51a-73897b5a9993',NULL),(71,'976091d6-1892-409d-88f2-be33b12bd601','95e0f4b1-c239-4556-b6fa-df0fdb7cdadf',NULL),(72,'976091d6-1892-409d-88f2-be33b12bd601','f7189f9e-bcaa-4d8b-81d3-6acb19748232',NULL);
/*!40000 ALTER TABLE `contributorssessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `labels`
--

DROP TABLE IF EXISTS `labels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `labels` (
  `ID` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `descriptionHTML` varchar(255) NOT NULL DEFAULT '',
  `lastModified` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `labels`
--

LOCK TABLES `labels` WRITE;
/*!40000 ALTER TABLE `labels` DISABLE KEYS */;
INSERT INTO `labels` VALUES ('01cc437d-d861-47e1-9ddf-8544ae8ee738','Food allergy',NULL,'','2021-03-25 12:52:33'),('0b28279d-f79e-4013-8dd7-66ca2637d440','Follow up speaker agreement query',NULL,'','2021-03-25 12:52:11'),('2761ac6d-3540-466a-babc-644c156caa93','Registered?',NULL,'','2021-03-25 12:52:52'),('460dc634-da30-4f2f-bc2e-2e20bfdd35ee','EMEA',NULL,'','2021-04-27 12:21:53'),('ca56b13d-cbe1-4732-a8c4-5bb396bef4ee','Disclosure?',NULL,'','2021-03-25 12:53:58'),('f2bb162c-998c-4168-b14b-bf2f6192b22c','Intellectual Property Release received?',NULL,'','2021-03-25 12:53:36');
/*!40000 ALTER TABLE `labels` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `locations`
--

DROP TABLE IF EXISTS `locations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `locations` (
  `ID` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `descriptionHTML` varchar(255) NOT NULL DEFAULT '',
  `lastModified` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `locations`
--

LOCK TABLES `locations` WRITE;
/*!40000 ALTER TABLE `locations` DISABLE KEYS */;
INSERT INTO `locations` VALUES ('4d4ec8bb-704e-4693-bcec-8946c884faa1','2 Strategy Theatre',NULL,'','2020-06-19 00:51:42'),('6f913aaf-0e56-47cc-ab1f-cbfa261b68fd','5 Finance Theatre',NULL,'','2020-06-19 00:51:31'),('9e617308-4058-49c4-bbd0-278c35bbde3f','4 Marketing Theatre',NULL,'','2020-06-19 00:51:31'),('d8b0578a-7c3a-4173-a6ed-450530c5223b','1 Main Theatre',NULL,'','2020-06-19 15:15:13'),('f8cd93af-75a0-4b34-b224-128265145525','3 Technology Theatre',NULL,'','2020-06-19 09:10:05');
/*!40000 ALTER TABLE `locations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `locationsavailability`
--

DROP TABLE IF EXISTS `locationsavailability`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `locationsavailability` (
  `id` int NOT NULL AUTO_INCREMENT,
  `locationsId` varchar(255) DEFAULT NULL,
  `startDate` datetime DEFAULT NULL,
  `endDate` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `locationsId` (`locationsId`),
  CONSTRAINT `locationsavailability_ibfk_1` FOREIGN KEY (`locationsId`) REFERENCES `locations` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `locationsavailability`
--

LOCK TABLES `locationsavailability` WRITE;
/*!40000 ALTER TABLE `locationsavailability` DISABLE KEYS */;
INSERT INTO `locationsavailability` VALUES (1,'4d4ec8bb-704e-4693-bcec-8946c884faa1','2021-09-22 08:00:00','2021-09-22 16:00:00'),(2,'4d4ec8bb-704e-4693-bcec-8946c884faa1','2021-09-21 08:00:00','2021-09-21 16:00:00'),(3,'9e617308-4058-49c4-bbd0-278c35bbde3f','2021-09-22 08:00:00','2021-09-22 16:00:00'),(4,'9e617308-4058-49c4-bbd0-278c35bbde3f','2021-09-21 08:00:00','2021-09-21 16:00:00'),(5,'6f913aaf-0e56-47cc-ab1f-cbfa261b68fd','2021-09-22 08:00:00','2021-09-22 16:00:00'),(6,'6f913aaf-0e56-47cc-ab1f-cbfa261b68fd','2021-09-21 08:00:00','2021-09-21 16:00:00'),(7,'f8cd93af-75a0-4b34-b224-128265145525','2021-09-22 08:00:00','2021-09-22 16:00:00'),(8,'f8cd93af-75a0-4b34-b224-128265145525','2021-09-21 08:00:00','2021-09-21 16:00:00'),(9,'d8b0578a-7c3a-4173-a6ed-450530c5223b','2021-09-22 08:00:00','2021-09-22 16:00:00'),(10,'d8b0578a-7c3a-4173-a6ed-450530c5223b','2021-09-21 08:00:00','2021-09-21 16:00:00');
/*!40000 ALTER TABLE `locationsavailability` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `locationslabels`
--

DROP TABLE IF EXISTS `locationslabels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `locationslabels` (
  `id` int NOT NULL AUTO_INCREMENT,
  `locationsId` varchar(255) DEFAULT NULL,
  `labelsId` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `locationsId` (`locationsId`),
  KEY `labelsId` (`labelsId`),
  CONSTRAINT `locationslabels_ibfk_1` FOREIGN KEY (`locationsId`) REFERENCES `locations` (`ID`),
  CONSTRAINT `locationslabels_ibfk_2` FOREIGN KEY (`labelsId`) REFERENCES `labels` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `locationslabels`
--

LOCK TABLES `locationslabels` WRITE;
/*!40000 ALTER TABLE `locationslabels` DISABLE KEYS */;
/*!40000 ALTER TABLE `locationslabels` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `locationstracks`
--

DROP TABLE IF EXISTS `locationstracks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `locationstracks` (
  `id` int NOT NULL AUTO_INCREMENT,
  `locationsId` varchar(255) DEFAULT NULL,
  `tracksId` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `locationsId` (`locationsId`),
  KEY `tracksId` (`tracksId`),
  CONSTRAINT `locationstracks_ibfk_1` FOREIGN KEY (`locationsId`) REFERENCES `locations` (`ID`),
  CONSTRAINT `locationstracks_ibfk_2` FOREIGN KEY (`tracksId`) REFERENCES `tracks` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `locationstracks`
--

LOCK TABLES `locationstracks` WRITE;
/*!40000 ALTER TABLE `locationstracks` DISABLE KEYS */;
INSERT INTO `locationstracks` VALUES (1,'4d4ec8bb-704e-4693-bcec-8946c884faa1','97a60c23-050a-4704-84ba-9f1e9f0f5475'),(2,'9e617308-4058-49c4-bbd0-278c35bbde3f','e067d3fa-693c-42aa-8844-09453056080b'),(3,'6f913aaf-0e56-47cc-ab1f-cbfa261b68fd','a2a7e781-b26a-4edb-aee6-b6d8d69cb100'),(4,'f8cd93af-75a0-4b34-b224-128265145525','5e7b28de-b17d-42bd-b2f6-60232d4d987e'),(5,'d8b0578a-7c3a-4173-a6ed-450530c5223b','a2a7e781-b26a-4edb-aee6-b6d8d69cb100'),(6,'d8b0578a-7c3a-4173-a6ed-450530c5223b','e067d3fa-693c-42aa-8844-09453056080b'),(7,'d8b0578a-7c3a-4173-a6ed-450530c5223b','97a60c23-050a-4704-84ba-9f1e9f0f5475'),(8,'d8b0578a-7c3a-4173-a6ed-450530c5223b','5e7b28de-b17d-42bd-b2f6-60232d4d987e');
/*!40000 ALTER TABLE `locationstracks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `resources`
--

DROP TABLE IF EXISTS `resources`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `resources` (
  `ID` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `descriptionHTML` varchar(255) NOT NULL DEFAULT '',
  `lastModified` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `resources`
--

LOCK TABLES `resources` WRITE;
/*!40000 ALTER TABLE `resources` DISABLE KEYS */;
INSERT INTO `resources` VALUES ('1980610d-47cf-425c-8d08-d47148c1d165','Headphones',NULL,'','2020-06-19 15:15:48'),('461b0bf0-8586-460b-aaf0-b9b83c845b3b','Mobile mic',NULL,'','2020-06-18 23:48:23'),('ba73ed7d-8931-4550-9850-bcbce0e3f8e7','Lectern & mic',NULL,'','2020-06-18 23:48:18'),('d530fe4f-2cc7-451c-97bc-43ef4eb36685','Wi-fi',NULL,'','2020-06-18 23:47:47'),('f7fbd1d7-12f5-49e6-9ca2-b133374a1266','Projector',NULL,'','2020-06-18 23:47:41');
/*!40000 ALTER TABLE `resources` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `resourceslabels`
--

DROP TABLE IF EXISTS `resourceslabels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `resourceslabels` (
  `id` int NOT NULL AUTO_INCREMENT,
  `resourcesId` varchar(255) DEFAULT NULL,
  `labelsId` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `resourcesId` (`resourcesId`),
  KEY `labelsId` (`labelsId`),
  CONSTRAINT `resourceslabels_ibfk_1` FOREIGN KEY (`resourcesId`) REFERENCES `resources` (`ID`),
  CONSTRAINT `resourceslabels_ibfk_2` FOREIGN KEY (`labelsId`) REFERENCES `labels` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `resourceslabels`
--

LOCK TABLES `resourceslabels` WRITE;
/*!40000 ALTER TABLE `resourceslabels` DISABLE KEYS */;
/*!40000 ALTER TABLE `resourceslabels` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `resourcessessions`
--

DROP TABLE IF EXISTS `resourcessessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `resourcessessions` (
  `id` int NOT NULL AUTO_INCREMENT,
  `resourcesId` varchar(255) DEFAULT NULL,
  `sessionsId` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `resourcesId` (`resourcesId`),
  KEY `sessionsId` (`sessionsId`),
  CONSTRAINT `resourcessessions_ibfk_1` FOREIGN KEY (`resourcesId`) REFERENCES `resources` (`ID`),
  CONSTRAINT `resourcessessions_ibfk_2` FOREIGN KEY (`sessionsId`) REFERENCES `sessions` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `resourcessessions`
--

LOCK TABLES `resourcessessions` WRITE;
/*!40000 ALTER TABLE `resourcessessions` DISABLE KEYS */;
INSERT INTO `resourcessessions` VALUES (1,'1980610d-47cf-425c-8d08-d47148c1d165','9a2a73cd-d9b7-426c-a51a-73897b5a9993');
/*!40000 ALTER TABLE `resourcessessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sessions`
--

DROP TABLE IF EXISTS `sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sessions` (
  `ID` varchar(255) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `code` varchar(5) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `descriptionHTML` varchar(255) NOT NULL DEFAULT '',
  `track` varchar(255) DEFAULT NULL,
  `color` varchar(45) DEFAULT NULL,
  `startDate` datetime DEFAULT NULL,
  `endDate` datetime DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `notes` varchar(255) DEFAULT NULL,
  `lastModified` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`),
  KEY `track` (`track`),
  KEY `location` (`location`),
  CONSTRAINT `sessions_ibfk_1` FOREIGN KEY (`track`) REFERENCES `tracks` (`ID`),
  CONSTRAINT `sessions_ibfk_2` FOREIGN KEY (`location`) REFERENCES `locations` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sessions`
--

LOCK TABLES `sessions` WRITE;
/*!40000 ALTER TABLE `sessions` DISABLE KEYS */;
INSERT INTO `sessions` VALUES ('080e3bf7-72d1-46cb-b1e8-e2fe4ec092e2','Sponsored session 5','ss5',NULL,'',NULL,NULL,'2021-09-22 10:00:00','2021-09-22 10:30:00','4d4ec8bb-704e-4693-bcec-8946c884faa1',NULL,'2020-06-19 00:52:04'),('0ee83ea2-35fc-4f50-91c9-de7602bbf93b','Keynote 2','kn2',NULL,'','5e7b28de-b17d-42bd-b2f6-60232d4d987e',NULL,'2021-09-21 15:00:00','2021-09-21 15:30:00','d8b0578a-7c3a-4173-a6ed-450530c5223b',NULL,'2022-09-06 17:39:22'),('0fa35d3d-d721-4abf-b480-d628ec929bd3','Sponsored session 7','ss7',NULL,'',NULL,NULL,'2021-09-22 10:00:00','2021-09-22 10:30:00','9e617308-4058-49c4-bbd0-278c35bbde3f',NULL,'2020-06-19 00:52:00'),('2b21adaf-61a7-4a76-b8be-a820ecdcaa0e','Sponsored session 2','ss2',NULL,'','5e7b28de-b17d-42bd-b2f6-60232d4d987e',NULL,'2021-09-21 10:00:00','2021-09-21 10:30:00','f8cd93af-75a0-4b34-b224-128265145525',NULL,'2022-09-06 17:39:22'),('5decf8ef-57f1-4d06-8325-5068629c9b5c','Editorial Session 1','es1',NULL,'','97a60c23-050a-4704-84ba-9f1e9f0f5475',NULL,'2021-09-21 09:00:00','2021-09-21 09:30:00','4d4ec8bb-704e-4693-bcec-8946c884faa1',NULL,'2022-09-06 17:38:10'),('6fa4d40b-2d40-4bd6-8449-858f90141e7e','Sponsored session 6','ss6',NULL,'',NULL,NULL,'2021-09-22 10:00:00','2021-09-22 10:30:00','f8cd93af-75a0-4b34-b224-128265145525',NULL,'2020-06-19 00:52:01'),('8173865d-2cd5-4d08-b0b2-956a6d9580ec','keynote 3','kn3',NULL,'','e067d3fa-693c-42aa-8844-09453056080b',NULL,'2021-09-22 11:00:00','2021-09-22 11:30:00','d8b0578a-7c3a-4173-a6ed-450530c5223b',NULL,'2022-09-06 17:31:10'),('84b7c252-cb0e-4eab-8539-8e2b9acdc9cd','Editorial Session 2','es2',NULL,'','97a60c23-050a-4704-84ba-9f1e9f0f5475',NULL,'2021-09-22 09:00:00','2021-09-22 09:30:00','4d4ec8bb-704e-4693-bcec-8946c884faa1',NULL,'2022-09-06 17:38:10'),('95e0f4b1-c239-4556-b6fa-df0fdb7cdadf','Editorial Session 6','es6',NULL,'','e067d3fa-693c-42aa-8844-09453056080b',NULL,'2021-09-22 09:00:00','2021-09-22 09:30:00','9e617308-4058-49c4-bbd0-278c35bbde3f',NULL,'2022-09-06 17:28:20'),('97bbf95b-6572-4916-a55f-aaf2b02bf4ad','Sponsored session 1','ss1',NULL,'','97a60c23-050a-4704-84ba-9f1e9f0f5475',NULL,'2021-09-21 10:00:00','2021-09-21 10:30:00','4d4ec8bb-704e-4693-bcec-8946c884faa1',NULL,'2022-09-06 17:38:10'),('9a2a73cd-d9b7-426c-a51a-73897b5a9993','Keynote 1','kn1',NULL,'','97a60c23-050a-4704-84ba-9f1e9f0f5475',NULL,'2021-09-21 11:00:00','2021-09-21 11:30:00','d8b0578a-7c3a-4173-a6ed-450530c5223b',NULL,'2022-09-06 17:38:37'),('b35544c5-2b18-4ddd-91bd-4fc257d2c06c','Editorial Session 3','es3',NULL,'','5e7b28de-b17d-42bd-b2f6-60232d4d987e',NULL,'2021-09-21 09:00:00','2021-09-21 09:30:00','f8cd93af-75a0-4b34-b224-128265145525',NULL,'2022-09-06 17:38:37'),('bb2ad60e-5385-4bad-9f41-3d512fbde8d8','Editorial Session 7','es7',NULL,'','a2a7e781-b26a-4edb-aee6-b6d8d69cb100',NULL,'2021-09-21 09:00:00','2021-09-21 09:30:00','6f913aaf-0e56-47cc-ab1f-cbfa261b68fd',NULL,'2022-09-06 17:31:10'),('bb6402ec-fa84-410a-8e57-23f46c5e3ca4','Sponsored session 4','ss4',NULL,'','a2a7e781-b26a-4edb-aee6-b6d8d69cb100',NULL,'2021-09-21 10:00:00','2021-09-21 10:30:00','6f913aaf-0e56-47cc-ab1f-cbfa261b68fd',NULL,'2022-09-06 17:38:37'),('ddb2ca3e-ef92-4bed-b8a5-cb3b4bb35b75','Editorial Session 5','es5',NULL,'','e067d3fa-693c-42aa-8844-09453056080b',NULL,'2021-09-21 09:00:00','2021-09-21 09:30:00','9e617308-4058-49c4-bbd0-278c35bbde3f',NULL,'2022-09-06 17:39:22'),('e0206eb4-180e-42b7-b430-3940926d5c82','Editorial Session 8','es8',NULL,'','a2a7e781-b26a-4edb-aee6-b6d8d69cb100',NULL,'2021-09-22 09:00:00','2021-09-22 09:30:00','6f913aaf-0e56-47cc-ab1f-cbfa261b68fd',NULL,'2022-09-06 17:39:22'),('e22f7275-5cfa-4961-86dd-76281c7adc44','Editorial Session 4','es4',NULL,'','5e7b28de-b17d-42bd-b2f6-60232d4d987e',NULL,'2021-09-22 09:00:00','2021-09-22 09:30:00','f8cd93af-75a0-4b34-b224-128265145525',NULL,'2022-09-06 17:38:37'),('f372cc81-85b7-411a-a5ba-bbd3da7922cb','keynote 4','kn4',NULL,'','a2a7e781-b26a-4edb-aee6-b6d8d69cb100',NULL,'2021-09-22 15:00:00','2021-09-22 15:30:00','d8b0578a-7c3a-4173-a6ed-450530c5223b',NULL,'2022-09-06 17:38:37'),('f511b781-8022-458d-8468-a1470bfc2607','Sponsored session 3','ss3',NULL,'','e067d3fa-693c-42aa-8844-09453056080b',NULL,'2021-09-21 10:00:00','2021-09-21 10:30:00','9e617308-4058-49c4-bbd0-278c35bbde3f',NULL,'2022-09-06 17:31:10'),('f7189f9e-bcaa-4d8b-81d3-6acb19748232','Sponsored session 8','ss8',NULL,'',NULL,NULL,'2021-09-22 10:00:00','2021-09-22 10:30:00','6f913aaf-0e56-47cc-ab1f-cbfa261b68fd',NULL,'2022-09-06 17:28:20'),('f9d7344f-85ba-4339-a5ed-1e2a8cde01b1',NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,'2022-09-25 00:58:56');
/*!40000 ALTER TABLE `sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sessionslabels`
--

DROP TABLE IF EXISTS `sessionslabels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sessionslabels` (
  `id` int NOT NULL AUTO_INCREMENT,
  `sessionsId` varchar(255) DEFAULT NULL,
  `labelsId` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `sessionsId` (`sessionsId`),
  KEY `labelsId` (`labelsId`),
  CONSTRAINT `sessionslabels_ibfk_1` FOREIGN KEY (`sessionsId`) REFERENCES `sessions` (`ID`),
  CONSTRAINT `sessionslabels_ibfk_2` FOREIGN KEY (`labelsId`) REFERENCES `labels` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sessionslabels`
--

LOCK TABLES `sessionslabels` WRITE;
/*!40000 ALTER TABLE `sessionslabels` DISABLE KEYS */;
/*!40000 ALTER TABLE `sessionslabels` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tracks`
--

DROP TABLE IF EXISTS `tracks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tracks` (
  `ID` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `descriptionHTML` varchar(255) NOT NULL DEFAULT '',
  `color` varchar(45) DEFAULT NULL,
  `lastModified` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tracks`
--

LOCK TABLES `tracks` WRITE;
/*!40000 ALTER TABLE `tracks` DISABLE KEYS */;
INSERT INTO `tracks` VALUES ('5e7b28de-b17d-42bd-b2f6-60232d4d987e','Technology',NULL,'',NULL,'2022-09-06 16:46:02'),('97a60c23-050a-4704-84ba-9f1e9f0f5475','Strategy',NULL,'',NULL,'2022-09-06 16:45:54'),('a2a7e781-b26a-4edb-aee6-b6d8d69cb100','Finance',NULL,'',NULL,'2022-09-06 16:46:20'),('e067d3fa-693c-42aa-8844-09453056080b','Marketing',NULL,'',NULL,'2022-09-06 16:46:14');
/*!40000 ALTER TABLE `tracks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trackslabels`
--

DROP TABLE IF EXISTS `trackslabels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `trackslabels` (
  `id` int NOT NULL AUTO_INCREMENT,
  `tracksId` varchar(255) DEFAULT NULL,
  `labelsId` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `tracksId` (`tracksId`),
  KEY `labelsId` (`labelsId`),
  CONSTRAINT `trackslabels_ibfk_1` FOREIGN KEY (`tracksId`) REFERENCES `tracks` (`ID`),
  CONSTRAINT `trackslabels_ibfk_2` FOREIGN KEY (`labelsId`) REFERENCES `labels` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trackslabels`
--

LOCK TABLES `trackslabels` WRITE;
/*!40000 ALTER TABLE `trackslabels` DISABLE KEYS */;
/*!40000 ALTER TABLE `trackslabels` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-09-25  1:57:43
