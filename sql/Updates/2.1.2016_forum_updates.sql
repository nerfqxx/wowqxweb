/*
SQLyog Ultimate v11.11 (64 bit)
MySQL - 5.5.5-10.1.9-MariaDB : Database - aquaflame
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`aquaflame` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `aquaflame`;

/*Table structure for table `comments` */

DROP TABLE IF EXISTS `comments`;

CREATE TABLE `comments` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `newsid` int(10) NOT NULL,
  `comment` text NOT NULL,
  `accountId` int(10) NOT NULL DEFAULT '1337',
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `reply` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=70 DEFAULT CHARSET=latin1;

/*Data for the table `comments` */

/*Table structure for table `contacts` */

DROP TABLE IF EXISTS `contacts`;

CREATE TABLE `contacts` (
  `id` int(11) unsigned DEFAULT NULL COMMENT 'Account ID',
  `country` varchar(50) DEFAULT NULL COMMENT 'The Country of Residence',
  `date` date DEFAULT NULL COMMENT 'Date of Birth',
  `year` year(4) DEFAULT NULL COMMENT 'Year of Birth',
  `security_question` char(4) DEFAULT NULL COMMENT 'Security Question from the Registration',
  `answer` varchar(50) DEFAULT NULL COMMENT 'Answer of the Security Question',
  `name` varchar(50) DEFAULT NULL COMMENT 'User''s Name',
  `lastname` varchar(50) DEFAULT NULL COMMENT 'User''s Last Name'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Data for the table `contacts` */

/*Table structure for table `country` */

DROP TABLE IF EXISTS `country`;

CREATE TABLE `country` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `iso` char(2) NOT NULL,
  `name` varchar(80) NOT NULL,
  `printable_name` varchar(80) NOT NULL,
  `iso3` char(3) DEFAULT NULL,
  `numcode` smallint(6) DEFAULT NULL,
  PRIMARY KEY (`iso`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=240 DEFAULT CHARSET=utf8;

/*Data for the table `country` */

insert  into `country`(`id`,`iso`,`name`,`printable_name`,`iso3`,`numcode`) values (1,'AD','ANDORRA','Andorra','AND',20),(2,'AE','UNITED ARAB EMIRATES','United Arab Emirates','ARE',784),(3,'AF','AFGHANISTAN','Afghanistan','AFG',4),(4,'AG','ANTIGUA AND BARBUDA','Antigua and Barbuda','ATG',28),(5,'AI','ANGUILLA','Anguilla','AIA',660),(6,'AL','ALBANIA','Albania','ALB',8),(7,'AM','ARMENIA','Armenia','ARM',51),(8,'AN','NETHERLANDS ANTILLES','Netherlands Antilles','ANT',530),(9,'AO','ANGOLA','Angola','AGO',24),(10,'AQ','ANTARCTICA','Antarctica',NULL,NULL),(11,'AR','ARGENTINA','Argentina','ARG',32),(12,'AS','AMERICAN SAMOA','American Samoa','ASM',16),(13,'AT','AUSTRIA','Austria','AUT',40),(14,'AU','AUSTRALIA','Australia','AUS',36),(15,'AW','ARUBA','Aruba','ABW',533),(16,'AZ','AZERBAIJAN','Azerbaijan','AZE',31),(17,'BA','BOSNIA AND HERZEGOVINA','Bosnia and Herzegovina','BIH',70),(18,'BB','BARBADOS','Barbados','BRB',52),(19,'BD','BANGLADESH','Bangladesh','BGD',50),(20,'BE','BELGIUM','Belgium','BEL',56),(21,'BF','BURKINA FASO','Burkina Faso','BFA',854),(22,'BG','BULGARIA','Bulgaria','BGR',100),(23,'BH','BAHRAIN','Bahrain','BHR',48),(24,'BI','BURUNDI','Burundi','BDI',108),(25,'BJ','BENIN','Benin','BEN',204),(26,'BM','BERMUDA','Bermuda','BMU',60),(27,'BN','BRUNEI DARUSSALAM','Brunei Darussalam','BRN',96),(28,'BO','BOLIVIA','Bolivia','BOL',68),(29,'BR','BRAZIL','Brazil','BRA',76),(30,'BS','BAHAMAS','Bahamas','BHS',44),(31,'BT','BHUTAN','Bhutan','BTN',64),(32,'BV','BOUVET ISLAND','Bouvet Island',NULL,NULL),(33,'BW','BOTSWANA','Botswana','BWA',72),(34,'BY','BELARUS','Belarus','BLR',112),(35,'BZ','BELIZE','Belize','BLZ',84),(36,'CA','CANADA','Canada','CAN',124),(37,'CC','COCOS (KEELING) ISLANDS','Cocos (Keeling) Islands',NULL,NULL),(38,'CD','CONGO, THE DEMOCRATIC REPUBLIC OF THE','Congo, the Democratic Republic of the','COD',180),(39,'CF','CENTRAL AFRICAN REPUBLIC','Central African Republic','CAF',140),(40,'CG','CONGO','Congo','COG',178),(41,'CH','SWITZERLAND','Switzerland','CHE',756),(42,'CI','COTE D\'IVOIRE','Cote D\'Ivoire','CIV',384),(43,'CK','COOK ISLANDS','Cook Islands','COK',184),(44,'CL','CHILE','Chile','CHL',152),(45,'CM','CAMEROON','Cameroon','CMR',120),(46,'CN','CHINA','China','CHN',156),(47,'CO','COLOMBIA','Colombia','COL',170),(48,'CR','COSTA RICA','Costa Rica','CRI',188),(49,'CS','SERBIA AND MONTENEGRO','Serbia and Montenegro',NULL,NULL),(50,'CU','CUBA','Cuba','CUB',192),(51,'CV','CAPE VERDE','Cape Verde','CPV',132),(52,'CX','CHRISTMAS ISLAND','Christmas Island',NULL,NULL),(53,'CY','CYPRUS','Cyprus','CYP',196),(54,'CZ','CZECH REPUBLIC','Czech Republic','CZE',203),(55,'DE','GERMANY','Germany','DEU',276),(56,'DJ','DJIBOUTI','Djibouti','DJI',262),(57,'DK','DENMARK','Denmark','DNK',208),(58,'DM','DOMINICA','Dominica','DMA',212),(59,'DO','DOMINICAN REPUBLIC','Dominican Republic','DOM',214),(60,'DZ','ALGERIA','Algeria','DZA',12),(61,'EC','ECUADOR','Ecuador','ECU',218),(62,'EE','ESTONIA','Estonia','EST',233),(63,'EG','EGYPT','Egypt','EGY',818),(64,'EH','WESTERN SAHARA','Western Sahara','ESH',732),(65,'ER','ERITREA','Eritrea','ERI',232),(66,'ES','SPAIN','Spain','ESP',724),(67,'ET','ETHIOPIA','Ethiopia','ETH',231),(68,'FI','FINLAND','Finland','FIN',246),(69,'FJ','FIJI','Fiji','FJI',242),(70,'FK','FALKLAND ISLANDS (MALVINAS)','Falkland Islands (Malvinas)','FLK',238),(71,'FM','MICRONESIA, FEDERATED STATES OF','Micronesia, Federated States of','FSM',583),(72,'FO','FAROE ISLANDS','Faroe Islands','FRO',234),(73,'FR','FRANCE','France','FRA',250),(74,'GA','GABON','Gabon','GAB',266),(75,'GB','UNITED KINGDOM','United Kingdom','GBR',826),(76,'GD','GRENADA','Grenada','GRD',308),(77,'GE','GEORGIA','Georgia','GEO',268),(78,'GF','FRENCH GUIANA','French Guiana','GUF',254),(79,'GH','GHANA','Ghana','GHA',288),(80,'GI','GIBRALTAR','Gibraltar','GIB',292),(81,'GL','GREENLAND','Greenland','GRL',304),(82,'GM','GAMBIA','Gambia','GMB',270),(83,'GN','GUINEA','Guinea','GIN',324),(84,'GP','GUADELOUPE','Guadeloupe','GLP',312),(85,'GQ','EQUATORIAL GUINEA','Equatorial Guinea','GNQ',226),(86,'GR','GREECE','Greece','GRC',300),(87,'GS','SOUTH GEORGIA AND THE SOUTH SANDWICH ISLANDS','South Georgia and the South Sandwich Islands',NULL,NULL),(88,'GT','GUATEMALA','Guatemala','GTM',320),(89,'GU','GUAM','Guam','GUM',316),(90,'GW','GUINEA-BISSAU','Guinea-Bissau','GNB',624),(91,'GY','GUYANA','Guyana','GUY',328),(92,'HK','HONG KONG','Hong Kong','HKG',344),(93,'HM','HEARD ISLAND AND MCDONALD ISLANDS','Heard Island and Mcdonald Islands',NULL,NULL),(94,'HN','HONDURAS','Honduras','HND',340),(95,'HR','CROATIA','Croatia','HRV',191),(96,'HT','HAITI','Haiti','HTI',332),(97,'HU','HUNGARY','Hungary','HUN',348),(98,'ID','INDONESIA','Indonesia','IDN',360),(99,'IE','IRELAND','Ireland','IRL',372),(100,'IL','ISRAEL','Israel','ISR',376),(101,'IN','INDIA','India','IND',356),(102,'IO','BRITISH INDIAN OCEAN TERRITORY','British Indian Ocean Territory',NULL,NULL),(103,'IQ','IRAQ','Iraq','IRQ',368),(104,'IR','IRAN, ISLAMIC REPUBLIC OF','Iran, Islamic Republic of','IRN',364),(105,'IS','ICELAND','Iceland','ISL',352),(106,'IT','ITALY','Italy','ITA',380),(107,'JM','JAMAICA','Jamaica','JAM',388),(108,'JO','JORDAN','Jordan','JOR',400),(109,'JP','JAPAN','Japan','JPN',392),(110,'KE','KENYA','Kenya','KEN',404),(111,'KG','KYRGYZSTAN','Kyrgyzstan','KGZ',417),(112,'KH','CAMBODIA','Cambodia','KHM',116),(113,'KI','KIRIBATI','Kiribati','KIR',296),(114,'KM','COMOROS','Comoros','COM',174),(115,'KN','SAINT KITTS AND NEVIS','Saint Kitts and Nevis','KNA',659),(116,'KP','KOREA, DEMOCRATIC PEOPLE\'S REPUBLIC OF','Korea, Democratic People\'s Republic of','PRK',408),(117,'KR','KOREA, REPUBLIC OF','Korea, Republic of','KOR',410),(118,'KW','KUWAIT','Kuwait','KWT',414),(119,'KY','CAYMAN ISLANDS','Cayman Islands','CYM',136),(120,'KZ','KAZAKHSTAN','Kazakhstan','KAZ',398),(121,'LA','LAO PEOPLE\'S DEMOCRATIC REPUBLIC','Lao People\'s Democratic Republic','LAO',418),(122,'LB','LEBANON','Lebanon','LBN',422),(123,'LC','SAINT LUCIA','Saint Lucia','LCA',662),(124,'LI','LIECHTENSTEIN','Liechtenstein','LIE',438),(125,'LK','SRI LANKA','Sri Lanka','LKA',144),(126,'LR','LIBERIA','Liberia','LBR',430),(127,'LS','LESOTHO','Lesotho','LSO',426),(128,'LT','LITHUANIA','Lithuania','LTU',440),(129,'LU','LUXEMBOURG','Luxembourg','LUX',442),(130,'LV','LATVIA','Latvia','LVA',428),(131,'LY','LIBYAN ARAB JAMAHIRIYA','Libyan Arab Jamahiriya','LBY',434),(132,'MA','MOROCCO','Morocco','MAR',504),(133,'MC','MONACO','Monaco','MCO',492),(134,'MD','MOLDOVA, REPUBLIC OF','Moldova, Republic of','MDA',498),(135,'MG','MADAGASCAR','Madagascar','MDG',450),(136,'MH','MARSHALL ISLANDS','Marshall Islands','MHL',584),(137,'MK','MACEDONIA, THE FORMER YUGOSLAV REPUBLIC OF','Macedonia, the Former Yugoslav Republic of','MKD',807),(138,'ML','MALI','Mali','MLI',466),(139,'MM','MYANMAR','Myanmar','MMR',104),(140,'MN','MONGOLIA','Mongolia','MNG',496),(141,'MO','MACAO','Macao','MAC',446),(142,'MP','NORTHERN MARIANA ISLANDS','Northern Mariana Islands','MNP',580),(143,'MQ','MARTINIQUE','Martinique','MTQ',474),(144,'MR','MAURITANIA','Mauritania','MRT',478),(145,'MS','MONTSERRAT','Montserrat','MSR',500),(146,'MT','MALTA','Malta','MLT',470),(147,'MU','MAURITIUS','Mauritius','MUS',480),(148,'MV','MALDIVES','Maldives','MDV',462),(149,'MW','MALAWI','Malawi','MWI',454),(150,'MX','MEXICO','Mexico','MEX',484),(151,'MY','MALAYSIA','Malaysia','MYS',458),(152,'MZ','MOZAMBIQUE','Mozambique','MOZ',508),(153,'NA','NAMIBIA','Namibia','NAM',516),(154,'NC','NEW CALEDONIA','New Caledonia','NCL',540),(155,'NE','NIGER','Niger','NER',562),(156,'NF','NORFOLK ISLAND','Norfolk Island','NFK',574),(157,'NG','NIGERIA','Nigeria','NGA',566),(158,'NI','NICARAGUA','Nicaragua','NIC',558),(159,'NL','NETHERLANDS','Netherlands','NLD',528),(160,'NO','NORWAY','Norway','NOR',578),(161,'NP','NEPAL','Nepal','NPL',524),(162,'NR','NAURU','Nauru','NRU',520),(163,'NU','NIUE','Niue','NIU',570),(164,'NZ','NEW ZEALAND','New Zealand','NZL',554),(165,'OM','OMAN','Oman','OMN',512),(166,'PA','PANAMA','Panama','PAN',591),(167,'PE','PERU','Peru','PER',604),(168,'PF','FRENCH POLYNESIA','French Polynesia','PYF',258),(169,'PG','PAPUA NEW GUINEA','Papua New Guinea','PNG',598),(170,'PH','PHILIPPINES','Philippines','PHL',608),(171,'PK','PAKISTAN','Pakistan','PAK',586),(172,'PL','POLAND','Poland','POL',616),(173,'PM','SAINT PIERRE AND MIQUELON','Saint Pierre and Miquelon','SPM',666),(174,'PN','PITCAIRN','Pitcairn','PCN',612),(175,'PR','PUERTO RICO','Puerto Rico','PRI',630),(176,'PS','PALESTINIAN TERRITORY, OCCUPIED','Palestinian Territory, Occupied',NULL,NULL),(177,'PT','PORTUGAL','Portugal','PRT',620),(178,'PW','PALAU','Palau','PLW',585),(179,'PY','PARAGUAY','Paraguay','PRY',600),(180,'QA','QATAR','Qatar','QAT',634),(181,'RE','REUNION','Reunion','REU',638),(182,'RO','ROMANIA','Romania','ROM',642),(183,'RU','RUSSIAN FEDERATION','Russian Federation','RUS',643),(184,'RW','RWANDA','Rwanda','RWA',646),(185,'SA','SAUDI ARABIA','Saudi Arabia','SAU',682),(186,'SB','SOLOMON ISLANDS','Solomon Islands','SLB',90),(187,'SC','SEYCHELLES','Seychelles','SYC',690),(188,'SD','SUDAN','Sudan','SDN',736),(189,'SE','SWEDEN','Sweden','SWE',752),(190,'SG','SINGAPORE','Singapore','SGP',702),(191,'SH','SAINT HELENA','Saint Helena','SHN',654),(192,'SI','SLOVENIA','Slovenia','SVN',705),(193,'SJ','SVALBARD AND JAN MAYEN','Svalbard and Jan Mayen','SJM',744),(194,'SK','SLOVAKIA','Slovakia','SVK',703),(195,'SL','SIERRA LEONE','Sierra Leone','SLE',694),(196,'SM','SAN MARINO','San Marino','SMR',674),(197,'SN','SENEGAL','Senegal','SEN',686),(198,'SO','SOMALIA','Somalia','SOM',706),(199,'SR','SURINAME','Suriname','SUR',740),(200,'ST','SAO TOME AND PRINCIPE','Sao Tome and Principe','STP',678),(201,'SV','EL SALVADOR','El Salvador','SLV',222),(202,'SY','SYRIAN ARAB REPUBLIC','Syrian Arab Republic','SYR',760),(203,'SZ','SWAZILAND','Swaziland','SWZ',748),(204,'TC','TURKS AND CAICOS ISLANDS','Turks and Caicos Islands','TCA',796),(205,'TD','CHAD','Chad','TCD',148),(206,'TF','FRENCH SOUTHERN TERRITORIES','French Southern Territories',NULL,NULL),(207,'TG','TOGO','Togo','TGO',768),(208,'TH','THAILAND','Thailand','THA',764),(209,'TJ','TAJIKISTAN','Tajikistan','TJK',762),(210,'TK','TOKELAU','Tokelau','TKL',772),(211,'TL','TIMOR-LESTE','Timor-Leste',NULL,NULL),(212,'TM','TURKMENISTAN','Turkmenistan','TKM',795),(213,'TN','TUNISIA','Tunisia','TUN',788),(214,'TO','TONGA','Tonga','TON',776),(215,'TR','TURKEY','Turkey','TUR',792),(216,'TT','TRINIDAD AND TOBAGO','Trinidad and Tobago','TTO',780),(217,'TV','TUVALU','Tuvalu','TUV',798),(218,'TW','TAIWAN, PROVINCE OF CHINA','Taiwan, Province of China','TWN',158),(219,'TZ','TANZANIA, UNITED REPUBLIC OF','Tanzania, United Republic of','TZA',834),(220,'UA','UKRAINE','Ukraine','UKR',804),(221,'UG','UGANDA','Uganda','UGA',800),(222,'UM','UNITED STATES MINOR OUTLYING ISLANDS','United States Minor Outlying Islands',NULL,NULL),(223,'US','UNITED STATES','United States','USA',840),(224,'UY','URUGUAY','Uruguay','URY',858),(225,'UZ','UZBEKISTAN','Uzbekistan','UZB',860),(226,'VA','HOLY SEE (VATICAN CITY STATE)','Holy See (Vatican City State)','VAT',336),(227,'VC','SAINT VINCENT AND THE GRENADINES','Saint Vincent and the Grenadines','VCT',670),(228,'VE','VENEZUELA','Venezuela','VEN',862),(229,'VG','VIRGIN ISLANDS, BRITISH','Virgin Islands, British','VGB',92),(230,'VI','VIRGIN ISLANDS, U.S.','Virgin Islands, U.s.','VIR',850),(231,'VN','VIET NAM','Viet Nam','VNM',704),(232,'VU','VANUATU','Vanuatu','VUT',548),(233,'WF','WALLIS AND FUTUNA','Wallis and Futuna','WLF',876),(234,'WS','SAMOA','Samoa','WSM',882),(235,'YE','YEMEN','Yemen','YEM',887),(236,'YT','MAYOTTE','Mayotte',NULL,NULL),(237,'ZA','SOUTH AFRICA','South Africa','ZAF',710),(238,'ZM','ZAMBIA','Zambia','ZMB',894),(239,'ZW','ZIMBABWE','Zimbabwe','ZWE',716);

/*Table structure for table `forum` */

DROP TABLE IF EXISTS `forum`;

CREATE TABLE `forum` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `num` int(10) NOT NULL,
  `categ` int(10) NOT NULL,
  `status` varchar(255) CHARACTER SET utf8 NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 NOT NULL,
  `image` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `description` text CHARACTER SET utf8 NOT NULL,
  `locked` smallint(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

/*Data for the table `forum` */

insert  into `forum`(`id`,`num`,`categ`,`status`,`name`,`image`,`description`,`locked`) values (1,1,1,'[Limited]','Announcement','blizzard','Important messages, announcements, informations regarding our server will be posted here.',1),(2,2,1,'[Read-Only]','General Talk','general','You can talk for anything that you want. Similar to Free Chat but cooler.',0),(3,3,1,'[Limited]','Bugs','bugs','Here you can post for world problems that you encounter, except Quests.',0),(4,4,1,'[Read-Only]','Suggestions','suggestions','Post here your ideas regarding WoWFailureCMS.',0),(5,5,2,'','Free Topic','support','Here you can post for any problems that you encounter in our server. We would be much obliged to know our errors.',0),(6,6,2,'','Quest Related','cs','Here you can post for problems that you encounter with our Quests or any other problem related to them.',0),(7,7,3,'','Free Chat','blood','Post whatever you like. Forum is open free to even offtopic.',0),(8,8,4,'','French','france','This part of the forum is for French only.',0),(9,9,4,'','German','germany','This part of the forum is for German only.',0);

/*Table structure for table `forum_blizzposts` */

DROP TABLE IF EXISTS `forum_blizzposts`;

CREATE TABLE `forum_blizzposts` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `type` varchar(255) DEFAULT NULL,
  `author` varchar(255) DEFAULT NULL,
  `postid` int(10) DEFAULT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;

/*Data for the table `forum_blizzposts` */

insert  into `forum_blizzposts`(`id`,`type`,`author`,`postid`,`date`) values (1,'thread','1',7,'2013-08-11 17:53:36'),(2,'thread','1',8,'2013-08-11 17:55:24'),(3,'thread','1',9,'2013-08-12 00:21:42'),(4,'thread','1',10,'2013-08-12 00:22:10'),(5,'reply','1',34,'2013-08-12 00:22:38'),(6,'thread','1',11,'2013-08-12 00:36:22'),(7,'thread','1',12,'2013-08-12 00:36:56'),(8,'thread','1',13,'2013-08-12 00:37:15'),(9,'thread','2',30,'2016-01-31 18:33:09'),(10,'thread','2',31,'2016-01-31 18:33:45'),(11,'reply','2',45,'2016-01-31 18:34:23'),(12,'thread','2',32,'2016-01-31 18:41:18'),(13,'thread','2',33,'2016-01-31 18:58:41'),(14,'thread','2',34,'2016-01-31 19:21:05'),(15,'thread','2',35,'2016-01-31 19:35:07'),(16,'thread','2',36,'2016-01-31 19:40:27'),(17,'thread','2',37,'2016-01-31 20:02:37'),(18,'reply','2',46,'2016-01-31 20:04:46');

/*Table structure for table `forum_categ` */

DROP TABLE IF EXISTS `forum_categ`;

CREATE TABLE `forum_categ` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `num` int(10) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

/*Data for the table `forum_categ` */

insert  into `forum_categ`(`id`,`num`,`name`) values (4,4,'Seccion de Donaciones'),(3,3,'Seccion de Denuncias'),(2,2,'Asistencia y Soporte'),(1,1,'Comunidad de WoW Qx'),(5,5,'Equipo de Eventos'),(6,6,'Seccion de Migraciones'),(7,7,'Problemas con la Web y el Juego'),(8,8,'Entretenimiento y Marketing'),(9,9,'Guias'),(10,10,'Clases');

/*Table structure for table `forum_forums` */

DROP TABLE IF EXISTS `forum_forums`;

CREATE TABLE `forum_forums` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `num` int(10) NOT NULL,
  `categ` int(10) NOT NULL,
  `status` varchar(255) CHARACTER SET utf8 NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 NOT NULL,
  `image` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `description` text CHARACTER SET utf8 NOT NULL,
  `locked` smallint(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=34 DEFAULT CHARSET=latin1;

/*Data for the table `forum_forums` */

insert  into `forum_forums`(`id`,`num`,`categ`,`status`,`name`,`image`,`description`,`locked`) values (1,1,1,'[Solo Lectura]','Informacion del servidor','blizzard','Informacion de las ultimas novedades del servidor.',0),(2,2,1,'[Importante Leer]','Normativa y Condiciones de Uso','cs','Aqui todas las normas del servidor Qx. El desconocimiento de estas normas no exime de su cumplimiento.',0),(3,3,1,'','General','beer','Foro para que hables y consultes todas las dudas que tengas relacionadas con WoW Qx.',0),(4,4,1,'','Sugerencias','newcomers','Si se te ocurre algo para mejorar el servidor este es tu sitio',0),(5,5,2,'','Soporte tecnico','uicustomizations','Foro para soporte tecnico del juego, errores con el cliente, fallos de conexion, etc...',0),(6,6,3,'','Denuncias','cs','Apartado para denunciar a los tramposos.',0),(7,7,3,'','Reclamaciones','blood','Apartado en el cual podras crear una reclamacion en caso que hayas sido sancionado.',0),(8,8,4,'','Soporte de donaciones','present','Espacio dedicado a Soporte de Donaciones',0),(9,9,4,'','Noticias','question','Espacio dedicado a las Noticias sobre Donaciones.',0),(10,10,4,'','Guias','guides','Espacio dedicado a guias sobre Donaciones',0),(11,11,5,'','Eventos y Concursos','realm-rppvp','Espacio para informarse, debatir, participar e inscribirse en los distintos eventos que realizamos tanto en el juego como en el foro.',0),(12,12,5,'','Eventos del Mundo','realm-rp','Espacio para guias, informacion y soporte sobre todo lo relacionado con los Eventos del Mundo.',0),(13,13,6,'','Traspasos entre Servidores','guildrelations','Foro dedicado a informacion y soporte en los traspasos de pjs de otros servidores a WoW Qx.',0),(14,14,6,'','Sanciones por migracion','roar','Seccion dedicada a las reclamaciones de los sancionados por migraciones falsas o corruptas.',0),(15,15,6,'','Traspaso de Pjs entre Reinos','mists','Espacio dedicado a recuperar los pjs bloqueados entre Reinos de WoW Qx',0),(16,16,7,'','Soporte de la Web','ventrilo','Tienes problemas con los servicios de la Web de WoW Qx? Publica aqui lo que te ocurra.',0),(17,17,8,'','Presentacion','newplayers','Eres nuevo en WoW Qx? Buscas hermandad? O tal vez... La ofreces? Este es tu foro!',0),(18,18,8,'','OffTopic','wwi','Apartado para que hables de todo aquello que no tenga relacion con World of Warcraft',0),(19,19,8,'','WowArt','heal','Seccion dedicada a todo tipo de Fan Art relacionado con WoW Qx: Videos, dibujos, relatos, etc. Muestranos lo que sabes hacer!',0),(20,20,8,'','Comercio','professions','Foro para la comercializacion de objetos, componentes, recetas varias, etc...',0),(21,21,8,'','Hermandades Horda','realms','Buscas hermandad en la Horda? O tal vez... La ofreces? Este es tu foro!',0),(22,22,8,'','Hermandades Alianza','general','Buscas hermandad en la Alianza? O tal vez... La ofreces? Este es tu foro!',0),(23,23,9,'','Interfaz, macros y guias variadas','bullet','Espacio para compartir guias y consejos sobre esta categoria.',0),(24,24,9,'','Leveo, profesiones y reputaciones','quests','Espacio para compartir guias sobre como hacerte experto artesano, conseguir Reputaciones y ayudarte a subir de nivel.',0),(25,25,9,'','Bandas y mazmorras','battlegroup','Espacio para compartir Guias e informacion util para disfrutar del PvE en WoW Qx.',0),(26,26,9,'','Clases','wow','Espacio dedicado a las guias sobre clases.',0),(27,27,10,'','Brujo','warlock','Espacio para compartir trucos, macros, guias y demas informacion de esta clase.',0),(28,28,10,'','Caballero de la Muerte','dk','Espacio para compartir trucos, macros, guias y demas informacion de esta clase.',0),(29,29,10,'','Cazador','hunter','Espacio para compartir trucos, macros, guias y demas informacion de esta clase.',0),(30,30,10,'','Chaman','shaman','Espacio para compartir trucos, macros, guias y demas informacion de esta clase.',0),(31,31,10,'','Druida','druid','Espacio para compartir trucos, macros, guias y demas informacion de esta clase.',0),(32,32,10,'','Guerrero','warrior','Espacio para compartir trucos, macros, guias y demas informacion de esta clase.',0),(33,4,1,'','Convocatorias','blizzcon','&iquest;Quieres formar parte del Staff de WoW Qx? - Entra aqu&iacute;-',0);

/*Table structure for table `forum_posts` */

DROP TABLE IF EXISTS `forum_posts`;

CREATE TABLE `forum_posts` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `type` int(2) NOT NULL DEFAULT '0',
  `postid` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=70 DEFAULT CHARSET=latin1;

/*Data for the table `forum_posts` */

insert  into `forum_posts`(`id`,`type`,`postid`) values (1,1,7),(2,1,8),(3,1,9),(4,1,10),(59,1,30),(60,1,31),(61,2,45),(62,1,32),(63,1,33),(64,1,34),(65,1,35),(66,1,36),(67,1,37),(68,2,46);

/*Table structure for table `forum_replies` */

DROP TABLE IF EXISTS `forum_replies`;

CREATE TABLE `forum_replies` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `threadid` int(10) NOT NULL,
  `content` text NOT NULL,
  `author` int(10) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `forumid` int(10) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `edited` int(1) NOT NULL DEFAULT '0',
  `editedby` int(10) NOT NULL DEFAULT '0',
  `last_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=47 DEFAULT CHARSET=latin1;

/*Data for the table `forum_replies` */

insert  into `forum_replies`(`id`,`threadid`,`content`,`author`,`date`,`forumid`,`name`,`edited`,`editedby`,`last_date`) values (34,10,'I was the 1.000.000th visitor on a site, but no prize yet?',1,'2013-08-11 23:22:38',2,'Do we even care? Just Lift!',0,0,'2013-08-11 23:22:38'),(45,30,'Convocatoria Abierta<br />\r\n<br />\r\nLos interesados en formar parte del Equipo deberÃ¡n enviar la plantilla correspondiente al correo indicado. Cuando tengamos a las personas necesarias volveremos a avisar en este post.<br />\r\nPara evitar perder tiempo todos los que os presentÃ©is que no sea para dejarlo a los 2 dÃ­as ya que requiere un tiempo explicaros el trabajo de Denuncias y el tiempo de todos es valioso.',2,'2016-01-31 19:34:23',33,'EQUIPO DE DENUNCIAS',0,0,'2016-01-31 19:34:23'),(46,37,'La convocatoria de Mjs de eventos estÃ¡ abierta.<br />\r\n<br />\r\n<br />\r\nExplicaros lo mejor posible en cada una de las preguntas, de esta manera os conoceremos mejor.<br />\r\nBuscamos gente constante, comprometida y compatible con nuestra manera de trabajar. Necesitamos cubrir todos los horarios.<br />\r\n<br />\r\n<br />\r\nâ†’ Requiero alguien con suficientes conocimientos en ediciÃ³n de vÃ­deo e imagen.',2,'2016-01-31 21:04:46',33,'EQUIPO DE EVENTOS',0,0,'2016-01-31 21:04:46');

/*Table structure for table `forum_threads` */

DROP TABLE IF EXISTS `forum_threads`;

CREATE TABLE `forum_threads` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `forumid` int(10) NOT NULL,
  `name` varchar(255) NOT NULL,
  `author` int(10) NOT NULL,
  `replies` int(10) NOT NULL DEFAULT '0',
  `views` int(10) NOT NULL DEFAULT '0',
  `date` timestamp NULL DEFAULT NULL,
  `content` text NOT NULL,
  `locked` tinyint(1) DEFAULT '0',
  `has_blizz` tinyint(1) DEFAULT '0',
  `prefix` varchar(255) NOT NULL DEFAULT 'none',
  `last_date` datetime NOT NULL,
  `edited` int(1) NOT NULL DEFAULT '0',
  `editedby` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=39 DEFAULT CHARSET=latin1;

/*Data for the table `forum_threads` */

insert  into `forum_threads`(`id`,`forumid`,`name`,`author`,`replies`,`views`,`date`,`content`,`locked`,`has_blizz`,`prefix`,`last_date`,`edited`,`editedby`) values (31,33,'EQUIPO DE DESARROLLO - NUEVO PROYECTO',2,0,6,'2016-01-31 19:33:45','WoW Qx ofrece otra oportunidad de entrar a formar parte de su equipo de desarrolladores. Como miembro de este nuevo equipo de desarrollo formarÃ¡s parte de los nuevos proyectos dentro del gran equipo que ya forma nuestra comunidad, colaborando con los demÃ¡s equipos para ofrecer la mejor calidad, a la que ya tenemos acostumbrados a nuestros jugadores, ahora en nuevas expansiones.<br />\r\n<br />\r\nÂ¡Revisa los requisitos y el mÃ©todo de participaciÃ³n en la convocatoria para unirte a nosotros!<br />\r\n<br />\r\nRequisitos:<br />\r\n<br />\r\n- Conocimientos bÃ¡sicos de c++/sql.<br />\r\n<br />\r\n- Experiencia en otros emuladores de World of Warcraft como TrinityCore o Mangos.<br />\r\n<br />\r\n- Excelentes capacidades de comunicaciÃ³n y comprensiÃ³n.<br />\r\n<br />\r\n- Compromiso con el proyecto.<br />\r\n<br />\r\n- Ser mayor de 18 aÃ±os.<br />\r\n<br />\r\n<br />\r\nSe valorarÃ¡:<br />\r\n<br />\r\n- Experiencia en el desarrollo de otros proyectos sobre TrinityCore.<br />\r\n<br />\r\n- Conocimientos acerca del modding sobre World of Warcraft.<br />\r\n<br />\r\n- Conocimientos acerca del mundo y los sistemas de World of Warcraft hasta su ultima expansiÃ³n.<br />\r\n<br />\r\n<br />\r\nMaterial necesario para participar en la convocatoria:<br />\r\n<br />\r\n-Resumen rellenando totalmente la siguiente plantilla:<br />\r\n<br />\r\n1. Nombre Real:<br />\r\n2. Edad:<br />\r\n3. PaÃ­s:<br />\r\n4. Skype de contacto:<br />\r\n5. Nombre cuenta:<br />\r\n6. Personaje principal:<br />\r\n7. Â¿Has sido baneado alguna vez?<br />\r\n8. Â¿Has sido MJ alguna vez?<br />\r\n9. Â¿CuÃ¡nto tiempo llevas jugando?Â¿DÃ³nde jugabas antes?<br />\r\n10. Conocimientos: (SQL) (c++) (otros y cuÃ¡les)<br />\r\n11. Â¿Tienes alguna preferencia sobre quÃ© fixear? (Logros, Instances, Spells, Pvp, etc):<br />\r\n12. Â¿QuÃ© emuladores conoces?Â¿Has manejado alguno?(describe todo):<br />\r\n13. Â¿QuÃ© te ha motivado a presentar la solicitud?:<br />\r\n14. HÃ¡blanos sobre ti y comentarios adicionales:<br />\r\n<br />\r\n<br />\r\nEl material deberÃ¡ enviarse a la direcciÃ³n de correo nerfqx@gmail.com y sobre el se harÃ¡ la primera selecciÃ³n de candidatos.',1,1,'none','2016-01-31 19:33:45',0,0),(32,33,'EQUIPO DE ASISTENCIA',2,0,3,'2016-01-31 19:41:18','Buenas! Procedemos a abrir un proceso de selecciÃ³n para ser Mj de Asistencia cuyo trabajo consistirÃ¡ en atender a la comunidad en los tickets y en el foro en las secciones en que se les asigne.<br />\r\n<br />\r\nPara acceder al Staff deberÃ©is rellenar el formulario y enviarlo al correo electrÃ³nico nerfqx@gmail.com<br />\r\n<br />\r\nDicha convocatoria serÃ¡ cerrada y avisada en este post cuando creamos que las solicitudes recibidas son suficientes y el resultado de la selecciÃ³n se comunicarÃ¡ en vÃ­a privada a los interesados<br />\r\n<br />\r\n-------------------------------------------------------------------------------------------------------------------<br />\r\n APPLICACION PARA MJ/ATENCION AL PERSONAL<br />\r\n<br />\r\n<br />\r\nA) Datos personales:<br />\r\nNombre Real â†’<br />\r\n<br />\r\nNombre de tu pj Principal ( y personajes secundarios que utilizas) â†’<br />\r\n<br />\r\nHermandad a la que perteneces â†’<br />\r\n<br />\r\nEdad â†’<br />\r\n<br />\r\nPaÃ­s â†’<br />\r\n<br />\r\nDisponibilidad horaria (habla siempre en franja horaria del servidor) â†’<br />\r\n<br />\r\nE-mail de contacto y usuario de RaidCallâ†’<br />\r\n<br />\r\nÂ¿Estudias o trabajas? Â¿Y en quÃ©?<br />\r\n<br />\r\n<br />\r\nB) Conocimientos:<br />\r\nIndica el tiempo que llevas jugando a World of Warcraft â†’<br />\r\n<br />\r\nÂ¿CuÃ¡nto de ese tiempo llevas en WoW Qx?<br />\r\n<br />\r\nÂ¿CuÃ¡nto tiempo y en que servidores has estado jugando y si has tenido en algÃºn otro sitio un cargo de Mj? â†’<br />\r\n<br />\r\nÂ¿En quÃ© parte del juego tienes mÃ¡s conocimientos? (por ejemplo, PvE, PvP.. Misionesâ€¦ Profesionesâ€¦) y de que Expansiones (incluida Cataclysm, MoP y WoD)<br />\r\n<br />\r\n<br />\r\nC) Comportamiento personal:<br />\r\n<br />\r\nÂ¿Por quÃ© has decidido presentarte como MJ? â†’<br />\r\n<br />\r\nDescrÃ­benos con detalle como serÃ­a tu comportamiento como Mj al tratar con la comunidad de WoW Qx â†’<br />\r\n<br />\r\nÂ¿Has sido baneado en alguna ocasiÃ³n en nuestro servidor? Si la respuesta es SI, explica cuando, con quÃ© personaje y en que situaciÃ³n.<br />\r\n<br />\r\nÂ¿CuÃ¡les serÃ­an tus sugerencias para mejorar el servidor? Explica con detalle cada una de ellas.<br />\r\n<br />\r\n<br />\r\nD) Situaciones concretas â†’ (Explicaros claramente)<br />\r\n<br />\r\n1) EstÃ¡s atendiendo ingame y en una de las tabernas del juego se crea un revuelo produciÃ©ndose una discusiÃ³n entre varios jugadores. Â¿CÃºal serÃ­a tu reacciÃ³n como Maestro de Juego?<br />\r\n2) AtenciÃ³n en tickets:<br />\r\nUn pj te pide que le subas a nivel 80. Â¿CuÃ¡l serÃ­a tu respuesta?<br />\r\n<br />\r\nUn pj te pide oro o algÃºn objeto. Â¿CuÃ¡l serÃ­a tu respuesta?<br />\r\n<br />\r\n3) EstÃ¡s atendiendo a un jugador, y este, al no conseguir lo que quiere, te amenaza con colgar la conversaciÃ³n en el foro, Â¿cÃ³mo actuarÃ­as?<br />\r\n4) Ser Mj significa tener responsabilidades, si se precisase ayuda y estuvieses en raid, Â¿acudirÃ­as a prestar ayuda?<br />\r\n5) Un jugador estÃ¡ buscÃ¡ndote por taberna, Â¿quÃ© harÃ­as?<br />\r\n----------------------------------------------------------------------------------------------------------------------<br />\r\nPD: Adjunta una foto tuya, no es necesario que sea de cuerpo entero, no es una prueba estÃ©tica, sino el conocer la cara de con quien posiblemente trabaje, es importante saber con quien hablas y tratas.<br />\r\n<br />\r\n NOTA: Es fundamental que rellenÃ©is todos los campos de la solicitud de manera clara y con buena ortografÃ­a. El trabajo de Asistencia se mueve, mucho, en medio escrito (foro, tickets...) y una buena ortografÃ­a es fundamental.<br />\r\n<br />\r\nUn saludo <br />\r\nStaff WoW Qx',1,1,'none','2016-01-31 19:41:18',0,0),(30,33,'EQUIPO DE DENUNCIAS',2,1,6,'2016-01-31 19:33:09','Por este medio queremos hacer pÃºblico que el Equipo de Denuncias estarÃ¡ realizando una convocatoria para las personas que quieran formar parte de este Equipo.<br />\r\n<br />\r\nEl Equipo de Denuncias se encarga de revisar las denuncias realizadas por la comunidad y contestar las posibles reclamaciones que tengan los usuarios ante una sanciÃ³n recibida. TambiÃ©n se encarga de realizar investigaciones en los momentos y temas necesarios. El encargado del Equipo es Rou.<br />\r\n<br />\r\nEl proceso de selecciÃ³n no estarÃ¡ abierto durante un tiempo definido asÃ­ que en el momento en el que consideremos que tengamos una cantidad de solicitudes suficiente como para cubrir las vacantes del Equipo se avisarÃ¡ en este mismo post.<br />\r\n<br />\r\nLos requisitos para poder presentar tu solicitud son:<br />\r\n<br />\r\nSer responsable: Buscamos a gente que estÃ© consciente de que, pese a que es un juego, al entrar al Staff tendrÃ¡ ciertas responsabilidades y deberes dentro del mismo. Por lo tanto, habrÃ¡n acciones que tendrÃ¡s prohibidas como miembro del Staff.<br />\r\n<br />\r\nEstar comprometido con el grupo: DeberÃ¡s querer aprender y dejarte enseÃ±ar para mejorar dÃ­a a dÃ­a en tu cargo. AdemÃ¡s, deberÃ¡s ayudar a tus compaÃ±eros en las dudas que cualquiera pueda tener y a participar de manera correcta en los debates y conversaciones internas.<br />\r\n<br />\r\nOrganizaciÃ³n: Debes saber organizar tu tiempo ya que habrÃ¡n trabajos que dependerÃ¡n de ti y en caso de que no los cumplas se atrasarÃ¡ el trabajo en general. Por lo tanto, esperamos que puedas tener un mÃ­nimo de organizaciÃ³n.<br />\r\n<br />\r\nSer sociable: Tienes que entender que estarÃ¡s formando parte de un grupo de personas y que el trabajo en equipo es imprescindible. AdemÃ¡s, deberÃ¡s ser capaz de relacionarte con los miembros de los demÃ¡s grupos y evitar problemas por falta de comunicaciÃ³n.<br />\r\n<br />\r\nSe realizarÃ¡ la selecciÃ³n de los integrantes del mismo por medio de un formulario que deberÃ¡ ser enviado al correo nerfqx@gmail.com. Posteriormente se contactarÃ¡ a las personas que hayan sido seleccionadas para formar parte del Equipo por medio de RaidCall. (Las personas que no hayan sido aceptadas no se les contactarÃ¡ por ninguna vÃ­a, pero se tendrÃ¡n en cuenta para prÃ³ximas convocatorias).<br />\r\n<br />\r\nFormulario a rellenar<br />\r\n<br />\r\nâ—‹ A ser posible, adjunta una foto tuya, no es necesario que sea de cuerpo entero, no es una prueba estÃ©tica, sino el conocer la cara de con quiÃ©n posiblemente trabaje, ya que es importante saber con quiÃ©n hablas y tratas.<br />\r\n<br />\r\n1. Nombre real (basta con el nombre y un apellido):<br />\r\n<br />\r\n2. Edad:<br />\r\n<br />\r\n3. PaÃ­s:<br />\r\n<br />\r\n4. Disponibilidad horaria:<br />\r\n<br />\r\n5. E-mail y nombre de usuario de RaidCall:<br />\r\n<br />\r\n6. Â¿EstÃ¡s estudiando o trabajando en la actualidad? En caso de que la respuesta sea positiva, Â¿en quÃ©?:<br />\r\n<br />\r\n7. Reino en el cual eres mÃ¡s activo:<br />\r\n<br />\r\n8. Nombre del personaje con el que eres mÃ¡s activo (en caso de tener varios, indicalos):<br />\r\n<br />\r\n9. Hermandad/es a la/s que pertenecen tus personajes:<br />\r\n<br />\r\n10. Tiempo que llevas jugando en WoW Qx y al juego en general:<br />\r\n<br />\r\n11. Â¿Has estado en otros servidores anteriormente? Si la respuesta es afirmativa, Â¿durante cuÃ¡nto tiempo?:<br />\r\n<br />\r\n12. Explica de forma resumida el conocimiento tanto en PvP como en PvE e indica en cuÃ¡l de ellos eres mÃ¡s activo:<br />\r\n<br />\r\n13. Â¿Has tenido algÃºn cargo como miembro del Staff en alguna comunidad anterior?:<br />\r\n<br />\r\n14. Â¿Por quÃ© has decidido presentarte para el Equipo de Denuncias y Migraciones y no a cualquier otro equipo?<br />\r\n<br />\r\n15. Â¿Has tenido alguna sanciÃ³n anterior con alguno de tus personajes o cuentas? Si la respuesta es afirmativa, indica quÃ© personaje o cuenta fue sancionada:<br />\r\n<br />\r\n16. Â¿EstÃ¡s al tanto de la normativa del servidor?<br />\r\n<br />\r\n17. Â¿Conoces a algÃºn miembro del Staff?<br />\r\n<br />\r\n18. Â¿CuÃ¡les crees que podrÃ­an ser tus aportaciones al Equipo de Denuncias?<br />\r\n<br />\r\n19. Â¿QuÃ© esperas recibir a cambio por ser parte del Staff?<br />\r\n<br />\r\n<br />\r\n<br />\r\nComportamiento personal<br />\r\n<br />\r\n20. QuÃ© harÃ­as si un usuario reclama en Denuncias y...<br />\r\nPostea sin seguir la plantilla<br />\r\n<br />\r\nTe amenaza con denunciarte por no hacer caso a lo que Ã©l pide<br />\r\n<br />\r\nReclama una sanciÃ³n injusta.<br />\r\n<br />\r\ningame<br />\r\n<br />\r\nUn usuario te pide que banees a otro por taberna<br />\r\n<br />\r\nUn usuario te pide que le subas de nivel y que le des oro<br />\r\n<br />\r\nUn usuario intenta comentarte algo que no tiene nada que ver con el equipo al que perteneces<br />\r\n<br />\r\nUn usuario inicia una disputa en alguno de los canales globales',1,1,'none','2016-01-31 19:34:23',0,0),(33,33,'EQUIPO DE MARKETING Y PUBLICIDAD',2,0,5,'2016-01-31 19:58:41','El equipo de marketing y publicidad busca MJs para desempeÃ±ar labores de posicionamiento web, ediciÃ³n audiovisual, creaciÃ³n de contenido original, cÃ³digo HTML y relaciÃ³n directa con los jugadores. <br />\r\n<br />\r\nSi crees que encajas en este perfil, o que por otros motivos das la talla, envÃ­a tu solicitud a nerfqx@gmail.com bajo el tema que abre este hilo.<br />\r\n<br />\r\n<br />\r\nRequisitos:<br />\r\n<br />\r\nBuen trato con el pÃºblico: nuestra labor va mÃ¡s allÃ¡ de los menesteres seÃ±alados arriba. Estamos en constante contacto con la comunidad. Sus sugerencias, inquietudes y dudas nos conciernen.<br />\r\n<br />\r\n<br />\r\nSer responsable: hay que ser consecuente con lo que uno acepta al ser MJ. Es un pasatiempo, sÃ­, pero no es algo que deba dejarse de lado. Requiere dedicaciÃ³n y tiempo.<br />\r\n<br />\r\n<br />\r\nTener tiempo: si bien no se exige estar 24 horas al dÃ­a conectado, sÃ­ es necesario poder tener un mÃ­nimo de tiempo que dedicarle. No es lo mismo disponer sÃ³lo de 30 minutos al dÃ­a que tener una disponibilidad mayor.<br />\r\n<br />\r\n<br />\r\nBuen uso de la gramÃ¡tica y ortografÃ­a: la orcografÃ­a, pese a ser algo que se encuentre habitualmente en Azeroth, no es lo que nos representa. Hace falta expresarse con correcciÃ³n, y cohesiÃ³n.<br />\r\n<br />\r\n<br />\r\nTener conocimientos en lo seÃ±alado: posicionamiento web, ediciÃ³n audiovisual, motores de bÃºsqueda, no es necesario destacar en todos, pero sÃ­ tener algo que poder ofrecer, asÃ­ como tener unos conocimientos no sesgados del propio juego.<br />\r\n<br />\r\n<br />\r\nSaber trabajar: tanto en grupo como por separado, ser una persona con iniciativa y que sepa ser dirigida.<br />\r\n<br />\r\nSe realizarÃ¡ la selecciÃ³n de los integrantes del mismo por medio de un formulario que deberÃ¡ ser enviado al correo nerfqx@gmail.com. Posteriormente se contactarÃ¡ para indicar si el perfil cumple con lo solicitado por correo para pasar a ser agregadas a RaidCall.<br />\r\n<br />\r\n<br />\r\n<br />\r\nFORMULARIO EQUIPO MARKETING Y PUBLICIDAD<br />\r\n<br />\r\n<br />\r\nA) Datos personales:<br />\r\n<br />\r\nNombre Real â†’<br />\r\n<br />\r\nNombre de tu pj Principal ( y personajes secundarios que utilizas) â†’<br />\r\n<br />\r\nHermandad a la que perteneces â†’<br />\r\n<br />\r\nEdad â†’<br />\r\n<br />\r\nPaÃ­s â†’<br />\r\n<br />\r\nDisponibilidad horaria (habla siempre en franja horaria del servidor) ?<br />\r\n<br />\r\nE-mail de contacto y usuario de RaidCallâ†’<br />\r\n<br />\r\nÂ¿Estudias o trabajas? Â¿En quÃ©?<br />\r\n<br />\r\n<br />\r\nB) Conocimientos:<br />\r\n<br />\r\nIndica el tiempo que llevas jugando a World of Warcraft â†’<br />\r\n<br />\r\nÂ¿CuÃ¡nto de ese tiempo llevas en WoW Qx?<br />\r\n<br />\r\nÂ¿CuÃ¡nto tiempo y en que servidores has estado jugando?Â¿Has tenido en algÃºn otro sitio un cargo de Mj? â†’<br />\r\n<br />\r\nÂ¿QuÃ© experiencia tienes con las expansiones  de Lich King y Cataclysm?â†’<br />\r\n<br />\r\nÂ¿En quÃ© campo eres mÃ¡s diestro y/o te sientes mÃ¡s cÃ³modo? (por ejemplo, montaje y ediciÃ³n de video, control de posicionamiento web, revisiÃ³n de RRSS, etcÃ©tera)<br />\r\n<br />\r\nÂ¿Manejas algÃºn software de ediciÃ³n de imagen/video?Â¿CuÃ¡les?Â¿PodrÃ­as adjuntar algÃºn enlace a esas obras?<br />\r\n<br />\r\nÂ¿Tienes conocimiento de otros idiomas, ademÃ¡s del espaÃ±ol? Â¿CuÃ¡les y en quÃ© grado?<br />\r\n<br />\r\n<br />\r\nC) Comportamiento personal:<br />\r\n<br />\r\nÂ¿Por quÃ© has decidido presentarte como MJ a este equipo? â†’<br />\r\n<br />\r\nDescrÃ­benos con detalle como serÃ­a tu comportamiento como Mj al tratar con la comunidad de WoW Qx â†’<br />\r\n<br />\r\nÂ¿Has sido baneado en alguna ocasiÃ³n en nuestro servidor? Si la respuesta es sÃ­, explica cuÃ¡ndo, con quÃ© personaje y en que situaciÃ³n.<br />\r\n<br />\r\nÂ¿CuÃ¡les serÃ­an tus sugerencias para mejorar el servidor? Explica con detalle cada una de ellas<br />\r\n<br />\r\nÂ¿QuÃ© puedes aportar que no lo pueda hacer otro? â†’<br />\r\n<br />\r\n<br />\r\nD) Situaciones concretas â†’ (Explicar con detalle y con la extensiÃ³n adecuada)<br />\r\n<br />\r\n1) EstÃ¡s revisando una de las secciones de WoW Qx asignadas al Equipo y te encuentras un mensaje que, pese a tratar un tema que pueda ser cierto (como la existencia de ciertos bugs), implica una publicidad negativa. Â¿CÃ³mo procederÃ­as?<br />\r\n<br />\r\n2) Compruebas que, en el Foro, un miembro de la Comunidad tiene un problema con el cliente del juego (una cuestiÃ³n no tÃ©cnica). Su forma de expresarse es confusa, con multitud de faltas de ortografÃ­a y usando expresiones que no conoces. Â¿QuÃ© harÃ­as?<br />\r\n<br />\r\n3) EstÃ¡s atendiendo a un jugador, y Ã©ste, al no conseguir lo que quiere, te amenaza con colgar la conversaciÃ³n en el foro, Â¿cÃ³mo actuarÃ­as?<br />\r\n<br />\r\n4) Ser Mj significa tener responsabilidades, si se precisase ayuda y estuvieses en raid, Â¿acudirÃ­as a prestar ayuda?<br />\r\n<br />\r\n5) Un jugador estÃ¡ buscÃ¡ndote por taberna, Â¿quÃ© harÃ­as?<br />\r\n<br />\r\n6)Una de las tabernas se encuentra revolucionada y no hay nadie de denuncias conectado, Â¿cÃ³mo reaccionarÃ­as ante una situaciÃ³n asÃ­?<br />\r\n<br />\r\n<br />\r\nâ˜… Adjunta una foto tuya, no es necesario que sea de cuerpo entero, no es una prueba estÃ©tica, sino el conocer la cara de con quien posiblemente trabaje, es importante saber con quien hablas y tratas.<br />\r\n<br />\r\n*Es imprescindible que rellenÃ©is todos los campos de la solicitud de manera clara.<br />\r\n<br />\r\nUn saludo<br />\r\n<br />\r\nRou, Jefe de Marketing y publicidad.',1,1,'none','2016-01-31 19:58:41',0,0),(34,33,'EQUIPO DE DONACIONES',2,0,20,'2016-01-31 20:21:05','Buenas!! Procedemos a abrir un proceso de selecciÃ³n para ser Mj de Donaciones cuyo trabajo consistirÃ¡ en atender a la comunidad en el foro en las secciones en que se les asigne.<br />\r\n<br />\r\nPara acceder al Staff deberÃ©is rellenar el formulario y enviarlo al correo electrÃ³nico nerfqx@gmail.com<br />\r\n<br />\r\nDicha convocatoria serÃ¡ cerrada y avisada en este post cuando creamos que las solicitudes recibidas son suficientes y el resultado de la selecciÃ³n se comunicarÃ¡ en vÃ­a privada a los interesados<br />\r\n<br />\r\n-------------------------------------------------------------------------------------------------------------------<br />\r\n APPLY PARA MJ/ATENCION AL FORO<br />\r\n<br />\r\n<br />\r\n<br />\r\nA) Datos personales:<br />\r\nNombre Real â†’<br />\r\n<br />\r\nNombre de tu pj Principal ( y personajes secundarios que utilizas) â†’<br />\r\n<br />\r\nHermandad a la que perteneces â†’<br />\r\n<br />\r\nEdad â†’<br />\r\n<br />\r\nPaÃ­s â†’<br />\r\n<br />\r\nDisponibilidad horaria (habla siempre en franja horaria del servidor) â†’<br />\r\n<br />\r\nE-mail de contacto y usuario de RaidCallâ†’<br />\r\n<br />\r\nÂ¿Estudias o trabajas? Â¿Y en quÃ©?<br />\r\n<br />\r\n<br />\r\nB) Conocimientos:<br />\r\nIndica el tiempo que llevas jugando a World of Warcraft â†’<br />\r\n<br />\r\nÂ¿CuÃ¡nto de ese tiempo llevas en WoW Qx?<br />\r\n<br />\r\nÂ¿CuÃ¡nto tiempo y en que servidores has estado jugando y si has tenido en algÃºn otro sitio un cargo de Mj? â†’<br />\r\n<br />\r\n<br />\r\n<br />\r\nC) Comportamiento personal:<br />\r\n<br />\r\nÂ¿Por quÃ© has decidido presentarte como MJ? â†’<br />\r\n<br />\r\nDescrÃ­benos con detalle como serÃ­a tu comportamiento como Mj al tratar con la comunidad de WoW Qx â†’<br />\r\n<br />\r\nÂ¿Has sido baneado en alguna ocasiÃ³n en nuestro servidor? Si la respuesta es SI, explica cuando, con quÃ© personaje y en que situaciÃ³n.<br />\r\n<br />\r\nÂ¿CuÃ¡les serÃ­an tus sugerencias para mejorar el servidor? Explica con detalle cada una de ellas.<br />\r\n<br />\r\n<br />\r\nD) Situaciones concretas â†’ (Explicaros claramente)<br />\r\n<br />\r\n1) EstÃ¡s atendiendo un post y la persona se pone brusca y arisca porque no ha recibido lo que ha pedido... Â¿CÃ³mo contestas?<br />\r\n2) Si tienes alguna duda ayudando a alguien en un post Â¿CÃ³mo lo resuelves?<br />\r\n3) Les dirias a tus amigos que eres Mj de WoW Qx, solo a los mÃ¡s allegados o, no se lo dirÃ­as a nadie?<br />\r\n4) Si alguien de tu guild o entorno (conocido..etc) estÃ¡ faltando alguna norma del servidor etc y tÃº estas con tu personaje normal de juego y no con el Mj: Â¿antepondrÃ­as ser Mj o, lo dejarÃ­as correr porque estas con tu personaje normal?<br />\r\n<br />\r\n----------------------------------------------------------------------------------------------------------------------<br />\r\nPD: Adjunta una foto tuya, no es necesario que sea de cuerpo entero, no es una prueba estÃ©tica, sino el conocer la cara de con quien posiblemente trabaje, es importante saber con quien hablas y tratas.<br />\r\n<br />\r\n NOTA: Es fundamental que rellenÃ©is todos los campos de la solicitud de manera clara.<br />\r\n<br />\r\n<br />\r\nUn saludo <br />\r\nStaff WoW Qx',1,1,'none','2016-01-31 20:21:05',0,0),(35,33,'EQUIPO WEBMASTERS',2,0,10,'2016-01-31 20:35:07','Si quieres formar parte del Equipo de WoW Qx, aquÃ­ podrÃ¡s colaborar con tu trabajo, aprender, compartir y disfrutar de nuestra gran familia. <br />\r\n<br />\r\n <br />\r\n  Requisitos necesarios para la InscripciÃ³n <br />\r\n <br />\r\n<br />\r\n<br />\r\nLos requisitos personales son un compromiso personal que hay que cumplir obligatoriamente y las tÃ©cnicas son de las que debes disponer de una mayor o menor medida.<br />\r\nTal vez no estÃ©n al alcance de todos a los que les puede interesar, pero son necesarios para poder cumplir todos los criterios de nuestra filosofÃ­a.<br />\r\n<br />\r\nRequisitos personales:<br />\r\nâ†’ Buena ortografÃ­a y claridad.<br />\r\nâ†’ Skype/Google Hangouts/RaidCall.<br />\r\nâ†’ Tiempo disponible: 2 horas diarias mÃ­nimo.<br />\r\nâ†’ Esfuerzo y ganas de aprender.<br />\r\nâ†’ Constancia.<br />\r\nâ†’ Mente abierta.<br />\r\n<br />\r\nRequisitos tÃ©cnicos:<br />\r\nâ†’ Trinity Core Es importante conocer su funcionamiento ya que es una de las bases importantes que se utilizan para trabajar.<br />\r\nâ†’ SQL (Nivel bajo-medio). Ya no solo el lenguaje, sino tambiÃ©n el tipo de tablas que datos que hay.<br />\r\nâ†’ PHP - Nivel medio-alto. Esta es la parte mÃ¡s importante en nuestro equipo, se tienen que cumplir todos los puntos por igual:<br />\r\nâ†’ Lo bÃ¡sico: Antes de empezar a correr, hemos aprendido a andar, por ello es fundamental saber algunas cosas bÃ¡sicas del lenguaje.<br />\r\nâ—¦ La sintaxis (variables, arrays, if/else, loops, objects, functions, etc)<br />\r\nâ—¦ Trabajo con las variables globales $_GET y $_POST , entendiendo como PHP envÃ­a, recibe y responde el lenguaje.<br />\r\nâ—¦ Saber trabajar con sesiones y cookies.<br />\r\n<br />\r\nâ†’ 3.2. Seguridad:<br />\r\n<br />\r\nâ†’ 3.3. POO (ProgramaciÃ³n orientada a objetos)<br />\r\n<br />\r\nâ†’ 3.4. MVC<br />\r\n<br />\r\nâ†’3.5. Frameworks Todo lo que puedas saber acerca de ellos, es un plus, estos mismos promueven las buenas prÃ¡cticas y los cÃ³digos limpios y bien documentados. Es necesario que conozcas unos pocos.<br />\r\n<br />\r\nâ†’ Nuestro equipo no es solo PHP, necesitamos tambiÃ©n conocimiento en otros temas FrontEnd, siendo necesario que tengas conocimiento de CSS3, HTML5 y conozcas como concepto: JS, AJAX, Jquery, â€¦ etc.<br />\r\nâ†’ Trabajo con Git. Nuestro control de versiones.<br />\r\nâ†’ Conocer perfectamente tu entorno de trabajo (Win/Linux/Mac).<br />\r\nâ†’ InglÃ©s â€“ Nivel medio.<br />\r\n<br />\r\n<br />\r\nCreando tu formulario (Personal)<br />\r\n<br />\r\n<br />\r\nPlantilla formulario personal:<br />\r\n--> Nombre Real:<br />\r\n--> Nombre personaje principal:<br />\r\n--> Edad:<br />\r\n--> PaÃ­s:<br />\r\n--> Tiempo diario disponible:<br />\r\n--> Cuenta de WoW Qx: (solo el nombre)<br />\r\n--> RaidCall:<br />\r\n--> Email de contacto:<br />\r\n--> Enlace a tu Github (si lo tienes):<br />\r\n--> Â¿Por quÃ© quieres unirte al equipo?: (5-10 lÃ­neas)<br />\r\n--> Â¿Has realizado algÃºn trabajo web? Si la respuesta es SÃ­, enseÃ±anos ejemplos de tu trabajo.<br />\r\n<br />\r\n>>>> Si estÃ¡s interesado debes envÃ­anos tu formulario al correo nerfqx@gmail.com<br />\r\n<br />\r\nÂ¡AnÃ­mate a marcar la diferencia!',1,1,'none','2016-01-31 21:06:28',1,2),(36,33,'EQUIPO DE TESTERS',2,0,3,'2016-01-31 20:40:27','Buenas, se abre un proceso de selecciÃ³n para ser Mj de Testeos cuyo trabajo consistirÃ¡ en testear los bugs reportados en la secciÃ³n Bugtracker, sin salirse del plan de trabajo. <br />\r\nEs necesario rellenar los todos los apartados desde la A hasta la D y al menos uno de los bloques de preguntas de equipo para optar a una u otra categorÃ­a (es posible rellenar mÃ¡s de uno de estos bloques en caso de que no tengÃ¡is preferencia por uno u otro equipo)<br />\r\n<br />\r\nPara acceder al Staff deberÃ©is rellenar el formulario y enviarlo al correo electrÃ³nico nerfqx@gmail.com <br />\r\n<br />\r\nDicha convocatoria serÃ¡ cerrada y avisada en este post cuando creamos que las solicitudes recibidas son suficientes y el resultado de la selecciÃ³n se comunicarÃ¡ en vÃ­a privada a los interesados.<br />\r\n<br />\r\n<br />\r\n<br />\r\n APLICACIÃ“N PARA ENTRAR AL EQUIPO DE TESTERS<br />\r\n<br />\r\n<br />\r\nA) Datos personales:<br />\r\nNombre Real:<br />\r\nNombre de tu pj Principal y personajes secundarios que utilizas:<br />\r\nHermandad a la que perteneces:<br />\r\nEdad:<br />\r\nPaÃ­s:<br />\r\nDisponibilidad horaria (franja horaria del servidor):<br />\r\nE-mail de contacto y usuario de RaidCall:<br />\r\nÂ¿Estudias o trabajas? Â¿Y en quÃ©?:<br />\r\n<br />\r\n<br />\r\nB) Conocimientos:<br />\r\nIndica el tiempo que llevas jugando a World of Warcraft:<br />\r\nÂ¿CuÃ¡nto de ese tiempo llevas en WoW Qx?:<br />\r\nÂ¿CuÃ¡nto tiempo y en que servidores has estado jugando? Â¿Has tenido en algÃºn otro sitio un cargo de Mj?:<br />\r\nÂ¿CÃ³mo describirÃ­as tu conocimiento sobre el funcionamiento del contenido del juego hasta la expansiÃ³n de Cataclysm, Pandaria y Warlords of Draenor? <br />\r\nÂ¿Has jugado en el oficial?:<br />\r\n<br />\r\n<br />\r\nC) Comportamiento personal:<br />\r\nÂ¿Por quÃ© has decidido presentarte como MJ?:<br />\r\nDescrÃ­benos con detalle como serÃ­a tu comportamiento como Mj al tratar con la comunidad de WoW Qx:<br />\r\nÂ¿Has sido baneado en alguna ocasiÃ³n en nuestro servidor? (Si la respuesta es SÃ, explica cuando, con quÃ© personaje y por quÃ© motivo.):<br />\r\nÂ¿CuÃ¡les serÃ­an tus sugerencias para mejorar el servidor? Explica con detalle cada una de ellas:<br />\r\n<br />\r\n<br />\r\nD) Situaciones concretas (Explicaros claramente)<br />\r\n1) EstÃ¡s atendiendo ingame y en una de las tabernas del juego se crea un revuelo produciÃ©ndose una discusiÃ³n entre varios jugadores. Â¿CÃºal serÃ­a tu reacciÃ³n como Maestro de Juego?<br />\r\n2) Un jugador estÃ¡ buscÃ¡ndote por taberna, Â¿quÃ© harÃ­as?<br />\r\n3) Un jugador te pide que le regales oro y/o Items. Â¿QuÃ© le dirÃ­as?.<br />\r\n<br />\r\n<br />\r\n PREGUNTAS DE EQUIPO<br />\r\n<br />\r\n<br />\r\nOpciÃ³n para testers de Mazmorras (Explicaros claramente)<br />\r\nTienes que testear si una habilidad de un Jefe funciona como deberÃ­a, Â¿cÃ³mo actuarÃ­as para testearla?:<br />\r\nTienes que testear el funcionamiento completo de un encuentro con un jefe Â¿De quÃ© informaciÃ³n te valdrÃ­as para poder generar un informe general respecto a su funcionamiento?.<br />\r\nÂ¿QuÃ© fuentes utilizarÃ­as para obtener informaciÃ³n de una mazmorra en concreto?.<br />\r\n<br />\r\n<br />\r\nOpciÃ³n para testers de Clases (Explicaros claramente)<br />\r\nTienes que testear una spell en concreto, Â¿cÃ³mo actuarÃ­as para testearlo?.<br />\r\nÂ¿Como testearias si el daÃ±o de una spell o talento funciona como debe?.<br />\r\nÂ¿QuÃ© fuentes utilizarÃ­as para obtener informaciÃ³n de una spell en concreto?.<br />\r\n<br />\r\n<br />\r\nOpciÃ³n para testers de Misiones (Explicaros claramente)<br />\r\nTienes que testear una misiÃ³n en concreto, Â¿cÃ³mo actuarÃ­as para testearla?:<br />\r\nTienes que testear una misiÃ³n que no sabes cÃ³mo deberÃ­a funcionar realmente, Â¿De quÃ© te valdrÃ­as para poder confirmar o desmentir dicho bug?.<br />\r\nTienes que testear una misiÃ³n intermedia dentro de una cadena de misiones larga. Â¿CÃ³mo lo harÃ­as?.<br />\r\nÂ¿QuÃ© fuentes utilizarÃ­as para obtener informaciÃ³n de una misiÃ³n?.<br />\r\n<br />\r\n<br />\r\nOpciÃ³n para testers de Generales (Explicaros claramente)<br />\r\nTienes que testear una habilidad de profesiÃ³n en concreto, Â¿cÃ³mo actuarÃ­as para testearla?:<br />\r\nTienes que testear un NPC que aparentemente no vende lo que deberÃ­a vender y no sabes quÃ© deberÃ­a o no tener realmente, Â¿De quÃ© te valdrÃ­as para poder confirmar o desmentir dicho reporte?.<br />\r\nÂ¿QuÃ© fuentes utilizarÃ­as para obtener informaciÃ³n sobre tus testeos?.<br />\r\n<br />\r\n<br />\r\n<br />\r\nPor Ãºltimo... Adjunta una foto tuya (no es necesario que sea de cuerpo entero), no es una prueba estÃ©tica, sino el conocer la cara de con quien posiblemente trabaje. Es importante saber con quien hablas y tratas.<br />\r\n<br />\r\n NOTA: Es fundamental que rellenÃ©is todos los campos de la solicitud de manera clara.',1,1,'none','2016-01-31 20:40:27',0,0),(37,33,'EQUIPO DE EVENTOS',2,1,13,'2016-01-31 21:02:37','Buenas, procedo a abrir un proceso de selecciÃ³n para ser Mj de eventos cuyo trabajo consistirÃ¡ principalmente en el desarrollo y realizaciÃ³n de los diferentes tipos de eventos. <br />\r\n<br />\r\nPara acceder al Staff deberÃ©is rellenar el formulario y enviarlo al correo electrÃ³nico nerfqx@gmail.com<br />\r\n<br />\r\nDicha convocatoria serÃ¡ cerrada y avisada en este post cuando creamos que las solicitudes recibidas son suficientes y el resultado de la selecciÃ³n positivo se comunicarÃ¡ en vÃ­a privada a los interesados.<br />\r\n<br />\r\n<br />\r\n<br />\r\nâ†’ REQUISITOS<br />\r\n<br />\r\n1. Constancia y Responsabilidad: Si entras al equipo de eventos es para aprender y a HACER COSAS, no para vaguear o no participar. Esto es un proyecto grande y serio no quiero perder el tiempo y supongo que si estas pensando en rellenar esta apply, tÃº tampoco lo quieres perder. <br />\r\n<br />\r\n2. Iniciativa y Creatividad: Imprescindible tener capacidad de IMAGINAR (que no fantasear), aquÃ­ te va a tocar dar soluciones y para eso hay que buscar las cosas y no esperar que te las den hechas.<br />\r\n<br />\r\n3. Compromiso: Se pretende mantener un grupo estable y de confianza, el primer mes estarÃ©is a prueba..<br />\r\n<br />\r\n4. Ser mayor de 18 aÃ±os: Esto es un proyecto serio, y ya hemos tenido malas experiencias con gente muy joven.<br />\r\n<br />\r\n5. Sociabilidad: Necesito gente que desprenda amabilidad, simpatÃ­a, gracia y sobre todo diversiÃ³n. .<br />\r\n<br />\r\n6. Disponibilidad: La disponibilidad es flexible, de preferencia que tengan tiempo porque hay bastante que hacer.<br />\r\n<br />\r\n<br />\r\nLas applys que no cumplan TODOS estos requisitos serÃ¡n ignoradas y no recibirÃ¡n respuesta alguna.<br />\r\n<br />\r\n<br />\r\n<br />\r\nâ†’ PLANTILLA (formulario) La plantilla debe rellenarse en su totalidad. <br />\r\n<br />\r\n<br />\r\n<br />\r\nDATOS PERSONALES<br />\r\n<br />\r\n <br />\r\n 1. Nombre Real:<br />\r\n<br />\r\n 2. Nombre de tu pj Principal  (y personajes secundarios que utilizas):<br />\r\n<br />\r\n 3. Reino (Lich King, Cataclysm, Mits of Pandaria o Warlords of Draenor): <br />\r\n<br />\r\n 4. Hermandad a la que perteneces:<br />\r\n<br />\r\n 5. Edad:<br />\r\n<br />\r\n 6. PaÃ­s:<br />\r\n<br />\r\n 7. Disponibilidad horaria (franja horaria del Servidor): <br />\r\n<br />\r\n 8. E-mail de contacto y RaidCall:<br />\r\n<br />\r\n 9. Â¿Estudias o Trabajas? Â¿Y en quÃ©?:<br />\r\n<br />\r\n<br />\r\nâ˜… Adjunta una foto tuya, no es necesario que sea de cuerpo entero, no es una prueba estÃ©tica, sino el conocer la cara de con quien posiblemente trabaje, ya que es importante saber con quien hablas y tratas.<br />\r\n<br />\r\n<br />\r\nCONOCIMIENTOS<br />\r\n<br />\r\n <br />\r\n10. Indica el tiempo que llevas jugando a World of Warcraft.<br />\r\n<br />\r\n11. Â¿CuÃ¡nto de ese tiempo llevas en WoW Qx?.<br />\r\n<br />\r\n12. Â¿CuÃ¡nto tiempo y en que servidores has estado jugando?.<br />\r\n<br />\r\n13. Â¿Has tenido en algÃºn otro sitio un cargo de Mj?.<br />\r\n<br />\r\n14. Indica brevemente tus conocimientos en programaciÃ³n (C++ y SQL):<br />\r\n<br />\r\n15. Indica brevemente tus conocimientos en ediciÃ³n de vÃ­deo e imagen:<br />\r\n<br />\r\n16. Indica brevemente tus conocimientos en: <br />\r\n      â˜… PvP, PvE, Logros, Profesiones, Instancias.<br />\r\n<br />\r\n<br />\r\nâ˜… Opcionalmente puedes adjuntar algÃºn vÃ­deo Ã³ imagen realizado y editado por ti (sobre wow).<br />\r\n<br />\r\n<br />\r\nCOMPORTAMIENTO PERSONAL<br />\r\n<br />\r\n <br />\r\n17. Â¿Por quÃ© has decidido presentarte como Mj de Eventos?<br />\r\n<br />\r\n18. Â¿Has sido baneado en alguna ocasiÃ³n en nuestro servidor?  Si la respuesta es SI, explica cuando, con quÃ© pj y motivo.<br />\r\n<br />\r\n19. Â¿QuÃ© beneficios piensas que puedes aportar al Equipo de Eventos?<br />\r\n<br />\r\n20. Â¿QuÃ© harÃ­as? EstÃ¡s realizando un evento y un jugador ...   <br />\r\n      â˜… Te pide oro, subida de nivel o algÃºn item.<br />\r\n      â˜… Te amenaza con denunciarte en el foro. <br />\r\n      â˜… Te insulta.',1,1,'none','2016-01-31 21:04:46',0,0);

/*Table structure for table `items` */

DROP TABLE IF EXISTS `items`;

CREATE TABLE `items` (
  `id` int(11) DEFAULT NULL,
  `entry` int(11) DEFAULT NULL,
  `bind` varchar(50) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `type` varchar(50) DEFAULT NULL,
  `speed` int(11) DEFAULT NULL,
  `stats` varchar(50) DEFAULT NULL,
  `str` int(11) DEFAULT NULL,
  `agi` int(11) DEFAULT NULL,
  `int` int(11) DEFAULT NULL,
  `sprt` int(11) DEFAULT NULL,
  `haste` int(11) DEFAULT NULL,
  `crit` int(11) DEFAULT NULL,
  `mast` int(11) DEFAULT NULL,
  `spellp` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='This is the items table for the item DB from CMS 1.5';

/*Data for the table `items` */

insert  into `items`(`id`,`entry`,`bind`,`name`,`type`,`speed`,`stats`,`str`,`agi`,`int`,`sprt`,`haste`,`crit`,`mast`,`spellp`) values (1,24448,'Binds on Pickup','Test Sword','Sword',1,'str,agi,crit,mast',320,287,0,0,0,1032,980,0);

/*Table structure for table `links` */

DROP TABLE IF EXISTS `links`;

CREATE TABLE `links` (
  `id` int(11) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `link` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `links` */

insert  into `links`(`id`,`name`,`link`) values (1,'ClientDownload','Yourdownloadlink.torrent');

/*Table structure for table `logs` */

DROP TABLE IF EXISTS `logs`;

CREATE TABLE `logs` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `code` int(11) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `txn_id` varchar(32) DEFAULT NULL,
  `payer_email` varchar(64) DEFAULT NULL,
  `amount` float DEFAULT NULL,
  `info` blob,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Data for the table `logs` */

/*Table structure for table `media` */

DROP TABLE IF EXISTS `media`;

CREATE TABLE `media` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `author` int(10) NOT NULL DEFAULT '0',
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `id_url` varchar(30) NOT NULL DEFAULT '0' COMMENT 'Just Youtube Videos',
  `title` text,
  `description` text,
  `comments` int(10) DEFAULT '0',
  `link` varchar(255) DEFAULT '#',
  `visible` int(2) NOT NULL DEFAULT '0',
  `type` int(2) unsigned NOT NULL DEFAULT '0' COMMENT '0 video - 1 wallpapapers - 2 screenshots - 3 artwork - 4 comics',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;

/*Data for the table `media` */

insert  into `media`(`id`,`author`,`date`,`id_url`,`title`,`description`,`comments`,`link`,`visible`,`type`) values (16,1,'2016-02-01 03:28:29','-E5M3X-1KP0','CATACLYSM (Español - España) - World of Warcraft','Trailer of the third World of Warcraft Expansion.</br>This expansion supouse a big change for Azeroth, all the known world will change and the Deathwing`s rage will change the curse of the life.',0,'http://www.youtube.com/watch?v=-E5M3X-1KP0',0,0),(17,1,'2016-02-01 03:28:28','CARC72zF7UI','World of Warcraft - Cinemáticas','Normal Video',0,'http://www.youtube.com/watch?v=CARC72zF7UI',0,0),(18,1,'2016-02-01 03:28:28','dYK_Gqyf48Y','World of Warcraft - Cinematic Trailer','Some Trailers',0,'http://www.youtube.com/watch?v=dYK_Gqyf48Y',0,0),(19,1,'2016-02-01 03:28:27','IBHL_-biMrQ','World of Warcraft: The Burning Crusade','TBC Trailer',0,'http://www.youtube.com/watch?v=IBHL_-biMrQ',0,0),(21,2,'2016-02-01 03:32:01','23101201621194677.jpg','test','test',0,'52.32.45.237/images/wallpapers/23101201621194677.jpg',1,2);

/*Table structure for table `media_comments` */

DROP TABLE IF EXISTS `media_comments`;

CREATE TABLE `media_comments` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `mediaid` int(10) NOT NULL,
  `comment` text NOT NULL,
  `accountId` int(10) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=64 DEFAULT CHARSET=latin1;

/*Data for the table `media_comments` */

/*Table structure for table `messages` */

DROP TABLE IF EXISTS `messages`;

CREATE TABLE `messages` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `author` varchar(255) NOT NULL DEFAULT 'FailZorD',
  `class` varchar(255) NOT NULL DEFAULT 'Administrator',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

/*Data for the table `messages` */

/*Table structure for table `motd` */

DROP TABLE IF EXISTS `motd`;

CREATE TABLE `motd` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `day` int(11) NOT NULL,
  `image` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

/*Data for the table `motd` */

insert  into `motd`(`id`,`day`,`image`) values (1,1,0),(2,2,21),(3,31,21);

/*Table structure for table `news` */

DROP TABLE IF EXISTS `news`;

CREATE TABLE `news` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `author` int(10) NOT NULL DEFAULT '0',
  `date` datetime NOT NULL,
  `content` text,
  `contentlnk` text,
  `title` text,
  `comments` int(10) DEFAULT '0',
  `image` varchar(255) DEFAULT 'staff',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

/*Data for the table `news` */

insert  into `news`(`id`,`author`,`date`,`content`,`contentlnk`,`title`,`comments`,`image`) values (1,2,'2016-01-20 18:00:00','El Sistema de Recluta a un amigo esta disponible! Reclutar a uno o varios amigos, te dara grandes regalos unicos tanto para ti como para tus amigos reclutados.',NULL,'(Proximamente) Invita a un Amigo!',0,'recruit'),(2,2,'2016-01-11 19:30:31','Apresurate! Los logros de Primero en el Reino estan actualmente disponibles. Para mas informacion hacerca de los logros de Primero en el Reino que aun estan disponibles, visita el foro de la web, en la seccion Logros o haz clic aqui en la imagen',NULL,'(Aviso!) Logros de Primero en el Reino!',0,'hotfix'),(5,2,'2016-01-28 19:01:37','Unete a la gran comunidad de WoW Qx Server y disfruta de una nueva experiencia en Servidores Privados de World of Warcraft',NULL,'Gran Comunidad!',0,'new'),(3,2,'2016-01-29 18:55:10','El Sagrario Rubi, una nueva estancia para raids de 10 y 25 jugadores que cuenta con dificultades normal y heroica, ya esta disponible! Los jugadores encontraran la entrada a la mazmorra bajo el Templo del Reposo del Dragon en el Cementerio de Dragones.',NULL,'(Nuevo!) Asalto al Sagrario Rubi',0,'4.2'),(4,2,'2016-01-29 18:56:31','Utilizando nuestro sistema de puntos de votacion podras obtener fabulosas y unicas mascotas de coleccion exclusiva. Has clic para ir a la Tienda de Votos.',NULL,'(Info!) Mascota de Regalo!',0,'pets'),(6,2,'2016-01-26 19:04:06','Servidor Privado del videojuego World Of Warcraft',NULL,'Bienvenidos a WoW Qx',0,'character2'),(7,2,'2016-01-25 19:04:53','La pagina web aun esta en la fase de desarrollo. Te agradecemos de antemano que reportes cualquier problema que tengas con la pagina web y el servidor. En la seccion del Foro de la Web, encontraras una seccion dedicada a resolver estos problemas.',NULL,'Aun en fase Beta',0,'media'),(9,2,'2016-01-23 19:05:01','Si tienes algun problema con una Quest, porfavor reportala en el Foro de la Web en la seccion de Reporte de Bugs',NULL,'Problemas con alguna Quest?',0,'admin'),(11,2,'2016-01-21 19:05:07','WoW Qx Server cuenta con la caracteristica de Multi-Reino-Expancion, que significa que contamos con las ultimas 4 expansiones de WoW; Lich King, Cataclysm, Pandaria y Warlords of Draenors',NULL,'(Proximamente) Servidor Multi-Reino-Expansion',0,'4.3.0'),(12,2,'2016-01-20 19:05:10','Las Arenas y Campos de Batalla estan completamente abiertos y funcionales',NULL,'Campos de Batalla funcionales!',0,'arena'),(13,2,'2016-01-19 19:05:14','Nuestra politica de calidad implica en ser los mejores dia con dia. Dedicados a brindar el mejor funcionamiento, estabilidad y jugabilidad en cada uno de nuestros reinos',NULL,'Somos un buen Servidor',0,'wow'),(14,2,'2016-01-18 19:05:20','Contamos con un Reino Cataclysm (4.3.x) que vive de un constante desarrollo por parte de nuestros Developers. La funcionabilidad: 90.99% Jugabilidad: 93.99% UpTime: 81.99%',NULL,'(Proximamente) Reino Cataclysm',0,'raids');

/*Table structure for table `prices` */

DROP TABLE IF EXISTS `prices`;

CREATE TABLE `prices` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `service` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL DEFAULT 'vote',
  `vp` int(10) DEFAULT '0',
  `dp` int(10) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

/*Data for the table `prices` */

insert  into `prices`(`id`,`service`,`type`,`vp`,`dp`) values (1,'name-change','vote',300,0),(2,'race-change','vote',500,0),(3,'appear-change','vote',400,0),(4,'faction-change','vote',600,10),(5,'chars-unst','vote',600,0),(6,'chars-trans','vote',200,0);

/*Table structure for table `pve_mode` */

DROP TABLE IF EXISTS `pve_mode`;

CREATE TABLE `pve_mode` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `thumb` varchar(50) NOT NULL,
  `group-name` varchar(50) NOT NULL,
  `description` varchar(255) NOT NULL,
  `link` varchar(255) DEFAULT '#',
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

/*Data for the table `pve_mode` */

insert  into `pve_mode`(`id`,`thumb`,`group-name`,`description`,`link`) values (1,'thumb-gate-of-the-setting-sun','Gate of the Setting Sun','','#'),(2,'thumb-mogushan-palace','Mogu\'shan Palace','','#'),(3,'thumb-scarlet-halls','Scarlet Halls','','#'),(4,'thumb-scarlet-monastery','Scarlet Monastery','','#'),(5,'thumb-scholomance','Scholomance','','#'),(6,'thumb-shadopan-monastery','Shado-Pan Monastery','','#'),(7,'thumb-siege-of-niuzao-temple','Siege of Niuzao Temple','','#'),(8,'thumb-stormstout-brewery','Stormstout Brewery','','#'),(9,'thumb-temple-of-the-jade-serpent','Temple of the Jade Serpent','','#');

/*Table structure for table `pvp_mode` */

DROP TABLE IF EXISTS `pvp_mode`;

CREATE TABLE `pvp_mode` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `thumb` varchar(50) NOT NULL,
  `group-name` varchar(50) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `link` varchar(255) DEFAULT '#',
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

/*Data for the table `pvp_mode` */

insert  into `pvp_mode`(`id`,`thumb`,`group-name`,`description`,`link`) values (1,'thumb-pvp-overview','PvP Overview','Top players, specs, and teams','#'),(2,'thumb-battlegrounds','Battlegrounds',NULL,'#'),(3,'thumb-arena-2v2','Arena 2v2',NULL,'pvp/arena/2v2.php'),(4,'thumb-arena-3v3','Arena 3v3',NULL,'pvp/arena/3v3.php'),(5,'thumb-arena-5v5','Arena 5v5',NULL,'pvp/arena/5v5.php');

/*Table structure for table `realms` */

DROP TABLE IF EXISTS `realms`;

CREATE TABLE `realms` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `realmid` int(10) DEFAULT NULL,
  `world_db` varchar(255) NOT NULL DEFAULT 'world',
  `char_db` varchar(255) NOT NULL DEFAULT 'characters',
  `version` varchar(15) NOT NULL DEFAULT '4.0.6a',
  `drop_rate` varchar(5) NOT NULL DEFAULT '1x',
  `exp_rate` varchar(5) NOT NULL DEFAULT '1x',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

/*Data for the table `realms` */

insert  into `realms`(`id`,`realmid`,`world_db`,`char_db`,`version`,`drop_rate`,`exp_rate`) values (1,1,'world','characters','3.3.5a','x5','x5'),(2,2,'world_cata','characters_cata','4.3.4','x5','x5'),(3,3,'world_panda','characters_panda','5.4.8','x5','x5');

/*Table structure for table `rewards` */

DROP TABLE IF EXISTS `rewards`;

CREATE TABLE `rewards` (
  `server` int(10) NOT NULL AUTO_INCREMENT,
  `name` text,
  `item` int(10) DEFAULT NULL,
  `price` int(10) DEFAULT NULL,
  PRIMARY KEY (`server`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

/*Data for the table `rewards` */

insert  into `rewards`(`server`,`name`,`item`,`price`) values (1,'Tigre Zulian Presto',19902,1000);

/*Table structure for table `servers` */

DROP TABLE IF EXISTS `servers`;

CREATE TABLE `servers` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  `host` varchar(32) NOT NULL,
  `username` varchar(32) NOT NULL,
  `password` varchar(32) NOT NULL,
  `database` varchar(32) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

/*Data for the table `servers` */

insert  into `servers`(`id`,`name`,`host`,`username`,`password`,`database`) values (1,'Lich King (3.3.5a)','wowserver.sytes.net','raiz','6713','world'),(2,'Cataclysm (4.3.4)','wowserver.sytes.net','raiz','6713','world_cata'),(3,'Mists of Pandaria (5.4.8)','wowserver.sytes.net','raiz','6713','world_panda');

/*Table structure for table `shop_items` */

DROP TABLE IF EXISTS `shop_items`;

CREATE TABLE `shop_items` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `server` int(10) unsigned NOT NULL,
  `name` varchar(50) CHARACTER SET utf8 NOT NULL,
  `item` int(10) unsigned NOT NULL,
  `price` float unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

/*Data for the table `shop_items` */

insert  into `shop_items`(`id`,`server`,`name`,`item`,`price`) values (1,1,'Amani War Bear',33809,200),(2,1,'Swift Zhevra',37719,200),(3,1,'Reins of the Swift Spectral Tiger',49284,200),(4,1,'Peep\'s Whistle',25596,200),(5,1,'X-51 Nether-Rocket',49286,200),(6,1,'Mimiron\'s Head',45693,200),(7,1,'The Horseman\'s Reins',37012,200),(8,1,'Pandaren Monk',49665,100),(9,1,'Gryphon Hatchling',49662,100);

/*Table structure for table `shop_log` */

DROP TABLE IF EXISTS `shop_log`;

CREATE TABLE `shop_log` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `userid` int(10) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `item_id` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

/*Data for the table `shop_log` */

/*Table structure for table `sidebars` */

DROP TABLE IF EXISTS `sidebars`;

CREATE TABLE `sidebars` (
  `enabled` int(11) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `sidebars` */

insert  into `sidebars`(`enabled`,`name`) values (1,'ServerInfo');

/*Table structure for table `slideshows` */

DROP TABLE IF EXISTS `slideshows`;

CREATE TABLE `slideshows` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8 NOT NULL,
  `description` varchar(255) CHARACTER SET utf8 NOT NULL,
  `image` varchar(255) CHARACTER SET utf8 NOT NULL,
  `link` varchar(255) CHARACTER SET utf8 DEFAULT '#',
  `duration` varchar(2) CHARACTER SET utf8 NOT NULL DEFAULT '7',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=67 DEFAULT CHARSET=latin1;

/*Data for the table `slideshows` */

insert  into `slideshows`(`id`,`title`,`description`,`image`,`link`,`duration`) values (2,'Aun en fase Beta','La pagina web aun esta en la fase de desarrollo','fix.jpg','#','2'),(1,'Bienvenidos a WoW Qx','Servidor Privado del videojuego World Of Warcraft','character2.jpg','#','2'),(4,'Problemas con alguna Quest?','Si tienes algun problema con una Quest, porfavor reportala en el Foro de la Web en la seccion de Reporte de Bugs','2CON9P0KMWXW1365585559614.jpg','/forum/','2'),(6,'(Proximamente) Servidor Multi-Reino-Expansion','WoW Qx Server cuenta con la caracteristica de Multi-Reino-Expancion, que significa que contamos con las ultimas 4 expansiones de WoW; Lich King, Cataclysm, Pandaria y Warlords of Draenors','531148_10151080543729034_545654705_n.jpg','#','2'),(3,'Reino Lich King (3.3.5a)','Contamos con un Reino Lich King (3.3.5a) que vive de un constante desarrollo por parte de nuestros Developers. La funcionabilidad: 98.99% Jugabilidad: 97.99% UpTime: 99.99%','yorg_lk.jpg','#','2'),(5,'Bandas y Mazmorras Burning Crusade funcionan perfectamente!','Te invitamos a revivir la experiencia clasica del WoW Burning Crusade con las nuevas y mejorados arreglos efectuados por parte de nuestro equipo de desarrollo','1049090_tenha-3-equipamentos-lendarios.jpg','#','2'),(7,'Campos de Batalla funcionales!','Las Arenas y Campos de Batalla estan completamente abiertos y funcionales','cierretemporadaarenas.jpg','#','7'),(8,'Somos un buen Servidor','Nuestra politica de calidad implica en ser los mejores dia con dia. Dedicados a brindar el mejor funcionamiento, estabilidad y jugabilidad en cada uno de nuestros reinos','wow_he10.jpg','#','7'),(9,'(Proximamente) Reino Cataclysm','Contamos con un Reino Cataclysm (4.3.x) que vive de un constante desarrollo por parte de nuestros Developers. La funcionabilidad: 90.99% Jugabilidad: 93.99% UpTime: 81.99%','WOW.jpg','#','7'),(10,'Gran Comunidad!','Unete a la gran comunidad de WoW Qx Server y disfruta de una nueva experiencia en Servidores Privados de World of Warcraft','LJ9NRL6DTH091288953375465.jpg','#','7'),(11,'Mascota de Regalo!','Utilizando nuestro sistema de puntos de votacion podras obtener fabulosas y unicas mascotas de coleccion exclusiva. Has clic para ir a la Tienda de Votos.','lqeqbllknfdr1289271510066.jpg','/account/vote.php','7'),(12,'Asalto al Sagrario Rubi','El Sagrario Rubi, una nueva estancia para raids de 10 y 25 jugadores que cuenta con dificultades normal y heroica, ya esta disponible! Los jugadores encontraran la entrada a la mazmorra bajo el Templo del Reposo del Dragon en el Cementerio de Dragones.','UVL5WYQ3SIQI1288932693241.jpg','#','7'),(13,'Logros de Primero en el Reino!','Apresurate! Los logros de Primero en el Reino estan actualmente disponibles. Para mas informacion hacerca de los logros de Primero en el Reino que aun estan disponibles, visita el foro de la web, en la seccion Logros o haz clic aqui en la imagen','wall_of_fame_header.jpg','#','7'),(14,'(Proximamente)Invita a un Amigo!','El Sistema de Recluta a un amigo esta disponible! Reclutar a uno o varios amigos, te dara grandes regalos unicos tanto para ti como para tus amigos reclutados.','wowver401.jpg','#','7');

/*Table structure for table `themes` */

DROP TABLE IF EXISTS `themes`;

CREATE TABLE `themes` (
  `id` int(11) DEFAULT NULL,
  `author` varchar(50) DEFAULT NULL,
  `vs_info` varchar(50) DEFAULT NULL,
  `active` int(10) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `description` varchar(250) DEFAULT NULL,
  `css_link` varchar(50) DEFAULT NULL,
  `creation_date` date DEFAULT NULL,
  `development_crew` varchar(50) DEFAULT NULL,
  `development_linkback` longtext,
  `website` varchar(50) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `themes` */

insert  into `themes`(`id`,`author`,`vs_info`,`active`,`name`,`description`,`css_link`,`creation_date`,`development_crew`,`development_linkback`,`website`) values (1,'FailzorD','1.0',1,'AquaFlame Cata Edition','The AquaFlame Cata Theme','DefaultAFCMS','2013-11-09','AquaFlame',NULL,'http://localhost/'),(2,'FailzorD','1.0',0,'AquaFlame Wrath Edition','The AquaFlame Wrath Theme','Wrath','2013-11-09','AquaFlame',NULL,'http://localhost/'),(3,'FailzorD','1.0',0,'AquaFlame','AquaFlame Default Theme','Default','2013-11-12','AquaFlame',NULL,'http://localhost/');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` int(10) NOT NULL,
  `avatar` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '0-0.jpg',
  `blizz` tinyint(1) DEFAULT '0',
  `class` varchar(255) CHARACTER SET utf8 NOT NULL,
  `firstName` varchar(255) CHARACTER SET utf8 NOT NULL,
  `lastName` varchar(255) CHARACTER SET utf8 NOT NULL,
  `character` int(10) NOT NULL DEFAULT '0',
  `vote_points` int(10) NOT NULL DEFAULT '0',
  `char_realm` int(10) NOT NULL DEFAULT '1',
  `registerIp` varchar(30) CHARACTER SET utf8 NOT NULL DEFAULT '127.0.0.1',
  `country` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `birth` date DEFAULT NULL,
  `quest1` int(2) NOT NULL DEFAULT '0',
  `ans1` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT 'undefined',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Data for the table `users` */

insert  into `users`(`id`,`avatar`,`blizz`,`class`,`firstName`,`lastName`,`character`,`vote_points`,`char_realm`,`registerIp`,`country`,`birth`,`quest1`,`ans1`) values (6,'0-0.jpg',0,'blizz','Francisco','Ambrocio',0,0,1,'189.202.87.152','MEX','1990-11-28',6,'SUPERMAN'),(5,'0-0.jpg',0,'0','Francisco','Ambrocio',0,0,1,'201.170.88.143','MEX','1990-11-28',6,'SUPERMAN'),(4,'0-0.jpg',0,'0','Dsfdaga','Gsage',0,0,1,'187.179.229.97','AND','2000-12-10',5,'EHPUTO'),(3,'2-1.jpg',0,'0','Kha','Lili',0,0,1,'73.34.205.243','DJI','1924-06-22',1,'JUANA'),(2,'10-0.jpg',0,'blizz','Rou','Lunar',4,0,1,'73.34.205.243','BLZ','2010-06-05',1,'JUANA'),(7,'0-0.jpg',0,'0','Antonio','Bandereas',0,0,1,'73.34.205.243','ALB','2009-08-09',1,'JUANA'),(8,'0-0.jpg',0,'0','Soyo','Yoso',0,0,1,'73.34.205.243','CRI','1949-06-24',1,'JUANA'),(9,'0-0.jpg',0,'0','Eddy','Dar',0,0,1,'73.34.205.243','ARG','1967-09-25',1,'JUANA'),(10,'0-0.jpg',0,'0','Luis','CortÃ©s JuÃ¡rez',0,0,1,'201.203.58.251','CRI','1992-10-12',9,'BARCELONA'),(11,'0-0.jpg',0,'0','Johan','Moraes',0,0,1,'181.51.164.122','COL','1988-05-26',3,'CALARCA'),(12,'0-0.jpg',0,'0','Francisco','Ambrocio',0,0,1,'189.202.87.152','MEX','1990-11-28',6,'SUPERMAN');

/*Table structure for table `version` */

DROP TABLE IF EXISTS `version`;

CREATE TABLE `version` (
  `Name` text,
  `Number` varchar(10) DEFAULT NULL,
  `Revision` char(50) DEFAULT NULL,
  `DB_Version` varchar(50) DEFAULT NULL,
  `Updates` varchar(50) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COMMENT='This here shows you what Version of AquaFlameCMS you have.';

/*Data for the table `version` */

insert  into `version`(`Name`,`Number`,`Revision`,`DB_Version`,`Updates`) values ('AquaFlameCMS','v1.5','7a0c13fc18cffa06e569685b5a9275910c3c93ce','v8','152');

/*Table structure for table `vote` */

DROP TABLE IF EXISTS `vote`;

CREATE TABLE `vote` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID has to be from 1 to 5',
  `Name` varchar(50) CHARACTER SET utf8 DEFAULT NULL COMMENT 'This is the Name of the Voting Site.',
  `Link` text CHARACTER SET utf8 COMMENT 'It must have http:// to work properly',
  `Description` text CHARACTER SET utf8 COMMENT 'Add the Description for the Voting',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1 COMMENT='This Table is all about the Infortmation for the Vote Panel.';

/*Data for the table `vote` */

insert  into `vote`(`ID`,`Name`,`Link`,`Description`) values (1,'Google',NULL,'Vote me jackass!'),(2,'AquaFlame',NULL,'Just click me for cookies!');

/*Table structure for table `votes_log` */

DROP TABLE IF EXISTS `votes_log`;

CREATE TABLE `votes_log` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `userid` int(10) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `voteid` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

/*Data for the table `votes_log` */

insert  into `votes_log`(`id`,`userid`,`date`,`voteid`) values (1,2,'2016-01-23 05:01:23',1);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
