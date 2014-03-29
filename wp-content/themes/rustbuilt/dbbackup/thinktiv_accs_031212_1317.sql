-- MySQL dump 10.11
--
-- Host: localhost    Database: thinktiv_accs
-- ------------------------------------------------------
-- Server version	5.0.95

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
-- Table structure for table `modx_accelerists`
--

DROP TABLE IF EXISTS `modx_accelerists`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `modx_accelerists` (
  `id` int(11) NOT NULL auto_increment,
  `twitter_id` varchar(100) default NULL,
  `addedon` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `twitter_id` (`twitter_id`)
) ENGINE=MyISAM AUTO_INCREMENT=34 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modx_accelerists`
--

LOCK TABLES `modx_accelerists` WRITE;
/*!40000 ALTER TABLE `modx_accelerists` DISABLE KEYS */;
INSERT INTO `modx_accelerists` VALUES (1,'thakre_15','2012-03-07 14:20:30'),(2,'tesh11','2012-03-08 21:21:47'),(3,'mrpauly','2012-03-08 21:31:11'),(4,'thinktivsteve','2012-03-09 20:49:09'),(5,'youcandoit','2012-03-09 21:06:18'),(6,'getmetacos','2012-03-09 21:08:39'),(7,'justinpetro','2012-03-09 21:13:44'),(8,'davidpcrawford','2012-03-09 21:15:40'),(9,'jamiecarlin','2012-03-09 21:17:36'),(10,'sarahawalter','2012-03-09 21:22:12'),(11,'zjpanz','2012-03-09 21:29:23'),(12,'iragsdale','2012-03-09 21:29:51'),(13,'Sfrancisatx','2012-03-09 21:35:32'),(14,'Startshouting','2012-03-09 21:38:31'),(15,'lindsey822','2012-03-09 22:05:12'),(16,'berkokid','2012-03-09 22:16:47'),(17,'timjuravich','2012-03-09 22:31:13'),(18,'maprentice','2012-03-09 22:36:47'),(19,'RyanKennedy','2012-03-09 22:47:48'),(20,'laurengolem','2012-03-09 22:51:58'),(21,'Brazenkitchen','2012-03-09 22:55:23'),(22,'joshuabaer','2012-03-09 23:13:16'),(23,'PittsTechAudrey','2012-03-10 01:02:22'),(24,'mressler','2012-03-10 05:01:33'),(25,'bockius','2012-03-10 16:00:29'),(26,'dbryanjones','2012-03-10 16:17:31'),(27,'MscribnerMSSB','2012-03-10 16:23:37'),(28,'duncanistan','2012-03-10 16:31:23'),(29,'jongovi','2012-03-10 16:58:10'),(30,'iamWillPowers','2012-03-10 22:58:56'),(31,'accelerists','2012-03-11 02:34:12'),(32,'slibertypgh','2012-03-11 02:35:15'),(33,'thinktiv','2012-03-11 02:44:12');
/*!40000 ALTER TABLE `modx_accelerists` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modx_access_actiondom`
--

DROP TABLE IF EXISTS `modx_access_actiondom`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `modx_access_actiondom` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `target` varchar(100) NOT NULL default '',
  `principal_class` varchar(100) NOT NULL default 'modPrincipal',
  `principal` int(10) unsigned NOT NULL default '0',
  `authority` int(10) unsigned NOT NULL default '9999',
  `policy` int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (`id`),
  KEY `target` (`target`),
  KEY `principal_class` (`principal_class`),
  KEY `principal` (`principal`),
  KEY `authority` (`authority`),
  KEY `policy` (`policy`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modx_access_actiondom`
--

LOCK TABLES `modx_access_actiondom` WRITE;
/*!40000 ALTER TABLE `modx_access_actiondom` DISABLE KEYS */;
/*!40000 ALTER TABLE `modx_access_actiondom` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modx_access_actions`
--

DROP TABLE IF EXISTS `modx_access_actions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `modx_access_actions` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `target` varchar(100) NOT NULL default '',
  `principal_class` varchar(100) NOT NULL default 'modPrincipal',
  `principal` int(10) unsigned NOT NULL default '0',
  `authority` int(10) unsigned NOT NULL default '9999',
  `policy` int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (`id`),
  KEY `target` (`target`),
  KEY `principal_class` (`principal_class`),
  KEY `principal` (`principal`),
  KEY `authority` (`authority`),
  KEY `policy` (`policy`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modx_access_actions`
--

LOCK TABLES `modx_access_actions` WRITE;
/*!40000 ALTER TABLE `modx_access_actions` DISABLE KEYS */;
/*!40000 ALTER TABLE `modx_access_actions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modx_access_category`
--

DROP TABLE IF EXISTS `modx_access_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `modx_access_category` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `target` varchar(100) NOT NULL default '',
  `principal_class` varchar(100) NOT NULL default 'modPrincipal',
  `principal` int(10) unsigned NOT NULL default '0',
  `authority` int(10) unsigned NOT NULL default '9999',
  `policy` int(10) unsigned NOT NULL default '0',
  `context_key` varchar(100) NOT NULL default '',
  PRIMARY KEY  (`id`),
  KEY `target` (`target`),
  KEY `principal_class` (`principal_class`),
  KEY `principal` (`principal`),
  KEY `authority` (`authority`),
  KEY `policy` (`policy`),
  KEY `context_key` (`context_key`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modx_access_category`
--

LOCK TABLES `modx_access_category` WRITE;
/*!40000 ALTER TABLE `modx_access_category` DISABLE KEYS */;
/*!40000 ALTER TABLE `modx_access_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modx_access_context`
--

DROP TABLE IF EXISTS `modx_access_context`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `modx_access_context` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `target` varchar(100) NOT NULL default '',
  `principal_class` varchar(100) NOT NULL default 'modPrincipal',
  `principal` int(10) unsigned NOT NULL default '0',
  `authority` int(10) unsigned NOT NULL default '9999',
  `policy` int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (`id`),
  KEY `target` (`target`),
  KEY `principal_class` (`principal_class`),
  KEY `principal` (`principal`),
  KEY `authority` (`authority`),
  KEY `policy` (`policy`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modx_access_context`
--

LOCK TABLES `modx_access_context` WRITE;
/*!40000 ALTER TABLE `modx_access_context` DISABLE KEYS */;
INSERT INTO `modx_access_context` VALUES (1,'web','modUserGroup',0,9999,3),(2,'mgr','modUserGroup',1,0,2),(3,'web','modUserGroup',1,0,2);
/*!40000 ALTER TABLE `modx_access_context` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modx_access_elements`
--

DROP TABLE IF EXISTS `modx_access_elements`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `modx_access_elements` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `target` varchar(100) NOT NULL default '',
  `principal_class` varchar(100) NOT NULL default 'modPrincipal',
  `principal` int(10) unsigned NOT NULL default '0',
  `authority` int(10) unsigned NOT NULL default '9999',
  `policy` int(10) unsigned NOT NULL default '0',
  `context_key` varchar(100) NOT NULL default '',
  PRIMARY KEY  (`id`),
  KEY `target` (`target`),
  KEY `principal_class` (`principal_class`),
  KEY `principal` (`principal`),
  KEY `authority` (`authority`),
  KEY `policy` (`policy`),
  KEY `context_key` (`context_key`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modx_access_elements`
--

LOCK TABLES `modx_access_elements` WRITE;
/*!40000 ALTER TABLE `modx_access_elements` DISABLE KEYS */;
/*!40000 ALTER TABLE `modx_access_elements` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modx_access_media_source`
--

DROP TABLE IF EXISTS `modx_access_media_source`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `modx_access_media_source` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `target` varchar(100) NOT NULL default '',
  `principal_class` varchar(100) NOT NULL default 'modPrincipal',
  `principal` int(10) unsigned NOT NULL default '0',
  `authority` int(10) unsigned NOT NULL default '9999',
  `policy` int(10) unsigned NOT NULL default '0',
  `context_key` varchar(100) NOT NULL default '',
  PRIMARY KEY  (`id`),
  KEY `target` (`target`),
  KEY `principal_class` (`principal_class`),
  KEY `principal` (`principal`),
  KEY `authority` (`authority`),
  KEY `policy` (`policy`),
  KEY `context_key` (`context_key`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modx_access_media_source`
--

LOCK TABLES `modx_access_media_source` WRITE;
/*!40000 ALTER TABLE `modx_access_media_source` DISABLE KEYS */;
/*!40000 ALTER TABLE `modx_access_media_source` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modx_access_menus`
--

DROP TABLE IF EXISTS `modx_access_menus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `modx_access_menus` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `target` varchar(100) NOT NULL default '',
  `principal_class` varchar(100) NOT NULL default 'modPrincipal',
  `principal` int(10) unsigned NOT NULL default '0',
  `authority` int(10) unsigned NOT NULL default '9999',
  `policy` int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (`id`),
  KEY `target` (`target`),
  KEY `principal_class` (`principal_class`),
  KEY `principal` (`principal`),
  KEY `authority` (`authority`),
  KEY `policy` (`policy`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modx_access_menus`
--

LOCK TABLES `modx_access_menus` WRITE;
/*!40000 ALTER TABLE `modx_access_menus` DISABLE KEYS */;
/*!40000 ALTER TABLE `modx_access_menus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modx_access_permissions`
--

DROP TABLE IF EXISTS `modx_access_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `modx_access_permissions` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `template` int(10) unsigned NOT NULL default '0',
  `name` varchar(255) NOT NULL default '',
  `description` text NOT NULL,
  `value` tinyint(1) unsigned NOT NULL default '1',
  PRIMARY KEY  (`id`),
  KEY `template` (`template`),
  KEY `name` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=208 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modx_access_permissions`
--

LOCK TABLES `modx_access_permissions` WRITE;
/*!40000 ALTER TABLE `modx_access_permissions` DISABLE KEYS */;
INSERT INTO `modx_access_permissions` VALUES (1,1,'about','perm.about_desc',1),(2,1,'access_permissions','perm.access_permissions_desc',1),(3,1,'actions','perm.actions_desc',1),(4,1,'change_password','perm.change_password_desc',1),(5,1,'change_profile','perm.change_profile_desc',1),(6,1,'charsets','perm.charsets_desc',1),(7,1,'class_map','perm.class_map_desc',1),(8,1,'components','perm.components_desc',1),(9,1,'content_types','perm.content_types_desc',1),(10,1,'countries','perm.countries_desc',1),(11,1,'create','perm.create_desc',1),(12,1,'credits','perm.credits_desc',1),(13,1,'customize_forms','perm.customize_forms_desc',1),(14,1,'dashboards','perm.dashboards_desc',1),(15,1,'database','perm.database_desc',1),(16,1,'database_truncate','perm.database_truncate_desc',1),(17,1,'delete_category','perm.delete_category_desc',1),(18,1,'delete_chunk','perm.delete_chunk_desc',1),(19,1,'delete_context','perm.delete_context_desc',1),(20,1,'delete_document','perm.delete_document_desc',1),(21,1,'delete_eventlog','perm.delete_eventlog_desc',1),(22,1,'delete_plugin','perm.delete_plugin_desc',1),(23,1,'delete_propertyset','perm.delete_propertyset_desc',1),(24,1,'delete_snippet','perm.delete_snippet_desc',1),(25,1,'delete_template','perm.delete_template_desc',1),(26,1,'delete_tv','perm.delete_tv_desc',1),(27,1,'delete_role','perm.delete_role_desc',1),(28,1,'delete_user','perm.delete_user_desc',1),(29,1,'directory_chmod','perm.directory_chmod_desc',1),(30,1,'directory_create','perm.directory_create_desc',1),(31,1,'directory_list','perm.directory_list_desc',1),(32,1,'directory_remove','perm.directory_remove_desc',1),(33,1,'directory_update','perm.directory_update_desc',1),(34,1,'edit_category','perm.edit_category_desc',1),(35,1,'edit_chunk','perm.edit_chunk_desc',1),(36,1,'edit_context','perm.edit_context_desc',1),(37,1,'edit_document','perm.edit_document_desc',1),(38,1,'edit_locked','perm.edit_locked_desc',1),(39,1,'edit_plugin','perm.edit_plugin_desc',1),(40,1,'edit_propertyset','perm.edit_propertyset_desc',1),(41,1,'edit_role','perm.edit_role_desc',1),(42,1,'edit_snippet','perm.edit_snippet_desc',1),(43,1,'edit_template','perm.edit_template_desc',1),(44,1,'edit_tv','perm.edit_tv_desc',1),(45,1,'edit_user','perm.edit_user_desc',1),(46,1,'element_tree','perm.element_tree_desc',1),(47,1,'empty_cache','perm.empty_cache_desc',1),(48,1,'error_log_erase','perm.error_log_erase_desc',1),(49,1,'error_log_view','perm.error_log_view_desc',1),(50,1,'export_static','perm.export_static_desc',1),(51,1,'file_create','perm.file_create_desc',1),(52,1,'file_list','perm.file_list_desc',1),(53,1,'file_manager','perm.file_manager_desc',1),(54,1,'file_remove','perm.file_remove_desc',1),(55,1,'file_tree','perm.file_tree_desc',1),(56,1,'file_update','perm.file_update_desc',1),(57,1,'file_upload','perm.file_upload_desc',1),(58,1,'file_view','perm.file_view_desc',1),(59,1,'flush_sessions','perm.flush_sessions_desc',1),(60,1,'frames','perm.frames_desc',1),(61,1,'help','perm.help_desc',1),(62,1,'home','perm.home_desc',1),(63,1,'import_static','perm.import_static_desc',1),(64,1,'languages','perm.languages_desc',1),(65,1,'lexicons','perm.lexicons_desc',1),(66,1,'list','perm.list_desc',1),(67,1,'load','perm.load_desc',1),(68,1,'logout','perm.logout_desc',1),(69,1,'logs','perm.logs_desc',1),(70,1,'menu_reports','perm.menu_reports_desc',1),(71,1,'menu_security','perm.menu_security_desc',1),(72,1,'menu_site','perm.menu_site_desc',1),(73,1,'menu_support','perm.menu_support_desc',1),(74,1,'menu_system','perm.menu_system_desc',1),(75,1,'menu_tools','perm.menu_tools_desc',1),(76,1,'menu_user','perm.menu_user_desc',1),(77,1,'menus','perm.menus_desc',1),(78,1,'messages','perm.messages_desc',1),(79,1,'namespaces','perm.namespaces_desc',1),(80,1,'new_category','perm.new_category_desc',1),(81,1,'new_chunk','perm.new_chunk_desc',1),(82,1,'new_context','perm.new_context_desc',1),(83,1,'new_document','perm.new_document_desc',1),(84,1,'new_static_resource','perm.new_static_resource_desc',1),(85,1,'new_symlink','perm.new_symlink_desc',1),(86,1,'new_weblink','perm.new_weblink_desc',1),(87,1,'new_document_in_root','perm.new_document_in_root_desc',1),(88,1,'new_plugin','perm.new_plugin_desc',1),(89,1,'new_propertyset','perm.new_propertyset_desc',1),(90,1,'new_role','perm.new_role_desc',1),(91,1,'new_snippet','perm.new_snippet_desc',1),(92,1,'new_template','perm.new_template_desc',1),(93,1,'new_tv','perm.new_tv_desc',1),(94,1,'new_user','perm.new_user_desc',1),(95,1,'packages','perm.packages_desc',1),(96,1,'policy_delete','perm.policy_delete_desc',1),(97,1,'policy_edit','perm.policy_edit_desc',1),(98,1,'policy_new','perm.policy_new_desc',1),(99,1,'policy_save','perm.policy_save_desc',1),(100,1,'policy_view','perm.policy_view_desc',1),(101,1,'policy_template_delete','perm.policy_template_delete_desc',1),(102,1,'policy_template_edit','perm.policy_template_edit_desc',1),(103,1,'policy_template_new','perm.policy_template_new_desc',1),(104,1,'policy_template_save','perm.policy_template_save_desc',1),(105,1,'policy_template_view','perm.policy_template_view_desc',1),(106,1,'property_sets','perm.property_sets_desc',1),(107,1,'providers','perm.providers_desc',1),(108,1,'publish_document','perm.publish_document_desc',1),(109,1,'purge_deleted','perm.purge_deleted_desc',1),(110,1,'remove','perm.remove_desc',1),(111,1,'remove_locks','perm.remove_locks_desc',1),(112,1,'resource_duplicate','perm.resource_duplicate_desc',1),(113,1,'resourcegroup_delete','perm.resourcegroup_delete_desc',1),(114,1,'resourcegroup_edit','perm.resourcegroup_edit_desc',1),(115,1,'resourcegroup_new','perm.resourcegroup_new_desc',1),(116,1,'resourcegroup_resource_edit','perm.resourcegroup_resource_edit_desc',1),(117,1,'resourcegroup_resource_list','perm.resourcegroup_resource_list_desc',1),(118,1,'resourcegroup_save','perm.resourcegroup_save_desc',1),(119,1,'resourcegroup_view','perm.resourcegroup_view_desc',1),(120,1,'resource_quick_create','perm.resource_quick_create_desc',1),(121,1,'resource_quick_update','perm.resource_quick_update_desc',1),(122,1,'resource_tree','perm.resource_tree_desc',1),(123,1,'save','perm.save_desc',1),(124,1,'save_category','perm.save_category_desc',1),(125,1,'save_chunk','perm.save_chunk_desc',1),(126,1,'save_context','perm.save_context_desc',1),(127,1,'save_document','perm.save_document_desc',1),(128,1,'save_plugin','perm.save_plugin_desc',1),(129,1,'save_propertyset','perm.save_propertyset_desc',1),(130,1,'save_role','perm.save_role_desc',1),(131,1,'save_snippet','perm.save_snippet_desc',1),(132,1,'save_template','perm.save_template_desc',1),(133,1,'save_tv','perm.save_tv_desc',1),(134,1,'save_user','perm.save_user_desc',1),(135,1,'search','perm.search_desc',1),(136,1,'settings','perm.settings_desc',1),(137,1,'source_save','perm.source_save_desc',1),(138,1,'source_delete','perm.source_delete_desc',1),(139,1,'source_edit','perm.source_edit_desc',1),(140,1,'source_view','perm.source_view_desc',1),(141,1,'sources','perm.sources_desc',1),(142,1,'steal_locks','perm.steal_locks_desc',1),(143,1,'tree_show_element_ids','perm.tree_show_element_ids_desc',1),(144,1,'tree_show_resource_ids','perm.tree_show_resource_ids_desc',1),(145,1,'undelete_document','perm.undelete_document_desc',1),(146,1,'unpublish_document','perm.unpublish_document_desc',1),(147,1,'unlock_element_properties','perm.unlock_element_properties_desc',1),(148,1,'usergroup_delete','perm.usergroup_delete_desc',1),(149,1,'usergroup_edit','perm.usergroup_edit_desc',1),(150,1,'usergroup_new','perm.usergroup_new_desc',1),(151,1,'usergroup_save','perm.usergroup_save_desc',1),(152,1,'usergroup_user_edit','perm.usergroup_user_edit_desc',1),(153,1,'usergroup_user_list','perm.usergroup_user_list_desc',1),(154,1,'usergroup_view','perm.usergroup_view_desc',1),(155,1,'view','perm.view_desc',1),(156,1,'view_category','perm.view_category_desc',1),(157,1,'view_chunk','perm.view_chunk_desc',1),(158,1,'view_context','perm.view_context_desc',1),(159,1,'view_document','perm.view_document_desc',1),(160,1,'view_element','perm.view_element_desc',1),(161,1,'view_eventlog','perm.view_eventlog_desc',1),(162,1,'view_offline','perm.view_offline_desc',1),(163,1,'view_plugin','perm.view_plugin_desc',1),(164,1,'view_propertyset','perm.view_propertyset_desc',1),(165,1,'view_role','perm.view_role_desc',1),(166,1,'view_snippet','perm.view_snippet_desc',1),(167,1,'view_sysinfo','perm.view_sysinfo_desc',1),(168,1,'view_template','perm.view_template_desc',1),(169,1,'view_tv','perm.view_tv_desc',1),(170,1,'view_user','perm.view_user_desc',1),(171,1,'view_unpublished','perm.view_unpublished_desc',1),(172,1,'workspaces','perm.workspaces_desc',1),(173,2,'add_children','perm.add_children_desc',1),(174,2,'copy','perm.copy_desc',1),(175,2,'create','perm.create_desc',1),(176,2,'delete','perm.delete_desc',1),(177,2,'list','perm.list_desc',1),(178,2,'load','perm.load_desc',1),(179,2,'move','perm.move_desc',1),(180,2,'publish','perm.publish_desc',1),(181,2,'remove','perm.remove_desc',1),(182,2,'save','perm.save_desc',1),(183,2,'steal_lock','perm.steal_lock_desc',1),(184,2,'undelete','perm.undelete_desc',1),(185,2,'unpublish','perm.unpublish_desc',1),(186,2,'view','perm.view_desc',1),(187,3,'load','perm.load_desc',1),(188,3,'list','perm.list_desc',1),(189,3,'view','perm.view_desc',1),(190,3,'save','perm.save_desc',1),(191,3,'remove','perm.remove_desc',1),(192,4,'add_children','perm.add_children_desc',1),(193,4,'create','perm.create_desc',1),(194,4,'copy','perm.copy_desc',1),(195,4,'delete','perm.delete_desc',1),(196,4,'list','perm.list_desc',1),(197,4,'load','perm.load_desc',1),(198,4,'remove','perm.remove_desc',1),(199,4,'save','perm.save_desc',1),(200,4,'view','perm.view_desc',1),(201,5,'create','perm.create_desc',1),(202,5,'copy','perm.copy_desc',1),(203,5,'list','perm.list_desc',1),(204,5,'load','perm.load_desc',1),(205,5,'remove','perm.remove_desc',1),(206,5,'save','perm.save_desc',1),(207,5,'view','perm.view_desc',1);
/*!40000 ALTER TABLE `modx_access_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modx_access_policies`
--

DROP TABLE IF EXISTS `modx_access_policies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `modx_access_policies` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `name` varchar(255) NOT NULL,
  `description` mediumtext,
  `parent` int(10) unsigned NOT NULL default '0',
  `template` int(10) unsigned NOT NULL default '0',
  `class` varchar(255) NOT NULL default '',
  `data` text,
  `lexicon` varchar(255) NOT NULL default 'permissions',
  PRIMARY KEY  (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `parent` (`parent`),
  KEY `class` (`class`),
  KEY `template` (`template`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modx_access_policies`
--

LOCK TABLES `modx_access_policies` WRITE;
/*!40000 ALTER TABLE `modx_access_policies` DISABLE KEYS */;
INSERT INTO `modx_access_policies` VALUES (1,'Resource','MODX Resource Policy with all attributes.',0,2,'','{\"add_children\":true,\"create\":true,\"copy\":true,\"delete\":true,\"list\":true,\"load\":true,\"move\":true,\"publish\":true,\"remove\":true,\"save\":true,\"steal_lock\":true,\"undelete\":true,\"unpublish\":true,\"view\":true}','permissions'),(2,'Administrator','Context administration policy with all permissions.',0,1,'','{\"about\":true,\"access_permissions\":true,\"actions\":true,\"change_password\":true,\"change_profile\":true,\"charsets\":true,\"class_map\":true,\"components\":true,\"content_types\":true,\"countries\":true,\"create\":true,\"credits\":true,\"customize_forms\":true,\"dashboards\":true,\"database\":true,\"database_truncate\":true,\"delete_category\":true,\"delete_chunk\":true,\"delete_context\":true,\"delete_document\":true,\"delete_eventlog\":true,\"delete_plugin\":true,\"delete_propertyset\":true,\"delete_role\":true,\"delete_snippet\":true,\"delete_template\":true,\"delete_tv\":true,\"delete_user\":true,\"directory_chmod\":true,\"directory_create\":true,\"directory_list\":true,\"directory_remove\":true,\"directory_update\":true,\"edit_category\":true,\"edit_chunk\":true,\"edit_context\":true,\"edit_document\":true,\"edit_locked\":true,\"edit_plugin\":true,\"edit_propertyset\":true,\"edit_role\":true,\"edit_snippet\":true,\"edit_template\":true,\"edit_tv\":true,\"edit_user\":true,\"element_tree\":true,\"empty_cache\":true,\"error_log_erase\":true,\"error_log_view\":true,\"export_static\":true,\"file_create\":true,\"file_list\":true,\"file_manager\":true,\"file_remove\":true,\"file_tree\":true,\"file_update\":true,\"file_upload\":true,\"file_view\":true,\"flush_sessions\":true,\"frames\":true,\"help\":true,\"home\":true,\"import_static\":true,\"languages\":true,\"lexicons\":true,\"list\":true,\"load\":true,\"logout\":true,\"logs\":true,\"menus\":true,\"menu_reports\":true,\"menu_security\":true,\"menu_site\":true,\"menu_support\":true,\"menu_system\":true,\"menu_tools\":true,\"menu_user\":true,\"messages\":true,\"namespaces\":true,\"new_category\":true,\"new_chunk\":true,\"new_context\":true,\"new_document\":true,\"new_document_in_root\":true,\"new_plugin\":true,\"new_propertyset\":true,\"new_role\":true,\"new_snippet\":true,\"new_static_resource\":true,\"new_symlink\":true,\"new_template\":true,\"new_tv\":true,\"new_user\":true,\"new_weblink\":true,\"packages\":true,\"policy_delete\":true,\"policy_edit\":true,\"policy_new\":true,\"policy_save\":true,\"policy_template_delete\":true,\"policy_template_edit\":true,\"policy_template_new\":true,\"policy_template_save\":true,\"policy_template_view\":true,\"policy_view\":true,\"property_sets\":true,\"providers\":true,\"publish_document\":true,\"purge_deleted\":true,\"remove\":true,\"remove_locks\":true,\"resource_duplicate\":true,\"resourcegroup_delete\":true,\"resourcegroup_edit\":true,\"resourcegroup_new\":true,\"resourcegroup_resource_edit\":true,\"resourcegroup_resource_list\":true,\"resourcegroup_save\":true,\"resourcegroup_view\":true,\"resource_quick_create\":true,\"resource_quick_update\":true,\"resource_tree\":true,\"save\":true,\"save_category\":true,\"save_chunk\":true,\"save_context\":true,\"save_document\":true,\"save_plugin\":true,\"save_propertyset\":true,\"save_role\":true,\"save_snippet\":true,\"save_template\":true,\"save_tv\":true,\"save_user\":true,\"search\":true,\"settings\":true,\"sources\":true,\"source_delete\":true,\"source_edit\":true,\"source_save\":true,\"source_view\":true,\"steal_locks\":true,\"tree_show_element_ids\":true,\"tree_show_resource_ids\":true,\"undelete_document\":true,\"unlock_element_properties\":true,\"unpublish_document\":true,\"usergroup_delete\":true,\"usergroup_edit\":true,\"usergroup_new\":true,\"usergroup_save\":true,\"usergroup_user_edit\":true,\"usergroup_user_list\":true,\"usergroup_view\":true,\"view\":true,\"view_category\":true,\"view_chunk\":true,\"view_context\":true,\"view_document\":true,\"view_element\":true,\"view_eventlog\":true,\"view_offline\":true,\"view_plugin\":true,\"view_propertyset\":true,\"view_role\":true,\"view_snippet\":true,\"view_sysinfo\":true,\"view_template\":true,\"view_tv\":true,\"view_unpublished\":true,\"view_user\":true,\"workspaces\":true}','permissions'),(3,'Load Only','A minimal policy with permission to load an object.',0,3,'','{\"load\":true}','permissions'),(4,'Load, List and View','Provides load, list and view permissions only.',0,3,'','{\"load\":true,\"list\":true,\"view\":true}','permissions'),(5,'Object','An Object policy with all permissions.',0,3,'','{\"load\":true,\"list\":true,\"view\":true,\"save\":true,\"remove\":true}','permissions'),(6,'Element','MODX Element policy with all attributes.',0,4,'','{\"add_children\":true,\"create\":true,\"delete\":true,\"list\":true,\"load\":true,\"remove\":true,\"save\":true,\"view\":true,\"copy\":true}','permissions'),(7,'Content Editor','Context administration policy with limited, content-editing related Permissions, but no publishing.',0,1,'','{\"change_profile\":true,\"class_map\":true,\"countries\":true,\"edit_document\":true,\"frames\":true,\"help\":true,\"home\":true,\"load\":true,\"list\":true,\"logout\":true,\"menu_reports\":true,\"menu_site\":true,\"menu_support\":true,\"menu_tools\":true,\"menu_user\":true,\"resource_duplicate\":true,\"resource_tree\":true,\"save_document\":true,\"source_view\":true,\"tree_show_resource_ids\":true,\"view\":true,\"view_document\":true,\"new_document\":true,\"delete_document\":true}','permissions'),(8,'Media Source Admin','Media Source administration policy.',0,5,'','{\"create\":true,\"copy\":true,\"load\":true,\"list\":true,\"save\":true,\"remove\":true,\"view\":true}','permissions'),(9,'Media Source User','Media Source user policy, with basic viewing and using - but no editing - of Media Sources.',0,5,'','{\"load\":true,\"list\":true,\"view\":true}','permissions'),(10,'Developer','Context administration policy with most Permissions except Administrator and Security functions.',0,0,'','{\"about\":true,\"change_password\":true,\"change_profile\":true,\"charsets\":true,\"class_map\":true,\"components\":true,\"content_types\":true,\"countries\":true,\"create\":true,\"credits\":true,\"customize_forms\":true,\"dashboards\":true,\"database\":true,\"delete_category\":true,\"delete_chunk\":true,\"delete_context\":true,\"delete_document\":true,\"delete_eventlog\":true,\"delete_plugin\":true,\"delete_propertyset\":true,\"delete_snippet\":true,\"delete_template\":true,\"delete_tv\":true,\"delete_role\":true,\"delete_user\":true,\"directory_chmod\":true,\"directory_create\":true,\"directory_list\":true,\"directory_remove\":true,\"directory_update\":true,\"edit_category\":true,\"edit_chunk\":true,\"edit_context\":true,\"edit_document\":true,\"edit_locked\":true,\"edit_plugin\":true,\"edit_propertyset\":true,\"edit_role\":true,\"edit_snippet\":true,\"edit_template\":true,\"edit_tv\":true,\"edit_user\":true,\"element_tree\":true,\"empty_cache\":true,\"error_log_erase\":true,\"error_log_view\":true,\"export_static\":true,\"file_create\":true,\"file_list\":true,\"file_manager\":true,\"file_remove\":true,\"file_tree\":true,\"file_update\":true,\"file_upload\":true,\"file_view\":true,\"frames\":true,\"help\":true,\"home\":true,\"import_static\":true,\"languages\":true,\"lexicons\":true,\"list\":true,\"load\":true,\"logout\":true,\"logs\":true,\"menu_reports\":true,\"menu_site\":true,\"menu_support\":true,\"menu_system\":true,\"menu_tools\":true,\"menu_user\":true,\"menus\":true,\"messages\":true,\"namespaces\":true,\"new_category\":true,\"new_chunk\":true,\"new_context\":true,\"new_document\":true,\"new_static_resource\":true,\"new_symlink\":true,\"new_weblink\":true,\"new_document_in_root\":true,\"new_plugin\":true,\"new_propertyset\":true,\"new_role\":true,\"new_snippet\":true,\"new_template\":true,\"new_tv\":true,\"new_user\":true,\"packages\":true,\"property_sets\":true,\"providers\":true,\"publish_document\":true,\"purge_deleted\":true,\"remove\":true,\"resource_duplicate\":true,\"resource_quick_create\":true,\"resource_quick_update\":true,\"resource_tree\":true,\"save\":true,\"save_category\":true,\"save_chunk\":true,\"save_context\":true,\"save_document\":true,\"save_plugin\":true,\"save_propertyset\":true,\"save_snippet\":true,\"save_template\":true,\"save_tv\":true,\"save_user\":true,\"search\":true,\"settings\":true,\"source_delete\":true,\"source_edit\":true,\"source_save\":true,\"source_view\":true,\"sources\":true,\"tree_show_element_ids\":true,\"tree_show_resource_ids\":true,\"undelete_document\":true,\"unpublish_document\":true,\"unlock_element_properties\":true,\"view\":true,\"view_category\":true,\"view_chunk\":true,\"view_context\":true,\"view_document\":true,\"view_element\":true,\"view_eventlog\":true,\"view_offline\":true,\"view_plugin\":true,\"view_propertyset\":true,\"view_role\":true,\"view_snippet\":true,\"view_sysinfo\":true,\"view_template\":true,\"view_tv\":true,\"view_user\":true,\"view_unpublished\":true,\"workspaces\":true}','permissions');
/*!40000 ALTER TABLE `modx_access_policies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modx_access_policy_template_groups`
--

DROP TABLE IF EXISTS `modx_access_policy_template_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `modx_access_policy_template_groups` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `name` varchar(255) NOT NULL default '',
  `description` mediumtext,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modx_access_policy_template_groups`
--

LOCK TABLES `modx_access_policy_template_groups` WRITE;
/*!40000 ALTER TABLE `modx_access_policy_template_groups` DISABLE KEYS */;
INSERT INTO `modx_access_policy_template_groups` VALUES (1,'Admin','All admin policy templates.'),(2,'Object','All Object-based policy templates.'),(3,'Resource','All Resource-based policy templates.'),(4,'Element','All Element-based policy templates.'),(5,'MediaSource','All Media Source-based policy templates.');
/*!40000 ALTER TABLE `modx_access_policy_template_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modx_access_policy_templates`
--

DROP TABLE IF EXISTS `modx_access_policy_templates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `modx_access_policy_templates` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `template_group` int(10) unsigned NOT NULL default '0',
  `name` varchar(255) NOT NULL default '',
  `description` mediumtext,
  `lexicon` varchar(255) NOT NULL default 'permissions',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modx_access_policy_templates`
--

LOCK TABLES `modx_access_policy_templates` WRITE;
/*!40000 ALTER TABLE `modx_access_policy_templates` DISABLE KEYS */;
INSERT INTO `modx_access_policy_templates` VALUES (1,1,'AdministratorTemplate','Context administration policy template with all permissions.','permissions'),(2,3,'ResourceTemplate','Resource Policy Template with all attributes.','permissions'),(3,2,'ObjectTemplate','Object Policy Template with all attributes.','permissions'),(4,4,'ElementTemplate','Element Policy Template with all attributes.','permissions'),(5,5,'MediaSourceTemplate','Media Source Policy Template with all attributes.','permissions');
/*!40000 ALTER TABLE `modx_access_policy_templates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modx_access_resource_groups`
--

DROP TABLE IF EXISTS `modx_access_resource_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `modx_access_resource_groups` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `target` varchar(100) NOT NULL default '',
  `principal_class` varchar(100) NOT NULL default 'modPrincipal',
  `principal` int(10) unsigned NOT NULL default '0',
  `authority` int(10) unsigned NOT NULL default '9999',
  `policy` int(10) unsigned NOT NULL default '0',
  `context_key` varchar(100) NOT NULL default '',
  PRIMARY KEY  (`id`),
  KEY `target` (`target`),
  KEY `principal_class` (`principal_class`),
  KEY `principal` (`principal`),
  KEY `authority` (`authority`),
  KEY `policy` (`policy`),
  KEY `context_key` (`context_key`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modx_access_resource_groups`
--

LOCK TABLES `modx_access_resource_groups` WRITE;
/*!40000 ALTER TABLE `modx_access_resource_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `modx_access_resource_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modx_access_resources`
--

DROP TABLE IF EXISTS `modx_access_resources`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `modx_access_resources` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `target` varchar(100) NOT NULL default '',
  `principal_class` varchar(100) NOT NULL default 'modPrincipal',
  `principal` int(10) unsigned NOT NULL default '0',
  `authority` int(10) unsigned NOT NULL default '9999',
  `policy` int(10) unsigned NOT NULL default '0',
  `context_key` varchar(100) NOT NULL default '',
  PRIMARY KEY  (`id`),
  KEY `target` (`target`),
  KEY `principal_class` (`principal_class`),
  KEY `principal` (`principal`),
  KEY `authority` (`authority`),
  KEY `policy` (`policy`),
  KEY `context_key` (`context_key`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modx_access_resources`
--

LOCK TABLES `modx_access_resources` WRITE;
/*!40000 ALTER TABLE `modx_access_resources` DISABLE KEYS */;
/*!40000 ALTER TABLE `modx_access_resources` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modx_access_templatevars`
--

DROP TABLE IF EXISTS `modx_access_templatevars`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `modx_access_templatevars` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `target` varchar(100) NOT NULL default '',
  `principal_class` varchar(100) NOT NULL default 'modPrincipal',
  `principal` int(10) unsigned NOT NULL default '0',
  `authority` int(10) unsigned NOT NULL default '9999',
  `policy` int(10) unsigned NOT NULL default '0',
  `context_key` varchar(100) NOT NULL default '',
  PRIMARY KEY  (`id`),
  KEY `target` (`target`),
  KEY `principal_class` (`principal_class`),
  KEY `principal` (`principal`),
  KEY `authority` (`authority`),
  KEY `policy` (`policy`),
  KEY `context_key` (`context_key`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modx_access_templatevars`
--

LOCK TABLES `modx_access_templatevars` WRITE;
/*!40000 ALTER TABLE `modx_access_templatevars` DISABLE KEYS */;
/*!40000 ALTER TABLE `modx_access_templatevars` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modx_actiondom`
--

DROP TABLE IF EXISTS `modx_actiondom`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `modx_actiondom` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `set` int(11) NOT NULL default '0',
  `action` int(11) NOT NULL default '0',
  `name` varchar(255) NOT NULL default '',
  `description` text,
  `xtype` varchar(100) NOT NULL default '',
  `container` varchar(255) NOT NULL default '',
  `rule` varchar(100) NOT NULL default '',
  `value` text NOT NULL,
  `constraint` varchar(255) NOT NULL default '',
  `constraint_field` varchar(100) NOT NULL default '',
  `constraint_class` varchar(100) NOT NULL default '',
  `active` tinyint(1) unsigned NOT NULL default '1',
  `for_parent` tinyint(1) unsigned NOT NULL default '0',
  `rank` int(11) NOT NULL default '0',
  PRIMARY KEY  (`id`),
  KEY `set` (`set`),
  KEY `action` (`action`),
  KEY `name` (`name`),
  KEY `active` (`active`),
  KEY `for_parent` (`for_parent`),
  KEY `rank` (`rank`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modx_actiondom`
--

LOCK TABLES `modx_actiondom` WRITE;
/*!40000 ALTER TABLE `modx_actiondom` DISABLE KEYS */;
/*!40000 ALTER TABLE `modx_actiondom` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modx_actions`
--

DROP TABLE IF EXISTS `modx_actions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `modx_actions` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `namespace` varchar(100) NOT NULL default 'core',
  `parent` int(10) unsigned NOT NULL default '0',
  `controller` varchar(255) NOT NULL,
  `haslayout` tinyint(1) unsigned NOT NULL default '1',
  `lang_topics` text NOT NULL,
  `assets` text NOT NULL,
  `help_url` text NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `namespace` (`namespace`),
  KEY `parent` (`parent`),
  KEY `controller` (`controller`)
) ENGINE=MyISAM AUTO_INCREMENT=78 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modx_actions`
--

LOCK TABLES `modx_actions` WRITE;
/*!40000 ALTER TABLE `modx_actions` DISABLE KEYS */;
INSERT INTO `modx_actions` VALUES (1,'core',0,'welcome',1,'welcome,configcheck','',''),(2,'core',0,'system',0,'','',''),(3,'core',0,'browser',0,'file','',''),(4,'core',6,'context/create',1,'context,setting,access,policy,user','','Contexts'),(5,'core',6,'context/update',1,'context,setting,access,policy,user','','Contexts'),(6,'core',6,'context/view',1,'context','','Contexts'),(7,'core',0,'element',1,'element','',''),(8,'core',10,'element/chunk',1,'chunk,category,propertyset,element','','Chunks'),(9,'core',11,'element/chunk/create',1,'chunk,category,propertyset,element','','Chunks'),(10,'core',11,'element/chunk/update',1,'chunk,category,propertyset,element','','Chunks'),(11,'core',10,'element/plugin',1,'plugin,category,system_events,propertyset,element','','Plugins'),(12,'core',20,'element/plugin/create',1,'plugin,category,system_events,propertyset,element','','Plugins'),(13,'core',20,'element/plugin/update',1,'plugin,category,system_events,propertyset,element','','Plugins'),(14,'core',10,'element/snippet',1,'snippet,propertyset,element','','Snippets'),(15,'core',25,'element/snippet/create',1,'snippet,propertyset,element','','Snippets'),(16,'core',25,'element/snippet/update',1,'snippet,propertyset,element','','Snippets'),(17,'core',10,'element/template',1,'template,propertyset,element','','Templates'),(18,'core',28,'element/template/create',1,'template,propertyset,element','','Templates'),(19,'core',28,'element/template/update',1,'template,propertyset,element','','Templates'),(20,'core',28,'element/template/tvsort',1,'template,tv,propertyset,element','',''),(21,'core',10,'element/tv',1,'tv,propertyset,element','','Template+Variables'),(22,'core',32,'element/tv/create',1,'tv,tv_widget,propertyset,element','','Template+Variables'),(23,'core',32,'element/tv/update',1,'tv,tv_widget,propertyset,element','','Template+Variables'),(24,'core',10,'element/view',1,'element','',''),(25,'core',0,'resource',1,'','',''),(26,'core',46,'security/usergroup/create',1,'user,access,policy,context','','User+Groups'),(27,'core',46,'security/usergroup/update',1,'user,access,policy,context','','User+Groups'),(28,'core',36,'resource/data',1,'resource','','Resource'),(29,'core',36,'resource/empty_recycle_bin',1,'resource','',''),(30,'core',36,'resource/update',1,'resource','','Resource'),(31,'core',0,'security',1,'user','',''),(32,'core',46,'security/role',1,'user','','Roles'),(33,'core',53,'security/user/create',1,'user,setting,access','','Users'),(34,'core',53,'security/user/update',1,'user,setting,access','','Users'),(35,'core',46,'security/login',1,'login','',''),(36,'core',3,'system/refresh_site',1,'','',''),(37,'core',3,'system/phpinfo',1,'','',''),(38,'core',36,'resource/tvs',0,'','',''),(39,'core',3,'system/file',1,'file','',''),(40,'core',70,'system/file/edit',1,'file','',''),(41,'core',65,'security/access/policy/update',1,'user,policy','','Policies'),(42,'core',212,'workspaces/package/view',1,'workspace,namespace','','Package+Management'),(43,'core',65,'security/access/policy/template/update',1,'user,policy','','PolicyTemplates'),(44,'core',46,'security/forms/profile/update',1,'formcustomization,user,access,policy','','Form+Customization+Profiles'),(45,'core',46,'security/forms/set/update',1,'formcustomization,user,access,policy','','Form+Customization+Sets'),(46,'core',100,'system/dashboards/update',1,'dashboards,user','','Dashboards'),(47,'core',100,'system/dashboards/create',1,'dashboards,user','','Dashboards'),(48,'core',100,'system/dashboards/widget/update',1,'dashboards,user','','Dashboard+Widgets'),(49,'core',100,'system/dashboards/widget/create',1,'dashboards,user','','Dashboard+Widgets'),(50,'core',101,'source/create',1,'sources,namespace','','Media+Sources'),(51,'core',101,'source/update',1,'sources,namespace','','Media+Sources'),(52,'core',70,'system/file/create',1,'file','',''),(53,'core',0,'system/dashboards',1,'about','','Dashboards'),(54,'core',0,'search',1,'','',''),(55,'core',36,'resource/create',1,'resource','','Resource'),(56,'core',46,'security/user',1,'user','','Users'),(57,'core',46,'security/permission',1,'user,access,policy','','Security'),(58,'core',46,'security/resourcegroup/index',1,'resource,user,access','','Resource+Groups'),(59,'core',46,'security/forms',1,'formcustomization,user,access,policy','','Customizing+The+Manager'),(60,'core',3,'system/import',1,'import','',''),(61,'core',59,'system/import/html',1,'import','',''),(62,'core',10,'element/propertyset/index',1,'element,category,propertyset','','Properties+and+Property+Sets'),(63,'core',10,'source/index',1,'sources,namespace','','Media+Sources'),(64,'core',36,'resource/site_schedule',1,'resource','',''),(65,'core',0,'system/logs/index',1,'manager_log','',''),(66,'core',3,'system/event',1,'system_events','',''),(67,'core',3,'system/info',1,'system_info','',''),(68,'core',0,'help',1,'about','',''),(69,'core',3,'workspaces',1,'workspace','','Package+Management'),(70,'core',3,'system/settings',1,'setting','','Settings'),(71,'core',68,'workspaces/lexicon',1,'package_builder,lexicon,namespace','','Internationalization'),(72,'core',3,'system/contenttype',1,'content_type','','Content+Types'),(73,'core',0,'context',1,'context','','Contexts'),(74,'core',3,'system/action',1,'action,menu,namespace','','Actions+and+Menus'),(75,'core',68,'workspaces/namespace',1,'workspace,package_builder,lexicon,namespace','','Namespaces'),(76,'core',46,'security/profile',1,'user','',''),(77,'core',46,'security/message',1,'messages','','');
/*!40000 ALTER TABLE `modx_actions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modx_actions_fields`
--

DROP TABLE IF EXISTS `modx_actions_fields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `modx_actions_fields` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `action` int(11) NOT NULL default '0',
  `name` varchar(255) NOT NULL default '',
  `type` varchar(100) NOT NULL default 'field',
  `tab` varchar(255) NOT NULL default '',
  `form` varchar(255) NOT NULL default '',
  `other` varchar(255) NOT NULL default '',
  `rank` int(11) NOT NULL default '0',
  PRIMARY KEY  (`id`),
  KEY `action` (`action`),
  KEY `type` (`type`),
  KEY `tab` (`tab`)
) ENGINE=MyISAM AUTO_INCREMENT=77 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modx_actions_fields`
--

LOCK TABLES `modx_actions_fields` WRITE;
/*!40000 ALTER TABLE `modx_actions_fields` DISABLE KEYS */;
INSERT INTO `modx_actions_fields` VALUES (1,30,'modx-resource-settings','tab','','modx-panel-resource','',0),(2,30,'modx-resource-main-left','tab','','modx-panel-resource','',1),(3,30,'id','field','modx-resource-main-left','modx-panel-resource','',0),(4,30,'pagetitle','field','modx-resource-main-left','modx-panel-resource','',1),(5,30,'longtitle','field','modx-resource-main-left','modx-panel-resource','',2),(6,30,'description','field','modx-resource-main-left','modx-panel-resource','',3),(7,30,'introtext','field','modx-resource-main-left','modx-panel-resource','',4),(8,30,'modx-resource-main-right','tab','','modx-panel-resource','',2),(9,30,'template','field','modx-resource-main-right','modx-panel-resource','',0),(10,30,'alias','field','modx-resource-main-right','modx-panel-resource','',1),(11,30,'menutitle','field','modx-resource-main-right','modx-panel-resource','',2),(12,30,'link_attributes','field','modx-resource-main-right','modx-panel-resource','',3),(13,30,'hidemenu','field','modx-resource-main-right','modx-panel-resource','',4),(14,30,'published','field','modx-resource-main-right','modx-panel-resource','',5),(15,30,'modx-page-settings','tab','','modx-panel-resource','',3),(16,30,'modx-page-settings-left','tab','','modx-panel-resource','',4),(17,30,'parent-cmb','field','modx-page-settings-left','modx-panel-resource','',0),(18,30,'class_key','field','modx-page-settings-left','modx-panel-resource','',1),(19,30,'content_type','field','modx-page-settings-left','modx-panel-resource','',2),(20,30,'content_dispo','field','modx-page-settings-left','modx-panel-resource','',3),(21,30,'menuindex','field','modx-page-settings-left','modx-panel-resource','',4),(22,30,'modx-page-settings-right','tab','','modx-panel-resource','',5),(23,30,'publishedon','field','modx-page-settings-right','modx-panel-resource','',0),(24,30,'pub_date','field','modx-page-settings-right','modx-panel-resource','',1),(25,30,'unpub_date','field','modx-page-settings-right','modx-panel-resource','',2),(26,30,'modx-page-settings-right-box-left','tab','','modx-panel-resource','',6),(27,30,'isfolder','field','modx-page-settings-right-box-left','modx-panel-resource','',0),(28,30,'searchable','field','modx-page-settings-right-box-left','modx-panel-resource','',1),(29,30,'richtext','field','modx-page-settings-right-box-left','modx-panel-resource','',2),(30,30,'uri_override','field','modx-page-settings-right-box-left','modx-panel-resource','',3),(31,30,'uri','field','modx-page-settings-right-box-left','modx-panel-resource','',4),(32,30,'modx-page-settings-right-box-right','tab','','modx-panel-resource','',7),(33,30,'cacheable','field','modx-page-settings-right-box-right','modx-panel-resource','',0),(34,30,'syncsite','field','modx-page-settings-right-box-right','modx-panel-resource','',1),(35,30,'deleted','field','modx-page-settings-right-box-right','modx-panel-resource','',2),(36,30,'modx-panel-resource-tv','tab','','modx-panel-resource','tv',8),(37,30,'modx-resource-access-permissions','tab','','modx-panel-resource','',9),(38,30,'modx-resource-content','field','modx-resource-content','modx-panel-resource','',0),(39,55,'modx-resource-settings','tab','','modx-panel-resource','',0),(40,55,'modx-resource-main-left','tab','','modx-panel-resource','',1),(41,55,'id','field','modx-resource-main-left','modx-panel-resource','',0),(42,55,'pagetitle','field','modx-resource-main-left','modx-panel-resource','',1),(43,55,'longtitle','field','modx-resource-main-left','modx-panel-resource','',2),(44,55,'description','field','modx-resource-main-left','modx-panel-resource','',3),(45,55,'introtext','field','modx-resource-main-left','modx-panel-resource','',4),(46,55,'modx-resource-main-right','tab','','modx-panel-resource','',2),(47,55,'template','field','modx-resource-main-right','modx-panel-resource','',0),(48,55,'alias','field','modx-resource-main-right','modx-panel-resource','',1),(49,55,'menutitle','field','modx-resource-main-right','modx-panel-resource','',2),(50,55,'link_attributes','field','modx-resource-main-right','modx-panel-resource','',3),(51,55,'hidemenu','field','modx-resource-main-right','modx-panel-resource','',4),(52,55,'published','field','modx-resource-main-right','modx-panel-resource','',5),(53,55,'modx-page-settings','tab','','modx-panel-resource','',3),(54,55,'modx-page-settings-left','tab','','modx-panel-resource','',4),(55,55,'parent-cmb','field','modx-page-settings-left','modx-panel-resource','',0),(56,55,'class_key','field','modx-page-settings-left','modx-panel-resource','',1),(57,55,'content_type','field','modx-page-settings-left','modx-panel-resource','',2),(58,55,'content_dispo','field','modx-page-settings-left','modx-panel-resource','',3),(59,55,'menuindex','field','modx-page-settings-left','modx-panel-resource','',4),(60,55,'modx-page-settings-right','tab','','modx-panel-resource','',5),(61,55,'publishedon','field','modx-page-settings-right','modx-panel-resource','',0),(62,55,'pub_date','field','modx-page-settings-right','modx-panel-resource','',1),(63,55,'unpub_date','field','modx-page-settings-right','modx-panel-resource','',2),(64,55,'modx-page-settings-right-box-left','tab','','modx-panel-resource','',6),(65,55,'isfolder','field','modx-page-settings-right-box-left','modx-panel-resource','',0),(66,55,'searchable','field','modx-page-settings-right-box-left','modx-panel-resource','',1),(67,55,'richtext','field','modx-page-settings-right-box-left','modx-panel-resource','',2),(68,55,'uri_override','field','modx-page-settings-right-box-left','modx-panel-resource','',3),(69,55,'uri','field','modx-page-settings-right-box-left','modx-panel-resource','',4),(70,55,'modx-page-settings-right-box-right','tab','','modx-panel-resource','',7),(71,55,'cacheable','field','modx-page-settings-right-box-right','modx-panel-resource','',0),(72,55,'syncsite','field','modx-page-settings-right-box-right','modx-panel-resource','',1),(73,55,'deleted','field','modx-page-settings-right-box-right','modx-panel-resource','',2),(74,55,'modx-panel-resource-tv','tab','','modx-panel-resource','tv',8),(75,55,'modx-resource-access-permissions','tab','','modx-panel-resource','',9),(76,55,'modx-resource-content','field','modx-resource-content','modx-panel-resource','',0);
/*!40000 ALTER TABLE `modx_actions_fields` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modx_active_users`
--

DROP TABLE IF EXISTS `modx_active_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `modx_active_users` (
  `internalKey` int(9) NOT NULL default '0',
  `username` varchar(50) NOT NULL default '',
  `lasthit` int(20) NOT NULL default '0',
  `id` int(10) default NULL,
  `action` varchar(255) NOT NULL default '',
  `ip` varchar(20) NOT NULL default '',
  PRIMARY KEY  (`internalKey`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modx_active_users`
--

LOCK TABLES `modx_active_users` WRITE;
/*!40000 ALTER TABLE `modx_active_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `modx_active_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modx_categories`
--

DROP TABLE IF EXISTS `modx_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `modx_categories` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `parent` int(10) unsigned default '0',
  `category` varchar(45) NOT NULL default '',
  PRIMARY KEY  (`id`),
  UNIQUE KEY `category` (`category`),
  KEY `parent` (`parent`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modx_categories`
--

LOCK TABLES `modx_categories` WRITE;
/*!40000 ALTER TABLE `modx_categories` DISABLE KEYS */;
/*!40000 ALTER TABLE `modx_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modx_categories_closure`
--

DROP TABLE IF EXISTS `modx_categories_closure`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `modx_categories_closure` (
  `ancestor` int(10) unsigned NOT NULL default '0',
  `descendant` int(10) unsigned NOT NULL default '0',
  `depth` int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (`ancestor`,`descendant`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modx_categories_closure`
--

LOCK TABLES `modx_categories_closure` WRITE;
/*!40000 ALTER TABLE `modx_categories_closure` DISABLE KEYS */;
/*!40000 ALTER TABLE `modx_categories_closure` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modx_class_map`
--

DROP TABLE IF EXISTS `modx_class_map`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `modx_class_map` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `class` varchar(120) NOT NULL default '',
  `parent_class` varchar(120) NOT NULL default '',
  `name_field` varchar(255) NOT NULL default 'name',
  `path` tinytext,
  `lexicon` varchar(255) NOT NULL default 'core:resource',
  PRIMARY KEY  (`id`),
  UNIQUE KEY `class` (`class`),
  KEY `parent_class` (`parent_class`),
  KEY `name_field` (`name_field`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modx_class_map`
--

LOCK TABLES `modx_class_map` WRITE;
/*!40000 ALTER TABLE `modx_class_map` DISABLE KEYS */;
INSERT INTO `modx_class_map` VALUES (1,'modDocument','modResource','pagetitle','','core:resource'),(2,'modWebLink','modResource','pagetitle','','core:resource'),(3,'modSymLink','modResource','pagetitle','','core:resource'),(4,'modStaticResource','modResource','pagetitle','','core:resource'),(5,'modTemplate','modElement','templatename','','core:resource'),(6,'modTemplateVar','modElement','name','','core:resource'),(7,'modChunk','modElement','name','','core:resource'),(8,'modSnippet','modElement','name','','core:resource'),(9,'modPlugin','modElement','name','','core:resource');
/*!40000 ALTER TABLE `modx_class_map` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modx_content_type`
--

DROP TABLE IF EXISTS `modx_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `modx_content_type` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `name` varchar(255) NOT NULL,
  `description` tinytext,
  `mime_type` tinytext,
  `file_extensions` tinytext,
  `headers` mediumtext,
  `binary` tinyint(1) unsigned NOT NULL default '0',
  PRIMARY KEY  (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modx_content_type`
--

LOCK TABLES `modx_content_type` WRITE;
/*!40000 ALTER TABLE `modx_content_type` DISABLE KEYS */;
INSERT INTO `modx_content_type` VALUES (1,'HTML','HTML content','text/html','.html',NULL,0),(2,'XML','XML content','text/xml','.xml',NULL,0),(3,'text','plain text content','text/plain','.txt',NULL,0),(4,'CSS','CSS content','text/css','.css',NULL,0),(5,'javascript','javascript content','text/javascript','.js',NULL,0),(6,'RSS','For RSS feeds','application/rss+xml','.rss',NULL,0);
/*!40000 ALTER TABLE `modx_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modx_context`
--

DROP TABLE IF EXISTS `modx_context`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `modx_context` (
  `key` varchar(100) NOT NULL,
  `description` tinytext,
  `rank` int(11) NOT NULL default '0',
  PRIMARY KEY  (`key`),
  KEY `rank` (`rank`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modx_context`
--

LOCK TABLES `modx_context` WRITE;
/*!40000 ALTER TABLE `modx_context` DISABLE KEYS */;
INSERT INTO `modx_context` VALUES ('web','The default front-end context for your web site.',0),('mgr','The default manager or administration context for content management activity.',0);
/*!40000 ALTER TABLE `modx_context` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modx_context_resource`
--

DROP TABLE IF EXISTS `modx_context_resource`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `modx_context_resource` (
  `context_key` varchar(255) NOT NULL,
  `resource` int(11) unsigned NOT NULL,
  PRIMARY KEY  (`context_key`,`resource`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modx_context_resource`
--

LOCK TABLES `modx_context_resource` WRITE;
/*!40000 ALTER TABLE `modx_context_resource` DISABLE KEYS */;
/*!40000 ALTER TABLE `modx_context_resource` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modx_context_setting`
--

DROP TABLE IF EXISTS `modx_context_setting`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `modx_context_setting` (
  `context_key` varchar(255) NOT NULL,
  `key` varchar(50) NOT NULL,
  `value` mediumtext,
  `xtype` varchar(75) NOT NULL default 'textfield',
  `namespace` varchar(40) NOT NULL default 'core',
  `area` varchar(255) NOT NULL default '',
  `editedon` timestamp NOT NULL default '0000-00-00 00:00:00' on update CURRENT_TIMESTAMP,
  PRIMARY KEY  (`context_key`,`key`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modx_context_setting`
--

LOCK TABLES `modx_context_setting` WRITE;
/*!40000 ALTER TABLE `modx_context_setting` DISABLE KEYS */;
INSERT INTO `modx_context_setting` VALUES ('mgr','allow_tags_in_post','1','combo-boolean','core','system','0000-00-00 00:00:00'),('mgr','modRequest.class','modManagerRequest','textfield','core','system','0000-00-00 00:00:00');
/*!40000 ALTER TABLE `modx_context_setting` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modx_dashboard`
--

DROP TABLE IF EXISTS `modx_dashboard`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `modx_dashboard` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `name` varchar(255) NOT NULL default '',
  `description` text,
  `hide_trees` tinyint(1) unsigned NOT NULL default '0',
  PRIMARY KEY  (`id`),
  KEY `name` (`name`),
  KEY `hide_trees` (`hide_trees`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modx_dashboard`
--

LOCK TABLES `modx_dashboard` WRITE;
/*!40000 ALTER TABLE `modx_dashboard` DISABLE KEYS */;
INSERT INTO `modx_dashboard` VALUES (1,'Default','',0);
/*!40000 ALTER TABLE `modx_dashboard` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modx_dashboard_widget`
--

DROP TABLE IF EXISTS `modx_dashboard_widget`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `modx_dashboard_widget` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `name` varchar(255) NOT NULL default '',
  `description` text,
  `type` varchar(100) NOT NULL,
  `content` mediumtext,
  `namespace` varchar(255) NOT NULL default '',
  `lexicon` varchar(255) NOT NULL default 'core:dashboards',
  `size` varchar(255) NOT NULL default 'half',
  PRIMARY KEY  (`id`),
  KEY `name` (`name`),
  KEY `type` (`type`),
  KEY `namespace` (`namespace`),
  KEY `lexicon` (`lexicon`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modx_dashboard_widget`
--

LOCK TABLES `modx_dashboard_widget` WRITE;
/*!40000 ALTER TABLE `modx_dashboard_widget` DISABLE KEYS */;
INSERT INTO `modx_dashboard_widget` VALUES (1,'w_newsfeed','w_newsfeed_desc','file','[[++manager_path]]controllers/default/dashboard/widget.modx-news.php','core','core:dashboards','half'),(2,'w_securityfeed','w_securityfeed_desc','file','[[++manager_path]]controllers/default/dashboard/widget.modx-security.php','core','core:dashboards','half'),(3,'w_whosonline','w_whosonline_desc','file','[[++manager_path]]controllers/default/dashboard/widget.grid-online.php','core','core:dashboards','half'),(4,'w_recentlyeditedresources','w_recentlyeditedresources_desc','file','[[++manager_path]]controllers/default/dashboard/widget.grid-rer.php','core','core:dashboards','half'),(5,'w_configcheck','w_configcheck_desc','file','[[++manager_path]]controllers/default/dashboard/widget.configcheck.php','core','core:dashboards','full');
/*!40000 ALTER TABLE `modx_dashboard_widget` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modx_dashboard_widget_placement`
--

DROP TABLE IF EXISTS `modx_dashboard_widget_placement`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `modx_dashboard_widget_placement` (
  `dashboard` int(10) unsigned NOT NULL default '0',
  `widget` int(10) unsigned NOT NULL default '0',
  `rank` int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (`dashboard`,`widget`),
  KEY `rank` (`rank`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modx_dashboard_widget_placement`
--

LOCK TABLES `modx_dashboard_widget_placement` WRITE;
/*!40000 ALTER TABLE `modx_dashboard_widget_placement` DISABLE KEYS */;
INSERT INTO `modx_dashboard_widget_placement` VALUES (1,5,0),(1,1,1),(1,2,2),(1,3,3),(1,4,4);
/*!40000 ALTER TABLE `modx_dashboard_widget_placement` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modx_document_groups`
--

DROP TABLE IF EXISTS `modx_document_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `modx_document_groups` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `document_group` int(10) NOT NULL default '0',
  `document` int(10) NOT NULL default '0',
  PRIMARY KEY  (`id`),
  KEY `document_group` (`document_group`),
  KEY `document` (`document`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modx_document_groups`
--

LOCK TABLES `modx_document_groups` WRITE;
/*!40000 ALTER TABLE `modx_document_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `modx_document_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modx_documentgroup_names`
--

DROP TABLE IF EXISTS `modx_documentgroup_names`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `modx_documentgroup_names` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `name` varchar(255) NOT NULL default '',
  `private_memgroup` tinyint(1) unsigned NOT NULL default '0',
  `private_webgroup` tinyint(1) unsigned NOT NULL default '0',
  PRIMARY KEY  (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modx_documentgroup_names`
--

LOCK TABLES `modx_documentgroup_names` WRITE;
/*!40000 ALTER TABLE `modx_documentgroup_names` DISABLE KEYS */;
/*!40000 ALTER TABLE `modx_documentgroup_names` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modx_element_property_sets`
--

DROP TABLE IF EXISTS `modx_element_property_sets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `modx_element_property_sets` (
  `element` int(10) unsigned NOT NULL default '0',
  `element_class` varchar(100) NOT NULL default '',
  `property_set` int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (`element`,`element_class`,`property_set`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modx_element_property_sets`
--

LOCK TABLES `modx_element_property_sets` WRITE;
/*!40000 ALTER TABLE `modx_element_property_sets` DISABLE KEYS */;
/*!40000 ALTER TABLE `modx_element_property_sets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modx_fc_profiles`
--

DROP TABLE IF EXISTS `modx_fc_profiles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `modx_fc_profiles` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `name` varchar(255) NOT NULL default '',
  `description` text NOT NULL,
  `active` tinyint(1) NOT NULL default '0',
  `rank` int(11) NOT NULL default '0',
  PRIMARY KEY  (`id`),
  KEY `name` (`name`),
  KEY `rank` (`rank`),
  KEY `active` (`active`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modx_fc_profiles`
--

LOCK TABLES `modx_fc_profiles` WRITE;
/*!40000 ALTER TABLE `modx_fc_profiles` DISABLE KEYS */;
/*!40000 ALTER TABLE `modx_fc_profiles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modx_fc_profiles_usergroups`
--

DROP TABLE IF EXISTS `modx_fc_profiles_usergroups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `modx_fc_profiles_usergroups` (
  `usergroup` int(11) NOT NULL default '0',
  `profile` int(11) NOT NULL default '0',
  PRIMARY KEY  (`usergroup`,`profile`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modx_fc_profiles_usergroups`
--

LOCK TABLES `modx_fc_profiles_usergroups` WRITE;
/*!40000 ALTER TABLE `modx_fc_profiles_usergroups` DISABLE KEYS */;
/*!40000 ALTER TABLE `modx_fc_profiles_usergroups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modx_fc_sets`
--

DROP TABLE IF EXISTS `modx_fc_sets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `modx_fc_sets` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `profile` int(11) NOT NULL default '0',
  `action` int(11) NOT NULL default '0',
  `description` text NOT NULL,
  `active` tinyint(1) NOT NULL default '0',
  `template` int(11) NOT NULL default '0',
  `constraint` varchar(255) NOT NULL default '',
  `constraint_field` varchar(100) NOT NULL default '',
  `constraint_class` varchar(100) NOT NULL default '',
  PRIMARY KEY  (`id`),
  KEY `profile` (`profile`),
  KEY `action` (`action`),
  KEY `active` (`active`),
  KEY `template` (`template`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modx_fc_sets`
--

LOCK TABLES `modx_fc_sets` WRITE;
/*!40000 ALTER TABLE `modx_fc_sets` DISABLE KEYS */;
/*!40000 ALTER TABLE `modx_fc_sets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modx_lexicon_entries`
--

DROP TABLE IF EXISTS `modx_lexicon_entries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `modx_lexicon_entries` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `name` varchar(255) NOT NULL default '',
  `value` text NOT NULL,
  `topic` varchar(255) NOT NULL default 'default',
  `namespace` varchar(40) NOT NULL default 'core',
  `language` varchar(20) NOT NULL default 'en',
  `createdon` datetime default NULL,
  `editedon` timestamp NOT NULL default '0000-00-00 00:00:00' on update CURRENT_TIMESTAMP,
  PRIMARY KEY  (`id`),
  KEY `name` (`name`),
  KEY `topic` (`topic`),
  KEY `namespace` (`namespace`),
  KEY `language` (`language`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modx_lexicon_entries`
--

LOCK TABLES `modx_lexicon_entries` WRITE;
/*!40000 ALTER TABLE `modx_lexicon_entries` DISABLE KEYS */;
/*!40000 ALTER TABLE `modx_lexicon_entries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modx_manager_log`
--

DROP TABLE IF EXISTS `modx_manager_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `modx_manager_log` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `user` int(10) unsigned NOT NULL default '0',
  `occurred` datetime default '0000-00-00 00:00:00',
  `action` varchar(100) NOT NULL default '',
  `classKey` varchar(100) NOT NULL default '',
  `item` varchar(255) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=46 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modx_manager_log`
--

LOCK TABLES `modx_manager_log` WRITE;
/*!40000 ALTER TABLE `modx_manager_log` DISABLE KEYS */;
INSERT INTO `modx_manager_log` VALUES (1,1,'2012-03-07 07:24:55','chunk_create','modChunk','1'),(2,1,'2012-03-07 07:25:45','chunk_create','modChunk','2'),(3,1,'2012-03-07 07:26:43','template_create','modTemplate','2'),(4,1,'2012-03-07 07:27:44','snippet_create','modSnippet','1'),(5,1,'2012-03-07 07:28:41','file_update','unknown','/home/thinktiv/webapps/accelerists/assets/service/insertAccelerist.php'),(6,1,'2012-03-07 07:28:44','file_update','unknown','/home/thinktiv/webapps/accelerists/assets/service/insertAccelerist.php'),(7,1,'2012-03-07 07:28:47','file_update','unknown','/home/thinktiv/webapps/accelerists/assets/service/insertAccelerist.php'),(8,1,'2012-03-07 07:29:25','tv_create','modTemplateVar','1'),(9,1,'2012-03-07 07:30:26','tv_create','modTemplateVar','2'),(10,1,'2012-03-07 07:30:58','tv_duplicate','modTemplateVar','3'),(11,1,'2012-03-07 07:31:35','tv_update','modTemplateVar','2'),(12,1,'2012-03-07 07:31:39','tv_update','modTemplateVar','2'),(13,1,'2012-03-07 07:33:12','resource_update','modResource','1'),(14,1,'2012-03-07 07:37:28','resource_update','modResource','1'),(15,1,'2012-03-07 07:39:37','file_update','unknown','/home/thinktiv/webapps/accelerists/assets/css/stylenew.css'),(16,1,'2012-03-07 08:31:12','chunk_update','modChunk','1'),(17,1,'2012-03-07 08:31:47','chunk_update','modChunk','1'),(18,1,'2012-03-08 17:11:10','chunk_update','modChunk','1'),(19,1,'2012-03-09 14:31:07','resource_update','modResource','1'),(20,1,'2012-03-09 15:34:21','resource_update','modResource','1'),(21,1,'2012-03-09 18:41:14','plugin_create','modPlugin','2'),(22,1,'2012-03-09 18:43:07','plugin_update','modPlugin','2'),(23,1,'2012-03-10 20:33:59','template_update','modTemplate','2'),(24,1,'2012-03-10 20:34:41','template_update','modTemplate','2'),(25,1,'2012-03-10 20:36:07','template_update','modTemplate','2'),(26,1,'2012-03-10 20:36:15','template_update','modTemplate','2'),(27,1,'2012-03-10 20:41:46','template_update','modTemplate','2'),(28,1,'2012-03-11 10:22:22','chunk_update','modChunk','1'),(29,1,'2012-03-12 02:31:39','chunk_update','modChunk','2'),(30,1,'2012-03-12 02:31:41','chunk_update','modChunk','2'),(31,1,'2012-03-12 02:31:44','chunk_update','modChunk','2'),(32,1,'2012-03-12 02:32:51','chunk_update','modChunk','2'),(33,1,'2012-03-12 02:39:17','setting_update','modSystemSetting','mail_smtp_auth'),(34,1,'2012-03-12 02:39:57','setting_update','modSystemSetting','mail_smtp_hosts'),(35,1,'2012-03-12 02:40:19','setting_update','modSystemSetting','mail_smtp_pass'),(36,1,'2012-03-12 02:40:35','setting_update','modSystemSetting','mail_smtp_port'),(37,1,'2012-03-12 02:41:07','setting_update','modSystemSetting','mail_smtp_user'),(38,1,'2012-03-12 02:41:30','setting_update','modSystemSetting','mail_use_smtp'),(39,1,'2012-03-12 02:42:30','save_profile','modUser','1'),(40,1,'2012-03-12 02:42:34','save_profile','modUser','1'),(41,1,'2012-03-12 02:42:40','save_profile','modUser','1'),(42,1,'2012-03-12 02:43:58','save_profile','modUser','1'),(43,1,'2012-03-12 02:44:01','save_profile','modUser','1'),(44,1,'2012-03-12 02:44:02','save_profile','modUser','1'),(45,1,'2012-03-12 02:45:20','setting_update','modSystemSetting','allow_multiple_emails');
/*!40000 ALTER TABLE `modx_manager_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modx_media_sources`
--

DROP TABLE IF EXISTS `modx_media_sources`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `modx_media_sources` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `name` varchar(255) NOT NULL default '',
  `description` text,
  `class_key` varchar(100) NOT NULL default 'sources.modFileMediaSource',
  `properties` mediumtext,
  `is_stream` tinyint(1) unsigned NOT NULL default '1',
  PRIMARY KEY  (`id`),
  KEY `name` (`name`),
  KEY `class_key` (`class_key`),
  KEY `is_stream` (`is_stream`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modx_media_sources`
--

LOCK TABLES `modx_media_sources` WRITE;
/*!40000 ALTER TABLE `modx_media_sources` DISABLE KEYS */;
INSERT INTO `modx_media_sources` VALUES (1,'Filesystem','','sources.modFileMediaSource','a:0:{}',1);
/*!40000 ALTER TABLE `modx_media_sources` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modx_media_sources_contexts`
--

DROP TABLE IF EXISTS `modx_media_sources_contexts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `modx_media_sources_contexts` (
  `source` int(11) NOT NULL default '0',
  `context_key` varchar(100) NOT NULL default 'web',
  PRIMARY KEY  (`source`,`context_key`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modx_media_sources_contexts`
--

LOCK TABLES `modx_media_sources_contexts` WRITE;
/*!40000 ALTER TABLE `modx_media_sources_contexts` DISABLE KEYS */;
/*!40000 ALTER TABLE `modx_media_sources_contexts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modx_media_sources_elements`
--

DROP TABLE IF EXISTS `modx_media_sources_elements`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `modx_media_sources_elements` (
  `source` int(11) unsigned NOT NULL default '0',
  `object_class` varchar(100) NOT NULL default 'modTemplateVar',
  `object` int(11) unsigned NOT NULL default '0',
  `context_key` varchar(100) NOT NULL default 'web',
  PRIMARY KEY  (`source`,`object`,`object_class`,`context_key`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modx_media_sources_elements`
--

LOCK TABLES `modx_media_sources_elements` WRITE;
/*!40000 ALTER TABLE `modx_media_sources_elements` DISABLE KEYS */;
INSERT INTO `modx_media_sources_elements` VALUES (0,'modTemplateVar',3,'web'),(1,'modTemplateVar',1,'web'),(1,'modTemplateVar',2,'web');
/*!40000 ALTER TABLE `modx_media_sources_elements` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modx_member_groups`
--

DROP TABLE IF EXISTS `modx_member_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `modx_member_groups` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `user_group` int(10) unsigned NOT NULL default '0',
  `member` int(10) unsigned NOT NULL default '0',
  `role` int(10) unsigned NOT NULL default '1',
  `rank` int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (`id`),
  KEY `role` (`role`),
  KEY `rank` (`rank`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modx_member_groups`
--

LOCK TABLES `modx_member_groups` WRITE;
/*!40000 ALTER TABLE `modx_member_groups` DISABLE KEYS */;
INSERT INTO `modx_member_groups` VALUES (1,1,1,2,0);
/*!40000 ALTER TABLE `modx_member_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modx_membergroup_names`
--

DROP TABLE IF EXISTS `modx_membergroup_names`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `modx_membergroup_names` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `name` varchar(255) NOT NULL default '',
  `description` text,
  `parent` int(10) unsigned NOT NULL default '0',
  `rank` int(10) unsigned NOT NULL default '0',
  `dashboard` int(10) unsigned NOT NULL default '1',
  PRIMARY KEY  (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `parent` (`parent`),
  KEY `rank` (`rank`),
  KEY `dashboard` (`dashboard`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modx_membergroup_names`
--

LOCK TABLES `modx_membergroup_names` WRITE;
/*!40000 ALTER TABLE `modx_membergroup_names` DISABLE KEYS */;
INSERT INTO `modx_membergroup_names` VALUES (1,'Administrator',NULL,0,0,1);
/*!40000 ALTER TABLE `modx_membergroup_names` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modx_menus`
--

DROP TABLE IF EXISTS `modx_menus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `modx_menus` (
  `text` varchar(255) NOT NULL default '',
  `parent` varchar(255) NOT NULL default '',
  `action` int(11) unsigned NOT NULL default '0',
  `description` varchar(255) NOT NULL default '',
  `icon` varchar(255) NOT NULL default '',
  `menuindex` int(11) unsigned NOT NULL default '0',
  `params` text NOT NULL,
  `handler` text NOT NULL,
  `permissions` text NOT NULL,
  PRIMARY KEY  (`text`),
  KEY `parent` (`parent`),
  KEY `action` (`action`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modx_menus`
--

LOCK TABLES `modx_menus` WRITE;
/*!40000 ALTER TABLE `modx_menus` DISABLE KEYS */;
INSERT INTO `modx_menus` VALUES ('dashboard','',0,'','images/misc/logo_tbar.gif',0,'','MODx.loadPage(\"\"); return false;','home'),('dashboards','dashboard',53,'dashboards_desc','images/icons/information.png',0,'','','dashboards'),('site','',0,'','images/misc/logo_tbar.gif',1,'','','menu_site'),('preview','site',0,'preview_desc','images/icons/show.gif',0,'','MODx.preview(); return false;',''),('refresh_site','site',0,'refresh_site_desc','images/icons/refresh.png',1,'','MODx.clearCache(); return false;','empty_cache'),('remove_locks','site',0,'remove_locks_desc','images/ext/default/grid/hmenu-unlock.png',2,'','\nMODx.msg.confirm({\n    title: _(\'remove_locks\')\n    ,text: _(\'confirm_remove_locks\')\n    ,url: MODx.config.connectors_url+\'system/remove_locks.php\'\n    ,params: {\n        action: \'remove\'\n    }\n    ,listeners: {\n        \'success\': {fn:function() { Ext.getCmp(\"modx-resource-tree\").refresh(); },scope:this}\n    }\n});','remove_locks'),('search','site',54,'search_desc','images/icons/context_view.gif',3,'','','search'),('new_document','site',55,'new_document_desc','images/icons/folder_page_add.png',4,'','','new_document'),('new_weblink','site',55,'new_weblink_desc','images/icons/link_add.png',5,'&class_key=modWebLink','','new_weblink'),('new_symlink','site',55,'new_symlink_desc','images/icons/link_add.png',6,'&class_key=modSymLink','','new_symlink'),('new_static_resource','site',55,'new_static_resource_desc','images/icons/link_add.png',7,'&class_key=modStaticResource','','new_static_resource'),('logout','site',0,'logout_desc','images/misc/logo_tbar.gif',8,'','MODx.logout(); return false;','logout'),('components','',0,'','images/icons/plugin.gif',2,'','','components'),('security','',0,'','images/icons/lock.gif',3,'','','menu_security'),('user_management','security',56,'user_management_desc','images/icons/user.gif',0,'','','view_user'),('user_group_management','security',57,'user_group_management_desc','images/icons/mnu_users.gif',1,'','','access_permissions'),('resource_groups','security',58,'resource_groups_desc','',2,'','','access_permissions'),('form_customization','security',59,'form_customization_desc','images/misc/logo_tbar.gif',3,'','','customize_forms'),('flush_access','security',0,'flush_access_desc','images/icons/unzip.gif',4,'','MODx.msg.confirm({\n    title: _(\'flush_access\')\n    ,text: _(\'flush_access_confirm\')\n    ,url: MODx.config.connectors_url+\'security/access/index.php\'\n    ,params: {\n        action: \'flush\'\n    }\n    ,listeners: {\n        \'success\': {fn:function() { location.href = \'./\'; },scope:this}\n    }\n});','access_permissions'),('flush_sessions','security',0,'flush_sessions_desc','images/icons/unzip.gif',5,'','MODx.msg.confirm({\n    title: _(\'flush_sessions\')\n    ,text: _(\'flush_sessions_confirm\')\n    ,url: MODx.config.connectors_url+\'security/flush.php\'\n    ,params: {\n        action: \'flush\'\n    }\n    ,listeners: {\n        \'success\': {fn:function() { location.href = \'./\'; },scope:this}\n    }\n});','flush_sessions'),('tools','',0,'','images/icons/menu_settings.gif',4,'','','menu_tools'),('import_resources','tools',60,'import_resources_desc','images/icons/application_side_contract.png',0,'','','import_static'),('import_site','tools',61,'import_site_desc','images/icons/application_side_contract.png',1,'','','import_static'),('propertysets','tools',62,'propertysets_desc','images/misc/logo_tbar.gif',2,'','','property_sets'),('sources','tools',63,'sources_desc','images/misc/logo_tbar.gif',2,'','','sources'),('reports','',0,'','images/icons/menu_settings16.gif',5,'','','menu_reports'),('site_schedule','reports',64,'site_schedule_desc','images/icons/cal.gif',0,'','','view_document'),('view_logging','reports',65,'view_logging_desc','',1,'','','logs'),('eventlog_viewer','reports',66,'eventlog_viewer_desc','images/icons/comment.gif',2,'','','view_eventlog'),('view_sysinfo','reports',67,'view_sysinfo_desc','images/icons/logging.gif',3,'','','view_sysinfo'),('about','reports',68,'about_desc','images/icons/information.png',4,'','','about'),('system','',0,'','images/misc/logo_tbar.gif',6,'','','menu_system'),('manage_workspaces','system',69,'manage_workspaces_desc','images/icons/sysinfo.gif',0,'','','packages'),('system_settings','system',70,'system_settings_desc','images/icons/sysinfo.gif',1,'','','settings'),('lexicon_management','system',71,'lexicon_management_desc','images/icons/logging.gif',2,'','','lexicons'),('content_types','system',72,'content_types_desc','images/icons/logging.gif',3,'','','content_types'),('contexts','system',73,'contexts_desc','images/icons/sysinfo.gif',4,'','','view_context'),('edit_menu','system',74,'edit_menu_desc','images/icons/sysinfo.gif',5,'','','menus,actions'),('namespaces','system',75,'namespaces_desc','',6,'','','namespaces'),('user','',0,'','images/icons/user_go.png',7,'','','menu_user'),('profile','user',76,'profile_desc','',0,'','','change_profile'),('messages','user',77,'messages_desc','images/icons/messages.gif',1,'','','messages'),('support','',0,'support_desc','images/icons/sysinfo.gif',8,'','','menu_support'),('forums','support',0,'forums_desc','images/icons/sysinfo.gif',0,'','window.open(\"http://modx.com/forums\");',''),('wiki','support',0,'wiki_desc','images/icons/sysinfo.gif',1,'','window.open(\"http://rtfm.modx.com/\");',''),('jira','support',0,'jira_desc','images/icons/sysinfo.gif',2,'','window.open(\"http://bugs.modx.com/projects/revo/issues\");',''),('api_docs','support',0,'api_docs_desc','images/icons/sysinfo.gif',3,'','window.open(\"http://api.modx.com/revolution/2.2/\");','');
/*!40000 ALTER TABLE `modx_menus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modx_namespaces`
--

DROP TABLE IF EXISTS `modx_namespaces`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `modx_namespaces` (
  `name` varchar(40) NOT NULL default '',
  `path` text,
  PRIMARY KEY  (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modx_namespaces`
--

LOCK TABLES `modx_namespaces` WRITE;
/*!40000 ALTER TABLE `modx_namespaces` DISABLE KEYS */;
INSERT INTO `modx_namespaces` VALUES ('core','{core_path}'),('tinymce','{core_path}components/tinymce/');
/*!40000 ALTER TABLE `modx_namespaces` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modx_property_set`
--

DROP TABLE IF EXISTS `modx_property_set`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `modx_property_set` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `name` varchar(50) NOT NULL default '',
  `category` int(10) NOT NULL default '0',
  `description` varchar(255) NOT NULL default '',
  `properties` text,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `category` (`category`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modx_property_set`
--

LOCK TABLES `modx_property_set` WRITE;
/*!40000 ALTER TABLE `modx_property_set` DISABLE KEYS */;
/*!40000 ALTER TABLE `modx_property_set` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modx_register_messages`
--

DROP TABLE IF EXISTS `modx_register_messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `modx_register_messages` (
  `topic` int(10) unsigned NOT NULL,
  `id` varchar(255) NOT NULL,
  `created` datetime NOT NULL,
  `valid` datetime NOT NULL,
  `accessed` timestamp NULL default NULL on update CURRENT_TIMESTAMP,
  `accesses` int(10) unsigned NOT NULL default '0',
  `expires` int(20) NOT NULL default '0',
  `payload` mediumtext NOT NULL,
  `kill` tinyint(1) unsigned NOT NULL default '0',
  PRIMARY KEY  (`topic`,`id`),
  KEY `created` (`created`),
  KEY `valid` (`valid`),
  KEY `accessed` (`accessed`),
  KEY `accesses` (`accesses`),
  KEY `expires` (`expires`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modx_register_messages`
--

LOCK TABLES `modx_register_messages` WRITE;
/*!40000 ALTER TABLE `modx_register_messages` DISABLE KEYS */;
/*!40000 ALTER TABLE `modx_register_messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modx_register_queues`
--

DROP TABLE IF EXISTS `modx_register_queues`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `modx_register_queues` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `name` varchar(255) NOT NULL,
  `options` mediumtext,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modx_register_queues`
--

LOCK TABLES `modx_register_queues` WRITE;
/*!40000 ALTER TABLE `modx_register_queues` DISABLE KEYS */;
INSERT INTO `modx_register_queues` VALUES (1,'locks','a:1:{s:9:\"directory\";s:5:\"locks\";}'),(2,'resource_reload','a:1:{s:9:\"directory\";s:15:\"resource_reload\";}');
/*!40000 ALTER TABLE `modx_register_queues` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modx_register_topics`
--

DROP TABLE IF EXISTS `modx_register_topics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `modx_register_topics` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `queue` int(10) unsigned NOT NULL,
  `name` varchar(255) NOT NULL,
  `created` datetime NOT NULL,
  `updated` timestamp NULL default NULL on update CURRENT_TIMESTAMP,
  `options` mediumtext,
  PRIMARY KEY  (`id`),
  KEY `queue` (`queue`),
  KEY `name` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modx_register_topics`
--

LOCK TABLES `modx_register_topics` WRITE;
/*!40000 ALTER TABLE `modx_register_topics` DISABLE KEYS */;
INSERT INTO `modx_register_topics` VALUES (1,1,'/resource/','2012-03-07 07:31:54',NULL,NULL),(2,2,'/resourcereload/','2012-03-07 07:32:52',NULL,NULL);
/*!40000 ALTER TABLE `modx_register_topics` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modx_session`
--

DROP TABLE IF EXISTS `modx_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `modx_session` (
  `id` varchar(40) NOT NULL default '',
  `access` int(20) unsigned default NULL,
  `data` mediumtext,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modx_session`
--

LOCK TABLES `modx_session` WRITE;
/*!40000 ALTER TABLE `modx_session` DISABLE KEYS */;
INSERT INTO `modx_session` VALUES ('e9e866edc9e9d02d368659954ea2d6e7',1331127453,'modx.user.contextTokens|a:1:{s:3:\"mgr\";i:1;}modx.user.0.userGroups|a:0:{}modx.user.0.attributes|a:1:{s:3:\"mgr\";a:4:{s:16:\"modAccessContext\";a:1:{s:3:\"web\";a:1:{i:0;a:3:{s:9:\"principal\";i:0;s:9:\"authority\";s:1:\"0\";s:6:\"policy\";a:1:{s:4:\"load\";b:1;}}}}s:22:\"modAccessResourceGroup\";a:0:{}s:17:\"modAccessCategory\";a:0:{}s:28:\"sources.modAccessMediaSource\";a:0:{}}}modx.user.0.resourceGroups|a:1:{s:3:\"mgr\";a:0:{}}modx.mgr.user.token|s:52:\"modx4f576058f38bd1.70473967_14f576072a796e6.47300388\";modx.mgr.session.cookie.lifetime|i:0;modx.user.1.attributes|a:2:{s:3:\"mgr\";a:4:{s:16:\"modAccessContext\";a:2:{s:3:\"mgr\";a:1:{i:0;a:3:{s:9:\"principal\";s:1:\"1\";s:9:\"authority\";s:1:\"0\";s:6:\"policy\";a:172:{s:5:\"about\";b:1;s:18:\"access_permissions\";b:1;s:7:\"actions\";b:1;s:15:\"change_password\";b:1;s:14:\"change_profile\";b:1;s:8:\"charsets\";b:1;s:9:\"class_map\";b:1;s:10:\"components\";b:1;s:13:\"content_types\";b:1;s:9:\"countries\";b:1;s:6:\"create\";b:1;s:7:\"credits\";b:1;s:15:\"customize_forms\";b:1;s:10:\"dashboards\";b:1;s:8:\"database\";b:1;s:17:\"database_truncate\";b:1;s:15:\"delete_category\";b:1;s:12:\"delete_chunk\";b:1;s:14:\"delete_context\";b:1;s:15:\"delete_document\";b:1;s:15:\"delete_eventlog\";b:1;s:13:\"delete_plugin\";b:1;s:18:\"delete_propertyset\";b:1;s:11:\"delete_role\";b:1;s:14:\"delete_snippet\";b:1;s:15:\"delete_template\";b:1;s:9:\"delete_tv\";b:1;s:11:\"delete_user\";b:1;s:15:\"directory_chmod\";b:1;s:16:\"directory_create\";b:1;s:14:\"directory_list\";b:1;s:16:\"directory_remove\";b:1;s:16:\"directory_update\";b:1;s:13:\"edit_category\";b:1;s:10:\"edit_chunk\";b:1;s:12:\"edit_context\";b:1;s:13:\"edit_document\";b:1;s:11:\"edit_locked\";b:1;s:11:\"edit_plugin\";b:1;s:16:\"edit_propertyset\";b:1;s:9:\"edit_role\";b:1;s:12:\"edit_snippet\";b:1;s:13:\"edit_template\";b:1;s:7:\"edit_tv\";b:1;s:9:\"edit_user\";b:1;s:12:\"element_tree\";b:1;s:11:\"empty_cache\";b:1;s:15:\"error_log_erase\";b:1;s:14:\"error_log_view\";b:1;s:13:\"export_static\";b:1;s:11:\"file_create\";b:1;s:9:\"file_list\";b:1;s:12:\"file_manager\";b:1;s:11:\"file_remove\";b:1;s:9:\"file_tree\";b:1;s:11:\"file_update\";b:1;s:11:\"file_upload\";b:1;s:9:\"file_view\";b:1;s:14:\"flush_sessions\";b:1;s:6:\"frames\";b:1;s:4:\"help\";b:1;s:4:\"home\";b:1;s:13:\"import_static\";b:1;s:9:\"languages\";b:1;s:8:\"lexicons\";b:1;s:4:\"list\";b:1;s:4:\"load\";b:1;s:6:\"logout\";b:1;s:4:\"logs\";b:1;s:5:\"menus\";b:1;s:12:\"menu_reports\";b:1;s:13:\"menu_security\";b:1;s:9:\"menu_site\";b:1;s:12:\"menu_support\";b:1;s:11:\"menu_system\";b:1;s:10:\"menu_tools\";b:1;s:9:\"menu_user\";b:1;s:8:\"messages\";b:1;s:10:\"namespaces\";b:1;s:12:\"new_category\";b:1;s:9:\"new_chunk\";b:1;s:11:\"new_context\";b:1;s:12:\"new_document\";b:1;s:20:\"new_document_in_root\";b:1;s:10:\"new_plugin\";b:1;s:15:\"new_propertyset\";b:1;s:8:\"new_role\";b:1;s:11:\"new_snippet\";b:1;s:19:\"new_static_resource\";b:1;s:11:\"new_symlink\";b:1;s:12:\"new_template\";b:1;s:6:\"new_tv\";b:1;s:8:\"new_user\";b:1;s:11:\"new_weblink\";b:1;s:8:\"packages\";b:1;s:13:\"policy_delete\";b:1;s:11:\"policy_edit\";b:1;s:10:\"policy_new\";b:1;s:11:\"policy_save\";b:1;s:22:\"policy_template_delete\";b:1;s:20:\"policy_template_edit\";b:1;s:19:\"policy_template_new\";b:1;s:20:\"policy_template_save\";b:1;s:20:\"policy_template_view\";b:1;s:11:\"policy_view\";b:1;s:13:\"property_sets\";b:1;s:9:\"providers\";b:1;s:16:\"publish_document\";b:1;s:13:\"purge_deleted\";b:1;s:6:\"remove\";b:1;s:12:\"remove_locks\";b:1;s:18:\"resource_duplicate\";b:1;s:20:\"resourcegroup_delete\";b:1;s:18:\"resourcegroup_edit\";b:1;s:17:\"resourcegroup_new\";b:1;s:27:\"resourcegroup_resource_edit\";b:1;s:27:\"resourcegroup_resource_list\";b:1;s:18:\"resourcegroup_save\";b:1;s:18:\"resourcegroup_view\";b:1;s:21:\"resource_quick_create\";b:1;s:21:\"resource_quick_update\";b:1;s:13:\"resource_tree\";b:1;s:4:\"save\";b:1;s:13:\"save_category\";b:1;s:10:\"save_chunk\";b:1;s:12:\"save_context\";b:1;s:13:\"save_document\";b:1;s:11:\"save_plugin\";b:1;s:16:\"save_propertyset\";b:1;s:9:\"save_role\";b:1;s:12:\"save_snippet\";b:1;s:13:\"save_template\";b:1;s:7:\"save_tv\";b:1;s:9:\"save_user\";b:1;s:6:\"search\";b:1;s:8:\"settings\";b:1;s:7:\"sources\";b:1;s:13:\"source_delete\";b:1;s:11:\"source_edit\";b:1;s:11:\"source_save\";b:1;s:11:\"source_view\";b:1;s:11:\"steal_locks\";b:1;s:21:\"tree_show_element_ids\";b:1;s:22:\"tree_show_resource_ids\";b:1;s:17:\"undelete_document\";b:1;s:25:\"unlock_element_properties\";b:1;s:18:\"unpublish_document\";b:1;s:16:\"usergroup_delete\";b:1;s:14:\"usergroup_edit\";b:1;s:13:\"usergroup_new\";b:1;s:14:\"usergroup_save\";b:1;s:19:\"usergroup_user_edit\";b:1;s:19:\"usergroup_user_list\";b:1;s:14:\"usergroup_view\";b:1;s:4:\"view\";b:1;s:13:\"view_category\";b:1;s:10:\"view_chunk\";b:1;s:12:\"view_context\";b:1;s:13:\"view_document\";b:1;s:12:\"view_element\";b:1;s:13:\"view_eventlog\";b:1;s:12:\"view_offline\";b:1;s:11:\"view_plugin\";b:1;s:16:\"view_propertyset\";b:1;s:9:\"view_role\";b:1;s:12:\"view_snippet\";b:1;s:12:\"view_sysinfo\";b:1;s:13:\"view_template\";b:1;s:7:\"view_tv\";b:1;s:16:\"view_unpublished\";b:1;s:9:\"view_user\";b:1;s:10:\"workspaces\";b:1;}}}s:3:\"web\";a:1:{i:0;a:3:{s:9:\"principal\";s:1:\"1\";s:9:\"authority\";s:1:\"0\";s:6:\"policy\";a:172:{s:5:\"about\";b:1;s:18:\"access_permissions\";b:1;s:7:\"actions\";b:1;s:15:\"change_password\";b:1;s:14:\"change_profile\";b:1;s:8:\"charsets\";b:1;s:9:\"class_map\";b:1;s:10:\"components\";b:1;s:13:\"content_types\";b:1;s:9:\"countries\";b:1;s:6:\"create\";b:1;s:7:\"credits\";b:1;s:15:\"customize_forms\";b:1;s:10:\"dashboards\";b:1;s:8:\"database\";b:1;s:17:\"database_truncate\";b:1;s:15:\"delete_category\";b:1;s:12:\"delete_chunk\";b:1;s:14:\"delete_context\";b:1;s:15:\"delete_document\";b:1;s:15:\"delete_eventlog\";b:1;s:13:\"delete_plugin\";b:1;s:18:\"delete_propertyset\";b:1;s:11:\"delete_role\";b:1;s:14:\"delete_snippet\";b:1;s:15:\"delete_template\";b:1;s:9:\"delete_tv\";b:1;s:11:\"delete_user\";b:1;s:15:\"directory_chmod\";b:1;s:16:\"directory_create\";b:1;s:14:\"directory_list\";b:1;s:16:\"directory_remove\";b:1;s:16:\"directory_update\";b:1;s:13:\"edit_category\";b:1;s:10:\"edit_chunk\";b:1;s:12:\"edit_context\";b:1;s:13:\"edit_document\";b:1;s:11:\"edit_locked\";b:1;s:11:\"edit_plugin\";b:1;s:16:\"edit_propertyset\";b:1;s:9:\"edit_role\";b:1;s:12:\"edit_snippet\";b:1;s:13:\"edit_template\";b:1;s:7:\"edit_tv\";b:1;s:9:\"edit_user\";b:1;s:12:\"element_tree\";b:1;s:11:\"empty_cache\";b:1;s:15:\"error_log_erase\";b:1;s:14:\"error_log_view\";b:1;s:13:\"export_static\";b:1;s:11:\"file_create\";b:1;s:9:\"file_list\";b:1;s:12:\"file_manager\";b:1;s:11:\"file_remove\";b:1;s:9:\"file_tree\";b:1;s:11:\"file_update\";b:1;s:11:\"file_upload\";b:1;s:9:\"file_view\";b:1;s:14:\"flush_sessions\";b:1;s:6:\"frames\";b:1;s:4:\"help\";b:1;s:4:\"home\";b:1;s:13:\"import_static\";b:1;s:9:\"languages\";b:1;s:8:\"lexicons\";b:1;s:4:\"list\";b:1;s:4:\"load\";b:1;s:6:\"logout\";b:1;s:4:\"logs\";b:1;s:5:\"menus\";b:1;s:12:\"menu_reports\";b:1;s:13:\"menu_security\";b:1;s:9:\"menu_site\";b:1;s:12:\"menu_support\";b:1;s:11:\"menu_system\";b:1;s:10:\"menu_tools\";b:1;s:9:\"menu_user\";b:1;s:8:\"messages\";b:1;s:10:\"namespaces\";b:1;s:12:\"new_category\";b:1;s:9:\"new_chunk\";b:1;s:11:\"new_context\";b:1;s:12:\"new_document\";b:1;s:20:\"new_document_in_root\";b:1;s:10:\"new_plugin\";b:1;s:15:\"new_propertyset\";b:1;s:8:\"new_role\";b:1;s:11:\"new_snippet\";b:1;s:19:\"new_static_resource\";b:1;s:11:\"new_symlink\";b:1;s:12:\"new_template\";b:1;s:6:\"new_tv\";b:1;s:8:\"new_user\";b:1;s:11:\"new_weblink\";b:1;s:8:\"packages\";b:1;s:13:\"policy_delete\";b:1;s:11:\"policy_edit\";b:1;s:10:\"policy_new\";b:1;s:11:\"policy_save\";b:1;s:22:\"policy_template_delete\";b:1;s:20:\"policy_template_edit\";b:1;s:19:\"policy_template_new\";b:1;s:20:\"policy_template_save\";b:1;s:20:\"policy_template_view\";b:1;s:11:\"policy_view\";b:1;s:13:\"property_sets\";b:1;s:9:\"providers\";b:1;s:16:\"publish_document\";b:1;s:13:\"purge_deleted\";b:1;s:6:\"remove\";b:1;s:12:\"remove_locks\";b:1;s:18:\"resource_duplicate\";b:1;s:20:\"resourcegroup_delete\";b:1;s:18:\"resourcegroup_edit\";b:1;s:17:\"resourcegroup_new\";b:1;s:27:\"resourcegroup_resource_edit\";b:1;s:27:\"resourcegroup_resource_list\";b:1;s:18:\"resourcegroup_save\";b:1;s:18:\"resourcegroup_view\";b:1;s:21:\"resource_quick_create\";b:1;s:21:\"resource_quick_update\";b:1;s:13:\"resource_tree\";b:1;s:4:\"save\";b:1;s:13:\"save_category\";b:1;s:10:\"save_chunk\";b:1;s:12:\"save_context\";b:1;s:13:\"save_document\";b:1;s:11:\"save_plugin\";b:1;s:16:\"save_propertyset\";b:1;s:9:\"save_role\";b:1;s:12:\"save_snippet\";b:1;s:13:\"save_template\";b:1;s:7:\"save_tv\";b:1;s:9:\"save_user\";b:1;s:6:\"search\";b:1;s:8:\"settings\";b:1;s:7:\"sources\";b:1;s:13:\"source_delete\";b:1;s:11:\"source_edit\";b:1;s:11:\"source_save\";b:1;s:11:\"source_view\";b:1;s:11:\"steal_locks\";b:1;s:21:\"tree_show_element_ids\";b:1;s:22:\"tree_show_resource_ids\";b:1;s:17:\"undelete_document\";b:1;s:25:\"unlock_element_properties\";b:1;s:18:\"unpublish_document\";b:1;s:16:\"usergroup_delete\";b:1;s:14:\"usergroup_edit\";b:1;s:13:\"usergroup_new\";b:1;s:14:\"usergroup_save\";b:1;s:19:\"usergroup_user_edit\";b:1;s:19:\"usergroup_user_list\";b:1;s:14:\"usergroup_view\";b:1;s:4:\"view\";b:1;s:13:\"view_category\";b:1;s:10:\"view_chunk\";b:1;s:12:\"view_context\";b:1;s:13:\"view_document\";b:1;s:12:\"view_element\";b:1;s:13:\"view_eventlog\";b:1;s:12:\"view_offline\";b:1;s:11:\"view_plugin\";b:1;s:16:\"view_propertyset\";b:1;s:9:\"view_role\";b:1;s:12:\"view_snippet\";b:1;s:12:\"view_sysinfo\";b:1;s:13:\"view_template\";b:1;s:7:\"view_tv\";b:1;s:16:\"view_unpublished\";b:1;s:9:\"view_user\";b:1;s:10:\"workspaces\";b:1;}}}}s:22:\"modAccessResourceGroup\";a:0:{}s:17:\"modAccessCategory\";a:0:{}s:28:\"sources.modAccessMediaSource\";a:0:{}}s:3:\"web\";a:4:{s:16:\"modAccessContext\";a:2:{s:3:\"mgr\";a:1:{i:0;a:3:{s:9:\"principal\";s:1:\"1\";s:9:\"authority\";s:1:\"0\";s:6:\"policy\";a:172:{s:5:\"about\";b:1;s:18:\"access_permissions\";b:1;s:7:\"actions\";b:1;s:15:\"change_password\";b:1;s:14:\"change_profile\";b:1;s:8:\"charsets\";b:1;s:9:\"class_map\";b:1;s:10:\"components\";b:1;s:13:\"content_types\";b:1;s:9:\"countries\";b:1;s:6:\"create\";b:1;s:7:\"credits\";b:1;s:15:\"customize_forms\";b:1;s:10:\"dashboards\";b:1;s:8:\"database\";b:1;s:17:\"database_truncate\";b:1;s:15:\"delete_category\";b:1;s:12:\"delete_chunk\";b:1;s:14:\"delete_context\";b:1;s:15:\"delete_document\";b:1;s:15:\"delete_eventlog\";b:1;s:13:\"delete_plugin\";b:1;s:18:\"delete_propertyset\";b:1;s:11:\"delete_role\";b:1;s:14:\"delete_snippet\";b:1;s:15:\"delete_template\";b:1;s:9:\"delete_tv\";b:1;s:11:\"delete_user\";b:1;s:15:\"directory_chmod\";b:1;s:16:\"directory_create\";b:1;s:14:\"directory_list\";b:1;s:16:\"directory_remove\";b:1;s:16:\"directory_update\";b:1;s:13:\"edit_category\";b:1;s:10:\"edit_chunk\";b:1;s:12:\"edit_context\";b:1;s:13:\"edit_document\";b:1;s:11:\"edit_locked\";b:1;s:11:\"edit_plugin\";b:1;s:16:\"edit_propertyset\";b:1;s:9:\"edit_role\";b:1;s:12:\"edit_snippet\";b:1;s:13:\"edit_template\";b:1;s:7:\"edit_tv\";b:1;s:9:\"edit_user\";b:1;s:12:\"element_tree\";b:1;s:11:\"empty_cache\";b:1;s:15:\"error_log_erase\";b:1;s:14:\"error_log_view\";b:1;s:13:\"export_static\";b:1;s:11:\"file_create\";b:1;s:9:\"file_list\";b:1;s:12:\"file_manager\";b:1;s:11:\"file_remove\";b:1;s:9:\"file_tree\";b:1;s:11:\"file_update\";b:1;s:11:\"file_upload\";b:1;s:9:\"file_view\";b:1;s:14:\"flush_sessions\";b:1;s:6:\"frames\";b:1;s:4:\"help\";b:1;s:4:\"home\";b:1;s:13:\"import_static\";b:1;s:9:\"languages\";b:1;s:8:\"lexicons\";b:1;s:4:\"list\";b:1;s:4:\"load\";b:1;s:6:\"logout\";b:1;s:4:\"logs\";b:1;s:5:\"menus\";b:1;s:12:\"menu_reports\";b:1;s:13:\"menu_security\";b:1;s:9:\"menu_site\";b:1;s:12:\"menu_support\";b:1;s:11:\"menu_system\";b:1;s:10:\"menu_tools\";b:1;s:9:\"menu_user\";b:1;s:8:\"messages\";b:1;s:10:\"namespaces\";b:1;s:12:\"new_category\";b:1;s:9:\"new_chunk\";b:1;s:11:\"new_context\";b:1;s:12:\"new_document\";b:1;s:20:\"new_document_in_root\";b:1;s:10:\"new_plugin\";b:1;s:15:\"new_propertyset\";b:1;s:8:\"new_role\";b:1;s:11:\"new_snippet\";b:1;s:19:\"new_static_resource\";b:1;s:11:\"new_symlink\";b:1;s:12:\"new_template\";b:1;s:6:\"new_tv\";b:1;s:8:\"new_user\";b:1;s:11:\"new_weblink\";b:1;s:8:\"packages\";b:1;s:13:\"policy_delete\";b:1;s:11:\"policy_edit\";b:1;s:10:\"policy_new\";b:1;s:11:\"policy_save\";b:1;s:22:\"policy_template_delete\";b:1;s:20:\"policy_template_edit\";b:1;s:19:\"policy_template_new\";b:1;s:20:\"policy_template_save\";b:1;s:20:\"policy_template_view\";b:1;s:11:\"policy_view\";b:1;s:13:\"property_sets\";b:1;s:9:\"providers\";b:1;s:16:\"publish_document\";b:1;s:13:\"purge_deleted\";b:1;s:6:\"remove\";b:1;s:12:\"remove_locks\";b:1;s:18:\"resource_duplicate\";b:1;s:20:\"resourcegroup_delete\";b:1;s:18:\"resourcegroup_edit\";b:1;s:17:\"resourcegroup_new\";b:1;s:27:\"resourcegroup_resource_edit\";b:1;s:27:\"resourcegroup_resource_list\";b:1;s:18:\"resourcegroup_save\";b:1;s:18:\"resourcegroup_view\";b:1;s:21:\"resource_quick_create\";b:1;s:21:\"resource_quick_update\";b:1;s:13:\"resource_tree\";b:1;s:4:\"save\";b:1;s:13:\"save_category\";b:1;s:10:\"save_chunk\";b:1;s:12:\"save_context\";b:1;s:13:\"save_document\";b:1;s:11:\"save_plugin\";b:1;s:16:\"save_propertyset\";b:1;s:9:\"save_role\";b:1;s:12:\"save_snippet\";b:1;s:13:\"save_template\";b:1;s:7:\"save_tv\";b:1;s:9:\"save_user\";b:1;s:6:\"search\";b:1;s:8:\"settings\";b:1;s:7:\"sources\";b:1;s:13:\"source_delete\";b:1;s:11:\"source_edit\";b:1;s:11:\"source_save\";b:1;s:11:\"source_view\";b:1;s:11:\"steal_locks\";b:1;s:21:\"tree_show_element_ids\";b:1;s:22:\"tree_show_resource_ids\";b:1;s:17:\"undelete_document\";b:1;s:25:\"unlock_element_properties\";b:1;s:18:\"unpublish_document\";b:1;s:16:\"usergroup_delete\";b:1;s:14:\"usergroup_edit\";b:1;s:13:\"usergroup_new\";b:1;s:14:\"usergroup_save\";b:1;s:19:\"usergroup_user_edit\";b:1;s:19:\"usergroup_user_list\";b:1;s:14:\"usergroup_view\";b:1;s:4:\"view\";b:1;s:13:\"view_category\";b:1;s:10:\"view_chunk\";b:1;s:12:\"view_context\";b:1;s:13:\"view_document\";b:1;s:12:\"view_element\";b:1;s:13:\"view_eventlog\";b:1;s:12:\"view_offline\";b:1;s:11:\"view_plugin\";b:1;s:16:\"view_propertyset\";b:1;s:9:\"view_role\";b:1;s:12:\"view_snippet\";b:1;s:12:\"view_sysinfo\";b:1;s:13:\"view_template\";b:1;s:7:\"view_tv\";b:1;s:16:\"view_unpublished\";b:1;s:9:\"view_user\";b:1;s:10:\"workspaces\";b:1;}}}s:3:\"web\";a:1:{i:0;a:3:{s:9:\"principal\";s:1:\"1\";s:9:\"authority\";s:1:\"0\";s:6:\"policy\";a:172:{s:5:\"about\";b:1;s:18:\"access_permissions\";b:1;s:7:\"actions\";b:1;s:15:\"change_password\";b:1;s:14:\"change_profile\";b:1;s:8:\"charsets\";b:1;s:9:\"class_map\";b:1;s:10:\"components\";b:1;s:13:\"content_types\";b:1;s:9:\"countries\";b:1;s:6:\"create\";b:1;s:7:\"credits\";b:1;s:15:\"customize_forms\";b:1;s:10:\"dashboards\";b:1;s:8:\"database\";b:1;s:17:\"database_truncate\";b:1;s:15:\"delete_category\";b:1;s:12:\"delete_chunk\";b:1;s:14:\"delete_context\";b:1;s:15:\"delete_document\";b:1;s:15:\"delete_eventlog\";b:1;s:13:\"delete_plugin\";b:1;s:18:\"delete_propertyset\";b:1;s:11:\"delete_role\";b:1;s:14:\"delete_snippet\";b:1;s:15:\"delete_template\";b:1;s:9:\"delete_tv\";b:1;s:11:\"delete_user\";b:1;s:15:\"directory_chmod\";b:1;s:16:\"directory_create\";b:1;s:14:\"directory_list\";b:1;s:16:\"directory_remove\";b:1;s:16:\"directory_update\";b:1;s:13:\"edit_category\";b:1;s:10:\"edit_chunk\";b:1;s:12:\"edit_context\";b:1;s:13:\"edit_document\";b:1;s:11:\"edit_locked\";b:1;s:11:\"edit_plugin\";b:1;s:16:\"edit_propertyset\";b:1;s:9:\"edit_role\";b:1;s:12:\"edit_snippet\";b:1;s:13:\"edit_template\";b:1;s:7:\"edit_tv\";b:1;s:9:\"edit_user\";b:1;s:12:\"element_tree\";b:1;s:11:\"empty_cache\";b:1;s:15:\"error_log_erase\";b:1;s:14:\"error_log_view\";b:1;s:13:\"export_static\";b:1;s:11:\"file_create\";b:1;s:9:\"file_list\";b:1;s:12:\"file_manager\";b:1;s:11:\"file_remove\";b:1;s:9:\"file_tree\";b:1;s:11:\"file_update\";b:1;s:11:\"file_upload\";b:1;s:9:\"file_view\";b:1;s:14:\"flush_sessions\";b:1;s:6:\"frames\";b:1;s:4:\"help\";b:1;s:4:\"home\";b:1;s:13:\"import_static\";b:1;s:9:\"languages\";b:1;s:8:\"lexicons\";b:1;s:4:\"list\";b:1;s:4:\"load\";b:1;s:6:\"logout\";b:1;s:4:\"logs\";b:1;s:5:\"menus\";b:1;s:12:\"menu_reports\";b:1;s:13:\"menu_security\";b:1;s:9:\"menu_site\";b:1;s:12:\"menu_support\";b:1;s:11:\"menu_system\";b:1;s:10:\"menu_tools\";b:1;s:9:\"menu_user\";b:1;s:8:\"messages\";b:1;s:10:\"namespaces\";b:1;s:12:\"new_category\";b:1;s:9:\"new_chunk\";b:1;s:11:\"new_context\";b:1;s:12:\"new_document\";b:1;s:20:\"new_document_in_root\";b:1;s:10:\"new_plugin\";b:1;s:15:\"new_propertyset\";b:1;s:8:\"new_role\";b:1;s:11:\"new_snippet\";b:1;s:19:\"new_static_resource\";b:1;s:11:\"new_symlink\";b:1;s:12:\"new_template\";b:1;s:6:\"new_tv\";b:1;s:8:\"new_user\";b:1;s:11:\"new_weblink\";b:1;s:8:\"packages\";b:1;s:13:\"policy_delete\";b:1;s:11:\"policy_edit\";b:1;s:10:\"policy_new\";b:1;s:11:\"policy_save\";b:1;s:22:\"policy_template_delete\";b:1;s:20:\"policy_template_edit\";b:1;s:19:\"policy_template_new\";b:1;s:20:\"policy_template_save\";b:1;s:20:\"policy_template_view\";b:1;s:11:\"policy_view\";b:1;s:13:\"property_sets\";b:1;s:9:\"providers\";b:1;s:16:\"publish_document\";b:1;s:13:\"purge_deleted\";b:1;s:6:\"remove\";b:1;s:12:\"remove_locks\";b:1;s:18:\"resource_duplicate\";b:1;s:20:\"resourcegroup_delete\";b:1;s:18:\"resourcegroup_edit\";b:1;s:17:\"resourcegroup_new\";b:1;s:27:\"resourcegroup_resource_edit\";b:1;s:27:\"resourcegroup_resource_list\";b:1;s:18:\"resourcegroup_save\";b:1;s:18:\"resourcegroup_view\";b:1;s:21:\"resource_quick_create\";b:1;s:21:\"resource_quick_update\";b:1;s:13:\"resource_tree\";b:1;s:4:\"save\";b:1;s:13:\"save_category\";b:1;s:10:\"save_chunk\";b:1;s:12:\"save_context\";b:1;s:13:\"save_document\";b:1;s:11:\"save_plugin\";b:1;s:16:\"save_propertyset\";b:1;s:9:\"save_role\";b:1;s:12:\"save_snippet\";b:1;s:13:\"save_template\";b:1;s:7:\"save_tv\";b:1;s:9:\"save_user\";b:1;s:6:\"search\";b:1;s:8:\"settings\";b:1;s:7:\"sources\";b:1;s:13:\"source_delete\";b:1;s:11:\"source_edit\";b:1;s:11:\"source_save\";b:1;s:11:\"source_view\";b:1;s:11:\"steal_locks\";b:1;s:21:\"tree_show_element_ids\";b:1;s:22:\"tree_show_resource_ids\";b:1;s:17:\"undelete_document\";b:1;s:25:\"unlock_element_properties\";b:1;s:18:\"unpublish_document\";b:1;s:16:\"usergroup_delete\";b:1;s:14:\"usergroup_edit\";b:1;s:13:\"usergroup_new\";b:1;s:14:\"usergroup_save\";b:1;s:19:\"usergroup_user_edit\";b:1;s:19:\"usergroup_user_list\";b:1;s:14:\"usergroup_view\";b:1;s:4:\"view\";b:1;s:13:\"view_category\";b:1;s:10:\"view_chunk\";b:1;s:12:\"view_context\";b:1;s:13:\"view_document\";b:1;s:12:\"view_element\";b:1;s:13:\"view_eventlog\";b:1;s:12:\"view_offline\";b:1;s:11:\"view_plugin\";b:1;s:16:\"view_propertyset\";b:1;s:9:\"view_role\";b:1;s:12:\"view_snippet\";b:1;s:12:\"view_sysinfo\";b:1;s:13:\"view_template\";b:1;s:7:\"view_tv\";b:1;s:16:\"view_unpublished\";b:1;s:9:\"view_user\";b:1;s:10:\"workspaces\";b:1;}}}}s:22:\"modAccessResourceGroup\";a:0:{}s:17:\"modAccessCategory\";a:0:{}s:28:\"sources.modAccessMediaSource\";a:0:{}}}modx.user.1.resourceGroups|a:1:{s:3:\"web\";a:0:{}}modx.user.1.userGroups|a:1:{i:0;i:1;}newResourceTokens|a:4:{i:0;s:23:\"4f57634a7e8aa0.71159094\";i:1;s:23:\"4f5763867180f7.21330621\";i:2;s:23:\"4f576386dccc89.93375706\";i:3;s:23:\"4f576451ef05b2.76962925\";}'),('bc0c53fd3c0901e76b5bd44047f4a560',1331129208,'modx.user.contextTokens|a:0:{}'),('e0314d76351c9f0612f9fb832de8b37b',1331142043,'modx.user.contextTokens|a:0:{}modx.user.0.userGroups|a:0:{}modx.user.0.attributes|a:1:{s:3:\"mgr\";a:4:{s:16:\"modAccessContext\";a:1:{s:3:\"web\";a:1:{i:0;a:3:{s:9:\"principal\";i:0;s:9:\"authority\";s:1:\"0\";s:6:\"policy\";a:1:{s:4:\"load\";b:1;}}}}s:22:\"modAccessResourceGroup\";a:0:{}s:17:\"modAccessCategory\";a:0:{}s:28:\"sources.modAccessMediaSource\";a:0:{}}}modx.user.0.resourceGroups|a:1:{s:3:\"mgr\";a:0:{}}'),('9c305aba87345ebd322e4d611f4390a8',1331129300,'modx.user.contextTokens|a:0:{}'),('0a2c8fbe519bdeb1db52b1ae3887d71d',1331129338,'modx.user.contextTokens|a:0:{}'),('cfbed4c2e6eb986154f8e89191feffd4',1331129338,'modx.user.contextTokens|a:0:{}'),('a4731acffa3ca0a439663689752fd2c9',1331129838,'modx.user.contextTokens|a:1:{s:3:\"mgr\";i:1;}modx.user.0.userGroups|a:0:{}modx.user.0.attributes|a:1:{s:3:\"mgr\";a:4:{s:16:\"modAccessContext\";a:1:{s:3:\"web\";a:1:{i:0;a:3:{s:9:\"principal\";i:0;s:9:\"authority\";s:1:\"0\";s:6:\"policy\";a:1:{s:4:\"load\";b:1;}}}}s:22:\"modAccessResourceGroup\";a:0:{}s:17:\"modAccessCategory\";a:0:{}s:28:\"sources.modAccessMediaSource\";a:0:{}}}modx.user.0.resourceGroups|a:1:{s:3:\"mgr\";a:0:{}}modx.mgr.user.token|s:52:\"modx4f576058f38bd1.70473967_14f576deca68023.41927794\";modx.mgr.session.cookie.lifetime|i:0;modx.user.1.attributes|a:1:{s:3:\"mgr\";a:4:{s:16:\"modAccessContext\";a:2:{s:3:\"mgr\";a:1:{i:0;a:3:{s:9:\"principal\";s:1:\"1\";s:9:\"authority\";s:1:\"0\";s:6:\"policy\";a:172:{s:5:\"about\";b:1;s:18:\"access_permissions\";b:1;s:7:\"actions\";b:1;s:15:\"change_password\";b:1;s:14:\"change_profile\";b:1;s:8:\"charsets\";b:1;s:9:\"class_map\";b:1;s:10:\"components\";b:1;s:13:\"content_types\";b:1;s:9:\"countries\";b:1;s:6:\"create\";b:1;s:7:\"credits\";b:1;s:15:\"customize_forms\";b:1;s:10:\"dashboards\";b:1;s:8:\"database\";b:1;s:17:\"database_truncate\";b:1;s:15:\"delete_category\";b:1;s:12:\"delete_chunk\";b:1;s:14:\"delete_context\";b:1;s:15:\"delete_document\";b:1;s:15:\"delete_eventlog\";b:1;s:13:\"delete_plugin\";b:1;s:18:\"delete_propertyset\";b:1;s:11:\"delete_role\";b:1;s:14:\"delete_snippet\";b:1;s:15:\"delete_template\";b:1;s:9:\"delete_tv\";b:1;s:11:\"delete_user\";b:1;s:15:\"directory_chmod\";b:1;s:16:\"directory_create\";b:1;s:14:\"directory_list\";b:1;s:16:\"directory_remove\";b:1;s:16:\"directory_update\";b:1;s:13:\"edit_category\";b:1;s:10:\"edit_chunk\";b:1;s:12:\"edit_context\";b:1;s:13:\"edit_document\";b:1;s:11:\"edit_locked\";b:1;s:11:\"edit_plugin\";b:1;s:16:\"edit_propertyset\";b:1;s:9:\"edit_role\";b:1;s:12:\"edit_snippet\";b:1;s:13:\"edit_template\";b:1;s:7:\"edit_tv\";b:1;s:9:\"edit_user\";b:1;s:12:\"element_tree\";b:1;s:11:\"empty_cache\";b:1;s:15:\"error_log_erase\";b:1;s:14:\"error_log_view\";b:1;s:13:\"export_static\";b:1;s:11:\"file_create\";b:1;s:9:\"file_list\";b:1;s:12:\"file_manager\";b:1;s:11:\"file_remove\";b:1;s:9:\"file_tree\";b:1;s:11:\"file_update\";b:1;s:11:\"file_upload\";b:1;s:9:\"file_view\";b:1;s:14:\"flush_sessions\";b:1;s:6:\"frames\";b:1;s:4:\"help\";b:1;s:4:\"home\";b:1;s:13:\"import_static\";b:1;s:9:\"languages\";b:1;s:8:\"lexicons\";b:1;s:4:\"list\";b:1;s:4:\"load\";b:1;s:6:\"logout\";b:1;s:4:\"logs\";b:1;s:5:\"menus\";b:1;s:12:\"menu_reports\";b:1;s:13:\"menu_security\";b:1;s:9:\"menu_site\";b:1;s:12:\"menu_support\";b:1;s:11:\"menu_system\";b:1;s:10:\"menu_tools\";b:1;s:9:\"menu_user\";b:1;s:8:\"messages\";b:1;s:10:\"namespaces\";b:1;s:12:\"new_category\";b:1;s:9:\"new_chunk\";b:1;s:11:\"new_context\";b:1;s:12:\"new_document\";b:1;s:20:\"new_document_in_root\";b:1;s:10:\"new_plugin\";b:1;s:15:\"new_propertyset\";b:1;s:8:\"new_role\";b:1;s:11:\"new_snippet\";b:1;s:19:\"new_static_resource\";b:1;s:11:\"new_symlink\";b:1;s:12:\"new_template\";b:1;s:6:\"new_tv\";b:1;s:8:\"new_user\";b:1;s:11:\"new_weblink\";b:1;s:8:\"packages\";b:1;s:13:\"policy_delete\";b:1;s:11:\"policy_edit\";b:1;s:10:\"policy_new\";b:1;s:11:\"policy_save\";b:1;s:22:\"policy_template_delete\";b:1;s:20:\"policy_template_edit\";b:1;s:19:\"policy_template_new\";b:1;s:20:\"policy_template_save\";b:1;s:20:\"policy_template_view\";b:1;s:11:\"policy_view\";b:1;s:13:\"property_sets\";b:1;s:9:\"providers\";b:1;s:16:\"publish_document\";b:1;s:13:\"purge_deleted\";b:1;s:6:\"remove\";b:1;s:12:\"remove_locks\";b:1;s:18:\"resource_duplicate\";b:1;s:20:\"resourcegroup_delete\";b:1;s:18:\"resourcegroup_edit\";b:1;s:17:\"resourcegroup_new\";b:1;s:27:\"resourcegroup_resource_edit\";b:1;s:27:\"resourcegroup_resource_list\";b:1;s:18:\"resourcegroup_save\";b:1;s:18:\"resourcegroup_view\";b:1;s:21:\"resource_quick_create\";b:1;s:21:\"resource_quick_update\";b:1;s:13:\"resource_tree\";b:1;s:4:\"save\";b:1;s:13:\"save_category\";b:1;s:10:\"save_chunk\";b:1;s:12:\"save_context\";b:1;s:13:\"save_document\";b:1;s:11:\"save_plugin\";b:1;s:16:\"save_propertyset\";b:1;s:9:\"save_role\";b:1;s:12:\"save_snippet\";b:1;s:13:\"save_template\";b:1;s:7:\"save_tv\";b:1;s:9:\"save_user\";b:1;s:6:\"search\";b:1;s:8:\"settings\";b:1;s:7:\"sources\";b:1;s:13:\"source_delete\";b:1;s:11:\"source_edit\";b:1;s:11:\"source_save\";b:1;s:11:\"source_view\";b:1;s:11:\"steal_locks\";b:1;s:21:\"tree_show_element_ids\";b:1;s:22:\"tree_show_resource_ids\";b:1;s:17:\"undelete_document\";b:1;s:25:\"unlock_element_properties\";b:1;s:18:\"unpublish_document\";b:1;s:16:\"usergroup_delete\";b:1;s:14:\"usergroup_edit\";b:1;s:13:\"usergroup_new\";b:1;s:14:\"usergroup_save\";b:1;s:19:\"usergroup_user_edit\";b:1;s:19:\"usergroup_user_list\";b:1;s:14:\"usergroup_view\";b:1;s:4:\"view\";b:1;s:13:\"view_category\";b:1;s:10:\"view_chunk\";b:1;s:12:\"view_context\";b:1;s:13:\"view_document\";b:1;s:12:\"view_element\";b:1;s:13:\"view_eventlog\";b:1;s:12:\"view_offline\";b:1;s:11:\"view_plugin\";b:1;s:16:\"view_propertyset\";b:1;s:9:\"view_role\";b:1;s:12:\"view_snippet\";b:1;s:12:\"view_sysinfo\";b:1;s:13:\"view_template\";b:1;s:7:\"view_tv\";b:1;s:16:\"view_unpublished\";b:1;s:9:\"view_user\";b:1;s:10:\"workspaces\";b:1;}}}s:3:\"web\";a:1:{i:0;a:3:{s:9:\"principal\";s:1:\"1\";s:9:\"authority\";s:1:\"0\";s:6:\"policy\";a:172:{s:5:\"about\";b:1;s:18:\"access_permissions\";b:1;s:7:\"actions\";b:1;s:15:\"change_password\";b:1;s:14:\"change_profile\";b:1;s:8:\"charsets\";b:1;s:9:\"class_map\";b:1;s:10:\"components\";b:1;s:13:\"content_types\";b:1;s:9:\"countries\";b:1;s:6:\"create\";b:1;s:7:\"credits\";b:1;s:15:\"customize_forms\";b:1;s:10:\"dashboards\";b:1;s:8:\"database\";b:1;s:17:\"database_truncate\";b:1;s:15:\"delete_category\";b:1;s:12:\"delete_chunk\";b:1;s:14:\"delete_context\";b:1;s:15:\"delete_document\";b:1;s:15:\"delete_eventlog\";b:1;s:13:\"delete_plugin\";b:1;s:18:\"delete_propertyset\";b:1;s:11:\"delete_role\";b:1;s:14:\"delete_snippet\";b:1;s:15:\"delete_template\";b:1;s:9:\"delete_tv\";b:1;s:11:\"delete_user\";b:1;s:15:\"directory_chmod\";b:1;s:16:\"directory_create\";b:1;s:14:\"directory_list\";b:1;s:16:\"directory_remove\";b:1;s:16:\"directory_update\";b:1;s:13:\"edit_category\";b:1;s:10:\"edit_chunk\";b:1;s:12:\"edit_context\";b:1;s:13:\"edit_document\";b:1;s:11:\"edit_locked\";b:1;s:11:\"edit_plugin\";b:1;s:16:\"edit_propertyset\";b:1;s:9:\"edit_role\";b:1;s:12:\"edit_snippet\";b:1;s:13:\"edit_template\";b:1;s:7:\"edit_tv\";b:1;s:9:\"edit_user\";b:1;s:12:\"element_tree\";b:1;s:11:\"empty_cache\";b:1;s:15:\"error_log_erase\";b:1;s:14:\"error_log_view\";b:1;s:13:\"export_static\";b:1;s:11:\"file_create\";b:1;s:9:\"file_list\";b:1;s:12:\"file_manager\";b:1;s:11:\"file_remove\";b:1;s:9:\"file_tree\";b:1;s:11:\"file_update\";b:1;s:11:\"file_upload\";b:1;s:9:\"file_view\";b:1;s:14:\"flush_sessions\";b:1;s:6:\"frames\";b:1;s:4:\"help\";b:1;s:4:\"home\";b:1;s:13:\"import_static\";b:1;s:9:\"languages\";b:1;s:8:\"lexicons\";b:1;s:4:\"list\";b:1;s:4:\"load\";b:1;s:6:\"logout\";b:1;s:4:\"logs\";b:1;s:5:\"menus\";b:1;s:12:\"menu_reports\";b:1;s:13:\"menu_security\";b:1;s:9:\"menu_site\";b:1;s:12:\"menu_support\";b:1;s:11:\"menu_system\";b:1;s:10:\"menu_tools\";b:1;s:9:\"menu_user\";b:1;s:8:\"messages\";b:1;s:10:\"namespaces\";b:1;s:12:\"new_category\";b:1;s:9:\"new_chunk\";b:1;s:11:\"new_context\";b:1;s:12:\"new_document\";b:1;s:20:\"new_document_in_root\";b:1;s:10:\"new_plugin\";b:1;s:15:\"new_propertyset\";b:1;s:8:\"new_role\";b:1;s:11:\"new_snippet\";b:1;s:19:\"new_static_resource\";b:1;s:11:\"new_symlink\";b:1;s:12:\"new_template\";b:1;s:6:\"new_tv\";b:1;s:8:\"new_user\";b:1;s:11:\"new_weblink\";b:1;s:8:\"packages\";b:1;s:13:\"policy_delete\";b:1;s:11:\"policy_edit\";b:1;s:10:\"policy_new\";b:1;s:11:\"policy_save\";b:1;s:22:\"policy_template_delete\";b:1;s:20:\"policy_template_edit\";b:1;s:19:\"policy_template_new\";b:1;s:20:\"policy_template_save\";b:1;s:20:\"policy_template_view\";b:1;s:11:\"policy_view\";b:1;s:13:\"property_sets\";b:1;s:9:\"providers\";b:1;s:16:\"publish_document\";b:1;s:13:\"purge_deleted\";b:1;s:6:\"remove\";b:1;s:12:\"remove_locks\";b:1;s:18:\"resource_duplicate\";b:1;s:20:\"resourcegroup_delete\";b:1;s:18:\"resourcegroup_edit\";b:1;s:17:\"resourcegroup_new\";b:1;s:27:\"resourcegroup_resource_edit\";b:1;s:27:\"resourcegroup_resource_list\";b:1;s:18:\"resourcegroup_save\";b:1;s:18:\"resourcegroup_view\";b:1;s:21:\"resource_quick_create\";b:1;s:21:\"resource_quick_update\";b:1;s:13:\"resource_tree\";b:1;s:4:\"save\";b:1;s:13:\"save_category\";b:1;s:10:\"save_chunk\";b:1;s:12:\"save_context\";b:1;s:13:\"save_document\";b:1;s:11:\"save_plugin\";b:1;s:16:\"save_propertyset\";b:1;s:9:\"save_role\";b:1;s:12:\"save_snippet\";b:1;s:13:\"save_template\";b:1;s:7:\"save_tv\";b:1;s:9:\"save_user\";b:1;s:6:\"search\";b:1;s:8:\"settings\";b:1;s:7:\"sources\";b:1;s:13:\"source_delete\";b:1;s:11:\"source_edit\";b:1;s:11:\"source_save\";b:1;s:11:\"source_view\";b:1;s:11:\"steal_locks\";b:1;s:21:\"tree_show_element_ids\";b:1;s:22:\"tree_show_resource_ids\";b:1;s:17:\"undelete_document\";b:1;s:25:\"unlock_element_properties\";b:1;s:18:\"unpublish_document\";b:1;s:16:\"usergroup_delete\";b:1;s:14:\"usergroup_edit\";b:1;s:13:\"usergroup_new\";b:1;s:14:\"usergroup_save\";b:1;s:19:\"usergroup_user_edit\";b:1;s:19:\"usergroup_user_list\";b:1;s:14:\"usergroup_view\";b:1;s:4:\"view\";b:1;s:13:\"view_category\";b:1;s:10:\"view_chunk\";b:1;s:12:\"view_context\";b:1;s:13:\"view_document\";b:1;s:12:\"view_element\";b:1;s:13:\"view_eventlog\";b:1;s:12:\"view_offline\";b:1;s:11:\"view_plugin\";b:1;s:16:\"view_propertyset\";b:1;s:9:\"view_role\";b:1;s:12:\"view_snippet\";b:1;s:12:\"view_sysinfo\";b:1;s:13:\"view_template\";b:1;s:7:\"view_tv\";b:1;s:16:\"view_unpublished\";b:1;s:9:\"view_user\";b:1;s:10:\"workspaces\";b:1;}}}}s:22:\"modAccessResourceGroup\";a:0:{}s:17:\"modAccessCategory\";a:0:{}s:28:\"sources.modAccessMediaSource\";a:0:{}}}modx.user.1.resourceGroups|a:1:{s:3:\"mgr\";a:0:{}}modx.user.1.userGroups|a:1:{i:0;i:1;}'),('6cfc1fe6890400de6e1e2320093cd1df',1331130712,'modx.user.contextTokens|a:0:{}modx.user.0.attributes|a:1:{s:3:\"web\";a:4:{s:16:\"modAccessContext\";a:1:{s:3:\"web\";a:1:{i:0;a:3:{s:9:\"principal\";i:0;s:9:\"authority\";s:1:\"0\";s:6:\"policy\";a:1:{s:4:\"load\";b:1;}}}}s:22:\"modAccessResourceGroup\";a:0:{}s:17:\"modAccessCategory\";a:0:{}s:28:\"sources.modAccessMediaSource\";a:0:{}}}modx.user.0.resourceGroups|a:1:{s:3:\"web\";a:0:{}}'),('b7d4e58cc061ca68b08fcbc4852f2688',1331130081,'modx.user.contextTokens|a:0:{}'),('21c0a9e30f86d023bbd812922dae3c3f',1331130176,'modx.user.contextTokens|a:0:{}'),('0c66b8bf160e481d8d0b38356b831806',1331130450,'modx.user.contextTokens|a:1:{s:3:\"mgr\";i:1;}modx.user.0.userGroups|a:0:{}modx.user.0.attributes|a:1:{s:3:\"mgr\";a:4:{s:16:\"modAccessContext\";a:1:{s:3:\"web\";a:1:{i:0;a:3:{s:9:\"principal\";i:0;s:9:\"authority\";s:1:\"0\";s:6:\"policy\";a:1:{s:4:\"load\";b:1;}}}}s:22:\"modAccessResourceGroup\";a:0:{}s:17:\"modAccessCategory\";a:0:{}s:28:\"sources.modAccessMediaSource\";a:0:{}}}modx.user.0.resourceGroups|a:1:{s:3:\"mgr\";a:0:{}}modx.mgr.user.token|s:52:\"modx4f576058f38bd1.70473967_14f577050d626c0.62315662\";modx.mgr.session.cookie.lifetime|i:0;modx.user.1.attributes|a:1:{s:3:\"mgr\";a:4:{s:16:\"modAccessContext\";a:2:{s:3:\"mgr\";a:1:{i:0;a:3:{s:9:\"principal\";s:1:\"1\";s:9:\"authority\";s:1:\"0\";s:6:\"policy\";a:172:{s:5:\"about\";b:1;s:18:\"access_permissions\";b:1;s:7:\"actions\";b:1;s:15:\"change_password\";b:1;s:14:\"change_profile\";b:1;s:8:\"charsets\";b:1;s:9:\"class_map\";b:1;s:10:\"components\";b:1;s:13:\"content_types\";b:1;s:9:\"countries\";b:1;s:6:\"create\";b:1;s:7:\"credits\";b:1;s:15:\"customize_forms\";b:1;s:10:\"dashboards\";b:1;s:8:\"database\";b:1;s:17:\"database_truncate\";b:1;s:15:\"delete_category\";b:1;s:12:\"delete_chunk\";b:1;s:14:\"delete_context\";b:1;s:15:\"delete_document\";b:1;s:15:\"delete_eventlog\";b:1;s:13:\"delete_plugin\";b:1;s:18:\"delete_propertyset\";b:1;s:11:\"delete_role\";b:1;s:14:\"delete_snippet\";b:1;s:15:\"delete_template\";b:1;s:9:\"delete_tv\";b:1;s:11:\"delete_user\";b:1;s:15:\"directory_chmod\";b:1;s:16:\"directory_create\";b:1;s:14:\"directory_list\";b:1;s:16:\"directory_remove\";b:1;s:16:\"directory_update\";b:1;s:13:\"edit_category\";b:1;s:10:\"edit_chunk\";b:1;s:12:\"edit_context\";b:1;s:13:\"edit_document\";b:1;s:11:\"edit_locked\";b:1;s:11:\"edit_plugin\";b:1;s:16:\"edit_propertyset\";b:1;s:9:\"edit_role\";b:1;s:12:\"edit_snippet\";b:1;s:13:\"edit_template\";b:1;s:7:\"edit_tv\";b:1;s:9:\"edit_user\";b:1;s:12:\"element_tree\";b:1;s:11:\"empty_cache\";b:1;s:15:\"error_log_erase\";b:1;s:14:\"error_log_view\";b:1;s:13:\"export_static\";b:1;s:11:\"file_create\";b:1;s:9:\"file_list\";b:1;s:12:\"file_manager\";b:1;s:11:\"file_remove\";b:1;s:9:\"file_tree\";b:1;s:11:\"file_update\";b:1;s:11:\"file_upload\";b:1;s:9:\"file_view\";b:1;s:14:\"flush_sessions\";b:1;s:6:\"frames\";b:1;s:4:\"help\";b:1;s:4:\"home\";b:1;s:13:\"import_static\";b:1;s:9:\"languages\";b:1;s:8:\"lexicons\";b:1;s:4:\"list\";b:1;s:4:\"load\";b:1;s:6:\"logout\";b:1;s:4:\"logs\";b:1;s:5:\"menus\";b:1;s:12:\"menu_reports\";b:1;s:13:\"menu_security\";b:1;s:9:\"menu_site\";b:1;s:12:\"menu_support\";b:1;s:11:\"menu_system\";b:1;s:10:\"menu_tools\";b:1;s:9:\"menu_user\";b:1;s:8:\"messages\";b:1;s:10:\"namespaces\";b:1;s:12:\"new_category\";b:1;s:9:\"new_chunk\";b:1;s:11:\"new_context\";b:1;s:12:\"new_document\";b:1;s:20:\"new_document_in_root\";b:1;s:10:\"new_plugin\";b:1;s:15:\"new_propertyset\";b:1;s:8:\"new_role\";b:1;s:11:\"new_snippet\";b:1;s:19:\"new_static_resource\";b:1;s:11:\"new_symlink\";b:1;s:12:\"new_template\";b:1;s:6:\"new_tv\";b:1;s:8:\"new_user\";b:1;s:11:\"new_weblink\";b:1;s:8:\"packages\";b:1;s:13:\"policy_delete\";b:1;s:11:\"policy_edit\";b:1;s:10:\"policy_new\";b:1;s:11:\"policy_save\";b:1;s:22:\"policy_template_delete\";b:1;s:20:\"policy_template_edit\";b:1;s:19:\"policy_template_new\";b:1;s:20:\"policy_template_save\";b:1;s:20:\"policy_template_view\";b:1;s:11:\"policy_view\";b:1;s:13:\"property_sets\";b:1;s:9:\"providers\";b:1;s:16:\"publish_document\";b:1;s:13:\"purge_deleted\";b:1;s:6:\"remove\";b:1;s:12:\"remove_locks\";b:1;s:18:\"resource_duplicate\";b:1;s:20:\"resourcegroup_delete\";b:1;s:18:\"resourcegroup_edit\";b:1;s:17:\"resourcegroup_new\";b:1;s:27:\"resourcegroup_resource_edit\";b:1;s:27:\"resourcegroup_resource_list\";b:1;s:18:\"resourcegroup_save\";b:1;s:18:\"resourcegroup_view\";b:1;s:21:\"resource_quick_create\";b:1;s:21:\"resource_quick_update\";b:1;s:13:\"resource_tree\";b:1;s:4:\"save\";b:1;s:13:\"save_category\";b:1;s:10:\"save_chunk\";b:1;s:12:\"save_context\";b:1;s:13:\"save_document\";b:1;s:11:\"save_plugin\";b:1;s:16:\"save_propertyset\";b:1;s:9:\"save_role\";b:1;s:12:\"save_snippet\";b:1;s:13:\"save_template\";b:1;s:7:\"save_tv\";b:1;s:9:\"save_user\";b:1;s:6:\"search\";b:1;s:8:\"settings\";b:1;s:7:\"sources\";b:1;s:13:\"source_delete\";b:1;s:11:\"source_edit\";b:1;s:11:\"source_save\";b:1;s:11:\"source_view\";b:1;s:11:\"steal_locks\";b:1;s:21:\"tree_show_element_ids\";b:1;s:22:\"tree_show_resource_ids\";b:1;s:17:\"undelete_document\";b:1;s:25:\"unlock_element_properties\";b:1;s:18:\"unpublish_document\";b:1;s:16:\"usergroup_delete\";b:1;s:14:\"usergroup_edit\";b:1;s:13:\"usergroup_new\";b:1;s:14:\"usergroup_save\";b:1;s:19:\"usergroup_user_edit\";b:1;s:19:\"usergroup_user_list\";b:1;s:14:\"usergroup_view\";b:1;s:4:\"view\";b:1;s:13:\"view_category\";b:1;s:10:\"view_chunk\";b:1;s:12:\"view_context\";b:1;s:13:\"view_document\";b:1;s:12:\"view_element\";b:1;s:13:\"view_eventlog\";b:1;s:12:\"view_offline\";b:1;s:11:\"view_plugin\";b:1;s:16:\"view_propertyset\";b:1;s:9:\"view_role\";b:1;s:12:\"view_snippet\";b:1;s:12:\"view_sysinfo\";b:1;s:13:\"view_template\";b:1;s:7:\"view_tv\";b:1;s:16:\"view_unpublished\";b:1;s:9:\"view_user\";b:1;s:10:\"workspaces\";b:1;}}}s:3:\"web\";a:1:{i:0;a:3:{s:9:\"principal\";s:1:\"1\";s:9:\"authority\";s:1:\"0\";s:6:\"policy\";a:172:{s:5:\"about\";b:1;s:18:\"access_permissions\";b:1;s:7:\"actions\";b:1;s:15:\"change_password\";b:1;s:14:\"change_profile\";b:1;s:8:\"charsets\";b:1;s:9:\"class_map\";b:1;s:10:\"components\";b:1;s:13:\"content_types\";b:1;s:9:\"countries\";b:1;s:6:\"create\";b:1;s:7:\"credits\";b:1;s:15:\"customize_forms\";b:1;s:10:\"dashboards\";b:1;s:8:\"database\";b:1;s:17:\"database_truncate\";b:1;s:15:\"delete_category\";b:1;s:12:\"delete_chunk\";b:1;s:14:\"delete_context\";b:1;s:15:\"delete_document\";b:1;s:15:\"delete_eventlog\";b:1;s:13:\"delete_plugin\";b:1;s:18:\"delete_propertyset\";b:1;s:11:\"delete_role\";b:1;s:14:\"delete_snippet\";b:1;s:15:\"delete_template\";b:1;s:9:\"delete_tv\";b:1;s:11:\"delete_user\";b:1;s:15:\"directory_chmod\";b:1;s:16:\"directory_create\";b:1;s:14:\"directory_list\";b:1;s:16:\"directory_remove\";b:1;s:16:\"directory_update\";b:1;s:13:\"edit_category\";b:1;s:10:\"edit_chunk\";b:1;s:12:\"edit_context\";b:1;s:13:\"edit_document\";b:1;s:11:\"edit_locked\";b:1;s:11:\"edit_plugin\";b:1;s:16:\"edit_propertyset\";b:1;s:9:\"edit_role\";b:1;s:12:\"edit_snippet\";b:1;s:13:\"edit_template\";b:1;s:7:\"edit_tv\";b:1;s:9:\"edit_user\";b:1;s:12:\"element_tree\";b:1;s:11:\"empty_cache\";b:1;s:15:\"error_log_erase\";b:1;s:14:\"error_log_view\";b:1;s:13:\"export_static\";b:1;s:11:\"file_create\";b:1;s:9:\"file_list\";b:1;s:12:\"file_manager\";b:1;s:11:\"file_remove\";b:1;s:9:\"file_tree\";b:1;s:11:\"file_update\";b:1;s:11:\"file_upload\";b:1;s:9:\"file_view\";b:1;s:14:\"flush_sessions\";b:1;s:6:\"frames\";b:1;s:4:\"help\";b:1;s:4:\"home\";b:1;s:13:\"import_static\";b:1;s:9:\"languages\";b:1;s:8:\"lexicons\";b:1;s:4:\"list\";b:1;s:4:\"load\";b:1;s:6:\"logout\";b:1;s:4:\"logs\";b:1;s:5:\"menus\";b:1;s:12:\"menu_reports\";b:1;s:13:\"menu_security\";b:1;s:9:\"menu_site\";b:1;s:12:\"menu_support\";b:1;s:11:\"menu_system\";b:1;s:10:\"menu_tools\";b:1;s:9:\"menu_user\";b:1;s:8:\"messages\";b:1;s:10:\"namespaces\";b:1;s:12:\"new_category\";b:1;s:9:\"new_chunk\";b:1;s:11:\"new_context\";b:1;s:12:\"new_document\";b:1;s:20:\"new_document_in_root\";b:1;s:10:\"new_plugin\";b:1;s:15:\"new_propertyset\";b:1;s:8:\"new_role\";b:1;s:11:\"new_snippet\";b:1;s:19:\"new_static_resource\";b:1;s:11:\"new_symlink\";b:1;s:12:\"new_template\";b:1;s:6:\"new_tv\";b:1;s:8:\"new_user\";b:1;s:11:\"new_weblink\";b:1;s:8:\"packages\";b:1;s:13:\"policy_delete\";b:1;s:11:\"policy_edit\";b:1;s:10:\"policy_new\";b:1;s:11:\"policy_save\";b:1;s:22:\"policy_template_delete\";b:1;s:20:\"policy_template_edit\";b:1;s:19:\"policy_template_new\";b:1;s:20:\"policy_template_save\";b:1;s:20:\"policy_template_view\";b:1;s:11:\"policy_view\";b:1;s:13:\"property_sets\";b:1;s:9:\"providers\";b:1;s:16:\"publish_document\";b:1;s:13:\"purge_deleted\";b:1;s:6:\"remove\";b:1;s:12:\"remove_locks\";b:1;s:18:\"resource_duplicate\";b:1;s:20:\"resourcegroup_delete\";b:1;s:18:\"resourcegroup_edit\";b:1;s:17:\"resourcegroup_new\";b:1;s:27:\"resourcegroup_resource_edit\";b:1;s:27:\"resourcegroup_resource_list\";b:1;s:18:\"resourcegroup_save\";b:1;s:18:\"resourcegroup_view\";b:1;s:21:\"resource_quick_create\";b:1;s:21:\"resource_quick_update\";b:1;s:13:\"resource_tree\";b:1;s:4:\"save\";b:1;s:13:\"save_category\";b:1;s:10:\"save_chunk\";b:1;s:12:\"save_context\";b:1;s:13:\"save_document\";b:1;s:11:\"save_plugin\";b:1;s:16:\"save_propertyset\";b:1;s:9:\"save_role\";b:1;s:12:\"save_snippet\";b:1;s:13:\"save_template\";b:1;s:7:\"save_tv\";b:1;s:9:\"save_user\";b:1;s:6:\"search\";b:1;s:8:\"settings\";b:1;s:7:\"sources\";b:1;s:13:\"source_delete\";b:1;s:11:\"source_edit\";b:1;s:11:\"source_save\";b:1;s:11:\"source_view\";b:1;s:11:\"steal_locks\";b:1;s:21:\"tree_show_element_ids\";b:1;s:22:\"tree_show_resource_ids\";b:1;s:17:\"undelete_document\";b:1;s:25:\"unlock_element_properties\";b:1;s:18:\"unpublish_document\";b:1;s:16:\"usergroup_delete\";b:1;s:14:\"usergroup_edit\";b:1;s:13:\"usergroup_new\";b:1;s:14:\"usergroup_save\";b:1;s:19:\"usergroup_user_edit\";b:1;s:19:\"usergroup_user_list\";b:1;s:14:\"usergroup_view\";b:1;s:4:\"view\";b:1;s:13:\"view_category\";b:1;s:10:\"view_chunk\";b:1;s:12:\"view_context\";b:1;s:13:\"view_document\";b:1;s:12:\"view_element\";b:1;s:13:\"view_eventlog\";b:1;s:12:\"view_offline\";b:1;s:11:\"view_plugin\";b:1;s:16:\"view_propertyset\";b:1;s:9:\"view_role\";b:1;s:12:\"view_snippet\";b:1;s:12:\"view_sysinfo\";b:1;s:13:\"view_template\";b:1;s:7:\"view_tv\";b:1;s:16:\"view_unpublished\";b:1;s:9:\"view_user\";b:1;s:10:\"workspaces\";b:1;}}}}s:22:\"modAccessResourceGroup\";a:0:{}s:17:\"modAccessCategory\";a:0:{}s:28:\"sources.modAccessMediaSource\";a:0:{}}}modx.user.1.resourceGroups|a:1:{s:3:\"mgr\";a:0:{}}modx.user.1.userGroups|a:1:{i:0;i:1;}'),('b7a9ca04a5d31f26bfa4b6b9292c8c39',1331130851,'modx.user.contextTokens|a:0:{}'),('25f3cadea457f3341ee420615d6e14a8',1331131245,'modx.user.contextTokens|a:0:{}'),('def78cc31a2d546be7e2139b9a632baa',1331132439,'modx.user.contextTokens|a:0:{}'),('270ad5f3d3075b5e003b5d0f4e4b230b',1331135098,'modx.user.contextTokens|a:0:{}'),('606982178f052dfedbec8fd58f2f3c0b',1331145561,'modx.user.contextTokens|a:0:{}'),('62e6c0e24bbec3e64dea318a9e08fc06',1331212594,'modx.user.contextTokens|a:0:{}'),('e79ee532e7ca126f14e3a33e3d9bba2f',1331248298,'modx.user.contextTokens|a:0:{}modx.user.0.attributes|a:1:{s:3:\"web\";a:4:{s:16:\"modAccessContext\";a:1:{s:3:\"web\";a:1:{i:0;a:3:{s:9:\"principal\";i:0;s:9:\"authority\";s:1:\"0\";s:6:\"policy\";a:1:{s:4:\"load\";b:1;}}}}s:22:\"modAccessResourceGroup\";a:0:{}s:17:\"modAccessCategory\";a:0:{}s:28:\"sources.modAccessMediaSource\";a:0:{}}}modx.user.0.resourceGroups|a:1:{s:3:\"web\";a:0:{}}'),('49bd055f9e58bcd5e505e8f955040b64',1331242005,'modx.user.contextTokens|a:0:{}'),('a06266164121c1e842bc3a7707390a89',1331242059,'modx.user.contextTokens|a:0:{}'),('3eb0afb0dc7bed9d47fbf8862feeb7a0',1331433299,'modx.user.contextTokens|a:0:{}modx.user.0.attributes|a:1:{s:3:\"web\";a:4:{s:16:\"modAccessContext\";a:1:{s:3:\"web\";a:1:{i:0;a:3:{s:9:\"principal\";i:0;s:9:\"authority\";s:1:\"0\";s:6:\"policy\";a:1:{s:4:\"load\";b:1;}}}}s:22:\"modAccessResourceGroup\";a:0:{}s:17:\"modAccessCategory\";a:0:{}s:28:\"sources.modAccessMediaSource\";a:0:{}}}modx.user.0.resourceGroups|a:1:{s:3:\"web\";a:0:{}}'),('6f738230214262667a7498b6929f1cbb',1331242967,'modx.user.contextTokens|a:0:{}'),('16bb838db718df78cdba72f729d1012f',1331243093,'modx.user.contextTokens|a:0:{}'),('e314ef523d38b055994b2624711dbeae',1331248202,'modx.user.contextTokens|a:1:{s:3:\"mgr\";i:1;}modx.user.0.userGroups|a:0:{}modx.user.0.attributes|a:1:{s:3:\"mgr\";a:4:{s:16:\"modAccessContext\";a:1:{s:3:\"web\";a:1:{i:0;a:3:{s:9:\"principal\";i:0;s:9:\"authority\";s:1:\"0\";s:6:\"policy\";a:1:{s:4:\"load\";b:1;}}}}s:22:\"modAccessResourceGroup\";a:0:{}s:17:\"modAccessCategory\";a:0:{}s:28:\"sources.modAccessMediaSource\";a:0:{}}}modx.user.0.resourceGroups|a:1:{s:3:\"mgr\";a:0:{}}modx.mgr.user.token|s:52:\"modx4f576058f38bd1.70473967_14f593c3b278061.93136998\";modx.mgr.session.cookie.lifetime|i:0;modx.user.1.attributes|a:1:{s:3:\"mgr\";a:4:{s:16:\"modAccessContext\";a:2:{s:3:\"mgr\";a:1:{i:0;a:3:{s:9:\"principal\";s:1:\"1\";s:9:\"authority\";s:1:\"0\";s:6:\"policy\";a:172:{s:5:\"about\";b:1;s:18:\"access_permissions\";b:1;s:7:\"actions\";b:1;s:15:\"change_password\";b:1;s:14:\"change_profile\";b:1;s:8:\"charsets\";b:1;s:9:\"class_map\";b:1;s:10:\"components\";b:1;s:13:\"content_types\";b:1;s:9:\"countries\";b:1;s:6:\"create\";b:1;s:7:\"credits\";b:1;s:15:\"customize_forms\";b:1;s:10:\"dashboards\";b:1;s:8:\"database\";b:1;s:17:\"database_truncate\";b:1;s:15:\"delete_category\";b:1;s:12:\"delete_chunk\";b:1;s:14:\"delete_context\";b:1;s:15:\"delete_document\";b:1;s:15:\"delete_eventlog\";b:1;s:13:\"delete_plugin\";b:1;s:18:\"delete_propertyset\";b:1;s:11:\"delete_role\";b:1;s:14:\"delete_snippet\";b:1;s:15:\"delete_template\";b:1;s:9:\"delete_tv\";b:1;s:11:\"delete_user\";b:1;s:15:\"directory_chmod\";b:1;s:16:\"directory_create\";b:1;s:14:\"directory_list\";b:1;s:16:\"directory_remove\";b:1;s:16:\"directory_update\";b:1;s:13:\"edit_category\";b:1;s:10:\"edit_chunk\";b:1;s:12:\"edit_context\";b:1;s:13:\"edit_document\";b:1;s:11:\"edit_locked\";b:1;s:11:\"edit_plugin\";b:1;s:16:\"edit_propertyset\";b:1;s:9:\"edit_role\";b:1;s:12:\"edit_snippet\";b:1;s:13:\"edit_template\";b:1;s:7:\"edit_tv\";b:1;s:9:\"edit_user\";b:1;s:12:\"element_tree\";b:1;s:11:\"empty_cache\";b:1;s:15:\"error_log_erase\";b:1;s:14:\"error_log_view\";b:1;s:13:\"export_static\";b:1;s:11:\"file_create\";b:1;s:9:\"file_list\";b:1;s:12:\"file_manager\";b:1;s:11:\"file_remove\";b:1;s:9:\"file_tree\";b:1;s:11:\"file_update\";b:1;s:11:\"file_upload\";b:1;s:9:\"file_view\";b:1;s:14:\"flush_sessions\";b:1;s:6:\"frames\";b:1;s:4:\"help\";b:1;s:4:\"home\";b:1;s:13:\"import_static\";b:1;s:9:\"languages\";b:1;s:8:\"lexicons\";b:1;s:4:\"list\";b:1;s:4:\"load\";b:1;s:6:\"logout\";b:1;s:4:\"logs\";b:1;s:5:\"menus\";b:1;s:12:\"menu_reports\";b:1;s:13:\"menu_security\";b:1;s:9:\"menu_site\";b:1;s:12:\"menu_support\";b:1;s:11:\"menu_system\";b:1;s:10:\"menu_tools\";b:1;s:9:\"menu_user\";b:1;s:8:\"messages\";b:1;s:10:\"namespaces\";b:1;s:12:\"new_category\";b:1;s:9:\"new_chunk\";b:1;s:11:\"new_context\";b:1;s:12:\"new_document\";b:1;s:20:\"new_document_in_root\";b:1;s:10:\"new_plugin\";b:1;s:15:\"new_propertyset\";b:1;s:8:\"new_role\";b:1;s:11:\"new_snippet\";b:1;s:19:\"new_static_resource\";b:1;s:11:\"new_symlink\";b:1;s:12:\"new_template\";b:1;s:6:\"new_tv\";b:1;s:8:\"new_user\";b:1;s:11:\"new_weblink\";b:1;s:8:\"packages\";b:1;s:13:\"policy_delete\";b:1;s:11:\"policy_edit\";b:1;s:10:\"policy_new\";b:1;s:11:\"policy_save\";b:1;s:22:\"policy_template_delete\";b:1;s:20:\"policy_template_edit\";b:1;s:19:\"policy_template_new\";b:1;s:20:\"policy_template_save\";b:1;s:20:\"policy_template_view\";b:1;s:11:\"policy_view\";b:1;s:13:\"property_sets\";b:1;s:9:\"providers\";b:1;s:16:\"publish_document\";b:1;s:13:\"purge_deleted\";b:1;s:6:\"remove\";b:1;s:12:\"remove_locks\";b:1;s:18:\"resource_duplicate\";b:1;s:20:\"resourcegroup_delete\";b:1;s:18:\"resourcegroup_edit\";b:1;s:17:\"resourcegroup_new\";b:1;s:27:\"resourcegroup_resource_edit\";b:1;s:27:\"resourcegroup_resource_list\";b:1;s:18:\"resourcegroup_save\";b:1;s:18:\"resourcegroup_view\";b:1;s:21:\"resource_quick_create\";b:1;s:21:\"resource_quick_update\";b:1;s:13:\"resource_tree\";b:1;s:4:\"save\";b:1;s:13:\"save_category\";b:1;s:10:\"save_chunk\";b:1;s:12:\"save_context\";b:1;s:13:\"save_document\";b:1;s:11:\"save_plugin\";b:1;s:16:\"save_propertyset\";b:1;s:9:\"save_role\";b:1;s:12:\"save_snippet\";b:1;s:13:\"save_template\";b:1;s:7:\"save_tv\";b:1;s:9:\"save_user\";b:1;s:6:\"search\";b:1;s:8:\"settings\";b:1;s:7:\"sources\";b:1;s:13:\"source_delete\";b:1;s:11:\"source_edit\";b:1;s:11:\"source_save\";b:1;s:11:\"source_view\";b:1;s:11:\"steal_locks\";b:1;s:21:\"tree_show_element_ids\";b:1;s:22:\"tree_show_resource_ids\";b:1;s:17:\"undelete_document\";b:1;s:25:\"unlock_element_properties\";b:1;s:18:\"unpublish_document\";b:1;s:16:\"usergroup_delete\";b:1;s:14:\"usergroup_edit\";b:1;s:13:\"usergroup_new\";b:1;s:14:\"usergroup_save\";b:1;s:19:\"usergroup_user_edit\";b:1;s:19:\"usergroup_user_list\";b:1;s:14:\"usergroup_view\";b:1;s:4:\"view\";b:1;s:13:\"view_category\";b:1;s:10:\"view_chunk\";b:1;s:12:\"view_context\";b:1;s:13:\"view_document\";b:1;s:12:\"view_element\";b:1;s:13:\"view_eventlog\";b:1;s:12:\"view_offline\";b:1;s:11:\"view_plugin\";b:1;s:16:\"view_propertyset\";b:1;s:9:\"view_role\";b:1;s:12:\"view_snippet\";b:1;s:12:\"view_sysinfo\";b:1;s:13:\"view_template\";b:1;s:7:\"view_tv\";b:1;s:16:\"view_unpublished\";b:1;s:9:\"view_user\";b:1;s:10:\"workspaces\";b:1;}}}s:3:\"web\";a:1:{i:0;a:3:{s:9:\"principal\";s:1:\"1\";s:9:\"authority\";s:1:\"0\";s:6:\"policy\";a:172:{s:5:\"about\";b:1;s:18:\"access_permissions\";b:1;s:7:\"actions\";b:1;s:15:\"change_password\";b:1;s:14:\"change_profile\";b:1;s:8:\"charsets\";b:1;s:9:\"class_map\";b:1;s:10:\"components\";b:1;s:13:\"content_types\";b:1;s:9:\"countries\";b:1;s:6:\"create\";b:1;s:7:\"credits\";b:1;s:15:\"customize_forms\";b:1;s:10:\"dashboards\";b:1;s:8:\"database\";b:1;s:17:\"database_truncate\";b:1;s:15:\"delete_category\";b:1;s:12:\"delete_chunk\";b:1;s:14:\"delete_context\";b:1;s:15:\"delete_document\";b:1;s:15:\"delete_eventlog\";b:1;s:13:\"delete_plugin\";b:1;s:18:\"delete_propertyset\";b:1;s:11:\"delete_role\";b:1;s:14:\"delete_snippet\";b:1;s:15:\"delete_template\";b:1;s:9:\"delete_tv\";b:1;s:11:\"delete_user\";b:1;s:15:\"directory_chmod\";b:1;s:16:\"directory_create\";b:1;s:14:\"directory_list\";b:1;s:16:\"directory_remove\";b:1;s:16:\"directory_update\";b:1;s:13:\"edit_category\";b:1;s:10:\"edit_chunk\";b:1;s:12:\"edit_context\";b:1;s:13:\"edit_document\";b:1;s:11:\"edit_locked\";b:1;s:11:\"edit_plugin\";b:1;s:16:\"edit_propertyset\";b:1;s:9:\"edit_role\";b:1;s:12:\"edit_snippet\";b:1;s:13:\"edit_template\";b:1;s:7:\"edit_tv\";b:1;s:9:\"edit_user\";b:1;s:12:\"element_tree\";b:1;s:11:\"empty_cache\";b:1;s:15:\"error_log_erase\";b:1;s:14:\"error_log_view\";b:1;s:13:\"export_static\";b:1;s:11:\"file_create\";b:1;s:9:\"file_list\";b:1;s:12:\"file_manager\";b:1;s:11:\"file_remove\";b:1;s:9:\"file_tree\";b:1;s:11:\"file_update\";b:1;s:11:\"file_upload\";b:1;s:9:\"file_view\";b:1;s:14:\"flush_sessions\";b:1;s:6:\"frames\";b:1;s:4:\"help\";b:1;s:4:\"home\";b:1;s:13:\"import_static\";b:1;s:9:\"languages\";b:1;s:8:\"lexicons\";b:1;s:4:\"list\";b:1;s:4:\"load\";b:1;s:6:\"logout\";b:1;s:4:\"logs\";b:1;s:5:\"menus\";b:1;s:12:\"menu_reports\";b:1;s:13:\"menu_security\";b:1;s:9:\"menu_site\";b:1;s:12:\"menu_support\";b:1;s:11:\"menu_system\";b:1;s:10:\"menu_tools\";b:1;s:9:\"menu_user\";b:1;s:8:\"messages\";b:1;s:10:\"namespaces\";b:1;s:12:\"new_category\";b:1;s:9:\"new_chunk\";b:1;s:11:\"new_context\";b:1;s:12:\"new_document\";b:1;s:20:\"new_document_in_root\";b:1;s:10:\"new_plugin\";b:1;s:15:\"new_propertyset\";b:1;s:8:\"new_role\";b:1;s:11:\"new_snippet\";b:1;s:19:\"new_static_resource\";b:1;s:11:\"new_symlink\";b:1;s:12:\"new_template\";b:1;s:6:\"new_tv\";b:1;s:8:\"new_user\";b:1;s:11:\"new_weblink\";b:1;s:8:\"packages\";b:1;s:13:\"policy_delete\";b:1;s:11:\"policy_edit\";b:1;s:10:\"policy_new\";b:1;s:11:\"policy_save\";b:1;s:22:\"policy_template_delete\";b:1;s:20:\"policy_template_edit\";b:1;s:19:\"policy_template_new\";b:1;s:20:\"policy_template_save\";b:1;s:20:\"policy_template_view\";b:1;s:11:\"policy_view\";b:1;s:13:\"property_sets\";b:1;s:9:\"providers\";b:1;s:16:\"publish_document\";b:1;s:13:\"purge_deleted\";b:1;s:6:\"remove\";b:1;s:12:\"remove_locks\";b:1;s:18:\"resource_duplicate\";b:1;s:20:\"resourcegroup_delete\";b:1;s:18:\"resourcegroup_edit\";b:1;s:17:\"resourcegroup_new\";b:1;s:27:\"resourcegroup_resource_edit\";b:1;s:27:\"resourcegroup_resource_list\";b:1;s:18:\"resourcegroup_save\";b:1;s:18:\"resourcegroup_view\";b:1;s:21:\"resource_quick_create\";b:1;s:21:\"resource_quick_update\";b:1;s:13:\"resource_tree\";b:1;s:4:\"save\";b:1;s:13:\"save_category\";b:1;s:10:\"save_chunk\";b:1;s:12:\"save_context\";b:1;s:13:\"save_document\";b:1;s:11:\"save_plugin\";b:1;s:16:\"save_propertyset\";b:1;s:9:\"save_role\";b:1;s:12:\"save_snippet\";b:1;s:13:\"save_template\";b:1;s:7:\"save_tv\";b:1;s:9:\"save_user\";b:1;s:6:\"search\";b:1;s:8:\"settings\";b:1;s:7:\"sources\";b:1;s:13:\"source_delete\";b:1;s:11:\"source_edit\";b:1;s:11:\"source_save\";b:1;s:11:\"source_view\";b:1;s:11:\"steal_locks\";b:1;s:21:\"tree_show_element_ids\";b:1;s:22:\"tree_show_resource_ids\";b:1;s:17:\"undelete_document\";b:1;s:25:\"unlock_element_properties\";b:1;s:18:\"unpublish_document\";b:1;s:16:\"usergroup_delete\";b:1;s:14:\"usergroup_edit\";b:1;s:13:\"usergroup_new\";b:1;s:14:\"usergroup_save\";b:1;s:19:\"usergroup_user_edit\";b:1;s:19:\"usergroup_user_list\";b:1;s:14:\"usergroup_view\";b:1;s:4:\"view\";b:1;s:13:\"view_category\";b:1;s:10:\"view_chunk\";b:1;s:12:\"view_context\";b:1;s:13:\"view_document\";b:1;s:12:\"view_element\";b:1;s:13:\"view_eventlog\";b:1;s:12:\"view_offline\";b:1;s:11:\"view_plugin\";b:1;s:16:\"view_propertyset\";b:1;s:9:\"view_role\";b:1;s:12:\"view_snippet\";b:1;s:12:\"view_sysinfo\";b:1;s:13:\"view_template\";b:1;s:7:\"view_tv\";b:1;s:16:\"view_unpublished\";b:1;s:9:\"view_user\";b:1;s:10:\"workspaces\";b:1;}}}}s:22:\"modAccessResourceGroup\";a:0:{}s:17:\"modAccessCategory\";a:0:{}s:28:\"sources.modAccessMediaSource\";a:0:{}}}modx.user.1.resourceGroups|a:1:{s:3:\"mgr\";a:0:{}}modx.user.1.userGroups|a:1:{i:0;i:1;}newResourceTokens|a:1:{i:0;s:23:\"4f593c49f21e25.42679658\";}'),('e2daf4e6697fbffd02d32d775c519c7c',1331249477,'modx.user.contextTokens|a:0:{}'),('ed57b0a0cf1b02b1d3d3266ff8eba2fb',1331250246,'modx.user.contextTokens|a:0:{}'),('14fba83c530caf8349571b8e6c41c036',1331313942,'modx.user.contextTokens|a:0:{}'),('2a060ba5f396db898dc23bafa50acccf',1331321394,'modx.user.contextTokens|a:0:{}'),('e4920065548de9bcbee12a7736512d9d',1331321617,'modx.user.contextTokens|a:0:{}'),('594fa62d8973b536029675a000a41bc4',1331328846,'modx.user.contextTokens|a:1:{s:3:\"mgr\";i:1;}modx.user.0.userGroups|a:0:{}modx.user.0.attributes|a:1:{s:3:\"mgr\";a:4:{s:16:\"modAccessContext\";a:1:{s:3:\"web\";a:1:{i:0;a:3:{s:9:\"principal\";i:0;s:9:\"authority\";s:1:\"0\";s:6:\"policy\";a:1:{s:4:\"load\";b:1;}}}}s:22:\"modAccessResourceGroup\";a:0:{}s:17:\"modAccessCategory\";a:0:{}s:28:\"sources.modAccessMediaSource\";a:0:{}}}modx.user.0.resourceGroups|a:1:{s:3:\"mgr\";a:0:{}}login_failed|i:1;modx.mgr.user.token|s:52:\"modx4f576058f38bd1.70473967_14f5a6772b64da7.56129845\";modx.mgr.session.cookie.lifetime|i:0;modx.user.1.attributes|a:2:{s:3:\"mgr\";a:4:{s:16:\"modAccessContext\";a:2:{s:3:\"mgr\";a:1:{i:0;a:3:{s:9:\"principal\";s:1:\"1\";s:9:\"authority\";s:1:\"0\";s:6:\"policy\";a:172:{s:5:\"about\";b:1;s:18:\"access_permissions\";b:1;s:7:\"actions\";b:1;s:15:\"change_password\";b:1;s:14:\"change_profile\";b:1;s:8:\"charsets\";b:1;s:9:\"class_map\";b:1;s:10:\"components\";b:1;s:13:\"content_types\";b:1;s:9:\"countries\";b:1;s:6:\"create\";b:1;s:7:\"credits\";b:1;s:15:\"customize_forms\";b:1;s:10:\"dashboards\";b:1;s:8:\"database\";b:1;s:17:\"database_truncate\";b:1;s:15:\"delete_category\";b:1;s:12:\"delete_chunk\";b:1;s:14:\"delete_context\";b:1;s:15:\"delete_document\";b:1;s:15:\"delete_eventlog\";b:1;s:13:\"delete_plugin\";b:1;s:18:\"delete_propertyset\";b:1;s:11:\"delete_role\";b:1;s:14:\"delete_snippet\";b:1;s:15:\"delete_template\";b:1;s:9:\"delete_tv\";b:1;s:11:\"delete_user\";b:1;s:15:\"directory_chmod\";b:1;s:16:\"directory_create\";b:1;s:14:\"directory_list\";b:1;s:16:\"directory_remove\";b:1;s:16:\"directory_update\";b:1;s:13:\"edit_category\";b:1;s:10:\"edit_chunk\";b:1;s:12:\"edit_context\";b:1;s:13:\"edit_document\";b:1;s:11:\"edit_locked\";b:1;s:11:\"edit_plugin\";b:1;s:16:\"edit_propertyset\";b:1;s:9:\"edit_role\";b:1;s:12:\"edit_snippet\";b:1;s:13:\"edit_template\";b:1;s:7:\"edit_tv\";b:1;s:9:\"edit_user\";b:1;s:12:\"element_tree\";b:1;s:11:\"empty_cache\";b:1;s:15:\"error_log_erase\";b:1;s:14:\"error_log_view\";b:1;s:13:\"export_static\";b:1;s:11:\"file_create\";b:1;s:9:\"file_list\";b:1;s:12:\"file_manager\";b:1;s:11:\"file_remove\";b:1;s:9:\"file_tree\";b:1;s:11:\"file_update\";b:1;s:11:\"file_upload\";b:1;s:9:\"file_view\";b:1;s:14:\"flush_sessions\";b:1;s:6:\"frames\";b:1;s:4:\"help\";b:1;s:4:\"home\";b:1;s:13:\"import_static\";b:1;s:9:\"languages\";b:1;s:8:\"lexicons\";b:1;s:4:\"list\";b:1;s:4:\"load\";b:1;s:6:\"logout\";b:1;s:4:\"logs\";b:1;s:5:\"menus\";b:1;s:12:\"menu_reports\";b:1;s:13:\"menu_security\";b:1;s:9:\"menu_site\";b:1;s:12:\"menu_support\";b:1;s:11:\"menu_system\";b:1;s:10:\"menu_tools\";b:1;s:9:\"menu_user\";b:1;s:8:\"messages\";b:1;s:10:\"namespaces\";b:1;s:12:\"new_category\";b:1;s:9:\"new_chunk\";b:1;s:11:\"new_context\";b:1;s:12:\"new_document\";b:1;s:20:\"new_document_in_root\";b:1;s:10:\"new_plugin\";b:1;s:15:\"new_propertyset\";b:1;s:8:\"new_role\";b:1;s:11:\"new_snippet\";b:1;s:19:\"new_static_resource\";b:1;s:11:\"new_symlink\";b:1;s:12:\"new_template\";b:1;s:6:\"new_tv\";b:1;s:8:\"new_user\";b:1;s:11:\"new_weblink\";b:1;s:8:\"packages\";b:1;s:13:\"policy_delete\";b:1;s:11:\"policy_edit\";b:1;s:10:\"policy_new\";b:1;s:11:\"policy_save\";b:1;s:22:\"policy_template_delete\";b:1;s:20:\"policy_template_edit\";b:1;s:19:\"policy_template_new\";b:1;s:20:\"policy_template_save\";b:1;s:20:\"policy_template_view\";b:1;s:11:\"policy_view\";b:1;s:13:\"property_sets\";b:1;s:9:\"providers\";b:1;s:16:\"publish_document\";b:1;s:13:\"purge_deleted\";b:1;s:6:\"remove\";b:1;s:12:\"remove_locks\";b:1;s:18:\"resource_duplicate\";b:1;s:20:\"resourcegroup_delete\";b:1;s:18:\"resourcegroup_edit\";b:1;s:17:\"resourcegroup_new\";b:1;s:27:\"resourcegroup_resource_edit\";b:1;s:27:\"resourcegroup_resource_list\";b:1;s:18:\"resourcegroup_save\";b:1;s:18:\"resourcegroup_view\";b:1;s:21:\"resource_quick_create\";b:1;s:21:\"resource_quick_update\";b:1;s:13:\"resource_tree\";b:1;s:4:\"save\";b:1;s:13:\"save_category\";b:1;s:10:\"save_chunk\";b:1;s:12:\"save_context\";b:1;s:13:\"save_document\";b:1;s:11:\"save_plugin\";b:1;s:16:\"save_propertyset\";b:1;s:9:\"save_role\";b:1;s:12:\"save_snippet\";b:1;s:13:\"save_template\";b:1;s:7:\"save_tv\";b:1;s:9:\"save_user\";b:1;s:6:\"search\";b:1;s:8:\"settings\";b:1;s:7:\"sources\";b:1;s:13:\"source_delete\";b:1;s:11:\"source_edit\";b:1;s:11:\"source_save\";b:1;s:11:\"source_view\";b:1;s:11:\"steal_locks\";b:1;s:21:\"tree_show_element_ids\";b:1;s:22:\"tree_show_resource_ids\";b:1;s:17:\"undelete_document\";b:1;s:25:\"unlock_element_properties\";b:1;s:18:\"unpublish_document\";b:1;s:16:\"usergroup_delete\";b:1;s:14:\"usergroup_edit\";b:1;s:13:\"usergroup_new\";b:1;s:14:\"usergroup_save\";b:1;s:19:\"usergroup_user_edit\";b:1;s:19:\"usergroup_user_list\";b:1;s:14:\"usergroup_view\";b:1;s:4:\"view\";b:1;s:13:\"view_category\";b:1;s:10:\"view_chunk\";b:1;s:12:\"view_context\";b:1;s:13:\"view_document\";b:1;s:12:\"view_element\";b:1;s:13:\"view_eventlog\";b:1;s:12:\"view_offline\";b:1;s:11:\"view_plugin\";b:1;s:16:\"view_propertyset\";b:1;s:9:\"view_role\";b:1;s:12:\"view_snippet\";b:1;s:12:\"view_sysinfo\";b:1;s:13:\"view_template\";b:1;s:7:\"view_tv\";b:1;s:16:\"view_unpublished\";b:1;s:9:\"view_user\";b:1;s:10:\"workspaces\";b:1;}}}s:3:\"web\";a:1:{i:0;a:3:{s:9:\"principal\";s:1:\"1\";s:9:\"authority\";s:1:\"0\";s:6:\"policy\";a:172:{s:5:\"about\";b:1;s:18:\"access_permissions\";b:1;s:7:\"actions\";b:1;s:15:\"change_password\";b:1;s:14:\"change_profile\";b:1;s:8:\"charsets\";b:1;s:9:\"class_map\";b:1;s:10:\"components\";b:1;s:13:\"content_types\";b:1;s:9:\"countries\";b:1;s:6:\"create\";b:1;s:7:\"credits\";b:1;s:15:\"customize_forms\";b:1;s:10:\"dashboards\";b:1;s:8:\"database\";b:1;s:17:\"database_truncate\";b:1;s:15:\"delete_category\";b:1;s:12:\"delete_chunk\";b:1;s:14:\"delete_context\";b:1;s:15:\"delete_document\";b:1;s:15:\"delete_eventlog\";b:1;s:13:\"delete_plugin\";b:1;s:18:\"delete_propertyset\";b:1;s:11:\"delete_role\";b:1;s:14:\"delete_snippet\";b:1;s:15:\"delete_template\";b:1;s:9:\"delete_tv\";b:1;s:11:\"delete_user\";b:1;s:15:\"directory_chmod\";b:1;s:16:\"directory_create\";b:1;s:14:\"directory_list\";b:1;s:16:\"directory_remove\";b:1;s:16:\"directory_update\";b:1;s:13:\"edit_category\";b:1;s:10:\"edit_chunk\";b:1;s:12:\"edit_context\";b:1;s:13:\"edit_document\";b:1;s:11:\"edit_locked\";b:1;s:11:\"edit_plugin\";b:1;s:16:\"edit_propertyset\";b:1;s:9:\"edit_role\";b:1;s:12:\"edit_snippet\";b:1;s:13:\"edit_template\";b:1;s:7:\"edit_tv\";b:1;s:9:\"edit_user\";b:1;s:12:\"element_tree\";b:1;s:11:\"empty_cache\";b:1;s:15:\"error_log_erase\";b:1;s:14:\"error_log_view\";b:1;s:13:\"export_static\";b:1;s:11:\"file_create\";b:1;s:9:\"file_list\";b:1;s:12:\"file_manager\";b:1;s:11:\"file_remove\";b:1;s:9:\"file_tree\";b:1;s:11:\"file_update\";b:1;s:11:\"file_upload\";b:1;s:9:\"file_view\";b:1;s:14:\"flush_sessions\";b:1;s:6:\"frames\";b:1;s:4:\"help\";b:1;s:4:\"home\";b:1;s:13:\"import_static\";b:1;s:9:\"languages\";b:1;s:8:\"lexicons\";b:1;s:4:\"list\";b:1;s:4:\"load\";b:1;s:6:\"logout\";b:1;s:4:\"logs\";b:1;s:5:\"menus\";b:1;s:12:\"menu_reports\";b:1;s:13:\"menu_security\";b:1;s:9:\"menu_site\";b:1;s:12:\"menu_support\";b:1;s:11:\"menu_system\";b:1;s:10:\"menu_tools\";b:1;s:9:\"menu_user\";b:1;s:8:\"messages\";b:1;s:10:\"namespaces\";b:1;s:12:\"new_category\";b:1;s:9:\"new_chunk\";b:1;s:11:\"new_context\";b:1;s:12:\"new_document\";b:1;s:20:\"new_document_in_root\";b:1;s:10:\"new_plugin\";b:1;s:15:\"new_propertyset\";b:1;s:8:\"new_role\";b:1;s:11:\"new_snippet\";b:1;s:19:\"new_static_resource\";b:1;s:11:\"new_symlink\";b:1;s:12:\"new_template\";b:1;s:6:\"new_tv\";b:1;s:8:\"new_user\";b:1;s:11:\"new_weblink\";b:1;s:8:\"packages\";b:1;s:13:\"policy_delete\";b:1;s:11:\"policy_edit\";b:1;s:10:\"policy_new\";b:1;s:11:\"policy_save\";b:1;s:22:\"policy_template_delete\";b:1;s:20:\"policy_template_edit\";b:1;s:19:\"policy_template_new\";b:1;s:20:\"policy_template_save\";b:1;s:20:\"policy_template_view\";b:1;s:11:\"policy_view\";b:1;s:13:\"property_sets\";b:1;s:9:\"providers\";b:1;s:16:\"publish_document\";b:1;s:13:\"purge_deleted\";b:1;s:6:\"remove\";b:1;s:12:\"remove_locks\";b:1;s:18:\"resource_duplicate\";b:1;s:20:\"resourcegroup_delete\";b:1;s:18:\"resourcegroup_edit\";b:1;s:17:\"resourcegroup_new\";b:1;s:27:\"resourcegroup_resource_edit\";b:1;s:27:\"resourcegroup_resource_list\";b:1;s:18:\"resourcegroup_save\";b:1;s:18:\"resourcegroup_view\";b:1;s:21:\"resource_quick_create\";b:1;s:21:\"resource_quick_update\";b:1;s:13:\"resource_tree\";b:1;s:4:\"save\";b:1;s:13:\"save_category\";b:1;s:10:\"save_chunk\";b:1;s:12:\"save_context\";b:1;s:13:\"save_document\";b:1;s:11:\"save_plugin\";b:1;s:16:\"save_propertyset\";b:1;s:9:\"save_role\";b:1;s:12:\"save_snippet\";b:1;s:13:\"save_template\";b:1;s:7:\"save_tv\";b:1;s:9:\"save_user\";b:1;s:6:\"search\";b:1;s:8:\"settings\";b:1;s:7:\"sources\";b:1;s:13:\"source_delete\";b:1;s:11:\"source_edit\";b:1;s:11:\"source_save\";b:1;s:11:\"source_view\";b:1;s:11:\"steal_locks\";b:1;s:21:\"tree_show_element_ids\";b:1;s:22:\"tree_show_resource_ids\";b:1;s:17:\"undelete_document\";b:1;s:25:\"unlock_element_properties\";b:1;s:18:\"unpublish_document\";b:1;s:16:\"usergroup_delete\";b:1;s:14:\"usergroup_edit\";b:1;s:13:\"usergroup_new\";b:1;s:14:\"usergroup_save\";b:1;s:19:\"usergroup_user_edit\";b:1;s:19:\"usergroup_user_list\";b:1;s:14:\"usergroup_view\";b:1;s:4:\"view\";b:1;s:13:\"view_category\";b:1;s:10:\"view_chunk\";b:1;s:12:\"view_context\";b:1;s:13:\"view_document\";b:1;s:12:\"view_element\";b:1;s:13:\"view_eventlog\";b:1;s:12:\"view_offline\";b:1;s:11:\"view_plugin\";b:1;s:16:\"view_propertyset\";b:1;s:9:\"view_role\";b:1;s:12:\"view_snippet\";b:1;s:12:\"view_sysinfo\";b:1;s:13:\"view_template\";b:1;s:7:\"view_tv\";b:1;s:16:\"view_unpublished\";b:1;s:9:\"view_user\";b:1;s:10:\"workspaces\";b:1;}}}}s:22:\"modAccessResourceGroup\";a:0:{}s:17:\"modAccessCategory\";a:0:{}s:28:\"sources.modAccessMediaSource\";a:0:{}}s:3:\"web\";a:4:{s:16:\"modAccessContext\";a:2:{s:3:\"mgr\";a:1:{i:0;a:3:{s:9:\"principal\";s:1:\"1\";s:9:\"authority\";s:1:\"0\";s:6:\"policy\";a:172:{s:5:\"about\";b:1;s:18:\"access_permissions\";b:1;s:7:\"actions\";b:1;s:15:\"change_password\";b:1;s:14:\"change_profile\";b:1;s:8:\"charsets\";b:1;s:9:\"class_map\";b:1;s:10:\"components\";b:1;s:13:\"content_types\";b:1;s:9:\"countries\";b:1;s:6:\"create\";b:1;s:7:\"credits\";b:1;s:15:\"customize_forms\";b:1;s:10:\"dashboards\";b:1;s:8:\"database\";b:1;s:17:\"database_truncate\";b:1;s:15:\"delete_category\";b:1;s:12:\"delete_chunk\";b:1;s:14:\"delete_context\";b:1;s:15:\"delete_document\";b:1;s:15:\"delete_eventlog\";b:1;s:13:\"delete_plugin\";b:1;s:18:\"delete_propertyset\";b:1;s:11:\"delete_role\";b:1;s:14:\"delete_snippet\";b:1;s:15:\"delete_template\";b:1;s:9:\"delete_tv\";b:1;s:11:\"delete_user\";b:1;s:15:\"directory_chmod\";b:1;s:16:\"directory_create\";b:1;s:14:\"directory_list\";b:1;s:16:\"directory_remove\";b:1;s:16:\"directory_update\";b:1;s:13:\"edit_category\";b:1;s:10:\"edit_chunk\";b:1;s:12:\"edit_context\";b:1;s:13:\"edit_document\";b:1;s:11:\"edit_locked\";b:1;s:11:\"edit_plugin\";b:1;s:16:\"edit_propertyset\";b:1;s:9:\"edit_role\";b:1;s:12:\"edit_snippet\";b:1;s:13:\"edit_template\";b:1;s:7:\"edit_tv\";b:1;s:9:\"edit_user\";b:1;s:12:\"element_tree\";b:1;s:11:\"empty_cache\";b:1;s:15:\"error_log_erase\";b:1;s:14:\"error_log_view\";b:1;s:13:\"export_static\";b:1;s:11:\"file_create\";b:1;s:9:\"file_list\";b:1;s:12:\"file_manager\";b:1;s:11:\"file_remove\";b:1;s:9:\"file_tree\";b:1;s:11:\"file_update\";b:1;s:11:\"file_upload\";b:1;s:9:\"file_view\";b:1;s:14:\"flush_sessions\";b:1;s:6:\"frames\";b:1;s:4:\"help\";b:1;s:4:\"home\";b:1;s:13:\"import_static\";b:1;s:9:\"languages\";b:1;s:8:\"lexicons\";b:1;s:4:\"list\";b:1;s:4:\"load\";b:1;s:6:\"logout\";b:1;s:4:\"logs\";b:1;s:5:\"menus\";b:1;s:12:\"menu_reports\";b:1;s:13:\"menu_security\";b:1;s:9:\"menu_site\";b:1;s:12:\"menu_support\";b:1;s:11:\"menu_system\";b:1;s:10:\"menu_tools\";b:1;s:9:\"menu_user\";b:1;s:8:\"messages\";b:1;s:10:\"namespaces\";b:1;s:12:\"new_category\";b:1;s:9:\"new_chunk\";b:1;s:11:\"new_context\";b:1;s:12:\"new_document\";b:1;s:20:\"new_document_in_root\";b:1;s:10:\"new_plugin\";b:1;s:15:\"new_propertyset\";b:1;s:8:\"new_role\";b:1;s:11:\"new_snippet\";b:1;s:19:\"new_static_resource\";b:1;s:11:\"new_symlink\";b:1;s:12:\"new_template\";b:1;s:6:\"new_tv\";b:1;s:8:\"new_user\";b:1;s:11:\"new_weblink\";b:1;s:8:\"packages\";b:1;s:13:\"policy_delete\";b:1;s:11:\"policy_edit\";b:1;s:10:\"policy_new\";b:1;s:11:\"policy_save\";b:1;s:22:\"policy_template_delete\";b:1;s:20:\"policy_template_edit\";b:1;s:19:\"policy_template_new\";b:1;s:20:\"policy_template_save\";b:1;s:20:\"policy_template_view\";b:1;s:11:\"policy_view\";b:1;s:13:\"property_sets\";b:1;s:9:\"providers\";b:1;s:16:\"publish_document\";b:1;s:13:\"purge_deleted\";b:1;s:6:\"remove\";b:1;s:12:\"remove_locks\";b:1;s:18:\"resource_duplicate\";b:1;s:20:\"resourcegroup_delete\";b:1;s:18:\"resourcegroup_edit\";b:1;s:17:\"resourcegroup_new\";b:1;s:27:\"resourcegroup_resource_edit\";b:1;s:27:\"resourcegroup_resource_list\";b:1;s:18:\"resourcegroup_save\";b:1;s:18:\"resourcegroup_view\";b:1;s:21:\"resource_quick_create\";b:1;s:21:\"resource_quick_update\";b:1;s:13:\"resource_tree\";b:1;s:4:\"save\";b:1;s:13:\"save_category\";b:1;s:10:\"save_chunk\";b:1;s:12:\"save_context\";b:1;s:13:\"save_document\";b:1;s:11:\"save_plugin\";b:1;s:16:\"save_propertyset\";b:1;s:9:\"save_role\";b:1;s:12:\"save_snippet\";b:1;s:13:\"save_template\";b:1;s:7:\"save_tv\";b:1;s:9:\"save_user\";b:1;s:6:\"search\";b:1;s:8:\"settings\";b:1;s:7:\"sources\";b:1;s:13:\"source_delete\";b:1;s:11:\"source_edit\";b:1;s:11:\"source_save\";b:1;s:11:\"source_view\";b:1;s:11:\"steal_locks\";b:1;s:21:\"tree_show_element_ids\";b:1;s:22:\"tree_show_resource_ids\";b:1;s:17:\"undelete_document\";b:1;s:25:\"unlock_element_properties\";b:1;s:18:\"unpublish_document\";b:1;s:16:\"usergroup_delete\";b:1;s:14:\"usergroup_edit\";b:1;s:13:\"usergroup_new\";b:1;s:14:\"usergroup_save\";b:1;s:19:\"usergroup_user_edit\";b:1;s:19:\"usergroup_user_list\";b:1;s:14:\"usergroup_view\";b:1;s:4:\"view\";b:1;s:13:\"view_category\";b:1;s:10:\"view_chunk\";b:1;s:12:\"view_context\";b:1;s:13:\"view_document\";b:1;s:12:\"view_element\";b:1;s:13:\"view_eventlog\";b:1;s:12:\"view_offline\";b:1;s:11:\"view_plugin\";b:1;s:16:\"view_propertyset\";b:1;s:9:\"view_role\";b:1;s:12:\"view_snippet\";b:1;s:12:\"view_sysinfo\";b:1;s:13:\"view_template\";b:1;s:7:\"view_tv\";b:1;s:16:\"view_unpublished\";b:1;s:9:\"view_user\";b:1;s:10:\"workspaces\";b:1;}}}s:3:\"web\";a:1:{i:0;a:3:{s:9:\"principal\";s:1:\"1\";s:9:\"authority\";s:1:\"0\";s:6:\"policy\";a:172:{s:5:\"about\";b:1;s:18:\"access_permissions\";b:1;s:7:\"actions\";b:1;s:15:\"change_password\";b:1;s:14:\"change_profile\";b:1;s:8:\"charsets\";b:1;s:9:\"class_map\";b:1;s:10:\"components\";b:1;s:13:\"content_types\";b:1;s:9:\"countries\";b:1;s:6:\"create\";b:1;s:7:\"credits\";b:1;s:15:\"customize_forms\";b:1;s:10:\"dashboards\";b:1;s:8:\"database\";b:1;s:17:\"database_truncate\";b:1;s:15:\"delete_category\";b:1;s:12:\"delete_chunk\";b:1;s:14:\"delete_context\";b:1;s:15:\"delete_document\";b:1;s:15:\"delete_eventlog\";b:1;s:13:\"delete_plugin\";b:1;s:18:\"delete_propertyset\";b:1;s:11:\"delete_role\";b:1;s:14:\"delete_snippet\";b:1;s:15:\"delete_template\";b:1;s:9:\"delete_tv\";b:1;s:11:\"delete_user\";b:1;s:15:\"directory_chmod\";b:1;s:16:\"directory_create\";b:1;s:14:\"directory_list\";b:1;s:16:\"directory_remove\";b:1;s:16:\"directory_update\";b:1;s:13:\"edit_category\";b:1;s:10:\"edit_chunk\";b:1;s:12:\"edit_context\";b:1;s:13:\"edit_document\";b:1;s:11:\"edit_locked\";b:1;s:11:\"edit_plugin\";b:1;s:16:\"edit_propertyset\";b:1;s:9:\"edit_role\";b:1;s:12:\"edit_snippet\";b:1;s:13:\"edit_template\";b:1;s:7:\"edit_tv\";b:1;s:9:\"edit_user\";b:1;s:12:\"element_tree\";b:1;s:11:\"empty_cache\";b:1;s:15:\"error_log_erase\";b:1;s:14:\"error_log_view\";b:1;s:13:\"export_static\";b:1;s:11:\"file_create\";b:1;s:9:\"file_list\";b:1;s:12:\"file_manager\";b:1;s:11:\"file_remove\";b:1;s:9:\"file_tree\";b:1;s:11:\"file_update\";b:1;s:11:\"file_upload\";b:1;s:9:\"file_view\";b:1;s:14:\"flush_sessions\";b:1;s:6:\"frames\";b:1;s:4:\"help\";b:1;s:4:\"home\";b:1;s:13:\"import_static\";b:1;s:9:\"languages\";b:1;s:8:\"lexicons\";b:1;s:4:\"list\";b:1;s:4:\"load\";b:1;s:6:\"logout\";b:1;s:4:\"logs\";b:1;s:5:\"menus\";b:1;s:12:\"menu_reports\";b:1;s:13:\"menu_security\";b:1;s:9:\"menu_site\";b:1;s:12:\"menu_support\";b:1;s:11:\"menu_system\";b:1;s:10:\"menu_tools\";b:1;s:9:\"menu_user\";b:1;s:8:\"messages\";b:1;s:10:\"namespaces\";b:1;s:12:\"new_category\";b:1;s:9:\"new_chunk\";b:1;s:11:\"new_context\";b:1;s:12:\"new_document\";b:1;s:20:\"new_document_in_root\";b:1;s:10:\"new_plugin\";b:1;s:15:\"new_propertyset\";b:1;s:8:\"new_role\";b:1;s:11:\"new_snippet\";b:1;s:19:\"new_static_resource\";b:1;s:11:\"new_symlink\";b:1;s:12:\"new_template\";b:1;s:6:\"new_tv\";b:1;s:8:\"new_user\";b:1;s:11:\"new_weblink\";b:1;s:8:\"packages\";b:1;s:13:\"policy_delete\";b:1;s:11:\"policy_edit\";b:1;s:10:\"policy_new\";b:1;s:11:\"policy_save\";b:1;s:22:\"policy_template_delete\";b:1;s:20:\"policy_template_edit\";b:1;s:19:\"policy_template_new\";b:1;s:20:\"policy_template_save\";b:1;s:20:\"policy_template_view\";b:1;s:11:\"policy_view\";b:1;s:13:\"property_sets\";b:1;s:9:\"providers\";b:1;s:16:\"publish_document\";b:1;s:13:\"purge_deleted\";b:1;s:6:\"remove\";b:1;s:12:\"remove_locks\";b:1;s:18:\"resource_duplicate\";b:1;s:20:\"resourcegroup_delete\";b:1;s:18:\"resourcegroup_edit\";b:1;s:17:\"resourcegroup_new\";b:1;s:27:\"resourcegroup_resource_edit\";b:1;s:27:\"resourcegroup_resource_list\";b:1;s:18:\"resourcegroup_save\";b:1;s:18:\"resourcegroup_view\";b:1;s:21:\"resource_quick_create\";b:1;s:21:\"resource_quick_update\";b:1;s:13:\"resource_tree\";b:1;s:4:\"save\";b:1;s:13:\"save_category\";b:1;s:10:\"save_chunk\";b:1;s:12:\"save_context\";b:1;s:13:\"save_document\";b:1;s:11:\"save_plugin\";b:1;s:16:\"save_propertyset\";b:1;s:9:\"save_role\";b:1;s:12:\"save_snippet\";b:1;s:13:\"save_template\";b:1;s:7:\"save_tv\";b:1;s:9:\"save_user\";b:1;s:6:\"search\";b:1;s:8:\"settings\";b:1;s:7:\"sources\";b:1;s:13:\"source_delete\";b:1;s:11:\"source_edit\";b:1;s:11:\"source_save\";b:1;s:11:\"source_view\";b:1;s:11:\"steal_locks\";b:1;s:21:\"tree_show_element_ids\";b:1;s:22:\"tree_show_resource_ids\";b:1;s:17:\"undelete_document\";b:1;s:25:\"unlock_element_properties\";b:1;s:18:\"unpublish_document\";b:1;s:16:\"usergroup_delete\";b:1;s:14:\"usergroup_edit\";b:1;s:13:\"usergroup_new\";b:1;s:14:\"usergroup_save\";b:1;s:19:\"usergroup_user_edit\";b:1;s:19:\"usergroup_user_list\";b:1;s:14:\"usergroup_view\";b:1;s:4:\"view\";b:1;s:13:\"view_category\";b:1;s:10:\"view_chunk\";b:1;s:12:\"view_context\";b:1;s:13:\"view_document\";b:1;s:12:\"view_element\";b:1;s:13:\"view_eventlog\";b:1;s:12:\"view_offline\";b:1;s:11:\"view_plugin\";b:1;s:16:\"view_propertyset\";b:1;s:9:\"view_role\";b:1;s:12:\"view_snippet\";b:1;s:12:\"view_sysinfo\";b:1;s:13:\"view_template\";b:1;s:7:\"view_tv\";b:1;s:16:\"view_unpublished\";b:1;s:9:\"view_user\";b:1;s:10:\"workspaces\";b:1;}}}}s:22:\"modAccessResourceGroup\";a:0:{}s:17:\"modAccessCategory\";a:0:{}s:28:\"sources.modAccessMediaSource\";a:0:{}}}modx.user.1.resourceGroups|a:1:{s:3:\"web\";a:0:{}}modx.user.1.userGroups|a:1:{i:0;i:1;}newResourceTokens|a:2:{i:0;s:23:\"4f5a67b2250a26.89617512\";i:1;s:23:\"4f5a774e1e2869.54051534\";}'),('22c392fe50e9ffa7355fbbdc30b98cb7',1331328869,'modx.user.contextTokens|a:0:{}modx.user.0.attributes|a:1:{s:3:\"web\";a:4:{s:16:\"modAccessContext\";a:1:{s:3:\"web\";a:1:{i:0;a:3:{s:9:\"principal\";i:0;s:9:\"authority\";s:1:\"0\";s:6:\"policy\";a:1:{s:4:\"load\";b:1;}}}}s:22:\"modAccessResourceGroup\";a:0:{}s:17:\"modAccessCategory\";a:0:{}s:28:\"sources.modAccessMediaSource\";a:0:{}}}modx.user.0.resourceGroups|a:1:{s:3:\"web\";a:0:{}}'),('56282fa8a9318480e151175efd237ebe',1331326168,'modx.user.contextTokens|a:0:{}'),('a735a16b133c1e2fbbf9febce034430c',1331326168,'modx.user.contextTokens|a:0:{}'),('305871446ae42da61106ebfe584ee958',1331326168,'modx.user.contextTokens|a:0:{}'),('02d06470767364378852021cad5727b3',1331326168,'modx.user.contextTokens|a:0:{}'),('f59658b0df2e68cc1727215510ee3e73',1331326168,'modx.user.contextTokens|a:0:{}'),('45cab33bb44d34bf99e7073a0a1fab10',1331326169,'modx.user.contextTokens|a:0:{}'),('7d209b0a78393c7adb515d0a181cc742',1331326169,'modx.user.contextTokens|a:0:{}'),('8fa4fb9f116d64acdaf7ee9326a4a73e',1331326170,'modx.user.contextTokens|a:0:{}'),('8629c411854f57d7d05daa3c8cc00480',1331326170,'modx.user.contextTokens|a:0:{}'),('f0596f7442509631bab953f8175cc022',1331326170,'modx.user.contextTokens|a:0:{}'),('fc9fe4b0571f019c2304225910370ace',1331326170,'modx.user.contextTokens|a:0:{}'),('2569690af5c55458caa601cfa13f83dc',1331326171,'modx.user.contextTokens|a:0:{}'),('b44f5fa94de59953ed46b8283cccc2d3',1331326184,'modx.user.contextTokens|a:0:{}'),('a8f41ef7c43197adf2fb62da66b29e0c',1331326192,'modx.user.contextTokens|a:0:{}'),('2928f5faf92b230d349902f590b85ad1',1331326197,'modx.user.contextTokens|a:0:{}'),('5725667de13a0a10fa0d50732fd1b6ed',1331326242,'modx.user.contextTokens|a:0:{}'),('6bd7fa05292f9b92f6fe1a0a0f3ce478',1331326252,'modx.user.contextTokens|a:0:{}'),('62e5e87b0e5145cf87ace1f4fc2680db',1331326288,'modx.user.contextTokens|a:0:{}'),('24e199cf270f9a103ad838aec61b0fbb',1331326308,'modx.user.contextTokens|a:0:{}'),('18b33c1b865e730ee5cf6f03f16263c2',1331326558,'modx.user.contextTokens|a:0:{}'),('d58e845ed9e74fa51834580b21608251',1331327069,'modx.user.contextTokens|a:0:{}'),('5430c78c342d82fe69a73ed1e261fda5',1331327087,'modx.user.contextTokens|a:0:{}'),('fb3ea9f7d445b0ed34e5f445e89dbba7',1331327120,'modx.user.contextTokens|a:0:{}'),('c01fa514ef157746dc23905f0f9c6eae',1331327137,'modx.user.contextTokens|a:0:{}'),('8deb28ea903dc78dc4927cd89749c4f1',1331327137,'modx.user.contextTokens|a:0:{}'),('d305b716ea98e99cb7fb03fb4ddc6a97',1331327201,'modx.user.contextTokens|a:0:{}'),('72715a5c12a83e5e2378bc1545bfb8f0',1331327201,'modx.user.contextTokens|a:0:{}'),('91468b93cf55512ceb47665cd83b2952',1331327208,'modx.user.contextTokens|a:0:{}'),('690f9f2332a35d3f1388e5beea5afd93',1331327220,'modx.user.contextTokens|a:0:{}'),('95e6cc8b5b27c8e72ce83ea9d2edf0fd',1331327220,'modx.user.contextTokens|a:0:{}'),('c3d86d656dc1c060c7998e2925ecdddd',1331327232,'modx.user.contextTokens|a:0:{}'),('ada2ef78903d5fa9f6758d27b53d73af',1331327238,'modx.user.contextTokens|a:0:{}'),('733d781f219baa92c084bdaf28d4340d',1331327274,'modx.user.contextTokens|a:0:{}'),('efdd35ab28dda094fee7da3dee13495d',1331327342,'modx.user.contextTokens|a:0:{}'),('81e16104e69fbb61a818de0695eaa5bf',1331327342,'modx.user.contextTokens|a:0:{}'),('9ad73069df7bb0f8adacf7f3650e6557',1331327342,'modx.user.contextTokens|a:0:{}'),('0852d0ca5a016fd82222419c411d7ae5',1331327342,'modx.user.contextTokens|a:0:{}'),('a500a1b1ac47f7c203571c21271beb9b',1331327347,'modx.user.contextTokens|a:0:{}'),('03669d1769b32bca3d12fce4bebd09de',1331327347,'modx.user.contextTokens|a:0:{}'),('76f49504ffbe5a1c2879f9e29d2d25f3',1331327356,'modx.user.contextTokens|a:0:{}'),('3fa0498ba1b91d535118d71be68e1a21',1331327374,'modx.user.contextTokens|a:0:{}'),('b347ad182c45ea6a693d2aad9e72d778',1331327374,'modx.user.contextTokens|a:0:{}'),('fc8ad2f59c8ac6cc955979c1caffbf86',1331327384,'modx.user.contextTokens|a:0:{}'),('15fb65b14275b5345f044fba1b4e865d',1331327384,'modx.user.contextTokens|a:0:{}'),('86f2af54745335cf65f2843909cd201f',1331327384,'modx.user.contextTokens|a:0:{}'),('3427d8dc9132eaca85be7d284e7dd950',1331327384,'modx.user.contextTokens|a:0:{}'),('93401df6b3f6751ababf600527e1a421',1331327384,'modx.user.contextTokens|a:0:{}'),('1ebeed1fc8d6dd7ff7a8a78586f360bf',1331327385,'modx.user.contextTokens|a:0:{}'),('1020f0d67289187bd7fc2d2f74b52fc0',1331327385,'modx.user.contextTokens|a:0:{}'),('d4c7de32aeec3c4d0d118a17ecc1d300',1331327399,'modx.user.contextTokens|a:0:{}'),('ca95ca092d4714c693d104c44c05378a',1331327405,'modx.user.contextTokens|a:0:{}'),('7da43ae369d4db2940f2e783289df44a',1331327407,'modx.user.contextTokens|a:0:{}'),('76cd30dd83ca3104af4bdf807804d644',1331327412,'modx.user.contextTokens|a:0:{}'),('8be76886dbc6047396e596da23ea2505',1331327417,'modx.user.contextTokens|a:0:{}'),('026bb995f4fcfdc70040604e00dad5a0',1331327422,'modx.user.contextTokens|a:0:{}'),('f52099390226a43103ce5d1939ff3fab',1331327433,'modx.user.contextTokens|a:0:{}'),('523eefac37fd7d5a29404bcdbae63128',1331327499,'modx.user.contextTokens|a:0:{}'),('7eb359fcfb8ccd03b6f018bec40fd090',1331327514,'modx.user.contextTokens|a:0:{}'),('1c2a96f9ac5b672012d416a8ccc64fb3',1331327646,'modx.user.contextTokens|a:0:{}'),('69e4c6d622a5e8c353329cb9cec0bc6c',1331327646,'modx.user.contextTokens|a:0:{}'),('850aa21d8b5ed79805209e2e86fcd077',1331327654,'modx.user.contextTokens|a:0:{}'),('4a20b469e3d8f63771200963dc91da80',1331327677,'modx.user.contextTokens|a:0:{}'),('6c4d9c60938f4c80ac6c53a372f2171f',1331327710,'modx.user.contextTokens|a:0:{}'),('a8cf201ef2b153766eb3b9a6433c22b9',1331327742,'modx.user.contextTokens|a:0:{}'),('8ee3344e63240d6e5c8220f9e1a0c064',1331327817,'modx.user.contextTokens|a:0:{}'),('84e8cd748ce32fbeb4c89e8856221134',1331327845,'modx.user.contextTokens|a:0:{}'),('fd6ea2ae2093e31490ad30249dd732ff',1331327850,'modx.user.contextTokens|a:0:{}'),('d430bcb343c828aa170162545bb5efc5',1331327875,'modx.user.contextTokens|a:0:{}'),('5aa97c3b00f00a5f9fa7e8dd10a30b6a',1331327875,'modx.user.contextTokens|a:0:{}'),('e89d133437a36a7cfd55d7373a41795a',1331327876,'modx.user.contextTokens|a:0:{}'),('c42962736b6fa1b11695cdef6bf5bb95',1331327880,'modx.user.contextTokens|a:0:{}'),('75b395c3ffc1fbfa9f1ac48d710a8ff0',1331327880,'modx.user.contextTokens|a:0:{}'),('1cecc86be0867dd2c44f3cc3befe973e',1331327881,'modx.user.contextTokens|a:0:{}'),('e91163b7fb6dfe6640b1ad6ee83a3b5b',1331327897,'modx.user.contextTokens|a:0:{}'),('7ec870127bdccff56568ffc46717b905',1331327921,'modx.user.contextTokens|a:0:{}'),('fd92fc376394d44f963076db4c92d1de',1331327967,'modx.user.contextTokens|a:0:{}'),('3fc4b4eea25ef41a4d932f23a20716a3',1331327973,'modx.user.contextTokens|a:0:{}'),('c3734d988745b10f68a2f9aaca9132a6',1331327975,'modx.user.contextTokens|a:0:{}'),('72da4652b7844aee82c7a5109ce6241c',1331327988,'modx.user.contextTokens|a:0:{}'),('04278ee481cf1f781202a12baf5633a2',1331327988,'modx.user.contextTokens|a:0:{}'),('6c1eb33ddb1fe9a3a968a5442eef4922',1331328002,'modx.user.contextTokens|a:0:{}'),('7c18d5df64ecf3cb69a9ad990d2d612e',1331328008,'modx.user.contextTokens|a:0:{}'),('114ec7190d643fbbf6c869a149263655',1331328019,'modx.user.contextTokens|a:0:{}'),('384e008c213325614e51acc58785ec9d',1331328032,'modx.user.contextTokens|a:0:{}'),('b51588dcd9150413b8236727bab96414',1331328033,'modx.user.contextTokens|a:0:{}'),('c650911af9249eb2432779071dee9726',1331328062,'modx.user.contextTokens|a:0:{}'),('6247a049c0b7a7a08ac86df62c4ab934',1331328079,'modx.user.contextTokens|a:0:{}'),('f6f567dcd3513696fafcb3177041dfa2',1331328119,'modx.user.contextTokens|a:0:{}'),('4048dcdd315a6ed1747bb923d8d7f616',1331328152,'modx.user.contextTokens|a:0:{}'),('7da566a0f88f84c4c9af24f744351a48',1331328153,'modx.user.contextTokens|a:0:{}'),('ba57953acfda08921223924af72f0362',1331328176,'modx.user.contextTokens|a:0:{}'),('48ca5b0db2828bddc089ffa9241a814d',1331328200,'modx.user.contextTokens|a:0:{}'),('9c94bc6085fd9af623963df5d836cde3',1331328205,'modx.user.contextTokens|a:0:{}'),('7edc1573e76d734e1d431394accfffba',1331328225,'modx.user.contextTokens|a:0:{}'),('72195c477e972d2daaebc6f83fc0354b',1331328247,'modx.user.contextTokens|a:0:{}'),('3b2d851e0b91b08284c2d2496e3596a4',1331328259,'modx.user.contextTokens|a:0:{}'),('5524d21f980a9e293b10afebcd51a479',1331328277,'modx.user.contextTokens|a:0:{}'),('d5a05ee8430b544101aaebc1dd6d6386',1331328308,'modx.user.contextTokens|a:0:{}'),('0eef73b63b21270d7fba67866bfdcff2',1331328369,'modx.user.contextTokens|a:0:{}'),('c2cdb9e2a40756cedb1a14129cfcf3dc',1331328376,'modx.user.contextTokens|a:0:{}'),('bd6d7db97b4c10580d1b95032a3753a2',1331328558,'modx.user.contextTokens|a:0:{}'),('65317d342bb137d41ee9025d1a6deee5',1331328558,'modx.user.contextTokens|a:0:{}'),('3a6ac2c3824130bbee5252e871b7399c',1331328558,'modx.user.contextTokens|a:0:{}'),('85238582b1f33740925f83e35fc4ca12',1331328581,'modx.user.contextTokens|a:0:{}'),('cb8873336a89904205a61b621d77e570',1331328583,'modx.user.contextTokens|a:0:{}'),('db999f14b866e8da76321adda39b962a',1331328584,'modx.user.contextTokens|a:0:{}'),('6a2fc66ab159490718c4d29c49aca12c',1331328584,'modx.user.contextTokens|a:0:{}'),('4224f961042fd184787ebf88cfbc4868',1331328598,'modx.user.contextTokens|a:0:{}'),('f9c685d367825644a1b8a183c5823bfc',1331328599,'modx.user.contextTokens|a:0:{}'),('afcefa1f8b4b7ccdb1d02e9c6114fa6f',1331328684,'modx.user.contextTokens|a:0:{}'),('7b0c686075486aeb434090cb1e9d7728',1331328684,'modx.user.contextTokens|a:0:{}'),('cad30c94d21d7183563ed4bfc85181bf',1331328700,'modx.user.contextTokens|a:0:{}'),('deeeaee84dbf1d329a382af7838ccea2',1331328733,'modx.user.contextTokens|a:0:{}'),('1594b09186af16e30231e581c9d816a0',1331328768,'modx.user.contextTokens|a:0:{}'),('bc16c0801e69675f5b730855750a9d3a',1331328786,'modx.user.contextTokens|a:0:{}'),('06b1a2dba0404894f57fd0479a9331b8',1331328814,'modx.user.contextTokens|a:0:{}'),('33db1095d8c71215c2751ccb84c92611',1331328894,'modx.user.contextTokens|a:0:{}'),('8b3775a4018eae0ad4e66c1b73883096',1331328895,'modx.user.contextTokens|a:0:{}'),('d7757b5f8554338c10292201abbb7c07',1331328909,'modx.user.contextTokens|a:0:{}'),('f0e22c43b6485458056c438bfba8b6b2',1331328965,'modx.user.contextTokens|a:0:{}'),('7534c65f515aa7b41f6af947be400ba1',1331328965,'modx.user.contextTokens|a:0:{}'),('93c80189fc70af584fd9ed66b31e5e5e',1331329026,'modx.user.contextTokens|a:0:{}'),('f3874231f14ff99cd900c3bcbc3feca1',1331329078,'modx.user.contextTokens|a:0:{}'),('6359dd1d07d9a8ede458283e187413e0',1331329083,'modx.user.contextTokens|a:0:{}'),('7ec2d766e34468340a14bdf6e4210838',1331329094,'modx.user.contextTokens|a:0:{}'),('0bead0f78209f1e3738c3469546daa16',1331329122,'modx.user.contextTokens|a:0:{}'),('d8efe0103d06fbe359efda1199a480aa',1331329122,'modx.user.contextTokens|a:0:{}'),('0d4ebbb221212bf4c14c550bcc599931',1331329122,'modx.user.contextTokens|a:0:{}'),('6138d8000b55394e38f8c67783212187',1331329125,'modx.user.contextTokens|a:0:{}'),('559b22dead99390791c7401d1e1b01ce',1331329129,'modx.user.contextTokens|a:0:{}'),('e9a0ac0b1f945326a50912dc45acd0bd',1331329133,'modx.user.contextTokens|a:0:{}'),('4f9f437d42345c1f4ccafe9c25a4f769',1331329139,'modx.user.contextTokens|a:0:{}'),('6b1685aa58939fa2ddd9d71da3bf8061',1331329139,'modx.user.contextTokens|a:0:{}'),('0164cf0625d02667e15dfd7e169a12f4',1331329139,'modx.user.contextTokens|a:0:{}'),('752b5ca0bb8df1ccb88ed96b2d0362e7',1331329154,'modx.user.contextTokens|a:0:{}'),('cda7e44cc6ad9455e7328f0d2a694c15',1331329164,'modx.user.contextTokens|a:0:{}'),('a471c68c2cbfbc4c95a38f5ba1b4b75c',1331329166,'modx.user.contextTokens|a:0:{}'),('4eb3ec38f0e06109bad3185e4cd8ca89',1331329174,'modx.user.contextTokens|a:0:{}'),('3ad24c9727ff0bfba04afe2cf43a4303',1331329184,'modx.user.contextTokens|a:0:{}'),('f9379f66e38225f53c01db9917742959',1331329236,'modx.user.contextTokens|a:0:{}'),('107a396af0d3b95761c7048785945703',1331329239,'modx.user.contextTokens|a:0:{}'),('3545a0bcbc9c7939393e5ac269f741df',1331329251,'modx.user.contextTokens|a:0:{}'),('0b2162e1d0bed262f546323a2b08c36e',1331329253,'modx.user.contextTokens|a:0:{}'),('86b92dada80138fc3c8d0e97765ca2fa',1331329277,'modx.user.contextTokens|a:0:{}'),('d044f8d88b91c992e46ed1a56fc0799b',1331329283,'modx.user.contextTokens|a:0:{}'),('5241bc32e66e43f103c2d33b0add8609',1331329522,'modx.user.contextTokens|a:0:{}'),('3210e5deca22bd666b29f22362c4f553',1331329522,'modx.user.contextTokens|a:0:{}'),('ec8d5861b78e093f9526250445f13fe6',1331329540,'modx.user.contextTokens|a:0:{}'),('ec126901a665e229d4c62af3e91cbb20',1331329595,'modx.user.contextTokens|a:0:{}'),('c290e0f1e1ddfeae5cb971749aaa115c',1331329669,'modx.user.contextTokens|a:0:{}'),('d554de57704a860370aa5c5dcbf9ea30',1331329692,'modx.user.contextTokens|a:0:{}'),('e3726ab23575db738148673f87098039',1331329694,'modx.user.contextTokens|a:0:{}'),('7ae216f2282b2dd7c6cab021af97c2da',1331329731,'modx.user.contextTokens|a:0:{}'),('c46f7ca1e6d8b84e8279af263d21009f',1331329745,'modx.user.contextTokens|a:0:{}'),('09012f718ba6dd064c732fb9ec0da773',1331329746,'modx.user.contextTokens|a:0:{}'),('e97313c6eebad79c8bfa6091c68b61af',1331329779,'modx.user.contextTokens|a:0:{}'),('f168d2c1b54efab8751d09328e920f70',1331329855,'modx.user.contextTokens|a:0:{}'),('990df6b5b25c9f33245737e45f32d6e9',1331329861,'modx.user.contextTokens|a:0:{}'),('a246419b905717fa63147a2c15f9a66e',1331329946,'modx.user.contextTokens|a:0:{}'),('6ee0868044079f743008826c8e064493',1331329979,'modx.user.contextTokens|a:0:{}'),('dd4b8e685a134a81d9d810903034c4ff',1331329981,'modx.user.contextTokens|a:0:{}'),('90c34a6579a03ae411b4c25a54e8601d',1331330160,'modx.user.contextTokens|a:0:{}'),('629fa6d7ebed645c5426c1be5d4c77a9',1331330190,'modx.user.contextTokens|a:0:{}'),('c417979167e044401a1bde9c56530b0b',1331330500,'modx.user.contextTokens|a:0:{}'),('5a8089f8abe8c78ac91b83b6cb352960',1331330535,'modx.user.contextTokens|a:0:{}'),('391380d6c63ac365a2435c5353227e37',1331330535,'modx.user.contextTokens|a:0:{}'),('536901e032abd0c08a4e48d40f5d8b7c',1331330563,'modx.user.contextTokens|a:0:{}'),('4bcc72650b7cc66bcf0b61fc20a142d0',1331330608,'modx.user.contextTokens|a:0:{}'),('cd44ac9090edc347e823921ca12111fe',1331330723,'modx.user.contextTokens|a:0:{}'),('33196206017dfc2df1c0b8fbb521c326',1331330772,'modx.user.contextTokens|a:0:{}'),('8a2dd2421c4c008627e3b877a10304de',1331330934,'modx.user.contextTokens|a:0:{}'),('e5d2dc1c04e77217d4f43e7301c21087',1331330939,'modx.user.contextTokens|a:0:{}'),('565fa1eb09903c29e077c682a6087710',1331331032,'modx.user.contextTokens|a:0:{}'),('960868adb6faff318518d8ff62e6a8d5',1331331130,'modx.user.contextTokens|a:0:{}'),('8dd9fee340899e86406992778716520a',1331331146,'modx.user.contextTokens|a:0:{}'),('1815ed37cd5333058f7b1ef68a317169',1331331146,'modx.user.contextTokens|a:0:{}'),('44cd724668d15ea5430be84e22a24e13',1331331384,'modx.user.contextTokens|a:0:{}'),('7faa9486d6a5bff62594c4cd6c5225f3',1331331445,'modx.user.contextTokens|a:0:{}'),('49a15b8a44a4ca5d78d5ed953006a8e0',1331331446,'modx.user.contextTokens|a:0:{}'),('350e552d09f3f4c0708f982572cc56bd',1331331475,'modx.user.contextTokens|a:0:{}'),('0d4e54311b91abe2d949853964dcaf9c',1331331477,'modx.user.contextTokens|a:0:{}'),('17027b7ee11a7f187b9bd84eb86475dc',1331331546,'modx.user.contextTokens|a:0:{}'),('af1520c84ff53edca7c72dc17ff503d2',1331331737,'modx.user.contextTokens|a:0:{}'),('d58e790966d58fe4e4fbdda2a8444294',1331331789,'modx.user.contextTokens|a:0:{}'),('bec44ce60f477f46193f98158f045eb1',1331331844,'modx.user.contextTokens|a:0:{}'),('240fbde932c63a7a428fc62bddab303f',1331332000,'modx.user.contextTokens|a:0:{}'),('c47ee4dd082684f8f5676b2a365e52a6',1331332066,'modx.user.contextTokens|a:0:{}'),('531804492dd5fd225e0e588f8b72ccfb',1331332071,'modx.user.contextTokens|a:0:{}'),('9f843ca5f4c24ef63157d26a330725e9',1331332106,'modx.user.contextTokens|a:0:{}'),('44a417cc6e410d26b209bcb9f67459a1',1331332211,'modx.user.contextTokens|a:0:{}'),('80955d6f02c9b4c10c454d63adc130f4',1331332229,'modx.user.contextTokens|a:0:{}'),('bc8799a20278577c42db292ebc9436fd',1331332229,'modx.user.contextTokens|a:0:{}'),('0bbf2860947c493ba1825ffdae4e6175',1331332232,'modx.user.contextTokens|a:0:{}'),('add48adb6836b174c62a75e09eba8706',1331332543,'modx.user.contextTokens|a:0:{}'),('f160bee3207ae6404fee566462f1ba14',1331332615,'modx.user.contextTokens|a:0:{}'),('cd56b054972a0f3010dd59e13f9d47df',1331332615,'modx.user.contextTokens|a:0:{}'),('9a156c49c44e9ee74a42ec01ceb6acc3',1331332616,'modx.user.contextTokens|a:0:{}'),('5f6a772a0d9d67a8cba25edfa796eb18',1331332620,'modx.user.contextTokens|a:0:{}'),('8c577c8f7da97ed74fd23d2ba6a3e3bd',1331332671,'modx.user.contextTokens|a:0:{}'),('e67b6c2984878f4362399b311a5d7a4a',1331332671,'modx.user.contextTokens|a:0:{}'),('c41a634810cfaa21e81aee3aada6b4b6',1331332680,'modx.user.contextTokens|a:0:{}'),('abdc2c2f93b0eb363d34eed11089f300',1331332681,'modx.user.contextTokens|a:0:{}'),('7832a57845a83ec85699de00ead9dcd9',1331332697,'modx.user.contextTokens|a:0:{}'),('33b581e15c3681cbc121e7319f7271d8',1331332831,'modx.user.contextTokens|a:0:{}'),('48d3aa0c8968047a560e3c4409f04d83',1331332832,'modx.user.contextTokens|a:0:{}'),('b73ade331eb160ef8a618719da17d65e',1331332834,'modx.user.contextTokens|a:0:{}'),('210c225ab9a7e56e3055374ef0f7f90e',1331332834,'modx.user.contextTokens|a:0:{}'),('7fca2f676e2a055a661bb8a4339857c6',1331333092,'modx.user.contextTokens|a:0:{}'),('2c51a99d32fe0c80a73b568ce599f1af',1331333092,'modx.user.contextTokens|a:0:{}'),('1536d1e8594253286f977d76491af3e7',1331333167,'modx.user.contextTokens|a:0:{}'),('c4e877305a59768651afe456b6a2fa83',1331333168,'modx.user.contextTokens|a:0:{}'),('d0e225f2d3a339cc98bb9ba95eec58de',1331333182,'modx.user.contextTokens|a:0:{}'),('72f5b50cbcbf549de5473147f0b88a2c',1331333186,'modx.user.contextTokens|a:0:{}'),('1c9f2709174e04fecaff0a086ba361cb',1331333329,'modx.user.contextTokens|a:0:{}'),('9f38103fe83334b6c1cc8c5a37540616',1331333389,'modx.user.contextTokens|a:0:{}'),('30d2f62c0f3ebd403c171aae60048752',1331333389,'modx.user.contextTokens|a:0:{}'),('4732ec426df1d013a317d1a5ac3cdbbb',1331333404,'modx.user.contextTokens|a:0:{}'),('28f42b77f820ce1ec2541f04c58edc5d',1331333412,'modx.user.contextTokens|a:0:{}'),('759db9bb9d6110e27ad4bd840025e96e',1331333426,'modx.user.contextTokens|a:0:{}'),('bbcf980de1d869d4875f97d5dbfbda54',1331333439,'modx.user.contextTokens|a:0:{}'),('a454d806309729c145db62059f532de9',1331333502,'modx.user.contextTokens|a:0:{}'),('6ed94ab7617a5072f3486a11de7e8db5',1331333529,'modx.user.contextTokens|a:0:{}'),('9127e7dc13781723418ebf2c4baff157',1331333529,'modx.user.contextTokens|a:0:{}'),('ee5314c6f116f43ee97e7f61c1c8fbb3',1331333551,'modx.user.contextTokens|a:0:{}'),('43db297b067b4c05133195be686eeefa',1331333553,'modx.user.contextTokens|a:0:{}'),('3adb5471117fabde49d1ba3b9a5d61a1',1331333556,'modx.user.contextTokens|a:0:{}'),('94d6da8330effe15a737789e5431b79d',1331333561,'modx.user.contextTokens|a:0:{}'),('b5d0af005262ac939078dbf059bc082d',1331333581,'modx.user.contextTokens|a:0:{}'),('c7d091762dc555fd3ae12f201446413e',1331333613,'modx.user.contextTokens|a:0:{}'),('8e9ce1e1dc7b405ce6a4b498e7e15010',1331333614,'modx.user.contextTokens|a:0:{}'),('bd32b100312ba462724919f111822335',1331333618,'modx.user.contextTokens|a:0:{}'),('83dd2b6a7fcc4030eed78451e74dd0ea',1331333622,'modx.user.contextTokens|a:0:{}'),('f3e1817c2047eac0b42d8b40c26e76fe',1331333628,'modx.user.contextTokens|a:0:{}'),('e940c2dff10a996db5cc4609ef61e6e4',1331333670,'modx.user.contextTokens|a:0:{}'),('c91ffde66fdb2023a6ced6c0947d60ac',1331333711,'modx.user.contextTokens|a:0:{}'),('bedbda4faa093fdf332e28fb49df4bf7',1331333760,'modx.user.contextTokens|a:0:{}'),('cc577f65a138218b68d88d988732b831',1331333930,'modx.user.contextTokens|a:0:{}'),('98d2565f80f1f07bcb79c82bf43fbd6f',1331334280,'modx.user.contextTokens|a:0:{}'),('aa07bdef90189880fd2a8d10fd8d7889',1331334310,'modx.user.contextTokens|a:0:{}'),('470e805958f349ba81ea7eb8fe8194e0',1331334387,'modx.user.contextTokens|a:0:{}'),('ce326041dd3a7042b177c21e001596b3',1331334551,'modx.user.contextTokens|a:0:{}'),('414a7644a912a47827001bf8e9e8fc2f',1331334657,'modx.user.contextTokens|a:0:{}'),('54c456474174fd580515ca8f4725995d',1331334669,'modx.user.contextTokens|a:0:{}'),('6dbfcd88ae67f1a553ab0948141b78fc',1331334854,'modx.user.contextTokens|a:0:{}'),('e60a58d066ea18d3d951bc3300b187b4',1331334856,'modx.user.contextTokens|a:0:{}'),('0621cd8936f95d6b05209eefe7e72bf5',1331334857,'modx.user.contextTokens|a:0:{}'),('b35ec4c15665ccb2fde5550f63284088',1331335411,'modx.user.contextTokens|a:0:{}'),('67bf7e0a703929122d2280506cc373e3',1331336270,'modx.user.contextTokens|a:0:{}'),('94d66eb18d2eb708df3c609feb6b3b47',1331336999,'modx.user.contextTokens|a:0:{}'),('48f38fca6099c0f7b4d809248f77fe1e',1331337193,'modx.user.contextTokens|a:0:{}'),('21c9da773ccffce25862ef7d250db161',1331337492,'modx.user.contextTokens|a:0:{}'),('cfe22428715ed8738b2730cd7a7c748c',1331338648,'modx.user.contextTokens|a:0:{}'),('1479eb2eeec980b00525cc1d9667d189',1331339332,'modx.user.contextTokens|a:0:{}'),('97b43d2a315acf7a8726427b05b10943',1331339733,'modx.user.contextTokens|a:0:{}'),('907412d47836f7a52a3a13aa08a5287c',1331339958,'modx.user.contextTokens|a:0:{}'),('b1d4b3fc07ffcf80c0716b7800585ccf',1331340131,'modx.user.0.attributes|a:1:{s:3:\"web\";a:4:{s:16:\"modAccessContext\";a:1:{s:3:\"web\";a:1:{i:0;a:3:{s:9:\"principal\";i:0;s:9:\"authority\";s:1:\"0\";s:6:\"policy\";a:1:{s:4:\"load\";b:1;}}}}s:22:\"modAccessResourceGroup\";a:0:{}s:17:\"modAccessCategory\";a:0:{}s:28:\"sources.modAccessMediaSource\";a:0:{}}}modx.user.0.resourceGroups|a:1:{s:3:\"web\";a:0:{}}modx.user.contextTokens|a:0:{}'),('cb2878c9fc90fd151b6c0162cb21445a',1331340137,'modx.user.contextTokens|a:0:{}'),('85b4691db64b2273315738eaf90fdb22',1331341148,'modx.user.contextTokens|a:0:{}'),('610d068894ae4707dee36767dce08bc8',1331341148,'modx.user.contextTokens|a:0:{}'),('45f011e8a57a974dc729e7e101482fd2',1331341149,'modx.user.contextTokens|a:0:{}'),('b801af3c205c5fac37ea22a942307308',1331341176,'modx.user.contextTokens|a:0:{}'),('baf8f75164bdc0cf5a182e4d874223fd',1331341189,'modx.user.contextTokens|a:0:{}'),('07ffe75a460f7f968f45a59823dfd46a',1331341190,'modx.user.contextTokens|a:0:{}'),('4a6eb0cde5e3f06e5251a12be90b5a79',1331341236,'modx.user.contextTokens|a:0:{}'),('ffe4a6b626c6a6d9843520d25ab0e586',1331341236,'modx.user.contextTokens|a:0:{}'),('58e0c4dae95de7cad5640a614bf33a9c',1331341276,'modx.user.contextTokens|a:0:{}'),('92eddd044034d0ffd08e3f2b1f570b94',1331341295,'modx.user.contextTokens|a:0:{}'),('065f05e0b85ffcb5651b200181635163',1331341307,'modx.user.contextTokens|a:0:{}'),('0862a8acdf1883140cd59e5753e0d5a5',1331343952,'modx.user.contextTokens|a:0:{}'),('2a693bdd623cd61e14346dd26c88ce0d',1331343952,'modx.user.contextTokens|a:0:{}'),('54d2e2471ecca46d2e5d84d22c43ce03',1331343952,'modx.user.contextTokens|a:0:{}'),('df4b96829be5b7647bb9ae3fb47495a1',1331343973,'modx.user.contextTokens|a:0:{}'),('04c42fa9d326d13d2070a3e3dea81691',1331343973,'modx.user.contextTokens|a:0:{}'),('f458511b9ecd417cded5806aa12170d8',1331343983,'modx.user.contextTokens|a:0:{}'),('ce24e49d4619d3846b2886d32dc0b9c7',1331344021,'modx.user.contextTokens|a:0:{}'),('c58aac97963da83951051e8b76195333',1331344066,'modx.user.contextTokens|a:0:{}'),('c397fb82847117a435d607dee0e803f7',1331346494,'modx.user.contextTokens|a:0:{}'),('f39a0470d03d3b12141b5fac2b989427',1331346707,'modx.user.contextTokens|a:0:{}'),('a64a25f28f31a96f6044457536cf4774',1331348193,'modx.user.contextTokens|a:0:{}'),('4410c78fcbb8db51567b00ee7ad0d7ef',1331348603,'modx.user.contextTokens|a:0:{}'),('b666c9d87e99193316fca75189fa97fd',1331353060,'modx.user.contextTokens|a:0:{}'),('6a1a917a0faa8826d56503d197b6d7f6',1331353183,'modx.user.contextTokens|a:0:{}'),('ee123d10ffae1b30f71f46ed9c71ad4d',1331353233,'modx.user.contextTokens|a:0:{}'),('76ebfc3aa0033964fbfb01d740a008dc',1331479353,'modx.user.contextTokens|a:0:{}modx.user.0.attributes|a:1:{s:3:\"web\";a:4:{s:16:\"modAccessContext\";a:1:{s:3:\"web\";a:1:{i:0;a:3:{s:9:\"principal\";i:0;s:9:\"authority\";s:1:\"0\";s:6:\"policy\";a:1:{s:4:\"load\";b:1;}}}}s:22:\"modAccessResourceGroup\";a:0:{}s:17:\"modAccessCategory\";a:0:{}s:28:\"sources.modAccessMediaSource\";a:0:{}}}modx.user.0.resourceGroups|a:1:{s:3:\"web\";a:0:{}}'),('82c9626acb1d1d9aa906a55782f22eba',1331353707,'modx.user.contextTokens|a:0:{}'),('559b40c00449b81331069ec0dbb921b3',1331354628,'modx.user.contextTokens|a:0:{}'),('df64408a28a104e107948a1ea268efd2',1331354629,'modx.user.contextTokens|a:0:{}'),('79f61cc759cd975ea7fde8366f3c975c',1331354632,'modx.user.contextTokens|a:0:{}'),('b3da94592c69c1ddc71126ca2fc7a3fd',1331354636,'modx.user.contextTokens|a:0:{}'),('cbb6fa77b271ad7833df1379f306dcf5',1331355004,'modx.user.contextTokens|a:0:{}'),('cb9b586d997c5695eac30593d2ae34c7',1331355625,'modx.user.contextTokens|a:0:{}'),('b203de96f5d2f7abf0a62bd097576cc2',1331356103,'modx.user.contextTokens|a:0:{}'),('e1ca9535d28915822b46f1520abfe366',1331356258,'modx.user.contextTokens|a:0:{}'),('2dd19b4eb9532d68f138e7a6c5b86425',1331356459,'modx.user.contextTokens|a:0:{}'),('4ee531767ed27e91ac1a08983c790070',1331357646,'modx.user.contextTokens|a:0:{}'),('7beedc06329b8c6be87371b2e7bf2298',1331357652,'modx.user.contextTokens|a:0:{}'),('55964940f75ffd94f4d7fd59428ddd3f',1331359250,'modx.user.contextTokens|a:0:{}'),('b65f6c09626e4a111c16e973b4fb4121',1331360525,'modx.user.contextTokens|a:0:{}'),('dc5867f9a4ee65d062e6398c325743f5',1331360956,'modx.user.contextTokens|a:0:{}'),('7c6b69f92555a2ab979f89aabc735a4c',1331360968,'modx.user.contextTokens|a:0:{}'),('6fc342e09382fdfc4e16dd4e05693d2b',1331362333,'modx.user.contextTokens|a:0:{}'),('ee6eca9f7ac6facfcc3be76c46b8d9eb',1331362507,'modx.user.contextTokens|a:0:{}'),('0468536a5b199f30fb5134db43deb3e5',1331362743,'modx.user.contextTokens|a:0:{}'),('662d1f1a8b5b7c507780e3bd3431168b',1331364566,'modx.user.contextTokens|a:0:{}'),('b282d1efb25be8f25e831b23693c707a',1331364579,'modx.user.contextTokens|a:0:{}'),('da187a53bd15dae9d52cb230ce834426',1331364637,'modx.user.contextTokens|a:0:{}'),('f381e399ccb0d7fe2558fe88d8865e81',1331365941,'modx.user.contextTokens|a:0:{}'),('ea85053b9a649ecfeaa0a8822f47c72e',1331366560,'modx.user.contextTokens|a:0:{}'),('9c7eb629fcdec594458fdf4ff99c3730',1331370552,'modx.user.contextTokens|a:0:{}'),('f6ef8c8734f775090b6a64d1dbff031e',1331372789,'modx.user.contextTokens|a:0:{}'),('cc42b4253dd9d348115ac66f4aca596c',1331374347,'modx.user.contextTokens|a:0:{}'),('d97910066794c40333fdb43cda515968',1331376016,'modx.user.contextTokens|a:0:{}'),('45c42f38d12e0a7d32cfe39f1d07c4c1',1331377911,'modx.user.contextTokens|a:0:{}'),('3201d048e163aba0930ec3923affaf27',1331379272,'modx.user.contextTokens|a:0:{}'),('a5d27feb81db92166e283915c19a7399',1331379771,'modx.user.contextTokens|a:0:{}'),('ad6ada81828155e7c9a8dbbdaf071b3f',1331379772,'modx.user.contextTokens|a:0:{}'),('bc42954acb598ce1eedfae30692ac169',1331379772,'modx.user.contextTokens|a:0:{}'),('b96402d72c93c09a8659b2f75a997f8d',1331379773,'modx.user.contextTokens|a:0:{}'),('f8a75e29ab30b655ea0995fe7978bcda',1331379774,'modx.user.contextTokens|a:0:{}'),('49d28553a2fc5d6d9a3194d5779608f9',1331379775,'modx.user.contextTokens|a:0:{}'),('4779ce7b4a90cebf549a5258996a2f66',1331379776,'modx.user.contextTokens|a:0:{}'),('2b308a9b868641dedcb5f2778854adbf',1331379805,'modx.user.contextTokens|a:0:{}'),('63464f8257e54acf66639a6ec7734384',1331379809,'modx.user.contextTokens|a:0:{}'),('7fda4cdd1661307fce78e35009a9fa50',1331379810,'modx.user.contextTokens|a:0:{}'),('b5e2b19457695cf3717d1e8af22ca6be',1331379811,'modx.user.contextTokens|a:0:{}'),('5367fdb13e47355a6cd6f28e4baaa529',1331379814,'modx.user.contextTokens|a:0:{}'),('601e69119b840833a303c68220b0ad97',1331379814,'modx.user.contextTokens|a:0:{}'),('b3a2490e8c8dd8112089af9e95118a56',1331379815,'modx.user.contextTokens|a:0:{}'),('c8d9b8d5010d0125f01469074ff70c93',1331379816,'modx.user.contextTokens|a:0:{}'),('3c140ed0a54b65337300823af8050ac0',1331380033,'modx.user.contextTokens|a:0:{}'),('c41bdf7b3c308394c5ad67ca43b21851',1331382057,'modx.user.contextTokens|a:0:{}'),('c52280dd896d64fe38455b85824f72aa',1331382062,'modx.user.contextTokens|a:0:{}'),('a410845d587b3c0e8c63dfd395536847',1331382979,'modx.user.contextTokens|a:0:{}'),('e01023132b791423879c5414acad8e47',1331383159,'modx.user.contextTokens|a:0:{}'),('09f0c08db16173f9538b39f2954d1505',1331385832,'modx.user.contextTokens|a:0:{}'),('da5edaa2e357fefc6f3f4b920321631b',1331392970,'modx.user.contextTokens|a:0:{}'),('cd082698ab41829e27e5253cd1b15735',1331395217,'modx.user.contextTokens|a:0:{}'),('69ea74c8e43d0890b0afbf7222454523',1331395277,'modx.user.contextTokens|a:0:{}'),('38955cf68a6b86a144f8caf7c8a7031d',1331395278,'modx.user.contextTokens|a:0:{}'),('95e9c87ab26db6527a9e7b708471f085',1331395278,'modx.user.contextTokens|a:0:{}'),('a98614ccbf699b4ce372768a57b40a77',1331395278,'modx.user.contextTokens|a:0:{}'),('8ec5a07d9358284f40235b56a583444a',1331395287,'modx.user.contextTokens|a:0:{}'),('0b972d85de1bc4061c40788e9ce57f80',1331395308,'modx.user.contextTokens|a:0:{}'),('974bb0313de44fa4cb5cf7247b1e12c2',1331395310,'modx.user.contextTokens|a:0:{}'),('7d7ee48ad9dbe3ef78ee7283900e3f5e',1331395310,'modx.user.contextTokens|a:0:{}'),('02d3d9bda38e3f9e52a36016e5c6a8cd',1331395358,'modx.user.contextTokens|a:0:{}'),('1a5624d4d453d93a992510a1e59e585e',1331395380,'modx.user.contextTokens|a:0:{}'),('98c8e26deb8ccd22b91307782f9f2456',1331395544,'modx.user.contextTokens|a:0:{}'),('1b5b22a8280f96ae3333a0623efe0192',1331395544,'modx.user.contextTokens|a:0:{}'),('c15955d41f2a7a7d8d3fce1b1f186601',1331395613,'modx.user.contextTokens|a:0:{}'),('c238233834f78e7ba49c6ff81a6a1013',1331395613,'modx.user.contextTokens|a:0:{}'),('aaa3759752a176abaaa88f52676b912f',1331395697,'modx.user.contextTokens|a:0:{}'),('d45ebca1c34b0444839fbc50d814d5a0',1331395943,'modx.user.contextTokens|a:0:{}'),('6c6b77d38dee76a94fafac48b11da90e',1331396224,'modx.user.contextTokens|a:0:{}'),('cc92f9237d043f7531a25d3a2f6df80c',1331396272,'modx.user.contextTokens|a:0:{}'),('3a38560ba2cbc33e3b15622408d646f9',1331396431,'modx.user.contextTokens|a:0:{}'),('59dbc01be27b406f48b5c5d32c2b1126',1331396508,'modx.user.contextTokens|a:0:{}'),('8fc7f83f97442096b2b87873904687df',1331397024,'modx.user.contextTokens|a:0:{}'),('65ac292291e3641b5302ed29477e996e',1331397234,'modx.user.contextTokens|a:0:{}'),('3ad51b599cd08c8f7f1200d62d612a9f',1331397255,'modx.user.contextTokens|a:0:{}'),('b15d96e8895070b5f399c065460ecac6',1331397413,'modx.user.contextTokens|a:0:{}'),('219a86339bcadcc8e421fa4606b4042f',1331397763,'modx.user.contextTokens|a:0:{}'),('60eef16bdb4cd8f06c8bea2a4ec7fd0b',1331397853,'modx.user.contextTokens|a:0:{}'),('cc03cb3be5c59429ae1a9c7545e2e6f4',1331397853,'modx.user.contextTokens|a:0:{}'),('dac3581315bb4bd3dd6cc998b0c920fc',1331397854,'modx.user.contextTokens|a:0:{}'),('e3caa286a05adf629b2f9876f365f799',1331397854,'modx.user.contextTokens|a:0:{}'),('4a36378a71cbd0a4589fb30ad0b1a759',1331397854,'modx.user.contextTokens|a:0:{}'),('b1432ce9640880dc8c6b9179d720b2ad',1331398332,'modx.user.contextTokens|a:0:{}'),('e42474518ba9cdfb3c38d81910c20d1c',1331398365,'modx.user.contextTokens|a:0:{}'),('584fb00f9f61f7c97473c5dd8f820608',1331398424,'modx.user.contextTokens|a:0:{}'),('d2ba3f67df3f073afaf0b92062c0a601',1331398594,'modx.user.contextTokens|a:0:{}'),('bed863245357bbd646a82f08366c9bfe',1331398595,'modx.user.contextTokens|a:0:{}'),('3bd1afbc1cb0dcef3438bb3a1ce68b1d',1331398595,'modx.user.contextTokens|a:0:{}'),('b04b657d2b50111435967852556fd5fb',1331398708,'modx.user.contextTokens|a:0:{}'),('f07426a8f263739238bf5b5fd6e56b6d',1331398853,'modx.user.contextTokens|a:0:{}'),('73eae221b6f5c4ef6dd7d98b92edd142',1331398888,'modx.user.contextTokens|a:0:{}'),('b7043033ded37420a39759cc2ceac17e',1331398943,'modx.user.contextTokens|a:0:{}'),('2f857584eb3f7f79692d8622f44557a0',1331399279,'modx.user.contextTokens|a:0:{}'),('1ad01583a89cfbdfbab3bebf41b56617',1331399900,'modx.user.contextTokens|a:0:{}'),('71649fa5df2abe0ea3e576b78be10d60',1331399901,'modx.user.contextTokens|a:0:{}'),('ba33b917c508f644b8de00440de51f9e',1331399949,'modx.user.contextTokens|a:0:{}'),('2a1f7c13f9cf2a77dcab9b03176d67a7',1331400384,'modx.user.contextTokens|a:0:{}'),('0bd7ff51f5c2cff3253b0ce0ca882977',1331400449,'modx.user.contextTokens|a:0:{}'),('a8297080af6477b62841b8711bd376b4',1331400676,'modx.user.contextTokens|a:0:{}'),('4e29ef185e6dc2fe433558fb3647749c',1331400679,'modx.user.contextTokens|a:0:{}'),('53638e6bddbc5657107035f16cb1181b',1331400745,'modx.user.contextTokens|a:0:{}'),('6b1ab72fac13c7ab6e3f24cce9ef8ba3',1331400866,'modx.user.contextTokens|a:0:{}'),('9f95e9fc9096683185262e5ac004815d',1331401015,'modx.user.contextTokens|a:0:{}'),('f2a87e11edabb642ef42804bf88ab279',1331401059,'modx.user.contextTokens|a:0:{}'),('1e3593d56aa19089dab902d9378ae9c3',1331401095,'modx.user.contextTokens|a:0:{}'),('1b4a419059d7cb134926cc20d9af843a',1331401095,'modx.user.contextTokens|a:0:{}'),('dbf2c9f3ce3168e9b95e3dcd05cddd5c',1331401097,'modx.user.contextTokens|a:0:{}'),('89286ac1729f1e83e68224fcd789b1c2',1331401111,'modx.user.contextTokens|a:0:{}'),('a3e1bf62e29e60763501b8eebeeb0f3a',1331401117,'modx.user.contextTokens|a:0:{}'),('67550b342bfe9aa8186f27e720f32cf0',1331401188,'modx.user.contextTokens|a:0:{}'),('2b71d95073171378771d591a2f3f6af5',1331401693,'modx.user.contextTokens|a:0:{}'),('b5a50198311c4c87c8e905b4729bb743',1331401763,'modx.user.contextTokens|a:0:{}'),('3f4508fbc9d3a9f554d02d3cc4277315',1331401815,'modx.user.contextTokens|a:0:{}'),('5b9dd72f65e80ec492deb5369dc99286',1331401999,'modx.user.contextTokens|a:0:{}'),('07c78c67552ec9898ab633412ac1b0af',1331402043,'modx.user.contextTokens|a:0:{}'),('7de8ee6d1435c6273d35dfb1ae82a404',1331402272,'modx.user.contextTokens|a:0:{}'),('4c0e96f99be6e6a6b08605d95650d311',1331402310,'modx.user.contextTokens|a:0:{}'),('17d65f0ae011dc1bab2991cde0771c67',1331402709,'modx.user.contextTokens|a:0:{}'),('c61d8977cbff5118f62a49b0c681114c',1331402714,'modx.user.contextTokens|a:0:{}'),('21eb69f819ea1ba54525cf8ecc939003',1331402843,'modx.user.contextTokens|a:0:{}'),('0c5e023b5b77a23bdfff0a69f6b658d3',1331402904,'modx.user.contextTokens|a:0:{}'),('9e8facdd3c02e0dcdf59d021a1ed3e29',1331403412,'modx.user.contextTokens|a:0:{}'),('94f8d898cd37dc1d3fc48c3ca37802d0',1331403675,'modx.user.contextTokens|a:0:{}'),('8d2dad55c9ecc4ad9fe14f3fc4bb7bea',1331404033,'modx.user.contextTokens|a:0:{}'),('3ab272d09a2acfff33bb1c12b27e3999',1331404682,'modx.user.contextTokens|a:0:{}'),('59e199f12fe276c4b1d79101f1fc1676',1331404833,'modx.user.contextTokens|a:0:{}'),('bb0a8df29378c5a1bdaf7e32a79fe18d',1331405418,'modx.user.contextTokens|a:0:{}'),('d874bac49f2d014f4cf83b8fa420f23d',1331409366,'modx.user.contextTokens|a:0:{}'),('3fc9075a4744fa665da6620f8cad43ec',1331409556,'modx.user.contextTokens|a:0:{}'),('c31846a72006771b6af5bc46924c054e',1331409987,'modx.user.contextTokens|a:0:{}'),('08cd5e5fa4670f70555464d5f229c619',1331411627,'modx.user.contextTokens|a:0:{}'),('0da6307b53559d39326da10ecc518ef2',1331412213,'modx.user.contextTokens|a:0:{}'),('6155db6ba3c09034384819b61a1d867b',1331412374,'modx.user.contextTokens|a:0:{}'),('2639db753ffa8fc9f6bca1ffe6d2fa5c',1331413133,'modx.user.contextTokens|a:0:{}'),('6c6fd24f312acb5f54f10ed6dbb7afb9',1331413133,'modx.user.contextTokens|a:0:{}'),('8727e97e7e23f2683b80deb3b564c082',1331413133,'modx.user.contextTokens|a:0:{}'),('6c808ed484ef68d66c0ba323d8e4d5bf',1331413137,'modx.user.contextTokens|a:0:{}'),('8a238254fbd4f6f4ea9e5b7c8a57d541',1331413140,'modx.user.contextTokens|a:0:{}'),('4deb9c3914112ea47bbd44708d490ccc',1331413152,'modx.user.contextTokens|a:0:{}'),('e939ffb841453b94daa0ebfb8b9059f8',1331413301,'modx.user.contextTokens|a:0:{}'),('1b854da037c4954e81a6a0618787ffd6',1331414139,'modx.user.contextTokens|a:0:{}'),('1accd6897e4e7dd7b23b4737fb98fe48',1331414253,'modx.user.contextTokens|a:0:{}'),('27bba01b6e24ac520e8cd8fc96af5010',1331414281,'modx.user.contextTokens|a:0:{}'),('089834a8cb00dbd5e89bd12397eafbbb',1331415071,'modx.user.contextTokens|a:0:{}'),('c6cbd3b2d8875ff0342cc4d2f755b9ed',1331415101,'modx.user.contextTokens|a:0:{}'),('460bba18d4d09f691102f7c2bb697985',1331415102,'modx.user.contextTokens|a:0:{}'),('d4a6eaf5ed80b5344a5aba8bd648ff57',1331415102,'modx.user.contextTokens|a:0:{}'),('f24953c00f9dbe1f95ede3a85c46e472',1331416267,'modx.user.contextTokens|a:0:{}'),('ffb0639b87f9c078da423df09c833338',1331417360,'modx.user.contextTokens|a:0:{}'),('a2e639cb28d39be5bc2b6873f96421af',1331419346,'modx.user.contextTokens|a:0:{}'),('a6461518167e2319b8630d5b015407f8',1331420471,'modx.user.contextTokens|a:0:{}'),('174a896e7fc70123bd0bc690a48d8fb5',1331420471,'modx.user.contextTokens|a:0:{}'),('881958941c3911a16cdeca4b8c729182',1331420474,'modx.user.contextTokens|a:0:{}'),('65a564436b92b21ecb91b3ad65faf4ae',1331420482,'modx.user.contextTokens|a:0:{}'),('e79d8cc8725ad0d14b909e7594d43701',1331420484,'modx.user.contextTokens|a:0:{}'),('46099a60b2f471cf3458cf1bba83a3fc',1331420849,'modx.user.contextTokens|a:0:{}'),('d536f9235811f4c9659eaeee102cd6d3',1331421212,'modx.user.contextTokens|a:0:{}'),('e5db1a477a154ab4a1dad026c5b9b284',1331421856,'modx.user.contextTokens|a:0:{}'),('3783c43e5bc52862de06929d06c20f37',1331421882,'modx.user.contextTokens|a:0:{}'),('e960d867e37a6c1537de27bf6a608acc',1331422203,'modx.user.contextTokens|a:0:{}'),('7b4833002528aec3bba78b72c4622ceb',1331422305,'modx.user.contextTokens|a:0:{}'),('9e071a6a768c3d77cd84cb59ce916d5c',1331423946,'modx.user.contextTokens|a:0:{}'),('3e510b70152cfde9f60e0c919a5e7c4f',1331428617,'modx.user.contextTokens|a:0:{}'),('e41a15fd870c67867338018329ce19c3',1331429195,'modx.user.contextTokens|a:0:{}'),('f495f584a7742fdc6d06e82b4c3417b0',1331431408,'modx.user.contextTokens|a:0:{}'),('01db0798f581ee2a008ec2a461bca1e7',1331433775,'modx.user.0.attributes|a:1:{s:3:\"web\";a:4:{s:16:\"modAccessContext\";a:1:{s:3:\"web\";a:1:{i:0;a:3:{s:9:\"principal\";i:0;s:9:\"authority\";s:1:\"0\";s:6:\"policy\";a:1:{s:4:\"load\";b:1;}}}}s:22:\"modAccessResourceGroup\";a:0:{}s:17:\"modAccessCategory\";a:0:{}s:28:\"sources.modAccessMediaSource\";a:0:{}}}modx.user.0.resourceGroups|a:1:{s:3:\"web\";a:0:{}}modx.user.contextTokens|a:0:{}'),('941da05e31f3f69848e1bdb40a6c30ad',1331433933,'modx.user.contextTokens|a:0:{}'),('957df8fb88677beecfe7617bc8f94fb0',1331434157,'modx.user.contextTokens|a:0:{}'),('b13f6bacc86fb940cb3bdd4ed03fb526',1331434246,'modx.user.contextTokens|a:0:{}'),('11cb23033d534b7bddeb289ad727682c',1331435213,'modx.user.contextTokens|a:0:{}'),('3b7ffe872b802d7b58cb39e8ddcce7c1',1331437958,'modx.user.contextTokens|a:0:{}'),('d7f678882583f23ef9fe6a7e8db744fe',1331437958,'modx.user.contextTokens|a:0:{}'),('576b4d05a6c59746916f926a4a583d5c',1331437958,'modx.user.contextTokens|a:0:{}'),('aa8a62b9ea0dc7e71f54cddf7bd6ecc0',1331437958,'modx.user.contextTokens|a:0:{}'),('735fcdc5f49a75074a7234892b122b7b',1331437958,'modx.user.contextTokens|a:0:{}'),('6a2ba1e342c2d645ee35c96fd58467c1',1331437967,'modx.user.contextTokens|a:0:{}'),('2525c500cd7bf2cc73256ac4b0f6e261',1331437969,'modx.user.contextTokens|a:0:{}'),('36dfec44f5e4e58393cea100bfff6588',1331437977,'modx.user.contextTokens|a:0:{}'),('58d6b4d56e1e4e11e6bbef7b373de68b',1331438076,'modx.user.contextTokens|a:0:{}'),('ce29298d2e61ba13390078fed0c63e83',1331438132,'modx.user.contextTokens|a:0:{}'),('ab6077628af858a1a4a0a06cc28debf8',1331438138,'modx.user.contextTokens|a:0:{}'),('557954562f06c783a150acf2fc12508d',1331438591,'modx.user.contextTokens|a:0:{}'),('95babea3428508c768fca16aa7abe1bf',1331438645,'modx.user.contextTokens|a:0:{}'),('462ff5ce0242c2f872257d095d75c3e8',1331439056,'modx.user.contextTokens|a:0:{}'),('13f1c50033834d70bf320a898d29dd3c',1331439768,'modx.user.contextTokens|a:0:{}'),('73b3c6480398505c27323038042bcd31',1331440293,'modx.user.contextTokens|a:0:{}'),('40da6ea5d244e2c8193b6b16cf8b74b6',1331440344,'modx.user.contextTokens|a:0:{}'),('747f0539eaa37b9f95119ca2e3d63251',1331441346,'modx.user.contextTokens|a:0:{}'),('ad9a605e40235a047f64144e9a0aea1a',1331441713,'modx.user.contextTokens|a:0:{}'),('f5ec377eefc72bc769016860392f8e51',1331443545,'modx.user.contextTokens|a:0:{}'),('f7e10380c8f9705aba4200f5771a782d',1331444032,'modx.user.contextTokens|a:0:{}'),('3f45e22f4714c97e1515baf3ef0f8f12',1331444033,'modx.user.contextTokens|a:0:{}'),('9ba189757163fea9450991cb198aa3f8',1331444981,'modx.user.contextTokens|a:0:{}'),('0c8bef6843ee5e3e9ddcf3cfb76477a3',1331444995,'modx.user.contextTokens|a:0:{}'),('a5ad45be6a8546af9f5250d2fc0d8290',1331445681,'modx.user.contextTokens|a:0:{}'),('3310731c71e9d27b0ca0559b6dd3faa7',1331446901,'modx.user.contextTokens|a:0:{}'),('1b9309706add55304a4235d53232a390',1331446920,'modx.user.contextTokens|a:0:{}'),('5685a740e1eaa8cc492b62887ca9d1f2',1331446962,'modx.user.contextTokens|a:0:{}'),('1ecb3324fa3fc3a1ca4523d106c19938',1331451712,'modx.user.contextTokens|a:0:{}'),('d94eb510c07792315a5f7caf74a75ad9',1331454245,'modx.user.contextTokens|a:0:{}'),('bda28b6d1532c028bc72154aca60227d',1331457530,'modx.user.contextTokens|a:0:{}'),('717ec61e67007012b96fc3305de25640',1331459356,'modx.user.contextTokens|a:0:{}'),('e3ed2fe826405fc51e930443654b6cdb',1331459465,'modx.user.contextTokens|a:0:{}'),('41ae9ed6168ed61d70be5a615fd1b356',1331460296,'modx.user.contextTokens|a:0:{}'),('8dcf3c9c6deb018ff04ac632d348e6fc',1331462031,'modx.user.contextTokens|a:0:{}'),('494200c2747efd9dac0a7b10c2666087',1331464631,'modx.user.contextTokens|a:0:{}'),('0db00dcba1d2e85ed4b10d8e4056d7a5',1331467284,'modx.user.contextTokens|a:0:{}'),('3b3ee174e1925f08634fb058f750eb53',1331469947,'modx.user.contextTokens|a:0:{}'),('8318038561f36a22b204cf10b2a72058',1331470172,'modx.user.contextTokens|a:0:{}'),('389ce945937861455642dc14f7c60dc1',1331473574,'modx.user.contextTokens|a:0:{}'),('4f6aebcf1b083f5ad5dfd0875b035d06',1331476934,'modx.user.contextTokens|a:0:{}'),('f466f14723529221741c848c492b2f1c',1331477026,'modx.user.contextTokens|a:0:{}'),('2664c04f5d2f3b1facf19bbf4fd51325',1331477027,'modx.user.contextTokens|a:0:{}'),('3c6946d5e350664c76fcfb5a067e1bfa',1331477111,'modx.user.contextTokens|a:0:{}'),('169f3c634aa1225495edf01396f0d4b5',1331477111,'modx.user.contextTokens|a:0:{}'),('09ba75d9bf0302cec52053710833ef44',1331479170,'modx.user.contextTokens|a:1:{s:3:\"mgr\";i:1;}modx.user.0.userGroups|a:0:{}modx.user.0.attributes|a:1:{s:3:\"mgr\";a:4:{s:16:\"modAccessContext\";a:1:{s:3:\"web\";a:1:{i:0;a:3:{s:9:\"principal\";i:0;s:9:\"authority\";s:1:\"0\";s:6:\"policy\";a:1:{s:4:\"load\";b:1;}}}}s:22:\"modAccessResourceGroup\";a:0:{}s:17:\"modAccessCategory\";a:0:{}s:28:\"sources.modAccessMediaSource\";a:0:{}}}modx.user.0.resourceGroups|a:1:{s:3:\"mgr\";a:0:{}}modx.mgr.user.token|s:52:\"modx4f576058f38bd1.70473967_14f5cc28192a726.97569314\";modx.mgr.session.cookie.lifetime|i:604800;modx.user.1.attributes|a:1:{s:3:\"mgr\";a:4:{s:16:\"modAccessContext\";a:2:{s:3:\"mgr\";a:1:{i:0;a:3:{s:9:\"principal\";s:1:\"1\";s:9:\"authority\";s:1:\"0\";s:6:\"policy\";a:172:{s:5:\"about\";b:1;s:18:\"access_permissions\";b:1;s:7:\"actions\";b:1;s:15:\"change_password\";b:1;s:14:\"change_profile\";b:1;s:8:\"charsets\";b:1;s:9:\"class_map\";b:1;s:10:\"components\";b:1;s:13:\"content_types\";b:1;s:9:\"countries\";b:1;s:6:\"create\";b:1;s:7:\"credits\";b:1;s:15:\"customize_forms\";b:1;s:10:\"dashboards\";b:1;s:8:\"database\";b:1;s:17:\"database_truncate\";b:1;s:15:\"delete_category\";b:1;s:12:\"delete_chunk\";b:1;s:14:\"delete_context\";b:1;s:15:\"delete_document\";b:1;s:15:\"delete_eventlog\";b:1;s:13:\"delete_plugin\";b:1;s:18:\"delete_propertyset\";b:1;s:11:\"delete_role\";b:1;s:14:\"delete_snippet\";b:1;s:15:\"delete_template\";b:1;s:9:\"delete_tv\";b:1;s:11:\"delete_user\";b:1;s:15:\"directory_chmod\";b:1;s:16:\"directory_create\";b:1;s:14:\"directory_list\";b:1;s:16:\"directory_remove\";b:1;s:16:\"directory_update\";b:1;s:13:\"edit_category\";b:1;s:10:\"edit_chunk\";b:1;s:12:\"edit_context\";b:1;s:13:\"edit_document\";b:1;s:11:\"edit_locked\";b:1;s:11:\"edit_plugin\";b:1;s:16:\"edit_propertyset\";b:1;s:9:\"edit_role\";b:1;s:12:\"edit_snippet\";b:1;s:13:\"edit_template\";b:1;s:7:\"edit_tv\";b:1;s:9:\"edit_user\";b:1;s:12:\"element_tree\";b:1;s:11:\"empty_cache\";b:1;s:15:\"error_log_erase\";b:1;s:14:\"error_log_view\";b:1;s:13:\"export_static\";b:1;s:11:\"file_create\";b:1;s:9:\"file_list\";b:1;s:12:\"file_manager\";b:1;s:11:\"file_remove\";b:1;s:9:\"file_tree\";b:1;s:11:\"file_update\";b:1;s:11:\"file_upload\";b:1;s:9:\"file_view\";b:1;s:14:\"flush_sessions\";b:1;s:6:\"frames\";b:1;s:4:\"help\";b:1;s:4:\"home\";b:1;s:13:\"import_static\";b:1;s:9:\"languages\";b:1;s:8:\"lexicons\";b:1;s:4:\"list\";b:1;s:4:\"load\";b:1;s:6:\"logout\";b:1;s:4:\"logs\";b:1;s:5:\"menus\";b:1;s:12:\"menu_reports\";b:1;s:13:\"menu_security\";b:1;s:9:\"menu_site\";b:1;s:12:\"menu_support\";b:1;s:11:\"menu_system\";b:1;s:10:\"menu_tools\";b:1;s:9:\"menu_user\";b:1;s:8:\"messages\";b:1;s:10:\"namespaces\";b:1;s:12:\"new_category\";b:1;s:9:\"new_chunk\";b:1;s:11:\"new_context\";b:1;s:12:\"new_document\";b:1;s:20:\"new_document_in_root\";b:1;s:10:\"new_plugin\";b:1;s:15:\"new_propertyset\";b:1;s:8:\"new_role\";b:1;s:11:\"new_snippet\";b:1;s:19:\"new_static_resource\";b:1;s:11:\"new_symlink\";b:1;s:12:\"new_template\";b:1;s:6:\"new_tv\";b:1;s:8:\"new_user\";b:1;s:11:\"new_weblink\";b:1;s:8:\"packages\";b:1;s:13:\"policy_delete\";b:1;s:11:\"policy_edit\";b:1;s:10:\"policy_new\";b:1;s:11:\"policy_save\";b:1;s:22:\"policy_template_delete\";b:1;s:20:\"policy_template_edit\";b:1;s:19:\"policy_template_new\";b:1;s:20:\"policy_template_save\";b:1;s:20:\"policy_template_view\";b:1;s:11:\"policy_view\";b:1;s:13:\"property_sets\";b:1;s:9:\"providers\";b:1;s:16:\"publish_document\";b:1;s:13:\"purge_deleted\";b:1;s:6:\"remove\";b:1;s:12:\"remove_locks\";b:1;s:18:\"resource_duplicate\";b:1;s:20:\"resourcegroup_delete\";b:1;s:18:\"resourcegroup_edit\";b:1;s:17:\"resourcegroup_new\";b:1;s:27:\"resourcegroup_resource_edit\";b:1;s:27:\"resourcegroup_resource_list\";b:1;s:18:\"resourcegroup_save\";b:1;s:18:\"resourcegroup_view\";b:1;s:21:\"resource_quick_create\";b:1;s:21:\"resource_quick_update\";b:1;s:13:\"resource_tree\";b:1;s:4:\"save\";b:1;s:13:\"save_category\";b:1;s:10:\"save_chunk\";b:1;s:12:\"save_context\";b:1;s:13:\"save_document\";b:1;s:11:\"save_plugin\";b:1;s:16:\"save_propertyset\";b:1;s:9:\"save_role\";b:1;s:12:\"save_snippet\";b:1;s:13:\"save_template\";b:1;s:7:\"save_tv\";b:1;s:9:\"save_user\";b:1;s:6:\"search\";b:1;s:8:\"settings\";b:1;s:7:\"sources\";b:1;s:13:\"source_delete\";b:1;s:11:\"source_edit\";b:1;s:11:\"source_save\";b:1;s:11:\"source_view\";b:1;s:11:\"steal_locks\";b:1;s:21:\"tree_show_element_ids\";b:1;s:22:\"tree_show_resource_ids\";b:1;s:17:\"undelete_document\";b:1;s:25:\"unlock_element_properties\";b:1;s:18:\"unpublish_document\";b:1;s:16:\"usergroup_delete\";b:1;s:14:\"usergroup_edit\";b:1;s:13:\"usergroup_new\";b:1;s:14:\"usergroup_save\";b:1;s:19:\"usergroup_user_edit\";b:1;s:19:\"usergroup_user_list\";b:1;s:14:\"usergroup_view\";b:1;s:4:\"view\";b:1;s:13:\"view_category\";b:1;s:10:\"view_chunk\";b:1;s:12:\"view_context\";b:1;s:13:\"view_document\";b:1;s:12:\"view_element\";b:1;s:13:\"view_eventlog\";b:1;s:12:\"view_offline\";b:1;s:11:\"view_plugin\";b:1;s:16:\"view_propertyset\";b:1;s:9:\"view_role\";b:1;s:12:\"view_snippet\";b:1;s:12:\"view_sysinfo\";b:1;s:13:\"view_template\";b:1;s:7:\"view_tv\";b:1;s:16:\"view_unpublished\";b:1;s:9:\"view_user\";b:1;s:10:\"workspaces\";b:1;}}}s:3:\"web\";a:1:{i:0;a:3:{s:9:\"principal\";s:1:\"1\";s:9:\"authority\";s:1:\"0\";s:6:\"policy\";a:172:{s:5:\"about\";b:1;s:18:\"access_permissions\";b:1;s:7:\"actions\";b:1;s:15:\"change_password\";b:1;s:14:\"change_profile\";b:1;s:8:\"charsets\";b:1;s:9:\"class_map\";b:1;s:10:\"components\";b:1;s:13:\"content_types\";b:1;s:9:\"countries\";b:1;s:6:\"create\";b:1;s:7:\"credits\";b:1;s:15:\"customize_forms\";b:1;s:10:\"dashboards\";b:1;s:8:\"database\";b:1;s:17:\"database_truncate\";b:1;s:15:\"delete_category\";b:1;s:12:\"delete_chunk\";b:1;s:14:\"delete_context\";b:1;s:15:\"delete_document\";b:1;s:15:\"delete_eventlog\";b:1;s:13:\"delete_plugin\";b:1;s:18:\"delete_propertyset\";b:1;s:11:\"delete_role\";b:1;s:14:\"delete_snippet\";b:1;s:15:\"delete_template\";b:1;s:9:\"delete_tv\";b:1;s:11:\"delete_user\";b:1;s:15:\"directory_chmod\";b:1;s:16:\"directory_create\";b:1;s:14:\"directory_list\";b:1;s:16:\"directory_remove\";b:1;s:16:\"directory_update\";b:1;s:13:\"edit_category\";b:1;s:10:\"edit_chunk\";b:1;s:12:\"edit_context\";b:1;s:13:\"edit_document\";b:1;s:11:\"edit_locked\";b:1;s:11:\"edit_plugin\";b:1;s:16:\"edit_propertyset\";b:1;s:9:\"edit_role\";b:1;s:12:\"edit_snippet\";b:1;s:13:\"edit_template\";b:1;s:7:\"edit_tv\";b:1;s:9:\"edit_user\";b:1;s:12:\"element_tree\";b:1;s:11:\"empty_cache\";b:1;s:15:\"error_log_erase\";b:1;s:14:\"error_log_view\";b:1;s:13:\"export_static\";b:1;s:11:\"file_create\";b:1;s:9:\"file_list\";b:1;s:12:\"file_manager\";b:1;s:11:\"file_remove\";b:1;s:9:\"file_tree\";b:1;s:11:\"file_update\";b:1;s:11:\"file_upload\";b:1;s:9:\"file_view\";b:1;s:14:\"flush_sessions\";b:1;s:6:\"frames\";b:1;s:4:\"help\";b:1;s:4:\"home\";b:1;s:13:\"import_static\";b:1;s:9:\"languages\";b:1;s:8:\"lexicons\";b:1;s:4:\"list\";b:1;s:4:\"load\";b:1;s:6:\"logout\";b:1;s:4:\"logs\";b:1;s:5:\"menus\";b:1;s:12:\"menu_reports\";b:1;s:13:\"menu_security\";b:1;s:9:\"menu_site\";b:1;s:12:\"menu_support\";b:1;s:11:\"menu_system\";b:1;s:10:\"menu_tools\";b:1;s:9:\"menu_user\";b:1;s:8:\"messages\";b:1;s:10:\"namespaces\";b:1;s:12:\"new_category\";b:1;s:9:\"new_chunk\";b:1;s:11:\"new_context\";b:1;s:12:\"new_document\";b:1;s:20:\"new_document_in_root\";b:1;s:10:\"new_plugin\";b:1;s:15:\"new_propertyset\";b:1;s:8:\"new_role\";b:1;s:11:\"new_snippet\";b:1;s:19:\"new_static_resource\";b:1;s:11:\"new_symlink\";b:1;s:12:\"new_template\";b:1;s:6:\"new_tv\";b:1;s:8:\"new_user\";b:1;s:11:\"new_weblink\";b:1;s:8:\"packages\";b:1;s:13:\"policy_delete\";b:1;s:11:\"policy_edit\";b:1;s:10:\"policy_new\";b:1;s:11:\"policy_save\";b:1;s:22:\"policy_template_delete\";b:1;s:20:\"policy_template_edit\";b:1;s:19:\"policy_template_new\";b:1;s:20:\"policy_template_save\";b:1;s:20:\"policy_template_view\";b:1;s:11:\"policy_view\";b:1;s:13:\"property_sets\";b:1;s:9:\"providers\";b:1;s:16:\"publish_document\";b:1;s:13:\"purge_deleted\";b:1;s:6:\"remove\";b:1;s:12:\"remove_locks\";b:1;s:18:\"resource_duplicate\";b:1;s:20:\"resourcegroup_delete\";b:1;s:18:\"resourcegroup_edit\";b:1;s:17:\"resourcegroup_new\";b:1;s:27:\"resourcegroup_resource_edit\";b:1;s:27:\"resourcegroup_resource_list\";b:1;s:18:\"resourcegroup_save\";b:1;s:18:\"resourcegroup_view\";b:1;s:21:\"resource_quick_create\";b:1;s:21:\"resource_quick_update\";b:1;s:13:\"resource_tree\";b:1;s:4:\"save\";b:1;s:13:\"save_category\";b:1;s:10:\"save_chunk\";b:1;s:12:\"save_context\";b:1;s:13:\"save_document\";b:1;s:11:\"save_plugin\";b:1;s:16:\"save_propertyset\";b:1;s:9:\"save_role\";b:1;s:12:\"save_snippet\";b:1;s:13:\"save_template\";b:1;s:7:\"save_tv\";b:1;s:9:\"save_user\";b:1;s:6:\"search\";b:1;s:8:\"settings\";b:1;s:7:\"sources\";b:1;s:13:\"source_delete\";b:1;s:11:\"source_edit\";b:1;s:11:\"source_save\";b:1;s:11:\"source_view\";b:1;s:11:\"steal_locks\";b:1;s:21:\"tree_show_element_ids\";b:1;s:22:\"tree_show_resource_ids\";b:1;s:17:\"undelete_document\";b:1;s:25:\"unlock_element_properties\";b:1;s:18:\"unpublish_document\";b:1;s:16:\"usergroup_delete\";b:1;s:14:\"usergroup_edit\";b:1;s:13:\"usergroup_new\";b:1;s:14:\"usergroup_save\";b:1;s:19:\"usergroup_user_edit\";b:1;s:19:\"usergroup_user_list\";b:1;s:14:\"usergroup_view\";b:1;s:4:\"view\";b:1;s:13:\"view_category\";b:1;s:10:\"view_chunk\";b:1;s:12:\"view_context\";b:1;s:13:\"view_document\";b:1;s:12:\"view_element\";b:1;s:13:\"view_eventlog\";b:1;s:12:\"view_offline\";b:1;s:11:\"view_plugin\";b:1;s:16:\"view_propertyset\";b:1;s:9:\"view_role\";b:1;s:12:\"view_snippet\";b:1;s:12:\"view_sysinfo\";b:1;s:13:\"view_template\";b:1;s:7:\"view_tv\";b:1;s:16:\"view_unpublished\";b:1;s:9:\"view_user\";b:1;s:10:\"workspaces\";b:1;}}}}s:22:\"modAccessResourceGroup\";a:0:{}s:17:\"modAccessCategory\";a:0:{}s:28:\"sources.modAccessMediaSource\";a:0:{}}}modx.user.1.resourceGroups|a:1:{s:3:\"mgr\";a:0:{}}modx.user.1.userGroups|a:1:{i:0;i:1;}'),('57c7ad64eca62fb1b0f555e14b639941',1331479896,'modx.user.contextTokens|a:1:{s:3:\"mgr\";i:1;}modx.user.0.userGroups|a:0:{}modx.user.0.attributes|a:1:{s:3:\"mgr\";a:4:{s:16:\"modAccessContext\";a:1:{s:3:\"web\";a:1:{i:0;a:3:{s:9:\"principal\";i:0;s:9:\"authority\";s:1:\"0\";s:6:\"policy\";a:1:{s:4:\"load\";b:1;}}}}s:22:\"modAccessResourceGroup\";a:0:{}s:17:\"modAccessCategory\";a:0:{}s:28:\"sources.modAccessMediaSource\";a:0:{}}}modx.user.0.resourceGroups|a:1:{s:3:\"mgr\";a:0:{}}modx.mgr.user.token|s:52:\"modx4f576058f38bd1.70473967_14f5cc557b54ca0.96715161\";modx.mgr.session.cookie.lifetime|i:0;modx.user.1.attributes|a:1:{s:3:\"mgr\";a:4:{s:16:\"modAccessContext\";a:2:{s:3:\"mgr\";a:1:{i:0;a:3:{s:9:\"principal\";s:1:\"1\";s:9:\"authority\";s:1:\"0\";s:6:\"policy\";a:172:{s:5:\"about\";b:1;s:18:\"access_permissions\";b:1;s:7:\"actions\";b:1;s:15:\"change_password\";b:1;s:14:\"change_profile\";b:1;s:8:\"charsets\";b:1;s:9:\"class_map\";b:1;s:10:\"components\";b:1;s:13:\"content_types\";b:1;s:9:\"countries\";b:1;s:6:\"create\";b:1;s:7:\"credits\";b:1;s:15:\"customize_forms\";b:1;s:10:\"dashboards\";b:1;s:8:\"database\";b:1;s:17:\"database_truncate\";b:1;s:15:\"delete_category\";b:1;s:12:\"delete_chunk\";b:1;s:14:\"delete_context\";b:1;s:15:\"delete_document\";b:1;s:15:\"delete_eventlog\";b:1;s:13:\"delete_plugin\";b:1;s:18:\"delete_propertyset\";b:1;s:11:\"delete_role\";b:1;s:14:\"delete_snippet\";b:1;s:15:\"delete_template\";b:1;s:9:\"delete_tv\";b:1;s:11:\"delete_user\";b:1;s:15:\"directory_chmod\";b:1;s:16:\"directory_create\";b:1;s:14:\"directory_list\";b:1;s:16:\"directory_remove\";b:1;s:16:\"directory_update\";b:1;s:13:\"edit_category\";b:1;s:10:\"edit_chunk\";b:1;s:12:\"edit_context\";b:1;s:13:\"edit_document\";b:1;s:11:\"edit_locked\";b:1;s:11:\"edit_plugin\";b:1;s:16:\"edit_propertyset\";b:1;s:9:\"edit_role\";b:1;s:12:\"edit_snippet\";b:1;s:13:\"edit_template\";b:1;s:7:\"edit_tv\";b:1;s:9:\"edit_user\";b:1;s:12:\"element_tree\";b:1;s:11:\"empty_cache\";b:1;s:15:\"error_log_erase\";b:1;s:14:\"error_log_view\";b:1;s:13:\"export_static\";b:1;s:11:\"file_create\";b:1;s:9:\"file_list\";b:1;s:12:\"file_manager\";b:1;s:11:\"file_remove\";b:1;s:9:\"file_tree\";b:1;s:11:\"file_update\";b:1;s:11:\"file_upload\";b:1;s:9:\"file_view\";b:1;s:14:\"flush_sessions\";b:1;s:6:\"frames\";b:1;s:4:\"help\";b:1;s:4:\"home\";b:1;s:13:\"import_static\";b:1;s:9:\"languages\";b:1;s:8:\"lexicons\";b:1;s:4:\"list\";b:1;s:4:\"load\";b:1;s:6:\"logout\";b:1;s:4:\"logs\";b:1;s:5:\"menus\";b:1;s:12:\"menu_reports\";b:1;s:13:\"menu_security\";b:1;s:9:\"menu_site\";b:1;s:12:\"menu_support\";b:1;s:11:\"menu_system\";b:1;s:10:\"menu_tools\";b:1;s:9:\"menu_user\";b:1;s:8:\"messages\";b:1;s:10:\"namespaces\";b:1;s:12:\"new_category\";b:1;s:9:\"new_chunk\";b:1;s:11:\"new_context\";b:1;s:12:\"new_document\";b:1;s:20:\"new_document_in_root\";b:1;s:10:\"new_plugin\";b:1;s:15:\"new_propertyset\";b:1;s:8:\"new_role\";b:1;s:11:\"new_snippet\";b:1;s:19:\"new_static_resource\";b:1;s:11:\"new_symlink\";b:1;s:12:\"new_template\";b:1;s:6:\"new_tv\";b:1;s:8:\"new_user\";b:1;s:11:\"new_weblink\";b:1;s:8:\"packages\";b:1;s:13:\"policy_delete\";b:1;s:11:\"policy_edit\";b:1;s:10:\"policy_new\";b:1;s:11:\"policy_save\";b:1;s:22:\"policy_template_delete\";b:1;s:20:\"policy_template_edit\";b:1;s:19:\"policy_template_new\";b:1;s:20:\"policy_template_save\";b:1;s:20:\"policy_template_view\";b:1;s:11:\"policy_view\";b:1;s:13:\"property_sets\";b:1;s:9:\"providers\";b:1;s:16:\"publish_document\";b:1;s:13:\"purge_deleted\";b:1;s:6:\"remove\";b:1;s:12:\"remove_locks\";b:1;s:18:\"resource_duplicate\";b:1;s:20:\"resourcegroup_delete\";b:1;s:18:\"resourcegroup_edit\";b:1;s:17:\"resourcegroup_new\";b:1;s:27:\"resourcegroup_resource_edit\";b:1;s:27:\"resourcegroup_resource_list\";b:1;s:18:\"resourcegroup_save\";b:1;s:18:\"resourcegroup_view\";b:1;s:21:\"resource_quick_create\";b:1;s:21:\"resource_quick_update\";b:1;s:13:\"resource_tree\";b:1;s:4:\"save\";b:1;s:13:\"save_category\";b:1;s:10:\"save_chunk\";b:1;s:12:\"save_context\";b:1;s:13:\"save_document\";b:1;s:11:\"save_plugin\";b:1;s:16:\"save_propertyset\";b:1;s:9:\"save_role\";b:1;s:12:\"save_snippet\";b:1;s:13:\"save_template\";b:1;s:7:\"save_tv\";b:1;s:9:\"save_user\";b:1;s:6:\"search\";b:1;s:8:\"settings\";b:1;s:7:\"sources\";b:1;s:13:\"source_delete\";b:1;s:11:\"source_edit\";b:1;s:11:\"source_save\";b:1;s:11:\"source_view\";b:1;s:11:\"steal_locks\";b:1;s:21:\"tree_show_element_ids\";b:1;s:22:\"tree_show_resource_ids\";b:1;s:17:\"undelete_document\";b:1;s:25:\"unlock_element_properties\";b:1;s:18:\"unpublish_document\";b:1;s:16:\"usergroup_delete\";b:1;s:14:\"usergroup_edit\";b:1;s:13:\"usergroup_new\";b:1;s:14:\"usergroup_save\";b:1;s:19:\"usergroup_user_edit\";b:1;s:19:\"usergroup_user_list\";b:1;s:14:\"usergroup_view\";b:1;s:4:\"view\";b:1;s:13:\"view_category\";b:1;s:10:\"view_chunk\";b:1;s:12:\"view_context\";b:1;s:13:\"view_document\";b:1;s:12:\"view_element\";b:1;s:13:\"view_eventlog\";b:1;s:12:\"view_offline\";b:1;s:11:\"view_plugin\";b:1;s:16:\"view_propertyset\";b:1;s:9:\"view_role\";b:1;s:12:\"view_snippet\";b:1;s:12:\"view_sysinfo\";b:1;s:13:\"view_template\";b:1;s:7:\"view_tv\";b:1;s:16:\"view_unpublished\";b:1;s:9:\"view_user\";b:1;s:10:\"workspaces\";b:1;}}}s:3:\"web\";a:1:{i:0;a:3:{s:9:\"principal\";s:1:\"1\";s:9:\"authority\";s:1:\"0\";s:6:\"policy\";a:172:{s:5:\"about\";b:1;s:18:\"access_permissions\";b:1;s:7:\"actions\";b:1;s:15:\"change_password\";b:1;s:14:\"change_profile\";b:1;s:8:\"charsets\";b:1;s:9:\"class_map\";b:1;s:10:\"components\";b:1;s:13:\"content_types\";b:1;s:9:\"countries\";b:1;s:6:\"create\";b:1;s:7:\"credits\";b:1;s:15:\"customize_forms\";b:1;s:10:\"dashboards\";b:1;s:8:\"database\";b:1;s:17:\"database_truncate\";b:1;s:15:\"delete_category\";b:1;s:12:\"delete_chunk\";b:1;s:14:\"delete_context\";b:1;s:15:\"delete_document\";b:1;s:15:\"delete_eventlog\";b:1;s:13:\"delete_plugin\";b:1;s:18:\"delete_propertyset\";b:1;s:11:\"delete_role\";b:1;s:14:\"delete_snippet\";b:1;s:15:\"delete_template\";b:1;s:9:\"delete_tv\";b:1;s:11:\"delete_user\";b:1;s:15:\"directory_chmod\";b:1;s:16:\"directory_create\";b:1;s:14:\"directory_list\";b:1;s:16:\"directory_remove\";b:1;s:16:\"directory_update\";b:1;s:13:\"edit_category\";b:1;s:10:\"edit_chunk\";b:1;s:12:\"edit_context\";b:1;s:13:\"edit_document\";b:1;s:11:\"edit_locked\";b:1;s:11:\"edit_plugin\";b:1;s:16:\"edit_propertyset\";b:1;s:9:\"edit_role\";b:1;s:12:\"edit_snippet\";b:1;s:13:\"edit_template\";b:1;s:7:\"edit_tv\";b:1;s:9:\"edit_user\";b:1;s:12:\"element_tree\";b:1;s:11:\"empty_cache\";b:1;s:15:\"error_log_erase\";b:1;s:14:\"error_log_view\";b:1;s:13:\"export_static\";b:1;s:11:\"file_create\";b:1;s:9:\"file_list\";b:1;s:12:\"file_manager\";b:1;s:11:\"file_remove\";b:1;s:9:\"file_tree\";b:1;s:11:\"file_update\";b:1;s:11:\"file_upload\";b:1;s:9:\"file_view\";b:1;s:14:\"flush_sessions\";b:1;s:6:\"frames\";b:1;s:4:\"help\";b:1;s:4:\"home\";b:1;s:13:\"import_static\";b:1;s:9:\"languages\";b:1;s:8:\"lexicons\";b:1;s:4:\"list\";b:1;s:4:\"load\";b:1;s:6:\"logout\";b:1;s:4:\"logs\";b:1;s:5:\"menus\";b:1;s:12:\"menu_reports\";b:1;s:13:\"menu_security\";b:1;s:9:\"menu_site\";b:1;s:12:\"menu_support\";b:1;s:11:\"menu_system\";b:1;s:10:\"menu_tools\";b:1;s:9:\"menu_user\";b:1;s:8:\"messages\";b:1;s:10:\"namespaces\";b:1;s:12:\"new_category\";b:1;s:9:\"new_chunk\";b:1;s:11:\"new_context\";b:1;s:12:\"new_document\";b:1;s:20:\"new_document_in_root\";b:1;s:10:\"new_plugin\";b:1;s:15:\"new_propertyset\";b:1;s:8:\"new_role\";b:1;s:11:\"new_snippet\";b:1;s:19:\"new_static_resource\";b:1;s:11:\"new_symlink\";b:1;s:12:\"new_template\";b:1;s:6:\"new_tv\";b:1;s:8:\"new_user\";b:1;s:11:\"new_weblink\";b:1;s:8:\"packages\";b:1;s:13:\"policy_delete\";b:1;s:11:\"policy_edit\";b:1;s:10:\"policy_new\";b:1;s:11:\"policy_save\";b:1;s:22:\"policy_template_delete\";b:1;s:20:\"policy_template_edit\";b:1;s:19:\"policy_template_new\";b:1;s:20:\"policy_template_save\";b:1;s:20:\"policy_template_view\";b:1;s:11:\"policy_view\";b:1;s:13:\"property_sets\";b:1;s:9:\"providers\";b:1;s:16:\"publish_document\";b:1;s:13:\"purge_deleted\";b:1;s:6:\"remove\";b:1;s:12:\"remove_locks\";b:1;s:18:\"resource_duplicate\";b:1;s:20:\"resourcegroup_delete\";b:1;s:18:\"resourcegroup_edit\";b:1;s:17:\"resourcegroup_new\";b:1;s:27:\"resourcegroup_resource_edit\";b:1;s:27:\"resourcegroup_resource_list\";b:1;s:18:\"resourcegroup_save\";b:1;s:18:\"resourcegroup_view\";b:1;s:21:\"resource_quick_create\";b:1;s:21:\"resource_quick_update\";b:1;s:13:\"resource_tree\";b:1;s:4:\"save\";b:1;s:13:\"save_category\";b:1;s:10:\"save_chunk\";b:1;s:12:\"save_context\";b:1;s:13:\"save_document\";b:1;s:11:\"save_plugin\";b:1;s:16:\"save_propertyset\";b:1;s:9:\"save_role\";b:1;s:12:\"save_snippet\";b:1;s:13:\"save_template\";b:1;s:7:\"save_tv\";b:1;s:9:\"save_user\";b:1;s:6:\"search\";b:1;s:8:\"settings\";b:1;s:7:\"sources\";b:1;s:13:\"source_delete\";b:1;s:11:\"source_edit\";b:1;s:11:\"source_save\";b:1;s:11:\"source_view\";b:1;s:11:\"steal_locks\";b:1;s:21:\"tree_show_element_ids\";b:1;s:22:\"tree_show_resource_ids\";b:1;s:17:\"undelete_document\";b:1;s:25:\"unlock_element_properties\";b:1;s:18:\"unpublish_document\";b:1;s:16:\"usergroup_delete\";b:1;s:14:\"usergroup_edit\";b:1;s:13:\"usergroup_new\";b:1;s:14:\"usergroup_save\";b:1;s:19:\"usergroup_user_edit\";b:1;s:19:\"usergroup_user_list\";b:1;s:14:\"usergroup_view\";b:1;s:4:\"view\";b:1;s:13:\"view_category\";b:1;s:10:\"view_chunk\";b:1;s:12:\"view_context\";b:1;s:13:\"view_document\";b:1;s:12:\"view_element\";b:1;s:13:\"view_eventlog\";b:1;s:12:\"view_offline\";b:1;s:11:\"view_plugin\";b:1;s:16:\"view_propertyset\";b:1;s:9:\"view_role\";b:1;s:12:\"view_snippet\";b:1;s:12:\"view_sysinfo\";b:1;s:13:\"view_template\";b:1;s:7:\"view_tv\";b:1;s:16:\"view_unpublished\";b:1;s:9:\"view_user\";b:1;s:10:\"workspaces\";b:1;}}}}s:22:\"modAccessResourceGroup\";a:0:{}s:17:\"modAccessCategory\";a:0:{}s:28:\"sources.modAccessMediaSource\";a:0:{}}}modx.user.1.resourceGroups|a:1:{s:3:\"mgr\";a:0:{}}modx.user.1.userGroups|a:1:{i:0;i:1;}'),('961ed29ac099e264d609eb87ac46b0a1',1331481439,'modx.user.contextTokens|a:0:{}modx.user.0.userGroups|a:0:{}modx.user.0.attributes|a:1:{s:3:\"mgr\";a:4:{s:16:\"modAccessContext\";a:1:{s:3:\"web\";a:1:{i:0;a:3:{s:9:\"principal\";i:0;s:9:\"authority\";s:1:\"0\";s:6:\"policy\";a:1:{s:4:\"load\";b:1;}}}}s:22:\"modAccessResourceGroup\";a:0:{}s:17:\"modAccessCategory\";a:0:{}s:28:\"sources.modAccessMediaSource\";a:0:{}}}modx.user.0.resourceGroups|a:1:{s:3:\"mgr\";a:0:{}}'),('c4ac6ac86114fe318c283bac22148a0c',1331482553,'modx.user.contextTokens|a:0:{}'),('2f3da6be3cdcec84f4a2a0232251c729',1331482798,'modx.user.contextTokens|a:0:{}'),('cd0a9658fbad1b64b15bd8280d5a21a0',1331482876,'modx.user.contextTokens|a:0:{}'),('bdce403d5c1a2a1fb265287612e9776d',1331484868,'modx.user.contextTokens|a:0:{}'),('e70988d0b4f4d1c71fe3bb420a1a6f6f',1331491955,'modx.user.contextTokens|a:1:{s:3:\"mgr\";i:1;}modx.user.0.userGroups|a:0:{}modx.user.0.attributes|a:1:{s:3:\"mgr\";a:4:{s:16:\"modAccessContext\";a:1:{s:3:\"web\";a:1:{i:0;a:3:{s:9:\"principal\";i:0;s:9:\"authority\";s:1:\"0\";s:6:\"policy\";a:1:{s:4:\"load\";b:1;}}}}s:22:\"modAccessResourceGroup\";a:0:{}s:17:\"modAccessCategory\";a:0:{}s:28:\"sources.modAccessMediaSource\";a:0:{}}}modx.user.0.resourceGroups|a:1:{s:3:\"mgr\";a:0:{}}modx.mgr.user.token|s:52:\"modx4f576058f38bd1.70473967_14f5cf472e015c1.65609686\";modx.mgr.session.cookie.lifetime|i:604800;modx.user.1.attributes|a:1:{s:3:\"mgr\";a:4:{s:16:\"modAccessContext\";a:2:{s:3:\"mgr\";a:1:{i:0;a:3:{s:9:\"principal\";s:1:\"1\";s:9:\"authority\";s:1:\"0\";s:6:\"policy\";a:172:{s:5:\"about\";b:1;s:18:\"access_permissions\";b:1;s:7:\"actions\";b:1;s:15:\"change_password\";b:1;s:14:\"change_profile\";b:1;s:8:\"charsets\";b:1;s:9:\"class_map\";b:1;s:10:\"components\";b:1;s:13:\"content_types\";b:1;s:9:\"countries\";b:1;s:6:\"create\";b:1;s:7:\"credits\";b:1;s:15:\"customize_forms\";b:1;s:10:\"dashboards\";b:1;s:8:\"database\";b:1;s:17:\"database_truncate\";b:1;s:15:\"delete_category\";b:1;s:12:\"delete_chunk\";b:1;s:14:\"delete_context\";b:1;s:15:\"delete_document\";b:1;s:15:\"delete_eventlog\";b:1;s:13:\"delete_plugin\";b:1;s:18:\"delete_propertyset\";b:1;s:11:\"delete_role\";b:1;s:14:\"delete_snippet\";b:1;s:15:\"delete_template\";b:1;s:9:\"delete_tv\";b:1;s:11:\"delete_user\";b:1;s:15:\"directory_chmod\";b:1;s:16:\"directory_create\";b:1;s:14:\"directory_list\";b:1;s:16:\"directory_remove\";b:1;s:16:\"directory_update\";b:1;s:13:\"edit_category\";b:1;s:10:\"edit_chunk\";b:1;s:12:\"edit_context\";b:1;s:13:\"edit_document\";b:1;s:11:\"edit_locked\";b:1;s:11:\"edit_plugin\";b:1;s:16:\"edit_propertyset\";b:1;s:9:\"edit_role\";b:1;s:12:\"edit_snippet\";b:1;s:13:\"edit_template\";b:1;s:7:\"edit_tv\";b:1;s:9:\"edit_user\";b:1;s:12:\"element_tree\";b:1;s:11:\"empty_cache\";b:1;s:15:\"error_log_erase\";b:1;s:14:\"error_log_view\";b:1;s:13:\"export_static\";b:1;s:11:\"file_create\";b:1;s:9:\"file_list\";b:1;s:12:\"file_manager\";b:1;s:11:\"file_remove\";b:1;s:9:\"file_tree\";b:1;s:11:\"file_update\";b:1;s:11:\"file_upload\";b:1;s:9:\"file_view\";b:1;s:14:\"flush_sessions\";b:1;s:6:\"frames\";b:1;s:4:\"help\";b:1;s:4:\"home\";b:1;s:13:\"import_static\";b:1;s:9:\"languages\";b:1;s:8:\"lexicons\";b:1;s:4:\"list\";b:1;s:4:\"load\";b:1;s:6:\"logout\";b:1;s:4:\"logs\";b:1;s:5:\"menus\";b:1;s:12:\"menu_reports\";b:1;s:13:\"menu_security\";b:1;s:9:\"menu_site\";b:1;s:12:\"menu_support\";b:1;s:11:\"menu_system\";b:1;s:10:\"menu_tools\";b:1;s:9:\"menu_user\";b:1;s:8:\"messages\";b:1;s:10:\"namespaces\";b:1;s:12:\"new_category\";b:1;s:9:\"new_chunk\";b:1;s:11:\"new_context\";b:1;s:12:\"new_document\";b:1;s:20:\"new_document_in_root\";b:1;s:10:\"new_plugin\";b:1;s:15:\"new_propertyset\";b:1;s:8:\"new_role\";b:1;s:11:\"new_snippet\";b:1;s:19:\"new_static_resource\";b:1;s:11:\"new_symlink\";b:1;s:12:\"new_template\";b:1;s:6:\"new_tv\";b:1;s:8:\"new_user\";b:1;s:11:\"new_weblink\";b:1;s:8:\"packages\";b:1;s:13:\"policy_delete\";b:1;s:11:\"policy_edit\";b:1;s:10:\"policy_new\";b:1;s:11:\"policy_save\";b:1;s:22:\"policy_template_delete\";b:1;s:20:\"policy_template_edit\";b:1;s:19:\"policy_template_new\";b:1;s:20:\"policy_template_save\";b:1;s:20:\"policy_template_view\";b:1;s:11:\"policy_view\";b:1;s:13:\"property_sets\";b:1;s:9:\"providers\";b:1;s:16:\"publish_document\";b:1;s:13:\"purge_deleted\";b:1;s:6:\"remove\";b:1;s:12:\"remove_locks\";b:1;s:18:\"resource_duplicate\";b:1;s:20:\"resourcegroup_delete\";b:1;s:18:\"resourcegroup_edit\";b:1;s:17:\"resourcegroup_new\";b:1;s:27:\"resourcegroup_resource_edit\";b:1;s:27:\"resourcegroup_resource_list\";b:1;s:18:\"resourcegroup_save\";b:1;s:18:\"resourcegroup_view\";b:1;s:21:\"resource_quick_create\";b:1;s:21:\"resource_quick_update\";b:1;s:13:\"resource_tree\";b:1;s:4:\"save\";b:1;s:13:\"save_category\";b:1;s:10:\"save_chunk\";b:1;s:12:\"save_context\";b:1;s:13:\"save_document\";b:1;s:11:\"save_plugin\";b:1;s:16:\"save_propertyset\";b:1;s:9:\"save_role\";b:1;s:12:\"save_snippet\";b:1;s:13:\"save_template\";b:1;s:7:\"save_tv\";b:1;s:9:\"save_user\";b:1;s:6:\"search\";b:1;s:8:\"settings\";b:1;s:7:\"sources\";b:1;s:13:\"source_delete\";b:1;s:11:\"source_edit\";b:1;s:11:\"source_save\";b:1;s:11:\"source_view\";b:1;s:11:\"steal_locks\";b:1;s:21:\"tree_show_element_ids\";b:1;s:22:\"tree_show_resource_ids\";b:1;s:17:\"undelete_document\";b:1;s:25:\"unlock_element_properties\";b:1;s:18:\"unpublish_document\";b:1;s:16:\"usergroup_delete\";b:1;s:14:\"usergroup_edit\";b:1;s:13:\"usergroup_new\";b:1;s:14:\"usergroup_save\";b:1;s:19:\"usergroup_user_edit\";b:1;s:19:\"usergroup_user_list\";b:1;s:14:\"usergroup_view\";b:1;s:4:\"view\";b:1;s:13:\"view_category\";b:1;s:10:\"view_chunk\";b:1;s:12:\"view_context\";b:1;s:13:\"view_document\";b:1;s:12:\"view_element\";b:1;s:13:\"view_eventlog\";b:1;s:12:\"view_offline\";b:1;s:11:\"view_plugin\";b:1;s:16:\"view_propertyset\";b:1;s:9:\"view_role\";b:1;s:12:\"view_snippet\";b:1;s:12:\"view_sysinfo\";b:1;s:13:\"view_template\";b:1;s:7:\"view_tv\";b:1;s:16:\"view_unpublished\";b:1;s:9:\"view_user\";b:1;s:10:\"workspaces\";b:1;}}}s:3:\"web\";a:1:{i:0;a:3:{s:9:\"principal\";s:1:\"1\";s:9:\"authority\";s:1:\"0\";s:6:\"policy\";a:172:{s:5:\"about\";b:1;s:18:\"access_permissions\";b:1;s:7:\"actions\";b:1;s:15:\"change_password\";b:1;s:14:\"change_profile\";b:1;s:8:\"charsets\";b:1;s:9:\"class_map\";b:1;s:10:\"components\";b:1;s:13:\"content_types\";b:1;s:9:\"countries\";b:1;s:6:\"create\";b:1;s:7:\"credits\";b:1;s:15:\"customize_forms\";b:1;s:10:\"dashboards\";b:1;s:8:\"database\";b:1;s:17:\"database_truncate\";b:1;s:15:\"delete_category\";b:1;s:12:\"delete_chunk\";b:1;s:14:\"delete_context\";b:1;s:15:\"delete_document\";b:1;s:15:\"delete_eventlog\";b:1;s:13:\"delete_plugin\";b:1;s:18:\"delete_propertyset\";b:1;s:11:\"delete_role\";b:1;s:14:\"delete_snippet\";b:1;s:15:\"delete_template\";b:1;s:9:\"delete_tv\";b:1;s:11:\"delete_user\";b:1;s:15:\"directory_chmod\";b:1;s:16:\"directory_create\";b:1;s:14:\"directory_list\";b:1;s:16:\"directory_remove\";b:1;s:16:\"directory_update\";b:1;s:13:\"edit_category\";b:1;s:10:\"edit_chunk\";b:1;s:12:\"edit_context\";b:1;s:13:\"edit_document\";b:1;s:11:\"edit_locked\";b:1;s:11:\"edit_plugin\";b:1;s:16:\"edit_propertyset\";b:1;s:9:\"edit_role\";b:1;s:12:\"edit_snippet\";b:1;s:13:\"edit_template\";b:1;s:7:\"edit_tv\";b:1;s:9:\"edit_user\";b:1;s:12:\"element_tree\";b:1;s:11:\"empty_cache\";b:1;s:15:\"error_log_erase\";b:1;s:14:\"error_log_view\";b:1;s:13:\"export_static\";b:1;s:11:\"file_create\";b:1;s:9:\"file_list\";b:1;s:12:\"file_manager\";b:1;s:11:\"file_remove\";b:1;s:9:\"file_tree\";b:1;s:11:\"file_update\";b:1;s:11:\"file_upload\";b:1;s:9:\"file_view\";b:1;s:14:\"flush_sessions\";b:1;s:6:\"frames\";b:1;s:4:\"help\";b:1;s:4:\"home\";b:1;s:13:\"import_static\";b:1;s:9:\"languages\";b:1;s:8:\"lexicons\";b:1;s:4:\"list\";b:1;s:4:\"load\";b:1;s:6:\"logout\";b:1;s:4:\"logs\";b:1;s:5:\"menus\";b:1;s:12:\"menu_reports\";b:1;s:13:\"menu_security\";b:1;s:9:\"menu_site\";b:1;s:12:\"menu_support\";b:1;s:11:\"menu_system\";b:1;s:10:\"menu_tools\";b:1;s:9:\"menu_user\";b:1;s:8:\"messages\";b:1;s:10:\"namespaces\";b:1;s:12:\"new_category\";b:1;s:9:\"new_chunk\";b:1;s:11:\"new_context\";b:1;s:12:\"new_document\";b:1;s:20:\"new_document_in_root\";b:1;s:10:\"new_plugin\";b:1;s:15:\"new_propertyset\";b:1;s:8:\"new_role\";b:1;s:11:\"new_snippet\";b:1;s:19:\"new_static_resource\";b:1;s:11:\"new_symlink\";b:1;s:12:\"new_template\";b:1;s:6:\"new_tv\";b:1;s:8:\"new_user\";b:1;s:11:\"new_weblink\";b:1;s:8:\"packages\";b:1;s:13:\"policy_delete\";b:1;s:11:\"policy_edit\";b:1;s:10:\"policy_new\";b:1;s:11:\"policy_save\";b:1;s:22:\"policy_template_delete\";b:1;s:20:\"policy_template_edit\";b:1;s:19:\"policy_template_new\";b:1;s:20:\"policy_template_save\";b:1;s:20:\"policy_template_view\";b:1;s:11:\"policy_view\";b:1;s:13:\"property_sets\";b:1;s:9:\"providers\";b:1;s:16:\"publish_document\";b:1;s:13:\"purge_deleted\";b:1;s:6:\"remove\";b:1;s:12:\"remove_locks\";b:1;s:18:\"resource_duplicate\";b:1;s:20:\"resourcegroup_delete\";b:1;s:18:\"resourcegroup_edit\";b:1;s:17:\"resourcegroup_new\";b:1;s:27:\"resourcegroup_resource_edit\";b:1;s:27:\"resourcegroup_resource_list\";b:1;s:18:\"resourcegroup_save\";b:1;s:18:\"resourcegroup_view\";b:1;s:21:\"resource_quick_create\";b:1;s:21:\"resource_quick_update\";b:1;s:13:\"resource_tree\";b:1;s:4:\"save\";b:1;s:13:\"save_category\";b:1;s:10:\"save_chunk\";b:1;s:12:\"save_context\";b:1;s:13:\"save_document\";b:1;s:11:\"save_plugin\";b:1;s:16:\"save_propertyset\";b:1;s:9:\"save_role\";b:1;s:12:\"save_snippet\";b:1;s:13:\"save_template\";b:1;s:7:\"save_tv\";b:1;s:9:\"save_user\";b:1;s:6:\"search\";b:1;s:8:\"settings\";b:1;s:7:\"sources\";b:1;s:13:\"source_delete\";b:1;s:11:\"source_edit\";b:1;s:11:\"source_save\";b:1;s:11:\"source_view\";b:1;s:11:\"steal_locks\";b:1;s:21:\"tree_show_element_ids\";b:1;s:22:\"tree_show_resource_ids\";b:1;s:17:\"undelete_document\";b:1;s:25:\"unlock_element_properties\";b:1;s:18:\"unpublish_document\";b:1;s:16:\"usergroup_delete\";b:1;s:14:\"usergroup_edit\";b:1;s:13:\"usergroup_new\";b:1;s:14:\"usergroup_save\";b:1;s:19:\"usergroup_user_edit\";b:1;s:19:\"usergroup_user_list\";b:1;s:14:\"usergroup_view\";b:1;s:4:\"view\";b:1;s:13:\"view_category\";b:1;s:10:\"view_chunk\";b:1;s:12:\"view_context\";b:1;s:13:\"view_document\";b:1;s:12:\"view_element\";b:1;s:13:\"view_eventlog\";b:1;s:12:\"view_offline\";b:1;s:11:\"view_plugin\";b:1;s:16:\"view_propertyset\";b:1;s:9:\"view_role\";b:1;s:12:\"view_snippet\";b:1;s:12:\"view_sysinfo\";b:1;s:13:\"view_template\";b:1;s:7:\"view_tv\";b:1;s:16:\"view_unpublished\";b:1;s:9:\"view_user\";b:1;s:10:\"workspaces\";b:1;}}}}s:22:\"modAccessResourceGroup\";a:0:{}s:17:\"modAccessCategory\";a:0:{}s:28:\"sources.modAccessMediaSource\";a:0:{}}}modx.user.1.resourceGroups|a:1:{s:3:\"mgr\";a:0:{}}modx.user.1.userGroups|a:1:{i:0;i:1;}'),('beb720b606acbbddc6dc5ad85e9827fa',1331492241,'modx.user.contextTokens|a:0:{}'),('ec2efbaa5c8b08b7f0e8436afbec664b',1331494894,'modx.user.contextTokens|a:0:{}'),('38acd6c76d847bfccd254b0d4909bd94',1331497092,'modx.user.contextTokens|a:0:{}'),('bc7f075d0a6502c5549eb38200de25ce',1331499300,'modx.user.contextTokens|a:0:{}'),('9a8b21ad7e44c979c6e1e54b68d468b1',1331500746,'modx.user.contextTokens|a:0:{}'),('528e5ff591919e1f4d33792994e0580b',1331502966,'modx.user.contextTokens|a:0:{}'),('9c32a899808364612a1246746ee904fe',1331503947,'modx.user.contextTokens|a:0:{}'),('a37d467aba5c527b7614c24de9da4f75',1331505812,'modx.user.contextTokens|a:0:{}'),('2e30d9ca3e88d8c828508f34d8139348',1331507745,'modx.user.contextTokens|a:0:{}'),('27d9135c2ef47185c614809d87003c01',1331509571,'modx.user.contextTokens|a:0:{}'),('087f90476934be1af6851d0c0f951957',1331510511,'modx.user.contextTokens|a:0:{}'),('7b4cb896525314a1311d9283ddd0f4c1',1331511820,'modx.user.contextTokens|a:0:{}'),('0e905f5e2289c26d55b35e42d9b2cc13',1331513338,'modx.user.contextTokens|a:0:{}'),('b3c2ee7c8caba82f35fab8b0960a706e',1331514248,'modx.user.contextTokens|a:0:{}'),('048354c96b533fd949d385dcb5355d71',1331514303,'modx.user.contextTokens|a:0:{}'),('b3a94dca5cdeda6773a5cb0d717fc1fe',1331514490,'modx.user.contextTokens|a:0:{}'),('5b46da9ab305122eb25530d40f9a6dfd',1331515199,'modx.user.contextTokens|a:0:{}'),('75d6722b5e87396f7203feb49eed3975',1331517111,'modx.user.contextTokens|a:0:{}'),('d57e308ffc94599ad688ba63eaa5c6b2',1331523252,'modx.user.contextTokens|a:0:{}'),('23e6cb8c1430c8409c48f53e5f7c4308',1331526478,'modx.user.contextTokens|a:0:{}'),('ec3b1bdb6918d6a259a706f6cab8de36',1331526917,'modx.user.contextTokens|a:0:{}'),('8167c32b65a64c3174994502c69e93f9',1331531120,'modx.user.contextTokens|a:0:{}'),('35c2ab55ec1980babb89f850520ee1ed',1331532884,'modx.user.contextTokens|a:0:{}'),('df907ab37ee66cab25b314463d086beb',1331536774,'modx.user.contextTokens|a:1:{s:3:\"mgr\";i:1;}modx.user.0.userGroups|a:0:{}modx.user.0.attributes|a:1:{s:3:\"mgr\";a:4:{s:16:\"modAccessContext\";a:1:{s:3:\"web\";a:1:{i:0;a:3:{s:9:\"principal\";i:0;s:9:\"authority\";s:1:\"0\";s:6:\"policy\";a:1:{s:4:\"load\";b:1;}}}}s:22:\"modAccessResourceGroup\";a:0:{}s:17:\"modAccessCategory\";a:0:{}s:28:\"sources.modAccessMediaSource\";a:0:{}}}modx.user.0.resourceGroups|a:1:{s:3:\"mgr\";a:0:{}}modx.mgr.user.token|s:52:\"modx4f576058f38bd1.70473967_14f5d962d02e2b1.02999157\";modx.mgr.session.cookie.lifetime|i:0;modx.user.1.attributes|a:2:{s:3:\"mgr\";a:4:{s:16:\"modAccessContext\";a:2:{s:3:\"mgr\";a:1:{i:0;a:3:{s:9:\"principal\";s:1:\"1\";s:9:\"authority\";s:1:\"0\";s:6:\"policy\";a:172:{s:5:\"about\";b:1;s:18:\"access_permissions\";b:1;s:7:\"actions\";b:1;s:15:\"change_password\";b:1;s:14:\"change_profile\";b:1;s:8:\"charsets\";b:1;s:9:\"class_map\";b:1;s:10:\"components\";b:1;s:13:\"content_types\";b:1;s:9:\"countries\";b:1;s:6:\"create\";b:1;s:7:\"credits\";b:1;s:15:\"customize_forms\";b:1;s:10:\"dashboards\";b:1;s:8:\"database\";b:1;s:17:\"database_truncate\";b:1;s:15:\"delete_category\";b:1;s:12:\"delete_chunk\";b:1;s:14:\"delete_context\";b:1;s:15:\"delete_document\";b:1;s:15:\"delete_eventlog\";b:1;s:13:\"delete_plugin\";b:1;s:18:\"delete_propertyset\";b:1;s:11:\"delete_role\";b:1;s:14:\"delete_snippet\";b:1;s:15:\"delete_template\";b:1;s:9:\"delete_tv\";b:1;s:11:\"delete_user\";b:1;s:15:\"directory_chmod\";b:1;s:16:\"directory_create\";b:1;s:14:\"directory_list\";b:1;s:16:\"directory_remove\";b:1;s:16:\"directory_update\";b:1;s:13:\"edit_category\";b:1;s:10:\"edit_chunk\";b:1;s:12:\"edit_context\";b:1;s:13:\"edit_document\";b:1;s:11:\"edit_locked\";b:1;s:11:\"edit_plugin\";b:1;s:16:\"edit_propertyset\";b:1;s:9:\"edit_role\";b:1;s:12:\"edit_snippet\";b:1;s:13:\"edit_template\";b:1;s:7:\"edit_tv\";b:1;s:9:\"edit_user\";b:1;s:12:\"element_tree\";b:1;s:11:\"empty_cache\";b:1;s:15:\"error_log_erase\";b:1;s:14:\"error_log_view\";b:1;s:13:\"export_static\";b:1;s:11:\"file_create\";b:1;s:9:\"file_list\";b:1;s:12:\"file_manager\";b:1;s:11:\"file_remove\";b:1;s:9:\"file_tree\";b:1;s:11:\"file_update\";b:1;s:11:\"file_upload\";b:1;s:9:\"file_view\";b:1;s:14:\"flush_sessions\";b:1;s:6:\"frames\";b:1;s:4:\"help\";b:1;s:4:\"home\";b:1;s:13:\"import_static\";b:1;s:9:\"languages\";b:1;s:8:\"lexicons\";b:1;s:4:\"list\";b:1;s:4:\"load\";b:1;s:6:\"logout\";b:1;s:4:\"logs\";b:1;s:5:\"menus\";b:1;s:12:\"menu_reports\";b:1;s:13:\"menu_security\";b:1;s:9:\"menu_site\";b:1;s:12:\"menu_support\";b:1;s:11:\"menu_system\";b:1;s:10:\"menu_tools\";b:1;s:9:\"menu_user\";b:1;s:8:\"messages\";b:1;s:10:\"namespaces\";b:1;s:12:\"new_category\";b:1;s:9:\"new_chunk\";b:1;s:11:\"new_context\";b:1;s:12:\"new_document\";b:1;s:20:\"new_document_in_root\";b:1;s:10:\"new_plugin\";b:1;s:15:\"new_propertyset\";b:1;s:8:\"new_role\";b:1;s:11:\"new_snippet\";b:1;s:19:\"new_static_resource\";b:1;s:11:\"new_symlink\";b:1;s:12:\"new_template\";b:1;s:6:\"new_tv\";b:1;s:8:\"new_user\";b:1;s:11:\"new_weblink\";b:1;s:8:\"packages\";b:1;s:13:\"policy_delete\";b:1;s:11:\"policy_edit\";b:1;s:10:\"policy_new\";b:1;s:11:\"policy_save\";b:1;s:22:\"policy_template_delete\";b:1;s:20:\"policy_template_edit\";b:1;s:19:\"policy_template_new\";b:1;s:20:\"policy_template_save\";b:1;s:20:\"policy_template_view\";b:1;s:11:\"policy_view\";b:1;s:13:\"property_sets\";b:1;s:9:\"providers\";b:1;s:16:\"publish_document\";b:1;s:13:\"purge_deleted\";b:1;s:6:\"remove\";b:1;s:12:\"remove_locks\";b:1;s:18:\"resource_duplicate\";b:1;s:20:\"resourcegroup_delete\";b:1;s:18:\"resourcegroup_edit\";b:1;s:17:\"resourcegroup_new\";b:1;s:27:\"resourcegroup_resource_edit\";b:1;s:27:\"resourcegroup_resource_list\";b:1;s:18:\"resourcegroup_save\";b:1;s:18:\"resourcegroup_view\";b:1;s:21:\"resource_quick_create\";b:1;s:21:\"resource_quick_update\";b:1;s:13:\"resource_tree\";b:1;s:4:\"save\";b:1;s:13:\"save_category\";b:1;s:10:\"save_chunk\";b:1;s:12:\"save_context\";b:1;s:13:\"save_document\";b:1;s:11:\"save_plugin\";b:1;s:16:\"save_propertyset\";b:1;s:9:\"save_role\";b:1;s:12:\"save_snippet\";b:1;s:13:\"save_template\";b:1;s:7:\"save_tv\";b:1;s:9:\"save_user\";b:1;s:6:\"search\";b:1;s:8:\"settings\";b:1;s:7:\"sources\";b:1;s:13:\"source_delete\";b:1;s:11:\"source_edit\";b:1;s:11:\"source_save\";b:1;s:11:\"source_view\";b:1;s:11:\"steal_locks\";b:1;s:21:\"tree_show_element_ids\";b:1;s:22:\"tree_show_resource_ids\";b:1;s:17:\"undelete_document\";b:1;s:25:\"unlock_element_properties\";b:1;s:18:\"unpublish_document\";b:1;s:16:\"usergroup_delete\";b:1;s:14:\"usergroup_edit\";b:1;s:13:\"usergroup_new\";b:1;s:14:\"usergroup_save\";b:1;s:19:\"usergroup_user_edit\";b:1;s:19:\"usergroup_user_list\";b:1;s:14:\"usergroup_view\";b:1;s:4:\"view\";b:1;s:13:\"view_category\";b:1;s:10:\"view_chunk\";b:1;s:12:\"view_context\";b:1;s:13:\"view_document\";b:1;s:12:\"view_element\";b:1;s:13:\"view_eventlog\";b:1;s:12:\"view_offline\";b:1;s:11:\"view_plugin\";b:1;s:16:\"view_propertyset\";b:1;s:9:\"view_role\";b:1;s:12:\"view_snippet\";b:1;s:12:\"view_sysinfo\";b:1;s:13:\"view_template\";b:1;s:7:\"view_tv\";b:1;s:16:\"view_unpublished\";b:1;s:9:\"view_user\";b:1;s:10:\"workspaces\";b:1;}}}s:3:\"web\";a:1:{i:0;a:3:{s:9:\"principal\";s:1:\"1\";s:9:\"authority\";s:1:\"0\";s:6:\"policy\";a:172:{s:5:\"about\";b:1;s:18:\"access_permissions\";b:1;s:7:\"actions\";b:1;s:15:\"change_password\";b:1;s:14:\"change_profile\";b:1;s:8:\"charsets\";b:1;s:9:\"class_map\";b:1;s:10:\"components\";b:1;s:13:\"content_types\";b:1;s:9:\"countries\";b:1;s:6:\"create\";b:1;s:7:\"credits\";b:1;s:15:\"customize_forms\";b:1;s:10:\"dashboards\";b:1;s:8:\"database\";b:1;s:17:\"database_truncate\";b:1;s:15:\"delete_category\";b:1;s:12:\"delete_chunk\";b:1;s:14:\"delete_context\";b:1;s:15:\"delete_document\";b:1;s:15:\"delete_eventlog\";b:1;s:13:\"delete_plugin\";b:1;s:18:\"delete_propertyset\";b:1;s:11:\"delete_role\";b:1;s:14:\"delete_snippet\";b:1;s:15:\"delete_template\";b:1;s:9:\"delete_tv\";b:1;s:11:\"delete_user\";b:1;s:15:\"directory_chmod\";b:1;s:16:\"directory_create\";b:1;s:14:\"directory_list\";b:1;s:16:\"directory_remove\";b:1;s:16:\"directory_update\";b:1;s:13:\"edit_category\";b:1;s:10:\"edit_chunk\";b:1;s:12:\"edit_context\";b:1;s:13:\"edit_document\";b:1;s:11:\"edit_locked\";b:1;s:11:\"edit_plugin\";b:1;s:16:\"edit_propertyset\";b:1;s:9:\"edit_role\";b:1;s:12:\"edit_snippet\";b:1;s:13:\"edit_template\";b:1;s:7:\"edit_tv\";b:1;s:9:\"edit_user\";b:1;s:12:\"element_tree\";b:1;s:11:\"empty_cache\";b:1;s:15:\"error_log_erase\";b:1;s:14:\"error_log_view\";b:1;s:13:\"export_static\";b:1;s:11:\"file_create\";b:1;s:9:\"file_list\";b:1;s:12:\"file_manager\";b:1;s:11:\"file_remove\";b:1;s:9:\"file_tree\";b:1;s:11:\"file_update\";b:1;s:11:\"file_upload\";b:1;s:9:\"file_view\";b:1;s:14:\"flush_sessions\";b:1;s:6:\"frames\";b:1;s:4:\"help\";b:1;s:4:\"home\";b:1;s:13:\"import_static\";b:1;s:9:\"languages\";b:1;s:8:\"lexicons\";b:1;s:4:\"list\";b:1;s:4:\"load\";b:1;s:6:\"logout\";b:1;s:4:\"logs\";b:1;s:5:\"menus\";b:1;s:12:\"menu_reports\";b:1;s:13:\"menu_security\";b:1;s:9:\"menu_site\";b:1;s:12:\"menu_support\";b:1;s:11:\"menu_system\";b:1;s:10:\"menu_tools\";b:1;s:9:\"menu_user\";b:1;s:8:\"messages\";b:1;s:10:\"namespaces\";b:1;s:12:\"new_category\";b:1;s:9:\"new_chunk\";b:1;s:11:\"new_context\";b:1;s:12:\"new_document\";b:1;s:20:\"new_document_in_root\";b:1;s:10:\"new_plugin\";b:1;s:15:\"new_propertyset\";b:1;s:8:\"new_role\";b:1;s:11:\"new_snippet\";b:1;s:19:\"new_static_resource\";b:1;s:11:\"new_symlink\";b:1;s:12:\"new_template\";b:1;s:6:\"new_tv\";b:1;s:8:\"new_user\";b:1;s:11:\"new_weblink\";b:1;s:8:\"packages\";b:1;s:13:\"policy_delete\";b:1;s:11:\"policy_edit\";b:1;s:10:\"policy_new\";b:1;s:11:\"policy_save\";b:1;s:22:\"policy_template_delete\";b:1;s:20:\"policy_template_edit\";b:1;s:19:\"policy_template_new\";b:1;s:20:\"policy_template_save\";b:1;s:20:\"policy_template_view\";b:1;s:11:\"policy_view\";b:1;s:13:\"property_sets\";b:1;s:9:\"providers\";b:1;s:16:\"publish_document\";b:1;s:13:\"purge_deleted\";b:1;s:6:\"remove\";b:1;s:12:\"remove_locks\";b:1;s:18:\"resource_duplicate\";b:1;s:20:\"resourcegroup_delete\";b:1;s:18:\"resourcegroup_edit\";b:1;s:17:\"resourcegroup_new\";b:1;s:27:\"resourcegroup_resource_edit\";b:1;s:27:\"resourcegroup_resource_list\";b:1;s:18:\"resourcegroup_save\";b:1;s:18:\"resourcegroup_view\";b:1;s:21:\"resource_quick_create\";b:1;s:21:\"resource_quick_update\";b:1;s:13:\"resource_tree\";b:1;s:4:\"save\";b:1;s:13:\"save_category\";b:1;s:10:\"save_chunk\";b:1;s:12:\"save_context\";b:1;s:13:\"save_document\";b:1;s:11:\"save_plugin\";b:1;s:16:\"save_propertyset\";b:1;s:9:\"save_role\";b:1;s:12:\"save_snippet\";b:1;s:13:\"save_template\";b:1;s:7:\"save_tv\";b:1;s:9:\"save_user\";b:1;s:6:\"search\";b:1;s:8:\"settings\";b:1;s:7:\"sources\";b:1;s:13:\"source_delete\";b:1;s:11:\"source_edit\";b:1;s:11:\"source_save\";b:1;s:11:\"source_view\";b:1;s:11:\"steal_locks\";b:1;s:21:\"tree_show_element_ids\";b:1;s:22:\"tree_show_resource_ids\";b:1;s:17:\"undelete_document\";b:1;s:25:\"unlock_element_properties\";b:1;s:18:\"unpublish_document\";b:1;s:16:\"usergroup_delete\";b:1;s:14:\"usergroup_edit\";b:1;s:13:\"usergroup_new\";b:1;s:14:\"usergroup_save\";b:1;s:19:\"usergroup_user_edit\";b:1;s:19:\"usergroup_user_list\";b:1;s:14:\"usergroup_view\";b:1;s:4:\"view\";b:1;s:13:\"view_category\";b:1;s:10:\"view_chunk\";b:1;s:12:\"view_context\";b:1;s:13:\"view_document\";b:1;s:12:\"view_element\";b:1;s:13:\"view_eventlog\";b:1;s:12:\"view_offline\";b:1;s:11:\"view_plugin\";b:1;s:16:\"view_propertyset\";b:1;s:9:\"view_role\";b:1;s:12:\"view_snippet\";b:1;s:12:\"view_sysinfo\";b:1;s:13:\"view_template\";b:1;s:7:\"view_tv\";b:1;s:16:\"view_unpublished\";b:1;s:9:\"view_user\";b:1;s:10:\"workspaces\";b:1;}}}}s:22:\"modAccessResourceGroup\";a:0:{}s:17:\"modAccessCategory\";a:0:{}s:28:\"sources.modAccessMediaSource\";a:0:{}}s:3:\"web\";a:4:{s:16:\"modAccessContext\";a:2:{s:3:\"mgr\";a:1:{i:0;a:3:{s:9:\"principal\";s:1:\"1\";s:9:\"authority\";s:1:\"0\";s:6:\"policy\";a:172:{s:5:\"about\";b:1;s:18:\"access_permissions\";b:1;s:7:\"actions\";b:1;s:15:\"change_password\";b:1;s:14:\"change_profile\";b:1;s:8:\"charsets\";b:1;s:9:\"class_map\";b:1;s:10:\"components\";b:1;s:13:\"content_types\";b:1;s:9:\"countries\";b:1;s:6:\"create\";b:1;s:7:\"credits\";b:1;s:15:\"customize_forms\";b:1;s:10:\"dashboards\";b:1;s:8:\"database\";b:1;s:17:\"database_truncate\";b:1;s:15:\"delete_category\";b:1;s:12:\"delete_chunk\";b:1;s:14:\"delete_context\";b:1;s:15:\"delete_document\";b:1;s:15:\"delete_eventlog\";b:1;s:13:\"delete_plugin\";b:1;s:18:\"delete_propertyset\";b:1;s:11:\"delete_role\";b:1;s:14:\"delete_snippet\";b:1;s:15:\"delete_template\";b:1;s:9:\"delete_tv\";b:1;s:11:\"delete_user\";b:1;s:15:\"directory_chmod\";b:1;s:16:\"directory_create\";b:1;s:14:\"directory_list\";b:1;s:16:\"directory_remove\";b:1;s:16:\"directory_update\";b:1;s:13:\"edit_category\";b:1;s:10:\"edit_chunk\";b:1;s:12:\"edit_context\";b:1;s:13:\"edit_document\";b:1;s:11:\"edit_locked\";b:1;s:11:\"edit_plugin\";b:1;s:16:\"edit_propertyset\";b:1;s:9:\"edit_role\";b:1;s:12:\"edit_snippet\";b:1;s:13:\"edit_template\";b:1;s:7:\"edit_tv\";b:1;s:9:\"edit_user\";b:1;s:12:\"element_tree\";b:1;s:11:\"empty_cache\";b:1;s:15:\"error_log_erase\";b:1;s:14:\"error_log_view\";b:1;s:13:\"export_static\";b:1;s:11:\"file_create\";b:1;s:9:\"file_list\";b:1;s:12:\"file_manager\";b:1;s:11:\"file_remove\";b:1;s:9:\"file_tree\";b:1;s:11:\"file_update\";b:1;s:11:\"file_upload\";b:1;s:9:\"file_view\";b:1;s:14:\"flush_sessions\";b:1;s:6:\"frames\";b:1;s:4:\"help\";b:1;s:4:\"home\";b:1;s:13:\"import_static\";b:1;s:9:\"languages\";b:1;s:8:\"lexicons\";b:1;s:4:\"list\";b:1;s:4:\"load\";b:1;s:6:\"logout\";b:1;s:4:\"logs\";b:1;s:5:\"menus\";b:1;s:12:\"menu_reports\";b:1;s:13:\"menu_security\";b:1;s:9:\"menu_site\";b:1;s:12:\"menu_support\";b:1;s:11:\"menu_system\";b:1;s:10:\"menu_tools\";b:1;s:9:\"menu_user\";b:1;s:8:\"messages\";b:1;s:10:\"namespaces\";b:1;s:12:\"new_category\";b:1;s:9:\"new_chunk\";b:1;s:11:\"new_context\";b:1;s:12:\"new_document\";b:1;s:20:\"new_document_in_root\";b:1;s:10:\"new_plugin\";b:1;s:15:\"new_propertyset\";b:1;s:8:\"new_role\";b:1;s:11:\"new_snippet\";b:1;s:19:\"new_static_resource\";b:1;s:11:\"new_symlink\";b:1;s:12:\"new_template\";b:1;s:6:\"new_tv\";b:1;s:8:\"new_user\";b:1;s:11:\"new_weblink\";b:1;s:8:\"packages\";b:1;s:13:\"policy_delete\";b:1;s:11:\"policy_edit\";b:1;s:10:\"policy_new\";b:1;s:11:\"policy_save\";b:1;s:22:\"policy_template_delete\";b:1;s:20:\"policy_template_edit\";b:1;s:19:\"policy_template_new\";b:1;s:20:\"policy_template_save\";b:1;s:20:\"policy_template_view\";b:1;s:11:\"policy_view\";b:1;s:13:\"property_sets\";b:1;s:9:\"providers\";b:1;s:16:\"publish_document\";b:1;s:13:\"purge_deleted\";b:1;s:6:\"remove\";b:1;s:12:\"remove_locks\";b:1;s:18:\"resource_duplicate\";b:1;s:20:\"resourcegroup_delete\";b:1;s:18:\"resourcegroup_edit\";b:1;s:17:\"resourcegroup_new\";b:1;s:27:\"resourcegroup_resource_edit\";b:1;s:27:\"resourcegroup_resource_list\";b:1;s:18:\"resourcegroup_save\";b:1;s:18:\"resourcegroup_view\";b:1;s:21:\"resource_quick_create\";b:1;s:21:\"resource_quick_update\";b:1;s:13:\"resource_tree\";b:1;s:4:\"save\";b:1;s:13:\"save_category\";b:1;s:10:\"save_chunk\";b:1;s:12:\"save_context\";b:1;s:13:\"save_document\";b:1;s:11:\"save_plugin\";b:1;s:16:\"save_propertyset\";b:1;s:9:\"save_role\";b:1;s:12:\"save_snippet\";b:1;s:13:\"save_template\";b:1;s:7:\"save_tv\";b:1;s:9:\"save_user\";b:1;s:6:\"search\";b:1;s:8:\"settings\";b:1;s:7:\"sources\";b:1;s:13:\"source_delete\";b:1;s:11:\"source_edit\";b:1;s:11:\"source_save\";b:1;s:11:\"source_view\";b:1;s:11:\"steal_locks\";b:1;s:21:\"tree_show_element_ids\";b:1;s:22:\"tree_show_resource_ids\";b:1;s:17:\"undelete_document\";b:1;s:25:\"unlock_element_properties\";b:1;s:18:\"unpublish_document\";b:1;s:16:\"usergroup_delete\";b:1;s:14:\"usergroup_edit\";b:1;s:13:\"usergroup_new\";b:1;s:14:\"usergroup_save\";b:1;s:19:\"usergroup_user_edit\";b:1;s:19:\"usergroup_user_list\";b:1;s:14:\"usergroup_view\";b:1;s:4:\"view\";b:1;s:13:\"view_category\";b:1;s:10:\"view_chunk\";b:1;s:12:\"view_context\";b:1;s:13:\"view_document\";b:1;s:12:\"view_element\";b:1;s:13:\"view_eventlog\";b:1;s:12:\"view_offline\";b:1;s:11:\"view_plugin\";b:1;s:16:\"view_propertyset\";b:1;s:9:\"view_role\";b:1;s:12:\"view_snippet\";b:1;s:12:\"view_sysinfo\";b:1;s:13:\"view_template\";b:1;s:7:\"view_tv\";b:1;s:16:\"view_unpublished\";b:1;s:9:\"view_user\";b:1;s:10:\"workspaces\";b:1;}}}s:3:\"web\";a:1:{i:0;a:3:{s:9:\"principal\";s:1:\"1\";s:9:\"authority\";s:1:\"0\";s:6:\"policy\";a:172:{s:5:\"about\";b:1;s:18:\"access_permissions\";b:1;s:7:\"actions\";b:1;s:15:\"change_password\";b:1;s:14:\"change_profile\";b:1;s:8:\"charsets\";b:1;s:9:\"class_map\";b:1;s:10:\"components\";b:1;s:13:\"content_types\";b:1;s:9:\"countries\";b:1;s:6:\"create\";b:1;s:7:\"credits\";b:1;s:15:\"customize_forms\";b:1;s:10:\"dashboards\";b:1;s:8:\"database\";b:1;s:17:\"database_truncate\";b:1;s:15:\"delete_category\";b:1;s:12:\"delete_chunk\";b:1;s:14:\"delete_context\";b:1;s:15:\"delete_document\";b:1;s:15:\"delete_eventlog\";b:1;s:13:\"delete_plugin\";b:1;s:18:\"delete_propertyset\";b:1;s:11:\"delete_role\";b:1;s:14:\"delete_snippet\";b:1;s:15:\"delete_template\";b:1;s:9:\"delete_tv\";b:1;s:11:\"delete_user\";b:1;s:15:\"directory_chmod\";b:1;s:16:\"directory_create\";b:1;s:14:\"directory_list\";b:1;s:16:\"directory_remove\";b:1;s:16:\"directory_update\";b:1;s:13:\"edit_category\";b:1;s:10:\"edit_chunk\";b:1;s:12:\"edit_context\";b:1;s:13:\"edit_document\";b:1;s:11:\"edit_locked\";b:1;s:11:\"edit_plugin\";b:1;s:16:\"edit_propertyset\";b:1;s:9:\"edit_role\";b:1;s:12:\"edit_snippet\";b:1;s:13:\"edit_template\";b:1;s:7:\"edit_tv\";b:1;s:9:\"edit_user\";b:1;s:12:\"element_tree\";b:1;s:11:\"empty_cache\";b:1;s:15:\"error_log_erase\";b:1;s:14:\"error_log_view\";b:1;s:13:\"export_static\";b:1;s:11:\"file_create\";b:1;s:9:\"file_list\";b:1;s:12:\"file_manager\";b:1;s:11:\"file_remove\";b:1;s:9:\"file_tree\";b:1;s:11:\"file_update\";b:1;s:11:\"file_upload\";b:1;s:9:\"file_view\";b:1;s:14:\"flush_sessions\";b:1;s:6:\"frames\";b:1;s:4:\"help\";b:1;s:4:\"home\";b:1;s:13:\"import_static\";b:1;s:9:\"languages\";b:1;s:8:\"lexicons\";b:1;s:4:\"list\";b:1;s:4:\"load\";b:1;s:6:\"logout\";b:1;s:4:\"logs\";b:1;s:5:\"menus\";b:1;s:12:\"menu_reports\";b:1;s:13:\"menu_security\";b:1;s:9:\"menu_site\";b:1;s:12:\"menu_support\";b:1;s:11:\"menu_system\";b:1;s:10:\"menu_tools\";b:1;s:9:\"menu_user\";b:1;s:8:\"messages\";b:1;s:10:\"namespaces\";b:1;s:12:\"new_category\";b:1;s:9:\"new_chunk\";b:1;s:11:\"new_context\";b:1;s:12:\"new_document\";b:1;s:20:\"new_document_in_root\";b:1;s:10:\"new_plugin\";b:1;s:15:\"new_propertyset\";b:1;s:8:\"new_role\";b:1;s:11:\"new_snippet\";b:1;s:19:\"new_static_resource\";b:1;s:11:\"new_symlink\";b:1;s:12:\"new_template\";b:1;s:6:\"new_tv\";b:1;s:8:\"new_user\";b:1;s:11:\"new_weblink\";b:1;s:8:\"packages\";b:1;s:13:\"policy_delete\";b:1;s:11:\"policy_edit\";b:1;s:10:\"policy_new\";b:1;s:11:\"policy_save\";b:1;s:22:\"policy_template_delete\";b:1;s:20:\"policy_template_edit\";b:1;s:19:\"policy_template_new\";b:1;s:20:\"policy_template_save\";b:1;s:20:\"policy_template_view\";b:1;s:11:\"policy_view\";b:1;s:13:\"property_sets\";b:1;s:9:\"providers\";b:1;s:16:\"publish_document\";b:1;s:13:\"purge_deleted\";b:1;s:6:\"remove\";b:1;s:12:\"remove_locks\";b:1;s:18:\"resource_duplicate\";b:1;s:20:\"resourcegroup_delete\";b:1;s:18:\"resourcegroup_edit\";b:1;s:17:\"resourcegroup_new\";b:1;s:27:\"resourcegroup_resource_edit\";b:1;s:27:\"resourcegroup_resource_list\";b:1;s:18:\"resourcegroup_save\";b:1;s:18:\"resourcegroup_view\";b:1;s:21:\"resource_quick_create\";b:1;s:21:\"resource_quick_update\";b:1;s:13:\"resource_tree\";b:1;s:4:\"save\";b:1;s:13:\"save_category\";b:1;s:10:\"save_chunk\";b:1;s:12:\"save_context\";b:1;s:13:\"save_document\";b:1;s:11:\"save_plugin\";b:1;s:16:\"save_propertyset\";b:1;s:9:\"save_role\";b:1;s:12:\"save_snippet\";b:1;s:13:\"save_template\";b:1;s:7:\"save_tv\";b:1;s:9:\"save_user\";b:1;s:6:\"search\";b:1;s:8:\"settings\";b:1;s:7:\"sources\";b:1;s:13:\"source_delete\";b:1;s:11:\"source_edit\";b:1;s:11:\"source_save\";b:1;s:11:\"source_view\";b:1;s:11:\"steal_locks\";b:1;s:21:\"tree_show_element_ids\";b:1;s:22:\"tree_show_resource_ids\";b:1;s:17:\"undelete_document\";b:1;s:25:\"unlock_element_properties\";b:1;s:18:\"unpublish_document\";b:1;s:16:\"usergroup_delete\";b:1;s:14:\"usergroup_edit\";b:1;s:13:\"usergroup_new\";b:1;s:14:\"usergroup_save\";b:1;s:19:\"usergroup_user_edit\";b:1;s:19:\"usergroup_user_list\";b:1;s:14:\"usergroup_view\";b:1;s:4:\"view\";b:1;s:13:\"view_category\";b:1;s:10:\"view_chunk\";b:1;s:12:\"view_context\";b:1;s:13:\"view_document\";b:1;s:12:\"view_element\";b:1;s:13:\"view_eventlog\";b:1;s:12:\"view_offline\";b:1;s:11:\"view_plugin\";b:1;s:16:\"view_propertyset\";b:1;s:9:\"view_role\";b:1;s:12:\"view_snippet\";b:1;s:12:\"view_sysinfo\";b:1;s:13:\"view_template\";b:1;s:7:\"view_tv\";b:1;s:16:\"view_unpublished\";b:1;s:9:\"view_user\";b:1;s:10:\"workspaces\";b:1;}}}}s:22:\"modAccessResourceGroup\";a:0:{}s:17:\"modAccessCategory\";a:0:{}s:28:\"sources.modAccessMediaSource\";a:0:{}}}modx.user.1.resourceGroups|a:1:{s:3:\"web\";a:0:{}}modx.user.1.userGroups|a:1:{i:0;i:1;}'),('6c245b997079528bd67d6321b41d422b',1331538185,'modx.user.0.attributes|a:2:{s:3:\"web\";a:4:{s:16:\"modAccessContext\";a:1:{s:3:\"web\";a:1:{i:0;a:3:{s:9:\"principal\";i:0;s:9:\"authority\";s:1:\"0\";s:6:\"policy\";a:1:{s:4:\"load\";b:1;}}}}s:22:\"modAccessResourceGroup\";a:0:{}s:17:\"modAccessCategory\";a:0:{}s:28:\"sources.modAccessMediaSource\";a:0:{}}s:3:\"mgr\";a:4:{s:16:\"modAccessContext\";a:1:{s:3:\"web\";a:1:{i:0;a:3:{s:9:\"principal\";i:0;s:9:\"authority\";s:1:\"0\";s:6:\"policy\";a:1:{s:4:\"load\";b:1;}}}}s:22:\"modAccessResourceGroup\";a:0:{}s:17:\"modAccessCategory\";a:0:{}s:28:\"sources.modAccessMediaSource\";a:0:{}}}modx.user.0.resourceGroups|a:1:{s:3:\"mgr\";a:0:{}}modx.user.contextTokens|a:0:{}modx.user.0.userGroups|a:0:{}');
/*!40000 ALTER TABLE `modx_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modx_site_content`
--

DROP TABLE IF EXISTS `modx_site_content`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `modx_site_content` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `type` varchar(20) NOT NULL default 'document',
  `contentType` varchar(50) NOT NULL default 'text/html',
  `pagetitle` varchar(255) NOT NULL default '',
  `longtitle` varchar(255) NOT NULL default '',
  `description` varchar(255) NOT NULL default '',
  `alias` varchar(255) default '',
  `link_attributes` varchar(255) NOT NULL default '',
  `published` tinyint(1) unsigned NOT NULL default '0',
  `pub_date` int(20) NOT NULL default '0',
  `unpub_date` int(20) NOT NULL default '0',
  `parent` int(10) NOT NULL default '0',
  `isfolder` tinyint(1) unsigned NOT NULL default '0',
  `introtext` text,
  `content` mediumtext,
  `richtext` tinyint(1) unsigned NOT NULL default '1',
  `template` int(10) NOT NULL default '0',
  `menuindex` int(10) NOT NULL default '0',
  `searchable` tinyint(1) unsigned NOT NULL default '1',
  `cacheable` tinyint(1) unsigned NOT NULL default '1',
  `createdby` int(10) NOT NULL default '0',
  `createdon` int(20) NOT NULL default '0',
  `editedby` int(10) NOT NULL default '0',
  `editedon` int(20) NOT NULL default '0',
  `deleted` tinyint(1) unsigned NOT NULL default '0',
  `deletedon` int(20) NOT NULL default '0',
  `deletedby` int(10) NOT NULL default '0',
  `publishedon` int(20) NOT NULL default '0',
  `publishedby` int(10) NOT NULL default '0',
  `menutitle` varchar(255) NOT NULL default '',
  `donthit` tinyint(1) unsigned NOT NULL default '0',
  `privateweb` tinyint(1) unsigned NOT NULL default '0',
  `privatemgr` tinyint(1) unsigned NOT NULL default '0',
  `content_dispo` tinyint(1) NOT NULL default '0',
  `hidemenu` tinyint(1) unsigned NOT NULL default '0',
  `class_key` varchar(100) NOT NULL default 'modDocument',
  `context_key` varchar(100) NOT NULL default 'web',
  `content_type` int(11) unsigned NOT NULL default '1',
  `uri` text,
  `uri_override` tinyint(1) NOT NULL default '0',
  `hide_children_in_tree` tinyint(1) NOT NULL default '0',
  `show_in_tree` tinyint(1) NOT NULL default '1',
  PRIMARY KEY  (`id`),
  KEY `alias` (`alias`),
  KEY `published` (`published`),
  KEY `pub_date` (`pub_date`),
  KEY `unpub_date` (`unpub_date`),
  KEY `parent` (`parent`),
  KEY `isfolder` (`isfolder`),
  KEY `template` (`template`),
  KEY `menuindex` (`menuindex`),
  KEY `searchable` (`searchable`),
  KEY `cacheable` (`cacheable`),
  KEY `hidemenu` (`hidemenu`),
  KEY `class_key` (`class_key`),
  KEY `context_key` (`context_key`),
  KEY `uri` (`uri`(333)),
  KEY `uri_override` (`uri_override`),
  KEY `hide_children_in_tree` (`hide_children_in_tree`),
  KEY `show_in_tree` (`show_in_tree`),
  FULLTEXT KEY `content_ft_idx` (`pagetitle`,`longtitle`,`description`,`introtext`,`content`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modx_site_content`
--

LOCK TABLES `modx_site_content` WRITE;
/*!40000 ALTER TABLE `modx_site_content` DISABLE KEYS */;
INSERT INTO `modx_site_content` VALUES (1,'document','text/html','Home','','','index','',1,0,0,0,0,'','',1,2,0,1,1,1,1331126362,1,1331328861,0,0,0,0,0,'',0,0,0,0,0,'modDocument','web',1,'',0,0,1);
/*!40000 ALTER TABLE `modx_site_content` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modx_site_htmlsnippets`
--

DROP TABLE IF EXISTS `modx_site_htmlsnippets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `modx_site_htmlsnippets` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `source` int(10) unsigned NOT NULL default '0',
  `property_preprocess` tinyint(1) unsigned NOT NULL default '0',
  `name` varchar(50) NOT NULL default '',
  `description` varchar(255) NOT NULL default 'Chunk',
  `editor_type` int(11) NOT NULL default '0',
  `category` int(11) NOT NULL default '0',
  `cache_type` tinyint(1) NOT NULL default '0',
  `snippet` mediumtext,
  `locked` tinyint(1) unsigned NOT NULL default '0',
  `properties` text,
  `static` tinyint(1) unsigned NOT NULL default '0',
  `static_file` varchar(255) NOT NULL default '',
  PRIMARY KEY  (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `category` (`category`),
  KEY `locked` (`locked`),
  KEY `static` (`static`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modx_site_htmlsnippets`
--

LOCK TABLES `modx_site_htmlsnippets` WRITE;
/*!40000 ALTER TABLE `modx_site_htmlsnippets` DISABLE KEYS */;
INSERT INTO `modx_site_htmlsnippets` VALUES (1,1,0,'header','',0,0,0,'<!DOCTYPE HTML>\n<html>\n<head>\n<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">\n<title>Accelerists</title>\n<link rel=\"stylesheet\" type=\"text/css\" media=\"all\" href=\"assets/css/stylenew.css\"/>\n<script type=\"text/javascript\" src=\"assets/js/twtwidgets.js\"></script>\n<script type=\"text/javascript\" src=\"http://use.typekit.com/lrd0rmo.js\"></script>\n<script type=\"text/javascript\">try{Typekit.load();}catch(e){}</script>\n<script src=\"assets/js/jquery-1.7.1.min.js\" type=\"text/javascript\"></script>\n<script type=\"text/javascript\" src=\"assets/js/jquery.jqEasyCharCounter.min.js\"></script>\n<!--script src=\"http://platform.twitter.com/anywhere.js?id=lg0eJZyP4fD6ACoBA3biTg&v=1\" type=\"text/javascript\"--></script>\n<!--[if gte IE 7]>\n\n<style>\n.addme {padding: 5px 10px 6px;}\n</style>\n\n<![endif]-->\n<script type=\"text/javascript\"> \n$(document).ready(function(){\n        $(\'#twtxtarea\').jqEasyCounter({\n            \'maxChars\': 140, \n            \'maxCharsWarning\': 140, \n            \'msgFontColor\': \'#ccc\',\n            \'msgFontSize\': \'19px\',\n            \'msgFontFamily\': \'\"ff-meta-serif-web-pro\",serif\'\n  \n        });\n        $(\'#sharetwt\').click(function(){\n            $(\'.tbox\').hide();\n        });\n        $(\'#submit\').click(function() {\n                var twtid = $(\'#twitterid\').val();\n                $.ajax({\n			type : \'POST\',\n			url : \'assets/service/insertAccelerist.php\',\n			dataType : \'json\',\n			data: {	twitterid : $(\'#twitterid\').val() },\n			success : function(data){\n				$(\'#twitterid\').removeClass(\'error success\').addClass((data.error === true) ? \'error\' : \'success\').val(data.msg);     \n				$(\'#submit\').attr(\'disabled\', \'disabled\').val((data.error === true) ? \'Try Again\' : \'Thanks\');\n				if(data.hand) $(\'#addedacc\').prepend(data.hand);\n				if(data.error === false){\n                                    var text = \'@\'+twtid+\' is an Accelerist. Are you? Join the others who do more, faster. bit.ly/AxBg4A cc @thinktiv #accelerists\';\n                                    $(\'#twtxtarea\').val(text);\n                                    $(\'.tbox\').show();   \n                                }\n			},\n			error : function(XMLHttpRequest, textStatus, errorThrown) {\n                                $(\'#twitterid\').removeClass(\'error success\').addClass(\'error\').val(\'There was an error.\');\n                                $(\'#submit\').attr(\'disabled\', \'disabled\').val(\'Try Again\');         \n			}\n		});\n		return false;\n	});\n});\n</script>\n\n<script type=\"text/javascript\">\nvar names;\nfunction initTwitterids(){\n        var ids = \"\";\n        $(\'.ablock\').each(function(){\n  	    ids += $(this).attr(\'rel\')+\',\';\n	});\n        if(ids.length>0 && ids.match(\",$\")){\n	    ids = ids.substring(0,ids.length-1);\n        }\n        names = ids.split(\",\")\n}\n\nfunction Linkify(text) {\n    if(text == null)\n    return \"\";\n    text = text.replace(/(https?:\\/\\/\\S+)/gi, function (s) {\n        return \'<a target=\"_blank\" href=\"\' + s + \'\">\' + s + \'</a>\';\n    });\n\n    text = text.replace(/(^|)@(\\w+)/gi, function (s) {\n        return \'<a target=\"_blank\" href=\"http://twitter.com/\' + s + \'\">\' + s + \'</a>\';\n    });\n\n    text = text.replace(/(^|)#(\\w+)/gi, function (s) {\n        return \'<a target=\"_blank\" href=\"http://search.twitter.com/search?q=\' + s.replace(/#/,\'%23\') + \'\">\' + s + \'</a>\';\n     });\n    return text;\n}\n\nfunction getTwitterUserInfo(count){\n        initTwitterids();\n	var start = Math.round(count/100)*100;\n	var end = start + 99;\n	if(names.length<end)\n		end = names.length;\n	var scr_names = \"\";\n	for(var i=start; i<end ; i++){\n		scr_names = scr_names + names[i] + \",\"; 	\n	}\n	var getInfoUrl = \'https://api.twitter.com/1/users/lookup.json?screen_name=\'+scr_names;\n	$.ajax({\n		url: getInfoUrl,\n		type: \'GET\',\n		dataType: \'jsonp\',\n		success: function(data) { \n			$.each(data, function(index, user) {\n                            var userInfo = \'<div class=\"popupin filled\"><h2 class=\"head1\"><a href=\"http://twitter.com/\'+user.screen_name+\'\" target=\"_blank\">\'+user.name+\'</a> is an accelerist</h2><div class=\"clearfix\"><a href=\"https://twitter.com/intent/follow?screen_name=\'+user.screen_name+\'\" class=\"follow head3\">Follow <span class=\"cw\">@\'+user.screen_name+\'</span></a></div><div class=\"tdesc\">\'+Linkify(user.description)+\'</div></div>\';\n                            $(\'div[rel=\"\'+user.screen_name+\'\"]\').children(\'.popup\').html(userInfo); \n			});\n		}\n	});\n}\n\n$(document).ready(function(){\n        $(\'.ablock\').live(\'mouseover\',function(){ \n                                        $(this).children(\'.popup\').css({ top:$(this).position().top - $(this).children(\'.popup\').height()-17, left:$(this).position().left-88}); \n					if($(this).children(\'.popup\').children(\'.filled\').length>0) {}\n					else getTwitterUserInfo($(this).index());\n					\n					 });\n\n\n	$(\'.ablock\').live(\'mouseout\',function(){ $(this).children(\'.popup\').css({ top:\'-9999px\', left:\'-9999px\' }); });\n       \n});\n</script>\n\n\n<script type=\"text/javascript\">\n$(document).ready(function(){\n    $(\'#twitterid\').blur(function(){\n        if(this.value==\'\') this.value=\'Add your twitter ID to the list\';\n    });\n\n    $(\'#twitterid\').focus(function(){ \n        if( (this.value==\'Add your twitter ID to the list\') || ($(\'#submit\').attr(\'disabled\')==\'disabled\') ){ \n            this.value=\'\';\n            $(\'#twitterid\').removeClass(\'error success\'); \n            $(\'#submit\').removeAttr(\'disabled\').val(\'Add me\');\n        }\n    });\n});\n</script>\n\n</head>\n<body>\n	<div class=\"page webfont\">\n    	<div class=\"aligner\">',0,'a:0:{}',0,''),(2,1,0,'footer','',0,0,0,'            <div class=\"footer\"><a class=\"footerlink frht\" href=\"http://thinktiv.com/\">thinktiv</a></div>\n        </div>\n    </div>\n<script type=\"text/javascript\">\n\n var _gaq = _gaq || [];\n _gaq.push([\'_setAccount\', \'UA-10614685-1\']);\n _gaq.push([\'_trackPageview\']);\n\n (function() {\n   var ga = document.createElement(\'script\'); ga.type = \'text/javascript\'; ga.async = true;\n   ga.src = (\'https:\' == document.location.protocol ? \'https://ssl\' : \'http://www\') + \'.google-analytics.com/ga.js\';\n   var s = document.getElementsByTagName(\'script\')[0]; s.parentNode.insertBefore(ga, s);\n })();\n\n</script>\n</body>\n</html>',0,'a:0:{}',0,'');
/*!40000 ALTER TABLE `modx_site_htmlsnippets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modx_site_plugin_events`
--

DROP TABLE IF EXISTS `modx_site_plugin_events`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `modx_site_plugin_events` (
  `pluginid` int(10) NOT NULL default '0',
  `event` varchar(255) NOT NULL default '',
  `priority` int(10) NOT NULL default '0',
  `propertyset` int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (`pluginid`,`event`),
  KEY `priority` (`priority`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modx_site_plugin_events`
--

LOCK TABLES `modx_site_plugin_events` WRITE;
/*!40000 ALTER TABLE `modx_site_plugin_events` DISABLE KEYS */;
INSERT INTO `modx_site_plugin_events` VALUES (1,'OnRichTextBrowserInit',0,0),(1,'OnRichTextEditorRegister',0,0),(1,'OnRichTextEditorInit',0,0);
/*!40000 ALTER TABLE `modx_site_plugin_events` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modx_site_plugins`
--

DROP TABLE IF EXISTS `modx_site_plugins`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `modx_site_plugins` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `source` int(10) unsigned NOT NULL default '0',
  `property_preprocess` tinyint(1) unsigned NOT NULL default '0',
  `name` varchar(50) NOT NULL default '',
  `description` varchar(255) NOT NULL default '',
  `editor_type` int(11) NOT NULL default '0',
  `category` int(11) NOT NULL default '0',
  `cache_type` tinyint(1) NOT NULL default '0',
  `plugincode` mediumtext NOT NULL,
  `locked` tinyint(1) unsigned NOT NULL default '0',
  `properties` text,
  `disabled` tinyint(1) unsigned NOT NULL default '0',
  `moduleguid` varchar(32) NOT NULL default '',
  `static` tinyint(1) unsigned NOT NULL default '0',
  `static_file` varchar(255) NOT NULL default '',
  PRIMARY KEY  (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `category` (`category`),
  KEY `locked` (`locked`),
  KEY `disabled` (`disabled`),
  KEY `static` (`static`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modx_site_plugins`
--

LOCK TABLES `modx_site_plugins` WRITE;
/*!40000 ALTER TABLE `modx_site_plugins` DISABLE KEYS */;
INSERT INTO `modx_site_plugins` VALUES (1,0,0,'TinyMCE','TinyMCE 4.3.2-pl plugin for MODx Revolution',0,0,0,'/**\n * TinyMCE RichText Editor Plugin\n *\n * Events: OnRichTextEditorInit, OnRichTextEditorRegister,\n * OnBeforeManagerPageInit, OnRichTextBrowserInit\n *\n * @author Jeff Whitfield <jeff@collabpad.com>\n * @author Shaun McCormick <shaun@collabpad.com>\n *\n * @package tinymce\n * @subpackage build\n */\nif ($modx->event->name == \'OnRichTextEditorRegister\') {\n    $modx->event->output(\'TinyMCE\');\n    return;\n}\nrequire_once $modx->getOption(\'tiny.core_path\',null,$modx->getOption(\'core_path\').\'components/tinymce/\').\'tinymce.class.php\';\n$tiny = new TinyMCE($modx,$scriptProperties);\n\n$useEditor = $modx->getOption(\'use_editor\',null,false);\n$whichEditor = $modx->getOption(\'which_editor\',null,\'\');\n\n/* Handle event */\nswitch ($modx->event->name) {\n    case \'OnRichTextEditorInit\':\n        if ($useEditor && $whichEditor == \'TinyMCE\') {\n            unset($scriptProperties[\'chunk\']);\n            if (isset($forfrontend) || $modx->context->get(\'key\') != \'mgr\') {\n                $def = $modx->getOption(\'cultureKey\',null,$modx->getOption(\'manager_language\',null,\'en\'));\n                $tiny->properties[\'language\'] = $modx->getOption(\'fe_editor_lang\',array(),$def);\n                $tiny->properties[\'frontend\'] = true;\n                unset($def);\n            }\n            /* commenting these out as it causes problems with richtext tvs */\n            //if (isset($scriptProperties[\'resource\']) && !$resource->get(\'richtext\')) return;\n            //if (!isset($scriptProperties[\'resource\']) && !$modx->getOption(\'richtext_default\',null,false)) return;\n            $tiny->setProperties($scriptProperties);\n            $html = $tiny->initialize();\n            $modx->event->output($html);\n            unset($html);\n        }\n        break;\n    case \'OnRichTextBrowserInit\':\n        if ($useEditor && $whichEditor == \'TinyMCE\') {\n            $inRevo20 = (boolean)version_compare($modx->version[\'full_version\'],\'2.1.0-rc1\',\'<\');\n            $modx->getVersionData();\n            $source = $modx->getOption(\'default_media_source\',null,1);\n            \n            $modx->controller->addHtml(\'<script type=\"text/javascript\">var inRevo20 = \'.($inRevo20 ? 1 : 0).\';MODx.source = \"\'.$source.\'\";</script>\');\n            \n            $modx->controller->addJavascript($tiny->config[\'assetsUrl\'].\'jscripts/tiny_mce/tiny_mce_popup.js\');\n            if (file_exists($tiny->config[\'assetsPath\'].\'jscripts/tiny_mce/langs/\'.$tiny->properties[\'language\'].\'.js\')) {\n                $modx->controller->addJavascript($tiny->config[\'assetsUrl\'].\'jscripts/tiny_mce/langs/\'.$tiny->properties[\'language\'].\'.js\');\n            } else {\n                $modx->controller->addJavascript($tiny->config[\'assetsUrl\'].\'jscripts/tiny_mce/langs/en.js\');\n            }\n            $modx->controller->addJavascript($tiny->config[\'assetsUrl\'].\'tiny.browser.js\');\n            $modx->event->output(\'Tiny.browserCallback\');\n        }\n        return \'\';\n        break;\n\n   default: break;\n}\nreturn;',0,'a:39:{s:22:\"accessibility_warnings\";a:7:{s:4:\"name\";s:22:\"accessibility_warnings\";s:4:\"desc\";s:315:\"If this option is set to true some accessibility warnings will be presented to the user if they miss specifying that information. This option is set to true by default, since we should all try to make this world a better place for disabled people. But if you are annoyed with the warnings, set this option to false.\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";s:0:\"\";s:5:\"value\";b:1;s:7:\"lexicon\";N;s:4:\"area\";s:0:\"\";}s:23:\"apply_source_formatting\";a:7:{s:4:\"name\";s:23:\"apply_source_formatting\";s:4:\"desc\";s:229:\"This option enables you to tell TinyMCE to apply some source formatting to the output HTML code. With source formatting, the output HTML code is indented and formatted. Without source formatting, the output HTML is more compact. \";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";s:0:\"\";s:5:\"value\";b:1;s:7:\"lexicon\";N;s:4:\"area\";s:0:\"\";}s:15:\"button_tile_map\";a:7:{s:4:\"name\";s:15:\"button_tile_map\";s:4:\"desc\";s:338:\"If this option is set to true TinyMCE will use tiled images instead of individual images for most of the editor controls. This produces faster loading time since only one GIF image needs to be loaded instead of a GIF for each individual button. This option is set to false by default since it doesn\'t work with some DOCTYPE declarations. \";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";s:0:\"\";s:5:\"value\";b:0;s:7:\"lexicon\";N;s:4:\"area\";s:0:\"\";}s:7:\"cleanup\";a:7:{s:4:\"name\";s:7:\"cleanup\";s:4:\"desc\";s:331:\"This option enables or disables the built-in clean up functionality. TinyMCE is equipped with powerful clean up functionality that enables you to specify what elements and attributes are allowed and how HTML contents should be generated. This option is set to true by default, but if you want to disable it you may set it to false.\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";s:0:\"\";s:5:\"value\";b:1;s:7:\"lexicon\";N;s:4:\"area\";s:0:\"\";}s:18:\"cleanup_on_startup\";a:7:{s:4:\"name\";s:18:\"cleanup_on_startup\";s:4:\"desc\";s:135:\"If you set this option to true, TinyMCE will perform a HTML cleanup call when the editor loads. This option is set to false by default.\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";s:0:\"\";s:5:\"value\";b:0;s:7:\"lexicon\";N;s:4:\"area\";s:0:\"\";}s:22:\"convert_fonts_to_spans\";a:7:{s:4:\"name\";s:22:\"convert_fonts_to_spans\";s:4:\"desc\";s:348:\"If you set this option to true, TinyMCE will convert all font elements to span elements and generate span elements instead of font elements. This option should be used in order to get more W3C compatible code, since font elements are deprecated. How sizes get converted can be controlled by the font_size_classes and font_size_style_values options.\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";s:0:\"\";s:5:\"value\";b:1;s:7:\"lexicon\";N;s:4:\"area\";s:0:\"\";}s:23:\"convert_newlines_to_brs\";a:7:{s:4:\"name\";s:23:\"convert_newlines_to_brs\";s:4:\"desc\";s:128:\"If you set this option to true, newline characters codes get converted into br elements. This option is set to false by default.\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";s:0:\"\";s:5:\"value\";b:0;s:7:\"lexicon\";N;s:4:\"area\";s:0:\"\";}s:12:\"convert_urls\";a:7:{s:4:\"name\";s:12:\"convert_urls\";s:4:\"desc\";s:495:\"This option enables you to control whether TinyMCE is to be clever and restore URLs to their original values. URLs are automatically converted (messed up) by default because the built-in browser logic works this way. There is no way to get the real URL unless you store it away. If you set this option to false it will try to keep these URLs intact. This option is set to true by default, which means URLs will be forced to be either absolute or relative depending on the state of relative_urls.\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";s:0:\"\";s:5:\"value\";b:1;s:7:\"lexicon\";N;s:4:\"area\";s:0:\"\";}s:11:\"dialog_type\";a:7:{s:4:\"name\";s:11:\"dialog_type\";s:4:\"desc\";s:246:\"This option enables you to specify how dialogs/popups should be opened. Possible values are \"window\" and \"modal\", where the window option opens a normal window and the dialog option opens a modal dialog. This option is set to \"window\" by default.\";s:4:\"type\";s:4:\"list\";s:7:\"options\";a:2:{i:0;a:2:{i:0;s:6:\"window\";s:4:\"text\";s:6:\"Window\";}i:1;a:2:{i:0;s:5:\"modal\";s:4:\"text\";s:5:\"Modal\";}}s:5:\"value\";s:6:\"window\";s:7:\"lexicon\";N;s:4:\"area\";s:0:\"\";}s:14:\"directionality\";a:7:{s:4:\"name\";s:14:\"directionality\";s:4:\"desc\";s:261:\"This option specifies the default writing direction. Some languages (Like Hebrew, Arabic, Urdu...) write from right to left instead of left to right. The default value of this option is \"ltr\" but if you want to use from right to left mode specify \"rtl\" instead.\";s:4:\"type\";s:4:\"list\";s:7:\"options\";a:2:{i:0;a:2:{s:5:\"value\";s:3:\"ltr\";s:4:\"text\";s:13:\"Left to Right\";}i:1;a:2:{s:5:\"value\";s:3:\"rtl\";s:4:\"text\";s:13:\"Right to Left\";}}s:5:\"value\";s:3:\"ltr\";s:7:\"lexicon\";N;s:4:\"area\";s:0:\"\";}s:14:\"element_format\";a:7:{s:4:\"name\";s:14:\"element_format\";s:4:\"desc\";s:210:\"This option enables control if elements should be in html or xhtml mode. xhtml is the default state for this option. This means that for example &lt;br /&gt; will be &lt;br&gt; if you set this option to \"html\".\";s:4:\"type\";s:4:\"list\";s:7:\"options\";a:2:{i:0;a:2:{s:5:\"value\";s:5:\"xhtml\";s:4:\"text\";s:5:\"XHTML\";}i:1;a:2:{s:5:\"value\";s:4:\"html\";s:4:\"text\";s:4:\"HTML\";}}s:5:\"value\";s:5:\"xhtml\";s:7:\"lexicon\";N;s:4:\"area\";s:0:\"\";}s:15:\"entity_encoding\";a:7:{s:4:\"name\";s:15:\"entity_encoding\";s:4:\"desc\";s:70:\"This option controls how entities/characters get processed by TinyMCE.\";s:4:\"type\";s:4:\"list\";s:7:\"options\";a:4:{i:0;a:2:{s:5:\"value\";s:0:\"\";s:4:\"text\";s:4:\"None\";}i:1;a:2:{s:5:\"value\";s:5:\"named\";s:4:\"text\";s:5:\"Named\";}i:2;a:2:{s:5:\"value\";s:7:\"numeric\";s:4:\"text\";s:7:\"Numeric\";}i:3;a:2:{s:5:\"value\";s:3:\"raw\";s:4:\"text\";s:3:\"Raw\";}}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";N;s:4:\"area\";s:0:\"\";}s:16:\"force_p_newlines\";a:7:{s:4:\"name\";s:16:\"force_p_newlines\";s:4:\"desc\";s:147:\"This option enables you to disable/enable the creation of paragraphs on return/enter in Mozilla/Firefox. The default value of this option is true. \";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";s:0:\"\";s:5:\"value\";b:1;s:7:\"lexicon\";N;s:4:\"area\";s:0:\"\";}s:22:\"force_hex_style_colors\";a:7:{s:4:\"name\";s:22:\"force_hex_style_colors\";s:4:\"desc\";s:277:\"This option enables you to control TinyMCE to force the color format to use hexadecimal instead of rgb strings. It converts for example \"color: rgb(255, 255, 0)\" to \"#FFFF00\". This option is set to true by default since otherwice MSIE and Firefox would differ in this behavior.\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";s:0:\"\";s:5:\"value\";b:1;s:7:\"lexicon\";N;s:4:\"area\";s:0:\"\";}s:6:\"height\";a:7:{s:4:\"name\";s:6:\"height\";s:4:\"desc\";s:38:\"Sets the height of the TinyMCE editor.\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:5:\"400px\";s:7:\"lexicon\";N;s:4:\"area\";s:0:\"\";}s:11:\"indentation\";a:7:{s:4:\"name\";s:11:\"indentation\";s:4:\"desc\";s:139:\"This option allows specification of the indentation level for indent/outdent buttons in the UI. This defaults to 30px but can be any value.\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:4:\"30px\";s:7:\"lexicon\";N;s:4:\"area\";s:0:\"\";}s:16:\"invalid_elements\";a:7:{s:4:\"name\";s:16:\"invalid_elements\";s:4:\"desc\";s:163:\"This option should contain a comma separated list of element names to exclude from the content. Elements in this list will removed when TinyMCE executes a cleanup.\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:0:\"\";s:7:\"lexicon\";N;s:4:\"area\";s:0:\"\";}s:6:\"nowrap\";a:7:{s:4:\"name\";s:6:\"nowrap\";s:4:\"desc\";s:212:\"This nowrap option enables you to control how whitespace is to be wordwrapped within the editor. This option is set to false by default, but if you enable it by setting it to true editor contents will never wrap.\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";s:0:\"\";s:5:\"value\";b:0;s:7:\"lexicon\";N;s:4:\"area\";s:0:\"\";}s:15:\"object_resizing\";a:7:{s:4:\"name\";s:15:\"object_resizing\";s:4:\"desc\";s:148:\"This option gives you the ability to turn on/off the inline resizing controls of tables and images in Firefox/Mozilla. These are enabled by default.\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";s:0:\"\";s:5:\"value\";b:1;s:7:\"lexicon\";N;s:4:\"area\";s:0:\"\";}s:12:\"path_options\";a:7:{s:4:\"name\";s:12:\"path_options\";s:4:\"desc\";s:119:\"Sets a group of options. Note: This will override the relative_urls, document_base_url and remove_script_host settings.\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:3:{i:0;a:2:{s:5:\"value\";s:11:\"docrelative\";s:4:\"text\";s:17:\"Document Relative\";}i:1;a:2:{s:5:\"value\";s:12:\"rootrelative\";s:4:\"text\";s:13:\"Root Relative\";}i:2;a:2:{s:5:\"value\";s:11:\"fullpathurl\";s:4:\"text\";s:13:\"Full Path URL\";}}s:5:\"value\";s:11:\"docrelative\";s:7:\"lexicon\";N;s:4:\"area\";s:0:\"\";}s:28:\"plugin_insertdate_dateFormat\";a:7:{s:4:\"name\";s:28:\"plugin_insertdate_dateFormat\";s:4:\"desc\";s:53:\"Formatting of dates when using the InsertDate plugin.\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:8:\"%Y-%m-%d\";s:7:\"lexicon\";N;s:4:\"area\";s:0:\"\";}s:28:\"plugin_insertdate_timeFormat\";a:7:{s:4:\"name\";s:28:\"plugin_insertdate_timeFormat\";s:4:\"desc\";s:53:\"Formatting of times when using the InsertDate plugin.\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:8:\"%H:%M:%S\";s:7:\"lexicon\";N;s:4:\"area\";s:0:\"\";}s:12:\"preformatted\";a:7:{s:4:\"name\";s:12:\"preformatted\";s:4:\"desc\";s:231:\"If you enable this feature, whitespace such as tabs and spaces will be preserved. Much like the behavior of a &lt;pre&gt; element. This can be handy when integrating TinyMCE with webmail clients. This option is disabled by default.\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";s:0:\"\";s:5:\"value\";b:1;s:7:\"lexicon\";N;s:4:\"area\";s:0:\"\";}s:13:\"relative_urls\";a:7:{s:4:\"name\";s:13:\"relative_urls\";s:4:\"desc\";s:231:\"If this option is set to true, all URLs returned from the file manager will be relative from the specified document_base_url. If it is set to false all URLs will be converted to absolute URLs. This option is set to true by default.\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";s:0:\"\";s:5:\"value\";b:1;s:7:\"lexicon\";N;s:4:\"area\";s:0:\"\";}s:17:\"remove_linebreaks\";a:7:{s:4:\"name\";s:17:\"remove_linebreaks\";s:4:\"desc\";s:531:\"This option controls whether line break characters should be removed from output HTML. This option is enabled by default because there are differences between browser implementations regarding what to do with white space in the DOM. Gecko and Safari place white space in text nodes in the DOM. IE and Opera remove them from the DOM and therefore the line breaks will automatically be removed in those. This option will normalize this behavior when enabled (true) and all browsers will have a white-space-stripped DOM serialization.\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";s:0:\"\";s:5:\"value\";b:0;s:7:\"lexicon\";N;s:4:\"area\";s:0:\"\";}s:18:\"remove_script_host\";a:7:{s:4:\"name\";s:18:\"remove_script_host\";s:4:\"desc\";s:221:\"If this option is enabled the protocol and host part of the URLs returned from the file manager will be removed. This option is only used if the relative_urls option is set to false. This option is set to true by default.\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";s:0:\"\";s:5:\"value\";b:1;s:7:\"lexicon\";N;s:4:\"area\";s:0:\"\";}s:20:\"remove_trailing_nbsp\";a:7:{s:4:\"name\";s:20:\"remove_trailing_nbsp\";s:4:\"desc\";s:392:\"This option enables you to specify that TinyMCE should remove any traling &nbsp; characters in block elements if you start to write inside them. Paragraphs are default padded with a &nbsp; and if you write text into such paragraphs the space will remain. Setting this option to true will remove the space. This option is set to false by default since the cursor jumps a bit in Gecko browsers.\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";s:0:\"\";s:5:\"value\";b:0;s:7:\"lexicon\";N;s:4:\"area\";s:0:\"\";}s:4:\"skin\";a:7:{s:4:\"name\";s:4:\"skin\";s:4:\"desc\";s:330:\"This option enables you to specify what skin you want to use with your theme. A skin is basically a CSS file that gets loaded from the skins directory inside the theme. The advanced theme that TinyMCE comes with has two skins, these are called \"default\" and \"o2k7\". We added another skin named \"cirkuit\" that is chosen by default.\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:7:\"cirkuit\";s:7:\"lexicon\";N;s:4:\"area\";s:0:\"\";}s:12:\"skin_variant\";a:7:{s:4:\"name\";s:12:\"skin_variant\";s:4:\"desc\";s:403:\"This option enables you to specify a variant for the skin, for example \"silver\" or \"black\". \"default\" skin does not offer any variant, whereas \"o2k7\" default offers \"silver\" or \"black\" variants to the default one. For the \"cirkuit\" skin there\'s one variant named \"silver\". When creating a skin, additional variants may also be created, by adding ui_[variant_name].css files alongside the default ui.css.\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:0:\"\";s:7:\"lexicon\";N;s:4:\"area\";s:0:\"\";}s:20:\"table_inline_editing\";a:7:{s:4:\"name\";s:20:\"table_inline_editing\";s:4:\"desc\";s:231:\"This option gives you the ability to turn on/off the inline table editing controls in Firefox/Mozilla. According to the TinyMCE documentation, these controls are somewhat buggy and not redesignable, so they are disabled by default.\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";s:0:\"\";s:5:\"value\";b:1;s:7:\"lexicon\";N;s:4:\"area\";s:0:\"\";}s:22:\"theme_advanced_disable\";a:7:{s:4:\"name\";s:22:\"theme_advanced_disable\";s:4:\"desc\";s:111:\"This option should contain a comma separated list of controls to disable from any toolbar row/panel in TinyMCE.\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:0:\"\";s:7:\"lexicon\";N;s:4:\"area\";s:0:\"\";}s:19:\"theme_advanced_path\";a:7:{s:4:\"name\";s:19:\"theme_advanced_path\";s:4:\"desc\";s:331:\"This option gives you the ability to enable/disable the element path. This option is only useful if the theme_advanced_statusbar_location option is set to \"top\" or \"bottom\". This option is set to \"true\" by default. Setting this option to \"false\" will effectively hide the path tool, though it still takes up room in the Status Bar.\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";s:0:\"\";s:5:\"value\";b:1;s:7:\"lexicon\";N;s:4:\"area\";s:0:\"\";}s:32:\"theme_advanced_resize_horizontal\";a:7:{s:4:\"name\";s:32:\"theme_advanced_resize_horizontal\";s:4:\"desc\";s:319:\"This option gives you the ability to enable/disable the horizontal resizing. This option is only useful if the theme_advanced_statusbar_location option is set to \"top\" or \"bottom\" and when the theme_advanced_resizing is set to true. This option is set to true by default, allowing both resizing horizontal and vertical.\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";s:0:\"\";s:5:\"value\";b:1;s:7:\"lexicon\";N;s:4:\"area\";s:0:\"\";}s:23:\"theme_advanced_resizing\";a:7:{s:4:\"name\";s:23:\"theme_advanced_resizing\";s:4:\"desc\";s:216:\"This option gives you the ability to enable/disable the resizing button. This option is only useful if the theme_advanced_statusbar_location option is set to \"top\" or \"bottom\". This option is set to false by default.\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";s:0:\"\";s:5:\"value\";b:1;s:7:\"lexicon\";N;s:4:\"area\";s:0:\"\";}s:33:\"theme_advanced_statusbar_location\";a:7:{s:4:\"name\";s:33:\"theme_advanced_statusbar_location\";s:4:\"desc\";s:257:\"This option enables you to specify where the element statusbar with the path and resize tool should be located. This option can be set to \"top\" or \"bottom\". The default value is set to \"top\". This option can only be used when the theme is set to \"advanced\".\";s:4:\"type\";s:4:\"list\";s:7:\"options\";a:2:{i:0;a:2:{s:5:\"value\";s:3:\"top\";s:4:\"text\";s:3:\"Top\";}i:1;a:2:{s:5:\"value\";s:6:\"bottom\";s:4:\"text\";s:6:\"Bottom\";}}s:5:\"value\";s:6:\"bottom\";s:7:\"lexicon\";N;s:4:\"area\";s:0:\"\";}s:28:\"theme_advanced_toolbar_align\";a:7:{s:4:\"name\";s:28:\"theme_advanced_toolbar_align\";s:4:\"desc\";s:187:\"This option enables you to specify the alignment of the toolbar, this value can be \"left\", \"right\" or \"center\" (the default). This option can only be used when theme is set to \"advanced\".\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:3:{i:0;a:2:{s:5:\"value\";s:6:\"center\";s:4:\"text\";s:6:\"Center\";}i:1;a:2:{s:5:\"value\";s:4:\"left\";s:4:\"text\";s:4:\"Left\";}i:2;a:2:{s:5:\"value\";s:5:\"right\";s:4:\"text\";s:5:\"Right\";}}s:5:\"value\";s:4:\"left\";s:7:\"lexicon\";N;s:4:\"area\";s:0:\"\";}s:31:\"theme_advanced_toolbar_location\";a:7:{s:4:\"name\";s:31:\"theme_advanced_toolbar_location\";s:4:\"desc\";s:191:\"\nThis option enables you to specify where the toolbar should be located. This option can be set to \"top\" or \"bottom\" (the defualt). This option can only be used when theme is set to advanced.\";s:4:\"type\";s:4:\"list\";s:7:\"options\";a:2:{i:0;a:2:{s:5:\"value\";s:3:\"top\";s:4:\"text\";s:3:\"Top\";}i:1;a:2:{s:5:\"value\";s:6:\"bottom\";s:4:\"text\";s:6:\"Bottom\";}}s:5:\"value\";s:3:\"top\";s:7:\"lexicon\";N;s:4:\"area\";s:0:\"\";}s:5:\"width\";a:7:{s:4:\"name\";s:5:\"width\";s:4:\"desc\";s:32:\"The width of the TinyMCE editor.\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:3:\"95%\";s:7:\"lexicon\";N;s:4:\"area\";s:0:\"\";}s:33:\"template_selected_content_classes\";a:7:{s:4:\"name\";s:33:\"template_selected_content_classes\";s:4:\"desc\";s:234:\"Specify a list of CSS class names for the template plugin. They must be separated by spaces. Any template element with one of the specified CSS classes will have its content replaced by the selected editor content when first inserted.\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:0:\"\";s:7:\"lexicon\";N;s:4:\"area\";s:0:\"\";}}',0,'',0,''),(2,1,0,'Google Analytics','<strong>1.7</strong> Adds Google Analytics code to every page in your site',0,0,0,'//<? \n /**\n * Google Analytics\n * \n * Adds Google Analytics code to every page in your site\n *\n * @category 	plugin\n * @version 	1.7\n * @license 	http://www.gnu.org/copyleft/gpl.html GNU Public License (GPL)\n * @internal	@properties &account=Account;string;UA-000000-0 &testMode=Test Mode;list;true,false;false &trackingNameTV=Alt tracking URL TV name;string; &trackingNamePH=Alt tracking URL placeholder name;string;&extraJs=Chunk containing extra JS;string;\n * @internal	@events OnWebPagePrerender\n */\n\n\n// By Mark Kaplan\n// Updated by Nick Crossland, David Hyland, Ryan Thrash\n\n\n/* CHANGELOG\n \n1.7 - 5 Jan 2011 - fix bug with trackingNameTV (http://modxcms.com/forums/index.php/topic,52422.msg335386.html#msg335386)\n\n1.6 - 25 June 2010 - respect the site config \"Enable stats tracking\" setting **IF YOU UPGRADE AND FIND THE PLUGIN IS NOT WORKING - CHECK THIS SETTING, AS IT MAY NOT BE ENABLED ON YOUR SITE**\n\n1.5 - 9 June 2010 - updated to use only the latest Async tracking code, plus various cleanups. Added \"extraJs\" parameter. Add documentation. Fixed check to surpress output in logged in manager (which was broken)\n\n1.4 - 12-Mar-08 - added option to provide an alternative tracking name (by template variable or placeholder value). Made configuration interface slightly friendlier\n\n1.3 - 14-Dec-07 - added option of new or legacy analytics code\n\n1.2 - 1-Aug-06 - Added InManager check and test mode parameter\n\n1.1 - 30-Jun-06 - Updated to work with current Google docs\n\n*/\n\n\n/* INSTALL \n \n1. Create a new plugin, and paste the contents of this file into the Plugin Code area. Set the plugin name to \"Google Analytics\" and description to \"<strong>1.7</strong>  Adds Google Analytics code to every page in your site\"\n\n2. Copy this line into the Plugin Configuration of the Configuration tab:\n\n&account=Account;string;UA-000000-0 &testMode=Test Mode;list;true,false;false &trackingNameTV=Alt tracking URL TV name;string; &trackingNamePH=Alt tracking URL placeholder name;string;&extraJs=Chunk containing extra JS;string;\n\n3. Enter your Google Account details on the configuration tab\n\n4. Check the OnWebPagePrerender box on the System Events tab\n\n5. Press Save\n\n6. Ensure \"Stats Tracking\" is enabled in the Site Configuration menu (Tools -> Configuration -> [ Site ] tab )  ** IMPORTANT IF UPGRADING - THIS SETTING WAS NOT RESPECTED BEFORE **\n\n*/\n\n\n\n/* USAGE\n\nOnce installed, you don\'t need to do anything else - all HTML pages which have the \"Enable Stats Tracking\" box ticked in Manager will automatically have the code inserted.\n\nPARAMETERS (set in configuration tab)\naccount = Google Analytics tracking code, which looks like UA-000000-0\ntestMode = boolean - if true, do not send tracking data to Google. Code is outputted as comments, useful for debugging\ntrackingNameTV = see ALTERNATIVE TRACKING NAMES\ntrackingNamePH = see ALTERNATIVE TRACKING NAMES\nextraJs = name of a chunk containing extra JS, which is inserted into the Google tracking code before the page view is recorded, if you wish to take advantage of GA\'s custom tracking features\n\nALTERNATIVE TRACKING NAMES\nBy default, Google will track the pages based on their [friendly] URL. Sometimes you may want to tell Analytics to report alternative tracking names. \nFor example to define stages of a goals, but where the URL may not change - e.g. submitting an eForm\nThe value for the URL that will be tracked can be set either by supplying a Template Variable name - this can then be entered on any page via the Manager\nAlternatively the name of a placeholder can be supplied, which can be set by other plugins or snippets. A placeholder value will override a template value.\n\n*/\n\n\n// Is stats tracking turned on in the Site Config?\nif ($modx->getConfig(\'track_visitors\') != 1) {\n	return;	\n}\n\n\n// Parameters\n$account = isset($account) && $account != \'UA-000000-0\' ? $account : \'\'; // Ignore default value\n$testMode = isset($testMode) && ($testMode == \'true\') ? true: false;\n$extraJs = isset($extraJs) ? $modx->evalSnippets($modx->mergePlaceholderContent($modx->getChunk($extraJs))) : \'\';\n\n\n// Tracking name - is it from a placeholder or a template variable?\n$trackingName_value = \'\';\nif (isset($trackingNameTV)) {\n		$trackingNameTv_array = !empty($trackingNameTV)?$modx->getTemplateVarOutput($trackingNameTV):array();\n		$trackingName_value = (isset($trackingNameTv_array[$trackingNameTV]) && !empty($trackingNameTv_array[$trackingNameTV]))?$trackingNameTv_array[$trackingNameTV]:$trackingName_value;\n}\n\n// If a placeholder name is defined, and the placeholder has a value, use that instead\nif (isset($trackingNamePH) && !empty($trackingNamePH)) {\n	$v = $modx->getPlaceholder($trackingNamePH) ;\n	$trackingName_value = !empty($v) ? $v : $trackingName_value;\n}\n\n\n// make sure an account number has been supplied\nif(!empty($account)){\n	\n	// Enclose value in quotes and a comma\n	$trackingName_value = (!empty($trackingName_value)) ? \', \"\'.addslashes($trackingName_value).\'\"\' : \'\';\n		\n	$script = \"\n	  \n	<script type=\\\"text/javascript\\\">\n	\n	  var _gaq = _gaq || [];\n	  _gaq.push([\'_setAccount\', \'$account\']);\n	  $extraJs\n	  _gaq.push([\'_trackPageview\' $trackingName_value]);\n	\n	  (function() {\n		var ga = document.createElement(\'script\'); ga.type = \'text/javascript\'; ga.async = true;\n		ga.src = (\'https:\' == document.location.protocol ? \'https://ssl\' : \'http://www\') + \'.google-analytics.com/ga.js\';\n		var s = document.getElementsByTagName(\'script\')[0]; s.parentNode.insertBefore(ga, s);\n	  })();\n	\n	</script>\";	\n		\n	$insert_before = \'head\';\n\n} else {\n  $script = \'<!-- Google Analytics account not supplied -->\'; \n}\n\n\nswitch ($modx->Event->name) { \n	\n	case \"OnWebPagePrerender\":\n\n		if ($testMode) {\n			$script = \'<!-- Google Analytics plugin is in test mode - output would be: \'. $script . \' -->\';	\n		} else if (isset($_SESSION[\'mgrValidated\'])) {\n			$script = \'<!-- Logged in to Manager - Google Analytics plugin output surpressed, but would be: \'. $script . \' -->\';	\n		}\n				\n		// Only track HTML documents, in the front end, which have the \"Track\" box checked in the Manager\n		$googleize = ($modx->isFrontEnd() && $modx->documentObject[\'donthit\']==0 && $modx->documentObject[\'contentType\']==\'text/html\');\n		\n		if ($googleize) {\n			$modx->documentOutput = preg_replace(\"/(<\\/$insert_before>)/i\", $script.\"\\n\\\\1\", $modx->documentOutput);			\n		}\n		\n		break;\n\n}',0,'a:0:{}',0,'',0,'');
/*!40000 ALTER TABLE `modx_site_plugins` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modx_site_snippets`
--

DROP TABLE IF EXISTS `modx_site_snippets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `modx_site_snippets` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `source` int(10) unsigned NOT NULL default '0',
  `property_preprocess` tinyint(1) unsigned NOT NULL default '0',
  `name` varchar(50) NOT NULL default '',
  `description` varchar(255) NOT NULL default '',
  `editor_type` int(11) NOT NULL default '0',
  `category` int(11) NOT NULL default '0',
  `cache_type` tinyint(1) NOT NULL default '0',
  `snippet` mediumtext,
  `locked` tinyint(1) unsigned NOT NULL default '0',
  `properties` text,
  `moduleguid` varchar(32) NOT NULL default '',
  `static` tinyint(1) unsigned NOT NULL default '0',
  `static_file` varchar(255) NOT NULL default '',
  PRIMARY KEY  (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `category` (`category`),
  KEY `locked` (`locked`),
  KEY `moduleguid` (`moduleguid`),
  KEY `static` (`static`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modx_site_snippets`
--

LOCK TABLES `modx_site_snippets` WRITE;
/*!40000 ALTER TABLE `modx_site_snippets` DISABLE KEYS */;
INSERT INTO `modx_site_snippets` VALUES (1,1,0,'loadAccelerists','',0,0,0,'$con = mysql_connect(\"localhost\",\"thinktiv_accs\",\".th1nkt1v\");\n    if (!$con){\n        die(\'Could not connect: \' . mysql_error());\n    }\n    mysql_select_db(\"thinktiv_accs\", $con);\n    $result = mysql_query(\"SELECT * FROM modx_accelerists ORDER BY addedon DESC\");\n    while($row = mysql_fetch_array($result)){\n	echo \'<div class=\"ablock twitter-anywhere-user\" rel=\"\'.$row[\'twitter_id\'].\'\">\n<a class=\"proimg\" style=\"background-image: url(https://api.twitter.com/1/users/profile_image/\'.$row[\'twitter_id\'].\')\"\nhref=\"http://twitter.com/\'.$row[\'twitter_id\'].\'\" target=\"_blank\"></a>\n<div class=\"popup\"><div class=\"popupin\"><img class=\"loader\" src=\"assets/img/load.gif\"/></div></div></div>\';	\n    }\n    mysql_close($con);',0,'a:0:{}','',0,'');
/*!40000 ALTER TABLE `modx_site_snippets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modx_site_templates`
--

DROP TABLE IF EXISTS `modx_site_templates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `modx_site_templates` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `source` int(10) unsigned NOT NULL default '0',
  `property_preprocess` tinyint(1) unsigned NOT NULL default '0',
  `templatename` varchar(50) NOT NULL default '',
  `description` varchar(255) NOT NULL default 'Template',
  `editor_type` int(11) NOT NULL default '0',
  `category` int(11) NOT NULL default '0',
  `icon` varchar(255) NOT NULL default '',
  `template_type` int(11) NOT NULL default '0',
  `content` mediumtext NOT NULL,
  `locked` tinyint(1) unsigned NOT NULL default '0',
  `properties` text,
  `static` tinyint(1) unsigned NOT NULL default '0',
  `static_file` varchar(255) NOT NULL default '',
  PRIMARY KEY  (`id`),
  UNIQUE KEY `templatename` (`templatename`),
  KEY `category` (`category`),
  KEY `locked` (`locked`),
  KEY `static` (`static`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modx_site_templates`
--

LOCK TABLES `modx_site_templates` WRITE;
/*!40000 ALTER TABLE `modx_site_templates` DISABLE KEYS */;
INSERT INTO `modx_site_templates` VALUES (1,0,0,'BaseTemplate','Template',0,0,'',0,'<html>\n<head>\n<title>[[++site_name]] - [[*pagetitle]]</title>\n<base href=\"[[++site_url]]\" />\n</head>\n<body>\n[[*content]]\n</body>\n</html>',0,NULL,0,''),(2,1,0,'Accelerists','Template',0,0,'',0,'[[$header]]\n<h1 class=\"head0 webfonts iamhead\"><span class=\"colored\">i&rsquo;m an</span> accelerist</h1>\n            <div class=\"iam bbfff\"></div>\n            <div class=\"whatis bbfff\">\n            	<h2 class=\"head1 clearfix\"><span class=\"flft\">[[*heading]]</span></h2>\n                <div class=\"clearfix whatisin\">\n                    <div class=\"flft whatiscols\">\n                        [[*textDescriptionLeft]]\n                    </div>\n                    <div class=\"flft whatiscols\">\n                        [[*textDescriptionRight]]                    \n                    </div>\n                </div>\n            </div>\n            <div class=\"clearfix raise bbfff\">\n            	<h2 class=\"head11 flft raisehead\">Are You an Accelerist?</h2>\n                <form class=\"raiseinp frht\">\n                    <label class=\"inp flft \">\n                    	<input id=\"twitterid\" class=\"inpu head11 webfont\" value=\"Add your twitter ID to the list\" type=\"text\"/>\n                    </label>\n                    <input id=\"submit\" type=\"submit\" class=\"head11 addme flft webfont\" value=\"Add me\"/>\n                </form>\n            </div>\n            <div class=\"tbox bbfff clearfix\"  style=\"display:none\" >\n            	<h2 class=\"head2 flft raisehead\">Share over Twitter to see if your friends have what it takes to accelerate.</h2>\n                <div id=\"twtbox\" class=\"raiseinp frht\" >\n                    <label class=\"inp flft inpt\">\n                    	<textarea id=\"twtxtarea\" style=\"display:block\" class=\"inpu head11 webfont\">@twittername is an Accelerist. Are you? Join the others who do more, faster. bit.ly/A2144 cc @thinktiv #accelerists</textarea>\n                    </label>\n                    <a id=\"sharetwt\" class=\"head11 share addme flft webfont\" href=\"https://twitter.com/intent/tweet\"/>Share on twitter</a>\n                </div>\n            </div>\n            <div class=\"added clearfix\">\n            	<div id=\"addedacc\" class=\"addedin\">\n                    [[!loadAccelerists]]\n                </div>\n            </div>\n\n[[$footer]]',0,'a:0:{}',0,'');
/*!40000 ALTER TABLE `modx_site_templates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modx_site_tmplvar_access`
--

DROP TABLE IF EXISTS `modx_site_tmplvar_access`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `modx_site_tmplvar_access` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `tmplvarid` int(10) NOT NULL default '0',
  `documentgroup` int(10) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modx_site_tmplvar_access`
--

LOCK TABLES `modx_site_tmplvar_access` WRITE;
/*!40000 ALTER TABLE `modx_site_tmplvar_access` DISABLE KEYS */;
/*!40000 ALTER TABLE `modx_site_tmplvar_access` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modx_site_tmplvar_contentvalues`
--

DROP TABLE IF EXISTS `modx_site_tmplvar_contentvalues`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `modx_site_tmplvar_contentvalues` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `tmplvarid` int(10) NOT NULL default '0',
  `contentid` int(10) NOT NULL default '0',
  `value` mediumtext NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `tmplvarid` (`tmplvarid`),
  KEY `contentid` (`contentid`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modx_site_tmplvar_contentvalues`
--

LOCK TABLES `modx_site_tmplvar_contentvalues` WRITE;
/*!40000 ALTER TABLE `modx_site_tmplvar_contentvalues` DISABLE KEYS */;
INSERT INTO `modx_site_tmplvar_contentvalues` VALUES (1,1,1,'We are a venture accelerator'),(2,2,1,'<p>In the world of technology ventures, the word ‘accelerator’ is tossed about like corn in a chicken yard. A venture accelerator can mean many things: A physical place to sit and work and consume electricity for free. A community of startup teams and mentors that help each other launch and test new products. A benevolent angel with a good Rolodex.<br /><br />Regardless of its application, the term ‘accelerator’ almost always implies the application of something more than just money, an additional variable that allows a business to evolve more quickly. For us, being an accelerator is not about allowing a company to move or fail faster. It’s about engineering a business to avoid failures and achieve maximum winning velocity.</p>'),(3,3,1,'<p>Our model of acceleration lets businesses cheat time by reducing failure cycles. Creates massive upswings in value in aggressive time frames. Allows companies to see the market chessboard, assemble the right players, and engineer the right moves to win. <br /><br />We do this with world-class people power, spanning many critical disciplines of expertise. But, these aren\'t just normal people. They are startup people; entrepreneurs; wealth creators. They connect the dots that others miss; they are creative capitalists. They move markets with more than just capital.    <br /><br />We call them “accelerists.” <em>Are you one of them?</em></p>');
/*!40000 ALTER TABLE `modx_site_tmplvar_contentvalues` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modx_site_tmplvar_templates`
--

DROP TABLE IF EXISTS `modx_site_tmplvar_templates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `modx_site_tmplvar_templates` (
  `tmplvarid` int(10) NOT NULL default '0',
  `templateid` int(11) NOT NULL default '0',
  `rank` int(11) NOT NULL default '0',
  PRIMARY KEY  (`tmplvarid`,`templateid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modx_site_tmplvar_templates`
--

LOCK TABLES `modx_site_tmplvar_templates` WRITE;
/*!40000 ALTER TABLE `modx_site_tmplvar_templates` DISABLE KEYS */;
INSERT INTO `modx_site_tmplvar_templates` VALUES (1,2,0),(2,2,0),(3,2,0);
/*!40000 ALTER TABLE `modx_site_tmplvar_templates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modx_site_tmplvars`
--

DROP TABLE IF EXISTS `modx_site_tmplvars`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `modx_site_tmplvars` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `source` int(10) unsigned NOT NULL default '0',
  `property_preprocess` tinyint(1) unsigned NOT NULL default '0',
  `type` varchar(20) NOT NULL default '',
  `name` varchar(50) NOT NULL default '',
  `caption` varchar(80) NOT NULL default '',
  `description` varchar(255) NOT NULL default '',
  `editor_type` int(11) NOT NULL default '0',
  `category` int(11) NOT NULL default '0',
  `locked` tinyint(1) unsigned NOT NULL default '0',
  `elements` text,
  `rank` int(11) NOT NULL default '0',
  `display` varchar(20) NOT NULL default '',
  `default_text` mediumtext,
  `properties` text,
  `input_properties` text,
  `output_properties` text,
  `static` tinyint(1) unsigned NOT NULL default '0',
  `static_file` varchar(255) NOT NULL default '',
  PRIMARY KEY  (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `category` (`category`),
  KEY `locked` (`locked`),
  KEY `rank` (`rank`),
  KEY `static` (`static`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modx_site_tmplvars`
--

LOCK TABLES `modx_site_tmplvars` WRITE;
/*!40000 ALTER TABLE `modx_site_tmplvars` DISABLE KEYS */;
INSERT INTO `modx_site_tmplvars` VALUES (1,1,0,'text','heading','Heading','Headline for the page\'s main description text.',0,0,0,'',0,'default','','a:0:{}','a:3:{s:10:\"allowBlank\";s:4:\"true\";s:9:\"maxLength\";s:0:\"\";s:9:\"minLength\";s:0:\"\";}','a:0:{}',0,''),(2,1,0,'richtext','textDescriptionLeft','Description Right','Right column description text.',0,0,0,'',0,'default','','a:0:{}','a:0:{}','a:0:{}',0,''),(3,1,0,'richtext','textDescriptionRight','Description Left','Left column description text.',0,0,0,'',0,'default','','a:0:{}','a:0:{}','a:0:{}',0,'');
/*!40000 ALTER TABLE `modx_site_tmplvars` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modx_system_eventnames`
--

DROP TABLE IF EXISTS `modx_system_eventnames`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `modx_system_eventnames` (
  `name` varchar(50) NOT NULL,
  `service` tinyint(4) unsigned NOT NULL default '0',
  `groupname` varchar(20) NOT NULL default '',
  PRIMARY KEY  (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modx_system_eventnames`
--

LOCK TABLES `modx_system_eventnames` WRITE;
/*!40000 ALTER TABLE `modx_system_eventnames` DISABLE KEYS */;
INSERT INTO `modx_system_eventnames` VALUES ('OnPluginEventBeforeSave',1,'Plugin Events'),('OnPluginEventSave',1,'Plugin Events'),('OnPluginEventBeforeRemove',1,'Plugin Events'),('OnPluginEventRemove',1,'Plugin Events'),('OnResourceGroupSave',1,'Security'),('OnResourceGroupBeforeSave',1,'Security'),('OnResourceGroupRemove',1,'Security'),('OnResourceGroupBeforeRemove',1,'Security'),('OnSnippetBeforeSave',1,'Snippets'),('OnSnippetSave',1,'Snippets'),('OnSnippetBeforeRemove',1,'Snippets'),('OnSnippetRemove',1,'Snippets'),('OnSnipFormPrerender',1,'Snippets'),('OnSnipFormRender',1,'Snippets'),('OnBeforeSnipFormSave',1,'Snippets'),('OnSnipFormSave',1,'Snippets'),('OnBeforeSnipFormDelete',1,'Snippets'),('OnSnipFormDelete',1,'Snippets'),('OnTemplateBeforeSave',1,'Templates'),('OnTemplateSave',1,'Templates'),('OnTemplateBeforeRemove',1,'Templates'),('OnTemplateRemove',1,'Templates'),('OnTempFormPrerender',1,'Templates'),('OnTempFormRender',1,'Templates'),('OnBeforeTempFormSave',1,'Templates'),('OnTempFormSave',1,'Templates'),('OnBeforeTempFormDelete',1,'Templates'),('OnTempFormDelete',1,'Templates'),('OnTemplateVarBeforeSave',1,'Template Variables'),('OnTemplateVarSave',1,'Template Variables'),('OnTemplateVarBeforeRemove',1,'Template Variables'),('OnTemplateVarRemove',1,'Template Variables'),('OnTVFormPrerender',1,'Template Variables'),('OnTVFormRender',1,'Template Variables'),('OnBeforeTVFormSave',1,'Template Variables'),('OnTVFormSave',1,'Template Variables'),('OnBeforeTVFormDelete',1,'Template Variables'),('OnTVFormDelete',1,'Template Variables'),('OnTVInputRenderList',1,'Template Variables'),('OnTVInputPropertiesList',1,'Template Variables'),('OnTVOutputRenderList',1,'Template Variables'),('OnTVOutputRenderPropertiesList',1,'Template Variables'),('OnUserGroupBeforeSave',1,'User Groups'),('OnUserGroupSave',1,'User Groups'),('OnUserGroupBeforeRemove',1,'User Groups'),('OnUserGroupRemove',1,'User Groups'),('OnBeforeUserGroupFormSave',1,'User Groups'),('OnUserGroupFormSave',1,'User Groups'),('OnBeforeUserGroupFormRemove',1,'User Groups'),('OnDocFormPrerender',1,'Resources'),('OnDocFormRender',1,'Resources'),('OnBeforeDocFormSave',1,'Resources'),('OnDocFormSave',1,'Resources'),('OnBeforeDocFormDelete',1,'Resources'),('OnDocFormDelete',1,'Resources'),('OnDocPublished',5,'Resources'),('OnDocUnPublished',5,'Resources'),('OnBeforeEmptyTrash',1,'Resources'),('OnEmptyTrash',1,'Resources'),('OnResourceTVFormPrerender',1,'Resources'),('OnResourceTVFormRender',1,'Resources'),('OnResourceDelete',1,'Resources'),('OnResourceUndelete',1,'Resources'),('OnResourceBeforeSort',1,'Resources'),('OnResourceSort',1,'Resources'),('OnResourceDuplicate',1,'Resources'),('OnResourceToolbarLoad',1,'Resources'),('OnResourceRemoveFromResourceGroup',1,'Resources'),('OnResourceAddToResourceGroup',1,'Resources'),('OnRichTextEditorRegister',1,'RichText Editor'),('OnRichTextEditorInit',1,'RichText Editor'),('OnRichTextBrowserInit',1,'RichText Editor'),('OnWebLogin',3,'Security'),('OnBeforeWebLogout',3,'Security'),('OnWebLogout',3,'Security'),('OnManagerLogin',2,'Security'),('OnBeforeManagerLogout',2,'Security'),('OnManagerLogout',2,'Security'),('OnBeforeWebLogin',3,'Security'),('OnWebAuthentication',3,'Security'),('OnBeforeManagerLogin',2,'Security'),('OnManagerAuthentication',2,'Security'),('OnManagerLoginFormRender',2,'Security'),('OnManagerLoginFormPrerender',2,'Security'),('OnPageUnauthorized',1,'Security'),('OnUserFormPrerender',1,'Users'),('OnUserFormRender',1,'Users'),('OnBeforeUserFormSave',1,'Users'),('OnUserFormSave',1,'Users'),('OnBeforeUserFormDelete',1,'Users'),('OnUserFormDelete',1,'Users'),('OnUserNotFound',1,'Users'),('OnBeforeUserActivate',1,'Users'),('OnUserActivate',1,'Users'),('OnBeforeUserDeactivate',1,'Users'),('OnUserDeactivate',1,'Users'),('OnUserChangePassword',1,'Users'),('OnUserBeforeRemove',1,'Users'),('OnUserBeforeSave',1,'Users'),('OnUserSave',1,'Users'),('OnUserRemove',1,'Users'),('OnUserBeforeAddToGroup',1,'User Groups'),('OnUserAddToGroup',1,'User Groups'),('OnUserBeforeRemoveFromGroup',1,'User Groups'),('OnUserRemoveFromGroup',1,'User Groups'),('OnWebPagePrerender',5,'System'),('OnBeforeCacheUpdate',4,'System'),('OnCacheUpdate',4,'System'),('OnLoadWebPageCache',4,'System'),('OnBeforeSaveWebPageCache',4,'System'),('OnSiteRefresh',1,'System'),('OnFileManagerUpload',1,'System'),('OnFileCreateFormPrerender',1,'System'),('OnManagerPageInit',2,'System'),('OnManagerPageBeforeRender',2,'System'),('OnManagerPageAfterRender',2,'System'),('OnWebPageInit',5,'System'),('OnLoadWebDocument',5,'System'),('OnParseDocument',5,'System'),('OnWebPageComplete',5,'System'),('OnBeforeManagerPageInit',2,'System'),('OnPageNotFound',1,'System'),('OnHandleRequest',5,'System'),('OnSiteSettingsRender',1,'Settings'),('OnInitCulture',3,'Internationalization'),('OnCategorySave',1,'Categories'),('OnCategoryBeforeSave',1,'Categories'),('OnCategoryRemove',1,'Categories'),('OnCategoryBeforeRemove',1,'Categories'),('OnChunkSave',1,'Chunks'),('OnChunkBeforeSave',1,'Chunks'),('OnChunkRemove',1,'Chunks'),('OnChunkBeforeRemove',1,'Chunks'),('OnChunkFormPrerender',1,'Chunks'),('OnChunkFormRender',1,'Chunks'),('OnBeforeChunkFormSave',1,'Chunks'),('OnChunkFormSave',1,'Chunks'),('OnBeforeChunkFormDelete',1,'Chunks'),('OnChunkFormDelete',1,'Chunks'),('OnContextSave',1,'Contexts'),('OnContextBeforeSave',1,'Contexts'),('OnContextRemove',1,'Contexts'),('OnContextBeforeRemove',1,'Contexts'),('OnContextFormPrerender',2,'Contexts'),('OnContextFormRender',2,'Contexts'),('OnPluginSave',1,'Plugins'),('OnPluginBeforeSave',1,'Plugins'),('OnPluginRemove',1,'Plugins'),('OnPluginBeforeRemove',1,'Plugins'),('OnPluginFormPrerender',1,'Plugins'),('OnPluginFormRender',1,'Plugins'),('OnBeforePluginFormSave',1,'Plugins'),('OnPluginFormSave',1,'Plugins'),('OnBeforePluginFormDelete',1,'Plugins'),('OnPluginFormDelete',1,'Plugins'),('OnPropertySetSave',1,'Property Sets'),('OnPropertySetBeforeSave',1,'Property Sets'),('OnPropertySetRemove',1,'Property Sets'),('OnPropertySetBeforeRemove',1,'Property Sets'),('OnMediaSourceBeforeFormDelete',1,'Media Sources'),('OnMediaSourceBeforeFormSave',1,'Media Sources'),('OnMediaSourceGetProperties',1,'Media Sources'),('OnMediaSourceFormDelete',1,'Media Sources'),('OnMediaSourceFormSave',1,'Media Sources'),('OnMediaSourceDuplicate',1,'Resources');
/*!40000 ALTER TABLE `modx_system_eventnames` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modx_system_settings`
--

DROP TABLE IF EXISTS `modx_system_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `modx_system_settings` (
  `key` varchar(50) NOT NULL default '',
  `value` text NOT NULL,
  `xtype` varchar(75) NOT NULL default 'textfield',
  `namespace` varchar(40) NOT NULL default 'core',
  `area` varchar(255) NOT NULL default '',
  `editedon` timestamp NOT NULL default '0000-00-00 00:00:00' on update CURRENT_TIMESTAMP,
  PRIMARY KEY  (`key`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modx_system_settings`
--

LOCK TABLES `modx_system_settings` WRITE;
/*!40000 ALTER TABLE `modx_system_settings` DISABLE KEYS */;
INSERT INTO `modx_system_settings` VALUES ('access_category_enabled','1','combo-boolean','core','authentication','0000-00-00 00:00:00'),('access_context_enabled','1','combo-boolean','core','authentication','0000-00-00 00:00:00'),('access_resource_group_enabled','1','combo-boolean','core','authentication','0000-00-00 00:00:00'),('allow_forward_across_contexts','','combo-boolean','core','system','0000-00-00 00:00:00'),('allow_manager_login_forgot_password','1','combo-boolean','core','authentication','0000-00-00 00:00:00'),('allow_multiple_emails','0','combo-boolean','core','authentication','2012-03-12 07:45:20'),('allow_tags_in_post','1','combo-boolean','core','system','0000-00-00 00:00:00'),('archive_with','','combo-boolean','core','system','0000-00-00 00:00:00'),('auto_menuindex','1','combo-boolean','core','site','0000-00-00 00:00:00'),('auto_check_pkg_updates','1','combo-boolean','core','system','0000-00-00 00:00:00'),('auto_check_pkg_updates_cache_expire','15','textfield','core','system','0000-00-00 00:00:00'),('automatic_alias','0','combo-boolean','core','furls','0000-00-00 00:00:00'),('base_help_url','http://rtfm.modx.com/display/revolution20/','textfield','core','manager','0000-00-00 00:00:00'),('blocked_minutes','60','textfield','core','authentication','0000-00-00 00:00:00'),('cache_action_map','1','combo-boolean','core','caching','0000-00-00 00:00:00'),('cache_context_settings','1','combo-boolean','core','caching','0000-00-00 00:00:00'),('cache_db','0','combo-boolean','core','caching','0000-00-00 00:00:00'),('cache_db_expires','0','textfield','core','caching','0000-00-00 00:00:00'),('cache_db_session','0','combo-boolean','core','caching','0000-00-00 00:00:00'),('cache_db_session_lifetime','','textfield','core','caching','0000-00-00 00:00:00'),('cache_default','1','combo-boolean','core','caching','0000-00-00 00:00:00'),('cache_disabled','0','combo-boolean','core','caching','0000-00-00 00:00:00'),('cache_expires','0','textfield','core','caching','0000-00-00 00:00:00'),('cache_format','0','textfield','core','caching','0000-00-00 00:00:00'),('cache_handler','xPDOFileCache','textfield','core','caching','0000-00-00 00:00:00'),('cache_lang_js','1','combo-boolean','core','caching','0000-00-00 00:00:00'),('cache_lexicon_topics','1','combo-boolean','core','caching','0000-00-00 00:00:00'),('cache_noncore_lexicon_topics','1','combo-boolean','core','caching','0000-00-00 00:00:00'),('cache_resource','1','combo-boolean','core','caching','0000-00-00 00:00:00'),('cache_resource_expires','0','textfield','core','caching','0000-00-00 00:00:00'),('cache_scripts','1','combo-boolean','core','caching','0000-00-00 00:00:00'),('cache_system_settings','1','combo-boolean','core','caching','0000-00-00 00:00:00'),('clear_cache_refresh_trees','0','combo-boolean','core','caching','0000-00-00 00:00:00'),('compress_css','1','combo-boolean','core','manager','0000-00-00 00:00:00'),('compress_js','1','combo-boolean','core','manager','0000-00-00 00:00:00'),('compress_js_max_files','10','textfield','core','manager','0000-00-00 00:00:00'),('compress_js_groups','','combo-boolean','core','manager','0000-00-00 00:00:00'),('container_suffix','/','textfield','core','furls','0000-00-00 00:00:00'),('context_tree_sort','','combo-boolean','core','manager','0000-00-00 00:00:00'),('context_tree_sortby','rank','textfield','core','manager','0000-00-00 00:00:00'),('context_tree_sortdir','ASC','textfield','core','manager','0000-00-00 00:00:00'),('cultureKey','en','modx-combo-language','core','language','0000-00-00 00:00:00'),('date_timezone','','textfield','core','system','0000-00-00 00:00:00'),('debug','','textfield','core','system','0000-00-00 00:00:00'),('default_duplicate_publish_option','preserve','textfield','core','manager','0000-00-00 00:00:00'),('default_media_source','1','modx-combo-source','core','manager','0000-00-00 00:00:00'),('default_per_page','20','textfield','core','manager','0000-00-00 00:00:00'),('default_template','1','modx-combo-template','core','site','0000-00-00 00:00:00'),('default_content_type','1','modx-combo-content-type','core','site','0000-00-00 00:00:00'),('editor_css_path','','textfield','core','editor','0000-00-00 00:00:00'),('editor_css_selectors','','textfield','core','editor','0000-00-00 00:00:00'),('emailsender','mkaria@thinktiv.com','textfield','core','authentication','2012-03-07 13:19:22'),('emailsubject','Your login details','textfield','core','authentication','0000-00-00 00:00:00'),('enable_dragdrop','1','combo-boolean','core','manager','0000-00-00 00:00:00'),('error_page','1','textfield','core','site','0000-00-00 00:00:00'),('failed_login_attempts','5','textfield','core','authentication','0000-00-00 00:00:00'),('fe_editor_lang','en','modx-combo-language','core','language','0000-00-00 00:00:00'),('feed_modx_news','http://feeds.feedburner.com/modx-announce','textfield','core','system','0000-00-00 00:00:00'),('feed_modx_news_enabled','1','combo-boolean','core','system','0000-00-00 00:00:00'),('feed_modx_security','http://feeds.feedburner.com/modxsecurity','textfield','core','system','0000-00-00 00:00:00'),('feed_modx_security_enabled','1','combo-boolean','core','system','0000-00-00 00:00:00'),('filemanager_path','','textfield','core','file','0000-00-00 00:00:00'),('filemanager_path_relative','1','combo-boolean','core','file','0000-00-00 00:00:00'),('filemanager_url','','textfield','core','file','0000-00-00 00:00:00'),('filemanager_url_relative','1','combo-boolean','core','file','0000-00-00 00:00:00'),('forgot_login_email','<p>Hello [[+username]],</p>\n<p>A request for a password reset has been issued for your MODX user. If you sent this, you may follow this link and use this password to login. If you did not send this request, please ignore this email.</p>\n\n<p>\n    <strong>Activation Link:</strong> [[+url_scheme]][[+http_host]][[+manager_url]]?modahsh=[[+hash]]<br />\n    <strong>Username:</strong> [[+username]]<br />\n    <strong>Password:</strong> [[+password]]<br />\n</p>\n\n<p>After you log into the MODX Manager, you can change your password again, if you wish.</p>\n\n<p>Regards,<br />Site Administrator</p>','textarea','core','authentication','0000-00-00 00:00:00'),('forward_merge_excludes','type,published,class_key,context_key','textfield','core','system','0000-00-00 00:00:00'),('friendly_alias_lowercase_only','1','combo-boolean','core','furls','0000-00-00 00:00:00'),('friendly_alias_max_length','0','textfield','core','furls','0000-00-00 00:00:00'),('friendly_alias_restrict_chars','pattern','textfield','core','furls','0000-00-00 00:00:00'),('friendly_alias_restrict_chars_pattern','/[\\0\\x0B\\t\\n\\r\\f\\a&=+%#<>\"~:`@\\?\\[\\]\\{\\}\\|\\^\'\\\\]/','textfield','core','furls','0000-00-00 00:00:00'),('friendly_alias_strip_element_tags','1','combo-boolean','core','furls','0000-00-00 00:00:00'),('friendly_alias_translit','none','textfield','core','furls','0000-00-00 00:00:00'),('friendly_alias_translit_class','translit.modTransliterate','textfield','core','furls','0000-00-00 00:00:00'),('friendly_alias_translit_class_path','{core_path}components/','textfield','core','furls','0000-00-00 00:00:00'),('friendly_alias_trim_chars','/.-_','textfield','core','furls','0000-00-00 00:00:00'),('friendly_alias_word_delimiter','-','textfield','core','furls','0000-00-00 00:00:00'),('friendly_alias_word_delimiters','-_','textfield','core','furls','0000-00-00 00:00:00'),('friendly_urls','0','combo-boolean','core','furls','0000-00-00 00:00:00'),('global_duplicate_uri_check','0','combo-boolean','core','furls','0000-00-00 00:00:00'),('hidemenu_default','0','combo-boolean','core','site','0000-00-00 00:00:00'),('inline_help','1','combo-boolean','core','manager','0000-00-00 00:00:00'),('locale','','textfield','core','language','0000-00-00 00:00:00'),('log_level','1','textfield','core','system','0000-00-00 00:00:00'),('log_target','FILE','textfield','core','system','0000-00-00 00:00:00'),('link_tag_scheme','-1','textfield','core','site','0000-00-00 00:00:00'),('mail_charset','UTF-8','modx-combo-charset','core','mail','0000-00-00 00:00:00'),('mail_encoding','8bit','textfield','core','mail','0000-00-00 00:00:00'),('mail_use_smtp','1','combo-boolean','core','mail','2012-03-12 07:41:30'),('mail_smtp_auth','1','combo-boolean','core','mail','2012-03-12 07:39:17'),('mail_smtp_helo','','textfield','core','mail','0000-00-00 00:00:00'),('mail_smtp_hosts','smtp.webfaction.com','textfield','core','mail','2012-03-12 07:39:57'),('mail_smtp_keepalive','','combo-boolean','core','mail','0000-00-00 00:00:00'),('mail_smtp_pass','.th1nkt1v','text-password','core','mail','2012-03-12 07:40:19'),('mail_smtp_port','25','textfield','core','mail','2012-03-12 07:40:35'),('mail_smtp_prefix','','textfield','core','mail','0000-00-00 00:00:00'),('mail_smtp_single_to','','combo-boolean','core','mail','0000-00-00 00:00:00'),('mail_smtp_timeout','10','textfield','core','mail','0000-00-00 00:00:00'),('mail_smtp_user','thinktiv','textfield','core','mail','2012-03-12 07:41:07'),('manager_date_format','Y-m-d','textfield','core','manager','0000-00-00 00:00:00'),('manager_favicon_url','','textfield','core','manager','0000-00-00 00:00:00'),('manager_html5_cache','0','combo-boolean','core','manager','0000-00-00 00:00:00'),('manager_js_cache_file_locking','1','combo-boolean','core','manager','0000-00-00 00:00:00'),('manager_js_cache_max_age','3600','textfield','core','manager','0000-00-00 00:00:00'),('manager_js_document_root','','textfield','core','manager','0000-00-00 00:00:00'),('manager_js_zlib_output_compression','0','combo-boolean','core','manager','0000-00-00 00:00:00'),('manager_time_format','g:i a','textfield','core','manager','0000-00-00 00:00:00'),('manager_direction','ltr','textfield','core','language','0000-00-00 00:00:00'),('manager_lang_attribute','en','textfield','core','language','0000-00-00 00:00:00'),('manager_language','en','modx-combo-language','core','language','0000-00-00 00:00:00'),('manager_login_url_alternate','','textfield','core','authentication','0000-00-00 00:00:00'),('manager_theme','default','textfield','core','manager','0000-00-00 00:00:00'),('modx_charset','UTF-8','modx-combo-charset','core','language','0000-00-00 00:00:00'),('principal_targets','modAccessContext,modAccessResourceGroup,modAccessCategory,sources.modAccessMediaSource','textfield','core','authentication','0000-00-00 00:00:00'),('proxy_auth_type','BASIC','textfield','core','proxy','0000-00-00 00:00:00'),('proxy_host','','textfield','core','proxy','0000-00-00 00:00:00'),('proxy_password','','text-password','core','proxy','0000-00-00 00:00:00'),('proxy_port','','textfield','core','proxy','0000-00-00 00:00:00'),('proxy_username','','textfield','core','proxy','0000-00-00 00:00:00'),('password_generated_length','8','textfield','core','authentication','0000-00-00 00:00:00'),('password_min_length','8','textfield','core','authentication','0000-00-00 00:00:00'),('phpthumb_allow_src_above_docroot','','combo-boolean','core','phpthumb','0000-00-00 00:00:00'),('phpthumb_cache_maxage','30','textfield','core','phpthumb','0000-00-00 00:00:00'),('phpthumb_cache_maxsize','100','textfield','core','phpthumb','0000-00-00 00:00:00'),('phpthumb_cache_maxfiles','10000','textfield','core','phpthumb','0000-00-00 00:00:00'),('phpthumb_cache_source_enabled','','combo-boolean','core','phpthumb','0000-00-00 00:00:00'),('phpthumb_document_root','','textfield','core','phpthumb','0000-00-00 00:00:00'),('phpthumb_error_bgcolor','CCCCFF','textfield','core','phpthumb','0000-00-00 00:00:00'),('phpthumb_error_textcolor','FF0000','textfield','core','phpthumb','0000-00-00 00:00:00'),('phpthumb_error_fontsize','1','textfield','core','phpthumb','0000-00-00 00:00:00'),('phpthumb_far','C','textfield','core','phpthumb','0000-00-00 00:00:00'),('phpthumb_imagemagick_path','','textfield','core','phpthumb','0000-00-00 00:00:00'),('phpthumb_nohotlink_enabled','1','combo-boolean','core','phpthumb','0000-00-00 00:00:00'),('phpthumb_nohotlink_erase_image','1','combo-boolean','core','phpthumb','0000-00-00 00:00:00'),('phpthumb_nohotlink_valid_domains','{http_host}','textfield','core','phpthumb','0000-00-00 00:00:00'),('phpthumb_nohotlink_text_message','Off-server thumbnailing is not allowed','textfield','core','phpthumb','0000-00-00 00:00:00'),('phpthumb_nooffsitelink_enabled','','combo-boolean','core','phpthumb','0000-00-00 00:00:00'),('phpthumb_nooffsitelink_erase_image','1','combo-boolean','core','phpthumb','0000-00-00 00:00:00'),('phpthumb_nooffsitelink_require_refer','','combo-boolean','core','phpthumb','0000-00-00 00:00:00'),('phpthumb_nooffsitelink_text_message','Off-server linking is not allowed','textfield','core','phpthumb','0000-00-00 00:00:00'),('phpthumb_nooffsitelink_valid_domains','{http_host}','textfield','core','phpthumb','0000-00-00 00:00:00'),('phpthumb_nooffsitelink_watermark_src','','textfield','core','phpthumb','0000-00-00 00:00:00'),('phpthumb_zoomcrop','0','textfield','core','phpthumb','0000-00-00 00:00:00'),('publish_default','','combo-boolean','core','site','0000-00-00 00:00:00'),('rb_base_dir','','textfield','core','file','0000-00-00 00:00:00'),('rb_base_url','','textfield','core','file','0000-00-00 00:00:00'),('request_controller','index.php','textfield','core','gateway','0000-00-00 00:00:00'),('request_method_strict','0','combo-boolean','core','gateway','0000-00-00 00:00:00'),('request_param_alias','q','textfield','core','gateway','0000-00-00 00:00:00'),('request_param_id','id','textfield','core','gateway','0000-00-00 00:00:00'),('resolve_hostnames','0','combo-boolean','core','system','0000-00-00 00:00:00'),('resource_tree_node_name','pagetitle','textfield','core','manager','0000-00-00 00:00:00'),('resource_tree_node_tooltip','','textfield','core','manager','0000-00-00 00:00:00'),('richtext_default','1','combo-boolean','core','manager','0000-00-00 00:00:00'),('search_default','1','combo-boolean','core','site','0000-00-00 00:00:00'),('server_offset_time','0','textfield','core','system','0000-00-00 00:00:00'),('server_protocol','http','textfield','core','system','0000-00-00 00:00:00'),('session_cookie_domain','','textfield','core','session','0000-00-00 00:00:00'),('session_cookie_lifetime','604800','textfield','core','session','0000-00-00 00:00:00'),('session_cookie_path','','textfield','core','session','0000-00-00 00:00:00'),('session_cookie_secure','','combo-boolean','core','session','0000-00-00 00:00:00'),('session_gc_maxlifetime','604800','textfield','core','session','0000-00-00 00:00:00'),('session_handler_class','modSessionHandler','textfield','core','session','0000-00-00 00:00:00'),('session_name','','textfield','core','session','0000-00-00 00:00:00'),('set_header','1','combo-boolean','core','system','0000-00-00 00:00:00'),('show_tv_categories_header','1','combo-boolean','core','manager','0000-00-00 00:00:00'),('signupemail_message','<p>Hello [[+uid]],</p>\n    <p>Here are your login details for the [[+sname]] MODX Manager:</p>\n\n    <p>\n        <strong>Username:</strong> [[+uid]]<br />\n        <strong>Password:</strong> [[+pwd]]<br />\n    </p>\n\n    <p>Once you log into the MODX Manager at [[+surl]], you can change your password.</p>\n\n    <p>Regards,<br />Site Administrator</p>','textarea','core','authentication','0000-00-00 00:00:00'),('site_name','MODX Revolution','textfield','core','site','0000-00-00 00:00:00'),('site_start','1','textfield','core','site','0000-00-00 00:00:00'),('site_status','1','combo-boolean','core','site','0000-00-00 00:00:00'),('site_unavailable_message','The site is currently unavailable','textfield','core','site','0000-00-00 00:00:00'),('site_unavailable_page','0','textfield','core','site','0000-00-00 00:00:00'),('strip_image_paths','1','combo-boolean','core','file','0000-00-00 00:00:00'),('symlink_merge_fields','1','combo-boolean','core','site','0000-00-00 00:00:00'),('topmenu_show_descriptions','1','combo-boolean','core','manager','0000-00-00 00:00:00'),('tree_default_sort','menuindex','textfield','core','manager','0000-00-00 00:00:00'),('tree_root_id','0','numberfield','core','manager','0000-00-00 00:00:00'),('tvs_below_content','0','combo-boolean','core','manager','0000-00-00 00:00:00'),('udperms_allowroot','','combo-boolean','core','authentication','0000-00-00 00:00:00'),('unauthorized_page','1','textfield','core','site','0000-00-00 00:00:00'),('upload_files','txt,html,htm,xml,js,css,zip,gz,rar,z,tgz,tar,htaccess,mp3,mp4,aac,wav,au,wmv,avi,mpg,mpeg,pdf,doc,xls,txt,ppt,pptx,docx,xlsx,jpg,jpeg,png,gif,psd,ico,bmp,odt,ods,odp,odb,odg,odf,docx,pptx,xlsx','textfield','core','file','0000-00-00 00:00:00'),('upload_flash','swf,fla','textfield','core','file','0000-00-00 00:00:00'),('upload_images','jpg,jpeg,png,gif,psd,ico,bmp','textfield','core','file','0000-00-00 00:00:00'),('upload_maxsize','1048576','textfield','core','file','0000-00-00 00:00:00'),('upload_media','mp3,wav,au,wmv,avi,mpg,mpeg','textfield','core','file','0000-00-00 00:00:00'),('use_alias_path','0','combo-boolean','core','furls','0000-00-00 00:00:00'),('use_browser','1','combo-boolean','core','file','0000-00-00 00:00:00'),('use_editor','1','combo-boolean','core','editor','0000-00-00 00:00:00'),('use_multibyte','1','combo-boolean','core','language','2012-03-07 13:19:22'),('use_weblink_target','','combo-boolean','core','site','0000-00-00 00:00:00'),('webpwdreminder_message','<p>Hello [[+uid]],</p>\n\n    <p>To activate your new password click the following link:</p>\n\n    <p>[[+surl]]</p>\n\n    <p>If successful you can use the following password to login:</p>\n\n    <p><strong>Password:</strong> [[+pwd]]</p>\n\n    <p>If you did not request this email then please ignore it.</p>\n\n    <p>Regards,<br />\n    Site Administrator</p>','textarea','core','authentication','0000-00-00 00:00:00'),('websignupemail_message','<p>Hello [[+uid]],</p>\n\n    <p>Here are your login details for [[+sname]]:</p>\n\n    <p><strong>Username:</strong> [[+uid]]<br />\n    <strong>Password:</strong> [[+pwd]]</p>\n\n    <p>Once you log into [[+sname]] at [[+surl]], you can change your password.</p>\n\n    <p>Regards,<br />\n    Site Administrator</p>','textarea','core','authentication','0000-00-00 00:00:00'),('welcome_screen','','combo-boolean','core','manager','2012-03-07 13:19:47'),('welcome_screen_url','http://misc.modx.com/revolution/welcome.22.html','textfield','core','manager','0000-00-00 00:00:00'),('which_editor','TinyMCE','modx-combo-rte','core','editor','2012-03-07 13:36:02'),('which_element_editor','','modx-combo-rte','core','editor','0000-00-00 00:00:00'),('xhtml_urls','1','combo-boolean','core','site','0000-00-00 00:00:00'),('settings_version','2.2.0-pl2','textfield','core','system','0000-00-00 00:00:00'),('settings_distro','traditional','textfield','core','system','0000-00-00 00:00:00'),('tiny.base_url','','textfield','tinymce','general','0000-00-00 00:00:00'),('tiny.convert_fonts_to_spans','1','combo-boolean','tinymce','cleanup-output','0000-00-00 00:00:00'),('tiny.convert_newlines_to_brs','','combo-boolean','tinymce','cleanup-output','0000-00-00 00:00:00'),('tiny.css_selectors','','textfield','tinymce','advanced-theme','0000-00-00 00:00:00'),('tiny.custom_buttons1','undo,redo,selectall,separator,pastetext,pasteword,separator,search,replace,separator,nonbreaking,hr,charmap,separator,image,modxlink,unlink,anchor,media,separator,cleanup,removeformat,separator,fullscreen,print,code,help','textfield','tinymce','custom-buttons','0000-00-00 00:00:00'),('tiny.custom_buttons2','bold,italic,underline,strikethrough,sub,sup,separator,bullist,numlist,outdent,indent,separator,justifyleft,justifycenter,justifyright,justifyfull,separator,styleselect,formatselect,separator,styleprops','textfield','tinymce','custom-buttons','0000-00-00 00:00:00'),('tiny.custom_buttons3','','textfield','tinymce','custom-buttons','0000-00-00 00:00:00'),('tiny.custom_buttons4','','textfield','tinymce','custom-buttons','0000-00-00 00:00:00'),('tiny.custom_buttons5','','textfield','tinymce','custom-buttons','0000-00-00 00:00:00'),('tiny.custom_plugins','style,advimage,advlink,modxlink,searchreplace,print,contextmenu,paste,fullscreen,noneditable,nonbreaking,xhtmlxtras,visualchars,media','textfield','tinymce','general','0000-00-00 00:00:00'),('tiny.editor_theme','advanced','textfield','tinymce','general','0000-00-00 00:00:00'),('tiny.element_format','xhtml','textfield','tinymce','cleanup-output','0000-00-00 00:00:00'),('tiny.entity_encoding','named','textfield','tinymce','cleanup-output','0000-00-00 00:00:00'),('tiny.fix_nesting','','combo-boolean','tinymce','cleanup-output','0000-00-00 00:00:00'),('tiny.fix_table_elements','','combo-boolean','tinymce','cleanup-output','0000-00-00 00:00:00'),('tiny.font_size_classes','','textfield','tinymce','cleanup-output','0000-00-00 00:00:00'),('tiny.font_size_style_values','xx-small,x-small,small,medium,large,x-large,xx-large','textfield','tinymce','cleanup-output','0000-00-00 00:00:00'),('tiny.forced_root_block','p','textfield','tinymce','cleanup-output','0000-00-00 00:00:00'),('tiny.indentation','30px','textfield','tinymce','cleanup-output','0000-00-00 00:00:00'),('tiny.invalid_elements','','textfield','tinymce','cleanup-output','0000-00-00 00:00:00'),('tiny.nowrap','','combo-boolean','tinymce','general','0000-00-00 00:00:00'),('tiny.object_resizing','1','combo-boolean','tinymce','general','0000-00-00 00:00:00'),('tiny.path_options','','textfield','tinymce','general','0000-00-00 00:00:00'),('tiny.remove_linebreaks','','combo-boolean','tinymce','cleanup-output','0000-00-00 00:00:00'),('tiny.remove_redundant_brs','1','combo-boolean','tinymce','cleanup-output','0000-00-00 00:00:00'),('tiny.removeformat_selector','b,strong,em,i,span,ins','textfield','tinymce','cleanup-output','0000-00-00 00:00:00'),('tiny.skin','cirkuit','textfield','tinymce','general','0000-00-00 00:00:00'),('tiny.skin_variant','','textfield','tinymce','general','0000-00-00 00:00:00'),('tiny.table_inline_editing','','combo-boolean','tinymce','general','0000-00-00 00:00:00'),('tiny.template_list','','textarea','tinymce','general','0000-00-00 00:00:00'),('tiny.template_list_snippet','','textarea','tinymce','general','0000-00-00 00:00:00'),('tiny.template_selected_content_classes','','textfield','tinymce','general','0000-00-00 00:00:00'),('tiny.theme_advanced_blockformats','p,h1,h2,h3,h4,h5,h6,div,blockquote,code,pre,address','textfield','tinymce','advanced-theme','0000-00-00 00:00:00'),('tiny.theme_advanced_font_sizes','80%,90%,100%,120%,140%,160%,180%,220%,260%,320%,400%,500%,700%','textfield','tinymce','advanced-theme','0000-00-00 00:00:00'),('tiny.use_uncompressed_library','','combo-boolean','tinymce','general','0000-00-00 00:00:00');
/*!40000 ALTER TABLE `modx_system_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modx_transport_packages`
--

DROP TABLE IF EXISTS `modx_transport_packages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `modx_transport_packages` (
  `signature` varchar(255) NOT NULL,
  `created` datetime NOT NULL,
  `updated` timestamp NULL default NULL on update CURRENT_TIMESTAMP,
  `installed` datetime default NULL,
  `state` tinyint(1) unsigned NOT NULL default '1',
  `workspace` int(10) unsigned NOT NULL default '0',
  `provider` int(10) unsigned NOT NULL default '0',
  `disabled` tinyint(1) unsigned NOT NULL default '0',
  `source` tinytext,
  `manifest` text,
  `attributes` mediumtext,
  `package_name` varchar(255) NOT NULL,
  `metadata` text,
  `version_major` tinyint(4) unsigned NOT NULL default '0',
  `version_minor` tinyint(4) unsigned NOT NULL default '0',
  `version_patch` tinyint(4) unsigned NOT NULL default '0',
  `release` varchar(100) NOT NULL default '',
  `release_index` tinyint(4) unsigned NOT NULL default '0',
  PRIMARY KEY  (`signature`),
  KEY `workspace` (`workspace`),
  KEY `provider` (`provider`),
  KEY `disabled` (`disabled`),
  KEY `package_name` (`package_name`),
  KEY `version_major` (`version_major`),
  KEY `version_minor` (`version_minor`),
  KEY `version_patch` (`version_patch`),
  KEY `release` (`release`),
  KEY `release_index` (`release_index`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modx_transport_packages`
--

LOCK TABLES `modx_transport_packages` WRITE;
/*!40000 ALTER TABLE `modx_transport_packages` DISABLE KEYS */;
INSERT INTO `modx_transport_packages` VALUES ('tinymce-4.3.2-pl','2012-03-07 07:35:30','2012-03-07 13:36:07','2012-03-07 07:36:07',0,1,1,0,'tinymce-4.3.2-pl.transport.zip',NULL,'a:32:{s:7:\"license\";s:15218:\"GNU GENERAL PUBLIC LICENSE\n   Version 2, June 1991\n--------------------------\n\nCopyright (C) 1989, 1991 Free Software Foundation, Inc.\n59 Temple Place, Suite 330, Boston, MA  02111-1307  USA\n\nEveryone is permitted to copy and distribute verbatim copies\nof this license document, but changing it is not allowed.\n\nPreamble\n--------\n\n  The licenses for most software are designed to take away your\nfreedom to share and change it.  By contrast, the GNU General Public\nLicense is intended to guarantee your freedom to share and change free\nsoftware--to make sure the software is free for all its users.  This\nGeneral Public License applies to most of the Free Software\nFoundation\'s software and to any other program whose authors commit to\nusing it.  (Some other Free Software Foundation software is covered by\nthe GNU Library General Public License instead.)  You can apply it to\nyour programs, too.\n\n  When we speak of free software, we are referring to freedom, not\nprice.  Our General Public Licenses are designed to make sure that you\nhave the freedom to distribute copies of free software (and charge for\nthis service if you wish), that you receive source code or can get it\nif you want it, that you can change the software or use pieces of it\nin new free programs; and that you know you can do these things.\n\n  To protect your rights, we need to make restrictions that forbid\nanyone to deny you these rights or to ask you to surrender the rights.\nThese restrictions translate to certain responsibilities for you if you\ndistribute copies of the software, or if you modify it.\n\n  For example, if you distribute copies of such a program, whether\ngratis or for a fee, you must give the recipients all the rights that\nyou have.  You must make sure that they, too, receive or can get the\nsource code.  And you must show them these terms so they know their\nrights.\n\n  We protect your rights with two steps: (1) copyright the software, and\n(2) offer you this license which gives you legal permission to copy,\ndistribute and/or modify the software.\n\n  Also, for each author\'s protection and ours, we want to make certain\nthat everyone understands that there is no warranty for this free\nsoftware.  If the software is modified by someone else and passed on, we\nwant its recipients to know that what they have is not the original, so\nthat any problems introduced by others will not reflect on the original\nauthors\' reputations.\n\n  Finally, any free program is threatened constantly by software\npatents.  We wish to avoid the danger that redistributors of a free\nprogram will individually obtain patent licenses, in effect making the\nprogram proprietary.  To prevent this, we have made it clear that any\npatent must be licensed for everyone\'s free use or not licensed at all.\n\n  The precise terms and conditions for copying, distribution and\nmodification follow.\n\n\nGNU GENERAL PUBLIC LICENSE\nTERMS AND CONDITIONS FOR COPYING, DISTRIBUTION AND MODIFICATION\n---------------------------------------------------------------\n\n  0. This License applies to any program or other work which contains\na notice placed by the copyright holder saying it may be distributed\nunder the terms of this General Public License.  The \"Program\", below,\nrefers to any such program or work, and a \"work based on the Program\"\nmeans either the Program or any derivative work under copyright law:\nthat is to say, a work containing the Program or a portion of it,\neither verbatim or with modifications and/or translated into another\nlanguage.  (Hereinafter, translation is included without limitation in\nthe term \"modification\".)  Each licensee is addressed as \"you\".\n\nActivities other than copying, distribution and modification are not\ncovered by this License; they are outside its scope.  The act of\nrunning the Program is not restricted, and the output from the Program\nis covered only if its contents constitute a work based on the\nProgram (independent of having been made by running the Program).\nWhether that is true depends on what the Program does.\n\n  1. You may copy and distribute verbatim copies of the Program\'s\nsource code as you receive it, in any medium, provided that you\nconspicuously and appropriately publish on each copy an appropriate\ncopyright notice and disclaimer of warranty; keep intact all the\nnotices that refer to this License and to the absence of any warranty;\nand give any other recipients of the Program a copy of this License\nalong with the Program.\n\nYou may charge a fee for the physical act of transferring a copy, and\nyou may at your option offer warranty protection in exchange for a fee.\n\n  2. You may modify your copy or copies of the Program or any portion\nof it, thus forming a work based on the Program, and copy and\ndistribute such modifications or work under the terms of Section 1\nabove, provided that you also meet all of these conditions:\n\n    a) You must cause the modified files to carry prominent notices\n    stating that you changed the files and the date of any change.\n\n    b) You must cause any work that you distribute or publish, that in\n    whole or in part contains or is derived from the Program or any\n    part thereof, to be licensed as a whole at no charge to all third\n    parties under the terms of this License.\n\n    c) If the modified program normally reads commands interactively\n    when run, you must cause it, when started running for such\n    interactive use in the most ordinary way, to print or display an\n    announcement including an appropriate copyright notice and a\n    notice that there is no warranty (or else, saying that you provide\n    a warranty) and that users may redistribute the program under\n    these conditions, and telling the user how to view a copy of this\n    License.  (Exception: if the Program itself is interactive but\n    does not normally print such an announcement, your work based on\n    the Program is not required to print an announcement.)\n\nThese requirements apply to the modified work as a whole.  If\nidentifiable sections of that work are not derived from the Program,\nand can be reasonably considered independent and separate works in\nthemselves, then this License, and its terms, do not apply to those\nsections when you distribute them as separate works.  But when you\ndistribute the same sections as part of a whole which is a work based\non the Program, the distribution of the whole must be on the terms of\nthis License, whose permissions for other licensees extend to the\nentire whole, and thus to each and every part regardless of who wrote it.\n\nThus, it is not the intent of this section to claim rights or contest\nyour rights to work written entirely by you; rather, the intent is to\nexercise the right to control the distribution of derivative or\ncollective works based on the Program.\n\nIn addition, mere aggregation of another work not based on the Program\nwith the Program (or with a work based on the Program) on a volume of\na storage or distribution medium does not bring the other work under\nthe scope of this License.\n\n  3. You may copy and distribute the Program (or a work based on it,\nunder Section 2) in object code or executable form under the terms of\nSections 1 and 2 above provided that you also do one of the following:\n\n    a) Accompany it with the complete corresponding machine-readable\n    source code, which must be distributed under the terms of Sections\n    1 and 2 above on a medium customarily used for software interchange; or,\n\n    b) Accompany it with a written offer, valid for at least three\n    years, to give any third party, for a charge no more than your\n    cost of physically performing source distribution, a complete\n    machine-readable copy of the corresponding source code, to be\n    distributed under the terms of Sections 1 and 2 above on a medium\n    customarily used for software interchange; or,\n\n    c) Accompany it with the information you received as to the offer\n    to distribute corresponding source code.  (This alternative is\n    allowed only for noncommercial distribution and only if you\n    received the program in object code or executable form with such\n    an offer, in accord with Subsection b above.)\n\nThe source code for a work means the preferred form of the work for\nmaking modifications to it.  For an executable work, complete source\ncode means all the source code for all modules it contains, plus any\nassociated interface definition files, plus the scripts used to\ncontrol compilation and installation of the executable.  However, as a\nspecial exception, the source code distributed need not include\nanything that is normally distributed (in either source or binary\nform) with the major components (compiler, kernel, and so on) of the\noperating system on which the executable runs, unless that component\nitself accompanies the executable.\n\nIf distribution of executable or object code is made by offering\naccess to copy from a designated place, then offering equivalent\naccess to copy the source code from the same place counts as\ndistribution of the source code, even though third parties are not\ncompelled to copy the source along with the object code.\n\n  4. You may not copy, modify, sublicense, or distribute the Program\nexcept as expressly provided under this License.  Any attempt\notherwise to copy, modify, sublicense or distribute the Program is\nvoid, and will automatically terminate your rights under this License.\nHowever, parties who have received copies, or rights, from you under\nthis License will not have their licenses terminated so long as such\nparties remain in full compliance.\n\n  5. You are not required to accept this License, since you have not\nsigned it.  However, nothing else grants you permission to modify or\ndistribute the Program or its derivative works.  These actions are\nprohibited by law if you do not accept this License.  Therefore, by\nmodifying or distributing the Program (or any work based on the\nProgram), you indicate your acceptance of this License to do so, and\nall its terms and conditions for copying, distributing or modifying\nthe Program or works based on it.\n\n  6. Each time you redistribute the Program (or any work based on the\nProgram), the recipient automatically receives a license from the\noriginal licensor to copy, distribute or modify the Program subject to\nthese terms and conditions.  You may not impose any further\nrestrictions on the recipients\' exercise of the rights granted herein.\nYou are not responsible for enforcing compliance by third parties to\nthis License.\n\n  7. If, as a consequence of a court judgment or allegation of patent\ninfringement or for any other reason (not limited to patent issues),\nconditions are imposed on you (whether by court order, agreement or\notherwise) that contradict the conditions of this License, they do not\nexcuse you from the conditions of this License.  If you cannot\ndistribute so as to satisfy simultaneously your obligations under this\nLicense and any other pertinent obligations, then as a consequence you\nmay not distribute the Program at all.  For example, if a patent\nlicense would not permit royalty-free redistribution of the Program by\nall those who receive copies directly or indirectly through you, then\nthe only way you could satisfy both it and this License would be to\nrefrain entirely from distribution of the Program.\n\nIf any portion of this section is held invalid or unenforceable under\nany particular circumstance, the balance of the section is intended to\napply and the section as a whole is intended to apply in other\ncircumstances.\n\nIt is not the purpose of this section to induce you to infringe any\npatents or other property right claims or to contest validity of any\nsuch claims; this section has the sole purpose of protecting the\nintegrity of the free software distribution system, which is\nimplemented by public license practices.  Many people have made\ngenerous contributions to the wide range of software distributed\nthrough that system in reliance on consistent application of that\nsystem; it is up to the author/donor to decide if he or she is willing\nto distribute software through any other system and a licensee cannot\nimpose that choice.\n\nThis section is intended to make thoroughly clear what is believed to\nbe a consequence of the rest of this License.\n\n  8. If the distribution and/or use of the Program is restricted in\ncertain countries either by patents or by copyrighted interfaces, the\noriginal copyright holder who places the Program under this License\nmay add an explicit geographical distribution limitation excluding\nthose countries, so that distribution is permitted only in or among\ncountries not thus excluded.  In such case, this License incorporates\nthe limitation as if written in the body of this License.\n\n  9. The Free Software Foundation may publish revised and/or new versions\nof the General Public License from time to time.  Such new versions will\nbe similar in spirit to the present version, but may differ in detail to\naddress new problems or concerns.\n\nEach version is given a distinguishing version number.  If the Program\nspecifies a version number of this License which applies to it and \"any\nlater version\", you have the option of following the terms and conditions\neither of that version or of any later version published by the Free\nSoftware Foundation.  If the Program does not specify a version number of\nthis License, you may choose any version ever published by the Free Software\nFoundation.\n\n  10. If you wish to incorporate parts of the Program into other free\nprograms whose distribution conditions are different, write to the author\nto ask for permission.  For software which is copyrighted by the Free\nSoftware Foundation, write to the Free Software Foundation; we sometimes\nmake exceptions for this.  Our decision will be guided by the two goals\nof preserving the free status of all derivatives of our free software and\nof promoting the sharing and reuse of software generally.\n\nNO WARRANTY\n-----------\n\n  11. BECAUSE THE PROGRAM IS LICENSED FREE OF CHARGE, THERE IS NO WARRANTY\nFOR THE PROGRAM, TO THE EXTENT PERMITTED BY APPLICABLE LAW.  EXCEPT WHEN\nOTHERWISE STATED IN WRITING THE COPYRIGHT HOLDERS AND/OR OTHER PARTIES\nPROVIDE THE PROGRAM \"AS IS\" WITHOUT WARRANTY OF ANY KIND, EITHER EXPRESSED\nOR IMPLIED, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF\nMERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE.  THE ENTIRE RISK AS\nTO THE QUALITY AND PERFORMANCE OF THE PROGRAM IS WITH YOU.  SHOULD THE\nPROGRAM PROVE DEFECTIVE, YOU ASSUME THE COST OF ALL NECESSARY SERVICING,\nREPAIR OR CORRECTION.\n\n  12. IN NO EVENT UNLESS REQUIRED BY APPLICABLE LAW OR AGREED TO IN WRITING\nWILL ANY COPYRIGHT HOLDER, OR ANY OTHER PARTY WHO MAY MODIFY AND/OR\nREDISTRIBUTE THE PROGRAM AS PERMITTED ABOVE, BE LIABLE TO YOU FOR DAMAGES,\nINCLUDING ANY GENERAL, SPECIAL, INCIDENTAL OR CONSEQUENTIAL DAMAGES ARISING\nOUT OF THE USE OR INABILITY TO USE THE PROGRAM (INCLUDING BUT NOT LIMITED\nTO LOSS OF DATA OR DATA BEING RENDERED INACCURATE OR LOSSES SUSTAINED BY\nYOU OR THIRD PARTIES OR A FAILURE OF THE PROGRAM TO OPERATE WITH ANY OTHER\nPROGRAMS), EVEN IF SUCH HOLDER OR OTHER PARTY HAS BEEN ADVISED OF THE\nPOSSIBILITY OF SUCH DAMAGES.\n\n---------------------------\nEND OF TERMS AND CONDITIONS\";s:9:\"signature\";s:16:\"tinymce-4.3.2-pl\";s:13:\"initialConfig\";s:15:\"[object Object]\";s:4:\"text\";s:8:\"Continue\";s:2:\"id\";s:19:\"package-install-btn\";s:6:\"hidden\";s:5:\"false\";s:7:\"handler\";s:704:\"function (va) {\n    var g = Ext.getCmp(\"modx-package-grid\");\n    if (!g) {\n        return false;\n    }\n    var r = g.menu.record.data ? g.menu.record.data : g.menu.record;\n    var topic = \"/workspace/package/install/\" + r.signature + \"/\";\n    this.loadConsole(Ext.getBody(), topic);\n    va = va || {};\n    Ext.apply(va, {action: \"install\", signature: r.signature, register: \"mgr\", topic: topic});\n    var c = this.console;\n    MODx.Ajax.request({url: MODx.config.connectors_url + \"workspace/packages.php\", params: va, listeners: {success: {fn: function () {this.activate();Ext.getCmp(\"modx-package-grid\").getStore().load();}, scope: this}, failure: {fn: function () {this.activate();}, scope: this}}});\n}\";s:5:\"scope\";s:15:\"[object Object]\";s:8:\"minWidth\";s:2:\"75\";s:10:\"removeMode\";s:9:\"container\";s:10:\"hideParent\";s:4:\"true\";s:6:\"events\";s:15:\"[object Object]\";s:7:\"ownerCt\";s:15:\"[object Object]\";s:9:\"container\";s:15:\"[object Object]\";s:8:\"rendered\";s:4:\"true\";s:8:\"template\";s:15:\"[object Object]\";s:5:\"btnEl\";s:15:\"[object Object]\";s:4:\"mons\";s:15:\"[object Object]\";s:2:\"el\";s:15:\"[object Object]\";s:4:\"icon\";s:0:\"\";s:7:\"iconCls\";s:0:\"\";s:8:\"boxReady\";s:4:\"true\";s:8:\"lastSize\";s:15:\"[object Object]\";s:11:\"useSetClass\";s:4:\"true\";s:6:\"oldCls\";s:12:\"x-btn-noicon\";s:3:\"doc\";s:15:\"[object Object]\";s:19:\"monitoringMouseOver\";s:4:\"true\";s:6:\"action\";s:7:\"install\";s:8:\"register\";s:3:\"mgr\";s:5:\"topic\";s:44:\"/workspace/package/install/tinymce-4.3.2-pl/\";s:12:\"HTTP_MODAUTH\";s:52:\"modx4f576058f38bd1.70473967_14f576072a796e6.47300388\";s:14:\"package_action\";i:0;}','TinyMCE','a:31:{i:0;a:4:{s:4:\"name\";s:2:\"id\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:24:\"4d556bc5b2b083396d0007e9\";s:8:\"children\";a:0:{}}i:1;a:4:{s:4:\"name\";s:7:\"package\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:24:\"4d556bc5b2b083396d0007e9\";s:8:\"children\";a:0:{}}i:2;a:4:{s:4:\"name\";s:12:\"display_name\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:16:\"tinymce-4.3.2-pl\";s:8:\"children\";a:0:{}}i:3;a:4:{s:4:\"name\";s:7:\"version\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:5:\"4.3.2\";s:8:\"children\";a:0:{}}i:4;a:4:{s:4:\"name\";s:13:\"version_major\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:1:\"4\";s:8:\"children\";a:0:{}}i:5;a:4:{s:4:\"name\";s:13:\"version_minor\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:1:\"3\";s:8:\"children\";a:0:{}}i:6;a:4:{s:4:\"name\";s:13:\"version_patch\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:1:\"2\";s:8:\"children\";a:0:{}}i:7;a:4:{s:4:\"name\";s:7:\"release\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:2:\"pl\";s:8:\"children\";a:0:{}}i:8;a:4:{s:4:\"name\";s:8:\"vrelease\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:2:\"pl\";s:8:\"children\";a:0:{}}i:9;a:4:{s:4:\"name\";s:14:\"vrelease_index\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:2:\"pl\";s:8:\"children\";a:0:{}}i:10;a:4:{s:4:\"name\";s:6:\"author\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:12:\"splittingred\";s:8:\"children\";a:0:{}}i:11;a:4:{s:4:\"name\";s:11:\"description\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:102:\"<p>TinyMCE version 3.4.7 for MODx Revolution. Works with Revolution 2.2.x or later only.</p><ul>\n</ul>\";s:8:\"children\";a:0:{}}i:12;a:4:{s:4:\"name\";s:12:\"instructions\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:225:\"<p>Install via Package Management.</p>\n<p>If you\'re having issues installing, make sure you have the latest ZipArchive extension for PHP, and that it\'s properly configured, or set the \"archive_with\" System Setting to Yes.</p>\";s:8:\"children\";a:0:{}}i:13;a:4:{s:4:\"name\";s:9:\"changelog\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:2043:\"<p style=\"padding-top: 2px; padding-right: 2px; padding-bottom: 2px; padding-left: 2px; \"><b>New in 4.3.2</b></p><ul><li>Update Czech/German translation</li><li>&#91;#74&#93; Fix inclusion of english as fallback for language</li><li>&#91;#80&#93; Make context menu use MODxLink plugin</li><li>Upgrade TinyMCE to 3.4.7</li></ul><p></p><p style=\"padding-top: 2px; padding-right: 2px; padding-bottom: 2px; padding-left: 2px; \"><b>New in 4.3.1</b></p><ul><li>Optimizations for MODX 2.2</li></ul><p></p><p style=\"padding-top: 2px; padding-right: 2px; padding-bottom: 2px; padding-left: 2px; \"><b>New in 4.3.0</b></p><ul><li>&#91;#71&#93; Update TinyMCE to v3.4.5</li><li>&#91;#70&#93; Fixes to cirkuit skin with missing CSS styles</li><li>&#91;#64&#93; Add tiny.template_list_snippet setting for grabbing template list from a Snippet</li><li>&#91;#66&#93; Fix issues with Revolution 2.2.0 code</li><li>&#91;#63&#93; Add tiny.base_url setting for managing the document_base_url tinymce setting</li></ul><p></p><p style=\"padding-top: 2px; padding-right: 2px; padding-bottom: 2px; padding-left: 2px; \"><b>New in 4.2.4</b></p><ul><li>Updated TinyMCE to 3.4.2</li><li>Fix issue where recursion detected xPDO error was showing in logs on chunk editing</li><li>&#91;#55&#93; Fix help for element_format and preformatted descriptions in plugin properties</li><li>&#91;#53&#93; Languages added/update: German, English, French, Indonesian, Japanese, Dutch, Russian, Ukrainian</li></ul><b>New in 4.2.3</b><p></p><ul><li>Fix issue that inserted wrong URL when using TinyMCE in Revolution 2.1 and later</li></ul><p></p><p style=\"padding-top: 2px; padding-right: 2px; padding-bottom: 2px; padding-left: 2px; \"><b>New in 4.2.2</b></p><ul><li>&#91;#49&#93; Added spellchecker files</li></ul><p></p><p style=\"padding-top: 2px; padding-right: 2px; padding-bottom: 2px; padding-left: 2px; \"><b>New in 4.2.1</b></p><ul><li>&#91;#45&#93; &#91;#47&#93; Fixes for front-end usage and compatibility with NewsPublisher</li><li>Add compressed JS for faster loading</li></ul>\";s:8:\"children\";a:0:{}}i:14;a:4:{s:4:\"name\";s:9:\"createdon\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:23:\"2012-02-23 19:09:21 UTC\";s:8:\"children\";a:0:{}}i:15;a:4:{s:4:\"name\";s:10:\"created_by\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:12:\"splittingred\";s:8:\"children\";a:0:{}}i:16;a:3:{s:4:\"name\";s:8:\"editedon\";s:10:\"attributes\";a:0:{}s:8:\"children\";a:0:{}}i:17;a:4:{s:4:\"name\";s:10:\"releasedon\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:23:\"2012-02-23 19:09:21 UTC\";s:8:\"children\";a:0:{}}i:18;a:4:{s:4:\"name\";s:9:\"downloads\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:6:\"104438\";s:8:\"children\";a:0:{}}i:19;a:4:{s:4:\"name\";s:8:\"approved\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:4:\"true\";s:8:\"children\";a:0:{}}i:20;a:4:{s:4:\"name\";s:7:\"audited\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:5:\"false\";s:8:\"children\";a:0:{}}i:21;a:4:{s:4:\"name\";s:8:\"featured\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:5:\"false\";s:8:\"children\";a:0:{}}i:22;a:4:{s:4:\"name\";s:10:\"deprecated\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:5:\"false\";s:8:\"children\";a:0:{}}i:23;a:4:{s:4:\"name\";s:7:\"license\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:5:\"GPLv2\";s:8:\"children\";a:0:{}}i:24;a:3:{s:4:\"name\";s:7:\"smf_url\";s:10:\"attributes\";a:0:{}s:8:\"children\";a:0:{}}i:25;a:4:{s:4:\"name\";s:4:\"name\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:7:\"TinyMCE\";s:8:\"children\";a:0:{}}i:26;a:4:{s:4:\"name\";s:10:\"repository\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:24:\"4d4c3fa6b2b0830da9000001\";s:8:\"children\";a:0:{}}i:27;a:4:{s:4:\"name\";s:8:\"supports\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:3:\"2.2\";s:8:\"children\";a:0:{}}i:28;a:4:{s:4:\"name\";s:10:\"screenshot\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:54:\"http://modx.s3.amazonaws.com/extras/459/tinymce-ss.png\";s:8:\"children\";a:0:{}}i:29;a:3:{s:4:\"name\";s:4:\"file\";s:10:\"attributes\";a:0:{}s:8:\"children\";a:7:{i:0;a:4:{s:4:\"name\";s:2:\"id\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:24:\"4f468ee3f2455445f900009d\";s:8:\"children\";a:0:{}}i:1;a:4:{s:4:\"name\";s:7:\"version\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:24:\"4f468ee1f2455445f900009b\";s:8:\"children\";a:0:{}}i:2;a:4:{s:4:\"name\";s:8:\"filename\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:30:\"tinymce-4.3.2-pl.transport.zip\";s:8:\"children\";a:0:{}}i:3;a:4:{s:4:\"name\";s:9:\"downloads\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:4:\"2617\";s:8:\"children\";a:0:{}}i:4;a:4:{s:4:\"name\";s:6:\"lastip\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:14:\"69.163.239.242\";s:8:\"children\";a:0:{}}i:5;a:4:{s:4:\"name\";s:9:\"transport\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:4:\"true\";s:8:\"children\";a:0:{}}i:6;a:4:{s:4:\"name\";s:8:\"location\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:60:\"http://modx.com/extras/download/?id=4f468ee3f2455445f900009d\";s:8:\"children\";a:0:{}}}}i:30;a:4:{s:4:\"name\";s:17:\"package-signature\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:16:\"tinymce-4.3.2-pl\";s:8:\"children\";a:0:{}}}',4,3,2,'pl',0);
/*!40000 ALTER TABLE `modx_transport_packages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modx_transport_providers`
--

DROP TABLE IF EXISTS `modx_transport_providers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `modx_transport_providers` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `name` varchar(255) NOT NULL,
  `description` mediumtext,
  `service_url` tinytext,
  `username` varchar(255) NOT NULL default '',
  `api_key` varchar(255) NOT NULL default '',
  `created` datetime NOT NULL,
  `updated` timestamp NULL default NULL on update CURRENT_TIMESTAMP,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `api_key` (`api_key`),
  KEY `username` (`username`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modx_transport_providers`
--

LOCK TABLES `modx_transport_providers` WRITE;
/*!40000 ALTER TABLE `modx_transport_providers` DISABLE KEYS */;
INSERT INTO `modx_transport_providers` VALUES (1,'modx.com','The official MODX transport facility for 3rd party components.','http://rest.modx.com/extras/','','','2012-01-04 15:51:41',NULL);
/*!40000 ALTER TABLE `modx_transport_providers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modx_user_attributes`
--

DROP TABLE IF EXISTS `modx_user_attributes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `modx_user_attributes` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `internalKey` int(10) NOT NULL,
  `fullname` varchar(100) NOT NULL default '',
  `email` varchar(100) NOT NULL default '',
  `phone` varchar(100) NOT NULL default '',
  `mobilephone` varchar(100) NOT NULL default '',
  `blocked` tinyint(1) unsigned NOT NULL default '0',
  `blockeduntil` int(11) NOT NULL default '0',
  `blockedafter` int(11) NOT NULL default '0',
  `logincount` int(11) NOT NULL default '0',
  `lastlogin` int(11) NOT NULL default '0',
  `thislogin` int(11) NOT NULL default '0',
  `failedlogincount` int(10) NOT NULL default '0',
  `sessionid` varchar(100) NOT NULL default '',
  `dob` int(10) NOT NULL default '0',
  `gender` int(1) NOT NULL default '0',
  `address` text NOT NULL,
  `country` varchar(255) NOT NULL default '',
  `city` varchar(255) NOT NULL default '',
  `state` varchar(25) NOT NULL default '',
  `zip` varchar(25) NOT NULL default '',
  `fax` varchar(100) NOT NULL default '',
  `photo` varchar(255) NOT NULL default '',
  `comment` text NOT NULL,
  `website` varchar(255) NOT NULL default '',
  `extended` text,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `internalKey` (`internalKey`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modx_user_attributes`
--

LOCK TABLES `modx_user_attributes` WRITE;
/*!40000 ALTER TABLE `modx_user_attributes` DISABLE KEYS */;
INSERT INTO `modx_user_attributes` VALUES (1,1,'Default Admin User','mkaria@thinktiv.com','','',0,0,0,9,1331491954,1331533357,0,'df907ab37ee66cab25b314463d086beb',0,0,'','','','','','','','','',NULL);
/*!40000 ALTER TABLE `modx_user_attributes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modx_user_group_roles`
--

DROP TABLE IF EXISTS `modx_user_group_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `modx_user_group_roles` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `name` varchar(255) NOT NULL,
  `description` mediumtext,
  `authority` int(10) unsigned NOT NULL default '9999',
  PRIMARY KEY  (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `authority` (`authority`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modx_user_group_roles`
--

LOCK TABLES `modx_user_group_roles` WRITE;
/*!40000 ALTER TABLE `modx_user_group_roles` DISABLE KEYS */;
INSERT INTO `modx_user_group_roles` VALUES (1,'Member',NULL,9999),(2,'Super User',NULL,0);
/*!40000 ALTER TABLE `modx_user_group_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modx_user_messages`
--

DROP TABLE IF EXISTS `modx_user_messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `modx_user_messages` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `type` varchar(15) NOT NULL default '',
  `subject` varchar(255) NOT NULL default '',
  `message` text NOT NULL,
  `sender` int(10) NOT NULL default '0',
  `recipient` int(10) NOT NULL default '0',
  `private` tinyint(4) NOT NULL default '0',
  `date_sent` datetime NOT NULL default '0000-00-00 00:00:00',
  `read` tinyint(1) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modx_user_messages`
--

LOCK TABLES `modx_user_messages` WRITE;
/*!40000 ALTER TABLE `modx_user_messages` DISABLE KEYS */;
/*!40000 ALTER TABLE `modx_user_messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modx_user_settings`
--

DROP TABLE IF EXISTS `modx_user_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `modx_user_settings` (
  `user` int(11) NOT NULL default '0',
  `key` varchar(50) NOT NULL default '',
  `value` text,
  `xtype` varchar(75) NOT NULL default 'textfield',
  `namespace` varchar(40) NOT NULL default 'core',
  `area` varchar(255) NOT NULL default '',
  `editedon` timestamp NOT NULL default '0000-00-00 00:00:00' on update CURRENT_TIMESTAMP,
  PRIMARY KEY  (`user`,`key`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modx_user_settings`
--

LOCK TABLES `modx_user_settings` WRITE;
/*!40000 ALTER TABLE `modx_user_settings` DISABLE KEYS */;
/*!40000 ALTER TABLE `modx_user_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modx_users`
--

DROP TABLE IF EXISTS `modx_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `modx_users` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `username` varchar(100) NOT NULL default '',
  `password` varchar(100) NOT NULL default '',
  `cachepwd` varchar(100) NOT NULL default '',
  `class_key` varchar(100) NOT NULL default 'modUser',
  `active` tinyint(1) unsigned NOT NULL default '1',
  `remote_key` varchar(255) default NULL,
  `remote_data` text,
  `hash_class` varchar(100) NOT NULL default 'hashing.modPBKDF2',
  `salt` varchar(100) NOT NULL default '',
  `primary_group` int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (`id`),
  UNIQUE KEY `username` (`username`),
  KEY `class_key` (`class_key`),
  KEY `remote_key` (`remote_key`),
  KEY `primary_group` (`primary_group`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modx_users`
--

LOCK TABLES `modx_users` WRITE;
/*!40000 ALTER TABLE `modx_users` DISABLE KEYS */;
INSERT INTO `modx_users` VALUES (1,'admin','xM6oAxj5j5691IQer04DLL1fVacS113GO1cVXExJCE8=','','modUser',1,NULL,NULL,'hashing.modPBKDF2','1f6001ee8cd2644eac5ba9333524207c',1);
/*!40000 ALTER TABLE `modx_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modx_workspaces`
--

DROP TABLE IF EXISTS `modx_workspaces`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `modx_workspaces` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `name` varchar(255) NOT NULL default '',
  `path` varchar(255) NOT NULL default '',
  `created` datetime NOT NULL,
  `active` tinyint(1) unsigned NOT NULL default '0',
  `attributes` mediumtext,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `path` (`path`),
  KEY `name` (`name`),
  KEY `active` (`active`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modx_workspaces`
--

LOCK TABLES `modx_workspaces` WRITE;
/*!40000 ALTER TABLE `modx_workspaces` DISABLE KEYS */;
INSERT INTO `modx_workspaces` VALUES (1,'Default MODX workspace','{core_path}','2012-03-07 07:19:21',1,NULL);
/*!40000 ALTER TABLE `modx_workspaces` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2012-03-12  2:48:05
