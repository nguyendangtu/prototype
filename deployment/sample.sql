-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               5.2.14-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win64
-- HeidiSQL version:             7.0.0.4053
-- Date/time:                    2019-03-06 08:01:31
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET FOREIGN_KEY_CHECKS=0 */;

-- Dumping database structure for demo
CREATE DATABASE IF NOT EXISTS `demo` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `demo`;


-- Dumping structure for table demo.sample
CREATE TABLE IF NOT EXISTS `sample` (
  `SAMPLE_ID` int(11) NOT NULL,
  `NAME` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`SAMPLE_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- Dumping data for table demo.sample: 2 rows
/*!40000 ALTER TABLE `sample` DISABLE KEYS */;
INSERT INTO `sample` (`SAMPLE_ID`, `NAME`) VALUES
	(1, 'JOHN1'),
	(2, 'JOHN 2');
/*!40000 ALTER TABLE `sample` ENABLE KEYS */;
/*!40014 SET FOREIGN_KEY_CHECKS=1 */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
