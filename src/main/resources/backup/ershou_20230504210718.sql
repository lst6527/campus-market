-- MySQL dump 10.13  Distrib 5.7.41, for Win64 (x86_64)
--
-- Host: localhost    Database: ershou
-- ------------------------------------------------------
-- Server version	5.7.41

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
-- Table structure for table `ylrc_comment`
--

DROP TABLE IF EXISTS `ylrc_comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ylrc_comment` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_time` datetime NOT NULL,
  `update_time` datetime NOT NULL,
  `content` varchar(1024) NOT NULL,
  `reply_to` varchar(64) DEFAULT NULL,
  `goods_id` bigint(20) DEFAULT NULL,
  `student_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `FKd01gnchhuj06oumqxrikccc3r` (`goods_id`) USING BTREE,
  KEY `FKswirics8hhydki5ff0emtmbii` (`student_id`) USING BTREE,
  CONSTRAINT `FKd01gnchhuj06oumqxrikccc3r` FOREIGN KEY (`goods_id`) REFERENCES `ylrc_goods` (`id`),
  CONSTRAINT `FKswirics8hhydki5ff0emtmbii` FOREIGN KEY (`student_id`) REFERENCES `ylrc_student` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ylrc_comment`
--

LOCK TABLES `ylrc_comment` WRITE;
/*!40000 ALTER TABLE `ylrc_comment` DISABLE KEYS */;
INSERT INTO `ylrc_comment` VALUES (18,'2022-03-20 15:12:37','2022-03-20 15:12:37','这个刚好是我需要的 学长可以卖给我吗？ 给你留言了。',NULL,39,11),(19,'2022-03-20 15:23:13','2022-03-20 15:23:13','我想要这个电脑',NULL,36,11),(22,'2022-04-24 10:03:19','2022-04-24 10:03:19','地方',NULL,38,13),(23,'2023-04-27 18:18:08','2023-04-27 18:18:08','要',NULL,44,2);
/*!40000 ALTER TABLE `ylrc_comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ylrc_database_bak`
--

DROP TABLE IF EXISTS `ylrc_database_bak`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ylrc_database_bak` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_time` datetime NOT NULL,
  `update_time` datetime NOT NULL,
  `filename` varchar(32) NOT NULL,
  `filepath` varchar(128) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ylrc_database_bak`
--

