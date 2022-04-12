-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:8809
-- Generation Time: Dec 14, 2021 at 06:04 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `php`
--

-- --------------------------------------------------------

--
-- Table structure for table `appointment`
--

CREATE TABLE `appointment` (
  `id` int(11) NOT NULL,
  `date` date NOT NULL,
  `time` text NOT NULL,
  `username` varchar(100) NOT NULL,
  `doctorname` text NOT NULL,
  `disease` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `appointment`
--

INSERT INTO `appointment` (`id`, `date`, `time`, `username`, `doctorname`, `disease`) VALUES
(1, '2019-04-24', '11-1', 'rishi', 'rishi', 'mild'),
(2, '2019-04-26', '6-8', 'rishi', 'rishi', 'emergency'),
(3, '2019-04-26', '8-10', 'rishikumar', 'vikkram', 'serious'),
(4, '2019-05-11', '6-8', 'rishikumar', 'vikkram', 'emergency'),
(5, '2019-05-11', '9-11', 'susa', 'rishi', 'serious'),
(6, '2019-08-24', '6-8', 'sridevi', 'sridevi', 'serious'),
(7, '2019-11-21', '8-10', 'neetesh', 'rishi', 'emergency'),
(8, '2020-06-30', '9-11', 'rishi', 'rishi', 'mild'),
(14, '2021-12-14', '11-1', 'sridevi', 'rishi', 'serious'),
(16, '2021-12-14', '11-1', 'parul', 'susa', 'serious'),
(17, '2021-12-14', '8-10', 'tushar', 'Nina', 'emergency'),
(18, '2021-12-14', '11-1', 'tushar', 'rishi', 'serious');

-- --------------------------------------------------------

--
-- Table structure for table `doctors`
--

CREATE TABLE `doctors` (
  `name` text NOT NULL,
  `dob` date NOT NULL,
  `mail` text NOT NULL,
  `docid` int(11) NOT NULL,
  `address` text NOT NULL,
  `phno` varchar(15) NOT NULL,
  `qualification` text NOT NULL,
  `department` text NOT NULL,
  `uname` varchar(32) NOT NULL,
  `pass` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `doctors`
--

INSERT INTO `doctors` (`name`, `dob`, `mail`, `docid`, `address`, `phno`, `qualification`, `department`, `uname`, `pass`) VALUES
('rishi kumar', '2019-04-10', 'rishikumar@gmail.com', 0, 'mambalam', '2147483647', 'mbbs', 'heart', 'rishikumar', 'rishikumar'),
('rishi', '2019-04-02', 'rishi@gmail.com', 1, 'v nagar', '2147483647', 'mbbs', 'neurology', 'rishi', 'rishi'),
('susa', '2019-05-10', 'susa@gmail.com', 3, 'd nagar', '9847562585', 'mbbs', 'medical', 'susa', 'susa'),
('vikkram', '2019-04-05', 'vikkram@gmail.com', 7, 'mambalam', '2147483647', 'mbbs', 'ortho', 'vikkram', 'vikkram'),
('sridevi', '2019-08-16', 'sridevi@gmail.com', 14, 'chennai', '9962628272', 'mbbs', 'mind', 'sridevi', 'sridevi'),
('Nina', '1985-06-14', 'ninaaaa@gmail.com', 44, 'Noida', '9811620522', 'MBBS', 'Lung', 'nina', 'nina123'),
('Monalisa', '1994-06-17', 'monalisa@gmail.com', 145, 'Noida', '9899529966', 'MBBS', 'Lung', 'mona', 'mona');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `name` text NOT NULL,
  `feedback` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`name`, `feedback`) VALUES
('rishi', 'good'),
('jaishree', 'awesome'),
('Sridevi', 'Awesome webpage'),
('Mahendra Sir', '20 marks for you');

-- --------------------------------------------------------

--
-- Table structure for table `patient`
--

CREATE TABLE `patient` (
  `name` text NOT NULL,
  `dob` date NOT NULL,
  `mail` text NOT NULL,
  `uname` varchar(32) NOT NULL,
  `password` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `patient`
--

INSERT INTO `patient` (`name`, `dob`, `mail`, `uname`, `password`) VALUES
('Tushar Singh', '2004-11-28', 'tusharji@gmail.com', 'tushar', 'tushar'),
('Parul', '2005-02-12', 'parul@gmail.com', 'parul', 'parul'),
('rishi', '2019-04-03', 'rishi@gmail.com', 'rishi', 'rishi'),
('rishi kumar', '2019-04-17', 'rishikumar@gmail.com', 'rishikumar', 'rishikumar'),
('susa', '2019-05-22', 'susa@gmail.com', 'susa', 'susa'),
('sridevi', '2019-08-15', 'sridevi@gmail.com', 'sridevi', 'sridevi'),
('Neetesh', '2019-11-18', 'neetesh@gmail.com', 'neetesh', '1234'),
('Varun', '2021-12-03', 'varun@gmail.com', 'varun', 'varun');

-- --------------------------------------------------------

--
-- Table structure for table `prescription`
--

CREATE TABLE `prescription` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `filename` varchar(1000) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `prescription`
--

INSERT INTO `prescription` (`id`, `name`, `filename`, `date`) VALUES
(7, 'sridevi', 'MANEUVER-19.pdf', '2021-12-14');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `appointment`
--
ALTER TABLE `appointment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `doctors`
--
ALTER TABLE `doctors`
  ADD PRIMARY KEY (`docid`);

--
-- Indexes for table `patient`
--
ALTER TABLE `patient`
  ADD PRIMARY KEY (`dob`);

--
-- Indexes for table `prescription`
--
ALTER TABLE `prescription`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `appointment`
--
ALTER TABLE `appointment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `prescription`
--
ALTER TABLE `prescription`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
