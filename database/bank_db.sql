-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:8889
-- Tiempo de generación: 30-01-2023 a las 22:16:37
-- Versión del servidor: 5.7.39
-- Versión de PHP: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `bank_db`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `account`
--

CREATE TABLE `account` (
  `accountId` int(11) NOT NULL,
  `clientId` int(11) NOT NULL,
  `createdAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `accountType` varchar(50) NOT NULL,
  `cash` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `account`
--

INSERT INTO `account` (`accountId`, `clientId`, `createdAt`, `updatedAt`, `accountType`, `cash`) VALUES
(1, 1, '2023-01-30 20:12:25', '2023-01-30 20:12:25', 'caja de ahorros', 5000),
(2, 3, '2023-01-30 20:13:48', '2023-01-30 20:13:48', 'caja de ahorros', 0),
(3, 4, '2023-01-30 20:15:58', '2023-01-30 22:09:43', 'caja de ahorros', 1200),
(4, 4, '2023-01-30 20:17:07', '2023-01-30 22:09:43', 'caja de ahorros', 5800),
(5, 6, '2023-01-30 20:18:35', '2023-01-30 20:18:35', '', 100000),
(6, 6, '2023-01-30 20:18:37', '2023-01-30 20:18:37', '', 100000);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `client`
--

CREATE TABLE `client` (
  `clientId` int(11) NOT NULL,
  `createdAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `name` varchar(50) NOT NULL,
  `lastName` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `client`
--

INSERT INTO `client` (`clientId`, `createdAt`, `updatedAt`, `name`, `lastName`) VALUES
(1, '2023-01-30 20:11:05', '2023-01-30 20:11:05', 'francisco ', 'pedraza'),
(3, '2023-01-30 20:13:28', '2023-01-30 20:13:28', 'federico', 'ruiz'),
(4, '2023-01-30 20:15:28', '2023-01-30 20:15:28', 'emiliano', 'zontella'),
(5, '2023-01-30 20:18:12', '2023-01-30 20:18:12', 'ezequiel', 'correa'),
(6, '2023-01-30 20:18:14', '2023-01-30 20:18:14', 'ezequiel', 'correa');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `transfer`
--

CREATE TABLE `transfer` (
  `transferId` int(11) NOT NULL COMMENT ' ',
  `createdAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `originAccountId` int(50) NOT NULL,
  `clientId` int(11) NOT NULL,
  `destinyAccountId` int(50) NOT NULL,
  `amount` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `transfer`
--

INSERT INTO `transfer` (`transferId`, `createdAt`, `updatedAt`, `originAccountId`, `clientId`, `destinyAccountId`, `amount`) VALUES
(1, '2023-01-30 22:09:43', '2023-01-30 22:09:43', 3, 4, 4, 2000);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `account`
--
ALTER TABLE `account`
  ADD PRIMARY KEY (`accountId`),
  ADD KEY `clientId` (`clientId`);

--
-- Indices de la tabla `client`
--
ALTER TABLE `client`
  ADD PRIMARY KEY (`clientId`);

--
-- Indices de la tabla `transfer`
--
ALTER TABLE `transfer`
  ADD PRIMARY KEY (`transferId`),
  ADD KEY `originAccountId` (`originAccountId`,`destinyAccountId`),
  ADD KEY `destinyAccoutId` (`destinyAccountId`),
  ADD KEY `clientId` (`clientId`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `account`
--
ALTER TABLE `account`
  MODIFY `accountId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `client`
--
ALTER TABLE `client`
  MODIFY `clientId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `transfer`
--
ALTER TABLE `transfer`
  MODIFY `transferId` int(11) NOT NULL AUTO_INCREMENT COMMENT ' ', AUTO_INCREMENT=2;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `account`
--
ALTER TABLE `account`
  ADD CONSTRAINT `account_ibfk_1` FOREIGN KEY (`clientId`) REFERENCES `client` (`clientId`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `transfer`
--
ALTER TABLE `transfer`
  ADD CONSTRAINT `transfer_ibfk_1` FOREIGN KEY (`originAccountId`) REFERENCES `account` (`accountId`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `transfer_ibfk_2` FOREIGN KEY (`destinyAccountId`) REFERENCES `account` (`accountId`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `transfer_ibfk_3` FOREIGN KEY (`clientId`) REFERENCES `client` (`clientId`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
