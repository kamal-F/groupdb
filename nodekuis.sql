-- phpMyAdmin SQL Dump
-- version 4.4.3
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Aug 03, 2016 at 03:00 
-- Server version: 5.6.24
-- PHP Version: 5.6.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `nodekuis`
--

-- --------------------------------------------------------

--
-- Table structure for table `pilihans`
--

CREATE TABLE IF NOT EXISTS `pilihans` (
  `id` int(11) NOT NULL,
  `soal_id` int(11) NOT NULL,
  `desc` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pilihans`
--

INSERT INTO `pilihans` (`id`, `soal_id`, `desc`) VALUES
(1, 1, 'persatuan bangsa'),
(2, 1, 'perpecahan suku bangsa'),
(3, 1, 'perselisihan bangsa'),
(1, 2, 'mengikuti upacara bendera dengan khidmat'),
(2, 2, 'menyontek PR teman'),
(3, 2, 'malas pergi ke sekolah'),
(1, 3, 'dipercaya orang'),
(2, 3, 'dikenal orang'),
(3, 3, 'dibenci orang'),
(1, 4, 'dihormati'),
(2, 4, 'dibanggakan'),
(3, 4, 'disyukuri');

-- --------------------------------------------------------

--
-- Table structure for table `players`
--

CREATE TABLE IF NOT EXISTS `players` (
  `id` int(11) NOT NULL,
  `nama` varchar(20) NOT NULL,
  `kelas` int(11) DEFAULT NULL,
  `locked` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `players`
--

INSERT INTO `players` (`id`, `nama`, `kelas`, `locked`) VALUES
(1, 'Budi', 1, 1),
(2, 'Iwan', 1, 0),
(3, 'Mohamad', 2, 1),
(4, 'Nurkamal', 2, 0),
(5, 'Nur', 3, 0),
(6, 'kamal', 3, 0),
(7, 'M', 4, 0),
(8, 'mahasiswa', 4, 0);

-- --------------------------------------------------------

--
-- Table structure for table `soals`
--

CREATE TABLE IF NOT EXISTS `soals` (
  `id` int(11) NOT NULL,
  `no` int(11) NOT NULL,
  `soal` text NOT NULL,
  `benar` int(11) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `soals`
--

INSERT INTO `soals` (`id`, `no`, `soal`, `benar`) VALUES
(1, 1, 'Bhinneka Tunggal Ika merupakan semboyan Bangsa Indonesia yang senantiasa mencerminkan rasa ....', 1),
(2, 2, 'Contoh sikap seseorang yang menggambarkan rasa cinta tanah air adalah ....', 1),
(3, 3, 'Jika kamu bekerja jujur dalam kehidupan sehari-hari, kamu akan ....', 1),
(4, 4, 'Setiap prestasi yang diperoleh harus  ....', 3);

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
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `nim`, `nama`, `password`, `rol`, `created`) VALUES
(4, '12', 'Iwan A S U P KA', NULL, NULL, '2015-10-24 22:27:05'),
(5, '2323', 'susi', NULL, NULL, '2016-01-05 14:13:25'),
(6, '999', 'bb', 'cc', '101', '2016-01-05 14:43:46'),
(7, '4444', 'mmmmm', NULL, NULL, '2016-01-05 23:06:24'),
(8, '12121', 'gugi', NULL, NULL, '2016-01-12 21:56:20'),
(9, '12121', 'gugi', NULL, NULL, '2016-01-12 21:58:13'),
(10, '333', 'fr', NULL, NULL, '2016-01-12 22:05:40'),
(11, '555', 'ttttt', NULL, NULL, '2016-01-12 22:07:55');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pilihans`
--
ALTER TABLE `pilihans`
  ADD KEY `soal_id` (`soal_id`);

--
-- Indexes for table `players`
--
ALTER TABLE `players`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `soals`
--
ALTER TABLE `soals`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `no` (`no`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `players`
--
ALTER TABLE `players`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `soals`
--
ALTER TABLE `soals`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=12;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `pilihans`
--
ALTER TABLE `pilihans`
  ADD CONSTRAINT `pilihans_ibfk_1` FOREIGN KEY (`soal_id`) REFERENCES `soals` (`no`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