LOCK TABLES `ylrc_database_bak` WRITE;
/*!40000 ALTER TABLE `ylrc_database_bak` DISABLE KEYS */;
INSERT INTO `ylrc_database_bak` VALUES (29,'2023-05-04 19:25:15','2023-05-04 19:25:15','ershou_20230504192505.sql','C:\\Users\\Programmer\\IdeaProjects\\campus-market\\src\\main\\resources\\backup'),(30,'2023-05-04 19:33:34','2023-05-04 19:33:34','ershou_20230504193333.sql','C:\\Users\\Programmer\\IdeaProjects\\campus-market\\src\\main\\resources\\backup'),(31,'2023-05-04 19:35:38','2023-05-04 19:35:38','ershou_20230504193537.sql','C:\\Users\\Programmer\\IdeaProjects\\campus-market\\src\\main\\resources\\backup'),(32,'2023-05-04 19:38:12','2023-05-04 19:38:12','ershou_20230504193811.sql','C:\\Users\\Programmer\\IdeaProjects\\campus-market\\src\\main\\resources\\backup'),(33,'2023-05-04 21:07:19','2023-05-04 21:07:19','ershou_20230504210718.sql','C:\\Users\\Programmer\\IdeaProjects\\campus-market\\src\\main\\resources\\backup');
/*!40000 ALTER TABLE `ylrc_database_bak` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ylrc_friend_link`
--

DROP TABLE IF EXISTS `ylrc_friend_link`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ylrc_friend_link` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_time` datetime NOT NULL,
  `update_time` datetime NOT NULL,
  `name` varchar(64) NOT NULL,
  `sort` int(11) NOT NULL,
  `url` varchar(256) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ylrc_friend_link`
--

LOCK TABLES `ylrc_friend_link` WRITE;
/*!40000 ALTER TABLE `ylrc_friend_link` DISABLE KEYS */;
INSERT INTO `ylrc_friend_link` VALUES (12,'2022-03-20 21:17:52','2023-04-28 21:40:43','百度一下',0,'https://m.baidu.com/');
/*!40000 ALTER TABLE `ylrc_friend_link` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ylrc_goods`
--

DROP TABLE IF EXISTS `ylrc_goods`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ylrc_goods` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_time` datetime NOT NULL,
  `update_time` datetime NOT NULL,
  `buy_price` float NOT NULL,
  `content` varchar(1024) NOT NULL,
  `flag` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  `photo` varchar(128) NOT NULL,
  `recommend` int(11) NOT NULL,
  `sell_price` float NOT NULL,
  `status` int(11) NOT NULL,
  `goods_category_id` bigint(20) DEFAULT NULL,
  `student_id` bigint(20) DEFAULT NULL,
  `view_number` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `FKjtyl6pmb9j4aj64sm54xi1hbi` (`goods_category_id`) USING BTREE,
  KEY `FKf68a0a9u8u8hqckg0ycnjarv6` (`student_id`) USING BTREE,
  CONSTRAINT `FKf68a0a9u8u8hqckg0ycnjarv6` FOREIGN KEY (`student_id`) REFERENCES `ylrc_student` (`id`),
  CONSTRAINT `FKjtyl6pmb9j4aj64sm54xi1hbi` FOREIGN KEY (`goods_category_id`) REFERENCES `ylrc_goods_category` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ylrc_goods`
--

LOCK TABLES `ylrc_goods` WRITE;
/*!40000 ALTER TABLE `ylrc_goods` DISABLE KEYS */;
INSERT INTO `ylrc_goods` VALUES (36,'2022-03-20 15:05:32','2023-04-28 20:53:10',12888,'自己大学用的笔记本电脑， 陪伴了我四年， 专卖给有需要的学弟学妹。',0,'笔记本电脑','20220309/1646824511899.jpg',0,3000,1,9,2,26),(38,'2022-03-20 15:07:46','2023-04-28 21:49:00',5999,'iPhone手机，用了三年了，目前还是很给力流畅。',1,'iPhone手机','20220309/1646824532384.jpg',1,2100,1,4,2,15),(39,'2022-03-20 15:08:43','2023-04-28 20:29:49',100,'考研资料考研资料考研资料有需要的速度来看一下哈',0,'考研资料','20220309/1646824542159.jpg',1,9,1,44,2,24),(42,'2022-05-06 22:59:27','2023-04-28 20:59:56',45,'一个基本没有使用的滑板，色彩鲜艳，没有损坏',1,'滑板','20220506/1651849336178.jpeg',0,77,1,55,2,23),(43,'2023-04-27 16:20:18','2023-04-28 20:28:27',300,'九成新，无瑕疵，很好用，欲购从速',0,'小提琴','20230427/1682583581837.jpg',0,200,1,38,2,9),(44,'2023-04-27 16:42:57','2023-04-27 18:43:51',35,'二手书，少量痕迹，无缺页折损。。',0,'高数教材','20230427/1682584883218.jpeg',0,5,1,43,11,16),(46,'2023-04-28 20:44:18','2023-04-28 21:36:15',11,'1111111111111111111111111111111',0,'111111111111111111','20230428/1682685830987.jpg',0,1,3,18,2,0),(47,'2023-04-28 20:44:52','2023-04-28 21:48:40',222,'22222222222222222222222222222222222222222222',0,'22222222222222222','20230428/1682685871873.jpg',0,2,3,26,2,0),(48,'2023-04-28 20:45:32','2023-04-28 22:29:01',333,'3333333333333333333333333333333333',0,'33333333333333','20230428/1682685915682.jpg',0,3,3,18,2,0),(49,'2023-04-28 22:25:33','2023-04-28 22:25:33',444,'44444444444444444444444444444444',0,'44444444444','20230428/1682691916339.jpg',0,4,1,31,2,0);
/*!40000 ALTER TABLE `ylrc_goods` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ylrc_goods_category`
--

DROP TABLE IF EXISTS `ylrc_goods_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ylrc_goods_category` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_time` datetime NOT NULL,
  `update_time` datetime NOT NULL,
  `icon` varchar(32) DEFAULT NULL,
  `name` varchar(18) NOT NULL,
  `sort` int(11) NOT NULL,
  `parent_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `FKos35mkmw4k5dvi4fi2govg2pa` (`parent_id`) USING BTREE,
  CONSTRAINT `FKos35mkmw4k5dvi4fi2govg2pa` FOREIGN KEY (`parent_id`) REFERENCES `ylrc_goods_category` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ylrc_goods_category`
--

LOCK TABLES `ylrc_goods_category` WRITE;
/*!40000 ALTER TABLE `ylrc_goods_category` DISABLE KEYS */;
INSERT INTO `ylrc_goods_category` VALUES (1,'2022-03-20 20:20:05','2022-03-20 21:35:15','20200402/1585834512163.png','手机',0,NULL),(4,'2022-03-20 20:26:45','2022-03-20 21:35:54','20200402/1585834542235.png','智能机',1,1),(5,'2022-03-20 21:13:04','2022-03-20 21:36:24','20200402/1585834572308.png','手机配件',2,1),(6,'2022-03-20 21:37:05','2022-03-20 21:37:05','20200402/1585834607924.png','滑盖机',3,1),(7,'2022-03-20 21:37:23','2022-03-20 21:37:23','20200402/1585834633735.png','翻盖机',4,1),(8,'2022-03-20 21:37:50','2022-03-20 21:37:50','20200402/1585834662625.png','电脑',5,NULL),(9,'2022-03-20 21:38:08','2022-03-20 21:38:08','20200402/1585834679788.png','笔记本',6,8),(10,'2022-03-20 21:38:26','2022-03-20 21:38:26','20200402/1585834694895.png','台式机',7,8),(11,'2022-03-20 21:38:45','2022-03-20 21:38:45','20200402/1585834717184.png','平板',8,8),(15,'2022-03-20 18:46:54','2022-03-20 19:07:07','20200405/1586084764264.png','影音娱乐',9,NULL),(16,'2022-03-20 19:06:56','2022-03-20 19:07:20','20200405/1586084805468.png','耳机',10,15),(17,'2022-03-20 19:07:45','2022-03-20 19:07:45','20200405/1586084854001.png','MP3/MP4',11,15),(18,'2022-03-20 19:08:15','2022-03-20 19:08:15','20200405/1586084878657.png','游戏机',12,15),(19,'2022-03-20 19:08:44','2022-03-20 19:08:44','20200405/1586084911580.png','键盘',13,15),(20,'2022-03-20 19:09:04','2022-03-20 19:09:04','20200405/1586084936056.png','鼠标',14,15),(21,'2022-03-20 19:10:14','2022-03-20 19:10:14','20200405/1586085005899.png','数码配件',15,NULL),(22,'2022-03-20 19:10:45','2022-03-20 19:10:45','20200405/1586085024716.png','移动硬盘',16,21),(23,'2022-03-20 19:11:08','2022-03-20 19:11:08','20200405/1586085052292.png','相机',17,21),(24,'2022-03-20 19:11:25','2022-03-20 19:11:25','20200405/1586085077518.png','显示器',18,21),(25,'2022-03-20 19:11:50','2022-03-20 19:11:50','20200405/1586085102042.png','运动健身',19,NULL),(26,'2022-03-20 19:12:13','2022-03-20 19:12:13','20200405/1586085124703.png','篮球',20,25),(27,'2022-03-20 19:12:34','2022-03-20 19:12:34','20200405/1586085152812.png','足球',21,25),(28,'2022-03-20 19:12:53','2022-03-20 19:12:53','20200405/1586085164372.png','羽毛球',22,25),(29,'2022-03-20 19:13:11','2022-03-20 19:13:11','20200405/1586085182130.png','球拍',23,25),(30,'2022-03-20 19:13:50','2022-03-20 19:13:50','20200405/1586085217886.png','衣物鞋帽',24,NULL),(31,'2022-03-20 19:14:15','2022-03-20 19:14:15','20200405/1586085239138.png','上衣',25,30),(32,'2022-03-20 19:14:30','2022-03-20 19:14:30','20200405/1586085262037.png','裤子',26,30),(33,'2022-03-20 19:14:48','2022-03-20 19:14:48','20200405/1586085278533.png','背包',27,30),(34,'2022-03-20 19:15:12','2022-03-20 19:15:12','20200405/1586085302412.png','雨伞',28,30),(35,'2022-03-20 19:15:29','2022-03-20 19:15:29','20200405/1586085319791.png','鞋子',29,30),(36,'2022-03-20 19:15:55','2022-03-20 19:15:55','20200405/1586085349204.png','配饰',30,30),(37,'2022-03-20 19:16:38','2022-03-20 19:16:38','20200405/1586085388834.png','生活娱乐',31,NULL),(38,'2022-03-20 19:17:05','2022-03-20 19:17:05','20200405/1586085407122.png','乐器',32,37),(39,'2022-03-20 19:17:22','2022-03-20 19:17:22','20200405/1586085433434.png','虚拟账号',33,37),(40,'2022-03-20 19:17:39','2022-03-20 19:17:39','20200405/1586085449303.png','会员卡',34,37),(41,'2022-03-20 19:18:00','2022-03-20 19:18:00','20200405/1586085471766.png','化妆品',35,37),(42,'2022-03-20 19:18:31','2022-03-20 19:18:31','20200405/1586085499095.png','图书教材',36,NULL),(43,'2022-03-20 19:18:49','2022-03-20 19:18:49','20200405/1586085520436.png','教材',37,42),(44,'2022-03-20 19:19:05','2022-03-20 19:19:05','20200405/1586085534371.png','考研材料',38,42),(45,'2022-03-20 19:19:24','2022-03-20 19:19:24','20200405/1586085556673.png','课外书',39,42),(46,'2022-03-20 19:19:54','2022-03-20 19:19:54','20200405/1586085585909.png','交通出行',40,NULL),(47,'2022-03-20 19:20:18','2022-03-20 19:20:18','20200405/1586085604095.png','自行车',41,46),(48,'2022-03-20 19:20:35','2022-03-20 19:20:35','20200405/1586085624951.png','电动车',42,46),(49,'2022-03-20 19:21:01','2022-03-20 19:21:01','20200405/1586085652162.png','交通卡',43,46),(50,'2022-03-20 19:21:29','2022-03-20 19:21:29','20200405/1586085681117.png','个人技能',44,NULL),(51,'2022-03-20 19:21:47','2022-03-20 19:21:47','20200405/1586085696883.png','摄影',45,50),(52,'2022-03-20 19:22:05','2022-03-20 19:22:05','20200405/1586085714915.png','绘画',46,50),(53,'2022-03-20 19:22:29','2022-03-20 19:22:29','20200405/1586085739125.png','其他',46,NULL),(54,'2022-03-20 21:19:25','2022-03-20 21:19:40','20200411/1586611155253.png','手表',47,21),(55,'2022-03-20 22:31:58','2022-03-20 22:32:08','20200412/1586701902327.png','其他小类',48,53);
/*!40000 ALTER TABLE `ylrc_goods_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ylrc_menu`
--

DROP TABLE IF EXISTS `ylrc_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ylrc_menu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_time` datetime NOT NULL,
  `update_time` datetime NOT NULL,
  `name` varchar(18) NOT NULL,
  `url` varchar(128) DEFAULT NULL,
  `icon` varchar(32) DEFAULT NULL,
  `sort` int(11) NOT NULL,
  `parent_id` bigint(20) DEFAULT NULL,
  `is_bitton` bit(1) NOT NULL,
  `is_show` bit(1) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `FKsbtnjocfrq29e8taxdwo21gic` (`parent_id`) USING BTREE,
  CONSTRAINT `FKsbtnjocfrq29e8taxdwo21gic` FOREIGN KEY (`parent_id`) REFERENCES `ylrc_menu` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ylrc_menu`
--

LOCK TABLES `ylrc_menu` WRITE;
/*!40000 ALTER TABLE `ylrc_menu` DISABLE KEYS */;
INSERT INTO `ylrc_menu` VALUES (2,'2022-03-20 14:26:03','2022-03-20 18:24:53','系统设置','','mdi-settings',0,NULL,_binary '\0',_binary ''),(3,'2022-03-20 16:58:55','2022-03-20 18:26:02','菜单管理','/admin/menu/list','mdi-view-list',1,2,_binary '\0',_binary ''),(5,'2022-03-20 17:04:44','2022-03-20 18:27:53','新增','/admin/menu/add','mdi-plus',2,3,_binary '\0',_binary ''),(7,'2022-03-20 17:07:43','2022-03-20 12:11:25','角色管理','/admin/role/list','mdi-account-settings-variant',5,2,_binary '\0',_binary ''),(8,'2022-03-20 18:28:48','2022-03-20 22:04:45','编辑','edit(\'/admin/menu/edit\')','mdi-grease-pencil',3,3,_binary '',_binary ''),(9,'2022-03-20 18:30:00','2022-03-20 22:08:20','删除','del(\'/admin/menu/delete\')','mdi-close',4,3,_binary '',_binary ''),(10,'2022-03-20 12:12:00','2022-03-20 12:12:00','添加','/admin/role/add','mdi-account-plus',6,7,_binary '\0',_binary ''),(11,'2022-03-20 12:12:36','2022-03-20 22:10:45','编辑','edit(\'/admin/role/edit\')','mdi-account-edit',7,7,_binary '',_binary ''),(12,'2022-03-20 12:13:19','2022-03-20 22:15:27','删除','del(\'/admin/role/delete\')','mdi-account-remove',8,7,_binary '',_binary ''),(13,'2022-03-20 12:14:52','2022-03-20 12:17:00','用户管理','/admin/user/list','mdi-account-multiple',9,2,_binary '\0',_binary ''),(14,'2022-03-20 12:15:22','2022-03-20 12:17:27','添加','/admin/user/add','mdi-account-plus',10,13,_binary '\0',_binary ''),(15,'2022-03-20 17:18:14','2022-03-20 22:11:19','编辑','edit(\'/admin/user/edit\')','mdi-account-edit',11,13,_binary '',_binary ''),(16,'2022-03-20 17:19:01','2022-03-20 22:15:36','删除','del(\'/admin/user/delete\')','mdi-account-remove',12,13,_binary '',_binary ''),(19,'2022-03-20 11:24:36','2022-03-20 11:26:00','上传图片','/admin/upload/upload_photo','mdi-arrow-up-bold-circle',0,13,_binary '\0',_binary '\0'),(20,'2022-03-20 14:09:35','2022-03-20 14:09:47','日志管理','/system/operator_log_list','mdi-tag-multiple',13,2,_binary '\0',_binary ''),(21,'2022-03-20 14:11:39','2022-03-20 14:11:39','删除','del(\'/system/delete_operator_log\')','mdi-tag-remove',14,20,_binary '',_binary ''),(22,'2022-03-20 14:12:57','2022-03-20 14:46:55','清空日志','delAll(\'/system/delete_all_operator_log\')','mdi-delete-circle',15,20,_binary '',_binary ''),(23,'2022-03-20 14:46:40','2022-03-20 14:47:09','数据备份','/admin/database_bak/list','mdi-database',16,2,_binary '\0',_binary ''),(24,'2022-03-20 14:48:07','2022-03-20 15:13:41','备份','add(\'/admin/database_bak/add\')','mdi-database-plus',17,23,_binary '',_binary ''),(25,'2022-03-20 14:49:03','2022-03-20 14:49:03','删除','del(\'/admin/database_bak/delete\')','mdi-database-minus',18,23,_binary '',_binary ''),(26,'2022-03-20 19:36:20','2022-03-20 19:36:20','还原','restore(\'/admin/database_bak/restore\')','mdi-database-minus',19,23,_binary '',_binary ''),(27,'2022-03-20 20:35:09','2022-03-20 20:35:09','物品管理','/admin/goods_category/list','mdi-dialpad',0,NULL,_binary '\0',_binary ''),(28,'2022-03-20 20:35:46','2022-03-20 22:28:09','分类管理','/admin/goods_category/list','mdi-apps',0,27,_binary '\0',_binary ''),(29,'2022-03-20 20:36:27','2022-03-20 22:30:39','物品管理','/admin/goods/list','mdi-cart',0,27,_binary '\0',_binary ''),(30,'2022-03-20 20:40:48','2022-03-20 22:28:34','添加','/admin/goods_category/add','mdi-battery-positive',0,28,_binary '\0',_binary ''),(31,'2022-03-20 20:41:33','2022-03-20 22:30:02','编辑','edit(\'/admin/goods_category/edit\')','mdi-border-color',0,28,_binary '',_binary ''),(32,'2022-03-20 20:42:15','2022-03-20 22:30:21','删除','del(\'/admin/goods_category/delete\')','mdi-close',0,28,_binary '',_binary ''),(33,'2022-03-20 18:52:12','2022-03-20 18:52:12','上架','up(\'/admin/goods/up_down\')','mdi-arrow-up-bold-box',0,29,_binary '',_binary ''),(34,'2022-03-20 18:52:55','2022-03-20 18:52:55','下架','down(\'/admin/goods/up_down\')','mdi-arrow-down-bold-box',0,29,_binary '',_binary ''),(35,'2022-03-20 18:54:10','2022-03-20 19:17:48','删除','del(\'/admin/goods/delete\')','mdi-close-box',0,29,_binary '',_binary ''),(36,'2022-03-20 19:06:49','2022-03-20 19:06:49','推荐','recommend(\'/admin/goods/recommend\')','mdi-thumb-up',0,29,_binary '',_binary ''),(37,'2022-03-20 19:07:45','2022-03-20 19:07:45','取消推荐','unrecommend(\'/admin/goods/recommend\')','mdi-thumb-down',0,29,_binary '',_binary ''),(38,'2022-03-20 19:32:16','2022-03-20 19:32:16','求购物品','/admin/wanted_goods/list','mdi-ticket',0,27,_binary '\0',_binary ''),(39,'2022-03-20 19:32:55','2022-03-20 19:59:53','删除','del(\'/admin/wanted_goods/delete\')','mdi-close-box',0,38,_binary '',_binary ''),(40,'2022-03-20 20:02:04','2022-03-20 20:02:04','学生管理','/admin/student/list','mdi-account-multiple',0,NULL,_binary '\0',_binary ''),(41,'2022-03-20 20:02:38','2022-03-20 20:02:38','学生列表','/admin/student/list','mdi-account-multiple',0,40,_binary '\0',_binary ''),(42,'2022-03-20 20:06:28','2022-03-20 20:06:28','冻结','freeze(\'/admin/student/update_status\')','mdi-account-settings-variant',0,41,_binary '',_binary ''),(43,'2022-03-20 20:06:59','2022-03-20 21:45:31','激活','openStudent(\'/admin/student/update_status\')','mdi-account-key',0,41,_binary '',_binary ''),(44,'2022-03-20 20:07:33','2022-03-20 20:07:33','删除','del(\'/admin/student/delete\')','mdi-account-remove',0,41,_binary '',_binary ''),(45,'2022-03-20 21:52:57','2022-03-20 21:52:57','评论管理','/admin/comment/list','mdi-comment-account',0,NULL,_binary '\0',_binary ''),(46,'2022-03-20 21:53:39','2022-03-20 21:53:39','评论列表','/admin/comment/list','mdi-comment-multiple-outline',0,45,_binary '\0',_binary ''),(47,'2022-03-20 21:54:35','2022-03-20 21:54:35','删除','del(\'/admin/comment/delete\')','mdi-message-bulleted-off',0,46,_binary '',_binary ''),(48,'2022-03-20 19:28:48','2022-03-20 19:28:48','举报管理','/admin/report/list','mdi-alert',0,NULL,_binary '\0',_binary ''),(49,'2022-03-20 19:30:31','2022-03-20 19:30:31','举报列表','/admin/report/list','mdi-view-headline',0,48,_binary '\0',_binary ''),(50,'2022-03-20 19:31:09','2022-03-20 19:31:09','删除','del(\'/admin/report/delete\')','mdi-close-box',0,49,_binary '',_binary ''),(51,'2022-03-20 19:46:08','2022-03-20 19:46:08','新闻公告','/admin/news/list','mdi-onenote',0,NULL,_binary '\0',_binary ''),(52,'2022-03-20 19:46:39','2022-03-20 19:46:39','公告列表','/admin/news/list','mdi-book-open',0,51,_binary '\0',_binary ''),(53,'2022-03-20 19:48:01','2022-03-20 19:48:01','添加','/admin/news/add','mdi-plus',0,52,_binary '\0',_binary ''),(54,'2022-03-20 19:48:46','2022-03-20 19:48:46','编辑','edit(\'/admin/news/edit\')','mdi-border-color',0,52,_binary '',_binary ''),(55,'2022-03-20 19:49:37','2022-03-20 19:49:37','删除','del(\'/admin/news/delete\')','mdi-close',0,52,_binary '',_binary ''),(56,'2022-03-20 14:25:58','2022-03-20 14:25:58','网站设置','','mdi-settings',0,NULL,_binary '\0',_binary ''),(57,'2022-03-20 14:27:31','2022-03-20 14:27:31','友情链接','/admin/friend_link/list','mdi-vector-line',0,56,_binary '\0',_binary ''),(58,'2022-03-20 14:28:36','2022-03-20 14:28:36','添加','/admin/friend_link/add','mdi-plus',0,57,_binary '\0',_binary ''),(59,'2022-03-20 14:29:17','2022-03-20 15:38:53','编辑','edit(\'/admin/friend_link/edit\')','mdi-border-color',0,57,_binary '',_binary ''),(60,'2022-03-20 14:29:45','2022-03-20 14:29:45','删除','del(\'/admin/friend_link/delete\')','mdi-close-box',0,57,_binary '',_binary ''),(61,'2022-03-20 16:26:45','2022-03-20 16:26:45','站点设置','/admin/site_setting/setting','mdi-wrench',0,56,_binary '\0',_binary ''),(62,'2022-03-20 16:28:25','2022-03-20 16:28:25','提交修改','/admin/site_setting/save_setting','mdi-marker-check',0,61,_binary '',_binary '\0');
/*!40000 ALTER TABLE `ylrc_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ylrc_news`
--

DROP TABLE IF EXISTS `ylrc_news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ylrc_news` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_time` datetime NOT NULL,
  `update_time` datetime NOT NULL,
  `content` varchar(10024) NOT NULL,
  `sort` int(11) NOT NULL,
  `title` varchar(1024) NOT NULL,
  `view_number` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ylrc_news`
--

LOCK TABLES `ylrc_news` WRITE;
/*!40000 ALTER TABLE `ylrc_news` DISABLE KEYS */;
INSERT INTO `ylrc_news` VALUES (2,'2022-03-20 21:29:49','2022-05-06 23:25:14','1.禁止和限制发布物品管理规则\r\n2.重复铺货商品管理规则\r\n3.支付方式不符商品管理规则\r\n4.商品价格、邮费不符商品管理规则\r\n5.信用炒作商品管理规则',0,'校园二手市场发布商品规则',11),(3,'2022-03-20 21:30:22','2023-04-27 17:11:19','注册时请填写详细的注册信息，学号为必填项。',1,'校园二手市场账号注册规则',7);
/*!40000 ALTER TABLE `ylrc_news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ylrc_operater_log`
--

DROP TABLE IF EXISTS `ylrc_operater_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ylrc_operater_log` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_time` datetime NOT NULL,
  `update_time` datetime NOT NULL,
  `content` varchar(1024) NOT NULL,
  `operator` varchar(18) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=653 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ylrc_operater_log`
--

LOCK TABLES `ylrc_operater_log` WRITE;
/*!40000 ALTER TABLE `ylrc_operater_log` DISABLE KEYS */;
INSERT INTO `ylrc_operater_log` VALUES (543,'2022-03-22 00:59:58','2022-03-22 00:59:58','数据库成功备份，备份文件信息：DatabaseBak [filename=db_boot_base_20220322005958.sql, filepath=C:\\Users\\wangwang\\Desktop\\毕业设计\\campus-market\\src\\main\\resources\\backup]','未知(获取登录用户失败)'),(544,'2022-03-22 15:09:20','2022-03-22 15:09:20','用户【admin】于【2022-03-22 15:09:19】登录系统！','admin'),(545,'2022-03-22 20:24:22','2022-03-22 20:24:22','用户【admin】于【2022-03-22 20:24:21】登录系统！','admin'),(546,'2022-03-23 01:00:00','2022-03-23 01:00:00','数据库成功备份，备份文件信息：DatabaseBak [filename=db_boot_base_20220323010000.sql, filepath=C:\\Users\\wangwang\\Desktop\\毕业设计\\campus-market\\src\\main\\resources\\backup]','未知(获取登录用户失败)'),(547,'2022-03-24 01:00:00','2022-03-24 01:00:00','数据库成功备份，备份文件信息：DatabaseBak [filename=db_boot_base_20220324010000.sql, filepath=C:\\Users\\wangwang\\Desktop\\毕业设计\\campus-market\\src\\main\\resources\\backup]','未知(获取登录用户失败)'),(548,'2022-03-30 20:15:53','2022-03-30 20:15:53','用户【admin】于【2022-03-30 20:15:52】登录系统！','admin'),(549,'2022-03-30 20:19:22','2022-03-30 20:19:22','修改网站设置:SiteSetting [siteName=校园二手市场, siteUrl=www.ershou.com, logo1=20220330/1648642756504.png, logo2=20200418/1587201663687.png, qrcode=20210223/1614075844201.png, allRights=java]','admin'),(550,'2022-03-30 20:20:32','2022-03-30 20:20:32','用户【admin】于【2022-03-30 20:20:31】登录系统！','admin'),(551,'2022-03-30 20:21:30','2022-03-30 20:21:30','修改网站设置:SiteSetting [siteName=校园二手市场, siteUrl=www.ershou.com, logo1=20220330/1648642886572.jpeg, logo2=20200418/1587201663687.png, qrcode=20210223/1614075844201.png, allRights=java]','admin'),(552,'2022-03-30 20:28:39','2022-03-30 20:28:39','用户【admin】于【2022-03-30 20:28:38】登录系统！','admin'),(553,'2022-03-30 21:34:01','2022-03-30 21:34:01','用户【admin】于【2022-03-30 21:34:01】登录系统！','admin'),(554,'2022-03-30 22:12:29','2022-03-30 22:12:29','用户【admin】于【2022-03-30 22:12:29】登录系统！','admin'),(555,'2022-04-03 16:53:00','2022-04-03 16:53:00','用户【admin】于【2022-04-03 16:52:59】登录系统！','admin'),(556,'2022-04-11 18:06:29','2022-04-11 18:06:29','用户【admin】于【2022-04-11 18:06:29】登录系统！','admin'),(557,'2022-04-11 18:08:48','2022-04-11 18:08:48','用户【admin】于【2022-04-11 18:08:47】登录系统！','admin'),(558,'2022-04-14 17:11:36','2022-04-14 17:11:36','用户【admin】于【2022-04-14 17:11:35】登录系统！','admin'),(559,'2022-04-14 17:12:12','2022-04-14 17:12:12','添加用户，用户名：123456','admin'),(560,'2022-04-14 17:12:28','2022-04-14 17:12:28','用户【123456】于【2022-04-14 17:12:28】登录系统！','123456'),(561,'2022-04-14 17:13:10','2022-04-14 17:13:10','添加用户，用户ID：2','123456'),(562,'2022-04-14 17:13:35','2022-04-14 17:13:35','用户【admin】于【2022-04-14 17:13:34】登录系统！','admin'),(563,'2022-04-21 20:02:39','2022-04-21 20:02:39','用户【admin】于【2022-04-21 20:02:38】登录系统！','admin'),(564,'2022-04-22 13:33:22','2022-04-22 13:33:22','数据库成功备份，备份文件信息：DatabaseBak [filename=db_boot_base_20220422133321.sql, filepath=C:\\Users\\wangwang\\Desktop\\毕业设计\\campus-market\\src\\main\\resources\\backup]','未知(获取登录用户失败)'),(565,'2022-04-22 16:54:22','2022-04-22 16:54:22','用户【admin】于【2022-04-22 16:54:22】登录系统！','admin'),(566,'2022-04-22 16:58:31','2022-04-22 16:58:31','用户【admin】于【2022-04-22 16:58:30】登录系统！','admin'),(567,'2022-04-23 00:40:20','2022-04-23 00:40:20','用户【admin】于【2022-04-23 00:40:20】登录系统！','admin'),(568,'2022-04-23 01:00:00','2022-04-23 01:00:00','数据库成功备份，备份文件信息：DatabaseBak [filename=db_boot_base_20220423010000.sql, filepath=C:\\Users\\wangwang\\Desktop\\毕业设计\\campus-market\\src\\main\\resources\\backup]','未知(获取登录用户失败)'),(569,'2022-04-24 02:12:57','2022-04-24 02:12:57','用户【admin】于【2022-04-24 02:12:57】登录系统！','admin'),(570,'2022-04-24 04:32:22','2022-04-24 04:32:22','用户【admin】于【2022-04-24 04:32:21】登录系统！','admin'),(571,'2022-04-24 07:45:49','2022-04-24 07:45:49','用户【admin】于【2022-04-24 07:45:48】登录系统！','admin'),(572,'2022-04-24 07:53:10','2022-04-24 07:53:10','数据库成功备份，备份文件信息：DatabaseBak [filename=db_boot_base_20220424075309.sql, filepath=C:\\Users\\wangwang\\Desktop\\毕业设计\\campus-market\\src\\main\\resources\\backup]','admin'),(573,'2022-04-24 09:52:51','2022-04-24 09:52:51','用户【admin】于【2022-04-24 09:52:50】登录系统！','admin'),(574,'2022-04-24 14:45:22','2022-04-24 14:45:22','数据库成功备份，备份文件信息：DatabaseBak [filename=db_boot_base_20220424144520.sql, filepath=C:\\Users\\wangwang\\Desktop\\毕业设计\\campus-market\\src\\main\\resources\\backup]','未知(获取登录用户失败)'),(575,'2022-04-25 01:00:00','2022-04-25 01:00:00','数据库成功备份，备份文件信息：DatabaseBak [filename=db_boot_base_20220425010000.sql, filepath=C:\\Users\\wangwang\\Desktop\\毕业设计\\campus-market\\src\\main\\resources\\backup]','未知(获取登录用户失败)'),(576,'2022-04-26 01:00:00','2022-04-26 01:00:00','数据库成功备份，备份文件信息：DatabaseBak [filename=db_boot_base_20220426010000.sql, filepath=C:\\Users\\wangwang\\Desktop\\毕业设计\\campus-market\\src\\main\\resources\\backup]','未知(获取登录用户失败)'),(577,'2022-04-26 18:11:18','2022-04-26 18:11:18','用户【admin】于【2022-04-26 18:11:17】登录系统！','admin'),(578,'2022-04-27 05:08:25','2022-04-27 05:08:25','用户【admin】于【2022-04-27 05:08:24】登录系统！','admin'),(579,'2022-04-27 09:47:33','2022-04-27 09:47:33','数据库成功备份，备份文件信息：DatabaseBak [filename=db_boot_base_20220427094732.sql, filepath=C:\\Users\\wangwang\\Desktop\\毕业设计\\campus-market\\src\\main\\resources\\backup]','未知(获取登录用户失败)'),(580,'2022-05-06 05:55:27','2022-05-06 05:55:27','用户【admin】于【2022-05-06 05:55:26】登录系统！','admin'),(581,'2022-05-06 22:32:13','2022-05-06 22:32:13','用户【admin】于【2022-05-06 22:32:12】登录系统！','admin'),(582,'2022-05-06 22:57:06','2022-05-06 22:57:06','修改网站设置:SiteSetting [siteName=校园二手市场, siteUrl=www.ershou.com, logo1=20220330/1648642886572.jpeg, logo2=20200418/1587201663687.png, qrcode=20220506/1651849023376.jpeg, allRights=java]','admin'),(583,'2022-05-07 00:18:18','2022-05-07 00:18:18','用户【admin】于【2022-05-07 00:18:18】登录系统！','admin'),(584,'2022-05-07 08:49:31','2022-05-07 08:49:31','用户【admin】于【2022-05-07 08:49:30】登录系统！','admin'),(585,'2022-05-07 08:51:14','2022-05-07 08:51:14','用户【admin】于【2022-05-07 08:51:14】登录系统！','admin'),(586,'2022-05-07 10:47:04','2022-05-07 10:47:04','用户【admin】于【2022-05-07 10:47:03】登录系统！','admin'),(587,'2022-05-08 22:09:32','2022-05-08 22:09:32','用户【admin】于【2022-05-08 22:09:31】登录系统！','admin'),(588,'2022-05-09 01:00:00','2022-05-09 01:00:00','数据库成功备份，备份文件信息：DatabaseBak [filename=db_boot_base_20220509010000.sql, filepath=C:\\Users\\wangwang\\Desktop\\毕业设计\\campus-market\\src\\main\\resources\\backup]','未知(获取登录用户失败)'),(589,'2022-05-09 04:45:00','2022-05-09 04:45:00','用户【admin】于【2022-05-09 04:44:59】登录系统！','admin'),(590,'2022-05-10 16:58:20','2022-05-10 16:58:20','用户【admin】于【2022-05-10 16:58:19】登录系统！','admin'),(591,'2022-05-11 21:40:08','2022-05-11 21:40:08','用户【admin】于【2022-05-11 21:40:07】登录系统！','admin'),(592,'2022-05-12 18:56:54','2022-05-12 18:56:54','用户【admin】于【2022-05-12 18:56:54】登录系统！','admin'),(593,'2022-05-12 19:07:18','2022-05-12 19:07:18','用户【admin】于【2022-05-12 19:07:18】登录系统！','admin'),(594,'2023-04-23 22:56:32','2023-04-23 22:56:32','用户【admin】于【2023-04-23 22:56:31】登录系统！','admin'),(595,'2023-04-23 23:10:01','2023-04-23 23:10:01','用户【admin】于【2023-04-23 23:10:01】登录系统！','admin'),(596,'2023-04-27 16:45:27','2023-04-27 16:45:27','用户【admin】于【2023-04-27 16:45:26】登录系统！','admin'),(597,'2023-04-27 16:52:57','2023-04-27 16:52:57','修改网站设置:SiteSetting [siteName=校园二手市场, siteUrl=www.ershou.com, logo1=20230427/1682585570659.jpg, logo2=20200418/1587201663687.png, qrcode=20220506/1651849023376.jpeg, allRights=java]','admin'),(598,'2023-04-27 16:55:16','2023-04-27 16:55:16','修改网站设置:SiteSetting [siteName=校园二手市场, siteUrl=www.ershou.com, logo1=20230427/1682585570659.jpg, logo2=20200418/1587201663687.png, qrcode=20230427/1682585711573.jpg, allRights=java]','admin'),(599,'2023-04-27 16:55:39','2023-04-27 16:55:39','修改网站设置:SiteSetting [siteName=校园二手市场, siteUrl=www.ershou.com, logo1=20230427/1682585570659.jpg, logo2=20200418/1587201663687.png, qrcode=20230427/1682585711573.jpg, allRights=java]','admin'),(600,'2023-04-27 18:08:48','2023-04-27 18:08:48','用户【admin】于【2023-04-27 18:08:48】登录系统！','admin'),(601,'2023-04-27 18:09:07','2023-04-27 18:09:07','用户【admin】于【2023-04-27 18:09:07】登录系统！','admin'),(602,'2023-04-27 18:12:18','2023-04-27 18:12:18','用户【admin】于【2023-04-27 18:12:17】登录系统！','admin'),(603,'2023-04-27 18:34:42','2023-04-27 18:34:42','用户【admin】于【2023-04-27 18:34:42】登录系统！','admin'),(604,'2023-04-27 18:35:14','2023-04-27 18:35:14','用户【admin】于【2023-04-27 18:35:13】登录系统！','admin'),(605,'2023-04-27 18:35:33','2023-04-27 18:35:33','用户【admin】于【2023-04-27 18:35:33】登录系统！','admin'),(606,'2023-04-28 21:21:54','2023-04-28 21:21:54','用户【admin】于【2023-04-28 21:21:53】登录系统！','admin'),(607,'2023-04-28 21:40:43','2023-04-28 21:40:43','编辑友情链接：FriendLink [name=百度一下, url=https://m.baidu.com/, sort=0]','admin'),(608,'2023-04-28 22:02:40','2023-04-28 22:02:40','数据库成功备份，备份文件信息：DatabaseBak [filename=db_boot_base_20230428220240.sql, filepath=D:\\课件\\闲鱼基于springboot的校园二手市场\\基于springboot的校园二手市场2\\项目源码\\campus-market\\src\\main\\resources\\backup]','admin'),(609,'2023-04-28 22:19:21','2023-04-28 22:19:21','用户【admin】于【2023-04-28 22:19:21】登录系统！','admin'),(610,'2023-04-28 22:19:46','2023-04-28 22:19:46','数据库成功备份，备份文件信息：DatabaseBak [filename=db_boot_base_20230428221946.sql, filepath=C:\\Users\\Programmer\\IdeaProjects\\campus-market\\src\\main\\resources\\backup]','admin'),(611,'2023-04-28 22:40:19','2023-04-28 22:40:19','数据库成功还原，还原文件信息：DatabaseBak [filename=db_boot_base_20230428221946.sql, filepath=C:\\Users\\Programmer\\IdeaProjects\\campus-market\\src\\main\\resources\\backup]','admin'),(612,'2023-04-28 22:48:48','2023-04-28 22:48:48','数据库成功备份，备份文件信息：DatabaseBak [filename=db_boot_base_20230428224848.sql, filepath=C:\\Users\\Programmer\\IdeaProjects\\campus-market\\src\\main\\resources\\backup]','admin'),(613,'2023-04-28 22:49:41','2023-04-28 22:49:41','数据库成功还原，还原文件信息：DatabaseBak [filename=db_boot_base_20230428221946.sql, filepath=C:\\Users\\Programmer\\IdeaProjects\\campus-market\\src\\main\\resources\\backup]','admin'),(614,'2023-04-28 22:51:31','2023-04-28 22:51:31','数据库成功还原，还原文件信息：DatabaseBak [filename=db_boot_base_20230428224848.sql, filepath=C:\\Users\\Programmer\\IdeaProjects\\campus-market\\src\\main\\resources\\backup]','admin'),(615,'2023-04-28 22:53:05','2023-04-28 22:53:05','数据库成功还原，还原文件信息：DatabaseBak [filename=db_boot_base_20230428221946.sql, filepath=C:\\Users\\Programmer\\IdeaProjects\\campus-market\\src\\main\\resources\\backup]','admin'),(616,'2023-04-28 23:30:58','2023-04-28 23:30:58','用户【admin】于【2023-04-28 23:30:58】登录系统！','admin'),(617,'2023-04-28 23:31:13','2023-04-28 23:31:13','数据库成功备份，备份文件信息：DatabaseBak [filename=db_boot_base_20230428233112.sql, filepath=C:\\Users\\Programmer\\IdeaProjects\\campus-market\\src\\main\\resources\\backup]','admin'),(618,'2023-04-28 23:32:24','2023-04-28 23:32:24','数据库成功备份，备份文件信息：DatabaseBak [filename=db_boot_base_20230428233223.sql, filepath=C:\\Users\\Programmer\\IdeaProjects\\campus-market\\src\\main\\resources\\backup]','admin'),(619,'2023-04-28 23:38:52','2023-04-28 23:38:52','数据库成功备份，备份文件信息：DatabaseBak [filename=db_boot_base_20230428233852.sql, filepath=C:\\Users\\Programmer\\IdeaProjects\\campus-market\\src\\main\\resources\\backup]','admin'),(620,'2023-04-28 23:40:17','2023-04-28 23:40:17','数据库成功还原，还原文件信息：DatabaseBak [filename=db_boot_base_20230428233112.sql, filepath=C:\\Users\\Programmer\\IdeaProjects\\campus-market\\src\\main\\resources\\backup]','admin'),(621,'2023-04-29 00:25:00','2023-04-29 00:25:00','用户【admin】于【2023-04-29 00:24:59】登录系统！','admin'),(622,'2023-04-29 00:25:20','2023-04-29 00:25:20','数据库成功备份，备份文件信息：DatabaseBak [filename=db_boot_base_20230429002519.sql, filepath=C:\\Users\\Programmer\\IdeaProjects\\campus-market\\src\\main\\resources\\backup]','admin'),(623,'2023-04-29 20:50:09','2023-04-29 20:50:09','用户【admin】于【2023-04-29 20:50:08】登录系统！','admin'),(624,'2023-04-29 20:51:07','2023-04-29 20:51:07','数据库成功备份，备份文件信息：DatabaseBak [filename=db_boot_base_20230429205107.sql, filepath=C:\\Users\\Programmer\\IdeaProjects\\campus-market\\src\\main\\resources\\backup]','admin'),(625,'2023-04-29 20:51:33','2023-04-29 20:51:33','数据库成功备份，备份文件信息：DatabaseBak [filename=db_boot_base_20230429205132.sql, filepath=C:\\Users\\Programmer\\IdeaProjects\\campus-market\\src\\main\\resources\\backup]','未知(获取登录用户失败)'),(626,'2023-04-29 20:52:11','2023-04-29 20:52:11','数据库成功备份，备份文件信息：DatabaseBak [filename=db_boot_base_20230429205210.sql, filepath=C:\\Users\\Programmer\\IdeaProjects\\campus-market\\src\\main\\resources\\backup]','admin'),(627,'2023-04-29 20:54:29','2023-04-29 20:54:29','编辑角色【测试数据库备份】','admin'),(628,'2023-04-29 20:54:56','2023-04-29 20:54:56','添加角色【新加】','admin'),(629,'2023-04-29 20:55:13','2023-04-29 20:55:13','数据库成功备份，备份文件信息：DatabaseBak [filename=db_boot_base_20230429205513.sql, filepath=C:\\Users\\Programmer\\IdeaProjects\\campus-market\\src\\main\\resources\\backup]','admin'),(630,'2023-04-29 20:55:38','2023-04-29 20:55:38','数据库成功还原，还原文件信息：DatabaseBak [filename=db_boot_base_20230429205210.sql, filepath=C:\\Users\\Programmer\\IdeaProjects\\campus-market\\src\\main\\resources\\backup]','admin'),(631,'2023-04-30 19:12:55','2023-04-30 19:12:55','用户【admin】于【2023-04-30 19:12:55】登录系统！','admin'),(632,'2023-04-30 19:13:10','2023-04-30 19:13:10','数据库成功备份，备份文件信息：DatabaseBak [filename=db_boot_base_20230430191309.sql, filepath=D:\\课件\\闲鱼基于springboot的校园二手市场\\基于springboot的校园二手市场2\\项目源码\\campus-market\\src\\main\\resources\\backup]','admin'),(633,'2023-04-30 19:48:24','2023-04-30 19:48:24','用户【admin】于【2023-04-30 19:48:23】登录系统！','admin'),(634,'2023-04-30 19:48:34','2023-04-30 19:48:34','数据库成功备份，备份文件信息：DatabaseBak [filename=db_boot_base_20230430194833.sql, filepath=C:\\Users\\Programmer\\IdeaProjects\\campus-market\\src\\main\\resources\\backup]','admin'),(635,'2023-05-04 18:57:18','2023-05-04 18:57:18','用户【admin】于【2023-05-04 18:57:17】登录系统！','admin'),(636,'2023-05-04 19:12:16','2023-05-04 19:12:16','用户【admin】于【2023-05-04 19:12:16】登录系统！','admin'),(637,'2023-05-04 19:12:23','2023-05-04 19:12:23','数据库成功备份，备份文件信息：DatabaseBak [filename=ershou_20230504191223.sql, filepath=C:\\Users\\Programmer\\IdeaProjects\\campus-market\\src\\main\\resources\\backup]','admin'),(638,'2023-05-04 19:14:27','2023-05-04 19:14:27','数据库成功备份，备份文件信息：DatabaseBak [filename=ershou_20230504191427.sql, filepath=C:\\Users\\Programmer\\IdeaProjects\\campus-market\\src\\main\\resources]','admin'),(639,'2023-05-04 19:16:53','2023-05-04 19:16:53','数据库成功备份，备份文件信息：DatabaseBak [filename=ershou_20230504191652.sql, filepath=C:\\Users\\Programmer\\IdeaProjects\\campus-market\\src\\main\\resources\\backup]','admin'),(640,'2023-05-04 19:22:02','2023-05-04 19:22:02','数据库成功备份，备份文件信息：DatabaseBak [filename=ershou_20230504192137.sql, filepath=C:\\Users\\Programmer\\IdeaProjects\\campus-market\\src\\main\\resources\\backup]','admin'),(641,'2023-05-04 19:25:16','2023-05-04 19:25:16','数据库成功备份，备份文件信息：DatabaseBak [filename=ershou_20230504192505.sql, filepath=C:\\Users\\Programmer\\IdeaProjects\\campus-market\\src\\main\\resources\\backup]','admin'),(642,'2023-05-04 19:31:19','2023-05-04 19:31:19','用户【admin】于【2023-05-04 19:31:18】登录系统！','admin'),(643,'2023-05-04 19:33:34','2023-05-04 19:33:34','数据库成功备份，备份文件信息：DatabaseBak [filename=ershou_20230504193333.sql, filepath=C:\\Users\\Programmer\\IdeaProjects\\campus-market\\src\\main\\resources\\backup]','admin'),(644,'2023-05-04 19:34:25','2023-05-04 19:34:25','用户【admin】于【2023-05-04 19:34:25】登录系统！','admin'),(645,'2023-05-04 19:35:02','2023-05-04 19:35:02','删除角色ID【3】','admin'),(646,'2023-05-04 19:35:38','2023-05-04 19:35:38','数据库成功备份，备份文件信息：DatabaseBak [filename=ershou_20230504193537.sql, filepath=C:\\Users\\Programmer\\IdeaProjects\\campus-market\\src\\main\\resources\\backup]','admin'),(647,'2023-05-04 19:35:46','2023-05-04 19:35:46','数据库成功还原，还原文件信息：DatabaseBak [filename=ershou_20230504193333.sql, filepath=C:\\Users\\Programmer\\IdeaProjects\\campus-market\\src\\main\\resources\\backup]','admin'),(648,'2023-05-04 19:36:36','2023-05-04 19:36:36','数据库成功还原，还原文件信息：DatabaseBak [filename=ershou_20230504193333.sql, filepath=C:\\Users\\Programmer\\IdeaProjects\\campus-market\\src\\main\\resources\\backup]','admin'),(649,'2023-05-04 19:37:46','2023-05-04 19:37:46','添加角色【新加】','admin'),(650,'2023-05-04 19:38:12','2023-05-04 19:38:12','数据库成功备份，备份文件信息：DatabaseBak [filename=ershou_20230504193811.sql, filepath=C:\\Users\\Programmer\\IdeaProjects\\campus-market\\src\\main\\resources\\backup]','admin'),(651,'2023-05-04 21:06:52','2023-05-04 21:06:52','数据库成功还原，还原文件信息：DatabaseBak [filename=ershou_20230504193811.sql, filepath=C:\\Users\\Programmer\\IdeaProjects\\campus-market\\src\\main\\resources\\backup]','admin'),(652,'2023-05-04 21:07:19','2023-05-04 21:07:19','数据库成功备份，备份文件信息：DatabaseBak [filename=ershou_20230504210718.sql, filepath=C:\\Users\\Programmer\\IdeaProjects\\campus-market\\src\\main\\resources\\backup]','admin');
/*!40000 ALTER TABLE `ylrc_operater_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ylrc_report_goods`
--

DROP TABLE IF EXISTS `ylrc_report_goods`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ylrc_report_goods` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_time` datetime NOT NULL,
  `update_time` datetime NOT NULL,
  `content` varchar(1024) NOT NULL,
  `goods_id` bigint(20) DEFAULT NULL,
  `student_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `FK6g0s4688rq2bnty1u1ev1rgly` (`goods_id`) USING BTREE,
  KEY `FKmr7s3q3jpq824h69f5ip9gleq` (`student_id`) USING BTREE,
  CONSTRAINT `FK6g0s4688rq2bnty1u1ev1rgly` FOREIGN KEY (`goods_id`) REFERENCES `ylrc_goods` (`id`),
  CONSTRAINT `FKmr7s3q3jpq824h69f5ip9gleq` FOREIGN KEY (`student_id`) REFERENCES `ylrc_student` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ylrc_report_goods`
--

LOCK TABLES `ylrc_report_goods` WRITE;
/*!40000 ALTER TABLE `ylrc_report_goods` DISABLE KEYS */;
INSERT INTO `ylrc_report_goods` VALUES (3,'2022-04-24 10:03:15','2022-04-24 10:03:15','是',38,13),(4,'2022-05-12 19:00:32','2022-05-12 19:00:32','不太好',39,2);
/*!40000 ALTER TABLE `ylrc_report_goods` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ylrc_role`
--

DROP TABLE IF EXISTS `ylrc_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ylrc_role` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_time` datetime NOT NULL,
  `update_time` datetime NOT NULL,
  `name` varchar(18) NOT NULL,
  `remark` varchar(128) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ylrc_role`
--

LOCK TABLES `ylrc_role` WRITE;
/*!40000 ALTER TABLE `ylrc_role` DISABLE KEYS */;
INSERT INTO `ylrc_role` VALUES (1,'2022-03-20 13:16:38','2022-03-20 16:28:37','超级管理员','超级管理员拥有最高权限。',1),(2,'2022-03-20 13:18:57','2023-04-29 20:54:29','测试数据库备份','普通管理员只有部分权限',1),(4,'2023-05-04 19:37:46','2023-05-04 19:37:46','新加','',1);
/*!40000 ALTER TABLE `ylrc_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ylrc_role_authorities`
--

DROP TABLE IF EXISTS `ylrc_role_authorities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ylrc_role_authorities` (
  `role_id` bigint(20) NOT NULL,
  `authorities_id` bigint(20) NOT NULL,
  KEY `FKhj7ap1o1cjrl7enr9arf5f2qp` (`authorities_id`) USING BTREE,
  KEY `FKg3xdaexmr0x1qx8omhvjtk46d` (`role_id`) USING BTREE,
  CONSTRAINT `FKg3xdaexmr0x1qx8omhvjtk46d` FOREIGN KEY (`role_id`) REFERENCES `ylrc_role` (`id`),
  CONSTRAINT `FKhj7ap1o1cjrl7enr9arf5f2qp` FOREIGN KEY (`authorities_id`) REFERENCES `ylrc_menu` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ylrc_role_authorities`
--

LOCK TABLES `ylrc_role_authorities` WRITE;
/*!40000 ALTER TABLE `ylrc_role_authorities` DISABLE KEYS */;
INSERT INTO `ylrc_role_authorities` VALUES (1,2),(1,3),(1,5),(1,8),(1,9),(1,7),(1,10),(1,11),(1,12),(1,13),(1,14),(1,15),(1,16),(1,19),(1,20),(1,21),(1,22),(1,23),(1,24),(1,25),(1,26),(1,27),(1,28),(1,30),(1,31),(1,32),(1,29),(1,33),(1,34),(1,35),(1,36),(1,37),(1,38),(1,39),(1,40),(1,41),(1,42),(1,43),(1,44),(1,45),(1,46),(1,47),(1,48),(1,49),(1,50),(1,51),(1,52),(1,53),(1,54),(1,55),(1,56),(1,57),(1,58),(1,59),(1,60),(1,61),(1,62),(2,2),(2,3),(2,5),(2,7),(2,11),(2,13),(2,16),(4,2),(4,3),(4,5),(4,8),(4,9),(4,7),(4,10),(4,11),(4,12),(4,13),(4,14),(4,15),(4,16),(4,19),(4,20),(4,21),(4,22),(4,23),(4,24),(4,25),(4,26);
/*!40000 ALTER TABLE `ylrc_role_authorities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ylrc_site_setting`
--

DROP TABLE IF EXISTS `ylrc_site_setting`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ylrc_site_setting` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_time` datetime NOT NULL,
  `update_time` datetime NOT NULL,
  `all_rights` varchar(256) NOT NULL,
  `logo_1` varchar(256) NOT NULL,
  `logo_2` varchar(256) NOT NULL,
  `qrcode` varchar(256) NOT NULL,
  `site_name` varchar(128) NOT NULL,
  `site_url` varchar(256) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ylrc_site_setting`
--

LOCK TABLES `ylrc_site_setting` WRITE;
/*!40000 ALTER TABLE `ylrc_site_setting` DISABLE KEYS */;
INSERT INTO `ylrc_site_setting` VALUES (1,'2022-03-20 17:02:17','2023-04-27 16:55:39','java','20230427/1682585570659.jpg','20200418/1587201663687.png','20230427/1682585711573.jpg','校园二手市场','www.ershou.com');
/*!40000 ALTER TABLE `ylrc_site_setting` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ylrc_student`
--

DROP TABLE IF EXISTS `ylrc_student`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ylrc_student` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_time` datetime NOT NULL,
  `update_time` datetime NOT NULL,
  `academy` varchar(18) DEFAULT NULL,
  `grade` varchar(18) DEFAULT NULL,
  `mobile` varchar(18) DEFAULT NULL,
  `nickname` varchar(32) DEFAULT NULL,
  `qq` varchar(18) DEFAULT NULL,
  `school` varchar(18) DEFAULT NULL,
  `sn` varchar(18) NOT NULL,
  `head_pic` varchar(128) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `password` varchar(18) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `UK_5se32pxcytmbwgepjrjrdmvjr` (`sn`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ylrc_student`
--

LOCK TABLES `ylrc_student` WRITE;
/*!40000 ALTER TABLE `ylrc_student` DISABLE KEYS */;
INSERT INTO `ylrc_student` VALUES (2,'2022-03-20 12:52:02','2023-04-27 16:35:40','信息学院','2019','13656565656','张三111','11221232132','沈阳理工','10000','20200406/1586162585279.jpg',1,'123456'),(11,'2022-03-20 22:43:42','2023-04-27 16:39:28','通信','大三','18989999999','李四','123123','沈阳农业','10001',NULL,1,'123456'),(12,'2022-03-30 21:20:56','2022-04-24 09:45:43',NULL,NULL,NULL,NULL,'123456789',NULL,'123456',NULL,1,'123456789'),(13,'2022-04-24 09:57:01','2022-04-24 10:02:48','','','123456','','123456789','','0101',NULL,1,'123456'),(14,'2022-04-24 10:14:07','2022-04-24 10:14:07',NULL,NULL,NULL,NULL,'12156',NULL,'0102',NULL,1,'123456'),(15,'2023-04-27 17:21:43','2023-04-27 17:21:43',NULL,NULL,NULL,NULL,'12789765',NULL,'10002',NULL,1,'123456');
/*!40000 ALTER TABLE `ylrc_student` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ylrc_user`
--

DROP TABLE IF EXISTS `ylrc_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ylrc_user` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_time` datetime NOT NULL,
  `update_time` datetime NOT NULL,
  `email` varchar(32) DEFAULT NULL,
  `head_pic` varchar(128) DEFAULT NULL,
  `mobile` varchar(12) DEFAULT NULL,
  `password` varchar(32) NOT NULL,
  `sex` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `username` varchar(18) NOT NULL,
  `role_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `UK_btsosjytrl4hu7fnm1intcpo8` (`username`) USING BTREE,
  KEY `FKg09b8o67eu61st68rv6nk8npj` (`role_id`) USING BTREE,
  CONSTRAINT `FKg09b8o67eu61st68rv6nk8npj` FOREIGN KEY (`role_id`) REFERENCES `ylrc_role` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ylrc_user`
--

LOCK TABLES `ylrc_user` WRITE;
/*!40000 ALTER TABLE `ylrc_user` DISABLE KEYS */;
INSERT INTO `ylrc_user` VALUES (1,'2022-03-20 19:18:53','2022-05-06 23:11:08','1111111@qq.com','20220506/1651849865030.jpeg','18989899999','123456',1,1,'admin',1);
/*!40000 ALTER TABLE `ylrc_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ylrc_wanted_goods`
--

DROP TABLE IF EXISTS `ylrc_wanted_goods`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ylrc_wanted_goods` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_time` datetime NOT NULL,
  `update_time` datetime NOT NULL,
  `content` varchar(1024) NOT NULL,
  `name` varchar(32) NOT NULL,
  `sell_price` float NOT NULL,
  `trade_place` varchar(128) NOT NULL,
  `view_number` int(11) NOT NULL,
  `student_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `FKqvrfd43yhp11er38hkfcxi103` (`student_id`) USING BTREE,
  CONSTRAINT `FKqvrfd43yhp11er38hkfcxi103` FOREIGN KEY (`student_id`) REFERENCES `ylrc_student` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ylrc_wanted_goods`
--

LOCK TABLES `ylrc_wanted_goods` WRITE;
/*!40000 ALTER TABLE `ylrc_wanted_goods` DISABLE KEYS */;
INSERT INTO `ylrc_wanted_goods` VALUES (8,'2022-03-20 15:10:32','2022-03-20 15:11:20','想买学长学姐的考研资料自己明年考研用。有相关资料的学长加我qq或者电话我把，感谢了。','考研资料',100,'宿舍1号楼',0,11),(9,'2022-03-30 21:23:41','2022-03-30 21:23:41','一个99新的苹果ipad，基本没有使用痕迹。','平板电脑',5000,'河南',0,12),(10,'2022-03-30 21:28:19','2022-03-30 21:28:19','一个99新的苹果平板电脑，无使用痕迹。','平板电脑',5000,'河南',0,12),(11,'2022-03-30 21:32:13','2022-03-30 21:32:13','一个99新的苹果平板电脑，几乎没有使用痕迹。','平板电脑',5000,'河南',0,12),(14,'2022-05-12 19:00:20','2022-05-12 19:00:20','一个基本全新无使用的手机，国际大厂制造。','手机',1000,'新乡学院',0,2),(15,'2023-04-27 17:10:36','2023-04-27 17:10:36','急求，明天要用，求求求。。。。。。','求数电教材',5,'6号楼',0,2);
/*!40000 ALTER TABLE `ylrc_wanted_goods` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-05-04 21:07:21
