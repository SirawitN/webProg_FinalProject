-- MySQL dump 10.13  Distrib 8.0.27, for Linux (x86_64)
--
-- Host: localhost    Database: finalProg_dev
-- ------------------------------------------------------
-- Server version	8.0.27-0ubuntu0.20.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `active_storage_attachments`
--

DROP TABLE IF EXISTS `active_storage_attachments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `active_storage_attachments` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `record_type` varchar(255) NOT NULL,
  `record_id` bigint NOT NULL,
  `blob_id` bigint NOT NULL,
  `created_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_active_storage_attachments_uniqueness` (`record_type`,`record_id`,`name`,`blob_id`),
  KEY `index_active_storage_attachments_on_blob_id` (`blob_id`),
  CONSTRAINT `fk_rails_c3b3935057` FOREIGN KEY (`blob_id`) REFERENCES `active_storage_blobs` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=69 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `active_storage_attachments`
--

LOCK TABLES `active_storage_attachments` WRITE;
/*!40000 ALTER TABLE `active_storage_attachments` DISABLE KEYS */;
INSERT INTO `active_storage_attachments` VALUES (22,'picture','Product',4,22,'2021-12-07 17:13:48'),(23,'image','ActiveStorage::VariantRecord',18,23,'2021-12-07 17:13:48'),(24,'picture','Product',7,24,'2021-12-07 17:14:02'),(25,'image','ActiveStorage::VariantRecord',19,25,'2021-12-07 17:14:02'),(32,'image','ActiveStorage::VariantRecord',24,32,'2021-12-08 06:19:34'),(33,'image','ActiveStorage::VariantRecord',25,33,'2021-12-08 06:19:34'),(37,'image','ActiveStorage::VariantRecord',29,37,'2021-12-08 06:32:11'),(38,'image','ActiveStorage::VariantRecord',30,38,'2021-12-08 06:32:11'),(44,'picture','Product',16,44,'2021-12-09 06:52:07'),(45,'image','ActiveStorage::VariantRecord',34,45,'2021-12-09 06:52:07'),(48,'picture','Product',17,48,'2021-12-11 10:37:14'),(49,'image','ActiveStorage::VariantRecord',36,49,'2021-12-11 10:37:14'),(50,'picture','Store',10,50,'2021-12-12 04:30:15'),(51,'image','ActiveStorage::VariantRecord',37,51,'2021-12-12 04:30:23'),(56,'picture','Store',7,56,'2021-12-12 09:15:41'),(57,'image','ActiveStorage::VariantRecord',40,57,'2021-12-12 09:15:42'),(58,'picture','Product',12,58,'2021-12-12 09:20:02'),(59,'image','ActiveStorage::VariantRecord',41,59,'2021-12-12 09:20:02'),(60,'picture','Product',13,60,'2021-12-12 09:25:10'),(61,'image','ActiveStorage::VariantRecord',42,61,'2021-12-12 09:25:10'),(65,'picture','Store',6,65,'2021-12-12 09:32:29'),(66,'image','ActiveStorage::VariantRecord',44,66,'2021-12-12 09:32:29'),(67,'picture','Product',18,67,'2021-12-12 09:37:48'),(68,'image','ActiveStorage::VariantRecord',45,68,'2021-12-12 09:37:48');
/*!40000 ALTER TABLE `active_storage_attachments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `active_storage_blobs`
--

DROP TABLE IF EXISTS `active_storage_blobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `active_storage_blobs` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `key` varchar(255) NOT NULL,
  `filename` varchar(255) NOT NULL,
  `content_type` varchar(255) DEFAULT NULL,
  `metadata` text,
  `service_name` varchar(255) NOT NULL,
  `byte_size` bigint NOT NULL,
  `checksum` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_active_storage_blobs_on_key` (`key`)
) ENGINE=InnoDB AUTO_INCREMENT=69 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `active_storage_blobs`
--

