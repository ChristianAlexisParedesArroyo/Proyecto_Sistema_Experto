-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 17-06-2023 a las 08:00:23
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `doctor`
--
CREATE DATABASE IF NOT EXISTS `doctor` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `doctor`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `enfermedades`
--

CREATE TABLE `enfermedades` (
  `id` int(11) NOT NULL,
  `nombre` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `enfermedades`
--

INSERT INTO `enfermedades` (`id`, `nombre`) VALUES
(1, 'gripe'),
(2, 'neumonia'),
(3, 'bronquitis'),
(4, 'alergias_respiratorias'),
(5, 'asma'),
(6, 'covid'),
(7, 'sinusitis'),
(8, 'rinitis_alergica'),
(9, 'gastroenteritis'),
(10, 'migraña'),
(11, 'faringitis'),
(12, 'conjuntivitis'),
(13, 'otitis'),
(14, 'dermatitis'),
(15, 'gripe'),
(16, 'neumonia'),
(17, 'bronquitis'),
(18, 'alergias_respiratorias'),
(19, 'asma'),
(20, 'covid'),
(21, 'sinusitis'),
(22, 'rinitis_alergica'),
(23, 'gastroenteritis'),
(24, 'migraña'),
(25, 'faringitis'),
(26, 'conjuntivitis'),
(27, 'otitis'),
(28, 'dermatitis'),
(29, 'gripe'),
(30, 'neumonia'),
(31, 'bronquitis'),
(32, 'alergias_respiratorias'),
(33, 'asma'),
(34, 'covid'),
(35, 'sinusitis'),
(36, 'rinitis_alergica'),
(37, 'gastroenteritis'),
(38, 'migraña'),
(39, 'faringitis'),
(40, 'conjuntivitis'),
(41, 'otitis'),
(42, 'dermatitis'),
(43, 'gripe'),
(44, 'neumonia'),
(45, 'bronquitis'),
(46, 'alergias_respiratorias'),
(47, 'asma'),
(48, 'covid'),
(49, 'sinusitis'),
(50, 'rinitis_alergica'),
(51, 'gastroenteritis'),
(52, 'migraña'),
(53, 'faringitis'),
(54, 'conjuntivitis'),
(55, 'otitis'),
(56, 'dermatitis'),
(57, 'gripe'),
(58, 'neumonia'),
(59, 'bronquitis'),
(60, 'alergias_respiratorias'),
(61, 'asma'),
(62, 'covid'),
(63, 'sinusitis'),
(64, 'rinitis_alergica'),
(65, 'gastroenteritis'),
(66, 'migraña'),
(67, 'faringitis'),
(68, 'conjuntivitis'),
(69, 'otitis'),
(70, 'dermatitis');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `enfermedad_sintoma`
--

CREATE TABLE `enfermedad_sintoma` (
  `id` int(11) NOT NULL,
  `enfermedad_id` int(11) NOT NULL,
  `sintoma_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `enfermedad_sintoma`
--

INSERT INTO `enfermedad_sintoma` (`id`, `enfermedad_id`, `sintoma_id`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 2, 3),
(4, 2, 4),
(5, 2, 5),
(6, 3, 6),
(7, 3, 7),
(8, 4, 8),
(9, 4, 9),
(10, 5, 10),
(11, 5, 11),
(12, 5, 12),
(13, 6, 13),
(14, 6, 14),
(15, 6, 15),
(16, 6, 16),
(17, 6, 17),
(18, 6, 18),
(19, 6, 19),
(20, 6, 20),
(21, 6, 21),
(22, 7, 22),
(23, 7, 23),
(24, 7, 24),
(25, 8, 25),
(26, 8, 26),
(27, 8, 27),
(28, 9, 28),
(29, 9, 29),
(30, 9, 30),
(31, 9, 31),
(32, 10, 32),
(33, 10, 33),
(34, 10, 34),
(35, 11, 35),
(36, 11, 36),
(37, 12, 37),
(38, 12, 38),
(39, 12, 39),
(40, 13, 40),
(41, 13, 41),
(42, 14, 42),
(43, 14, 43),
(44, 14, 44),
(45, 15, 45),
(46, 15, 46),
(47, 16, 47),
(48, 16, 48),
(49, 16, 49),
(50, 17, 50),
(51, 17, 51),
(52, 18, 52),
(53, 18, 53),
(54, 19, 54),
(55, 19, 55),
(56, 19, 56),
(57, 20, 57),
(58, 20, 58),
(59, 20, 59),
(60, 20, 60),
(61, 20, 61),
(62, 20, 62),
(63, 20, 63),
(64, 20, 64),
(65, 20, 65),
(66, 21, 66),
(67, 21, 67),
(68, 21, 68),
(69, 22, 69),
(70, 22, 70),
(71, 22, 71),
(72, 23, 72),
(73, 23, 73),
(74, 23, 74),
(75, 23, 75),
(76, 24, 76),
(77, 24, 77),
(78, 24, 78),
(79, 25, 79),
(80, 25, 80),
(81, 26, 81),
(82, 26, 82),
(83, 26, 83),
(84, 27, 84),
(85, 27, 85),
(86, 28, 86),
(87, 28, 87),
(88, 28, 88),
(89, 29, 89),
(90, 29, 90),
(91, 30, 91),
(92, 30, 92),
(93, 30, 93),
(94, 31, 94),
(95, 31, 95),
(96, 32, 96),
(97, 32, 97),
(98, 33, 98),
(99, 33, 99),
(100, 33, 100),
(101, 34, 101),
(102, 34, 102),
(103, 34, 103),
(104, 34, 104),
(105, 34, 105),
(106, 34, 106),
(107, 34, 107),
(108, 34, 108),
(109, 34, 109),
(110, 35, 110),
(111, 35, 111),
(112, 35, 112),
(113, 36, 113),
(114, 36, 114),
(115, 36, 115),
(116, 37, 116),
(117, 37, 117),
(118, 37, 118),
(119, 37, 119),
(120, 38, 120),
(121, 38, 121),
(122, 38, 122),
(123, 39, 123),
(124, 39, 124),
(125, 40, 125),
(126, 40, 126),
(127, 40, 127),
(128, 41, 128),
(129, 41, 129),
(130, 42, 130),
(131, 42, 131),
(132, 42, 132),
(133, 43, 133),
(134, 43, 134),
(135, 44, 135),
(136, 44, 136),
(137, 44, 137),
(138, 45, 138),
(139, 45, 139),
(140, 46, 140),
(141, 46, 141),
(142, 47, 142),
(143, 47, 143),
(144, 47, 144),
(145, 48, 145),
(146, 48, 146),
(147, 48, 147),
(148, 48, 148),
(149, 48, 149),
(150, 48, 150),
(151, 48, 151),
(152, 48, 152),
(153, 48, 153),
(154, 49, 154),
(155, 49, 155),
(156, 49, 156),
(157, 50, 157),
(158, 50, 158),
(159, 50, 159),
(160, 51, 160),
(161, 51, 161),
(162, 51, 162),
(163, 51, 163),
(164, 52, 164),
(165, 52, 165),
(166, 52, 166),
(167, 53, 167),
(168, 53, 168),
(169, 54, 169),
(170, 54, 170),
(171, 54, 171),
(172, 55, 172),
(173, 55, 173),
(174, 56, 174),
(175, 56, 175),
(176, 56, 176),
(177, 57, 177),
(178, 57, 178),
(179, 58, 179),
(180, 58, 180),
(181, 58, 181),
(182, 59, 182),
(183, 59, 183),
(184, 60, 184),
(185, 60, 185),
(186, 61, 186),
(187, 61, 187),
(188, 61, 188),
(189, 62, 189),
(190, 62, 190),
(191, 62, 191),
(192, 62, 192),
(193, 62, 193),
(194, 62, 194),
(195, 62, 195),
(196, 62, 196),
(197, 62, 197),
(198, 63, 198),
(199, 63, 199),
(200, 63, 200),
(201, 64, 201),
(202, 64, 202),
(203, 64, 203),
(204, 65, 204),
(205, 65, 205),
(206, 65, 206),
(207, 65, 207),
(208, 66, 208),
(209, 66, 209),
(210, 66, 210),
(211, 67, 211),
(212, 67, 212),
(213, 68, 213),
(214, 68, 214),
(215, 68, 215),
(216, 69, 216),
(217, 69, 217),
(218, 70, 218),
(219, 70, 219),
(220, 70, 220);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sintomas`
--

CREATE TABLE `sintomas` (
  `id` int(11) NOT NULL,
  `nombre` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `sintomas`
--

INSERT INTO `sintomas` (`id`, `nombre`) VALUES
(1, 'fiebre'),
(2, 'tos seca'),
(3, 'fiebre'),
(4, 'tos'),
(5, 'dificultad para respirar'),
(6, 'tos con mucosidad'),
(7, 'dificultad para respirar'),
(8, 'tos con picazón en los ojos'),
(9, 'estornudos'),
(10, 'tos persistente'),
(11, 'falta de aliento'),
(12, 'opresión en el pecho'),
(13, 'fiebre'),
(14, 'tos seca'),
(15, 'dificultad para respirar'),
(16, 'fatiga'),
(17, 'dolor de cabeza'),
(18, 'dolor de garganta'),
(19, 'dolor muscular o corporal'),
(20, 'congestión nasal'),
(21, 'pérdida del gusto o del olfato'),
(22, 'dolor facial'),
(23, 'congestión nasal'),
(24, 'dolor de cabeza'),
(25, 'congestión nasal'),
(26, 'estornudos'),
(27, 'picazón en los ojos'),
(28, 'náuseas'),
(29, 'vómitos'),
(30, 'dolor abdominal'),
(31, 'diarrea'),
(32, 'dolor de cabeza intenso'),
(33, 'náuseas'),
(34, 'sensibilidad a la luz y al sonido'),
(35, 'dolor de garganta'),
(36, 'dificultad para tragar'),
(37, 'enrojecimiento de los ojos'),
(38, 'picazón'),
(39, 'lagrimeo'),
(40, 'dolor de oído'),
(41, 'dificultad para escuchar'),
(42, 'picazón en la piel'),
(43, 'erupción cutánea'),
(44, 'enrojecimiento'),
(45, 'fiebre'),
(46, 'tos seca'),
(47, 'fiebre'),
(48, 'tos'),
(49, 'dificultad para respirar'),
(50, 'tos con mucosidad'),
(51, 'dificultad para respirar'),
(52, 'tos con picazón en los ojos'),
(53, 'estornudos'),
(54, 'tos persistente'),
(55, 'falta de aliento'),
(56, 'opresión en el pecho'),
(57, 'fiebre'),
(58, 'tos seca'),
(59, 'dificultad para respirar'),
(60, 'fatiga'),
(61, 'dolor de cabeza'),
(62, 'dolor de garganta'),
(63, 'dolor muscular o corporal'),
(64, 'congestión nasal'),
(65, 'pérdida del gusto o del olfato'),
(66, 'dolor facial'),
(67, 'congestión nasal'),
(68, 'dolor de cabeza'),
(69, 'congestión nasal'),
(70, 'estornudos'),
(71, 'picazón en los ojos'),
(72, 'náuseas'),
(73, 'vómitos'),
(74, 'dolor abdominal'),
(75, 'diarrea'),
(76, 'dolor de cabeza intenso'),
(77, 'náuseas'),
(78, 'sensibilidad a la luz y al sonido'),
(79, 'dolor de garganta'),
(80, 'dificultad para tragar'),
(81, 'enrojecimiento de los ojos'),
(82, 'picazón'),
(83, 'lagrimeo'),
(84, 'dolor de oído'),
(85, 'dificultad para escuchar'),
(86, 'picazón en la piel'),
(87, 'erupción cutánea'),
(88, 'enrojecimiento'),
(89, 'fiebre'),
(90, 'tos seca'),
(91, 'fiebre'),
(92, 'tos seca'),
(93, 'dificultad para respirar'),
(94, 'tos con mucosidad'),
(95, 'dificultad para respirar'),
(96, 'tos con picazón en los ojos'),
(97, 'estornudos'),
(98, 'tos persistente'),
(99, 'falta de aliento'),
(100, 'opresión en el pecho'),
(101, 'fiebre'),
(102, 'tos seca'),
(103, 'dificultad para respirar'),
(104, 'fatiga'),
(105, 'dolor de cabeza'),
(106, 'dolor de garganta'),
(107, 'dolor muscular o corporal'),
(108, 'congestión nasal'),
(109, 'pérdida del gusto o del olfato'),
(110, 'dolor facial'),
(111, 'congestión nasal'),
(112, 'dolor de cabeza'),
(113, 'congestión nasal'),
(114, 'estornudos'),
(115, 'picazón en los ojos'),
(116, 'náuseas'),
(117, 'vómitos'),
(118, 'dolor abdominal'),
(119, 'diarrea'),
(120, 'dolor de cabeza intenso'),
(121, 'náuseas'),
(122, 'sensibilidad a la luz y al sonido'),
(123, 'dolor de garganta'),
(124, 'dificultad para tragar'),
(125, 'enrojecimiento de los ojos'),
(126, 'picazón'),
(127, 'lagrimeo'),
(128, 'dolor de oído'),
(129, 'dificultad para escuchar'),
(130, 'picazón en la piel'),
(131, 'erupción cutánea'),
(132, 'enrojecimiento'),
(133, 'fiebre'),
(134, 'tos seca'),
(135, 'fiebre'),
(136, 'tos seca'),
(137, 'dificultad para respirar'),
(138, 'tos con mucosidad'),
(139, 'dificultad para respirar'),
(140, 'tos con picazón en los ojos'),
(141, 'estornudos'),
(142, 'tos persistente'),
(143, 'falta de aliento'),
(144, 'opresión en el pecho'),
(145, 'fiebre'),
(146, 'tos seca'),
(147, 'dificultad para respirar'),
(148, 'fatiga'),
(149, 'dolor de cabeza'),
(150, 'dolor de garganta'),
(151, 'dolor muscular o corporal'),
(152, 'congestión nasal'),
(153, 'pérdida del gusto o del olfato'),
(154, 'dolor facial'),
(155, 'congestión nasal'),
(156, 'dolor de cabeza'),
(157, 'congestión nasal'),
(158, 'estornudos'),
(159, 'picazón en los ojos'),
(160, 'náuseas'),
(161, 'vómitos'),
(162, 'dolor abdominal'),
(163, 'diarrea'),
(164, 'dolor de cabeza intenso'),
(165, 'náuseas'),
(166, 'sensibilidad a la luz y al sonido'),
(167, 'dolor de garganta'),
(168, 'dificultad para tragar'),
(169, 'enrojecimiento de los ojos'),
(170, 'picazón'),
(171, 'lagrimeo'),
(172, 'dolor de oído'),
(173, 'dificultad para escuchar'),
(174, 'picazón en la piel'),
(175, 'erupción cutánea'),
(176, 'enrojecimiento'),
(177, 'fiebre'),
(178, 'tos seca'),
(179, 'fiebre'),
(180, 'tos seca'),
(181, 'dificultad para respirar'),
(182, 'tos con mucosidad'),
(183, 'dificultad para respirar'),
(184, 'tos con picazón en los ojos'),
(185, 'estornudos'),
(186, 'tos persistente'),
(187, 'falta de aliento'),
(188, 'opresión en el pecho'),
(189, 'fiebre'),
(190, 'tos seca'),
(191, 'dificultad para respirar'),
(192, 'fatiga'),
(193, 'dolor de cabeza'),
(194, 'dolor de garganta'),
(195, 'dolor muscular o corporal'),
(196, 'congestión nasal'),
(197, 'pérdida del gusto o del olfato'),
(198, 'dolor facial'),
(199, 'congestión nasal'),
(200, 'dolor de cabeza'),
(201, 'congestión nasal'),
(202, 'estornudos'),
(203, 'picazón en los ojos'),
(204, 'náuseas'),
(205, 'vómitos'),
(206, 'dolor abdominal'),
(207, 'diarrea'),
(208, 'dolor de cabeza intenso'),
(209, 'náuseas'),
(210, 'sensibilidad a la luz y al sonido'),
(211, 'dolor de garganta'),
(212, 'dificultad para tragar'),
(213, 'enrojecimiento de los ojos'),
(214, 'picazón'),
(215, 'lagrimeo'),
(216, 'dolor de oído'),
(217, 'dificultad para escuchar'),
(218, 'picazón en la piel'),
(219, 'erupción cutánea'),
(220, 'enrojecimiento');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `enfermedades`
--
ALTER TABLE `enfermedades`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `enfermedad_sintoma`
--
ALTER TABLE `enfermedad_sintoma`
  ADD PRIMARY KEY (`id`),
  ADD KEY `enfermedad_id` (`enfermedad_id`),
  ADD KEY `sintoma_id` (`sintoma_id`);

--
-- Indices de la tabla `sintomas`
--
ALTER TABLE `sintomas`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `enfermedades`
--
ALTER TABLE `enfermedades`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- AUTO_INCREMENT de la tabla `enfermedad_sintoma`
--
ALTER TABLE `enfermedad_sintoma`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=221;

--
-- AUTO_INCREMENT de la tabla `sintomas`
--
ALTER TABLE `sintomas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=221;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `enfermedad_sintoma`
--
ALTER TABLE `enfermedad_sintoma`
  ADD CONSTRAINT `enfermedad_sintoma_ibfk_1` FOREIGN KEY (`enfermedad_id`) REFERENCES `enfermedades` (`id`),
  ADD CONSTRAINT `enfermedad_sintoma_ibfk_2` FOREIGN KEY (`sintoma_id`) REFERENCES `sintomas` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
