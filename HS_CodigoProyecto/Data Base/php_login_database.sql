-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 28-11-2018 a las 09:54:17
-- Versión del servidor: 10.1.32-MariaDB
-- Versión de PHP: 7.2.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `php_login_database`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `accion`
--

CREATE TABLE `accion` (
  `serial` int(5) NOT NULL,
  `nombre` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `precio` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `accion`
--

INSERT INTO `accion` (`serial`, `nombre`, `precio`) VALUES
(7810, 'Historieta Marvel Co', 20000),
(7820, 'Caricaturas Dc Comic', 20000),
(7830, 'Caricaturas', 20000),
(7840, 'Coleccion', 20000),
(7850, 'Anime', 20000),
(7860, 'Video Juegos', 20000),
(7870, 'Series De Accion', 20000),
(7880, 'Peliculas', 20000),
(7890, 'Serie De Television', 20000),
(7900, 'Super Heroes', 20000);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `historico`
--

CREATE TABLE `historico` (
  `serial` int(5) NOT NULL,
  `nombre` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `precio` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `historico`
--

INSERT INTO `historico` (`serial`, `nombre`, `precio`) VALUES
(6010, 'Abraham Liccon', 20000),
(6020, 'Charles Chaplin', 20000),
(6030, 'Albert Einstein', 20000),
(6040, 'Cristobal Colon', 20000),
(6050, 'Marionetas De Papel', 20000),
(6060, 'Muñeca De Los 80', 20000),
(6070, 'Muñeca De Los 70', 20000),
(6080, 'Muñeca De Trapo', 20000),
(6090, 'Titere De Madera', 20000),
(6100, 'Familia Hecha En Mad', 20000);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `inteligentes`
--

CREATE TABLE `inteligentes` (
  `serial` int(5) NOT NULL,
  `nombre` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `precio` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `inteligentes`
--

INSERT INTO `inteligentes` (`serial`, `nombre`, `precio`) VALUES
(8810, 'Robot', 30000),
(8820, 'Muñeca Sintetica', 30000),
(8830, 'Mi amiga Cayla', 30000),
(8840, 'Perro Robotico', 30000),
(8850, 'Gato Robotico', 30000),
(8860, 'Robot De Accion', 30000),
(8870, 'Robot Bailarin', 30000),
(8880, 'Robot Armable', 30000),
(8890, 'Robot Cariñoso', 30000),
(8900, 'Bebe Robot', 30000);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `peluche`
--

CREATE TABLE `peluche` (
  `serial` int(5) NOT NULL,
  `nombre` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `precio` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `peluche`
--

INSERT INTO `peluche` (`serial`, `nombre`, `precio`) VALUES
(5610, 'Oso', 15000),
(5620, 'Perro', 15000),
(5630, 'Elefante', 15000),
(5640, 'Gato', 15000),
(5650, 'Jirafa', 15000),
(5660, 'Conejo', 15000),
(5670, 'Tigre', 15000),
(5680, 'Leon', 15000),
(5690, 'Meno', 15000),
(5700, 'Koala', 15000);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `cedula` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `numero` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `nombre` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `apellido` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `direcion` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(200) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `cedula`, `numero`, `nombre`, `apellido`, `direcion`, `email`, `password`) VALUES
(1, '1033813070', '3105507981', 'Luis Felipe', 'Duarte SaldaÃ±a', 'Calle 50 Sur #29-79', 'Lduartesald@uniminuto.edu.co', '$2y$10$a0FIbWqz0V9PIwEuG2DNhe/W3wZBA6FO1X1vvBEd/DJ.ThMSqTBy2');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `accion`
--
ALTER TABLE `accion`
  ADD PRIMARY KEY (`serial`);

--
-- Indices de la tabla `historico`
--
ALTER TABLE `historico`
  ADD PRIMARY KEY (`serial`);

--
-- Indices de la tabla `inteligentes`
--
ALTER TABLE `inteligentes`
  ADD PRIMARY KEY (`serial`);

--
-- Indices de la tabla `peluche`
--
ALTER TABLE `peluche`
  ADD PRIMARY KEY (`serial`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
