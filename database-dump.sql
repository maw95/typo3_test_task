-- MySQL dump 10.13  Distrib 8.0.28, for Linux (x86_64)
--
-- Host: 127.0.0.1    Database: typo3
-- ------------------------------------------------------
-- Server version	8.0.28-0ubuntu0.20.04.3

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
-- Table structure for table `backend_layout`
--

DROP TABLE IF EXISTS `backend_layout`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `backend_layout` (
  `uid` int unsigned NOT NULL AUTO_INCREMENT,
  `pid` int NOT NULL DEFAULT '0',
  `tstamp` int unsigned NOT NULL DEFAULT '0',
  `crdate` int unsigned NOT NULL DEFAULT '0',
  `cruser_id` int unsigned NOT NULL DEFAULT '0',
  `deleted` smallint unsigned NOT NULL DEFAULT '0',
  `hidden` smallint unsigned NOT NULL DEFAULT '0',
  `sorting` int NOT NULL DEFAULT '0',
  `description` text COLLATE utf8mb4_unicode_ci,
  `t3_origuid` int unsigned NOT NULL DEFAULT '0',
  `t3ver_oid` int unsigned NOT NULL DEFAULT '0',
  `t3ver_wsid` int unsigned NOT NULL DEFAULT '0',
  `t3ver_state` smallint NOT NULL DEFAULT '0',
  `t3ver_stage` int NOT NULL DEFAULT '0',
  `t3ver_count` int unsigned NOT NULL DEFAULT '0',
  `t3ver_tstamp` int unsigned NOT NULL DEFAULT '0',
  `t3ver_move_id` int unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `config` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`,`deleted`,`hidden`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `backend_layout`
--

LOCK TABLES `backend_layout` WRITE;
/*!40000 ALTER TABLE `backend_layout` DISABLE KEYS */;
/*!40000 ALTER TABLE `backend_layout` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `be_dashboards`
--

DROP TABLE IF EXISTS `be_dashboards`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `be_dashboards` (
  `uid` int unsigned NOT NULL AUTO_INCREMENT,
  `pid` int unsigned NOT NULL DEFAULT '0',
  `tstamp` int unsigned NOT NULL DEFAULT '0',
  `crdate` int unsigned NOT NULL DEFAULT '0',
  `cruser_id` int unsigned NOT NULL DEFAULT '0',
  `deleted` smallint unsigned NOT NULL DEFAULT '0',
  `hidden` smallint unsigned NOT NULL DEFAULT '0',
  `starttime` int unsigned NOT NULL DEFAULT '0',
  `endtime` int unsigned NOT NULL DEFAULT '0',
  `identifier` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `title` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `widgets` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`,`deleted`,`hidden`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `be_dashboards`
--

LOCK TABLES `be_dashboards` WRITE;
/*!40000 ALTER TABLE `be_dashboards` DISABLE KEYS */;
INSERT INTO `be_dashboards` VALUES (1,0,1648067632,1648067632,1,0,0,0,0,'d5dfa0a2daaeee6a8cd1d948cf8ab731db1624fc','My dashboard','{\"f7f038da3e2a6e7e7ee64c04ba4f6bb9f28f35f8\":{\"identifier\":\"t3information\"},\"2c213d34f99253cf5bf1c0c8b731dbbdee95dcd6\":{\"identifier\":\"t3news\"},\"653638f22e2dbc69f8bec0786b143c1e8e7752f0\":{\"identifier\":\"docGettingStarted\"}}');
/*!40000 ALTER TABLE `be_dashboards` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `be_groups`
--

DROP TABLE IF EXISTS `be_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `be_groups` (
  `uid` int unsigned NOT NULL AUTO_INCREMENT,
  `pid` int unsigned NOT NULL DEFAULT '0',
  `tstamp` int unsigned NOT NULL DEFAULT '0',
  `crdate` int unsigned NOT NULL DEFAULT '0',
  `cruser_id` int unsigned NOT NULL DEFAULT '0',
  `deleted` smallint unsigned NOT NULL DEFAULT '0',
  `hidden` smallint unsigned NOT NULL DEFAULT '0',
  `description` text COLLATE utf8mb4_unicode_ci,
  `title` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `non_exclude_fields` text COLLATE utf8mb4_unicode_ci,
  `explicit_allowdeny` text COLLATE utf8mb4_unicode_ci,
  `allowed_languages` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `custom_options` text COLLATE utf8mb4_unicode_ci,
  `db_mountpoints` text COLLATE utf8mb4_unicode_ci,
  `pagetypes_select` text COLLATE utf8mb4_unicode_ci,
  `tables_select` text COLLATE utf8mb4_unicode_ci,
  `tables_modify` text COLLATE utf8mb4_unicode_ci,
  `groupMods` text COLLATE utf8mb4_unicode_ci,
  `availableWidgets` text COLLATE utf8mb4_unicode_ci,
  `file_mountpoints` text COLLATE utf8mb4_unicode_ci,
  `file_permissions` text COLLATE utf8mb4_unicode_ci,
  `lockToDomain` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `TSconfig` text COLLATE utf8mb4_unicode_ci,
  `subgroup` text COLLATE utf8mb4_unicode_ci,
  `workspace_perms` smallint NOT NULL DEFAULT '1',
  `category_perms` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`,`deleted`,`hidden`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `be_groups`
--

LOCK TABLES `be_groups` WRITE;
/*!40000 ALTER TABLE `be_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `be_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `be_sessions`
--

DROP TABLE IF EXISTS `be_sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `be_sessions` (
  `ses_id` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `ses_iplock` varchar(39) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `ses_userid` int unsigned NOT NULL DEFAULT '0',
  `ses_tstamp` int unsigned NOT NULL DEFAULT '0',
  `ses_data` longblob,
  `ses_backuserid` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`ses_id`),
  KEY `ses_tstamp` (`ses_tstamp`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `be_sessions`
--

LOCK TABLES `be_sessions` WRITE;
/*!40000 ALTER TABLE `be_sessions` DISABLE KEYS */;
INSERT INTO `be_sessions` VALUES ('fd499b3c63044753feab9b4a804f1740','[DISABLED]',1,1648330952,_binary 'a:7:{s:26:\"formProtectionSessionToken\";s:64:\"724af936fcb8c34c50517a67bb41540ca9ea759f59f5a32e2bb2d2b237f1aac1\";s:27:\"core.template.flashMessages\";N;s:49:\"extbase.flashmessages.tx_form_web_formformbuilder\";N;s:52:\"TYPO3\\CMS\\Recordlist\\Controller\\RecordListController\";a:1:{s:12:\"search_field\";s:0:\"\";}s:34:\"extbase.flashmessages.tx_viewpage_\";N;s:80:\"extbase.flashmessages.tx_extensionmanager_tools_extensionmanagerextensionmanager\";N;s:26:\"extbase.flashmessages.tx__\";N;}',0);
/*!40000 ALTER TABLE `be_sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `be_users`
--

DROP TABLE IF EXISTS `be_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `be_users` (
  `uid` int unsigned NOT NULL AUTO_INCREMENT,
  `pid` int unsigned NOT NULL DEFAULT '0',
  `tstamp` int unsigned NOT NULL DEFAULT '0',
  `crdate` int unsigned NOT NULL DEFAULT '0',
  `cruser_id` int unsigned NOT NULL DEFAULT '0',
  `deleted` smallint unsigned NOT NULL DEFAULT '0',
  `disable` smallint unsigned NOT NULL DEFAULT '0',
  `starttime` int unsigned NOT NULL DEFAULT '0',
  `endtime` int unsigned NOT NULL DEFAULT '0',
  `description` text COLLATE utf8mb4_unicode_ci,
  `username` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `avatar` int unsigned NOT NULL DEFAULT '0',
  `password` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `admin` smallint unsigned NOT NULL DEFAULT '0',
  `usergroup` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `lang` varchar(6) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `db_mountpoints` text COLLATE utf8mb4_unicode_ci,
  `options` smallint unsigned NOT NULL DEFAULT '0',
  `realName` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `userMods` text COLLATE utf8mb4_unicode_ci,
  `allowed_languages` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `uc` mediumblob,
  `file_mountpoints` text COLLATE utf8mb4_unicode_ci,
  `file_permissions` text COLLATE utf8mb4_unicode_ci,
  `workspace_perms` smallint NOT NULL DEFAULT '1',
  `lockToDomain` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `disableIPlock` smallint unsigned NOT NULL DEFAULT '0',
  `TSconfig` text COLLATE utf8mb4_unicode_ci,
  `lastlogin` int unsigned NOT NULL DEFAULT '0',
  `createdByAction` int NOT NULL DEFAULT '0',
  `usergroup_cached_list` text COLLATE utf8mb4_unicode_ci,
  `workspace_id` int NOT NULL DEFAULT '0',
  `category_perms` text COLLATE utf8mb4_unicode_ci,
  `password_reset_token` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tx_examples_mobile` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`uid`),
  KEY `username` (`username`),
  KEY `parent` (`pid`,`deleted`,`disable`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `be_users`
--

LOCK TABLES `be_users` WRITE;
/*!40000 ALTER TABLE `be_users` DISABLE KEYS */;
INSERT INTO `be_users` VALUES (1,0,1648067581,1648067581,0,0,0,0,0,NULL,'typo3',0,'$argon2i$v=19$m=65536,t=16,p=1$SEtJMVAuTUlObmlDU1FsbQ$5freqgZNCj6C6+QVIIQzZ7P9mQASZi3uRGRSogZQZOg',1,'','','mwozniak95@gmail.com',NULL,0,'',NULL,'',_binary 'a:17:{s:14:\"interfaceSetup\";s:7:\"backend\";s:10:\"moduleData\";a:10:{s:28:\"dashboard/current_dashboard/\";s:40:\"d5dfa0a2daaeee6a8cd1d948cf8ab731db1624fc\";s:6:\"web_ts\";a:2:{s:8:\"function\";s:85:\"TYPO3\\CMS\\Tstemplate\\Controller\\TypoScriptTemplateInformationModuleFunctionController\";s:19:\"constant_editor_cat\";s:14:\"frontend login\";}s:10:\"web_layout\";a:2:{s:8:\"function\";s:1:\"1\";s:8:\"language\";s:1:\"0\";}s:9:\"file_list\";a:1:{s:15:\"bigControlPanel\";s:1:\"1\";}s:57:\"TYPO3\\CMS\\Backend\\Utility\\BackendUtility::getUpdateSignal\";a:0:{}s:10:\"FormEngine\";a:2:{i:0;a:2:{s:32:\"f87337ea07fd5e46b7487a4d63a03a03\";a:4:{i:0;s:11:\"Test header\";i:1;a:5:{s:4:\"edit\";a:1:{s:10:\"tt_content\";a:1:{i:8;s:4:\"edit\";}}s:7:\"defVals\";N;s:12:\"overrideVals\";N;s:11:\"columnsOnly\";N;s:6:\"noView\";N;}i:2;s:33:\"&edit%5Btt_content%5D%5B8%5D=edit\";i:3;a:5:{s:5:\"table\";s:10:\"tt_content\";s:3:\"uid\";i:8;s:3:\"pid\";i:1;s:3:\"cmd\";s:4:\"edit\";s:12:\"deleteAccess\";b:1;}}s:32:\"ffbd6ae78a9aa555f88d6295c30fb80c\";a:4:{i:0;s:5:\"test2\";i:1;a:5:{s:4:\"edit\";a:1:{s:10:\"tt_content\";a:1:{i:10;s:4:\"edit\";}}s:7:\"defVals\";N;s:12:\"overrideVals\";N;s:11:\"columnsOnly\";N;s:6:\"noView\";N;}i:2;s:34:\"&edit%5Btt_content%5D%5B10%5D=edit\";i:3;a:5:{s:5:\"table\";s:10:\"tt_content\";s:3:\"uid\";i:10;s:3:\"pid\";i:1;s:3:\"cmd\";s:4:\"edit\";s:12:\"deleteAccess\";b:1;}}}i:1;s:32:\"f87337ea07fd5e46b7487a4d63a03a03\";}s:8:\"web_info\";a:1:{s:8:\"function\";s:48:\"TYPO3\\CMS\\Belog\\Module\\BackendLogModuleBootstrap\";}s:8:\"web_list\";a:0:{}s:47:\"TYPO3\\CMS\\Belog\\Controller\\BackendLogController\";s:352:\"O:39:\"TYPO3\\CMS\\Belog\\Domain\\Model\\Constraint\":12:{s:14:\"\0*\0userOrGroup\";s:1:\"0\";s:9:\"\0*\0number\";i:20;s:15:\"\0*\0workspaceUid\";i:-99;s:12:\"\0*\0timeFrame\";i:0;s:9:\"\0*\0action\";i:0;s:14:\"\0*\0groupByPage\";b:0;s:17:\"\0*\0startTimestamp\";i:0;s:15:\"\0*\0endTimestamp\";i:0;s:18:\"\0*\0manualDateStart\";N;s:17:\"\0*\0manualDateStop\";N;s:9:\"\0*\0pageId\";i:0;s:8:\"\0*\0depth\";i:0;}\";s:8:\"web_view\";a:1:{s:6:\"States\";a:1:{s:7:\"current\";a:3:{s:5:\"width\";s:4:\"1460\";s:6:\"height\";s:3:\"833\";s:5:\"label\";s:9:\"Maximized\";}}}}s:19:\"thumbnailsByDefault\";i:1;s:14:\"emailMeAtLogin\";i:0;s:8:\"titleLen\";i:50;s:8:\"edit_RTE\";s:1:\"1\";s:20:\"edit_docModuleUpload\";s:1:\"1\";s:15:\"resizeTextareas\";i:1;s:25:\"resizeTextareas_MaxHeight\";i:500;s:24:\"resizeTextareas_Flexible\";i:0;s:4:\"lang\";s:0:\"\";s:19:\"firstLoginTimeStamp\";i:1648067631;s:15:\"moduleSessionID\";a:9:{s:28:\"dashboard/current_dashboard/\";s:40:\"3014c4545a9abd49f6619090e263c4b3143bfc84\";s:6:\"web_ts\";s:40:\"da0ec2652a72d5f39c8223ec1c8e4123ba33008e\";s:10:\"web_layout\";s:40:\"3014c4545a9abd49f6619090e263c4b3143bfc84\";s:9:\"file_list\";s:40:\"37aa8122cfb0446efb298dd662d727bf2b9fd313\";s:57:\"TYPO3\\CMS\\Backend\\Utility\\BackendUtility::getUpdateSignal\";s:40:\"03f3fd1eb132583582ae4efd4da0a2946313d54e\";s:10:\"FormEngine\";s:40:\"03f3fd1eb132583582ae4efd4da0a2946313d54e\";s:8:\"web_info\";s:40:\"da0ec2652a72d5f39c8223ec1c8e4123ba33008e\";s:8:\"web_list\";s:40:\"da0ec2652a72d5f39c8223ec1c8e4123ba33008e\";s:47:\"TYPO3\\CMS\\Belog\\Controller\\BackendLogController\";s:40:\"da0ec2652a72d5f39c8223ec1c8e4123ba33008e\";}s:10:\"modulemenu\";s:39:\"{\"system\":true,\"file\":true,\"site\":true}\";s:17:\"systeminformation\";s:45:\"{\"system_BelogLog\":{\"lastAccess\":1648129558}}\";s:11:\"browseTrees\";a:2:{s:11:\"browsePages\";s:5:\"[[1]]\";s:6:\"folder\";s:47:\"{\"4503\":{\"119706376\":1},\"25218\":{\"62822724\":1}}\";}s:17:\"BackendComponents\";a:1:{s:6:\"States\";a:1:{s:8:\"Pagetree\";a:1:{s:9:\"stateHash\";a:1:{s:3:\"0_1\";s:1:\"1\";}}}}}',NULL,NULL,1,'',0,NULL,1648327063,0,NULL,0,NULL,'','');
/*!40000 ALTER TABLE `be_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cache_hash`
--

DROP TABLE IF EXISTS `cache_hash`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cache_hash` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `expires` int unsigned NOT NULL DEFAULT '0',
  `content` longblob,
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`(180),`expires`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cache_hash`
--

LOCK TABLES `cache_hash` WRITE;
/*!40000 ALTER TABLE `cache_hash` DISABLE KEYS */;
INSERT INTO `cache_hash` VALUES (1,'63b6f2bd07944dc3567f36df8e7d7eac',2145909600,_binary 'a:3:{s:8:\"options.\";a:8:{s:15:\"enableBookmarks\";s:1:\"1\";s:10:\"file_list.\";a:4:{s:28:\"enableDisplayBigControlPanel\";s:10:\"selectable\";s:23:\"enableDisplayThumbnails\";s:10:\"selectable\";s:15:\"enableClipBoard\";s:10:\"selectable\";s:10:\"thumbnail.\";a:2:{s:5:\"width\";s:2:\"64\";s:6:\"height\";s:2:\"64\";}}s:9:\"pageTree.\";a:1:{s:31:\"doktypesToShowInNewPageDragArea\";s:21:\"1,6,4,7,3,254,255,199\";}s:12:\"contextMenu.\";a:1:{s:6:\"table.\";a:3:{s:6:\"pages.\";a:2:{s:12:\"disableItems\";s:0:\"\";s:5:\"tree.\";a:1:{s:12:\"disableItems\";s:0:\"\";}}s:9:\"sys_file.\";a:2:{s:12:\"disableItems\";s:0:\"\";s:5:\"tree.\";a:1:{s:12:\"disableItems\";s:0:\"\";}}s:15:\"sys_filemounts.\";a:2:{s:12:\"disableItems\";s:0:\"\";s:5:\"tree.\";a:1:{s:12:\"disableItems\";s:0:\"\";}}}}s:11:\"saveDocView\";s:1:\"1\";s:10:\"saveDocNew\";s:1:\"1\";s:11:\"saveDocNew.\";a:3:{s:5:\"pages\";s:1:\"0\";s:8:\"sys_file\";s:1:\"0\";s:17:\"sys_file_metadata\";s:1:\"0\";}s:14:\"disableDelete.\";a:1:{s:8:\"sys_file\";s:1:\"1\";}}s:9:\"admPanel.\";a:1:{s:7:\"enable.\";a:1:{s:3:\"all\";s:1:\"1\";}}s:12:\"TCAdefaults.\";a:1:{s:9:\"sys_note.\";a:2:{s:6:\"author\";s:0:\"\";s:5:\"email\";s:20:\"mwozniak95@gmail.com\";}}}'),(2,'0da2e262dd7040c94860bba79b2caf89',2145909600,_binary 'a:2:{i:0;a:3:{s:8:\"TSconfig\";a:4:{s:4:\"mod.\";a:5:{s:9:\"web_list.\";a:4:{s:28:\"enableDisplayBigControlPanel\";s:10:\"selectable\";s:15:\"enableClipBoard\";s:10:\"selectable\";s:18:\"tableDisplayOrder.\";a:9:{s:9:\"be_users.\";a:1:{s:5:\"after\";s:9:\"be_groups\";}s:15:\"sys_filemounts.\";a:1:{s:5:\"after\";s:8:\"be_users\";}s:17:\"sys_file_storage.\";a:1:{s:5:\"after\";s:14:\"sys_filemounts\";}s:13:\"sys_language.\";a:1:{s:5:\"after\";s:16:\"sys_file_storage\";}s:9:\"fe_users.\";a:2:{s:5:\"after\";s:9:\"fe_groups\";s:6:\"before\";s:5:\"pages\";}s:13:\"sys_template.\";a:1:{s:5:\"after\";s:5:\"pages\";}s:15:\"backend_layout.\";a:1:{s:5:\"after\";s:5:\"pages\";}s:11:\"tt_content.\";a:1:{s:5:\"after\";s:33:\"pages,backend_layout,sys_template\";}s:13:\"sys_category.\";a:1:{s:5:\"after\";s:10:\"tt_content\";}}s:12:\"searchLevel.\";a:1:{s:6:\"items.\";a:6:{i:-1;s:82:\"EXT:core/Resources/Private/Language/locallang_core.xlf:labels.searchLevel.infinite\";i:0;s:75:\"EXT:core/Resources/Private/Language/locallang_core.xlf:labels.searchLevel.0\";i:1;s:75:\"EXT:core/Resources/Private/Language/locallang_core.xlf:labels.searchLevel.1\";i:2;s:75:\"EXT:core/Resources/Private/Language/locallang_core.xlf:labels.searchLevel.2\";i:3;s:75:\"EXT:core/Resources/Private/Language/locallang_core.xlf:labels.searchLevel.3\";i:4;s:75:\"EXT:core/Resources/Private/Language/locallang_core.xlf:labels.searchLevel.4\";}}}s:8:\"wizards.\";a:2:{s:10:\"newRecord.\";a:1:{s:6:\"pages.\";a:1:{s:5:\"show.\";a:3:{s:10:\"pageInside\";s:1:\"1\";s:9:\"pageAfter\";s:1:\"1\";s:18:\"pageSelectPosition\";s:1:\"1\";}}}s:18:\"newContentElement.\";a:1:{s:12:\"wizardItems.\";a:5:{s:7:\"common.\";a:3:{s:9:\"elements.\";a:8:{s:7:\"header.\";a:4:{s:14:\"iconIdentifier\";s:14:\"content-header\";s:5:\"title\";s:98:\"LLL:EXT:backend/Resources/Private/Language/locallang_db_new_content_el.xlf:common_headerOnly_title\";s:11:\"description\";s:104:\"LLL:EXT:backend/Resources/Private/Language/locallang_db_new_content_el.xlf:common_headerOnly_description\";s:21:\"tt_content_defValues.\";a:1:{s:5:\"CType\";s:6:\"header\";}}s:5:\"text.\";a:4:{s:14:\"iconIdentifier\";s:12:\"content-text\";s:5:\"title\";s:99:\"LLL:EXT:backend/Resources/Private/Language/locallang_db_new_content_el.xlf:common_regularText_title\";s:11:\"description\";s:105:\"LLL:EXT:backend/Resources/Private/Language/locallang_db_new_content_el.xlf:common_regularText_description\";s:21:\"tt_content_defValues.\";a:1:{s:5:\"CType\";s:4:\"text\";}}s:8:\"textpic.\";a:4:{s:14:\"iconIdentifier\";s:15:\"content-textpic\";s:5:\"title\";s:97:\"LLL:EXT:backend/Resources/Private/Language/locallang_db_new_content_el.xlf:common_textImage_title\";s:11:\"description\";s:103:\"LLL:EXT:backend/Resources/Private/Language/locallang_db_new_content_el.xlf:common_textImage_description\";s:21:\"tt_content_defValues.\";a:1:{s:5:\"CType\";s:7:\"textpic\";}}s:6:\"image.\";a:4:{s:14:\"iconIdentifier\";s:13:\"content-image\";s:5:\"title\";s:98:\"LLL:EXT:backend/Resources/Private/Language/locallang_db_new_content_el.xlf:common_imagesOnly_title\";s:11:\"description\";s:104:\"LLL:EXT:backend/Resources/Private/Language/locallang_db_new_content_el.xlf:common_imagesOnly_description\";s:21:\"tt_content_defValues.\";a:1:{s:5:\"CType\";s:5:\"image\";}}s:10:\"textmedia.\";a:4:{s:14:\"iconIdentifier\";s:17:\"content-textmedia\";s:5:\"title\";s:97:\"LLL:EXT:backend/Resources/Private/Language/locallang_db_new_content_el.xlf:common_textMedia_title\";s:11:\"description\";s:103:\"LLL:EXT:backend/Resources/Private/Language/locallang_db_new_content_el.xlf:common_textMedia_description\";s:21:\"tt_content_defValues.\";a:1:{s:5:\"CType\";s:9:\"textmedia\";}}s:8:\"bullets.\";a:4:{s:14:\"iconIdentifier\";s:15:\"content-bullets\";s:5:\"title\";s:98:\"LLL:EXT:backend/Resources/Private/Language/locallang_db_new_content_el.xlf:common_bulletList_title\";s:11:\"description\";s:104:\"LLL:EXT:backend/Resources/Private/Language/locallang_db_new_content_el.xlf:common_bulletList_description\";s:21:\"tt_content_defValues.\";a:1:{s:5:\"CType\";s:7:\"bullets\";}}s:6:\"table.\";a:4:{s:14:\"iconIdentifier\";s:13:\"content-table\";s:5:\"title\";s:93:\"LLL:EXT:backend/Resources/Private/Language/locallang_db_new_content_el.xlf:common_table_title\";s:11:\"description\";s:99:\"LLL:EXT:backend/Resources/Private/Language/locallang_db_new_content_el.xlf:common_table_description\";s:21:\"tt_content_defValues.\";a:1:{s:5:\"CType\";s:5:\"table\";}}s:8:\"uploads.\";a:4:{s:14:\"iconIdentifier\";s:23:\"content-special-uploads\";s:5:\"title\";s:98:\"LLL:EXT:backend/Resources/Private/Language/locallang_db_new_content_el.xlf:special_filelinks_title\";s:11:\"description\";s:104:\"LLL:EXT:backend/Resources/Private/Language/locallang_db_new_content_el.xlf:special_filelinks_description\";s:21:\"tt_content_defValues.\";a:1:{s:5:\"CType\";s:7:\"uploads\";}}}s:4:\"show\";s:57:\"header,text,textpic,image,textmedia,bullets,table,uploads\";s:6:\"header\";s:81:\"LLL:EXT:backend/Resources/Private/Language/locallang_db_new_content_el.xlf:common\";}s:5:\"menu.\";a:3:{s:9:\"elements.\";a:11:{s:14:\"menu_abstract.\";a:4:{s:14:\"iconIdentifier\";s:21:\"content-menu-abstract\";s:5:\"title\";s:94:\"LLL:EXT:backend/Resources/Private/Language/locallang_db_new_content_el.xlf:menu_abstract.title\";s:11:\"description\";s:100:\"LLL:EXT:backend/Resources/Private/Language/locallang_db_new_content_el.xlf:menu_abstract.description\";s:21:\"tt_content_defValues.\";a:1:{s:5:\"CType\";s:13:\"menu_abstract\";}}s:25:\"menu_categorized_content.\";a:4:{s:14:\"iconIdentifier\";s:24:\"content-menu-categorized\";s:5:\"title\";s:105:\"LLL:EXT:backend/Resources/Private/Language/locallang_db_new_content_el.xlf:menu_categorized_content.title\";s:11:\"description\";s:111:\"LLL:EXT:backend/Resources/Private/Language/locallang_db_new_content_el.xlf:menu_categorized_content.description\";s:21:\"tt_content_defValues.\";a:1:{s:5:\"CType\";s:24:\"menu_categorized_content\";}}s:23:\"menu_categorized_pages.\";a:4:{s:14:\"iconIdentifier\";s:24:\"content-menu-categorized\";s:5:\"title\";s:103:\"LLL:EXT:backend/Resources/Private/Language/locallang_db_new_content_el.xlf:menu_categorized_pages.title\";s:11:\"description\";s:109:\"LLL:EXT:backend/Resources/Private/Language/locallang_db_new_content_el.xlf:menu_categorized_pages.description\";s:21:\"tt_content_defValues.\";a:1:{s:5:\"CType\";s:22:\"menu_categorized_pages\";}}s:11:\"menu_pages.\";a:4:{s:14:\"iconIdentifier\";s:18:\"content-menu-pages\";s:5:\"title\";s:91:\"LLL:EXT:backend/Resources/Private/Language/locallang_db_new_content_el.xlf:menu_pages.title\";s:11:\"description\";s:97:\"LLL:EXT:backend/Resources/Private/Language/locallang_db_new_content_el.xlf:menu_pages.description\";s:21:\"tt_content_defValues.\";a:1:{s:5:\"CType\";s:10:\"menu_pages\";}}s:14:\"menu_subpages.\";a:4:{s:14:\"iconIdentifier\";s:18:\"content-menu-pages\";s:5:\"title\";s:94:\"LLL:EXT:backend/Resources/Private/Language/locallang_db_new_content_el.xlf:menu_subpages.title\";s:11:\"description\";s:100:\"LLL:EXT:backend/Resources/Private/Language/locallang_db_new_content_el.xlf:menu_subpages.description\";s:21:\"tt_content_defValues.\";a:1:{s:5:\"CType\";s:13:\"menu_subpages\";}}s:22:\"menu_recently_updated.\";a:4:{s:14:\"iconIdentifier\";s:29:\"content-menu-recently-updated\";s:5:\"title\";s:102:\"LLL:EXT:backend/Resources/Private/Language/locallang_db_new_content_el.xlf:menu_recently_updated.title\";s:11:\"description\";s:108:\"LLL:EXT:backend/Resources/Private/Language/locallang_db_new_content_el.xlf:menu_recently_updated.description\";s:21:\"tt_content_defValues.\";a:1:{s:5:\"CType\";s:21:\"menu_recently_updated\";}}s:19:\"menu_related_pages.\";a:4:{s:14:\"iconIdentifier\";s:20:\"content-menu-related\";s:5:\"title\";s:99:\"LLL:EXT:backend/Resources/Private/Language/locallang_db_new_content_el.xlf:menu_related_pages.title\";s:11:\"description\";s:105:\"LLL:EXT:backend/Resources/Private/Language/locallang_db_new_content_el.xlf:menu_related_pages.description\";s:21:\"tt_content_defValues.\";a:1:{s:5:\"CType\";s:18:\"menu_related_pages\";}}s:13:\"menu_section.\";a:4:{s:14:\"iconIdentifier\";s:20:\"content-menu-section\";s:5:\"title\";s:93:\"LLL:EXT:backend/Resources/Private/Language/locallang_db_new_content_el.xlf:menu_section.title\";s:11:\"description\";s:99:\"LLL:EXT:backend/Resources/Private/Language/locallang_db_new_content_el.xlf:menu_section.description\";s:21:\"tt_content_defValues.\";a:1:{s:5:\"CType\";s:12:\"menu_section\";}}s:19:\"menu_section_pages.\";a:4:{s:14:\"iconIdentifier\";s:20:\"content-menu-section\";s:5:\"title\";s:99:\"LLL:EXT:backend/Resources/Private/Language/locallang_db_new_content_el.xlf:menu_section_pages.title\";s:11:\"description\";s:105:\"LLL:EXT:backend/Resources/Private/Language/locallang_db_new_content_el.xlf:menu_section_pages.description\";s:21:\"tt_content_defValues.\";a:1:{s:5:\"CType\";s:18:\"menu_section_pages\";}}s:13:\"menu_sitemap.\";a:4:{s:14:\"iconIdentifier\";s:20:\"content-menu-sitemap\";s:5:\"title\";s:93:\"LLL:EXT:backend/Resources/Private/Language/locallang_db_new_content_el.xlf:menu_sitemap.title\";s:11:\"description\";s:99:\"LLL:EXT:backend/Resources/Private/Language/locallang_db_new_content_el.xlf:menu_sitemap.description\";s:21:\"tt_content_defValues.\";a:1:{s:5:\"CType\";s:12:\"menu_sitemap\";}}s:19:\"menu_sitemap_pages.\";a:4:{s:14:\"iconIdentifier\";s:26:\"content-menu-sitemap-pages\";s:5:\"title\";s:99:\"LLL:EXT:backend/Resources/Private/Language/locallang_db_new_content_el.xlf:menu_sitemap_pages.title\";s:11:\"description\";s:105:\"LLL:EXT:backend/Resources/Private/Language/locallang_db_new_content_el.xlf:menu_sitemap_pages.description\";s:21:\"tt_content_defValues.\";a:1:{s:5:\"CType\";s:18:\"menu_sitemap_pages\";}}}s:4:\"show\";s:191:\"menu_abstract,menu_categorized_content,menu_categorized_pages,menu_pages,menu_subpages,menu_recently_updated,menu_related_pages,menu_section,menu_section_pages,menu_sitemap,menu_sitemap_pages\";s:6:\"header\";s:79:\"LLL:EXT:backend/Resources/Private/Language/locallang_db_new_content_el.xlf:menu\";}s:8:\"special.\";a:3:{s:9:\"elements.\";a:4:{s:5:\"html.\";a:4:{s:14:\"iconIdentifier\";s:20:\"content-special-html\";s:5:\"title\";s:98:\"LLL:EXT:backend/Resources/Private/Language/locallang_db_new_content_el.xlf:special_plainHTML_title\";s:11:\"description\";s:104:\"LLL:EXT:backend/Resources/Private/Language/locallang_db_new_content_el.xlf:special_plainHTML_description\";s:21:\"tt_content_defValues.\";a:1:{s:5:\"CType\";s:4:\"html\";}}s:4:\"div.\";a:5:{s:14:\"iconIdentifier\";s:19:\"content-special-div\";s:5:\"title\";s:96:\"LLL:EXT:backend/Resources/Private/Language/locallang_db_new_content_el.xlf:special_divider_title\";s:11:\"description\";s:102:\"LLL:EXT:backend/Resources/Private/Language/locallang_db_new_content_el.xlf:special_divider_description\";s:21:\"tt_content_defValues.\";a:1:{s:5:\"CType\";s:3:\"div\";}s:12:\"saveAndClose\";s:4:\"true\";}s:9:\"shortcut.\";a:4:{s:14:\"iconIdentifier\";s:24:\"content-special-shortcut\";s:5:\"title\";s:97:\"LLL:EXT:backend/Resources/Private/Language/locallang_db_new_content_el.xlf:special_shortcut_title\";s:11:\"description\";s:103:\"LLL:EXT:backend/Resources/Private/Language/locallang_db_new_content_el.xlf:special_shortcut_description\";s:21:\"tt_content_defValues.\";a:1:{s:5:\"CType\";s:8:\"shortcut\";}}s:26:\"sampleextension_jumbotron.\";a:4:{s:14:\"iconIdentifier\";s:12:\"content-text\";s:5:\"title\";s:96:\"LLL:EXT:sampleextension/Resources/Private/Language/locallang.xlf:sampleextension_jumbotron_title\";s:11:\"description\";s:102:\"LLL:EXT:sampleextension/Resources/Private/Language/locallang.xlf:sampleextension_jumbotron_description\";s:21:\"tt_content_defValues.\";a:1:{s:5:\"CType\";s:25:\"sampleextension_jumbotron\";}}}s:4:\"show\";s:43:\"html,div,shortcut,sampleextension_jumbotron\";s:6:\"header\";s:82:\"LLL:EXT:backend/Resources/Private/Language/locallang_db_new_content_el.xlf:special\";}s:6:\"forms.\";a:3:{s:4:\"show\";s:27:\"formframework,felogin_login\";s:9:\"elements.\";a:2:{s:14:\"formframework.\";a:4:{s:14:\"iconIdentifier\";s:12:\"content-form\";s:5:\"title\";s:75:\"LLL:EXT:form/Resources/Private/Language/locallang.xlf:form_new_wizard_title\";s:11:\"description\";s:77:\"LLL:EXT:form/Resources/Private/Language/locallang:form_new_wizard_description\";s:21:\"tt_content_defValues.\";a:1:{s:5:\"CType\";s:18:\"form_formframework\";}}s:14:\"felogin_login.\";a:4:{s:14:\"iconIdentifier\";s:22:\"content-elements-login\";s:5:\"title\";s:92:\"LLL:EXT:felogin/Resources/Private/Language/Database.xlf:tt_content.CType.felogin_login.title\";s:11:\"description\";s:98:\"LLL:EXT:felogin/Resources/Private/Language/Database.xlf:tt_content.CType.felogin_login.description\";s:21:\"tt_content_defValues.\";a:1:{s:5:\"CType\";s:13:\"felogin_login\";}}}s:6:\"header\";s:80:\"LLL:EXT:backend/Resources/Private/Language/locallang_db_new_content_el.xlf:forms\";}s:8:\"plugins.\";a:3:{s:6:\"header\";s:82:\"LLL:EXT:backend/Resources/Private/Language/locallang_db_new_content_el.xlf:plugins\";s:9:\"elements.\";a:1:{s:8:\"general.\";a:4:{s:14:\"iconIdentifier\";s:14:\"content-plugin\";s:5:\"title\";s:96:\"LLL:EXT:backend/Resources/Private/Language/locallang_db_new_content_el.xlf:plugins_general_title\";s:11:\"description\";s:102:\"LLL:EXT:backend/Resources/Private/Language/locallang_db_new_content_el.xlf:plugins_general_description\";s:21:\"tt_content_defValues.\";a:1:{s:5:\"CType\";s:4:\"list\";}}}s:4:\"show\";s:1:\"*\";}}}}s:9:\"web_view.\";a:1:{s:19:\"previewFrameWidths.\";a:12:{s:5:\"1920.\";a:4:{s:5:\"label\";s:66:\"LLL:EXT:viewpage/Resources/Private/Language/locallang.xlf:computer\";s:4:\"type\";s:7:\"desktop\";s:5:\"width\";s:4:\"1920\";s:6:\"height\";s:4:\"1080\";}s:5:\"1366.\";a:4:{s:5:\"label\";s:66:\"LLL:EXT:viewpage/Resources/Private/Language/locallang.xlf:computer\";s:4:\"type\";s:7:\"desktop\";s:5:\"width\";s:4:\"1366\";s:6:\"height\";s:3:\"768\";}s:5:\"1280.\";a:4:{s:5:\"label\";s:66:\"LLL:EXT:viewpage/Resources/Private/Language/locallang.xlf:computer\";s:4:\"type\";s:7:\"desktop\";s:5:\"width\";s:4:\"1280\";s:6:\"height\";s:4:\"1024\";}s:5:\"1024.\";a:4:{s:5:\"label\";s:66:\"LLL:EXT:viewpage/Resources/Private/Language/locallang.xlf:computer\";s:4:\"type\";s:7:\"desktop\";s:5:\"width\";s:4:\"1024\";s:6:\"height\";s:3:\"768\";}s:7:\"nexus7.\";a:4:{s:5:\"label\";s:7:\"Nexus 7\";s:4:\"type\";s:6:\"tablet\";s:5:\"width\";s:3:\"600\";s:6:\"height\";s:3:\"960\";}s:8:\"nexus6p.\";a:4:{s:5:\"label\";s:8:\"Nexus 6P\";s:4:\"type\";s:6:\"mobile\";s:5:\"width\";s:3:\"411\";s:6:\"height\";s:3:\"731\";}s:8:\"ipadpro.\";a:4:{s:5:\"label\";s:8:\"iPad Pro\";s:4:\"type\";s:6:\"tablet\";s:5:\"width\";s:4:\"1024\";s:6:\"height\";s:4:\"1366\";}s:8:\"ipadair.\";a:4:{s:5:\"label\";s:8:\"iPad Air\";s:4:\"type\";s:6:\"tablet\";s:5:\"width\";s:3:\"768\";s:6:\"height\";s:4:\"1024\";}s:12:\"iphone7plus.\";a:4:{s:5:\"label\";s:13:\"iPhone 7 Plus\";s:4:\"type\";s:6:\"mobile\";s:5:\"width\";s:3:\"414\";s:6:\"height\";s:3:\"736\";}s:8:\"iphone6.\";a:4:{s:5:\"label\";s:8:\"iPhone 6\";s:4:\"type\";s:6:\"mobile\";s:5:\"width\";s:3:\"375\";s:6:\"height\";s:3:\"667\";}s:8:\"iphone5.\";a:4:{s:5:\"label\";s:8:\"iPhone 5\";s:4:\"type\";s:6:\"mobile\";s:5:\"width\";s:3:\"320\";s:6:\"height\";s:3:\"568\";}s:8:\"iphone4.\";a:4:{s:5:\"label\";s:8:\"iPhone 4\";s:4:\"type\";s:6:\"mobile\";s:5:\"width\";s:3:\"320\";s:6:\"height\";s:3:\"480\";}}}s:9:\"web_info.\";a:1:{s:17:\"fieldDefinitions.\";a:5:{s:2:\"0.\";a:2:{s:5:\"label\";s:69:\"LLL:EXT:info/Resources/Private/Language/locallang_webinfo.xlf:pages_0\";s:6:\"fields\";s:75:\"title,uid,slug,starttime,endtime,fe_group,target,url,shortcut,shortcut_mode\";}s:2:\"1.\";a:2:{s:5:\"label\";s:69:\"LLL:EXT:info/Resources/Private/Language/locallang_webinfo.xlf:pages_1\";s:6:\"fields\";s:26:\"title,uid,###ALL_TABLES###\";}s:2:\"2.\";a:2:{s:5:\"label\";s:69:\"LLL:EXT:info/Resources/Private/Language/locallang_webinfo.xlf:pages_2\";s:6:\"fields\";s:93:\"title,uid,lastUpdated,newUntil,cache_timeout,php_tree_stop,TSconfig,is_siteroot,fe_login_mode\";}s:4:\"seo.\";a:2:{s:5:\"label\";s:64:\"LLL:EXT:seo/Resources/Private/Language/locallang_webinfo.xlf:seo\";s:6:\"fields\";s:106:\"title,uid,slug,seo_title,description,no_index,no_follow,canonical_link,sitemap_changefreq,sitemap_priority\";}s:13:\"social_media.\";a:2:{s:5:\"label\";s:73:\"LLL:EXT:seo/Resources/Private/Language/locallang_webinfo.xlf:social_media\";s:6:\"fields\";s:67:\"title,uid,og_title,og_description,twitter_title,twitter_description\";}}}s:11:\"web_layout.\";a:1:{s:15:\"BackendLayouts.\";a:1:{s:8:\"default.\";a:3:{s:5:\"title\";s:90:\"LLL:EXT:sampleextension/Resources/Private/Language/locallang_be.xlf:backend_layout.default\";s:7:\"config.\";a:1:{s:15:\"backend_layout.\";a:3:{s:8:\"colCount\";s:1:\"1\";s:8:\"rowCount\";s:1:\"1\";s:5:\"rows.\";a:1:{s:2:\"1.\";a:1:{s:8:\"columns.\";a:1:{s:2:\"1.\";a:2:{s:4:\"name\";s:96:\"LLL:EXT:sampleextension/Resources/Private/Language/locallang_be.xlf:backend_layout.column.normal\";s:6:\"colPos\";s:1:\"0\";}}}}}}s:4:\"icon\";s:70:\"EXT:sampleextension/Resources/Public/Images/BackendLayouts/default.png\";}}}}s:8:\"TCEMAIN.\";a:2:{s:18:\"translateToMessage\";s:16:\"Translate to %s:\";s:12:\"linkHandler.\";a:6:{s:5:\"page.\";a:2:{s:7:\"handler\";s:48:\"TYPO3\\CMS\\Recordlist\\LinkHandler\\PageLinkHandler\";s:5:\"label\";s:77:\"LLL:EXT:recordlist/Resources/Private/Language/locallang_browse_links.xlf:page\";}s:5:\"file.\";a:4:{s:7:\"handler\";s:48:\"TYPO3\\CMS\\Recordlist\\LinkHandler\\FileLinkHandler\";s:5:\"label\";s:77:\"LLL:EXT:recordlist/Resources/Private/Language/locallang_browse_links.xlf:file\";s:12:\"displayAfter\";s:4:\"page\";s:9:\"scanAfter\";s:4:\"page\";}s:7:\"folder.\";a:4:{s:7:\"handler\";s:50:\"TYPO3\\CMS\\Recordlist\\LinkHandler\\FolderLinkHandler\";s:5:\"label\";s:79:\"LLL:EXT:recordlist/Resources/Private/Language/locallang_browse_links.xlf:folder\";s:12:\"displayAfter\";s:9:\"page,file\";s:9:\"scanAfter\";s:9:\"page,file\";}s:4:\"url.\";a:4:{s:7:\"handler\";s:47:\"TYPO3\\CMS\\Recordlist\\LinkHandler\\UrlLinkHandler\";s:5:\"label\";s:79:\"LLL:EXT:recordlist/Resources/Private/Language/locallang_browse_links.xlf:extUrl\";s:12:\"displayAfter\";s:16:\"page,file,folder\";s:9:\"scanAfter\";s:9:\"telephone\";}s:5:\"mail.\";a:4:{s:7:\"handler\";s:48:\"TYPO3\\CMS\\Recordlist\\LinkHandler\\MailLinkHandler\";s:5:\"label\";s:78:\"LLL:EXT:recordlist/Resources/Private/Language/locallang_browse_links.xlf:email\";s:12:\"displayAfter\";s:20:\"page,file,folder,url\";s:10:\"scanBefore\";s:3:\"url\";}s:10:\"telephone.\";a:4:{s:7:\"handler\";s:53:\"TYPO3\\CMS\\Recordlist\\LinkHandler\\TelephoneLinkHandler\";s:5:\"label\";s:82:\"LLL:EXT:recordlist/Resources/Private/Language/locallang_browse_links.xlf:telephone\";s:12:\"displayAfter\";s:25:\"page,file,folder,url,mail\";s:10:\"scanBefore\";s:3:\"url\";}}}s:8:\"TCEFORM.\";a:2:{s:11:\"tt_content.\";a:1:{s:12:\"imageorient.\";a:1:{s:6:\"types.\";a:1:{s:6:\"image.\";a:1:{s:11:\"removeItems\";s:18:\"8,9,10,17,18,25,26\";}}}}s:6:\"pages.\";a:0:{}}s:4:\"RTE.\";a:1:{s:8:\"default.\";a:1:{s:6:\"preset\";s:15:\"sampleextension\";}}}s:8:\"sections\";a:0:{}s:5:\"match\";a:0:{}}i:1;s:32:\"26136c7966bec12aadcfdfb0a5080042\";}'),(3,'7be23a5eb0c18599dd6f4219685f5530',2145909600,_binary 'a:2:{s:9:\"constants\";a:3:{s:7:\"styles.\";a:2:{s:8:\"content.\";a:7:{s:10:\"loginform.\";a:22:{s:3:\"pid\";s:1:\"0\";s:9:\"recursive\";s:1:\"0\";s:12:\"templateFile\";s:56:\"EXT:felogin/Resources/Private/Templates/Login/Login.html\";s:14:\"feloginBaseURL\";s:0:\"\";s:10:\"dateFormat\";s:9:\"Y-m-d H:i\";s:22:\"showForgotPasswordLink\";s:1:\"0\";s:14:\"showPermaLogin\";s:1:\"0\";s:24:\"showLogoutFormAfterLogin\";s:1:\"0\";s:9:\"emailFrom\";s:0:\"\";s:13:\"emailFromName\";s:0:\"\";s:12:\"replyToEmail\";s:0:\"\";s:6:\"email.\";a:4:{s:14:\"layoutRootPath\";s:0:\"\";s:16:\"templateRootPath\";s:46:\"EXT:felogin/Resources/Private/Email/Templates/\";s:15:\"partialRootPath\";s:0:\"\";s:12:\"templateName\";s:16:\"PasswordRecovery\";}s:12:\"redirectMode\";s:0:\"\";s:19:\"redirectFirstMethod\";s:1:\"0\";s:17:\"redirectPageLogin\";s:1:\"0\";s:22:\"redirectPageLoginError\";s:1:\"0\";s:18:\"redirectPageLogout\";s:1:\"0\";s:15:\"redirectDisable\";s:1:\"0\";s:23:\"forgotLinkHashValidTime\";s:2:\"12\";s:20:\"newPasswordMinLength\";s:1:\"6\";s:7:\"domains\";s:0:\"\";s:43:\"exposeNonexistentUserInForgotPasswordDialog\";s:1:\"0\";}s:17:\"defaultHeaderType\";s:1:\"2\";s:9:\"shortcut.\";a:1:{s:6:\"tables\";s:10:\"tt_content\";}s:9:\"allowTags\";s:392:\"a, abbr, acronym, address, article, aside, b, bdo, big, blockquote, br, caption, center, cite, code, col, colgroup, dd, del, dfn, dl, div, dt, em, font, footer, header, h1, h2, h3, h4, h5, h6, hr, i, img, ins, kbd, label, li, link, meta, nav, ol, p, pre, q, s, samp, sdfield, section, small, span, strike, strong, style, sub, sup, table, thead, tbody, tfoot, td, th, tr, title, tt, u, ul, var\";s:6:\"image.\";a:1:{s:11:\"lazyLoading\";s:4:\"lazy\";}s:10:\"textmedia.\";a:9:{s:4:\"maxW\";s:3:\"600\";s:10:\"maxWInText\";s:3:\"300\";s:13:\"columnSpacing\";s:2:\"10\";s:10:\"rowSpacing\";s:2:\"10\";s:10:\"textMargin\";s:2:\"10\";s:11:\"borderColor\";s:7:\"#000000\";s:11:\"borderWidth\";s:1:\"2\";s:13:\"borderPadding\";s:1:\"0\";s:9:\"linkWrap.\";a:6:{s:5:\"width\";s:4:\"800m\";s:6:\"height\";s:4:\"600m\";s:9:\"newWindow\";s:1:\"0\";s:15:\"lightboxEnabled\";s:1:\"0\";s:16:\"lightboxCssClass\";s:8:\"lightbox\";s:20:\"lightboxRelAttribute\";s:21:\"lightbox[{field:uid}]\";}}s:6:\"links.\";a:2:{s:9:\"extTarget\";s:6:\"_blank\";s:4:\"keep\";s:4:\"path\";}}s:10:\"templates.\";a:3:{s:16:\"templateRootPath\";s:64:\"EXT:sampleextension/Resources/Private/Templates/ContentElements/\";s:15:\"partialRootPath\";s:63:\"EXT:sampleextension/Resources/Private/Partials/ContentElements/\";s:14:\"layoutRootPath\";s:62:\"EXT:sampleextension/Resources/Private/Layouts/ContentElements/\";}}s:5:\"page.\";a:3:{s:14:\"fluidtemplate.\";a:3:{s:14:\"layoutRootPath\";s:51:\"EXT:sampleextension/Resources/Private/Layouts/Page/\";s:15:\"partialRootPath\";s:52:\"EXT:sampleextension/Resources/Private/Partials/Page/\";s:16:\"templateRootPath\";s:53:\"EXT:sampleextension/Resources/Private/Templates/Page/\";}s:5:\"meta.\";a:7:{s:11:\"description\";s:0:\"\";s:6:\"author\";s:0:\"\";s:8:\"keywords\";s:0:\"\";s:8:\"viewport\";s:35:\"width=device-width, initial-scale=1\";s:6:\"robots\";s:12:\"index,follow\";s:28:\"apple-mobile-web-app-capable\";s:2:\"no\";s:10:\"compatible\";s:7:\"IE=edge\";}s:9:\"tracking.\";a:1:{s:7:\"google.\";a:2:{s:10:\"trackingID\";s:0:\"\";s:11:\"anonymizeIp\";s:1:\"1\";}}}s:7:\"config.\";a:5:{s:8:\"no_cache\";s:1:\"0\";s:15:\"removeDefaultJS\";s:1:\"0\";s:8:\"admPanel\";s:1:\"1\";s:18:\"prefixLocalAnchors\";s:3:\"all\";s:16:\"sendCacheHeaders\";s:1:\"1\";}}s:5:\"setup\";a:13:{s:7:\"config.\";a:29:{s:19:\"pageTitleProviders.\";a:2:{s:7:\"record.\";a:1:{s:8:\"provider\";s:48:\"TYPO3\\CMS\\Core\\PageTitle\\RecordPageTitleProvider\";}s:4:\"seo.\";a:2:{s:8:\"provider\";s:49:\"TYPO3\\CMS\\Seo\\PageTitle\\SeoTitlePageTitleProvider\";s:6:\"before\";s:6:\"record\";}}s:12:\"absRefPrefix\";s:4:\"auto\";s:8:\"no_cache\";s:1:\"0\";s:14:\"uniqueLinkVars\";s:1:\"1\";s:14:\"pageTitleFirst\";s:1:\"1\";s:8:\"linkVars\";s:1:\"L\";s:18:\"prefixLocalAnchors\";s:3:\"all\";s:13:\"renderCharset\";s:5:\"utf-8\";s:11:\"metaCharset\";s:5:\"utf-8\";s:7:\"doctype\";s:5:\"html5\";s:15:\"removeDefaultJS\";s:1:\"0\";s:20:\"inlineStyle2TempFile\";s:1:\"1\";s:8:\"admPanel\";s:1:\"1\";s:5:\"debug\";s:1:\"0\";s:12:\"cache_period\";s:5:\"86400\";s:16:\"sendCacheHeaders\";s:1:\"1\";s:9:\"intTarget\";s:0:\"\";s:9:\"extTarget\";s:0:\"\";s:20:\"disablePrefixComment\";s:1:\"1\";s:12:\"index_enable\";s:1:\"1\";s:15:\"index_externals\";s:1:\"1\";s:14:\"index_metatags\";s:1:\"1\";s:13:\"headerComment\";s:23:\"{$config.headerComment}\";s:9:\"noScaleUp\";s:1:\"1\";s:10:\"compressJs\";s:1:\"0\";s:11:\"compressCss\";s:1:\"0\";s:13:\"concatenateJs\";s:1:\"0\";s:14:\"concatenateCss\";s:1:\"0\";s:11:\"tx_extbase.\";a:3:{s:4:\"mvc.\";a:1:{s:48:\"throwPageNotFoundExceptionIfActionCantBeResolved\";s:1:\"0\";}s:12:\"persistence.\";a:2:{s:28:\"enableAutomaticCacheClearing\";s:1:\"1\";s:20:\"updateReferenceIndex\";s:1:\"0\";}s:9:\"features.\";a:2:{s:20:\"skipDefaultArguments\";s:1:\"0\";s:25:\"ignoreAllEnableFieldsInBe\";s:1:\"0\";}}}s:7:\"styles.\";a:1:{s:8:\"content.\";a:2:{s:3:\"get\";s:7:\"CONTENT\";s:4:\"get.\";a:2:{s:5:\"table\";s:10:\"tt_content\";s:7:\"select.\";a:2:{s:7:\"orderBy\";s:7:\"sorting\";s:5:\"where\";s:11:\"{#colPos}=0\";}}}}s:10:\"tt_content\";s:4:\"CASE\";s:11:\"tt_content.\";a:56:{s:4:\"key.\";a:1:{s:5:\"field\";s:5:\"CType\";}s:7:\"default\";s:4:\"TEXT\";s:8:\"default.\";a:4:{s:5:\"field\";s:5:\"CType\";s:16:\"htmlSpecialChars\";s:1:\"1\";s:4:\"wrap\";s:165:\"<p style=\"background-color: yellow; padding: 0.5em 1em;\"><strong>ERROR:</strong> Content Element with uid \"{field:uid}\" and type \"|\" has no rendering definition!</p>\";s:5:\"wrap.\";a:1:{s:10:\"insertData\";s:1:\"1\";}}s:8:\"stdWrap.\";a:2:{s:9:\"editPanel\";s:1:\"1\";s:10:\"editPanel.\";a:5:{s:5:\"allow\";s:29:\"move, new, edit, hide, delete\";s:5:\"label\";s:2:\"%s\";s:14:\"onlyCurrentPid\";s:1:\"1\";s:13:\"previewBorder\";s:1:\"1\";s:5:\"edit.\";a:1:{s:13:\"displayRecord\";s:1:\"1\";}}}s:7:\"bullets\";s:20:\"< lib.contentElement\";s:8:\"bullets.\";a:3:{s:12:\"templateName\";s:7:\"Bullets\";s:15:\"dataProcessing.\";a:4:{i:10;s:48:\"TYPO3\\CMS\\Frontend\\DataProcessing\\SplitProcessor\";s:3:\"10.\";a:4:{s:3:\"if.\";a:2:{s:5:\"value\";s:1:\"2\";s:11:\"isLessThan.\";a:1:{s:5:\"field\";s:12:\"bullets_type\";}}s:9:\"fieldName\";s:8:\"bodytext\";s:18:\"removeEmptyEntries\";s:1:\"1\";s:2:\"as\";s:7:\"bullets\";}i:20;s:62:\"TYPO3\\CMS\\Frontend\\DataProcessing\\CommaSeparatedValueProcessor\";s:3:\"20.\";a:4:{s:9:\"fieldName\";s:8:\"bodytext\";s:3:\"if.\";a:2:{s:5:\"value\";s:1:\"2\";s:7:\"equals.\";a:1:{s:5:\"field\";s:12:\"bullets_type\";}}s:14:\"fieldDelimiter\";s:1:\"|\";s:2:\"as\";s:7:\"bullets\";}}s:8:\"stdWrap.\";a:2:{s:9:\"editIcons\";s:59:\"tt_content: header [header_layout], bodytext [bullets_type]\";s:10:\"editIcons.\";a:2:{s:13:\"beforeLastTag\";s:1:\"1\";s:10:\"iconTitle.\";a:1:{s:4:\"data\";s:92:\"LLL:EXT:fluid_styled_content/Resources/Private/Language/FrontendEditing.xlf:editIcon.bullets\";}}}}s:3:\"div\";s:20:\"< lib.contentElement\";s:4:\"div.\";a:1:{s:12:\"templateName\";s:3:\"Div\";}s:6:\"header\";s:20:\"< lib.contentElement\";s:7:\"header.\";a:2:{s:12:\"templateName\";s:6:\"Header\";s:8:\"stdWrap.\";a:2:{s:9:\"editIcons\";s:63:\"tt_content: header [header_layout|header_link], subheader, date\";s:10:\"editIcons.\";a:2:{s:13:\"beforeLastTag\";s:1:\"1\";s:10:\"iconTitle.\";a:1:{s:4:\"data\";s:91:\"LLL:EXT:fluid_styled_content/Resources/Private/Language/FrontendEditing.xlf:editIcon.header\";}}}}s:4:\"html\";s:20:\"< lib.contentElement\";s:5:\"html.\";a:2:{s:12:\"templateName\";s:4:\"Html\";s:8:\"stdWrap.\";a:2:{s:9:\"editIcons\";s:20:\"tt_content: bodytext\";s:10:\"editIcons.\";a:2:{s:13:\"beforeLastTag\";s:1:\"1\";s:10:\"iconTitle.\";a:1:{s:4:\"data\";s:89:\"LLL:EXT:fluid_styled_content/Resources/Private/Language/FrontendEditing.xlf:editIcon.html\";}}}}s:5:\"image\";s:20:\"< lib.contentElement\";s:6:\"image.\";a:3:{s:12:\"templateName\";s:5:\"Image\";s:15:\"dataProcessing.\";a:4:{i:10;s:48:\"TYPO3\\CMS\\Frontend\\DataProcessing\\FilesProcessor\";s:3:\"10.\";a:1:{s:11:\"references.\";a:1:{s:9:\"fieldName\";s:5:\"image\";}}i:20;s:50:\"TYPO3\\CMS\\Frontend\\DataProcessing\\GalleryProcessor\";s:3:\"20.\";a:5:{s:15:\"maxGalleryWidth\";s:3:\"600\";s:21:\"maxGalleryWidthInText\";s:3:\"300\";s:13:\"columnSpacing\";s:2:\"10\";s:11:\"borderWidth\";s:1:\"2\";s:13:\"borderPadding\";s:1:\"0\";}}s:8:\"stdWrap.\";a:2:{s:9:\"editIcons\";s:92:\"tt_content : image [imageorient|imagewidth|imageheight], [imagecols|imageborder], image_zoom\";s:10:\"editIcons.\";a:1:{s:10:\"iconTitle.\";a:1:{s:4:\"data\";s:90:\"LLL:EXT:fluid_styled_content/Resources/Private/Language/FrontendEditing.xlf:editIcon.image\";}}}}s:4:\"list\";s:20:\"< lib.contentElement\";s:5:\"list.\";a:2:{s:12:\"templateName\";s:4:\"List\";s:8:\"stdWrap.\";a:2:{s:9:\"editIcons\";s:72:\"tt_content: header [header_layout], list_type, layout, pages [recursive]\";s:10:\"editIcons.\";a:1:{s:10:\"iconTitle.\";a:1:{s:4:\"data\";s:89:\"LLL:EXT:fluid_styled_content/Resources/Private/Language/FrontendEditing.xlf:editIcon.list\";}}}}s:8:\"shortcut\";s:20:\"< lib.contentElement\";s:9:\"shortcut.\";a:3:{s:12:\"templateName\";s:8:\"Shortcut\";s:10:\"variables.\";a:2:{s:9:\"shortcuts\";s:7:\"RECORDS\";s:10:\"shortcuts.\";a:2:{s:7:\"source.\";a:1:{s:5:\"field\";s:7:\"records\";}s:6:\"tables\";s:10:\"tt_content\";}}s:8:\"stdWrap.\";a:2:{s:9:\"editIcons\";s:43:\"tt_content: header [header_layout], records\";s:10:\"editIcons.\";a:1:{s:10:\"iconTitle.\";a:1:{s:4:\"data\";s:93:\"LLL:EXT:fluid_styled_content/Resources/Private/Language/FrontendEditing.xlf:editIcon.shortcut\";}}}}s:5:\"table\";s:20:\"< lib.contentElement\";s:6:\"table.\";a:3:{s:12:\"templateName\";s:5:\"Table\";s:15:\"dataProcessing.\";a:2:{i:10;s:62:\"TYPO3\\CMS\\Frontend\\DataProcessing\\CommaSeparatedValueProcessor\";s:3:\"10.\";a:5:{s:9:\"fieldName\";s:8:\"bodytext\";s:15:\"fieldDelimiter.\";a:1:{s:5:\"char.\";a:2:{s:7:\"cObject\";s:4:\"TEXT\";s:8:\"cObject.\";a:1:{s:5:\"field\";s:15:\"table_delimiter\";}}}s:15:\"fieldEnclosure.\";a:2:{s:5:\"char.\";a:2:{s:7:\"cObject\";s:4:\"TEXT\";s:8:\"cObject.\";a:1:{s:5:\"field\";s:15:\"table_enclosure\";}}s:3:\"if.\";a:3:{s:5:\"value\";s:1:\"0\";s:7:\"equals.\";a:1:{s:5:\"field\";s:15:\"table_enclosure\";}s:6:\"negate\";s:1:\"1\";}}s:15:\"maximumColumns.\";a:1:{s:5:\"field\";s:4:\"cols\";}s:2:\"as\";s:5:\"table\";}}s:8:\"stdWrap.\";a:2:{s:9:\"editIcons\";s:100:\"tt_content: header [header_layout], bodytext, [table_caption|cols|table_header_position|table_tfoot]\";s:10:\"editIcons.\";a:2:{s:13:\"beforeLastTag\";s:1:\"1\";s:10:\"iconTitle.\";a:1:{s:4:\"data\";s:90:\"LLL:EXT:fluid_styled_content/Resources/Private/Language/FrontendEditing.xlf:editIcon.table\";}}}}s:4:\"text\";s:20:\"< lib.contentElement\";s:5:\"text.\";a:2:{s:12:\"templateName\";s:4:\"Text\";s:8:\"stdWrap.\";a:2:{s:9:\"editIcons\";s:20:\"tt_content: bodytext\";s:10:\"editIcons.\";a:2:{s:13:\"beforeLastTag\";s:1:\"1\";s:10:\"iconTitle.\";a:1:{s:4:\"data\";s:89:\"LLL:EXT:fluid_styled_content/Resources/Private/Language/FrontendEditing.xlf:editIcon.html\";}}}}s:9:\"textmedia\";s:20:\"< lib.contentElement\";s:10:\"textmedia.\";a:3:{s:12:\"templateName\";s:9:\"Textmedia\";s:15:\"dataProcessing.\";a:4:{i:10;s:48:\"TYPO3\\CMS\\Frontend\\DataProcessing\\FilesProcessor\";s:3:\"10.\";a:1:{s:11:\"references.\";a:1:{s:9:\"fieldName\";s:6:\"assets\";}}i:20;s:50:\"TYPO3\\CMS\\Frontend\\DataProcessing\\GalleryProcessor\";s:3:\"20.\";a:5:{s:15:\"maxGalleryWidth\";s:3:\"600\";s:21:\"maxGalleryWidthInText\";s:3:\"300\";s:13:\"columnSpacing\";s:2:\"10\";s:11:\"borderWidth\";s:1:\"2\";s:13:\"borderPadding\";s:1:\"0\";}}s:8:\"stdWrap.\";a:2:{s:9:\"editIcons\";s:126:\"tt_content: header [header_layout], bodytext, assets [imageorient|imagewidth|imageheight], [imagecols|imageborder], image_zoom\";s:10:\"editIcons.\";a:1:{s:10:\"iconTitle.\";a:1:{s:4:\"data\";s:94:\"LLL:EXT:fluid_styled_content/Resources/Private/Language/FrontendEditing.xlf:editIcon.textmedia\";}}}}s:7:\"textpic\";s:20:\"< lib.contentElement\";s:8:\"textpic.\";a:3:{s:12:\"templateName\";s:7:\"Textpic\";s:15:\"dataProcessing.\";a:4:{i:10;s:48:\"TYPO3\\CMS\\Frontend\\DataProcessing\\FilesProcessor\";s:3:\"10.\";a:1:{s:11:\"references.\";a:1:{s:9:\"fieldName\";s:5:\"image\";}}i:20;s:50:\"TYPO3\\CMS\\Frontend\\DataProcessing\\GalleryProcessor\";s:3:\"20.\";a:5:{s:15:\"maxGalleryWidth\";s:3:\"600\";s:21:\"maxGalleryWidthInText\";s:3:\"300\";s:13:\"columnSpacing\";s:2:\"10\";s:11:\"borderWidth\";s:1:\"2\";s:13:\"borderPadding\";s:1:\"0\";}}s:8:\"stdWrap.\";a:2:{s:9:\"editIcons\";s:125:\"tt_content: header [header_layout], bodytext, image [imageorient|imagewidth|imageheight], [imagecols|imageborder], image_zoom\";s:10:\"editIcons.\";a:1:{s:10:\"iconTitle.\";a:1:{s:4:\"data\";s:92:\"LLL:EXT:fluid_styled_content/Resources/Private/Language/FrontendEditing.xlf:editIcon.textpic\";}}}}s:7:\"uploads\";s:20:\"< lib.contentElement\";s:8:\"uploads.\";a:3:{s:12:\"templateName\";s:7:\"Uploads\";s:15:\"dataProcessing.\";a:2:{i:10;s:48:\"TYPO3\\CMS\\Frontend\\DataProcessing\\FilesProcessor\";s:3:\"10.\";a:3:{s:11:\"references.\";a:1:{s:9:\"fieldName\";s:5:\"media\";}s:12:\"collections.\";a:1:{s:5:\"field\";s:16:\"file_collections\";}s:8:\"sorting.\";a:2:{s:5:\"field\";s:16:\"filelink_sorting\";s:10:\"direction.\";a:1:{s:5:\"field\";s:26:\"filelink_sorting_direction\";}}}}s:8:\"stdWrap.\";a:2:{s:9:\"editIcons\";s:127:\"tt_content: header [header_layout], media, file_collections, filelink_sorting, [filelink_size|uploads_description|uploads_type]\";s:10:\"editIcons.\";a:1:{s:10:\"iconTitle.\";a:1:{s:4:\"data\";s:92:\"LLL:EXT:fluid_styled_content/Resources/Private/Language/FrontendEditing.xlf:editIcon.uploads\";}}}}s:13:\"menu_abstract\";s:20:\"< lib.contentElement\";s:14:\"menu_abstract.\";a:3:{s:12:\"templateName\";s:12:\"MenuAbstract\";s:15:\"dataProcessing.\";a:2:{i:10;s:47:\"TYPO3\\CMS\\Frontend\\DataProcessing\\MenuProcessor\";s:3:\"10.\";a:3:{s:7:\"special\";s:9:\"directory\";s:8:\"special.\";a:1:{s:6:\"value.\";a:1:{s:5:\"field\";s:5:\"pages\";}}s:15:\"dataProcessing.\";a:2:{i:10;s:48:\"TYPO3\\CMS\\Frontend\\DataProcessing\\FilesProcessor\";s:3:\"10.\";a:1:{s:11:\"references.\";a:1:{s:9:\"fieldName\";s:5:\"media\";}}}}}s:8:\"stdWrap.\";a:2:{s:9:\"editIcons\";s:41:\"tt_content: header [header_layout], pages\";s:10:\"editIcons.\";a:1:{s:10:\"iconTitle.\";a:1:{s:4:\"data\";s:89:\"LLL:EXT:fluid_styled_content/Resources/Private/Language/FrontendEditing.xlf:editIcon.menu\";}}}}s:24:\"menu_categorized_content\";s:20:\"< lib.contentElement\";s:25:\"menu_categorized_content.\";a:3:{s:12:\"templateName\";s:22:\"MenuCategorizedContent\";s:15:\"dataProcessing.\";a:2:{i:10;s:56:\"TYPO3\\CMS\\Frontend\\DataProcessing\\DatabaseQueryProcessor\";s:3:\"10.\";a:10:{s:5:\"table\";s:10:\"tt_content\";s:12:\"selectFields\";s:12:\"tt_content.*\";s:7:\"groupBy\";s:3:\"uid\";s:10:\"pidInList.\";a:1:{s:4:\"data\";s:12:\"leveluid : 0\";}s:9:\"recursive\";s:2:\"99\";s:5:\"join.\";a:2:{s:4:\"data\";s:25:\"field:selected_categories\";s:4:\"wrap\";s:109:\"sys_category_record_mm ON uid = sys_category_record_mm.uid_foreign AND sys_category_record_mm.uid_local IN(|)\";}s:6:\"where.\";a:2:{s:4:\"data\";s:20:\"field:category_field\";s:4:\"wrap\";s:41:\"tablenames=\'tt_content\' and fieldname=\'|\'\";}s:7:\"orderBy\";s:18:\"tt_content.sorting\";s:2:\"as\";s:7:\"content\";s:15:\"dataProcessing.\";a:2:{i:10;s:48:\"TYPO3\\CMS\\Frontend\\DataProcessing\\FilesProcessor\";s:3:\"10.\";a:1:{s:11:\"references.\";a:1:{s:9:\"fieldName\";s:5:\"image\";}}}}}s:8:\"stdWrap.\";a:2:{s:9:\"editIcons\";s:71:\"tt_content: header [header_layout], selected_categories, category_field\";s:10:\"editIcons.\";a:1:{s:10:\"iconTitle.\";a:1:{s:4:\"data\";s:89:\"LLL:EXT:fluid_styled_content/Resources/Private/Language/FrontendEditing.xlf:editIcon.menu\";}}}}s:22:\"menu_categorized_pages\";s:20:\"< lib.contentElement\";s:23:\"menu_categorized_pages.\";a:3:{s:12:\"templateName\";s:20:\"MenuCategorizedPages\";s:15:\"dataProcessing.\";a:2:{i:10;s:47:\"TYPO3\\CMS\\Frontend\\DataProcessing\\MenuProcessor\";s:3:\"10.\";a:3:{s:7:\"special\";s:10:\"categories\";s:8:\"special.\";a:4:{s:6:\"value.\";a:1:{s:5:\"field\";s:19:\"selected_categories\";}s:9:\"relation.\";a:1:{s:5:\"field\";s:14:\"category_field\";}s:7:\"sorting\";s:5:\"title\";s:5:\"order\";s:3:\"asc\";}s:15:\"dataProcessing.\";a:2:{i:10;s:48:\"TYPO3\\CMS\\Frontend\\DataProcessing\\FilesProcessor\";s:3:\"10.\";a:1:{s:11:\"references.\";a:1:{s:9:\"fieldName\";s:5:\"media\";}}}}}s:8:\"stdWrap.\";a:2:{s:9:\"editIcons\";s:71:\"tt_content: header [header_layout], selected_categories, category_field\";s:10:\"editIcons.\";a:1:{s:10:\"iconTitle.\";a:1:{s:4:\"data\";s:89:\"LLL:EXT:fluid_styled_content/Resources/Private/Language/FrontendEditing.xlf:editIcon.menu\";}}}}s:10:\"menu_pages\";s:20:\"< lib.contentElement\";s:11:\"menu_pages.\";a:3:{s:12:\"templateName\";s:9:\"MenuPages\";s:15:\"dataProcessing.\";a:2:{i:10;s:47:\"TYPO3\\CMS\\Frontend\\DataProcessing\\MenuProcessor\";s:3:\"10.\";a:3:{s:7:\"special\";s:4:\"list\";s:8:\"special.\";a:1:{s:6:\"value.\";a:1:{s:5:\"field\";s:5:\"pages\";}}s:15:\"dataProcessing.\";a:2:{i:10;s:48:\"TYPO3\\CMS\\Frontend\\DataProcessing\\FilesProcessor\";s:3:\"10.\";a:1:{s:11:\"references.\";a:1:{s:9:\"fieldName\";s:5:\"media\";}}}}}s:8:\"stdWrap.\";a:2:{s:9:\"editIcons\";s:41:\"tt_content: header [header_layout], pages\";s:10:\"editIcons.\";a:1:{s:10:\"iconTitle.\";a:1:{s:4:\"data\";s:89:\"LLL:EXT:fluid_styled_content/Resources/Private/Language/FrontendEditing.xlf:editIcon.menu\";}}}}s:13:\"menu_subpages\";s:20:\"< lib.contentElement\";s:14:\"menu_subpages.\";a:3:{s:12:\"templateName\";s:12:\"MenuSubpages\";s:15:\"dataProcessing.\";a:2:{i:10;s:47:\"TYPO3\\CMS\\Frontend\\DataProcessing\\MenuProcessor\";s:3:\"10.\";a:3:{s:7:\"special\";s:9:\"directory\";s:8:\"special.\";a:1:{s:6:\"value.\";a:1:{s:5:\"field\";s:5:\"pages\";}}s:15:\"dataProcessing.\";a:2:{i:10;s:48:\"TYPO3\\CMS\\Frontend\\DataProcessing\\FilesProcessor\";s:3:\"10.\";a:1:{s:11:\"references.\";a:1:{s:9:\"fieldName\";s:5:\"media\";}}}}}s:8:\"stdWrap.\";a:2:{s:9:\"editIcons\";s:41:\"tt_content: header [header_layout], pages\";s:10:\"editIcons.\";a:1:{s:10:\"iconTitle.\";a:1:{s:4:\"data\";s:89:\"LLL:EXT:fluid_styled_content/Resources/Private/Language/FrontendEditing.xlf:editIcon.menu\";}}}}s:12:\"menu_section\";s:20:\"< lib.contentElement\";s:13:\"menu_section.\";a:3:{s:12:\"templateName\";s:11:\"MenuSection\";s:15:\"dataProcessing.\";a:2:{i:10;s:47:\"TYPO3\\CMS\\Frontend\\DataProcessing\\MenuProcessor\";s:3:\"10.\";a:4:{s:17:\"includeNotInMenu.\";a:2:{s:8:\"override\";s:1:\"1\";s:9:\"override.\";a:1:{s:3:\"if.\";a:1:{s:8:\"isFalse.\";a:1:{s:5:\"field\";s:5:\"pages\";}}}}s:7:\"special\";s:4:\"list\";s:8:\"special.\";a:1:{s:6:\"value.\";a:2:{s:5:\"field\";s:5:\"pages\";s:9:\"override.\";a:3:{s:4:\"data\";s:8:\"page:uid\";s:3:\"if.\";a:1:{s:8:\"isFalse.\";a:1:{s:5:\"field\";s:5:\"pages\";}}s:9:\"override.\";a:2:{s:4:\"data\";s:21:\"page:content_from_pid\";s:3:\"if.\";a:1:{s:7:\"isTrue.\";a:1:{s:4:\"data\";s:21:\"page:content_from_pid\";}}}}}}s:15:\"dataProcessing.\";a:4:{i:10;s:48:\"TYPO3\\CMS\\Frontend\\DataProcessing\\FilesProcessor\";s:3:\"10.\";a:1:{s:11:\"references.\";a:1:{s:9:\"fieldName\";s:5:\"media\";}}i:20;s:56:\"TYPO3\\CMS\\Frontend\\DataProcessing\\DatabaseQueryProcessor\";s:3:\"20.\";a:6:{s:5:\"table\";s:10:\"tt_content\";s:10:\"pidInList.\";a:1:{s:5:\"field\";s:3:\"uid\";}s:2:\"as\";s:7:\"content\";s:5:\"where\";s:16:\"sectionIndex = 1\";s:7:\"orderBy\";s:7:\"sorting\";s:15:\"dataProcessing.\";a:2:{i:10;s:48:\"TYPO3\\CMS\\Frontend\\DataProcessing\\FilesProcessor\";s:3:\"10.\";a:1:{s:11:\"references.\";a:1:{s:9:\"fieldName\";s:5:\"image\";}}}}}}}s:8:\"stdWrap.\";a:2:{s:9:\"editIcons\";s:41:\"tt_content: header [header_layout], pages\";s:10:\"editIcons.\";a:1:{s:10:\"iconTitle.\";a:1:{s:4:\"data\";s:89:\"LLL:EXT:fluid_styled_content/Resources/Private/Language/FrontendEditing.xlf:editIcon.menu\";}}}}s:18:\"menu_section_pages\";s:20:\"< lib.contentElement\";s:19:\"menu_section_pages.\";a:3:{s:12:\"templateName\";s:16:\"MenuSectionPages\";s:15:\"dataProcessing.\";a:2:{i:10;s:47:\"TYPO3\\CMS\\Frontend\\DataProcessing\\MenuProcessor\";s:3:\"10.\";a:3:{s:7:\"special\";s:9:\"directory\";s:8:\"special.\";a:1:{s:6:\"value.\";a:1:{s:5:\"field\";s:5:\"pages\";}}s:15:\"dataProcessing.\";a:4:{i:10;s:48:\"TYPO3\\CMS\\Frontend\\DataProcessing\\FilesProcessor\";s:3:\"10.\";a:1:{s:11:\"references.\";a:1:{s:9:\"fieldName\";s:5:\"media\";}}i:20;s:56:\"TYPO3\\CMS\\Frontend\\DataProcessing\\DatabaseQueryProcessor\";s:3:\"20.\";a:5:{s:5:\"table\";s:10:\"tt_content\";s:10:\"pidInList.\";a:1:{s:5:\"field\";s:3:\"uid\";}s:7:\"orderBy\";s:7:\"sorting\";s:2:\"as\";s:7:\"content\";s:15:\"dataProcessing.\";a:2:{i:10;s:48:\"TYPO3\\CMS\\Frontend\\DataProcessing\\FilesProcessor\";s:3:\"10.\";a:1:{s:11:\"references.\";a:1:{s:9:\"fieldName\";s:5:\"image\";}}}}}}}s:8:\"stdWrap.\";a:2:{s:9:\"editIcons\";s:41:\"tt_content: header [header_layout], pages\";s:10:\"editIcons.\";a:1:{s:10:\"iconTitle.\";a:1:{s:4:\"data\";s:89:\"LLL:EXT:fluid_styled_content/Resources/Private/Language/FrontendEditing.xlf:editIcon.menu\";}}}}s:21:\"menu_recently_updated\";s:20:\"< lib.contentElement\";s:22:\"menu_recently_updated.\";a:3:{s:12:\"templateName\";s:19:\"MenuRecentlyUpdated\";s:15:\"dataProcessing.\";a:2:{i:10;s:47:\"TYPO3\\CMS\\Frontend\\DataProcessing\\MenuProcessor\";s:3:\"10.\";a:3:{s:7:\"special\";s:7:\"updated\";s:8:\"special.\";a:3:{s:6:\"value.\";a:1:{s:5:\"field\";s:5:\"pages\";}s:6:\"maxAge\";s:9:\"3600*24*7\";s:20:\"excludeNoSearchPages\";s:1:\"1\";}s:15:\"dataProcessing.\";a:2:{i:10;s:48:\"TYPO3\\CMS\\Frontend\\DataProcessing\\FilesProcessor\";s:3:\"10.\";a:1:{s:11:\"references.\";a:1:{s:9:\"fieldName\";s:5:\"media\";}}}}}s:8:\"stdWrap.\";a:2:{s:9:\"editIcons\";s:41:\"tt_content: header [header_layout], pages\";s:10:\"editIcons.\";a:1:{s:10:\"iconTitle.\";a:1:{s:4:\"data\";s:89:\"LLL:EXT:fluid_styled_content/Resources/Private/Language/FrontendEditing.xlf:editIcon.menu\";}}}}s:18:\"menu_related_pages\";s:20:\"< lib.contentElement\";s:19:\"menu_related_pages.\";a:3:{s:12:\"templateName\";s:16:\"MenuRelatedPages\";s:15:\"dataProcessing.\";a:2:{i:10;s:47:\"TYPO3\\CMS\\Frontend\\DataProcessing\\MenuProcessor\";s:3:\"10.\";a:4:{s:7:\"special\";s:8:\"keywords\";s:8:\"special.\";a:2:{s:6:\"value.\";a:1:{s:5:\"field\";s:5:\"pages\";}s:20:\"excludeNoSearchPages\";s:1:\"1\";}s:23:\"alternativeSortingField\";s:5:\"title\";s:15:\"dataProcessing.\";a:2:{i:10;s:48:\"TYPO3\\CMS\\Frontend\\DataProcessing\\FilesProcessor\";s:3:\"10.\";a:1:{s:11:\"references.\";a:1:{s:9:\"fieldName\";s:5:\"media\";}}}}}s:8:\"stdWrap.\";a:2:{s:9:\"editIcons\";s:41:\"tt_content: header [header_layout], pages\";s:10:\"editIcons.\";a:1:{s:10:\"iconTitle.\";a:1:{s:4:\"data\";s:89:\"LLL:EXT:fluid_styled_content/Resources/Private/Language/FrontendEditing.xlf:editIcon.menu\";}}}}s:12:\"menu_sitemap\";s:20:\"< lib.contentElement\";s:13:\"menu_sitemap.\";a:3:{s:12:\"templateName\";s:11:\"MenuSitemap\";s:15:\"dataProcessing.\";a:2:{i:10;s:47:\"TYPO3\\CMS\\Frontend\\DataProcessing\\MenuProcessor\";s:3:\"10.\";a:2:{s:6:\"levels\";s:1:\"7\";s:15:\"dataProcessing.\";a:2:{i:10;s:48:\"TYPO3\\CMS\\Frontend\\DataProcessing\\FilesProcessor\";s:3:\"10.\";a:1:{s:11:\"references.\";a:1:{s:9:\"fieldName\";s:5:\"media\";}}}}}s:8:\"stdWrap.\";a:2:{s:9:\"editIcons\";s:41:\"tt_content: header [header_layout], pages\";s:10:\"editIcons.\";a:1:{s:10:\"iconTitle.\";a:1:{s:4:\"data\";s:89:\"LLL:EXT:fluid_styled_content/Resources/Private/Language/FrontendEditing.xlf:editIcon.menu\";}}}}s:18:\"menu_sitemap_pages\";s:20:\"< lib.contentElement\";s:19:\"menu_sitemap_pages.\";a:3:{s:12:\"templateName\";s:16:\"MenuSitemapPages\";s:15:\"dataProcessing.\";a:2:{i:10;s:47:\"TYPO3\\CMS\\Frontend\\DataProcessing\\MenuProcessor\";s:3:\"10.\";a:4:{s:7:\"special\";s:9:\"directory\";s:8:\"special.\";a:1:{s:6:\"value.\";a:1:{s:5:\"field\";s:5:\"pages\";}}s:6:\"levels\";s:1:\"7\";s:15:\"dataProcessing.\";a:2:{i:10;s:48:\"TYPO3\\CMS\\Frontend\\DataProcessing\\FilesProcessor\";s:3:\"10.\";a:1:{s:11:\"references.\";a:1:{s:9:\"fieldName\";s:5:\"media\";}}}}}s:8:\"stdWrap.\";a:2:{s:9:\"editIcons\";s:41:\"tt_content: header [header_layout], pages\";s:10:\"editIcons.\";a:1:{s:10:\"iconTitle.\";a:1:{s:4:\"data\";s:89:\"LLL:EXT:fluid_styled_content/Resources/Private/Language/FrontendEditing.xlf:editIcon.menu\";}}}}s:18:\"form_formframework\";s:20:\"< lib.contentElement\";s:19:\"form_formframework.\";a:3:{s:12:\"templateName\";s:7:\"Generic\";i:20;s:4:\"USER\";s:3:\"20.\";a:3:{s:8:\"userFunc\";s:37:\"TYPO3\\CMS\\Extbase\\Core\\Bootstrap->run\";s:13:\"extensionName\";s:4:\"Form\";s:10:\"pluginName\";s:13:\"Formframework\";}}s:13:\"felogin_login\";s:20:\"< lib.contentElement\";s:14:\"felogin_login.\";a:3:{s:12:\"templateName\";s:7:\"Generic\";i:20;s:4:\"USER\";s:3:\"20.\";a:3:{s:8:\"userFunc\";s:37:\"TYPO3\\CMS\\Extbase\\Core\\Bootstrap->run\";s:13:\"extensionName\";s:7:\"Felogin\";s:10:\"pluginName\";s:5:\"Login\";}}s:25:\"sampleextension_jumbotron\";s:20:\"< lib.contentElement\";s:26:\"sampleextension_jumbotron.\";a:1:{s:12:\"templateName\";s:9:\"Jumbotron\";}}s:7:\"module.\";a:4:{s:8:\"tx_form.\";a:2:{s:9:\"settings.\";a:1:{s:19:\"yamlConfigurations.\";a:1:{i:10;s:42:\"EXT:form/Configuration/Yaml/FormSetup.yaml\";}}s:5:\"view.\";a:3:{s:18:\"templateRootPaths.\";a:1:{i:10;s:45:\"EXT:form/Resources/Private/Backend/Templates/\";}s:17:\"partialRootPaths.\";a:1:{i:10;s:44:\"EXT:form/Resources/Private/Backend/Partials/\";}s:16:\"layoutRootPaths.\";a:1:{i:10;s:43:\"EXT:form/Resources/Private/Backend/Layouts/\";}}}s:9:\"tx_belog.\";a:1:{s:9:\"settings.\";a:3:{s:29:\"selectableNumberOfLogEntries.\";a:7:{i:20;s:2:\"20\";i:50;s:2:\"50\";i:100;s:3:\"100\";i:200;s:3:\"200\";i:500;s:3:\"500\";i:1000;s:4:\"1000\";i:1000000;s:3:\"any\";}s:21:\"selectableTimeFrames.\";a:8:{i:0;s:8:\"thisWeek\";i:1;s:8:\"lastWeek\";i:2;s:9:\"last7Days\";i:10;s:9:\"thisMonth\";i:11;s:9:\"lastMonth\";i:12;s:10:\"last31Days\";i:20;s:7:\"noLimit\";i:30;s:11:\"userDefined\";}s:18:\"selectableActions.\";a:7:{i:0;s:3:\"any\";i:1;s:14:\"actionDatabase\";i:2;s:10:\"actionFile\";i:3;s:11:\"actionCache\";i:254;s:14:\"actionSettings\";i:255;s:11:\"actionLogin\";i:-1;s:12:\"actionErrors\";}}}s:10:\"tx_beuser.\";a:2:{s:12:\"persistence.\";a:1:{s:10:\"storagePid\";s:1:\"0\";}s:9:\"settings.\";a:1:{s:5:\"dummy\";s:3:\"foo\";}}s:20:\"tx_extensionmanager.\";a:1:{s:9:\"features.\";a:1:{s:20:\"skipDefaultArguments\";s:1:\"0\";}}}s:7:\"plugin.\";a:2:{s:17:\"tx_felogin_login.\";a:1:{s:9:\"settings.\";a:10:{s:14:\"showPermaLogin\";s:1:\"0\";s:10:\"dateFormat\";s:9:\"Y-m-d H:i\";s:10:\"email_from\";s:0:\"\";s:14:\"email_fromName\";s:0:\"\";s:6:\"email.\";a:4:{s:12:\"templateName\";s:16:\"PasswordRecovery\";s:16:\"layoutRootPaths.\";a:1:{i:20;s:0:\"\";}s:18:\"templateRootPaths.\";a:1:{i:20;s:46:\"EXT:felogin/Resources/Private/Email/Templates/\";}s:17:\"partialRootPaths.\";a:1:{i:20;s:0:\"\";}}s:7:\"replyTo\";s:0:\"\";s:43:\"exposeNonexistentUserInForgotPasswordDialog\";s:1:\"0\";s:23:\"forgotLinkHashValidTime\";s:2:\"12\";s:20:\"newPasswordMinLength\";s:1:\"6\";s:19:\"passwordValidators.\";a:2:{i:10;s:56:\"TYPO3\\CMS\\Extbase\\Validation\\Validator\\NotEmptyValidator\";s:3:\"20.\";a:2:{s:9:\"className\";s:60:\"TYPO3\\CMS\\Extbase\\Validation\\Validator\\StringLengthValidator\";s:8:\"options.\";a:1:{s:7:\"minimum\";s:1:\"6\";}}}}}s:12:\"tx_frontend.\";a:1:{s:18:\"_CSS_DEFAULT_STYLE\";s:3359:\"    .ce-align-left { text-align: left; }\n    .ce-align-center { text-align: center; }\n    .ce-align-right { text-align: right; }\n\n    .ce-table td, .ce-table th { vertical-align: top; }\n\n    .ce-textpic, .ce-image, .ce-nowrap .ce-bodytext, .ce-gallery, .ce-row, .ce-uploads li, .ce-uploads div { overflow: hidden; }\n\n    .ce-left .ce-gallery, .ce-column { float: left; }\n    .ce-center .ce-outer { position: relative; float: right; right: 50%; }\n    .ce-center .ce-inner { position: relative; float: right; right: -50%; }\n    .ce-right .ce-gallery { float: right; }\n\n    .ce-gallery figure { display: table; margin: 0; }\n    .ce-gallery figcaption { display: table-caption; caption-side: bottom; }\n    .ce-gallery img { display: block; }\n    .ce-gallery iframe { border-width: 0; }\n    .ce-border img,\n    .ce-border iframe {\n        border: 2px solid #000000;\n        padding: 0px;\n    }\n\n    .ce-intext.ce-right .ce-gallery, .ce-intext.ce-left .ce-gallery, .ce-above .ce-gallery {\n        margin-bottom: 10px;\n    }\n    .ce-image .ce-gallery { margin-bottom: 0; }\n    .ce-intext.ce-right .ce-gallery { margin-left: 10px; }\n    .ce-intext.ce-left .ce-gallery { margin-right: 10px; }\n    .ce-below .ce-gallery { margin-top: 10px; }\n\n    .ce-column { margin-right: 10px; }\n    .ce-column:last-child { margin-right: 0; }\n\n    .ce-row { margin-bottom: 10px; }\n    .ce-row:last-child { margin-bottom: 0; }\n\n    .ce-above .ce-bodytext { clear: both; }\n\n    .ce-intext.ce-left ol, .ce-intext.ce-left ul { padding-left: 40px; overflow: auto; }\n\n    /* Headline */\n    .ce-headline-left { text-align: left; }\n    .ce-headline-center { text-align: center; }\n    .ce-headline-right { text-align: right; }\n\n    /* Uploads */\n    .ce-uploads { margin: 0; padding: 0; }\n    .ce-uploads li { list-style: none outside none; margin: 1em 0; }\n    .ce-uploads img { float: left; padding-right: 1em; vertical-align: top; }\n    .ce-uploads span { display: block; }\n\n    /* Table */\n    .ce-table { width: 100%; max-width: 100%; }\n    .ce-table th, .ce-table td { padding: 0.5em 0.75em; vertical-align: top; }\n    .ce-table thead th { border-bottom: 2px solid #dadada; }\n    .ce-table th, .ce-table td { border-top: 1px solid #dadada; }\n    .ce-table-striped tbody tr:nth-of-type(odd) { background-color: rgba(0,0,0,.05); }\n    .ce-table-bordered th, .ce-table-bordered td { border: 1px solid #dadada; }\n\n    /* Space */\n    .frame-space-before-extra-small { margin-top: 1em; }\n    .frame-space-before-small { margin-top: 2em; }\n    .frame-space-before-medium { margin-top: 3em; }\n    .frame-space-before-large { margin-top: 4em; }\n    .frame-space-before-extra-large { margin-top: 5em; }\n    .frame-space-after-extra-small { margin-bottom: 1em; }\n    .frame-space-after-small { margin-bottom: 2em; }\n    .frame-space-after-medium { margin-bottom: 3em; }\n    .frame-space-after-large { margin-bottom: 4em; }\n    .frame-space-after-extra-large { margin-bottom: 5em; }\n\n    /* Frame */\n    .frame-ruler-before:before { content: \'\'; display: block; border-top: 1px solid rgba(0,0,0,0.25); margin-bottom: 2em; }\n    .frame-ruler-after:after { content: \'\'; display: block; border-bottom: 1px solid rgba(0,0,0,0.25); margin-top: 2em; }\n    .frame-indent { margin-left: 15%; margin-right: 15%; }\n    .frame-indent-left { margin-left: 33%; }\n    .frame-indent-right { margin-right: 33%; }\";}}s:4:\"lib.\";a:10:{s:10:\"parseFunc.\";a:9:{s:9:\"makelinks\";s:1:\"1\";s:10:\"makelinks.\";a:2:{s:5:\"http.\";a:2:{s:4:\"keep\";s:4:\"path\";s:9:\"extTarget\";s:6:\"_blank\";}s:7:\"mailto.\";a:1:{s:4:\"keep\";s:4:\"path\";}}s:5:\"tags.\";a:2:{s:1:\"a\";s:4:\"TEXT\";s:2:\"a.\";a:2:{s:7:\"current\";s:1:\"1\";s:9:\"typolink.\";a:5:{s:10:\"parameter.\";a:1:{s:4:\"data\";s:15:\"parameters:href\";}s:6:\"title.\";a:1:{s:4:\"data\";s:16:\"parameters:title\";}s:11:\"ATagParams.\";a:1:{s:4:\"data\";s:20:\"parameters:allParams\";}s:7:\"target.\";a:1:{s:8:\"ifEmpty.\";a:1:{s:4:\"data\";s:17:\"parameters:target\";}}s:10:\"extTarget.\";a:2:{s:8:\"ifEmpty.\";a:1:{s:8:\"override\";s:6:\"_blank\";}s:9:\"override.\";a:1:{s:4:\"data\";s:17:\"parameters:target\";}}}}}s:9:\"allowTags\";s:392:\"a, abbr, acronym, address, article, aside, b, bdo, big, blockquote, br, caption, center, cite, code, col, colgroup, dd, del, dfn, dl, div, dt, em, font, footer, header, h1, h2, h3, h4, h5, h6, hr, i, img, ins, kbd, label, li, link, meta, nav, ol, p, pre, q, s, samp, sdfield, section, small, span, strike, strong, style, sub, sup, table, thead, tbody, tfoot, td, th, tr, title, tt, u, ul, var\";s:8:\"denyTags\";s:1:\"*\";s:5:\"sword\";s:31:\"<span class=\"ce-sword\">|</span>\";s:9:\"constants\";s:1:\"1\";s:18:\"nonTypoTagStdWrap.\";a:2:{s:10:\"HTMLparser\";s:1:\"1\";s:11:\"HTMLparser.\";a:2:{s:18:\"keepNonMatchedTags\";s:1:\"1\";s:16:\"htmlSpecialChars\";s:1:\"2\";}}s:12:\"htmlSanitize\";s:1:\"1\";}s:14:\"parseFunc_RTE.\";a:11:{s:9:\"makelinks\";s:1:\"1\";s:10:\"makelinks.\";a:2:{s:5:\"http.\";a:2:{s:4:\"keep\";s:4:\"path\";s:9:\"extTarget\";s:6:\"_blank\";}s:7:\"mailto.\";a:1:{s:4:\"keep\";s:4:\"path\";}}s:5:\"tags.\";a:2:{s:1:\"a\";s:4:\"TEXT\";s:2:\"a.\";a:2:{s:7:\"current\";s:1:\"1\";s:9:\"typolink.\";a:5:{s:10:\"parameter.\";a:1:{s:4:\"data\";s:15:\"parameters:href\";}s:6:\"title.\";a:1:{s:4:\"data\";s:16:\"parameters:title\";}s:11:\"ATagParams.\";a:1:{s:4:\"data\";s:20:\"parameters:allParams\";}s:7:\"target.\";a:1:{s:8:\"ifEmpty.\";a:1:{s:4:\"data\";s:17:\"parameters:target\";}}s:10:\"extTarget.\";a:2:{s:8:\"ifEmpty.\";a:1:{s:8:\"override\";s:6:\"_blank\";}s:9:\"override.\";a:1:{s:4:\"data\";s:17:\"parameters:target\";}}}}}s:9:\"allowTags\";s:392:\"a, abbr, acronym, address, article, aside, b, bdo, big, blockquote, br, caption, center, cite, code, col, colgroup, dd, del, dfn, dl, div, dt, em, font, footer, header, h1, h2, h3, h4, h5, h6, hr, i, img, ins, kbd, label, li, link, meta, nav, ol, p, pre, q, s, samp, sdfield, section, small, span, strike, strong, style, sub, sup, table, thead, tbody, tfoot, td, th, tr, title, tt, u, ul, var\";s:8:\"denyTags\";s:1:\"*\";s:5:\"sword\";s:31:\"<span class=\"ce-sword\">|</span>\";s:9:\"constants\";s:1:\"1\";s:18:\"nonTypoTagStdWrap.\";a:3:{s:10:\"HTMLparser\";s:1:\"1\";s:11:\"HTMLparser.\";a:2:{s:18:\"keepNonMatchedTags\";s:1:\"1\";s:16:\"htmlSpecialChars\";s:1:\"2\";}s:12:\"encapsLines.\";a:4:{s:13:\"encapsTagList\";s:29:\"p,pre,h1,h2,h3,h4,h5,h6,hr,dt\";s:9:\"remapTag.\";a:1:{s:3:\"DIV\";s:1:\"P\";}s:13:\"nonWrappedTag\";s:1:\"P\";s:17:\"innerStdWrap_all.\";a:1:{s:7:\"ifBlank\";s:6:\"&nbsp;\";}}}s:12:\"htmlSanitize\";s:1:\"1\";s:14:\"externalBlocks\";s:89:\"article, aside, blockquote, div, dd, dl, footer, header, nav, ol, section, table, ul, pre\";s:15:\"externalBlocks.\";a:14:{s:3:\"ol.\";a:2:{s:7:\"stripNL\";s:1:\"1\";s:8:\"stdWrap.\";a:1:{s:9:\"parseFunc\";s:15:\"< lib.parseFunc\";}}s:3:\"ul.\";a:2:{s:7:\"stripNL\";s:1:\"1\";s:8:\"stdWrap.\";a:1:{s:9:\"parseFunc\";s:15:\"< lib.parseFunc\";}}s:4:\"pre.\";a:1:{s:8:\"stdWrap.\";a:1:{s:10:\"parseFunc.\";a:9:{s:9:\"makelinks\";s:1:\"1\";s:10:\"makelinks.\";a:2:{s:5:\"http.\";a:2:{s:4:\"keep\";s:4:\"path\";s:9:\"extTarget\";s:6:\"_blank\";}s:7:\"mailto.\";a:1:{s:4:\"keep\";s:4:\"path\";}}s:5:\"tags.\";a:2:{s:1:\"a\";s:4:\"TEXT\";s:2:\"a.\";a:2:{s:7:\"current\";s:1:\"1\";s:9:\"typolink.\";a:5:{s:10:\"parameter.\";a:1:{s:4:\"data\";s:15:\"parameters:href\";}s:6:\"title.\";a:1:{s:4:\"data\";s:16:\"parameters:title\";}s:11:\"ATagParams.\";a:1:{s:4:\"data\";s:20:\"parameters:allParams\";}s:7:\"target.\";a:1:{s:8:\"ifEmpty.\";a:1:{s:4:\"data\";s:17:\"parameters:target\";}}s:10:\"extTarget.\";a:2:{s:8:\"ifEmpty.\";a:1:{s:8:\"override\";s:6:\"_blank\";}s:9:\"override.\";a:1:{s:4:\"data\";s:17:\"parameters:target\";}}}}}s:9:\"allowTags\";s:392:\"a, abbr, acronym, address, article, aside, b, bdo, big, blockquote, br, caption, center, cite, code, col, colgroup, dd, del, dfn, dl, div, dt, em, font, footer, header, h1, h2, h3, h4, h5, h6, hr, i, img, ins, kbd, label, li, link, meta, nav, ol, p, pre, q, s, samp, sdfield, section, small, span, strike, strong, style, sub, sup, table, thead, tbody, tfoot, td, th, tr, title, tt, u, ul, var\";s:8:\"denyTags\";s:1:\"*\";s:5:\"sword\";s:31:\"<span class=\"ce-sword\">|</span>\";s:9:\"constants\";s:1:\"1\";s:18:\"nonTypoTagStdWrap.\";a:2:{s:10:\"HTMLparser\";s:1:\"1\";s:11:\"HTMLparser.\";a:2:{s:18:\"keepNonMatchedTags\";s:1:\"1\";s:16:\"htmlSpecialChars\";s:1:\"2\";}}s:12:\"htmlSanitize\";s:1:\"1\";}}}s:6:\"table.\";a:4:{s:7:\"stripNL\";s:1:\"1\";s:8:\"stdWrap.\";a:2:{s:10:\"HTMLparser\";s:1:\"1\";s:11:\"HTMLparser.\";a:2:{s:5:\"tags.\";a:1:{s:6:\"table.\";a:1:{s:10:\"fixAttrib.\";a:1:{s:6:\"class.\";a:3:{s:7:\"default\";s:12:\"contenttable\";s:6:\"always\";s:1:\"1\";s:4:\"list\";s:12:\"contenttable\";}}}}s:18:\"keepNonMatchedTags\";s:1:\"1\";}}s:14:\"HTMLtableCells\";s:1:\"1\";s:15:\"HTMLtableCells.\";a:2:{s:8:\"default.\";a:1:{s:8:\"stdWrap.\";a:2:{s:9:\"parseFunc\";s:19:\"< lib.parseFunc_RTE\";s:10:\"parseFunc.\";a:1:{s:18:\"nonTypoTagStdWrap.\";a:1:{s:12:\"encapsLines.\";a:2:{s:13:\"nonWrappedTag\";s:0:\"\";s:17:\"innerStdWrap_all.\";a:1:{s:7:\"ifBlank\";s:0:\"\";}}}}}}s:25:\"addChr10BetweenParagraphs\";s:1:\"1\";}}s:4:\"div.\";a:2:{s:7:\"stripNL\";s:1:\"1\";s:13:\"callRecursive\";s:1:\"1\";}s:8:\"article.\";a:2:{s:7:\"stripNL\";s:1:\"1\";s:13:\"callRecursive\";s:1:\"1\";}s:6:\"aside.\";a:2:{s:7:\"stripNL\";s:1:\"1\";s:13:\"callRecursive\";s:1:\"1\";}s:11:\"blockquote.\";a:2:{s:7:\"stripNL\";s:1:\"1\";s:13:\"callRecursive\";s:1:\"1\";}s:7:\"footer.\";a:2:{s:7:\"stripNL\";s:1:\"1\";s:13:\"callRecursive\";s:1:\"1\";}s:7:\"header.\";a:2:{s:7:\"stripNL\";s:1:\"1\";s:13:\"callRecursive\";s:1:\"1\";}s:4:\"nav.\";a:2:{s:7:\"stripNL\";s:1:\"1\";s:13:\"callRecursive\";s:1:\"1\";}s:8:\"section.\";a:2:{s:7:\"stripNL\";s:1:\"1\";s:13:\"callRecursive\";s:1:\"1\";}s:3:\"dl.\";a:2:{s:7:\"stripNL\";s:1:\"1\";s:13:\"callRecursive\";s:1:\"1\";}s:3:\"dd.\";a:2:{s:7:\"stripNL\";s:1:\"1\";s:13:\"callRecursive\";s:1:\"1\";}}}s:14:\"contentElement\";s:13:\"FLUIDTEMPLATE\";s:15:\"contentElement.\";a:5:{s:12:\"templateName\";s:7:\"Default\";s:18:\"templateRootPaths.\";a:3:{i:0;s:53:\"EXT:fluid_styled_content/Resources/Private/Templates/\";i:10;s:64:\"EXT:sampleextension/Resources/Private/Templates/ContentElements/\";i:200;s:48:\"EXT:sampleextension/Resources/Private/Templates/\";}s:17:\"partialRootPaths.\";a:3:{i:0;s:52:\"EXT:fluid_styled_content/Resources/Private/Partials/\";i:10;s:63:\"EXT:sampleextension/Resources/Private/Partials/ContentElements/\";i:200;s:47:\"EXT:sampleextension/Resources/Private/Partials/\";}s:16:\"layoutRootPaths.\";a:3:{i:0;s:51:\"EXT:fluid_styled_content/Resources/Private/Layouts/\";i:10;s:62:\"EXT:sampleextension/Resources/Private/Layouts/ContentElements/\";i:200;s:45:\"EXT:sampleextension/Resources/Private/Layout/\";}s:9:\"settings.\";a:2:{s:17:\"defaultHeaderType\";s:1:\"2\";s:6:\"media.\";a:3:{s:11:\"lazyLoading\";s:4:\"lazy\";s:6:\"popup.\";a:9:{s:7:\"bodyTag\";s:41:\"<body style=\"margin:0; background:#fff;\">\";s:4:\"wrap\";s:37:\"<a href=\"javascript:close();\"> | </a>\";s:5:\"width\";s:4:\"800m\";s:6:\"height\";s:4:\"600m\";s:5:\"crop.\";a:1:{s:4:\"data\";s:17:\"file:current:crop\";}s:8:\"JSwindow\";s:1:\"1\";s:9:\"JSwindow.\";a:2:{s:9:\"newWindow\";s:1:\"0\";s:3:\"if.\";a:1:{s:7:\"isFalse\";s:1:\"0\";}}s:15:\"directImageLink\";s:1:\"0\";s:11:\"linkParams.\";a:1:{s:11:\"ATagParams.\";a:1:{s:8:\"dataWrap\";s:44:\"class=\"lightbox\" rel=\"lightbox[{field:uid}]\"\";}}}s:17:\"additionalConfig.\";a:2:{s:9:\"no-cookie\";s:1:\"1\";s:3:\"api\";s:1:\"0\";}}}}s:14:\"dynamicContent\";s:3:\"COA\";s:15:\"dynamicContent.\";a:5:{i:5;s:13:\"LOAD_REGISTER\";s:2:\"5.\";a:4:{s:7:\"colPos.\";a:2:{s:7:\"cObject\";s:4:\"TEXT\";s:8:\"cObject.\";a:2:{s:5:\"field\";s:6:\"colPos\";s:8:\"ifEmpty.\";a:2:{s:7:\"cObject\";s:4:\"TEXT\";s:8:\"cObject.\";a:2:{s:6:\"value.\";a:1:{s:7:\"current\";s:1:\"1\";}s:7:\"ifEmpty\";s:1:\"0\";}}}}s:8:\"pageUid.\";a:2:{s:7:\"cObject\";s:4:\"TEXT\";s:8:\"cObject.\";a:2:{s:5:\"field\";s:7:\"pageUid\";s:8:\"ifEmpty.\";a:1:{s:4:\"data\";s:7:\"TSFE:id\";}}}s:15:\"contentFromPid.\";a:2:{s:7:\"cObject\";s:4:\"TEXT\";s:8:\"cObject.\";a:2:{s:4:\"data\";s:44:\"DB:pages:{register:pageUid}:content_from_pid\";s:5:\"data.\";a:1:{s:10:\"insertData\";s:1:\"1\";}}}s:5:\"wrap.\";a:2:{s:7:\"cObject\";s:4:\"TEXT\";s:8:\"cObject.\";a:1:{s:5:\"field\";s:4:\"wrap\";}}}i:20;s:7:\"CONTENT\";s:3:\"20.\";a:3:{s:5:\"table\";s:10:\"tt_content\";s:7:\"select.\";a:5:{s:39:\"includeRecordsWithoutDefaultTranslation\";s:1:\"1\";s:7:\"orderBy\";s:7:\"sorting\";s:5:\"where\";s:27:\"{#colPos}={register:colPos}\";s:6:\"where.\";a:1:{s:10:\"insertData\";s:1:\"1\";}s:10:\"pidInList.\";a:2:{s:4:\"data\";s:16:\"register:pageUid\";s:9:\"override.\";a:1:{s:4:\"data\";s:23:\"register:contentFromPid\";}}}s:8:\"stdWrap.\";a:2:{s:8:\"dataWrap\";s:15:\"{register:wrap}\";s:8:\"required\";s:1:\"1\";}}i:90;s:16:\"RESTORE_REGISTER\";}s:13:\"topNavigation\";s:5:\"HMENU\";s:14:\"topNavigation.\";a:2:{i:1;s:5:\"TMENU\";s:2:\"1.\";a:1:{s:3:\"NO.\";a:1:{s:8:\"linkWrap\";s:28:\"| |*| &nbsp;&nbsp;&nbsp; |*|\";}}}s:15:\"breadcrumbTrail\";s:5:\"HMENU\";s:16:\"breadcrumbTrail.\";a:4:{s:7:\"special\";s:8:\"rootline\";s:8:\"special.\";a:1:{s:5:\"range\";s:4:\"0|-1\";}i:1;s:5:\"TMENU\";s:2:\"1.\";a:3:{s:3:\"NO.\";a:3:{s:8:\"stdWrap.\";a:1:{s:5:\"field\";s:18:\"nav_title // title\";}s:10:\"ATagTitle.\";a:1:{s:5:\"field\";s:18:\"nav_title // title\";}s:8:\"linkWrap\";s:29:\"| |*| &nbsp;&raquo;&nbsp; |*|\";}s:3:\"CUR\";s:1:\"1\";s:4:\"CUR.\";a:3:{s:11:\"doNotLinkIt\";s:1:\"1\";s:8:\"stdWrap.\";a:1:{s:5:\"field\";s:18:\"nav_title // title\";}s:8:\"linkWrap\";s:36:\"| |*| &nbsp;&raquo;&nbsp;<em>|</em>|\";}}}}s:4:\"page\";s:4:\"PAGE\";s:5:\"page.\";a:11:{s:7:\"typeNum\";s:1:\"0\";s:12:\"shortcutIcon\";s:54:\"EXT:sampleextension/Resources/Public/Icons/favicon.ico\";i:10;s:13:\"FLUIDTEMPLATE\";s:3:\"10.\";a:6:{s:12:\"templateName\";s:4:\"TEXT\";s:13:\"templateName.\";a:3:{s:7:\"cObject\";s:4:\"TEXT\";s:8:\"cObject.\";a:4:{s:4:\"data\";s:10:\"pagelayout\";s:8:\"required\";s:1:\"1\";s:4:\"case\";s:14:\"uppercamelcase\";s:6:\"split.\";a:3:{s:5:\"token\";s:8:\"pagets__\";s:7:\"cObjNum\";s:1:\"1\";s:2:\"1.\";a:1:{s:7:\"current\";s:1:\"1\";}}}s:7:\"ifEmpty\";s:7:\"Default\";}s:18:\"templateRootPaths.\";a:2:{i:0;s:53:\"EXT:sampleextension/Resources/Private/Templates/Page/\";i:1;s:53:\"EXT:sampleextension/Resources/Private/Templates/Page/\";}s:17:\"partialRootPaths.\";a:2:{i:0;s:52:\"EXT:sampleextension/Resources/Private/Partials/Page/\";i:1;s:52:\"EXT:sampleextension/Resources/Private/Partials/Page/\";}s:16:\"layoutRootPaths.\";a:2:{i:0;s:51:\"EXT:sampleextension/Resources/Private/Layouts/Page/\";i:1;s:51:\"EXT:sampleextension/Resources/Private/Layouts/Page/\";}s:15:\"dataProcessing.\";a:4:{i:10;s:48:\"TYPO3\\CMS\\Frontend\\DataProcessing\\FilesProcessor\";s:3:\"10.\";a:1:{s:11:\"references.\";a:1:{s:9:\"fieldName\";s:5:\"media\";}}i:20;s:47:\"TYPO3\\CMS\\Frontend\\DataProcessing\\MenuProcessor\";s:3:\"20.\";a:3:{s:6:\"levels\";s:1:\"2\";s:13:\"includeSpacer\";s:1:\"1\";s:2:\"as\";s:14:\"mainnavigation\";}}}s:5:\"meta.\";a:16:{s:8:\"viewport\";s:35:\"width=device-width, initial-scale=1\";s:6:\"robots\";s:12:\"index,follow\";s:28:\"apple-mobile-web-app-capable\";s:2:\"no\";s:11:\"description\";s:0:\"\";s:12:\"description.\";a:1:{s:9:\"override.\";a:1:{s:5:\"field\";s:11:\"description\";}}s:6:\"author\";s:0:\"\";s:7:\"author.\";a:1:{s:9:\"override.\";a:1:{s:5:\"field\";s:6:\"author\";}}s:8:\"keywords\";s:0:\"\";s:9:\"keywords.\";a:1:{s:9:\"override.\";a:1:{s:5:\"field\";s:8:\"keywords\";}}s:15:\"X-UA-Compatible\";s:7:\"IE=edge\";s:16:\"X-UA-Compatible.\";a:1:{s:9:\"attribute\";s:10:\"http-equiv\";}s:9:\"og:title.\";a:2:{s:9:\"attribute\";s:8:\"property\";s:5:\"field\";s:5:\"title\";}s:13:\"og:site_name.\";a:2:{s:9:\"attribute\";s:8:\"property\";s:4:\"data\";s:25:\"TSFE:tmpl|setup|sitetitle\";}s:14:\"og:description\";s:0:\"\";s:15:\"og:description.\";a:2:{s:9:\"attribute\";s:8:\"property\";s:5:\"field\";s:11:\"description\";}s:9:\"og:image.\";a:2:{s:9:\"attribute\";s:8:\"property\";s:8:\"stdWrap.\";a:2:{s:7:\"cObject\";s:5:\"FILES\";s:8:\"cObject.\";a:4:{s:11:\"references.\";a:1:{s:4:\"data\";s:27:\"levelfield:-1, media, slide\";}s:8:\"maxItems\";s:1:\"1\";s:9:\"renderObj\";s:3:\"COA\";s:10:\"renderObj.\";a:2:{i:10;s:12:\"IMG_RESOURCE\";s:3:\"10.\";a:2:{s:5:\"file.\";a:4:{s:7:\"import.\";a:1:{s:4:\"data\";s:16:\"file:current:uid\";}s:18:\"treatIdAsReference\";s:1:\"1\";s:5:\"width\";s:5:\"1280c\";s:6:\"height\";s:4:\"720c\";}s:8:\"stdWrap.\";a:1:{s:9:\"typolink.\";a:3:{s:10:\"parameter.\";a:1:{s:4:\"data\";s:26:\"TSFE:lastImgResourceInfo|3\";}s:10:\"returnLast\";s:3:\"url\";s:16:\"forceAbsoluteUrl\";s:1:\"1\";}}}}}}}}s:15:\"includeCSSLibs.\";a:1:{s:9:\"bootstrap\";s:71:\"https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css\";}s:11:\"includeCSS.\";a:1:{s:22:\"sampleextension_layout\";s:55:\"EXT:sampleextension/Resources/Public/Css/layout.min.css\";}s:14:\"includeJSLibs.\";a:0:{}s:10:\"includeJS.\";a:0:{}s:20:\"includeJSFooterlibs.\";a:0:{}s:16:\"includeJSFooter.\";a:1:{s:23:\"sampleextension_scripts\";s:63:\"EXT:sampleextension/Resources/Public/JavaScript/Dist/scripts.js\";}}s:23:\"fluidAjaxWidgetResponse\";s:4:\"PAGE\";s:24:\"fluidAjaxWidgetResponse.\";a:4:{s:7:\"typeNum\";s:4:\"7076\";s:7:\"config.\";a:4:{s:8:\"no_cache\";s:1:\"1\";s:20:\"disableAllHeaderCode\";s:1:\"1\";s:18:\"additionalHeaders.\";a:1:{s:3:\"10.\";a:2:{s:6:\"header\";s:24:\"Content-Type: text/plain\";s:7:\"replace\";s:1:\"1\";}}s:5:\"debug\";s:1:\"0\";}i:10;s:8:\"USER_INT\";s:3:\"10.\";a:1:{s:8:\"userFunc\";s:42:\"TYPO3\\CMS\\Fluid\\Core\\Widget\\Bootstrap->run\";}}s:9:\"sitetitle\";s:0:\"\";s:6:\"types.\";a:2:{i:0;s:4:\"page\";i:7076;s:23:\"fluidAjaxWidgetResponse\";}}}'),(4,'4cbbb3a041f055e963da00c9bfde5396',2145909600,_binary 'a:0:{}'),(5,'16d1fdb528e84524be0fe44d85fdcc6f',1648416631,_binary 'a:0:{}'),(6,'a80cb54b1fc70cbb2c5f4ef02d2325e7',1648416631,_binary 'a:1:{i:0;a:3:{s:11:\"doNotLinkIt\";s:1:\"1\";s:14:\"wrapItemAndSub\";s:3:\"{|}\";s:8:\"stdWrap.\";a:2:{s:7:\"cObject\";s:3:\"COA\";s:8:\"cObject.\";a:27:{i:1;s:13:\"LOAD_REGISTER\";s:2:\"1.\";a:1:{s:11:\"languageId.\";a:2:{s:7:\"cObject\";s:4:\"TEXT\";s:8:\"cObject.\";a:2:{s:6:\"value.\";a:1:{s:4:\"data\";s:24:\"register:languages_HMENU\";}s:8:\"listNum.\";a:2:{s:8:\"stdWrap.\";a:2:{s:4:\"data\";s:28:\"register:count_HMENU_MENUOBJ\";s:4:\"wrap\";s:3:\"|-1\";}s:9:\"splitChar\";s:1:\",\";}}}}i:10;s:4:\"TEXT\";s:3:\"10.\";a:2:{s:8:\"stdWrap.\";a:1:{s:4:\"data\";s:19:\"register:languageId\";}s:4:\"wrap\";s:14:\"\"languageId\":|\";}i:11;s:4:\"USER\";s:3:\"11.\";a:4:{s:8:\"userFunc\";s:71:\"TYPO3\\CMS\\Frontend\\DataProcessing\\LanguageMenuProcessor->getFieldAsJson\";s:9:\"language.\";a:1:{s:4:\"data\";s:19:\"register:languageId\";}s:5:\"field\";s:6:\"locale\";s:8:\"stdWrap.\";a:1:{s:4:\"wrap\";s:11:\",\"locale\":|\";}}i:20;s:4:\"USER\";s:3:\"20.\";a:4:{s:8:\"userFunc\";s:71:\"TYPO3\\CMS\\Frontend\\DataProcessing\\LanguageMenuProcessor->getFieldAsJson\";s:9:\"language.\";a:1:{s:4:\"data\";s:19:\"register:languageId\";}s:5:\"field\";s:5:\"title\";s:8:\"stdWrap.\";a:1:{s:4:\"wrap\";s:10:\",\"title\":|\";}}i:21;s:4:\"USER\";s:3:\"21.\";a:4:{s:8:\"userFunc\";s:71:\"TYPO3\\CMS\\Frontend\\DataProcessing\\LanguageMenuProcessor->getFieldAsJson\";s:9:\"language.\";a:1:{s:4:\"data\";s:19:\"register:languageId\";}s:5:\"field\";s:15:\"navigationTitle\";s:8:\"stdWrap.\";a:1:{s:4:\"wrap\";s:20:\",\"navigationTitle\":|\";}}i:22;s:4:\"USER\";s:3:\"22.\";a:4:{s:8:\"userFunc\";s:71:\"TYPO3\\CMS\\Frontend\\DataProcessing\\LanguageMenuProcessor->getFieldAsJson\";s:9:\"language.\";a:1:{s:4:\"data\";s:19:\"register:languageId\";}s:5:\"field\";s:16:\"twoLetterIsoCode\";s:8:\"stdWrap.\";a:1:{s:4:\"wrap\";s:21:\",\"twoLetterIsoCode\":|\";}}i:23;s:4:\"USER\";s:3:\"23.\";a:4:{s:8:\"userFunc\";s:71:\"TYPO3\\CMS\\Frontend\\DataProcessing\\LanguageMenuProcessor->getFieldAsJson\";s:9:\"language.\";a:1:{s:4:\"data\";s:19:\"register:languageId\";}s:5:\"field\";s:8:\"hreflang\";s:8:\"stdWrap.\";a:1:{s:4:\"wrap\";s:13:\",\"hreflang\":|\";}}i:24;s:4:\"USER\";s:3:\"24.\";a:4:{s:8:\"userFunc\";s:71:\"TYPO3\\CMS\\Frontend\\DataProcessing\\LanguageMenuProcessor->getFieldAsJson\";s:9:\"language.\";a:1:{s:4:\"data\";s:19:\"register:languageId\";}s:5:\"field\";s:9:\"direction\";s:8:\"stdWrap.\";a:1:{s:4:\"wrap\";s:14:\",\"direction\":|\";}}i:25;s:4:\"USER\";s:3:\"25.\";a:4:{s:8:\"userFunc\";s:71:\"TYPO3\\CMS\\Frontend\\DataProcessing\\LanguageMenuProcessor->getFieldAsJson\";s:9:\"language.\";a:1:{s:4:\"data\";s:19:\"register:languageId\";}s:5:\"field\";s:4:\"flag\";s:8:\"stdWrap.\";a:1:{s:4:\"wrap\";s:9:\",\"flag\":|\";}}i:90;s:4:\"TEXT\";s:3:\"90.\";a:2:{s:5:\"value\";s:21:\"###LINKPLACEHOLDER###\";s:4:\"wrap\";s:9:\",\"link\":|\";}i:91;s:4:\"TEXT\";s:3:\"91.\";a:2:{s:5:\"value\";s:1:\"1\";s:4:\"wrap\";s:11:\",\"active\":|\";}i:92;s:4:\"TEXT\";s:3:\"92.\";a:2:{s:5:\"value\";s:1:\"0\";s:4:\"wrap\";s:12:\",\"current\":|\";}i:93;s:4:\"TEXT\";s:3:\"93.\";a:2:{s:5:\"value\";s:1:\"1\";s:4:\"wrap\";s:14:\",\"available\":|\";}i:99;s:16:\"RESTORE_REGISTER\";}}}}');
/*!40000 ALTER TABLE `cache_hash` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cache_hash_tags`
--

DROP TABLE IF EXISTS `cache_hash_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cache_hash_tags` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tag` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`(191)),
  KEY `cache_tag` (`tag`(191))
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cache_hash_tags`
--

LOCK TABLES `cache_hash_tags` WRITE;
/*!40000 ALTER TABLE `cache_hash_tags` DISABLE KEYS */;
INSERT INTO `cache_hash_tags` VALUES (1,'63b6f2bd07944dc3567f36df8e7d7eac','UserTSconfig'),(2,'0da2e262dd7040c94860bba79b2caf89','pageTSconfig'),(3,'7be23a5eb0c18599dd6f4219685f5530','ident_TS_TEMPLATE'),(4,'4cbbb3a041f055e963da00c9bfde5396','ident_TMPL_CONDITIONS_ALL'),(5,'16d1fdb528e84524be0fe44d85fdcc6f','ident_MENUDATA'),(6,'a80cb54b1fc70cbb2c5f4ef02d2325e7','ident_MENUDATA');
/*!40000 ALTER TABLE `cache_hash_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cache_imagesizes`
--

DROP TABLE IF EXISTS `cache_imagesizes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cache_imagesizes` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `expires` int unsigned NOT NULL DEFAULT '0',
  `content` longblob,
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`(180),`expires`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cache_imagesizes`
--

LOCK TABLES `cache_imagesizes` WRITE;
/*!40000 ALTER TABLE `cache_imagesizes` DISABLE KEYS */;
/*!40000 ALTER TABLE `cache_imagesizes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cache_imagesizes_tags`
--

DROP TABLE IF EXISTS `cache_imagesizes_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cache_imagesizes_tags` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tag` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`(191)),
  KEY `cache_tag` (`tag`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cache_imagesizes_tags`
--

LOCK TABLES `cache_imagesizes_tags` WRITE;
/*!40000 ALTER TABLE `cache_imagesizes_tags` DISABLE KEYS */;
/*!40000 ALTER TABLE `cache_imagesizes_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cache_pages`
--

DROP TABLE IF EXISTS `cache_pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cache_pages` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `expires` int unsigned NOT NULL DEFAULT '0',
  `content` longblob,
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`(180),`expires`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cache_pages`
--

LOCK TABLES `cache_pages` WRITE;
/*!40000 ALTER TABLE `cache_pages` DISABLE KEYS */;
INSERT INTO `cache_pages` VALUES (9,'dd129c0da55d74f7e6c0c45ade507d14',1648417261,_binary 'xúµko\„6\Ús˝+∏\¬}¨,Àé\«k\Án\ÎM\⁄l∑m∞qã;`É\«6âTI\ NP\Ï\Ô)Ÿ≤\”l\Ë	∞%Õõ\Û\‚P|<\Zˇj\«ioI\ …ïΩ∂\„A	ë\ˆ/≥û\‡√°∏8[]¿y\÷\ÀŒÜ\\¿∞w!\“3¢ªG%_\√Bä\Ëµßíi\ÂP\·˚£¡`M^Ω˝a6ˇ\ﬂ\›5€∏\"ø\ÍL\Ë∆Ñ4\”(w&b9W\Îi*ÆlDX\‡\‚™”ô\‡8\À6\‹Xp”®r´xD\ËWq\Ã:_¸˙/T≥í\Î.QÉô\È¢@ùü:ù/\Êi\ŸñV:`¯X\Íl˘\ƒ–Ü,fR\ŸR\Z©÷¨]\Ê¿úf¡+d\˜4\»\«\Ÿ\ \00]ÇbVW&6+c\ﬂqÖ´&Ö\Ï\∆\v\⁄<†P\È$\œ\Û\'ñ\‡.h¸ñ\€ª\‡\‹l\Ùœå+¡rôÅ≤àØZŒæ˛˛\«\‰\Îª\˜›ñ\ÍLóOFÆ7é•óó£∏\ﬂ\Î\˜ô^ù\n\Î≤\ÎG4\«J≠\–Z-6$vêÜ@ñ\Ã\…-.dß¿XTs´V\⁄\‹!ü∑á\‚e\‰≤\n\0áAr•\'â{*\ı†´\Õ:\È\ƒ1§3…•z@ë˘4≤m\\V9&ë;b´i8¨[8ní≤Z\‚bò¬ï¿£K,/\–\Â–òû|Ä\‡]õ\‹\Ú[$µ…äoIvˇ\"Ü`\Z\…Ωû<\∆^\'fÇì.á´otì$<\◊IC+à\·óJnß\—c\\\Ò8\”Eâ^\Ê±:=ß\—\Ì\ı\ƒ\Z!I√ß0ñ\”h\r\Ë(\Ó¥i—Ü\–ÃæªFΩï∞+\—-\‚ùn3ÄÄÿø|\ŸdGl3û\√4}&\∆\Ë•v∂%Dbr<~π\“yÆw-\Í\“`B\Z\˜4ç\Ùz\Ï\›\‚!W<ì\Ïv\“90\„å—¢µUQp\ÛÙåúóù∏\–Kâ7,£q\∆K~\Ï<•=\ÁQN∏ß\Ï¿5s\Ô\Ã\⁄&Aö\Ã Ñ\Í˛l\‰rk∫\n\\¢\ \"YjtÄ3º¸œ∞õvâê\÷3\›B™ÆWÄêm\Õs Éøb\¬gs\‘AQ&\‹bø±^\ÛE/f£\Ïåg§\ˆ\ﬂ\È˘\Ÿh\–\«\Î\Úˇf¡üØí⁄ó\Û\']π\∆-h\ﬂ`î\ˆ”≥^ˇƒæpµ¨Ã∏\“Jb*∂#ÉÅ\…5\¬6\ZˇÇëºr∫Æqöl0„íàR(	m{≤\‘\‚	o\ˆyÜ\"\Ë1<˚?ˇ\ﬂ\\!∑L\n¥(\Ìav\Â\Ë¸i¥¢û\ ¸,`≈´\‹\’o\‰\—8t¸\Z\\\˜¢´#π{uü{:õ\Û5	v\€qB\Û˚¬ü\”L6˝\∆ø≥∞	?©ßµ\÷\Î∫%Ü\”q≥¶\Ì≤\ÚW\Z9¿\‹ﬂØ(™˝I¬è%c˚»©[^F|\Ê=$E„ìø\Á\È<h¿9¡∆≥Ω\Í¥\÷\Îs¥é\∆&N{=V\∆CFe\Ô64d,◊±\‡8M;∫àu\Ã&õ¥\·+ñ{(]så\0æ	î\…&mx2\n≥\’\Úò≤&òîB|\ˆ¥d\‘$©áá\ÛÖ“§%Gá£@m˙\“)Üø\ÀVMMs§\'9\Zz1yÉZ\È\»\Û¯ô\˜\Á\“˘Dùó\€Dqb3#Kt¢\…˛±\Œ˚éo˘Ωõº•=*®∞∏£˘¢w~ô^\‚§:©~rJÍ∂ò¯	òFc\Z∫3ûm`!∏\„\—k>\Ó\”,~\Ó\Ágl	2H˝x~¶\Ï9\Ì\ˆwFoqV\«AnœÇ#∑ÅL\·AûeÑ5!\È:\√w?¡|\ƒ	\Ê\„}\˜\ÒÆ¯\ÒÉ\ÁΩ;UΩ˛Ñå\„»Ç>®:ï{Ÿñ{∫%ﬂÇº\ÁÇ˝*óÄS(\‘/¡~Tâ:S<{\•˝\0´;å±|\ÙäÑ;=¢	J/º\Áº\«Q\œﬂë§R\Úó\n\ﬁ\„.\˜\Zjl\⁄`\˜.ºë∆∫6E\Ê\«L\Ô˝›ØñLxO\€\‚ï\·\–\Î)\LC+\—\»xö\„g\·†B¿\·∏>≠J£\È\Í4\∆N\Ëåj©\∆P~=\„ê$zo\√¯ÓæΩ\ﬁ>ù\Ÿ\‰=M˝9é.78≤ù¨ãã\‚é+\»\€`,`Y≠è\‹\◊o≤ßK©EM7:?\Î¸9eÇ3¢˘∆∑£#_í5nÓ´ï\ﬁ—∫\ZåÖ\ÙL\∆\„xG#eàq}|;\nYf\‡(?{∂q\√=\À\‘(û?ãv@ì\Á_c1dGáFo_8R\÷\ÎP˙ûF\˜\À#YT\ƒx∂¿cñ}gèö08™°æ\∆3°˛N¯Œéêß¨¯\‡¸™ó‹ÇØ\À\’%2\€\ÏPˇT\nc\Ùé™\Ô{\Ìnhg∫~Ã†§C\ﬁ\Ì\ÍMF\˜W\Ó+†˛ñoA\Ù\‘Eàô`±øÅ\ \‡\–˙(9\‰\r$ù\"3ü≥8ù®\€ﬁ°0W%∂7‘ÅÕö\›RXé4°kWx\\Æ\–Q--\»idYß˛≥Æ(Gæ\ËS¨i#xì\Á\◊ﬁ§	π∞∑\Í´VkhZ\ #U\÷\€j≠\›f°µ¥<˘\◊[ßèà?çy˝(\√\‡!;S#Xé{¥VøXLá2|@\ÈÖ\ﬁR>ß†w\‹`f°ît∏≥-h\⁄@-\Ê<4`\\f8%∂m\n	Õ∑ã=™.\Ã!5+<8¥@X¯a\∆nLB¿F\n™QÅ≤P•qN{µî%¢\rQúkúë ñt\Í+~´s}_-)∂%C\ËáØ†öbq\ﬂlèH\Ël\0/§\ \ÚJÄœîs$∏˛\Ô||∫£\œ<ie¸\'êdn\√{BqL0ó∫ç∞¶\‚§]\–\«$\na+.÷î[¥\"GY∂.tæá¸\“sΩñjQh±w	e\íg∏˙E\\ÒB°ïã∂u\«Üºtv±®BîPüÇKiÇ∑h\Ï8K/˙\Áu|\∏åKn0ÉAo\‰1d\»>\Õ\È+–æ\ﬁ^»í}üÅï3F\ \◊\Ôs\ﬂe\˜πF\‘u+)\Ÿ¸=w8I');
/*!40000 ALTER TABLE `cache_pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cache_pages_tags`
--

DROP TABLE IF EXISTS `cache_pages_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cache_pages_tags` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tag` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`(191)),
  KEY `cache_tag` (`tag`(191))
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cache_pages_tags`
--

LOCK TABLES `cache_pages_tags` WRITE;
/*!40000 ALTER TABLE `cache_pages_tags` DISABLE KEYS */;
INSERT INTO `cache_pages_tags` VALUES (9,'dd129c0da55d74f7e6c0c45ade507d14','pageId_1');
/*!40000 ALTER TABLE `cache_pages_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cache_pagesection`
--

DROP TABLE IF EXISTS `cache_pagesection`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cache_pagesection` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `expires` int unsigned NOT NULL DEFAULT '0',
  `content` longblob,
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`(180),`expires`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cache_pagesection`
--

LOCK TABLES `cache_pagesection` WRITE;
/*!40000 ALTER TABLE `cache_pagesection` DISABLE KEYS */;
INSERT INTO `cache_pagesection` VALUES (1,'1_222419149',1650922231,_binary 'xúÕòQìõ6«ø Ä\0\€pOií\Œu&\Ìdbg¶oå≤Os1H\ÿuo¸›ª\ÃInSag\˜ráñ\’\Íwˇ]i\·$H^¸p0c\ŒNº\‰\Â,íU\‚‘ú\Àœ¥$\ \Ë\'/4\Ò\‡°ﬁª¢π\Û†l\Ì®\ÈF>å\‚ƒë¡Å\‘)\ı\Ωã\Ò(4´±\nâ%πò#∞R\…`,í0qy\—>B\‹\“\·Ñt:\ÔÇ\‰k¶E\‚0|‚çº Å\·â\Ê9)/K@,X≤ñí√≤\À\ƒ!eÆ[@ÉI\˜5o*-∫\—\»_|7|\›l+º\'Bãë\Ûgy™\»eià±Ygº\‹—Ω•\Ë\Ã)-3\÷\‰*êÇ√ß?7â¿E\≈Hªå†ºt?¥ÆMç•\ZmD7vø¿\‚\Ó{\∆\ﬁ]Ç9Ω¨T§ÇJ¢R®\Â•\‡M)S-s>“å)gÉ=hˇt\∆\˜¥Lûí ê{ã≥g¯\Î\”N\„¥ îëa\Ì\‚\‡†$ë\"Ms≤\√\rÄ\Ûπ\ÕAÕè\Î¶P\Â\ıt\n±√Ñåò∂ôB ¥WBû?úï\√0<¡u«†\ÚÑ<1íÉ\0†ñºñ\ÍT\ÒuV\”J∫!¢^\„vn\⁄MNG\ÕF(\n§SD\Ë6ä5∏\—rˇJ≥∫áFè\“SÜ6Pñ\Z˙∑0J\–\≈7L\‘\ı≈ó\Ì\Ÿb1\Ï\”\“œâ{Y¥qÔø∏\Ú\ﬂ®O\Õ\˜˛K\›°\ﬁ7Ç\‘⁄ô\j\Ëg¨\Ù\√>W\Z∏Ñ¢&\Ô]\'V\Â«É\Õ\‰p\ÌèG\˜IÃÖÇ©$B¶ãg∑j∂åfù\Ÿ\'°\›iw\ﬂ\˜≥5gX)\≈;5O\Òª]≥X¢(£v\◊xèÇøÉ\Á¶˙º\Œ\◊\·\‚¯ßh%àl*;\n2tB´üØ\”#a©\’{\Â\˜âë~\ŸA\Ùæª\ÙÆ˘µ)3;ch2ﬁóÿõM\›_\Z\∆»ò\nåL\“hr“è\Ù`ß\\L^úWîèÁ§∂É.M\–	NõkPX≈éπ21óìc˛V@€∞s\∆s\À˘ô\n˚ëÑ\ÃxìcÆüx-≥f™?w\Ê7x\À\ÏôGh\Ó\Ão Ç\”lFÅ?f˚\rhgùΩ))÷ä\⁄\€\'ä\Ê&˝V1és{˚Dfc\n\¬\…I\'e\Û~+dç≥\Âj∂ßp\‹Xí=Ø\È\ﬂ$\Ô\ﬂ\⁄¡ÕÜ¢π¡\’\Â√à\Úà\Á>\ˆ8\÷¿{•|πT≤„öç,ò\‡3\‡øpI¶º\Ï¥f;¶ˇV£Yfk\Á©›Ø$ÉGv˙V\Â∞˘r;u¯Ñ˛Jò¢)t\Ù&*ôJR`˚=A∞x\˜¥#6ªû?A\Ûw\Á\\}Ü\›t\‰™;oWëçæ\Í\ÏØ1>ûJ\\\–\Ï[\Ô\ [\ƒ~ºj!ç\ﬂ\ı¡\–\ﬁN˛®Z°—†\‚ª\nØª\ı¸1í\Û˘\ \’>≤');
/*!40000 ALTER TABLE `cache_pagesection` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cache_pagesection_tags`
--

DROP TABLE IF EXISTS `cache_pagesection_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cache_pagesection_tags` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tag` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`(191)),
  KEY `cache_tag` (`tag`(191))
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cache_pagesection_tags`
--

LOCK TABLES `cache_pagesection_tags` WRITE;
/*!40000 ALTER TABLE `cache_pagesection_tags` DISABLE KEYS */;
INSERT INTO `cache_pagesection_tags` VALUES (1,'1_222419149','pageId_1'),(2,'1_222419149','mpvarHash_222419149');
/*!40000 ALTER TABLE `cache_pagesection_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cache_rootline`
--

DROP TABLE IF EXISTS `cache_rootline`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cache_rootline` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `expires` int unsigned NOT NULL DEFAULT '0',
  `content` longblob,
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`(180),`expires`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cache_rootline`
--

LOCK TABLES `cache_rootline` WRITE;
/*!40000 ALTER TABLE `cache_rootline` DISABLE KEYS */;
INSERT INTO `cache_rootline` VALUES (2,'1__0_0',1650922229,_binary 'xúMë\ÕN\√0Ñ\ﬂ\≈@õî\ﬂ\ÂÑG§\Ê¿\Õr\Îm∞\Íx£x]®™æ;õ\ﬂ<üG3ÎµÅ\n.\÷\œ\Í\Z.6†zg\’\Û\»&ïfUâz≈õö˛\’:\√\ÔX\–*\”»Ü1\„;°éΩ\Ë∑†ﬁ©õéí\ÃI/W©fwá÷ô›É\Ú\ÊLâ\ÛHæúµrÖdI\Â¿Ï∫•\ˆ[íGP\‘\Ì@©/\“+I\√oC€¥\ÎMã±»∞t\‰sèπZ2ö\Ìû\¬¡µeÜ9\ŒXª∞\˜…é!2©\ﬁ>à¶\Î=N5\—QXΩN\÷4UgΩ˙ê\Ú’ã\˜79L˝≠\’E\„@\ƒ≈øtî\Î\‚Á™∫Äö¸\¬7\”\”=µ.\ËéÏ≤íZ÷Ω3˚£º^\œ;\÷A¶\‘O\Ëßr1å+·®µ≈ÉI^∏^y}∫à');
/*!40000 ALTER TABLE `cache_rootline` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cache_rootline_tags`
--

DROP TABLE IF EXISTS `cache_rootline_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cache_rootline_tags` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tag` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`(191)),
  KEY `cache_tag` (`tag`(191))
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cache_rootline_tags`
--

LOCK TABLES `cache_rootline_tags` WRITE;
/*!40000 ALTER TABLE `cache_rootline_tags` DISABLE KEYS */;
INSERT INTO `cache_rootline_tags` VALUES (2,'1__0_0','pageId_1');
/*!40000 ALTER TABLE `cache_rootline_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cache_treelist`
--

DROP TABLE IF EXISTS `cache_treelist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cache_treelist` (
  `md5hash` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `pid` int NOT NULL DEFAULT '0',
  `treelist` mediumtext COLLATE utf8mb4_unicode_ci,
  `tstamp` int NOT NULL DEFAULT '0',
  `expires` int unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`md5hash`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cache_treelist`
--

LOCK TABLES `cache_treelist` WRITE;
/*!40000 ALTER TABLE `cache_treelist` DISABLE KEYS */;
/*!40000 ALTER TABLE `cache_treelist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fe_groups`
--

DROP TABLE IF EXISTS `fe_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fe_groups` (
  `uid` int unsigned NOT NULL AUTO_INCREMENT,
  `pid` int unsigned NOT NULL DEFAULT '0',
  `tstamp` int unsigned NOT NULL DEFAULT '0',
  `crdate` int unsigned NOT NULL DEFAULT '0',
  `cruser_id` int unsigned NOT NULL DEFAULT '0',
  `deleted` smallint unsigned NOT NULL DEFAULT '0',
  `hidden` smallint unsigned NOT NULL DEFAULT '0',
  `description` text COLLATE utf8mb4_unicode_ci,
  `tx_extbase_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `title` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `lockToDomain` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `subgroup` tinytext COLLATE utf8mb4_unicode_ci,
  `TSconfig` text COLLATE utf8mb4_unicode_ci,
  `felogin_redirectPid` tinytext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`,`deleted`,`hidden`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fe_groups`
--

LOCK TABLES `fe_groups` WRITE;
/*!40000 ALTER TABLE `fe_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `fe_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fe_sessions`
--

DROP TABLE IF EXISTS `fe_sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fe_sessions` (
  `ses_id` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `ses_iplock` varchar(39) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `ses_userid` int unsigned NOT NULL DEFAULT '0',
  `ses_tstamp` int unsigned NOT NULL DEFAULT '0',
  `ses_data` mediumblob,
  `ses_permanent` smallint unsigned NOT NULL DEFAULT '0',
  `ses_anonymous` smallint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`ses_id`),
  KEY `ses_tstamp` (`ses_tstamp`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fe_sessions`
--

LOCK TABLES `fe_sessions` WRITE;
/*!40000 ALTER TABLE `fe_sessions` DISABLE KEYS */;
/*!40000 ALTER TABLE `fe_sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fe_users`
--

DROP TABLE IF EXISTS `fe_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fe_users` (
  `uid` int unsigned NOT NULL AUTO_INCREMENT,
  `pid` int unsigned NOT NULL DEFAULT '0',
  `tstamp` int unsigned NOT NULL DEFAULT '0',
  `crdate` int unsigned NOT NULL DEFAULT '0',
  `cruser_id` int unsigned NOT NULL DEFAULT '0',
  `deleted` smallint unsigned NOT NULL DEFAULT '0',
  `disable` smallint unsigned NOT NULL DEFAULT '0',
  `starttime` int unsigned NOT NULL DEFAULT '0',
  `endtime` int unsigned NOT NULL DEFAULT '0',
  `description` text COLLATE utf8mb4_unicode_ci,
  `tx_extbase_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `password` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `usergroup` tinytext COLLATE utf8mb4_unicode_ci,
  `name` varchar(160) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `first_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `middle_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `last_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `telephone` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `fax` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `lockToDomain` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `uc` blob,
  `title` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `zip` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `city` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `country` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `www` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `company` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `image` tinytext COLLATE utf8mb4_unicode_ci,
  `TSconfig` text COLLATE utf8mb4_unicode_ci,
  `lastlogin` int unsigned NOT NULL DEFAULT '0',
  `is_online` int unsigned NOT NULL DEFAULT '0',
  `felogin_redirectPid` tinytext COLLATE utf8mb4_unicode_ci,
  `felogin_forgotHash` varchar(80) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `tx_examples_options` int NOT NULL DEFAULT '0',
  `tx_examples_special` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`,`username`(100)),
  KEY `username` (`username`(100)),
  KEY `is_online` (`is_online`),
  KEY `felogin_forgotHash` (`felogin_forgotHash`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fe_users`
--

LOCK TABLES `fe_users` WRITE;
/*!40000 ALTER TABLE `fe_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `fe_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pages`
--

DROP TABLE IF EXISTS `pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pages` (
  `uid` int unsigned NOT NULL AUTO_INCREMENT,
  `pid` int NOT NULL DEFAULT '0',
  `tstamp` int unsigned NOT NULL DEFAULT '0',
  `crdate` int unsigned NOT NULL DEFAULT '0',
  `cruser_id` int unsigned NOT NULL DEFAULT '0',
  `deleted` smallint unsigned NOT NULL DEFAULT '0',
  `hidden` smallint unsigned NOT NULL DEFAULT '0',
  `starttime` int unsigned NOT NULL DEFAULT '0',
  `endtime` int unsigned NOT NULL DEFAULT '0',
  `fe_group` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `sorting` int NOT NULL DEFAULT '0',
  `rowDescription` text COLLATE utf8mb4_unicode_ci,
  `editlock` smallint unsigned NOT NULL DEFAULT '0',
  `sys_language_uid` int NOT NULL DEFAULT '0',
  `l10n_parent` int unsigned NOT NULL DEFAULT '0',
  `l10n_source` int unsigned NOT NULL DEFAULT '0',
  `l10n_state` text COLLATE utf8mb4_unicode_ci,
  `t3_origuid` int unsigned NOT NULL DEFAULT '0',
  `l10n_diffsource` mediumblob,
  `t3ver_oid` int unsigned NOT NULL DEFAULT '0',
  `t3ver_wsid` int unsigned NOT NULL DEFAULT '0',
  `t3ver_state` smallint NOT NULL DEFAULT '0',
  `t3ver_stage` int NOT NULL DEFAULT '0',
  `t3ver_count` int unsigned NOT NULL DEFAULT '0',
  `t3ver_tstamp` int unsigned NOT NULL DEFAULT '0',
  `t3ver_move_id` int unsigned NOT NULL DEFAULT '0',
  `perms_userid` int unsigned NOT NULL DEFAULT '0',
  `perms_groupid` int unsigned NOT NULL DEFAULT '0',
  `perms_user` smallint unsigned NOT NULL DEFAULT '0',
  `perms_group` smallint unsigned NOT NULL DEFAULT '0',
  `perms_everybody` smallint unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(2048) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `doktype` int unsigned NOT NULL DEFAULT '0',
  `TSconfig` text COLLATE utf8mb4_unicode_ci,
  `is_siteroot` smallint NOT NULL DEFAULT '0',
  `php_tree_stop` smallint NOT NULL DEFAULT '0',
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `shortcut` int unsigned NOT NULL DEFAULT '0',
  `shortcut_mode` int unsigned NOT NULL DEFAULT '0',
  `subtitle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `layout` int unsigned NOT NULL DEFAULT '0',
  `target` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `media` int unsigned NOT NULL DEFAULT '0',
  `lastUpdated` int unsigned NOT NULL DEFAULT '0',
  `keywords` text COLLATE utf8mb4_unicode_ci,
  `cache_timeout` int unsigned NOT NULL DEFAULT '0',
  `cache_tags` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `newUntil` int unsigned NOT NULL DEFAULT '0',
  `description` text COLLATE utf8mb4_unicode_ci,
  `no_search` smallint unsigned NOT NULL DEFAULT '0',
  `SYS_LASTCHANGED` int unsigned NOT NULL DEFAULT '0',
  `abstract` text COLLATE utf8mb4_unicode_ci,
  `module` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `extendToSubpages` smallint unsigned NOT NULL DEFAULT '0',
  `author` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `author_email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `nav_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `nav_hide` smallint NOT NULL DEFAULT '0',
  `content_from_pid` int unsigned NOT NULL DEFAULT '0',
  `mount_pid` int unsigned NOT NULL DEFAULT '0',
  `mount_pid_ol` smallint NOT NULL DEFAULT '0',
  `l18n_cfg` smallint NOT NULL DEFAULT '0',
  `fe_login_mode` smallint NOT NULL DEFAULT '0',
  `backend_layout` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `backend_layout_next_level` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tsconfig_includes` text COLLATE utf8mb4_unicode_ci,
  `legacy_overlay_uid` int unsigned NOT NULL DEFAULT '0',
  `tx_impexp_origuid` int NOT NULL DEFAULT '0',
  `seo_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `no_index` smallint NOT NULL DEFAULT '0',
  `no_follow` smallint NOT NULL DEFAULT '0',
  `og_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `og_description` text COLLATE utf8mb4_unicode_ci,
  `og_image` int unsigned NOT NULL DEFAULT '0',
  `twitter_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `twitter_description` text COLLATE utf8mb4_unicode_ci,
  `twitter_image` int unsigned NOT NULL DEFAULT '0',
  `twitter_card` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `canonical_link` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `sitemap_priority` decimal(2,1) NOT NULL DEFAULT '0.5',
  `sitemap_changefreq` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `categories` int NOT NULL DEFAULT '0',
  `tx_examples_related_pages` int NOT NULL DEFAULT '0',
  `tx_examples_cats` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `determineSiteRoot` (`is_siteroot`),
  KEY `language_identifier` (`l10n_parent`,`sys_language_uid`),
  KEY `legacy_overlay` (`legacy_overlay_uid`),
  KEY `slug` (`slug`(127)),
  KEY `parent` (`pid`,`deleted`,`hidden`),
  KEY `translation_source` (`l10n_source`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pages`
--

LOCK TABLES `pages` WRITE;
/*!40000 ALTER TABLE `pages` DISABLE KEYS */;
INSERT INTO `pages` VALUES (1,0,1648145853,1648125748,1,0,0,0,0,'',256,'',0,0,0,0,NULL,0,_binary 'a:50:{s:7:\"doktype\";N;s:5:\"title\";N;s:4:\"slug\";N;s:9:\"nav_title\";N;s:8:\"subtitle\";N;s:9:\"seo_title\";N;s:11:\"description\";N;s:8:\"no_index\";N;s:9:\"no_follow\";N;s:14:\"canonical_link\";N;s:18:\"sitemap_changefreq\";N;s:16:\"sitemap_priority\";N;s:8:\"og_title\";N;s:14:\"og_description\";N;s:8:\"og_image\";N;s:13:\"twitter_title\";N;s:19:\"twitter_description\";N;s:13:\"twitter_image\";N;s:12:\"twitter_card\";N;s:8:\"abstract\";N;s:8:\"keywords\";N;s:6:\"author\";N;s:12:\"author_email\";N;s:11:\"lastUpdated\";N;s:6:\"layout\";N;s:8:\"newUntil\";N;s:14:\"backend_layout\";N;s:25:\"backend_layout_next_level\";N;s:16:\"content_from_pid\";N;s:6:\"target\";N;s:13:\"cache_timeout\";N;s:10:\"cache_tags\";N;s:11:\"is_siteroot\";N;s:9:\"no_search\";N;s:13:\"php_tree_stop\";N;s:6:\"module\";N;s:5:\"media\";N;s:17:\"tsconfig_includes\";N;s:8:\"TSconfig\";N;s:8:\"l18n_cfg\";N;s:6:\"hidden\";N;s:8:\"nav_hide\";N;s:9:\"starttime\";N;s:7:\"endtime\";N;s:16:\"extendToSubpages\";N;s:8:\"fe_group\";N;s:13:\"fe_login_mode\";N;s:8:\"editlock\";N;s:10:\"categories\";N;s:14:\"rowDescription\";N;}',0,0,0,0,0,0,0,1,0,31,27,1,'Home','/home/',1,'',1,0,'',0,0,'',1,'',0,0,'',0,'',0,'',0,1648145853,'','',0,'','','',0,0,0,0,0,0,'pagets__default','pagets__default','EXT:sampleextension/Configuration/TsConfig/Page/All.tsconfig',0,0,'',0,0,'','',0,'','',0,'summary','',0.5,'',0,0,0),(2,0,1648146568,1648141124,1,1,0,0,0,'',128,'',0,0,0,0,NULL,0,_binary 'a:50:{s:7:\"doktype\";N;s:5:\"title\";N;s:4:\"slug\";N;s:9:\"nav_title\";N;s:8:\"subtitle\";N;s:9:\"seo_title\";N;s:11:\"description\";N;s:8:\"no_index\";N;s:9:\"no_follow\";N;s:14:\"canonical_link\";N;s:18:\"sitemap_changefreq\";N;s:16:\"sitemap_priority\";N;s:8:\"og_title\";N;s:14:\"og_description\";N;s:8:\"og_image\";N;s:13:\"twitter_title\";N;s:19:\"twitter_description\";N;s:13:\"twitter_image\";N;s:12:\"twitter_card\";N;s:8:\"abstract\";N;s:8:\"keywords\";N;s:6:\"author\";N;s:12:\"author_email\";N;s:11:\"lastUpdated\";N;s:6:\"layout\";N;s:8:\"newUntil\";N;s:14:\"backend_layout\";N;s:25:\"backend_layout_next_level\";N;s:16:\"content_from_pid\";N;s:6:\"target\";N;s:13:\"cache_timeout\";N;s:10:\"cache_tags\";N;s:11:\"is_siteroot\";N;s:9:\"no_search\";N;s:13:\"php_tree_stop\";N;s:6:\"module\";N;s:5:\"media\";N;s:17:\"tsconfig_includes\";N;s:8:\"TSconfig\";N;s:8:\"l18n_cfg\";N;s:6:\"hidden\";N;s:8:\"nav_hide\";N;s:9:\"starttime\";N;s:7:\"endtime\";N;s:16:\"extendToSubpages\";N;s:8:\"fe_group\";N;s:13:\"fe_login_mode\";N;s:8:\"editlock\";N;s:10:\"categories\";N;s:14:\"rowDescription\";N;}',0,0,0,0,0,0,0,1,0,31,27,0,'test','/',4,'',0,0,'',0,0,'',3,'',0,0,'',0,'',0,'',0,1648146226,'','',0,'','','',0,0,0,0,0,0,'pagets__default','pagets__default','',0,0,'',0,0,'','',0,'','',0,'summary','',0.5,'',0,0,0),(3,1,1648330186,1648199660,1,1,1,0,0,'',256,'',0,0,0,0,NULL,0,'',0,0,0,0,0,0,0,1,0,31,27,0,'SingleColumn','/home/singlecolumn',1,'',0,0,'',0,0,'',0,'',0,0,'',0,'',0,'',0,1648199660,'','',0,'','','',0,0,0,0,0,0,'','','',0,0,'',0,0,'','',0,'','',0,'summary','',0.5,'',0,0,0);
/*!40000 ALTER TABLE `pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_be_shortcuts`
--

DROP TABLE IF EXISTS `sys_be_shortcuts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_be_shortcuts` (
  `uid` int unsigned NOT NULL AUTO_INCREMENT,
  `userid` int unsigned NOT NULL DEFAULT '0',
  `module_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `url` text COLLATE utf8mb4_unicode_ci,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `sorting` int NOT NULL DEFAULT '0',
  `sc_group` smallint NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `event` (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_be_shortcuts`
--

LOCK TABLES `sys_be_shortcuts` WRITE;
/*!40000 ALTER TABLE `sys_be_shortcuts` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_be_shortcuts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_category`
--

DROP TABLE IF EXISTS `sys_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_category` (
  `uid` int unsigned NOT NULL AUTO_INCREMENT,
  `pid` int NOT NULL DEFAULT '0',
  `tstamp` int unsigned NOT NULL DEFAULT '0',
  `crdate` int unsigned NOT NULL DEFAULT '0',
  `cruser_id` int unsigned NOT NULL DEFAULT '0',
  `deleted` smallint unsigned NOT NULL DEFAULT '0',
  `hidden` smallint unsigned NOT NULL DEFAULT '0',
  `starttime` int unsigned NOT NULL DEFAULT '0',
  `endtime` int unsigned NOT NULL DEFAULT '0',
  `sorting` int NOT NULL DEFAULT '0',
  `description` text COLLATE utf8mb4_unicode_ci,
  `sys_language_uid` int NOT NULL DEFAULT '0',
  `l10n_parent` int unsigned NOT NULL DEFAULT '0',
  `l10n_state` text COLLATE utf8mb4_unicode_ci,
  `t3_origuid` int unsigned NOT NULL DEFAULT '0',
  `l10n_diffsource` mediumblob,
  `t3ver_oid` int unsigned NOT NULL DEFAULT '0',
  `t3ver_wsid` int unsigned NOT NULL DEFAULT '0',
  `t3ver_state` smallint NOT NULL DEFAULT '0',
  `t3ver_stage` int NOT NULL DEFAULT '0',
  `t3ver_count` int unsigned NOT NULL DEFAULT '0',
  `t3ver_tstamp` int unsigned NOT NULL DEFAULT '0',
  `t3ver_move_id` int unsigned NOT NULL DEFAULT '0',
  `title` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` int NOT NULL DEFAULT '0',
  `items` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `category_parent` (`parent`),
  KEY `category_list` (`pid`,`deleted`,`sys_language_uid`),
  KEY `parent` (`pid`,`deleted`,`hidden`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_category`
--

LOCK TABLES `sys_category` WRITE;
/*!40000 ALTER TABLE `sys_category` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_category_record_mm`
--

DROP TABLE IF EXISTS `sys_category_record_mm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_category_record_mm` (
  `uid_local` int NOT NULL DEFAULT '0',
  `uid_foreign` int NOT NULL DEFAULT '0',
  `tablenames` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `fieldname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `sorting` int NOT NULL DEFAULT '0',
  `sorting_foreign` int NOT NULL DEFAULT '0',
  KEY `uid_local_foreign` (`uid_local`,`uid_foreign`),
  KEY `uid_foreign_tablefield` (`uid_foreign`,`tablenames`(40),`fieldname`(3),`sorting_foreign`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_category_record_mm`
--

LOCK TABLES `sys_category_record_mm` WRITE;
/*!40000 ALTER TABLE `sys_category_record_mm` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_category_record_mm` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_collection`
--

DROP TABLE IF EXISTS `sys_collection`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_collection` (
  `uid` int unsigned NOT NULL AUTO_INCREMENT,
  `pid` int NOT NULL DEFAULT '0',
  `tstamp` int unsigned NOT NULL DEFAULT '0',
  `crdate` int unsigned NOT NULL DEFAULT '0',
  `cruser_id` int unsigned NOT NULL DEFAULT '0',
  `deleted` smallint unsigned NOT NULL DEFAULT '0',
  `hidden` smallint unsigned NOT NULL DEFAULT '0',
  `starttime` int unsigned NOT NULL DEFAULT '0',
  `endtime` int unsigned NOT NULL DEFAULT '0',
  `fe_group` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `description` text COLLATE utf8mb4_unicode_ci,
  `sys_language_uid` int NOT NULL DEFAULT '0',
  `l10n_parent` int unsigned NOT NULL DEFAULT '0',
  `l10n_state` text COLLATE utf8mb4_unicode_ci,
  `t3_origuid` int unsigned NOT NULL DEFAULT '0',
  `l10n_diffsource` mediumblob,
  `t3ver_oid` int unsigned NOT NULL DEFAULT '0',
  `t3ver_wsid` int unsigned NOT NULL DEFAULT '0',
  `t3ver_state` smallint NOT NULL DEFAULT '0',
  `t3ver_stage` int NOT NULL DEFAULT '0',
  `t3ver_count` int unsigned NOT NULL DEFAULT '0',
  `t3ver_tstamp` int unsigned NOT NULL DEFAULT '0',
  `t3ver_move_id` int unsigned NOT NULL DEFAULT '0',
  `title` tinytext COLLATE utf8mb4_unicode_ci,
  `type` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'static',
  `table_name` tinytext COLLATE utf8mb4_unicode_ci,
  `items` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`,`deleted`,`hidden`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_collection`
--

LOCK TABLES `sys_collection` WRITE;
/*!40000 ALTER TABLE `sys_collection` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_collection` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_collection_entries`
--

DROP TABLE IF EXISTS `sys_collection_entries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_collection_entries` (
  `uid` int NOT NULL AUTO_INCREMENT,
  `uid_local` int NOT NULL DEFAULT '0',
  `uid_foreign` int NOT NULL DEFAULT '0',
  `tablenames` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `sorting` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `uid_local` (`uid_local`),
  KEY `uid_foreign` (`uid_foreign`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_collection_entries`
--

LOCK TABLES `sys_collection_entries` WRITE;
/*!40000 ALTER TABLE `sys_collection_entries` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_collection_entries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_file`
--

DROP TABLE IF EXISTS `sys_file`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_file` (
  `uid` int unsigned NOT NULL AUTO_INCREMENT,
  `pid` int unsigned NOT NULL DEFAULT '0',
  `tstamp` int unsigned NOT NULL DEFAULT '0',
  `last_indexed` int NOT NULL DEFAULT '0',
  `missing` smallint NOT NULL DEFAULT '0',
  `storage` int NOT NULL DEFAULT '0',
  `type` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `metadata` int NOT NULL DEFAULT '0',
  `identifier` text COLLATE utf8mb4_unicode_ci,
  `identifier_hash` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `folder_hash` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `extension` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `mime_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `name` tinytext COLLATE utf8mb4_unicode_ci,
  `sha1` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `size` bigint unsigned NOT NULL DEFAULT '0',
  `creation_date` int NOT NULL DEFAULT '0',
  `modification_date` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `sel01` (`storage`,`identifier_hash`),
  KEY `folder` (`storage`,`folder_hash`),
  KEY `tstamp` (`tstamp`),
  KEY `lastindex` (`last_indexed`),
  KEY `sha1` (`sha1`),
  KEY `parent` (`pid`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_file`
--

LOCK TABLES `sys_file` WRITE;
/*!40000 ALTER TABLE `sys_file` DISABLE KEYS */;
INSERT INTO `sys_file` VALUES (1,0,1648139898,0,0,1,'0',0,'/user_upload/index.html','c25533f303185517ca3e1e24b215d53aa74076d2','19669f1e02c2f16705ec7587044c66443be70725','html','inode/x-empty','index.html','da39a3ee5e6b4b0d3255bfef95601890afd80709',0,1648129867,1648063026),(2,0,1648197476,0,0,1,'1',0,'/templates/index.html','9f0ae851af9adb08e3242917d7d52dc270c7bae2','1e32c6a2adcd918ca35b736a7151b158b79c7f9b','html','text/html','index.html','be84256d00db27d2e33c828bab9049a798da97bf',850,1648197476,1648197476),(3,0,1648196441,0,0,2,'1',0,'/templates/index.html','9f0ae851af9adb08e3242917d7d52dc270c7bae2','1e32c6a2adcd918ca35b736a7151b158b79c7f9b','html','text/plain','index.html','1762f358c851568d8a404eb70951ff2c4244e7cb',190,1648196411,1648196411),(4,0,1648196782,0,0,1,'1',0,'/css/bootstrap.min.css','51a37122d36f58395c43305e2918a5455d5c3824','ab43580753a2ede7c09efd2b007f1aa8d707fc7e','css','text/plain','bootstrap.min.css','5567847185d9b32fa07888469639c7680e381a2e',163879,1648196782,1648196782),(5,0,1648196546,0,0,1,'1',0,'/js/bootstrap.min.js','01e1d6482b1c8578ad624c6a6091d00ff5c0fa1b','f3626544625e0f92468d939361b81503b75f0a74','js','text/plain','bootstrap.min.js','19080c3b817985336aab5e1ce6925c99803f2efd',59219,1648196546,1648196546),(6,0,1648197049,0,0,1,'1',0,'/_temp_/index.html','1cd5eec12b9b11599c0b4c6b2d43342c4fb53a7b','0258f8a5f703dd44c350fbfcddeecb1634d46ad4','html','text/html','index.html','86f257eae12059ed5daf12ce6e5508f5f893012a',116,1648129867,1648063026),(7,0,1648322191,0,0,1,'1',0,'/sitedesign/Resources/Private/Templates/Basic1Column.html','d8c8d13c710aae331e434793451f05baeb33bfd7','b75c143800da415e817cb2fc11fe0d1696119688','html','text/plain','Basic1Column.html','443f949c150dbeb85107dfc0566e954c04d0e16f',669,1648322191,1648322191);
/*!40000 ALTER TABLE `sys_file` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_file_collection`
--

DROP TABLE IF EXISTS `sys_file_collection`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_file_collection` (
  `uid` int unsigned NOT NULL AUTO_INCREMENT,
  `pid` int NOT NULL DEFAULT '0',
  `tstamp` int unsigned NOT NULL DEFAULT '0',
  `crdate` int unsigned NOT NULL DEFAULT '0',
  `cruser_id` int unsigned NOT NULL DEFAULT '0',
  `deleted` smallint unsigned NOT NULL DEFAULT '0',
  `hidden` smallint unsigned NOT NULL DEFAULT '0',
  `starttime` int unsigned NOT NULL DEFAULT '0',
  `endtime` int unsigned NOT NULL DEFAULT '0',
  `description` text COLLATE utf8mb4_unicode_ci,
  `sys_language_uid` int NOT NULL DEFAULT '0',
  `l10n_parent` int unsigned NOT NULL DEFAULT '0',
  `l10n_state` text COLLATE utf8mb4_unicode_ci,
  `t3_origuid` int unsigned NOT NULL DEFAULT '0',
  `l10n_diffsource` mediumblob,
  `t3ver_oid` int unsigned NOT NULL DEFAULT '0',
  `t3ver_wsid` int unsigned NOT NULL DEFAULT '0',
  `t3ver_state` smallint NOT NULL DEFAULT '0',
  `t3ver_stage` int NOT NULL DEFAULT '0',
  `t3ver_count` int unsigned NOT NULL DEFAULT '0',
  `t3ver_tstamp` int unsigned NOT NULL DEFAULT '0',
  `t3ver_move_id` int unsigned NOT NULL DEFAULT '0',
  `title` tinytext COLLATE utf8mb4_unicode_ci,
  `type` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'static',
  `files` int NOT NULL DEFAULT '0',
  `storage` int NOT NULL DEFAULT '0',
  `folder` text COLLATE utf8mb4_unicode_ci,
  `recursive` smallint NOT NULL DEFAULT '0',
  `category` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`,`deleted`,`hidden`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_file_collection`
--

LOCK TABLES `sys_file_collection` WRITE;
/*!40000 ALTER TABLE `sys_file_collection` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_file_collection` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_file_metadata`
--

DROP TABLE IF EXISTS `sys_file_metadata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_file_metadata` (
  `uid` int unsigned NOT NULL AUTO_INCREMENT,
  `pid` int NOT NULL DEFAULT '0',
  `tstamp` int unsigned NOT NULL DEFAULT '0',
  `crdate` int unsigned NOT NULL DEFAULT '0',
  `cruser_id` int unsigned NOT NULL DEFAULT '0',
  `sys_language_uid` int NOT NULL DEFAULT '0',
  `l10n_parent` int unsigned NOT NULL DEFAULT '0',
  `l10n_state` text COLLATE utf8mb4_unicode_ci,
  `t3_origuid` int unsigned NOT NULL DEFAULT '0',
  `l10n_diffsource` mediumblob,
  `t3ver_oid` int unsigned NOT NULL DEFAULT '0',
  `t3ver_wsid` int unsigned NOT NULL DEFAULT '0',
  `t3ver_state` smallint NOT NULL DEFAULT '0',
  `t3ver_stage` int NOT NULL DEFAULT '0',
  `t3ver_count` int unsigned NOT NULL DEFAULT '0',
  `t3ver_tstamp` int unsigned NOT NULL DEFAULT '0',
  `t3ver_move_id` int unsigned NOT NULL DEFAULT '0',
  `file` int NOT NULL DEFAULT '0',
  `title` tinytext COLLATE utf8mb4_unicode_ci,
  `width` int NOT NULL DEFAULT '0',
  `height` int NOT NULL DEFAULT '0',
  `description` text COLLATE utf8mb4_unicode_ci,
  `alternative` text COLLATE utf8mb4_unicode_ci,
  `categories` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `file` (`file`),
  KEY `fal_filelist` (`l10n_parent`,`sys_language_uid`),
  KEY `parent` (`pid`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_file_metadata`
--

LOCK TABLES `sys_file_metadata` WRITE;
/*!40000 ALTER TABLE `sys_file_metadata` DISABLE KEYS */;
INSERT INTO `sys_file_metadata` VALUES (1,0,1648139898,1648139898,1,0,0,NULL,0,'',0,0,0,0,0,0,0,1,NULL,0,0,NULL,NULL,0),(2,0,1648197476,1648196411,1,0,0,NULL,0,'',0,0,0,0,0,0,0,2,NULL,0,0,NULL,NULL,0),(3,0,1648196441,1648196441,1,0,0,NULL,0,'',0,0,0,0,0,0,0,3,NULL,0,0,NULL,NULL,0),(4,0,1648196782,1648196513,1,0,0,NULL,0,'',0,0,0,0,0,0,0,4,NULL,0,0,NULL,NULL,0),(5,0,1648196546,1648196546,1,0,0,NULL,0,'',0,0,0,0,0,0,0,5,NULL,0,0,NULL,NULL,0),(6,0,1648197049,1648197049,1,0,0,NULL,0,'',0,0,0,0,0,0,0,6,NULL,0,0,NULL,NULL,0),(7,0,1648322191,1648322180,1,0,0,NULL,0,'',0,0,0,0,0,0,0,7,NULL,0,0,NULL,NULL,0);
/*!40000 ALTER TABLE `sys_file_metadata` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_file_processedfile`
--

DROP TABLE IF EXISTS `sys_file_processedfile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_file_processedfile` (
  `uid` int NOT NULL AUTO_INCREMENT,
  `tstamp` int NOT NULL DEFAULT '0',
  `crdate` int NOT NULL DEFAULT '0',
  `storage` int NOT NULL DEFAULT '0',
  `original` int NOT NULL DEFAULT '0',
  `identifier` varchar(512) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `name` tinytext COLLATE utf8mb4_unicode_ci,
  `processing_url` text COLLATE utf8mb4_unicode_ci,
  `configuration` blob,
  `configurationsha1` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `originalfilesha1` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `task_type` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `checksum` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `width` int DEFAULT '0',
  `height` int DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `combined_1` (`original`,`task_type`(100),`configurationsha1`),
  KEY `identifier` (`storage`,`identifier`(180))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_file_processedfile`
--

LOCK TABLES `sys_file_processedfile` WRITE;
/*!40000 ALTER TABLE `sys_file_processedfile` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_file_processedfile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_file_reference`
--

DROP TABLE IF EXISTS `sys_file_reference`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_file_reference` (
  `uid` int unsigned NOT NULL AUTO_INCREMENT,
  `pid` int NOT NULL DEFAULT '0',
  `tstamp` int unsigned NOT NULL DEFAULT '0',
  `crdate` int unsigned NOT NULL DEFAULT '0',
  `cruser_id` int unsigned NOT NULL DEFAULT '0',
  `deleted` smallint unsigned NOT NULL DEFAULT '0',
  `hidden` smallint unsigned NOT NULL DEFAULT '0',
  `sys_language_uid` int NOT NULL DEFAULT '0',
  `l10n_parent` int unsigned NOT NULL DEFAULT '0',
  `l10n_state` text COLLATE utf8mb4_unicode_ci,
  `l10n_diffsource` mediumblob,
  `t3ver_oid` int unsigned NOT NULL DEFAULT '0',
  `t3ver_wsid` int unsigned NOT NULL DEFAULT '0',
  `t3ver_state` smallint NOT NULL DEFAULT '0',
  `t3ver_stage` int NOT NULL DEFAULT '0',
  `t3ver_count` int unsigned NOT NULL DEFAULT '0',
  `t3ver_tstamp` int unsigned NOT NULL DEFAULT '0',
  `t3ver_move_id` int unsigned NOT NULL DEFAULT '0',
  `uid_local` int NOT NULL DEFAULT '0',
  `uid_foreign` int NOT NULL DEFAULT '0',
  `tablenames` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `fieldname` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `sorting_foreign` int NOT NULL DEFAULT '0',
  `table_local` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `title` tinytext COLLATE utf8mb4_unicode_ci,
  `description` text COLLATE utf8mb4_unicode_ci,
  `alternative` text COLLATE utf8mb4_unicode_ci,
  `link` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `crop` varchar(4000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `autoplay` smallint NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `tablenames_fieldname` (`tablenames`(32),`fieldname`(12)),
  KEY `deleted` (`deleted`),
  KEY `uid_local` (`uid_local`),
  KEY `uid_foreign` (`uid_foreign`),
  KEY `combined_1` (`l10n_parent`,`t3ver_oid`,`t3ver_wsid`,`t3ver_state`,`deleted`),
  KEY `parent` (`pid`,`deleted`,`hidden`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_file_reference`
--

LOCK TABLES `sys_file_reference` WRITE;
/*!40000 ALTER TABLE `sys_file_reference` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_file_reference` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_file_storage`
--

DROP TABLE IF EXISTS `sys_file_storage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_file_storage` (
  `uid` int unsigned NOT NULL AUTO_INCREMENT,
  `pid` int unsigned NOT NULL DEFAULT '0',
  `tstamp` int unsigned NOT NULL DEFAULT '0',
  `crdate` int unsigned NOT NULL DEFAULT '0',
  `cruser_id` int unsigned NOT NULL DEFAULT '0',
  `deleted` smallint unsigned NOT NULL DEFAULT '0',
  `description` text COLLATE utf8mb4_unicode_ci,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `driver` tinytext COLLATE utf8mb4_unicode_ci,
  `configuration` text COLLATE utf8mb4_unicode_ci,
  `is_default` smallint NOT NULL DEFAULT '0',
  `is_browsable` smallint NOT NULL DEFAULT '0',
  `is_public` smallint NOT NULL DEFAULT '0',
  `is_writable` smallint NOT NULL DEFAULT '0',
  `is_online` smallint NOT NULL DEFAULT '1',
  `auto_extract_metadata` smallint NOT NULL DEFAULT '1',
  `processingfolder` tinytext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`,`deleted`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_file_storage`
--

LOCK TABLES `sys_file_storage` WRITE;
/*!40000 ALTER TABLE `sys_file_storage` DISABLE KEYS */;
INSERT INTO `sys_file_storage` VALUES (1,0,1648125538,1648125538,0,0,'This is the local fileadmin/ directory. This storage mount has been created automatically by TYPO3.','fileadmin/ (auto-created)','Local','<?xml version=\"1.0\" encoding=\"utf-8\" standalone=\"yes\" ?>\n<T3FlexForms>\n    <data>\n        <sheet index=\"sDEF\">\n            <language index=\"lDEF\">\n                <field index=\"basePath\">\n                    <value index=\"vDEF\">fileadmin/</value>\n                </field>\n                <field index=\"pathType\">\n                    <value index=\"vDEF\">relative</value>\n                </field>\n                <field index=\"caseSensitive\">\n                    <value index=\"vDEF\">1</value>\n                </field>\n            </language>\n        </sheet>\n    </data>\n</T3FlexForms>',1,1,1,1,1,1,NULL),(2,0,1648125538,1648125538,0,0,'This is the local fileadmin/ directory. This storage mount has been created automatically by TYPO3.','fileadmin/ (auto-created)','Local','<?xml version=\"1.0\" encoding=\"utf-8\" standalone=\"yes\" ?>\n<T3FlexForms>\n    <data>\n        <sheet index=\"sDEF\">\n            <language index=\"lDEF\">\n                <field index=\"basePath\">\n                    <value index=\"vDEF\">fileadmin/</value>\n                </field>\n                <field index=\"pathType\">\n                    <value index=\"vDEF\">relative</value>\n                </field>\n                <field index=\"caseSensitive\">\n                    <value index=\"vDEF\">1</value>\n                </field>\n            </language>\n        </sheet>\n    </data>\n</T3FlexForms>',1,1,1,1,1,1,NULL);
/*!40000 ALTER TABLE `sys_file_storage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_filemounts`
--

DROP TABLE IF EXISTS `sys_filemounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_filemounts` (
  `uid` int unsigned NOT NULL AUTO_INCREMENT,
  `pid` int unsigned NOT NULL DEFAULT '0',
  `tstamp` int unsigned NOT NULL DEFAULT '0',
  `deleted` smallint unsigned NOT NULL DEFAULT '0',
  `hidden` smallint unsigned NOT NULL DEFAULT '0',
  `sorting` int NOT NULL DEFAULT '0',
  `description` text COLLATE utf8mb4_unicode_ci,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `base` int unsigned NOT NULL DEFAULT '0',
  `read_only` smallint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`,`deleted`,`hidden`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_filemounts`
--

LOCK TABLES `sys_filemounts` WRITE;
/*!40000 ALTER TABLE `sys_filemounts` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_filemounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_history`
--

DROP TABLE IF EXISTS `sys_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_history` (
  `uid` int unsigned NOT NULL AUTO_INCREMENT,
  `tstamp` int unsigned NOT NULL DEFAULT '0',
  `actiontype` smallint NOT NULL DEFAULT '0',
  `usertype` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'BE',
  `userid` int unsigned DEFAULT NULL,
  `originaluserid` int unsigned DEFAULT NULL,
  `recuid` int NOT NULL DEFAULT '0',
  `tablename` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `history_data` mediumtext COLLATE utf8mb4_unicode_ci,
  `workspace` int DEFAULT '0',
  `correlation_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`uid`),
  KEY `recordident_1` (`tablename`(100),`recuid`),
  KEY `recordident_2` (`tablename`(100),`tstamp`)
) ENGINE=InnoDB AUTO_INCREMENT=62 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_history`
--

LOCK TABLES `sys_history` WRITE;
/*!40000 ALTER TABLE `sys_history` DISABLE KEYS */;
INSERT INTO `sys_history` VALUES (1,1648125748,1,'BE',1,0,1,'pages','{\"uid\":1,\"pid\":0,\"tstamp\":1648125748,\"crdate\":1648125748,\"cruser_id\":1,\"deleted\":0,\"hidden\":1,\"starttime\":0,\"endtime\":0,\"fe_group\":\"\",\"sorting\":256,\"rowDescription\":\"\",\"editlock\":0,\"sys_language_uid\":0,\"l10n_parent\":0,\"l10n_source\":0,\"l10n_state\":null,\"t3_origuid\":0,\"l10n_diffsource\":\"\",\"t3ver_oid\":0,\"t3ver_wsid\":0,\"t3ver_state\":0,\"t3ver_stage\":0,\"t3ver_count\":0,\"t3ver_tstamp\":0,\"t3ver_move_id\":0,\"perms_userid\":1,\"perms_groupid\":0,\"perms_user\":31,\"perms_group\":27,\"perms_everybody\":0,\"title\":\"Home\",\"slug\":\"\\/\",\"doktype\":1,\"TSconfig\":\"\",\"is_siteroot\":0,\"php_tree_stop\":0,\"url\":\"\",\"shortcut\":0,\"shortcut_mode\":0,\"subtitle\":\"\",\"layout\":0,\"target\":\"\",\"media\":0,\"lastUpdated\":0,\"keywords\":\"\",\"cache_timeout\":0,\"cache_tags\":\"\",\"newUntil\":0,\"description\":\"\",\"no_search\":0,\"SYS_LASTCHANGED\":0,\"abstract\":\"\",\"module\":\"\",\"extendToSubpages\":0,\"author\":\"\",\"author_email\":\"\",\"nav_title\":\"\",\"nav_hide\":0,\"content_from_pid\":0,\"mount_pid\":0,\"mount_pid_ol\":0,\"l18n_cfg\":0,\"fe_login_mode\":0,\"backend_layout\":\"\",\"backend_layout_next_level\":\"\",\"tsconfig_includes\":\"\",\"legacy_overlay_uid\":0,\"tx_impexp_origuid\":0,\"seo_title\":\"\",\"no_index\":0,\"no_follow\":0,\"og_title\":\"\",\"og_description\":\"\",\"og_image\":0,\"twitter_title\":\"\",\"twitter_description\":\"\",\"twitter_image\":0,\"twitter_card\":\"summary\",\"canonical_link\":\"\",\"sitemap_priority\":\"0.5\",\"sitemap_changefreq\":\"\",\"categories\":0}',0,'0400$9cd2bc8345c4f3cc3739260a588fa43b:e175f7045d7ccbfb26ffcf279422c2e5'),(2,1648125748,2,'BE',1,0,1,'pages','{\"oldRecord\":{\"l10n_diffsource\":\"\"},\"newRecord\":{\"l10n_diffsource\":\"a:1:{s:4:\\\"slug\\\";N;}\"}}',0,'0400$04fd679f4bfe20610aaf6f0825770fec:e175f7045d7ccbfb26ffcf279422c2e5'),(3,1648126380,2,'BE',1,0,1,'pages','{\"oldRecord\":{\"hidden\":1,\"l10n_diffsource\":\"a:1:{s:4:\\\"slug\\\";N;}\"},\"newRecord\":{\"hidden\":\"0\",\"l10n_diffsource\":\"a:50:{s:7:\\\"doktype\\\";N;s:5:\\\"title\\\";N;s:4:\\\"slug\\\";N;s:9:\\\"nav_title\\\";N;s:8:\\\"subtitle\\\";N;s:9:\\\"seo_title\\\";N;s:11:\\\"description\\\";N;s:8:\\\"no_index\\\";N;s:9:\\\"no_follow\\\";N;s:14:\\\"canonical_link\\\";N;s:18:\\\"sitemap_changefreq\\\";N;s:16:\\\"sitemap_priority\\\";N;s:8:\\\"og_title\\\";N;s:14:\\\"og_description\\\";N;s:8:\\\"og_image\\\";N;s:13:\\\"twitter_title\\\";N;s:19:\\\"twitter_description\\\";N;s:13:\\\"twitter_image\\\";N;s:12:\\\"twitter_card\\\";N;s:8:\\\"abstract\\\";N;s:8:\\\"keywords\\\";N;s:6:\\\"author\\\";N;s:12:\\\"author_email\\\";N;s:11:\\\"lastUpdated\\\";N;s:6:\\\"layout\\\";N;s:8:\\\"newUntil\\\";N;s:14:\\\"backend_layout\\\";N;s:25:\\\"backend_layout_next_level\\\";N;s:16:\\\"content_from_pid\\\";N;s:6:\\\"target\\\";N;s:13:\\\"cache_timeout\\\";N;s:10:\\\"cache_tags\\\";N;s:11:\\\"is_siteroot\\\";N;s:9:\\\"no_search\\\";N;s:13:\\\"php_tree_stop\\\";N;s:6:\\\"module\\\";N;s:5:\\\"media\\\";N;s:17:\\\"tsconfig_includes\\\";N;s:8:\\\"TSconfig\\\";N;s:8:\\\"l18n_cfg\\\";N;s:6:\\\"hidden\\\";N;s:8:\\\"nav_hide\\\";N;s:9:\\\"starttime\\\";N;s:7:\\\"endtime\\\";N;s:16:\\\"extendToSubpages\\\";N;s:8:\\\"fe_group\\\";N;s:13:\\\"fe_login_mode\\\";N;s:8:\\\"editlock\\\";N;s:10:\\\"categories\\\";N;s:14:\\\"rowDescription\\\";N;}\"}}',0,'0400$7fd805dc8982e815b7bb126af21f1bbb:e175f7045d7ccbfb26ffcf279422c2e5'),(4,1648129018,1,'BE',1,0,1,'tt_content','{\"uid\":1,\"rowDescription\":\"\",\"pid\":1,\"tstamp\":1648129018,\"crdate\":1648129018,\"cruser_id\":1,\"deleted\":0,\"hidden\":0,\"starttime\":0,\"endtime\":0,\"fe_group\":\"\",\"sorting\":256,\"editlock\":0,\"sys_language_uid\":0,\"l18n_parent\":0,\"l10n_source\":0,\"l10n_state\":null,\"t3_origuid\":0,\"l18n_diffsource\":\"\",\"t3ver_oid\":0,\"t3ver_wsid\":0,\"t3ver_state\":0,\"t3ver_stage\":0,\"t3ver_count\":0,\"t3ver_tstamp\":0,\"t3ver_move_id\":0,\"CType\":\"sampleextension_jumbotron\",\"header\":\"\",\"header_position\":\"\",\"bodytext\":null,\"bullets_type\":0,\"uploads_description\":0,\"uploads_type\":0,\"assets\":0,\"image\":0,\"imagewidth\":0,\"imageorient\":0,\"imagecols\":2,\"imageborder\":0,\"media\":0,\"layout\":0,\"frame_class\":\"default\",\"cols\":0,\"space_before_class\":\"\",\"space_after_class\":\"\",\"records\":null,\"pages\":null,\"colPos\":0,\"subheader\":\"\",\"header_link\":\"\",\"image_zoom\":0,\"header_layout\":\"0\",\"list_type\":\"\",\"sectionIndex\":1,\"linkToTop\":0,\"file_collections\":null,\"filelink_size\":0,\"filelink_sorting\":\"\",\"filelink_sorting_direction\":\"\",\"target\":\"\",\"date\":0,\"recursive\":0,\"imageheight\":0,\"pi_flexform\":\"<?xml version=\\\"1.0\\\" encoding=\\\"utf-8\\\" standalone=\\\"yes\\\" ?>\\n<T3FlexForms>\\n    <data>\\n        <sheet index=\\\"sDEF\\\">\\n            <language index=\\\"lDEF\\\">\\n                <field index=\\\"settings.persistenceIdentifier\\\">\\n                    <value index=\\\"vDEF\\\"><\\/value>\\n                <\\/field>\\n            <\\/language>\\n        <\\/sheet>\\n    <\\/data>\\n<\\/T3FlexForms>\",\"accessibility_title\":\"\",\"accessibility_bypass\":0,\"accessibility_bypass_text\":\"\",\"selected_categories\":null,\"category_field\":\"\",\"table_class\":\"\",\"table_caption\":null,\"table_delimiter\":124,\"table_enclosure\":0,\"table_header_position\":0,\"table_tfoot\":0,\"tx_impexp_origuid\":0,\"categories\":0}',0,'0400$5b5d0f52c739ddffe59cef30049db034:7fa2c035f26826fe83eeecaaeddc4d40'),(5,1648129167,2,'BE',1,0,1,'tt_content','{\"oldRecord\":{\"header\":\"\",\"bodytext\":null,\"l18n_diffsource\":\"\"},\"newRecord\":{\"header\":\"aaa\",\"bodytext\":\"<p>eee<\\/p>\",\"l18n_diffsource\":\"a:9:{s:5:\\\"CType\\\";N;s:6:\\\"colPos\\\";N;s:6:\\\"header\\\";N;s:8:\\\"bodytext\\\";N;s:6:\\\"hidden\\\";N;s:9:\\\"starttime\\\";N;s:7:\\\"endtime\\\";N;s:8:\\\"fe_group\\\";N;s:8:\\\"editlock\\\";N;}\"}}',0,'0400$998afa553228f65e0487b4df1d1dbbb0:7fa2c035f26826fe83eeecaaeddc4d40'),(6,1648129894,2,'BE',1,0,1,'tt_content','{\"oldRecord\":{\"hidden\":0,\"l18n_diffsource\":\"a:9:{s:5:\\\"CType\\\";N;s:6:\\\"colPos\\\";N;s:6:\\\"header\\\";N;s:8:\\\"bodytext\\\";N;s:6:\\\"hidden\\\";N;s:9:\\\"starttime\\\";N;s:7:\\\"endtime\\\";N;s:8:\\\"fe_group\\\";N;s:8:\\\"editlock\\\";N;}\"},\"newRecord\":{\"hidden\":\"1\",\"l18n_diffsource\":\"a:1:{s:6:\\\"hidden\\\";N;}\"}}',0,'0400$e01c97d234feeaf1ed92b405b3ca5831:7fa2c035f26826fe83eeecaaeddc4d40'),(7,1648129898,2,'BE',1,0,1,'tt_content','{\"oldRecord\":{\"hidden\":1},\"newRecord\":{\"hidden\":\"0\"}}',0,'0400$b69ec564df85c6358ed45358b144984b:7fa2c035f26826fe83eeecaaeddc4d40'),(8,1648130188,1,'BE',1,0,2,'tt_content','{\"uid\":2,\"rowDescription\":\"\",\"pid\":1,\"tstamp\":1648130188,\"crdate\":1648130188,\"cruser_id\":1,\"deleted\":0,\"hidden\":0,\"starttime\":0,\"endtime\":0,\"fe_group\":\"\",\"sorting\":512,\"editlock\":0,\"sys_language_uid\":0,\"l18n_parent\":0,\"l10n_source\":0,\"l10n_state\":null,\"t3_origuid\":0,\"l18n_diffsource\":\"\",\"t3ver_oid\":0,\"t3ver_wsid\":0,\"t3ver_state\":0,\"t3ver_stage\":0,\"t3ver_count\":0,\"t3ver_tstamp\":0,\"t3ver_move_id\":0,\"CType\":\"sampleextension_jumbotron\",\"header\":\"\",\"header_position\":\"\",\"bodytext\":null,\"bullets_type\":0,\"uploads_description\":0,\"uploads_type\":0,\"assets\":0,\"image\":0,\"imagewidth\":0,\"imageorient\":0,\"imagecols\":2,\"imageborder\":0,\"media\":0,\"layout\":0,\"frame_class\":\"default\",\"cols\":0,\"space_before_class\":\"\",\"space_after_class\":\"\",\"records\":null,\"pages\":null,\"colPos\":0,\"subheader\":\"\",\"header_link\":\"\",\"image_zoom\":0,\"header_layout\":\"0\",\"list_type\":\"\",\"sectionIndex\":1,\"linkToTop\":0,\"file_collections\":null,\"filelink_size\":0,\"filelink_sorting\":\"\",\"filelink_sorting_direction\":\"\",\"target\":\"\",\"date\":0,\"recursive\":0,\"imageheight\":0,\"pi_flexform\":null,\"accessibility_title\":\"\",\"accessibility_bypass\":0,\"accessibility_bypass_text\":\"\",\"selected_categories\":null,\"category_field\":\"\",\"table_class\":\"\",\"table_caption\":null,\"table_delimiter\":124,\"table_enclosure\":0,\"table_header_position\":0,\"table_tfoot\":0,\"tx_impexp_origuid\":0,\"categories\":0}',0,'0400$ecdb66aac5d075b63e10733fefd82ed0:01dbc21fdb1263685b9147b3b1596ea8'),(9,1648130812,4,'BE',1,0,2,'tt_content',NULL,0,'0400$603ae413367f61dbea3b5c8853ea8838:01dbc21fdb1263685b9147b3b1596ea8'),(10,1648131355,1,'BE',1,0,3,'tt_content','{\"uid\":3,\"rowDescription\":\"\",\"pid\":1,\"tstamp\":1648131355,\"crdate\":1648131355,\"cruser_id\":1,\"deleted\":0,\"hidden\":0,\"starttime\":0,\"endtime\":0,\"fe_group\":\"\",\"sorting\":512,\"editlock\":0,\"sys_language_uid\":0,\"l18n_parent\":0,\"l10n_source\":0,\"l10n_state\":null,\"t3_origuid\":0,\"l18n_diffsource\":\"\",\"t3ver_oid\":0,\"t3ver_wsid\":0,\"t3ver_state\":0,\"t3ver_stage\":0,\"t3ver_count\":0,\"t3ver_tstamp\":0,\"t3ver_move_id\":0,\"CType\":\"sampleextension_jumbotron\",\"header\":\"\",\"header_position\":\"\",\"bodytext\":null,\"bullets_type\":0,\"uploads_description\":0,\"uploads_type\":0,\"assets\":0,\"image\":0,\"imagewidth\":0,\"imageorient\":0,\"imagecols\":2,\"imageborder\":0,\"media\":0,\"layout\":0,\"frame_class\":\"default\",\"cols\":0,\"space_before_class\":\"\",\"space_after_class\":\"\",\"records\":null,\"pages\":null,\"colPos\":0,\"subheader\":\"\",\"header_link\":\"\",\"image_zoom\":0,\"header_layout\":\"0\",\"list_type\":\"\",\"sectionIndex\":1,\"linkToTop\":0,\"file_collections\":null,\"filelink_size\":0,\"filelink_sorting\":\"\",\"filelink_sorting_direction\":\"\",\"target\":\"\",\"date\":0,\"recursive\":0,\"imageheight\":0,\"pi_flexform\":null,\"accessibility_title\":\"\",\"accessibility_bypass\":0,\"accessibility_bypass_text\":\"\",\"selected_categories\":null,\"category_field\":\"\",\"table_class\":\"\",\"table_caption\":null,\"table_delimiter\":124,\"table_enclosure\":0,\"table_header_position\":0,\"table_tfoot\":0,\"tx_impexp_origuid\":0,\"categories\":0}',0,'0400$4839798c8203462a67a2d4d3515ff66a:b92300cfb5d1d3645c9cb212a7f56c1f'),(11,1648132100,1,'BE',1,0,4,'tt_content','{\"uid\":4,\"rowDescription\":\"\",\"pid\":1,\"tstamp\":1648132100,\"crdate\":1648132100,\"cruser_id\":1,\"deleted\":0,\"hidden\":0,\"starttime\":0,\"endtime\":0,\"fe_group\":\"\",\"sorting\":128,\"editlock\":0,\"sys_language_uid\":0,\"l18n_parent\":0,\"l10n_source\":0,\"l10n_state\":null,\"t3_origuid\":0,\"l18n_diffsource\":\"\",\"t3ver_oid\":0,\"t3ver_wsid\":0,\"t3ver_state\":0,\"t3ver_stage\":0,\"t3ver_count\":0,\"t3ver_tstamp\":0,\"t3ver_move_id\":0,\"CType\":\"sampleextension_jumbotron\",\"header\":\"\",\"header_position\":\"\",\"bodytext\":null,\"bullets_type\":0,\"uploads_description\":0,\"uploads_type\":0,\"assets\":0,\"image\":0,\"imagewidth\":0,\"imageorient\":0,\"imagecols\":2,\"imageborder\":0,\"media\":0,\"layout\":0,\"frame_class\":\"default\",\"cols\":0,\"space_before_class\":\"\",\"space_after_class\":\"\",\"records\":null,\"pages\":null,\"colPos\":0,\"subheader\":\"\",\"header_link\":\"\",\"image_zoom\":0,\"header_layout\":\"0\",\"list_type\":\"\",\"sectionIndex\":1,\"linkToTop\":0,\"file_collections\":null,\"filelink_size\":0,\"filelink_sorting\":\"\",\"filelink_sorting_direction\":\"\",\"target\":\"\",\"date\":0,\"recursive\":0,\"imageheight\":0,\"pi_flexform\":null,\"accessibility_title\":\"\",\"accessibility_bypass\":0,\"accessibility_bypass_text\":\"\",\"selected_categories\":null,\"category_field\":\"\",\"table_class\":\"\",\"table_caption\":null,\"table_delimiter\":124,\"table_enclosure\":0,\"table_header_position\":0,\"table_tfoot\":0,\"tx_impexp_origuid\":0,\"categories\":0,\"tx_examples_noprint\":0}',0,'0400$0fe3e4bb2e72b3ee7098c6cefa648250:4d391f5ef79b8d5d10dffa8a07ca167d'),(12,1648132260,1,'BE',1,0,5,'tt_content','{\"uid\":5,\"rowDescription\":\"\",\"pid\":1,\"tstamp\":1648132260,\"crdate\":1648132260,\"cruser_id\":1,\"deleted\":0,\"hidden\":0,\"starttime\":0,\"endtime\":0,\"fe_group\":\"\",\"sorting\":768,\"editlock\":0,\"sys_language_uid\":0,\"l18n_parent\":0,\"l10n_source\":0,\"l10n_state\":null,\"t3_origuid\":0,\"l18n_diffsource\":\"\",\"t3ver_oid\":0,\"t3ver_wsid\":0,\"t3ver_state\":0,\"t3ver_stage\":0,\"t3ver_count\":0,\"t3ver_tstamp\":0,\"t3ver_move_id\":0,\"CType\":\"sampleextension_jumbotron\",\"header\":\"\",\"header_position\":\"\",\"bodytext\":null,\"bullets_type\":0,\"uploads_description\":0,\"uploads_type\":0,\"assets\":0,\"image\":0,\"imagewidth\":0,\"imageorient\":0,\"imagecols\":2,\"imageborder\":0,\"media\":0,\"layout\":0,\"frame_class\":\"default\",\"cols\":0,\"space_before_class\":\"\",\"space_after_class\":\"\",\"records\":null,\"pages\":null,\"colPos\":0,\"subheader\":\"\",\"header_link\":\"\",\"image_zoom\":0,\"header_layout\":\"0\",\"list_type\":\"\",\"sectionIndex\":1,\"linkToTop\":0,\"file_collections\":null,\"filelink_size\":0,\"filelink_sorting\":\"\",\"filelink_sorting_direction\":\"\",\"target\":\"\",\"date\":0,\"recursive\":0,\"imageheight\":0,\"pi_flexform\":null,\"accessibility_title\":\"\",\"accessibility_bypass\":0,\"accessibility_bypass_text\":\"\",\"selected_categories\":null,\"category_field\":\"\",\"table_class\":\"\",\"table_caption\":null,\"table_delimiter\":124,\"table_enclosure\":0,\"table_header_position\":0,\"table_tfoot\":0,\"tx_impexp_origuid\":0,\"categories\":0,\"tx_examples_noprint\":0}',0,'0400$1e4e0be19915efedf4edb29c14387e38:c7626fc9bcba6f70beb6ebc085a400db'),(13,1648136444,1,'BE',1,0,6,'tt_content','{\"uid\":6,\"rowDescription\":null,\"pid\":1,\"tstamp\":1648136444,\"crdate\":1648136444,\"cruser_id\":1,\"deleted\":0,\"hidden\":0,\"starttime\":0,\"endtime\":0,\"fe_group\":\"\",\"sorting\":64,\"editlock\":0,\"sys_language_uid\":0,\"l18n_parent\":0,\"l10n_source\":0,\"l10n_state\":null,\"t3_origuid\":0,\"l18n_diffsource\":\"\",\"t3ver_oid\":0,\"t3ver_wsid\":0,\"t3ver_state\":0,\"t3ver_stage\":0,\"t3ver_count\":0,\"t3ver_tstamp\":0,\"t3ver_move_id\":0,\"CType\":\"header\",\"header\":\"\",\"header_position\":\"\",\"bodytext\":\"\",\"bullets_type\":0,\"uploads_description\":0,\"uploads_type\":0,\"assets\":0,\"image\":0,\"imagewidth\":0,\"imageorient\":0,\"imagecols\":2,\"imageborder\":0,\"media\":0,\"layout\":0,\"frame_class\":\"default\",\"cols\":0,\"space_before_class\":\"\",\"space_after_class\":\"\",\"records\":null,\"pages\":null,\"colPos\":0,\"subheader\":\"\",\"header_link\":\"\",\"image_zoom\":0,\"header_layout\":\"0\",\"list_type\":\"\",\"sectionIndex\":1,\"linkToTop\":0,\"file_collections\":null,\"filelink_size\":0,\"filelink_sorting\":\"\",\"filelink_sorting_direction\":\"\",\"target\":\"\",\"date\":0,\"recursive\":0,\"imageheight\":0,\"pi_flexform\":null,\"accessibility_title\":\"\",\"accessibility_bypass\":0,\"accessibility_bypass_text\":\"\",\"selected_categories\":null,\"category_field\":\"\",\"table_class\":\"\",\"table_caption\":null,\"table_delimiter\":124,\"table_enclosure\":0,\"table_header_position\":0,\"table_tfoot\":0,\"tx_impexp_origuid\":0,\"categories\":0,\"tx_examples_noprint\":0}',0,'0400$478dae082e1f93f3503aabd0b4f8fe35:c0db6803ab1ec5f70c36e2a72187867b'),(14,1648136570,4,'BE',1,0,6,'tt_content',NULL,0,'0400$5a0af357eae375c48747fde393baa99d:c0db6803ab1ec5f70c36e2a72187867b'),(15,1648136572,4,'BE',1,0,4,'tt_content',NULL,0,'0400$12bd0bc0306b2a719758433fdda3093a:4d391f5ef79b8d5d10dffa8a07ca167d'),(16,1648136574,4,'BE',1,0,1,'tt_content',NULL,0,'0400$25eb86acf8511e5462dd3d6096d12d70:7fa2c035f26826fe83eeecaaeddc4d40'),(17,1648136577,4,'BE',1,0,3,'tt_content',NULL,0,'0400$65871d9336dbcfeec12e9bb9d24dc2e8:b92300cfb5d1d3645c9cb212a7f56c1f'),(18,1648136579,4,'BE',1,0,5,'tt_content',NULL,0,'0400$e661032bd6ebdce532e2edd8e229b20c:c7626fc9bcba6f70beb6ebc085a400db'),(19,1648139797,1,'BE',1,0,7,'tt_content','{\"uid\":7,\"rowDescription\":null,\"pid\":1,\"tstamp\":1648139797,\"crdate\":1648139797,\"cruser_id\":1,\"deleted\":0,\"hidden\":0,\"starttime\":0,\"endtime\":0,\"fe_group\":\"\",\"sorting\":256,\"editlock\":0,\"sys_language_uid\":0,\"l18n_parent\":0,\"l10n_source\":0,\"l10n_state\":null,\"t3_origuid\":0,\"l18n_diffsource\":\"\",\"t3ver_oid\":0,\"t3ver_wsid\":0,\"t3ver_state\":0,\"t3ver_stage\":0,\"t3ver_count\":0,\"t3ver_tstamp\":0,\"t3ver_move_id\":0,\"CType\":\"textmedia\",\"header\":\"\",\"header_position\":\"\",\"bodytext\":\"\",\"bullets_type\":0,\"uploads_description\":0,\"uploads_type\":0,\"assets\":0,\"image\":0,\"imagewidth\":0,\"imageorient\":0,\"imagecols\":2,\"imageborder\":0,\"media\":0,\"layout\":0,\"frame_class\":\"default\",\"cols\":0,\"space_before_class\":\"\",\"space_after_class\":\"\",\"records\":null,\"pages\":null,\"colPos\":0,\"subheader\":\"\",\"header_link\":\"\",\"image_zoom\":0,\"header_layout\":\"0\",\"list_type\":\"\",\"sectionIndex\":1,\"linkToTop\":0,\"file_collections\":null,\"filelink_size\":0,\"filelink_sorting\":\"\",\"filelink_sorting_direction\":\"\",\"target\":\"\",\"date\":0,\"recursive\":0,\"imageheight\":0,\"pi_flexform\":null,\"accessibility_title\":\"\",\"accessibility_bypass\":0,\"accessibility_bypass_text\":\"\",\"selected_categories\":null,\"category_field\":\"\",\"table_class\":\"\",\"table_caption\":null,\"table_delimiter\":124,\"table_enclosure\":0,\"table_header_position\":0,\"table_tfoot\":0,\"tx_impexp_origuid\":0,\"categories\":0,\"tx_examples_noprint\":0}',0,'0400$2991ba12af9ad682b4a186e953138d1e:ea41b626baac59a1fe0716bc344af5d9'),(20,1648140068,1,'BE',1,0,8,'tt_content','{\"uid\":8,\"rowDescription\":null,\"pid\":1,\"tstamp\":1648140068,\"crdate\":1648140068,\"cruser_id\":1,\"deleted\":0,\"hidden\":0,\"starttime\":0,\"endtime\":0,\"fe_group\":\"\",\"sorting\":512,\"editlock\":0,\"sys_language_uid\":0,\"l18n_parent\":0,\"l10n_source\":0,\"l10n_state\":null,\"t3_origuid\":0,\"l18n_diffsource\":\"\",\"t3ver_oid\":0,\"t3ver_wsid\":0,\"t3ver_state\":0,\"t3ver_stage\":0,\"t3ver_count\":0,\"t3ver_tstamp\":0,\"t3ver_move_id\":0,\"CType\":\"sampleextension_jumbotron\",\"header\":\"Test header\",\"header_position\":\"\",\"bodytext\":\"<p>test text<\\/p>\",\"bullets_type\":0,\"uploads_description\":0,\"uploads_type\":0,\"assets\":0,\"image\":0,\"imagewidth\":0,\"imageorient\":0,\"imagecols\":2,\"imageborder\":0,\"media\":0,\"layout\":0,\"frame_class\":\"default\",\"cols\":0,\"space_before_class\":\"\",\"space_after_class\":\"\",\"records\":null,\"pages\":null,\"colPos\":0,\"subheader\":\"test subheader\",\"header_link\":\"\",\"image_zoom\":0,\"header_layout\":\"0\",\"list_type\":\"\",\"sectionIndex\":1,\"linkToTop\":0,\"file_collections\":null,\"filelink_size\":0,\"filelink_sorting\":\"\",\"filelink_sorting_direction\":\"\",\"target\":\"\",\"date\":0,\"recursive\":0,\"imageheight\":0,\"pi_flexform\":null,\"accessibility_title\":\"\",\"accessibility_bypass\":0,\"accessibility_bypass_text\":\"\",\"selected_categories\":null,\"category_field\":\"\",\"table_class\":\"\",\"table_caption\":null,\"table_delimiter\":124,\"table_enclosure\":0,\"table_header_position\":0,\"table_tfoot\":0,\"tx_impexp_origuid\":0,\"categories\":0,\"tx_examples_noprint\":0}',0,'0400$6ff551c4c10bb9f50e4523445cab5cbd:2097d84972a039cb6bfe093b17089287'),(21,1648140800,4,'BE',1,0,7,'tt_content',NULL,0,'0400$c0325ad9c79749324b342f01b2343a22:ea41b626baac59a1fe0716bc344af5d9'),(22,1648140851,2,'BE',1,0,1,'pages','{\"oldRecord\":{\"doktype\":1},\"newRecord\":{\"doktype\":\"4\"}}',0,'0400$b8d1b82caec64b90eb9f10984f4f93ef:e175f7045d7ccbfb26ffcf279422c2e5'),(23,1648140872,2,'BE',1,0,1,'pages','{\"oldRecord\":{\"is_siteroot\":0,\"l10n_diffsource\":\"a:50:{s:7:\\\"doktype\\\";N;s:5:\\\"title\\\";N;s:4:\\\"slug\\\";N;s:9:\\\"nav_title\\\";N;s:8:\\\"subtitle\\\";N;s:9:\\\"seo_title\\\";N;s:11:\\\"description\\\";N;s:8:\\\"no_index\\\";N;s:9:\\\"no_follow\\\";N;s:14:\\\"canonical_link\\\";N;s:18:\\\"sitemap_changefreq\\\";N;s:16:\\\"sitemap_priority\\\";N;s:8:\\\"og_title\\\";N;s:14:\\\"og_description\\\";N;s:8:\\\"og_image\\\";N;s:13:\\\"twitter_title\\\";N;s:19:\\\"twitter_description\\\";N;s:13:\\\"twitter_image\\\";N;s:12:\\\"twitter_card\\\";N;s:8:\\\"abstract\\\";N;s:8:\\\"keywords\\\";N;s:6:\\\"author\\\";N;s:12:\\\"author_email\\\";N;s:11:\\\"lastUpdated\\\";N;s:6:\\\"layout\\\";N;s:8:\\\"newUntil\\\";N;s:14:\\\"backend_layout\\\";N;s:25:\\\"backend_layout_next_level\\\";N;s:16:\\\"content_from_pid\\\";N;s:6:\\\"target\\\";N;s:13:\\\"cache_timeout\\\";N;s:10:\\\"cache_tags\\\";N;s:11:\\\"is_siteroot\\\";N;s:9:\\\"no_search\\\";N;s:13:\\\"php_tree_stop\\\";N;s:6:\\\"module\\\";N;s:5:\\\"media\\\";N;s:17:\\\"tsconfig_includes\\\";N;s:8:\\\"TSconfig\\\";N;s:8:\\\"l18n_cfg\\\";N;s:6:\\\"hidden\\\";N;s:8:\\\"nav_hide\\\";N;s:9:\\\"starttime\\\";N;s:7:\\\"endtime\\\";N;s:16:\\\"extendToSubpages\\\";N;s:8:\\\"fe_group\\\";N;s:13:\\\"fe_login_mode\\\";N;s:8:\\\"editlock\\\";N;s:10:\\\"categories\\\";N;s:14:\\\"rowDescription\\\";N;}\"},\"newRecord\":{\"is_siteroot\":\"1\",\"l10n_diffsource\":\"a:33:{s:7:\\\"doktype\\\";N;s:5:\\\"title\\\";N;s:4:\\\"slug\\\";N;s:9:\\\"nav_title\\\";N;s:8:\\\"subtitle\\\";N;s:13:\\\"shortcut_mode\\\";N;s:8:\\\"shortcut\\\";N;s:8:\\\"abstract\\\";N;s:6:\\\"author\\\";N;s:12:\\\"author_email\\\";N;s:11:\\\"lastUpdated\\\";N;s:6:\\\"layout\\\";N;s:8:\\\"newUntil\\\";N;s:14:\\\"backend_layout\\\";N;s:25:\\\"backend_layout_next_level\\\";N;s:6:\\\"target\\\";N;s:11:\\\"is_siteroot\\\";N;s:9:\\\"no_search\\\";N;s:13:\\\"php_tree_stop\\\";N;s:5:\\\"media\\\";N;s:17:\\\"tsconfig_includes\\\";N;s:8:\\\"TSconfig\\\";N;s:8:\\\"l18n_cfg\\\";N;s:6:\\\"hidden\\\";N;s:8:\\\"nav_hide\\\";N;s:9:\\\"starttime\\\";N;s:7:\\\"endtime\\\";N;s:16:\\\"extendToSubpages\\\";N;s:8:\\\"fe_group\\\";N;s:13:\\\"fe_login_mode\\\";N;s:8:\\\"editlock\\\";N;s:10:\\\"categories\\\";N;s:14:\\\"rowDescription\\\";N;}\"}}',0,'0400$537417f24fdc0d77474a89962f160477:e175f7045d7ccbfb26ffcf279422c2e5'),(24,1648140886,2,'BE',1,0,1,'pages','{\"oldRecord\":{\"tsconfig_includes\":\"\"},\"newRecord\":{\"tsconfig_includes\":\"EXT:sampleextension\\/Configuration\\/TsConfig\\/Page\\/All.tsconfig\"}}',0,'0400$5ec401a00569aefc4a7f1a6315dc41a6:e175f7045d7ccbfb26ffcf279422c2e5'),(25,1648140931,2,'BE',1,0,1,'pages','{\"oldRecord\":{\"slug\":\"\\/\"},\"newRecord\":{\"slug\":\"\\/home\\/\"}}',0,'0400$720f026c232194a82e36644e84a560f4:e175f7045d7ccbfb26ffcf279422c2e5'),(26,1648141082,2,'BE',1,0,1,'pages','{\"oldRecord\":{\"doktype\":4},\"newRecord\":{\"doktype\":\"1\"}}',0,'0400$d22ac5a21fb549392d9c945b02a030c3:e175f7045d7ccbfb26ffcf279422c2e5'),(27,1648141124,1,'BE',1,0,2,'pages','{\"uid\":2,\"pid\":0,\"tstamp\":1648141124,\"crdate\":1648141124,\"cruser_id\":1,\"deleted\":0,\"hidden\":1,\"starttime\":0,\"endtime\":0,\"fe_group\":\"\",\"sorting\":128,\"rowDescription\":\"\",\"editlock\":0,\"sys_language_uid\":0,\"l10n_parent\":0,\"l10n_source\":0,\"l10n_state\":null,\"t3_origuid\":0,\"l10n_diffsource\":\"\",\"t3ver_oid\":0,\"t3ver_wsid\":0,\"t3ver_state\":0,\"t3ver_stage\":0,\"t3ver_count\":0,\"t3ver_tstamp\":0,\"t3ver_move_id\":0,\"perms_userid\":1,\"perms_groupid\":0,\"perms_user\":31,\"perms_group\":27,\"perms_everybody\":0,\"title\":\"test\",\"slug\":\"\\/\",\"doktype\":1,\"TSconfig\":\"\",\"is_siteroot\":0,\"php_tree_stop\":0,\"url\":\"\",\"shortcut\":0,\"shortcut_mode\":0,\"subtitle\":\"\",\"layout\":0,\"target\":\"\",\"media\":0,\"lastUpdated\":0,\"keywords\":\"\",\"cache_timeout\":0,\"cache_tags\":\"\",\"newUntil\":0,\"description\":\"\",\"no_search\":0,\"SYS_LASTCHANGED\":0,\"abstract\":\"\",\"module\":\"\",\"extendToSubpages\":0,\"author\":\"\",\"author_email\":\"\",\"nav_title\":\"\",\"nav_hide\":0,\"content_from_pid\":0,\"mount_pid\":0,\"mount_pid_ol\":0,\"l18n_cfg\":0,\"fe_login_mode\":0,\"backend_layout\":\"\",\"backend_layout_next_level\":\"\",\"tsconfig_includes\":\"\",\"legacy_overlay_uid\":0,\"tx_impexp_origuid\":0,\"seo_title\":\"\",\"no_index\":0,\"no_follow\":0,\"og_title\":\"\",\"og_description\":\"\",\"og_image\":0,\"twitter_title\":\"\",\"twitter_description\":\"\",\"twitter_image\":0,\"twitter_card\":\"summary\",\"canonical_link\":\"\",\"sitemap_priority\":\"0.5\",\"sitemap_changefreq\":\"\",\"categories\":0,\"tx_examples_related_pages\":0,\"tx_examples_cats\":0}',0,'0400$9731105d23ffb90c1d9c54b951c57807:f11830df10b4b0bca2db34810c2241b3'),(28,1648141124,2,'BE',1,0,2,'pages','{\"oldRecord\":{\"l10n_diffsource\":\"\"},\"newRecord\":{\"l10n_diffsource\":\"a:1:{s:4:\\\"slug\\\";N;}\"}}',0,'0400$a48f736696901c69dce4b58681c1dd2b:f11830df10b4b0bca2db34810c2241b3'),(29,1648141133,1,'BE',1,0,9,'tt_content','{\"uid\":9,\"rowDescription\":\"\",\"pid\":2,\"tstamp\":1648141133,\"crdate\":1648141133,\"cruser_id\":1,\"deleted\":0,\"hidden\":0,\"starttime\":0,\"endtime\":0,\"fe_group\":\"\",\"sorting\":256,\"editlock\":0,\"sys_language_uid\":0,\"l18n_parent\":0,\"l10n_source\":0,\"l10n_state\":null,\"t3_origuid\":0,\"l18n_diffsource\":\"\",\"t3ver_oid\":0,\"t3ver_wsid\":0,\"t3ver_state\":0,\"t3ver_stage\":0,\"t3ver_count\":0,\"t3ver_tstamp\":0,\"t3ver_move_id\":0,\"CType\":\"header\",\"header\":\"sss\",\"header_position\":\"\",\"bodytext\":null,\"bullets_type\":0,\"uploads_description\":0,\"uploads_type\":0,\"assets\":0,\"image\":0,\"imagewidth\":0,\"imageorient\":0,\"imagecols\":2,\"imageborder\":0,\"media\":0,\"layout\":0,\"frame_class\":\"default\",\"cols\":0,\"space_before_class\":\"\",\"space_after_class\":\"\",\"records\":null,\"pages\":null,\"colPos\":0,\"subheader\":\"\",\"header_link\":\"\",\"image_zoom\":0,\"header_layout\":\"0\",\"list_type\":\"\",\"sectionIndex\":1,\"linkToTop\":0,\"file_collections\":null,\"filelink_size\":0,\"filelink_sorting\":\"\",\"filelink_sorting_direction\":\"\",\"target\":\"\",\"date\":0,\"recursive\":0,\"imageheight\":0,\"pi_flexform\":null,\"accessibility_title\":\"\",\"accessibility_bypass\":0,\"accessibility_bypass_text\":\"\",\"selected_categories\":null,\"category_field\":\"\",\"table_class\":\"\",\"table_caption\":null,\"table_delimiter\":124,\"table_enclosure\":0,\"table_header_position\":0,\"table_tfoot\":0,\"tx_impexp_origuid\":0,\"categories\":0,\"tx_examples_noprint\":0}',0,'0400$a72ba6710cf6fca216c29951a7cf3896:367f4f227870d8e2a11496a182574aa3'),(30,1648141231,2,'BE',1,0,1,'pages','{\"oldRecord\":{\"perms_everybody\":0},\"newRecord\":{\"perms_everybody\":1}}',0,'0400$b0d76d511cff1aff771b57cce7931e5a:e175f7045d7ccbfb26ffcf279422c2e5'),(31,1648144694,1,'BE',1,0,1,'sys_template','{\"uid\":1,\"pid\":1,\"tstamp\":1648144694,\"crdate\":1648144694,\"cruser_id\":1,\"deleted\":0,\"hidden\":0,\"starttime\":0,\"endtime\":0,\"sorting\":256,\"description\":null,\"t3_origuid\":0,\"t3ver_oid\":0,\"t3ver_wsid\":0,\"t3ver_state\":0,\"t3ver_stage\":0,\"t3ver_count\":0,\"t3ver_tstamp\":0,\"t3ver_move_id\":0,\"title\":\"NEW SITE\",\"sitetitle\":\"\",\"root\":1,\"clear\":3,\"include_static_file\":null,\"constants\":null,\"config\":\"\\n# Default PAGE object:\\npage = PAGE\\npage.10 = TEXT\\npage.10.value = HELLO WORLD!\\n\",\"basedOn\":\"\",\"includeStaticAfterBasedOn\":0,\"static_file_mode\":0,\"tx_impexp_origuid\":0}',0,'0400$f78c4e65b39ab8cd74a6556c1f277923:35af6288617af54964e77af08c30949a'),(32,1648144886,2,'BE',1,0,8,'tt_content','{\"oldRecord\":{\"l18n_diffsource\":\"\"},\"newRecord\":{\"l18n_diffsource\":\"a:10:{s:5:\\\"CType\\\";N;s:6:\\\"colPos\\\";N;s:6:\\\"header\\\";N;s:9:\\\"subheader\\\";N;s:8:\\\"bodytext\\\";N;s:6:\\\"hidden\\\";N;s:9:\\\"starttime\\\";N;s:7:\\\"endtime\\\";N;s:8:\\\"fe_group\\\";N;s:8:\\\"editlock\\\";N;}\"}}',0,'0400$222c3fe9ae69064289c3f1801566b601:2097d84972a039cb6bfe093b17089287'),(33,1648145451,1,'BE',1,0,10,'tt_content','{\"uid\":10,\"rowDescription\":\"\",\"pid\":1,\"tstamp\":1648145451,\"crdate\":1648145451,\"cruser_id\":1,\"deleted\":0,\"hidden\":0,\"starttime\":0,\"endtime\":0,\"fe_group\":\"\",\"sorting\":256,\"editlock\":0,\"sys_language_uid\":0,\"l18n_parent\":0,\"l10n_source\":0,\"l10n_state\":null,\"t3_origuid\":0,\"l18n_diffsource\":\"\",\"t3ver_oid\":0,\"t3ver_wsid\":0,\"t3ver_state\":0,\"t3ver_stage\":0,\"t3ver_count\":0,\"t3ver_tstamp\":0,\"t3ver_move_id\":0,\"CType\":\"header\",\"header\":\"test2\",\"header_position\":\"\",\"bodytext\":null,\"bullets_type\":0,\"uploads_description\":0,\"uploads_type\":0,\"assets\":0,\"image\":0,\"imagewidth\":0,\"imageorient\":0,\"imagecols\":2,\"imageborder\":0,\"media\":0,\"layout\":0,\"frame_class\":\"default\",\"cols\":0,\"space_before_class\":\"\",\"space_after_class\":\"\",\"records\":null,\"pages\":null,\"colPos\":0,\"subheader\":\"\",\"header_link\":\"\",\"image_zoom\":0,\"header_layout\":\"0\",\"list_type\":\"\",\"sectionIndex\":1,\"linkToTop\":0,\"file_collections\":null,\"filelink_size\":0,\"filelink_sorting\":\"\",\"filelink_sorting_direction\":\"\",\"target\":\"\",\"date\":0,\"recursive\":0,\"imageheight\":0,\"pi_flexform\":null,\"accessibility_title\":\"\",\"accessibility_bypass\":0,\"accessibility_bypass_text\":\"\",\"selected_categories\":null,\"category_field\":\"\",\"table_class\":\"\",\"table_caption\":null,\"table_delimiter\":124,\"table_enclosure\":0,\"table_header_position\":0,\"table_tfoot\":0,\"tx_impexp_origuid\":0,\"categories\":0,\"tx_examples_noprint\":0}',0,'0400$36d5333c1b2143c9ee9814c67075cf2d:7ea9bfd0f5c1068d25caf6ccac9d6265'),(34,1648145529,2,'BE',1,0,2,'pages','{\"oldRecord\":{\"hidden\":1,\"l10n_diffsource\":\"a:1:{s:4:\\\"slug\\\";N;}\"},\"newRecord\":{\"hidden\":\"0\",\"l10n_diffsource\":\"a:50:{s:7:\\\"doktype\\\";N;s:5:\\\"title\\\";N;s:4:\\\"slug\\\";N;s:9:\\\"nav_title\\\";N;s:8:\\\"subtitle\\\";N;s:9:\\\"seo_title\\\";N;s:11:\\\"description\\\";N;s:8:\\\"no_index\\\";N;s:9:\\\"no_follow\\\";N;s:14:\\\"canonical_link\\\";N;s:18:\\\"sitemap_changefreq\\\";N;s:16:\\\"sitemap_priority\\\";N;s:8:\\\"og_title\\\";N;s:14:\\\"og_description\\\";N;s:8:\\\"og_image\\\";N;s:13:\\\"twitter_title\\\";N;s:19:\\\"twitter_description\\\";N;s:13:\\\"twitter_image\\\";N;s:12:\\\"twitter_card\\\";N;s:8:\\\"abstract\\\";N;s:8:\\\"keywords\\\";N;s:6:\\\"author\\\";N;s:12:\\\"author_email\\\";N;s:11:\\\"lastUpdated\\\";N;s:6:\\\"layout\\\";N;s:8:\\\"newUntil\\\";N;s:14:\\\"backend_layout\\\";N;s:25:\\\"backend_layout_next_level\\\";N;s:16:\\\"content_from_pid\\\";N;s:6:\\\"target\\\";N;s:13:\\\"cache_timeout\\\";N;s:10:\\\"cache_tags\\\";N;s:11:\\\"is_siteroot\\\";N;s:9:\\\"no_search\\\";N;s:13:\\\"php_tree_stop\\\";N;s:6:\\\"module\\\";N;s:5:\\\"media\\\";N;s:17:\\\"tsconfig_includes\\\";N;s:8:\\\"TSconfig\\\";N;s:8:\\\"l18n_cfg\\\";N;s:6:\\\"hidden\\\";N;s:8:\\\"nav_hide\\\";N;s:9:\\\"starttime\\\";N;s:7:\\\"endtime\\\";N;s:16:\\\"extendToSubpages\\\";N;s:8:\\\"fe_group\\\";N;s:13:\\\"fe_login_mode\\\";N;s:8:\\\"editlock\\\";N;s:10:\\\"categories\\\";N;s:14:\\\"rowDescription\\\";N;}\"}}',0,'0400$8334e2a7419c0aaa8d5c3179b9c72ccc:f11830df10b4b0bca2db34810c2241b3'),(35,1648145558,1,'BE',1,0,2,'sys_template','{\"uid\":2,\"pid\":2,\"tstamp\":1648145558,\"crdate\":1648145558,\"cruser_id\":1,\"deleted\":0,\"hidden\":0,\"starttime\":0,\"endtime\":0,\"sorting\":256,\"description\":null,\"t3_origuid\":0,\"t3ver_oid\":0,\"t3ver_wsid\":0,\"t3ver_state\":0,\"t3ver_stage\":0,\"t3ver_count\":0,\"t3ver_tstamp\":0,\"t3ver_move_id\":0,\"title\":\"NEW SITE\",\"sitetitle\":\"\",\"root\":1,\"clear\":3,\"include_static_file\":null,\"constants\":null,\"config\":\"\\n# Default PAGE object:\\npage = PAGE\\npage.10 = TEXT\\npage.10.value = HELLO WORLD!\\n\",\"basedOn\":\"\",\"includeStaticAfterBasedOn\":0,\"static_file_mode\":0,\"tx_impexp_origuid\":0}',0,'0400$99e9e705bbb598fd8ad2394de5915434:092a6d165d49be6de27c1b2c5d7d6698'),(36,1648145841,2,'BE',1,0,1,'pages','{\"oldRecord\":{\"layout\":0,\"l10n_diffsource\":\"a:33:{s:7:\\\"doktype\\\";N;s:5:\\\"title\\\";N;s:4:\\\"slug\\\";N;s:9:\\\"nav_title\\\";N;s:8:\\\"subtitle\\\";N;s:13:\\\"shortcut_mode\\\";N;s:8:\\\"shortcut\\\";N;s:8:\\\"abstract\\\";N;s:6:\\\"author\\\";N;s:12:\\\"author_email\\\";N;s:11:\\\"lastUpdated\\\";N;s:6:\\\"layout\\\";N;s:8:\\\"newUntil\\\";N;s:14:\\\"backend_layout\\\";N;s:25:\\\"backend_layout_next_level\\\";N;s:6:\\\"target\\\";N;s:11:\\\"is_siteroot\\\";N;s:9:\\\"no_search\\\";N;s:13:\\\"php_tree_stop\\\";N;s:5:\\\"media\\\";N;s:17:\\\"tsconfig_includes\\\";N;s:8:\\\"TSconfig\\\";N;s:8:\\\"l18n_cfg\\\";N;s:6:\\\"hidden\\\";N;s:8:\\\"nav_hide\\\";N;s:9:\\\"starttime\\\";N;s:7:\\\"endtime\\\";N;s:16:\\\"extendToSubpages\\\";N;s:8:\\\"fe_group\\\";N;s:13:\\\"fe_login_mode\\\";N;s:8:\\\"editlock\\\";N;s:10:\\\"categories\\\";N;s:14:\\\"rowDescription\\\";N;}\"},\"newRecord\":{\"layout\":\"1\",\"l10n_diffsource\":\"a:50:{s:7:\\\"doktype\\\";N;s:5:\\\"title\\\";N;s:4:\\\"slug\\\";N;s:9:\\\"nav_title\\\";N;s:8:\\\"subtitle\\\";N;s:9:\\\"seo_title\\\";N;s:11:\\\"description\\\";N;s:8:\\\"no_index\\\";N;s:9:\\\"no_follow\\\";N;s:14:\\\"canonical_link\\\";N;s:18:\\\"sitemap_changefreq\\\";N;s:16:\\\"sitemap_priority\\\";N;s:8:\\\"og_title\\\";N;s:14:\\\"og_description\\\";N;s:8:\\\"og_image\\\";N;s:13:\\\"twitter_title\\\";N;s:19:\\\"twitter_description\\\";N;s:13:\\\"twitter_image\\\";N;s:12:\\\"twitter_card\\\";N;s:8:\\\"abstract\\\";N;s:8:\\\"keywords\\\";N;s:6:\\\"author\\\";N;s:12:\\\"author_email\\\";N;s:11:\\\"lastUpdated\\\";N;s:6:\\\"layout\\\";N;s:8:\\\"newUntil\\\";N;s:14:\\\"backend_layout\\\";N;s:25:\\\"backend_layout_next_level\\\";N;s:16:\\\"content_from_pid\\\";N;s:6:\\\"target\\\";N;s:13:\\\"cache_timeout\\\";N;s:10:\\\"cache_tags\\\";N;s:11:\\\"is_siteroot\\\";N;s:9:\\\"no_search\\\";N;s:13:\\\"php_tree_stop\\\";N;s:6:\\\"module\\\";N;s:5:\\\"media\\\";N;s:17:\\\"tsconfig_includes\\\";N;s:8:\\\"TSconfig\\\";N;s:8:\\\"l18n_cfg\\\";N;s:6:\\\"hidden\\\";N;s:8:\\\"nav_hide\\\";N;s:9:\\\"starttime\\\";N;s:7:\\\"endtime\\\";N;s:16:\\\"extendToSubpages\\\";N;s:8:\\\"fe_group\\\";N;s:13:\\\"fe_login_mode\\\";N;s:8:\\\"editlock\\\";N;s:10:\\\"categories\\\";N;s:14:\\\"rowDescription\\\";N;}\"}}',0,'0400$b7cf6dad2e22d684fa3e434781e28ed6:e175f7045d7ccbfb26ffcf279422c2e5'),(37,1648145853,2,'BE',1,0,1,'pages','{\"oldRecord\":{\"backend_layout\":\"\",\"backend_layout_next_level\":\"\"},\"newRecord\":{\"backend_layout\":\"pagets__default\",\"backend_layout_next_level\":\"pagets__default\"}}',0,'0400$a6d4449b30d13269785db80a3c7ac6ab:e175f7045d7ccbfb26ffcf279422c2e5'),(38,1648146212,2,'BE',1,0,2,'pages','{\"oldRecord\":{\"layout\":0,\"backend_layout\":\"\",\"backend_layout_next_level\":\"\"},\"newRecord\":{\"layout\":\"2\",\"backend_layout\":\"pagets__default\",\"backend_layout_next_level\":\"pagets__default\"}}',0,'0400$f240dcc92f4531b16c3d2eb00eb63b03:f11830df10b4b0bca2db34810c2241b3'),(39,1648146226,2,'BE',1,0,2,'pages','{\"oldRecord\":{\"layout\":2},\"newRecord\":{\"layout\":\"3\"}}',0,'0400$b9eee1e1863fb77715393014ea7a1cf8:f11830df10b4b0bca2db34810c2241b3'),(40,1648146360,2,'BE',1,0,2,'pages','{\"oldRecord\":{\"doktype\":1},\"newRecord\":{\"doktype\":\"4\"}}',0,'0400$74cab092228d8907e916e7e7dfcadbad:f11830df10b4b0bca2db34810c2241b3'),(41,1648146568,4,'BE',1,0,2,'sys_template',NULL,0,'0400$24d7a2a75b2da36af0da8bff5fd93cb1:092a6d165d49be6de27c1b2c5d7d6698'),(42,1648146568,4,'BE',1,0,9,'tt_content',NULL,0,'0400$24d7a2a75b2da36af0da8bff5fd93cb1:367f4f227870d8e2a11496a182574aa3'),(43,1648146568,4,'BE',1,0,2,'pages',NULL,0,'0400$24d7a2a75b2da36af0da8bff5fd93cb1:f11830df10b4b0bca2db34810c2241b3'),(44,1648146650,2,'BE',1,0,1,'sys_template','{\"oldRecord\":{\"config\":\"\\n# Default PAGE object:\\npage = PAGE\\npage.10 = TEXT\\npage.10.value = HELLO WORLD!\\n\"},\"newRecord\":{\"config\":\"page = PAGE\\r\\npage.10 = FLUIDTEMPLATE\\r\\npage.10 {\\r\\n   templateName = Default\\r\\n   layoutRootPaths {\\r\\n      10 = EXT:sitepackage\\/Resources\\/Private\\/Layouts\\r\\n   }\\r\\n   partialRootPaths {\\r\\n      10 = EXT:sitepackage\\/Resources\\/Private\\/Partials\\r\\n   }\\r\\n   templateRootPaths {\\r\\n      10 = EXT:sitepackage\\/Resources\\/Private\\/Templates\\r\\n   }\\r\\n   variables {\\r\\n      foo = TEXT\\r\\n      foo.value = bar\\r\\n   }\\r\\n}\"}}',0,'0400$6d99725b99899ff22f99e9e54520729d:35af6288617af54964e77af08c30949a'),(45,1648194213,2,'BE',1,0,1,'sys_template','{\"oldRecord\":{\"config\":\"page = PAGE\\r\\npage.10 = FLUIDTEMPLATE\\r\\npage.10 {\\r\\n   templateName = Default\\r\\n   layoutRootPaths {\\r\\n      10 = EXT:sitepackage\\/Resources\\/Private\\/Layouts\\r\\n   }\\r\\n   partialRootPaths {\\r\\n      10 = EXT:sitepackage\\/Resources\\/Private\\/Partials\\r\\n   }\\r\\n   templateRootPaths {\\r\\n      10 = EXT:sitepackage\\/Resources\\/Private\\/Templates\\r\\n   }\\r\\n   variables {\\r\\n      foo = TEXT\\r\\n      foo.value = bar\\r\\n   }\\r\\n}\"},\"newRecord\":{\"config\":\"\"}}',0,'0400$54b20fed6af3f3200ed870a4a8debad5:35af6288617af54964e77af08c30949a'),(46,1648197673,2,'BE',1,0,1,'sys_template','{\"oldRecord\":{\"config\":\"\"},\"newRecord\":{\"config\":\"page = PAGE\\r\\npage {\\r\\n  bodyTag = <body>\\r\\n  typeNum = 0\\r\\n  meta {\\r\\n\\r\\n  }\\r\\n  10 = TEMPLATE\\r\\n  10 {\\r\\n    template = FILE\\r\\n    template.file = fileadmin\\/templates\\/index.html\\r\\n  }\\r\\n}\\r\\n\"}}',0,'0400$3bbcc672caa4f90d683f511856509897:35af6288617af54964e77af08c30949a'),(47,1648198482,2,'BE',1,0,1,'sys_template','{\"oldRecord\":{\"config\":\"page = PAGE\\r\\npage {\\r\\n  bodyTag = <body>\\r\\n  typeNum = 0\\r\\n  meta {\\r\\n\\r\\n  }\\r\\n  10 = TEMPLATE\\r\\n  10 {\\r\\n    template = FILE\\r\\n    template.file = fileadmin\\/templates\\/index.html\\r\\n  }\\r\\n}\\r\\n\"},\"newRecord\":{\"config\":\"page = PAGE\\r\\npage.10 = FLUIDTEMPLATE\\r\\npage.10 {\\r\\n   templateName = Default\\r\\n   layoutRootPaths {\\r\\n      10 = EXT:sitepackage\\/Resources\\/Private\\/Layouts\\r\\n   }\\r\\n   partialRootPaths {\\r\\n      10 = EXT:sitepackage\\/Resources\\/Private\\/Partials\\r\\n   }\\r\\n   templateRootPaths {\\r\\n      10 = EXT:sitepackage\\/Resources\\/Private\\/Templates\\r\\n   }\\r\\n   variables {\\r\\n      foo = TEXT\\r\\n      foo.value = bar\\r\\n   }\\r\\n}\"}}',0,'0400$ae588cfa4548945e2a4b55b5f3a7d373:35af6288617af54964e77af08c30949a'),(48,1648199560,2,'BE',1,0,1,'sys_template','{\"oldRecord\":{\"include_static_file\":null},\"newRecord\":{\"include_static_file\":\"EXT:fluid_styled_content\\/Configuration\\/TypoScript\\/,EXT:fluid_styled_content\\/Configuration\\/TypoScript\\/Styling\\/,EXT:sampleextension\\/Configuration\\/TypoScript\"}}',0,'0400$41962821d627894012b0d4eb924ef75b:35af6288617af54964e77af08c30949a'),(49,1648199638,2,'BE',1,0,1,'sys_template','{\"oldRecord\":{\"config\":\"page = PAGE\\r\\npage.10 = FLUIDTEMPLATE\\r\\npage.10 {\\r\\n   templateName = Default\\r\\n   layoutRootPaths {\\r\\n      10 = EXT:sitepackage\\/Resources\\/Private\\/Layouts\\r\\n   }\\r\\n   partialRootPaths {\\r\\n      10 = EXT:sitepackage\\/Resources\\/Private\\/Partials\\r\\n   }\\r\\n   templateRootPaths {\\r\\n      10 = EXT:sitepackage\\/Resources\\/Private\\/Templates\\r\\n   }\\r\\n   variables {\\r\\n      foo = TEXT\\r\\n      foo.value = bar\\r\\n   }\\r\\n}\"},\"newRecord\":{\"config\":\"lib {\\r\\n   topNavigation = HMENU\\r\\n   topNavigation {\\r\\n      1 = TMENU\\r\\n      1.NO.linkWrap = | |*| &nbsp;&nbsp;&nbsp; |*|\\r\\n   }\\r\\n   breadcrumbTrail = HMENU\\r\\n   breadcrumbTrail {\\r\\n      special = rootline\\r\\n      special.range = 0|-1\\r\\n      1 = TMENU\\r\\n      1.NO {\\r\\n         stdWrap.field = nav_title \\/\\/ title\\r\\n         ATagTitle.field = nav_title \\/\\/ title\\r\\n         linkWrap = | |*| &nbsp;&raquo;&nbsp; |*|\\r\\n      }\\r\\n      1.CUR = 1\\r\\n      1.CUR {\\r\\n         doNotLinkIt = 1\\r\\n         stdWrap.field = nav_title \\/\\/ title\\r\\n         linkWrap = | |*| &nbsp;&raquo;&nbsp;<em>|<\\/em>|\\r\\n      }\\r\\n   }\\r\\n}\"}}',0,'0400$a139cddf6e4d220cb4180865e3f6cdc5:35af6288617af54964e77af08c30949a'),(50,1648199660,1,'BE',1,0,3,'pages','{\"uid\":3,\"pid\":1,\"tstamp\":1648199660,\"crdate\":1648199660,\"cruser_id\":1,\"deleted\":0,\"hidden\":1,\"starttime\":0,\"endtime\":0,\"fe_group\":\"\",\"sorting\":256,\"rowDescription\":\"\",\"editlock\":0,\"sys_language_uid\":0,\"l10n_parent\":0,\"l10n_source\":0,\"l10n_state\":null,\"t3_origuid\":0,\"l10n_diffsource\":\"\",\"t3ver_oid\":0,\"t3ver_wsid\":0,\"t3ver_state\":0,\"t3ver_stage\":0,\"t3ver_count\":0,\"t3ver_tstamp\":0,\"t3ver_move_id\":0,\"perms_userid\":1,\"perms_groupid\":0,\"perms_user\":31,\"perms_group\":27,\"perms_everybody\":0,\"title\":\"SingleColumn\",\"slug\":\"\\/home\\/singlecolumn\",\"doktype\":1,\"TSconfig\":\"\",\"is_siteroot\":0,\"php_tree_stop\":0,\"url\":\"\",\"shortcut\":0,\"shortcut_mode\":0,\"subtitle\":\"\",\"layout\":0,\"target\":\"\",\"media\":0,\"lastUpdated\":0,\"keywords\":\"\",\"cache_timeout\":0,\"cache_tags\":\"\",\"newUntil\":0,\"description\":\"\",\"no_search\":0,\"SYS_LASTCHANGED\":0,\"abstract\":\"\",\"module\":\"\",\"extendToSubpages\":0,\"author\":\"\",\"author_email\":\"\",\"nav_title\":\"\",\"nav_hide\":0,\"content_from_pid\":0,\"mount_pid\":0,\"mount_pid_ol\":0,\"l18n_cfg\":0,\"fe_login_mode\":0,\"backend_layout\":\"\",\"backend_layout_next_level\":\"\",\"tsconfig_includes\":\"\",\"legacy_overlay_uid\":0,\"tx_impexp_origuid\":0,\"seo_title\":\"\",\"no_index\":0,\"no_follow\":0,\"og_title\":\"\",\"og_description\":\"\",\"og_image\":0,\"twitter_title\":\"\",\"twitter_description\":\"\",\"twitter_image\":0,\"twitter_card\":\"summary\",\"canonical_link\":\"\",\"sitemap_priority\":\"0.5\",\"sitemap_changefreq\":\"\",\"categories\":0,\"tx_examples_related_pages\":0,\"tx_examples_cats\":0}',0,'0400$6adac12ed5e85f57553726a8606ee463:fe15eeb7d49e64e2cea91ab53fcf0db1'),(51,1648199682,1,'BE',1,0,3,'sys_template','{\"uid\":3,\"pid\":3,\"tstamp\":1648199682,\"crdate\":1648199682,\"cruser_id\":1,\"deleted\":0,\"hidden\":0,\"starttime\":0,\"endtime\":0,\"sorting\":256,\"description\":null,\"t3_origuid\":0,\"t3ver_oid\":0,\"t3ver_wsid\":0,\"t3ver_state\":0,\"t3ver_stage\":0,\"t3ver_count\":0,\"t3ver_tstamp\":0,\"t3ver_move_id\":0,\"title\":\"NEW SITE\",\"sitetitle\":\"\",\"root\":1,\"clear\":3,\"include_static_file\":null,\"constants\":null,\"config\":\"\\n# Default PAGE object:\\npage = PAGE\\npage.10 = TEXT\\npage.10.value = HELLO WORLD!\\n\",\"basedOn\":\"\",\"includeStaticAfterBasedOn\":0,\"static_file_mode\":0,\"tx_impexp_origuid\":0}',0,'0400$472507bed9221ca8848b88e784a0e8cc:b88ca63c030b2d23227de0950118f07a'),(52,1648322009,2,'BE',1,0,1,'sys_template','{\"oldRecord\":{\"title\":\"NEW SITE\"},\"newRecord\":{\"title\":\"main\"}}',0,'0400$889cb7f2e4549b357ba4d7bc240713b6:35af6288617af54964e77af08c30949a'),(53,1648322021,2,'BE',1,0,3,'sys_template','{\"oldRecord\":{\"title\":\"NEW SITE\"},\"newRecord\":{\"title\":\"single column\"}}',0,'0400$17de595dcc56318ed02fd095ebdfb48b:b88ca63c030b2d23227de0950118f07a'),(54,1648322067,2,'BE',1,0,3,'sys_template','{\"oldRecord\":{\"config\":\"\\n# Default PAGE object:\\npage = PAGE\\npage.10 = TEXT\\npage.10.value = HELLO WORLD!\\n\"},\"newRecord\":{\"config\":\"page = PAGE\\r\\npage.1 = FLUIDTEMPLATE\\r\\npage.1 {\\r\\n   templateName = Basic1Column\\r\\n   templateRootPaths.1 = fileadmin\\/sitedesign\\/Resources\\/Private\\/Templates\\r\\n   variables {\\r\\n      contentNormal < styles.content.get\\r\\n   }\\r\\n}\"}}',0,'0400$e3ebd01ba5b37e546914e1bfce50b695:b88ca63c030b2d23227de0950118f07a'),(55,1648328952,2,'BE',1,0,8,'tt_content','{\"oldRecord\":{\"buttonurl\":null,\"buttontext\":null,\"l18n_diffsource\":\"a:10:{s:5:\\\"CType\\\";N;s:6:\\\"colPos\\\";N;s:6:\\\"header\\\";N;s:9:\\\"subheader\\\";N;s:8:\\\"bodytext\\\";N;s:6:\\\"hidden\\\";N;s:9:\\\"starttime\\\";N;s:7:\\\"endtime\\\";N;s:8:\\\"fe_group\\\";N;s:8:\\\"editlock\\\";N;}\"},\"newRecord\":{\"buttonurl\":\"https:\\/\\/google.pl google.pl\",\"buttontext\":\"ssfdser\",\"l18n_diffsource\":\"a:12:{s:5:\\\"CType\\\";N;s:6:\\\"colPos\\\";N;s:6:\\\"header\\\";N;s:9:\\\"subheader\\\";N;s:8:\\\"bodytext\\\";N;s:9:\\\"buttonurl\\\";N;s:10:\\\"buttontext\\\";N;s:6:\\\"hidden\\\";N;s:9:\\\"starttime\\\";N;s:7:\\\"endtime\\\";N;s:8:\\\"fe_group\\\";N;s:8:\\\"editlock\\\";N;}\"}}',0,'0400$c609567150d1932deb18ae00ab8d02c0:2097d84972a039cb6bfe093b17089287'),(56,1648330034,2,'BE',1,0,8,'tt_content','{\"oldRecord\":{\"CType\":\"sampleextension_jumbotron\"},\"newRecord\":{\"CType\":\"textmedia\"}}',0,'0400$3b9f24bff69a87c9ba36b77626afa1bd:2097d84972a039cb6bfe093b17089287'),(57,1648330152,2,'BE',1,0,8,'tt_content','{\"oldRecord\":{\"CType\":\"textmedia\",\"l18n_diffsource\":\"a:12:{s:5:\\\"CType\\\";N;s:6:\\\"colPos\\\";N;s:6:\\\"header\\\";N;s:9:\\\"subheader\\\";N;s:8:\\\"bodytext\\\";N;s:9:\\\"buttonurl\\\";N;s:10:\\\"buttontext\\\";N;s:6:\\\"hidden\\\";N;s:9:\\\"starttime\\\";N;s:7:\\\"endtime\\\";N;s:8:\\\"fe_group\\\";N;s:8:\\\"editlock\\\";N;}\"},\"newRecord\":{\"CType\":\"sampleextension_jumbotron\",\"l18n_diffsource\":\"a:30:{s:5:\\\"CType\\\";N;s:6:\\\"colPos\\\";N;s:6:\\\"header\\\";N;s:13:\\\"header_layout\\\";N;s:15:\\\"header_position\\\";N;s:4:\\\"date\\\";N;s:11:\\\"header_link\\\";N;s:9:\\\"subheader\\\";N;s:8:\\\"bodytext\\\";N;s:6:\\\"assets\\\";N;s:10:\\\"imagewidth\\\";N;s:11:\\\"imageheight\\\";N;s:11:\\\"imageborder\\\";N;s:11:\\\"imageorient\\\";N;s:9:\\\"imagecols\\\";N;s:10:\\\"image_zoom\\\";N;s:6:\\\"layout\\\";N;s:11:\\\"frame_class\\\";N;s:18:\\\"space_before_class\\\";N;s:17:\\\"space_after_class\\\";N;s:12:\\\"sectionIndex\\\";N;s:9:\\\"linkToTop\\\";N;s:16:\\\"sys_language_uid\\\";N;s:6:\\\"hidden\\\";N;s:9:\\\"starttime\\\";N;s:7:\\\"endtime\\\";N;s:8:\\\"fe_group\\\";N;s:8:\\\"editlock\\\";N;s:10:\\\"categories\\\";N;s:14:\\\"rowDescription\\\";N;}\"}}',0,'0400$38b33d53d1cc5ee49fe8fe385fa52e3e:2097d84972a039cb6bfe093b17089287'),(58,1648330164,2,'BE',1,0,8,'tt_content','{\"oldRecord\":{\"buttontext\":\"ssfdser\",\"l18n_diffsource\":\"a:30:{s:5:\\\"CType\\\";N;s:6:\\\"colPos\\\";N;s:6:\\\"header\\\";N;s:13:\\\"header_layout\\\";N;s:15:\\\"header_position\\\";N;s:4:\\\"date\\\";N;s:11:\\\"header_link\\\";N;s:9:\\\"subheader\\\";N;s:8:\\\"bodytext\\\";N;s:6:\\\"assets\\\";N;s:10:\\\"imagewidth\\\";N;s:11:\\\"imageheight\\\";N;s:11:\\\"imageborder\\\";N;s:11:\\\"imageorient\\\";N;s:9:\\\"imagecols\\\";N;s:10:\\\"image_zoom\\\";N;s:6:\\\"layout\\\";N;s:11:\\\"frame_class\\\";N;s:18:\\\"space_before_class\\\";N;s:17:\\\"space_after_class\\\";N;s:12:\\\"sectionIndex\\\";N;s:9:\\\"linkToTop\\\";N;s:16:\\\"sys_language_uid\\\";N;s:6:\\\"hidden\\\";N;s:9:\\\"starttime\\\";N;s:7:\\\"endtime\\\";N;s:8:\\\"fe_group\\\";N;s:8:\\\"editlock\\\";N;s:10:\\\"categories\\\";N;s:14:\\\"rowDescription\\\";N;}\"},\"newRecord\":{\"buttontext\":\"sample btn text\",\"l18n_diffsource\":\"a:12:{s:5:\\\"CType\\\";N;s:6:\\\"colPos\\\";N;s:6:\\\"header\\\";N;s:9:\\\"subheader\\\";N;s:8:\\\"bodytext\\\";N;s:9:\\\"buttonurl\\\";N;s:10:\\\"buttontext\\\";N;s:6:\\\"hidden\\\";N;s:9:\\\"starttime\\\";N;s:7:\\\"endtime\\\";N;s:8:\\\"fe_group\\\";N;s:8:\\\"editlock\\\";N;}\"}}',0,'0400$5e350b17db4c1ae9d859ff9cd402691c:2097d84972a039cb6bfe093b17089287'),(59,1648330186,4,'BE',1,0,3,'sys_template',NULL,0,'0400$673a3ad75a63877311c65917a401c6ca:b88ca63c030b2d23227de0950118f07a'),(60,1648330186,4,'BE',1,0,3,'pages',NULL,0,'0400$673a3ad75a63877311c65917a401c6ca:fe15eeb7d49e64e2cea91ab53fcf0db1'),(61,1648330229,2,'BE',1,0,10,'tt_content','{\"oldRecord\":{\"header_link\":\"\",\"l18n_diffsource\":\"\"},\"newRecord\":{\"header_link\":\"https:\\/\\/google.pl google.pl\",\"l18n_diffsource\":\"a:22:{s:5:\\\"CType\\\";N;s:6:\\\"colPos\\\";N;s:6:\\\"header\\\";N;s:13:\\\"header_layout\\\";N;s:15:\\\"header_position\\\";N;s:4:\\\"date\\\";N;s:11:\\\"header_link\\\";N;s:9:\\\"subheader\\\";N;s:6:\\\"layout\\\";N;s:11:\\\"frame_class\\\";N;s:18:\\\"space_before_class\\\";N;s:17:\\\"space_after_class\\\";N;s:12:\\\"sectionIndex\\\";N;s:9:\\\"linkToTop\\\";N;s:16:\\\"sys_language_uid\\\";N;s:6:\\\"hidden\\\";N;s:9:\\\"starttime\\\";N;s:7:\\\"endtime\\\";N;s:8:\\\"fe_group\\\";N;s:8:\\\"editlock\\\";N;s:10:\\\"categories\\\";N;s:14:\\\"rowDescription\\\";N;}\"}}',0,'0400$11716659f23688fa1042169fa539c177:7ea9bfd0f5c1068d25caf6ccac9d6265');
/*!40000 ALTER TABLE `sys_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_language`
--

DROP TABLE IF EXISTS `sys_language`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_language` (
  `uid` int unsigned NOT NULL AUTO_INCREMENT,
  `pid` int unsigned NOT NULL DEFAULT '0',
  `tstamp` int unsigned NOT NULL DEFAULT '0',
  `hidden` smallint unsigned NOT NULL DEFAULT '0',
  `sorting` int NOT NULL DEFAULT '0',
  `title` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `flag` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `language_isocode` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`,`hidden`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_language`
--

LOCK TABLES `sys_language` WRITE;
/*!40000 ALTER TABLE `sys_language` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_language` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_lockedrecords`
--

DROP TABLE IF EXISTS `sys_lockedrecords`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_lockedrecords` (
  `uid` int unsigned NOT NULL AUTO_INCREMENT,
  `userid` int unsigned NOT NULL DEFAULT '0',
  `tstamp` int unsigned NOT NULL DEFAULT '0',
  `record_table` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `record_uid` int NOT NULL DEFAULT '0',
  `record_pid` int NOT NULL DEFAULT '0',
  `username` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `feuserid` int unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `event` (`userid`,`tstamp`)
) ENGINE=InnoDB AUTO_INCREMENT=111 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_lockedrecords`
--

LOCK TABLES `sys_lockedrecords` WRITE;
/*!40000 ALTER TABLE `sys_lockedrecords` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_lockedrecords` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_log`
--

DROP TABLE IF EXISTS `sys_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_log` (
  `uid` int unsigned NOT NULL AUTO_INCREMENT,
  `pid` int unsigned NOT NULL DEFAULT '0',
  `tstamp` int unsigned NOT NULL DEFAULT '0',
  `userid` int unsigned NOT NULL DEFAULT '0',
  `action` smallint unsigned NOT NULL DEFAULT '0',
  `recuid` int unsigned NOT NULL DEFAULT '0',
  `tablename` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `recpid` int NOT NULL DEFAULT '0',
  `error` smallint unsigned NOT NULL DEFAULT '0',
  `details` text COLLATE utf8mb4_unicode_ci,
  `type` smallint unsigned NOT NULL DEFAULT '0',
  `details_nr` smallint NOT NULL DEFAULT '0',
  `IP` varchar(39) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `log_data` text COLLATE utf8mb4_unicode_ci,
  `event_pid` int NOT NULL DEFAULT '-1',
  `workspace` int NOT NULL DEFAULT '0',
  `NEWid` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `request_id` varchar(13) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `time_micro` double NOT NULL DEFAULT '0',
  `component` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `level` smallint unsigned NOT NULL DEFAULT '0',
  `message` text COLLATE utf8mb4_unicode_ci,
  `data` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`uid`),
  KEY `event` (`userid`,`event_pid`),
  KEY `recuidIdx` (`recuid`),
  KEY `user_auth` (`type`,`action`,`tstamp`),
  KEY `request` (`request_id`),
  KEY `combined_1` (`tstamp`,`type`,`userid`),
  KEY `errorcount` (`tstamp`,`error`),
  KEY `parent` (`pid`)
) ENGINE=InnoDB AUTO_INCREMENT=140 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_log`
--

LOCK TABLES `sys_log` WRITE;
/*!40000 ALTER TABLE `sys_log` DISABLE KEYS */;
INSERT INTO `sys_log` VALUES (1,0,1648067631,1,1,0,'',0,0,'User %s logged in from ###IP###',255,1,'::1','a:1:{i:0;s:5:\"typo3\";}',-1,-99,'','',0,'',0,NULL,NULL),(2,0,1648125145,1,1,0,'',0,0,'User %s logged in from ###IP###',255,1,'::1','a:1:{i:0;s:5:\"typo3\";}',-1,-99,'','',0,'',0,NULL,NULL),(3,0,1648125748,1,1,1,'pages',0,0,'Record \'%s\' (%s) was inserted on page \'%s\' (%s)',1,10,'::1','a:4:{i:0;s:4:\"Home\";i:1;s:7:\"pages:1\";i:2;s:12:\"[root-level]\";i:3;i:0;}',0,0,'NEW623c66992c927805873064','',0,'',0,NULL,NULL),(4,0,1648125748,1,2,1,'pages',0,0,'Record \'%s\' (%s) was updated. (Online).',1,10,'::1','a:3:{i:0;s:4:\"Home\";i:1;s:7:\"pages:1\";s:7:\"history\";s:1:\"2\";}',1,0,'','',0,'',0,NULL,NULL),(5,0,1648126380,1,2,1,'pages',0,0,'Record \'%s\' (%s) was updated. (Online).',1,10,'::1','a:3:{i:0;s:4:\"Home\";i:1;s:7:\"pages:1\";s:7:\"history\";s:1:\"3\";}',1,0,'','',0,'',0,NULL,NULL),(6,0,1648129018,1,1,1,'tt_content',0,0,'Record \'%s\' (%s) was inserted on page \'%s\' (%s)',1,10,'::1','a:4:{i:0;s:10:\"[No title]\";i:1;s:12:\"tt_content:1\";i:2;s:4:\"Home\";i:3;i:1;}',1,0,'NEW623c73e337b1b132937726','',0,'',0,NULL,NULL),(7,0,1648129093,0,0,0,'',0,2,'Core: Error handler (BE): PHP Warning: Invalid argument supplied for foreach() in /var/www/html/typo3_test_task/public/typo3/sysext/install/Classes/Controller/SettingsController.php line 447',5,0,'::1','',-1,0,'','',0,'',1,NULL,NULL),(8,0,1648129167,1,2,1,'tt_content',0,0,'Record \'%s\' (%s) was updated. (Online).',1,10,'::1','a:3:{i:0;s:3:\"aaa\";i:1;s:12:\"tt_content:1\";s:7:\"history\";s:1:\"5\";}',1,0,'','',0,'',0,NULL,NULL),(9,0,1648129894,1,2,1,'tt_content',0,0,'Record \'%s\' (%s) was updated. (Online).',1,10,'::1','a:3:{i:0;s:3:\"aaa\";i:1;s:12:\"tt_content:1\";s:7:\"history\";s:1:\"6\";}',1,0,'','',0,'',0,NULL,NULL),(10,0,1648129898,1,2,1,'tt_content',0,0,'Record \'%s\' (%s) was updated. (Online).',1,10,'::1','a:3:{i:0;s:3:\"aaa\";i:1;s:12:\"tt_content:1\";s:7:\"history\";s:1:\"7\";}',1,0,'','',0,'',0,NULL,NULL),(11,0,1648130188,1,1,2,'tt_content',0,0,'Record \'%s\' (%s) was inserted on page \'%s\' (%s)',1,10,'::1','a:4:{i:0;s:10:\"[No title]\";i:1;s:12:\"tt_content:2\";i:2;s:4:\"Home\";i:3;i:1;}',1,0,'NEW623c787cdf9ec275383895','',0,'',0,NULL,NULL),(12,0,1648130812,1,3,2,'tt_content',0,0,'Record \'%s\' (%s) was deleted from page \'%s\' (%s)',1,0,'::1','a:4:{i:0;s:10:\"[No title]\";i:1;s:12:\"tt_content:2\";i:2;s:4:\"Home\";i:3;i:1;}',1,0,'','',0,'',0,NULL,NULL),(13,0,1648131355,1,1,3,'tt_content',0,0,'Record \'%s\' (%s) was inserted on page \'%s\' (%s)',1,10,'::1','a:4:{i:0;s:10:\"[No title]\";i:1;s:12:\"tt_content:3\";i:2;s:4:\"Home\";i:3;i:1;}',1,0,'NEW623c7b0ab3cdf068663569','',0,'',0,NULL,NULL),(14,0,1648131976,1,0,0,'',0,2,'Core: Exception handler (WEB): Uncaught TYPO3 Exception: #1278450972: Class Examples\\Controller\\T3docs\\Examples\\Controller\\ModuleControllerController does not exist. Reflection failed. | TYPO3\\CMS\\Extbase\\Reflection\\Exception\\UnknownClassException thrown in file /var/www/html/typo3_test_task/public/typo3/sysext/extbase/Classes/Reflection/ReflectionService.php in line 125. Requested URL: http://localhost/typo3_test_task/public/typo3/index.php?route=%%2Fmodule%%2Ftools%%2FExamplesExamples&token=--AnonymizedToken--',5,0,'::1','',-1,0,'','',0,'',0,NULL,NULL),(15,0,1648132100,1,1,4,'tt_content',0,0,'Record \'%s\' (%s) was inserted on page \'%s\' (%s)',1,10,'::1','a:4:{i:0;s:10:\"[No title]\";i:1;s:12:\"tt_content:4\";i:2;s:4:\"Home\";i:3;i:1;}',1,0,'NEW623c8000cac99394512501','',0,'',0,NULL,NULL),(16,0,1648132260,1,1,5,'tt_content',0,0,'Record \'%s\' (%s) was inserted on page \'%s\' (%s)',1,10,'::1','a:4:{i:0;s:10:\"[No title]\";i:1;s:12:\"tt_content:5\";i:2;s:4:\"Home\";i:3;i:1;}',1,0,'NEW623c809bf2b91124033131','',0,'',0,NULL,NULL),(17,0,1648134857,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',3,0,'::1','a:2:{i:0;s:5:\"typo3\";i:1;s:3:\"all\";}',-1,0,'','',0,'',0,NULL,NULL),(18,0,1648134960,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',3,0,'::1','a:2:{i:0;s:5:\"typo3\";i:1;s:3:\"all\";}',-1,0,'','',0,'',0,NULL,NULL),(19,0,1648135739,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',3,0,'::1','a:2:{i:0;s:5:\"typo3\";i:1;s:3:\"all\";}',-1,0,'','',0,'',0,NULL,NULL),(20,0,1648136444,1,1,6,'tt_content',0,0,'Record \'%s\' (%s) was inserted on page \'%s\' (%s)',1,10,'::1','a:4:{i:0;s:10:\"[No title]\";i:1;s:12:\"tt_content:6\";i:2;s:4:\"Home\";i:3;i:1;}',1,0,'NEW623c8e42c8571483752403','',0,'',0,NULL,NULL),(21,0,1648136563,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',3,0,'::1','a:2:{i:0;s:5:\"typo3\";i:1;s:3:\"all\";}',-1,0,'','',0,'',0,NULL,NULL),(22,0,1648136570,1,3,6,'tt_content',0,0,'Record \'%s\' (%s) was deleted from page \'%s\' (%s)',1,0,'::1','a:4:{i:0;s:10:\"[No title]\";i:1;s:12:\"tt_content:6\";i:2;s:4:\"Home\";i:3;i:1;}',1,0,'','',0,'',0,NULL,NULL),(23,0,1648136572,1,3,4,'tt_content',0,0,'Record \'%s\' (%s) was deleted from page \'%s\' (%s)',1,0,'::1','a:4:{i:0;s:10:\"[No title]\";i:1;s:12:\"tt_content:4\";i:2;s:4:\"Home\";i:3;i:1;}',1,0,'','',0,'',0,NULL,NULL),(24,0,1648136574,1,3,1,'tt_content',0,0,'Record \'%s\' (%s) was deleted from page \'%s\' (%s)',1,0,'::1','a:4:{i:0;s:3:\"aaa\";i:1;s:12:\"tt_content:1\";i:2;s:4:\"Home\";i:3;i:1;}',1,0,'','',0,'',0,NULL,NULL),(25,0,1648136577,1,3,3,'tt_content',0,0,'Record \'%s\' (%s) was deleted from page \'%s\' (%s)',1,0,'::1','a:4:{i:0;s:10:\"[No title]\";i:1;s:12:\"tt_content:3\";i:2;s:4:\"Home\";i:3;i:1;}',1,0,'','',0,'',0,NULL,NULL),(26,0,1648136579,1,3,5,'tt_content',0,0,'Record \'%s\' (%s) was deleted from page \'%s\' (%s)',1,0,'::1','a:4:{i:0;s:10:\"[No title]\";i:1;s:12:\"tt_content:5\";i:2;s:4:\"Home\";i:3;i:1;}',1,0,'','',0,'',0,NULL,NULL),(27,0,1648139507,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',3,0,'::1','a:2:{i:0;s:5:\"typo3\";i:1;s:3:\"all\";}',-1,0,'','',0,'',0,NULL,NULL),(28,0,1648139520,1,0,0,'',0,2,'Core: Exception handler (WEB): Uncaught TYPO3 Exception: #1431452406: Missing \"renderType\" in TCA of field \"[tt_content][buttontext]\". | TYPO3\\CMS\\Backend\\Form\\Exception thrown in file /var/www/html/typo3_test_task/public/typo3/sysext/backend/Classes/Form/NodeFactory.php in line 147. Requested URL: http://localhost/typo3_test_task/public/typo3/index.php?route=%%2Frecord%%2Fedit&token=--AnonymizedToken--&edit%%5Btt_content%%5D%%5B1%%5D=new&defVals%%5Btt_content%%5D%%5BcolPos%%5D=0&defVals%%5Btt_content%%5D%%5Bsys_language_uid%%5D=0&returnUrl=%%2Ftypo3_test_task%%2Fpublic%%2Ftypo3%%2Findex.php%%3Froute%%3D%%252Fmodule%%252Fweb%%252Flayout%%26token%%3D961f4cca7a0723024a0c076fa8fad1b40457abd1%%26id%%3D1&defVals[tt_content][CType]=sampleextension_jumbotron',5,0,'::1','',-1,0,'','',0,'',0,NULL,NULL),(29,0,1648139597,1,0,0,'',0,2,'Core: Exception handler (WEB): Uncaught TYPO3 Exception: #1431452406: Missing \"renderType\" in TCA of field \"[tt_content][buttontext]\". | TYPO3\\CMS\\Backend\\Form\\Exception thrown in file /var/www/html/typo3_test_task/public/typo3/sysext/backend/Classes/Form/NodeFactory.php in line 147. Requested URL: http://localhost/typo3_test_task/public/typo3/index.php?route=%%2Frecord%%2Fedit&token=--AnonymizedToken--&edit%%5Btt_content%%5D%%5B1%%5D=new&defVals%%5Btt_content%%5D%%5BcolPos%%5D=0&defVals%%5Btt_content%%5D%%5Bsys_language_uid%%5D=0&returnUrl=%%2Ftypo3_test_task%%2Fpublic%%2Ftypo3%%2Findex.php%%3Froute%%3D%%252Fmodule%%252Fweb%%252Flayout%%26token%%3D961f4cca7a0723024a0c076fa8fad1b40457abd1%%26id%%3D1&defVals[tt_content][CType]=sampleextension_jumbotron',5,0,'::1','',-1,0,'','',0,'',0,NULL,NULL),(30,0,1648139690,1,0,0,'',0,2,'Core: Exception handler (WEB): Uncaught TYPO3 Exception: #1431452406: Missing \"renderType\" in TCA of field \"[tt_content][buttontext]\". | TYPO3\\CMS\\Backend\\Form\\Exception thrown in file /var/www/html/typo3_test_task/public/typo3/sysext/backend/Classes/Form/NodeFactory.php in line 147. Requested URL: http://localhost/typo3_test_task/public/typo3/index.php?route=%%2Frecord%%2Fedit&token=--AnonymizedToken--&edit%%5Btt_content%%5D%%5B1%%5D=new&defVals%%5Btt_content%%5D%%5BcolPos%%5D=0&defVals%%5Btt_content%%5D%%5Bsys_language_uid%%5D=0&returnUrl=%%2Ftypo3_test_task%%2Fpublic%%2Ftypo3%%2Findex.php%%3Froute%%3D%%252Fmodule%%252Fweb%%252Flayout%%26token%%3D961f4cca7a0723024a0c076fa8fad1b40457abd1%%26id%%3D1&defVals[tt_content][CType]=sampleextension_jumbotron',5,0,'::1','',-1,0,'','',0,'',0,NULL,NULL),(31,0,1648139717,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',3,0,'::1','a:2:{i:0;s:5:\"typo3\";i:1;s:3:\"all\";}',-1,0,'','',0,'',0,NULL,NULL),(32,0,1648139736,1,0,0,'',0,2,'Core: Exception handler (WEB): Uncaught TYPO3 Exception: Class \'T3docs\\Examples\\LinkHandler\\GitHubLinkHandler\' not found | Error thrown in file /var/www/html/typo3_test_task/public/typo3/sysext/core/Classes/Utility/GeneralUtility.php in line 3480. Requested URL: http://localhost/typo3_test_task/public/typo3/index.php?route=%%2Fwizard%%2Flink%%2Fbrowse&token=--AnonymizedToken--&P%%5Btable%%5D=tt_content&P%%5Buid%%5D=NEW623c9dcbe7da0790543735&P%%5Bpid%%5D=1&P%%5Bfield%%5D=buttonurl&P%%5BformName%%5D=editform&P%%5BitemName%%5D=data%%5Btt_content%%5D%%5BNEW623c9dcbe7da0790543735%%5D%%5Bbuttonurl%%5D&P%%5Bhmac%%5D=b84dca21ede0b71c87fa85df4df7053a007a4db9&P%%5BfieldChangeFunc%%5D%%5BTBE_EDITOR_fieldChanged%%5D=TBE_EDITOR.fieldChanged%%28%%27tt_content%%27%%2C%%27NEW623c9dcbe7da0790543735%%27%%2C%%27buttonurl%%27%%2C%%27data%%5Btt_content%%5D%%5BNEW623c9dcbe7da0790543735%%5D%%5Bbuttonurl%%5D%%27%%29%%3B&P%%5BfieldChangeFuncHash%%5D=f3d281400e20d3323d397a703d1ab09f78fe01dd&P[currentValue]=&P[currentSelectedValues]=',5,0,'::1','',-1,0,'','',0,'',0,NULL,NULL),(33,0,1648139774,1,0,0,'',0,2,'Core: Exception handler (WEB): Uncaught TYPO3 Exception: Class \'T3docs\\Examples\\LinkHandler\\GitHubLinkHandler\' not found | Error thrown in file /var/www/html/typo3_test_task/public/typo3/sysext/core/Classes/Utility/GeneralUtility.php in line 3480. Requested URL: http://localhost/typo3_test_task/public/typo3/index.php?route=%%2Fwizard%%2Flink%%2Fbrowse&token=--AnonymizedToken--&P%%5Btable%%5D=tt_content&P%%5Buid%%5D=NEW623c9dfb08dab394097407&P%%5Bpid%%5D=1&P%%5Bfield%%5D=buttonurl&P%%5BformName%%5D=editform&P%%5BitemName%%5D=data%%5Btt_content%%5D%%5BNEW623c9dfb08dab394097407%%5D%%5Bbuttonurl%%5D&P%%5Bhmac%%5D=0f32fb893b2822d4d0bb2ba4509a907f68ada026&P%%5BfieldChangeFunc%%5D%%5BTBE_EDITOR_fieldChanged%%5D=TBE_EDITOR.fieldChanged%%28%%27tt_content%%27%%2C%%27NEW623c9dfb08dab394097407%%27%%2C%%27buttonurl%%27%%2C%%27data%%5Btt_content%%5D%%5BNEW623c9dfb08dab394097407%%5D%%5Bbuttonurl%%5D%%27%%29%%3B&P%%5BfieldChangeFuncHash%%5D=48515018d21ca29519bcfc4e1688c35129d9da5f&P[currentValue]=&P[currentSelectedValues]=',5,0,'::1','',-1,0,'','',0,'',0,NULL,NULL),(34,0,1648139797,1,1,7,'tt_content',0,0,'Record \'%s\' (%s) was inserted on page \'%s\' (%s)',1,10,'::1','a:4:{i:0;s:10:\"[No title]\";i:1;s:12:\"tt_content:7\";i:2;s:4:\"Home\";i:3;i:1;}',1,0,'NEW623c9dfb08dab394097407','',0,'',0,NULL,NULL),(35,0,1648139803,1,0,0,'',0,2,'Core: Exception handler (WEB): Uncaught TYPO3 Exception: Class \'T3docs\\Examples\\LinkHandler\\GitHubLinkHandler\' not found | Error thrown in file /var/www/html/typo3_test_task/public/typo3/sysext/core/Classes/Utility/GeneralUtility.php in line 3480. Requested URL: http://localhost/typo3_test_task/public/typo3/index.php?route=%%2Fwizard%%2Flink%%2Fbrowse&token=--AnonymizedToken--&P%%5Btable%%5D=tt_content&P%%5Buid%%5D=7&P%%5Bpid%%5D=1&P%%5Bfield%%5D=header_link&P%%5BformName%%5D=editform&P%%5BitemName%%5D=data%%5Btt_content%%5D%%5B7%%5D%%5Bheader_link%%5D&P%%5Bhmac%%5D=f159bc4b70585ed3e6522ed53463009bc2a53b29&P%%5BfieldChangeFunc%%5D%%5BTBE_EDITOR_fieldChanged%%5D=TBE_EDITOR.fieldChanged%%28%%27tt_content%%27%%2C%%277%%27%%2C%%27header_link%%27%%2C%%27data%%5Btt_content%%5D%%5B7%%5D%%5Bheader_link%%5D%%27%%29%%3B&P%%5BfieldChangeFuncHash%%5D=1fe4dc9cc36aaadc163f54b0770a7a4b38e128d0&P[currentValue]=&P[currentSelectedValues]=',5,0,'::1','',-1,0,'','',0,'',0,NULL,NULL),(36,0,1648139831,1,0,0,'',0,2,'Core: Exception handler (WEB): Uncaught TYPO3 Exception: Class \'T3docs\\Examples\\LinkHandler\\GitHubLinkHandler\' not found | Error thrown in file /var/www/html/typo3_test_task/public/typo3/sysext/core/Classes/Utility/GeneralUtility.php in line 3480. Requested URL: http://localhost/typo3_test_task/public/typo3/index.php?route=%%2Fwizard%%2Flink%%2Fbrowse&token=--AnonymizedToken--&P%%5Btable%%5D=tt_content&P%%5Buid%%5D=NEW623c9e35c5196519815583&P%%5Bpid%%5D=1&P%%5Bfield%%5D=header_link&P%%5BformName%%5D=editform&P%%5BitemName%%5D=data%%5Btt_content%%5D%%5BNEW623c9e35c5196519815583%%5D%%5Bheader_link%%5D&P%%5Bhmac%%5D=4eb2155e7b6abcddc9089afde46ad750392929fd&P%%5BfieldChangeFunc%%5D%%5BTBE_EDITOR_fieldChanged%%5D=TBE_EDITOR.fieldChanged%%28%%27tt_content%%27%%2C%%27NEW623c9e35c5196519815583%%27%%2C%%27header_link%%27%%2C%%27data%%5Btt_content%%5D%%5BNEW623c9e35c5196519815583%%5D%%5Bheader_link%%5D%%27%%29%%3B&P%%5BfieldChangeFuncHash%%5D=17e100e4d36b925aa6d7a43aaa5c6419a88cca09&P[currentValue]=&P[currentSelectedValues]=',5,0,'::1','',-1,0,'','',0,'',0,NULL,NULL),(37,0,1648139877,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',3,0,'::1','a:2:{i:0;s:5:\"typo3\";i:1;s:3:\"all\";}',-1,0,'','',0,'',0,NULL,NULL),(38,0,1648140068,1,1,8,'tt_content',0,0,'Record \'%s\' (%s) was inserted on page \'%s\' (%s)',1,10,'::1','a:4:{i:0;s:11:\"Test header\";i:1;s:12:\"tt_content:8\";i:2;s:4:\"Home\";i:3;i:1;}',1,0,'NEW623c9ee822619554955401','',0,'',0,NULL,NULL),(39,0,1648140800,1,3,7,'tt_content',0,0,'Record \'%s\' (%s) was deleted from page \'%s\' (%s)',1,0,'::1','a:4:{i:0;s:10:\"[No title]\";i:1;s:12:\"tt_content:7\";i:2;s:4:\"Home\";i:3;i:1;}',1,0,'','',0,'',0,NULL,NULL),(40,0,1648140851,1,2,1,'pages',0,0,'Record \'%s\' (%s) was updated. (Online).',1,10,'::1','a:3:{i:0;s:4:\"Home\";i:1;s:7:\"pages:1\";s:7:\"history\";s:2:\"22\";}',1,0,'','',0,'',0,NULL,NULL),(41,0,1648140872,1,2,1,'pages',0,0,'Record \'%s\' (%s) was updated. (Online).',1,10,'::1','a:3:{i:0;s:4:\"Home\";i:1;s:7:\"pages:1\";s:7:\"history\";s:2:\"23\";}',1,0,'','',0,'',0,NULL,NULL),(42,0,1648140886,1,2,1,'pages',0,0,'Record \'%s\' (%s) was updated. (Online).',1,10,'::1','a:3:{i:0;s:4:\"Home\";i:1;s:7:\"pages:1\";s:7:\"history\";s:2:\"24\";}',1,0,'','',0,'',0,NULL,NULL),(43,0,1648140904,1,2,1,'pages',0,0,'Record \'%s\' (%s) was updated. (Online).',1,10,'::1','a:3:{i:0;s:4:\"Home\";i:1;s:7:\"pages:1\";s:7:\"history\";i:0;}',1,0,'','',0,'',0,NULL,NULL),(44,0,1648140931,1,2,1,'pages',0,0,'Record \'%s\' (%s) was updated. (Online).',1,10,'::1','a:3:{i:0;s:4:\"Home\";i:1;s:7:\"pages:1\";s:7:\"history\";s:2:\"25\";}',1,0,'','',0,'',0,NULL,NULL),(45,0,1648140935,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',3,0,'::1','a:2:{i:0;s:5:\"typo3\";i:1;s:3:\"all\";}',-1,0,'','',0,'',0,NULL,NULL),(46,0,1648141045,1,0,0,'',0,2,'Core: Exception handler (WEB): Uncaught TYPO3 Exception: #1431452406: Missing \"renderType\" in TCA of field \"[tt_content][buttontext]\". | TYPO3\\CMS\\Backend\\Form\\Exception thrown in file /var/www/html/typo3_test_task/public/typo3/sysext/backend/Classes/Form/NodeFactory.php in line 147. Requested URL: http://localhost/typo3_test_task/public/typo3/index.php?route=%%2Frecord%%2Fedit&token=--AnonymizedToken--&edit[tt_content][8]=edit&returnUrl=%%2Ftypo3_test_task%%2Fpublic%%2Ftypo3%%2Findex.php%%3Froute%%3D%%252Fmodule%%252Fweb%%252Flist%%26token%%3D28a88d21c542286315c22f96f583c3107a34894f%%26id%%3D1%%26',5,0,'::1','',-1,0,'','',0,'',0,NULL,NULL),(47,0,1648141082,1,2,1,'pages',0,0,'Record \'%s\' (%s) was updated. (Online).',1,10,'::1','a:3:{i:0;s:4:\"Home\";i:1;s:7:\"pages:1\";s:7:\"history\";s:2:\"26\";}',1,0,'','',0,'',0,NULL,NULL),(48,0,1648141124,1,1,2,'pages',0,0,'Record \'%s\' (%s) was inserted on page \'%s\' (%s)',1,10,'::1','a:4:{i:0;s:4:\"test\";i:1;s:7:\"pages:2\";i:2;s:12:\"[root-level]\";i:3;i:0;}',0,0,'NEW623ca337ddfff631995860','',0,'',0,NULL,NULL),(49,0,1648141124,1,2,2,'pages',0,0,'Record \'%s\' (%s) was updated. (Online).',1,10,'::1','a:3:{i:0;s:4:\"test\";i:1;s:7:\"pages:2\";s:7:\"history\";s:2:\"28\";}',2,0,'','',0,'',0,NULL,NULL),(50,0,1648141133,1,1,9,'tt_content',0,0,'Record \'%s\' (%s) was inserted on page \'%s\' (%s)',1,10,'::1','a:4:{i:0;s:3:\"sss\";i:1;s:12:\"tt_content:9\";i:2;s:4:\"test\";i:3;i:2;}',2,0,'NEW623ca34a067b2666076848','',0,'',0,NULL,NULL),(51,0,1648141231,1,2,1,'pages',0,0,'Record \'%s\' (%s) was updated. (Online).',1,10,'::1','a:3:{i:0;s:4:\"Home\";i:1;s:7:\"pages:1\";s:7:\"history\";s:2:\"30\";}',1,0,'','',0,'',0,NULL,NULL),(52,0,1648144694,1,1,1,'sys_template',0,0,'Record \'%s\' (%s) was inserted on page \'%s\' (%s)',1,10,'::1','a:4:{i:0;s:8:\"NEW SITE\";i:1;s:14:\"sys_template:1\";i:2;s:4:\"Home\";i:3;i:1;}',1,0,'NEW','',0,'',0,NULL,NULL),(53,0,1648144737,1,0,0,'',0,2,'Core: Exception handler (WEB): Uncaught TYPO3 Exception: #1431452406: Missing \"renderType\" in TCA of field \"[tt_content][buttontext]\". | TYPO3\\CMS\\Backend\\Form\\Exception thrown in file /var/www/html/typo3_test_task/public/typo3/sysext/backend/Classes/Form/NodeFactory.php in line 147. Requested URL: http://localhost/typo3_test_task/public/typo3/index.php?route=%%2Frecord%%2Fedit&token=--AnonymizedToken--&edit%%5Btt_content%%5D%%5B8%%5D=edit&returnUrl=%%2Ftypo3_test_task%%2Fpublic%%2Ftypo3%%2Findex.php%%3Froute%%3D%%252Fmodule%%252Fweb%%252Flayout%%26token%%3D961f4cca7a0723024a0c076fa8fad1b40457abd1%%26id%%3D1%%26%%23element-tt_content-8',5,0,'::1','',-1,0,'','',0,'',0,NULL,NULL),(54,0,1648144782,1,0,0,'',0,2,'Core: Exception handler (WEB): Uncaught TYPO3 Exception: #1431452406: Missing \"renderType\" in TCA of field \"[tt_content][buttontext]\". | TYPO3\\CMS\\Backend\\Form\\Exception thrown in file /var/www/html/typo3_test_task/public/typo3/sysext/backend/Classes/Form/NodeFactory.php in line 147. Requested URL: http://localhost/typo3_test_task/public/typo3/index.php?route=%%2Frecord%%2Fedit&token=--AnonymizedToken--&edit%%5Btt_content%%5D%%5B8%%5D=edit&returnUrl=%%2Ftypo3_test_task%%2Fpublic%%2Ftypo3%%2Findex.php%%3Froute%%3D%%252Fmodule%%252Fweb%%252Flayout%%26token%%3D961f4cca7a0723024a0c076fa8fad1b40457abd1%%26id%%3D1%%23element-tt_content-8',5,0,'::1','',-1,0,'','',0,'',0,NULL,NULL),(55,0,1648144785,1,0,0,'',0,2,'Core: Exception handler (WEB): Uncaught TYPO3 Exception: #1431452406: Missing \"renderType\" in TCA of field \"[tt_content][buttontext]\". | TYPO3\\CMS\\Backend\\Form\\Exception thrown in file /var/www/html/typo3_test_task/public/typo3/sysext/backend/Classes/Form/NodeFactory.php in line 147. Requested URL: http://localhost/typo3_test_task/public/typo3/index.php?route=%%2Frecord%%2Fedit&token=--AnonymizedToken--&edit%%5Btt_content%%5D%%5B8%%5D=edit&returnUrl=%%2Ftypo3_test_task%%2Fpublic%%2Ftypo3%%2Findex.php%%3Froute%%3D%%252Fmodule%%252Fweb%%252Flayout%%26token%%3D961f4cca7a0723024a0c076fa8fad1b40457abd1%%26id%%3D1%%23element-tt_content-8',5,0,'::1','',-1,0,'','',0,'',0,NULL,NULL),(56,0,1648144816,1,0,0,'',0,2,'Core: Exception handler (WEB): Uncaught TYPO3 Exception: #1431452406: Missing \"renderType\" in TCA of field \"[tt_content][buttontext]\". | TYPO3\\CMS\\Backend\\Form\\Exception thrown in file /var/www/html/typo3_test_task/public/typo3/sysext/backend/Classes/Form/NodeFactory.php in line 147. Requested URL: http://localhost/typo3_test_task/public/typo3/index.php?route=%%2Frecord%%2Fedit&token=--AnonymizedToken--&edit%%5Btt_content%%5D%%5B8%%5D=edit&returnUrl=%%2Ftypo3_test_task%%2Fpublic%%2Ftypo3%%2Findex.php%%3Froute%%3D%%252Fmodule%%252Fweb%%252Flayout%%26token%%3D961f4cca7a0723024a0c076fa8fad1b40457abd1%%26id%%3D1%%23element-tt_content-8',5,0,'::1','',-1,0,'','',0,'',0,NULL,NULL),(57,0,1648144819,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',3,0,'::1','a:2:{i:0;s:5:\"typo3\";i:1;s:3:\"all\";}',-1,0,'','',0,'',0,NULL,NULL),(58,0,1648144841,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',3,0,'::1','a:2:{i:0;s:5:\"typo3\";i:1;s:3:\"all\";}',-1,0,'','',0,'',0,NULL,NULL),(59,0,1648144847,1,0,0,'',0,2,'Core: Exception handler (WEB): Uncaught TYPO3 Exception: #1431452406: Missing \"renderType\" in TCA of field \"[tt_content][buttontext]\". | TYPO3\\CMS\\Backend\\Form\\Exception thrown in file /var/www/html/typo3_test_task/public/typo3/sysext/backend/Classes/Form/NodeFactory.php in line 147. Requested URL: http://localhost/typo3_test_task/public/typo3/index.php?route=%%2Frecord%%2Fedit&token=--AnonymizedToken--&edit%%5Btt_content%%5D%%5B8%%5D=edit&returnUrl=%%2Ftypo3_test_task%%2Fpublic%%2Ftypo3%%2Findex.php%%3Froute%%3D%%252Fmodule%%252Fweb%%252Flayout%%26token%%3D961f4cca7a0723024a0c076fa8fad1b40457abd1%%26id%%3D1%%23element-tt_content-8',5,0,'::1','',-1,0,'','',0,'',0,NULL,NULL),(60,0,1648144856,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',3,0,'::1','a:2:{i:0;s:5:\"typo3\";i:1;s:3:\"all\";}',-1,0,'','',0,'',0,NULL,NULL),(61,0,1648144886,1,2,8,'tt_content',0,0,'Record \'%s\' (%s) was updated. (Online).',1,10,'::1','a:3:{i:0;s:11:\"Test header\";i:1;s:12:\"tt_content:8\";s:7:\"history\";s:2:\"32\";}',1,0,'','',0,'',0,NULL,NULL),(62,0,1648145451,1,1,10,'tt_content',0,0,'Record \'%s\' (%s) was inserted on page \'%s\' (%s)',1,10,'::1','a:4:{i:0;s:5:\"test2\";i:1;s:13:\"tt_content:10\";i:2;s:4:\"Home\";i:3;i:1;}',1,0,'NEW623cb4237ae1f340624224','',0,'',0,NULL,NULL),(63,0,1648145462,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',3,0,'::1','a:2:{i:0;s:5:\"typo3\";i:1;s:3:\"all\";}',-1,0,'','',0,'',0,NULL,NULL),(64,0,1648145529,1,2,2,'pages',0,0,'Record \'%s\' (%s) was updated. (Online).',1,10,'::1','a:3:{i:0;s:4:\"test\";i:1;s:7:\"pages:2\";s:7:\"history\";s:2:\"34\";}',2,0,'','',0,'',0,NULL,NULL),(65,0,1648145536,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',3,0,'::1','a:2:{i:0;s:5:\"typo3\";i:1;s:3:\"all\";}',-1,0,'','',0,'',0,NULL,NULL),(66,0,1648145558,1,1,2,'sys_template',0,0,'Record \'%s\' (%s) was inserted on page \'%s\' (%s)',1,10,'::1','a:4:{i:0;s:8:\"NEW SITE\";i:1;s:14:\"sys_template:2\";i:2;s:4:\"test\";i:3;i:2;}',2,0,'NEW','',0,'',0,NULL,NULL),(67,0,1648145841,1,2,1,'pages',0,0,'Record \'%s\' (%s) was updated. (Online).',1,10,'::1','a:3:{i:0;s:4:\"Home\";i:1;s:7:\"pages:1\";s:7:\"history\";s:2:\"36\";}',1,0,'','',0,'',0,NULL,NULL),(68,0,1648145853,1,2,1,'pages',0,0,'Record \'%s\' (%s) was updated. (Online).',1,10,'::1','a:3:{i:0;s:4:\"Home\";i:1;s:7:\"pages:1\";s:7:\"history\";s:2:\"37\";}',1,0,'','',0,'',0,NULL,NULL),(69,0,1648145855,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',3,0,'::1','a:2:{i:0;s:5:\"typo3\";i:1;s:3:\"all\";}',-1,0,'','',0,'',0,NULL,NULL),(70,0,1648146212,1,2,2,'pages',0,0,'Record \'%s\' (%s) was updated. (Online).',1,10,'::1','a:3:{i:0;s:4:\"test\";i:1;s:7:\"pages:2\";s:7:\"history\";s:2:\"38\";}',2,0,'','',0,'',0,NULL,NULL),(71,0,1648146217,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',3,0,'::1','a:2:{i:0;s:5:\"typo3\";i:1;s:3:\"all\";}',-1,0,'','',0,'',0,NULL,NULL),(72,0,1648146226,1,2,2,'pages',0,0,'Record \'%s\' (%s) was updated. (Online).',1,10,'::1','a:3:{i:0;s:4:\"test\";i:1;s:7:\"pages:2\";s:7:\"history\";s:2:\"39\";}',2,0,'','',0,'',0,NULL,NULL),(73,0,1648146360,1,2,2,'pages',0,0,'Record \'%s\' (%s) was updated. (Online).',1,10,'::1','a:3:{i:0;s:4:\"test\";i:1;s:7:\"pages:2\";s:7:\"history\";s:2:\"40\";}',2,0,'','',0,'',0,NULL,NULL),(74,0,1648146568,1,3,2,'sys_template',0,0,'Record \'%s\' (%s) was deleted from page \'%s\' (%s)',1,0,'::1','a:4:{i:0;s:8:\"NEW SITE\";i:1;s:14:\"sys_template:2\";i:2;s:4:\"test\";i:3;i:2;}',2,0,'','',0,'',0,NULL,NULL),(75,0,1648146568,1,3,9,'tt_content',0,0,'Record \'%s\' (%s) was deleted from page \'%s\' (%s)',1,0,'::1','a:4:{i:0;s:3:\"sss\";i:1;s:12:\"tt_content:9\";i:2;s:4:\"test\";i:3;i:2;}',2,0,'','',0,'',0,NULL,NULL),(76,0,1648146568,1,3,2,'pages',0,0,'Record \'%s\' (%s) was deleted from page \'%s\' (%s)',1,0,'::1','a:4:{i:0;s:4:\"test\";i:1;s:7:\"pages:2\";i:2;s:12:\"[root-level]\";i:3;i:0;}',2,0,'','',0,'',0,NULL,NULL),(77,0,1648146650,1,2,1,'sys_template',0,0,'Record \'%s\' (%s) was updated. (Online).',1,10,'::1','a:3:{i:0;s:8:\"NEW SITE\";i:1;s:14:\"sys_template:1\";s:7:\"history\";s:2:\"44\";}',1,0,'','',0,'',0,NULL,NULL),(78,0,1648194161,1,1,0,'',0,0,'User %s logged in from ###IP###',255,1,'::1','a:1:{i:0;s:5:\"typo3\";}',-1,-99,'','',0,'',0,NULL,NULL),(79,0,1648194213,1,2,1,'sys_template',0,0,'Record \'%s\' (%s) was updated. (Online).',1,10,'::1','a:3:{i:0;s:8:\"NEW SITE\";i:1;s:14:\"sys_template:1\";s:7:\"history\";s:2:\"45\";}',1,0,'','',0,'',0,NULL,NULL),(80,0,1648194565,1,6,0,'',0,0,'Directory \"%s\" created in \"%s\"',2,1,'::1','a:2:{i:0;s:3:\"css\";i:1;s:1:\"/\";}',-1,0,'','',0,'',0,NULL,NULL),(81,0,1648194565,1,6,0,'',0,0,'Directory \"%s\" created in \"%s\"',2,1,'::1','a:2:{i:0;s:2:\"js\";i:1;s:1:\"/\";}',-1,0,'','',0,'',0,NULL,NULL),(82,0,1648194565,1,6,0,'',0,0,'Directory \"%s\" created in \"%s\"',2,1,'::1','a:2:{i:0;s:6:\"images\";i:1;s:1:\"/\";}',-1,0,'','',0,'',0,NULL,NULL),(83,0,1648194565,1,6,0,'',0,0,'Directory \"%s\" created in \"%s\"',2,1,'::1','a:2:{i:0;s:9:\"templates\";i:1;s:1:\"/\";}',-1,0,'','',0,'',0,NULL,NULL),(84,0,1648196411,1,1,0,'',0,0,'Uploading file \"%s\" to \"%s\"',2,1,'::1','a:2:{i:0;s:10:\"index.html\";i:1;s:11:\"/templates/\";}',-1,0,'','',0,'',0,NULL,NULL),(85,0,1648196513,1,1,0,'',0,0,'Uploading file \"%s\" to \"%s\"',2,1,'::1','a:2:{i:0;s:17:\"bootstrap.min.css\";i:1;s:5:\"/css/\";}',-1,0,'','',0,'',0,NULL,NULL),(86,0,1648196546,1,1,0,'',0,0,'Uploading file \"%s\" to \"%s\"',2,1,'::1','a:2:{i:0;s:16:\"bootstrap.min.js\";i:1;s:4:\"/js/\";}',-1,0,'','',0,'',0,NULL,NULL),(87,0,1648196734,1,9,0,'',0,0,'File saved to \"%s\", bytes: %s, MD5: %s ',2,1,'::1','a:3:{i:0;s:22:\"/css/bootstrap.min.css\";i:1;i:163973;i:2;s:32:\"fd011bb744f8628a7f27e1f6203cb6d5\";}',-1,0,'','',0,'',0,NULL,NULL),(88,0,1648196782,1,9,0,'',0,0,'File saved to \"%s\", bytes: %s, MD5: %s ',2,1,'::1','a:3:{i:0;s:22:\"/css/bootstrap.min.css\";i:1;i:163879;i:2;s:32:\"f7d74d6042421a005379087d13ddbbb8\";}',-1,0,'','',0,'',0,NULL,NULL),(89,0,1648197476,1,9,0,'',0,0,'File saved to \"%s\", bytes: %s, MD5: %s ',2,1,'::1','a:3:{i:0;s:21:\"/templates/index.html\";i:1;i:850;i:2;s:32:\"2f9d2b3803a5e24f2e5d3f56bb368db4\";}',-1,0,'','',0,'',0,NULL,NULL),(90,0,1648197673,1,2,1,'sys_template',0,0,'Record \'%s\' (%s) was updated. (Online).',1,10,'::1','a:3:{i:0;s:8:\"NEW SITE\";i:1;s:14:\"sys_template:1\";s:7:\"history\";s:2:\"46\";}',1,0,'','',0,'',0,NULL,NULL),(91,0,1648198482,1,2,1,'sys_template',0,0,'Record \'%s\' (%s) was updated. (Online).',1,10,'::1','a:3:{i:0;s:8:\"NEW SITE\";i:1;s:14:\"sys_template:1\";s:7:\"history\";s:2:\"47\";}',1,0,'','',0,'',0,NULL,NULL),(92,0,1648199560,1,2,1,'sys_template',0,0,'Record \'%s\' (%s) was updated. (Online).',1,10,'::1','a:3:{i:0;s:8:\"NEW SITE\";i:1;s:14:\"sys_template:1\";s:7:\"history\";s:2:\"48\";}',1,0,'','',0,'',0,NULL,NULL),(93,0,1648199638,1,2,1,'sys_template',0,0,'Record \'%s\' (%s) was updated. (Online).',1,10,'::1','a:3:{i:0;s:8:\"NEW SITE\";i:1;s:14:\"sys_template:1\";s:7:\"history\";s:2:\"49\";}',1,0,'','',0,'',0,NULL,NULL),(94,0,1648199660,1,1,3,'pages',0,0,'Record \'%s\' (%s) was inserted on page \'%s\' (%s)',1,10,'::1','a:4:{i:0;s:12:\"SingleColumn\";i:1;s:7:\"pages:3\";i:2;s:4:\"Home\";i:3;i:1;}',1,0,'NEW623d87dade316971730449','',0,'',0,NULL,NULL),(95,0,1648199682,1,1,3,'sys_template',0,0,'Record \'%s\' (%s) was inserted on page \'%s\' (%s)',1,10,'::1','a:4:{i:0;s:8:\"NEW SITE\";i:1;s:14:\"sys_template:3\";i:2;s:12:\"SingleColumn\";i:3;i:3;}',3,0,'NEW','',0,'',0,NULL,NULL),(96,0,1648321907,1,1,0,'',0,0,'User %s logged in from ###IP###',255,1,'::1','a:1:{i:0;s:5:\"typo3\";}',-1,-99,'','',0,'',0,NULL,NULL),(97,0,1648322009,1,2,1,'sys_template',0,0,'Record \'%s\' (%s) was updated. (Online).',1,10,'::1','a:3:{i:0;s:4:\"main\";i:1;s:14:\"sys_template:1\";s:7:\"history\";s:2:\"52\";}',1,0,'','',0,'',0,NULL,NULL),(98,0,1648322021,1,2,3,'sys_template',0,0,'Record \'%s\' (%s) was updated. (Online).',1,10,'::1','a:3:{i:0;s:13:\"single column\";i:1;s:14:\"sys_template:3\";s:7:\"history\";s:2:\"53\";}',3,0,'','',0,'',0,NULL,NULL),(99,0,1648322067,1,2,3,'sys_template',0,0,'Record \'%s\' (%s) was updated. (Online).',1,10,'::1','a:3:{i:0;s:13:\"single column\";i:1;s:14:\"sys_template:3\";s:7:\"history\";s:2:\"54\";}',3,0,'','',0,'',0,NULL,NULL),(100,0,1648322125,1,6,0,'',0,0,'Directory \"%s\" created in \"%s\"',2,1,'::1','a:2:{i:0;s:10:\"sitedesign\";i:1;s:1:\"/\";}',-1,0,'','',0,'',0,NULL,NULL),(101,0,1648322137,1,6,0,'',0,0,'Directory \"%s\" created in \"%s\"',2,1,'::1','a:2:{i:0;s:9:\"Resources\";i:1;s:12:\"/sitedesign/\";}',-1,0,'','',0,'',0,NULL,NULL),(102,0,1648322146,1,6,0,'',0,0,'Directory \"%s\" created in \"%s\"',2,1,'::1','a:2:{i:0;s:7:\"Private\";i:1;s:22:\"/sitedesign/Resources/\";}',-1,0,'','',0,'',0,NULL,NULL),(103,0,1648322154,1,6,0,'',0,0,'Directory \"%s\" created in \"%s\"',2,1,'::1','a:2:{i:0;s:9:\"Templates\";i:1;s:30:\"/sitedesign/Resources/Private/\";}',-1,0,'','',0,'',0,NULL,NULL),(104,0,1648322180,1,8,0,'',0,0,'File created: \"%s\"',2,1,'::1','a:1:{i:0;s:17:\"Basic1Column.html\";}',-1,0,'','',0,'',0,NULL,NULL),(105,0,1648322191,1,9,0,'',0,0,'File saved to \"%s\", bytes: %s, MD5: %s ',2,1,'::1','a:3:{i:0;s:57:\"/sitedesign/Resources/Private/Templates/Basic1Column.html\";i:1;i:669;i:2;s:32:\"1d4f9ae37f48b54b1368dd4444b1a4a3\";}',-1,0,'','',0,'',0,NULL,NULL),(106,0,1648323155,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',3,0,'::1','a:2:{i:0;s:5:\"typo3\";i:1;s:3:\"all\";}',-1,0,'','',0,'',0,NULL,NULL),(107,0,1648323192,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',3,0,'::1','a:2:{i:0;s:5:\"typo3\";i:1;s:3:\"all\";}',-1,0,'','',0,'',0,NULL,NULL),(108,0,1648323238,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',3,0,'::1','a:2:{i:0;s:5:\"typo3\";i:1;s:3:\"all\";}',-1,0,'','',0,'',0,NULL,NULL),(109,0,1648323638,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',3,0,'::1','a:2:{i:0;s:5:\"typo3\";i:1;s:3:\"all\";}',-1,0,'','',0,'',0,NULL,NULL),(110,0,1648323682,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',3,0,'::1','a:2:{i:0;s:5:\"typo3\";i:1;s:3:\"all\";}',-1,0,'','',0,'',0,NULL,NULL),(111,0,1648323974,1,2,8,'tt_content',0,0,'Record \'%s\' (%s) was updated. (Online).',1,10,'::1','a:3:{i:0;s:11:\"Test header\";i:1;s:12:\"tt_content:8\";s:7:\"history\";i:0;}',1,0,'','',0,'',0,NULL,NULL),(112,0,1648324061,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',3,0,'::1','a:2:{i:0;s:5:\"typo3\";i:1;s:3:\"all\";}',-1,0,'','',0,'',0,NULL,NULL),(113,0,1648324071,1,0,0,'',0,2,'Core: Exception handler (WEB): Uncaught TYPO3 Exception: #1431452406: Missing \"renderType\" in TCA of field \"[tt_content][buttontext]\". | TYPO3\\CMS\\Backend\\Form\\Exception thrown in file /var/www/html/typo3_test_task/public/typo3/sysext/backend/Classes/Form/NodeFactory.php in line 147. Requested URL: http://localhost/typo3_test_task/public/typo3/index.php?route=%%2Frecord%%2Fedit&token=--AnonymizedToken--&edit%%5Btt_content%%5D%%5B8%%5D=edit&returnUrl=%%2Ftypo3_test_task%%2Fpublic%%2Ftypo3%%2Findex.php%%3Froute%%3D%%252Fmodule%%252Fweb%%252Flayout%%26token%%3Da601e1909f71394fa16945163261adcfdca94e80%%26id%%3D1%%23element-tt_content-8',5,0,'::1','',-1,0,'','',0,'',0,NULL,NULL),(114,0,1648324146,1,0,0,'',0,2,'Core: Exception handler (WEB): Uncaught TYPO3 Exception: #1431452406: Missing \"renderType\" in TCA of field \"[tt_content][buttontext]\". | TYPO3\\CMS\\Backend\\Form\\Exception thrown in file /var/www/html/typo3_test_task/public/typo3/sysext/backend/Classes/Form/NodeFactory.php in line 147. Requested URL: http://localhost/typo3_test_task/public/typo3/index.php?route=%%2Frecord%%2Fedit&token=--AnonymizedToken--&edit%%5Btt_content%%5D%%5B8%%5D=edit&returnUrl=%%2Ftypo3_test_task%%2Fpublic%%2Ftypo3%%2Findex.php%%3Froute%%3D%%252Fmodule%%252Fweb%%252Flayout%%26token%%3Da601e1909f71394fa16945163261adcfdca94e80%%26id%%3D1%%23element-tt_content-8',5,0,'::1','',-1,0,'','',0,'',0,NULL,NULL),(115,0,1648324160,1,0,0,'',0,2,'Core: Exception handler (WEB): Uncaught TYPO3 Exception: #1431452406: Missing \"renderType\" in TCA of field \"[tt_content][buttontext]\". | TYPO3\\CMS\\Backend\\Form\\Exception thrown in file /var/www/html/typo3_test_task/public/typo3/sysext/backend/Classes/Form/NodeFactory.php in line 147. Requested URL: http://localhost/typo3_test_task/public/typo3/index.php?route=%%2Frecord%%2Fedit&token=--AnonymizedToken--&edit%%5Btt_content%%5D%%5B8%%5D=edit&returnUrl=%%2Ftypo3_test_task%%2Fpublic%%2Ftypo3%%2Findex.php%%3Froute%%3D%%252Fmodule%%252Fweb%%252Flayout%%26token%%3Da601e1909f71394fa16945163261adcfdca94e80%%26id%%3D1%%23element-tt_content-8',5,0,'::1','',-1,0,'','',0,'',0,NULL,NULL),(116,0,1648324187,1,0,0,'',0,2,'Core: Exception handler (WEB): Uncaught TYPO3 Exception: #1431452406: Missing \"renderType\" in TCA of field \"[tt_content][buttontext]\". | TYPO3\\CMS\\Backend\\Form\\Exception thrown in file /var/www/html/typo3_test_task/public/typo3/sysext/backend/Classes/Form/NodeFactory.php in line 147. Requested URL: http://localhost/typo3_test_task/public/typo3/index.php?route=%%2Frecord%%2Fedit&token=--AnonymizedToken--&edit%%5Btt_content%%5D%%5B8%%5D=edit&returnUrl=%%2Ftypo3_test_task%%2Fpublic%%2Ftypo3%%2Findex.php%%3Froute%%3D%%252Fmodule%%252Fweb%%252Flayout%%26token%%3Da601e1909f71394fa16945163261adcfdca94e80%%26id%%3D1%%23element-tt_content-8',5,0,'::1','',-1,0,'','',0,'',0,NULL,NULL),(117,0,1648324199,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',3,0,'::1','a:2:{i:0;s:5:\"typo3\";i:1;s:3:\"all\";}',-1,0,'','',0,'',0,NULL,NULL),(118,0,1648326914,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',3,0,'::1','a:2:{i:0;s:5:\"typo3\";i:1;s:3:\"all\";}',-1,0,'','',0,'',0,NULL,NULL),(119,0,1648326993,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',3,0,'::1','a:2:{i:0;s:5:\"typo3\";i:1;s:3:\"all\";}',-1,0,'','',0,'',0,NULL,NULL),(120,0,1648327007,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',3,0,'::1','a:2:{i:0;s:5:\"typo3\";i:1;s:3:\"all\";}',-1,0,'','',0,'',0,NULL,NULL),(121,0,1648327059,1,2,0,'',0,0,'User %s logged out from TYPO3 Backend',255,1,'::1','a:1:{i:0;s:5:\"typo3\";}',-1,0,'','',0,'',0,NULL,NULL),(122,0,1648327063,1,1,0,'',0,0,'User %s logged in from ###IP###',255,1,'::1','a:1:{i:0;s:5:\"typo3\";}',-1,-99,'','',0,'',0,NULL,NULL),(123,0,1648327186,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',3,0,'::1','a:2:{i:0;s:5:\"typo3\";i:1;s:3:\"all\";}',-1,0,'','',0,'',0,NULL,NULL),(124,0,1648327198,1,0,0,'',0,2,'Core: Exception handler (WEB): Uncaught TYPO3 Exception: #1431452406: Missing \"renderType\" in TCA of field \"[tt_content][nextbuttontext]\". | TYPO3\\CMS\\Backend\\Form\\Exception thrown in file /var/www/html/typo3_test_task/public/typo3/sysext/backend/Classes/Form/NodeFactory.php in line 147. Requested URL: http://localhost/typo3_test_task/public/typo3/index.php?route=%%2Frecord%%2Fedit&token=--AnonymizedToken--&edit%%5Btt_content%%5D%%5B1%%5D=new&defVals%%5Btt_content%%5D%%5BcolPos%%5D=0&defVals%%5Btt_content%%5D%%5Bsys_language_uid%%5D=0&returnUrl=%%2Ftypo3_test_task%%2Fpublic%%2Ftypo3%%2Findex.php%%3Froute%%3D%%252Fmodule%%252Fweb%%252Flayout%%26token%%3Da74d7921c8fd84ee4f079853f6db82f532fde022%%26id%%3D1&defVals[tt_content][CType]=sampleextension_jumbotron',5,0,'::1','',-1,0,'','',0,'',0,NULL,NULL),(125,0,1648327266,1,0,0,'',0,2,'Core: Exception handler (WEB): Uncaught TYPO3 Exception: #1431452406: Missing \"renderType\" in TCA of field \"[tt_content][nextbuttontext]\". | TYPO3\\CMS\\Backend\\Form\\Exception thrown in file /var/www/html/typo3_test_task/public/typo3/sysext/backend/Classes/Form/NodeFactory.php in line 147. Requested URL: http://localhost/typo3_test_task/public/typo3/index.php?route=%%2Frecord%%2Fedit&token=--AnonymizedToken--&edit%%5Btt_content%%5D%%5B8%%5D=edit&returnUrl=%%2Ftypo3_test_task%%2Fpublic%%2Ftypo3%%2Findex.php%%3Froute%%3D%%252Fmodule%%252Fweb%%252Flayout%%26token%%3Da74d7921c8fd84ee4f079853f6db82f532fde022%%26id%%3D1%%23element-tt_content-8',5,0,'::1','',-1,0,'','',0,'',0,NULL,NULL),(126,0,1648327272,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',3,0,'::1','a:2:{i:0;s:5:\"typo3\";i:1;s:3:\"all\";}',-1,0,'','',0,'',0,NULL,NULL),(127,0,1648327299,1,2,8,'tt_content',0,0,'Record \'%s\' (%s) was updated. (Online).',1,10,'::1','a:3:{i:0;s:11:\"Test header\";i:1;s:12:\"tt_content:8\";s:7:\"history\";i:0;}',1,0,'','',0,'',0,NULL,NULL),(128,0,1648328442,1,2,8,'tt_content',0,0,'Record \'%s\' (%s) was updated. (Online).',1,10,'::1','a:3:{i:0;s:11:\"Test header\";i:1;s:12:\"tt_content:8\";s:7:\"history\";i:0;}',1,0,'','',0,'',0,NULL,NULL),(129,0,1648328917,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',3,0,'::1','a:2:{i:0;s:5:\"typo3\";i:1;s:3:\"all\";}',-1,0,'','',0,'',0,NULL,NULL),(130,0,1648328952,1,2,8,'tt_content',0,0,'Record \'%s\' (%s) was updated. (Online).',1,10,'::1','a:3:{i:0;s:11:\"Test header\";i:1;s:12:\"tt_content:8\";s:7:\"history\";s:2:\"55\";}',1,0,'','',0,'',0,NULL,NULL),(131,0,1648329401,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',3,0,'::1','a:2:{i:0;s:5:\"typo3\";i:1;s:3:\"all\";}',-1,0,'','',0,'',0,NULL,NULL),(132,0,1648329712,1,3,0,'',0,3,'Login-attempt from ###IP###, username \'%s\', password not accepted!',255,1,'::1','a:1:{i:0;s:5:\"typo3\";}',-1,0,'','',0,'',0,NULL,NULL),(133,0,1648329989,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',3,0,'::1','a:2:{i:0;s:5:\"typo3\";i:1;s:3:\"all\";}',-1,0,'','',0,'',0,NULL,NULL),(134,0,1648330034,1,2,8,'tt_content',0,0,'Record \'%s\' (%s) was updated. (Online).',1,10,'::1','a:3:{i:0;s:11:\"Test header\";i:1;s:12:\"tt_content:8\";s:7:\"history\";s:2:\"56\";}',1,0,'','',0,'',0,NULL,NULL),(135,0,1648330152,1,2,8,'tt_content',0,0,'Record \'%s\' (%s) was updated. (Online).',1,10,'::1','a:3:{i:0;s:11:\"Test header\";i:1;s:12:\"tt_content:8\";s:7:\"history\";s:2:\"57\";}',1,0,'','',0,'',0,NULL,NULL),(136,0,1648330164,1,2,8,'tt_content',0,0,'Record \'%s\' (%s) was updated. (Online).',1,10,'::1','a:3:{i:0;s:11:\"Test header\";i:1;s:12:\"tt_content:8\";s:7:\"history\";s:2:\"58\";}',1,0,'','',0,'',0,NULL,NULL),(137,0,1648330186,1,3,3,'sys_template',0,0,'Record \'%s\' (%s) was deleted from page \'%s\' (%s)',1,0,'::1','a:4:{i:0;s:13:\"single column\";i:1;s:14:\"sys_template:3\";i:2;s:12:\"SingleColumn\";i:3;i:3;}',3,0,'','',0,'',0,NULL,NULL),(138,0,1648330186,1,3,3,'pages',0,0,'Record \'%s\' (%s) was deleted from page \'%s\' (%s)',1,0,'::1','a:4:{i:0;s:12:\"SingleColumn\";i:1;s:7:\"pages:3\";i:2;s:4:\"Home\";i:3;i:1;}',3,0,'','',0,'',0,NULL,NULL),(139,0,1648330229,1,2,10,'tt_content',0,0,'Record \'%s\' (%s) was updated. (Online).',1,10,'::1','a:3:{i:0;s:5:\"test2\";i:1;s:13:\"tt_content:10\";s:7:\"history\";s:2:\"61\";}',1,0,'','',0,'',0,NULL,NULL);
/*!40000 ALTER TABLE `sys_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_news`
--

DROP TABLE IF EXISTS `sys_news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_news` (
  `uid` int unsigned NOT NULL AUTO_INCREMENT,
  `pid` int unsigned NOT NULL DEFAULT '0',
  `tstamp` int unsigned NOT NULL DEFAULT '0',
  `crdate` int unsigned NOT NULL DEFAULT '0',
  `cruser_id` int unsigned NOT NULL DEFAULT '0',
  `deleted` smallint unsigned NOT NULL DEFAULT '0',
  `hidden` smallint unsigned NOT NULL DEFAULT '0',
  `starttime` int unsigned NOT NULL DEFAULT '0',
  `endtime` int unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `content` mediumtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`,`deleted`,`hidden`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_news`
--

LOCK TABLES `sys_news` WRITE;
/*!40000 ALTER TABLE `sys_news` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_note`
--

DROP TABLE IF EXISTS `sys_note`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_note` (
  `uid` int unsigned NOT NULL AUTO_INCREMENT,
  `pid` int unsigned NOT NULL DEFAULT '0',
  `tstamp` int unsigned NOT NULL DEFAULT '0',
  `crdate` int unsigned NOT NULL DEFAULT '0',
  `cruser` int unsigned NOT NULL DEFAULT '0',
  `deleted` smallint unsigned NOT NULL DEFAULT '0',
  `sorting` int NOT NULL DEFAULT '0',
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `message` text COLLATE utf8mb4_unicode_ci,
  `personal` smallint unsigned NOT NULL DEFAULT '0',
  `category` smallint unsigned NOT NULL DEFAULT '0',
  `position` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`,`deleted`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_note`
--

LOCK TABLES `sys_note` WRITE;
/*!40000 ALTER TABLE `sys_note` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_note` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_refindex`
--

DROP TABLE IF EXISTS `sys_refindex`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_refindex` (
  `hash` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tablename` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `recuid` int NOT NULL DEFAULT '0',
  `field` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `flexpointer` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `softref_key` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `softref_id` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `sorting` int NOT NULL DEFAULT '0',
  `deleted` smallint NOT NULL DEFAULT '0',
  `workspace` int NOT NULL DEFAULT '0',
  `ref_table` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `ref_uid` int NOT NULL DEFAULT '0',
  `ref_string` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`hash`),
  KEY `lookup_rec` (`tablename`(100),`recuid`),
  KEY `lookup_uid` (`ref_table`(100),`ref_uid`),
  KEY `lookup_string` (`ref_string`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_refindex`
--

LOCK TABLES `sys_refindex` WRITE;
/*!40000 ALTER TABLE `sys_refindex` DISABLE KEYS */;
INSERT INTO `sys_refindex` VALUES ('0f701991a1f1e8a0b417e38b74ffedad','sys_file',7,'storage','','','',0,0,0,'sys_file_storage',1,''),('3179bf519a6d3002fd920551c5520596','sys_file',3,'storage','','','',0,0,0,'sys_file_storage',2,''),('56e45148ce58f6c3e83df52750626f63','sys_file',7,'metadata','','','',0,0,0,'sys_file_metadata',7,''),('59c41b9f1d5338d9417c9b6817e2c542','sys_file',2,'storage','','','',0,0,0,'sys_file_storage',1,''),('764ed7b4d26b234a0b36628e00db1247','sys_file',5,'storage','','','',0,0,0,'sys_file_storage',1,''),('76c27f157a3215976409898fad35cbb0','sys_file',2,'metadata','','','',0,0,0,'sys_file_metadata',2,''),('91091d9bd47d9b3a463ef1a771be0dd6','sys_file',4,'metadata','','','',0,0,0,'sys_file_metadata',4,''),('b1315f6a325027205050c81764294b72','sys_file',1,'storage','','','',0,0,0,'sys_file_storage',1,''),('b8f7c5f7a81efe6792630f9a8d6b15d0','sys_file',6,'storage','','','',0,0,0,'sys_file_storage',1,''),('d1657b650408849099784a78159bc058','sys_file',4,'storage','','','',0,0,0,'sys_file_storage',1,'');
/*!40000 ALTER TABLE `sys_refindex` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_registry`
--

DROP TABLE IF EXISTS `sys_registry`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_registry` (
  `uid` int unsigned NOT NULL AUTO_INCREMENT,
  `entry_namespace` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `entry_key` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `entry_value` mediumblob,
  PRIMARY KEY (`uid`),
  UNIQUE KEY `entry_identifier` (`entry_namespace`,`entry_key`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_registry`
--

LOCK TABLES `sys_registry` WRITE;
/*!40000 ALTER TABLE `sys_registry` DISABLE KEYS */;
INSERT INTO `sys_registry` VALUES (1,'installUpdate','TYPO3\\CMS\\Form\\Hooks\\FormFileExtensionUpdate',_binary 'i:1;'),(2,'installUpdate','TYPO3\\CMS\\Install\\Updates\\Typo3DbExtractionUpdate',_binary 'i:1;'),(3,'installUpdate','TYPO3\\CMS\\Install\\Updates\\FuncExtractionUpdate',_binary 'i:1;'),(4,'installUpdate','TYPO3\\CMS\\Install\\Updates\\MigrateUrlTypesInPagesUpdate',_binary 'i:1;'),(5,'installUpdate','TYPO3\\CMS\\Install\\Updates\\RedirectExtractionUpdate',_binary 'i:1;'),(6,'installUpdate','TYPO3\\CMS\\Install\\Updates\\BackendUserStartModuleUpdate',_binary 'i:1;'),(7,'installUpdate','TYPO3\\CMS\\Install\\Updates\\MigratePagesLanguageOverlayUpdate',_binary 'i:1;'),(8,'installUpdate','TYPO3\\CMS\\Install\\Updates\\MigratePagesLanguageOverlayBeGroupsAccessRights',_binary 'i:1;'),(9,'installUpdate','TYPO3\\CMS\\Install\\Updates\\BackendLayoutIconUpdateWizard',_binary 'i:1;'),(10,'installUpdate','TYPO3\\CMS\\Install\\Updates\\RedirectsExtensionUpdate',_binary 'i:1;'),(11,'installUpdate','TYPO3\\CMS\\Install\\Updates\\AdminPanelInstall',_binary 'i:1;'),(12,'installUpdate','TYPO3\\CMS\\Install\\Updates\\PopulatePageSlugs',_binary 'i:1;'),(13,'installUpdate','TYPO3\\CMS\\Install\\Updates\\Argon2iPasswordHashes',_binary 'i:1;'),(14,'installUpdate','TYPO3\\CMS\\Install\\Updates\\BackendUserConfigurationUpdate',_binary 'i:1;'),(15,'installUpdate','TYPO3\\CMS\\Install\\Updates\\RsaauthExtractionUpdate',_binary 'i:1;'),(16,'installUpdate','TYPO3\\CMS\\Install\\Updates\\FeeditExtractionUpdate',_binary 'i:1;'),(17,'installUpdate','TYPO3\\CMS\\Install\\Updates\\TaskcenterExtractionUpdate',_binary 'i:1;'),(18,'installUpdate','TYPO3\\CMS\\Install\\Updates\\SysActionExtractionUpdate',_binary 'i:1;'),(19,'installUpdate','TYPO3\\CMS\\Install\\Updates\\SvgFilesSanitization',_binary 'i:1;'),(20,'installUpdate','TYPO3\\CMS\\Felogin\\Updates\\MigrateFeloginPlugins',_binary 'i:1;'),(21,'installUpdateRows','rowUpdatersDone',_binary 'a:1:{i:0;s:69:\"TYPO3\\CMS\\Install\\Updates\\RowUpdater\\WorkspaceVersionRecordsMigration\";}'),(23,'extensionDataImport','typo3conf/ext/sample_extension/ext_tables_static+adt.sql',_binary 's:32:\"cd57437a5f633b70b114c94c126c4e1f\";'),(24,'extensionDataImport','typo3conf/ext/sampleextension/ext_tables_static+adt.sql',_binary 's:32:\"cd57437a5f633b70b114c94c126c4e1f\";'),(25,'extensionDataImport','typo3conf/ext/examples/ext_tables_static+adt.sql',_binary 's:0:\"\";'),(26,'core','formProtectionSessionToken:1',_binary 's:64:\"724af936fcb8c34c50517a67bb41540ca9ea759f59f5a32e2bb2d2b237f1aac1\";');
/*!40000 ALTER TABLE `sys_registry` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_template`
--

DROP TABLE IF EXISTS `sys_template`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_template` (
  `uid` int unsigned NOT NULL AUTO_INCREMENT,
  `pid` int NOT NULL DEFAULT '0',
  `tstamp` int unsigned NOT NULL DEFAULT '0',
  `crdate` int unsigned NOT NULL DEFAULT '0',
  `cruser_id` int unsigned NOT NULL DEFAULT '0',
  `deleted` smallint unsigned NOT NULL DEFAULT '0',
  `hidden` smallint unsigned NOT NULL DEFAULT '0',
  `starttime` int unsigned NOT NULL DEFAULT '0',
  `endtime` int unsigned NOT NULL DEFAULT '0',
  `sorting` int NOT NULL DEFAULT '0',
  `description` text COLLATE utf8mb4_unicode_ci,
  `t3_origuid` int unsigned NOT NULL DEFAULT '0',
  `t3ver_oid` int unsigned NOT NULL DEFAULT '0',
  `t3ver_wsid` int unsigned NOT NULL DEFAULT '0',
  `t3ver_state` smallint NOT NULL DEFAULT '0',
  `t3ver_stage` int NOT NULL DEFAULT '0',
  `t3ver_count` int unsigned NOT NULL DEFAULT '0',
  `t3ver_tstamp` int unsigned NOT NULL DEFAULT '0',
  `t3ver_move_id` int unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `sitetitle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `root` smallint unsigned NOT NULL DEFAULT '0',
  `clear` smallint unsigned NOT NULL DEFAULT '0',
  `include_static_file` text COLLATE utf8mb4_unicode_ci,
  `constants` text COLLATE utf8mb4_unicode_ci,
  `config` text COLLATE utf8mb4_unicode_ci,
  `basedOn` tinytext COLLATE utf8mb4_unicode_ci,
  `includeStaticAfterBasedOn` smallint unsigned NOT NULL DEFAULT '0',
  `static_file_mode` smallint unsigned NOT NULL DEFAULT '0',
  `tx_impexp_origuid` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `roottemplate` (`deleted`,`hidden`,`root`),
  KEY `parent` (`pid`,`deleted`,`hidden`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_template`
--

LOCK TABLES `sys_template` WRITE;
/*!40000 ALTER TABLE `sys_template` DISABLE KEYS */;
INSERT INTO `sys_template` VALUES (1,1,1648322009,1648144694,1,0,0,0,0,256,NULL,0,0,0,0,0,0,0,0,'main','',1,3,'EXT:fluid_styled_content/Configuration/TypoScript/,EXT:fluid_styled_content/Configuration/TypoScript/Styling/,EXT:sampleextension/Configuration/TypoScript',NULL,'lib {\r\n   topNavigation = HMENU\r\n   topNavigation {\r\n      1 = TMENU\r\n      1.NO.linkWrap = | |*| &nbsp;&nbsp;&nbsp; |*|\r\n   }\r\n   breadcrumbTrail = HMENU\r\n   breadcrumbTrail {\r\n      special = rootline\r\n      special.range = 0|-1\r\n      1 = TMENU\r\n      1.NO {\r\n         stdWrap.field = nav_title // title\r\n         ATagTitle.field = nav_title // title\r\n         linkWrap = | |*| &nbsp;&raquo;&nbsp; |*|\r\n      }\r\n      1.CUR = 1\r\n      1.CUR {\r\n         doNotLinkIt = 1\r\n         stdWrap.field = nav_title // title\r\n         linkWrap = | |*| &nbsp;&raquo;&nbsp;<em>|</em>|\r\n      }\r\n   }\r\n}','',0,0,0),(2,2,1648146568,1648145558,1,1,0,0,0,256,NULL,0,0,0,0,0,0,0,0,'NEW SITE','',1,3,NULL,NULL,'\n# Default PAGE object:\npage = PAGE\npage.10 = TEXT\npage.10.value = HELLO WORLD!\n','',0,0,0),(3,3,1648330186,1648199682,1,1,0,0,0,256,NULL,0,0,0,0,0,0,0,0,'single column','',1,3,NULL,NULL,'page = PAGE\r\npage.1 = FLUIDTEMPLATE\r\npage.1 {\r\n   templateName = Basic1Column\r\n   templateRootPaths.1 = fileadmin/sitedesign/Resources/Private/Templates\r\n   variables {\r\n      contentNormal < styles.content.get\r\n   }\r\n}','',0,0,0);
/*!40000 ALTER TABLE `sys_template` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tt_content`
--

DROP TABLE IF EXISTS `tt_content`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tt_content` (
  `uid` int unsigned NOT NULL AUTO_INCREMENT,
  `rowDescription` text COLLATE utf8mb4_unicode_ci,
  `pid` int NOT NULL DEFAULT '0',
  `tstamp` int unsigned NOT NULL DEFAULT '0',
  `crdate` int unsigned NOT NULL DEFAULT '0',
  `cruser_id` int unsigned NOT NULL DEFAULT '0',
  `deleted` smallint unsigned NOT NULL DEFAULT '0',
  `hidden` smallint unsigned NOT NULL DEFAULT '0',
  `starttime` int unsigned NOT NULL DEFAULT '0',
  `endtime` int unsigned NOT NULL DEFAULT '0',
  `fe_group` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `sorting` int NOT NULL DEFAULT '0',
  `editlock` smallint unsigned NOT NULL DEFAULT '0',
  `sys_language_uid` int NOT NULL DEFAULT '0',
  `l18n_parent` int unsigned NOT NULL DEFAULT '0',
  `l10n_source` int unsigned NOT NULL DEFAULT '0',
  `l10n_state` text COLLATE utf8mb4_unicode_ci,
  `t3_origuid` int unsigned NOT NULL DEFAULT '0',
  `l18n_diffsource` mediumblob,
  `t3ver_oid` int unsigned NOT NULL DEFAULT '0',
  `t3ver_wsid` int unsigned NOT NULL DEFAULT '0',
  `t3ver_state` smallint NOT NULL DEFAULT '0',
  `t3ver_stage` int NOT NULL DEFAULT '0',
  `t3ver_count` int unsigned NOT NULL DEFAULT '0',
  `t3ver_tstamp` int unsigned NOT NULL DEFAULT '0',
  `t3ver_move_id` int unsigned NOT NULL DEFAULT '0',
  `CType` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `header` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `header_position` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `bodytext` mediumtext COLLATE utf8mb4_unicode_ci,
  `bullets_type` smallint unsigned NOT NULL DEFAULT '0',
  `uploads_description` smallint unsigned NOT NULL DEFAULT '0',
  `uploads_type` smallint unsigned NOT NULL DEFAULT '0',
  `assets` int unsigned NOT NULL DEFAULT '0',
  `image` int unsigned NOT NULL DEFAULT '0',
  `imagewidth` int unsigned NOT NULL DEFAULT '0',
  `imageorient` smallint unsigned NOT NULL DEFAULT '0',
  `imagecols` smallint unsigned NOT NULL DEFAULT '0',
  `imageborder` smallint unsigned NOT NULL DEFAULT '0',
  `media` int unsigned NOT NULL DEFAULT '0',
  `layout` int unsigned NOT NULL DEFAULT '0',
  `frame_class` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'default',
  `cols` int unsigned NOT NULL DEFAULT '0',
  `space_before_class` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `space_after_class` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `records` text COLLATE utf8mb4_unicode_ci,
  `pages` text COLLATE utf8mb4_unicode_ci,
  `colPos` int unsigned NOT NULL DEFAULT '0',
  `subheader` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `header_link` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `image_zoom` smallint unsigned NOT NULL DEFAULT '0',
  `header_layout` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `list_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `sectionIndex` smallint unsigned NOT NULL DEFAULT '0',
  `linkToTop` smallint unsigned NOT NULL DEFAULT '0',
  `file_collections` text COLLATE utf8mb4_unicode_ci,
  `filelink_size` smallint unsigned NOT NULL DEFAULT '0',
  `filelink_sorting` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `filelink_sorting_direction` varchar(4) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `target` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `date` int unsigned NOT NULL DEFAULT '0',
  `recursive` smallint unsigned NOT NULL DEFAULT '0',
  `imageheight` int unsigned NOT NULL DEFAULT '0',
  `pi_flexform` mediumtext COLLATE utf8mb4_unicode_ci,
  `accessibility_title` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `accessibility_bypass` smallint unsigned NOT NULL DEFAULT '0',
  `accessibility_bypass_text` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `selected_categories` text COLLATE utf8mb4_unicode_ci,
  `category_field` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `table_class` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `table_caption` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `table_delimiter` smallint unsigned NOT NULL DEFAULT '0',
  `table_enclosure` smallint unsigned NOT NULL DEFAULT '0',
  `table_header_position` smallint unsigned NOT NULL DEFAULT '0',
  `table_tfoot` smallint unsigned NOT NULL DEFAULT '0',
  `tx_impexp_origuid` int NOT NULL DEFAULT '0',
  `categories` int NOT NULL DEFAULT '0',
  `tx_examples_noprint` smallint NOT NULL DEFAULT '0',
  `buttontext` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `buttonurl` varchar(2083) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`,`sorting`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`),
  KEY `language` (`l18n_parent`,`sys_language_uid`),
  KEY `translation_source` (`l10n_source`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tt_content`
--

LOCK TABLES `tt_content` WRITE;
/*!40000 ALTER TABLE `tt_content` DISABLE KEYS */;
INSERT INTO `tt_content` VALUES (1,'',1,1648136574,1648129018,1,1,0,0,0,'',256,0,0,0,0,NULL,0,_binary 'a:1:{s:6:\"hidden\";N;}',0,0,0,0,0,0,0,'sampleextension_jumbotron','aaa','','<p>eee</p>',0,0,0,0,0,0,0,2,0,0,0,'default',0,'','',NULL,NULL,0,'','',0,'0','',1,0,NULL,0,'','','',0,0,0,'<?xml version=\"1.0\" encoding=\"utf-8\" standalone=\"yes\" ?>\n<T3FlexForms>\n    <data>\n        <sheet index=\"sDEF\">\n            <language index=\"lDEF\">\n                <field index=\"settings.persistenceIdentifier\">\n                    <value index=\"vDEF\"></value>\n                </field>\n            </language>\n        </sheet>\n    </data>\n</T3FlexForms>','',0,'',NULL,'','',NULL,124,0,0,0,0,0,0,NULL,NULL),(2,'',1,1648130812,1648130188,1,1,0,0,0,'',512,0,0,0,0,NULL,0,'',0,0,0,0,0,0,0,'sampleextension_jumbotron','','',NULL,0,0,0,0,0,0,0,2,0,0,0,'default',0,'','',NULL,NULL,0,'','',0,'0','',1,0,NULL,0,'','','',0,0,0,NULL,'',0,'',NULL,'','',NULL,124,0,0,0,0,0,0,NULL,NULL),(3,'',1,1648136577,1648131355,1,1,0,0,0,'',512,0,0,0,0,NULL,0,'',0,0,0,0,0,0,0,'sampleextension_jumbotron','','',NULL,0,0,0,0,0,0,0,2,0,0,0,'default',0,'','',NULL,NULL,0,'','',0,'0','',1,0,NULL,0,'','','',0,0,0,NULL,'',0,'',NULL,'','',NULL,124,0,0,0,0,0,0,NULL,NULL),(4,'',1,1648136572,1648132100,1,1,0,0,0,'',128,0,0,0,0,NULL,0,'',0,0,0,0,0,0,0,'sampleextension_jumbotron','','',NULL,0,0,0,0,0,0,0,2,0,0,0,'default',0,'','',NULL,NULL,0,'','',0,'0','',1,0,NULL,0,'','','',0,0,0,NULL,'',0,'',NULL,'','',NULL,124,0,0,0,0,0,0,NULL,NULL),(5,'',1,1648136579,1648132260,1,1,0,0,0,'',768,0,0,0,0,NULL,0,'',0,0,0,0,0,0,0,'sampleextension_jumbotron','','',NULL,0,0,0,0,0,0,0,2,0,0,0,'default',0,'','',NULL,NULL,0,'','',0,'0','',1,0,NULL,0,'','','',0,0,0,NULL,'',0,'',NULL,'','',NULL,124,0,0,0,0,0,0,NULL,NULL),(6,NULL,1,1648136570,1648136444,1,1,0,0,0,'',64,0,0,0,0,NULL,0,'',0,0,0,0,0,0,0,'header','','','',0,0,0,0,0,0,0,2,0,0,0,'default',0,'','',NULL,NULL,0,'','',0,'0','',1,0,NULL,0,'','','',0,0,0,NULL,'',0,'',NULL,'','',NULL,124,0,0,0,0,0,0,NULL,NULL),(7,NULL,1,1648140800,1648139797,1,1,0,0,0,'',256,0,0,0,0,NULL,0,'',0,0,0,0,0,0,0,'textmedia','','','',0,0,0,0,0,0,0,2,0,0,0,'default',0,'','',NULL,NULL,0,'','',0,'0','',1,0,NULL,0,'','','',0,0,0,NULL,'',0,'',NULL,'','',NULL,124,0,0,0,0,0,0,NULL,NULL),(8,NULL,1,1648330164,1648140068,1,0,0,0,0,'',512,0,0,0,0,NULL,0,_binary 'a:12:{s:5:\"CType\";N;s:6:\"colPos\";N;s:6:\"header\";N;s:9:\"subheader\";N;s:8:\"bodytext\";N;s:9:\"buttonurl\";N;s:10:\"buttontext\";N;s:6:\"hidden\";N;s:9:\"starttime\";N;s:7:\"endtime\";N;s:8:\"fe_group\";N;s:8:\"editlock\";N;}',0,0,0,0,0,0,0,'sampleextension_jumbotron','Test header','','<p>test text</p>',0,0,0,0,0,0,0,2,0,0,0,'default',0,'','',NULL,NULL,0,'test subheader','',0,'0','',1,0,NULL,0,'','','',0,0,0,NULL,'',0,'',NULL,'','',NULL,124,0,0,0,0,0,0,'sample btn text','https://google.pl google.pl'),(9,'',2,1648146568,1648141133,1,1,0,0,0,'',256,0,0,0,0,NULL,0,'',0,0,0,0,0,0,0,'header','sss','',NULL,0,0,0,0,0,0,0,2,0,0,0,'default',0,'','',NULL,NULL,0,'','',0,'0','',1,0,NULL,0,'','','',0,0,0,NULL,'',0,'',NULL,'','',NULL,124,0,0,0,0,0,0,NULL,NULL),(10,'',1,1648330229,1648145451,1,0,0,0,0,'',256,0,0,0,0,NULL,0,_binary 'a:22:{s:5:\"CType\";N;s:6:\"colPos\";N;s:6:\"header\";N;s:13:\"header_layout\";N;s:15:\"header_position\";N;s:4:\"date\";N;s:11:\"header_link\";N;s:9:\"subheader\";N;s:6:\"layout\";N;s:11:\"frame_class\";N;s:18:\"space_before_class\";N;s:17:\"space_after_class\";N;s:12:\"sectionIndex\";N;s:9:\"linkToTop\";N;s:16:\"sys_language_uid\";N;s:6:\"hidden\";N;s:9:\"starttime\";N;s:7:\"endtime\";N;s:8:\"fe_group\";N;s:8:\"editlock\";N;s:10:\"categories\";N;s:14:\"rowDescription\";N;}',0,0,0,0,0,0,0,'header','test2','',NULL,0,0,0,0,0,0,0,2,0,0,0,'default',0,'','',NULL,NULL,0,'','https://google.pl google.pl',0,'0','',1,0,NULL,0,'','','',0,0,0,NULL,'',0,'',NULL,'','',NULL,124,0,0,0,0,0,0,NULL,NULL);
/*!40000 ALTER TABLE `tt_content` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_examples_dummy`
--

DROP TABLE IF EXISTS `tx_examples_dummy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tx_examples_dummy` (
  `uid` int NOT NULL AUTO_INCREMENT,
  `pid` int NOT NULL DEFAULT '0',
  `tstamp` int NOT NULL DEFAULT '0',
  `crdate` int NOT NULL DEFAULT '0',
  `cruser_id` int NOT NULL DEFAULT '0',
  `deleted` smallint NOT NULL DEFAULT '0',
  `hidden` smallint NOT NULL DEFAULT '0',
  `record_type` smallint NOT NULL DEFAULT '0',
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `some_date` int NOT NULL DEFAULT '0',
  `enforce_date` smallint NOT NULL DEFAULT '0',
  `description` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_examples_dummy`
--

LOCK TABLES `tx_examples_dummy` WRITE;
/*!40000 ALTER TABLE `tx_examples_dummy` DISABLE KEYS */;
/*!40000 ALTER TABLE `tx_examples_dummy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_examples_haiku`
--

DROP TABLE IF EXISTS `tx_examples_haiku`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tx_examples_haiku` (
  `uid` int NOT NULL AUTO_INCREMENT,
  `pid` int NOT NULL DEFAULT '0',
  `tstamp` int NOT NULL DEFAULT '0',
  `crdate` int NOT NULL DEFAULT '0',
  `cruser_id` int NOT NULL DEFAULT '0',
  `deleted` smallint NOT NULL DEFAULT '0',
  `hidden` smallint NOT NULL DEFAULT '0',
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `poem` text COLLATE utf8mb4_unicode_ci,
  `filename` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `filesource` smallint NOT NULL DEFAULT '0',
  `filestatus` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `season` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `weirdness` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `color` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `angle` int NOT NULL DEFAULT '0',
  `image1` text COLLATE utf8mb4_unicode_ci,
  `image2` text COLLATE utf8mb4_unicode_ci,
  `image3` text COLLATE utf8mb4_unicode_ci,
  `image4` text COLLATE utf8mb4_unicode_ci,
  `image5` text COLLATE utf8mb4_unicode_ci,
  `image6` text COLLATE utf8mb4_unicode_ci,
  `image_fal_group` text COLLATE utf8mb4_unicode_ci,
  `image_fal_irre` text COLLATE utf8mb4_unicode_ci,
  `reference_page` int NOT NULL DEFAULT '0',
  `related_records` text COLLATE utf8mb4_unicode_ci,
  `related_content` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_examples_haiku`
--

LOCK TABLES `tx_examples_haiku` WRITE;
/*!40000 ALTER TABLE `tx_examples_haiku` DISABLE KEYS */;
/*!40000 ALTER TABLE `tx_examples_haiku` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_examples_log`
--

DROP TABLE IF EXISTS `tx_examples_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tx_examples_log` (
  `request_id` varchar(13) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `time_micro` double NOT NULL DEFAULT '0',
  `component` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `level` smallint unsigned NOT NULL DEFAULT '0',
  `message` text COLLATE utf8mb4_unicode_ci,
  `data` text COLLATE utf8mb4_unicode_ci,
  KEY `request` (`request_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_examples_log`
--

LOCK TABLES `tx_examples_log` WRITE;
/*!40000 ALTER TABLE `tx_examples_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `tx_examples_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_extensionmanager_domain_model_extension`
--

DROP TABLE IF EXISTS `tx_extensionmanager_domain_model_extension`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tx_extensionmanager_domain_model_extension` (
  `uid` int unsigned NOT NULL AUTO_INCREMENT,
  `pid` int unsigned NOT NULL DEFAULT '0',
  `extension_key` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `repository` int unsigned NOT NULL DEFAULT '1',
  `version` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alldownloadcounter` int unsigned NOT NULL DEFAULT '0',
  `downloadcounter` int unsigned NOT NULL DEFAULT '0',
  `title` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` mediumtext COLLATE utf8mb4_unicode_ci,
  `state` int NOT NULL DEFAULT '0',
  `review_state` int NOT NULL DEFAULT '0',
  `category` int NOT NULL DEFAULT '0',
  `last_updated` int unsigned NOT NULL DEFAULT '0',
  `serialized_dependencies` mediumtext COLLATE utf8mb4_unicode_ci,
  `author_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `author_email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `ownerusername` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `md5hash` varchar(35) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `update_comment` mediumtext COLLATE utf8mb4_unicode_ci,
  `authorcompany` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `integer_version` int NOT NULL DEFAULT '0',
  `current_version` int NOT NULL DEFAULT '0',
  `lastreviewedversion` int NOT NULL DEFAULT '0',
  `documentation_link` varchar(2048) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`uid`),
  UNIQUE KEY `versionextrepo` (`extension_key`,`version`,`repository`),
  KEY `index_extrepo` (`extension_key`,`repository`),
  KEY `index_versionrepo` (`integer_version`,`repository`,`extension_key`),
  KEY `index_currentversions` (`current_version`,`review_state`),
  KEY `parent` (`pid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_extensionmanager_domain_model_extension`
--

LOCK TABLES `tx_extensionmanager_domain_model_extension` WRITE;
/*!40000 ALTER TABLE `tx_extensionmanager_domain_model_extension` DISABLE KEYS */;
/*!40000 ALTER TABLE `tx_extensionmanager_domain_model_extension` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_extensionmanager_domain_model_repository`
--

DROP TABLE IF EXISTS `tx_extensionmanager_domain_model_repository`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tx_extensionmanager_domain_model_repository` (
  `uid` int unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` mediumtext COLLATE utf8mb4_unicode_ci,
  `wsdl_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `mirror_list_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `last_update` int unsigned NOT NULL DEFAULT '0',
  `extension_count` int NOT NULL DEFAULT '0',
  `pid` int unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_extensionmanager_domain_model_repository`
--

LOCK TABLES `tx_extensionmanager_domain_model_repository` WRITE;
/*!40000 ALTER TABLE `tx_extensionmanager_domain_model_repository` DISABLE KEYS */;
INSERT INTO `tx_extensionmanager_domain_model_repository` VALUES (1,'TYPO3.org Main Repository','Main repository on typo3.org. This repository has some mirrors configured which are available with the mirror url.','https://typo3.org/wsdl/tx_ter_wsdl.php','https://repositories.typo3.org/mirrors.xml.gz',1346191200,0,0);
/*!40000 ALTER TABLE `tx_extensionmanager_domain_model_repository` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_impexp_presets`
--

DROP TABLE IF EXISTS `tx_impexp_presets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tx_impexp_presets` (
  `uid` int unsigned NOT NULL AUTO_INCREMENT,
  `pid` int unsigned NOT NULL DEFAULT '0',
  `tstamp` int unsigned NOT NULL DEFAULT '0',
  `crdate` int unsigned NOT NULL DEFAULT '0',
  `user_uid` int unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `public` smallint NOT NULL DEFAULT '0',
  `item_uid` int NOT NULL DEFAULT '0',
  `preset_data` blob,
  PRIMARY KEY (`uid`),
  KEY `lookup` (`item_uid`),
  KEY `parent` (`pid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_impexp_presets`
--

LOCK TABLES `tx_impexp_presets` WRITE;
/*!40000 ALTER TABLE `tx_impexp_presets` DISABLE KEYS */;
/*!40000 ALTER TABLE `tx_impexp_presets` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-03-26 22:48:27
