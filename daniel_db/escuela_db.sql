-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 02-05-2025 a las 06:25:13
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `escuela_db`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alumnos`
--

CREATE TABLE `alumnos` (
  `id` int(11) NOT NULL,
  `numero_control` varchar(10) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `apellido_paterno` varchar(50) NOT NULL,
  `apellido_materno` varchar(50) DEFAULT NULL,
  `id_edad` int(11) NOT NULL,
  `id_colonia` int(11) NOT NULL,
  `id_especialidad` int(11) NOT NULL,
  `id_genero` int(11) NOT NULL,
  `correo` varchar(15) DEFAULT NULL,
  `telefono` varchar(15) DEFAULT NULL,
  `fecha_ingreso` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `alumnos`
--

INSERT INTO `alumnos` (`id`, `numero_control`, `nombre`, `apellido_paterno`, `apellido_materno`, `id_edad`, `id_colonia`, `id_especialidad`, `id_genero`, `correo`, `telefono`, `fecha_ingreso`) VALUES
(1, '11', 'Carlos', 'Ramírez', 'Díaz', 3, 1, 1, 1, 'carlos.ramirez@', '8991234567', '2023-08-21'),
(2, '12', 'María', 'López', 'Fernández', 4, 2, 10, 2, 'maria.lopez@mai', '8992234567', '2022-08-22'),
(3, '13', 'Luis', 'Martínez', 'Soto', 5, 3, 8, 1, 'luis.mtz@mail.c', '8993234567', '2023-01-15'),
(4, '14', 'Ana', 'García', 'Vega', 2, 4, 5, 2, 'ana.garcia@mail', '8994234567', '2024-03-18'),
(5, '15', 'Diana', 'Sánchez', 'Morales', 4, 5, 6, 2, 'diana.sanchez@m', '8995234567', '2023-07-10'),
(6, '16', 'Eduardo', 'Hernández', 'Campos', 6, 6, 7, 1, 'eduardo.hdez@ma', '8996234567', '2022-09-05'),
(7, '17', 'Fernanda', 'Pérez', 'Ríos', 3, 7, 4, 2, 'fernanda.perez@', '8997234567', '2024-01-12'),
(8, '18', 'Javier', 'Ortiz', 'Acosta', 5, 8, 9, 1, 'javier.ortiz@ma', '8998234567', '2023-04-03'),
(9, '19', 'Valeria', 'Torres', 'Zamora', 6, 9, 1, 2, 'valeria.torres@', '8999234567', '2022-11-17'),
(10, '20', 'Andrés', 'Castillo', 'Bravo', 1, 10, 2, 1, 'andres.castillo', '8990243567', '2023-06-25'),
(11, '21', 'Sofía', 'Silva', 'Mendoza', 3, 11, 3, 2, 'sofia.silva@mai', '8991456789', '2023-05-09'),
(12, '22', 'Mateo', 'Cruz', 'Ibarra', 2, 12, 6, 1, 'mateo.cruz@mail', '8992456789', '2024-02-19'),
(13, '23', 'Paola', 'Reyes', 'Montoya', 5, 2, 10, 2, 'paola.reyes@mai', '8993456789', '2023-10-28'),
(14, '24', 'Diego', 'Ramos', 'Salinas', 6, 4, 8, 1, 'diego.ramos@mai', '8994456789', '2022-08-30'),
(15, '25', 'Camila', 'Navarro', 'Cuevas', 4, 1, 7, 2, 'camila.navarro@', '8995456789', '2023-09-13'),
(16, '26', 'José', 'Aguilar', 'Romero', 3, 3, 1, 1, 'jose.aguilar@ma', '8996456789', '2023-11-02'),
(17, '27', 'Daniela', 'Luna', 'Valencia', 2, 5, 5, 2, 'daniela.luna@ma', '8997456789', '2024-03-01'),
(18, '28', 'Alan', 'Jiménez', 'Arellano', 5, 6, 2, 1, 'alan.jimenez@ma', '8998456789', '2023-12-05'),
(19, '29', 'Abril', 'Estrada', 'Guerrero', 6, 7, 4, 2, 'abril.estrada@m', '8999456789', '2022-10-14'),
(20, '30', 'Emiliano', 'López', 'Vargas', 4, 9, 3, 3, 'emiliano.lopez@', '8990654789', '2023-07-20');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `colonias`
--

CREATE TABLE `colonias` (
  `id` int(11) NOT NULL,
  `nombre_colonia` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `colonias`
--

INSERT INTO `colonias` (`id`, `nombre_colonia`) VALUES
(8, 'Bugambilias'),
(11, 'Campestre'),
(5, 'Esfuerzo'),
(6, 'Freznos'),
(3, 'Granjas'),
(1, 'Jarachina Norte'),
(2, 'Jarachina Sur'),
(10, 'Loma\r\nReal'),
(7, 'Progreso'),
(9, 'Ventura'),
(12, 'Vista Alta'),
(4, 'Vista Hermosa');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `edades`
--

CREATE TABLE `edades` (
  `id` int(11) NOT NULL,
  `edad` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `edades`
--

INSERT INTO `edades` (`id`, `edad`) VALUES
(1, 14),
(2, 15),
(3, 16),
(4, 17),
(5, 18),
(6, 19);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `especialidades`
--

CREATE TABLE `especialidades` (
  `id` int(11) NOT NULL,
  `nombre_especialidad` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `especialidades`
--

INSERT INTO `especialidades` (`id`, `nombre_especialidad`) VALUES
(4, 'Administracion De Recursos Humanos'),
(5, 'CiberSeguridad'),
(9, 'Comercio Internacional'),
(7, 'Construccion'),
(10, 'Hoteleria'),
(6, 'Logistica'),
(3, 'Mantenimiento De Computo'),
(2, 'Mantenimiento Industrial'),
(8, 'Mecatronica'),
(1, 'Programacion');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `generos`
--

CREATE TABLE `generos` (
  `id` int(11) NOT NULL,
  `nombre_genero` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `generos`
--

INSERT INTO `generos` (`id`, `nombre_genero`) VALUES
(1, 'Hombre'),
(2, 'Mujer'),
(3, 'Otro');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `alumnos`
--
ALTER TABLE `alumnos`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `numero_control` (`numero_control`),
  ADD UNIQUE KEY `correo` (`correo`),
  ADD KEY `id_edad` (`id_edad`),
  ADD KEY `id_colonia` (`id_colonia`),
  ADD KEY `id_especialidad` (`id_especialidad`),
  ADD KEY `id_genero` (`id_genero`);

--
-- Indices de la tabla `colonias`
--
ALTER TABLE `colonias`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nombre_colonia` (`nombre_colonia`);

