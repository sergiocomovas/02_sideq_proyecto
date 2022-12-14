// archivo DATOS que genera el contenido de la tabla

-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3306
-- Tiempo de generación: 07-08-2022 a las 21:37:46
-- Versión del servidor: 5.7.36
-- Versión de PHP: 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `palmadb`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `reservas`
--

DROP TABLE IF EXISTS `reservas`;
CREATE TABLE IF NOT EXISTS `reservas` (
  `id` int(2) NOT NULL AUTO_INCREMENT,
  `fecha_creacion` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `fecha_entrada` date NOT NULL,
  `fecha_salida` date NOT NULL,
  `paxes` int(2) NOT NULL,
  `id_hotel` int(2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=58 DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `reservas`
--

INSERT INTO `reservas` (`id`, `fecha_creacion`, `fecha_entrada`, `fecha_salida`, `paxes`, `id_hotel`) VALUES
(1, '2022-08-07 20:09:23', '2022-08-16', '2022-08-20', 2, 1),
(2, '2022-08-07 20:09:23', '2022-08-09', '2022-08-13', 3, 2),
(3, '2022-08-07 20:14:29', '2022-08-14', '2022-08-17', 2, 2),
(4, '2022-08-07 20:14:29', '2022-08-21', '2022-08-27', 3, 1),
(5, '2022-08-07 20:14:29', '2022-08-14', '2022-08-27', 2, 2),
(6, '2022-08-07 20:14:29', '2022-08-21', '2022-08-31', 4, 1),
(7, '2022-08-07 20:14:29', '2022-08-28', '2022-08-31', 2, 2),
(8, '2022-08-07 20:14:29', '2022-08-01', '2022-08-13', 5, 1),
(9, '2022-08-07 20:14:29', '2022-08-01', '2022-08-10', 2, 2),
(10, '2022-08-07 20:14:29', '2022-08-06', '2022-08-24', 1, 1),
(11, '2022-08-07 20:14:29', '2022-08-01', '2022-08-20', 4, 2),
(12, '2022-08-07 20:14:29', '2022-08-09', '2022-08-19', 2, 1),
(13, '2022-08-07 20:14:29', '2022-08-18', '2022-08-27', 2, 2),
(14, '2022-08-07 20:14:29', '2022-08-11', '2022-08-20', 2, 1),
(15, '2022-08-07 20:15:39', '2022-09-14', '2022-09-17', 2, 2),
(16, '2022-08-07 20:15:39', '2022-09-21', '2022-09-27', 3, 1),
(17, '2022-08-07 20:15:39', '2022-09-14', '2022-09-27', 2, 2),
(18, '2022-08-07 20:17:00', '2022-09-14', '2022-09-17', 2, 2),
(19, '2022-08-07 20:17:00', '2022-09-21', '2022-09-27', 3, 1),
(20, '2022-08-07 20:17:00', '2022-09-14', '2022-09-27', 2, 2),
(21, '2022-08-07 20:18:08', '2022-09-14', '2022-09-17', 2, 2),
(22, '2022-08-07 20:18:08', '2022-09-21', '2022-09-27', 3, 1),
(23, '2022-08-07 20:18:08', '2022-09-14', '2022-09-27', 2, 2),
(24, '2022-08-07 20:18:08', '2022-09-21', '2022-09-22', 4, 1),
(25, '2022-08-07 20:18:08', '2022-09-28', '2022-09-29', 2, 2),
(26, '2022-08-07 20:18:08', '2022-09-10', '2022-09-15', 5, 1),
(27, '2022-08-07 20:18:08', '2022-09-10', '2022-09-11', 2, 2),
(28, '2022-08-07 20:18:08', '2022-09-06', '2022-09-24', 1, 1),
(29, '2022-08-07 20:18:08', '2022-09-01', '2022-09-20', 4, 2),
(30, '2022-08-07 20:18:08', '2022-09-09', '2022-09-19', 2, 1),
(31, '2022-08-07 20:18:08', '2022-09-18', '2022-09-27', 2, 2),
(32, '2022-08-07 20:18:08', '2022-09-11', '2022-09-20', 2, 1),
(33, '2022-08-07 20:18:44', '2022-10-14', '2022-10-17', 2, 2),
(34, '2022-08-07 20:18:44', '2022-10-21', '2022-10-27', 3, 1),
(35, '2022-08-07 20:18:44', '2022-10-14', '2022-10-27', 2, 2),
(36, '2022-08-07 20:18:44', '2022-10-21', '2022-10-22', 4, 1),
(37, '2022-08-07 20:18:44', '2022-10-28', '2022-10-29', 2, 2),
(38, '2022-08-07 20:18:44', '2022-10-01', '2022-10-13', 5, 1),
(39, '2022-08-07 20:18:44', '2022-10-01', '2022-10-10', 2, 2),
(40, '2022-08-07 20:18:44', '2022-10-06', '2022-10-24', 1, 1),
(41, '2022-08-07 20:18:44', '2022-10-01', '2022-10-20', 4, 2),
(42, '2022-08-07 20:18:44', '2022-10-09', '2022-10-19', 2, 1),
(43, '2022-08-07 20:18:44', '2022-10-18', '2022-10-27', 2, 2),
(44, '2022-08-07 20:18:44', '2022-10-11', '2022-10-20', 2, 1),
(45, '2022-08-07 20:20:08', '2022-11-14', '2022-11-17', 2, 2),
(46, '2022-08-07 20:20:08', '2022-11-21', '2022-11-27', 3, 1),
(47, '2022-08-07 20:20:08', '2022-11-14', '2022-11-27', 2, 2),
(48, '2022-08-07 20:20:08', '2022-11-21', '2022-11-22', 4, 1),
(49, '2022-08-07 20:20:08', '2022-11-28', '2022-11-29', 2, 2),
(50, '2022-08-07 20:20:08', '2022-11-01', '2022-11-13', 5, 1),
(51, '2022-08-07 20:20:08', '2022-11-01', '2022-11-10', 2, 2),
(52, '2022-08-07 20:20:08', '2022-11-06', '2022-11-24', 1, 1),
(53, '2022-08-07 20:20:44', '2022-12-14', '2022-12-17', 2, 2),
(54, '2022-08-07 20:20:44', '2022-12-21', '2022-12-27', 3, 1),
(55, '2022-08-07 20:20:44', '2022-12-14', '2022-12-27', 2, 2),
(56, '2022-08-07 20:20:44', '2022-12-21', '2022-12-22', 4, 1),
(57, '2022-08-07 20:20:44', '2022-12-28', '2022-12-29', 2, 2);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
