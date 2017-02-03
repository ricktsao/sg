-- --------------------------------------------------------
-- 主機:                           127.0.0.1
-- 服務器版本:                        5.6.17 - MySQL Community Server (GPL)
-- 服務器操作系統:                      Win64
-- HeidiSQL 版本:                  9.1.0.4867
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- 導出  表 sg.it_sessions 結構
CREATE TABLE IF NOT EXISTS `it_sessions` (
  `session_id` varchar(40) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `ip_address` varchar(40) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `user_agent` varchar(120) COLLATE utf8_unicode_ci NOT NULL,
  `last_activity` int(10) unsigned NOT NULL DEFAULT '0',
  `user_data` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`session_id`),
  KEY `last_activity_idx` (`last_activity`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- 正在導出表  sg.it_sessions 的資料：3 rows
/*!40000 ALTER TABLE `it_sessions` DISABLE KEYS */;
REPLACE INTO `it_sessions` (`session_id`, `ip_address`, `user_agent`, `last_activity`, `user_data`) VALUES
	('b5445c217bb2e7731c6c7e0e0754b0f4', '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:50.0) Gecko/20100101 Firefox/50.0', 1486103096, 'a:12:{s:9:"user_data";s:0:"";s:7:"user_sn";s:1:"3";s:7:"user_id";s:5:"admin";s:9:"user_name";s:9:"管理者";s:10:"user_email";s:22:"inn.tang@chupei.com.tw";s:12:"supper_admin";s:1:"0";s:15:"user_login_time";s:19:"2017-02-03 14:07:45";s:9:"user_auth";a:12:{i:0;s:10:"attendance";i:1;s:4:"auth";i:2;s:8:"auth-dir";i:3;s:9:"authgroup";i:4;s:9:"community";i:5;s:6:"guards";i:6;s:3:"log";i:7;s:3:"mgr";i:8;s:3:"pay";i:9;s:2:"sg";i:10;s:4:"sign";i:11;s:4:"user";}s:13:"frontend_auth";a:0:{}s:9:"func_auth";a:0:{}s:10:"user_group";a:1:{i:0;s:1:"3";}s:7:"comm_id";s:8:"5tgb4rfv";}'),
	('0b0d35b444ba719b8526588a99d08899', '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:50.0) Gecko/20100101 Firefox/50.0', 1486104849, 'a:12:{s:9:"user_data";s:0:"";s:7:"user_sn";s:1:"3";s:7:"user_id";s:5:"admin";s:9:"user_name";s:9:"管理者";s:10:"user_email";s:22:"inn.tang@chupei.com.tw";s:12:"supper_admin";s:1:"0";s:15:"user_login_time";s:19:"2017-02-03 14:54:17";s:9:"user_auth";a:11:{i:0;s:10:"attendance";i:1;s:4:"auth";i:2;s:9:"authgroup";i:3;s:9:"community";i:4;s:6:"guards";i:5;s:3:"log";i:6;s:3:"mgr";i:7;s:3:"pay";i:8;s:2:"sg";i:9;s:4:"sign";i:10;s:4:"user";}s:13:"frontend_auth";a:0:{}s:9:"func_auth";a:0:{}s:10:"user_group";a:1:{i:0;s:1:"3";}s:7:"comm_id";s:8:"5tgb4rfv";}'),
	('976b4bba938afaaac4d950622dec645d', '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:50.0) Gecko/20100101 Firefox/50.0', 1486099264, 'a:12:{s:9:"user_data";s:0:"";s:7:"user_sn";s:1:"3";s:7:"user_id";s:5:"admin";s:9:"user_name";s:9:"管理者";s:10:"user_email";s:22:"inn.tang@chupei.com.tw";s:12:"supper_admin";s:1:"0";s:15:"user_login_time";s:19:"2017-02-03 13:23:17";s:9:"user_auth";a:5:{i:0;s:4:"auth";i:1;s:8:"auth-dir";i:2;s:9:"authgroup";i:3;s:6:"guards";i:4;s:4:"user";}s:13:"frontend_auth";a:0:{}s:9:"func_auth";a:0:{}s:10:"user_group";a:1:{i:0;s:1:"3";}s:7:"comm_id";s:8:"5tgb4rfv";}');
/*!40000 ALTER TABLE `it_sessions` ENABLE KEYS */;


-- 導出  表 sg.sys_backend_log 結構
CREATE TABLE IF NOT EXISTS `sys_backend_log` (
  `sn` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` varchar(6) DEFAULT NULL,
  `ip` varchar(50) NOT NULL,
  `module_id` varchar(50) NOT NULL,
  `desc` varchar(500) NOT NULL,
  `action` tinyint(1) DEFAULT '0' COMMENT '0:使用狀況,1:動作',
  `start_date` datetime DEFAULT NULL,
  `end_date` datetime DEFAULT NULL,
  `active_date` datetime NOT NULL,
  PRIMARY KEY (`sn`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- 正在導出表  sg.sys_backend_log 的資料：1 rows
/*!40000 ALTER TABLE `sys_backend_log` DISABLE KEYS */;
REPLACE INTO `sys_backend_log` (`sn`, `user_id`, `ip`, `module_id`, `desc`, `action`, `start_date`, `end_date`, `active_date`) VALUES
	(2, 'admin', 'fe80::94b7:7d58:efc1:9985', 'auth', '新增人員[bbb]', 0, NULL, NULL, '2015-03-24 18:17:39');
/*!40000 ALTER TABLE `sys_backend_log` ENABLE KEYS */;


-- 導出  表 sg.sys_config 結構
CREATE TABLE IF NOT EXISTS `sys_config` (
  `sn` int(11) NOT NULL AUTO_INCREMENT,
  `id` varchar(50) DEFAULT NULL,
  `value` varchar(100) DEFAULT NULL,
  `param1` varchar(100) DEFAULT NULL COMMENT '參數1',
  `param2` varchar(100) DEFAULT NULL COMMENT '參數1',
  `desc` varchar(100) DEFAULT NULL,
  `launch` tinyint(1) DEFAULT '1',
  `updated` datetime DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  PRIMARY KEY (`sn`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='系統配置設定';

-- 正在導出表  sg.sys_config 的資料：~0 rows (大約)
/*!40000 ALTER TABLE `sys_config` DISABLE KEYS */;
REPLACE INTO `sys_config` (`sn`, `id`, `value`, `param1`, `param2`, `desc`, `launch`, `updated`, `created`) VALUES
	(1, 'comm_id', '5tgb4rfv', NULL, NULL, NULL, 1, NULL, NULL);
/*!40000 ALTER TABLE `sys_config` ENABLE KEYS */;


-- 導出  表 sg.sys_frontend_log_2016 結構
CREATE TABLE IF NOT EXISTS `sys_frontend_log_2016` (
  `sn` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `session_id` varchar(40) DEFAULT NULL,
  `user_id` varchar(6) DEFAULT NULL,
  `ip` varchar(50) NOT NULL,
  `module_id` varchar(50) NOT NULL,
  `desc` varchar(500) NOT NULL,
  `action` tinyint(1) DEFAULT '0' COMMENT '0:模組停留狀況,1:動作',
  `stay_time` smallint(6) DEFAULT '0',
  `active_time` int(11) NOT NULL,
  `create_date` datetime NOT NULL,
  PRIMARY KEY (`sn`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- 正在導出表  sg.sys_frontend_log_2016 的資料：1 rows
/*!40000 ALTER TABLE `sys_frontend_log_2016` DISABLE KEYS */;
REPLACE INTO `sys_frontend_log_2016` (`sn`, `session_id`, `user_id`, `ip`, `module_id`, `desc`, `action`, `stay_time`, `active_time`, `create_date`) VALUES
	(1, 'a5f1e111f8bc2b15da42e7ef50efd8c7', 'rick', '::1', 'login', '後台登入 - 曹宇賢', 1, 0, 1458913780, '2016-03-25 21:49:40');
/*!40000 ALTER TABLE `sys_frontend_log_2016` ENABLE KEYS */;


-- 導出  表 sg.sys_function 結構
CREATE TABLE IF NOT EXISTS `sys_function` (
  `sn` int(11) NOT NULL AUTO_INCREMENT,
  `id` varchar(50) NOT NULL,
  `title` varchar(50) NOT NULL,
  `description` varchar(1000) NOT NULL,
  `is_frontend` tinyint(1) NOT NULL DEFAULT '1' COMMENT '前端:1,後端:0',
  `updated` datetime NOT NULL,
  `created` datetime NOT NULL,
  PRIMARY KEY (`sn`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 正在導出表  sg.sys_function 的資料：~0 rows (大約)
/*!40000 ALTER TABLE `sys_function` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_function` ENABLE KEYS */;


-- 導出  表 sg.sys_message_assign 結構
CREATE TABLE IF NOT EXISTS `sys_message_assign` (
  `sn` bigint(20) NOT NULL AUTO_INCREMENT,
  `from_unit_sn` int(11) NOT NULL COMMENT '單位sn',
  `from_unit_name` varchar(50) NOT NULL COMMENT '單位名稱',
  `from_user_sn` int(11) NOT NULL,
  `to_user_sn` varchar(200) NOT NULL,
  `to_user_id` varchar(1000) NOT NULL,
  `fail_user_id` varchar(1000) DEFAULT NULL,
  `category_id` varchar(10) DEFAULT NULL,
  `sub_category_id` varchar(10) DEFAULT NULL,
  `title` varchar(50) DEFAULT NULL,
  `sub_title` varchar(50) DEFAULT NULL,
  `brief` varchar(500) DEFAULT NULL,
  `msg_content` mediumtext NOT NULL COMMENT '訊息',
  `meeting_date` datetime DEFAULT NULL COMMENT '會議時間',
  `updated` datetime NOT NULL,
  `created` datetime NOT NULL,
  PRIMARY KEY (`sn`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COMMENT='訊息';

-- 正在導出表  sg.sys_message_assign 的資料：~5 rows (大約)
/*!40000 ALTER TABLE `sys_message_assign` DISABLE KEYS */;
REPLACE INTO `sys_message_assign` (`sn`, `from_unit_sn`, `from_unit_name`, `from_user_sn`, `to_user_sn`, `to_user_id`, `fail_user_id`, `category_id`, `sub_category_id`, `title`, `sub_title`, `brief`, `msg_content`, `meeting_date`, `updated`, `created`) VALUES
	(3, 10, '0', 143, '35,36,37,38,39,42,43,44,141,146,172', 'CH0019-王海翔,CH0026-孫偉欽,CH0034-鄧任勛,CH0039-陳昶瑞,CH0043-蔡名傑,CH0078-林碧玲,CH0080-王金山,CH0084-漆宥辰,CH0090-張明暄,ch0087-楊芝勳,ch0094-沈明仁', NULL, 'notify', NULL, '[廖健宏 ]拜訪行程', NULL, NULL, '[黃勇傑]拜訪行程\r\n[黃勇傑]拜訪行程\r\n[黃勇傑]拜訪行程\r\n[黃勇傑]拜訪行程\r\n[黃勇傑]拜訪行程', NULL, '2015-09-15 14:16:06', '2015-09-15 14:16:06'),
	(4, 10, '0', 143, '36,37,43', 'CH0026-孫偉欽,CH0034-鄧任勛,CH0080-王金山', NULL, 'meeting', NULL, '季會', NULL, NULL, '911季會\r\n請9:00到場', '2015-09-15 09:00:00', '2015-09-15 15:22:26', '2015-09-15 15:22:26'),
	(5, 7, '0', 20, '1,20,21,25,26,121,124,166', 'admin-系統管理者,ch0004-陳怡珍,ch0083-黃勇乾,ch0071-黃玉慧,ch0082-曹宇賢,CH0063-吳凡,CH0076-邱鴻程,CH0093-游惠雯', NULL, 'meeting', NULL, '測試大會', NULL, NULL, 'test\r\n[黃勇傑]拜訪行程\r\n[黃勇傑]拜訪行程\r\n', '2015-09-18 09:00:00', '2015-09-17 16:03:35', '2015-09-17 16:03:35'),
	(6, 7, '0', 20, '1,20,21,25,26,121,124,166', 'admin-系統管理者,ch0004-陳怡珍,ch0083-黃勇乾,ch0071-黃玉慧,ch0082-曹宇賢,CH0063-吳凡,CH0076-邱鴻程,CH0093-游惠雯', NULL, 'meeting', NULL, '測試大會', NULL, NULL, '[黃勇傑]拜訪行程\r\n[黃勇傑]拜訪行程\r\n[黃勇傑]拜訪行程\r\n[黃勇傑]拜訪行程', '2015-09-24 09:00:00', '2015-09-17 17:01:06', '2015-09-17 17:01:06'),
	(7, 7, '資訊室', 20, '21,124,166', 'ch0083-黃勇乾,CH0076-邱鴻程,CH0093-游惠雯', NULL, 'notify', NULL, '通知測試', NULL, NULL, '訊息.....\r\n訊息.....\r\n訊息.....\r\n訊息.....\r\n訊息.....訊息.....\r\n訊息.....', NULL, '2015-09-21 09:00:16', '2015-09-21 09:00:16');
/*!40000 ALTER TABLE `sys_message_assign` ENABLE KEYS */;


-- 導出  表 sg.sys_module 結構
CREATE TABLE IF NOT EXISTS `sys_module` (
  `sn` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_sn` int(10) unsigned DEFAULT NULL,
  `id` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `type` tinyint(1) NOT NULL DEFAULT '1' COMMENT '1:單元模組,2:特殊模組',
  `dir` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'type=1 時才判斷,是否為目錄,0:否(單元模組) 1:是',
  `level` tinyint(1) unsigned DEFAULT '1' COMMENT '單元層級(type=1 時才判斷)',
  `title` text COLLATE utf8_unicode_ci NOT NULL,
  `icon_text` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sort` smallint(5) unsigned NOT NULL DEFAULT '500',
  `launch` tinyint(3) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`sn`)
) ENGINE=InnoDB AUTO_INCREMENT=104 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- 正在導出表  sg.sys_module 的資料：~13 rows (大約)
/*!40000 ALTER TABLE `sys_module` DISABLE KEYS */;
REPLACE INTO `sys_module` (`sn`, `parent_sn`, `id`, `type`, `dir`, `level`, `title`, `icon_text`, `sort`, `launch`) VALUES
	(22, NULL, 'auth-dir', 1, 1, 1, '網站設定', 'fa fa-group ', 100, 0),
	(26, NULL, 'media', 1, 0, 1, '媒體庫', 'fa fa-cloud ', 3, 0),
	(32, 22, 'auth', 1, 0, 2, '人員管理', 'fa fa-comment', 1, 1),
	(33, 22, 'authgroup', 1, 0, 2, '群組管理', 'fa fa-briefcase', 2, 1),
	(83, 84, 'user', 1, 0, 2, '住戶管理', 'fa fa-cloud ', 1, 1),
	(96, NULL, 'guards', 1, 0, 1, '警衛功能 ', NULL, 500, 1),
	(97, NULL, 'log', 1, 0, 1, '工作日誌', NULL, 500, 1),
	(98, NULL, 'sign', 1, 0, 1, '簽到打卡', NULL, 500, 1),
	(99, NULL, 'attendance', 1, 0, 1, '出勤查詢', NULL, 500, 1),
	(100, NULL, 'mgr', 1, 0, 1, '管理者功能', NULL, 500, 1),
	(101, NULL, 'community', 1, 0, 1, '新增社區', NULL, 500, 1),
	(102, NULL, 'sg', 1, 0, 1, '新增警衛', NULL, 500, 1),
	(103, NULL, 'pay', 1, 0, 1, '收費登記相關', NULL, 500, 1);
/*!40000 ALTER TABLE `sys_module` ENABLE KEYS */;


-- 導出  表 sg.sys_setting 結構
CREATE TABLE IF NOT EXISTS `sys_setting` (
  `sn` int(11) NOT NULL AUTO_INCREMENT,
  `meta_keyword` text COLLATE utf8_unicode_ci,
  `meta_description` text COLLATE utf8_unicode_ci,
  `website_title` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `update_date` datetime NOT NULL,
  PRIMARY KEY (`sn`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- 正在導出表  sg.sys_setting 的資料：~0 rows (大約)
/*!40000 ALTER TABLE `sys_setting` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_setting` ENABLE KEYS */;


-- 導出  表 sg.sys_user 結構
CREATE TABLE IF NOT EXISTS `sys_user` (
  `comm_id` char(8) DEFAULT NULL COMMENT '社區序號',
  `sn` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '用戶序號',
  `is_sync` int(10) unsigned NOT NULL DEFAULT '0',
  `building_id` varchar(60) DEFAULT NULL COMMENT '棟別 或 門牌號(A-Z) 或 (9999)  樓層(99)    [住戶識別號_１_１]',
  `name` varchar(20) DEFAULT NULL COMMENT '姓名',
  `role` char(1) DEFAULT NULL COMMENT 'I:住戶    M:物業人員   F:富網通',
  `addr_part_01` tinyint(1) unsigned DEFAULT NULL COMMENT '地址門牌',
  `addr_part_02` tinyint(1) unsigned DEFAULT NULL COMMENT '地址門牌樓層',
  `addr` varchar(50) DEFAULT NULL COMMENT '門牌號碼',
  `title` varchar(20) DEFAULT NULL COMMENT '住戶 or 物業人員(ex秘書, 總幹事, 警衛) or 富網通',
  `id` varchar(10) DEFAULT NULL COMMENT '磁扣卡10碼    [住戶識別號_２]',
  `app_id` varchar(50) DEFAULT NULL COMMENT '手機識別碼    [住戶識別號_３]',
  `act_code` char(12) DEFAULT NULL COMMENT '手機開通碼',
  `gender` tinyint(1) unsigned DEFAULT NULL COMMENT '１:男　２:女',
  `tenant_flag` tinyint(1) unsigned DEFAULT '0' COMMENT '是否為租屋房客　0:否,1:是',
  `suggest_flag` tinyint(1) unsigned DEFAULT '1' COMMENT '意見箱權限　0:否,1:是',
  `living_here` tinyint(1) DEFAULT '1' COMMENT '是否為住戶(目前是否住在該戶)',
  `del` tinyint(1) DEFAULT '0' COMMENT '是否已刪除  1:yes,0:no',
  `is_contact` tinyint(1) unsigned DEFAULT '0' COMMENT '緊急聯絡人　0:否,1:是',
  `is_owner` tinyint(1) unsigned DEFAULT '0' COMMENT '所有權人　0:否,1:是',
  `owner_addr` varchar(200) DEFAULT NULL COMMENT '所有權人地址 或 緊急聯絡人地址',
  `account` varchar(10) DEFAULT NULL COMMENT '帳號（物業人員登入）',
  `password` varchar(100) DEFAULT NULL COMMENT '密碼（物業人員登入）',
  `is_manager` tinyint(1) unsigned DEFAULT '0' COMMENT '管委',
  `manager_title` varchar(20) DEFAULT NULL,
  `voting_right` tinyint(1) unsigned DEFAULT NULL COMMENT '投票權限　0:否,1:是',
  `gas_right` tinyint(1) DEFAULT NULL COMMENT '瓦斯登記權限　0:否,1:是',
  `email` varchar(100) DEFAULT NULL COMMENT '電子郵件',
  `tel` varchar(15) DEFAULT NULL,
  `phone` varchar(15) DEFAULT NULL,
  `is_chang_pwd` tinyint(1) NOT NULL DEFAULT '0',
  `start_date` datetime DEFAULT NULL,
  `end_date` datetime DEFAULT NULL,
  `forever` tinyint(1) NOT NULL DEFAULT '1',
  `launch` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '0:未啟用,1:啟用,2:離職',
  `is_default` tinyint(1) unsigned DEFAULT '0' COMMENT '所有權人　0:否,1:是',
  `updated` datetime DEFAULT NULL,
  `created` datetime NOT NULL,
  `created_by` varchar(20) NOT NULL,
  `last_login_ip` varchar(30) DEFAULT NULL,
  `last_login_time` datetime DEFAULT NULL,
  `login_time` datetime DEFAULT NULL,
  `last_login_agent` varchar(100) DEFAULT NULL,
  `use_cnt` int(11) DEFAULT '0' COMMENT 'keycode 使用次數',
  `app_last_login_ip` varchar(30) DEFAULT NULL,
  `app_login_time` datetime DEFAULT NULL,
  `app_last_login_time` datetime DEFAULT NULL,
  `app_use_cnt` int(11) DEFAULT NULL,
  PRIMARY KEY (`sn`),
  UNIQUE KEY `comm_id_building_id` (`comm_id`,`building_id`),
  UNIQUE KEY `comm_id_id` (`comm_id`,`id`),
  KEY `name` (`name`),
  KEY `app_id` (`app_id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8 COMMENT='用戶資料表\r\n\r\n身分別：Ｉ-住戶　 Ｓ-物業秘書　Ｍ-物業總幹事　Ｇ-物業警衛　Ｆ-富網通\r\n\r\nＩ以 id（刷卡10';

-- 正在導出表  sg.sys_user 的資料：~22 rows (大約)
/*!40000 ALTER TABLE `sys_user` DISABLE KEYS */;
REPLACE INTO `sys_user` (`comm_id`, `sn`, `is_sync`, `building_id`, `name`, `role`, `addr_part_01`, `addr_part_02`, `addr`, `title`, `id`, `app_id`, `act_code`, `gender`, `tenant_flag`, `suggest_flag`, `living_here`, `del`, `is_contact`, `is_owner`, `owner_addr`, `account`, `password`, `is_manager`, `manager_title`, `voting_right`, `gas_right`, `email`, `tel`, `phone`, `is_chang_pwd`, `start_date`, `end_date`, `forever`, `launch`, `is_default`, `updated`, `created`, `created_by`, `last_login_ip`, `last_login_time`, `login_time`, `last_login_agent`, `use_cnt`, `app_last_login_ip`, `app_login_time`, `app_last_login_time`, `app_use_cnt`) VALUES
	('5tgb4rfv', 1, 0, NULL, '黃小慧', 'M', NULL, NULL, NULL, '秘書', NULL, NULL, NULL, 2, 0, 1, NULL, 0, NULL, NULL, NULL, 'claire', '5d71d901280150aa60b7078637fd9a4173d4baa5', NULL, NULL, NULL, NULL, 'claire.huang@chupei.com.tw', '033128989', '0928051327', 1, '2015-07-25 00:00:00', NULL, 1, 1, 0, '2016-05-07 10:57:05', '2015-06-04 13:57:20', '', '192.168.1.67', '2016-03-24 10:44:41', NULL, '[OS] Unknown Windows OS\n[Agent] Chrome 49.0.2623.87', 1, NULL, NULL, NULL, NULL),
	('5tgb4rfv', 2, 0, NULL, '曹小賢', 'M', NULL, NULL, NULL, '總幹事', NULL, 'ddd', NULL, 1, 0, 1, NULL, 0, 0, 0, '', 'rick', '1501ce5f02ef71fa6d0c6cc50b74152b230c99a5', 0, '', 0, 0, 'rick.tsao@chupei.com.tw', NULL, '0928101128', 1, '2016-07-20 00:00:01', NULL, 1, 1, 0, '2016-08-21 10:54:27', '2015-06-04 13:58:07', '', '::1', '2016-03-24 17:03:29', NULL, '[OS] Unknown Windows OS\n[Agent] Firefox 45.0', 1, NULL, NULL, NULL, NULL),
	('5tgb4rfv', 3, 0, NULL, '管理者', 'M', NULL, NULL, NULL, '總幹事', NULL, 'ccc', NULL, 2, 0, 1, NULL, 0, 0, 0, '', 'admin', 'c4983d36fb195428c9e8c79dfa9bcb0eb20f74e0', 0, '', 0, 0, 'inn.tang@chupei.com.tw', NULL, '0928886052', 1, '2016-05-31 00:00:01', NULL, 1, 1, 0, '2016-11-30 16:28:00', '2015-05-27 12:01:11', '', '192.168.1.68', '2016-03-24 14:06:27', NULL, '[OS] Unknown Windows OS\n[Agent] Chrome 49.0.2623.87', 1, NULL, NULL, NULL, NULL),
	('5tgb4rfv', 4, 0, NULL, '蔣小花', 'M', NULL, NULL, NULL, '總幹事', NULL, NULL, NULL, 2, 0, 1, NULL, 0, 0, 0, '', 'abc', '8c9ca4899ddedf28d6cc1004bf08b781547da43f', 0, '', 0, 0, 'rick.tsao@chupei.com.tw', NULL, '0928101128', 0, '2016-05-20 00:00:01', NULL, 1, 1, 0, '2016-05-20 15:55:01', '2015-06-04 13:58:07', '', '::1', '2016-03-24 17:03:29', NULL, '[OS] Unknown Windows OS\n[Agent] Firefox 45.0', 1, NULL, NULL, NULL, NULL),
	('5tgb4rfv', 5, 1, '3_1_1', '李大仁', 'I', 3, 1, '新北市新莊區環中路104巷1號一樓', NULL, '11111111', 'AB12345676', '689287511981', 1, 0, 1, 1, 0, 1, 1, '台北市內湖區康寧路三段12巷168號1樓', NULL, NULL, 0, '0', 1, 1, NULL, '0288515678', '0935678678', 0, NULL, NULL, 0, 1, 0, '2016-12-19 08:55:14', '2016-04-10 20:17:37', '黃小慧', NULL, '2016-07-18 00:13:06', '2016-07-18 11:54:13', NULL, 17, NULL, NULL, NULL, NULL),
	('5tgb4rfv', 6, 1, '3_1_2', '程又青', 'I', 3, 1, '新北市新莊區環中路104巷1號一樓', NULL, '22222222', 'AB12345678', '237611129525', 2, 0, 1, 1, 0, 0, 0, '', NULL, NULL, 1, '2', 1, 1, NULL, '0288515678', '0928666888', 0, '2016-05-24 00:00:00', NULL, 1, 1, 0, '2016-12-19 08:55:14', '2016-04-10 20:17:37', '黃小慧', NULL, '2016-07-18 11:17:47', '2016-07-18 11:18:07', NULL, 13, NULL, NULL, NULL, NULL),
	('5tgb4rfv', 7, 1, '3_4_1', '周小倫', 'I', 3, 4, '新北市新莊區環中路104巷1號四樓', NULL, '2024438039', '', NULL, 1, 0, 1, 1, 0, 0, 0, '台北市內湖區康寧路三段12巷168號4樓', NULL, NULL, 1, '1', 0, 0, NULL, '0222688909', '0922333456', 0, '2016-05-01 00:00:00', NULL, 1, 1, 0, '2016-12-19 08:55:15', '2016-04-10 20:17:37', '黃小慧', NULL, '2016-05-07 13:14:02', '2016-05-14 21:15:53', NULL, 3, '27.147.30.192', '2016-10-12 10:47:55', '2016-10-12 10:47:55', 43),
	('5tgb4rfv', 8, 1, '2_7_1', '李小花', 'I', 2, 7, '新北市新莊區環中路102號七樓', NULL, '55555555', 'ea238993ab6baeb2', '065698583028', 2, 0, 1, 1, 0, 0, 1, '台北市內湖區康寧路三段12巷168號3樓', NULL, NULL, 0, '0', 0, 1, NULL, '0288515678', '0922333555', 0, NULL, NULL, 0, 1, 0, '2016-12-19 08:55:14', '2016-04-10 20:17:37', '黃小慧', NULL, '2016-08-31 23:36:14', '2016-09-06 13:08:39', NULL, 8, '27.147.4.239', '2016-06-06 17:33:52', '2016-06-06 17:33:52', 1),
	('5tgb4rfv', 9, 1, '3_2_1', '秦子奇', 'I', 3, 2, '新北市新莊區環中路104巷1號二樓', NULL, '66666666', '1234507844', '132990982672', 1, 0, 1, 1, 0, 1, 1, '台北市內湖區康寧路三段12巷168號2樓', NULL, NULL, 0, '0', 1, 1, NULL, '0288519003', '0912789960', 0, NULL, NULL, 0, 1, 0, '2016-12-19 08:55:14', '2016-04-10 20:17:37', '黃小慧', NULL, '2016-06-05 13:51:11', '2016-06-06 08:05:42', NULL, 36, NULL, NULL, NULL, NULL),
	('5tgb4rfv', 10, 1, '3_2_2', '沈杏仁', 'I', 3, 2, '新北市新莊區環中路104巷1號二樓', NULL, '77777777', '43d82edb15a5c520', '586065862276', 2, 0, 1, 1, 0, 0, 0, '', NULL, NULL, 0, '0', 1, 1, NULL, '0288519003', '0922318119', 0, NULL, NULL, 0, 1, 0, '2016-12-19 08:55:15', '2016-04-10 20:17:37', '黃小慧', NULL, '2016-09-06 12:25:33', '2016-09-06 12:27:19', NULL, 8, '27.147.30.192', '2016-06-06 11:17:27', '2016-06-06 11:17:27', 8),
	('5tgb4rfv', 11, 0, NULL, '張銘祺', 'M', NULL, NULL, NULL, '總幹事', NULL, '7734567833', NULL, 1, 0, 1, NULL, 0, 0, 0, '', 'edoma', 'b1884b929bf5987703982ddada93d33f86133935', 0, '', 0, 0, NULL, NULL, '0910040437', 0, '2016-05-01 00:00:00', NULL, 1, 0, 0, '2016-05-04 01:20:07', '2016-04-18 00:33:37', '', NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL),
	('5tgb4rfv', 12, 0, NULL, '沈福勝', 'P', NULL, NULL, '新北市新莊區環中路６９０號１１樓', NULL, NULL, NULL, NULL, 1, 0, 1, NULL, 0, 0, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '0289896579', '0921246369', 0, '2016-05-07 00:00:00', NULL, 1, 0, 0, '2016-05-07 15:57:34', '2016-05-07 14:09:26', '', NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL),
	('5tgb4rfv', 13, 0, NULL, '蔣東濬', 'P', NULL, NULL, '新北市新莊區新明路１２巷９號之一', NULL, NULL, NULL, NULL, 1, 0, 1, NULL, 0, 0, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '0228967799', '0921246369', 0, '2016-05-07 00:00:00', NULL, 1, 1, 0, '2016-05-07 14:11:32', '2016-05-07 14:11:32', '', NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL),
	('5tgb4rfv', 16, 1, '1_5_1', '安心心', 'I', 1, 5, '新北市新莊區環中路100號五樓', NULL, '88888888', '', '729976657124', 2, 0, 0, 1, 0, 0, 0, '', NULL, NULL, 1, '3', 0, 1, NULL, '022853388', '0911000000', 0, '2016-07-01 00:00:00', NULL, 1, 1, 0, '2017-01-02 16:08:54', '2016-06-05 13:23:03', '', NULL, '2016-12-08 16:05:07', '2017-01-02 16:08:54', NULL, 82, '27.147.30.192', '2016-10-12 10:47:55', '2016-10-12 10:47:55', 43),
	('5tgb4rfv', 17, 0, NULL, '張銘祺', 'P', NULL, NULL, '新北市新店區', NULL, NULL, NULL, NULL, 1, 0, 1, NULL, 0, 0, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '0910040437', '091040437', 0, '2016-06-05 00:00:00', NULL, 1, 0, 0, '2016-06-05 13:44:08', '2016-06-05 13:44:08', '', NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL),
	('5tgb4rfv', 18, 1, '3_2_3', '鄧子琪', 'I', 3, 2, '新北市新莊區環中路104巷1號二樓', NULL, NULL, '', '898064634845', 2, 0, 1, 1, 0, 0, 0, '', NULL, NULL, 0, '0', 0, 0, NULL, '', '0921567889', 0, '2016-06-12 00:00:00', NULL, 1, 1, 0, '2016-12-19 08:55:15', '2016-06-12 18:50:40', '', NULL, NULL, NULL, NULL, 0, '27.147.30.192', '2016-10-12 10:47:55', '2016-10-12 10:47:55', 43),
	('5tgb4rfv', 19, 1, '3_6_1', '艾莉絲', 'I', 3, 6, '環中路104巷1號六樓', NULL, '168168168', '', '559245339396', 2, 0, 1, 1, 0, 1, 1, '', NULL, NULL, 0, '0', 0, 0, NULL, '', '0912888999', 0, '2016-08-23 00:00:00', NULL, 1, 1, 0, '2016-12-19 08:55:15', '2016-08-23 22:41:11', '', NULL, '2016-11-08 15:32:31', '2016-11-08 18:21:36', NULL, 6, '27.147.30.192', '2016-10-12 10:47:55', '2016-10-12 10:47:55', 43),
	('5tgb4rfv', 20, 1, '3_2_4', '奇異果', 'I', 3, 2, '環中路104巷1號二樓', NULL, NULL, '', '611571180326', 2, 1, 0, 1, 1, 0, 1, '', NULL, NULL, 1, '5', 1, 0, NULL, '0288519400', '0912789400', 0, '2016-11-20 00:00:00', NULL, 1, 1, 0, '2016-12-19 08:55:15', '2016-11-20 23:22:05', '', NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL),
	('5tgb4rfv', 21, 1, '3_2_5', '火龍果', 'I', 3, 2, '環中路104巷1號二樓', NULL, NULL, '', '076040487537', 1, 1, 0, 0, 1, 0, 1, '台北市內湖區舊宗路1168號12樓', NULL, NULL, 1, '5', 1, 0, NULL, '0288519400', '0912789400', 0, '2016-11-20 00:00:00', NULL, 1, 1, 0, '2016-12-19 08:55:15', '2016-11-20 23:41:55', '', NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL),
	('5tgb4rfv', 22, 1, '3_2_6', '哈密瓜', 'I', 3, 2, '環中路104巷1號二樓', NULL, NULL, '', '077962445372', 2, 0, 1, 0, 0, 1, 0, '台北市忠孝東路四段222號6樓', NULL, NULL, 0, '0', 1, 1, NULL, '123456789', '123456789', 0, '2016-11-20 00:00:00', NULL, 1, 1, 0, '2016-12-19 08:55:15', '2016-11-20 23:49:39', '', NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL),
	('5tgb4rfv', 23, 1, '3_2_7', '小龍果', 'I', 3, 2, '環中路104巷1號二樓', NULL, NULL, '', '463697180699', 1, 0, 0, 0, 1, 0, 1, '台北市內湖區舊宗路1168號13樓', NULL, NULL, 0, '', 0, 0, NULL, '0288519402', '0912789402', 0, '2016-11-27 00:00:00', NULL, 1, 1, 0, '2016-12-19 08:55:15', '2016-11-27 17:55:57', '', NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL),
	('5tgb4rfv', 24, 1, '3_2_8', '哈瓜瓜', 'I', 3, 2, '環中路104巷1號二樓', NULL, NULL, '', '072861912641', 2, 0, 0, 0, 1, 1, 0, '台北市忠孝東路四段222號8樓', NULL, NULL, 0, '', 0, 0, NULL, '123456785', '123456786', 0, '2016-11-27 00:00:00', NULL, 1, 1, 0, '2016-12-19 08:55:15', '2016-11-27 17:56:46', '', NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL);
/*!40000 ALTER TABLE `sys_user` ENABLE KEYS */;


-- 導出  表 sg.sys_user_belong_group 結構
CREATE TABLE IF NOT EXISTS `sys_user_belong_group` (
  `sys_user_sn` int(10) unsigned NOT NULL,
  `sys_user_group_sn` int(10) unsigned NOT NULL DEFAULT '0',
  `launch` tinyint(1) DEFAULT '0',
  `update_date` datetime DEFAULT NULL,
  KEY `FK_sys_admin_belong_group_1` (`sys_user_sn`),
  KEY `FK_sys_admin_belong_group_2` (`sys_user_group_sn`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 正在導出表  sg.sys_user_belong_group 的資料：~86 rows (大約)
/*!40000 ALTER TABLE `sys_user_belong_group` DISABLE KEYS */;
REPLACE INTO `sys_user_belong_group` (`sys_user_sn`, `sys_user_group_sn`, `launch`, `update_date`) VALUES
	(3, 5, 0, '2016-05-31 13:05:51'),
	(6, 2, 1, '2016-05-29 14:02:15'),
	(6, 1, 1, '2016-05-29 14:02:15'),
	(7, 2, 1, '2016-05-29 14:02:36'),
	(7, 1, 1, '2016-05-29 14:02:36'),
	(5, 1, 1, '2016-05-29 14:03:00'),
	(9, 1, 1, '2016-05-29 14:03:43'),
	(10, 1, 1, '2016-05-29 14:04:06'),
	(8, 1, 1, '2016-05-29 14:04:26'),
	(1, 3, 1, '2016-05-30 23:39:21'),
	(2, 3, 1, '2016-05-30 23:39:21'),
	(3, 3, 1, '2016-05-31 13:05:51'),
	(18, 1, 0, '2016-06-12 19:18:10'),
	(16, 1, 1, '2016-06-12 18:52:20'),
	(8, 1, 1, '2016-06-12 19:14:41'),
	(18, 1, 1, '2016-06-12 19:30:02'),
	(18, 1, 1, '2016-06-12 19:30:43'),
	(16, 1, 1, '2016-07-17 17:25:25'),
	(16, 1, 1, '2016-07-17 17:28:47'),
	(16, 2, 1, '2016-07-17 17:28:47'),
	(16, 1, 1, '2016-07-17 17:35:06'),
	(16, 2, 1, '2016-07-17 17:35:06'),
	(16, 1, 1, '2016-07-17 17:41:32'),
	(16, 2, 1, '2016-07-17 17:41:33'),
	(16, 1, 1, '2016-07-17 18:30:55'),
	(16, 2, 1, '2016-07-17 18:30:55'),
	(16, 1, 1, '2016-07-17 18:40:28'),
	(16, 2, 1, '2016-07-17 18:40:29'),
	(16, 1, 1, '2016-07-17 18:47:34'),
	(16, 2, 1, '2016-07-17 18:47:34'),
	(16, 1, 1, '2016-07-17 18:52:41'),
	(16, 2, 1, '2016-07-17 18:52:41'),
	(16, 1, 1, '2016-07-17 19:14:54'),
	(16, 2, 1, '2016-07-17 19:14:54'),
	(8, 1, 1, '2016-07-17 19:16:16'),
	(5, 1, 1, '2016-07-17 19:16:59'),
	(6, 1, 1, '2016-07-17 19:18:12'),
	(6, 2, 1, '2016-07-17 19:18:13'),
	(9, 1, 1, '2016-07-17 19:18:41'),
	(18, 1, 1, '2016-07-17 19:19:38'),
	(7, 1, 1, '2016-07-17 19:20:09'),
	(7, 2, 1, '2016-07-17 19:20:09'),
	(10, 1, 1, '2016-07-17 19:21:20'),
	(16, 1, 1, '2016-07-17 19:24:37'),
	(16, 2, 1, '2016-07-17 19:24:37'),
	(7, 1, 1, '2016-07-17 19:25:45'),
	(7, 2, 1, '2016-07-17 19:25:46'),
	(10, 1, 1, '2016-07-17 19:27:15'),
	(18, 1, 1, '2016-07-17 19:28:03'),
	(8, 1, 1, '2016-07-17 19:28:39'),
	(9, 1, 1, '2016-07-17 19:29:02'),
	(5, 1, 1, '2016-07-17 19:29:39'),
	(6, 1, 1, '2016-07-17 19:29:58'),
	(6, 2, 1, '2016-07-17 19:29:58'),
	(16, 1, 1, '2016-07-17 19:36:07'),
	(16, 2, 1, '2016-07-17 19:36:07'),
	(16, 1, 1, '2016-07-17 19:41:22'),
	(16, 2, 1, '2016-07-17 19:41:22'),
	(8, 1, 1, '2016-07-17 19:42:54'),
	(5, 1, 1, '2016-07-17 19:46:44'),
	(16, 1, 1, '2016-07-17 19:50:23'),
	(16, 2, 1, '2016-07-17 19:50:23'),
	(5, 1, 1, '2016-07-17 19:50:56'),
	(6, 1, 1, '2016-07-17 19:51:22'),
	(6, 2, 1, '2016-07-17 19:51:22'),
	(8, 1, 1, '2016-07-17 19:51:28'),
	(8, 1, 1, '2016-07-17 19:51:51'),
	(9, 1, 1, '2016-07-17 19:51:57'),
	(10, 1, 1, '2016-07-17 19:52:34'),
	(7, 1, 1, '2016-07-17 19:53:17'),
	(7, 2, 1, '2016-07-17 19:53:18'),
	(18, 1, 1, '2016-07-17 19:53:40'),
	(9, 1, 1, '2016-07-17 19:54:21'),
	(10, 1, 1, '2016-07-17 19:54:41'),
	(10, 1, 1, '2016-07-17 19:57:49'),
	(9, 1, 1, '2016-07-17 19:58:07'),
	(6, 1, 1, '2016-07-17 20:00:43'),
	(6, 2, 1, '2016-07-17 20:00:43'),
	(2, 4, 1, '2016-07-20 16:15:57'),
	(19, 1, 1, '2016-08-23 22:41:12'),
	(16, 1, 1, '2016-08-30 16:50:49'),
	(16, 1, 1, '2016-08-30 16:52:30'),
	(16, 1, 1, '2016-08-30 16:53:04'),
	(16, 1, 1, '2016-09-06 09:45:23'),
	(9, 1, 1, '2016-11-13 23:58:16'),
	(9, 1, 1, '2016-11-14 00:34:19');
/*!40000 ALTER TABLE `sys_user_belong_group` ENABLE KEYS */;


-- 導出  表 sg.sys_user_file_auth 結構
CREATE TABLE IF NOT EXISTS `sys_user_file_auth` (
  `sn` bigint(20) NOT NULL AUTO_INCREMENT,
  `sys_user_group_sn` int(11) DEFAULT NULL,
  `file_sn` int(11) DEFAULT NULL,
  `launch` tinyint(1) DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  PRIMARY KEY (`sn`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 正在導出表  sg.sys_user_file_auth 的資料：~0 rows (大約)
/*!40000 ALTER TABLE `sys_user_file_auth` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_user_file_auth` ENABLE KEYS */;


-- 導出  表 sg.sys_user_func_auth 結構
CREATE TABLE IF NOT EXISTS `sys_user_func_auth` (
  `sn` int(11) NOT NULL AUTO_INCREMENT,
  `sys_user_group_sn` int(11) DEFAULT NULL,
  `sys_function_sn` int(11) DEFAULT NULL,
  `is_frontend` tinyint(1) DEFAULT '1',
  `launch` tinyint(1) DEFAULT '1',
  `update_date` datetime DEFAULT NULL,
  PRIMARY KEY (`sn`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='前端特殊權限';

-- 正在導出表  sg.sys_user_func_auth 的資料：~0 rows (大約)
/*!40000 ALTER TABLE `sys_user_func_auth` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_user_func_auth` ENABLE KEYS */;


-- 導出  表 sg.sys_user_group 結構
CREATE TABLE IF NOT EXISTS `sys_user_group` (
  `sn` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(50) DEFAULT NULL,
  `launch` tinyint(1) DEFAULT '1',
  `id` varchar(10) DEFAULT NULL,
  `sort` smallint(5) unsigned NOT NULL DEFAULT '500',
  `update_date` datetime DEFAULT NULL,
  `creare_date` datetime DEFAULT NULL,
  PRIMARY KEY (`sn`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- 正在導出表  sg.sys_user_group 的資料：~5 rows (大約)
/*!40000 ALTER TABLE `sys_user_group` DISABLE KEYS */;
REPLACE INTO `sys_user_group` (`sn`, `title`, `launch`, `id`, `sort`, `update_date`, `creare_date`) VALUES
	(1, '住戶', 1, 'user', 500, '2015-03-18 16:17:58', NULL),
	(2, '管委會', 1, 'advuser', 400, '2015-03-17 17:08:04', NULL),
	(3, '管理者', 1, 'secretary', 100, '2015-03-18 10:35:16', NULL),
	(4, '警衛', 1, 'guard', 300, '2015-08-31 09:49:02', NULL),
	(5, '富網通', 1, 'fu', 501, '2015-08-05 11:42:02', NULL);
/*!40000 ALTER TABLE `sys_user_group` ENABLE KEYS */;


-- 導出  表 sg.sys_user_group_b_auth 結構
CREATE TABLE IF NOT EXISTS `sys_user_group_b_auth` (
  `sn` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `sys_user_group_sn` int(10) unsigned NOT NULL DEFAULT '0',
  `module_sn` int(10) unsigned NOT NULL DEFAULT '0',
  `launch` tinyint(1) DEFAULT '0',
  `update_date` datetime DEFAULT NULL,
  PRIMARY KEY (`sn`),
  KEY `FK_sys_admin_group_authority_1` (`sys_user_group_sn`),
  KEY `FK_sys_admin_group_authority_2` (`module_sn`),
  CONSTRAINT `FK_sys_admin_group_authority_sys_admin_group` FOREIGN KEY (`sys_user_group_sn`) REFERENCES `sys_user_group` (`sn`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_sys_admin_group_authority_sys_module` FOREIGN KEY (`module_sn`) REFERENCES `sys_module` (`sn`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=197 DEFAULT CHARSET=utf8;

-- 正在導出表  sg.sys_user_group_b_auth 的資料：~28 rows (大約)
/*!40000 ALTER TABLE `sys_user_group_b_auth` DISABLE KEYS */;
REPLACE INTO `sys_user_group_b_auth` (`sn`, `sys_user_group_sn`, `module_sn`, `launch`, `update_date`) VALUES
	(1, 3, 22, 1, '2017-02-03 14:07:30'),
	(4, 3, 32, 1, '2017-02-03 14:07:29'),
	(5, 3, 33, 1, '2017-02-03 14:07:29'),
	(10, 3, 26, 0, '2016-04-28 18:50:13'),
	(31, 2, 32, 0, '2016-08-02 17:24:20'),
	(32, 2, 33, 0, '2016-08-02 17:24:21'),
	(38, 2, 26, 0, '2016-04-25 22:19:26'),
	(53, 2, 22, 0, '2016-08-02 17:24:24'),
	(83, 3, 83, 1, '2016-11-26 19:29:59'),
	(84, 5, 32, 1, '2016-05-07 13:28:38'),
	(87, 5, 33, 1, '2016-05-07 13:28:38'),
	(88, 5, 83, 0, '2016-05-07 13:28:39'),
	(91, 5, 26, 0, '2016-05-01 16:59:31'),
	(111, 5, 22, 1, '2016-05-07 13:28:42'),
	(127, 2, 83, 0, '2016-08-02 17:24:21'),
	(138, 4, 32, 1, '2017-02-03 13:22:34'),
	(139, 4, 33, 1, '2017-02-03 13:22:34'),
	(144, 4, 83, 0, '2016-05-20 15:57:11'),
	(168, 4, 22, 1, '2017-02-03 13:22:34'),
	(188, 4, 96, 1, '2017-02-03 13:22:34'),
	(189, 3, 96, 1, '2017-02-03 14:07:30'),
	(190, 3, 97, 1, '2017-02-03 14:07:30'),
	(191, 3, 98, 1, '2017-02-03 14:07:30'),
	(192, 3, 99, 1, '2017-02-03 14:07:30'),
	(193, 3, 100, 1, '2017-02-03 14:07:30'),
	(194, 3, 101, 1, '2017-02-03 14:07:30'),
	(195, 3, 102, 1, '2017-02-03 14:07:30'),
	(196, 3, 103, 1, '2017-02-03 14:07:30');
/*!40000 ALTER TABLE `sys_user_group_b_auth` ENABLE KEYS */;


-- 導出  表 sg.sys_user_group_f_auth 結構
CREATE TABLE IF NOT EXISTS `sys_user_group_f_auth` (
  `sn` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `sys_user_group_sn` int(10) unsigned NOT NULL DEFAULT '0',
  `web_menu_sn` int(10) unsigned NOT NULL DEFAULT '0',
  `launch` tinyint(1) DEFAULT '0',
  `update_date` datetime DEFAULT NULL,
  PRIMARY KEY (`sn`),
  KEY `FK_sys_user_group_f_auth_sys_user_group` (`sys_user_group_sn`),
  KEY `FK_sys_user_group_f_auth_web_menu` (`web_menu_sn`),
  CONSTRAINT `FK_sys_user_group_f_auth_sys_user_group` FOREIGN KEY (`sys_user_group_sn`) REFERENCES `sys_user_group` (`sn`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_sys_user_group_f_auth_web_menu` FOREIGN KEY (`web_menu_sn`) REFERENCES `web_menu` (`sn`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='群組對應前端權限關係表';

-- 正在導出表  sg.sys_user_group_f_auth 的資料：~0 rows (大約)
/*!40000 ALTER TABLE `sys_user_group_f_auth` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_user_group_f_auth` ENABLE KEYS */;


-- 導出  表 sg.web_menu 結構
CREATE TABLE IF NOT EXISTS `web_menu` (
  `sn` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_sn` int(11) unsigned DEFAULT NULL COMMENT '父層序號',
  `level` tinyint(4) NOT NULL DEFAULT '0' COMMENT '層級',
  `title` varchar(100) NOT NULL COMMENT '名稱',
  `id` varchar(20) DEFAULT NULL COMMENT 'id',
  `img_filename` varchar(100) DEFAULT NULL COMMENT '圖片',
  `dir` tinyint(1) NOT NULL DEFAULT '0' COMMENT '目錄 (0:否,1:是)',
  `type` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0:網頁單元,1:連結',
  `url` varchar(255) DEFAULT NULL COMMENT 'URL(type=1時使用)',
  `target` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'target',
  `sort` smallint(6) NOT NULL DEFAULT '500' COMMENT '排序',
  `allow_internet` tinyint(1) NOT NULL DEFAULT '0',
  `launch` tinyint(1) NOT NULL DEFAULT '1' COMMENT '1:啟用,0:停用',
  `update_date` datetime NOT NULL,
  `create_date` datetime NOT NULL,
  PRIMARY KEY (`sn`),
  KEY `parent_sn` (`parent_sn`),
  CONSTRAINT `web_menu_ibfk_1` FOREIGN KEY (`parent_sn`) REFERENCES `web_menu` (`sn`) ON DELETE SET NULL ON UPDATE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='前端單元';

-- 正在導出表  sg.web_menu 的資料：~0 rows (大約)
/*!40000 ALTER TABLE `web_menu` DISABLE KEYS */;
/*!40000 ALTER TABLE `web_menu` ENABLE KEYS */;


-- 導出  表 sg.web_menu_banner 結構
CREATE TABLE IF NOT EXISTS `web_menu_banner` (
  `sn` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `banner_id` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `filename` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '檔案名稱',
  `start_date` datetime NOT NULL,
  `end_date` datetime DEFAULT NULL,
  `forever` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `launch` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `sort` int(10) unsigned NOT NULL DEFAULT '500',
  `url` text COLLATE utf8_unicode_ci,
  `target` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `content` text COLLATE utf8_unicode_ci,
  `update_date` datetime NOT NULL,
  `create_date` datetime NOT NULL,
  PRIMARY KEY (`sn`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- 正在導出表  sg.web_menu_banner 的資料：~0 rows (大約)
/*!40000 ALTER TABLE `web_menu_banner` DISABLE KEYS */;
/*!40000 ALTER TABLE `web_menu_banner` ENABLE KEYS */;


-- 導出  表 sg.web_menu_content 結構
CREATE TABLE IF NOT EXISTS `web_menu_content` (
  `sn` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `server_sn` int(11) unsigned DEFAULT NULL,
  `comm_id` char(8) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '社區序號',
  `id` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `parent_sn` int(11) unsigned DEFAULT NULL,
  `title` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `brief` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `brief2` text COLLATE utf8_unicode_ci,
  `content_type` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `img_filename` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '圖片名稱',
  `img_filename2` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '圖片名稱2',
  `filename` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '檔案名稱',
  `start_date` datetime NOT NULL,
  `end_date` datetime DEFAULT NULL,
  `dir` tinyint(1) NOT NULL DEFAULT '0',
  `forever` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `launch` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `del` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否已刪除  1:yes,0:no',
  `sort` int(10) unsigned NOT NULL DEFAULT '500',
  `url` text COLLATE utf8_unicode_ci,
  `target` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `content` text COLLATE utf8_unicode_ci,
  `hot` tinyint(1) NOT NULL DEFAULT '0',
  `is_sync` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否同步 1:yes,0:no',
  `is_edoma` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否為富網通資料 1:yes,0:no',
  `update_date` datetime NOT NULL,
  `create_date` datetime NOT NULL,
  PRIMARY KEY (`sn`)
) ENGINE=MyISAM AUTO_INCREMENT=2002 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- 正在導出表  sg.web_menu_content 的資料：126 rows
/*!40000 ALTER TABLE `web_menu_content` DISABLE KEYS */;
REPLACE INTO `web_menu_content` (`sn`, `server_sn`, `comm_id`, `id`, `parent_sn`, `title`, `brief`, `brief2`, `content_type`, `img_filename`, `img_filename2`, `filename`, `start_date`, `end_date`, `dir`, `forever`, `launch`, `del`, `sort`, `url`, `target`, `content`, `hot`, `is_sync`, `is_edoma`, `update_date`, `create_date`) VALUES
	(1, NULL, '%s', NULL, NULL, '', '', '', 'marquee', NULL, NULL, '', '2016-06-06 00:00:00', NULL, 0, 1, 1, 1, 500, '', 0, '內容內容內容內容內容內容內容', 0, 1, 0, '2016-07-13 19:24:21', '2016-06-07 22:43:20'),
	(2, NULL, '%s', NULL, NULL, '', '', '', 'marquee', NULL, NULL, '', '2016-06-06 00:00:00', NULL, 0, 1, 1, 1, 500, '', 0, '內容內容內容內容內容內容內容 111', 0, 1, 0, '2016-07-13 19:24:21', '2016-06-06 22:47:28'),
	(394, NULL, '0', 'news_rule', NULL, '法規', 'news_5', '', 'newscat', 'newscat_20150627114039_918041.jpg', '', '', '2015-07-29 14:33:26', NULL, 0, 1, 1, 0, 5, '', 0, '', 0, 1, 0, '2016-05-07 14:52:37', '2015-04-23 14:50:23'),
	(399, NULL, '5tgb4rfv', NULL, NULL, '外牆格柵維修', '', '', 'news', '20160430224205_588754.jpg', '', '', '2016-03-24 00:00:00', NULL, 0, 1, 1, 1, 500, '', 0, 'vvvv', 0, 1, 0, '2016-07-14 10:41:32', '2015-04-23 15:10:25'),
	(400, NULL, '5tgb4rfv', NULL, NULL, 'C棟頂樓防水工程施工', '', '', 'news', '20160501195827_691311.png', '', '', '2016-03-25 00:00:00', NULL, 0, 1, 1, 1, 500, '', 0, '', 0, 1, 0, '2016-07-14 10:41:32', '2015-04-23 17:50:24'),
	(406, NULL, '0', 'bulletin_training', NULL, '教育訓練', '', '', 'bulletincat', '', '', '', '2015-04-27 18:50:54', NULL, 0, 1, 1, 0, 1, '', 0, '', 0, 1, 0, '2016-05-07 14:52:37', '2015-04-27 18:49:26'),
	(407, NULL, '0', 'bulletin_mgr', NULL, '管理辦法', '', '', 'bulletincat', '', '', '', '2015-04-27 18:51:14', NULL, 0, 1, 1, 0, 2, '', 0, '', 0, 1, 0, '2016-05-07 14:52:37', '2015-04-27 18:50:43'),
	(408, NULL, '0', 'bulletin_person', NULL, '人事公告', '', '', 'bulletincat', '', '', '', '2015-04-27 18:51:54', NULL, 0, 1, 0, 0, 500, '', 0, '', 0, 1, 0, '2016-05-07 14:52:38', '2015-04-27 18:51:54'),
	(409, NULL, '0', 'bulletin_sys', NULL, '系統公告', '', '', 'bulletincat', '', '', '', '2015-04-27 18:54:05', NULL, 0, 1, 1, 0, 4, '', 0, '', 0, 1, 0, '2016-05-07 14:52:38', '2015-04-27 18:54:05'),
	(422, NULL, '0', 'news_land', NULL, '土地', 'news_1', '', 'newscat', 'newscat_20150627105710_205249.jpg', '', '', '2015-07-29 14:32:56', NULL, 0, 1, 1, 0, 1, '', 0, '', 0, 1, 0, '2016-05-07 14:52:38', '2015-04-28 12:04:03'),
	(423, NULL, '0', 'news_house', NULL, '房巿', 'news_2', '', 'newscat', 'newscat_20150627105723_443020.jpg', '', '', '2015-07-29 14:33:06', NULL, 0, 1, 1, 0, 2, '', 0, '', 0, 1, 0, '2016-05-07 14:52:38', '2015-04-28 12:04:24'),
	(424, NULL, '0', 'news_sales', NULL, '標售', 'news_3', '', 'newscat', 'newscat_20150627114225_710702.jpg', '', '', '2015-07-29 14:33:12', NULL, 0, 1, 1, 0, 3, '', 0, '', 0, 1, 0, '2016-05-07 14:52:39', '2015-04-28 12:04:56'),
	(425, NULL, '0', 'news_tax', NULL, '稅務', 'news_4', '', 'newscat', 'newscat_20150627105801_861160.jpg', '', '', '2015-07-29 14:33:20', NULL, 0, 1, 1, 0, 4, '', 0, '', 0, 1, 0, '2016-05-07 14:52:39', '2015-04-28 12:05:22'),
	(427, NULL, '0', 'sys', NULL, '系統', '', '', 'faqcat', '', '', '', '2015-05-22 09:41:43', NULL, 0, 1, 1, 0, 500, '', 0, '', 0, 1, 0, '2016-05-07 14:52:39', '2015-05-22 09:41:43'),
	(428, NULL, '0', 'sales', NULL, '業務', '', '', 'faqcat', '', '', '', '2015-05-22 09:52:27', NULL, 0, 1, 1, 0, 500, '', 0, '', 0, 1, 0, '2016-05-07 14:52:40', '2015-05-22 09:52:27'),
	(429, NULL, '0', 'mgr', NULL, '行政', '', '', 'faqcat', '', '', '', '2015-05-22 09:54:15', NULL, 0, 1, 1, 0, 500, '', 0, '', 0, 1, 0, '2016-05-07 14:52:40', '2015-05-22 09:54:15'),
	(430, NULL, '0', NULL, 429, '如何透過網路查詢閱覽地政資料？其收費標準及收費方式為何？', '', '', 'faq', '', '', '', '2015-05-22 00:00:00', NULL, 0, 1, 1, 0, 500, '', 0, '', 0, 1, 0, '2016-05-07 14:52:40', '2015-05-22 09:58:36'),
	(431, NULL, '0', NULL, 429, '如何查詢某塊土地為私有或公有土地？', '', '', 'faq', '', '', '', '2015-05-22 00:00:00', NULL, 0, 1, 1, 0, 500, '', 0, '', 0, 1, 0, '2016-05-07 14:52:41', '2015-05-22 10:02:11'),
	(432, NULL, '0', NULL, 429, '何謂土地、建物登記謄本？與土地、建物所有權狀有何不同？', '', '', 'faq', '', '', '', '2015-05-22 00:00:00', NULL, 0, 1, 1, 0, 500, '', 0, '', 0, 1, 0, '2016-05-07 14:52:41', '2015-05-22 10:02:58'),
	(433, NULL, '0', NULL, 428, '僅知道房屋門牌，可否查詢地、建號及申請謄本？', '', '', 'faq', '', '', '', '2015-05-22 00:00:00', NULL, 0, 1, 1, 0, 500, '', 0, '', 0, 1, 0, '2016-05-07 14:52:41', '2015-05-22 10:03:31'),
	(434, NULL, '0', NULL, 427, '如何申請閱覽、複印已歸檔登記申請書及其附件？應備文件？', '', '', 'faq', '', '', '', '2015-05-22 00:00:00', NULL, 0, 1, 1, 0, 500, '', 0, '', 0, 1, 0, '2016-05-07 14:52:42', '2015-05-22 10:03:59'),
	(435, NULL, '0', NULL, 428, '地籍謄本如何申請？有哪些申請管道？可以通訊申請或傳真申請嗎？傳真號碼為何？費用如何計收？', '', '', 'faq', '', '', '', '2015-05-22 00:00:00', NULL, 0, 1, 1, 0, 500, '', 0, '', 0, 1, 0, '2016-05-07 14:52:42', '2015-05-22 10:04:25'),
	(436, NULL, '0', 'km_sales', NULL, '業務養成', '', '', 'kmcat', '', '', '', '2015-05-29 09:31:58', NULL, 0, 1, 1, 0, 500, '', 0, '', 0, 1, 0, '2016-05-07 14:52:42', '2015-05-28 17:06:05'),
	(437, NULL, '0', 'km_biz', NULL, '企管財經', '', '', 'kmcat', '', '', '', '2015-05-29 09:31:40', NULL, 0, 1, 1, 0, 500, '', 0, '', 0, 1, 0, '2016-05-07 14:52:43', '2015-05-28 17:10:21'),
	(438, NULL, '0', 'km_market', NULL, '巿場經濟', '', '', 'kmcat', '', '', '', '2015-05-29 09:30:41', NULL, 0, 1, 1, 0, 500, '', 0, '', 0, 1, 0, '2016-05-07 14:52:43', '2015-05-28 17:10:37'),
	(439, NULL, '0', 'km_heart', NULL, '心靈成長', '', '', 'kmcat', '', '', '', '2015-05-29 09:30:19', NULL, 0, 1, 1, 0, 500, '', 0, '', 0, 1, 0, '2016-05-07 14:52:43', '2015-05-28 17:11:31'),
	(440, NULL, '0', 'km_training', NULL, ' 教育訓練', '', '', 'kmcat', '', '', '', '2015-05-29 09:30:08', NULL, 0, 1, 1, 0, 500, '', 0, '', 0, 1, 0, '2016-05-07 14:52:44', '2015-05-28 17:11:53'),
	(441, NULL, '0', 'km_brief', NULL, '簡報資料', '', '', 'kmcat', '', '', '', '2015-05-29 09:29:51', NULL, 0, 1, 1, 0, 500, '', 0, '', 0, 1, 0, '2016-05-07 14:52:44', '2015-05-28 17:12:23'),
	(442, NULL, '0', NULL, 441, '建地跟農地差別在哪 ?', '', '', 'km', '', '', '', '2015-05-28 00:00:00', NULL, 0, 1, 0, 0, 500, '', 0, '', 0, 1, 0, '2016-05-07 14:52:44', '2015-05-28 17:16:05'),
	(443, NULL, '0', NULL, 440, '何謂建地、農地? ', '', '', 'km', '', '', '', '2015-05-29 00:00:00', NULL, 0, 1, 0, 0, 500, '', 0, '', 0, 1, 0, '2016-05-07 14:52:44', '2015-05-29 11:53:39'),
	(444, NULL, '0', NULL, 441, '現今買農地興建農舍有何限制？', '', '', 'km', '', '', '', '2015-05-29 00:00:00', NULL, 0, 1, 0, 0, 500, '', 0, '', 0, 1, 0, '2016-05-07 14:52:45', '2015-05-29 11:54:25'),
	(445, NULL, '0', NULL, 439, '請問農舍建敝率及容積為何？', '', '', 'km', '', '', '', '2015-05-29 00:00:00', NULL, 0, 1, 0, 0, 500, '', 0, '', 0, 1, 0, '2016-05-07 14:52:45', '2015-05-29 11:54:42'),
	(446, NULL, '0', NULL, 438, '買農地須注意什麼？', '', '', 'km', '', '', '', '2015-05-29 00:00:00', NULL, 0, 1, 0, 0, 500, '', 0, '', 0, 1, 0, '2016-05-07 14:52:45', '2015-05-29 11:54:56'),
	(447, NULL, '0', NULL, 441, '何謂配建農舍？', '', '', 'km', '', '', '', '2015-05-29 00:00:00', NULL, 0, 1, 0, 0, 500, '', 0, '', 0, 1, 0, '2016-05-07 14:52:46', '2015-05-29 11:55:12'),
	(448, NULL, '0', NULL, 437, '問農地可否共同持有？將來如有共有人欲將所有持分出售，如何處理呢？', '', '', 'km', '', '', '', '2015-05-29 00:00:00', NULL, 0, 1, 0, 0, 500, '', 0, '', 0, 1, 0, '2016-05-07 14:52:46', '2015-05-29 11:55:44'),
	(469, NULL, '0', NULL, NULL, 'test7', '', '', 'faq', '', '', '', '2015-07-06 00:00:00', NULL, 0, 1, 0, 0, 500, '', 0, '', 0, 1, 0, '2016-05-07 14:52:46', '2015-07-06 10:23:02'),
	(563, NULL, '0', 'jackie', NULL, '資訊公告', '', '', 'bulletincat', '', '', '', '2015-07-16 15:36:49', NULL, 0, 1, 1, 0, 500, '', 0, '', 0, 1, 0, '2016-05-07 14:52:47', '2015-07-16 15:33:16'),
	(618, NULL, '0', NULL, 409, '系統轉換-暫時停止填寫回報', '', '', 'bulletins', '', '', '', '2015-08-26 00:00:00', NULL, 0, 1, 1, 0, 500, '', 0, '', 0, 1, 0, '2016-05-07 14:52:47', '2015-08-26 14:10:44'),
	(631, NULL, '0', NULL, 409, '新系統網站開放上線使用', '', '', 'bulletins', '', '', '', '2015-08-28 00:00:00', NULL, 0, 1, 1, 0, 500, '', 0, '', 0, 1, 0, '2016-05-07 14:52:47', '2015-08-28 16:58:26'),
	(670, NULL, '0', NULL, 406, '敬請盡量避免使用"自行新增"填寫回報', '', '', 'bulletins', '', '', '', '2015-09-10 00:00:00', NULL, 0, 1, 1, 0, 500, '', 0, '', 0, 1, 0, '2016-05-07 14:52:48', '2015-09-10 16:13:43'),
	(975, NULL, '0', NULL, 424, '新北市6件市有土地及房地標租', 'MY GO NEWS', '', '', '', '', '', '2015-11-20 00:00:00', NULL, 0, 1, 1, 0, 500, '', 0, '', 0, 1, 0, '2016-05-07 14:52:48', '2015-11-20 08:49:53'),
	(976, NULL, '0', NULL, 424, '新北市6件市有土地及房地標租', 'MY GO NEWS', '', '', '', '', '', '2015-11-20 00:00:00', NULL, 0, 1, 1, 0, 500, '', 0, '', 0, 1, 0, '2016-05-07 14:52:48', '2015-11-20 08:50:26'),
	(977, NULL, '0', NULL, 424, '新北市6件市有土地及房地標租', 'MY GO NEWS', '', '', '', '', '', '2015-11-20 00:00:00', NULL, 0, 1, 1, 0, 500, '', 0, '', 0, 1, 0, '2016-05-07 14:52:49', '2015-11-20 08:50:59'),
	(1859, NULL, '5tgb4rfv', NULL, NULL, '遊戲區小舞台拆除地面補鋪設安全地墊。', '', '', 'news', '20160506211713_856463.jpg', '', '', '2016-03-29 00:00:00', NULL, 0, 1, 1, 1, 500, '', 0, '遊戲區小舞台拆除地面補鋪設安全地墊。', 0, 1, 0, '2016-07-14 10:54:51', '2016-03-29 20:26:49'),
	(1860, NULL, '5tgb4rfv', NULL, NULL, '施做地下停車場B1~B4轉彎處路線補漆工程。', '', '', 'news', '20160501174528_419647.jpg', '', '', '2016-03-29 00:00:00', NULL, 0, 1, 1, 1, 500, '', 0, '施做地下停車場B1~B4轉彎處路線補漆工程。', 0, 1, 0, '2016-07-14 10:41:32', '2016-03-29 20:35:25'),
	(1861, NULL, '5tgb4rfv', NULL, NULL, '道路停車格重新劃設工程順延 ', '', '', 'bulletin', '', '', '', '2016-03-29 00:00:00', NULL, 0, 1, 1, 1, 500, '', 0, '內容內容內容內容&nbsp;本工程時間原預計於12月15、16、17日<br /> (星期二、三、四)施工，但適逢天候不穩定<br /> ，工程時間調整為<span style="text-decoration: underline;">12</span><span style="text-decoration: underline;">月21日(星期一)</span>施工，<br /> 遇雨則順延一天，敬請將您愛車移停放自家<br /> 車庫，以免該處無法畫線，謝謝合作 ！', 0, 1, 0, '2016-07-14 10:45:43', '2016-03-29 20:58:44'),
	(1862, NULL, '5tgb4rfv', NULL, NULL, '黃小慧', '頻果日報', '', 'daily_good', '', '', '', '2016-03-29 00:00:00', NULL, 0, 1, 1, 0, 500, '', 0, '撿到了錢送去了警察局', 0, 1, 0, '2016-04-23 11:02:39', '2016-03-29 21:27:53'),
	(1863, NULL, '5tgb4rfv', NULL, NULL, '蔣小花', 'bbb', '', 'daily_good', '', '', '', '2016-03-29 00:00:00', NULL, 0, 1, 1, 0, 500, '', 0, '路上撿了垃圾', 0, 1, 0, '2016-04-23 11:02:40', '2016-03-29 21:32:51'),
	(1864, NULL, '5tgb4rfv', NULL, NULL, 'english class 1', '1', '', 'course', '', '', '', '2016-03-30 00:00:00', NULL, 0, 1, 1, 1, 500, '', 0, 'ddddd', 0, 1, 0, '2016-05-22 16:28:00', '2016-03-30 19:24:26'),
	(1980, NULL, '5tgb4rfv', NULL, NULL, 'xxx1', '', '', 'news', '20160820193424_334530.jpg', NULL, '', '2016-08-15 00:00:00', NULL, 0, 1, 1, 0, 500, '', 0, 'xxx1', 0, 1, 0, '2016-08-20 19:34:34', '2016-08-15 17:06:26'),
	(1979, NULL, '5tgb4rfv', NULL, NULL, '', '', '', 'landing', '20160809160300_623181.jpg', NULL, '', '2016-08-09 16:03:00', NULL, 0, 0, 1, 0, 1, '', 0, '', 0, 1, 0, '2016-08-09 16:03:00', '2016-08-04 10:20:38'),
	(1867, NULL, '5tgb4rfv', NULL, NULL, '泳池暫停開放說明', '', '', 'bulletin', '20160501200719_481802.png', '', '', '2016-04-13 00:00:00', NULL, 0, 1, 1, 1, 500, '', 0, '<span style="font-size: 14pt;">1.因受杜鵑強烈颱風影響，承包<br /> &nbsp;&nbsp; 廠商亞力岡公司進行水質復原<br /> &nbsp;&nbsp; 檢測，目前仍無法開池。<br /> 2.10月5日副總幹事至泳池機房<br /> &nbsp;&nbsp; 巡查，查察泳池過濾馬達未開<br /> &nbsp;&nbsp; 啟，立即請機電組將過濾馬達<br /> &nbsp;&nbsp; 開啟運轉，後續查明情形公告<br /> &nbsp;&nbsp; 周知。</span>', 1, 1, 0, '2016-07-14 10:45:43', '2016-04-13 15:30:36'),
	(1868, NULL, '5tgb4rfv', NULL, NULL, '程又青', 'ooxx', '', 'daily_good', '20160501214410_463647.jpg', '', '', '2016-04-13 00:00:00', NULL, 0, 1, 1, 0, 500, '', 0, '做公車幫老人家提東西', 0, 1, 0, '2016-05-01 21:44:11', '2016-04-13 20:08:00'),
	(1869, NULL, '5tgb4rfv', NULL, NULL, '蔣小花', 'xxx', '', 'daily_good', '', '', '', '2016-04-13 00:00:00', NULL, 0, 1, 1, 0, 500, '', 0, '坐車讓位子給老人家坐', 0, 1, 0, '2016-04-23 11:02:50', '2016-04-13 20:08:41'),
	(1870, NULL, '5tgb4rfv', NULL, NULL, '程又青', 'xxx', '', 'daily_good', '', '', '', '2016-04-13 00:00:00', NULL, 0, 1, 1, 0, 500, '', 0, '幫比我小的小朋友撿掉在水溝的玩具', 0, 1, 0, '2016-04-23 11:02:48', '2016-04-13 20:08:57'),
	(1871, NULL, '5tgb4rfv', NULL, NULL, '李小花', 'UDN', '', 'daily_good', '', '', '', '2016-04-13 00:00:00', NULL, 0, 1, 1, 0, 500, '', 0, '省府昨天表揚苗栗縣14名默默做公益的地方基層芳草人物，省主席林政則轉達總統馬英九肯定與讚許，十步之內，必有芳草，獲獎人「不是大人物，但做大事情」，義舉讓社會更美好。\r\n<p>獲獎芳草人物名單：林祖川、徐淑嬌、陳松天、杜福元、黃宏志、黃正男、邱桂圓、謝俊慧、劉盈科、吳漢忠、高景鳴、余增國、曾永富、泰安鄉劉仁祥。</p>\r\n<p>林政則、縣長徐耀昌昨天在縣府國際會議廳頒發匾額、獎狀，表揚14名芳草人物，林政則表示，行善可以不高調，但是揚善不能低調，芳草人物是台灣軟實力最佳代表，期盼芳草人物善行廣為流傳，潛移默化為社會注入暖流。</p>\r\n<p>其 中，高景鳴投入志願服務近25年，與太太曾淑敏帶領公益社團創新服務，成立全國第一支風鈴草外籍配偶志工隊，兒子高興及高嘉耳濡目染投入志工，高興創設三 義溫馨廚房，去年獲得保德信青少年志工菁英獎的親善大使獎，高景鳴分享人生格言「將愛的圈圈越畫越大，成為這個社會的祝福」。</p>', 0, 1, 0, '2016-04-23 11:02:47', '2016-04-13 20:10:36'),
	(1872, NULL, '5tgb4rfv', NULL, NULL, '秦子奇', 'UDN', NULL, 'daily_good', '', '', '', '2016-04-13 00:00:00', NULL, 0, 1, 1, 0, 500, NULL, 0, '省府昨天表揚苗栗縣14名默默做公益的地方基層芳草人物，省主席林政則轉達總統馬英九肯定與讚許，十步之內，必有芳草，獲獎人「不是大人物，但做大事情」，義舉讓社會更美好。\r\n<p>獲獎芳草人物名單：林祖川、徐淑嬌、陳松天、杜福元、黃宏志、黃正男、邱桂圓、謝俊慧、劉盈科、吳漢忠、高景鳴、余增國、曾永富、泰安鄉劉仁祥。</p>\r\n<p>林政則、縣長徐耀昌昨天在縣府國際會議廳頒發匾額、獎狀，表揚14名芳草人物，林政則表示，行善可以不高調，但是揚善不能低調，芳草人物是台灣軟實力最佳代表，期盼芳草人物善行廣為流傳，潛移默化為社會注入暖流。</p>\r\n<p>其 中，高景鳴投入志願服務近25年，與太太曾淑敏帶領公益社團創新服務，成立全國第一支風鈴草外籍配偶志工隊，兒子高興及高嘉耳濡目染投入志工，高興創設三 義溫馨廚房，去年獲得保德信青少年志工菁英獎的親善大使獎，高景鳴分享人生格言「將愛的圈圈越畫越大，成為這個社會的祝福」。</p>', 0, 1, 0, '2016-04-23 11:02:47', '2016-04-13 20:10:36'),
	(1873, NULL, '5tgb4rfv', NULL, NULL, '秦子奇', 'UDN', NULL, 'daily_good', '', '', '', '2016-04-13 00:00:00', NULL, 0, 1, 1, 0, 500, NULL, 0, '省府昨天表揚苗栗縣14名默默做公益的地方基層芳草人物，省主席林政則轉達總統馬英九肯定與讚許，十步之內，必有芳草，獲獎人「不是大人物，但做大事情」，義舉讓社會更美好。\r\n<p>獲獎芳草人物名單：林祖川、徐淑嬌、陳松天、杜福元、黃宏志、黃正男、邱桂圓、謝俊慧、劉盈科、吳漢忠、高景鳴、余增國、曾永富、泰安鄉劉仁祥。</p>\r\n<p>林政則、縣長徐耀昌昨天在縣府國際會議廳頒發匾額、獎狀，表揚14名芳草人物，林政則表示，行善可以不高調，但是揚善不能低調，芳草人物是台灣軟實力最佳代表，期盼芳草人物善行廣為流傳，潛移默化為社會注入暖流。</p>\r\n<p>其 中，高景鳴投入志願服務近25年，與太太曾淑敏帶領公益社團創新服務，成立全國第一支風鈴草外籍配偶志工隊，兒子高興及高嘉耳濡目染投入志工，高興創設三 義溫馨廚房，去年獲得保德信青少年志工菁英獎的親善大使獎，高景鳴分享人生格言「將愛的圈圈越畫越大，成為這個社會的祝福」。</p>', 0, 1, 0, '2016-04-23 11:02:46', '2016-04-13 20:10:36'),
	(1874, NULL, '5tgb4rfv', NULL, NULL, '沈杏仁', 'UDN', NULL, 'daily_good', '', '', '', '2016-04-13 00:00:00', NULL, 0, 1, 1, 0, 500, NULL, 0, '省府昨天表揚苗栗縣14名默默做公益的地方基層芳草人物，省主席林政則轉達總統馬英九肯定與讚許，十步之內，必有芳草，獲獎人「不是大人物，但做大事情」，義舉讓社會更美好。\r\n<p>獲獎芳草人物名單：林祖川、徐淑嬌、陳松天、杜福元、黃宏志、黃正男、邱桂圓、謝俊慧、劉盈科、吳漢忠、高景鳴、余增國、曾永富、泰安鄉劉仁祥。</p>\r\n<p>林政則、縣長徐耀昌昨天在縣府國際會議廳頒發匾額、獎狀，表揚14名芳草人物，林政則表示，行善可以不高調，但是揚善不能低調，芳草人物是台灣軟實力最佳代表，期盼芳草人物善行廣為流傳，潛移默化為社會注入暖流。</p>\r\n<p>其 中，高景鳴投入志願服務近25年，與太太曾淑敏帶領公益社團創新服務，成立全國第一支風鈴草外籍配偶志工隊，兒子高興及高嘉耳濡目染投入志工，高興創設三 義溫馨廚房，去年獲得保德信青少年志工菁英獎的親善大使獎，高景鳴分享人生格言「將愛的圈圈越畫越大，成為這個社會的祝福」。</p>', 0, 1, 0, '2016-04-23 11:02:46', '2016-04-13 20:10:36'),
	(1875, NULL, '5tgb4rfv', NULL, NULL, '李小樹', 'UDN', NULL, 'daily_good', '', '', '', '2016-04-13 00:00:00', NULL, 0, 1, 1, 0, 500, NULL, 0, '省府昨天表揚苗栗縣14名默默做公益的地方基層芳草人物，省主席林政則轉達總統馬英九肯定與讚許，十步之內，必有芳草，獲獎人「不是大人物，但做大事情」，義舉讓社會更美好。\r\n<p>獲獎芳草人物名單：林祖川、徐淑嬌、陳松天、杜福元、黃宏志、黃正男、邱桂圓、謝俊慧、劉盈科、吳漢忠、高景鳴、余增國、曾永富、泰安鄉劉仁祥。</p>\r\n<p>林政則、縣長徐耀昌昨天在縣府國際會議廳頒發匾額、獎狀，表揚14名芳草人物，林政則表示，行善可以不高調，但是揚善不能低調，芳草人物是台灣軟實力最佳代表，期盼芳草人物善行廣為流傳，潛移默化為社會注入暖流。</p>\r\n<p>其 中，高景鳴投入志願服務近25年，與太太曾淑敏帶領公益社團創新服務，成立全國第一支風鈴草外籍配偶志工隊，兒子高興及高嘉耳濡目染投入志工，高興創設三 義溫馨廚房，去年獲得保德信青少年志工菁英獎的親善大使獎，高景鳴分享人生格言「將愛的圈圈越畫越大，成為這個社會的祝福」。</p>', 0, 1, 0, '2016-04-23 11:02:45', '2016-04-13 20:10:36'),
	(1876, NULL, '5tgb4rfv', NULL, NULL, '李小花', 'UDN', '', 'daily_good', '20160505203256_791177.jpg', '', '', '2016-04-13 00:00:00', NULL, 0, 1, 1, 0, 500, '', 0, '省府昨天表揚苗栗縣14名默默做公益的地方基層芳草人物，省主席林政則轉達總統馬英九肯定與讚許，十步之內，必有芳草，獲獎人「不是大人物，但做大事情」，義舉讓社會更美好。\r\n<p>獲獎芳草人物名單：林祖川、徐淑嬌、陳松天、杜福元、黃宏志、黃正男、邱桂圓、謝俊慧、劉盈科、吳漢忠、高景鳴、余增國、曾永富、泰安鄉劉仁祥。</p>\r\n<p>林政則、縣長徐耀昌昨天在縣府國際會議廳頒發匾額、獎狀，表揚14名芳草人物，林政則表示，行善可以不高調，但是揚善不能低調，芳草人物是台灣軟實力最佳代表，期盼芳草人物善行廣為流傳，潛移默化為社會注入暖流。</p>\r\n<p>其 中，高景鳴投入志願服務近25年，與太太曾淑敏帶領公益社團創新服務，成立全國第一支風鈴草外籍配偶志工隊，兒子高興及高嘉耳濡目染投入志工，高興創設三 義溫馨廚房，去年獲得保德信青少年志工菁英獎的親善大使獎，高景鳴分享人生格言「將愛的圈圈越畫越大，成為這個社會的祝福」。</p>', 0, 1, 0, '2016-05-07 14:52:49', '2016-04-13 20:10:36'),
	(1877, NULL, '5tgb4rfv', NULL, NULL, '蔣小花', 'xxx', '', 'daily_good', '20160529152316_918206.jpg', '', '', '2016-04-13 00:00:00', NULL, 0, 1, 1, 0, 500, '', 0, '幫比我小的小朋友撿掉在水溝的玩具', 0, 1, 0, '2016-05-29 15:23:17', '2016-04-13 20:08:57'),
	(1878, NULL, '5tgb4rfv', NULL, NULL, '瑜珈教室招生', '1', '', 'course', '20160501200904_179925.jpg', '', '', '2016-04-14 00:00:00', NULL, 0, 1, 1, 0, 500, '', 0, '瑜珈教室招生', 0, 1, 0, '2016-05-01 20:09:05', '2016-04-14 20:56:12'),
	(1879, NULL, '5tgb4rfv', NULL, NULL, '通識專題講座；美學與文化識讀', '', '', 'course', '20160501205002_321704.png', '', '', '2016-04-16 00:00:00', NULL, 0, 1, 1, 0, 500, '', 0, '通識專題<span style="color: #ff6600;">講座</span>；美<span style="background-color: #ff6600;">學與文化</span>識讀2', 0, 1, 0, '2016-05-06 19:03:56', '2016-04-16 10:00:59'),
	(1882, NULL, '5tgb4rfv', NULL, NULL, '台灣挺熊本日官民都感激11', '', '', 'news', '20160707103932_157980.jpg', '', '', '2016-04-17 00:00:00', NULL, 0, 1, 1, 1, 500, '', 0, '<span style="color: #424242; font-family: 微軟正黑體, Arial, Helvetica, sans-serif; font-size: 18px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 30px; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px; display: inline !important; float: none; background-color: #ffffff;">熊本14日晚間、16日凌晨觀測到強震，台灣的官民都以行動表達支援熊本的決心，包括捐款、想派遣救援隊。日本政府發言人、內閣官房長官菅義偉今天表達感謝之意。</span><br style="color: #424242; font-family: 微軟正黑體, Arial, Helvetica, sans-serif; font-size: 18px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 30px; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #ffffff;" /><br style="color: #424242; font-family: 微軟正黑體, Arial, Helvetica, sans-serif; font-size: 18px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 30px; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #ffffff;" /><span style="color: #424242; font-family: 微軟正黑體, Arial, Helvetica, sans-serif; font-size: 18px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 30px; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px; display: inline !important; float: none; background-color: #ffffff;">日本「產經新聞」報導，內閣官房長官菅義偉今晚在臨時記者會上，就台灣對熊本地震的捐款行動表示，「從外交政府等，獲得許多慰問，政府想表達由衷感謝。」</span><br style="color: #424242; font-family: 微軟正黑體, Arial, Helvetica, sans-serif; font-size: 18px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 30px; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #ffffff;" /><br style="color: #424242; font-family: 微軟正黑體, Arial, Helvetica, sans-serif; font-size: 18px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 30px; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #ffffff;" /><span style="color: #424242; font-family: 微軟正黑體, Arial, Helvetica, sans-serif; font-size: 18px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 30px; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px; display: inline !important; float: none; background-color: #ffffff;">菅義偉表示，接獲來自美國以外的其他國家也想提供支援的洽詢。他說：「對於接受外國政府的支援是否接受，要視現場的需求做個別的判斷。」</span>', 0, 1, 0, '2016-07-14 10:41:32', '2016-04-17 22:08:23'),
	(1887, NULL, '5tgb4rfv', NULL, NULL, '鄭捷判死 最高法院：非判死刑不足以彰顯正義', '', '', 'news', '20160706102306_569003.jpg', '', '', '2016-04-22 00:00:00', NULL, 0, 1, 1, 1, 500, '', 0, '犯下台北捷運隨機殺人案的鄭捷今（22）日獲判死刑定讞，成為全國第43位死囚。\r\n駁回鄭捷上訴，維持二審死刑原判的最高法院認為，鄭捷手段兇殘、泯滅天 良、已無教化可能，\r\n最終仍判處鄭捷死刑。最高法院也提出五點維持原判的理由，特別強調，鄭捷犯案情節嚴重\r\n，非判死刑不足以彰顯正義。挖靠', 1, 1, 0, '2016-07-14 10:41:32', '2016-04-22 21:23:21'),
	(1888, NULL, '5tgb4rfv', NULL, NULL, '艾瑞阿塔無安打 破大聯盟百年紀錄', '', '', 'news', '20160501203916_961822.jpg', '', '', '2016-04-22 00:00:00', NULL, 0, 1, 1, 1, 500, '', 0, '<div id="yui_3_9_1_1_1461334885017_1444" class="K2FeedIntroText">\r\n<p id="yui_3_9_1_1_1461334885017_1443" class="first">上季國聯賽揚獎得主小熊隊艾瑞阿塔，本季表現持續火燙，今在客場面對紅人隊，他投出無安打比賽，飆出6K也送出4次保送，率小熊隊以16比0大勝對手，更改寫大聯盟無安打比賽勝分的百年紀錄，原紀錄是1905年白襪隊大勝15分。</p>\r\n</div>\r\n<p id="yui_3_9_1_1_1461334885017_1435"><span id="yui_3_9_1_1_1461334885017_1434">30歲的艾瑞阿塔上季表現大爆發，生涯首度主投超過200局，更一舉以22勝6敗、防禦率1.77的佳績，勇奪國聯賽揚獎，但他本季表現更猛，連同此役，他繳出4勝0敗、防禦率0.87的鬼神般成績，更率領小熊隊打出12勝4敗的最大聯盟最佳戰績。</span></p>', 1, 1, 0, '2016-06-06 09:20:39', '2016-04-22 22:21:42'),
	(1889, NULL, '5tgb4rfv', NULL, NULL, '轉定存與社區寬頻電費補貼', '', '', 'bulletin', '20160707105008_483065.jpg', '', '', '2016-04-23 00:00:00', NULL, 0, 1, 1, 1, 500, '', 0, '一、 本社區近敦聘 <strong>吳謹斌</strong> 大律師為法律顧問，往後凡社區住戶有任何法律問題，都可致電咨詢，增加法律常識，避免不必要的紛爭與麻煩。住戶提出的問題，吳律師都會詳細解答， 不收取任何費用。如有訴訟案件需委託具狀出庭，律師費將以八折優惠社區住戶(如有致電請告知係新莊城品社區住戶，主委陳一鋒的朋友)。 <br /> 二、 此次吳律師擔任本社區法律顧問，因係主委陳一鋒先生多年好友，所以義務襄助，不收取年費及任何費用，本管委會至表感謝之意。 <br /> 三、 請牢記服務電話及手機號碼，以備不時之需。', 0, 1, 0, '2016-07-14 10:45:43', '2016-04-23 10:19:02'),
	(1890, NULL, '5tgb4rfv', NULL, NULL, '停水停電一天', '', '', 'bulletin', '20160529144729_679171.jpg', '', '', '2016-04-23 00:00:00', NULL, 0, 1, 1, 1, 500, '', 0, '2016/5/1<br />停水停電...', 1, 1, 0, '2016-07-14 10:45:43', '2016-04-23 10:32:10'),
	(1891, NULL, '5tgb4rfv', NULL, NULL, 'aaa', 'ccc', 'ddd', 'gas_company', '20160824102111_651431.png', '', '', '2016-08-24 10:21:11', NULL, 0, 1, 1, 0, 500, 'eee', 0, 'bbb', 0, 1, 0, '2016-08-24 10:21:17', '2016-04-24 14:17:03'),
	(1977, NULL, '5tgb4rfv', NULL, NULL, '', '', '', 'landing', '20160802160933_748839.jpg', NULL, '', '2016-08-02 16:09:33', NULL, 0, 0, 1, 0, 1, '', 0, '', 0, 1, 0, '2016-08-04 10:20:45', '2016-07-18 11:19:07'),
	(1978, NULL, '5tgb4rfv', NULL, NULL, 'aaa', '', '', 'news', '20160801134815_527654.jpg', NULL, '', '2016-08-01 00:00:00', NULL, 0, 1, 1, 0, 500, '', 0, 'ddd', 0, 1, 0, '2017-01-04 17:22:33', '2016-08-01 13:47:47'),
	(1981, NULL, '5tgb4rfv', NULL, NULL, 'yyy', '', '', 'news', '20161107174244_317501.jpg', NULL, '', '2016-08-15 00:00:00', NULL, 0, 1, 1, 0, 500, '', 0, 'yy', 0, 1, 0, '2016-11-07 17:42:47', '2016-08-15 17:08:30'),
	(1894, NULL, '5tgb4rfv', NULL, NULL, '婚禮顧問師', '', '', 'course', '20160504155751_501989.jpg', '', '', '2016-04-25 00:00:00', NULL, 0, 1, 1, 0, 500, '', 0, '緣由：配合政府政策，因應職場變遷，面對社會經濟結構重大改變，培訓學員多重專業知能，增強就業職能、提升職場競爭力、增進企業進用失業人 員、充足個人生涯規劃發展。辦理『婚禮顧問人員培訓班』目的是協助失業者就業職業訓練，可在短期間內經由專業培訓，能迅速投入就業市場，協助降低失業率。<br />訓練目標：辦理『婚禮顧問人員培訓班』失業者職業訓練，協助失業者迅速投入就業市場，成為關鍵職務及主要技能需求 ： 1.成為全能的婚禮顧問企劃師、新娘秘書、婚紗、花藝、整體造型專業<span style="color: #ff6600;">人才。 2.協助學員</span>成功謀得就業機會，迅速投入就業市場。 3.增加收入、改善經濟環、境安定家庭、祥和社會。<br />就業展望：一.藉由實務經驗豐富講師群來培訓引導學員研習觀摩相關實務工作，為業界提供專業人才。學員結訓即可考取專業美容師及相關證照，增加就業、創業機會。 二.結合美容、婚紗、店家，積極開拓就業市場掌握需求。結訓學員即可投入就業市場擔任： (1)、化妝品公司美容師 (2)、各大婚紗連鎖公司造型師工作 (3)、行動新娘秘書工作 (4)、專業婚禮顧問企劃師 (5)、美容沙龍美容師 (6)、社區與學校專業技藝師資人才 (7)、專業造型師 三. 藉由課程設計，讓學員親自做業主訪談，了解業主之需求，並主動積極爭取就業機會。此外，讓學員親自至店家參訪，並觀摩商家之營運，培養經營管理及分析的能力，讓有志在婚禮顧問從事', 0, 1, 0, '2016-05-06 19:03:38', '2016-04-25 21:48:14'),
	(1897, NULL, '5tgb4rfv', NULL, NULL, '圖片測試', '', '', 'news', '20160529133720_529290.jpg', NULL, '', '2016-04-30 00:00:00', NULL, 0, 1, 1, 1, 500, '', 0, '圖片測試<br />圖片測試<br />圖片測試<br />圖片測試<br />圖片測試', 1, 1, 0, '2016-06-06 09:20:39', '2016-04-30 17:06:22'),
	(1898, NULL, '5tgb4rfv', NULL, NULL, '道路停車格重新劃設工程順延 ', '', '', 'bulletin', '20160606184817_663269.jpg', NULL, '', '2016-05-01 00:00:00', NULL, 0, 1, 1, 1, 500, '', 0, '道路停車格重新劃設工程順延 ', 0, 1, 0, '2016-07-14 10:45:42', '2016-05-01 20:49:08'),
	(1899, NULL, '5tgb4rfv', NULL, NULL, '', '', '', 'ad', '20160503213317_258038.jpg', NULL, '', '2016-05-03 00:00:00', NULL, 0, 1, 1, 1, 500, '', 0, '', 0, 1, 0, '2016-07-15 14:43:16', '2016-05-03 21:33:17'),
	(1900, NULL, '5tgb4rfv', NULL, NULL, '', '', '', 'ad', '20160503214100_735476.png', NULL, '', '2016-05-03 00:00:00', NULL, 0, 1, 1, 1, 500, '', 0, '', 0, 1, 0, '2016-07-15 14:43:16', '2016-05-03 21:40:59'),
	(1901, NULL, '5tgb4rfv', NULL, NULL, '', '', '', 'ad', '20160503220901_591143.jpg', NULL, '', '2016-05-03 00:00:00', NULL, 0, 1, 1, 1, 500, '', 0, '', 0, 1, 0, '2016-07-15 14:43:15', '2016-05-03 22:09:01'),
	(1902, NULL, '5tgb4rfv', NULL, NULL, '', '', '', 'ad', '20160622193058_371365.jpg', NULL, '', '2016-05-05 00:00:00', NULL, 0, 0, 1, 1, 1, '', 0, '', 0, 1, 0, '2016-07-15 14:43:15', '2016-05-05 19:54:10'),
	(1903, NULL, '5tgb4rfv', NULL, NULL, '', '', '', 'ad', '20160622192718_941707.jpg', NULL, '', '2016-05-05 00:00:00', NULL, 0, 0, 1, 1, 1, '', 0, '', 0, 1, 0, '2016-07-15 14:43:15', '2016-05-05 19:56:29'),
	(1964, NULL, '5tgb4rfv', NULL, NULL, '', '', '', 'cycle_img', '20160630084951_143474.jpg', NULL, '', '2016-06-30 00:00:00', NULL, 0, 1, 1, 0, 500, '', 0, '', 0, 1, 0, '2016-07-14 10:56:01', '2016-06-30 08:49:51'),
	(1906, NULL, '5tgb4rfv', NULL, NULL, '', '', '', 'about', '20160608102835_267601.jpg', NULL, '', '2016-07-18 00:23:59', NULL, 0, 1, 1, 0, 500, '', 0, '關於社區\r\n關於社區\r\n關於社區\r\n關於社區\r\n關於社區\r\n', 0, 1, 0, '2016-07-18 00:23:59', '2016-05-06 20:13:52'),
	(1907, NULL, '5tgb4rfv', NULL, NULL, '測試sync', '', NULL, 'news', '20160529160939_508197.jpg', NULL, '', '2016-04-30 00:00:00', NULL, 0, 1, 1, 1, 500, NULL, 0, '犯下台北捷運隨機殺人案的鄭捷今（22）日獲判死刑定讞，成為全國第43位死囚。駁回鄭捷上訴，維持二審死刑原判的最高法院認為，鄭捷手段兇殘、泯滅天 良、已無教化可能，最終仍判處鄭捷死刑。最高法院也提出五點維持原判的理由，特別強調，鄭捷犯案情節嚴重，非判死刑不足以彰顯正義。', 0, 1, 0, '2016-06-06 09:20:39', '2016-04-30 17:06:22'),
	(1940, 2034, '5tgb4rfv', NULL, NULL, '3333', '0', '', 'course', '20160521152635_204111.png', NULL, '', '2016-05-21 00:00:00', NULL, 0, 1, 1, 1, 500, '', 0, '3333', 0, 1, 1, '2016-09-07 12:31:09', '2016-05-21 15:26:38'),
	(1939, 2033, '5tgb4rfv', NULL, NULL, '2222222222', '0', '', 'course', '20160521152333_493803.png', NULL, '', '2016-05-21 00:00:00', NULL, 0, 1, 1, 1, 500, '', 0, '2222222222222', 0, 1, 1, '2016-09-07 12:31:07', '2016-05-21 15:23:35'),
	(1938, 2032, '5tgb4rfv', NULL, NULL, 'tset', '0', '', 'course', '20160521152259_989167.png', NULL, '', '2016-05-21 00:00:00', NULL, 0, 1, 1, 1, 500, '', 0, 'dddd', 0, 1, 1, '2016-09-07 12:31:03', '2016-05-21 15:21:28'),
	(1935, 2026, '5tgb4rfv', NULL, NULL, '課程主旨21', '1', '', 'course', '', NULL, '', '2016-05-21 00:00:00', NULL, 0, 1, 1, 1, 500, '', 0, 'ccccccccc', 0, 1, 1, '2016-05-21 14:29:02', '2016-05-21 14:24:10'),
	(1936, 2029, '5tgb4rfv', NULL, NULL, '', '', '', 'ad', '20160521144051_673399.jpg', NULL, '', '2016-05-21 00:00:00', NULL, 0, 1, 1, 1, 500, '', 0, '', 0, 1, 1, '2016-09-07 12:31:02', '2016-05-21 14:41:00'),
	(1937, 2031, '5tgb4rfv', NULL, NULL, '', '', '', 'ad', '20160521151950_844054.jpg', NULL, '', '2016-05-21 00:00:00', NULL, 0, 1, 1, 1, 500, '', 0, '', 0, 1, 1, '2016-09-07 12:31:05', '2016-05-21 15:19:56'),
	(1941, 2037, '5tgb4rfv', NULL, NULL, '444444', '1', '', 'course', '20160521175050_812499.png', NULL, '', '2016-05-21 00:00:00', NULL, 0, 1, 1, 1, 500, '', 0, '44444', 0, 1, 1, '2016-09-07 12:31:10', '2016-05-21 17:54:42'),
	(1942, 2039, '5tgb4rfv', NULL, NULL, '555', '1', '', 'course', '20160521180012_941514.jpg', NULL, '', '2016-05-21 00:00:00', NULL, 0, 1, 1, 1, 500, '', 0, '5555', 0, 1, 1, '2016-09-07 12:31:12', '2016-05-21 18:00:19'),
	(1943, 2040, '5tgb4rfv', NULL, NULL, '66666666', '0', '', 'course', '20160531100919_806063.jpg', NULL, '', '2016-05-21 00:00:00', NULL, 0, 1, 1, 1, 500, '', 0, '66666666666', 0, 1, 1, '2016-09-07 12:31:13', '2016-05-21 18:00:51'),
	(1944, NULL, '5tgb4rfv', NULL, NULL, '日文課程', '09185626', '02-6961696', 'course', '20161221092810_946524.jpg', '花蓮縣秀林鄉台9線', '巨匠', '2016-05-22 00:00:00', '2016-11-25 00:00:00', 0, 1, 1, 0, 500, '966', 0, '日文課程\r\n日文課程', 0, 1, 0, '2016-12-21 09:29:02', '2016-05-22 17:15:34'),
	(1945, 2044, '5tgb4rfv', NULL, NULL, '游泳課', '0', '', 'course', '20160531104934_653775.jpg', NULL, '', '2016-05-23 00:00:00', NULL, 0, 1, 1, 1, 500, '', 0, '游泳課', 0, 1, 1, '2016-09-07 12:31:16', '2016-05-31 11:36:41'),
	(1983, NULL, '5tgb4rfv', NULL, NULL, '廠商', '09265946', '03-64654894', 'ad', '20160909110340_124636.png', NULL, '', '2016-09-09 00:00:00', NULL, 0, 1, 1, 0, 500, '', 0, '', 0, 1, 0, '2016-11-08 17:07:31', '2016-09-09 11:03:40'),
	(1946, 2048, '5tgb4rfv', NULL, NULL, '', '', '', 'ad', '20160531103544_961756.jpg', NULL, '', '2016-05-31 00:00:00', NULL, 0, 1, 1, 1, 500, '', 0, '', 0, 1, 1, '2016-09-07 12:31:18', '2016-05-31 11:36:42'),
	(1963, NULL, '5tgb4rfv', NULL, NULL, '', '', '', 'cycle_img', '20160630084942_768519.jpg', NULL, '', '2016-06-30 00:00:00', NULL, 0, 1, 1, 0, 500, '', 0, '', 0, 1, 0, '2016-07-14 10:56:01', '2016-06-30 08:49:42'),
	(1949, NULL, '5tgb4rfv', NULL, NULL, '', '', '', 'marquee', NULL, NULL, '', '2016-06-03 00:00:00', NULL, 0, 1, 1, 1, 500, '', 0, '測試測試測試測試測試測試22\r\n1111', 0, 1, 0, '2016-07-13 19:24:21', '2016-06-03 17:42:33'),
	(1950, NULL, '5tgb4rfv', NULL, NULL, '', '', '', 'marquee', NULL, NULL, '', '2016-06-03 00:00:00', NULL, 0, 1, 1, 1, 500, '', 0, '公告公告公告公告公告公告公告公告\r\n公告公告公告公告公告公告公告', 0, 1, 0, '2016-07-13 19:24:21', '2016-06-03 17:49:28'),
	(1951, NULL, '5tgb4rfv', NULL, NULL, 'cccc單元名稱', '', '', 'news', NULL, NULL, '', '2016-06-03 00:00:00', NULL, 0, 1, 1, 1, 500, '', 0, 'ccccc單元名稱', 0, 1, 0, '2016-06-06 09:20:39', '2016-06-03 17:50:45'),
	(1965, NULL, '5tgb4rfv', NULL, NULL, '', '', '', 'cycle_img', '20160630084959_339922.jpg', NULL, '', '2016-06-30 00:00:00', NULL, 0, 1, 1, 0, 500, '', 0, '', 0, 1, 0, '2016-07-14 10:56:01', '2016-06-30 08:49:59'),
	(1968, NULL, '5tgb4rfv', NULL, NULL, '', '', '', 'marquee', NULL, NULL, '', '2016-07-13 00:00:00', NULL, 0, 1, 1, 0, 500, '', 0, '手機APP測試 ASDFGHJK', 0, 1, 0, '2016-07-13 19:25:28', '2016-07-13 19:25:19'),
	(1970, NULL, '5tgb4rfv', NULL, NULL, '', '', '', 'cycle_img', '20160714105015_473544.jpg', NULL, '', '2016-07-14 00:00:00', NULL, 0, 1, 1, 0, 500, '', 0, '', 0, 1, 0, '2016-07-14 10:56:01', '2016-07-14 10:50:15'),
	(1971, NULL, '5tgb4rfv', NULL, NULL, '', '', '', 'cycle_img', '20160714105025_134025.jpg', NULL, '', '2016-07-14 00:00:00', NULL, 0, 1, 1, 0, 500, '', 0, '', 1, 1, 0, '2016-07-14 10:56:01', '2016-07-14 10:50:25'),
	(1972, NULL, '5tgb4rfv', NULL, NULL, '', '', '', 'cycle_img', '20160714105034_332042.jpg', NULL, '', '2016-07-14 00:00:00', NULL, 0, 1, 1, 0, 500, '', 0, '', 0, 1, 0, '2016-07-14 10:56:01', '2016-07-14 10:50:34'),
	(1973, NULL, '5tgb4rfv', NULL, NULL, '', '', '', 'cycle_img', '20160714105041_236395.jpg', NULL, '', '2016-07-14 00:00:00', NULL, 0, 1, 1, 0, 500, '', 0, '', 0, 1, 0, '2016-07-14 10:56:01', '2016-07-14 10:50:41'),
	(1975, NULL, '5tgb4rfv', NULL, NULL, '', '', '', 'cycle_img', '20170104171301_809359.jpg', NULL, '', '2016-07-14 00:00:00', NULL, 0, 1, 1, 0, 500, '', 0, '', 0, 1, 0, '2017-01-04 17:22:23', '2016-07-14 10:51:16'),
	(1976, NULL, '5tgb4rfv', NULL, NULL, 'test', '', '', 'news', '20170104172302_694195.jpg', NULL, '', '2016-07-15 00:00:00', NULL, 0, 1, 1, 0, 500, '', 0, 'tset\r\nsteee', 1, 1, 0, '2017-01-04 17:23:19', '2016-07-15 09:49:33'),
	(1982, 2042, '5tgb4rfv', NULL, NULL, '', '', '', 'ad', '20160523210117_535502.png', NULL, '', '2016-05-23 00:00:00', NULL, 0, 1, 1, 1, 500, '', 0, '', 0, 1, 1, '2016-09-07 12:31:15', '2016-09-07 12:31:13'),
	(1984, NULL, '5tgb4rfv', NULL, NULL, 'a', '', '', 'bulletin', NULL, NULL, '', '2016-10-02 00:00:00', NULL, 0, 1, 1, 0, 500, '', 0, '', 0, 1, 0, '2016-10-02 15:46:11', '2016-10-02 15:46:10'),
	(1985, NULL, '5tgb4rfv', NULL, NULL, 'ad_591', '05-6456464', '02-65465464', 'ad', '20161108170825_885906.jpg', NULL, '', '2016-11-08 00:00:00', NULL, 0, 1, 1, 0, 500, '', 0, '七星峰建設', 0, 1, 0, '2016-11-23 15:12:20', '2016-11-08 17:08:25'),
	(1986, 2226, '5tgb4rfv', NULL, NULL, '主旨22', '121323', '324242', 'ad', '20161123160346_799477.jpg', NULL, '', '2016-11-23 00:00:00', NULL, 0, 1, 1, 0, 500, '500', 0, '廠商名稱', 0, 1, 1, '2016-11-23 16:04:58', '2016-11-23 14:25:01'),
	(1987, 2227, '5tgb4rfv', NULL, NULL, '產品介紹', '+886917357777', '+886917357777', 'ad', '20161221084201_988918.jpg', NULL, '', '2016-11-23 00:00:00', '2016-12-02 00:00:00', 0, 0, 1, 0, 500, '', 0, 'bbb', 0, 1, 1, '2016-12-21 09:21:34', '2016-11-23 16:04:58'),
	(1988, 2229, '5tgb4rfv', NULL, NULL, '課程主旨', '0928111111', '0928222222', 'course', '', NULL, '廠商名稱', '2016-10-18 00:00:00', '2016-11-26 00:00:00', 0, 0, 0, 0, 500, '5000', 0, '3333333333333333333333\n4444444444444444444444\n5555555555555555555555', 0, 1, 1, '2016-11-25 17:05:59', '2016-11-25 16:34:43'),
	(1993, NULL, '5tgb4rfv', NULL, NULL, '問題3', '', '', 'feedback', NULL, NULL, '', '2016-11-29 16:21:36', NULL, 0, 1, 0, 0, 500, '', 0, '問題3問題3問題3\r\n問題3問題3\r\n問題3', 0, 1, 0, '2016-11-29 16:21:36', '2016-11-29 16:21:36'),
	(1992, 2233, '5tgb4rfv', NULL, NULL, 'ccc', '', '富網通意見箱\n富網通意見箱\n富網通意見箱富網通意見箱\naaa', 'feedback', NULL, NULL, '', '2016-11-28 17:25:12', NULL, 0, 1, 0, 0, 500, '', 1, 'bbbb', 1, 1, 1, '2016-11-28 17:46:47', '2016-11-28 17:25:12'),
	(1991, 2232, '5tgb4rfv', NULL, NULL, '富網通意見箱主旨', '', 'OKOK\n沒問題\n555\n666', 'feedback', NULL, NULL, '', '2016-11-28 17:24:17', NULL, 0, 1, 0, 0, 500, '', 1, '問題問題問題問題問題問題\r\n問題問題\r\n問題問題問題', 1, 1, 1, '2016-11-28 17:45:57', '2016-11-28 17:24:17'),
	(1994, 2235, '5tgb4rfv', NULL, NULL, '問題3', '03-359-0188', '', 'course', '', NULL, '祐鼎建設股份有限公司', '2016-12-07 00:00:00', '2016-12-31 00:00:00', 0, 0, 1, 0, 500, '200', 0, '', 0, 1, 1, '2016-12-07 16:41:20', '2016-12-07 16:41:20'),
	(1995, 2236, '5tgb4rfv', NULL, NULL, 'ad_591', '02-59569652', '20161221083157_990785.png,20161221083205_368971.jpg,20161221094643_674163.jpg', 'course', '20161221094643_316941.jpg', NULL, '廠商名稱', '2016-12-07 00:00:00', NULL, 0, 1, 1, 0, 500, '362220', 0, '', 0, 1, 1, '2016-12-21 09:46:58', '2016-12-07 16:41:20'),
	(1996, 2238, '5tgb4rfv', NULL, NULL, 'aa', '0928111111', '0928222222', 'ad', '20161221100151_657490.png', NULL, '', '2016-12-21 00:00:00', NULL, 0, 1, 1, 0, 500, '200', 0, 'bb', 0, 1, 1, '2016-12-21 10:11:21', '2016-12-21 10:11:20'),
	(1997, NULL, '5tgb4rfv', NULL, NULL, 'ddds', 'bbb', 'df', 'course', '20161221101211_703561.jpg', NULL, 'aaaaaa', '2016-12-21 00:00:00', NULL, 0, 1, 1, 0, 500, '324324324', 0, 'sdfdsfsd', 0, 1, 0, '2016-12-21 10:12:15', '2016-12-21 10:11:51'),
	(1998, NULL, '5tgb4rfv', NULL, NULL, 'client_aaa', 'r', '33', 'ad', '20161221101738_333102.jpg', NULL, '', '2016-12-21 00:00:00', NULL, 0, 1, 1, 0, 500, '', 0, 'ee', 0, 1, 0, '2016-12-21 10:17:40', '2016-12-21 10:15:59'),
	(1999, 2241, '5tgb4rfv', NULL, NULL, 'test_rick', '03-359-0188', '02-6961696', 'ad', '20161221151650_409173.jpg', NULL, '', '2016-12-21 00:00:00', NULL, 0, 1, 1, 0, 500, '200', 0, '廠商名稱', 0, 1, 1, '2016-12-21 15:16:58', '2016-12-21 10:21:02'),
	(2000, 2242, '5tgb4rfv', NULL, NULL, '主旨1111', 'sdf', 'ds', 'course', '20161221151832_635511.jpg', NULL, 'ad_1111', '2016-12-21 00:00:00', NULL, 0, 1, 1, 0, 500, '', 0, 'dsf', 0, 1, 1, '2016-12-21 15:18:40', '2016-12-21 10:43:53'),
	(2001, 2243, '5tgb4rfv', NULL, NULL, '1', 'df', 'fdsfs', 'ad', '20161221151748_369991.jpg', NULL, '', '2016-12-21 00:00:00', NULL, 0, 1, 1, 1, 500, 'e', 0, 'sdf', 0, 1, 1, '2016-12-21 15:18:12', '2016-12-21 15:17:56');
/*!40000 ALTER TABLE `web_menu_content` ENABLE KEYS */;


-- 導出  表 sg.web_menu_photo 結構
CREATE TABLE IF NOT EXISTS `web_menu_photo` (
  `sn` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '序號',
  `content_sn` int(10) NOT NULL,
  `img_filename` varchar(60) NOT NULL COMMENT '檔名',
  `title` varchar(60) NOT NULL COMMENT '說明',
  `updated` datetime NOT NULL,
  `updated_by` varchar(50) NOT NULL,
  `created` datetime NOT NULL,
  PRIMARY KEY (`sn`)
) ENGINE=MyISAM AUTO_INCREMENT=84 DEFAULT CHARSET=utf8 COMMENT='照片';

-- 正在導出表  sg.web_menu_photo 的資料：29 rows
/*!40000 ALTER TABLE `web_menu_photo` DISABLE KEYS */;
REPLACE INTO `web_menu_photo` (`sn`, `content_sn`, `img_filename`, `title`, `updated`, `updated_by`, `created`) VALUES
	(19, 1877, 'c715ec871073e69713cc54f367b61e16.png', '', '2016-05-29 15:22:57', '曹小賢', '2016-05-29 15:22:57'),
	(10, 1907, 'kv1.jpg', '', '2016-05-29 11:24:33', '曹小賢', '2016-05-29 11:24:33'),
	(17, 1890, '611e0c604f24b76d0007ea258a9b6a68.png', '', '2016-05-29 14:46:42', '曹小賢', '2016-05-29 14:46:42'),
	(18, 1890, 'kv1.jpg', '', '2016-05-29 14:47:28', '曹小賢', '2016-05-29 14:47:28'),
	(16, 1907, 'd1cf62103f06fb979da9b910723ecbdd.png', '', '2016-05-29 13:47:55', '曹小賢', '2016-05-29 13:47:55'),
	(20, 1877, 'kv2.jpg', '', '2016-05-29 15:23:16', '曹小賢', '2016-05-29 15:23:16'),
	(22, 1907, '20160529160939_923095.png', '', '2016-05-29 16:09:39', '曹小賢', '2016-05-29 16:09:39'),
	(35, 1887, '20160705180511_420704.jpg', '', '2016-07-05 18:05:11', '曹小賢', '2016-07-05 18:05:11'),
	(36, 1887, '20160705180529_809571.jpg', '', '2016-07-05 18:05:29', '曹小賢', '2016-07-05 18:05:29'),
	(25, 1898, '20160606184800_369769.jpg', '', '2016-06-06 18:48:00', '曹小賢', '2016-06-06 18:48:00'),
	(26, 1898, '20160606184807_769644.jpg', '', '2016-06-06 18:48:07', '曹小賢', '2016-06-06 18:48:07'),
	(27, 1898, '20160606184816_640911.jpg', '', '2016-06-06 18:48:16', '曹小賢', '2016-06-06 18:48:16'),
	(34, 1887, '20160705180456_692423.jpg', '', '2016-07-05 18:04:56', '曹小賢', '2016-07-05 18:04:56'),
	(42, 1882, '20160707103932_561233.png', '', '2016-07-07 10:39:32', '曹小賢', '2016-07-07 10:39:32'),
	(38, 1887, '20160705180619_949211.jpg', '', '2016-07-05 18:06:19', '曹小賢', '2016-07-05 18:06:19'),
	(39, 1887, '20160705180730_341425.jpg', '', '2016-07-05 18:07:30', '曹小賢', '2016-07-05 18:07:30'),
	(40, 1887, '20160705180813_133373.png', '', '2016-07-05 18:08:13', '曹小賢', '2016-07-05 18:08:13'),
	(43, 1889, '20160707105007_764151.png', '', '2016-07-07 10:50:07', '曹小賢', '2016-07-07 10:50:07'),
	(83, 1976, '20170104172302_812902.jpg', '', '2017-01-04 17:23:02', '管理者', '2017-01-04 17:23:02'),
	(46, 1978, '20160801134814_116040.jpg', '', '2016-08-01 13:48:14', '管理者', '2016-08-01 13:48:14'),
	(49, 1980, '20160820193424_707022.png', '', '2016-08-20 19:34:24', '管理者', '2016-08-20 19:34:24'),
	(77, 1981, 'w_20161107174244_864895.jpg', '', '2016-11-07 17:42:44', '管理者', '2016-11-07 17:42:44'),
	(76, 1981, '20161107174229_965145.jpg', '', '2016-11-07 17:42:30', '管理者', '2016-11-07 17:42:30'),
	(75, 1981, 'w_20161107173045_734872.jpg', '', '2016-11-07 17:30:45', '管理者', '2016-11-07 17:30:45'),
	(78, 1944, '20161221092759_643493.png', '', '2016-12-21 09:27:59', '管理者', '2016-12-21 09:27:59'),
	(79, 1944, '20161221092810_886154.jpg', '', '2016-12-21 09:28:10', '管理者', '2016-12-21 09:28:10'),
	(80, 1997, '20161221101203_224804.jpg', '', '2016-12-21 10:12:03', '管理者', '2016-12-21 10:12:03'),
	(81, 1997, '20161221101211_996072.jpg', '', '2016-12-21 10:12:11', '管理者', '2016-12-21 10:12:11'),
	(82, 1976, '20170104172240_327581.jpg', '', '2017-01-04 17:22:40', '管理者', '2017-01-04 17:22:40');
/*!40000 ALTER TABLE `web_menu_photo` ENABLE KEYS */;


-- 導出  表 sg.web_setting 結構
CREATE TABLE IF NOT EXISTS `web_setting` (
  `sn` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `key` varchar(100) NOT NULL,
  `value` varchar(1000) NOT NULL,
  `memo` varchar(100) NOT NULL,
  `type` varchar(20) NOT NULL,
  `sort` smallint(3) NOT NULL DEFAULT '500',
  `launch` tinyint(1) NOT NULL DEFAULT '1',
  `update_date` datetime NOT NULL,
  PRIMARY KEY (`sn`)
) ENGINE=MyISAM AUTO_INCREMENT=24 DEFAULT CHARSET=utf8 COMMENT='前端單元';

-- 正在導出表  sg.web_setting 的資料：22 rows
/*!40000 ALTER TABLE `web_setting` DISABLE KEYS */;
REPLACE INTO `web_setting` (`sn`, `title`, `key`, `value`, `memo`, `type`, `sort`, `launch`, `update_date`) VALUES
	(1, '網站名稱', 'website_title', 'E-DOMA e化你家', '', 'text', 10, 1, '2016-08-01 17:15:27'),
	(19, '公告輪播停留秒數', 'bulletin_cycle_sec', '30', '', 'text', 39, 1, '2016-08-01 17:15:27'),
	(3, '社區名稱', 'comm_name', '金雅苑', '', 'text', 30, 1, '2016-08-01 17:15:27'),
	(12, '社區簡介', 'comm_desc', '信義特區佔地3000坪', '', 'textarea', 36, 1, '2016-08-01 17:15:27'),
	(6, '管委職稱', 'manager_title', '主委,財委,委員,財務委員,水電委員,監察委員', '請以逗點(,)隔開，例如：主委,財委,委員', 'text', 40, 1, '2016-08-01 17:15:27'),
	(7, '戶別識別1_名稱', 'building_part_01', '棟別', '請輸入『棟別』或『門牌號碼』，若戶別為英數字，可設定棟別可輸入英數字 ，門牌號可輸入數字', 'text', 53, 1, '2016-06-11 03:03:56'),
	(8, '戶別識別1_內容', 'building_part_01_value', 'A,B,C', '請以逗點(,)隔開，例如：A,B,C', 'text', 60, 1, '2016-06-11 03:03:56'),
	(9, '戶別識別2_名稱', 'building_part_02', '樓層', '', 'text', 70, 1, '2016-06-11 03:03:56'),
	(10, '戶別識別2_內容', 'building_part_02_value', '1,2,3,4,5,6,7,8,9,10,11,12', '請以逗點(,)隔開，例如：1,2,3', 'text', 80, 1, '2016-06-11 03:03:56'),
	(11, '戶別識別3_名稱', 'building_part_03', '住戶人數編號', '', 'text', 90, 1, '2016-06-11 03:03:56'),
	(4, 'Google Search ID', 'google_search_id', '017154571463157724076:p-zsbzzctk4', '', 'text', 9999, 0, '2014-10-30 14:25:38'),
	(5, 'Google analytics', 'google_analytics', '  (function(i,s,o,g,r,a,m){i[\'GoogleAnalyticsObject\']=r;i[r]=i[r]||function(){', '', 'text', 9999, 0, '2014-10-30 14:25:38'),
	(13, '車位識別1_名稱', 'parking_part_01', '停車位棟別', '', 'text', 100, 1, '2016-06-11 03:03:56'),
	(14, '車位識別1_內容', 'parking_part_01_value', 'A,B,C', '請以逗點(,)隔開，例如：A,B,C', 'text', 110, 1, '2016-06-11 03:03:56'),
	(15, '車位識別2_名稱', 'parking_part_02', '停車位樓層', '', 'text', 120, 1, '2016-06-11 03:03:56'),
	(16, '車位識別2_內容', 'parking_part_02_value', '1F,B1,B2,B3', '請以逗點(,)隔開，例如：B1,B2,B3', 'text', 130, 1, '2016-06-11 03:03:56'),
	(17, '車位識別3_名稱', 'parking_part_03', '車位編號', '', 'text', 140, 1, '2016-06-11 03:03:56'),
	(18, '郵件類型', 'mail_box_type', '掛號信,包裹,代收包裹,送洗衣物', '請以逗點(,)隔開，例如：掛號信,包裹,代收包裹 ，若欲增加新的類型，請勿更改原先順序', 'text', 38, 1, '2016-08-01 17:15:27'),
	(20, '社區電話', 'comm_tel', '02-88511988', '', 'text', 32, 1, '2016-08-01 17:15:27'),
	(21, '社區地址', 'comm_addr', '台北市信義區基隆路二段100號', '', 'text', 35, 1, '2016-08-01 17:15:27'),
	(22, '地址識別_門牌號碼', 'addr_part_01', '環中路100號,環中路102號,環中路104巷1號,環中路104巷2號,中武路1號,中武路3號11', '請以逗點(,)隔開', 'text', 50, 1, '2016-08-01 17:15:27'),
	(23, '地址識別_樓層', 'addr_part_02', '一,二,三,四,五,六,七,八,九,十,十一,十二', '請以逗點(,)隔開，例如：1,2,3', 'text', 52, 1, '2016-08-01 17:15:27');
/*!40000 ALTER TABLE `web_setting` ENABLE KEYS */;


-- 導出  表 sg.web_setting_photo 結構
CREATE TABLE IF NOT EXISTS `web_setting_photo` (
  `sn` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '序號',
  `img_filename` varchar(60) NOT NULL COMMENT '檔名',
  `title` varchar(60) NOT NULL COMMENT '說明',
  `updated` datetime NOT NULL,
  `updated_by` varchar(50) NOT NULL,
  `created` datetime NOT NULL,
  PRIMARY KEY (`sn`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COMMENT='照片';

-- 正在導出表  sg.web_setting_photo 的資料：1 rows
/*!40000 ALTER TABLE `web_setting_photo` DISABLE KEYS */;
REPLACE INTO `web_setting_photo` (`sn`, `img_filename`, `title`, `updated`, `updated_by`, `created`) VALUES
	(11, '20160824100325_699057.png', '', '2016-08-24 10:03:25', '曹小賢', '2016-08-24 10:03:25');
/*!40000 ALTER TABLE `web_setting_photo` ENABLE KEYS */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
