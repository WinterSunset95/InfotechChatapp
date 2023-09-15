-- MariaDB dump 10.19-11.1.2-MariaDB, for Linux (x86_64)
--
-- Host: localhost    Database: infotechchat
-- ------------------------------------------------------
-- Server version	11.1.2-MariaDB

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
-- Table structure for table `messages`
--

DROP TABLE IF EXISTS `messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `messages` (
  `message_sender` text NOT NULL,
  `message_timestamp` timestamp NULL DEFAULT current_timestamp(),
  `message_text` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `messages`
--

LOCK TABLES `messages` WRITE;
/*!40000 ALTER TABLE `messages` DISABLE KEYS */;
INSERT INTO `messages` VALUES
('wally','2023-08-14 13:12:06','initial test with username---'),
('Invictus','2023-08-14 13:14:40','hello'),
('wally','2023-08-14 13:15:23','nigga'),
('wally','2023-08-14 13:15:26','wassup'),
('Invictus','2023-08-14 13:15:29','okay gbjdfhkfhvnjsdnhb'),
('Invictus','2023-08-14 13:15:47','usernae is show too small'),
('Joshua','2023-08-14 13:16:47','joshua'),
('Joshua','2023-08-14 13:17:18','hello noobs'),
('wally','2023-08-14 13:17:26','nigga'),
('Invictus','2023-08-14 13:18:44','mini niggas'),
('Edmund lalsangliana','2023-08-14 13:19:36','kjydfkhg'),
('Edmund lalsangliana','2023-08-16 11:35:37','asdfasdf'),
('Edmund lalsangliana','2023-08-16 11:35:54','ten'),
('Joshua','2023-08-16 11:39:03','what'),
('Joshua','2023-08-16 11:39:14','the'),
('Joshua','2023-08-16 11:39:19','hell'),
('Edmund lalsangliana','2023-08-16 11:44:30','ryrhrw'),
('Edmund lalsangliana','2023-08-16 11:49:09','fdtjadtj'),
('wally','2023-08-16 12:11:26','hello tawia'),
('TawiaK','2023-08-16 12:11:29','wassuppp'),
('wally','2023-08-16 12:11:34','wassaaaapppppppp'),
('Edmund lalsangliana','2023-08-16 12:34:36','fhtehh'),
('Edmund lalsangliana','2023-08-16 13:30:44','MOBILE LEGEND'),
('Invictus','2023-08-16 13:33:38','so very noice now'),
('wally','2023-08-16 13:38:32','hello wala from linux'),
('Invictus','2023-08-16 13:43:22','from'),
('Edmund lalsangliana','2023-08-17 11:36:50','U see me'),
('Invictus','2023-08-17 11:38:27','of course'),
('Edmund lalsangliana','2023-08-17 11:54:32','ghhte'),
('Edmund lalsangliana','2023-08-17 11:55:48','hhh'),
('Joshua','2023-08-17 11:58:37','joshua'),
('Edmund lalsangliana','2023-08-17 11:59:29','ttht'),
('Edmund lalsangliana','2023-08-17 12:03:31','what goes up and never come down'),
('Invictus','2023-08-17 12:24:47','idk'),
('wally','2023-08-17 12:33:28','sup'),
('Edmund lalsangliana','2023-08-17 12:35:11','age'),
('Edmund lalsangliana','2023-08-17 12:35:51','it has three hand but cnat clap'),
('Invictus','2023-08-17 12:37:24','a wall clock'),
('Edmund lalsangliana','2023-08-17 12:41:52','what get wet whle drying'),
('Edmund lalsangliana','2023-08-17 12:41:52','fff'),
('Edmund lalsangliana','2023-08-17 12:42:04','ggg'),
('Edmund lalsangliana','2023-08-17 12:42:31','gg'),
('Joshua','2023-08-17 12:42:40','sddad'),
('Joshua','2023-08-17 12:42:58','i am a hackerrrrr'),
('Joshua','2023-08-17 12:43:05','hello nubbs'),
('Edmund lalsangliana','2023-08-17 12:44:19','gggg'),
('Joshua','2023-08-17 12:44:20','hello'),
('wally','2023-08-17 12:44:25','naicu'),
('Joshua','2023-08-17 12:44:25','noobs'),
('wally','2023-08-17 12:44:42','ggs'),
('TawiaK','2023-08-17 12:44:44','im typing'),
('Edmund lalsangliana','2023-08-17 12:45:58','What can u catch, but not throw'),
('wally','2023-08-17 12:47:02','a cold'),
('Edmund lalsangliana','2023-08-17 12:47:34','what can be seen but cannot touched'),
('Invictus','2023-08-17 12:48:37','what is at the end of a rainbow'),
('Edmund lalsangliana','2023-08-17 12:48:44','w'),
('Invictus','2023-08-17 12:49:17','it has a tail and head but no body or arms'),
('Invictus','2023-08-17 12:50:00','anime characters'),
('TawiaK','2023-08-17 12:52:21','nothing starts with \"n\" and ends with \"g\"'),
('Joshua','2023-08-17 12:52:34','Na Gam Hi Lo Ham'),
('Invictus','2023-08-17 13:11:53','I am going home now'),
('Edmund lalsangliana','2023-08-17 13:30:00','lll');
/*!40000 ALTER TABLE `messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `posts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` text NOT NULL,
  `message` text NOT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts`
--

LOCK TABLES `posts` WRITE;
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
INSERT INTO `posts` VALUES
(1,'wallace','Fly me to the moon','2023-09-04 10:13:38'),
(2,'wallace','And let me play among the stars','2023-09-04 11:05:47'),
(3,'wallace','Let me see what spring is like','2023-09-04 11:36:29'),
(4,'wallace','On Jupiter and Mars','2023-09-04 11:36:43');
/*!40000 ALTER TABLE `posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `statuses`
--

DROP TABLE IF EXISTS `statuses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `statuses` (
  `username` text NOT NULL,
  `date` date NOT NULL,
  `caption` text NOT NULL,
  `image` text NOT NULL,
  `video` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `statuses`
--

LOCK TABLES `statuses` WRITE;
/*!40000 ALTER TABLE `statuses` DISABLE KEYS */;
/*!40000 ALTER TABLE `statuses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `name` text NOT NULL,
  `password` text NOT NULL,
  `gmail` text NOT NULL,
  `phone` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES
('wally','hello','hello',898987),
('Invictus','vectus','ukhupstawtah@gmail.com',2147483647),
('Joshua','Joshuachatapp','infotechjoshua@gmail.com',2147483647),
('Edmund lalsangliana','123456789','edmundlalsangliana',987654321),
('TawiaK','infotechtawia1234','infotechtawia@gmail.com',2147483647);
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

-- Dump completed on 2023-09-11 18:48:11
