-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 01, 2021 at 09:42 AM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 7.3.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dbaziz06316`
--

-- --------------------------------------------------------

--
-- Table structure for table `barang06316`
--

CREATE TABLE `barang06316` (
  `kode` varchar(5) NOT NULL,
  `nama` varchar(40) DEFAULT NULL,
  `hrgbeli` int(22) DEFAULT NULL,
  `hrgjual` int(12) DEFAULT NULL,
  `jumlah` int(8) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `barang06316`
--

INSERT INTO `barang06316` (`kode`, `nama`, `hrgbeli`, `hrgjual`, `jumlah`) VALUES
('11111', 'Buku Tuli ABC 40', 5000, 5500, 78),
('12345', 'Pensil HB ABC', 5200, 6000, 50),
('22222', 'Buku Tuli Merak 80', 7000, 7500, 118),
('33333', 'Mie XY', 2000, 2500, 20),
('44444', 'Bolpoin', 1000, 1500, 250);

-- --------------------------------------------------------

--
-- Table structure for table `jual06316`
--

CREATE TABLE `jual06316` (
  `notransaksi` int(5) NOT NULL,
  `kode` varchar(5) DEFAULT NULL,
  `harga` int(12) DEFAULT NULL,
  `jumlah` int(8) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `jual06316`
--

INSERT INTO `jual06316` (`notransaksi`, `kode`, `harga`, `jumlah`) VALUES
(21001, '11111', 5500, 1),
(21002, '11111', 5500, 1),
(21003, '11111', 5500, 1),
(21004, '11111', 5500, 1),
(21005, '11111', 5500, 1),
(21006, '11111', 5500, 22),
(21007, '22222', 7500, 2);

-- --------------------------------------------------------

--
-- Table structure for table `pegawai06316`
--

CREATE TABLE `pegawai06316` (
  `nip` varchar(10) NOT NULL,
  `nama` char(50) NOT NULL,
  `bagian` varchar(15) NOT NULL,
  `jeniskel` varchar(10) NOT NULL,
  `password` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pegawai06316`
--

INSERT INTO `pegawai06316` (`nip`, `nama`, `bagian`, `jeniskel`, `password`) VALUES
('06316', 'AZIZ', 'Mahasiswa', 'Laki Laki', '06316'),
('11111', 'Awalina Damayanti', 'Pemasaran', 'Perempuan', '11111'),
('12345', 'Lani Damayanti', 'Pemasaran', 'Perempuan', '12345'),
('12346', 'Sri Rejeki Wijayanti', 'Administrasi', 'Perempuan', '12346'),
('22222', 'Mulyani Sari', 'Pemasaran', 'Perempuan', '22222'),
('44444', 'Guna Wijaya', 'Produksi', 'Laki Laki', '44444');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `barang06316`
--
ALTER TABLE `barang06316`
  ADD PRIMARY KEY (`kode`);

--
-- Indexes for table `jual06316`
--
ALTER TABLE `jual06316`
  ADD PRIMARY KEY (`notransaksi`);

--
-- Indexes for table `pegawai06316`
--
ALTER TABLE `pegawai06316`
  ADD PRIMARY KEY (`nip`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
