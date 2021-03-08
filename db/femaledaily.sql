-- --------------------------------------------------------
-- Host:                         localhost
-- Server version:               5.7.24 - MySQL Community Server (GPL)
-- Server OS:                    Win64
-- HeidiSQL Version:             10.2.0.5599
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Dumping database structure for test-femaledaily
DROP DATABASE IF EXISTS `test-femaledaily`;
CREATE DATABASE IF NOT EXISTS `test-femaledaily` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `test-femaledaily`;

-- Dumping structure for table test-femaledaily.orders
DROP TABLE IF EXISTS `orders`;
CREATE TABLE IF NOT EXISTS `orders` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `first_name` varchar(200) NOT NULL,
  `last_name` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `item` varchar(200) NOT NULL,
  `quantity` int(11) NOT NULL DEFAULT '0',
  `total_price` double NOT NULL DEFAULT '0',
  KEY `Index 1` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

-- Dumping data for table test-femaledaily.orders: ~0 rows (approximately)
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` (`id`, `first_name`, `last_name`, `email`, `item`, `quantity`, `total_price`) VALUES
	(1, 'A', 'B', 'ab@gmail.com', 'tas', 2, 20000),
	(2, 'B', 'C', 'bc@gmail.com', 'baju1', 3, 30000),
	(3, 'C', 'D', 'cd@gmail.com', 'baju2', 3, 30000),
	(4, 'D', 'E', 'de@gmail.com', 'baju3', 4, 40000),
	(5, 'E', 'F', 'ef@gmail.com', 'baju4', 5, 50000),
	(6, 'F', 'G', 'fg@gmail.com', 'baju5', 6, 60000),
	(7, 'G', 'H', 'gh@gmail.com', 'baju6', 7, 70000),
	(8, 'H', 'I', 'hi@gmail.com', 'baju7', 8, 80000),
	(9, 'I', 'J', 'ij@gmail.com', 'baju8', 9, 90000),
	(10, 'J', 'K', 'jk@gmail.com', 'baju9', 10, 100000);
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
