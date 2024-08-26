-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Versión del servidor:         10.4.28-MariaDB - mariadb.org binary distribution
-- SO del servidor:              Win64
-- HeidiSQL Versión:             12.4.0.6659
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Volcando estructura de base de datos para dbpos
CREATE DATABASE IF NOT EXISTS `dbpos` /*!40100 DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci */;
USE `dbpos`;

-- Volcando estructura para tabla dbpos.categorias
CREATE TABLE IF NOT EXISTS `categorias` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `categoria` text NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- Volcando datos para la tabla dbpos.categorias: ~5 rows (aproximadamente)
INSERT INTO `categorias` (`id`, `categoria`, `fecha`) VALUES
	(2, 'Carnes', '2023-08-22 21:03:29'),
	(3, 'Combos', '2023-08-22 19:54:17'),
	(4, 'Comidas rápidas', '2023-08-22 19:57:21'),
	(5, 'Comida basada en pastas', '2023-08-22 19:56:58'),
	(6, 'Comida de Mar', '2023-08-22 19:55:46');

-- Volcando estructura para tabla dbpos.clientes
CREATE TABLE IF NOT EXISTS `clientes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` text NOT NULL,
  `documento` int(11) NOT NULL,
  `email` text NOT NULL,
  `telefono` text NOT NULL,
  `direccion` text NOT NULL,
  `fecha_nacimiento` date NOT NULL,
  `compras` int(11) NOT NULL,
  `ultima_compra` datetime NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- Volcando datos para la tabla dbpos.clientes: ~10 rows (aproximadamente)
INSERT INTO `clientes` (`id`, `nombre`, `documento`, `email`, `telefono`, `direccion`, `fecha_nacimiento`, `compras`, `ultima_compra`, `fecha`) VALUES
	(3, 'Juan Villegas', 2147483647, 'juan@hotmail.com', '(300) 341-2345', 'Calle 23 # 45 - 56', '1980-11-02', 7, '2018-02-06 17:47:02', '2018-02-06 22:47:02'),
	(4, 'Pedro Pérez', 2147483647, 'pedro@gmail.com', '(399) 876-5432', 'Calle 34 N33 -56', '1970-08-07', 7, '2017-12-26 17:27:42', '2017-12-26 22:27:42'),
	(5, 'Miguel Murillo', 325235235, 'miguel@hotmail.com', '(254) 545-3446', 'calle 34 # 34 - 23', '1976-03-04', 33, '2023-08-18 20:22:06', '2023-08-19 01:22:06'),
	(6, 'Margarita Londoño', 34565432, 'margarita@hotmail.com', '(344) 345-6678', 'Calle 45 # 34 - 56', '1976-11-30', 19, '2019-05-25 01:10:41', '2019-05-25 06:10:41'),
	(7, 'Julian Ramirez', 786786545, 'julian@hotmail.com', '(675) 674-5453', 'Carrera 45 # 54 - 56', '1980-04-05', 14, '2017-12-26 17:26:28', '2017-12-26 22:26:28'),
	(8, 'Stella Jaramillo', 65756735, 'stella@gmail.com', '(435) 346-3463', 'Carrera 34 # 45- 56', '1956-06-05', 9, '2017-12-26 17:25:55', '2017-12-26 22:25:55'),
	(9, 'Eduardo López', 2147483647, 'eduardo@gmail.com', '(534) 634-6565', 'Carrera 67 # 45sur', '1978-03-04', 15, '2019-06-20 15:33:23', '2019-06-20 20:33:23'),
	(10, 'Ximena Restrepo', 436346346, 'ximena@gmail.com', '(543) 463-4634', 'calle 45 # 23 - 45', '1956-03-04', 18, '2017-12-26 17:25:08', '2017-12-26 22:25:08'),
	(11, 'David Guzman', 43634643, 'david@hotmail.com', '(354) 574-5634', 'carrera 45 # 45 ', '1967-05-04', 10, '2017-12-26 17:24:50', '2017-12-26 22:24:50'),
	(12, 'Gonzalo Pérez', 436346346, 'gonzalo@yahoo.com', '(235) 346-3464', 'Carrera 34 # 56 - 34', '1967-08-09', 24, '2017-12-25 17:24:24', '2017-12-27 00:30:12'),
	(13, 'Nestor Guillermo Montaño', 79629312, 'ngmonta@gmail.com', '(320) 429-9324', 'Calle 80 #8-09', '1973-12-29', 2, '2023-08-22 15:56:07', '2023-08-22 20:56:07');

