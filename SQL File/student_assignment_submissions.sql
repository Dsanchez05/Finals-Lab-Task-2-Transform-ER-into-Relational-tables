-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 20, 2025 at 09:56 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `student_assignment_submissions`
--

-- --------------------------------------------------------

--
-- Table structure for table `assignment_tbl`
--

CREATE TABLE `assignment_tbl` (
  `shortname` varchar(50) NOT NULL,
  `due_date` date NOT NULL,
  `url` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `student_tbl`
--

CREATE TABLE `student_tbl` (
  `username` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `submission_tbl`
--

CREATE TABLE `submission_tbl` (
  `username` varchar(50) DEFAULT NULL,
  `shortname` varchar(50) NOT NULL,
  `version` int(11) DEFAULT NULL,
  `submit_date` date NOT NULL,
  `data` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `assignment_tbl`
--
ALTER TABLE `assignment_tbl`
  ADD PRIMARY KEY (`shortname`);

--
-- Indexes for table `student_tbl`
--
ALTER TABLE `student_tbl`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `submission_tbl`
--
ALTER TABLE `submission_tbl`
  ADD PRIMARY KEY (`shortname`),
  ADD KEY `username` (`username`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `submission_tbl`
--
ALTER TABLE `submission_tbl`
  ADD CONSTRAINT `submission_tbl_ibfk_1` FOREIGN KEY (`username`) REFERENCES `student_tbl` (`username`),
  ADD CONSTRAINT `submission_tbl_ibfk_2` FOREIGN KEY (`shortname`) REFERENCES `assignment_tbl` (`shortname`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
