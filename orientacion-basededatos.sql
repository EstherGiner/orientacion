-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 24-05-2023 a las 21:30:56
-- Versión del servidor: 10.4.27-MariaDB
-- Versión de PHP: 8.0.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `orientacion`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `asesoria`
--

CREATE TABLE `asesoria` (
  `id_asesoria` int(11) NOT NULL,
  `nombre_as` varchar(100) DEFAULT NULL,
  `dni_as` varchar(10) DEFAULT NULL,
  `titulo_as` varchar(50) DEFAULT NULL,
  `telefono_as` varchar(10) DEFAULT NULL,
  `email_as` varchar(30) DEFAULT NULL,
  `descripcion_as` text DEFAULT NULL,
  `domicilio_as` varchar(30) DEFAULT NULL,
  `fecha_inicio` datetime DEFAULT NULL,
  `fecha_fin` datetime DEFAULT NULL,
  `id_estado` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `asesoria`
--

INSERT INTO `asesoria` (`id_asesoria`, `nombre_as`, `dni_as`, `titulo_as`, `telefono_as`, `email_as`, `descripcion_as`, `domicilio_as`, `fecha_inicio`, `fecha_fin`, `id_estado`) VALUES
(14, 'Jonatan Seg', '544343', 'Duda ... 34343', '43 432424', 'fefeifef@dfwfwww', 'Problemas Internet', 'Av. Zaragoza', '2023-04-23 13:48:17', NULL, 1),
(15, 'Luis', '453534g4', 'Otra duda', '43 4324242', '', 'Otrarrrr duca', 'C/ pepito ...', '2023-04-23 18:07:12', NULL, 1),
(16, 'Juanitorrrrr', '5443432423', 'Duda ...', '', '', 'Massss dudas', '', '2023-04-24 14:20:56', NULL, 1),
(17, 'Luis', '453534g4', 'Duda ... 34343', '43 4324242', 'fefeifef@dfwfwww', 'rrrrrrrrrrrr', 'C/ pepito ...', '2023-04-24 18:10:01', NULL, 1),
(18, 'Juanito', '453534g4  ', '', '', '', 'Duda peac', '', '2023-04-24 19:11:06', NULL, 1),
(19, 'Luis', '453534444', 'No se como ... tal tal tal', '', 'fefeifef@dfwfwww', 'Describimosssddd', '', '2023-04-25 12:20:59', NULL, 1),
(20, 'Jonatan', '5443432423', '', '', '', '', '', '2023-04-25 12:43:56', NULL, 1),
(29, 'Luis', '5443432423', '', '', 'ffff@ffff', 'modificada esther', '', '2023-04-25 19:05:42', NULL, 1),
(32, 'Esther', '72964477C', 'Peac_Peluqueria_Octubre', '97876765', 'eginerm@prueba.es', 'Fechas Documentacion', 'Avda Zaragoza 59', '2023-05-02 19:34:44', NULL, 2),
(40, 'esther', '723434b', 'pruebacorreo', '34324324', 'eginer06@gmail.com', 'prueba de correo', 'beceite', '2023-05-20 14:31:24', NULL, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `departamento`
--

CREATE TABLE `departamento` (
  `id_departamento` int(11) NOT NULL,
  `departamento` varchar(45) NOT NULL,
  `departamento_corto` varchar(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `departamento`
--

INSERT INTO `departamento` (`id_departamento`, `departamento`, `departamento_corto`) VALUES
(1, 'Conserjeria', 'CONS'),
(2, 'PEAC', 'PEAC');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estados`
--

CREATE TABLE `estados` (
  `id_estado` int(11) NOT NULL,
  `estado` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `estados`
--

INSERT INTO `estados` (`id_estado`, `estado`) VALUES
(1, 'Nueva'),
(2, 'Procesando'),
(3, 'Cerrada');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `profesores`
--

CREATE TABLE `profesores` (
  `id_profesor` int(11) NOT NULL,
  `login` varchar(45) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `nombre_completo` varchar(255) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `profesores`
--

INSERT INTO `profesores` (`id_profesor`, `login`, `password`, `nombre_completo`, `email`) VALUES
(1, 'javier', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 'Javier Arenzana', NULL),
(2, 'josemanuel', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 'José Manuel', 'eginerm@uoc.edu'),
(3, 'conchi', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 'Conchi', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `profesores_departamento`
--

CREATE TABLE `profesores_departamento` (
  `id_profesores_departamento` int(11) NOT NULL,
  `id_profesor` int(11) NOT NULL,
  `id_rol` int(11) NOT NULL,
  `id_departamento` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `profesores_departamento`
--

INSERT INTO `profesores_departamento` (`id_profesores_departamento`, `id_profesor`, `id_rol`, `id_departamento`) VALUES
(1, 1, 10, 2),
(2, 2, 20, 2),
(3, 3, 30, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `reg_acciones`
--

CREATE TABLE `reg_acciones` (
  `id_reg_acciones` int(11) NOT NULL,
  `fecha_reg` datetime NOT NULL,
  `accion` varchar(255) NOT NULL,
  `automatica` tinyint(4) NOT NULL DEFAULT 0,
  `id_asesoria` int(11) NOT NULL,
  `id_profesor` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `reg_acciones`
--

INSERT INTO `reg_acciones` (`id_reg_acciones`, `fecha_reg`, `accion`, `automatica`, `id_asesoria`, `id_profesor`) VALUES
(2, '2023-04-23 13:48:17', 'Inicia', 1, 14, 1),
(3, '2023-04-23 18:07:12', 'Inicia', 1, 15, 1),
(4, '2023-04-24 14:20:56', 'Inicia', 1, 16, 1),
(17, '2023-04-24 18:10:01', 'Inicia', 1, 17, 1),
(22, '2023-04-24 19:11:06', 'Inicia', 1, 18, 1),
(25, '2023-04-25 12:20:59', 'Inicia', 1, 19, 1),
(27, '2023-04-25 12:43:56', 'Inicia', 1, 20, 1),
(42, '2023-04-25 19:05:42', 'Inicia', 1, 29, 3),
(64, '2023-05-02 19:34:44', 'Inicia', 1, 32, 1),
(65, '2023-05-14 20:16:36', 'El asesor peac le ha llamado, y viene al centro el próximo lunes dia 15/05/2023 a las 13:00', 0, 32, 1),
(83, '2023-05-20 14:31:24', 'Inicia', 1, 40, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rol`
--

CREATE TABLE `rol` (
  `id_rol` int(11) NOT NULL,
  `rol` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `rol`
--

INSERT INTO `rol` (`id_rol`, `rol`) VALUES
(10, 'root'),
(20, 'Orientación'),
(30, 'Conserje');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `asesoria`
--
ALTER TABLE `asesoria`
  ADD PRIMARY KEY (`id_asesoria`),
  ADD KEY `fk_asesoria_estados_idx` (`id_estado`);

--
-- Indices de la tabla `departamento`
--
ALTER TABLE `departamento`
  ADD PRIMARY KEY (`id_departamento`);

--
-- Indices de la tabla `estados`
--
ALTER TABLE `estados`
  ADD PRIMARY KEY (`id_estado`);

--
-- Indices de la tabla `profesores`
--
ALTER TABLE `profesores`
  ADD PRIMARY KEY (`id_profesor`);

--
-- Indices de la tabla `profesores_departamento`
--
ALTER TABLE `profesores_departamento`
  ADD PRIMARY KEY (`id_profesores_departamento`),
  ADD KEY `fk_profesores_departamento_profesores1_idx` (`id_profesor`),
  ADD KEY `fk_profesores_departamento_rol1_idx` (`id_rol`),
  ADD KEY `fk_profesores_departamento_departamento1_idx` (`id_departamento`);

--
-- Indices de la tabla `reg_acciones`
--
ALTER TABLE `reg_acciones`
  ADD PRIMARY KEY (`id_reg_acciones`),
  ADD KEY `fk_reg_acciones_asesoria1_idx` (`id_asesoria`),
  ADD KEY `fk_reg_acciones_profesores1_idx` (`id_profesor`);

--
-- Indices de la tabla `rol`
--
ALTER TABLE `rol`
  ADD PRIMARY KEY (`id_rol`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `asesoria`
--
ALTER TABLE `asesoria`
  MODIFY `id_asesoria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT de la tabla `departamento`
--
ALTER TABLE `departamento`
  MODIFY `id_departamento` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `estados`
--
ALTER TABLE `estados`
  MODIFY `id_estado` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `profesores`
--
ALTER TABLE `profesores`
  MODIFY `id_profesor` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `profesores_departamento`
--
ALTER TABLE `profesores_departamento`
  MODIFY `id_profesores_departamento` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `reg_acciones`
--
ALTER TABLE `reg_acciones`
  MODIFY `id_reg_acciones` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=84;

--
-- AUTO_INCREMENT de la tabla `rol`
--
ALTER TABLE `rol`
  MODIFY `id_rol` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `asesoria`
--
ALTER TABLE `asesoria`
  ADD CONSTRAINT `fk_asesoria_estados` FOREIGN KEY (`id_estado`) REFERENCES `estados` (`id_estado`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `profesores_departamento`
--
ALTER TABLE `profesores_departamento`
  ADD CONSTRAINT `fk_profesores_departamento_departamento1` FOREIGN KEY (`id_departamento`) REFERENCES `departamento` (`id_departamento`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_profesores_departamento_profesores1` FOREIGN KEY (`id_profesor`) REFERENCES `profesores` (`id_profesor`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_profesores_departamento_rol1` FOREIGN KEY (`id_rol`) REFERENCES `rol` (`id_rol`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `reg_acciones`
--
ALTER TABLE `reg_acciones`
  ADD CONSTRAINT `fk_reg_acciones_asesoria1` FOREIGN KEY (`id_asesoria`) REFERENCES `asesoria` (`id_asesoria`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_reg_acciones_profesores1` FOREIGN KEY (`id_profesor`) REFERENCES `profesores` (`id_profesor`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
