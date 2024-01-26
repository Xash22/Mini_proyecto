-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 01-06-2023 a las 17:56:36
-- Versión del servidor: 10.4.27-MariaDB
-- Versión de PHP: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `base`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `linux`
--









--
-- Volcado de datos para la tabla `linux`
--

INSERT INTO `linux` (`id`, `Fullname`, `phone`, `email`, `edad`, `linux_distribution`, `password`) VALUES
(1, 'Joshua Emil Peña Rosario', '8292809137', 'joshuapenacemas@gmail.com', '500', 'kali', '12345'),
(2, 'joel', '1234567987643', 'pepitopedro@d.g', '10000', 'kali', '123'),
(3, 'joel', '829-000-0000', 'pepitopedro@d.g', '56', 'ubuntu', '12345');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `linux`
--
ALTER TABLE `linux`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `linux`
--
ALTER TABLE `linux`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
