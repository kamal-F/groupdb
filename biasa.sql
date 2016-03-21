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
-- Database: `biasa`
--

-- --------------------------------------------------------

--
-- Table structure for table `barang`
--

CREATE TABLE IF NOT EXISTS `barang` (
  `id` int(11) NOT NULL,
  `kode` varchar(20) NOT NULL,
  `gambar` varchar(200) DEFAULT NULL,
  `nama` varchar(20) NOT NULL,
  `deskripsi` text NOT NULL,
  `mlat` varchar(25) DEFAULT NULL,
  `mlong` varchar(25) DEFAULT NULL,
  `jumlah` int(11) NOT NULL DEFAULT '0',
  `id_kantor` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `barang`
--

INSERT INTO `barang` (`id`, `kode`, `gambar`, `nama`, `deskripsi`, `mlat`, `mlong`, `jumlah`, `id_kantor`, `created_at`, `created_by`, `updated_at`, `updated_by`) VALUES
(24, 'x1', 'uploads/tas kulitx1.jpg', 'xxx', '<p>ddddddddddddd</p>\r\n', '-6.216648359375299', '107.19140628352761', 40, 1, '2015-12-24 20:47:19', 3, '2015-12-25 06:11:36', 3),
(25, 'x5', 'uploads/lem foxx2x2.jpg', 'x2', '<p><strong>x2cccccccccccccccc ddsdsds</strong></p>\r\n', '-6.323670164678342', '108.26806643977761', 13, 1, '2015-12-24 22:04:18', 4, '2015-12-25 00:24:00', 4),
(27, 'x2', NULL, 'termos ubahan', 'barang bagus dan awet', NULL, NULL, 0, 10, '2015-12-26 05:47:53', NULL, '2015-12-26 07:38:43', 3),
(28, 'B25', NULL, 'reskuker', '<p>Penanak nasi bagus</p>\r\n', '-6.836988024041983', '108.24005126953125', 20, 5, '2015-12-26 07:35:33', 3, '2016-02-27 19:03:51', 3);

-- --------------------------------------------------------

--
-- Table structure for table `kantor`
--

CREATE TABLE IF NOT EXISTS `kantor` (
  `id` int(11) NOT NULL,
  `nama` varchar(20) NOT NULL,
  `alamat` varchar(60) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kantor`
--

INSERT INTO `kantor` (`id`, `nama`, `alamat`) VALUES
(5, 'Pakuyumbuh', 'jl jurang');

-- --------------------------------------------------------

--
-- Table structure for table `kantorcabang`
--

CREATE TABLE IF NOT EXISTS `kantorcabang` (
  `id` int(11) NOT NULL,
  `nama` varchar(20) NOT NULL,
  `alamat` varchar(20) NOT NULL,
  `id_kantor` int(11) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kantorcabang`
--

INSERT INTO `kantorcabang` (`id`, `nama`, `alamat`, `id_kantor`) VALUES
(3, 'Pakuyumbuh1', 'jl jurang2', 5),
(4, 'Pakuyumbuh1', 'jl jurang3, badung', 5),
(5, 'pakuyumbuh 2', 'jl jurang4, badung', 5);

-- --------------------------------------------------------

--
-- Table structure for table `migration`
--

CREATE TABLE IF NOT EXISTS `migration` (
  `version` varchar(180) NOT NULL,
  `apply_time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `migration`
--

INSERT INTO `migration` (`version`, `apply_time`) VALUES
('m000000_000000_base', 1458523713);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `auth_key` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `password_hash` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password_reset_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status_id` smallint(6) NOT NULL DEFAULT '10',
  `role_id` smallint(6) NOT NULL DEFAULT '10',
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL,
  `accessToken` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `auth_key`, `password_hash`, `password_reset_token`, `email`, `status_id`, `role_id`, `created_at`, `updated_at`, `accessToken`) VALUES
(3, 'bb', 'e12Pzdai1N3tp8PG214duErToNaz4zAP', '$2y$13$gq2XtY8NPYfgdGROjWF5E.x5eqV1e5/i2KX/BQPl8B7Xq3FrdCQcu', NULL, 'bb@bb.bb', 10, 50, 0, 0, 'bb'),
(4, 'cc', 'VHpbEYIFyubS1-6qeOZ2TdtRawahZSNX', '$2y$13$V7YVlOq0CVUms3EFETaOkuEVnKGLRvJojCmLWxiM6OTRhmfOwwkoi', NULL, 'cbb@bb.bb', 10, 10, 1450931997, 1450931997, ''),
(5, 'dd', 'doEU3VAvJ9bPKEre_pyp_ALQnALEQ0yX', '$2y$13$16wXNtNAsfSGv/0zimD0hOXTf9fr80D7PGANi8hrreYVq7b5o9IEi', NULL, 'dd@dd.dd', 10, 0, 1450932142, 1450932142, '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kantor`
--
ALTER TABLE `kantor`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kantorcabang`
--
ALTER TABLE `kantorcabang`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_kantor` (`id_kantor`);

--
-- Indexes for table `migration`
--
ALTER TABLE `migration`
  ADD PRIMARY KEY (`version`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `barang`
--
ALTER TABLE `barang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=29;
--
-- AUTO_INCREMENT for table `kantor`
--
ALTER TABLE `kantor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `kantorcabang`
--
ALTER TABLE `kantorcabang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `kantorcabang`
--
ALTER TABLE `kantorcabang`
  ADD CONSTRAINT `kantorcabang_ibfk_1` FOREIGN KEY (`id_kantor`) REFERENCES `kantor` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
