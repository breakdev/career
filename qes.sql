-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 24, 2018 at 04:37 PM
-- Server version: 10.1.32-MariaDB
-- PHP Version: 7.2.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `qes`
--
CREATE DATABASE IF NOT EXISTS `qes` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `qes`;

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `user` varchar(250) NOT NULL,
  `pass` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `user`, `pass`) VALUES
(1, 'admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `applicant`
--

CREATE TABLE `applicant` (
  `id_applicant` int(11) NOT NULL,
  `id_position` int(11) NOT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `alamat` varchar(450) DEFAULT NULL,
  `no_hp` int(11) DEFAULT NULL,
  `file_cv` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `client`
--

CREATE TABLE `client` (
  `id_client` int(250) NOT NULL,
  `years` varchar(250) NOT NULL,
  `project_item` varchar(250) NOT NULL,
  `client` varchar(250) NOT NULL,
  `location` varchar(250) NOT NULL,
  `description` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `client`
--

INSERT INTO `client` (`id_client`, `years`, `project_item`, `client`, `location`, `description`) VALUES
(1, '2010', 'Painting Services', 'AKER SOLUTION', 'BATAM', 'WELL HEAD Christmas Tree'),
(2, '2010', 'Stuffing and Loading Insp', 'FMC', 'SINGAPORE', 'WELL HEAD ACC');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `id_contact` int(250) NOT NULL,
  `date` varchar(30) NOT NULL,
  `nama` varchar(250) NOT NULL,
  `hp` varchar(250) NOT NULL,
  `email` varchar(250) NOT NULL,
  `service` varchar(250) NOT NULL,
  `feed` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `job`
--

CREATE TABLE `job` (
  `id_job` int(250) NOT NULL,
  `id_staff` varchar(250) NOT NULL,
  `id_perusahaan` varchar(250) NOT NULL,
  `tgl_mulai` varchar(250) NOT NULL,
  `tgl_selesai` varchar(250) NOT NULL,
  `desc` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `job`
--

INSERT INTO `job` (`id_job`, `id_staff`, `id_perusahaan`, `tgl_mulai`, `tgl_selesai`, `desc`) VALUES
(10, 'ST001', '44nbnkb', '2018-08-09', '2018-08-23', 'kjkjkjkj');

-- --------------------------------------------------------

--
-- Table structure for table `job_position`
--

CREATE TABLE `job_position` (
  `id_position` int(11) NOT NULL,
  `position_name` varchar(100) DEFAULT NULL,
  `description` varchar(450) DEFAULT NULL,
  `requirement` varchar(450) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `job_position`
--

INSERT INTO `job_position` (`id_position`, `position_name`, `description`, `requirement`) VALUES
(1, 'Software Engineererer', 'Bisa bikin aplikasi androiderere', 'S1erere'),
(4, 'fasdfasdf', 'asdfsadfasdfa adfsadf asedfasdf asdfa sdfa sdf asdfasdfasdf asdfasd', 'asdfas df\r\nasdfasdf\r\nasdfasdfas');

-- --------------------------------------------------------

--
-- Table structure for table `perusahaan`
--

CREATE TABLE `perusahaan` (
  `id_perusahaan` varchar(250) NOT NULL,
  `nama` varchar(250) NOT NULL,
  `alamat` varchar(250) NOT NULL,
  `telepon` varchar(250) NOT NULL,
  `fax` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `perusahaan`
--

INSERT INTO `perusahaan` (`id_perusahaan`, `nama`, `alamat`, `telepon`, `fax`) VALUES
('3423ad', 'asdfasd', 'sdfasd', '+6281277890522', '81277890522'),
('44nbnkb', 'Fandy Hidayat', ' nknk ', '+6281277890522', '81277890522');

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE `staff` (
  `id_staff` varchar(250) NOT NULL,
  `user` varchar(250) NOT NULL,
  `pass` varchar(250) NOT NULL,
  `nama` varchar(250) NOT NULL,
  `email` varchar(250) NOT NULL,
  `no_hp` varchar(250) NOT NULL,
  `jabatan` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`id_staff`, `user`, `pass`, `nama`, `email`, `no_hp`, `jabatan`) VALUES
('ST001', 'fandy', 'fandy', 'Fandy Hidayat', 'fandy15ti@mahasiswa.pcr.ac.id', '0812778900522', 'IT Support');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `applicant`
--
ALTER TABLE `applicant`
  ADD PRIMARY KEY (`id_applicant`),
  ADD KEY `id_bidang` (`id_position`);

--
-- Indexes for table `client`
--
ALTER TABLE `client`
  ADD PRIMARY KEY (`id_client`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id_contact`);

--
-- Indexes for table `job`
--
ALTER TABLE `job`
  ADD PRIMARY KEY (`id_job`),
  ADD KEY `id_staff` (`id_staff`,`id_perusahaan`),
  ADD KEY `id_perusahaan` (`id_perusahaan`);

--
-- Indexes for table `job_position`
--
ALTER TABLE `job_position`
  ADD PRIMARY KEY (`id_position`);

--
-- Indexes for table `perusahaan`
--
ALTER TABLE `perusahaan`
  ADD PRIMARY KEY (`id_perusahaan`);

--
-- Indexes for table `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`id_staff`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `applicant`
--
ALTER TABLE `applicant`
  MODIFY `id_applicant` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `client`
--
ALTER TABLE `client`
  MODIFY `id_client` int(250) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `id_contact` int(250) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `job`
--
ALTER TABLE `job`
  MODIFY `id_job` int(250) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `job_position`
--
ALTER TABLE `job_position`
  MODIFY `id_position` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `applicant`
--
ALTER TABLE `applicant`
  ADD CONSTRAINT `applicant_ibfk_1` FOREIGN KEY (`id_position`) REFERENCES `job_position` (`id_position`);

--
-- Constraints for table `job`
--
ALTER TABLE `job`
  ADD CONSTRAINT `job_ibfk_1` FOREIGN KEY (`id_perusahaan`) REFERENCES `perusahaan` (`id_perusahaan`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `job_ibfk_2` FOREIGN KEY (`id_staff`) REFERENCES `staff` (`id_staff`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
