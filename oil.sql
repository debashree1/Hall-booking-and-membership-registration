-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 13, 2018 at 05:58 AM
-- Server version: 10.1.29-MariaDB
-- PHP Version: 7.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `oil`
--

-- --------------------------------------------------------

--
-- Table structure for table `about`
--

CREATE TABLE `about` (
  `id` int(255) NOT NULL,
  `content` varchar(20000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `about`
--

INSERT INTO `about` (`id`, `content`) VALUES
(1, 'IOCL pool is a private membership pool with members from the IOCL family. Our membership is at full capacity but you can join \r\nour waiting list through this website during the swim season (mid-May-mid September).The pool offers features like \r\nState-of-the-art cleanwater pool . Gentle on the eyes, hair, skin and swim suits.Junior Olympic-sized competition pool.75feet x 45feet\r\nand 25 yards long.Air-conditioned locker rooms with private changing areas,Lifeguards,Diving board and many more\r\n	We provide a great place for you and your family to cool off the summer heat.You can register yourself along with your \r\nfamily members through our registration portal. \r\nThe IOCLComunity Hall Located, inside the IOCL campus, in an area of outstanding magnificiance.An ideal venue for wedding receptions, meetings, fetes, dances and \r\nparties for all ages. It has a stage which makes it ideal for demonstrations as well as theatrical and musical productions.We hire the hall out on a regular basis to \r\nmany local clubs and societies such as the Gardening Club, WI and the Toddlers Group.There is also a committee room that can seat up to 20 people which is ideal for \r\nsmall meetings and is much cheaper than the main hall.You can register for the IOCL Community hall through the registration portal and take advantage of our resources \r\nthat are sure to tickle your fancy.\r\n\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(255) NOT NULL,
  `email` varchar(2000) NOT NULL,
  `password` varchar(2000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `email`, `password`) VALUES
(1, 'iocl@gmail.com', 'iocl123');

-- --------------------------------------------------------

--
-- Table structure for table `comm`
--

CREATE TABLE `comm` (
  `id` int(255) NOT NULL,
  `emp_no` int(255) NOT NULL,
  `emp_name` varchar(20000) NOT NULL,
  `des` varchar(2000) DEFAULT NULL,
  `dept` varchar(2000) DEFAULT NULL,
  `grade` varchar(255) DEFAULT NULL,
  `reg_no` int(255) DEFAULT NULL,
  `reg_date` date DEFAULT NULL,
  `facility` varchar(200) NOT NULL,
  `purpose` varchar(255) NOT NULL,
  `from_date` date NOT NULL,
  `to_date` date NOT NULL,
  `days` int(255) DEFAULT NULL,
  `sec_deposit` int(255) DEFAULT NULL,
  `book_fees` int(255) DEFAULT NULL,
  `quart_no` int(255) DEFAULT NULL,
  `mob1` int(255) NOT NULL,
  `mob2` int(255) DEFAULT NULL,
  `email1` varchar(2000) NOT NULL,
  `email2` varchar(2000) DEFAULT NULL,
  `verification` varchar(2000) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `comm`
--

INSERT INTO `comm` (`id`, `emp_no`, `emp_name`, `des`, `dept`, `grade`, `reg_no`, `reg_date`, `facility`, `purpose`, `from_date`, `to_date`, `days`, `sec_deposit`, `book_fees`, `quart_no`, `mob1`, `mob2`, `email1`, `email2`, `verification`, `password`) VALUES
(2, 111, 'Rima', 'Officer', 'Geology', 'c', 111, '2018-08-01', 'both', 'conference', '2018-08-24', '2018-08-25', 2, 2000, 3000, 12, 3456789, 3465688, 'rima@gmail.com', 'raju1@gmail.com', 'Confirmed', '123'),
(4, 888, 'Queen', 'Officer', 'Civil', 'f', 888, '2018-08-01', 'both', 'meeting', '2018-08-25', '2018-08-26', 2, 200, 500, 234, 2147483647, 6575866, 'queen@gmail.com', 'tintin@gmail.com', 'Pending', '123'),
(5, 111, 'Rima', 'Officer', 'Geology', 'c', 111, '2018-08-01', 'MA', 'training', '2018-08-17', '2018-08-18', 2, 3000, 4000, 12, 2147483647, 3478239, 'rima@gmail.com', 'tintin@gmail.com', 'Confirmed', '123');

-- --------------------------------------------------------

--
-- Table structure for table `comreg`
--

CREATE TABLE `comreg` (
  `id` int(255) NOT NULL,
  `emp_no` int(255) NOT NULL,
  `emp_name` varchar(2000) NOT NULL,
  `des` varchar(2000) DEFAULT NULL,
  `dept` varchar(2000) DEFAULT NULL,
  `quart_no` int(255) DEFAULT NULL,
  `email1` varchar(2000) NOT NULL,
  `password1` varchar(200) NOT NULL,
  `reg_no` int(11) NOT NULL,
  `reg_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `comreg`
--

INSERT INTO `comreg` (`id`, `emp_no`, `emp_name`, `des`, `dept`, `quart_no`, `email1`, `password1`, `reg_no`, `reg_date`) VALUES
(1, 111, 'Rima', 'Officer', 'Geology', 12, 'rima@gmail.com', '123', 111, '2018-08-01'),
(3, 888, 'Queen', 'Officer', 'Civil', 234, 'queen@gmail.com', '123', 888, '2018-08-01'),
(5, 567, 'Priyanka', 'Officer', 'CSE', 56, 'priya@gmail.com', '123', 567, '2018-08-01');

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `id` int(255) NOT NULL,
  `emp_no` int(255) NOT NULL,
  `emp_name` varchar(2000) NOT NULL,
  `reg_no` int(255) NOT NULL,
  `reg_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`id`, `emp_no`, `emp_name`, `reg_no`, `reg_date`) VALUES
(6, 111, 'Rima', 111, '2018-08-01'),
(8, 888, 'Queen', 888, '2018-08-01'),
(10, 11, 'Julia', 11, '2018-08-01'),
(12, 567, 'Priyanka', 567, '2018-08-01'),
(19, 777, 'Farida', 777, '2018-08-01'),
(20, 333, 'Menka', 333, '2018-08-01');

-- --------------------------------------------------------

--
-- Table structure for table `swimm`
--

CREATE TABLE `swimm` (
  `id` int(255) NOT NULL,
  `emp_no` int(255) NOT NULL,
  `emp_name` varchar(2000) NOT NULL,
  `reg_no` int(255) NOT NULL,
  `email1` varchar(2000) NOT NULL,
  `password1` varchar(2000) NOT NULL,
  `membership` varchar(2000) NOT NULL DEFAULT 'Pending'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `swimm`
--

INSERT INTO `swimm` (`id`, `emp_no`, `emp_name`, `reg_no`, `email1`, `password1`, `membership`) VALUES
(15, 777, 'Farida', 777, 'farida@gmail.com', '123', 'Pending'),
(16, 111, 'Rima', 111, 'rima@gmail.com', '123', 'Confirmed');

-- --------------------------------------------------------

--
-- Table structure for table `swim_detail`
--

CREATE TABLE `swim_detail` (
  `id` int(255) NOT NULL,
  `emp_no` int(255) NOT NULL,
  `member_name` varchar(2000) NOT NULL,
  `dob` date NOT NULL,
  `relation` varchar(2000) NOT NULL,
  `level` varchar(2000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `swim_detail`
--

INSERT INTO `swim_detail` (`id`, `emp_no`, `member_name`, `dob`, `relation`, `level`) VALUES
(20, 777, 'Sahita', '2018-08-15', 'Mother', 'Intermediate'),
(21, 111, 'Rekha', '2018-08-02', 'Mother', 'Intermediate'),
(22, 111, 'Bina', '2018-08-21', 'Sister', 'Advanced'),
(23, 111, 'Jahnabi', '2018-08-15', 'Sister', 'Intermediate'),
(26, 333, 'Writika', '2018-08-15', 'Sister', 'Advanced');

-- --------------------------------------------------------

--
-- Table structure for table `swim_header`
--

CREATE TABLE `swim_header` (
  `id` int(255) NOT NULL,
  `emp_no` int(255) NOT NULL,
  `emp_name` varchar(2000) NOT NULL,
  `reg_no` int(255) NOT NULL,
  `reg_date` date NOT NULL,
  `des` varchar(2000) NOT NULL,
  `dept` varchar(2000) NOT NULL,
  `grade` varchar(255) NOT NULL,
  `section` int(255) NOT NULL,
  `contact` int(255) NOT NULL,
  `quart_no` int(255) NOT NULL,
  `email1` varchar(2000) NOT NULL,
  `password1` varchar(2000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `swim_header`
--

INSERT INTO `swim_header` (`id`, `emp_no`, `emp_name`, `reg_no`, `reg_date`, `des`, `dept`, `grade`, `section`, `contact`, `quart_no`, `email1`, `password1`) VALUES
(13, 777, 'Farida', 777, '2018-08-01', 'Officr', 'Geology', 'b', 34, 32454657, 4, 'farida@gmail.com', '123'),
(14, 111, 'Rima', 111, '2018-08-01', 'Maintenance Officr', 'Civil', 'b', 123, 123456789, 56, 'rima@gmail.com', '123'),
(17, 333, 'Menka', 333, '2018-08-01', 'Technician', 'Mechanical', 'd', 67, 456577, 6, 'menka@yahoo.com', '123');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `about`
--
ALTER TABLE `about`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comm`
--
ALTER TABLE `comm`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comreg`
--
ALTER TABLE `comreg`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `swimm`
--
ALTER TABLE `swimm`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `swim_detail`
--
ALTER TABLE `swim_detail`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `swim_header`
--
ALTER TABLE `swim_header`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `about`
--
ALTER TABLE `about`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `comm`
--
ALTER TABLE `comm`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `comreg`
--
ALTER TABLE `comreg`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `swimm`
--
ALTER TABLE `swimm`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `swim_detail`
--
ALTER TABLE `swim_detail`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `swim_header`
--
ALTER TABLE `swim_header`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
