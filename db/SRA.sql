-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 05, 2022 at 05:20 AM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 8.0.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `SRA`
--
CREATE DATABASE IF NOT EXISTS `SRA` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `SRA`;

-- --------------------------------------------------------

--
-- Table structure for table `materia`
--

DROP TABLE IF EXISTS `materia`;
CREATE TABLE `materia` (
  `materia_id` int(11) NOT NULL,
  `materia_nombre` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `materia_prueba`
--

DROP TABLE IF EXISTS `materia_prueba`;
CREATE TABLE `materia_prueba` (
  `materia_prueba_id` int(11) NOT NULL,
  `profesor_materia_id` int(11) NOT NULL,
  `tiempo_prueba` int(11) NOT NULL,
  `prueba_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tipo_pregunta`
--

DROP TABLE IF EXISTS `tipo_pregunta`;
CREATE TABLE `tipo_pregunta` (
  `tipo_pregunta_id` int(11) NOT NULL,
  `tipo_pregunta` varchar(150) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `prueba`
--

DROP TABLE IF EXISTS `prueba`;
CREATE TABLE `prueba` (
  `prueba_id` int(11) NOT NULL,
  `prueba_titulo` varchar(50) NOT NULL,
  `prueba_descripcion` varchar(100) NOT NULL,
  `date_added` varchar(100) NOT NULL,
  `profesor_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `prueba_pregunta`
--

DROP TABLE IF EXISTS `prueba_pregunta`;
CREATE TABLE `prueba_pregunta` (
  `prueba_pregunta_id` int(11) NOT NULL,
  `prueba_id` int(11) NOT NULL,
  `pregunta_texto` varchar(100) NOT NULL,
  `tipo_pregunta_id` int(11) NOT NULL,
  `puntos` int(11) NOT NULL,
  `date_added` varchar(100) NOT NULL,
  `respuesta` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `alumno`
--

DROP TABLE IF EXISTS `alumno`;
CREATE TABLE `alumno` (
  `alumno_id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `apellido` varchar(100) NOT NULL,
  `materia_id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `ubicacion` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `alumno_actividad`
--

DROP TABLE IF EXISTS `alumno_actividad`;
CREATE TABLE `alumno_actividad` (
  `alumno_actividad_id` int(11) NOT NULL,
  `actividad_id` int(11) NOT NULL,
  `floc` varchar(100) NOT NULL,
  `actividad_fdatein` varchar(50) NOT NULL,
  `fdesc` varchar(100) NOT NULL,
  `fnombre` varchar(50) NOT NULL,
  `alumno_id` int(11) NOT NULL,
  `nota` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `alumno_materia_prueba`
--

DROP TABLE IF EXISTS `alumno_materia_prueba`;
CREATE TABLE `alumno_materia_prueba` (
  `alumno_materia_prueba_id` int(11) NOT NULL,
  `materia_prueba_id` int(11) NOT NULL,
  `alumno_id` int(11) NOT NULL,
  `alumno_tiempo_prueba` varchar(100) NOT NULL,
  `nota` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `profesor`
--

DROP TABLE IF EXISTS `profesor`;
CREATE TABLE `profesor` (
  `profesor_id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(200) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `apellido` varchar(100) NOT NULL,
  `department_id` int(11) NOT NULL,
  `ubicacion` varchar(200) NOT NULL,
  `about` varchar(500) NOT NULL,
  `profesor_status` varchar(20) NOT NULL,
  `profesor_stat` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `profesor_materia`
--

DROP TABLE IF EXISTS `profesor_materia`;
CREATE TABLE `profesor_materia` (
  `profesor_materia_id` int(11) NOT NULL,
  `profesor_id` int(11) NOT NULL,
  `materia_id` int(11) NOT NULL,
  `asunto_id` int(11) NOT NULL,
  `thumbnails` varchar(100) NOT NULL,
  `school_year` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `profesor_materia_alumno`
--

DROP TABLE IF EXISTS `profesor_materia_alumno`;
CREATE TABLE `profesor_materia_alumno` (
  `profesor_materia_alumno_id` int(11) NOT NULL,
  `profesor_materia_id` int(11) NOT NULL,
  `alumno_id` int(11) NOT NULL,
  `profesor_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `apellido` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `materia`
--
ALTER TABLE `materia`
  ADD PRIMARY KEY (`materia_id`);

--
-- Indexes for table `materia_prueba`
--
ALTER TABLE `materia_prueba`
  ADD PRIMARY KEY (`materia_prueba_id`);

--
-- Indexes for table `tipo_pregunta`
--
ALTER TABLE `tipo_pregunta`
  ADD PRIMARY KEY (`tipo_pregunta_id`);

--
-- Indexes for table `prueba`
--
ALTER TABLE `prueba`
  ADD PRIMARY KEY (`prueba_id`);

--
-- Indexes for table `prueba_pregunta`
--
ALTER TABLE `prueba_pregunta`
  ADD PRIMARY KEY (`prueba_pregunta_id`);

--
-- Indexes for table `alumno`
--
ALTER TABLE `alumno`
  ADD PRIMARY KEY (`alumno_id`);

--
-- Indexes for table `alumno_actividad`
--
ALTER TABLE `alumno_actividad`
  ADD PRIMARY KEY (`alumno_actividad_id`);

--
-- Indexes for table `alumno_materia_prueba`
--
ALTER TABLE `alumno_materia_prueba`
  ADD PRIMARY KEY (`alumno_materia_prueba_id`);

--
-- Indexes for table `profesor`
--
ALTER TABLE `profesor`
  ADD PRIMARY KEY (`profesor_id`);

--
-- Indexes for table `profesor_materia`
--
ALTER TABLE `profesor_materia`
  ADD PRIMARY KEY (`profesor_materia_id`);

--
-- Indexes for table `profesor_materia_alumno`
--
ALTER TABLE `profesor_materia_alumno`
  ADD PRIMARY KEY (`profesor_materia_alumno_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `materia`
--
ALTER TABLE `materia`
  MODIFY `materia_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `materia_prueba`
--
ALTER TABLE `materia_prueba`
  MODIFY `materia_prueba_id` int(11) NOT NULL AUTO_INCREMENT;


--
-- AUTO_INCREMENT for table `prueba`
--
ALTER TABLE `prueba`
  MODIFY `prueba_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `prueba_pregunta`
--
ALTER TABLE `prueba_pregunta`
  MODIFY `prueba_pregunta_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `alumno`
--
ALTER TABLE `alumno`
  MODIFY `alumno_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `alumno_actividad`
--
ALTER TABLE `alumno_actividad`
  MODIFY `alumno_actividad_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `alumno_materia_prueba`
--
ALTER TABLE `alumno_materia_prueba`
  MODIFY `alumno_materia_prueba_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `profesor`
--
ALTER TABLE `profesor`
  MODIFY `profesor_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `profesor_materia`
--
ALTER TABLE `profesor_materia`
  MODIFY `profesor_materia_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `profesor_materia_alumno`
--
ALTER TABLE `profesor_materia_alumno`
  MODIFY `profesor_materia_alumno_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
