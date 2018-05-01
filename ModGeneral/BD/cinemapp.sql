-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3306
-- Tiempo de generación: 01-05-2018 a las 21:02:40
-- Versión del servidor: 5.7.19
-- Versión de PHP: 7.1.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `cinemapp`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clasificaciones`
--

DROP TABLE IF EXISTS `clasificaciones`;
CREATE TABLE IF NOT EXISTS `clasificaciones` (
  `id_clasificacion` int(11) NOT NULL AUTO_INCREMENT,
  `nombre_clas` varchar(100) NOT NULL,
  `descripcion_clas` varchar(255) NOT NULL,
  PRIMARY KEY (`id_clasificacion`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `clasificaciones`
--

INSERT INTO `clasificaciones` (`id_clasificacion`, `nombre_clas`, `descripcion_clas`) VALUES
(1, 'A-TP', 'Todo  publico'),
(2, 'B-M12', 'Mayores de 12 a&ntildeos.'),
(3, 'C-M15', 'Mayores de 15 a&ntildeos'),
(4, 'D-M18', 'Mayores de 18 a&ntildeos'),
(5, 'E-M21', 'Mayores de 21 a&ntildeos');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `horarios`
--

DROP TABLE IF EXISTS `horarios`;
CREATE TABLE IF NOT EXISTS `horarios` (
  `id_horario` int(11) NOT NULL AUTO_INCREMENT,
  `hora_inicio` time NOT NULL,
  `hora_final` time NOT NULL,
  `descripcion` varchar(50) NOT NULL,
  PRIMARY KEY (`id_horario`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `peliculas_cart`
--

DROP TABLE IF EXISTS `peliculas_cart`;
CREATE TABLE IF NOT EXISTS `peliculas_cart` (
  `id_pelicula` int(11) NOT NULL AUTO_INCREMENT,
  `nombre_cast` varchar(100) NOT NULL,
  `nombre_original` varchar(100) NOT NULL,
  `id_genero` int(11) NOT NULL,
  `duracion` double NOT NULL,
  `id_clasificacion` int(11) NOT NULL,
  `fecha_prod` date NOT NULL,
  `fecha_estreno` date NOT NULL,
  `sinopsis_mv` varchar(500) NOT NULL,
  `id_horario` int(11) NOT NULL,
  PRIMARY KEY (`id_pelicula`),
  KEY `id_genero` (`id_genero`,`id_clasificacion`),
  KEY `id_horario` (`id_horario`),
  KEY `id_clasificacion` (`id_clasificacion`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `salas`
--

DROP TABLE IF EXISTS `salas`;
CREATE TABLE IF NOT EXISTS `salas` (
  `id_sala` int(11) NOT NULL AUTO_INCREMENT,
  `nombre_sala` varchar(255) NOT NULL,
  `id_tipo` int(11) NOT NULL,
  `descripcion` varchar(500) NOT NULL,
  PRIMARY KEY (`id_sala`),
  KEY `id_tipo` (`id_tipo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_salas`
--

DROP TABLE IF EXISTS `tipo_salas`;
CREATE TABLE IF NOT EXISTS `tipo_salas` (
  `id_tipo` int(11) NOT NULL AUTO_INCREMENT,
  `nombre_tipo` varchar(255) NOT NULL,
  `descripcion_tipo` varchar(400) NOT NULL,
  PRIMARY KEY (`id_tipo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
CREATE TABLE IF NOT EXISTS `usuarios` (
  `id_usuario` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) NOT NULL,
  `apellido_ma` varchar(255) NOT NULL,
  `apellido_pa` varchar(255) NOT NULL,
  `correo` varchar(255) NOT NULL,
  `pass` varchar(255) NOT NULL,
  `tipo_user` int(11) NOT NULL,
  `fecha_reg` date NOT NULL,
  PRIMARY KEY (`id_usuario`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id_usuario`, `nombre`, `apellido_ma`, `apellido_pa`, `correo`, `pass`, `tipo_user`, `fecha_reg`) VALUES
(1, 'Julio', 'Hernández', 'Castillo', 'abc@gmail.com', '123', 1, '2018-04-30'),
(2, 'Néstor', 'Hernández', 'Gómez', 'def@gmail.com', '123', 1, '2018-04-30'),
(3, 'Anthony', 'Mendoza', 'Mendoza', 'ghi@gmail.com', '123', 1, '2018-04-30'),
(4, 'Adriel', 'Viera', 'Viera', 'jkl@gmail.com', '123', 1, '2018-04-30'),
(5, 'José', 'Ramírez', 'Ramírez', 'nmnñ@gmail.com', '123', 1, '2018-04-30');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `venta_entradas`
--

DROP TABLE IF EXISTS `venta_entradas`;
CREATE TABLE IF NOT EXISTS `venta_entradas` (
  `id_venta` int(11) NOT NULL AUTO_INCREMENT,
  `id_pelicula` int(11) NOT NULL,
  `id_sala` int(11) NOT NULL,
  `id_horario` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `fecha_trans` date NOT NULL,
  `cantidad_ent` int(11) NOT NULL,
  `precio` double NOT NULL,
  `total_pago` double NOT NULL,
  `id_clasifiicacion` int(11) NOT NULL,
  PRIMARY KEY (`id_venta`),
  KEY `id_pelicula` (`id_pelicula`,`id_sala`,`id_horario`,`id_usuario`,`id_clasifiicacion`),
  KEY `id_usuario` (`id_usuario`),
  KEY `id_clasifiicacion` (`id_clasifiicacion`),
  KEY `id_sala` (`id_sala`),
  KEY `id_horario` (`id_horario`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `peliculas_cart`
--
ALTER TABLE `peliculas_cart`
  ADD CONSTRAINT `peliculas_cart_ibfk_1` FOREIGN KEY (`id_horario`) REFERENCES `horarios` (`id_horario`),
  ADD CONSTRAINT `peliculas_cart_ibfk_2` FOREIGN KEY (`id_clasificacion`) REFERENCES `clasificaciones` (`id_clasificacion`);

--
-- Filtros para la tabla `salas`
--
ALTER TABLE `salas`
  ADD CONSTRAINT `salas_ibfk_1` FOREIGN KEY (`id_tipo`) REFERENCES `tipo_salas` (`id_tipo`);

--
-- Filtros para la tabla `venta_entradas`
--
ALTER TABLE `venta_entradas`
  ADD CONSTRAINT `venta_entradas_ibfk_1` FOREIGN KEY (`id_pelicula`) REFERENCES `peliculas_cart` (`id_pelicula`),
  ADD CONSTRAINT `venta_entradas_ibfk_2` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios` (`id_usuario`),
  ADD CONSTRAINT `venta_entradas_ibfk_3` FOREIGN KEY (`id_clasifiicacion`) REFERENCES `clasificaciones` (`id_clasificacion`),
  ADD CONSTRAINT `venta_entradas_ibfk_4` FOREIGN KEY (`id_sala`) REFERENCES `salas` (`id_sala`),
  ADD CONSTRAINT `venta_entradas_ibfk_5` FOREIGN KEY (`id_horario`) REFERENCES `horarios` (`id_horario`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
