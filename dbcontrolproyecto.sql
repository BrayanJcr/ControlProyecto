-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 22-09-2021 a las 05:29:13
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
-- Base de datos: `dbcontrolproyecto`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tblactividad`
--

CREATE TABLE `tblactividad` (
  `id_actividad` int(4) NOT NULL,
  `tituloActiv` varchar(100) NOT NULL,
  `fechaInicio` date NOT NULL,
  `fechaFin` date NOT NULL,
  `descripcionActi` text NOT NULL,
  `id_proyecto` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tblactividad`
--

INSERT INTO `tblactividad` (`id_actividad`, `tituloActiv`, `fechaInicio`, `fechaFin`, `descripcionActi`, `id_proyecto`) VALUES
(1, 'Poner Columnas', '2021-09-01', '2021-09-10', 'Se solicita poner actividad', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tblarea`
--

CREATE TABLE `tblarea` (
  `id_area` int(4) NOT NULL,
  `nombreArea` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tblarea`
--

INSERT INTO `tblarea` (`id_area`, `nombreArea`) VALUES
(1, 'TIC');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tblcargo`
--

CREATE TABLE `tblcargo` (
  `id_cargo` int(4) NOT NULL,
  `nombreCargo` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tblcargo`
--

INSERT INTO `tblcargo` (`id_cargo`, `nombreCargo`) VALUES
(1, 'Administrador');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tblfirmadigital`
--

CREATE TABLE `tblfirmadigital` (
  `id_firma` int(4) NOT NULL,
  `documento` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tblfirmadigital`
--

INSERT INTO `tblfirmadigital` (`id_firma`, `documento`) VALUES
(1, 'firma_Brayan.doc');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tblprofesion`
--

CREATE TABLE `tblprofesion` (
  `id_profesion` int(4) NOT NULL,
  `nombreProfesion` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tblprofesion`
--

INSERT INTO `tblprofesion` (`id_profesion`, `nombreProfesion`) VALUES
(1, 'Ingeniero Sistemas');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tblprofesional`
--

CREATE TABLE `tblprofesional` (
  `DNI` int(11) NOT NULL,
  `profNombre` varchar(20) NOT NULL,
  `profApellido` varchar(20) NOT NULL,
  `id_usuario` int(4) NOT NULL,
  `id_firma` int(4) NOT NULL,
  `id_area` int(4) NOT NULL,
  `id_profesion` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tblprofesional`
--

INSERT INTO `tblprofesional` (`DNI`, `profNombre`, `profApellido`, `id_usuario`, `id_firma`, `id_area`, `id_profesion`) VALUES
(1, 'Brayan', 'Carhuamaca', 1, 1, 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tblprofesional_actividad`
--

CREATE TABLE `tblprofesional_actividad` (
  `id_actividad` int(4) NOT NULL,
  `DNI` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tblprofesional_reunion`
--

CREATE TABLE `tblprofesional_reunion` (
  `DNI` int(8) NOT NULL,
  `id_reunion` int(4) NOT NULL,
  `fecha` date NOT NULL,
  `ubicacion` varchar(60) NOT NULL,
  `tema` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tblprofesional_reunion`
--

INSERT INTO `tblprofesional_reunion` (`DNI`, `id_reunion`, `fecha`, `ubicacion`, `tema`) VALUES
(1, 1, '2021-09-01', 'jr. Celendin 145', 'Reunion para el dia lunes firma de actas');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tblproyecto`
--

CREATE TABLE `tblproyecto` (
  `id_proyecto` int(4) NOT NULL,
  `tituloProyec` varchar(200) NOT NULL,
  `fechaInicioPro` date NOT NULL,
  `fechaFinPro` date NOT NULL,
  `ubicacion` varchar(150) NOT NULL,
  `distrito` varchar(50) NOT NULL,
  `departamento` varchar(50) NOT NULL,
  `DNI` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tblproyecto`
--

INSERT INTO `tblproyecto` (`id_proyecto`, `tituloProyec`, `fechaInicioPro`, `fechaFinPro`, `ubicacion`, `distrito`, `departamento`, `DNI`) VALUES
(1, 'Proyecto de puente', '2021-09-01', '2026-09-02', 'jr. Claveles 234', 'Huancayo', 'Ancash', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tblrecurso`
--

CREATE TABLE `tblrecurso` (
  `id_recurso` int(4) NOT NULL,
  `nombreRecurso` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tblrecurso`
--

INSERT INTO `tblrecurso` (`id_recurso`, `nombreRecurso`) VALUES
(1, 'clavos');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tblrecurso_actividad`
--

CREATE TABLE `tblrecurso_actividad` (
  `id_recurso` int(4) NOT NULL,
  `id_actividad` int(4) NOT NULL,
  `cantidadRecur` int(11) NOT NULL,
  `costoRecur` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tblrecurso_actividad`
--

INSERT INTO `tblrecurso_actividad` (`id_recurso`, `id_actividad`, `cantidadRecur`, `costoRecur`) VALUES
(1, 1, 1, 123);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tblreunion`
--

CREATE TABLE `tblreunion` (
  `id_reunion` int(4) NOT NULL,
  `tipoReunion` varchar(200) NOT NULL,
  `id_proyecto` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tblreunion`
--

INSERT INTO `tblreunion` (`id_reunion`, `tipoReunion`, `id_proyecto`) VALUES
(1, 'Acta de Reunion', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tblusuario`
--

CREATE TABLE `tblusuario` (
  `id_usuario` int(4) NOT NULL,
  `usuario` varchar(20) NOT NULL,
  `contraseña` varchar(20) NOT NULL,
  `id_cargo` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tblusuario`
--

INSERT INTO `tblusuario` (`id_usuario`, `usuario`, `contraseña`, `id_cargo`) VALUES
(1, 'bra', '123', 1);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `tblactividad`
--
ALTER TABLE `tblactividad`
  ADD PRIMARY KEY (`id_actividad`),
  ADD UNIQUE KEY `id_proyecto` (`id_proyecto`);

--
-- Indices de la tabla `tblarea`
--
ALTER TABLE `tblarea`
  ADD PRIMARY KEY (`id_area`);

--
-- Indices de la tabla `tblcargo`
--
ALTER TABLE `tblcargo`
  ADD PRIMARY KEY (`id_cargo`);

--
-- Indices de la tabla `tblfirmadigital`
--
ALTER TABLE `tblfirmadigital`
  ADD PRIMARY KEY (`id_firma`);

--
-- Indices de la tabla `tblprofesion`
--
ALTER TABLE `tblprofesion`
  ADD PRIMARY KEY (`id_profesion`);

--
-- Indices de la tabla `tblprofesional`
--
ALTER TABLE `tblprofesional`
  ADD PRIMARY KEY (`DNI`),
  ADD UNIQUE KEY `id_usuario` (`id_usuario`),
  ADD UNIQUE KEY `id_firma` (`id_firma`),
  ADD UNIQUE KEY `id_area` (`id_area`),
  ADD UNIQUE KEY `id_profesion` (`id_profesion`);

--
-- Indices de la tabla `tblprofesional_actividad`
--
ALTER TABLE `tblprofesional_actividad`
  ADD UNIQUE KEY `id_actividad` (`id_actividad`),
  ADD UNIQUE KEY `DNI` (`DNI`);

--
-- Indices de la tabla `tblprofesional_reunion`
--
ALTER TABLE `tblprofesional_reunion`
  ADD UNIQUE KEY `DNI` (`DNI`),
  ADD UNIQUE KEY `id_reunion` (`id_reunion`);

--
-- Indices de la tabla `tblproyecto`
--
ALTER TABLE `tblproyecto`
  ADD PRIMARY KEY (`id_proyecto`),
  ADD UNIQUE KEY `DNI` (`DNI`);

--
-- Indices de la tabla `tblrecurso`
--
ALTER TABLE `tblrecurso`
  ADD PRIMARY KEY (`id_recurso`);

--
-- Indices de la tabla `tblrecurso_actividad`
--
ALTER TABLE `tblrecurso_actividad`
  ADD UNIQUE KEY `id_recurso` (`id_recurso`),
  ADD UNIQUE KEY `id_actividad` (`id_actividad`);

--
-- Indices de la tabla `tblreunion`
--
ALTER TABLE `tblreunion`
  ADD PRIMARY KEY (`id_reunion`),
  ADD UNIQUE KEY `id_proyecto` (`id_proyecto`);

--
-- Indices de la tabla `tblusuario`
--
ALTER TABLE `tblusuario`
  ADD PRIMARY KEY (`id_usuario`),
  ADD UNIQUE KEY `id_cargo_usr` (`id_cargo`) USING BTREE;

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `tblactividad`
--
ALTER TABLE `tblactividad`
  MODIFY `id_actividad` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `tblarea`
--
ALTER TABLE `tblarea`
  MODIFY `id_area` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `tblcargo`
--
ALTER TABLE `tblcargo`
  MODIFY `id_cargo` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `tblfirmadigital`
--
ALTER TABLE `tblfirmadigital`
  MODIFY `id_firma` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `tblprofesion`
--
ALTER TABLE `tblprofesion`
  MODIFY `id_profesion` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `tblprofesional`
--
ALTER TABLE `tblprofesional`
  MODIFY `DNI` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `tblproyecto`
--
ALTER TABLE `tblproyecto`
  MODIFY `id_proyecto` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `tblrecurso`
--
ALTER TABLE `tblrecurso`
  MODIFY `id_recurso` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `tblreunion`
--
ALTER TABLE `tblreunion`
  MODIFY `id_reunion` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `tblactividad`
--
ALTER TABLE `tblactividad`
  ADD CONSTRAINT `Pryecto_Actividad` FOREIGN KEY (`id_proyecto`) REFERENCES `tblproyecto` (`id_proyecto`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `tblprofesional`
--
ALTER TABLE `tblprofesional`
  ADD CONSTRAINT `Profesional_Area` FOREIGN KEY (`id_area`) REFERENCES `tblarea` (`id_area`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `Profesional_FirmaDigital` FOREIGN KEY (`id_firma`) REFERENCES `tblfirmadigital` (`id_firma`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `Profesional_Profesion` FOREIGN KEY (`id_profesion`) REFERENCES `tblprofesion` (`id_profesion`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `Profesional_Usuario` FOREIGN KEY (`id_usuario`) REFERENCES `tblusuario` (`id_usuario`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `tblprofesional_actividad`
--
ALTER TABLE `tblprofesional_actividad`
  ADD CONSTRAINT `Actividad_actividadProfesional` FOREIGN KEY (`id_actividad`) REFERENCES `tblactividad` (`id_actividad`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `Profesional_ActividadProfe` FOREIGN KEY (`DNI`) REFERENCES `tblprofesional` (`DNI`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `tblprofesional_reunion`
--
ALTER TABLE `tblprofesional_reunion`
  ADD CONSTRAINT `Profe_reun` FOREIGN KEY (`DNI`) REFERENCES `tblprofesional` (`DNI`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `Reuni_profes` FOREIGN KEY (`id_reunion`) REFERENCES `tblreunion` (`id_reunion`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `tblproyecto`
--
ALTER TABLE `tblproyecto`
  ADD CONSTRAINT `Profesional_Proyecto` FOREIGN KEY (`DNI`) REFERENCES `tblprofesional` (`DNI`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `tblrecurso_actividad`
--
ALTER TABLE `tblrecurso_actividad`
  ADD CONSTRAINT `Actividad_Recurso` FOREIGN KEY (`id_recurso`) REFERENCES `tblrecurso` (`id_recurso`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `Recuso_Actividad` FOREIGN KEY (`id_actividad`) REFERENCES `tblactividad` (`id_actividad`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `tblreunion`
--
ALTER TABLE `tblreunion`
  ADD CONSTRAINT `Proyecto_reunion` FOREIGN KEY (`id_proyecto`) REFERENCES `tblproyecto` (`id_proyecto`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `tblusuario`
--
ALTER TABLE `tblusuario`
  ADD CONSTRAINT `Usuario_Cargo` FOREIGN KEY (`id_cargo`) REFERENCES `tblcargo` (`id_cargo`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
