-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 12-04-2025 a las 02:31:22
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
-- Base de datos: `star_wars`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `afiliaciones`
--

CREATE TABLE `afiliaciones` (
  `id` int(11) NOT NULL,
  `afiliacion` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `afiliaciones`
--

INSERT INTO `afiliaciones` (`id`, `afiliacion`) VALUES
(1, 'Jedi Order'),
(2, 'Sith'),
(3, 'Galactic Republic'),
(4, 'Galactic Empire'),
(5, 'Rebel Alliance'),
(6, 'First Order'),
(7, 'Resistance'),
(8, 'Bounty Hunters Guild'),
(9, 'Separatists'),
(10, 'Mandalorians');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `armas`
--

CREATE TABLE `armas` (
  `id` int(11) NOT NULL,
  `arma` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `armas`
--

INSERT INTO `armas` (`id`, `arma`) VALUES
(1, 'Blue Lightsaber'),
(2, 'Red Lightsaber'),
(3, 'Blaster Rifle'),
(4, 'Bowcaster'),
(5, 'Green Lightsaber'),
(6, 'Double-bladed Lightsaber'),
(7, 'Thermal Detonator'),
(8, 'Sniper Blaster'),
(9, 'Electrostaff'),
(10, 'Vibroblade');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `especies`
--

CREATE TABLE `especies` (
  `id` int(11) NOT NULL,
  `especie` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `especies`
--

INSERT INTO `especies` (`id`, `especie`) VALUES
(1, 'Humano'),
(2, 'Wookiee'),
(3, 'Droid'),
(4, 'Twi\'lek'),
(5, 'Rodiano'),
(6, 'Zabrak'),
(7, 'Mon Calamari'),
(8, 'Chiss'),
(9, 'Gungan'),
(10, 'Togruta');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ocupaciones`
--

CREATE TABLE `ocupaciones` (
  `id` int(11) NOT NULL,
  `ocupacion` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `ocupaciones`
--

INSERT INTO `ocupaciones` (`id`, `ocupacion`) VALUES
(1, 'Jedi Knight'),
(2, 'Sith Lord'),
(3, 'Bounty Hunter'),
(4, 'Senator'),
(5, 'Smuggler'),
(6, 'Rebel Commander'),
(7, 'Stormtrooper'),
(8, 'Mechanic'),
(9, 'Pilot'),
(10, 'Clone Trooper');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personajes`
--

CREATE TABLE `personajes` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `id_especie` int(11) DEFAULT NULL,
  `id_planeta` int(11) DEFAULT NULL,
  `id_afiliacion` int(11) DEFAULT NULL,
  `id_arma` int(11) DEFAULT NULL,
  `id_ocupacion` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `personajes`
--

INSERT INTO `personajes` (`id`, `nombre`, `id_especie`, `id_planeta`, `id_afiliacion`, `id_arma`, `id_ocupacion`) VALUES
(1, 'Luke Skywalker', 1, 1, 1, 1, 1),
(2, 'Darth Vader', 1, 2, 2, 2, 2),
(3, 'Han Solo', 1, 1, 5, 3, 5),
(4, 'Leia Organa', 1, 2, 5, 3, 4),
(5, 'Chewbacca', 2, 3, 5, 4, 5),
(6, 'Yoda', 1, 7, 1, 5, 1),
(7, 'Obi-Wan Kenobi', 1, 5, 1, 1, 1),
(8, 'Anakin Skywalker', 1, 5, 1, 1, 1),
(9, 'Padmé Amidala', 1, 4, 3, 3, 4),
(10, 'R2-D2', 3, 5, 3, 3, 8),
(11, 'C-3PO', 3, 2, 3, 3, 8),
(12, 'Darth Maul', 6, 8, 2, 6, 2),
(13, 'Boba Fett', 1, 1, 8, 9, 3),
(14, 'Jango Fett', 1, 6, 8, 9, 3),
(15, 'Ahsoka Tano', 10, 4, 1, 5, 1),
(16, 'Count Dooku', 1, 5, 10, 2, 2),
(17, 'Kylo Ren', 1, 5, 6, 2, 2),
(18, 'Rey', 1, 1, 7, 5, 1),
(19, 'Poe Dameron', 1, 2, 7, 3, 9),
(20, 'Finn', 1, 1, 6, 3, 7);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `planetas`
--

CREATE TABLE `planetas` (
  `id` int(11) NOT NULL,
  `planeta` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `planetas`
--

INSERT INTO `planetas` (`id`, `planeta`) VALUES
(1, 'Tatooine'),
(2, 'Alderaan'),
(3, 'Kashyyyk'),
(4, 'Naboo'),
(5, 'Coruscant'),
(6, 'Kamino'),
(7, 'Dagobah'),
(8, 'Dathomir'),
(9, 'Mandalore'),
(10, 'Endor');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `afiliaciones`
--
ALTER TABLE `afiliaciones`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `armas`
--
ALTER TABLE `armas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `especies`
--
ALTER TABLE `especies`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `ocupaciones`
--
ALTER TABLE `ocupaciones`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `personajes`
--
ALTER TABLE `personajes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_especie` (`id_especie`),
  ADD KEY `id_planeta` (`id_planeta`),
  ADD KEY `id_afiliacion` (`id_afiliacion`),
  ADD KEY `id_nave` (`id_arma`),
  ADD KEY `id_habilidad` (`id_ocupacion`);

--
-- Indices de la tabla `planetas`
--
ALTER TABLE `planetas`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `afiliaciones`
--
ALTER TABLE `afiliaciones`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `armas`
--
ALTER TABLE `armas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `especies`
--
ALTER TABLE `especies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `ocupaciones`
--
ALTER TABLE `ocupaciones`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `personajes`
--
ALTER TABLE `personajes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de la tabla `planetas`
--
ALTER TABLE `planetas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `personajes`
--
ALTER TABLE `personajes`
  ADD CONSTRAINT `personajes_ibfk_1` FOREIGN KEY (`id_especie`) REFERENCES `especies` (`id`),
  ADD CONSTRAINT `personajes_ibfk_2` FOREIGN KEY (`id_planeta`) REFERENCES `planetas` (`id`),
  ADD CONSTRAINT `personajes_ibfk_3` FOREIGN KEY (`id_afiliacion`) REFERENCES `afiliaciones` (`id`),
  ADD CONSTRAINT `personajes_ibfk_4` FOREIGN KEY (`id_arma`) REFERENCES `armas` (`id`),
  ADD CONSTRAINT `personajes_ibfk_5` FOREIGN KEY (`id_ocupacion`) REFERENCES `ocupaciones` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
