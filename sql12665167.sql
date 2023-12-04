-- phpMyAdmin SQL Dump
-- version 4.7.1
-- https://www.phpmyadmin.net/
--
-- Host: sql12.freesqldatabase.com
-- Generation Time: Dec 01, 2023 at 03:15 PM
-- Server version: 5.5.62-0ubuntu0.14.04.1
-- PHP Version: 7.0.33-0ubuntu0.16.04.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sql12665167`
--

-- --------------------------------------------------------

--
-- Table structure for table `COURSES`
--

CREATE TABLE `COURSES` (
  `EMAIL` varchar(40) DEFAULT NULL,
  `COURSE_NAME` varchar(40) DEFAULT NULL,
  `MODULE` varchar(40) DEFAULT NULL,
  `COMPLETED` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `COURSES`
--

-- --------------------------------------------------------

--
-- Table structure for table `CREDENTIALS`
--

CREATE TABLE `CREDENTIALS` (
  `NAME` varchar(40) NOT NULL,
  `EMAIL` varchar(40) NOT NULL,
  `PASSWORD` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `CREDENTIALS`
--

--
-- Indexes for dumped tables
--

--
-- Indexes for table `COURSES`
--
ALTER TABLE `COURSES`
  ADD KEY `EMAIL` (`EMAIL`);

--
-- Indexes for table `CREDENTIALS`
--
ALTER TABLE `CREDENTIALS`
  ADD PRIMARY KEY (`EMAIL`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `COURSES`
--
ALTER TABLE `COURSES`
  ADD CONSTRAINT `COURSES_ibfk_1` FOREIGN KEY (`EMAIL`) REFERENCES `CREDENTIALS` (`EMAIL`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
