-- phpMyAdmin SQL Dump
-- version 4.4.3
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Mar 21, 2016 at 02:42 
-- Server version: 5.6.24
-- PHP Version: 5.6.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `nodegambar`
--

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL,
  `nim` char(5) NOT NULL,
  `nama` varchar(25) NOT NULL,
  `password` varchar(20) DEFAULT NULL,
  `rol` varchar(5) DEFAULT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `nim`, `nama`, `password`, `rol`, `created`) VALUES
(5, '2323', 'susi', NULL, NULL, '2016-01-05 14:13:25'),
(7, '4444', 'mmmmm', NULL, NULL, '2016-01-05 23:06:24'),
(8, '12121', 'gugi', NULL, NULL, '2016-01-12 21:56:20'),
(9, '12121', 'gugi', NULL, NULL, '2016-01-12 21:58:13'),
(10, '333', 'fr', NULL, NULL, '2016-01-12 22:05:40'),
(11, '555', 'ttttt', NULL, NULL, '2016-01-12 22:07:55'),
(12, '22', 'ddsdsd', NULL, NULL, '2016-03-06 11:36:24'),
(13, '3232', 'dsad', NULL, NULL, '2016-03-06 11:36:30');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=14;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
