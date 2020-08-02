-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 02, 2020 at 10:44 AM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `placement`
--

-- --------------------------------------------------------

--
-- Table structure for table `company`
--

CREATE TABLE `company` (
  `id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `cid` int(255) NOT NULL,
  `name` varchar(40) NOT NULL,
  `cont` varchar(15) NOT NULL,
  `email` varchar(50) NOT NULL,
  `addr` varchar(256) NOT NULL,
  `c_cont` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`cid`, `name`, `cont`, `email`, `addr`, `c_cont`) VALUES
(1, 'Aparna Bhonde', '7894561230', 'bhonde.aparna@gmail.com', 'Airoli', '32165498700');

-- --------------------------------------------------------

--
-- Table structure for table `datapoints`
--

CREATE TABLE `datapoints` (
  `id` int(11) NOT NULL,
  `year` int(11) NOT NULL,
  `offers` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `datapoints`
--

INSERT INTO `datapoints` (`id`, `year`, `offers`) VALUES
(1, 2018, 20),
(2, 2019, 30),
(3, 2020, 35);

-- --------------------------------------------------------

--
-- Table structure for table `slider`
--

CREATE TABLE `slider` (
  `id` int(11) NOT NULL,
  `image_path` varchar(220) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `slider`
--

INSERT INTO `slider` (`id`, `image_path`) VALUES
(1, 'images/MV1.JPG'),
(2, 'images/MV2.JPG');

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `pid` int(255) NOT NULL,
  `name` varchar(28) NOT NULL,
  `cls` varchar(28) NOT NULL,
  `division` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`pid`, `name`, `cls`, `division`) VALUES
(10, 'prasad deshmukh', 'BE', 'B'),
(11, 'scout', 'BE', 'A'),
(12, 'Prasad', 'BE', 'A'),
(14, 'Deshmukh', 'BE', 'B'),
(18, 'Alia Bhatt', 'BE', 'B'),
(19, 'Prasad', 'BE', 'B'),
(21, 'John', 'TE', 'A'),
(22, 'Prasad', '2021', 'A'),
(23, 'Prasad', '2021', 'A');

-- --------------------------------------------------------

--
-- Table structure for table `tpo_connect`
--

CREATE TABLE `tpo_connect` (
  `name` varchar(220) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `email` varchar(220) NOT NULL,
  `addr` varchar(220) NOT NULL,
  `office_no` varchar(220) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tpo_connect`
--

INSERT INTO `tpo_connect` (`name`, `phone`, `email`, `addr`, `office_no`) VALUES
('Prof. Aparna Bhonde', '8899774455', 'bhonde.aparna@gmail.com', 'DMCE, Airoli', '252525');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`cid`);

--
-- Indexes for table `datapoints`
--
ALTER TABLE `datapoints`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `slider`
--
ALTER TABLE `slider`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`pid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `cid` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `datapoints`
--
ALTER TABLE `datapoints`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `slider`
--
ALTER TABLE `slider`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `pid` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
