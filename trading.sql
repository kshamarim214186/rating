-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 19, 2021 at 08:08 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 7.4.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `trading`
--

-- --------------------------------------------------------

--
-- Table structure for table `rating_data`
--

CREATE TABLE `rating_data` (
  `id` int(11) NOT NULL,
  `remark` varchar(256) DEFAULT NULL,
  `rating` varchar(20) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  `status` varchar(10) DEFAULT NULL,
  `date_time` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `rating_data`
--

INSERT INTO `rating_data` (`id`, `remark`, `rating`, `email`, `status`, `date_time`) VALUES
(1, 'test review', '1', 'kshama.hco@gmail.com', '1', '2021-03-19 10:57:08'),
(2, 'test review test rev', '2', 'kshama.hco@gmail.com', '1', '2021-03-19 10:57:36'),
(3, 'test review test rev', '3', 'kshama.hco@gmail.com', '1', '2021-03-19 11:36:19'),
(4, 'Access test reviews ', '4', 'testmail@gmail.com', '1', '2021-03-19 12:05:03'),
(5, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', '4', 'testmail@gmail.com', '1', '2021-03-19 12:06:55');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `rating_data`
--
ALTER TABLE `rating_data`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `rating_data`
--
ALTER TABLE `rating_data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