-- Volcando estructura para tabla dbpos.productos
CREATE TABLE IF NOT EXISTS `productos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_categoria` int(11) NOT NULL,
  `codigo` text NOT NULL,
  `descripcion` text NOT NULL,
  `imagen` text NOT NULL,
  `stock` int(11) NOT NULL,
  `precio_compra` float NOT NULL,
  `precio_venta` float NOT NULL,
  `ventas` int(11) NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- Volcando datos para la tabla dbpos.productos: ~9 rows (aproximadamente)
INSERT INTO `productos` (`id`, `id_categoria`, `codigo`, `descripcion`, `imagen`, `stock`, `precio_compra`, `precio_venta`, `ventas`, `fecha`) VALUES
	(1, 5, '101', 'Pizza Hawaiana', 'vistas/img/productos/101/105.png', 13, 5000, 7000, 2, '2023-08-22 20:31:15'),
	(2, 5, '102', 'Lasaña a la boloñesa', 'vistas/img/productos/102/940.jpg', 6, 4500, 6300, 3, '2023-08-22 20:21:50'),
	(3, 5, '103', 'Pizza con Champiñones', 'vistas/img/productos/103/763.jpg', 8, 3000, 4200, 12, '2023-08-22 20:21:02'),
	(4, 3, '104', 'Combo 1(Hamburguesa+Papa Francesa+Gaseosa)', 'vistas/img/productos/104/957.jpg', 16, 4000, 5600, 4, '2023-08-22 20:19:56'),
	(5, 4, '105', 'Perro Caliente Especial Salchicha Americana', 'vistas/img/productos/105/630.jpg', 13, 1540, 2156, 7, '2023-08-22 20:18:28'),
	(6, 4, '106', 'Perro Caliente con queso', 'vistas/img/productos/106/635.jpg', 15, 1100, 1540, 5, '2023-08-22 20:17:22'),
	(7, 4, '107', 'Perro Caliente Sencillo', 'vistas/img/productos/107/848.jpg', 11, 1540, 2156, 9, '2023-08-22 20:56:07'),
	(8, 4, '108', 'Hamburguesa Sencilla', 'vistas/img/productos/108/163.jpg', 13, 7000, 9800, 7, '2023-08-22 20:16:09'),
	(9, 4, '109', 'Hamburguesa doble carne', 'vistas/img/productos/109/769.jpg', 14, 15000, 21000, 6, '2023-08-22 20:56:07');

-- Volcando estructura para tabla dbpos.usuarios
CREATE TABLE IF NOT EXISTS `usuarios` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` text NOT NULL,
  `usuario` text NOT NULL,
  `password` text NOT NULL,
  `perfil` text NOT NULL,
  `foto` text NOT NULL,
  `estado` int(11) NOT NULL,
  `ultimo_login` datetime NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=60 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- Volcando datos para la tabla dbpos.usuarios: ~4 rows (aproximadamente)
INSERT INTO `usuarios` (`id`, `nombre`, `usuario`, `password`, `perfil`, `foto`, `estado`, `ultimo_login`, `fecha`) VALUES
	(1, 'Administrador', 'admin', '$2a$07$asxx54ahjppf45sd87a5auXBm1Vr2M1NV5t/zNQtGHGpS5fFirrbG', 'Administrador', 'vistas/img/usuarios/admin/191.jpg', 1, '2023-08-22 16:28:31', '2023-08-22 21:28:31'),
	(57, 'Juan Fernando Urrego', 'juan', '$2a$07$asxx54ahjppf45sd87a5auwRi.z6UsW7kVIpm0CUEuCpmsvT2sG6O', 'Vendedor', 'vistas/img/usuarios/juan/461.jpg', 1, '2018-02-06 16:58:50', '2023-08-19 01:16:32'),
	(58, 'Julio Gómez', 'julio', '$2a$07$asxx54ahjppf45sd87a5auQhldmFjGsrgUipGlmQgDAcqevQZSAAC', 'Especial', 'vistas/img/usuarios/julio/100.png', 1, '2018-02-06 17:09:22', '2019-05-25 06:06:39'),
	(59, 'Ana Gonzalez', 'ana', '$2a$07$asxx54ahjppf45sd87a5auLd2AxYsA/2BbmGKNk2kMChC3oj7V0Ca', 'Vendedor', 'vistas/img/usuarios/ana/260.png', 1, '2017-12-26 19:21:40', '2019-05-25 06:06:42');

-- Volcando estructura para tabla dbpos.ventas
CREATE TABLE IF NOT EXISTS `ventas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `codigo` int(11) NOT NULL,
  `id_cliente` int(11) NOT NULL,
  `id_vendedor` int(11) NOT NULL,
  `productos` text NOT NULL,
  `impuesto` float NOT NULL,
  `neto` float NOT NULL,
  `total` float NOT NULL,
  `metodo_pago` text NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- Volcando datos para la tabla dbpos.ventas: ~23 rows (aproximadamente)
