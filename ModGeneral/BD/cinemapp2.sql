-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3306
-- Tiempo de generación: 15-05-2018 a las 00:08:27
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
-- Base de datos: `cinemapp2`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `horarios`
--

DROP TABLE IF EXISTS `horarios`;
CREATE TABLE IF NOT EXISTS `horarios` (
  `idHorario` int(11) NOT NULL AUTO_INCREMENT,
  `hora` time NOT NULL,
  PRIMARY KEY (`idHorario`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `horarios`
--

INSERT INTO `horarios` (`idHorario`, `hora`) VALUES
(1, '08:00:00'),
(2, '10:00:00'),
(3, '12:00:00'),
(4, '14:00:00'),
(5, '16:00:00'),
(6, '18:00:00'),
(7, '20:00:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `peliculas`
--

DROP TABLE IF EXISTS `peliculas`;
CREATE TABLE IF NOT EXISTS `peliculas` (
  `idPelicula` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(25) NOT NULL,
  `genero` varchar(25) NOT NULL,
  `precio` double NOT NULL,
  PRIMARY KEY (`idPelicula`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `peliculas`
--

INSERT INTO `peliculas` (`idPelicula`, `nombre`, `genero`, `precio`) VALUES
(1, 'coco', 'animado', 3),
(2, 'titanic', 'romance', 5),
(3, '5 sombras de gray', 'drama', 5.5),
(4, '300', 'accion', 4),
(5, 'piratas del caribe', 'accion', 3),
(6, 'El Vampiro Teporocho', 'comedia picaresca', 5),
(7, 'Lo que el viento se llevó', ' drama', 3.5),
(8, 'Forrest Gump', ' entretenimiento', 4.25),
(9, 'Independence Day', 'accion', 5),
(10, 'Pretty Woman', 'comedia', 4.25),
(11, 'Matrix', 'accion', 5),
(12, 'Pearl Harbor', 'accion', 3),
(13, 'La vida es bella', 'drama', 4),
(14, 'Kill Bill: Volumen 1', 'accion', 5.5),
(15, 'Braveheart', 'accion', 4),
(16, 'Dirty Dancing', 'romance', 2.5),
(17, 'Armageddon', 'accion', 3),
(18, 'Ghost: Más allá del amor', 'romance', 5),
(19, 'El código Da Vinc', 'accion', 5),
(20, 'Scary Movie', 'comedia', 3),
(21, 'Pulp Fiction', 'accion', 3),
(22, 'American Pie', 'comedia', 5),
(23, 'Pulp Fiction', 'accion', 3),
(24, 'La pasión de Cristo', 'drama', 3),
(25, 'Shakespeare enamorado', 'drama', 4.5),
(26, 'Harry Potter', 'ciencia ficcion', 3),
(27, 'Matrix Revolutions', 'accion', 4),
(28, 'Alejandro Magno', 'accion', 3),
(29, 'Todo sobre mi madre', 'comedia', 3),
(30, 'E.T., el extraterrestre ', 'ciencia ficcion', 2.5),
(31, 'Ciudadano Kane', 'accion', 3),
(32, 'Salvar al soldado Ryan', 'accion', 5),
(33, 'La guerra de los mundos ', 'ciencia ficcion', 3),
(34, 'El club de la lucha', 'accion', 3),
(35, 'Kill Bill: Volumen 2 ', 'accion', 3.5),
(36, 'Casablanca', 'drama', 3),
(37, 'Matrix Reloaded', 'accion', 4.5),
(38, 'Solo en casa', 'comedia', 3),
(39, 'King Kong', 'accion', 5.5),
(40, 'Los ángeles de Charlie', 'accion', 3.5),
(41, 'Troya', 'accion', 3.5),
(42, 'Slumdog Millionaire', 'accion', 5),
(43, 'El guardaespaldas', 'accion', 4),
(44, 'Sr. y Sra. Smith', 'accion', 3),
(45, 'Gangs of New York', 'accion', 4.5),
(46, 'Notting Hill', 'drama', 3),
(47, 'Grease', 'entretenimiento', 2.5),
(48, 'American Beauty', 'drama', 3),
(49, 'Rocky', 'accion', 6.5),
(50, 'Parque Jurásico', 'accion', 5.5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `salas`
--

DROP TABLE IF EXISTS `salas`;
CREATE TABLE IF NOT EXISTS `salas` (
  `idSala` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`idSala`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `salas`
--

INSERT INTO `salas` (`idSala`, `nombre`) VALUES
(1, 'sala 1'),
(2, 'sala 2'),
(3, 'sala 3'),
(4, 'sala 4');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
CREATE TABLE IF NOT EXISTS `usuarios` (
  `idUsuario` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(25) NOT NULL,
  `pass` int(11) DEFAULT NULL,
  PRIMARY KEY (`idUsuario`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`idUsuario`, `nombre`, `pass`) VALUES
(1, 'Julio', 123),
(2, 'Nestor', 123),
(3, 'Antonio', 123),
(4, 'Adriel', 123),
(5, 'Antony', 123),
(6, 'David', 123);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ventas`
--

DROP TABLE IF EXISTS `ventas`;
CREATE TABLE IF NOT EXISTS `ventas` (
  `idVenta` int(11) NOT NULL AUTO_INCREMENT,
  `idPelicula` int(11) NOT NULL,
  `idUsuario` int(11) NOT NULL,
  `idSala` int(11) NOT NULL,
  `idHorario` int(11) NOT NULL,
  `fecha` date DEFAULT NULL,
  PRIMARY KEY (`idVenta`),
  KEY `idPelicula` (`idPelicula`),
  KEY `idUsuario` (`idUsuario`),
  KEY `idSala` (`idSala`),
  KEY `idHorario` (`idHorario`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `ventas`
--

INSERT INTO `ventas` (`idVenta`, `idPelicula`, `idUsuario`, `idSala`, `idHorario`, `fecha`) VALUES
(1, 4, 4, 1, 1, '2018-05-14'),
(2, 1, 1, 3, 2, '2018-05-14'),
(3, 5, 2, 3, 6, '2018-05-14'),
(4, 5, 2, 3, 6, '2018-05-14'),
(5, 2, 5, 4, 4, '2018-05-14'),
(6, 2, 5, 4, 4, '2018-05-14'),
(7, 4, 5, 3, 5, '2018-05-14'),
(8, 3, 3, 4, 7, '2018-05-14'),
(9, 3, 3, 3, 3, '2018-05-14'),
(10, 1, 3, 3, 7, '2018-05-14'),
(11, 1, 3, 2, 4, '2018-05-14'),
(12, 4, 1, 2, 2, '2018-05-14'),
(13, 4, 2, 4, 6, '2018-05-14'),
(14, 4, 2, 4, 6, '2018-05-14'),
(15, 2, 5, 2, 2, '2018-05-14'),
(16, 2, 5, 2, 2, '2018-05-14'),
(17, 4, 3, 4, 1, '2018-05-14'),
(18, 1, 1, 1, 3, '2018-05-14'),
(19, 4, 5, 3, 3, '2018-05-14'),
(20, 3, 4, 1, 7, '2018-05-14'),
(21, 4, 4, 2, 7, '2018-05-14'),
(22, 3, 4, 2, 3, '2018-05-14'),
(23, 4, 3, 2, 4, '2018-05-14'),
(24, 42, 1, 3, 2, '2018-05-14'),
(25, 6, 4, 1, 7, '2018-05-14'),
(26, 31, 1, 4, 5, '2018-05-14');

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `ventas`
--
ALTER TABLE `ventas`
  ADD CONSTRAINT `ventas_ibfk_1` FOREIGN KEY (`idPelicula`) REFERENCES `peliculas` (`idPelicula`),
  ADD CONSTRAINT `ventas_ibfk_2` FOREIGN KEY (`idUsuario`) REFERENCES `usuarios` (`idUsuario`),
  ADD CONSTRAINT `ventas_ibfk_3` FOREIGN KEY (`idSala`) REFERENCES `salas` (`idSala`),
  ADD CONSTRAINT `ventas_ibfk_4` FOREIGN KEY (`idHorario`) REFERENCES `horarios` (`idHorario`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
