-- MySQL dump 10.13  Distrib 8.0.32, for macos13.0 (arm64)
--
-- Host: localhost    Database: tpiddb
-- ------------------------------------------------------
-- Server version	8.0.32

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
-- Table structure for table `banners`
--

DROP TABLE IF EXISTS `banners`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `banners` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `banners`
--

LOCK TABLES `banners` WRITE;
/*!40000 ALTER TABLE `banners` DISABLE KEYS */;
INSERT INTO `banners` VALUES (1,'assets/banner/wmOhKiN3C2UNVgo2YSrQ5mELO8vJaojUB932qHGJ.jpg','http://www.unima.ac.id',NULL,'2021-01-18 00:46:04','2021-01-18 00:46:04');
/*!40000 ALTER TABLE `banners` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categories` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,'tt','tt','2021-01-21 21:07:12','2021-01-21 21:07:03','2021-01-21 21:07:12'),(2,'Classic News','classic-news','2021-01-21 21:06:54','2021-01-16 02:09:31','2021-01-21 21:06:54'),(3,'Pengumuman Akademik','grid-news',NULL,'2021-01-16 02:09:42','2021-01-21 21:06:50'),(4,'Berita Umum','mansory-news',NULL,'2021-01-16 02:09:48','2021-01-21 21:06:39');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contacts`
--

DROP TABLE IF EXISTS `contacts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contacts` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `first_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` int NOT NULL,
  `message` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contacts`
--

LOCK TABLES `contacts` WRITE;
/*!40000 ALTER TABLE `contacts` DISABLE KEYS */;
INSERT INTO `contacts` VALUES (1,'Ifan','Lumape','fnnight@gmail.com',821,'Message fro ifan',NULL,'2021-01-19 08:19:48','2021-01-19 08:19:48');
/*!40000 ALTER TABLE `contacts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `events`
--

DROP TABLE IF EXISTS `events`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `events` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `event_date` date NOT NULL,
  `event_time` time NOT NULL,
  `fee` int NOT NULL,
  `location` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `need_to_bring` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `events`
--

LOCK TABLES `events` WRITE;
/*!40000 ALTER TABLE `events` DISABLE KEYS */;
INSERT INTO `events` VALUES (1,'Spacewalking Conference','spacewalking-conference','A picture paints a thousand words. So if you\'re planning on pursuing a career in graphic design, you\'d better make sure you know what you\'re saying.\r\n\r\nThis four-day workshop introduces you to the principles of design, exploring the role of colour, shape and form. You\'ll get expert advice on portfolio preparation and create pieces in InDesign.','2021-01-15','21:38:00',120,'1 Fitzwilliam Street, Parramatta - JCU\'s College of Design & Commerce Campus','All essential materials and equipment are provided, however, we encourage students to bring an A3 portfolio folder (including a minimum of 5 plastic sleeves) and a USB drive.\r\n\r\nIf you\'d like to enroll, download and complete this form, and then e-mail it to mail@demolink.org with the subject line \"JCU 2019 Workshop\".','assets/event/R1RCtWugcwy4hebuQYWBxYqZJQW1q4906192ccVR.jpg','2021-05-27 04:06:40','2021-01-15 05:42:02','2021-05-27 04:06:40'),(2,'International Conference on Biomolecular Engineering','international-conference-on-biomolecular-engineering','A picture paints a thousand words. So if you\'re planning on pursuing a career in graphic design, you\'d better make sure you know what you\'re saying.\r\n\r\nThis four-day workshop introduces you to the principles of design, exploring the role of colour, shape and form. You\'ll get expert advice on portfolio preparation and create pieces in InDesign.','2021-01-15','21:38:00',120,'1 Fitzwilliam Street, Parramatta - JCU\'s College of Design & Commerce Campus',NULL,'assets/event/XZow9Y14Ul3qxGMNpIEOu2W1m5qSTpna5ataiLOk.jpg','2021-05-27 04:06:38','2021-01-15 05:42:29','2021-05-27 04:06:38'),(3,'Graphic Design Workshop','graphic-design-workshop','A picture paints a thousand words. So if you\'re planning on pursuing a career in graphic design, you\'d better make sure you know what you\'re saying.\r\n\r\nThis four-day workshop introduces you to the principles of design, exploring the role of colour, shape and form. You\'ll get expert advice on portfolio preparation and create pieces in InDesign.','2021-01-15','21:38:00',120,'1 Fitzwilliam Street, Parramatta - JCU\'s College of Design & Commerce Campus',NULL,'assets/event/bawTpW1XQawcBj4KsOqNnLmFdWrpyCfiwa976e2R.jpg','2021-05-27 04:06:36','2021-01-15 05:42:44','2021-05-27 04:06:36'),(4,'History of Art','history-of-art','A picture paints a thousand words. So if you\'re planning on pursuing a career in graphic design, you\'d better make sure you know what you\'re saying.\r\n\r\nThis four-day workshop introduces you to the principles of design, exploring the role of colour, shape and form. You\'ll get expert advice on portfolio preparation and create pieces in InDesign.','2021-01-15','21:38:00',120,'1 Fitzwilliam Street, Parramatta - JCU\'s College of Design & Commerce Campus','All essential materials and equipment are provided, however, we encourage students to bring an A3 portfolio folder (including a minimum of 5 plastic sleeves) and a USB drive.\r\n\r\nIf you\'d like to enroll, download and complete this form, and then e-mail it to mail@demolink.org with the subject line \"JCU 2019 Workshop\".','assets/event/vMFhScsRBB47YygMEdtG6rVH9mYCHvwfNpLKoRBr.jpg','2021-05-27 04:06:34','2021-01-15 05:42:54','2021-05-27 04:06:34');
/*!40000 ALTER TABLE `events` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `failed_jobs`
--

LOCK TABLES `failed_jobs` WRITE;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `galleries`
--

DROP TABLE IF EXISTS `galleries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `galleries` (
  `id` int NOT NULL AUTO_INCREMENT,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `galleries`
--

LOCK TABLES `galleries` WRITE;
/*!40000 ALTER TABLE `galleries` DISABLE KEYS */;
INSERT INTO `galleries` VALUES (1,'assets/gallery/M0UxnAzFfDxKzVQtIlsligTtDASMd1v7zhgQDEHL.jpg',NULL,'2021-01-16 22:00:08','2021-01-16 22:00:08'),(2,'assets/gallery/Pt9hHbR7CYp4jIj6NG3hc9IUJBasE9SLUM5MDTic.jpg',NULL,'2021-01-16 22:00:24','2021-01-16 22:00:24'),(3,'assets/gallery/PQJBQwFUNYOprCD3E443WzgV7uJ3ciD0pU7oXgw4.jpg',NULL,'2021-01-16 22:01:17','2021-01-16 22:01:17'),(4,'assets/gallery/ouMVmchi7ikS5zfrf75q7OqMXkspP1wz738X9vF1.jpg',NULL,'2021-01-16 22:01:29','2021-01-16 22:01:29'),(5,'assets/gallery/3WsKBziqckwwZVwAkIqHEokvq24GO6axgkLh7gap.jpg',NULL,'2021-01-16 22:01:40','2021-01-16 22:01:40'),(6,'assets/gallery/69W0JVUQNM8X2gRhN1DctkYywa68sAMCB8ht46tD.jpg',NULL,'2021-01-16 22:01:53','2021-01-16 22:01:53');
/*!40000 ALTER TABLE `galleries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `information`
--

DROP TABLE IF EXISTS `information`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `information` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `information`
--

LOCK TABLES `information` WRITE;
/*!40000 ALTER TABLE `information` DISABLE KEYS */;
/*!40000 ALTER TABLE `information` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menus`
--

DROP TABLE IF EXISTS `menus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menus` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `mega_menu` enum('Y','N') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'N',
  `position` enum('Top','Bottom') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Top',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menus`
--

LOCK TABLES `menus` WRITE;
/*!40000 ALTER TABLE `menus` DISABLE KEYS */;
INSERT INTO `menus` VALUES (1,'Kegiatan','african-american-studies',NULL,'N','Top',NULL,'2021-01-16 22:59:39','2023-03-15 16:38:31'),(2,'Informasi','current-students',NULL,'N','Top',NULL,'2021-01-16 22:59:57','2023-03-15 16:38:43'),(3,'Laporan Harian','future-students',NULL,'N','Top',NULL,'2021-01-16 23:00:10','2023-03-15 16:39:17'),(4,'Layanan & PPID','pages',NULL,'N','Top','2021-05-27 04:04:25','2021-01-16 23:00:23','2021-05-27 04:04:25'),(5,'Link Terkait','fakultas',NULL,'N','Bottom',NULL,'2021-01-21 20:37:56','2021-05-27 03:59:52'),(6,'Akademik','akademik',NULL,'N','Bottom','2021-05-27 04:04:22','2021-01-21 20:38:33','2021-05-27 04:04:22'),(7,'Menu Utama','menu-utama',NULL,'N','Bottom',NULL,'2021-05-27 04:04:57','2021-05-27 04:04:57');
/*!40000 ALTER TABLE `menus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_10_12_000000_create_users_table',1),(2,'2014_10_12_100000_create_password_resets_table',1),(3,'2019_08_19_000000_create_failed_jobs_table',1),(4,'2021_03_18_083737_create_permission_tables',1),(5,'2021_04_14_230443_create_information_table',2);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `model_has_permissions`
--

DROP TABLE IF EXISTS `model_has_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `model_has_permissions` (
  `permission_id` bigint unsigned NOT NULL,
  `model_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`),
  CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `model_has_permissions`
--

LOCK TABLES `model_has_permissions` WRITE;
/*!40000 ALTER TABLE `model_has_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `model_has_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `model_has_roles`
--

DROP TABLE IF EXISTS `model_has_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `model_has_roles` (
  `role_id` bigint unsigned NOT NULL,
  `model_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`),
  CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `model_has_roles`
--

LOCK TABLES `model_has_roles` WRITE;
/*!40000 ALTER TABLE `model_has_roles` DISABLE KEYS */;
INSERT INTO `model_has_roles` VALUES (1,'App\\Models\\User',1),(2,'App\\Models\\User',2);
/*!40000 ALTER TABLE `model_has_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `news`
--

DROP TABLE IF EXISTS `news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `news` (
  `id` bigint unsigned NOT NULL,
  `users_id` bigint unsigned NOT NULL,
  `category_id` bigint unsigned NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news`
--

LOCK TABLES `news` WRITE;
/*!40000 ALTER TABLE `news` DISABLE KEYS */;
INSERT INTO `news` VALUES (1,1,4,'Pj Bupati Bolmong Limi Mokodompit Bersama Jajaran Ikuti Rapat Rutin Pengendalian Inflasi Tahun 2023','5-ways-to-pay-for-community-college1','Penjabat Bupati Bolaang Mongondow (Bolmong), Limi Mokodompit, bersama jajaran mengikuti rapat rutin pengendalian inflasi tahun 2023, Senin (6/3/2023).\r\nLimi Mokodompit mengikuti kegiatan bersama Kemendagri ini secara virtual di lantai III Ruang Rapat Bupati Bolmong, Sulawesi Utara.\r\nRapat tersebut untuk menahan laju inflasi atau ketersediaan pasokan pasar.\r\n\r\nRakor dipimpin langsung Menteri Dalam Negeri, Tito Karnavian, dilanjutkan dengan pemaparan.\r\nRakor juga diikuti oleh Deputi Bidang Statistik Distribusi dan Jasa Badan Pusat Statistik (BPS), Pudji Ismartini; Kepala Pusat Ketersediaan dan Ketahanan Pangan, Badan Ketahanan Pangan; Kementerian Pertanian; Staf Ahli Menteri Bidang Hubungan Antar Lembaga; dan Direktur Sayuran dan Tanaman Obat Ditjen Hortikultura Kementerian Pertanian.\r\n\r\n“Makanya kami berpesan agar daerah-daerah yang kurang terkendali segera lakukan intervensi pengendalian, pemerintah pusat juga. Mari bersama-sama kita saling bekerja sama, saling berkoordinasi dan jangan sampai ada berbeda,” tutup Tito.\r\n\r\nBank Indonesia bersama Pemprov Sulawesi Utara (Sulut) menggelar kick off Gerakan Pengendalian Inflasi Sulawesi Utara 2023 di Kota Kotamobagu, Selasa (28/2/2023).\r\nKegiatan ini merupakan langkah lanjutan dari upaya pengendalian inflasi pada Gerakan Nasional Pengendalian Inflasi Pangan (GNPIP) tahun 2022.\r\nKepala Kantor Perwakilan BI Sulut, Andry Prasmuko menjelaskan, Pengendalian Inflasi Sulawesi Utara tahun 2023 juga digagas untuk menghadapi beberapa potensi kenaikan inflasi.\r\n\"Salah satunya berasal dari kenaikan harga bahan pangan,\" kata Andry.\r\n \r\nUpaya pengendalian inflasi di Sulut pada tahun 2022 telah membuahkan hasil yang baik.\r\nIni erlihat dari inflasi Kota Manado yang terkendali dan berada pada rentang sasaran yaitu 4 persen (yoy) pada akhir tahun 2022.\r\nKick off ini diawali operasi dan sidak pasar bersama TPID di Pasar 23 Maret Kotamobagu.\r\nSidak melibatkan Pemprov Sulut Bulog.\r\nSekaligus, dilakukan digitalisasi pasar bersama BNI, BRI, Mandiri dan BSG yang diikuti dengan pemenuhan jaringan nirkabel (wifi) oleh Telkom di pasar tersebut.\r\n\r\nSelanjutnya, dilakukan pencanangan perluasan gerakan Marijo Bakobong di Hotel Sutanraja Kotamobagu.\r\nDalam pencanangan ini dibagikan 350 ribu bibit barito (bawang merah, rica, dan tomat) kepada keluarga pra-sejahtera dan kelompok tani di 15 kabupaten kota Sulawesi Utara.\r\nSekaligus disertai launching Klinik Pertanian pendampingan langsung oleh Pengusaha Tani Unggulan Bank Indonesia (PUBI) dan Kompetisi Marijo Bakobong.\r\nAndry mengatakan, pembagian bibit barito menjadi bagian dari upaya pengentasan kemiskinan di Sulawesi Utara.\r\nProgram ini akan dilaksanakan dalam dua mekanisme, yaitu penyaluran bibit barito dan pupuk untuk Persit dan Bhayangkari Kotamobagu serta PKK untuk disalurkan kepada keluarga pra-sejahtera di Sulawesi Utara.\r\n Kemudian, pembagian bibit barito dan alat pembuat POC (pupuk organik cair) kepada kelompok tani di 15 kabupaten kota Sulawesi Utara.\r\nHadir dalam pencanangan ini, Wakil Wali Kota Kotamobagu, Nayodo Kurniawan; Pj Bupati Bolaang Mongondow, Limi Mokodompit; Asisten II Setda Boltim, MR Alung; Asisten II Setda Bolsel, Muhammad Suja Alamri; Asisten Il Setda Bolmut Abdul Nazarudin Maloho.\r\nSelanjutnya, Ketua Badan Musyawarah Antar Gereja (Bamag) Sulut, Pdt Johan Manampiring, Ketua MUI Kotamobagu KH Abdul Wahab; Sekretaris Umum MUI Kotamobagu Ustadz Jainudin dan Ketua BKSUA Manado Pdt Yudi Tunari','assets/news/LWZVdQmUG7ozUuVA8KSrK191p8BYgjAyC2Rv92LL.jpg',NULL,'2021-01-16 18:10:33','2023-03-15 17:01:43'),(2,1,1,'5 Ways to Pay for Community College','5-ways-to-pay-for-community-college2','Most community college students qualify for need-based aid, experts say. Many community colleges offer promise programs, which offer tuition-free awards to eligible students – mainly to students with Pell grant eligibility. For one Massachusetts teen choosing between a two-year or four-year college, cost was the deciding factor.\r\n\r\nEstime had hoped to attend Smith College, but says the school costs too much, at more than $45,000 a year for tuition and fees. The liberal arts major enrolled in Holyoke Community College last fall and plans to transfer to nearby Smith or the University of Massachusetts–Amherst for her junior year, depending on the financial aid award. Estime, in the meantime, has managed to keep her debt under $2,000, paying for college with private scholarships, Pell grants and a small loan.\r\nBut those are just three ways to pay for community college. Here are some ways to pay for community college other than working part or full time.\r\n\r\nPell grants: Pell grants function like vouchers for students to pay for higher education-related expenses, covering items such as books, transportation or tuition. Awards are based on financial need to students who have not earned a bachelor\'s degree. More than two-thirds of Pell grants go to families making less than $50,000, according to Columbia University\'s Community College Research Center at Teachers College. These awards are also contingent on the student\'s household size.','assets/news/gVWtpZCSyXs72C4nKelrPAWnYVikAdK8KwrGtXK4.jpg','2021-01-16 19:11:19','2021-01-16 18:12:56','2021-01-16 19:11:19'),(3,1,1,'5 Ways to Pay for Community College','5-ways-to-pay-for-community-college3','Most community college students qualify for need-based aid, experts say. Many community colleges offer promise programs, which offer tuition-free awards to eligible students – mainly to students with Pell grant eligibility. For one Massachusetts teen choosing between a two-year or four-year college, cost was the deciding factor.\r\n\r\nEstime had hoped to attend Smith College, but says the school costs too much, at more than $45,000 a year for tuition and fees. The liberal arts major enrolled in Holyoke Community College last fall and plans to transfer to nearby Smith or the University of Massachusetts–Amherst for her junior year, depending on the financial aid award. Estime, in the meantime, has managed to keep her debt under $2,000, paying for college with private scholarships, Pell grants and a small loan.\r\nBut those are just three ways to pay for community college. Here are some ways to pay for community college other than working part or full time.\r\n\r\nPell grants: Pell grants function like vouchers for students to pay for higher education-related expenses, covering items such as books, transportation or tuition. Awards are based on financial need to students who have not earned a bachelor\'s degree. More than two-thirds of Pell grants go to families making less than $50,000, according to Columbia University\'s Community College Research Center at Teachers College. These awards are also contingent on the student\'s household size.','assets/news/tCVDd8mBNRIBJpFDprD0v6i0Lqaw0FFYLgmakHsZ.jpg','2021-01-16 19:11:15','2021-01-16 18:16:25','2021-01-16 19:11:15'),(4,1,1,'5 Ways to Pay for Community College','5-ways-to-pay-for-community-college4','Most community college students qualify for need-based aid, experts say. Many community colleges offer promise programs, which offer tuition-free awards to eligible students – mainly to students with Pell grant eligibility. For one Massachusetts teen choosing between a two-year or four-year college, cost was the deciding factor.\r\n\r\nEstime had hoped to attend Smith College, but says the school costs too much, at more than $45,000 a year for tuition and fees. The liberal arts major enrolled in Holyoke Community College last fall and plans to transfer to nearby Smith or the University of Massachusetts–Amherst for her junior year, depending on the financial aid award. Estime, in the meantime, has managed to keep her debt under $2,000, paying for college with private scholarships, Pell grants and a small loan.\r\nBut those are just three ways to pay for community college. Here are some ways to pay for community college other than working part or full time.\r\n\r\nPell grants: Pell grants function like vouchers for students to pay for higher education-related expenses, covering items such as books, transportation or tuition. Awards are based on financial need to students who have not earned a bachelor\'s degree. More than two-thirds of Pell grants go to families making less than $50,000, according to Columbia University\'s Community College Research Center at Teachers College. These awards are also contingent on the student\'s household size.','assets/news/1SNR5qQuaAPUfStT2PYKn952D29stPnuDa2jCi1T.jpg','2021-01-16 19:11:09','2021-01-16 18:16:55','2021-01-16 19:11:09'),(5,1,4,'Penjabup Limi Mokodompit Ikut Rakor Pengendalian Inflasi Daerah','5-ways-to-pay-for-community-college5','Penjabat Bupati (Penjabup) Kabupaten Bolaang Mongondow (Bolmong) Ir. Limi Mokodompit, M.M., senin (31/10/2022) mengikuti Rapat Koordinasi Pengendalian Inflasi dengan Menteri Dalam Negeri.\r\n\r\nKegiatan Rapat Koordinasi (Rakor) yang diikuti Penjabup Limi Mokodompit, dilakukan secara virtual, Senin (31/10/2022), bertempat di ruang kerja Bupati Bolmong.\r\n\r\nZoom meeting dihadiri pula Sekertaris Daerah Tahlis Gallang, SIP., M.M., Forkopimda Dandim 1303 Bolmong, Kapolres Bolmong, Kajari Kotamobagu, Keasistenan, serta pejabat tinggi pratama Lingkungan Pemerintah Daerah (Pemda) Bolmong.\r\n\r\nRapat tersebut digelar oleh Kementerian Dalam Negeri bersama dengan sejumlah Kementerian Lembaga seperti Badan Pusat Statistik (BPS), Badan Pangan Nasional (BPN), yang membahas soal evaluasi dalam pencegahan perkembangan inflasi di daerah, yang diikuti seluruh Gubernur, Bupati/Walikota se-Indonesia.\r\n\r\nSementara, dikabarkan Rakor Pengendalian Inflansi tersebut akan di adakan setiap hari senin pukul 08.00 WIB dari tanggal 24 Oktober 2022 s/d tanggal 26 Desember 2022.\r\n\r\nDalam kesempatan tersebut, terungkap beberapa poin sesuai arahan Presiden Republik Indonesia Joko Widodo, yang disampaikan Menteri Dalam Negeri (Mendagri) Tito Karnavian, terkait langkah-langkah kongkrit untuk mengatasi terjadinya inflasi di daerah.\r\n\r\n“Kolaborasi ini dilakukan dengan membuat sistem penggunaan energi yang tepat sasaran serta mencukupi ketersediaan bahan pangan di daerah. Pemerintah daerah diminta untuk mengoptimalkan Tim Pengendalian Inflasi Daerah (TPID) untuk memonitor harga bahan pokok di pasar-pasar tiap hari,” tegas Mendagri.\r\n\r\nPenjabat bupati usai mengikuti Rakor menyatakan dukungannya terhadap program pemerintah pusat sesuai arahan Presiden dan Mendagri.\r\n\r\n“Pemkab Bolmong sangat mendukung kegiatan ini sebagai upaya agar kepala daerah dapat mendorong pertumbuhan ekonomi dan menjaga stabilitas harga, dan meningkatkan sektor pertanian sebagai kontribusi pergerakan pertumbuhan ekonomi,” ujar Limi.\r\n\r\nDampak kenaikan BBM mulai terasa oleh masyarakat. Selain kenaikan harga barang yang cukup signifikan, antrian panjang juga mewarnai hampir semuan stasiun pengisian bahan bakar.','assets/news/oevJzDC4veMKvDt7nUjOUuhc1kqodUaojCQPiIyF.jpg',NULL,'2021-01-16 18:40:59','2023-03-15 17:04:02'),(6,1,4,'Pemerintahan Limi Mokodompit, Siap Intervensi Pasokan Harga Pangan Jelang Ramadhan.','5-ways-to-pay-for-community-college6','Bupati Bolaang Mongondow (Bolmong), Ir. Limi Mojodompit, rapat bersama Tim Pengendalian Inflasi Daerah (TPID) Kabupaten Bolaang Mongondow.\r\n\r\nRapat bersama TPID tersebut, membahas Stabilitas  Pasokan Harga Pangan (SPHP) dan Inflasi Pangan, dalam rangka menekan laju Inflasi Pangan selama bulan Suci Ramdhan hingga Lebaran,\r\n\r\n“Beberapa hari lalu saya dan TPID, menggelar pertemuan untuk membahas pasokan harga dan  inflasi pangan di Bolmong,” ucap Limi Mokodompit saat menghadiri peresmian Mesjid Jannatul Ma’wa di Kelurahan Imandi Kecamatan Dumoga Timur, Selasa (7/3/2023).\r\n\r\nRapat bersama tersebut, menurut Limi Mokodompit, TPID Bolmong akan mengambil langkah – langkah untuk mencegah terjadinya inflasi pangan.\r\n\r\n“Pemerintah akan mengambil langkah – langkah dalam rangka mencegah terjadinya inflasi pangan, dengan terus memantau perkembangan harga, dan akan mengintervensi apabila terjadi kenaikan harga pangan menjelang Ramadhan hingga Lebaran,” ujar Limi Mokodompit.\r\n\r\nKebijakan pemerintah tersebut menurut Limi Mokodompit, sesuai arahan menteri kepada seluruh pimpinan daerah.\r\n\r\n“Setiap minggu, menteri terkait selalu memantau semua pimpinan daerah, olehnya kami pun akan terus malakukan pemantauan terhadap perkembangan harga mulai dari produsen hingga ke konsumen, guna mencegah terjadinya inflasi dan resesi di daerah,” ungkap Limi Mokodompit.\r\n\r\nDiakhir sambutannya, Bupati Bolmong menyampaikan pihaknya akan terus melakukan operasi pasar dan sidak di semua pelaku ekonomi pasar selama Bulan Suci Ramadha dan Lebaran.\r\n\r\n“Jelang Bulan Suci Ramadhan kami akan terus melakukan operasi pasar dan sidak ke semua pelaku pasar untuk mencegah terjadinya penimbunan barang yang memicu terjadinya kenaikan harga sehingga berdampak terhadap inflasi pangan,” tandas Bupati Bolmong.\r\n\r\nDiketahui nilai inflasi di Bolmong turun hingga -1%, bahkan mengalami deflasi, artinya kepemerintah dibawah pimpinan Pj. Bupati Limi Mokodompit, mampu mengendalikan laju inflasi.\r\n\r\nNakmun demkian, pemerintah akan terus berupaya menyedia pasokan ketersediaan bahan pangan dan mendorong nilai Surflus ekonomi di Bolmong.','assets/news/sgKkjdW4nN7CEqeW8V2BKriruf35vZ5O8TE0NzVF.jpg',NULL,'2021-01-16 18:41:34','2023-03-15 17:05:52'),(7,1,4,'Bupati Bolmong Minta TPID dan Instansi Teknis Pantau Harga Bapok di Lapangan','5-ways-to-pay-for-community-college7','BOLMONG – Bupati Bolaang Mongondow (Bolmong), Limi Mokodompit minta TPID dan instansi teknis untuk melakukan pemantauan harga bahan pokok di lapanagan.\r\n\r\n“Saya minta Tim Pengendalian Inflasi Daerah (TPID) Kabupaten Bolaang Mongondow bersama instansi teknis lainnya, untuk melakukan sidak maupun operasi pasar,” kata Bupati Limi Mokodompit di Lolak, Jumat (17/2/2023).\r\n\r\nBupati juga menekankan agar melaporkan perkembanga hasil pantauan melalui aplikasi yang ada, sehingga tidak terjadi kenaikan inflasi.\r\n\r\nBupati Limi juga meminta agar ASN yang ada untuk mengedukasi masyarakat, agar memanfaatkan lahan yang ada menjadi lahan produktif.\r\n\r\n“Hal ini sangat penting, sehingga mampu menekan laju inflasi secara nasional. Sebagaimana arahan presiden republik indonesia, serta arahan gubernur dan wakil gubernur sulawesi utara dengan program mari jo bakobong,” jelas Limi.\r\n\r\nSementara, Kapolres Bolmong AKBP Slamet, mengimbau agar para pedagang untuk tidak sembarangan menaikkan harga.\r\n\r\n“Tentunya kita akan menindak jika ada oknum pedagang yang sengaja menaikkan harga dengan tidak wajar. Apalagi menimbun stok pangan guna kepentingan dagang,” kata Kapolres.\r\n\r\nDiketahui, kunjungan bupati dan Forkompimda tersebut merupakan tindaklanjut intruksi Presiden RI Joko Widodo dalam rangka  pengendalian inflasi. (Adriansah)','assets/news/YfoESlwe9zIAjzMH7WzeussChRBbhpz4cKcIA1LJ.jpg',NULL,'2021-01-16 18:43:46','2023-03-15 17:06:42');
/*!40000 ALTER TABLE `news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `news_tags`
--

DROP TABLE IF EXISTS `news_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `news_tags` (
  `news_id` bigint unsigned NOT NULL,
  `tag_id` bigint unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news_tags`
--

LOCK TABLES `news_tags` WRITE;
/*!40000 ALTER TABLE `news_tags` DISABLE KEYS */;
INSERT INTO `news_tags` VALUES (6,2),(7,2),(7,3),(6,4),(7,4),(1,5),(5,5),(6,5);
/*!40000 ALTER TABLE `news_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pages`
--

DROP TABLE IF EXISTS `pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pages` (
  `id` int NOT NULL AUTO_INCREMENT,
  `menus_id` bigint unsigned NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pages`
--

LOCK TABLES `pages` WRITE;
/*!40000 ALTER TABLE `pages` DISABLE KEYS */;
INSERT INTO `pages` VALUES (1,1,'Dasar Hukum','unima-at-glance','-',NULL,NULL,'2023-03-15 17:11:44','2021-01-17 00:13:38','2023-03-15 17:11:44'),(2,1,'Struktur Organisasi UNIMA','organisational-structure','Struktur Organisasi UNIMA','','assets/page/SerYJee5YqP8pZ49PTevM2gHRXw2aG0KMOesldSc.jpg','2021-03-12 12:57:33','2021-01-17 00:16:00','2021-03-12 12:57:33'),(3,1,'Profil Pimpinan','unima-at-glance','-',NULL,'assets/page/9zFJ3AF20Rebn7W1WJOkBEPI16WA4wdyNp73hnfI.jpg','2023-03-15 17:11:46','2021-01-17 00:16:24','2023-03-15 17:11:46'),(4,1,'Tugas dan Fungsi','history-of-art','-',NULL,'assets/page/dmhqCcqPHlS4fh03e5FYXgqxwtFiSU9m5WCrMLwu.jpg','2023-03-15 17:11:47','2021-01-17 00:17:08','2023-03-15 17:11:47'),(5,4,'Undergraduate Study','undergraduate-study','With a commitment to free and open inquiry, our scholars take an interdisciplinary approach to research that spans arts to engineering, medicine to education. Their work transforms the way we understand the world, advancing and creating fields of study. Our scholars lead the country in scientific and technological innovations, often in partnership with our affiliated laboratories: Argonne National Laboratory, Fermi National Accelerator Laboratory, and the Marine Biological Laboratory in Woods Hole, Massachusetts.','','assets/page/pJXPqi1Mbl3NXNJXWwnsugLpipceYMyBjSF8pzbJ.jpg','2021-01-21 20:45:34','2021-01-17 00:17:45','2021-01-21 20:45:34'),(6,4,'History','history','The original board of trustees laid the groundwork for what would become today\'s Jonathan Carroll University on July 9, 1876, when the group gathered to hold the University\'s inaugural board meeting and drafted the University\'s articles of incorporation. This guiding document outlined elements the founders believed would build an enduring legacy for the University: a commitment to offering a rigorous academic program and an ambition to provide \"opportunities for all departments of higher education to persons of both sexes on equal terms.\" On September 10, 1876, the State of California issued the University\'s official certificate of incorporation, marking the formal beginning of the University\'s life.\r\n\r\nAn initial pledge of $600,000 (roughly $16 million in today\'s currency) from oil magnate Jonathan Carroll, along with contributions by the American Baptist Education Society, helped to found the University. The University\'s land was donated by Marshall Field, owner of the historic Chicago department store that bore his name.\r\n\r\nChristopher Smith, the University\'s first president, envisioned a university that was \"bran splinter new, yet as solid as the ancient hills\" - a modern research university, combining an English-style undergraduate college and a German-style graduate research institute. The Jonathan Carroll University fulfilled Christopher\'s dream, quickly becoming a national leader in higher education and research: an institution of scholars unafraid to cross boundaries, share ideas, and ask difficult questions.','','assets/page/Yef57j9tRjExXncatHTNeqBCioOECfJ9sKgeo2Bx.jpg','2021-01-21 20:45:28','2021-01-17 05:09:18','2021-01-21 20:45:28'),(7,1,'Galeri','email','-','gallery',NULL,NULL,'2021-01-21 20:22:37','2023-03-15 17:12:22'),(8,1,'Berita Kegiatan','library','-','berita',NULL,NULL,'2021-01-21 20:23:29','2023-03-15 17:12:07'),(9,2,'Pasokan','simlitabmas','-',NULL,NULL,NULL,'2021-01-21 20:41:33','2023-03-15 17:11:06'),(10,2,'Produksi','portal-riset-unima','-','#',NULL,NULL,'2021-01-21 20:42:55','2023-03-15 17:10:48'),(11,2,'Harga Komoditas','sinta','-',NULL,NULL,NULL,'2021-01-21 20:43:32','2023-03-15 17:10:37'),(12,3,'Berita','tracer-study','-',NULL,NULL,'2023-03-15 17:13:05','2021-01-21 20:44:34','2023-03-15 17:13:05'),(13,3,'Pengumuman','berita-alumni','-',NULL,NULL,'2023-03-15 17:13:42','2021-01-21 20:46:46','2023-03-15 17:13:42'),(14,3,'Agenda','fakultas-ilmu-pendidikan','-',NULL,NULL,'2023-03-15 17:13:10','2021-01-21 20:53:03','2023-03-15 17:13:10'),(15,3,'Laporan Harian','fakultas-ilmu-sosial','Tabel Laporan Harian Satuan Tugas Ketahanan Pangan Kab. Bolmong',NULL,NULL,NULL,'2021-01-21 20:57:32','2023-03-15 17:13:26'),(16,5,'Kementrian Keuangan RI','fakultas-ilmu-keolahragaan','-','https://kemenkeu.go.id/',NULL,NULL,'2021-01-21 20:57:59','2021-05-27 04:00:27'),(17,5,'Pemkab Bolmong','fakultas-bahasa-dan-seni','-','https://bolmongkab.go.id/',NULL,NULL,'2021-01-21 20:58:31','2021-05-27 04:02:30'),(18,5,'Diskominfo Bolmong','fakultas-teknik','-','https://diskominfo.bolmongkab.go.id/',NULL,NULL,'2021-01-21 20:58:50','2021-05-27 04:03:09'),(19,5,'PPID','fakultas-matematika-dan-ilmu-pengetahuan-alam','-','https://ppid.bolmongkab.go.id/',NULL,NULL,'2021-01-21 20:59:45','2021-05-27 04:03:47'),(20,6,'Beasiswa','beasiswa','beasiswa','',NULL,'2021-05-27 04:03:54','2021-01-21 21:29:34','2021-05-27 04:03:54'),(21,6,'Admisi','admisi','admisi','',NULL,'2021-05-27 04:03:59','2021-01-21 21:30:31','2021-05-27 04:03:59'),(22,7,'Berita','berita','-','berita',NULL,NULL,'2021-05-27 04:05:21','2023-03-15 17:14:19'),(23,7,'Pengumuman','pengumuman','-','pengumuman',NULL,NULL,'2021-05-27 04:05:31','2023-03-15 17:14:27'),(24,7,'Agenda','agenda','-','agenda',NULL,NULL,'2021-05-27 04:05:43','2023-03-15 17:14:34'),(25,7,'Gallery','gallery','-','galeri',NULL,NULL,'2021-05-27 04:05:52','2023-03-15 17:14:42');
/*!40000 ALTER TABLE `pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `password_resets` (
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_resets`
--

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `permissions`
--

DROP TABLE IF EXISTS `permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `permissions` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`)
) ENGINE=InnoDB AUTO_INCREMENT=125 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permissions`
--

LOCK TABLES `permissions` WRITE;
/*!40000 ALTER TABLE `permissions` DISABLE KEYS */;
INSERT INTO `permissions` VALUES (9,'banner-list','web','2021-03-18 01:03:36','2021-03-18 01:03:36'),(10,'banner-create','web','2021-03-18 01:03:36','2021-03-18 01:03:36'),(11,'banner-edit','web','2021-03-18 01:03:36','2021-03-18 01:03:36'),(12,'banner-delete','web','2021-03-18 01:03:36','2021-03-18 01:03:36'),(17,'category-list','web','2021-03-18 01:03:36','2021-03-18 01:03:36'),(18,'category-create','web','2021-03-18 01:03:36','2021-03-18 01:03:36'),(19,'category-edit','web','2021-03-18 01:03:36','2021-03-18 01:03:36'),(20,'category-delete','web','2021-03-18 01:03:36','2021-03-18 01:03:36'),(25,'contact-list','web','2021-03-18 01:03:36','2021-03-18 01:03:36'),(26,'contact-create','web','2021-03-18 01:03:36','2021-03-18 01:03:36'),(27,'contact-edit','web','2021-03-18 01:03:37','2021-03-18 01:03:37'),(28,'contact-delete','web','2021-03-18 01:03:37','2021-03-18 01:03:37'),(37,'event-list','web','2021-03-18 01:03:37','2021-03-18 01:03:37'),(38,'event-create','web','2021-03-18 01:03:37','2021-03-18 01:03:37'),(39,'event-edit','web','2021-03-18 01:03:37','2021-03-18 01:03:37'),(40,'event-delete','web','2021-03-18 01:03:37','2021-03-18 01:03:37'),(45,'gallery-list','web','2021-03-18 01:03:37','2021-03-18 01:03:37'),(46,'gallery-create','web','2021-03-18 01:03:37','2021-03-18 01:03:37'),(47,'gallery-edit','web','2021-03-18 01:03:37','2021-03-18 01:03:37'),(48,'gallery-delete','web','2021-03-18 01:03:37','2021-03-18 01:03:37'),(69,'menu-list','web','2021-03-18 01:03:38','2021-03-18 01:03:38'),(70,'menu-create','web','2021-03-18 01:03:38','2021-03-18 01:03:38'),(71,'menu-edit','web','2021-03-18 01:03:38','2021-03-18 01:03:38'),(72,'menu-delete','web','2021-03-18 01:03:38','2021-03-18 01:03:38'),(77,'news-list','web','2021-03-18 01:03:38','2021-03-18 01:03:38'),(78,'news-create','web','2021-03-18 01:03:38','2021-03-18 01:03:38'),(79,'news-edit','web','2021-03-18 01:03:38','2021-03-18 01:03:38'),(80,'news-delete','web','2021-03-18 01:03:38','2021-03-18 01:03:38'),(81,'news_tag-list','web','2021-03-18 01:03:38','2021-03-18 01:03:38'),(82,'news_tag-create','web','2021-03-18 01:03:38','2021-03-18 01:03:38'),(83,'news_tag-edit','web','2021-03-18 01:03:38','2021-03-18 01:03:38'),(84,'news_tag-delete','web','2021-03-18 01:03:38','2021-03-18 01:03:38'),(85,'page-list','web','2021-03-18 01:03:38','2021-03-18 01:03:38'),(86,'page-create','web','2021-03-18 01:03:38','2021-03-18 01:03:38'),(87,'page-edit','web','2021-03-18 01:03:38','2021-03-18 01:03:38'),(88,'page-delete','web','2021-03-18 01:03:38','2021-03-18 01:03:38'),(93,'role-list','web','2021-03-18 01:03:38','2021-03-18 01:03:38'),(94,'role-create','web','2021-03-18 01:03:38','2021-03-18 01:03:38'),(95,'role-edit','web','2021-03-18 01:03:39','2021-03-18 01:03:39'),(96,'role-delete','web','2021-03-18 01:03:39','2021-03-18 01:03:39'),(101,'slide-list','web','2021-03-18 01:03:39','2021-03-18 01:03:39'),(102,'slide-create','web','2021-03-18 01:03:39','2021-03-18 01:03:39'),(103,'slide-edit','web','2021-03-18 01:03:39','2021-03-18 01:03:39'),(104,'slide-delete','web','2021-03-18 01:03:39','2021-03-18 01:03:39'),(105,'tag-list','web','2021-03-18 01:03:39','2021-03-18 01:03:39'),(106,'tag-create','web','2021-03-18 01:03:39','2021-03-18 01:03:39'),(107,'tag-edit','web','2021-03-18 01:03:39','2021-03-18 01:03:39'),(108,'tag-delete','web','2021-03-18 01:03:39','2021-03-18 01:03:39'),(117,'user-list','web','2021-03-18 10:27:32','2021-03-18 10:27:32'),(118,'user-create','web','2021-03-18 10:27:32','2021-03-18 10:27:32'),(119,'user-edit','web','2021-03-18 10:28:18','2021-03-18 10:28:18'),(120,'user-delete','web','2021-03-18 10:28:18','2021-03-18 10:27:32'),(121,'profile-list','web','2021-04-13 03:02:05','2021-04-13 03:02:05'),(122,'profile-create','web','2021-04-13 03:02:05','2021-04-13 03:02:05'),(123,'profile-edit','web','2021-04-13 03:02:05','2021-04-13 03:02:05'),(124,'profile-delete','web','2021-04-13 03:02:05','2021-04-13 03:02:05');
/*!40000 ALTER TABLE `permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `profiles`
--

DROP TABLE IF EXISTS `profiles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `profiles` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `about` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `opening_hours` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `facebook` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `google_plus` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `instagram` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `video_embed` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `profiles`
--

LOCK TABLES `profiles` WRITE;
/*!40000 ALTER TABLE `profiles` DISABLE KEYS */;
INSERT INTO `profiles` VALUES (1,'TPID','jonathan-carroll','One of the world\'s premier academic and research institutions, the Jonathan Carroll University has driven new ways of thinking since our 1876 founding. Today, JCU is an intellectual destination that draws inspired scholars to our Hyde Park and international campuses, keeping JCU at the nexus of ideas that challenge and change the world.','0431321845, 0431321846, 0431321847','Lolak Tambolango, Kec. Lolak, Kabupaten Bolaang Mongondow, Sulawesi Utara','tpid@bolmongkab.go.id','Mon-Fri: 8:00am-8:00pm  Sat: 8:00am-3:00pm  Sun: Closed',NULL,NULL,NULL,NULL,'assets/profile/WfBEsTRQeIN6S7FEQV16FRvhK4fwJTdLxo1nSxN1.png','https://www.youtube.com/embed/-AhmuMqZB0s',NULL,'2021-01-14 20:33:02','2023-03-15 16:26:12');
/*!40000 ALTER TABLE `profiles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role_has_permissions`
--

DROP TABLE IF EXISTS `role_has_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `role_has_permissions` (
  `permission_id` bigint unsigned NOT NULL,
  `role_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`permission_id`,`role_id`),
  KEY `role_has_permissions_role_id_foreign` (`role_id`),
  CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role_has_permissions`
--

LOCK TABLES `role_has_permissions` WRITE;
/*!40000 ALTER TABLE `role_has_permissions` DISABLE KEYS */;
INSERT INTO `role_has_permissions` VALUES (9,1),(10,1),(11,1),(12,1),(17,1),(18,1),(19,1),(20,1),(25,1),(26,1),(27,1),(28,1),(37,1),(38,1),(39,1),(40,1),(45,1),(46,1),(47,1),(48,1),(69,1),(70,1),(71,1),(72,1),(77,1),(78,1),(79,1),(80,1),(81,1),(82,1),(83,1),(84,1),(85,1),(86,1),(87,1),(88,1),(93,1),(94,1),(95,1),(96,1),(101,1),(102,1),(103,1),(104,1),(105,1),(106,1),(107,1),(108,1),(117,1),(118,1),(119,1),(120,1),(119,2);
/*!40000 ALTER TABLE `role_has_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `roles` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'Admin','web','2021-03-18 01:05:27','2021-03-18 01:05:27'),(2,'User','web','2021-03-18 01:51:16','2021-03-18 01:51:16');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `slides`
--

DROP TABLE IF EXISTS `slides`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `slides` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `slides`
--

LOCK TABLES `slides` WRITE;
/*!40000 ALTER TABLE `slides` DISABLE KEYS */;
INSERT INTO `slides` VALUES (1,'BKD','inspiration-innovation-and-discovery','Badan Pegelolaan Keuangan dan Aset daerah Kabupaten Bolaang Mongondow','assets/slide/rrDxyKKWVZ35Y2QHHU1jiCLmyQwg3ILhexCr8Oik.jpg',NULL,'2021-01-14 20:17:02','2021-04-12 23:43:01'),(2,'Kabupaten Bolaang Mongondow','investing-in-knowledge','Bomong Maju, Bolmong Hebat','assets/slide/iBdkCGPqbjVAGX1r1DVBrPFEEQOpDJxYWFNlqPFX.jpg',NULL,'2021-01-14 20:17:56','2021-04-12 23:45:19'),(3,'Covid 19','open-minds-creating-future','Patuhi protokol kesehatan, dan dukung program vaksinasi dari pemerintah','assets/slide/hX56UHh9ZDzSO8qr2UcperSfiDZcl7jNvzfRRO5s.png',NULL,'2021-01-14 20:18:28','2021-04-12 23:45:44');
/*!40000 ALTER TABLE `slides` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tags`
--

DROP TABLE IF EXISTS `tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tags` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tags`
--

LOCK TABLES `tags` WRITE;
/*!40000 ALTER TABLE `tags` DISABLE KEYS */;
INSERT INTO `tags` VALUES (1,'PPID','news',NULL,'2021-01-16 02:18:20','2021-05-27 05:19:03'),(2,'Bupati','colleges',NULL,'2021-01-16 02:18:26','2021-05-27 05:18:56'),(3,'Pemkab Bolmong','liberal-arts',NULL,'2021-01-16 02:18:37','2021-05-27 05:18:45'),(4,'Keuangan','university',NULL,'2021-01-16 02:18:50','2021-05-27 05:18:37'),(5,'Bolmong','education',NULL,'2021-01-16 02:18:56','2021-05-27 05:18:28'),(6,'BKD','blog',NULL,'2021-01-16 02:19:08','2021-05-27 05:18:20'),(7,'Full time','full-time','2021-01-18 22:53:56','2021-01-18 22:51:46','2021-01-18 22:53:56'),(8,'Full time with sandwich year','full-time-with-sandwich-year','2021-01-18 22:53:53','2021-01-18 22:52:01','2021-01-18 22:53:53'),(9,'Full time with year abroad','full-time-with-year-abroad','2021-01-18 22:53:50','2021-01-18 22:52:16','2021-01-18 22:53:50');
/*!40000 ALTER TABLE `tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_admin` enum('Y','N') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'N',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'TPID','tpid@bolmongkab.go.id',NULL,'$2y$10$tn5vizLGCpe0Ln8JqZjG5OvuWX0b4vmk5NQLQstc/9lC2tK4WWcpa',NULL,'Y','2021-03-18 01:05:27','2023-03-15 16:33:10'),(2,'Ifan Lumape','fnnight@gmail.com',NULL,'$2y$10$/2l38hFbVYMQQ0ngl5LO8..jYW3MPoGmaMV2kUQEEdIAlsFIineDG',NULL,'N','2021-03-18 03:26:34','2021-03-18 03:26:34');
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

-- Dump completed on 2023-03-16 22:23:47