INSERT INTO `ventas` (`id`, `codigo`, `id_cliente`, `id_vendedor`, `productos`, `impuesto`, `neto`, `total`, `metodo_pago`, `fecha`) VALUES
	(17, 10001, 3, 1, '[{"id":"1","descripcion":"Aspiradora Industrial ","cantidad":"2","stock":"13","precio":"1200","total":"2400"},{"id":"2","descripcion":"Plato Flotante para Allanadora","cantidad":"2","stock":"7","precio":"6300","total":"12600"},{"id":"3","descripcion":"Compresor de Aire para pintura","cantidad":"1","stock":"19","precio":"4200","total":"4200"}]', 3648, 19200, 22848, 'Efectivo', '2018-02-02 01:11:04'),
	(18, 10002, 4, 59, '[{"id":"5","descripcion":"Cortadora de Piso sin Disco ","cantidad":"2","stock":"18","precio":"2156","total":"4312"},{"id":"4","descripcion":"Cortadora de Adobe sin Disco ","cantidad":"1","stock":"19","precio":"5600","total":"5600"},{"id":"6","descripcion":"Disco Punta Diamante ","cantidad":"1","stock":"19","precio":"1540","total":"1540"},{"id":"7","descripcion":"Extractor de Aire ","cantidad":"1","stock":"19","precio":"2156","total":"2156"}]', 2585.52, 13608, 16193.5, 'TC-34346346346', '2018-02-02 14:57:20'),
	(19, 10003, 5, 59, '[{"id":"8","descripcion":"Guadañadora ","cantidad":"1","stock":"19","precio":"2156","total":"2156"},{"id":"9","descripcion":"Hidrolavadora Eléctrica ","cantidad":"1","stock":"19","precio":"3640","total":"3640"},{"id":"7","descripcion":"Extractor de Aire ","cantidad":"1","stock":"18","precio":"2156","total":"2156"}]', 1510.88, 7952, 9462.88, 'Efectivo', '2018-01-18 14:57:40'),
	(20, 10004, 5, 59, '[{"id":"3","descripcion":"Compresor de Aire para pintura","cantidad":"5","stock":"14","precio":"4200","total":"21000"},{"id":"4","descripcion":"Cortadora de Adobe sin Disco ","cantidad":"1","stock":"18","precio":"5600","total":"5600"},{"id":"5","descripcion":"Cortadora de Piso sin Disco ","cantidad":"1","stock":"17","precio":"2156","total":"2156"}]', 5463.64, 28756, 34219.6, 'TD-454475467567', '2018-01-25 14:58:09'),
	(21, 10005, 6, 57, '[{"id":"4","descripcion":"Cortadora de Adobe sin Disco ","cantidad":"1","stock":"17","precio":"5600","total":"5600"},{"id":"5","descripcion":"Cortadora de Piso sin Disco ","cantidad":"1","stock":"16","precio":"2156","total":"2156"},{"id":"3","descripcion":"Compresor de Aire para pintura","cantidad":"5","stock":"9","precio":"4200","total":"21000"}]', 5463.64, 28756, 34219.6, 'TC-6756856867', '2018-01-09 14:59:07'),
	(22, 10006, 10, 1, '[{"id":"3","descripcion":"Compresor de Aire para pintura","cantidad":"1","stock":"8","precio":"4200","total":"4200"},{"id":"4","descripcion":"Cortadora de Adobe sin Disco ","cantidad":"1","stock":"16","precio":"5600","total":"5600"},{"id":"5","descripcion":"Cortadora de Piso sin Disco ","cantidad":"3","stock":"13","precio":"2156","total":"6468"},{"id":"6","descripcion":"Disco Punta Diamante ","cantidad":"1","stock":"18","precio":"1540","total":"1540"}]', 3383.52, 17808, 21191.5, 'Efectivo', '2018-01-26 15:03:22'),
	(23, 10007, 9, 1, '[{"id":"6","descripcion":"Disco Punta Diamante ","cantidad":"1","stock":"17","precio":"1540","total":"1540"},{"id":"7","descripcion":"Extractor de Aire ","cantidad":"1","stock":"17","precio":"2156","total":"2156"},{"id":"8","descripcion":"Guadañadora ","cantidad":"6","stock":"13","precio":"2156","total":"12936"},{"id":"9","descripcion":"Hidrolavadora Eléctrica ","cantidad":"1","stock":"18","precio":"3640","total":"3640"}]', 3851.68, 20272, 24123.7, 'TC-357547467346', '2017-11-30 15:03:53'),
	(24, 10008, 12, 1, '[{"id":"2","descripcion":"Plato Flotante para Allanadora","cantidad":"1","stock":"6","precio":"6300","total":"6300"},{"id":"7","descripcion":"Extractor de Aire ","cantidad":"5","stock":"12","precio":"2156","total":"10780"},{"id":"6","descripcion":"Disco Punta Diamante ","cantidad":"1","stock":"16","precio":"1540","total":"1540"},{"id":"9","descripcion":"Hidrolavadora Eléctrica ","cantidad":"1","stock":"17","precio":"3640","total":"3640"}]', 4229.4, 22260, 26489.4, 'TD-35745575', '2017-12-25 15:04:11'),
	(25, 10009, 11, 1, '[{"id":"10","descripcion":"Hidrolavadora Gasolina","cantidad":"1","stock":"19","precio":"3094","total":"3094"},{"id":"9","descripcion":"Hidrolavadora Eléctrica ","cantidad":"1","stock":"16","precio":"3640","total":"3640"},{"id":"6","descripcion":"Disco Punta Diamante ","cantidad":"1","stock":"15","precio":"1540","total":"1540"}]', 1572.06, 8274, 9846.06, 'TD-5745745745', '2017-08-15 15:04:38'),
	(26, 10010, 8, 1, '[{"id":"9","descripcion":"Hidrolavadora Eléctrica ","cantidad":"1","stock":"15","precio":"3640","total":"3640"},{"id":"10","descripcion":"Hidrolavadora Gasolina","cantidad":"1","stock":"18","precio":"3094","total":"3094"}]', 1279.46, 6734, 8013.46, 'Efectivo', '2017-12-07 15:05:09'),
	(27, 10011, 7, 1, '[{"id":"60","descripcion":"Cortadora de Baldosin","cantidad":"1","stock":"19","precio":"1302","total":"1302"},{"id":"59","descripcion":"Cono slump","cantidad":"1","stock":"19","precio":"196","total":"196"},{"id":"58","descripcion":"Coche llanta neumatica","cantidad":"1","stock":"19","precio":"588","total":"588"},{"id":"57","descripcion":"Cizalla de Tijera","cantidad":"1","stock":"19","precio":"812","total":"812"}]', 550.62, 2898, 3448.62, 'Efectivo', '2017-12-25 22:23:38'),
	(28, 10012, 12, 57, '[{"id":"59","descripcion":"Cono slump","cantidad":"1","stock":"18","precio":"196","total":"196"},{"id":"58","descripcion":"Coche llanta neumatica","cantidad":"1","stock":"18","precio":"588","total":"588"},{"id":"54","descripcion":"Chapeta","cantidad":"1","stock":"19","precio":"924","total":"924"},{"id":"53","descripcion":"Bomba Hidrostatica","cantidad":"1","stock":"19","precio":"1078","total":"1078"}]', 529.34, 2786, 3315.34, 'TC-3545235235', '2017-12-25 22:24:24'),
	(29, 10013, 11, 57, '[{"id":"54","descripcion":"Chapeta","cantidad":"1","stock":"18","precio":"924","total":"924"},{"id":"59","descripcion":"Cono slump","cantidad":"1","stock":"17","precio":"196","total":"196"},{"id":"60","descripcion":"Cortadora de Baldosin","cantidad":"5","stock":"14","precio":"1302","total":"6510"}]', 1449.7, 7630, 9079.7, 'TC-425235235235', '2017-12-26 22:24:50'),
	(30, 10014, 10, 57, '[{"id":"59","descripcion":"Cono slump","cantidad":"1","stock":"16","precio":"196","total":"196"},{"id":"54","descripcion":"Chapeta","cantidad":"1","stock":"17","precio":"924","total":"924"},{"id":"53","descripcion":"Bomba Hidrostatica","cantidad":"10","stock":"9","precio":"1078","total":"10780"}]', 2261, 11900, 14161, 'Efectivo', '2017-12-26 22:25:09'),
	(31, 10015, 9, 57, '[{"id":"57","descripcion":"Cizalla de Tijera","cantidad":"3","stock":"16","precio":"812","total":"2436"}]', 462.84, 2436, 2898.84, 'Efectivo', '2017-12-26 22:25:33'),
	(32, 10016, 8, 57, '[{"id":"58","descripcion":"Coche llanta neumatica","cantidad":"1","stock":"17","precio":"588","total":"588"},{"id":"57","descripcion":"Cizalla de Tijera","cantidad":"5","stock":"11","precio":"812","total":"4060"},{"id":"56","descripcion":"Cizalla de Palanca","cantidad":"1","stock":"19","precio":"630","total":"630"}]', 1002.82, 5278, 6280.82, 'TD-4523523523', '2017-12-26 22:25:55'),
	(33, 10017, 7, 57, '[{"id":"57","descripcion":"Cizalla de Tijera","cantidad":"4","stock":"7","precio":"812","total":"3248"},{"id":"52","descripcion":"Bascula ","cantidad":"3","stock":"17","precio":"182","total":"546"},{"id":"55","descripcion":"Cilindro muestra de concreto","cantidad":"2","stock":"18","precio":"560","total":"1120"},{"id":"56","descripcion":"Cizalla de Palanca","cantidad":"1","stock":"18","precio":"630","total":"630"}]', 1053.36, 5544, 6597.36, 'Efectivo', '2017-12-26 22:26:28'),
	(34, 10018, 6, 57, '[{"id":"51","descripcion":"Tensor","cantidad":"1","stock":"19","precio":"140","total":"140"},{"id":"52","descripcion":"Bascula ","cantidad":"5","stock":"12","precio":"182","total":"910"},{"id":"53","descripcion":"Bomba Hidrostatica","cantidad":"1","stock":"8","precio":"1078","total":"1078"}]', 404.32, 2128, 2532.32, 'Efectivo', '2017-12-26 22:26:51'),
	(35, 10019, 5, 57, '[{"id":"56","descripcion":"Cizalla de Palanca","cantidad":"15","stock":"3","precio":"630","total":"9450"},{"id":"55","descripcion":"Cilindro muestra de concreto","cantidad":"1","stock":"17","precio":"560","total":"560"}]', 1901.9, 10010, 11911.9, 'Efectivo', '2017-12-26 22:27:13'),
	(36, 10020, 4, 57, '[{"id":"55","descripcion":"Cilindro muestra de concreto","cantidad":"1","stock":"16","precio":"560","total":"560"},{"id":"54","descripcion":"Chapeta","cantidad":"1","stock":"16","precio":"924","total":"924"}]', 281.96, 1484, 1765.96, 'TC-46346346346', '2017-12-26 22:27:42'),
	(37, 10021, 3, 1, '[{"id":"60","descripcion":"Cortadora de Baldosin","cantidad":"1","stock":"13","precio":"1302","total":"1302"},{"id":"59","descripcion":"Cono slump","cantidad":"1","stock":"15","precio":"196","total":"196"}]', 149.8, 1498, 1647.8, 'Efectivo', '2018-02-06 22:47:02'),
	(38, 10022, 6, 1, '[{"id":"60","descripcion":"Cortadora de Baldosin","cantidad":"1","stock":"12","precio":"1302","total":"1302"},{"id":"59","descripcion":"Cono slump","cantidad":"1","stock":"14","precio":"196","total":"196"},{"id":"58","descripcion":"Coche llanta neumatica","cantidad":"1","stock":"16","precio":"588","total":"588"},{"id":"57","descripcion":"Cizalla de Tijera","cantidad":"1","stock":"19","precio":"812","total":"812"},{"id":"56","descripcion":"Cizalla de Palanca","cantidad":"1","stock":"2","precio":"630","total":"630"}]', 141.12, 3528, 3669.12, 'Efectivo', '2019-05-25 06:10:41'),
	(39, 10023, 9, 1, '[{"id":"59","descripcion":"Cono slump","cantidad":"1","stock":"13","precio":"196","total":"196"},{"id":"60","descripcion":"Cortadora de Baldosin","cantidad":"1","stock":"11","precio":"1302","total":"1302"},{"id":"57","descripcion":"Cizalla de Tijera","cantidad":"1","stock":"18","precio":"812","total":"812"}]', 277.2, 2310, 2587.2, 'Efectivo', '2019-06-20 20:33:23'),
	(40, 10024, 5, 1, '[{"id":"56","descripcion":"Cizalla de Palanca","cantidad":"1","stock":"1","precio":"630","total":"630"}]', 0, 630, 630, 'Efectivo', '2023-08-19 01:22:06'),
	(41, 10025, 13, 1, '[{"id":"9","descripcion":"Hamburguesa doble carne","cantidad":"1","stock":"14","precio":"21000","total":"21000"},{"id":"7","descripcion":"Perro Caliente Sencillo","cantidad":"1","stock":"11","precio":"2156","total":"2156"}]', 3704.96, 23156, 26861, 'Efectivo', '2023-08-22 20:56:07');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
