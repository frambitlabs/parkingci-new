-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 05, 2021 at 07:02 PM
-- Server version: 5.6.21
-- PHP Version: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `parkigniter`
--

-- --------------------------------------------------------

--
-- Table structure for table `company`
--

CREATE TABLE `company` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `currency` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `company`
--

INSERT INTO `company` (`id`, `name`, `address`, `message`, `currency`) VALUES
(1, 'Paved Parkade', '3165  Alexander Drive, Arlington TX', '<blockquote>Men are like parking spaces; all the good ones are taken, and the available ones are handicapped. - Clea DuVall</blockquote>', 'INR');

-- --------------------------------------------------------

--
-- Table structure for table `groups`
--

CREATE TABLE `groups` (
  `id` int(11) NOT NULL,
  `group_name` varchar(255) NOT NULL,
  `permission` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `groups`
--

INSERT INTO `groups` (`id`, `group_name`, `permission`) VALUES
(1, 'Super Administrator', 'a:28:{i:0;s:10:\"createUser\";i:1;s:10:\"updateUser\";i:2;s:8:\"viewUser\";i:3;s:10:\"deleteUser\";i:4;s:11:\"createGroup\";i:5;s:11:\"updateGroup\";i:6;s:9:\"viewGroup\";i:7;s:11:\"deleteGroup\";i:8;s:14:\"createCategory\";i:9;s:14:\"updateCategory\";i:10;s:12:\"viewCategory\";i:11;s:14:\"deleteCategory\";i:12;s:11:\"createRates\";i:13;s:11:\"updateRates\";i:14;s:9:\"viewRates\";i:15;s:11:\"deleteRates\";i:16;s:11:\"createSlots\";i:17;s:11:\"updateSlots\";i:18;s:9:\"viewSlots\";i:19;s:11:\"deleteSlots\";i:20;s:13:\"createParking\";i:21;s:13:\"updateParking\";i:22;s:11:\"viewParking\";i:23;s:13:\"deleteParking\";i:24;s:13:\"updateCompany\";i:25;s:13:\"updateSetting\";i:26;s:11:\"viewReports\";i:27;s:11:\"viewProfile\";}'),
(5, 'Officer', 'a:7:{i:0;s:11:\"createSlots\";i:1;s:11:\"updateSlots\";i:2;s:9:\"viewSlots\";i:3;s:13:\"createParking\";i:4;s:13:\"updateParking\";i:5;s:11:\"viewParking\";i:6;s:11:\"viewProfile\";}'),
(6, 'Security', 'a:3:{i:0;s:9:\"viewSlots\";i:1;s:11:\"viewParking\";i:2;s:11:\"viewProfile\";}'),
(7, 'Parking Lot Attendant', 'a:4:{i:0;s:11:\"updateSlots\";i:1;s:9:\"viewSlots\";i:2;s:11:\"viewParking\";i:3;s:11:\"viewProfile\";}');

-- --------------------------------------------------------

--
-- Table structure for table `parking`
--

CREATE TABLE `parking` (
  `id` int(11) NOT NULL,
  `parking_code` varchar(255) NOT NULL,
  `plate` varchar(255) NOT NULL,
  `vechile_cat_id` int(11) NOT NULL,
  `rate_id` int(11) NOT NULL,
  `slot_id` int(11) NOT NULL,
  `in_time` varchar(255) NOT NULL,
  `out_time` varchar(255) NOT NULL,
  `total_time` varchar(255) NOT NULL,
  `earned_amount` varchar(255) NOT NULL,
  `paid_status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `parking`
--

INSERT INTO `parking` (`id`, `parking_code`, `plate`, `vechile_cat_id`, `rate_id`, `slot_id`, `in_time`, `out_time`, `total_time`, `earned_amount`, `paid_status`) VALUES
(7, 'CA-D0EB97', 1234, 1, 2, 3, '1594221869', '1594221973', '6', '6', 1),
(17, 'CA-85D654', 1123, 2, 3, 9, '1625504451', '1625504521', '1', '2', 1);

-- --------------------------------------------------------

--
-- Table structure for table `rate`
--

CREATE TABLE `rate` (
  `id` int(11) NOT NULL,
  `rate_name` varchar(255) NOT NULL,
  `vechile_cat_id` int(11) NOT NULL,
  `type` int(11) NOT NULL,
  `rate` varchar(255) NOT NULL,
  `active` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `rate`
--

INSERT INTO `rate` (`id`, `rate_name`, `vechile_cat_id`, `type`, `rate`, `active`) VALUES
(2, '1 per Hour', 1, 2, '1', 1);

-- --------------------------------------------------------

--
-- Table structure for table `slots`
--

CREATE TABLE `slots` (
  `id` int(11) NOT NULL,
  `slot_name` varchar(255) NOT NULL,
  `active` int(11) NOT NULL,
  `availability_status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `slots`
--

INSERT INTO `slots` (`id`, `slot_name`, `active`, `availability_status`) VALUES
(1,'1',1,1),(2,'2',1,1),(3,'3',1,1),(4,'4',1,1),(5,'5',1,1),(6,'6',1,1),(7,'7',1,1),(8,'8',1,1),(9,'9',1,1),(10,'10',1,1),(11,'11',1,1),(12,'12',1,1),(13,'13',1,1),(14,'14',1,1),(15,'15',1,1),(16,'16',1,1),(17,'17',1,1),(18,'18',1,1),(19,'19',1,1),(20,'20',1,1),(21,'21',1,1),(22,'22',1,1),(23,'23',1,1),(24,'24',1,1),(25,'25',1,1),(26,'26',1,1),(27,'27',1,1),(28,'28',1,1),(29,'29',1,1),(30,'30',1,1),(31,'31',1,1),(32,'32',1,1),(33,'33',1,1),(34,'34',1,1),(35,'35',1,1),(36,'36',1,1),(37,'37',1,1),(38,'38',1,1),(39,'39',1,1),(40,'40',1,1),(41,'41',1,1),(42,'42',1,1),(43,'43',1,1),(44,'44',1,1),(45,'45',1,1),(46,'46',1,1),(47,'47',1,1),(48,'48',1,1),(49,'49',1,1),(50,'50',1,1),(51,'51',1,1),(52,'52',1,1),(53,'53',1,1),(54,'54',1,1),(55,'55',1,1),(56,'56',1,1),(57,'57',1,1),(58,'58',1,1),(59,'59',1,1),(60,'60',1,1),(61,'61',1,1),(62,'62',1,1),(63,'63',1,1),(64,'64',1,1),(65,'65',1,1),(66,'66',1,1),(67,'67',1,1),(68,'68',1,1),(69,'69',1,1),(70,'70',1,1),(71,'71',1,1),(72,'72',1,1),(73,'73',1,1),(74,'74',1,1),(75,'75',1,1),(76,'76',1,1),(77,'77',1,1),(78,'78',1,1),(79,'79',1,1),(80,'80',1,1),(81,'81',1,1),(82,'82',1,1),(83,'83',1,1),(84,'84',1,1),(85,'85',1,1),(86,'86',1,1),(87,'87',1,1),(88,'88',1,1),(89,'89',1,1),(90,'90',1,1),(91,'91',1,1),(92,'92',1,1),(93,'93',1,1),(94,'94',1,1),(95,'95',1,1),(96,'96',1,1),(97,'97',1,1),(98,'98',1,1),(99,'99',1,1),(100,'100',1,1),(101,'101',1,1),(102,'102',1,1),(103,'103',1,1),(104,'104',1,1),(105,'105',1,1),(106,'106',1,1),(107,'107',1,1),(108,'108',1,1),(109,'109',1,1),(110,'110',1,1),(111,'111',1,1),(112,'112',1,1),(113,'113',1,1),(114,'114',1,1),(115,'115',1,1),(116,'116',1,1),(117,'117',1,1),(118,'118',1,1),(119,'119',1,1),(120,'120',1,1),(121,'121',1,1),(122,'122',1,1),(123,'123',1,1),(124,'124',1,1),(125,'125',1,1),(126,'126',1,1),(127,'127',1,1),(128,'128',1,1),(129,'129',1,1),(130,'130',1,1),(131,'131',1,1),(132,'132',1,1),(133,'133',1,1),(134,'134',1,1),(135,'135',1,1),(136,'136',1,1),(137,'137',1,1),(138,'138',1,1),(139,'139',1,1),(140,'140',1,1),(141,'141',1,1),(142,'142',1,1),(143,'143',1,1),(144,'144',1,1),(145,'145',1,1),(146,'146',1,1),(147,'147',1,1),(148,'148',1,1),(149,'149',1,1),(150,'150',1,1),(151,'151',1,1),(152,'152',1,1),(153,'153',1,1),(154,'154',1,1),(155,'155',1,1),(156,'156',1,1),(157,'157',1,1),(158,'158',1,1),(159,'159',1,1),(160,'160',1,1),(161,'161',1,1),(162,'162',1,1),(163,'163',1,1),(164,'164',1,1),(165,'165',1,1),(166,'166',1,1),(167,'167',1,1),(168,'168',1,1),(169,'169',1,1),(170,'170',1,1),(171,'171',1,1),(172,'172',1,1),(173,'173',1,1),(174,'174',1,1),(175,'175',1,1),(176,'176',1,1),(177,'177',1,1),(178,'178',1,1),(179,'179',1,1),(180,'180',1,1),(181,'181',1,1),(182,'182',1,1),(183,'183',1,1),(184,'184',1,1),(185,'185',1,1),(186,'186',1,1),(187,'187',1,1),(188,'188',1,1),(189,'189',1,1),(190,'190',1,1),(191,'191',1,1),(192,'192',1,1),(193,'193',1,1),(194,'194',1,1),(195,'195',1,1),(196,'196',1,1),(197,'197',1,1),(198,'198',1,1),(199,'199',1,1),(200,'200',1,1),(201,'201',1,1),(202,'202',1,1),(203,'203',1,1),(204,'204',1,1),(205,'205',1,1),(206,'206',1,1),(207,'207',1,1),(208,'208',1,1),(209,'209',1,1),(210,'210',1,1),(211,'211',1,1),(212,'212',1,1),(213,'213',1,1),(214,'214',1,1),(215,'215',1,1),(216,'216',1,1),(217,'217',1,1),(218,'218',1,1),(219,'219',1,1),(220,'220',1,1),(221,'221',1,1),(222,'222',1,1),(223,'223',1,1),(224,'224',1,1),(225,'225',1,1),(226,'226',1,1),(227,'227',1,1),(228,'228',1,1),(229,'229',1,1),(230,'230',1,1),(231,'231',1,1),(232,'232',1,1),(233,'233',1,1),(234,'234',1,1),(235,'235',1,1),(236,'236',1,1),(237,'237',1,1),(238,'238',1,1),(239,'239',1,1),(240,'240',1,1),(241,'241',1,1),(242,'242',1,1),(243,'243',1,1),(244,'244',1,1),(245,'245',1,1),(246,'246',1,1),(247,'247',1,1),(248,'248',1,1),(249,'249',1,1),(250,'250',1,1),(251,'251',1,1),(252,'252',1,1),(253,'253',1,1),(254,'254',1,1),(255,'255',1,1),(256,'256',1,1),(257,'257',1,1),(258,'258',1,1),(259,'259',1,1),(260,'260',1,1),(261,'261',1,1),(262,'262',1,1),(263,'263',1,1),(264,'264',1,1),(265,'265',1,1),(266,'266',1,1),(267,'267',1,1),(268,'268',1,1),(269,'269',1,1),(270,'270',1,1),(271,'271',1,1),(272,'272',1,1),(273,'273',1,1),(274,'274',1,1),(275,'275',1,1),(276,'276',1,1),(277,'277',1,1),(278,'278',1,1),(279,'279',1,1),(280,'280',1,1),(281,'281',1,1),(282,'282',1,1),(283,'283',1,1),(284,'284',1,1),(285,'285',1,1),(286,'286',1,1),(287,'287',1,1),(288,'288',1,1),(289,'289',1,1),(290,'290',1,1),(291,'291',1,1),(292,'292',1,1),(293,'293',1,1),(294,'294',1,1),(295,'295',1,1),(296,'296',1,1),(297,'297',1,1),(298,'298',1,1),(299,'299',1,1),(300,'300',1,1),(301,'301',1,1),(302,'302',1,1),(303,'303',1,1),(304,'304',1,1),(305,'305',1,1),(306,'306',1,1),(307,'307',1,1),(308,'308',1,1),(309,'309',1,1),(310,'310',1,1),(311,'311',1,1),(312,'312',1,1),(313,'313',1,1),(314,'314',1,1),(315,'315',1,1),(316,'316',1,1),(317,'317',1,1),(318,'318',1,1),(319,'319',1,1),(320,'320',1,1),(321,'321',1,1),(322,'322',1,1),(323,'323',1,1),(324,'324',1,1),(325,'325',1,1),(326,'326',1,1),(327,'327',1,1),(328,'328',1,1),(329,'329',1,1),(330,'330',1,1),(331,'331',1,1),(332,'332',1,1),(333,'333',1,1),(334,'334',1,1),(335,'335',1,1),(336,'336',1,1),(337,'337',1,1),(338,'338',1,1),(339,'339',1,1),(340,'340',1,1),(341,'341',1,1),(342,'342',1,1),(343,'343',1,1),(344,'344',1,1),(345,'345',1,1),(346,'346',1,1),(347,'347',1,1),(348,'348',1,1),(349,'349',1,1),(350,'350',1,1),(351,'351',1,1),(352,'352',1,1),(353,'353',1,1),(354,'354',1,1),(355,'355',1,1),(356,'356',1,1),(357,'357',1,1),(358,'358',1,1),(359,'359',1,1),(360,'360',1,1),(361,'361',1,1),(362,'362',1,1),(363,'363',1,1),(364,'364',1,1),(365,'365',1,1),(366,'366',1,1),(367,'367',1,1),(368,'368',1,1),(369,'369',1,1),(370,'370',1,1),(371,'371',1,1),(372,'372',1,1),(373,'373',1,1),(374,'374',1,1),(375,'375',1,1),(376,'376',1,1),(377,'377',1,1),(378,'378',1,1),(379,'379',1,1),(380,'380',1,1),(381,'381',1,1),(382,'382',1,1),(383,'383',1,1),(384,'384',1,1),(385,'385',1,1),(386,'386',1,1),(387,'387',1,1),(388,'388',1,1),(389,'389',1,1),(390,'390',1,1),(391,'391',1,1),(392,'392',1,1),(393,'393',1,1),(394,'394',1,1),(395,'395',1,1),(396,'396',1,1),(397,'397',1,1),(398,'398',1,1),(399,'399',1,1),(400,'400',1,1),(401,'401',1,1),(402,'402',1,1),(403,'403',1,1),(404,'404',1,1),(405,'405',1,1),(406,'406',1,1),(407,'407',1,1),(408,'408',1,1),(409,'409',1,1),(410,'410',1,1),(411,'411',1,1),(412,'412',1,1),(413,'413',1,1),(414,'414',1,1),(415,'415',1,1),(416,'416',1,1),(417,'417',1,1),(418,'418',1,1),(419,'419',1,1),(420,'420',1,1),(421,'421',1,1),(422,'422',1,1),(423,'423',1,1),(424,'424',1,1),(425,'425',1,1),(426,'426',1,1),(427,'427',1,1),(428,'428',1,1),(429,'429',1,1),(430,'430',1,1),(431,'431',1,1),(432,'432',1,1),(433,'433',1,1),(434,'434',1,1),(435,'435',1,1),(436,'436',1,1),(437,'437',1,1),(438,'438',1,1),(439,'439',1,1),(440,'440',1,1),(441,'441',1,1),(442,'442',1,1),(443,'443',1,1),(444,'444',1,1),(445,'445',1,1),(446,'446',1,1),(447,'447',1,1),(448,'448',1,1),(449,'449',1,1),(450,'450',1,1),(451,'451',1,1),(452,'452',1,1),(453,'453',1,1),(454,'454',1,1),(455,'455',1,1),(456,'456',1,1),(457,'457',1,1),(458,'458',1,1),(459,'459',1,1),(460,'460',1,1),(461,'461',1,1),(462,'462',1,1),(463,'463',1,1),(464,'464',1,1),(465,'465',1,1),(466,'466',1,1),(467,'467',1,1),(468,'468',1,1),(469,'469',1,1),(470,'470',1,1),(471,'471',1,1),(472,'472',1,1),(473,'473',1,1),(474,'474',1,1),(475,'475',1,1),(476,'476',1,1),(477,'477',1,1),(478,'478',1,1),(479,'479',1,1),(480,'480',1,1),(481,'481',1,1),(482,'482',1,1),(483,'483',1,1),(484,'484',1,1),(485,'485',1,1),(486,'486',1,1),(487,'487',1,1),(488,'488',1,1),(489,'489',1,1),(490,'490',1,1),(491,'491',1,1),(492,'492',1,1),(493,'493',1,1),(494,'494',1,1),(495,'495',1,1),(496,'496',1,1),(497,'497',1,1),(498,'498',1,1),(499,'499',1,1),(500,'500',1,1),(501,'501',1,1),(502,'502',1,1),(503,'503',1,1),(504,'504',1,1),(505,'505',1,1),(506,'506',1,1),(507,'507',1,1),(508,'508',1,1),(509,'509',1,1),(510,'510',1,1),(511,'511',1,1),(512,'512',1,1),(513,'513',1,1),(514,'514',1,1),(515,'515',1,1),(516,'516',1,1),(517,'517',1,1),(518,'518',1,1),(519,'519',1,1),(520,'520',1,1),(521,'521',1,1),(522,'522',1,1),(523,'523',1,1),(524,'524',1,1),(525,'525',1,1),(526,'526',1,1),(527,'527',1,1),(528,'528',1,1),(529,'529',1,1),(530,'530',1,1),(531,'531',1,1),(532,'532',1,1),(533,'533',1,1),(534,'534',1,1),(535,'535',1,1),(536,'536',1,1),(537,'537',1,1),(538,'538',1,1),(539,'539',1,1),(540,'540',1,1),(541,'541',1,1),(542,'542',1,1),(543,'543',1,1),(544,'544',1,1),(545,'545',1,1),(546,'546',1,1),(547,'547',1,1),(548,'548',1,1),(549,'549',1,1),(550,'550',1,1),(551,'551',1,1),(552,'552',1,1),(553,'553',1,1),(554,'554',1,1),(555,'555',1,1),(556,'556',1,1),(557,'557',1,1),(558,'558',1,1),(559,'559',1,1),(560,'560',1,1),(561,'561',1,1),(562,'562',1,1),(563,'563',1,1),(564,'564',1,1),(565,'565',1,1),(566,'566',1,1),(567,'567',1,1),(568,'568',1,1),(569,'569',1,1),(570,'570',1,1),(571,'571',1,1),(572,'572',1,1),(573,'573',1,1),(574,'574',1,1),(575,'575',1,1),(576,'576',1,1),(577,'577',1,1),(578,'578',1,1),(579,'579',1,1),(580,'580',1,1),(581,'581',1,1),(582,'582',1,1),(583,'583',1,1),(584,'584',1,1),(585,'585',1,1),(586,'586',1,1),(587,'587',1,1),(588,'588',1,1),(589,'589',1,1),(590,'590',1,1),(591,'591',1,1),(592,'592',1,1),(593,'593',1,1),(594,'594',1,1),(595,'595',1,1),(596,'596',1,1),(597,'597',1,1),(598,'598',1,1),(599,'599',1,1),(600,'600',1,1),(601,'601',1,1),(602,'602',1,1),(603,'603',1,1),(604,'604',1,1),(605,'605',1,1),(606,'606',1,1),(607,'607',1,1),(608,'608',1,1),(609,'609',1,1),(610,'610',1,1),(611,'611',1,1),(612,'612',1,1),(613,'613',1,1),(614,'614',1,1),(615,'615',1,1),(616,'616',1,1),(617,'617',1,1),(618,'618',1,1),(619,'619',1,1),(620,'620',1,1),(621,'621',1,1),(622,'622',1,1),(623,'623',1,1),(624,'624',1,1),(625,'625',1,1),(626,'626',1,1),(627,'627',1,1),(628,'628',1,1),(629,'629',1,1),(630,'630',1,1),(631,'631',1,1),(632,'632',1,1),(633,'633',1,1),(634,'634',1,1),(635,'635',1,1),(636,'636',1,1),(637,'637',1,1),(638,'638',1,1),(639,'639',1,1),(640,'640',1,1),(641,'641',1,1),(642,'642',1,1),(643,'643',1,1),(644,'644',1,1),(645,'645',1,1),(646,'646',1,1),(647,'647',1,1),(648,'648',1,1),(649,'649',1,1),(650,'650',1,1),(651,'651',1,1),(652,'652',1,1),(653,'653',1,1),(654,'654',1,1),(655,'655',1,1),(656,'656',1,1),(657,'657',1,1),(658,'658',1,1),(659,'659',1,1),(660,'660',1,1),(661,'661',1,1),(662,'662',1,1),(663,'663',1,1),(664,'664',1,1),(665,'665',1,1),(666,'666',1,1),(667,'667',1,1),(668,'668',1,1),(669,'669',1,1),(670,'670',1,1),(671,'671',1,1),(672,'672',1,1),(673,'673',1,1),(674,'674',1,1),(675,'675',1,1),(676,'676',1,1),(677,'677',1,1),(678,'678',1,1),(679,'679',1,1),(680,'680',1,1),(681,'681',1,1),(682,'682',1,1),(683,'683',1,1),(684,'684',1,1),(685,'685',1,1),(686,'686',1,1),(687,'687',1,1),(688,'688',1,1),(689,'689',1,1),(690,'690',1,1),(691,'691',1,1),(692,'692',1,1),(693,'693',1,1),(694,'694',1,1),(695,'695',1,1),(696,'696',1,1),(697,'697',1,1),(698,'698',1,1),(699,'699',1,1),(700,'700',1,1),(701,'701',1,1),(702,'702',1,1),(703,'703',1,1),(704,'704',1,1),(705,'705',1,1),(706,'706',1,1),(707,'707',1,1),(708,'708',1,1),(709,'709',1,1),(710,'710',1,1),(711,'711',1,1),(712,'712',1,1),(713,'713',1,1),(714,'714',1,1),(715,'715',1,1),(716,'716',1,1),(717,'717',1,1),(718,'718',1,1),(719,'719',1,1),(720,'720',1,1),(721,'721',1,1),(722,'722',1,1),(723,'723',1,1),(724,'724',1,1),(725,'725',1,1),(726,'726',1,1),(727,'727',1,1),(728,'728',1,1),(729,'729',1,1),(730,'730',1,1),(731,'731',1,1),(732,'732',1,1),(733,'733',1,1),(734,'734',1,1),(735,'735',1,1),(736,'736',1,1),(737,'737',1,1),(738,'738',1,1),(739,'739',1,1),(740,'740',1,1),(741,'741',1,1),(742,'742',1,1),(743,'743',1,1),(744,'744',1,1),(745,'745',1,1),(746,'746',1,1),(747,'747',1,1),(748,'748',1,1),(749,'749',1,1),(750,'750',1,1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `gender` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `email`, `firstname`, `lastname`, `phone`, `gender`) VALUES
(1, 'admin', '$2y$10$7rLSvRVyTQORapkDOqmkhetjF6H9lJHngr4hJMSM2lHObJbW5EQh6', 'admin@gmail.com', 'PSCI', 'Administrator', '7854441014', 1);

-- --------------------------------------------------------

--
-- Table structure for table `user_group`
--

CREATE TABLE `user_group` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user_group`
--

INSERT INTO `user_group` (`id`, `user_id`, `group_id`) VALUES
(1, 1, 1),
(3, 2, 4),
(4, 3, 4),
(5, 4, 5),
(6, 5, 5),
(7, 6, 6),
(8, 7, 7);

-- --------------------------------------------------------

--
-- Table structure for table `vechile_category`
--

CREATE TABLE `vechile_category` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `active` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vechile_category`
--

INSERT INTO `vechile_category` (`id`, `name`, `active`) VALUES
(1, 'Two Wheeler', 1),
(2, 'Four Wheeler', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `company`
--
ALTER TABLE `company`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `groups`
--
ALTER TABLE `groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `parking`
--
ALTER TABLE `parking`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rate`
--
ALTER TABLE `rate`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `slots`
--
ALTER TABLE `slots`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_group`
--
ALTER TABLE `user_group`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vechile_category`
--
ALTER TABLE `vechile_category`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `company`
--
ALTER TABLE `company`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `groups`
--
ALTER TABLE `groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `parking`
--
ALTER TABLE `parking`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `rate`
--
ALTER TABLE `rate`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `slots`
--
ALTER TABLE `slots`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `user_group`
--
ALTER TABLE `user_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `vechile_category`
--
ALTER TABLE `vechile_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;