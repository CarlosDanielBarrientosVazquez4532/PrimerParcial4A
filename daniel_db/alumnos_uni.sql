-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 02-05-2025 a las 05:41:59
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
-- Base de datos: `alumnos_uni`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estudiantes`
--

CREATE TABLE `estudiantes` (
  `Id` int(11) NOT NULL,
  `Nombre` varchar(50) NOT NULL,
  `Apellido` varchar(50) NOT NULL,
  `Altura` decimal(3,2) DEFAULT NULL,
  `Peso` decimal(5,2) DEFAULT NULL,
  `Universidad` varchar(100) NOT NULL,
  `Carrera` varchar(100) DEFAULT NULL,
  `Promedio` decimal(3,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `estudiantes`
--

INSERT INTO `estudiantes` (`Id`, `Nombre`, `Apellido`, `Altura`, `Peso`, `Universidad`, `Carrera`, `Promedio`) VALUES
(1, 'Ana', 'González', 1.65, 58.30, 'UNAM', 'Derecho', 8.50),
(2, 'Luis', 'Martínez', 1.78, 72.00, 'IPN', 'Ingeniería Mecánica', 7.90),
(3, 'Sofía', 'Ramírez', 1.60, 55.00, 'UAM', 'Psicología', 9.10),
(4, 'Carlos', 'Torres', 1.82, 80.20, 'ITESM', 'Ingeniería en Sistemas', 8.20),
(5, 'Valeria', 'López', 1.70, 60.50, 'UANL', 'Medicina', 9.40),
(6, 'Miguel', 'Díaz', 1.75, 68.90, 'UNAM', 'Arquitectura', 7.50),
(7, 'Fernanda', 'Hernández', 1.68, 59.30, 'IPN', 'Administración', 8.90),
(8, 'Diego', 'Cruz', 1.80, 76.50, 'UAM', 'Ingeniería Eléctrica', 8.00),
(9, 'María', 'Pérez', 1.62, 54.20, 'UAEH', 'Contaduría', 8.70),
(10, 'Jorge', 'Sánchez', 1.77, 70.10, 'BUAP', 'Ingeniería Industrial', 7.80),
(11, 'Andrea', 'Vargas', 1.66, 57.70, 'UNAM', 'Diseño Gráfico', 9.00),
(12, 'Emilio', 'Luna', 1.74, 69.50, 'UP', 'Finanzas', 8.30),
(13, 'Camila', 'Reyes', 1.63, 56.10, 'ITESM', 'Negocios Internacionales', 9.20),
(14, 'Rodrigo', 'Morales', 1.85, 83.00, 'UANL', 'Medicina', 7.40),
(15, 'Isabel', 'Castro', 1.61, 53.40, 'UAM', 'Biología', 8.60),
(16, 'Pablo', 'Gutiérrez', 1.79, 74.30, 'UNAM', 'Filosofía', 8.10),
(17, 'Lucía', 'Silva', 1.69, 58.00, 'IPN', 'Informática', 8.80),
(18, 'Ángel', 'Navarro', 1.76, 71.90, 'UAEH', 'Ingeniería Civil', 7.70),
(19, 'Daniela', 'Rojas', 1.64, 55.80, 'BUAP', 'Enfermería', 9.30),
(20, 'Iván', 'Medina', 1.81, 79.00, 'UNAM', 'Matemáticas Aplicadas', 8.40);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `estudiantes`
--
ALTER TABLE `estudiantes`
  ADD PRIMARY KEY (`Id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `estudiantes`
--
ALTER TABLE `estudiantes`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
