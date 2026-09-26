CREATE DATABASE IF NOT EXISTS macaci_utulok;
USE macaci_utulok;

-- MySQL dump 10.13  Distrib 8.0.46, for Win64 (x86_64)
--
-- Host: localhost    Database: macaci_utulok
-- ------------------------------------------------------
-- Server version	8.0.46

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
-- Table structure for table `adopters`
--

DROP TABLE IF EXISTS `adopters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `adopters` (
  `adopterID` int NOT NULL AUTO_INCREMENT,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `catID` int NOT NULL,
  `adoption_date` date NOT NULL,
  `phone_num` varchar(20) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`adopterID`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `adopters`
--

LOCK TABLES `adopters` WRITE;
/*!40000 ALTER TABLE `adopters` DISABLE KEYS */;
INSERT INTO `adopters` VALUES (1,'Tony','Stark',3,'2025-05-23','+380000000001','erlgjwei@fdijr.com'),(2,'Captain','America',4,'2026-01-30','+6754758743','ywervf@bjhdfh.com'),(3,'Spider','Men',4,'2025-06-02','+84587879549','srigeisgh@rgiu.com'),(4,'Darth','Veider',5,'2025-06-18','+8945823495','dskfbgreourlrkgje@dsjgh.com'),(5,'Princess','Cinderella',6,'2025-07-07','+3049593759','dfgqhfjrheio@rgkjq.com'),(6,'Professor','McGonagall',7,'2025-07-25','+43782985596','daflkghjge@ergjn.com'),(7,'Harry','Potter',8,'2025-08-11','+489560234','jteuyjyfiy@earlig.com');
/*!40000 ALTER TABLE `adopters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cats`
--

DROP TABLE IF EXISTS `cats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cats` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `gender` enum('male','female') NOT NULL,
  `age` int NOT NULL,
  `breed` varchar(100) DEFAULT NULL,
  `health` text NOT NULL,
  `cat_character` text NOT NULL,
  `recommendations` text,
  `date_arrival` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cats`
--