--
-- Indices de la tabla `edades`
--
ALTER TABLE `edades`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `edad` (`edad`);

--
-- Indices de la tabla `especialidades`
--
ALTER TABLE `especialidades`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nombre_especialidad` (`nombre_especialidad`);

--
-- Indices de la tabla `generos`
--
ALTER TABLE `generos`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nombre_genero` (`nombre_genero`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `alumnos`
--
ALTER TABLE `alumnos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de la tabla `colonias`
--
ALTER TABLE `colonias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `edades`
--
ALTER TABLE `edades`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `especialidades`
--
ALTER TABLE `especialidades`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `generos`
--
ALTER TABLE `generos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `alumnos`
--
ALTER TABLE `alumnos`
  ADD CONSTRAINT `alumnos_ibfk_1` FOREIGN KEY (`id_edad`) REFERENCES `edades` (`id`),
  ADD CONSTRAINT `alumnos_ibfk_2` FOREIGN KEY (`id_colonia`) REFERENCES `colonias` (`id`),
  ADD CONSTRAINT `alumnos_ibfk_3` FOREIGN KEY (`id_especialidad`) REFERENCES `especialidades` (`id`),
  ADD CONSTRAINT `alumnos_ibfk_4` FOREIGN KEY (`id_genero`) REFERENCES `generos` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
