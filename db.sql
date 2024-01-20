-- MariaDB dump 10.19  Distrib 10.4.30-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: db
-- ------------------------------------------------------
-- Server version	10.4.30-MariaDB-1:10.4.30+maria~ubu2004-log

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
-- Table structure for table `bodypart_exercise`
--

DROP TABLE IF EXISTS `bodypart_exercise`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bodypart_exercise` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `bodypart_id` bigint(20) unsigned NOT NULL,
  `exercise_id` bigint(20) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `bodypart_exercise_bodypart_id_foreign` (`bodypart_id`),
  KEY `bodypart_exercise_exercise_id_foreign` (`exercise_id`),
  CONSTRAINT `bodypart_exercise_bodypart_id_foreign` FOREIGN KEY (`bodypart_id`) REFERENCES `bodyparts` (`id`) ON DELETE CASCADE,
  CONSTRAINT `bodypart_exercise_exercise_id_foreign` FOREIGN KEY (`exercise_id`) REFERENCES `exercises` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bodypart_exercise`
--

LOCK TABLES `bodypart_exercise` WRITE;
/*!40000 ALTER TABLE `bodypart_exercise` DISABLE KEYS */;
INSERT INTO `bodypart_exercise` VALUES (1,1,1,NULL,NULL),(2,6,1,NULL,NULL),(3,1,2,NULL,NULL),(4,2,2,NULL,NULL),(5,5,3,NULL,NULL),(6,6,3,NULL,NULL),(7,3,4,NULL,NULL),(8,1,5,NULL,NULL),(9,4,5,NULL,NULL),(10,6,5,NULL,NULL),(11,5,6,NULL,NULL),(12,2,7,NULL,NULL),(13,3,7,NULL,NULL),(14,3,8,NULL,NULL),(15,4,8,NULL,NULL),(16,5,8,NULL,NULL),(17,1,9,NULL,NULL),(18,5,9,NULL,NULL),(19,1,10,NULL,NULL),(20,5,10,NULL,NULL),(21,6,10,NULL,NULL),(22,6,11,NULL,NULL),(23,2,12,NULL,NULL),(24,1,13,NULL,NULL),(25,2,13,NULL,NULL),(26,1,14,NULL,NULL),(27,5,14,NULL,NULL),(28,6,14,NULL,NULL),(29,4,15,NULL,NULL),(30,6,15,NULL,NULL),(31,1,16,NULL,NULL),(32,6,16,NULL,NULL),(33,1,17,NULL,NULL),(34,2,17,NULL,NULL),(35,1,18,NULL,NULL),(36,4,18,NULL,NULL),(37,6,18,NULL,NULL),(38,5,19,NULL,NULL),(39,1,20,NULL,NULL),(40,2,20,NULL,NULL),(41,4,20,NULL,NULL),(42,1,21,NULL,NULL),(43,5,21,NULL,NULL),(44,1,22,NULL,NULL),(45,4,22,NULL,NULL),(46,3,23,NULL,NULL),(47,5,23,NULL,NULL),(48,3,24,NULL,NULL),(49,6,24,NULL,NULL),(50,1,25,NULL,NULL),(51,4,25,NULL,NULL),(52,6,25,NULL,NULL),(53,2,26,NULL,NULL),(54,6,26,NULL,NULL),(55,3,27,NULL,NULL),(56,6,27,NULL,NULL),(57,4,28,NULL,NULL);
/*!40000 ALTER TABLE `bodypart_exercise` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bodyparts`
--

DROP TABLE IF EXISTS `bodyparts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bodyparts` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bodyparts`
--

LOCK TABLES `bodyparts` WRITE;
/*!40000 ALTER TABLE `bodyparts` DISABLE KEYS */;
INSERT INTO `bodyparts` VALUES (1,'chest','2024-01-18 18:31:50','2024-01-18 18:31:50'),(2,'back','2024-01-18 18:31:50','2024-01-18 18:31:50'),(3,'legs','2024-01-18 18:31:50','2024-01-18 18:31:50'),(4,'arms','2024-01-18 18:31:50','2024-01-18 18:31:50'),(5,'shoulders','2024-01-18 18:31:50','2024-01-18 18:31:50'),(6,'abs','2024-01-18 18:31:50','2024-01-18 18:31:50');
/*!40000 ALTER TABLE `bodyparts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exercises`
--

DROP TABLE IF EXISTS `exercises`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exercises` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exercises`
--

LOCK TABLES `exercises` WRITE;
/*!40000 ALTER TABLE `exercises` DISABLE KEYS */;
INSERT INTO `exercises` VALUES (1,'bench press','This is a description for the exercise.','2024-01-18 18:31:50','2024-01-18 18:31:50'),(2,'dumbell flyes','This is a description for the exercise.','2024-01-18 18:31:50','2024-01-18 18:31:50'),(3,'incline press','This is a description for the exercise.','2024-01-18 18:31:50','2024-01-18 18:31:50'),(4,'decline press','This is a description for the exercise.','2024-01-18 18:31:50','2024-01-18 18:31:50'),(5,'squat','This is a description for the exercise.','2024-01-18 18:31:50','2024-01-18 18:31:50'),(6,'front squat','This is a description for the exercise.','2024-01-18 18:31:50','2024-01-18 18:31:50'),(7,'lunges','This is a description for the exercise.','2024-01-18 18:31:50','2024-01-18 18:31:50'),(8,'leg extension','This is a description for the exercise.','2024-01-18 18:31:50','2024-01-18 18:31:50'),(9,'leg press','This is a description for the exercise.','2024-01-18 18:31:50','2024-01-18 18:31:50'),(10,'leg raise','This is a description for the exercise.','2024-01-18 18:31:50','2024-01-18 18:31:50'),(11,'pull up','This is a description for the exercise.','2024-01-18 18:31:50','2024-01-18 18:31:50'),(12,'lat pull down','This is a description for the exercise.','2024-01-18 18:31:50','2024-01-18 18:31:50'),(13,'deadlift','This is a description for the exercise.','2024-01-18 18:31:50','2024-01-18 18:31:50'),(14,'bent over rows','This is a description for the exercise.','2024-01-18 18:31:50','2024-01-18 18:31:50'),(15,'push up','This is a description for the exercise.','2024-01-18 18:31:50','2024-01-18 18:31:50'),(16,'shoulder press','This is a description for the exercise.','2024-01-18 18:31:50','2024-01-18 18:31:50'),(17,'lateral raises','This is a description for the exercise.','2024-01-18 18:31:50','2024-01-18 18:31:50'),(18,'rear delt fly','This is a description for the exercise.','2024-01-18 18:31:50','2024-01-18 18:31:50'),(19,'crunches','This is a description for the exercise.','2024-01-18 18:31:50','2024-01-18 18:31:50'),(20,'bicep curl','This is a description for the exercise.','2024-01-18 18:31:50','2024-01-18 18:31:50'),(21,'incline dumbell curl','This is a description for the exercise.','2024-01-18 18:31:50','2024-01-18 18:31:50'),(22,'ez bar curl','This is a description for the exercise.','2024-01-18 18:31:50','2024-01-18 18:31:50'),(23,'tricep pushdown','This is a description for the exercise.','2024-01-18 18:31:50','2024-01-18 18:31:50'),(24,'skull crusher','This is a description for the exercise.','2024-01-18 18:31:50','2024-01-18 18:31:50'),(25,'dips','This is a description for the exercise.','2024-01-18 18:31:50','2024-01-18 18:31:50'),(26,'calf raise','This is a description for the exercise.','2024-01-18 18:31:50','2024-01-18 18:31:50'),(27,'seated calf raise','This is a description for the exercise.','2024-01-18 18:31:50','2024-01-18 18:31:50'),(28,'cable crunches','This is a description for the exercise.','2024-01-18 18:31:50','2024-01-18 18:31:50');
/*!40000 ALTER TABLE `exercises` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp(),
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
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=248 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (235,'2014_10_12_000000_create_users_table',1),(236,'2014_10_12_100000_create_password_reset_tokens_table',1),(237,'2019_08_19_000000_create_failed_jobs_table',1),(238,'2019_12_14_000001_create_personal_access_tokens_table',1),(239,'2024_01_04_202938_create_exercises_table',1),(240,'2024_01_05_144426_create_workouts_table',1),(241,'2024_01_05_172900_create_bodyparts_table',1),(242,'2024_01_05_173536_create_reviews_table',1),(243,'2024_01_05_182638_create_workout_exercise_table',1),(244,'2024_01_05_182953_create_workout_bodypart_table',1),(245,'2024_01_05_183511_create_workout_user_table',1),(246,'2024_01_13_135616_create_exercise_bodyparts_table',1),(247,'2024_01_14_131140_create_wishlists_table',1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_reset_tokens`
--

DROP TABLE IF EXISTS `password_reset_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_reset_tokens`
--

LOCK TABLES `password_reset_tokens` WRITE;
/*!40000 ALTER TABLE `password_reset_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_reset_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) unsigned NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personal_access_tokens`
--

LOCK TABLES `personal_access_tokens` WRITE;
/*!40000 ALTER TABLE `personal_access_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `personal_access_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reviews`
--

DROP TABLE IF EXISTS `reviews`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reviews` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `content` text NOT NULL,
  `rating` int(10) unsigned NOT NULL,
  `user_id` bigint(20) unsigned NOT NULL,
  `workout_id` bigint(20) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `reviews_user_id_foreign` (`user_id`),
  KEY `reviews_workout_id_foreign` (`workout_id`),
  CONSTRAINT `reviews_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  CONSTRAINT `reviews_workout_id_foreign` FOREIGN KEY (`workout_id`) REFERENCES `workouts` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reviews`
--

LOCK TABLES `reviews` WRITE;
/*!40000 ALTER TABLE `reviews` DISABLE KEYS */;
INSERT INTO `reviews` VALUES (1,'Architecto nesciunt sunt incidunt velit dolores. Officiis veritatis qui vel aut quia sunt non quam. Dolorem et occaecati fugiat reiciendis soluta.',7,5,25,'2024-01-18 18:31:50','2024-01-18 18:31:50'),(2,'Nobis natus eveniet iste nobis accusamus. Maxime qui est non. Beatae quidem quae dolorem dolor. Sapiente ab rerum inventore officiis.',2,9,27,'2024-01-18 18:31:50','2024-01-18 18:31:50'),(3,'Sint quae dignissimos eveniet qui sapiente. Non voluptas aut explicabo excepturi corporis expedita. Inventore sed rerum perspiciatis eaque harum itaque.',1,1,46,'2024-01-18 18:31:50','2024-01-18 18:31:50'),(4,'Nisi mollitia sit qui non. Earum deleniti aut tempore odit sint nostrum quia. Impedit qui ducimus suscipit alias sint.',1,7,30,'2024-01-18 18:31:50','2024-01-18 18:31:50'),(5,'Illum iusto corrupti earum et quidem placeat. Nesciunt maxime iure voluptatum nesciunt rerum. Possimus et est aut sit aspernatur. Placeat ut beatae magni.',2,7,39,'2024-01-18 18:31:50','2024-01-18 18:31:50'),(6,'Alias earum dolorem laboriosam architecto. Soluta nesciunt quis voluptate molestiae. Voluptate minima nulla esse laboriosam modi vel. Officia et autem nesciunt et consequatur laudantium.',4,4,2,'2024-01-18 18:31:50','2024-01-18 18:31:50'),(7,'Et voluptas et ab reprehenderit ex. Qui veniam consectetur suscipit tempore excepturi quo. Quos a eum facilis error blanditiis. Velit nulla voluptates voluptatibus dolor voluptas tenetur.',10,4,26,'2024-01-18 18:31:50','2024-01-18 18:31:50'),(8,'Facere vel libero hic. Consequatur quaerat ab dolorem et qui ab. Eos harum quaerat officia debitis commodi neque recusandae molestiae. Sequi odio architecto magnam amet fuga.',1,5,29,'2024-01-18 18:31:50','2024-01-18 18:31:50'),(9,'Cum a repudiandae sed alias. Cumque non nulla fugit temporibus nihil. Voluptate quaerat velit sit aut harum fugit.',10,4,35,'2024-01-18 18:31:50','2024-01-18 18:31:50'),(10,'Sit consequuntur enim vero ipsum. Praesentium voluptatem id et adipisci vel explicabo nemo totam. Et amet neque suscipit modi eius.',10,4,27,'2024-01-18 18:31:50','2024-01-18 18:31:50');
/*!40000 ALTER TABLE `reviews` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Glenda Harris','mable05@example.net','2024-01-18 18:31:50','$2y$12$5r237u3Ot/4qPGUsY1BKLO3Lx1/QV7b..a8nskg.GZLS.hx6sBl6y','dcsWrxPLld','2024-01-18 18:31:50','2024-01-18 18:31:50'),(2,'Lora Blick','hcorwin@example.com','2024-01-18 18:31:50','$2y$12$5r237u3Ot/4qPGUsY1BKLO3Lx1/QV7b..a8nskg.GZLS.hx6sBl6y','rraIwGpplz','2024-01-18 18:31:50','2024-01-18 18:31:50'),(3,'Mrs. Marcia Barrows','wuckert.anahi@example.com','2024-01-18 18:31:50','$2y$12$5r237u3Ot/4qPGUsY1BKLO3Lx1/QV7b..a8nskg.GZLS.hx6sBl6y','I6mUIg35pY','2024-01-18 18:31:50','2024-01-18 18:31:50'),(4,'Tabitha White','dubuque.hoyt@example.com','2024-01-18 18:31:50','$2y$12$5r237u3Ot/4qPGUsY1BKLO3Lx1/QV7b..a8nskg.GZLS.hx6sBl6y','3ssouOKtUP','2024-01-18 18:31:50','2024-01-18 18:31:50'),(5,'Vladimir Jacobi','lyda37@example.net','2024-01-18 18:31:50','$2y$12$5r237u3Ot/4qPGUsY1BKLO3Lx1/QV7b..a8nskg.GZLS.hx6sBl6y','5QAt2LEZZn','2024-01-18 18:31:50','2024-01-18 18:31:50'),(6,'Katharina Boehm','oberbrunner.alva@example.net','2024-01-18 18:31:50','$2y$12$5r237u3Ot/4qPGUsY1BKLO3Lx1/QV7b..a8nskg.GZLS.hx6sBl6y','JEF75yTfKu','2024-01-18 18:31:50','2024-01-18 18:31:50'),(7,'Donald Cormier Jr.','concepcion.yost@example.com','2024-01-18 18:31:50','$2y$12$5r237u3Ot/4qPGUsY1BKLO3Lx1/QV7b..a8nskg.GZLS.hx6sBl6y','ZKK1a0CnRK','2024-01-18 18:31:50','2024-01-18 18:31:50'),(8,'Heloise Ernser','brayan.quigley@example.com','2024-01-18 18:31:50','$2y$12$5r237u3Ot/4qPGUsY1BKLO3Lx1/QV7b..a8nskg.GZLS.hx6sBl6y','evhqt9dc5L','2024-01-18 18:31:50','2024-01-18 18:31:50'),(9,'Ahmed Oberbrunner','hodkiewicz.claud@example.net','2024-01-18 18:31:50','$2y$12$5r237u3Ot/4qPGUsY1BKLO3Lx1/QV7b..a8nskg.GZLS.hx6sBl6y','6AvvnOW2jw','2024-01-18 18:31:50','2024-01-18 18:31:50'),(10,'Miss Dariana Considine','hmorissette@example.net','2024-01-18 18:31:50','$2y$12$5r237u3Ot/4qPGUsY1BKLO3Lx1/QV7b..a8nskg.GZLS.hx6sBl6y','foea59peSJ','2024-01-18 18:31:50','2024-01-18 18:31:50'),(11,'glen','glenmega@student.arteveldehs.be',NULL,'$2y$12$FfUBGZD8/KzV5CuA9h2czOc4K8j7Ns78w9Hoj.8v2GquTmgL6zqzy','W5pOWgU5SBcRdVySXx54P4kyZyFwl0NdcRZzt8fKVVDuJwPIT7ErQy8cJZId','2024-01-18 18:32:18','2024-01-18 18:32:18');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wishlists`
--

DROP TABLE IF EXISTS `wishlists`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wishlists` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL,
  `workout_id` bigint(20) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `wishlists_user_id_foreign` (`user_id`),
  KEY `wishlists_workout_id_foreign` (`workout_id`),
  CONSTRAINT `wishlists_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  CONSTRAINT `wishlists_workout_id_foreign` FOREIGN KEY (`workout_id`) REFERENCES `workouts` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wishlists`
--

LOCK TABLES `wishlists` WRITE;
/*!40000 ALTER TABLE `wishlists` DISABLE KEYS */;
/*!40000 ALTER TABLE `wishlists` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `workout_bodypart`
--

DROP TABLE IF EXISTS `workout_bodypart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `workout_bodypart` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `bodypart_id` bigint(20) unsigned NOT NULL,
  `workout_id` bigint(20) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `workout_bodypart_bodypart_id_foreign` (`bodypart_id`),
  KEY `workout_bodypart_workout_id_foreign` (`workout_id`),
  CONSTRAINT `workout_bodypart_bodypart_id_foreign` FOREIGN KEY (`bodypart_id`) REFERENCES `bodyparts` (`id`) ON DELETE CASCADE,
  CONSTRAINT `workout_bodypart_workout_id_foreign` FOREIGN KEY (`workout_id`) REFERENCES `workouts` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=112 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `workout_bodypart`
--

LOCK TABLES `workout_bodypart` WRITE;
/*!40000 ALTER TABLE `workout_bodypart` DISABLE KEYS */;
INSERT INTO `workout_bodypart` VALUES (1,2,1,NULL,NULL),(2,2,2,NULL,NULL),(3,4,3,NULL,NULL),(4,1,4,NULL,NULL),(5,2,4,NULL,NULL),(6,6,4,NULL,NULL),(7,3,5,NULL,NULL),(8,4,5,NULL,NULL),(9,5,5,NULL,NULL),(10,4,6,NULL,NULL),(11,6,6,NULL,NULL),(12,3,7,NULL,NULL),(13,4,7,NULL,NULL),(14,2,8,NULL,NULL),(15,1,9,NULL,NULL),(16,4,9,NULL,NULL),(17,6,9,NULL,NULL),(18,1,10,NULL,NULL),(19,2,10,NULL,NULL),(20,5,10,NULL,NULL),(21,6,11,NULL,NULL),(22,4,12,NULL,NULL),(23,1,13,NULL,NULL),(24,3,13,NULL,NULL),(25,6,13,NULL,NULL),(26,4,14,NULL,NULL),(27,6,14,NULL,NULL),(28,2,15,NULL,NULL),(29,6,15,NULL,NULL),(30,2,16,NULL,NULL),(31,3,16,NULL,NULL),(32,5,16,NULL,NULL),(33,2,17,NULL,NULL),(34,5,17,NULL,NULL),(35,4,18,NULL,NULL),(36,5,18,NULL,NULL),(37,1,19,NULL,NULL),(38,3,19,NULL,NULL),(39,6,19,NULL,NULL),(40,1,20,NULL,NULL),(41,2,20,NULL,NULL),(42,5,20,NULL,NULL),(43,1,21,NULL,NULL),(44,4,21,NULL,NULL),(45,6,22,NULL,NULL),(46,1,23,NULL,NULL),(47,2,23,NULL,NULL),(48,3,23,NULL,NULL),(49,4,24,NULL,NULL),(50,5,24,NULL,NULL),(51,6,24,NULL,NULL),(52,2,25,NULL,NULL),(53,2,26,NULL,NULL),(54,3,26,NULL,NULL),(55,1,27,NULL,NULL),(56,3,27,NULL,NULL),(57,3,28,NULL,NULL),(58,2,29,NULL,NULL),(59,2,30,NULL,NULL),(60,3,30,NULL,NULL),(61,1,31,NULL,NULL),(62,5,31,NULL,NULL),(63,5,32,NULL,NULL),(64,1,33,NULL,NULL),(65,2,33,NULL,NULL),(66,1,34,NULL,NULL),(67,2,34,NULL,NULL),(68,5,34,NULL,NULL),(69,1,35,NULL,NULL),(70,2,35,NULL,NULL),(71,5,35,NULL,NULL),(72,1,36,NULL,NULL),(73,2,36,NULL,NULL),(74,3,37,NULL,NULL),(75,4,37,NULL,NULL),(76,1,38,NULL,NULL),(77,5,38,NULL,NULL),(78,1,39,NULL,NULL),(79,2,39,NULL,NULL),(80,3,39,NULL,NULL),(81,1,40,NULL,NULL),(82,3,40,NULL,NULL),(83,5,40,NULL,NULL),(84,1,41,NULL,NULL),(85,2,41,NULL,NULL),(86,1,42,NULL,NULL),(87,2,42,NULL,NULL),(88,4,42,NULL,NULL),(89,3,43,NULL,NULL),(90,4,43,NULL,NULL),(91,6,43,NULL,NULL),(92,3,44,NULL,NULL),(93,4,44,NULL,NULL),(94,2,45,NULL,NULL),(95,3,45,NULL,NULL),(96,5,45,NULL,NULL),(97,3,46,NULL,NULL),(98,6,46,NULL,NULL),(99,2,47,NULL,NULL),(111,2,59,NULL,NULL);
/*!40000 ALTER TABLE `workout_bodypart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `workout_exercise`
--

DROP TABLE IF EXISTS `workout_exercise`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `workout_exercise` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `exercise_id` bigint(20) unsigned NOT NULL,
  `workout_id` bigint(20) unsigned NOT NULL,
  `sets` int(10) unsigned DEFAULT NULL,
  `reps` int(10) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `workout_exercise_exercise_id_foreign` (`exercise_id`),
  KEY `workout_exercise_workout_id_foreign` (`workout_id`),
  CONSTRAINT `workout_exercise_exercise_id_foreign` FOREIGN KEY (`exercise_id`) REFERENCES `exercises` (`id`) ON DELETE CASCADE,
  CONSTRAINT `workout_exercise_workout_id_foreign` FOREIGN KEY (`workout_id`) REFERENCES `workouts` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=308 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `workout_exercise`
--

LOCK TABLES `workout_exercise` WRITE;
/*!40000 ALTER TABLE `workout_exercise` DISABLE KEYS */;
INSERT INTO `workout_exercise` VALUES (1,7,1,3,5,NULL,NULL),(2,12,1,4,8,NULL,NULL),(3,14,1,3,11,NULL,NULL),(4,16,1,3,12,NULL,NULL),(5,19,1,1,11,NULL,NULL),(6,27,1,3,13,NULL,NULL),(7,1,2,3,8,NULL,NULL),(8,4,2,2,15,NULL,NULL),(9,9,2,3,8,NULL,NULL),(10,15,2,1,5,NULL,NULL),(11,17,2,1,18,NULL,NULL),(12,21,2,3,10,NULL,NULL),(13,5,3,4,15,NULL,NULL),(14,6,3,5,15,NULL,NULL),(15,8,3,2,12,NULL,NULL),(16,17,3,1,16,NULL,NULL),(17,25,3,1,11,NULL,NULL),(18,2,4,3,10,NULL,NULL),(19,4,4,2,8,NULL,NULL),(20,5,4,5,19,NULL,NULL),(21,8,4,5,5,NULL,NULL),(22,10,4,4,5,NULL,NULL),(23,11,4,4,5,NULL,NULL),(24,17,4,1,19,NULL,NULL),(25,5,5,5,13,NULL,NULL),(26,6,5,3,12,NULL,NULL),(27,12,5,1,19,NULL,NULL),(28,13,5,2,8,NULL,NULL),(29,20,5,1,7,NULL,NULL),(30,26,5,2,16,NULL,NULL),(31,3,6,1,8,NULL,NULL),(32,4,6,3,20,NULL,NULL),(33,6,6,4,8,NULL,NULL),(34,7,6,5,12,NULL,NULL),(35,12,6,4,20,NULL,NULL),(36,14,6,2,7,NULL,NULL),(37,16,6,4,15,NULL,NULL),(38,25,6,3,14,NULL,NULL),(39,5,7,2,8,NULL,NULL),(40,6,7,4,20,NULL,NULL),(41,8,7,1,18,NULL,NULL),(42,17,7,3,8,NULL,NULL),(43,27,7,3,15,NULL,NULL),(44,1,8,1,15,NULL,NULL),(45,2,8,2,5,NULL,NULL),(46,6,8,3,12,NULL,NULL),(47,21,8,5,19,NULL,NULL),(48,22,8,5,6,NULL,NULL),(49,27,8,3,7,NULL,NULL),(50,5,9,3,9,NULL,NULL),(51,12,9,2,6,NULL,NULL),(52,21,9,1,8,NULL,NULL),(53,25,9,4,16,NULL,NULL),(54,5,10,3,5,NULL,NULL),(55,6,10,3,9,NULL,NULL),(56,15,10,3,16,NULL,NULL),(57,17,10,1,8,NULL,NULL),(58,25,10,5,19,NULL,NULL),(59,4,11,1,14,NULL,NULL),(60,5,11,2,13,NULL,NULL),(61,8,11,4,18,NULL,NULL),(62,20,11,2,16,NULL,NULL),(63,24,11,5,16,NULL,NULL),(64,27,11,5,8,NULL,NULL),(65,8,12,3,11,NULL,NULL),(66,11,12,5,15,NULL,NULL),(67,15,12,2,14,NULL,NULL),(68,22,12,1,7,NULL,NULL),(69,24,12,1,17,NULL,NULL),(70,25,12,4,5,NULL,NULL),(71,28,12,4,14,NULL,NULL),(72,5,13,2,8,NULL,NULL),(73,9,13,2,15,NULL,NULL),(74,11,13,2,11,NULL,NULL),(75,14,13,2,7,NULL,NULL),(76,18,13,4,16,NULL,NULL),(77,27,13,2,12,NULL,NULL),(78,3,14,1,14,NULL,NULL),(79,8,14,2,13,NULL,NULL),(80,9,14,2,5,NULL,NULL),(81,11,14,3,13,NULL,NULL),(82,13,14,1,16,NULL,NULL),(83,17,14,4,5,NULL,NULL),(84,28,14,4,14,NULL,NULL),(85,7,15,1,15,NULL,NULL),(87,19,15,4,13,NULL,NULL),(88,28,15,2,5,NULL,NULL),(89,1,16,2,14,NULL,NULL),(90,6,16,4,6,NULL,NULL),(91,11,16,1,9,NULL,NULL),(92,13,16,2,15,NULL,NULL),(93,14,16,3,12,NULL,NULL),(94,15,16,2,10,NULL,NULL),(95,22,16,4,11,NULL,NULL),(96,2,17,5,12,NULL,NULL),(97,5,17,4,20,NULL,NULL),(98,7,17,3,17,NULL,NULL),(99,9,17,1,15,NULL,NULL),(100,11,17,1,11,NULL,NULL),(101,18,17,4,19,NULL,NULL),(102,25,17,2,16,NULL,NULL),(103,3,18,2,15,NULL,NULL),(104,4,18,3,16,NULL,NULL),(105,5,18,4,15,NULL,NULL),(106,7,18,3,7,NULL,NULL),(108,20,18,2,18,NULL,NULL),(109,25,18,5,19,NULL,NULL),(110,2,19,2,11,NULL,NULL),(111,3,19,4,12,NULL,NULL),(112,5,19,4,17,NULL,NULL),(113,6,19,1,11,NULL,NULL),(114,12,19,1,15,NULL,NULL),(115,22,19,5,17,NULL,NULL),(116,24,19,5,17,NULL,NULL),(117,5,20,3,8,NULL,NULL),(118,6,20,2,8,NULL,NULL),(119,10,20,2,8,NULL,NULL),(120,14,20,2,10,NULL,NULL),(121,27,20,4,13,NULL,NULL),(122,28,20,4,16,NULL,NULL),(123,1,21,1,5,NULL,NULL),(124,5,21,3,16,NULL,NULL),(125,8,21,5,7,NULL,NULL),(126,16,21,4,19,NULL,NULL),(127,17,21,2,7,NULL,NULL),(128,20,21,4,9,NULL,NULL),(129,21,21,3,15,NULL,NULL),(130,1,22,3,15,NULL,NULL),(131,10,22,3,11,NULL,NULL),(132,12,22,1,16,NULL,NULL),(133,17,22,5,10,NULL,NULL),(134,21,22,3,19,NULL,NULL),(135,2,23,4,20,NULL,NULL),(136,7,23,4,17,NULL,NULL),(137,9,23,5,8,NULL,NULL),(138,16,23,3,12,NULL,NULL),(139,22,23,1,16,NULL,NULL),(140,9,24,2,14,NULL,NULL),(141,13,24,3,19,NULL,NULL),(142,17,24,1,5,NULL,NULL),(143,18,24,5,8,NULL,NULL),(144,22,24,2,11,NULL,NULL),(145,25,24,3,16,NULL,NULL),(146,2,25,3,6,NULL,NULL),(147,3,25,2,16,NULL,NULL),(148,5,25,5,16,NULL,NULL),(149,9,25,2,17,NULL,NULL),(150,14,25,4,7,NULL,NULL),(151,18,25,3,19,NULL,NULL),(152,24,25,1,10,NULL,NULL),(153,25,25,1,8,NULL,NULL),(154,8,26,2,16,NULL,NULL),(155,11,26,1,19,NULL,NULL),(156,15,26,3,19,NULL,NULL),(157,21,26,1,9,NULL,NULL),(158,1,27,4,8,NULL,NULL),(159,7,27,4,16,NULL,NULL),(160,14,27,1,11,NULL,NULL),(161,21,27,4,8,NULL,NULL),(162,23,27,5,10,NULL,NULL),(163,27,27,1,18,NULL,NULL),(164,5,28,3,10,NULL,NULL),(165,14,28,3,8,NULL,NULL),(166,15,28,2,10,NULL,NULL),(167,16,28,2,13,NULL,NULL),(168,21,28,3,11,NULL,NULL),(169,26,28,4,12,NULL,NULL),(170,4,29,5,16,NULL,NULL),(171,17,29,3,18,NULL,NULL),(172,21,29,3,13,NULL,NULL),(173,23,29,5,19,NULL,NULL),(174,26,29,5,19,NULL,NULL),(175,1,30,1,14,NULL,NULL),(176,5,30,3,12,NULL,NULL),(177,10,30,2,18,NULL,NULL),(178,14,30,2,9,NULL,NULL),(179,15,30,5,5,NULL,NULL),(180,2,31,5,6,NULL,NULL),(181,3,31,3,19,NULL,NULL),(182,7,31,1,7,NULL,NULL),(183,28,31,3,8,NULL,NULL),(184,2,32,4,11,NULL,NULL),(185,3,32,3,15,NULL,NULL),(186,9,32,4,8,NULL,NULL),(187,17,32,5,10,NULL,NULL),(188,12,33,5,5,NULL,NULL),(189,14,33,3,8,NULL,NULL),(190,17,33,4,6,NULL,NULL),(191,18,33,5,12,NULL,NULL),(192,21,33,2,5,NULL,NULL),(193,24,33,5,7,NULL,NULL),(194,27,33,1,10,NULL,NULL),(195,8,34,4,8,NULL,NULL),(196,10,34,3,12,NULL,NULL),(197,11,34,4,20,NULL,NULL),(198,15,34,2,10,NULL,NULL),(199,27,34,5,5,NULL,NULL),(200,4,35,3,20,NULL,NULL),(201,7,35,2,19,NULL,NULL),(202,9,35,3,8,NULL,NULL),(203,11,35,1,11,NULL,NULL),(204,13,35,5,13,NULL,NULL),(205,24,35,2,19,NULL,NULL),(206,27,35,4,14,NULL,NULL),(207,28,35,5,5,NULL,NULL),(208,3,36,4,17,NULL,NULL),(209,10,36,5,5,NULL,NULL),(210,12,36,1,16,NULL,NULL),(211,22,36,2,18,NULL,NULL),(212,27,36,5,6,NULL,NULL),(213,28,36,5,17,NULL,NULL),(214,3,37,2,9,NULL,NULL),(215,4,37,3,10,NULL,NULL),(216,20,37,5,14,NULL,NULL),(217,22,37,3,5,NULL,NULL),(218,23,37,1,8,NULL,NULL),(219,24,37,2,6,NULL,NULL),(220,26,37,5,16,NULL,NULL),(221,3,38,3,9,NULL,NULL),(222,6,38,4,11,NULL,NULL),(223,7,38,5,5,NULL,NULL),(224,22,38,2,13,NULL,NULL),(225,23,38,1,11,NULL,NULL),(226,5,39,4,7,NULL,NULL),(227,15,39,3,16,NULL,NULL),(228,17,39,2,12,NULL,NULL),(229,20,39,1,8,NULL,NULL),(230,27,39,4,18,NULL,NULL),(231,28,39,1,15,NULL,NULL),(232,1,40,3,18,NULL,NULL),(233,6,40,4,7,NULL,NULL),(234,9,40,4,14,NULL,NULL),(235,22,40,2,8,NULL,NULL),(236,1,41,3,19,NULL,NULL),(237,10,41,3,18,NULL,NULL),(238,12,41,1,6,NULL,NULL),(239,13,41,1,13,NULL,NULL),(240,16,41,5,16,NULL,NULL),(241,21,41,4,16,NULL,NULL),(242,25,41,4,15,NULL,NULL),(243,2,42,4,8,NULL,NULL),(244,5,42,1,19,NULL,NULL),(245,6,42,3,5,NULL,NULL),(246,12,42,1,20,NULL,NULL),(247,10,43,3,15,NULL,NULL),(248,20,43,1,18,NULL,NULL),(249,21,43,3,12,NULL,NULL),(250,23,43,1,14,NULL,NULL),(251,25,43,4,14,NULL,NULL),(252,9,44,1,9,NULL,NULL),(253,15,44,2,9,NULL,NULL),(254,19,44,1,19,NULL,NULL),(255,20,44,2,15,NULL,NULL),(256,22,44,1,20,NULL,NULL),(257,25,44,5,5,NULL,NULL),(258,6,45,5,12,NULL,NULL),(259,13,45,5,7,NULL,NULL),(260,15,45,1,20,NULL,NULL),(261,16,45,3,5,NULL,NULL),(262,21,45,1,15,NULL,NULL),(263,22,45,3,5,NULL,NULL),(264,2,46,1,12,NULL,NULL),(265,3,46,5,9,NULL,NULL),(266,4,46,4,7,NULL,NULL),(267,6,46,4,13,NULL,NULL),(268,10,46,5,7,NULL,NULL),(269,14,46,4,16,NULL,NULL),(270,17,46,5,20,NULL,NULL),(271,1,47,3,14,NULL,NULL),(272,9,47,4,15,NULL,NULL),(273,13,47,2,13,NULL,NULL),(274,23,47,3,19,NULL,NULL),(275,26,47,1,10,NULL,NULL),(276,27,47,1,6,NULL,NULL),(290,18,15,1,1,NULL,NULL),(303,14,19,1,1,NULL,NULL),(304,1,59,1,1,NULL,NULL),(305,11,59,2,3,NULL,NULL),(306,23,59,4,10,NULL,NULL),(307,3,59,3,2,NULL,NULL);
/*!40000 ALTER TABLE `workout_exercise` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `workout_user`
--

DROP TABLE IF EXISTS `workout_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `workout_user` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL,
  `workout_id` bigint(20) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `workout_user_user_id_foreign` (`user_id`),
  KEY `workout_user_workout_id_foreign` (`workout_id`),
  CONSTRAINT `workout_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  CONSTRAINT `workout_user_workout_id_foreign` FOREIGN KEY (`workout_id`) REFERENCES `workouts` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `workout_user`
--

LOCK TABLES `workout_user` WRITE;
/*!40000 ALTER TABLE `workout_user` DISABLE KEYS */;
INSERT INTO `workout_user` VALUES (1,6,1,NULL,NULL),(2,5,2,NULL,NULL),(3,2,3,NULL,NULL),(4,6,4,NULL,NULL),(5,8,4,NULL,NULL),(6,2,5,NULL,NULL),(7,3,5,NULL,NULL),(8,3,6,NULL,NULL),(9,5,6,NULL,NULL),(10,7,6,NULL,NULL),(11,5,7,NULL,NULL),(12,7,7,NULL,NULL),(13,4,8,NULL,NULL),(14,5,8,NULL,NULL),(15,10,8,NULL,NULL),(16,6,9,NULL,NULL),(17,8,9,NULL,NULL),(18,6,10,NULL,NULL),(19,8,10,NULL,NULL),(20,9,10,NULL,NULL),(21,2,11,NULL,NULL),(22,4,11,NULL,NULL),(23,10,11,NULL,NULL),(24,6,12,NULL,NULL),(25,4,13,NULL,NULL),(26,7,13,NULL,NULL),(27,8,13,NULL,NULL),(28,5,14,NULL,NULL),(29,9,14,NULL,NULL),(30,10,14,NULL,NULL),(31,1,15,NULL,NULL),(32,10,16,NULL,NULL),(33,9,17,NULL,NULL),(34,1,18,NULL,NULL),(35,9,18,NULL,NULL),(36,10,18,NULL,NULL),(37,5,19,NULL,NULL),(38,2,20,NULL,NULL),(39,4,21,NULL,NULL),(40,6,21,NULL,NULL),(41,8,21,NULL,NULL),(42,3,22,NULL,NULL),(43,4,22,NULL,NULL),(44,7,22,NULL,NULL),(45,4,23,NULL,NULL),(46,8,23,NULL,NULL),(47,1,24,NULL,NULL),(48,9,25,NULL,NULL),(49,9,26,NULL,NULL),(50,6,27,NULL,NULL),(51,8,27,NULL,NULL),(52,2,28,NULL,NULL),(53,9,29,NULL,NULL),(54,8,30,NULL,NULL),(55,10,30,NULL,NULL),(56,4,31,NULL,NULL),(57,6,31,NULL,NULL),(58,4,32,NULL,NULL),(59,10,32,NULL,NULL),(60,4,33,NULL,NULL),(61,9,33,NULL,NULL),(62,2,34,NULL,NULL),(63,8,34,NULL,NULL),(64,5,35,NULL,NULL),(65,8,35,NULL,NULL),(66,6,36,NULL,NULL),(67,9,36,NULL,NULL),(68,2,37,NULL,NULL),(69,6,37,NULL,NULL),(70,9,37,NULL,NULL),(71,1,38,NULL,NULL),(72,4,38,NULL,NULL),(73,6,38,NULL,NULL),(74,10,39,NULL,NULL),(75,1,40,NULL,NULL),(76,5,41,NULL,NULL),(77,1,42,NULL,NULL),(78,3,42,NULL,NULL),(79,6,43,NULL,NULL),(80,8,43,NULL,NULL),(81,7,44,NULL,NULL),(82,4,45,NULL,NULL),(83,5,45,NULL,NULL),(84,6,46,NULL,NULL),(85,7,47,NULL,NULL);
/*!40000 ALTER TABLE `workout_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `workouts`
--

DROP TABLE IF EXISTS `workouts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `workouts` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `duration` int(11) NOT NULL DEFAULT 0,
  `description` text DEFAULT NULL,
  `instructions` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=60 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `workouts`
--

LOCK TABLES `workouts` WRITE;
/*!40000 ALTER TABLE `workouts` DISABLE KEYS */;
INSERT INTO `workouts` VALUES (1,'High-Intensity Interval Training (HIIT)',38,'A high-energy workout involving short bursts of intense exercise.','Follow the instructor\'s cues for intervals of high-intensity exercises.','2024-01-18 18:31:50','2024-01-18 18:31:50'),(2,'CrossFit Circuit Blast',93,'A challenging CrossFit circuit to boost strength and endurance.','Complete each exercise in the circuit for the specified duration.','2024-01-18 18:31:50','2024-01-18 18:31:50'),(3,'Cardio Kickboxing',119,'A cardiovascular workout with elements of kickboxing techniques.','Combine cardio and kickboxing moves in this energetic session.','2024-01-18 18:31:50','2024-01-18 18:31:50'),(4,'Powerlifting Party',60,'A weightlifting party focusing on powerlifting movements.','Lift heavy weights with proper form for maximum powerlifting benefits.','2024-01-18 18:31:50','2024-01-18 18:31:50'),(5,'Yoga Fusion Flow',33,'A yoga session that combines different yoga styles for a flowy experience.','Flow through yoga poses, focusing on breath and movement.','2024-01-18 18:31:50','2024-01-18 18:31:50'),(6,'Bootcamp Bonanza',120,'A dynamic and intense bootcamp-style workout.','Engage in a variety of exercises in a bootcamp format.','2024-01-18 18:31:50','2024-01-18 18:31:50'),(7,'Core Crusher Challenge',90,'An intense core-focused workout designed to challenge your midsection.','Perform core exercises with proper form and controlled movements.','2024-01-18 18:31:50','2024-01-18 18:31:50'),(8,'Tabata Torch',120,'A workout based on the Tabata protocol, a form of high-intensity interval training.','Alternate between 20 seconds of intense exercise and 10 seconds of rest.','2024-01-18 18:31:50','2024-01-18 18:31:50'),(9,'Spin Sprint Session',53,'An energetic spinning session for cardiovascular fitness.','Adjust resistance and speed on the spin bike for an effective session.','2024-01-18 18:31:50','2024-01-18 18:31:50'),(10,'Functional Fitness Fiesta',45,'A functional fitness workout targeting various muscle groups.','Use functional movements to enhance overall fitness.','2024-01-18 18:31:50','2024-01-18 18:31:50'),(11,'Pilates Power Hour',109,'A Pilates session emphasizing core strength and flexibility.','Focus on controlled movements and core engagement in Pilates exercises.','2024-01-18 18:31:50','2024-01-18 18:31:50'),(12,'MMA Madness',10,'Mixed Martial Arts-inspired workout for a full-body challenge.','Embrace the intensity of mixed martial arts moves for a full-body workout.','2024-01-18 18:31:50','2024-01-18 18:31:50'),(13,'Agility Agility Attack',85,'An agility-focused workout to enhance coordination and speed.','Improve agility with quick, dynamic movements and coordination exercises.','2024-01-18 18:31:50','2024-01-18 18:31:50'),(14,'TRX Total Body Takedown',53,'Total Body Resistance Exercise using TRX straps for a comprehensive workout.','Utilize TRX straps for a challenging total body workout.','2024-01-18 18:31:50','2024-01-18 18:31:50'),(15,'Zumba Dance Delight',99,'A dance-inspired workout with Latin rhythms for a fun cardio session.','Dance to the rhythm and enjoy a cardio workout with Zumba.','2024-01-18 18:31:50','2024-01-18 18:31:50'),(16,'Barre Burnout',90,'Ballet-inspired workout to strengthen and tone muscles.','Channel your inner ballerina for a workout that targets strength and grace.','2024-01-18 18:31:50','2024-01-18 18:31:50'),(17,'Kettlebell Khaos',30,'A kettlebell workout to improve strength, power, and endurance.','Swing kettlebells with proper form to enhance strength and endurance.','2024-01-18 18:31:50','2024-01-18 18:31:50'),(18,'Circuit City',92,'A circuit-style workout incorporating various exercises.','Complete a series of exercises in a circuit for a well-rounded workout.','2024-01-18 18:31:50','2024-01-18 18:31:50'),(19,'Aerial Acrobatics Adventure',33,'Aerial silks and hoop exercises for a unique full-body workout.','Perform aerial exercises for a unique and engaging full-body workout.','2024-01-18 18:31:50','2024-01-18 18:31:50'),(20,'Rowing Rampage',109,'Rowing machine workout to build strength and cardiovascular fitness.','Row with proper technique to build strength and cardiovascular endurance.','2024-01-18 18:31:50','2024-01-18 18:31:50'),(21,'Bodyweight Bliss',90,'A bodyweight-only workout for strength and flexibility.','Use your body weight for a workout that can be done anywhere.','2024-01-18 18:31:50','2024-01-18 18:31:50'),(22,'Step Aerobics Extravaganza',22,'Step aerobics routine for cardiovascular fitness and leg strength.','Step up and down with precision for a cardio and leg workout.','2024-01-18 18:31:50','2024-01-18 18:31:50'),(23,'Mindful Meditation Marathon',28,'Mindful meditation combined with light exercises for overall well-being.','Combine mindfulness and light exercise for a holistic well-being session.','2024-01-18 18:31:50','2024-01-18 18:31:50'),(24,'Plyometric Party',112,'Explosive movements for power and strength development.','Engage in explosive movements to enhance power and strength.','2024-01-18 18:31:50','2024-01-18 18:31:50'),(25,'Synchronized Swimming Sweat Session',85,'Combining swimming drills with full-body exercises for a unique workout.','Incorporate swimming drills with bodyweight exercises for a challenge.','2024-01-18 18:31:50','2024-01-18 18:31:50'),(26,'Dancehall Dynamic Duo',26,'Dancehall dance moves paired with dynamic exercises.','Dance to the upbeat rhythm of Dancehall music while working out.','2024-01-18 18:31:50','2024-01-18 18:31:50'),(27,'Hiking Hurdles',77,'A hike with added exercises for a full-body outdoor workout.','Hike while incorporating strength and cardio exercises for added challenge.','2024-01-18 18:31:50','2024-01-18 18:31:50'),(28,'Sprint and Stretch',89,'Short sprints followed by stretching for a quick yet effective session.','Sprint for short distances followed by stretching for flexibility.','2024-01-18 18:31:50','2024-01-18 18:31:50'),(29,'Karate Kata Cardio',91,'Karate-inspired movements for a cardio and strength workout.','Execute karate-inspired movements for a cardio and strength boost.','2024-01-18 18:31:50','2024-01-18 18:31:50'),(30,'Ropes and Reps',19,'Battle ropes exercises for a challenging upper body and cardio workout.','Move battle ropes in various patterns for upper body and cardio benefits.','2024-01-18 18:31:50','2024-01-18 18:31:50'),(31,'Aqua Aerobics Affair',111,'Aquatic workout for low-impact resistance training.','Perform exercises in the water for a low-impact resistance workout.','2024-01-18 18:31:50','2024-01-18 18:31:50'),(32,'BodyCombat Battle',106,'Mixed martial arts-inspired workout for cardio and strength.','Combine martial arts moves for a cardio and strength-building routine.','2024-01-18 18:31:50','2024-01-18 18:31:50'),(33,'Rock Climbing Rendezvous',27,'Rock climbing drills for upper body and grip strength.','Climb rocks for upper body strength and challenge your overall fitness.','2024-01-18 18:31:50','2024-01-18 18:31:50'),(34,'Parkour Power-Up',30,'Parkour movements for agility and full-body conditioning.','Navigate through obstacles using parkour techniques for agility.','2024-01-18 18:31:50','2024-01-18 18:31:50'),(35,'Tai Chi Tranquility',41,'Tai Chi movements for balance, flexibility, and relaxation.','Practice Tai Chi movements for balance, flexibility, and relaxation.','2024-01-18 18:31:50','2024-01-18 18:31:50'),(36,'Mountain Biking Mayhem',10,'Mountain biking with intermittent strength and cardio intervals.','Mountain bike with intermittent strength and cardio intervals.','2024-01-18 18:31:50','2024-01-18 18:31:50'),(37,'Wrestling Workout War',51,'Wrestling-inspired drills for a full-body workout.','Engage in wrestling-inspired exercises for a full-body workout.','2024-01-18 18:31:50','2024-01-18 18:31:50'),(38,'Balance Ball Blast',77,'Balance ball exercises for core stability and strength.','Stabilize on a balance ball while performing core exercises.','2024-01-18 18:31:50','2024-01-18 18:31:50'),(39,'Battle Ropes Bonfire',93,'Intense battle ropes workout for upper body and cardiovascular endurance.','Move battle ropes in a challenging routine for upper body strength.','2024-01-18 18:31:50','2024-01-18 18:31:50'),(40,'Boxing Blitz',19,'Boxing drills for cardio, agility, and strength.','Throw punches and kicks for a cardio and agility workout in boxing.','2024-01-18 18:31:50','2024-01-18 18:31:50'),(41,'Inversion Immersion',59,'Inversion exercises for core strength and balance.','Perform exercises in an inverted position for core strength.','2024-01-18 18:31:50','2024-01-18 18:31:50'),(42,'Stairway to Fitness',58,'Stair climbing with added exercises for a full-body challenge.','Climb stairs with additional exercises for a full-body challenge.','2024-01-18 18:31:50','2024-01-18 18:31:50'),(43,'Medicine Ball Mayhem',107,'Medicine ball exercises for strength, power, and coordination.','Utilize a medicine ball for strength, power, and coordination.','2024-01-18 18:31:50','2024-01-18 18:31:50'),(44,'Jump Rope Jamboree',102,'Jump rope exercises for cardiovascular fitness and coordination.','Jump rope for cardiovascular fitness and improved coordination.','2024-01-18 18:31:50','2024-01-18 18:31:50'),(45,'Surfset Strength',72,'Surfing-inspired balance and strength workout.','Simulate surfing movements on a stability board for balance and strength.','2024-01-18 18:31:50','2024-01-18 18:31:50'),(46,'Skating Skills Showdown',16,'Skating drills for lower body strength and endurance.','Rollerblade or ice skate for lower body strength and endurance.','2024-01-18 18:31:50','2024-01-18 18:31:50'),(47,'Hula Hoop Hysteria',68,'Hula hoop exercises for core strength and coordination.','Swing a hula hoop for core strength and coordination.','2024-01-18 18:31:50','2024-01-18 18:31:50'),(59,'test edit',12,'test edit','test edit','2024-01-20 11:45:41','2024-01-20 11:46:08');
/*!40000 ALTER TABLE `workouts` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-01-20 11:48:02
