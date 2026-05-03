-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 03, 2026 at 10:15 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `visitor_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `visitors`
--

CREATE TABLE `visitors` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `phone` varchar(10) DEFAULT NULL,
  `purpose` varchar(255) DEFAULT NULL,
  `meet` varchar(100) DEFAULT NULL,
  `in_time` datetime DEFAULT NULL,
  `out_time` datetime DEFAULT NULL,
  `location` varchar(100) DEFAULT NULL,
  `company` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `visitors`
--

INSERT INTO `visitors` (`id`, `name`, `phone`, `purpose`, `meet`, `in_time`, `out_time`, `location`, `company`) VALUES
(1, 'Anu', '9856745676', 'Purchase', 'Velan', '2026-05-03 04:42:59', NULL, NULL, NULL),
(2, 'Kavya', '8765789007', 'Visit', 'Anu', '2026-05-03 04:44:44', NULL, NULL, NULL),
(3, 'Ananya', '9989898989', 'Sample', ' Aadhira', '2026-05-03 04:58:44', '2026-05-03 04:58:50', NULL, NULL),
(4, 'Abinaya', '3544556576', 'To Meet MD', 'Sekar', '2026-05-03 05:01:01', NULL, NULL, NULL),
(5, 'Meenakshi', '8465778865', 'Attend Interview', 'Kavya', '2026-05-03 05:01:54', NULL, NULL, NULL),
(6, 'sekar', '6677889999', 'Visit company', 'abi', '2026-05-03 05:15:42', '2026-05-03 05:15:46', NULL, NULL),
(7, 'Abi', '9080798877', 'Purchase', 'anu', '2026-05-03 09:29:46', '2026-05-03 09:30:25', NULL, NULL),
(8, 'Abi', '4565576678', 'Interview', 'MD', '2026-05-03 09:39:18', '2026-05-03 09:39:23', NULL, NULL),
(9, 'abi', '6778900887', 'interview', 'kavya', '2026-05-03 09:46:16', '2026-05-03 09:46:17', 'mdu', 'nil');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `visitors`
--
ALTER TABLE `visitors`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `visitors`
--
ALTER TABLE `visitors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
