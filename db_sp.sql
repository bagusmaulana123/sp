-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Oct 25, 2023 at 11:32 AM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_sp`
--

-- --------------------------------------------------------

--
-- Table structure for table `kriteria`
--

CREATE TABLE `kriteria` (
  `id` int NOT NULL,
  `nama_kriteria` varchar(255) NOT NULL,
  `sifat_kriteria` varchar(255) NOT NULL,
  `bobot_kriteria` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `kriteria`
--

INSERT INTO `kriteria` (`id`, `nama_kriteria`, `sifat_kriteria`, `bobot_kriteria`) VALUES
(1, 'Keindahan', 'C01', '80'),
(2, 'Aksesibilitas', 'C02', '80'),
(18, 'Fasilitas', 'C03', '85');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `id` int NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(155) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`id`, `username`, `password`) VALUES
(1, 'anjay', 'de12f5798f86bdcc5c759a645e913e4c'),
(2, 'user', 'user');

-- --------------------------------------------------------

--
-- Table structure for table `rel_alternatif`
--

CREATE TABLE `rel_alternatif` (
  `id` int NOT NULL,
  `kode_alternatif` varchar(16) NOT NULL,
  `nilai1` double NOT NULL,
  `nilai2` double NOT NULL,
  `nilai3` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `rel_alternatif`
--

INSERT INTO `rel_alternatif` (`id`, `kode_alternatif`, `nilai1`, `nilai2`, `nilai3`) VALUES
(1, 'A01', 100, 80, 70),
(8, 'A02', 80, 75, 56);

-- --------------------------------------------------------

--
-- Table structure for table `wisata_alam`
--

CREATE TABLE `wisata_alam` (
  `id` int NOT NULL,
  `nama` varchar(255) NOT NULL,
  `tempat` varchar(255) NOT NULL,
  `rank` int NOT NULL,
  `total` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `wisata_alam`
--

INSERT INTO `wisata_alam` (`id`, `nama`, `tempat`, `rank`, `total`) VALUES
(1, 'Bukit Matang Keladan', 'Pelaihari', 0, 0),
(8, 'Pantai Turki', 'Pagatan', 0, 0),
(11, 'Sungai Duyung', 'Banjarmasin', 0, 0),
(12, 'Sungai Kapuas', 'Pontianak', 0, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `kriteria`
--
ALTER TABLE `kriteria`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rel_alternatif`
--
ALTER TABLE `rel_alternatif`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wisata_alam`
--
ALTER TABLE `wisata_alam`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `kriteria`
--
ALTER TABLE `kriteria`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `rel_alternatif`
--
ALTER TABLE `rel_alternatif`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `wisata_alam`
--
ALTER TABLE `wisata_alam`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