LOCK TABLES `cats` WRITE;
/*!40000 ALTER TABLE `cats` DISABLE KEYS */;
INSERT INTO `cats` VALUES (1,'Luna','female',3,'American Curl','Healthy. No known health problems.','Curious, playful, sociable and enjoys climbing and exploring.','Provide toys, climbing areas and regular playtime. Monitor the ears during routine check-ups.','2026-08-14'),(2,'Milo','male',5,'British Shorthair','Healthy. Slight tendency to gain weight.','Calm, independent, affectionate and intelligent.','Control food portions and provide regular physical activity. Avoid overfeeding.','2026-08-21'),(3,'Simba','female',2,'Bengal','Healthy. No known health problems.','Active, curious, intelligent and sociable. Enjoys playing with water.','Provide plenty of interactive toys and opportunities for physical activity.','2026-09-02'),(4,'Leo','male',7,'Maine Coon','Generally healthy. Requires regular coat care.','Gentle, balanced, sociable and friendly. Can tolerate being alone.','Brush the coat regularly and provide enough food and fresh water. Monitor general health due to large body size.','2026-08-05'),(5,'Oliver','male',4,'Munchkin','Healthy. No known health problems.','Active, friendly, intelligent and confident.','Keep indoors and provide safe climbing and playing areas. Avoid excessive jumping from high places.','2026-09-10'),(6,NULL,'male',1,NULL,'Under observation after arrival. Mild digestive problems.','Shy and cautious around people. Slowly becomes more comfortable.','Provide a quiet environment, monitor eating and drinking, and follow the prescribed diet.','2026-09-15'),(7,'Nala','female',6,'Siamese','Healthy. No known health problems.','Energetic, loyal, communicative and very attached to people.','Provide regular interaction and playtime. Avoid leaving the cat alone for long periods.','2026-08-28'),(8,'Mia','female',3,'Nevsky Masquerade','Healthy. No known health problems.','Calm, gentle, affectionate and cautious around strangers.','Brush the coat regularly and provide a quiet resting place.','2026-09-04'),(9,NULL,'female',2,NULL,'Minor skin irritation. Treatment in progress.','Calm but somewhat nervous around unfamiliar people.','Follow the veterinary treatment plan and monitor the skin condition. Keep the sleeping area clean.','2026-09-12'),(10,'Charlie','male',8,'Asian','Healthy. No known health problems.','Calm, affectionate, intelligent and sociable.','Provide a warm and comfortable resting area. Avoid prolonged periods of loneliness.','2026-07-30'),(11,'Bella','female',2,'British Shorthair','Healthy. No known health problems.','Calm, affectionate and friendly. Enjoys spending time near people.','Provide balanced food, regular playtime and routine veterinary check-ups.','2026-08-03'),(12,'Oscar','male',4,'Maine Coon','Healthy. No known health problems.','Gentle, sociable and playful. Gets along well with other cats.','Brush the coat regularly and provide enough space for activity.','2026-08-11'),(13,'Cleo','female',5,'Siamese','Healthy. No known health problems.','Very social, vocal, intelligent and strongly attached to people.','Provide plenty of interaction and interactive toys.','2026-08-19'),(14,'Toby','male',3,'Bengal','Healthy. High energy level.','Very active, curious and playful. Loves exploring new places.','Provide climbing structures, toys and daily physical activity.','2026-08-25'),(15,'Sophie','female',6,'Munchkin','Healthy. No known health problems.','Friendly, playful and confident.','Provide safe toys and avoid excessive jumping from high surfaces.','2026-09-01'),(16,'Max','male',9,'British Shorthair','Healthy. Slightly overweight.','Calm, independent and affectionate.','Control food portions and encourage daily physical activity.','2026-07-26'),(17,'Lily','female',1,NULL,'Healthy. Vaccination schedule is being completed.','Shy but playful. Quickly becomes comfortable in a quiet environment.','Provide a calm space and continue the recommended vaccination schedule.','2026-09-17'),(18,'Rocky','male',7,'Maine Coon','Mild dental problems. Treatment recommended.','Calm, friendly and patient.','Follow dental care recommendations and schedule regular oral check-ups.','2026-08-07'),(19,'Daisy','female',4,'American Curl','Healthy. No known health problems.','Playful, curious and affectionate.','Provide interactive toys and regularly check the ears.','2026-08-30'),(20,'Jack','male',5,NULL,'Recovering from a minor respiratory infection.','Quiet, gentle and somewhat cautious around strangers.','Keep the sleeping area warm and clean and monitor breathing.','2026-09-06'),(21,'Ruby','female',3,'Nevsky Masquerade','Healthy. No known health problems.','Gentle, calm and affectionate.','Brush the coat regularly and provide a comfortable resting place.','2026-08-16'),(22,'Finn','male',2,'Bengal','Healthy. No known health problems.','Extremely energetic, intelligent and curious.','Provide daily exercise, climbing areas and mentally stimulating toys.','2026-09-08'),(23,'Chloe','female',8,'Siamese','Healthy. No known health problems.','Affectionate, vocal and very attached to her owner.','Provide regular human interaction and avoid prolonged isolation.','2026-07-22'),(24,'Theo','male',6,'Asian','Healthy. No known health problems.','Intelligent, calm and sociable.','Provide regular playtime and a comfortable resting area.','2026-08-09'),(25,'Zoe','female',2,'American Curl','Minor ear irritation. Under observation.','Active, curious and friendly.','Keep the ears clean according to veterinary instructions and monitor irritation.','2026-09-13'),(26,'Archie','male',10,'British Shorthair','Generally healthy for age. Requires regular monitoring.','Calm, independent and patient.','Provide senior-appropriate food and schedule regular veterinary examinations.','2026-07-18'),(27,'Ivy','female',5,NULL,'Healthy. No known health problems.','Reserved at first but affectionate after gaining trust.','Give her time to adapt and provide a quiet hiding place.','2026-08-23'),(28,'Jackie','female',3,'Munchkin','Healthy. No known health problems.','Friendly, playful and sociable.','Avoid high surfaces and provide toys suitable for indoor play.','2026-09-03'),(29,'Cooper','male',4,'Maine Coon','Healthy. No known health problems.','Gentle, playful and sociable.','Brush regularly and provide a large scratching post.','2026-08-27'),(30,NULL,'male',1,NULL,'Under observation. No serious health problems detected.','Very shy and cautious. Needs time to become comfortable around people.','Provide a quiet separate space, fresh water and regular meals. Minimize stress during adaptation.','2026-09-19');
/*!40000 ALTER TABLE `cats` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inventar`
--

DROP TABLE IF EXISTS `inventar`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `inventar` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nazov` varchar(100) NOT NULL,
  `typ` varchar(50) NOT NULL,
  `mnozstvo` decimal(10,2) NOT NULL,
  `jednotka` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inventar`
--

LOCK TABLES `inventar` WRITE;
/*!40000 ALTER TABLE `inventar` DISABLE KEYS */;
INSERT INTO `inventar` VALUES (1,'Granule pre macky','jedlo',50.00,'kg'),(2,'Konzervy pre macky','jedlo',120.00,'ks'),(3,'Vakcina proti besnote','vakcina',15.00,'ks'),(4,'Vakcina proti panleukopenii','vakcina',20.00,'ks'),(5,'Antibiotika','liek',30.00,'ks'),(6,'Lieky proti parazitom','liek',25.00,'ks'),(7,'Podstielka pre macky','hygiena',80.00,'kg'),(8,'Hracka mys','hracka',27.00,'ks'),(9,'Skrabadlo pre macky','hracka',12.00,'ks'),(10,'Napajacka pre macky','ubytovanie',27.00,'ks'),(11,'Krmidlo pre macky','ubytovanie',27.00,'ks'),(12,'Klietka pre mačku','ubytovanie',27.00,'ks');
/*!40000 ALTER TABLE `inventar` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `veterinarians`
--

DROP TABLE IF EXISTS `veterinarians`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `veterinarians` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `age` int NOT NULL,
  `work_duration` varchar(50) NOT NULL,
  `cats` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `veterinarians`
--

LOCK TABLES `veterinarians` WRITE;
/*!40000 ALTER TABLE `veterinarians` DISABLE KEYS */;
INSERT INTO `veterinarians` VALUES (1,'Andrii Koval',24,'10 mesiacov','Luna, Milo, Simba, Leo, Oliver, Nala'),(2,'Martin Šimko',33,'2,5 roka','Mia, Charlie, Bella, Oscar, Cleo, Toby'),(3,'Oleksii Bondarenko',27,'1 rok','Sophie, Max, Lily, Rocky, Daisy, Jack'),(4,'Pavol Hruška',48,'4 mesiace','Ivy, Jackie, Cooper, Bez mena č. 1, Bez mena č. 2'),(5,'Mykola Tkachenko',55,'3 roky','Ruby, Finn, Chloe, Theo, Zoe, Archie');
/*!40000 ALTER TABLE `veterinarians` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-09-26 21:31:57
