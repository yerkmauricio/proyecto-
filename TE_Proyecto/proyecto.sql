-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 29-06-2021 a las 22:12:32
-- Versión del servidor: 10.4.19-MariaDB
-- Versión de PHP: 7.4.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `proyecto`
--
CREATE DATABASE IF NOT EXISTS `proyecto` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `proyecto`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `gastos`
--

DROP TABLE IF EXISTS `gastos`;
CREATE TABLE `gastos` (
  `idg` int(11) NOT NULL,
  `idu` int(11) DEFAULT NULL,
  `descripcion` text DEFAULT NULL,
  `monto_gastado` float DEFAULT NULL,
  `fecha` date DEFAULT NULL,
  `hora` time DEFAULT NULL,
  `imagen` blob DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `gastos`
--

INSERT INTO `gastos` (`idg`, `idu`, `descripcion`, `monto_gastado`, `fecha`, `hora`, `imagen`) VALUES
(1, 1, 'alimentacion', 150, '2021-06-27', '15:21:46', NULL),
(3, 2, 'celular super hiper mega gamer FUUULLLLLL RGB', 2010.5, '2021-06-27', '19:29:55', NULL),
(4, 4, 'fanta', 10.58, '2021-06-28', '01:26:32', NULL),
(5, 4, 'laptop', 8000.59, '2021-06-28', '01:29:03', NULL),
(6, 1, 'coca kina', 1420.1, '2021-06-29', '14:05:24', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ingresos`
--

DROP TABLE IF EXISTS `ingresos`;
CREATE TABLE `ingresos` (
  `idi` int(11) NOT NULL,
  `idu` int(11) DEFAULT NULL,
  `descripcion` text DEFAULT NULL,
  `monto_ingreso` float DEFAULT NULL,
  `fecha` date DEFAULT NULL,
  `hora` time DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `ingresos`
--

INSERT INTO `ingresos` (`idi`, `idu`, `descripcion`, `monto_ingreso`, `fecha`, `hora`) VALUES
(1, 1, 'salario percibido', 500, '2021-06-27', '15:20:06'),
(2, 2, 'coca kina', 9.5, '2021-06-27', '19:09:01'),
(3, 1, 'fanta', 12.5, '2021-06-27', '18:35:17'),
(4, 4, 'coca kina', 10.9, '2021-06-28', '01:08:24'),
(5, 4, 'laptop super hiper mega GAMER RGB', 1500.7, '2021-06-28', '01:11:05'),
(6, 4, 'laptop super hiper mega GAMER RGB', 1500.7, '2021-06-28', '01:13:01'),
(7, 4, 'laptop super hiper mega GAMER RGB', 1500.7, '2021-06-28', '01:13:06'),
(8, 4, 'cocacola', 11.95, '2021-06-28', '01:19:43'),
(9, 4, 'laptop super hiper mega GAMER FULLLLLL RGB', 459.15, '2021-06-28', '01:20:50'),
(10, 6, 'laptop super hiper mega GAMER RGB', 15240.6, '2021-06-28', '01:29:40'),
(11, 2, 'salario percibido del mes de agosto', 0, '2021-06-29', '14:31:50');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
CREATE TABLE `usuarios` (
  `idu` int(11) NOT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  `apellido` varchar(50) DEFAULT NULL,
  `CI` int(12) DEFAULT NULL,
  `telefono` varchar(50) DEFAULT NULL,
  `celular` varchar(50) DEFAULT NULL,
  `correo` varchar(50) DEFAULT NULL,
  `password` varchar(20) DEFAULT NULL,
  `nivel` varchar(20) DEFAULT NULL,
  `imagen` blob DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`idu`, `nombre`, `apellido`, `CI`, `telefono`, `celular`, `correo`, `password`, `nivel`, `imagen`) VALUES
(1, 'Angel Esteban', 'Bautista Cabrera', 10736045, '', '+591 68011819', 'wigettarex46@gmail.com', '10736045', 'Administrador', NULL),
(2, 'Ever', 'Perez Chavez', 6932756, '1234567890', '+591 60655925', 'ever@gmail.com', '6932756', 'Administrador', NULL),
(4, 'juani', 'alcachofaz', 987654321, '123456789', '13579', 'prueba@gmail.com', '123', 'Usuario', NULL),
(5, 'Ejemplo', 'Ejemplo', 12345678, '87654321', '1357924680', 'ejemplo@gmail.com', '12345', 'Visitante', NULL),
(6, 'Ange Esteban', 'Bautista Cabrea', 10736045, '12345678', '68011819', 'wigettarex46@hotmail.com', '12345', 'Usuario', NULL),
(7, 'asdf', 'asdf', 12345, '12345', '12345', 'ejemplo1@gmail.com', '12345', 'Visitante', NULL),
(8, 'mendel', 'mendel', 987654321, '123456789', '9517536842', 'mendel@gmail.com', '123', 'Visitante', NULL);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `gastos`
--
ALTER TABLE `gastos`
  ADD PRIMARY KEY (`idg`),
  ADD KEY `idu` (`idu`);

--
-- Indices de la tabla `ingresos`
--
ALTER TABLE `ingresos`
  ADD PRIMARY KEY (`idi`),
  ADD KEY `idu` (`idu`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`idu`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `gastos`
--
ALTER TABLE `gastos`
  MODIFY `idg` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `ingresos`
--
ALTER TABLE `ingresos`
  MODIFY `idi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `idu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `gastos`
--
ALTER TABLE `gastos`
  ADD CONSTRAINT `gastos_ibfk_1` FOREIGN KEY (`idu`) REFERENCES `usuarios` (`idu`);

--
-- Filtros para la tabla `ingresos`
--
ALTER TABLE `ingresos`
  ADD CONSTRAINT `ingresos_ibfk_1` FOREIGN KEY (`idu`) REFERENCES `usuarios` (`idu`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
