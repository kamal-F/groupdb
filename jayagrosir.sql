-- phpMyAdmin SQL Dump
-- version 4.4.3
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Mar 21, 2016 at 02:41 
-- Server version: 5.6.24
-- PHP Version: 5.6.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `jayagrosir`
--

-- --------------------------------------------------------

--
-- Table structure for table `barangbekas`
--

CREATE TABLE IF NOT EXISTS `barangbekas` (
  `id` int(11) NOT NULL,
  `desk` varchar(20) NOT NULL,
  `balance` int(11) NOT NULL,
  `vendor` int(11) NOT NULL,
  `tipe` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `barangbekas`
--

INSERT INTO `barangbekas` (`id`, `desk`, `balance`, `vendor`, `tipe`) VALUES
(1, 'baju seragam biru', 201, 1, 1),
(2, 'celana', 3022, 1, 1),
(3, 'meja jepang', 10, 44, 2),
(12, 'tyr', 4, 4, 4),
(13, 'aaa', 1212, 1, 2),
(24, 'percobann 1', 2, 3, 4),
(25, 'percobann 1', 2, 3, 4);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `barangbekas`
--
ALTER TABLE `barangbekas`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `barangbekas`
--
ALTER TABLE `barangbekas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=26;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