LOCK TABLES `active_storage_blobs` WRITE;
/*!40000 ALTER TABLE `active_storage_blobs` DISABLE KEYS */;
INSERT INTO `active_storage_blobs` VALUES (22,'7fxrdv3zudhypo1ek6a2jyi2ztz1','42-alu-space-sport-black-nc-1up.jpeg','image/jpeg','{\"identified\":true,\"width\":1673,\"height\":1353,\"analyzed\":true}','local',250142,'63NiBM0IU9zRHVYIjw+P3A==','2021-12-07 17:13:48'),(23,'7wtuc5qjovrciqr3l3ilaqc8rlut','42-alu-space-sport-black-nc-1up.jpeg','image/jpeg','{\"identified\":true,\"width\":138,\"height\":112,\"analyzed\":true}','local',5875,'uVRx+KMmPbh476C7tNZbKQ==','2021-12-07 17:13:48'),(24,'ewmi0ku12rbyhmyvyu00u254uktx','MKUY3_VW_34FR+watch-44-alum-silver-nc-se_VW_34FR_WF_CO_GEO_TH.jpeg','image/jpeg','{\"identified\":true,\"width\":750,\"height\":712,\"analyzed\":true}','local',91901,'75NrMpo5fgItYBMzHqObEQ==','2021-12-07 17:14:02'),(25,'u5lmidiwfvvc2s0kqks8vc3azcn5','MKUY3_VW_34FR+watch-44-alum-silver-nc-se_VW_34FR_WF_CO_GEO_TH.jpeg','image/jpeg','{\"identified\":true,\"width\":138,\"height\":131,\"analyzed\":true}','local',8503,'zDqNwGzYJyneNOUBmetwkQ==','2021-12-07 17:14:02'),(32,'5zcj9vh6p0xxe68bc3bpl2stnpvj','42-alu-space-sport-black-nc-1up.jpeg','image/jpeg','{\"identified\":true,\"width\":333,\"height\":269,\"analyzed\":true}','local',19729,'ZREZR2K6d2Fi3ezUD7ZqHw==','2021-12-08 06:19:33'),(33,'ox86a06qrgkugflqa5o43qdminoj','MKUY3_VW_34FR+watch-44-alum-silver-nc-se_VW_34FR_WF_CO_GEO_TH.jpeg','image/jpeg','{\"identified\":true,\"width\":283,\"height\":269,\"analyzed\":true}','local',23226,'UJNwJkyzb6reO2asTB1+Vw==','2021-12-08 06:19:34'),(37,'y3nz6r8e0gg3xx3fcrydujbgl53v','42-alu-space-sport-black-nc-1up.jpeg','image/jpeg','{\"identified\":true,\"width\":249,\"height\":201,\"analyzed\":true}','local',13170,'uY1ZoVqhmmJ/cCpr018uPA==','2021-12-08 06:32:11'),(38,'s6nmujb6v7p5610ruzow2dssvw04','MKUY3_VW_34FR+watch-44-alum-silver-nc-se_VW_34FR_WF_CO_GEO_TH.jpeg','image/jpeg','{\"identified\":true,\"width\":249,\"height\":236,\"analyzed\":true}','local',19652,'h0lc0TsTgIdw2M4eccEacQ==','2021-12-08 06:32:11'),(44,'umua0y9x64xltmfxzfbe8srcycw3','ML7P3_VW_34FR+watch-41-alum-green-nc-7s_VW_34FR_WF_CO.jpeg','image/jpeg','{\"identified\":true,\"width\":700,\"height\":700,\"analyzed\":true}','local',112323,'I3ZtrlrAEkrpU/Vp960pwg==','2021-12-09 06:52:07'),(45,'lerq1s8wk9s4cyszjue3a6nhcsxx','ML7P3_VW_34FR+watch-41-alum-green-nc-7s_VW_34FR_WF_CO.jpeg','image/jpeg','{\"identified\":true,\"width\":138,\"height\":138,\"analyzed\":true}','local',8829,'XvW8KLElCG143BFCmbekXQ==','2021-12-09 06:52:07'),(48,'mccr9i9zp5dd83ot5g80avz1ap38','cover-web.png','image/png','{\"identified\":true,\"width\":280,\"height\":420,\"analyzed\":true}','local',68651,'ETjdFcENK+lL29TUiQMsiw==','2021-12-11 10:37:14'),(49,'009xc65sh8bi38tycxutcqyv2u02','cover-web.png','image/png','{\"identified\":true,\"width\":95,\"height\":143,\"analyzed\":true}','local',14743,'T5YozX1MHIPdrtmkmT4iBQ==','2021-12-11 10:37:14'),(50,'1pjx8omyoeg67jkuxa8bz9gl0gg1','42-alu-space-sport-black-nc-1up.jpeg','image/jpeg','{\"identified\":true,\"width\":1673,\"height\":1353,\"analyzed\":true}','local',250142,'63NiBM0IU9zRHVYIjw+P3A==','2021-12-12 04:30:15'),(51,'4sq1d7483wadaq9ziucfrdwqphnc','42-alu-space-sport-black-nc-1up.jpeg','image/jpeg','{\"identified\":true,\"width\":200,\"height\":162,\"analyzed\":true}','local',9962,'5n2LW49qDYbkiW0XyPq7Xg==','2021-12-12 04:30:23'),(56,'a00brkvupk6vy37klssg3j9odddo','Samsung_logo_blue.png','image/png','{\"identified\":true,\"width\":2272,\"height\":744,\"analyzed\":true}','local',55025,'QV+LQF2NWrD8zEt09VKlBw==','2021-12-12 09:15:41'),(57,'pj677p1nzvv82cug4j8xre4nudrr','Samsung_logo_blue.png','image/png','{\"identified\":true,\"width\":200,\"height\":65,\"analyzed\":true}','local',8117,'lmfUsyc6bhV7hAEebPh22Q==','2021-12-12 09:15:42'),(58,'ehkr2ca8k59xlhqdoiwhnbsd03eg','71ZLp2rQbqL._AC_SS450_.jpg','image/jpeg','{\"identified\":true,\"width\":450,\"height\":450,\"analyzed\":true}','local',29846,'XGBoQxm4xeis6C3eUtTD6Q==','2021-12-12 09:20:02'),(59,'5ys41nedlcdo3ccm5tlosblb7l0d','71ZLp2rQbqL._AC_SS450_.jpg','image/jpeg','{\"identified\":true,\"width\":138,\"height\":138,\"analyzed\":true}','local',6410,'MJEKafg6MulmlzorMCP70Q==','2021-12-12 09:20:02'),(60,'tyrtpk004ckf46zgpfbp21rmsnke','packshot-galaxy-s21-ultra-5g-gblack_11.png','image/png','{\"identified\":true,\"width\":350,\"height\":350,\"analyzed\":true}','local',126096,'CG55NiqIpNkFtmvFeFHPLg==','2021-12-12 09:25:10'),(61,'d2gcie2myxaiyhx2lq1tvxxs1830','packshot-galaxy-s21-ultra-5g-gblack_11.png','image/png','{\"identified\":true,\"width\":138,\"height\":138,\"analyzed\":true}','local',18194,'s38jNvg3o3l0JWZvcGaShQ==','2021-12-12 09:25:10'),(65,'ekdyn3oqalp2qpab37h6rbq9x04s','Apple_logo_black.svg.png','image/png','{\"identified\":true,\"width\":647,\"height\":768,\"analyzed\":true}','local',12769,'2Fl7ZAvayy51ioKNqPDzUQ==','2021-12-12 09:32:29'),(66,'naah0gkrmim65cnz7lyaxbfnkq42','Apple_logo_black.svg.png','image/png','{\"identified\":true,\"width\":168,\"height\":200,\"analyzed\":true}','local',3605,'n5tu+PndUFeKPsplD9Iq2Q==','2021-12-12 09:32:29'),(67,'8pah2p9q8lzhfaea185fydbvxy8h','zfold3_carousel_mainsinglekv_mo.jpg','image/jpeg','{\"identified\":true,\"width\":720,\"height\":720,\"analyzed\":true}','local',85914,'umNj0SmhJIa0jm1sjee9jg==','2021-12-12 09:37:48'),(68,'14eie5z6xdf18dw8n1qtydppdbb7','zfold3_carousel_mainsinglekv_mo.jpg','image/jpeg','{\"identified\":true,\"width\":138,\"height\":138,\"analyzed\":true}','local',7200,'5QCcFOY1hvvRfbfdUmL1Kg==','2021-12-12 09:37:48');
/*!40000 ALTER TABLE `active_storage_blobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `active_storage_variant_records`
--

DROP TABLE IF EXISTS `active_storage_variant_records`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `active_storage_variant_records` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `blob_id` bigint NOT NULL,
  `variation_digest` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_active_storage_variant_records_uniqueness` (`blob_id`,`variation_digest`),
  CONSTRAINT `fk_rails_993965df05` FOREIGN KEY (`blob_id`) REFERENCES `active_storage_blobs` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `active_storage_variant_records`
--

LOCK TABLES `active_storage_variant_records` WRITE;
/*!40000 ALTER TABLE `active_storage_variant_records` DISABLE KEYS */;
INSERT INTO `active_storage_variant_records` VALUES (18,22,'9CgMu7whzPCBkEIYxrqnfT3NfR0='),(29,22,'lDuFQoJL1xY0n9Wv9yxkiDeOdQs='),(24,22,'LURC4GayvyewLQMsCTCZ1Nmjghc='),(19,24,'9CgMu7whzPCBkEIYxrqnfT3NfR0='),(30,24,'lDuFQoJL1xY0n9Wv9yxkiDeOdQs='),(25,24,'LURC4GayvyewLQMsCTCZ1Nmjghc='),(34,44,'9CgMu7whzPCBkEIYxrqnfT3NfR0='),(36,48,'gb6SgrAT9GuSTkIikfSq/VHvEuI='),(37,50,'/LYY/Pav1IZa3JJDcXgyiifgf8s='),(40,56,'hI+tDtvE0IjoWfC+hG8sAyT2gQ4='),(41,58,'6U67D6Hxe/z9safC8wgxx/AT8Zo='),(42,60,'gb6SgrAT9GuSTkIikfSq/VHvEuI='),(44,65,'hI+tDtvE0IjoWfC+hG8sAyT2gQ4='),(45,67,'6U67D6Hxe/z9safC8wgxx/AT8Zo=');
/*!40000 ALTER TABLE `active_storage_variant_records` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ar_internal_metadata`
--

DROP TABLE IF EXISTS `ar_internal_metadata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ar_internal_metadata` (
  `key` varchar(255) NOT NULL,
  `value` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ar_internal_metadata`
--

LOCK TABLES `ar_internal_metadata` WRITE;
/*!40000 ALTER TABLE `ar_internal_metadata` DISABLE KEYS */;
INSERT INTO `ar_internal_metadata` VALUES ('environment','development','2021-12-05 08:40:06.371642','2021-12-05 08:40:06.371642'),('schema_sha1','d1d70687ab158c30305262fae68214f8ec51cdb0','2021-12-05 08:40:06.385404','2021-12-05 08:40:06.385404');
/*!40000 ALTER TABLE `ar_internal_metadata` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cart_items`
--

DROP TABLE IF EXISTS `cart_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cart_items` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `cart_id` bigint NOT NULL,
  `product_id` bigint NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `quantity` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_cart_items_on_cart_id` (`cart_id`),
  KEY `index_cart_items_on_product_id` (`product_id`),
  CONSTRAINT `fk_rails_681a180e84` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`),
  CONSTRAINT `fk_rails_6cdb1f0139` FOREIGN KEY (`cart_id`) REFERENCES `carts` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cart_items`
--

LOCK TABLES `cart_items` WRITE;
/*!40000 ALTER TABLE `cart_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `cart_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `carts`
--

DROP TABLE IF EXISTS `carts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `carts` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` bigint NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_carts_on_user_id` (`user_id`),
  CONSTRAINT `fk_rails_ea59a35211` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `carts`
--

LOCK TABLES `carts` WRITE;
/*!40000 ALTER TABLE `carts` DISABLE KEYS */;
INSERT INTO `carts` VALUES (1,6,'2021-12-08 14:31:24.211915','2021-12-08 14:31:24.211915'),(2,9,'2021-12-11 10:37:42.323295','2021-12-11 10:37:42.323295'),(3,5,'2021-12-11 16:10:00.408737','2021-12-11 16:10:00.408737');
/*!40000 ALTER TABLE `carts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `follows`
--

DROP TABLE IF EXISTS `follows`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `follows` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `store_id` bigint NOT NULL,
  `user_id` bigint NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_follows_on_store_id` (`store_id`),
  KEY `index_follows_on_user_id` (`user_id`),
  CONSTRAINT `fk_rails_32479bd030` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  CONSTRAINT `fk_rails_3975726f96` FOREIGN KEY (`store_id`) REFERENCES `stores` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `follows`
--

LOCK TABLES `follows` WRITE;
/*!40000 ALTER TABLE `follows` DISABLE KEYS */;
INSERT INTO `follows` VALUES (15,7,6,'2021-12-10 07:53:39.199239','2021-12-10 07:53:39.199239'),(22,6,6,'2021-12-12 09:02:38.763685','2021-12-12 09:02:38.763685');
/*!40000 ALTER TABLE `follows` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_items`
--

DROP TABLE IF EXISTS `order_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_items` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `order_id` bigint NOT NULL,
  `product_id` int DEFAULT NULL,
  `quantity` int DEFAULT '1',
  `unit_sold_price` float DEFAULT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_order_items_on_order_id` (`order_id`),
  CONSTRAINT `fk_rails_e3cb28f071` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_items`
--

LOCK TABLES `order_items` WRITE;
/*!40000 ALTER TABLE `order_items` DISABLE KEYS */;
INSERT INTO `order_items` VALUES (1,3,1,1,14900,'2021-12-08 16:34:54.513051','2021-12-08 16:34:54.513051'),(2,3,4,1,17990,'2021-12-08 16:34:54.533633','2021-12-08 16:34:54.533633'),(3,4,12,7,14490,'2021-12-09 03:57:47.263521','2021-12-09 03:57:47.263521'),(4,4,13,12,28776,'2021-12-09 03:57:47.280484','2021-12-09 03:57:47.280484'),(5,5,4,2,17990,'2021-12-09 04:03:36.119258','2021-12-09 04:03:36.119258'),(6,5,7,1,50000,'2021-12-09 04:03:36.141927','2021-12-09 04:03:36.141927'),(7,6,4,5,17990,'2021-12-09 07:28:44.827099','2021-12-09 07:28:44.827099'),(8,7,12,12,14490,'2021-12-09 09:25:02.451168','2021-12-09 09:25:02.451168'),(9,8,12,12,14490,'2021-12-09 09:36:15.221839','2021-12-09 09:36:15.221839'),(10,9,12,1,14490,'2021-12-09 09:37:36.785914','2021-12-09 09:37:36.785914'),(11,10,12,1,14490,'2021-12-09 09:40:16.622031','2021-12-09 09:40:16.622031'),(12,11,12,1,14490,'2021-12-09 09:45:23.903838','2021-12-09 09:45:23.903838'),(13,12,12,1,14490,'2021-12-09 09:46:35.973316','2021-12-09 09:46:35.973316'),(14,13,12,11,14490,'2021-12-10 02:16:28.236022','2021-12-10 02:16:28.236022'),(15,14,7,3,50000,'2021-12-10 02:37:06.376046','2021-12-10 02:37:06.376046'),(16,15,17,20,259,'2021-12-11 10:38:17.753097','2021-12-11 10:38:17.753097'),(17,16,12,1,14490,'2021-12-12 04:23:13.107550','2021-12-12 04:23:13.107550'),(18,17,13,1,28776,'2021-12-12 04:23:54.907941','2021-12-12 04:23:54.907941'),(19,18,12,1,14490,'2021-12-12 04:24:40.017936','2021-12-12 04:24:40.017936'),(20,19,16,1,15400,'2021-12-12 07:39:42.815737','2021-12-12 07:39:42.815737'),(21,19,4,1,17990,'2021-12-12 07:39:42.988941','2021-12-12 07:39:42.988941'),(22,20,17,2,259,'2021-12-12 10:07:10.869702','2021-12-12 10:07:10.869702'),(23,21,7,2,50000,'2021-12-13 02:16:48.565824','2021-12-13 02:16:48.565824'),(24,22,12,1,12900,'2021-12-13 04:09:35.843685','2021-12-13 04:09:35.843685');
/*!40000 ALTER TABLE `order_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` bigint NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `total` float DEFAULT NULL,
  `store_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_orders_on_user_id` (`user_id`),
  CONSTRAINT `fk_rails_f868b47f6a` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (3,6,'2021-12-08 16:34:54.403581','2021-12-08 16:34:54.403581',NULL,NULL),(4,6,'2021-12-09 03:57:47.201409','2021-12-09 03:57:47.300306',446742,NULL),(5,6,'2021-12-09 04:03:36.056427','2021-12-09 04:03:36.159049',85980,NULL),(6,6,'2021-12-09 07:28:44.750345','2021-12-09 07:28:44.844894',89950,NULL),(7,6,'2021-12-09 09:25:02.392033','2021-12-09 09:25:02.467860',173880,NULL),(8,6,'2021-12-09 09:36:15.182224','2021-12-09 09:36:15.242271',173880,NULL),(9,6,'2021-12-09 09:37:36.724037','2021-12-09 09:37:36.811531',14490,NULL),(10,6,'2021-12-09 09:40:16.579669','2021-12-09 09:40:16.635195',14490,NULL),(11,6,'2021-12-09 09:45:23.854422','2021-12-09 09:45:23.854422',NULL,NULL),(12,6,'2021-12-09 09:46:35.885327','2021-12-09 09:46:36.038332',14490,NULL),(13,6,'2021-12-10 02:16:28.143445','2021-12-10 02:16:28.361733',159390,NULL),(14,6,'2021-12-10 02:37:06.283068','2021-12-10 02:37:06.498197',150000,6),(15,9,'2021-12-11 10:38:17.699385','2021-12-11 10:38:17.807432',5180,6),(16,9,'2021-12-12 04:23:13.044870','2021-12-12 04:23:13.182875',14490,7),(17,6,'2021-12-12 04:23:54.872913','2021-12-12 04:23:54.984109',28776,7),(18,9,'2021-12-12 04:24:39.984477','2021-12-12 04:24:40.076177',14490,7),(19,6,'2021-12-12 07:39:42.753197','2021-12-12 07:39:43.068025',33390,6),(20,6,'2021-12-12 10:07:10.811408','2021-12-12 10:07:10.922632',518,6),(21,6,'2021-12-13 02:16:48.515624','2021-12-13 02:16:48.614563',100000,6),(22,5,'2021-12-13 04:09:35.795110','2021-12-13 04:09:35.916119',12900,7);
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `price` float DEFAULT NULL,
  `description` text,
  `store_id` bigint NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `quantity` int DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `index_products_on_store_id` (`store_id`),
  CONSTRAINT `fk_rails_5cf8ff66a6` FOREIGN KEY (`store_id`) REFERENCES `stores` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (4,'Apple Watch Gen2',17990,'',6,'2021-12-07 05:29:14.525260','2021-12-12 07:39:43.049935',9),(7,'Apple Watch Gen3',50000,'',6,'2021-12-07 06:45:52.740923','2021-12-13 02:17:55.012988',2),(12,'Galaxy Watch Active 2',12900,'– หน้าจอแสดงผลแบบ Super AMOLED ความละเอียด 360×360 พิกเซล ขนาด 1.2 นิ้ว\r\n– ชิปเซ็ตแบบ Dual-Core ความเร็วในการประมวลผล 1.15GHz\r\n– หน่วยความจำแรม (RAM) ขนาด 1.5GB\r\n– หน่วยความจำรอม (ROM) ขนาด 4GB\r\n– รองรับเซ็นเซอร์ Accelerometer ,Barometer, Gyro Sensor ,HR Sensor และ Light Sensor\r\n– รองรับการเชื่อมต่อไร้สายแบบ NFC\r\n– รองรับ Bluetooth เวอร์ชัน 5.0\r\n– รองรับการเชื่อมต่อ WiFi ผ่านคลื่นความถี่ 2.4GHz\r\n– รองรับ GPS, Glonass, Beidou และ Galileo\r\n– แบตเตอรี่ขนาด 247mAh',7,'2021-12-08 02:46:24.981784','2021-12-13 04:09:35.884868',99),(13,'Galaxy S21 Ultra',41900,'พบกับ Galaxy S21 Ultra กับดีไซน์กล้องที่ไม่เหมือนใครและผสมผสานไปกับตัวเครื่องที่จะมาทไให้การทำคอนเทนต์ของคุณเกินคาด ด้วยการถ่ายวีดีโอ 8K อันคมชัดและภาพนิ่งสุดอลังการในคราวเดียวกัน และด้วยชิปที่เร็วที่สุดใน Galaxy กระจกที่แข็งแกร่งที่สุดของเรา 5G รวมถึงแบตเตอรี่ที่ใช้งานได้ยาวนาน',7,'2021-12-08 03:13:21.359576','2021-12-12 09:25:10.377713',10),(16,'Apple Watch ',15400,'จอภาพที่ใหญ่ที่สุด\r\nจอภาพ Retina ใหม่บน Apple Watch Series 7 มีพื้นที่หน้าจอมากกว่า Series 6 ถึงเกือบ 20%\r\n\r\nความทนทานที่เพิ่มขึ้น\r\nด้านหน้าแบบคริสตัลที่ทนการแตกร้าวได้ดีที่สุด ทนฝุ่น และกันน้ำขณะว่ายน้ำ\r\n\r\nสุขภาพและความแข็งแรงสมบูรณ์\r\nคุณสมบัติด้านสุขภาพและความแข็งแรงสมบูรณ์ที่ล้ำหน้าที่สุดเท่าที่เคยมีมาบน Apple Watch รวมไปถึงแอปและเซ็นเซอร์วัดออกซิเจนในเลือดและแอป ECG',6,'2021-12-09 06:52:07.059530','2021-12-12 07:39:42.844412',4),(17,'Ruby on Rails Tutorial',259,'',6,'2021-12-11 10:37:01.839561','2021-12-12 10:07:10.905307',0),(18,'Galaxy fold 3',57900,'',7,'2021-12-12 09:37:48.582505','2021-12-13 02:14:01.667797',5);
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reviews`
--

DROP TABLE IF EXISTS `reviews`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reviews` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` bigint NOT NULL,
  `store_id` bigint NOT NULL,
  `score` int DEFAULT NULL,
  `comment` text,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_reviews_on_user_id` (`user_id`),
  KEY `index_reviews_on_store_id` (`store_id`),
  CONSTRAINT `fk_rails_08a5ebb739` FOREIGN KEY (`store_id`) REFERENCES `stores` (`id`),
  CONSTRAINT `fk_rails_74a66bd6c5` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reviews`
--

LOCK TABLES `reviews` WRITE;
/*!40000 ALTER TABLE `reviews` DISABLE KEYS */;
INSERT INTO `reviews` VALUES (21,6,6,3,'','2021-12-10 06:45:20.570429','2021-12-12 10:08:04.483456'),(22,9,6,1,'','2021-12-12 04:27:01.514439','2021-12-12 04:27:01.514439'),(23,5,7,1,'','2021-12-13 04:09:58.476877','2021-12-13 04:10:14.799981');
/*!40000 ALTER TABLE `reviews` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schema_migrations`
--

DROP TABLE IF EXISTS `schema_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `schema_migrations` (
  `version` varchar(255) NOT NULL,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schema_migrations`
--

LOCK TABLES `schema_migrations` WRITE;
/*!40000 ALTER TABLE `schema_migrations` DISABLE KEYS */;
INSERT INTO `schema_migrations` VALUES ('20211205050050'),('20211205084311'),('20211205090627'),('20211205091528'),('20211205092236'),('20211206024742'),('20211206145820'),('20211206150128'),('20211207035429'),('20211207082242'),('20211207082244'),('20211207082246'),('20211207082247'),('20211207082248'),('20211208033311'),('20211208140654'),('20211208140905'),('20211208144210'),('20211208160412'),('20211208160658'),('20211209021856'),('20211209082234'),('20211210022924'),('20211210025424'),('20211210032056'),('20211211085422');
/*!40000 ALTER TABLE `schema_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stores`
--

DROP TABLE IF EXISTS `stores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stores` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `username` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `subDistrict` varchar(255) DEFAULT NULL,
  `district` varchar(255) DEFAULT NULL,
  `province` varchar(255) DEFAULT NULL,
  `zipcode` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `password_digest` varchar(255) DEFAULT NULL,
  `rating` float DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stores`
--

LOCK TABLES `stores` WRITE;
/*!40000 ALTER TABLE `stores` DISABLE KEYS */;
INSERT INTO `stores` VALUES (3,'asdasd','','','','','','','2021-12-06 02:52:49.219249','2021-12-06 02:52:49.219249','$2a$12$7Awb7w1pKtYp8WtwsovUXe4cZkROg3dGhtGzi9QpFjhvTOUw4vyEa',0),(4,'BB','BB@mail.com','','','','','','2021-12-06 02:55:08.091208','2021-12-06 02:55:08.091208','$2a$12$mh5a72J05MwEvBqkz95wqetlnBHrSDwqIj9wnv0xlE8W0/1152EiK',0),(6,'Apple','Apple@mail.com','598','Lumpini','Pathumwan','Bangkok','10330','2021-12-06 09:20:10.499980','2021-12-12 09:32:29.469565','$2a$12$fr1fltvtDlb34GH/dbaNn.dieE6gIbXUXYf992GNHgTGgXxZC9rL.',0),(7,'Samsung','samsung@mail.com','195 Empire Tower 19th Floor','Yannawa','Sathorn','Bangkok','10120','2021-12-08 02:43:01.039589','2021-12-12 09:15:41.857287','$2a$12$ELnc5II9LgffK/tfnCvkmOFJgjZXYujm0nPw3jxVL824EC3M/xyjS',0),(8,'Xiaomi','xiaomi_th@mail.com','123/45','-','-','-','12345','2021-12-10 16:40:48.682011','2021-12-10 16:40:48.682011','$2a$12$IWj/5v/evBIynNBre/tFs.LHWNgri6xiHwMGukIOZwaq.gXuzUG6G',0),(9,'Sony','sony_th@mail.com','123/45','-','-','-','12345','2021-12-10 16:43:12.596307','2021-12-10 16:43:12.596307','$2a$12$mktqGsAqHGkQ0G9qqC1vJ.Yiq9muLYg04Jz/9sOVRyq/vhyAmYtYe',0),(10,'CP','cp@mail.com','cp','cp','cp','cp','456789','2021-12-12 04:30:15.716945','2021-12-12 04:30:15.762265','$2a$12$UbT9GUaLk44.d1KQ69ZxF.f4j/4yvMYBKvhBT.86lUhj8qF0ufxHi',0);
/*!40000 ALTER TABLE `stores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `taggings`
--

DROP TABLE IF EXISTS `taggings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `taggings` (
  `id` int NOT NULL AUTO_INCREMENT,
  `tag_id` int DEFAULT NULL,
  `taggable_type` varchar(255) DEFAULT NULL,
  `taggable_id` int DEFAULT NULL,
  `tagger_type` varchar(255) DEFAULT NULL,
  `tagger_id` int DEFAULT NULL,
  `context` varchar(128) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `tenant` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_taggings_on_tag_id` (`tag_id`),
  KEY `taggings_taggable_context_idx` (`taggable_id`,`taggable_type`,`context`),
  KEY `index_taggings_on_taggable_id` (`taggable_id`),
  KEY `index_taggings_on_taggable_type` (`taggable_type`),
  KEY `index_taggings_on_tagger_id` (`tagger_id`),
  KEY `index_taggings_on_context` (`context`),
  KEY `index_taggings_on_tagger_id_and_tagger_type` (`tagger_id`,`tagger_type`),
  KEY `taggings_idy` (`taggable_id`,`taggable_type`,`tagger_id`,`context`),
  KEY `index_taggings_on_tenant` (`tenant`),
  CONSTRAINT `fk_rails_9fcd2e236b` FOREIGN KEY (`tag_id`) REFERENCES `tags` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `taggings`
--

LOCK TABLES `taggings` WRITE;
/*!40000 ALTER TABLE `taggings` DISABLE KEYS */;
INSERT INTO `taggings` VALUES (10,8,'Product',4,NULL,NULL,'tags','2021-12-07 15:49:29',NULL),(11,8,'Product',7,NULL,NULL,'tags','2021-12-07 15:49:48',NULL),(12,8,'Product',12,NULL,NULL,'tags','2021-12-08 02:46:25',NULL),(19,8,'Product',16,NULL,NULL,'tags','2021-12-09 06:52:07',NULL),(22,15,'Product',17,NULL,NULL,'tags','2021-12-11 10:37:01',NULL),(23,16,'Product',13,NULL,NULL,'tags','2021-12-12 09:25:10',NULL),(24,17,'Product',13,NULL,NULL,'tags','2021-12-12 09:25:10',NULL),(25,16,'Product',18,NULL,NULL,'tags','2021-12-12 09:37:48',NULL);
/*!40000 ALTER TABLE `taggings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tags`
--

DROP TABLE IF EXISTS `tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tags` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `taggings_count` int DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_tags_on_name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tags`
--

LOCK TABLES `tags` WRITE;
/*!40000 ALTER TABLE `tags` DISABLE KEYS */;
INSERT INTO `tags` VALUES (1,'books# Cartoon# Cartoon book','2021-12-07 08:40:58','2021-12-07 08:40:58',0),(7,'A#B#C','2021-12-07 08:55:24','2021-12-07 08:55:24',0),(8,'Gadget','2021-12-07 15:48:16','2021-12-07 15:48:16',4),(15,'books ruby on rails','2021-12-11 10:37:01','2021-12-11 10:37:01',1),(16,'smartphone','2021-12-12 09:25:10','2021-12-12 09:25:10',2),(17,'it','2021-12-12 09:25:10','2021-12-12 09:25:10',1);
/*!40000 ALTER TABLE `tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `username` varchar(255) DEFAULT NULL,
  `password_digest` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `subDistrict` varchar(255) DEFAULT NULL,
  `district` varchar(255) DEFAULT NULL,
  `province` varchar(255) DEFAULT NULL,
  `zipcode` varchar(255) DEFAULT NULL,
  `phoneNumber` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `birthdate` date DEFAULT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (3,'a','asd','a@mail.com','A','','','','','','','','2021-12-06','2021-12-06 02:23:03.698023','2021-12-06 02:23:03.698023'),(4,'B','$2a$12$erKgtPgCSg1qLpbeVqZlbeO4ZcLTeZSsdnrUK/7zgBpC/o3iNlw0K','b@mail.com','B','','','','','','','','2021-12-06','2021-12-06 02:54:16.853850','2021-12-06 02:54:16.853850'),(5,'c','$2a$12$Am.HCkGa2UjcZsoYj/BOdeWISNI279wZ1pqTCvyVHyrr4/jmKPrUW','c@mail.com','C','241/11','Mahachai','MuengSamutSakhon','SamutSakhon','74000','085-1799118','Male','2021-12-15','2021-12-06 03:13:46.896352','2021-12-06 03:13:46.896352'),(6,'User1','$2a$12$tF1ASoka6sDYQQnJJfMbC.DfV4yJWQ4P666/oqDYJyySgXwE4/97.','user_1@mail.com','User1','123/5','Mahachai','Mueang','SamutSakhon','74000','111-111-1111','Male','2009-10-12','2021-12-06 08:43:15.047901','2021-12-12 09:00:58.586799'),(7,'E','$2a$12$eDlMQWl/cqO2sJawAo2mue2lHysuDLuT.eXANVqZtAH9qTW5aliwG','E@mail.com','E','E','e','e','E','25463','222-222-2222','Male','2021-12-07','2021-12-07 05:50:57.955038','2021-12-07 05:50:57.955038'),(9,'User2','$2a$12$AuhUPIsG0yIrapOAaFl01uJR.wA1dy.y7kV.TatDn1zoCzk0vLBdO','user_2@mail.com','User2','543/1','Dao Khanong',' Thon Buri','Bangkok','10600','222-222-2222','Female','2021-12-10','2021-12-10 16:37:43.811952','2021-12-12 09:06:39.325239'),(10,'G','$2a$12$W2ZDLgeJYHStMHKtEbZ1P.1oqQ5zRJmMlNd0wsGNKY6ZPzzEGgrl.','g@mail.com','G','g','g','g','g','12345','222-222-2222','Male','2021-12-12','2021-12-12 04:29:24.365107','2021-12-12 04:29:24.365107');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-12-13 12:26:37
