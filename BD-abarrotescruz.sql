-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Versión del servidor:         5.6.21 - MySQL Community Server (GPL)
-- SO del servidor:              Win32
-- HeidiSQL Versión:             10.3.0.5771
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Volcando estructura de base de datos para abarrotescruz
DROP DATABASE IF EXISTS `abarrotescruz`;
CREATE DATABASE IF NOT EXISTS `abarrotescruz` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `abarrotescruz`;

-- Volcando estructura para tabla abarrotescruz.tec_categories
DROP TABLE IF EXISTS `tec_categories`;
CREATE TABLE IF NOT EXISTS `tec_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(20) NOT NULL,
  `name` varchar(55) NOT NULL,
  `image` varchar(100) DEFAULT 'no_image.png',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla abarrotescruz.tec_categories: ~22 rows (aproximadamente)
/*!40000 ALTER TABLE `tec_categories` DISABLE KEYS */;
INSERT INTO `tec_categories` (`id`, `code`, `name`, `image`) VALUES
	(5, '1', 'Bebidas', '7f099cda242ed5272e3d90b4ade654b2.png'),
	(6, '2', 'Bebidas alcoholicas', 'no_image.png'),
	(7, '3', 'Lacteos', 'no_image.png'),
	(8, '4', 'Cereales', 'no_image.png'),
	(9, '5', 'Gamesa', 'no_image.png'),
	(10, '6', 'Tia Rosa', 'no_image.png'),
	(11, '7', 'Botanas', 'no_image.png'),
	(12, '8', 'Pan Dulce y Galleta', 'no_image.png'),
	(13, '9', 'Vinos y licores', 'no_image.png'),
	(14, '10', 'Bebidas Alcoholicas', 'no_image.png'),
	(15, '11', 'Cerveza', 'no_image.png'),
	(16, '12', 'Dulceria', 'no_image.png'),
	(17, '13', 'Abarrotes', 'bac454208989edc553caedc1b06ec7f6.png'),
	(18, '14', 'Otros', 'no_image.png'),
	(19, '15', 'Helados', 'no_image.png'),
	(20, '16', 'Farmacias', 'no_image.png'),
	(21, '17', 'Cremeria', 'no_image.png'),
	(22, '18', 'Leches', 'no_image.png'),
	(23, '19', 'Cigarros', '3217b7e20a4c1fd16e8ba71a54b324aa.png'),
	(24, '20', 'Cafés', 'no_image.png'),
	(25, '21', 'Confitadas', 'no_image.png');
/*!40000 ALTER TABLE `tec_categories` ENABLE KEYS */;

-- Volcando estructura para tabla abarrotescruz.tec_combo_items
DROP TABLE IF EXISTS `tec_combo_items`;
CREATE TABLE IF NOT EXISTS `tec_combo_items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `item_code` varchar(20) NOT NULL,
  `quantity` decimal(12,4) NOT NULL,
  `price` decimal(25,2) DEFAULT NULL,
  `cost` decimal(25,2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla abarrotescruz.tec_combo_items: ~16 rows (aproximadamente)
/*!40000 ALTER TABLE `tec_combo_items` DISABLE KEYS */;
INSERT INTO `tec_combo_items` (`id`, `product_id`, `item_code`, `quantity`, `price`, `cost`) VALUES
	(5, 18, '03', 1.0000, NULL, NULL),
	(6, 18, '02', 1.0000, NULL, NULL),
	(7, 18, '0015', 1.0000, NULL, NULL),
	(9, 45009, '12180', 1.0000, NULL, NULL),
	(10, 46285, '12180', 1.0000, NULL, NULL),
	(11, 46285, '7501064101205', 1.0000, NULL, NULL),
	(14, 46287, '12180', 1.0000, NULL, NULL),
	(15, 46287, '7501064191909', 1.0000, NULL, NULL),
	(16, 46288, '12181', 1.0000, NULL, NULL),
	(17, 46288, '7501064101410', 1.0000, NULL, NULL),
	(18, 46289, '12181', 1.0000, NULL, NULL),
	(19, 46289, '7501064115400', 1.0000, NULL, NULL),
	(22, 46291, '12182', 1.0000, NULL, NULL),
	(23, 46291, '75004101', 1.0000, NULL, NULL),
	(24, 46293, '12183', 1.0000, NULL, NULL),
	(25, 46293, '7501049999469', 1.0000, NULL, NULL);
/*!40000 ALTER TABLE `tec_combo_items` ENABLE KEYS */;

-- Volcando estructura para tabla abarrotescruz.tec_customers
DROP TABLE IF EXISTS `tec_customers`;
CREATE TABLE IF NOT EXISTS `tec_customers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(55) NOT NULL,
  `cf1` varchar(255) NOT NULL,
  `cf2` varchar(255) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `email` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla abarrotescruz.tec_customers: ~3 rows (aproximadamente)
/*!40000 ALTER TABLE `tec_customers` DISABLE KEYS */;
INSERT INTO `tec_customers` (`id`, `name`, `cf1`, `cf2`, `phone`, `email`) VALUES
	(1, 'Cliente estandar', '9999999999', '99999999', '012345678', 'cliente@pdvparatodos.com.br'),
	(2, 'Francisco', '', '', '', 'chico@gmail.com'),
	(3, 'Aline', '', '', '', '');
/*!40000 ALTER TABLE `tec_customers` ENABLE KEYS */;

-- Volcando estructura para tabla abarrotescruz.tec_expenses
DROP TABLE IF EXISTS `tec_expenses`;
CREATE TABLE IF NOT EXISTS `tec_expenses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `reference` varchar(50) NOT NULL,
  `amount` decimal(25,2) NOT NULL,
  `note` varchar(1000) DEFAULT NULL,
  `created_by` varchar(55) NOT NULL,
  `attachment` varchar(55) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla abarrotescruz.tec_expenses: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `tec_expenses` DISABLE KEYS */;
/*!40000 ALTER TABLE `tec_expenses` ENABLE KEYS */;

-- Volcando estructura para tabla abarrotescruz.tec_gift_cards
DROP TABLE IF EXISTS `tec_gift_cards`;
CREATE TABLE IF NOT EXISTS `tec_gift_cards` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `card_no` varchar(20) NOT NULL,
  `value` decimal(25,2) NOT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `balance` decimal(25,2) NOT NULL,
  `expiry` date DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `card_no` (`card_no`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla abarrotescruz.tec_gift_cards: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `tec_gift_cards` DISABLE KEYS */;
INSERT INTO `tec_gift_cards` (`id`, `date`, `card_no`, `value`, `customer_id`, `balance`, `expiry`, `created_by`) VALUES
	(1, '2018-12-09 15:01:54', '3416 7448 7841 0281', 500.00, NULL, 500.00, NULL, 9);
/*!40000 ALTER TABLE `tec_gift_cards` ENABLE KEYS */;

-- Volcando estructura para tabla abarrotescruz.tec_groups
DROP TABLE IF EXISTS `tec_groups`;
CREATE TABLE IF NOT EXISTS `tec_groups` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `description` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla abarrotescruz.tec_groups: ~2 rows (aproximadamente)
/*!40000 ALTER TABLE `tec_groups` DISABLE KEYS */;
INSERT INTO `tec_groups` (`id`, `name`, `description`) VALUES
	(1, 'admin', 'Administrator'),
	(2, 'Staff', 'Staff');
/*!40000 ALTER TABLE `tec_groups` ENABLE KEYS */;

-- Volcando estructura para tabla abarrotescruz.tec_login_attempts
DROP TABLE IF EXISTS `tec_login_attempts`;
CREATE TABLE IF NOT EXISTS `tec_login_attempts` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `ip_address` varbinary(16) NOT NULL,
  `login` varchar(100) NOT NULL,
  `time` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla abarrotescruz.tec_login_attempts: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `tec_login_attempts` DISABLE KEYS */;
/*!40000 ALTER TABLE `tec_login_attempts` ENABLE KEYS */;

-- Volcando estructura para tabla abarrotescruz.tec_payments
DROP TABLE IF EXISTS `tec_payments`;
CREATE TABLE IF NOT EXISTS `tec_payments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `sale_id` int(11) DEFAULT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `transaction_id` varchar(50) DEFAULT NULL,
  `paid_by` varchar(20) NOT NULL,
  `cheque_no` varchar(20) DEFAULT NULL,
  `cc_no` varchar(20) DEFAULT NULL,
  `cc_holder` varchar(25) DEFAULT NULL,
  `cc_month` varchar(2) DEFAULT NULL,
  `cc_year` varchar(4) DEFAULT NULL,
  `cc_type` varchar(20) DEFAULT NULL,
  `amount` decimal(25,2) NOT NULL,
  `currency` varchar(3) DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `attachment` varchar(55) DEFAULT NULL,
  `note` varchar(1000) DEFAULT NULL,
  `pos_paid` decimal(25,2) DEFAULT '0.00',
  `pos_balance` decimal(25,2) DEFAULT '0.00',
  `gc_no` varchar(20) DEFAULT NULL,
  `reference` varchar(50) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla abarrotescruz.tec_payments: ~4 rows (aproximadamente)
/*!40000 ALTER TABLE `tec_payments` DISABLE KEYS */;
INSERT INTO `tec_payments` (`id`, `date`, `sale_id`, `customer_id`, `transaction_id`, `paid_by`, `cheque_no`, `cc_no`, `cc_holder`, `cc_month`, `cc_year`, `cc_type`, `amount`, `currency`, `created_by`, `attachment`, `note`, `pos_paid`, `pos_balance`, `gc_no`, `reference`, `updated_by`, `updated_at`) VALUES
	(1, '2020-03-09 23:17:24', 2, 1, NULL, 'cash', '', '', '', '', '', '', 24.00, NULL, 9, NULL, '', 50.00, 26.00, '', NULL, NULL, NULL),
	(2, '2020-03-09 23:17:59', 3, 1, NULL, 'cash', '', '', '', '', '', '', 24.00, NULL, 9, NULL, '', 50.00, 26.00, '', NULL, NULL, NULL),
	(3, '2020-03-10 13:42:57', 4, 1, NULL, 'cash', '', '', '', '', '', '', 34.00, NULL, 9, NULL, '', 50.00, 16.00, '', NULL, NULL, NULL),
	(4, '2020-03-10 13:43:44', 5, 1, NULL, 'cash', '', '', '', '', '', '', 19.00, NULL, 9, NULL, '', 50.00, 31.00, '', NULL, NULL, NULL);
/*!40000 ALTER TABLE `tec_payments` ENABLE KEYS */;

-- Volcando estructura para tabla abarrotescruz.tec_products
DROP TABLE IF EXISTS `tec_products`;
CREATE TABLE IF NOT EXISTS `tec_products` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(50) NOT NULL,
  `name` char(255) NOT NULL,
  `category_id` int(11) NOT NULL DEFAULT '1',
  `price` decimal(25,2) NOT NULL,
  `image` varchar(255) DEFAULT 'no_image.png',
  `tax` varchar(20) DEFAULT NULL,
  `cost` decimal(25,2) DEFAULT NULL,
  `tax_method` tinyint(1) DEFAULT '1',
  `quantity` decimal(15,2) DEFAULT '0.00',
  `barcode_symbology` varchar(20) NOT NULL DEFAULT 'code39',
  `type` varchar(20) NOT NULL DEFAULT 'standard',
  `details` text,
  `alert_quantity` decimal(10,2) DEFAULT '0.00',
  PRIMARY KEY (`id`),
  UNIQUE KEY `code` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=46679 DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla abarrotescruz.tec_products: ~72 rows (aproximadamente)
/*!40000 ALTER TABLE `tec_products` DISABLE KEYS */;
INSERT INTO `tec_products` (`id`, `code`, `name`, `category_id`, `price`, `image`, `tax`, `cost`, `tax_method`, `quantity`, `barcode_symbology`, `type`, `details`, `alert_quantity`) VALUES
	(44716, '017479831011', 'Sardina yavaros en salsa de tomate 425gr', 17, 26.00, 'ba68cd923297a534ae9a29c0d19a3c5c.jpg', '0', 0.00, 1, 0.00, 'code39', 'standard', '', 0.00),
	(44736, '041789001956', 'Maruchan instantanea camaron 64gr', 17, 9.00, 'fda88028a9b8710b5a16db2429831a84.png', '0', 0.00, 1, 0.00, 'code39', 'standard', '', 0.00),
	(44737, '041789001987', 'Maruchan Instantanea camaron con chile piquin 64gr', 17, 9.00, '279d9139ca0b7f0c1e7d569b2c8c5f91.png', '0', 0.00, 1, 0.00, 'code39', 'standard', '', 0.00),
	(44738, '041789001864', 'Maruchan Instantanea camaron con limon y habanero 64gr', 17, 9.00, '823e753653f5fe2c32fbbc5acf77d6bb.png', '0', 0.00, 1, 0.00, 'code39', 'standard', '', 0.00),
	(44739, '041789001918', 'Maruchan instantanea pollo 64gr', 17, 9.00, 'c276c218b363e671d16893d281d56d9d.png', '0', 0.00, 1, 0.00, 'code39', 'standard', '', 0.00),
	(44740, '041789001925', 'Maruchan instantanea res 64gr', 17, 9.00, '2257cf582a0cf8698186f1d05ad8a1cf.jpg', '0', 0.00, 1, 0.00, 'code39', 'standard', '', 0.00),
	(44754, '076150420098', 'Palomitas act ii caramelo', 17, 18.00, '200a4d057b32d5cf885520f5e4fafe5a.png', '0', 0.00, 1, 0.00, 'code39', 'standard', '', 0.00),
	(44815, '076397007601', 'Adobo Doña chonita 350gr', 17, 17.00, 'ae219e91ea6ca1f4fc9a514417a9ef22.jpg', '0', 0.00, 1, 0.00, 'code39', 'standard', '', 0.00),
	(44816, '076397007854', 'Salsa chile guajillo doña chonita 350gr', 17, 17.00, '92efb06d020c368307250e96a3eef21b.jpg', '0', 0.00, 1, 0.00, 'code39', 'standard', '', 0.00),
	(44818, '076397007908', 'Salsa chile pasilla doña chonita 350gr', 17, 17.00, '975b047a8312984b955eca0fb447d376.jpg', '0', 0.00, 1, 0.00, 'code39', 'standard', '', 0.00),
	(44831, '7501020540666', 'nutri leche 1 lt', 22, 15.00, '262adc8c2ad04a5ee94248599a4650ac.png', '0', 0.00, 1, -1.00, 'code39', 'standard', '', 0.00),
	(44836, '100', 'Jabon tocador neutro grisi 150gr', 20, 0.00, '7737901507c4fa304d6269cc2850a913.png', '0', 0.00, 1, 0.00, 'code39', 'standard', '', 0.00),
	(44843, '101', 'Sal La Fina bote refinada fluorada 1 kg', 17, 0.00, 'f4dd6b5f3b86ec1866badf455d515f00.jpg', '0', 0.00, 1, 0.00, 'code39', 'standard', '', 0.00),
	(44844, '034587030013', 'Sal la fina 1 kg', 17, 10.00, '7d4ce12e40f6ed8fecc2b96b8b3ef886.jpg', '0', 0.00, 1, 0.00, 'code39', 'standard', '', 0.00),
	(44850, '106', 'Nestlé La Lechera sirve fácil 335 g', 17, 0.00, 'eee9785c4544e9427552d8ee711d467d.jpg', '0', 0.00, 1, 0.00, 'code39', 'standard', '', 0.00),
	(44851, '107', 'Azucar estandar 1 kg', 17, 17.00, '06a428616273a3569426407ac6fb10b0.jpg', '0', 0.00, 1, 0.00, 'code39', 'standard', '', 0.00),
	(44852, '108', 'Sustituto de azucar splenda sobre', 17, 0.50, '534252b027fd20e945797747a55b5eeb.jpg', '0', 0.00, 1, 0.00, 'code39', 'standard', '', 0.00),
	(44853, '097339000061', 'Salsa valentina negra 370ml', 17, 11.00, 'bc2ac64fd1a939d5cacf974f9097a042.jpg', '0', 0.00, 1, 0.00, 'code39', 'standard', '', 0.00),
	(44854, '097339000054', 'Salsa valentina amarilla 370ml', 17, 10.00, 'c0b5070e5d9b56df64f502da8569cf84.jpg', '0', 0.00, 1, 0.00, 'code39', 'standard', '', 0.00),
	(44855, '097339000030', 'Salsa valentina amarilla 1 lt', 17, 20.00, '301b2117eae4cdfcc2a6c8dd07b0a2fa.jpg', '0', 0.00, 1, 0.00, 'code39', 'standard', '', 0.00),
	(44856, '097339000047', 'Salsa valentina negra 1lt', 17, 20.00, '5348feaecf5aee759f85d6e5281f172a.jpg', '0', 0.00, 1, 0.00, 'code39', 'standard', '', 0.00),
	(44857, '113', 'Salsa Botanera 1 Lt.', 17, 10.00, '88cdfff270c70511277b98a1bd8acc93.png', '0', 0.00, 1, 0.00, 'code39', 'standard', '', 0.00),
	(44858, '114', 'Salsa botanera 370ml', 17, 0.00, '5b8ab3e93ae7cfa8d3d888f78f90147d.jpg', '0', 0.00, 1, 0.00, 'code39', 'standard', '', 0.00),
	(44859, '115', 'Harina de Maiz 1 Kg. Minsa', 17, 14.00, 'bc5f12e5cbaf9cb4e7acd5587e89e9e5.png', '0', 0.00, 1, 0.00, 'code39', 'standard', '', 0.00),
	(44861, '117', 'Harina de trigo tres estrellas 1 kg', 17, 15.00, '6175f2f05f30ff302164459212bcbe30.jpg', '0', 0.00, 1, 0.00, 'code39', 'standard', '', 0.00),
	(44862, '118', 'Harina de trigo integral 3 estrellas 1 kg', 17, 12.00, '862d0569762cab123bda6a1802c5cbef.png', '0', 0.00, 1, 0.00, 'code39', 'standard', '', 0.00),
	(44864, '120', 'Harina de arroz 3 estrellas 250gr', 17, 19.00, '74aacab90861895ccf992d0fd9a5274e.jpg', '0', 0.00, 1, 0.00, 'code39', 'standard', '', 0.00),
	(44865, '121', 'Harina de arroz 3 estrellas 500gr', 17, 0.50, '5197df4de0e833c42719c95d6bffa015.png', '0', 0.00, 1, 0.00, 'code39', 'standard', '', 0.00),
	(44877, '131', 'Chocolate abuelita barra', 17, 12.00, '9da5fcd6f399485b5dcf5514709bf029.jpg', '0', 0.00, 1, 0.00, 'code39', 'standard', '', 0.00),
	(44878, '132', 'Chocolate ibarra barra', 17, 10.00, 'a62c84335c95c1ac6ae57497b2cb14c9.png', '0', 0.00, 1, 0.00, 'code39', 'standard', '', 0.00),
	(44879, '133', 'Chocolate morelia 357gr bolsa', 17, 0.00, 'fd76c85e0636c0eaabe6256b518d1c79.png', '0', 0.00, 1, 0.00, 'code39', 'standard', '', 0.00),
	(44886, '011848455570', 'Pasta adobo Achiote la anita 110gr', 17, 9.00, '06402b192774fca9fe45e10578756d36.png', '0', 0.00, 1, 0.00, 'code39', 'standard', '', 0.00),
	(44888, '074323083620', 'Cajeta envinada coronado 370gr', 17, 40.00, 'a0833eb085c9cfb5c9d9bec1bd8b58ef.png', '0', 0.00, 1, 0.00, 'code39', 'standard', '', 0.00),
	(44889, '074323083651', 'Cajeta quemada 370gr coronado', 17, 40.00, '4710fb092c57fb7209efdd8b8c71a52b.jpg', '0', 0.00, 1, 0.00, 'code39', 'standard', '', 0.00),
	(44890, '074323083644', 'Cajeta vainilla 370gr coronado', 17, 40.00, '59b446ae5dc99b99561ba40e9f8c835b.gif', '0', 0.00, 1, 0.00, 'code39', 'standard', '', 0.00),
	(44895, '7501083100029', 'Vinagre blanco barrilito 750ml', 17, 10.00, '6db0660b8f2a7adc9e4d273e87db26e2.jpg', '0', 0.00, 1, 0.00, 'code39', 'standard', '', 0.00),
	(44907, '041390000508', 'Salsa de soya Kikkoman 148ml', 17, 30.00, 'b7d665b06b27a2ce128ddd267ebd5e5d.jpg', '0', 0.00, 1, 0.00, 'code39', 'standard', '', 0.00),
	(44915, '041333001043', 'Bateria duracell 9v', 17, 79.00, '891c4653f773d3670cb168ac42e771b9.jpg', '0', 0.00, 1, 0.00, 'code39', 'standard', '', 0.00),
	(44916, '041333000985', 'Bateria duracell D2', 17, 80.00, 'd8e40c64839632bc722638ddf941cab3.jpg', '0', 0.00, 1, 0.00, 'code39', 'standard', '', 0.00),
	(44917, '041333000992', 'Bateria duracell C2', 17, 80.00, '407be413ee150f29cacb4f44d904a454.jpg', '0', 0.00, 1, 0.00, 'code39', 'standard', '', 0.00),
	(44919, '041333428482', 'Bateria duracell AAA', 17, 15.00, '2c1981f1d932eee1b2914600e032877b.jpg', '0', 0.00, 1, 0.00, 'code39', 'standard', '', 0.00),
	(45021, '070847003656', 'Monster energy 473ml', 5, 30.00, 'fe2e615c8fca462bf1ed4b791c3bfaf7.jpg', '0', 0.00, 1, -4.00, 'code39', 'standard', '', 0.00),
	(45053, '080432402870', 'Passport 700ml', 13, 164.00, 'd6402edb3bcafc2a6a71d3ef39ed9186.jpg', '0', 0.00, 1, 0.00, 'code39', 'standard', '', 0.00),
	(45064, '080432401774', 'Passport 1 lt', 13, 221.00, 'af7ca4406c0c20cd816ef43c74ce84c2.jpg', '0', 0.00, 1, 0.00, 'code39', 'standard', '', 0.00),
	(45083, '089540468655', 'Ron malibu 750ml', 13, 185.00, '50762f1438adb81b32ef268c4b72bdcd.jpg', '0', 0.00, 1, 0.00, 'code39', 'standard', '', 0.00),
	(45101, '082000747345', 'Captain morgan 750ml', 13, 128.00, 'e595ed376bbb9e23ba7c7d9ee3de86c5.jpg', '0', 0.00, 1, 0.00, 'code39', 'standard', '', 0.00),
	(45102, '080516135144', 'V.T. Riunite lambrusco 750ml', 13, 120.00, 'b717e777f44fb7d6267ca852862bfb08.jpg', '0', 0.00, 1, 0.00, 'code39', 'standard', '', 0.00),
	(45175, '120100', 'Jabon pasta tepeyac', 17, 22.00, 'cd5f92efb798a666bb5b9891c8759394.jpg', '0', 0.00, 1, 0.00, 'code39', 'standard', '', 0.00),
	(45190, '10900000406', 'P. aluminio reynolds wrap 7.62m * 30.4 cm', 17, 23.00, '055908e9f22a38e72dc27a9ea23cb503.jpg', '0', 0.00, 1, 0.00, 'code39', 'standard', '', 0.00),
	(45262, '038000846731', 'Pringles original 37gr', 11, 13.00, 'ede6f6f4037ffa3b2cf1e4074f6bde8a.jpg', '0', 0.00, 1, 0.00, 'code39', 'standard', '', 0.00),
	(45263, '038000847615', 'Pringles chile y limon 40gr', 11, 13.00, '82c9cabcea1657def2e0f51c9041473f.jpg', '0', 0.00, 1, 0.00, 'code39', 'standard', '', 0.00),
	(45603, '014800515329', 'Clamato el original 473ml', 5, 19.00, '933607ca0c8e8a303563da3f5c058488.png', '0', 15.00, 1, -25.00, 'code39', 'standard', '', 0.00),
	(45842, '032239052000', 'Del valle nectar mango 413ml', 5, 12.00, 'e0c2a8ab6401dfef9d3718637310594e.png', '0', 0.00, 1, -4.00, 'code39', 'standard', '', 0.00),
	(45843, '032239052024', 'Del valle nectar manzana 413ml', 5, 12.00, '3b5daff37da7a8f3228cda3d85dfea49.png', '0', 0.00, 1, -3.00, 'code39', 'standard', '', 0.00),
	(45845, '032239052017', 'Del valle nectar durazno 413ml', 5, 12.00, 'a81047cdbc65632cafd864ab197acc1e.jpg', '0', 0.00, 1, -2.00, 'code39', 'standard', '', 0.00),
	(45952, '12151', 'Danone Danonino vaso grande', 7, 6.50, '86ac698b6797394de443cddc64b74432.jpg', '0', 0.00, 1, 0.00, 'code39', 'standard', '', 0.00),
	(45953, '12152', 'Danone Danonino vaso chico', 7, 4.00, 'ce6afa5e311d56c919b616977ca3806e.jpg', '0', 0.00, 1, 0.00, 'code39', 'standard', '', 0.00),
	(45957, '12153', 'Flan Dannette danone 200gr', 7, 5.50, '3b9e130c594d6338c13eaab3b37cba4e.jpg', '0', 0.00, 1, 0.00, 'code39', 'standard', '', 0.00),
	(45967, '12156', 'Paleta Tutsi pop 20gr', 16, 3.00, '273c4ee4c6d2847ec40ef90dc2fa4990.jpg', '0', 0.00, 1, 0.00, 'code39', 'standard', '', 0.00),
	(46157, '014800515640', 'Clamato Vuelve a la vida 473ml', 5, 19.00, 'fe6cf69fe6885447bed6d63cdd70075f.jpg', '0', 0.00, 1, -8.00, 'code39', 'standard', '', 0.00),
	(46198, '041333666426', 'Bateria AA duracell', 17, 14.00, '20ffe98925a49476911cefecf18d4139.jpg', '0', 11.00, 1, 0.00, 'code39', 'standard', '', 0.00),
	(46203, '031200454560', 'Ocean Spray Arandano 1 lt', 17, 28.00, '4eba223f30abae2ca550fc429ffcbd80.jpg', '0', 25.00, 1, 0.00, 'code39', 'standard', '', 0.00),
	(46208, '080432400395', 'Chivas regal 750ml', 13, 699.00, '1b96f32f9fd7268c9763ba67bf684fb5.jpg', '0', 600.00, 0, 0.00, 'code39', 'standard', '', 0.00),
	(46211, '082184042397', 'Jack daniels jennessee honey 700ml', 13, 398.00, '58d494380ab4782b22de37531b22687c.png', '0', 380.00, 0, 0.00, 'code39', 'standard', '', 0.00),
	(46212, '082184090473', 'Jack daniels 700ml', 13, 403.00, '7ec0571a36ecefca194a87611345d120.jpg', '0', 380.00, 0, 0.00, 'code39', 'standard', '', 0.00),
	(46216, '080480001520', 'Bacardi OAKHEART 750ML', 13, 140.00, '9fe9ee06555c34dd76098c00716b00a0.jpg', '0', 120.00, 0, 0.00, 'code39', 'standard', '', 0.00),
	(46253, '080432403716', 'Martell V.S. 700ml', 13, 670.00, '805022d169d54914269aab919b7a647d.jpg', '0', 600.00, 0, 0.00, 'code39', 'standard', '', 0.00),
	(46254, '080432403730', 'Martell V.S.O.P. Medallon 700ml', 13, 880.00, '6a4f0efee80e154f159fe0eeb9f06d6d.png', '0', 800.00, 0, 0.00, 'code39', 'standard', '', 0.00),
	(46268, '082184038376', 'Jack Daniels lata cola 350ml', 14, 27.00, '4b707d2aef5301838e97c48ad9b6d603.jpg', '0', 24.00, 0, 0.00, 'code39', 'standard', '', 0.00),
	(46378, '038000159596', 'Pringles extra hot 40gr', 11, 14.00, '84908c1c9e123384cf064540b11d30d9.jpg', '0', 11.00, 0, 0.00, 'code39', 'standard', '', 0.00),
	(46379, '046500006210', 'Glade Jardin campestre 400ml', 20, 55.00, '19bfb2a60e6cb367471ab347e650ef67.jpg', '0', 48.00, 0, 0.00, 'code39', 'standard', '', 0.00),
	(46584, '014800515336', 'Clamato el original 946ml', 5, 34.00, '9980c80acf89064700b5a0dd1e741889.png', '0', 30.00, 0, -20.00, 'code39', 'standard', '', 0.00),
	(46678, '7802800719464', 'Aceite Oleico', 17, 24.00, 'no_image.png', '0', 20.00, 0, 5.00, 'code39', 'standard', 'df', 5.00);
/*!40000 ALTER TABLE `tec_products` ENABLE KEYS */;

-- Volcando estructura para tabla abarrotescruz.tec_purchases
DROP TABLE IF EXISTS `tec_purchases`;
CREATE TABLE IF NOT EXISTS `tec_purchases` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `reference` varchar(55) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `note` varchar(1000) NOT NULL,
  `total` decimal(25,2) NOT NULL,
  `attachment` varchar(255) DEFAULT NULL,
  `supplier_id` int(11) DEFAULT NULL,
  `received` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla abarrotescruz.tec_purchases: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `tec_purchases` DISABLE KEYS */;
INSERT INTO `tec_purchases` (`id`, `reference`, `date`, `note`, `total`, `attachment`, `supplier_id`, `received`) VALUES
	(10, '150425', '2018-12-09 22:40:00', 'ninguna por el momento', 1200.00, NULL, NULL, NULL);
/*!40000 ALTER TABLE `tec_purchases` ENABLE KEYS */;

-- Volcando estructura para tabla abarrotescruz.tec_purchase_items
DROP TABLE IF EXISTS `tec_purchase_items`;
CREATE TABLE IF NOT EXISTS `tec_purchase_items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `purchase_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` decimal(15,2) NOT NULL,
  `cost` decimal(25,2) NOT NULL,
  `subtotal` decimal(25,2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla abarrotescruz.tec_purchase_items: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `tec_purchase_items` DISABLE KEYS */;
INSERT INTO `tec_purchase_items` (`id`, `purchase_id`, `product_id`, `quantity`, `cost`, `subtotal`) VALUES
	(20, 10, 45403, 120.00, 10.00, 1200.00);
/*!40000 ALTER TABLE `tec_purchase_items` ENABLE KEYS */;

-- Volcando estructura para tabla abarrotescruz.tec_registers
DROP TABLE IF EXISTS `tec_registers`;
CREATE TABLE IF NOT EXISTS `tec_registers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `user_id` int(11) NOT NULL,
  `cash_in_hand` decimal(25,2) NOT NULL,
  `status` varchar(10) NOT NULL,
  `total_cash` decimal(25,2) DEFAULT NULL,
  `total_cheques` int(11) DEFAULT NULL,
  `total_cc_slips` int(11) DEFAULT NULL,
  `total_cash_submitted` decimal(25,2) DEFAULT NULL,
  `total_cheques_submitted` int(11) DEFAULT NULL,
  `total_cc_slips_submitted` int(11) DEFAULT NULL,
  `note` text,
  `closed_at` timestamp NULL DEFAULT NULL,
  `transfer_opened_bills` varchar(50) DEFAULT NULL,
  `closed_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla abarrotescruz.tec_registers: ~40 rows (aproximadamente)
/*!40000 ALTER TABLE `tec_registers` DISABLE KEYS */;
INSERT INTO `tec_registers` (`id`, `date`, `user_id`, `cash_in_hand`, `status`, `total_cash`, `total_cheques`, `total_cc_slips`, `total_cash_submitted`, `total_cheques_submitted`, `total_cc_slips_submitted`, `note`, `closed_at`, `transfer_opened_bills`, `closed_by`) VALUES
	(1, '2015-11-02 12:39:22', 1, 0.00, 'close', 0.00, 0, 1, 0.00, 0, 1, '', '2015-11-02 13:49:29', NULL, 1),
	(2, '2015-11-02 14:00:24', 1, 0.00, 'close', 36.00, 0, 0, 36.00, 0, 0, '', '2016-01-25 23:11:28', NULL, 1),
	(3, '2015-12-12 18:59:48', 2, 50.00, 'close', 101.96, 0, 0, 101.96, 0, 0, '', '2016-03-05 23:36:08', NULL, 2),
	(4, '2016-01-25 23:12:25', 1, 0.00, 'close', 2.00, 0, 0, 2.00, 0, 0, '', '2016-01-25 23:28:28', '0', 1),
	(5, '2016-01-25 23:46:53', 1, 0.00, 'close', 0.00, 0, 0, 0.00, 0, 0, '', '2016-01-25 23:48:44', NULL, 1),
	(6, '2016-01-25 23:50:22', 1, 100.00, 'close', 110.00, 0, 0, 110.00, 0, 0, '', '2016-01-25 23:56:02', NULL, 1),
	(7, '2016-01-25 23:59:31', 1, 100.00, 'close', 104.00, 0, 0, 104.00, 0, 0, '', '2016-01-26 00:01:16', NULL, 1),
	(8, '2016-01-26 00:01:58', 1, 100.00, 'open', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(9, '2016-03-05 23:36:43', 2, 200.00, 'close', 212.00, 0, 0, 212.00, 0, 0, '', '2016-03-08 01:40:06', NULL, 2),
	(10, '2016-03-06 06:17:16', 3, 200.00, 'open', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(11, '2016-03-29 14:18:24', 4, 100.00, 'open', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(12, '2016-03-29 14:18:24', 4, 100.00, 'open', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(13, '2016-03-29 14:31:12', 5, 0.00, 'close', 19.00, 0, 1, 19.00, 0, 1, '', '2016-03-31 20:10:01', NULL, 5),
	(14, '2016-03-31 20:14:17', 5, 100.00, 'close', 134.00, 0, 0, 134.00, 0, 0, '', '2016-03-31 21:07:22', NULL, 5),
	(15, '2016-03-31 23:59:11', 5, 100.00, 'open', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(16, '2016-04-01 02:07:39', 6, 100.00, 'open', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(17, '2016-04-10 13:03:46', 7, 50.00, 'close', 57.00, 0, 0, 57.00, 0, 0, '', '2016-04-10 14:12:49', NULL, 7),
	(18, '2016-04-10 14:22:29', 7, 50.00, 'open', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(19, '2017-04-03 16:16:35', 8, 10.00, 'close', 15.00, 0, 0, 15.00, 0, 0, '', '2018-01-26 04:36:25', NULL, 8),
	(20, '2018-01-26 04:37:56', 8, 200.00, 'close', 200.00, 0, 0, 200.00, 0, 0, '', '2018-01-26 04:38:43', NULL, 8),
	(21, '2018-01-26 04:55:23', 10, 200.00, 'close', 200.00, 0, 0, 200.00, 0, 0, '', '2018-01-26 04:58:11', NULL, 10),
	(22, '2018-01-26 06:22:16', 8, 200.00, 'open', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(23, '2018-01-28 14:37:17', 9, 150.00, 'close', 180.00, 0, 0, 180.00, 0, 0, '', '2018-01-28 14:41:17', NULL, 9),
	(24, '2018-01-28 14:56:34', 9, 150.00, 'close', 180.00, 0, 0, 180.00, 0, 0, '', '2018-01-28 14:58:02', NULL, 9),
	(25, '2018-02-01 01:18:51', 9, 100.00, 'close', 116.00, 0, 0, 116.00, 0, 0, '', '2018-04-03 02:31:47', NULL, 9),
	(26, '2018-04-08 10:25:18', 9, 500.00, 'close', 500.00, 0, 0, 500.00, 0, 0, '', '2018-04-29 20:37:00', NULL, 9),
	(27, '2018-04-29 20:37:34', 9, 1000.00, 'close', 1443.00, 0, 0, 1443.00, 0, 0, '', '2018-06-29 04:24:40', NULL, 9),
	(28, '2018-05-07 21:20:43', 11, 1000.00, 'close', 1000.00, 0, 0, 1000.00, 0, 0, '', '2018-05-07 21:21:33', NULL, 11),
	(29, '2018-05-07 21:33:33', 11, 1000.00, 'open', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(30, '2018-06-29 04:24:49', 9, 1000.00, 'close', 1362.53, 0, 0, 1362.53, 0, 0, '', '2018-07-29 15:51:42', NULL, 9),
	(31, '2018-07-29 15:51:49', 9, 50.00, 'close', 594.36, 0, 0, 594.36, 0, 0, '', '2018-11-18 18:02:37', NULL, 9),
	(32, '2018-11-18 18:08:44', 9, 500.00, 'close', 659.00, 0, 0, 659.00, 0, 0, '', '2018-11-18 22:16:33', NULL, 9),
	(33, '2018-11-18 22:16:53', 9, 500.00, 'close', 625.00, 0, 0, 625.00, 0, 0, '', '2018-11-18 22:51:38', NULL, 9),
	(34, '2018-11-18 22:54:34', 9, 300.00, 'close', 300.00, 0, 0, 300.00, 0, 0, '', '2018-11-18 22:55:58', NULL, 9),
	(35, '2018-11-18 19:56:04', 9, 200.00, 'close', 484.00, 0, 0, 484.00, 0, 0, '', '2018-11-18 22:58:27', NULL, 9),
	(36, '2018-11-18 19:59:34', 9, 500.00, 'close', 1429.20, 0, 0, 1429.20, 0, 0, '', '2018-11-25 19:17:29', NULL, 9),
	(37, '2018-11-25 16:17:37', 9, 500.00, 'close', 765.30, 0, 0, 765.30, 0, 0, '', '2018-11-25 19:26:24', NULL, 9),
	(38, '2018-11-25 20:08:06', 9, 500.00, 'close', 500.00, 0, 0, 500.00, 0, 0, '', '2018-11-26 05:54:40', NULL, 9),
	(39, '2018-11-26 02:54:46', 9, 500.00, 'open', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(40, '2018-12-09 16:52:42', 12, 500.00, 'open', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(41, '2020-03-08 12:18:14', 10, 500.00, 'open', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
/*!40000 ALTER TABLE `tec_registers` ENABLE KEYS */;

-- Volcando estructura para tabla abarrotescruz.tec_sales
DROP TABLE IF EXISTS `tec_sales`;
CREATE TABLE IF NOT EXISTS `tec_sales` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` datetime NOT NULL,
  `customer_id` int(11) NOT NULL,
  `customer_name` varchar(55) NOT NULL,
  `total` decimal(25,2) NOT NULL,
  `product_discount` decimal(25,2) DEFAULT NULL,
  `order_discount_id` varchar(20) DEFAULT NULL,
  `order_discount` decimal(25,2) DEFAULT NULL,
  `total_discount` decimal(25,2) DEFAULT NULL,
  `product_tax` decimal(25,2) DEFAULT NULL,
  `order_tax_id` varchar(20) DEFAULT NULL,
  `order_tax` decimal(25,2) DEFAULT NULL,
  `total_tax` decimal(25,2) DEFAULT NULL,
  `grand_total` decimal(25,2) NOT NULL,
  `total_items` int(11) DEFAULT NULL,
  `total_quantity` decimal(15,2) DEFAULT NULL,
  `paid` decimal(25,2) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `note` varchar(1000) DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  `rounding` decimal(8,2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla abarrotescruz.tec_sales: ~5 rows (aproximadamente)
/*!40000 ALTER TABLE `tec_sales` DISABLE KEYS */;
INSERT INTO `tec_sales` (`id`, `date`, `customer_id`, `customer_name`, `total`, `product_discount`, `order_discount_id`, `order_discount`, `total_discount`, `product_tax`, `order_tax_id`, `order_tax`, `total_tax`, `grand_total`, `total_items`, `total_quantity`, `paid`, `created_by`, `updated_by`, `updated_at`, `note`, `status`, `rounding`) VALUES
	(1, '2020-03-09 22:55:56', 1, 'Cliente estandar', 19.00, 0.00, NULL, 0.00, 0.00, 0.00, NULL, 0.00, 0.00, 19.00, 1, 1.00, 49.00, 9, 9, '2020-03-09 22:57:33', '', NULL, 0.00),
	(2, '2020-03-09 23:17:24', 1, 'Cliente estandar', 24.00, 0.00, NULL, 0.00, 0.00, 0.00, NULL, 0.00, 0.00, 24.00, 1, 1.00, 24.00, 9, NULL, NULL, '', 'paid', 0.00),
	(3, '2020-03-09 23:17:59', 1, 'Cliente estandar', 24.00, 0.00, NULL, 0.00, 0.00, 0.00, NULL, 0.00, 0.00, 24.00, 1, 1.00, 24.00, 9, NULL, NULL, '', 'paid', 0.00),
	(4, '2020-03-10 13:42:57', 1, 'Cliente estandar', 34.00, 0.00, NULL, 0.00, 0.00, 0.00, NULL, 0.00, 0.00, 34.00, 1, 1.00, 34.00, 9, NULL, NULL, '', 'paid', 0.00),
	(5, '2020-03-10 13:43:44', 1, 'Cliente estandar', 19.00, 0.00, NULL, 0.00, 0.00, 0.00, NULL, 0.00, 0.00, 19.00, 1, 1.00, 19.00, 9, NULL, NULL, '', 'paid', 0.00);
/*!40000 ALTER TABLE `tec_sales` ENABLE KEYS */;

-- Volcando estructura para tabla abarrotescruz.tec_sale_items
DROP TABLE IF EXISTS `tec_sale_items`;
CREATE TABLE IF NOT EXISTS `tec_sale_items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sale_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` decimal(15,2) NOT NULL,
  `unit_price` decimal(25,2) NOT NULL,
  `net_unit_price` decimal(25,2) NOT NULL,
  `discount` varchar(20) DEFAULT NULL,
  `item_discount` decimal(25,2) DEFAULT NULL,
  `tax` int(20) DEFAULT NULL,
  `item_tax` decimal(25,2) DEFAULT NULL,
  `subtotal` decimal(25,2) NOT NULL,
  `real_unit_price` decimal(25,2) DEFAULT NULL,
  `cost` decimal(25,2) DEFAULT '0.00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla abarrotescruz.tec_sale_items: ~5 rows (aproximadamente)
/*!40000 ALTER TABLE `tec_sale_items` DISABLE KEYS */;
INSERT INTO `tec_sale_items` (`id`, `sale_id`, `product_id`, `quantity`, `unit_price`, `net_unit_price`, `discount`, `item_discount`, `tax`, `item_tax`, `subtotal`, `real_unit_price`, `cost`) VALUES
	(3, 1, 45603, 1.00, 19.00, 19.00, '0', 0.00, 0, 0.00, 19.00, 19.00, 15.00),
	(4, 2, 46678, 1.00, 24.00, 24.00, '0', 0.00, 0, 0.00, 24.00, 24.00, 20.00),
	(5, 3, 46678, 1.00, 24.00, 24.00, '0', 0.00, 0, 0.00, 24.00, 24.00, 20.00),
	(6, 4, 46584, 1.00, 34.00, 34.00, '0', 0.00, 0, 0.00, 34.00, 34.00, 30.00),
	(7, 5, 45603, 1.00, 19.00, 19.00, '0', 0.00, 0, 0.00, 19.00, 19.00, 15.00);
/*!40000 ALTER TABLE `tec_sale_items` ENABLE KEYS */;

-- Volcando estructura para tabla abarrotescruz.tec_sessions
DROP TABLE IF EXISTS `tec_sessions`;
CREATE TABLE IF NOT EXISTS `tec_sessions` (
  `id` varchar(40) NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `timestamp` int(10) unsigned NOT NULL DEFAULT '0',
  `data` blob NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ci_sessions_timestamp` (`timestamp`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla abarrotescruz.tec_sessions: ~14 rows (aproximadamente)
/*!40000 ALTER TABLE `tec_sessions` DISABLE KEYS */;
INSERT INTO `tec_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES
	('0bb6d04343c9ae67839e4acf612f35f4f43b2635', '187.221.89.206', 1545010010, _binary ''),
	('1bede75aabe78f1bfce9874485914be16f2e9947', '187.221.112.136', 1544398939, _binary ''),
	('2a35e7d710d7913f3e701bc76a710f861ea04322', '127.0.0.1', 1583506761, _binary ''),
	('46dd6b73434e9386df1f32671a400899b0d7557a', '::1', 1583818217, _binary 0x6964656E746974797C733A31333A227573657240757365722E636F6D223B757365726E616D657C733A353A2261646D696E223B656D61696C7C733A31333A227573657240757365722E636F6D223B757365725F69647C733A313A2239223B66697273745F6E616D657C733A353A2261646D696E223B6C6173745F6E616D657C733A353A2261646D696E223B637265617465645F6F6E7C733A32323A2231322F30342F323031372031313A33353A343920414D223B6F6C645F6C6173745F6C6F67696E7C733A31303A2231353833383038333137223B6C6173745F69707C733A333A223A3A31223B6176617461727C4E3B67656E6465727C733A343A226D616C65223B67726F75705F69647C733A313A2231223B72656769737465725F69647C733A323A223339223B636173685F696E5F68616E647C733A363A223530302E3030223B72656769737465725F6F70656E5F74696D657C733A31393A22323031382D31312D32362030323A35343A3436223B),
	('49805b0f2953db25a94e1bba4c14494ee04c6f3d', '::1', 1583869458, _binary 0x6964656E746974797C733A31333A227573657240757365722E636F6D223B757365726E616D657C733A353A2261646D696E223B656D61696C7C733A31333A227573657240757365722E636F6D223B757365725F69647C733A313A2239223B66697273745F6E616D657C733A353A2261646D696E223B6C6173745F6E616D657C733A353A2261646D696E223B637265617465645F6F6E7C733A32323A2231322F30342F323031372031313A33353A343920414D223B6F6C645F6C6173745F6C6F67696E7C733A31303A2231353833383138313735223B6C6173745F69707C733A333A223A3A31223B6176617461727C4E3B67656E6465727C733A343A226D616C65223B67726F75705F69647C733A313A2231223B72656769737465725F69647C733A323A223339223B636173685F696E5F68616E647C733A363A223530302E3030223B72656769737465725F6F70656E5F74696D657C733A31393A22323031382D31312D32362030323A35343A3436223B),
	('76d35184c406f0162fca7d057bbdaa57cf699993', '189.191.96.71', 1544924934, _binary ''),
	('7edff87686be19afbdaa4b11af4d90a1a8932b41', '187.221.89.206', 1545015490, _binary ''),
	('a38ea80a35d89cf4d25f653145785f404988d1da', '::1', 1583476018, _binary ''),
	('a6721b120ba1643b25aec7c58783bc63c2a9188c', '127.0.0.1', 1583646348, _binary 0x6964656E746974797C733A31333A227573657240757365722E636F6D223B757365726E616D657C733A353A2261646D696E223B656D61696C7C733A31333A227573657240757365722E636F6D223B757365725F69647C733A313A2239223B66697273745F6E616D657C733A353A2261646D696E223B6C6173745F6E616D657C733A353A2261646D696E223B637265617465645F6F6E7C733A32323A2231322F30342F323031372031313A33353A343920414D223B6F6C645F6C6173745F6C6F67696E7C733A31303A2231353435303135343333223B6C6173745F69707C733A31343A223138372E3232312E38392E323036223B6176617461727C4E3B67656E6465727C733A343A226D616C65223B67726F75705F69647C733A313A2231223B72656769737465725F69647C733A323A223339223B636173685F696E5F68616E647C733A363A223530302E3030223B72656769737465725F6F70656E5F74696D657C733A31393A22323031382D31312D32362030323A35343A3436223B),
	('b3efb69165c52e86f52ac1f2313d1a6041bb4405', '::1', 1583696501, _binary 0x6964656E746974797C733A31333A227573657240757365722E636F6D223B757365726E616D657C733A353A2261646D696E223B656D61696C7C733A31333A227573657240757365722E636F6D223B757365725F69647C733A313A2239223B66697273745F6E616D657C733A353A2261646D696E223B6C6173745F6E616D657C733A353A2261646D696E223B637265617465645F6F6E7C733A32323A2231322F30342F323031372031313A33353A343920414D223B6F6C645F6C6173745F6C6F67696E7C733A31303A2231353833363432333132223B6C6173745F69707C733A393A223132372E302E302E31223B6176617461727C4E3B67656E6465727C733A343A226D616C65223B67726F75705F69647C733A313A2231223B72656769737465725F69647C733A323A223339223B636173685F696E5F68616E647C733A363A223530302E3030223B72656769737465725F6F70656E5F74696D657C733A31393A22323031382D31312D32362030323A35343A3436223B),
	('bfcf15a5f006e3c272b3064e5af057b751365492', '::1', 1583731902, _binary 0x6964656E746974797C733A32343A226A636372757A73616E6368657A3840676D61696C2E636F6D223B757365726E616D657C733A32343A226A636372757A73616E6368657A3840676D61696C2E636F6D223B656D61696C7C733A32343A226A636372757A73616E6368657A3840676D61696C2E636F6D223B757365725F69647C733A323A223130223B66697273745F6E616D657C733A353A224A75616E20223B6C6173745F6E616D657C733A363A224361726C6F73223B637265617465645F6F6E7C733A32323A2230382F30332F323032302030323A30363A323720414D223B6F6C645F6C6173745F6C6F67696E7C733A31303A2231353833363931343835223B6C6173745F69707C733A333A223A3A31223B6176617461727C4E3B67656E6465727C733A343A226D616C65223B67726F75705F69647C733A313A2232223B72656769737465725F69647C733A323A223431223B636173685F696E5F68616E647C733A363A223530302E3030223B72656769737465725F6F70656E5F74696D657C733A31393A22323032302D30332D30382031323A31383A3134223B),
	('ce7022cfd8fe86893169f7ec936a06460d47fa59', '::1', 1583869310, _binary ''),
	('e74523442c4e061a000c12dd795ad7661c8014e4', '187.221.112.136', 1544398662, _binary 0x6964656E746974797C733A31333A227573657240757365722E636F6D223B757365726E616D657C733A353A2261646D696E223B656D61696C7C733A31333A227573657240757365722E636F6D223B757365725F69647C733A313A2239223B66697273745F6E616D657C733A353A2261646D696E223B6C6173745F6E616D657C733A353A2261646D696E223B637265617465645F6F6E7C733A32323A2231322F30342F323031372031313A33353A343920414D223B6F6C645F6C6173745F6C6F67696E7C733A31303A2231353434333838373633223B6C6173745F69707C733A31353A223138372E3232312E3131322E313336223B6176617461727C4E3B67656E6465727C733A343A226D616C65223B67726F75705F69647C733A313A2231223B72656769737465725F69647C733A323A223339223B636173685F696E5F68616E647C733A363A223530302E3030223B72656769737465725F6F70656E5F74696D657C733A31393A22323031382D31312D32352032313A35343A3436223B),
	('f3d665f5316fd68aadbed18eaf69c85dc8097aeb', '187.221.89.206', 1545015415, _binary '');
/*!40000 ALTER TABLE `tec_sessions` ENABLE KEYS */;

-- Volcando estructura para tabla abarrotescruz.tec_settings
DROP TABLE IF EXISTS `tec_settings`;
CREATE TABLE IF NOT EXISTS `tec_settings` (
  `setting_id` int(1) NOT NULL,
  `logo` varchar(255) NOT NULL,
  `site_name` varchar(55) NOT NULL,
  `tel` varchar(20) NOT NULL,
  `dateformat` varchar(20) DEFAULT NULL,
  `timeformat` varchar(20) DEFAULT NULL,
  `default_email` varchar(100) NOT NULL,
  `language` varchar(20) NOT NULL,
  `version` varchar(5) NOT NULL DEFAULT '1.0',
  `theme` varchar(20) NOT NULL,
  `timezone` varchar(255) NOT NULL DEFAULT '0',
  `protocol` varchar(20) NOT NULL DEFAULT 'mail',
  `smtp_host` varchar(255) DEFAULT NULL,
  `smtp_user` varchar(100) DEFAULT NULL,
  `smtp_pass` varchar(255) DEFAULT NULL,
  `smtp_port` varchar(10) DEFAULT '25',
  `smtp_crypto` varchar(5) DEFAULT NULL,
  `mmode` tinyint(1) NOT NULL,
  `captcha` tinyint(1) NOT NULL DEFAULT '1',
  `mailpath` varchar(55) DEFAULT NULL,
  `currency_prefix` varchar(3) NOT NULL,
  `default_customer` int(11) NOT NULL,
  `default_tax_rate` varchar(20) NOT NULL,
  `rows_per_page` int(2) NOT NULL,
  `total_rows` int(2) NOT NULL,
  `header` varchar(1000) NOT NULL,
  `footer` varchar(1000) NOT NULL,
  `bsty` tinyint(4) NOT NULL,
  `display_kb` tinyint(4) NOT NULL,
  `default_category` int(11) NOT NULL,
  `default_discount` varchar(20) NOT NULL,
  `item_addition` tinyint(1) NOT NULL,
  `barcode_symbology` varchar(55) NOT NULL,
  `pro_limit` tinyint(4) NOT NULL,
  `decimals` tinyint(1) NOT NULL DEFAULT '2',
  `thousands_sep` varchar(2) NOT NULL DEFAULT ',',
  `decimals_sep` varchar(2) NOT NULL DEFAULT '.',
  `focus_add_item` varchar(55) DEFAULT NULL,
  `add_customer` varchar(55) DEFAULT NULL,
  `toggle_category_slider` varchar(55) DEFAULT NULL,
  `cancel_sale` varchar(55) DEFAULT NULL,
  `suspend_sale` varchar(55) DEFAULT NULL,
  `print_order` varchar(55) DEFAULT NULL,
  `print_bill` varchar(55) DEFAULT NULL,
  `finalize_sale` varchar(55) DEFAULT NULL,
  `today_sale` varchar(55) DEFAULT NULL,
  `open_hold_bills` varchar(55) DEFAULT NULL,
  `close_register` varchar(55) DEFAULT NULL,
  `java_applet` tinyint(1) NOT NULL,
  `receipt_printer` varchar(55) DEFAULT NULL,
  `pos_printers` varchar(255) DEFAULT NULL,
  `cash_drawer_codes` varchar(55) DEFAULT NULL,
  `char_per_line` tinyint(4) DEFAULT '42',
  `rounding` tinyint(1) DEFAULT '0',
  `pin_code` varchar(20) DEFAULT NULL,
  `stripe` tinyint(1) DEFAULT NULL,
  `stripe_secret_key` varchar(100) DEFAULT NULL,
  `stripe_publishable_key` varchar(100) DEFAULT NULL,
  `purchase_code` varchar(100) DEFAULT NULL,
  `envato_username` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`setting_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla abarrotescruz.tec_settings: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `tec_settings` DISABLE KEYS */;
INSERT INTO `tec_settings` (`setting_id`, `logo`, `site_name`, `tel`, `dateformat`, `timeformat`, `default_email`, `language`, `version`, `theme`, `timezone`, `protocol`, `smtp_host`, `smtp_user`, `smtp_pass`, `smtp_port`, `smtp_crypto`, `mmode`, `captcha`, `mailpath`, `currency_prefix`, `default_customer`, `default_tax_rate`, `rows_per_page`, `total_rows`, `header`, `footer`, `bsty`, `display_kb`, `default_category`, `default_discount`, `item_addition`, `barcode_symbology`, `pro_limit`, `decimals`, `thousands_sep`, `decimals_sep`, `focus_add_item`, `add_customer`, `toggle_category_slider`, `cancel_sale`, `suspend_sale`, `print_order`, `print_bill`, `finalize_sale`, `today_sale`, `open_hold_bills`, `close_register`, `java_applet`, `receipt_printer`, `pos_printers`, `cash_drawer_codes`, `char_per_line`, `rounding`, `pin_code`, `stripe`, `stripe_secret_key`, `stripe_publishable_key`, `purchase_code`, `envato_username`) VALUES
	(1, 'icono-empresa1.png', 'Negocio pos', '5452512554', 'd/m/Y', 'h:i:s A', 'sdsddsd@hotmail.com', 'portugues', '4.0', 'default', 'Amercia/Belem', 'mail', 'pop.gmail.com', 'geraldopatricio.melo@gmail.com', '', '25', '', 0, 0, NULL, '$ ', 1, '0', 25, 30, '<h2>Súper Abarrotes Cruz</h2>Ocosingo, Chis.  CP. 29950<br>Quinta Oriente Norte<br>Barrio Santa Lucíca<br>TEL: 9191201104<br>', 'Muchas gracias por su compra', 3, 0, 5, '0', 1, '', 100, 2, ',', '.', 'F7', 'ALT+F2', 'ALT+F10', 'F3', 'F2', 'F6', 'F4', 'F1', 'Ctrl+F1', 'F5', 'ALT+F7', 0, '', '', '', 42, 0, '1234', 0, 'sk_test_jHf4cEzAYtgcXvgWPCsQAn50', 'pk_test_beat8SWPORb0OVdF2H77A7uG', 'ff2400d9-f3aa-4db5-9dc5-4eee236c6254', 'patriciomelo');
/*!40000 ALTER TABLE `tec_settings` ENABLE KEYS */;

-- Volcando estructura para tabla abarrotescruz.tec_suppliers
DROP TABLE IF EXISTS `tec_suppliers`;
CREATE TABLE IF NOT EXISTS `tec_suppliers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(55) NOT NULL,
  `cf1` varchar(255) NOT NULL,
  `cf2` varchar(255) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `email` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla abarrotescruz.tec_suppliers: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `tec_suppliers` DISABLE KEYS */;
INSERT INTO `tec_suppliers` (`id`, `name`, `cf1`, `cf2`, `phone`, `email`) VALUES
	(2, 'Coca cola S.A. DE C.V.', '03184809307', '', '8899874257', 'thiagoeps@gmail.com');
/*!40000 ALTER TABLE `tec_suppliers` ENABLE KEYS */;

-- Volcando estructura para tabla abarrotescruz.tec_suspended_items
DROP TABLE IF EXISTS `tec_suspended_items`;
CREATE TABLE IF NOT EXISTS `tec_suspended_items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `suspend_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` decimal(15,2) NOT NULL,
  `unit_price` decimal(25,2) NOT NULL,
  `net_unit_price` decimal(25,2) NOT NULL,
  `discount` varchar(20) DEFAULT NULL,
  `item_discount` decimal(25,2) DEFAULT NULL,
  `tax` int(20) DEFAULT NULL,
  `item_tax` decimal(25,2) DEFAULT NULL,
  `subtotal` decimal(25,2) NOT NULL,
  `real_unit_price` decimal(25,2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla abarrotescruz.tec_suspended_items: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `tec_suspended_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `tec_suspended_items` ENABLE KEYS */;

-- Volcando estructura para tabla abarrotescruz.tec_suspended_sales
DROP TABLE IF EXISTS `tec_suspended_sales`;
CREATE TABLE IF NOT EXISTS `tec_suspended_sales` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` datetime NOT NULL,
  `customer_id` int(11) NOT NULL,
  `customer_name` varchar(55) NOT NULL,
  `total` decimal(25,2) NOT NULL,
  `product_discount` decimal(25,2) DEFAULT NULL,
  `order_discount_id` varchar(20) DEFAULT NULL,
  `order_discount` decimal(25,2) DEFAULT NULL,
  `total_discount` decimal(25,2) DEFAULT NULL,
  `product_tax` decimal(25,2) DEFAULT NULL,
  `order_tax_id` varchar(20) DEFAULT NULL,
  `order_tax` decimal(25,2) DEFAULT NULL,
  `total_tax` decimal(25,2) DEFAULT NULL,
  `grand_total` decimal(25,2) NOT NULL,
  `total_items` int(11) DEFAULT NULL,
  `total_quantity` decimal(15,2) DEFAULT NULL,
  `paid` decimal(25,2) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `note` varchar(1000) DEFAULT NULL,
  `hold_ref` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla abarrotescruz.tec_suspended_sales: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `tec_suspended_sales` DISABLE KEYS */;
/*!40000 ALTER TABLE `tec_suspended_sales` ENABLE KEYS */;

-- Volcando estructura para tabla abarrotescruz.tec_users
DROP TABLE IF EXISTS `tec_users`;
CREATE TABLE IF NOT EXISTS `tec_users` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `last_ip_address` varbinary(45) DEFAULT NULL,
  `ip_address` varbinary(45) DEFAULT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(40) NOT NULL,
  `salt` varchar(40) DEFAULT NULL,
  `email` varchar(100) NOT NULL,
  `activation_code` varchar(40) DEFAULT NULL,
  `forgotten_password_code` varchar(40) DEFAULT NULL,
  `forgotten_password_time` int(11) unsigned DEFAULT NULL,
  `remember_code` varchar(40) DEFAULT NULL,
  `created_on` int(11) unsigned NOT NULL,
  `last_login` int(11) unsigned DEFAULT NULL,
  `active` tinyint(1) unsigned DEFAULT NULL,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `company` varchar(100) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `avatar` varchar(55) DEFAULT NULL,
  `gender` varchar(20) DEFAULT NULL,
  `group_id` int(11) unsigned NOT NULL DEFAULT '2',
  PRIMARY KEY (`id`),
  KEY `group_id` (`group_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla abarrotescruz.tec_users: ~2 rows (aproximadamente)
/*!40000 ALTER TABLE `tec_users` DISABLE KEYS */;
INSERT INTO `tec_users` (`id`, `last_ip_address`, `ip_address`, `username`, `password`, `salt`, `email`, `activation_code`, `forgotten_password_code`, `forgotten_password_time`, `remember_code`, `created_on`, `last_login`, `active`, `first_name`, `last_name`, `company`, `phone`, `avatar`, `gender`, `group_id`) VALUES
	(9, _binary 0x3A3A31, _binary 0x3A3A31, 'admin', 'eba5cb0600f9e080d87bb7a0e831800c7d9eff88', NULL, 'user@user.com', NULL, NULL, NULL, NULL, 1492007749, 1583869319, 1, 'admin', 'admin', NULL, '111111111111', NULL, 'male', 1),
	(10, _binary 0x3A3A31, _binary 0x3132372E302E302E31, 'jccruzsanchez8@gmail.com', '2abbee37415a3a1ca5fb80a40f1ec08a1687f58b', NULL, 'jccruzsanchez8@gmail.com', NULL, NULL, NULL, NULL, 1583643987, 1583808164, 1, 'Juan ', 'Carlos', NULL, '9191201104', NULL, 'male', 2);
/*!40000 ALTER TABLE `tec_users` ENABLE KEYS */;

-- Volcando estructura para tabla abarrotescruz.tec_user_logins
DROP TABLE IF EXISTS `tec_user_logins`;
CREATE TABLE IF NOT EXISTS `tec_user_logins` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `company_id` int(11) DEFAULT NULL,
  `ip_address` varbinary(16) NOT NULL,
  `login` varchar(100) NOT NULL,
  `time` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=395 DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla abarrotescruz.tec_user_logins: ~386 rows (aproximadamente)
/*!40000 ALTER TABLE `tec_user_logins` DISABLE KEYS */;
INSERT INTO `tec_user_logins` (`id`, `user_id`, `company_id`, `ip_address`, `login`, `time`) VALUES
	(1, 1, NULL, _binary 0x3A3A31, 'geraldopatricio.melo@gmail.com', '2015-11-02 12:33:39'),
	(2, 1, NULL, _binary 0x3A3A31, 'geraldopatricio.melo@gmail.com', '2015-11-02 12:53:18'),
	(3, 1, NULL, _binary 0x3A3A31, 'geraldopatricio.melo@gmail.com', '2015-11-02 13:15:21'),
	(4, 1, NULL, _binary 0x3A3A31, 'geraldopatricio.melo@gmail.com', '2015-11-02 13:15:30'),
	(5, 1, NULL, _binary 0x3139312E3230372E3135392E313737, 'geraldopatricio.melo@gmail.com', '2015-11-02 22:20:35'),
	(6, 1, NULL, _binary 0x3139312E3230372E3135392E313737, 'geraldopatricio.melo@gmail.com', '2015-11-02 22:30:36'),
	(7, 1, NULL, _binary 0x3139312E3230372E3135392E313737, 'geraldopatricio.melo@gmail.com', '2015-11-02 22:31:22'),
	(8, 1, NULL, _binary 0x3138392E38392E3235302E313934, 'geraldopatricio.melo@gmail.com', '2015-11-03 12:34:44'),
	(9, 1, NULL, _binary 0x3137372E3134352E352E313135, 'geraldopatricio.melo@gmail.com', '2015-11-11 20:38:46'),
	(10, 1, NULL, _binary 0x3230302E3232322E32312E313338, 'geraldopatricio.melo@gmail.com', '2015-11-25 10:45:05'),
	(11, 1, NULL, _binary 0x3138372E3131362E3233312E313231, 'geraldopatricio.melo@gmail.com', '2015-12-12 03:37:53'),
	(12, 2, NULL, _binary 0x3138372E3131342E39302E3834, 'pdv@pdvparatodos.com.br', '2015-12-12 19:59:25'),
	(13, 1, NULL, _binary 0x3138392E38392E3235302E313934, 'geraldopatricio.melo@gmail.com', '2016-01-16 13:56:15'),
	(14, 1, NULL, _binary 0x3138392E38392E3235302E313934, 'geraldopatricio.melo@gmail.com', '2016-01-21 16:22:16'),
	(15, 1, NULL, _binary 0x3138392E38392E3235302E313934, 'geraldopatricio.melo@gmail.com', '2016-01-21 19:06:56'),
	(16, 1, NULL, _binary 0x3138392E38392E3235302E313934, 'geraldopatricio.melo@gmail.com', '2016-01-22 14:44:26'),
	(17, 1, NULL, _binary 0x3137372E3137322E31362E323232, 'geraldopatricio.melo@gmail.com', '2016-01-22 15:06:16'),
	(18, 1, NULL, _binary 0x3138392E38392E3235302E313934, 'geraldopatricio.melo@gmail.com', '2016-01-22 18:29:43'),
	(19, 1, NULL, _binary 0x3137372E3137322E31362E323232, 'geraldopatricio.melo@gmail.com', '2016-01-22 22:51:12'),
	(20, 1, NULL, _binary 0x3139312E3139352E3235302E3333, 'geraldopatricio.melo@gmail.com', '2016-01-25 23:15:36'),
	(21, 1, NULL, _binary 0x3137392E3130302E3133362E3737, 'geraldopatricio.melo@gmail.com', '2016-01-26 00:11:10'),
	(22, 1, NULL, _binary 0x3137392E3130302E3133362E3737, 'geraldopatricio.melo@gmail.com', '2016-01-26 00:11:52'),
	(23, 1, NULL, _binary 0x3137392E3130302E3133362E3737, 'geraldopatricio.melo@gmail.com', '2016-01-26 00:49:37'),
	(24, 1, NULL, _binary 0x3137392E3130302E3133362E3737, 'geraldopatricio.melo@gmail.com', '2016-01-26 00:49:56'),
	(25, 1, NULL, _binary 0x3137392E3130302E3133362E3737, 'geraldopatricio.melo@gmail.com', '2016-01-26 00:59:18'),
	(26, 1, NULL, _binary 0x3137392E3130302E3133362E3737, 'geraldopatricio.melo@gmail.com', '2016-01-26 01:01:39'),
	(27, 1, NULL, _binary 0x3A3A31, 'geraldopatricio.melo@gmail.com', '2016-03-05 15:12:12'),
	(28, 1, NULL, _binary 0x3A3A31, 'geraldopatricio.melo@gmail.com', '2016-03-05 15:12:12'),
	(29, 1, NULL, _binary 0x3A3A31, 'geraldopatricio.melo@gmail.com', '2016-03-05 15:43:30'),
	(30, 3, NULL, _binary 0x3A3A31, 'contato@scriptcerto.com.br', '2016-03-05 15:48:06'),
	(31, 3, NULL, _binary 0x3A3A31, 'contato@scriptcerto.com.br', '2016-03-05 22:20:49'),
	(32, 2, NULL, _binary 0x3A3A31, 'pdv@pdvparatodos.com.br', '2016-03-05 23:32:51'),
	(33, 3, NULL, _binary 0x3A3A31, 'contato@scriptcerto.com.br', '2016-03-06 06:15:29'),
	(34, 2, NULL, _binary 0x3A3A31, 'pdv@pdvparatodos.com.br', '2016-03-07 21:56:57'),
	(35, 2, NULL, _binary 0x3A3A31, 'pdv@pdvparatodos.com.br', '2016-03-08 01:39:04'),
	(36, 3, NULL, _binary 0x3A3A31, 'contato@scriptcerto.com.br', '2016-03-08 19:34:35'),
	(37, 3, NULL, _binary 0x3A3A31, 'contato@scriptcerto.com.br', '2016-03-09 01:08:22'),
	(38, 3, NULL, _binary 0x3136382E39302E38382E3432, 'contato@scriptcerto.com.br', '2016-03-29 13:47:27'),
	(39, 4, NULL, _binary 0x3136382E39302E38382E3432, 'jrnext@outlook.com', '2016-03-29 14:18:08'),
	(40, 5, NULL, _binary 0x3136382E39302E38382E3432, 'admin@admin.com', '2016-03-29 14:30:35'),
	(41, 4, NULL, _binary 0x3138372E34312E3139362E313136, 'jrnext@outlook.com', '2016-03-29 18:22:52'),
	(42, 4, NULL, _binary 0x3138372E36322E3135392E3636, 'jrnext@outlook.com', '2016-03-30 02:05:45'),
	(43, 4, NULL, _binary 0x3138372E31342E3233372E3638, 'jrnext@outlook.com', '2016-03-30 10:20:10'),
	(44, 4, NULL, _binary 0x3138372E36322E3135392E3636, 'jrnext@outlook.com', '2016-03-30 10:31:41'),
	(45, 4, NULL, _binary 0x3137372E3138332E3233342E323133, 'jrnext@outlook.com', '2016-03-30 10:55:00'),
	(46, 4, NULL, _binary 0x3137372E35352E3234312E323037, 'jrnext@outlook.com', '2016-03-30 11:14:20'),
	(47, 4, NULL, _binary 0x3137372E3230372E3233372E3533, 'jrnext@outlook.com', '2016-03-30 13:04:31'),
	(48, 5, NULL, _binary 0x3138372E36322E3135392E3636, 'admin@admin.com', '2016-03-30 13:09:01'),
	(49, 4, NULL, _binary 0x3137372E35352E3234312E323037, 'jrnext@outlook.com', '2016-03-30 22:24:31'),
	(50, 4, NULL, _binary 0x3137372E35352E3234312E323037, 'jrnext@outlook.com', '2016-03-30 23:10:05'),
	(51, 5, NULL, _binary 0x3137392E3132352E35312E323530, 'admin@admin.com', '2016-03-31 00:00:32'),
	(52, 5, NULL, _binary 0x3137392E3132352E35312E323530, 'admin@admin.com', '2016-03-31 00:42:32'),
	(53, 4, NULL, _binary 0x3136382E39302E38382E3432, 'jrnext@outlook.com', '2016-03-31 14:27:20'),
	(54, 5, NULL, _binary 0x3138392E31322E3233392E3539, 'admin@admin.com', '2016-03-31 15:04:56'),
	(55, 5, NULL, _binary 0x3138372E3132332E3137332E323037, 'admin@admin.com', '2016-03-31 20:09:36'),
	(56, 5, NULL, _binary 0x3138372E3132332E3137332E323037, 'admin@admin.com', '2016-03-31 20:50:27'),
	(57, 5, NULL, _binary 0x3137392E3138332E3137332E3333, 'admin@admin.com', '2016-03-31 23:59:01'),
	(58, 4, NULL, _binary 0x3137392E3139372E3232322E313436, 'jrnext@outlook.com', '2016-04-01 00:18:22'),
	(59, 5, NULL, _binary 0x3230312E312E37302E3735, 'admin@admin.com', '2016-04-01 01:58:38'),
	(60, 6, NULL, _binary 0x3230312E312E37302E3735, 'lojadecriacao@hotmail.com', '2016-04-01 02:01:20'),
	(61, 5, NULL, _binary 0x3138372E3132332E3137332E323037, 'admin@admin.com', '2016-04-01 02:06:27'),
	(62, 6, NULL, _binary 0x3230312E312E37302E3735, 'lojadecriacao@hotmail.com', '2016-04-01 02:06:55'),
	(63, 5, NULL, _binary 0x3230312E312E37302E3735, 'admin@admin.com', '2016-04-01 02:55:29'),
	(64, 5, NULL, _binary 0x3138372E34312E3230352E313136, 'admin@admin.com', '2016-04-01 13:49:52'),
	(65, 4, NULL, _binary 0x3138372E36322E3135392E3636, 'jrnext@outlook.com', '2016-04-01 16:37:38'),
	(66, 4, NULL, _binary 0x3138372E36322E3135392E3636, 'jrnext@outlook.com', '2016-04-01 17:09:28'),
	(67, 4, NULL, _binary 0x3137392E3132372E3230302E3138, 'cadprojetos@live.com', '2016-04-01 19:55:27'),
	(68, 4, NULL, _binary 0x3137392E3132372E3230302E3138, 'cadprojetos@live.com', '2016-04-02 13:55:13'),
	(69, 4, NULL, _binary 0x3137392E3132372E3230302E3138, 'cadprojetos@live.com', '2016-04-04 20:54:14'),
	(70, 4, NULL, _binary 0x3137392E3132372E3230302E3138, 'cadprojetos@live.com', '2016-04-07 12:25:54'),
	(71, 4, NULL, _binary 0x3137392E3132372E3230352E3538, 'cadprojetos@live.com', '2016-04-10 13:00:50'),
	(72, 7, NULL, _binary 0x3130372E3136372E3131322E3732, 'teste@teste.com', '2016-04-10 13:03:28'),
	(73, 7, NULL, _binary 0x3137372E3132352E3132302E3432, 'teste@teste.com', '2016-04-10 13:41:34'),
	(74, 7, NULL, _binary 0x3137372E3132352E3132302E3432, 'teste@teste.com', '2016-04-10 14:08:40'),
	(75, 7, NULL, _binary 0x3137372E3132352E3132302E3432, 'teste@teste.com', '2016-04-10 14:20:51'),
	(76, 7, NULL, _binary 0x3137372E3132352E3132302E3432, 'teste@teste.com', '2016-04-10 14:21:26'),
	(77, 7, NULL, _binary 0x3137372E3132352E3132302E3432, 'teste@teste.com', '2016-04-10 14:22:02'),
	(78, 7, NULL, _binary 0x3137372E3132352E3132302E3432, 'teste@teste.com', '2016-04-10 14:29:48'),
	(79, 4, NULL, _binary 0x3137392E3132372E3230352E3538, 'cadprojetos@live.com', '2016-04-11 16:57:18'),
	(80, 7, NULL, _binary 0x3137372E3132352E3132302E3432, 'teste@teste.com', '2016-04-12 18:46:02'),
	(81, 4, NULL, _binary 0x3137392E3132372E3230352E3538, 'cadprojetos@live.com', '2016-04-12 23:42:19'),
	(82, 4, NULL, _binary 0x3137392E3132372E3230352E3538, 'cadprojetos@live.com', '2016-04-13 01:26:13'),
	(83, 4, NULL, _binary 0x3137392E3132372E3230352E3538, 'cadprojetos@live.com', '2016-04-13 11:28:10'),
	(84, 4, NULL, _binary 0x3137392E3132372E3230352E3538, 'cadprojetos@live.com', '2016-04-13 11:45:36'),
	(85, 4, NULL, _binary 0x3138372E36322E3135392E3636, 'cadprojetos@live.com', '2016-04-13 11:51:16'),
	(86, 4, NULL, _binary 0x3137392E3132372E3230352E3538, 'cadprojetos@live.com', '2016-04-13 13:11:01'),
	(87, 4, NULL, _binary 0x3137392E3132372E3230352E3538, 'cadprojetos@live.com', '2016-04-13 17:41:11'),
	(88, 4, NULL, _binary 0x3A3A31, 'cadprojetos@live.com', '2017-04-03 16:06:40'),
	(89, 8, NULL, _binary 0x3A3A31, 'areanerdx@areanerdx.com', '2017-04-03 16:15:36'),
	(90, 8, NULL, _binary 0x3132372E302E302E31, 'areanerdx@areanerdx.com', '2017-04-03 16:39:34'),
	(91, 8, NULL, _binary 0x3A3A31, 'areanerdx@areanerdx.com', '2017-04-12 14:32:08'),
	(92, 9, NULL, _binary 0x3A3A31, 'user@user.com', '2017-04-12 14:36:17'),
	(93, 8, NULL, _binary 0x3A3A31, 'areanerdx@areanerdx.com', '2017-04-12 16:29:50'),
	(94, 8, NULL, _binary 0x3A3A31, 'areanerdx@areanerdx.com', '2017-04-12 17:15:53'),
	(95, 8, NULL, _binary 0x3A3A31, 'areanerdx@areanerdx.com', '2017-12-07 21:42:40'),
	(96, 8, NULL, _binary 0x3132372E302E302E31, 'areanerdx@areanerdx.com', '2017-12-07 21:57:42'),
	(97, 8, NULL, _binary 0x3A3A31, 'areanerdx@areanerdx.com', '2017-12-07 22:03:03'),
	(98, 10, NULL, _binary 0x3A3A31, 'miguelito_12jul@hotmail.com', '2017-12-07 22:04:12'),
	(99, 8, NULL, _binary 0x3A3A31, 'areanerdx@areanerdx.com', '2017-12-07 22:04:29'),
	(100, 8, NULL, _binary 0x3A3A31, 'areanerdx@areanerdx.com', '2017-12-07 22:14:14'),
	(101, 8, NULL, _binary 0x3A3A31, 'areanerdx@areanerdx.com', '2017-12-26 23:07:21'),
	(102, 8, NULL, _binary 0x3A3A31, 'areanerdx@areanerdx.com', '2017-12-28 00:43:05'),
	(103, 8, NULL, _binary 0x3A3A31, 'areanerdx@areanerdx.com', '2017-12-29 01:22:39'),
	(104, 8, NULL, _binary 0x3A3A31, 'areanerdx@areanerdx.com', '2017-12-29 01:26:45'),
	(105, 8, NULL, _binary 0x3A3A31, 'areanerdx@areanerdx.com', '2017-12-29 01:36:02'),
	(106, 8, NULL, _binary 0x3A3A31, 'areanerdx@areanerdx.com', '2017-12-29 01:41:10'),
	(107, 8, NULL, _binary 0x3A3A31, 'areanerdx@areanerdx.com', '2018-01-02 02:42:07'),
	(108, 8, NULL, _binary 0x3A3A31, 'areanerdx@areanerdx.com', '2018-01-02 03:01:19'),
	(109, 8, NULL, _binary 0x3A3A31, 'areanerdx@areanerdx.com', '2018-01-02 03:06:26'),
	(110, 8, NULL, _binary 0x3A3A31, 'areanerdx@areanerdx.com', '2018-01-02 03:12:01'),
	(111, 8, NULL, _binary 0x3A3A31, 'areanerdx@areanerdx.com', '2018-01-02 03:15:09'),
	(112, 8, NULL, _binary 0x3A3A31, 'areanerdx@areanerdx.com', '2018-01-02 03:20:57'),
	(113, 8, NULL, _binary 0x3A3A31, 'areanerdx@areanerdx.com', '2018-01-02 03:26:10'),
	(114, 8, NULL, _binary 0x3A3A31, 'areanerdx@areanerdx.com', '2018-01-02 03:32:31'),
	(115, 8, NULL, _binary 0x3A3A31, 'areanerdx@areanerdx.com', '2018-01-02 03:57:30'),
	(116, 8, NULL, _binary 0x3A3A31, 'areanerdx@areanerdx.com', '2018-01-02 04:05:12'),
	(117, 8, NULL, _binary 0x3A3A31, 'areanerdx@areanerdx.com', '2018-01-02 04:13:25'),
	(118, 8, NULL, _binary 0x3A3A31, 'areanerdx@areanerdx.com', '2018-01-02 04:20:16'),
	(119, 8, NULL, _binary 0x3A3A31, 'areanerdx@areanerdx.com', '2018-01-03 00:16:11'),
	(120, 8, NULL, _binary 0x3A3A31, 'areanerdx@areanerdx.com', '2018-01-03 02:58:53'),
	(121, 8, NULL, _binary 0x3A3A31, 'areanerdx@areanerdx.com', '2018-01-05 22:54:59'),
	(122, 8, NULL, _binary 0x3A3A31, 'areanerdx@areanerdx.com', '2018-01-05 23:20:42'),
	(123, 8, NULL, _binary 0x3A3A31, 'areanerdx@areanerdx.com', '2018-01-08 23:10:24'),
	(124, 8, NULL, _binary 0x3A3A31, 'areanerdx@areanerdx.com', '2018-01-08 23:17:07'),
	(125, 8, NULL, _binary 0x3A3A31, 'areanerdx@areanerdx.com', '2018-01-09 09:44:32'),
	(126, 8, NULL, _binary 0x3A3A31, 'areanerdx@areanerdx.com', '2018-01-10 06:13:17'),
	(127, 8, NULL, _binary 0x3A3A31, 'areanerdx@areanerdx.com', '2018-01-10 06:21:21'),
	(128, 8, NULL, _binary 0x3A3A31, 'areanerdx@areanerdx.com', '2018-01-10 06:27:59'),
	(129, 8, NULL, _binary 0x3A3A31, 'areanerdx@areanerdx.com', '2018-01-18 05:31:35'),
	(130, 8, NULL, _binary 0x3A3A31, 'areanerdx@areanerdx.com', '2018-01-18 05:37:53'),
	(131, 8, NULL, _binary 0x3A3A31, 'areanerdx@areanerdx.com', '2018-01-18 05:43:31'),
	(132, 8, NULL, _binary 0x3A3A31, 'areanerdx@areanerdx.com', '2018-01-18 05:51:20'),
	(133, 8, NULL, _binary 0x3A3A31, 'areanerdx@areanerdx.com', '2018-01-18 06:02:44'),
	(134, 8, NULL, _binary 0x3A3A31, 'areanerdx@areanerdx.com', '2018-01-18 06:07:49'),
	(135, 8, NULL, _binary 0x3A3A31, 'areanerdx@areanerdx.com', '2018-01-18 06:14:26'),
	(136, 8, NULL, _binary 0x3A3A31, 'areanerdx@areanerdx.com', '2018-01-18 06:21:31'),
	(137, 8, NULL, _binary 0x3A3A31, 'areanerdx@areanerdx.com', '2018-01-18 06:21:51'),
	(138, 8, NULL, _binary 0x3A3A31, 'areanerdx@areanerdx.com', '2018-01-20 06:13:11'),
	(139, 8, NULL, _binary 0x3A3A31, 'areanerdx@areanerdx.com', '2018-01-20 06:15:10'),
	(140, 8, NULL, _binary 0x3A3A31, 'areanerdx@areanerdx.com', '2018-01-20 06:17:55'),
	(141, 8, NULL, _binary 0x3A3A31, 'areanerdx@areanerdx.com', '2018-01-20 06:20:01'),
	(142, 8, NULL, _binary 0x3A3A31, 'areanerdx@areanerdx.com', '2018-01-20 06:40:22'),
	(143, 8, NULL, _binary 0x3A3A31, 'areanerdx@areanerdx.com', '2018-01-20 06:41:57'),
	(144, 8, NULL, _binary 0x3A3A31, 'areanerdx@areanerdx.com', '2018-01-20 06:44:24'),
	(145, 8, NULL, _binary 0x3A3A31, 'areanerdx@areanerdx.com', '2018-01-20 06:47:06'),
	(146, 8, NULL, _binary 0x3A3A31, 'areanerdx@areanerdx.com', '2018-01-20 06:48:58'),
	(147, 8, NULL, _binary 0x3A3A31, 'areanerdx@areanerdx.com', '2018-01-20 06:54:11'),
	(148, 8, NULL, _binary 0x3A3A31, 'areanerdx@areanerdx.com', '2018-01-20 06:55:53'),
	(149, 8, NULL, _binary 0x3A3A31, 'areanerdx@areanerdx.com', '2018-01-20 07:03:56'),
	(150, 8, NULL, _binary 0x3A3A31, 'areanerdx@areanerdx.com', '2018-01-20 07:07:18'),
	(151, 8, NULL, _binary 0x3A3A31, 'areanerdx@areanerdx.com', '2018-01-20 07:12:52'),
	(152, 8, NULL, _binary 0x3A3A31, 'areanerdx@areanerdx.com', '2018-01-20 07:15:16'),
	(153, 8, NULL, _binary 0x3A3A31, 'areanerdx@areanerdx.com', '2018-01-20 07:16:12'),
	(154, 8, NULL, _binary 0x3A3A31, 'areanerdx@areanerdx.com', '2018-01-20 07:22:21'),
	(155, 8, NULL, _binary 0x3A3A31, 'areanerdx@areanerdx.com', '2018-01-20 07:26:03'),
	(156, 8, NULL, _binary 0x3A3A31, 'areanerdx@areanerdx.com', '2018-01-20 15:33:00'),
	(157, 8, NULL, _binary 0x3A3A31, 'areanerdx@areanerdx.com', '2018-01-21 03:51:07'),
	(158, 8, NULL, _binary 0x3A3A31, 'areanerdx@areanerdx.com', '2018-01-21 03:56:35'),
	(159, 8, NULL, _binary 0x3A3A31, 'areanerdx@areanerdx.com', '2018-01-21 04:01:07'),
	(160, 8, NULL, _binary 0x3A3A31, 'areanerdx@areanerdx.com', '2018-01-21 04:10:12'),
	(161, 8, NULL, _binary 0x3A3A31, 'areanerdx@areanerdx.com', '2018-01-21 04:10:43'),
	(162, 8, NULL, _binary 0x3A3A31, 'areanerdx@areanerdx.com', '2018-01-21 04:11:38'),
	(163, 8, NULL, _binary 0x3A3A31, 'areanerdx@areanerdx.com', '2018-01-21 04:24:33'),
	(164, 8, NULL, _binary 0x3A3A31, 'areanerdx@areanerdx.com', '2018-01-21 04:30:01'),
	(165, 8, NULL, _binary 0x3A3A31, 'areanerdx@areanerdx.com', '2018-01-25 21:54:50'),
	(166, 8, NULL, _binary 0x3A3A31, 'areanerdx@areanerdx.com', '2018-01-25 21:55:59'),
	(167, 8, NULL, _binary 0x3A3A31, 'areanerdx@areanerdx.com', '2018-01-25 21:57:43'),
	(168, 8, NULL, _binary 0x3A3A31, 'areanerdx@areanerdx.com', '2018-01-25 21:58:27'),
	(169, 8, NULL, _binary 0x3A3A31, 'areanerdx@areanerdx.com', '2018-01-25 22:07:56'),
	(170, 8, NULL, _binary 0x3A3A31, 'areanerdx@areanerdx.com', '2018-01-25 23:41:23'),
	(171, 8, NULL, _binary 0x3A3A31, 'areanerdx@areanerdx.com', '2018-01-25 23:46:39'),
	(172, 8, NULL, _binary 0x3A3A31, 'areanerdx@areanerdx.com', '2018-01-25 23:49:54'),
	(173, 8, NULL, _binary 0x3A3A31, 'areanerdx@areanerdx.com', '2018-01-25 23:57:50'),
	(174, 8, NULL, _binary 0x3A3A31, 'areanerdx@areanerdx.com', '2018-01-26 00:03:06'),
	(175, 8, NULL, _binary 0x3A3A31, 'areanerdx@areanerdx.com', '2018-01-26 00:23:26'),
	(176, 8, NULL, _binary 0x3A3A31, 'areanerdx@areanerdx.com', '2018-01-26 00:29:34'),
	(177, 8, NULL, _binary 0x3A3A31, 'areanerdx@areanerdx.com', '2018-01-26 01:32:00'),
	(178, 8, NULL, _binary 0x3A3A31, 'areanerdx@areanerdx.com', '2018-01-26 01:37:52'),
	(179, 8, NULL, _binary 0x3A3A31, 'areanerdx@areanerdx.com', '2018-01-26 01:42:49'),
	(180, 10, NULL, _binary 0x3A3A31, 'miguelito_12jul@hotmail.com', '2018-01-26 01:54:51'),
	(181, 10, NULL, _binary 0x3A3A31, 'miguelito_12jul@hotmail.com', '2018-01-26 01:59:33'),
	(182, 8, NULL, _binary 0x3A3A31, 'areanerdx@areanerdx.com', '2018-01-26 01:59:43'),
	(183, 8, NULL, _binary 0x3A3A31, 'areanerdx@areanerdx.com', '2018-01-26 03:21:04'),
	(184, 8, NULL, _binary 0x3A3A31, 'areanerdx@areanerdx.com', '2018-01-27 02:04:12'),
	(185, 8, NULL, _binary 0x3A3A31, 'areanerdx@areanerdx.com', '2018-01-27 02:04:51'),
	(186, 8, NULL, _binary 0x3A3A31, 'areanerdx@areanerdx.com', '2018-01-27 20:59:59'),
	(187, 8, NULL, _binary 0x3A3A31, 'areanerdx@areanerdx.com', '2018-01-27 21:02:37'),
	(188, 8, NULL, _binary 0x3A3A31, 'areanerdx@areanerdx.com', '2018-01-27 21:47:57'),
	(189, 8, NULL, _binary 0x3A3A31, 'areanerdx@areanerdx.com', '2018-01-27 21:54:07'),
	(190, 8, NULL, _binary 0x3A3A31, 'areanerdx@areanerdx.com', '2018-01-28 06:04:11'),
	(191, 11, NULL, _binary 0x3A3A31, 'juquilagp@hotmail.com', '2018-01-28 06:08:26'),
	(192, 8, NULL, _binary 0x3A3A31, 'areanerdx@areanerdx.com', '2018-01-28 06:08:48'),
	(193, 11, NULL, _binary 0x3A3A31, 'juquilagp@hotmail.com', '2018-01-28 06:09:13'),
	(194, 12, NULL, _binary 0x3A3A31, 'areanerdx@areanerdx.com', '2018-01-28 11:11:55'),
	(195, 11, NULL, _binary 0x3A3A31, 'juquilagp@hotmail.com', '2018-01-28 11:12:52'),
	(196, 11, NULL, _binary 0x3A3A31, 'juquilagp@hotmail.com', '2018-01-28 11:18:04'),
	(197, 9, NULL, _binary 0x3A3A31, 'user@user.com', '2018-01-28 11:18:46'),
	(198, 9, NULL, _binary 0x3A3A31, 'user@user.com', '2018-01-28 11:35:57'),
	(199, 9, NULL, _binary 0x3A3A31, 'user@user.com', '2018-01-28 11:41:07'),
	(200, 9, NULL, _binary 0x3A3A31, 'user@user.com', '2018-01-28 11:56:14'),
	(201, 9, NULL, _binary 0x3A3A31, 'user@user.com', '2018-01-28 15:53:00'),
	(202, 9, NULL, _binary 0x3A3A31, 'user@user.com', '2018-01-31 22:14:33'),
	(203, 9, NULL, _binary 0x3A3A31, 'user@user.com', '2018-01-31 22:20:28'),
	(204, 9, NULL, _binary 0x3A3A31, 'user@user.com', '2018-01-31 22:25:43'),
	(205, 9, NULL, _binary 0x3A3A31, 'user@user.com', '2018-01-31 22:38:22'),
	(206, 9, NULL, _binary 0x3A3A31, 'user@user.com', '2018-02-01 17:07:27'),
	(207, 9, NULL, _binary 0x3A3A31, 'user@user.com', '2018-02-01 17:33:03'),
	(208, 9, NULL, _binary 0x3A3A31, 'user@user.com', '2018-02-01 17:38:11'),
	(209, 9, NULL, _binary 0x3A3A31, 'user@user.com', '2018-02-16 21:40:11'),
	(210, 9, NULL, _binary 0x3A3A31, 'user@user.com', '2018-02-22 03:10:37'),
	(211, 9, NULL, _binary 0x3A3A31, 'user@user.com', '2018-02-24 18:50:06'),
	(212, 9, NULL, _binary 0x3A3A31, 'user@user.com', '2018-03-01 00:52:59'),
	(213, 9, NULL, _binary 0x3A3A31, 'user@user.com', '2018-04-02 23:31:27'),
	(214, 9, NULL, _binary 0x3A3A31, 'user@user.com', '2018-04-02 23:38:45'),
	(215, 9, NULL, _binary 0x3A3A31, 'user@user.com', '2018-04-03 00:27:37'),
	(216, 9, NULL, _binary 0x3A3A31, 'user@user.com', '2018-04-08 08:07:50'),
	(217, 9, NULL, _binary 0x3A3A31, 'user@user.com', '2018-04-08 08:27:03'),
	(218, 9, NULL, _binary 0x3A3A31, 'user@user.com', '2018-04-17 23:00:42'),
	(219, 9, NULL, _binary 0x3A3A31, 'user@user.com', '2018-04-26 00:24:02'),
	(220, 9, NULL, _binary 0x3A3A31, 'user@user.com', '2018-04-26 00:42:33'),
	(221, 10, NULL, _binary 0x3A3A31, 'miguelito_12jul@hotmail.com', '2018-04-26 00:44:53'),
	(222, 9, NULL, _binary 0x3A3A31, 'user@user.com', '2018-04-26 00:45:15'),
	(223, 10, NULL, _binary 0x3A3A31, 'miguelito_12jul@hotmail.com', '2018-04-26 00:46:32'),
	(224, 9, NULL, _binary 0x3A3A31, 'user@user.com', '2018-04-26 01:23:59'),
	(225, 10, NULL, _binary 0x3A3A31, 'miguelito_12jul@hotmail.com', '2018-04-26 01:24:20'),
	(226, 9, NULL, _binary 0x3A3A31, 'user@user.com', '2018-04-26 01:24:43'),
	(227, 9, NULL, _binary 0x3A3A31, 'user@user.com', '2018-04-29 05:21:35'),
	(228, 9, NULL, _binary 0x3138372E3232312E37312E313131, 'user@user.com', '2018-04-29 06:02:51'),
	(229, 9, NULL, _binary 0x3138372E3232312E37312E313131, 'user@user.com', '2018-04-29 06:26:21'),
	(230, 9, NULL, _binary 0x3138372E3232312E37312E313131, 'user@user.com', '2018-04-29 19:06:09'),
	(231, 9, NULL, _binary 0x3138372E3232312E37312E313131, 'user@user.com', '2018-04-29 19:36:44'),
	(232, 9, NULL, _binary 0x3138372E3232312E37312E313131, 'user@user.com', '2018-04-29 19:54:30'),
	(233, 9, NULL, _binary 0x3138372E3232312E37312E313131, 'user@user.com', '2018-04-29 20:01:28'),
	(234, 9, NULL, _binary 0x3138372E3232312E37302E3332, 'user@user.com', '2018-04-30 06:42:45'),
	(235, 9, NULL, _binary 0x3138392E3134342E33382E313233, 'user@user.com', '2018-04-30 20:50:32'),
	(236, 9, NULL, _binary 0x3138392E3134342E33382E313233, 'user@user.com', '2018-04-30 21:22:53'),
	(237, 9, NULL, _binary 0x3138372E3232312E37302E3332, 'user@user.com', '2018-05-01 04:06:36'),
	(238, 9, NULL, _binary 0x3138392E3133302E3130382E3239, 'user@user.com', '2018-05-01 20:11:11'),
	(239, 9, NULL, _binary 0x3138392E3134342E33382E313233, 'user@user.com', '2018-05-04 04:34:30'),
	(240, 9, NULL, _binary 0x3138392E3232362E3232352E313135, 'user@user.com', '2018-05-06 02:30:25'),
	(241, 9, NULL, _binary 0x3138392E3232362E3232352E313135, 'user@user.com', '2018-05-06 02:41:59'),
	(242, 9, NULL, _binary 0x3138392E3232362E3232352E313135, 'user@user.com', '2018-05-06 14:48:05'),
	(243, 9, NULL, _binary 0x3138392E3232362E3232352E313135, 'user@user.com', '2018-05-06 15:25:20'),
	(244, 9, NULL, _binary 0x3138372E3232312E36332E323238, 'user@user.com', '2018-05-06 21:04:31'),
	(245, 9, NULL, _binary 0x3138392E3232362E3232352E313135, 'user@user.com', '2018-05-07 20:08:28'),
	(246, 11, NULL, _binary 0x3138392E3232362E3232352E313135, 'saory_jana13@hotmail.com', '2018-05-07 20:19:57'),
	(247, 9, NULL, _binary 0x3138392E3232362E3232352E313135, 'user@user.com', '2018-05-07 20:27:31'),
	(248, 9, NULL, _binary 0x3138392E3232362E3232352E313135, 'user@user.com', '2018-05-07 20:31:35'),
	(249, 11, NULL, _binary 0x3138392E3232362E3232352E313135, 'saory_jana13@hotmail.com', '2018-05-07 20:33:29'),
	(250, 9, NULL, _binary 0x3138392E3232362E3232352E313135, 'user@user.com', '2018-05-07 20:40:32'),
	(251, 9, NULL, _binary 0x3138392E3232362E3232352E313135, 'user@user.com', '2018-05-07 21:14:33'),
	(252, 9, NULL, _binary 0x3138392E3232362E3232352E313135, 'user@user.com', '2018-05-07 21:15:14'),
	(253, 9, NULL, _binary 0x3138392E3232362E3232352E313135, 'user@user.com', '2018-05-07 21:15:41'),
	(254, 9, NULL, _binary 0x3138392E3133302E3130382E3239, 'user@user.com', '2018-05-13 03:15:04'),
	(255, 9, NULL, _binary 0x3138392E3232362E3234372E3630, 'user@user.com', '2018-05-17 03:20:22'),
	(256, 9, NULL, _binary 0x3138392E3134342E31392E313835, 'user@user.com', '2018-06-01 02:31:23'),
	(257, 9, NULL, _binary 0x3138392E3134342E31392E313835, 'user@user.com', '2018-06-10 04:48:12'),
	(258, 9, NULL, _binary 0x3138392E3134342E392E323331, 'user@user.com', '2018-06-15 18:45:31'),
	(259, 9, NULL, _binary 0x3138392E3134342E392E323331, 'user@user.com', '2018-06-15 18:55:36'),
	(260, 9, NULL, _binary 0x3138392E3134342E392E323331, 'user@user.com', '2018-06-17 02:58:53'),
	(261, 9, NULL, _binary 0x3138392E3134342E36312E3637, 'user@user.com', '2018-06-22 16:58:50'),
	(262, 9, NULL, _binary 0x3138372E3136382E39302E323532, 'user@user.com', '2018-06-25 23:44:33'),
	(263, 9, NULL, _binary 0x3138372E3136382E39302E323532, 'user@user.com', '2018-06-27 01:11:26'),
	(264, 9, NULL, _binary 0x3138392E3133302E36362E313538, 'user@user.com', '2018-06-27 20:15:31'),
	(265, 9, NULL, _binary 0x3138372E3136382E39302E323532, 'user@user.com', '2018-06-29 00:28:00'),
	(266, 9, NULL, _binary 0x3138372E3136382E39302E323532, 'user@user.com', '2018-06-29 01:21:11'),
	(267, 9, NULL, _binary 0x3138392E3134342E35362E313430, 'user@user.com', '2018-06-29 02:39:20'),
	(268, 9, NULL, _binary 0x3138392E3134342E35362E313430, 'user@user.com', '2018-06-29 17:51:13'),
	(269, 9, NULL, _binary 0x3138392E3134342E35362E313430, 'user@user.com', '2018-06-29 18:59:19'),
	(270, 9, NULL, _binary 0x3138392E3134342E35362E313430, 'user@user.com', '2018-06-29 19:12:10'),
	(271, 9, NULL, _binary 0x3138392E3134342E35362E313430, 'user@user.com', '2018-06-29 19:16:42'),
	(272, 9, NULL, _binary 0x3138392E3134342E35362E313430, 'user@user.com', '2018-06-29 20:16:06'),
	(273, 9, NULL, _binary 0x3138392E3133302E36362E313538, 'user@user.com', '2018-06-30 18:28:10'),
	(274, 9, NULL, _binary 0x3138372E3136382E39302E323532, 'user@user.com', '2018-06-30 19:26:36'),
	(275, 9, NULL, _binary 0x3138372E3232312E36372E313133, 'user@user.com', '2018-07-01 06:09:20'),
	(276, 9, NULL, _binary 0x3138392E3134342E35362E313430, 'user@user.com', '2018-07-02 18:24:04'),
	(277, 9, NULL, _binary 0x3138392E3134342E35362E313430, 'user@user.com', '2018-07-02 18:24:19'),
	(278, 9, NULL, _binary 0x3138392E3134342E35362E313430, 'user@user.com', '2018-07-02 18:51:20'),
	(279, 9, NULL, _binary 0x3138392E3134342E35362E313430, 'user@user.com', '2018-07-03 19:23:01'),
	(280, 9, NULL, _binary 0x3138392E3134342E35362E313430, 'user@user.com', '2018-07-03 19:51:32'),
	(281, 9, NULL, _binary 0x3138392E3139312E3131312E323233, 'user@user.com', '2018-07-03 21:34:11'),
	(282, 9, NULL, _binary 0x3138392E3139312E3131312E323233, 'user@user.com', '2018-07-03 21:39:38'),
	(283, 9, NULL, _binary 0x3138392E3139312E3131312E323233, 'user@user.com', '2018-07-03 21:41:50'),
	(284, 9, NULL, _binary 0x3138392E3134342E37392E3133, 'user@user.com', '2018-07-05 21:27:23'),
	(285, 9, NULL, _binary 0x3138392E3139312E3131312E323233, 'user@user.com', '2018-07-06 00:20:07'),
	(286, 9, NULL, _binary 0x3138392E3134342E37392E3133, 'user@user.com', '2018-07-06 18:51:30'),
	(287, 9, NULL, _binary 0x3138372E3232312E3133382E323135, 'user@user.com', '2018-07-08 06:44:44'),
	(288, 9, NULL, _binary 0x3138372E3232312E3133382E323135, 'user@user.com', '2018-07-09 04:06:11'),
	(289, 9, NULL, _binary 0x3138392E3232362E3234302E313334, 'user@user.com', '2018-07-10 22:22:20'),
	(290, 9, NULL, _binary 0x3138392E3232362E3234302E313334, 'user@user.com', '2018-07-12 19:40:59'),
	(291, 9, NULL, _binary 0x3138392E3133302E36362E313131, 'user@user.com', '2018-07-13 02:04:43'),
	(292, 9, NULL, _binary 0x3138392E3233362E39342E313437, 'user@user.com', '2018-07-26 02:50:46'),
	(293, 9, NULL, _binary 0x3138392E3139312E3130302E3537, 'user@user.com', '2018-07-26 22:26:38'),
	(294, 9, NULL, _binary 0x3138392E3139312E3130302E3537, 'user@user.com', '2018-07-26 22:50:28'),
	(295, 9, NULL, _binary 0x3138392E3139312E3130302E3537, 'user@user.com', '2018-07-26 23:27:18'),
	(296, 9, NULL, _binary 0x3138392E3134342E392E323138, 'user@user.com', '2018-07-29 14:49:29'),
	(297, 9, NULL, _binary 0x3138392E3134342E392E323138, 'user@user.com', '2018-07-29 15:14:54'),
	(298, 9, NULL, _binary 0x3138392E3134342E392E323138, 'user@user.com', '2018-07-29 15:45:38'),
	(299, 9, NULL, _binary 0x3138392E3134342E392E323138, 'user@user.com', '2018-07-29 15:50:41'),
	(300, 9, NULL, _binary 0x3138392E3134342E33312E3234, 'user@user.com', '2018-08-04 23:48:21'),
	(301, 9, NULL, _binary 0x3138392E3134342E32312E3333, 'user@user.com', '2018-08-09 23:58:30'),
	(302, 9, NULL, _binary 0x3138392E3134342E32312E3333, 'user@user.com', '2018-08-10 23:10:28'),
	(303, 9, NULL, _binary 0x3138372E3232312E3135382E3337, 'user@user.com', '2018-08-30 05:44:58'),
	(304, 9, NULL, _binary 0x3138392E3134342E34362E313637, 'user@user.com', '2018-08-31 00:53:55'),
	(305, 9, NULL, _binary 0x3138392E3134342E37392E323430, 'user@user.com', '2018-09-03 17:31:31'),
	(306, 9, NULL, _binary 0x3138392E3134342E37392E323430, 'user@user.com', '2018-09-03 18:04:32'),
	(307, 9, NULL, _binary 0x3138372E3232312E3135382E3337, 'user@user.com', '2018-09-10 23:33:06'),
	(308, 9, NULL, _binary 0x3138392E3139312E3130322E313738, 'user@user.com', '2018-09-12 02:11:36'),
	(309, 9, NULL, _binary 0x3138372E3232312E3132312E313531, 'user@user.com', '2018-09-16 09:18:17'),
	(310, 9, NULL, _binary 0x3138392E3139312E38382E313230, 'user@user.com', '2018-10-25 01:53:29'),
	(311, 9, NULL, _binary 0x3138372E3232312E36342E3431, 'user@user.com', '2018-11-03 05:57:50'),
	(312, 9, NULL, _binary 0x3138372E3233372E32352E3735, 'user@user.com', '2018-11-03 06:05:34'),
	(313, 9, NULL, _binary 0x3138372E3139302E3138362E313230, 'user@user.com', '2018-11-10 18:31:20'),
	(314, 9, NULL, _binary 0x3138392E3232362E3234382E3237, 'user@user.com', '2018-11-12 23:21:54'),
	(315, 9, NULL, _binary 0x3138372E3232312E3134322E3134, 'user@user.com', '2018-11-18 16:02:20'),
	(316, 9, NULL, _binary 0x3138372E3232312E3134322E3134, 'user@user.com', '2018-11-18 16:16:19'),
	(317, 9, NULL, _binary 0x3138372E3232312E3134322E3134, 'user@user.com', '2018-11-18 16:18:34'),
	(318, 9, NULL, _binary 0x3138372E3232312E3134322E3134, 'user@user.com', '2018-11-18 18:25:02'),
	(319, 9, NULL, _binary 0x3138372E3232312E3134322E3134, 'user@user.com', '2018-11-18 18:27:06'),
	(320, 9, NULL, _binary 0x3138372E3232312E3134322E3134, 'user@user.com', '2018-11-18 20:16:14'),
	(321, 9, NULL, _binary 0x3138372E3232312E3134322E3134, 'user@user.com', '2018-11-18 20:16:27'),
	(322, 9, NULL, _binary 0x3138372E3232312E3134322E3134, 'user@user.com', '2018-11-18 20:16:49'),
	(323, 9, NULL, _binary 0x3138372E3232312E3134322E3134, 'user@user.com', '2018-11-18 20:31:20'),
	(324, 9, NULL, _binary 0x3138372E3232312E3134322E3134, 'user@user.com', '2018-11-18 20:59:29'),
	(325, 9, NULL, _binary 0x3138372E3232312E3134322E3134, 'user@user.com', '2018-11-18 21:12:53'),
	(326, 9, NULL, _binary 0x3138372E3232312E3134322E3134, 'user@user.com', '2018-11-19 07:09:23'),
	(327, 9, NULL, _binary 0x3138372E3232312E3134322E3134, 'user@user.com', '2018-11-22 17:53:32'),
	(328, 9, NULL, _binary 0x3138372E3232312E3134322E3134, 'user@user.com', '2018-11-22 17:54:25'),
	(329, 9, NULL, _binary 0x3138372E3232312E3134322E3134, 'user@user.com', '2018-11-23 15:55:29'),
	(330, 9, NULL, _binary 0x3138372E3232312E3134322E3134, 'user@user.com', '2018-11-23 16:16:13'),
	(331, 9, NULL, _binary 0x3138372E3232312E3134322E3134, 'user@user.com', '2018-11-24 15:27:45'),
	(332, 9, NULL, _binary 0x3138372E3232312E3134322E3134, 'user@user.com', '2018-11-24 15:41:43'),
	(333, 9, NULL, _binary 0x3138392E3139312E38312E3337, 'user@user.com', '2018-11-24 20:47:25'),
	(334, 9, NULL, _binary 0x3138372E3232312E35362E3439, 'user@user.com', '2018-11-25 15:25:00'),
	(335, 9, NULL, _binary 0x3138372E3232312E35362E3439, 'user@user.com', '2018-11-25 15:43:04'),
	(336, 9, NULL, _binary 0x3138372E3232312E35362E3439, 'user@user.com', '2018-11-25 16:59:01'),
	(337, 9, NULL, _binary 0x3138372E3232312E35362E3439, 'user@user.com', '2018-11-25 17:11:07'),
	(338, 9, NULL, _binary 0x3138372E3232312E35362E3439, 'user@user.com', '2018-11-25 17:15:06'),
	(339, 9, NULL, _binary 0x3138372E3232312E35362E3439, 'user@user.com', '2018-11-25 17:19:49'),
	(340, 9, NULL, _binary 0x3138372E3232312E35362E3439, 'user@user.com', '2018-11-25 17:24:17'),
	(341, 9, NULL, _binary 0x3138372E3232312E35362E3439, 'user@user.com', '2018-11-25 21:07:53'),
	(342, 9, NULL, _binary 0x3138372E3232312E35362E3439, 'user@user.com', '2018-11-25 21:09:07'),
	(343, 9, NULL, _binary 0x3138372E3232312E35362E3439, 'user@user.com', '2018-11-26 03:53:45'),
	(344, 9, NULL, _binary 0x3138372E3232312E35362E3439, 'user@user.com', '2018-11-26 03:57:18'),
	(345, 9, NULL, _binary 0x3138372E3232312E35362E3439, 'user@user.com', '2018-11-26 04:07:23'),
	(346, 9, NULL, _binary 0x3138372E3232312E35362E3439, 'user@user.com', '2018-11-26 04:20:34'),
	(347, 9, NULL, _binary 0x3138372E3232312E35362E3439, 'user@user.com', '2018-11-26 04:28:27'),
	(348, 9, NULL, _binary 0x3138372E3232312E35362E3439, 'user@user.com', '2018-11-26 04:30:15'),
	(349, 9, NULL, _binary 0x3138372E3232312E35362E3439, 'user@user.com', '2018-11-26 04:32:20'),
	(350, 9, NULL, _binary 0x3138372E3232312E35362E3439, 'user@user.com', '2018-11-26 04:49:12'),
	(351, 9, NULL, _binary 0x3138372E3232312E3131392E3635, 'user@user.com', '2018-11-26 06:20:51'),
	(352, 9, NULL, _binary 0x3138372E3232312E3131392E3635, 'user@user.com', '2018-11-26 06:27:33'),
	(353, 9, NULL, _binary 0x3138372E3232312E3131392E3635, 'user@user.com', '2018-11-26 06:27:58'),
	(354, 9, NULL, _binary 0x3138372E3232312E3131392E3635, 'user@user.com', '2018-11-26 06:29:29'),
	(355, 9, NULL, _binary 0x3138372E3232312E3131322E313336, 'user@user.com', '2018-12-04 18:20:28'),
	(356, 9, NULL, _binary 0x3138372E3232312E3131322E313336, 'user@user.com', '2018-12-04 18:22:11'),
	(357, 9, NULL, _binary 0x3138372E3232312E3131322E313336, 'user@user.com', '2018-12-04 19:15:04'),
	(358, 9, NULL, _binary 0x3138372E3232312E3131322E313336, 'user@user.com', '2018-12-04 19:15:32'),
	(359, 9, NULL, _binary 0x3138372E3232312E3131322E313336, 'user@user.com', '2018-12-04 19:21:38'),
	(360, 9, NULL, _binary 0x3138372E3232312E3131322E313336, 'user@user.com', '2018-12-04 19:23:17'),
	(361, 9, NULL, _binary 0x3138372E3232312E3131322E313336, 'user@user.com', '2018-12-04 19:24:41'),
	(362, 9, NULL, _binary 0x3138372E3232312E3131322E313336, 'user@user.com', '2018-12-04 19:32:06'),
	(363, 9, NULL, _binary 0x3138392E3139312E39362E3731, 'user@user.com', '2018-12-04 23:34:48'),
	(364, 9, NULL, _binary 0x3138392E3139312E39362E3731, 'user@user.com', '2018-12-04 23:37:55'),
	(365, 9, NULL, _binary 0x3138392E3139312E39362E3731, 'user@user.com', '2018-12-04 23:44:13'),
	(366, 9, NULL, _binary 0x3138392E3232362E3230362E33, 'user@user.com', '2018-12-05 06:40:16'),
	(367, 9, NULL, _binary 0x3138392E3232362E3230362E33, 'user@user.com', '2018-12-05 06:41:09'),
	(368, 9, NULL, _binary 0x3138392E3139312E39362E3731, 'user@user.com', '2018-12-05 20:45:18'),
	(369, 9, NULL, _binary 0x3138392E3139312E39362E3731, 'user@user.com', '2018-12-05 20:45:52'),
	(370, 9, NULL, _binary 0x3138392E3139312E39362E3731, 'user@user.com', '2018-12-05 22:29:20'),
	(371, 9, NULL, _binary 0x3138392E3139312E39362E3731, 'user@user.com', '2018-12-06 19:10:48'),
	(372, 9, NULL, _binary 0x3138392E3232362E3230362E33, 'user@user.com', '2018-12-07 21:44:50'),
	(373, 9, NULL, _binary 0x3138372E3232312E3131322E313336, 'user@user.com', '2018-12-09 14:59:21'),
	(374, 9, NULL, _binary 0x3138372E3232312E3131322E313336, 'user@user.com', '2018-12-09 15:00:12'),
	(375, 9, NULL, _binary 0x3138372E3232312E3131322E313336, 'user@user.com', '2018-12-09 15:01:39'),
	(376, 9, NULL, _binary 0x3138372E3232312E3131322E313336, 'user@user.com', '2018-12-09 15:24:56'),
	(377, 9, NULL, _binary 0x3138372E3232312E3131322E313336, 'user@user.com', '2018-12-09 16:30:16'),
	(378, 12, NULL, _binary 0x3138372E3232312E3131322E313336, 'saory_jana13@hotmail.com', '2018-12-09 17:51:47'),
	(379, 9, NULL, _binary 0x3138372E3232312E3131322E313336, 'user@user.com', '2018-12-09 17:58:11'),
	(380, 12, NULL, _binary 0x3138372E3232312E3131322E313336, 'saory_jana13@hotmail.com', '2018-12-09 18:00:34'),
	(381, 9, NULL, _binary 0x3138372E3232312E3131322E313336, 'user@user.com', '2018-12-09 18:12:38'),
	(382, 12, NULL, _binary 0x3138372E3232312E3131322E313336, 'saory_jana13@hotmail.com', '2018-12-09 18:18:36'),
	(383, 9, NULL, _binary 0x3138372E3232312E3131322E313336, 'user@user.com', '2018-12-09 20:52:43'),
	(384, 9, NULL, _binary 0x3138372E3232312E3131322E313336, 'user@user.com', '2018-12-09 23:25:32'),
	(385, 9, NULL, _binary 0x3138372E3232312E38392E323036, 'user@user.com', '2018-12-17 02:56:44'),
	(386, 9, NULL, _binary 0x3138372E3232312E38392E323036, 'user@user.com', '2018-12-17 02:57:13'),
	(387, 9, NULL, _binary 0x3132372E302E302E31, 'user@user.com', '2020-03-07 22:38:33'),
	(388, 10, NULL, _binary 0x3A3A31, 'jccruzsanchez8@gmail.com', '2020-03-08 12:18:05'),
	(389, 9, NULL, _binary 0x3A3A31, 'user@user.com', '2020-03-08 12:26:09'),
	(390, 10, NULL, _binary 0x3A3A31, 'jccruzsanchez8@gmail.com', '2020-03-08 22:14:58'),
	(391, 10, NULL, _binary 0x3A3A31, 'jccruzsanchez8@gmail.com', '2020-03-09 20:42:44'),
	(392, 9, NULL, _binary 0x3A3A31, 'user@user.com', '2020-03-09 20:45:17'),
	(393, 9, NULL, _binary 0x3A3A31, 'user@user.com', '2020-03-09 23:29:35'),
	(394, 9, NULL, _binary 0x3A3A31, 'user@user.com', '2020-03-10 13:41:59');
/*!40000 ALTER TABLE `tec_user_logins` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
