-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 09-11-2022 a las 14:44:10
-- Versión del servidor: 10.4.20-MariaDB
-- Versión de PHP: 8.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `seguridapp`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `codigos`
--

CREATE TABLE `codigos` (
  `codigo` varchar(15) NOT NULL,
  `responsable` varchar(20) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `codigos`
--

INSERT INTO `codigos` (`codigo`, `responsable`, `createdAt`, `updatedAt`) VALUES
('seguridad21', 'Ariana Campos', '2022-10-24 00:00:00', '2022-10-24 00:00:00'),
('seguridad22', 'Jonaidys Martinez', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('seguridad23', 'Richard Barrera', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `nombres` varchar(50) NOT NULL,
  `ci` varchar(15) NOT NULL,
  `telefono` varchar(10) NOT NULL,
  `empresa` varchar(40) NOT NULL,
  `direccion` varchar(30) NOT NULL,
  `observaciones` varchar(50) NOT NULL,
  `carnet` varchar(100) NOT NULL,
  `diaentrada` date NOT NULL,
  `horaentrada` time NOT NULL,
  `registrado` varchar(50) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `nombres`, `ci`, `telefono`, `empresa`, `direccion`, `observaciones`, `carnet`, `diaentrada`, `horaentrada`, `registrado`, `createdAt`, `updatedAt`) VALUES
(49, 'Germán E Moreno C', '27376369', '0414021002', 'Papi Gold', 'Auditoría Interna', 'Coronel', '1515', '2022-11-09', '09:41:00', 'Ariana Campos', '2022-11-09 13:41:50', '2022-11-09 13:41:50'),
(50, 'Germán E Moreno C', '27376369', '0414021002', 'Mami Gold', 'Consultoría Jurídica', 'Comandante', '1515', '2022-11-09', '09:43:00', 'Ariana Campos', '2022-11-09 13:43:48', '2022-11-09 13:43:48');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `codigos`
--
ALTER TABLE `codigos`
  ADD PRIMARY KEY (`codigo`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
