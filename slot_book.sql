-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: May 02, 2018 at 05:12 PM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 7.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `slot_book`
--

-- --------------------------------------------------------

--
-- Table structure for table `bkgs`
--

CREATE TABLE `bkgs` (
  `id` int(25) NOT NULL,
  `slid` int(25) NOT NULL,
  `secid` int(25) NOT NULL,
  `date` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `cr`
--

CREATE TABLE `cr` (
  `id` int(25) NOT NULL,
  `sid` varchar(255) NOT NULL,
  `pwd` varchar(255) NOT NULL,
  `secid` int(25) NOT NULL,
  `role` varchar(255) NOT NULL DEFAULT 'cr'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cr`
--

INSERT INTO `cr` (`id`, `sid`, `pwd`, `secid`, `role`) VALUES
(1, '2015cse036', 'hello', 1, 'cr');

-- --------------------------------------------------------

--
-- Table structure for table `sec`
--

CREATE TABLE `sec` (
  `id` int(25) NOT NULL,
  `sec` int(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sec`
--

INSERT INTO `sec` (`id`, `sec`) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4);

-- --------------------------------------------------------

--
-- Table structure for table `slot`
--

CREATE TABLE `slot` (
  `id` int(25) NOT NULL,
  `slot` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `slot`
--

INSERT INTO `slot` (`id`, `slot`) VALUES
(1, 'Cricket'),
(2, 'Foot Ball');

-- --------------------------------------------------------

--
-- Table structure for table `tt`
--

CREATE TABLE `tt` (
  `id` int(25) NOT NULL,
  `secid` int(25) NOT NULL,
  `day` varchar(25) NOT NULL,
  `frm` int(25) NOT NULL,
  `to` int(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tt`
--

INSERT INTO `tt` (`id`, `secid`, `day`, `frm`, `to`) VALUES
(1, 1, 'Wed', 4, 6),
(2, 1, 'Thu', 4, 6);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cr`
--
ALTER TABLE `cr`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sec`
--
ALTER TABLE `sec`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tt`
--
ALTER TABLE `tt`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cr`
--
ALTER TABLE `cr`
  MODIFY `id` int(25) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `sec`
--
ALTER TABLE `sec`
  MODIFY `id` int(25) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `tt`
--
ALTER TABLE `tt`
  MODIFY `id` int(25) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
