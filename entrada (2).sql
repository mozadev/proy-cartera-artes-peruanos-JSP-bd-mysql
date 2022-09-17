-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 12-02-2022 a las 23:59:17
-- Versión del servidor: 10.4.21-MariaDB
-- Versión de PHP: 7.3.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `entrada`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cartera`
--

CREATE TABLE `cartera` (
  `CODCAR` int(10) UNSIGNED NOT NULL,
  `DESCRIPCAR` varchar(45) NOT NULL,
  `PRECIOCAR` varchar(45) NOT NULL,
  `FECHACAR` varchar(45) NOT NULL,
  `CODTIPCAR` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `cartera`
--

INSERT INTO `cartera` (`CODCAR`, `DESCRIPCAR`, `PRECIOCAR`, `FECHACAR`, `CODTIPCAR`) VALUES
(1, 'Cartera Alpaca Luis Vouton', '2000', '5/7/2022', 3),
(2, 'Cartera Cuerina Nueva', '22', '12/2/2022', 4),
(3, 'Cartera de lana multifuncional', '400', '3/01/2022', 2),
(4, 'Mini cartera cuero', '600', '7/01/2022', 1),
(5, 'Cartera de Alpaca Doble', '902.0', '10/02/2022', 3),
(6, 'Cartera Cuero Doble Forro VERDE', '450.0', '07/06/2022', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipocartera`
--

CREATE TABLE `tipocartera` (
  `CODTIPCAR` int(10) UNSIGNED NOT NULL,
  `NOMBTIPCAR` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tipocartera`
--

INSERT INTO `tipocartera` (`CODTIPCAR`, `NOMBTIPCAR`) VALUES
(1, 'Cuero'),
(2, 'Lana'),
(3, 'Alpaca'),
(4, 'Cuerina');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `cartera`
--
ALTER TABLE `cartera`
  ADD PRIMARY KEY (`CODCAR`),
  ADD KEY `FK_CARTERA_1` (`CODTIPCAR`);

--
-- Indices de la tabla `tipocartera`
--
ALTER TABLE `tipocartera`
  ADD PRIMARY KEY (`CODTIPCAR`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `cartera`
--
ALTER TABLE `cartera`
  MODIFY `CODCAR` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `tipocartera`
--
ALTER TABLE `tipocartera`
  MODIFY `CODTIPCAR` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `cartera`
--
ALTER TABLE `cartera`
  ADD CONSTRAINT `FK_CARTERA_1` FOREIGN KEY (`CODTIPCAR`) REFERENCES `tipocartera` (`CODTIPCAR`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
