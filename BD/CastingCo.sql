-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 12-08-2022 a las 00:19:40
-- Versión del servidor: 10.4.22-MariaDB
-- Versión de PHP: 8.0.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `cat_agencia`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cat_agencia`
--

CREATE TABLE `cat_agencia` (
  `id_agencia` int(11) NOT NULL,
  `nombre_agencia` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `nombre_brooker_agencia` varchar(150) COLLATE utf8_spanish_ci DEFAULT NULL,
  `correo_agencia` varchar(150) COLLATE utf8_spanish_ci DEFAULT NULL,
  `telefono_agencia` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL,
  `ciudad_agencia` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL,
  `fecha_create` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cat_delivery`
--

CREATE TABLE `cat_delivery` (
  `id_delivery` int(11) NOT NULL,
  `nombre` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `fecha_create` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cat_estados_mexico`
--

CREATE TABLE `cat_estados_mexico` (
  `id_estados` int(11) NOT NULL,
  `nombre_estado` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `fecha_create` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cat_estatus_proyecto`
--

CREATE TABLE `cat_estatus_proyecto` (
  `id_estatus_proyecto` int(11) NOT NULL,
  `descripcion` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cat_etnia`
--

CREATE TABLE `cat_etnia` (
  `id_etnia` int(11) NOT NULL,
  `nombre_etnia` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `fecha_create` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `cat_etnia`
--

INSERT INTO `cat_etnia` (`id_etnia`, `nombre_etnia`, `fecha_create`) VALUES
(1, 'Asiático', NULL),
(2, 'Afro-Americano', NULL),
(3, 'Caucásico', NULL),
(4, ' Latino', NULL),
(5, 'Rubio', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cat_genero`
--

CREATE TABLE `cat_genero` (
  `id_genero` int(11) NOT NULL,
  `nombre_genero` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `fecha_create` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cat_info_talento`
--

CREATE TABLE `cat_info_talento` (
  `id_info_talento` int(11) NOT NULL,
  `nombre_talento` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL,
  `apellido_talento` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL,
  `edad_talento` int(11) DEFAULT NULL,
  `id_estado` int(11) DEFAULT NULL,
  `id_agencia` int(11) DEFAULT NULL,
  `id_etnia` int(11) DEFAULT NULL,
  `id_genero` int(11) DEFAULT NULL,
  `pertenencia_lgbtq` int(11) DEFAULT NULL,
  `instagram_talento` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `telefono_talento` varchar(12) COLLATE utf8_spanish_ci DEFAULT NULL,
  `correo_talento` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL,
  `estatura_talento` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL,
  `calzado_cm_talento` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL,
  `talla_cm_talento` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL,
  `talla_playera_talento` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL,
  `ocupacion_talento` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `habilidades_talento` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `perfil_pic_talento` varchar(250) COLLATE utf8_spanish_ci DEFAULT NULL,
  `ruta_dpbx_talento` varchar(250) COLLATE utf8_spanish_ci DEFAULT NULL,
  `selfie_status_taleno` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cat_material_proyecto`
--

CREATE TABLE `cat_material_proyecto` (
  `id_material_proyecto` int(11) NOT NULL,
  `nombre` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `foto` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `fecha_create` datetime DEFAULT NULL,
  `fecha_update` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cat_proyecto`
--

CREATE TABLE `cat_proyecto` (
  `id_proyecto` int(11) NOT NULL,
  `nombre` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL,
  `nombre_publico` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL,
  `productora` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL,
  `fecha_grabacion` datetime DEFAULT NULL,
  `fecha_fitting` datetime DEFAULT NULL,
  `fecha_callback` datetime DEFAULT NULL,
  `fecha_inicio_proyecto` datetime DEFAULT NULL,
  `fecha_fin_proyecto` datetime DEFAULT NULL,
  `id_material_proyecto` int(11) DEFAULT NULL,
  `numero_imagenes` int(11) DEFAULT NULL,
  `numero_videos` int(11) DEFAULT NULL,
  `descripcion_proyecto` varchar(250) COLLATE utf8_spanish_ci DEFAULT NULL,
  `id_lugar` int(11) DEFAULT NULL,
  `competencia` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `uso_de_imagen` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `temporalidad` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `presupuesto_talent_fee` double DEFAULT NULL,
  `presupuesto_agency_fee` double DEFAULT NULL,
  `id_vinetas` int(11) DEFAULT NULL,
  `id_delivery` int(11) DEFAULT NULL,
  `id_estatus_proyecto` int(11) DEFAULT NULL,
  `id_tipo_material` int(11) DEFAULT NULL,
  `logo_proyecto` varchar(245) COLLATE utf8_spanish_ci DEFAULT NULL,
  `user_create` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cat_tipo_material`
--

CREATE TABLE `cat_tipo_material` (
  `id_tipo_material` int(11) NOT NULL,
  `descripcion` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `cat_tipo_material`
--

INSERT INTO `cat_tipo_material` (`id_tipo_material`, `descripcion`) VALUES
(1, 'STOCK CASTING'),
(2, 'CASTING WITH  ACTING');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cat_tipo_usuario`
--

CREATE TABLE `cat_tipo_usuario` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `fecha_actualizacion` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cat_usuario`
--

CREATE TABLE `cat_usuario` (
  `id_usuario` int(11) NOT NULL,
  `nombre_usuario` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `nombre` varchar(60) COLLATE utf8_spanish_ci DEFAULT NULL,
  `apellido` varchar(60) COLLATE utf8_spanish_ci DEFAULT NULL,
  `email` varchar(30) COLLATE utf8_spanish_ci DEFAULT NULL,
  `instagram` varchar(245) COLLATE utf8_spanish_ci DEFAULT NULL,
  `profile_pic` varchar(245) COLLATE utf8_spanish_ci DEFAULT NULL,
  `fecha_update` datetime DEFAULT NULL,
  `id_tipo_usuario` int(11) DEFAULT NULL,
  `id_usuario_talento` int(11) DEFAULT NULL,
  `id_usuario_agencia` int(11) DEFAULT NULL,
  `fecha_create` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci COMMENT='La tabla nos permite utilizar la información de los usuarios';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cat_usuario_proyecto`
--

CREATE TABLE `cat_usuario_proyecto` (
  `id_user` int(11) NOT NULL,
  `id_proyecto` varchar(45) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cat_vinetas`
--

CREATE TABLE `cat_vinetas` (
  `id_vinetas` int(11) NOT NULL,
  `nombre` varchar(150) COLLATE utf8_spanish_ci DEFAULT NULL,
  `estatus_modify` int(11) DEFAULT NULL,
  `fecha_create` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `cat_agencia`
--
ALTER TABLE `cat_agencia`
  ADD PRIMARY KEY (`id_agencia`);

--
-- Indices de la tabla `cat_delivery`
--
ALTER TABLE `cat_delivery`
  ADD PRIMARY KEY (`id_delivery`),
  ADD UNIQUE KEY `id_delivery_UNIQUE` (`id_delivery`);

--
-- Indices de la tabla `cat_estados_mexico`
--
ALTER TABLE `cat_estados_mexico`
  ADD PRIMARY KEY (`id_estados`);

--
-- Indices de la tabla `cat_estatus_proyecto`
--
ALTER TABLE `cat_estatus_proyecto`
  ADD PRIMARY KEY (`id_estatus_proyecto`),
  ADD UNIQUE KEY `id_estatus_proyecto_UNIQUE` (`id_estatus_proyecto`);

--
-- Indices de la tabla `cat_etnia`
--
ALTER TABLE `cat_etnia`
  ADD PRIMARY KEY (`id_etnia`);

--
-- Indices de la tabla `cat_genero`
--
ALTER TABLE `cat_genero`
  ADD PRIMARY KEY (`id_genero`);

--
-- Indices de la tabla `cat_info_talento`
--
ALTER TABLE `cat_info_talento`
  ADD PRIMARY KEY (`id_info_talento`),
  ADD UNIQUE KEY `id_info_talento_UNIQUE` (`id_info_talento`),
  ADD KEY `castco_id_estado_talento_idx` (`id_estado`),
  ADD KEY `castco_id_agencia_talento_idx` (`id_agencia`),
  ADD KEY `castco_id_etnia_talento_idx` (`id_etnia`),
  ADD KEY `castco_id_genero_talento_idx` (`id_genero`);

--
-- Indices de la tabla `cat_material_proyecto`
--
ALTER TABLE `cat_material_proyecto`
  ADD PRIMARY KEY (`id_material_proyecto`);

--
-- Indices de la tabla `cat_proyecto`
--
ALTER TABLE `cat_proyecto`
  ADD PRIMARY KEY (`id_proyecto`),
  ADD UNIQUE KEY `id_proyecto_UNIQUE` (`id_proyecto`),
  ADD KEY `castco_ibfk_idx` (`id_delivery`),
  ADD KEY `castco_ibfk1_idx` (`id_estatus_proyecto`),
  ADD KEY `castco_ibfk2_idx` (`id_material_proyecto`),
  ADD KEY `castco_ibfk3_idx` (`id_tipo_material`),
  ADD KEY `castco_ibfk4_idx` (`id_vinetas`);

--
-- Indices de la tabla `cat_tipo_material`
--
ALTER TABLE `cat_tipo_material`
  ADD PRIMARY KEY (`id_tipo_material`);

--
-- Indices de la tabla `cat_tipo_usuario`
--
ALTER TABLE `cat_tipo_usuario`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `cat_usuario`
--
ALTER TABLE `cat_usuario`
  ADD PRIMARY KEY (`id_usuario`),
  ADD UNIQUE KEY `id_usuario_UNIQUE` (`id_usuario`),
  ADD KEY `castco_tipo_talento_idx` (`id_usuario_talento`),
  ADD KEY `cat_tipo_agencia_idx` (`id_usuario_agencia`);

--
-- Indices de la tabla `cat_usuario_proyecto`
--
ALTER TABLE `cat_usuario_proyecto`
  ADD PRIMARY KEY (`id_user`,`id_proyecto`);

--
-- Indices de la tabla `cat_vinetas`
--
ALTER TABLE `cat_vinetas`
  ADD PRIMARY KEY (`id_vinetas`);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `cat_info_talento`
--
ALTER TABLE `cat_info_talento`
  ADD CONSTRAINT `castco_id_agencia_talento` FOREIGN KEY (`id_agencia`) REFERENCES `cat_agencia` (`id_agencia`),
  ADD CONSTRAINT `castco_id_estado_talento` FOREIGN KEY (`id_estado`) REFERENCES `cat_estados_mexico` (`id_estados`),
  ADD CONSTRAINT `castco_id_etnia_talento` FOREIGN KEY (`id_etnia`) REFERENCES `cat_etnia` (`id_etnia`),
  ADD CONSTRAINT `castco_id_genero_talento` FOREIGN KEY (`id_genero`) REFERENCES `cat_genero` (`id_genero`);

--
-- Filtros para la tabla `cat_proyecto`
--
ALTER TABLE `cat_proyecto`
  ADD CONSTRAINT `castco_ibfk` FOREIGN KEY (`id_delivery`) REFERENCES `cat_delivery` (`id_delivery`),
  ADD CONSTRAINT `castco_ibfk1` FOREIGN KEY (`id_estatus_proyecto`) REFERENCES `cat_estatus_proyecto` (`id_estatus_proyecto`),
  ADD CONSTRAINT `castco_ibfk2` FOREIGN KEY (`id_material_proyecto`) REFERENCES `cat_material_proyecto` (`id_material_proyecto`),
  ADD CONSTRAINT `castco_ibfk3` FOREIGN KEY (`id_tipo_material`) REFERENCES `cat_tipo_material` (`id_tipo_material`),
  ADD CONSTRAINT `castco_ibfk4` FOREIGN KEY (`id_vinetas`) REFERENCES `cat_vinetas` (`id_vinetas`);

--
-- Filtros para la tabla `cat_usuario`
--
ALTER TABLE `cat_usuario`
  ADD CONSTRAINT `castco_tipo_talento` FOREIGN KEY (`id_usuario_talento`) REFERENCES `cat_info_talento` (`id_info_talento`),
  ADD CONSTRAINT `castco_tipo_usuario` FOREIGN KEY (`id_usuario`) REFERENCES `cat_tipo_usuario` (`id`),
  ADD CONSTRAINT `cat_tipo_agencia` FOREIGN KEY (`id_usuario_agencia`) REFERENCES `cat_agencia` (`id_agencia`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
