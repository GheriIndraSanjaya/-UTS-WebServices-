-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 26, 2021 at 04:11 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `arsenal`
--

-- --------------------------------------------------------

--
-- Table structure for table `pemain`
--

CREATE TABLE `pemain` (
  `id` int(11) NOT NULL,
  `Nama` varchar(100) NOT NULL,
  `Umur` int(10) NOT NULL,
  `Posisi` varchar(100) NOT NULL,
  `Asal` varchar(100) NOT NULL,
  `Statistik` varchar(300) NOT NULL,
  `release_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pemain`
--

INSERT INTO `pemain` (`id`, `Nama`, `Umur`, `Posisi`, `Asal`, `Statistik`, `release_at`) VALUES
(1, 'Andre Arshavin', 35, 'Striker', 'Russia', 'Goal 175,Asist 100', '2021-04-24 15:40:40'),
(2, 'Aubameyang', 30, 'Striker', 'Gabon', '250 Goal,Asist 50', '2021-04-24 16:34:39'),
(3, 'Alexander Lacazette', 28, 'Second Striker', 'France', '155 Goal,Asist 35', '2021-04-24 16:40:06'),
(4, 'Bernd Leno', 28, 'Goalkeeper', 'Germany', 'Arsenal 101,Germany 3', '2021-04-25 04:01:14'),
(5, 'Nicolas Pepe', 25, 'Right Wing', 'Pantai GAding', 'Goal 17,Asist 7', '2021-04-25 04:06:30'),
(6, 'Hector Bellerin', 34, 'Centre Back', 'Spain', 'Goal 50, Asist 75', '2021-04-25 02:45:38'),
(7, 'Granit Xhaxa', 28, 'Midfielder', 'Swiss', 'Goal 45, Asist 18', '2021-04-25 04:11:30');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pemain`
--
ALTER TABLE `pemain`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pemain`
--
ALTER TABLE `pemain`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
