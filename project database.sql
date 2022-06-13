-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jun 13, 2022 at 05:35 PM
-- Server version: 10.1.19-MariaDB
-- PHP Version: 7.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `project`
--

-- --------------------------------------------------------

--
-- Table structure for table `bill`
--

CREATE TABLE `bill` (
  `Billid` int(11) NOT NULL,
  `Amount` int(11) NOT NULL,
  `duedate` date NOT NULL,
  `Cust_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bill`
--

INSERT INTO `bill` (`Billid`, `Amount`, `duedate`, `Cust_ID`) VALUES
(1, 10000, '2021-03-18', 1),
(2, 12000, '2020-04-18', 2),
(3, 14000, '2019-07-20', 3),
(4, 16000, '2018-07-20', 4),
(5, 18000, '2018-03-12', 5),
(6, 20000, '2020-05-20', 6),
(7, 220000, '2021-08-12', 7),
(8, 230000, '2019-09-11', 8),
(9, 240000, '2019-00-12', 9),
(10, 250000, '2020-10-12', 10),
(11, 260000, '2021-12-12', 11),
(12, 280000, '2022-02-12', 12),
(13, 270000, '2019-02-12', 13),
(14, 290000, '2018-04-10', 14),
(15, 300000, '2018-10-10', 15),
(16, 310000, '2019-11-10', 16),
(17, 320000, '2020-03-10', 17),
(18, 330000, '2020-06-30', 18),
(19, 340000, '2021-06-30', 19),
(20, 350000, '2022-09-30', 20);

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `Custid` int(11) NOT NULL,
  `Name` text NOT NULL,
  `Phone` int(11) NOT NULL,
  `city` text NOT NULL,
  `Address` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`Custid`, `Name`, `Phone`, `city`, `Address`) VALUES
(1, 'Saad', 13647, 'RWP', '54 Street'),
(2, 'Ali', 12345, 'LHR', '16 street'),
(3, 'Umer', 45798, 'karachi', '20 street'),
(4, 'Umer', 41889, 'Faisalabad', '02 street'),
(5, 'Hassan', 90865, 'Hyderabad', '05 street'),
(6, 'Shezi', 56890, 'RWP', '10 street'),
(7, 'Shoaib', 7689, 'Multan', '03 street'),
(8, 'Ahmed', 34789, 'LHR', '08 street'),
(9, 'Ali', 67890, 'karachi', '12 street'),
(10, 'Danish', 1256, 'jhelum', '15 street'),
(11, 'Farhan', 87639, 'RWP', '16 street'),
(12, 'Afnan', 2345, 'RWP', '20 street'),
(13, 'Ahad', 2985, 'LHR', '21 street'),
(14, 'Ahmed', 12385, 'karachi', '02 street'),
(15, 'Ali', 12940, 'Hyderabad', '13 street'),
(16, 'Saad', 56940, 'Islamabad', '09 street'),
(17, 'Hassan', 56940, 'RWP', '07 street'),
(18, 'Ali', 45098, 'LHR', '07 street'),
(19, 'Ahmed', 25098, 'jhelum', '18 street'),
(20, 'Shoaib', 25987, 'RWP', '18 street');

-- --------------------------------------------------------

--
-- Table structure for table `hotel`
--

CREATE TABLE `hotel` (
  `Hotelid` int(11) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `Location` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hotel`
--

INSERT INTO `hotel` (`Hotelid`, `Name`, `Location`) VALUES
(1, 'Royalton', 'RWP'),
(2, 'SeaView', 'karachi'),
(3, 'ROse Palace', 'LHR'),
(4, 'Pearl continental', 'RWP'),
(5, 'Indus', 'Hyderabad'),
(6, 'pearl continental', 'karachi'),
(7, 'Divine', 'RWP'),
(8, 'pearl continental', 'LHR'),
(9, 'Margala', 'Islamabad'),
(10, 'Nishat', 'LHR'),
(11, 'Lawrence', 'Faisalabad'),
(12, 'pearl continental', 'peshawar'),
(13, 'Mid city', 'Multan'),
(14, 'Bloom star', 'Quetta'),
(15, 'Fairy land', 'Abbottabad'),
(16, 'Shalimar', 'RWP'),
(17, 'Galaxy', 'Islamabad'),
(18, 'Potohar', 'RWP'),
(19, 'Reliance ', 'Quetta'),
(20, 'Express', 'Multan');

-- --------------------------------------------------------

--
-- Table structure for table `reservation`
--

CREATE TABLE `reservation` (
  `resid` int(11) NOT NULL,
  `startdate` date NOT NULL,
  `enddate` date NOT NULL,
  `period` int(11) NOT NULL,
  `Custid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `reservation`
--

INSERT INTO `reservation` (`resid`, `startdate`, `enddate`, `period`, `Custid`) VALUES
(1, '2021-03-18', '2021-05-18', 2, 1),
(2, '2020-01-14', '2020-06-14', 5, 2),
(3, '2018-03-14', '2018-07-14', 4, 3),
(4, '2019-03-14', '2019-07-14', 4, 4),
(5, '2018-02-17', '2018-05-17', 3, 5),
(6, '2018-01-30', '2018-05-30', 4, 6),
(7, '2022-01-30', '2022-05-30', 4, 7),
(8, '2021-04-30', '2021-05-30', 1, 8),
(9, '2021-10-30', '2021-12-30', 1, 9),
(10, '2022-08-01', '2022-12-01', 4, 10),
(11, '2022-04-01', '2022-10-01', 6, 11),
(12, '2019-02-01', '2019-04-01', 2, 12),
(13, '2020-02-10', '2020-05-10', 3, 13),
(14, '2022-03-12', '2022-05-12', 2, 14),
(15, '2021-03-12', '2021-08-12', 5, 15),
(16, '2020-01-12', '2020-07-12', 6, 16),
(17, '2022-01-16', '2022-02-16', 1, 17),
(18, '2018-05-16', '2018-06-16', 1, 18),
(19, '2018-02-20', '2018-06-20', 4, 19),
(20, '0000-00-00', '2020-06-30', 4, 20);

-- --------------------------------------------------------

--
-- Table structure for table `room`
--

CREATE TABLE `room` (
  `Roomno` int(11) NOT NULL,
  `Hotelid` int(11) NOT NULL,
  `Custid` int(11) NOT NULL,
  `roomtype` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `room`
--

INSERT INTO `room` (`Roomno`, `Hotelid`, `Custid`, `roomtype`) VALUES
(101, 1, 1, 'single'),
(102, 2, 2, 'double'),
(103, 3, 3, 'triple'),
(104, 4, 4, 'quad'),
(105, 5, 5, 'twin'),
(106, 6, 6, 'king'),
(107, 7, 7, 'double'),
(108, 8, 8, 'quad'),
(109, 9, 9, 'king'),
(110, 10, 10, 'single'),
(111, 11, 11, 'twin'),
(112, 12, 12, 'double'),
(113, 13, 13, 'single'),
(114, 14, 14, 'quad'),
(115, 15, 15, 'triple'),
(116, 16, 16, 'twin'),
(117, 17, 17, 'triple'),
(118, 18, 18, 'single'),
(119, 19, 19, 'quad'),
(120, 20, 20, 'quad');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bill`
--
ALTER TABLE `bill`
  ADD PRIMARY KEY (`Billid`),
  ADD KEY `Cust_ID` (`Cust_ID`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`Custid`);

--
-- Indexes for table `hotel`
--
ALTER TABLE `hotel`
  ADD PRIMARY KEY (`Hotelid`);

--
-- Indexes for table `reservation`
--
ALTER TABLE `reservation`
  ADD PRIMARY KEY (`resid`),
  ADD KEY `Custid` (`Custid`);

--
-- Indexes for table `room`
--
ALTER TABLE `room`
  ADD PRIMARY KEY (`Roomno`),
  ADD KEY `Custid` (`Custid`),
  ADD KEY `Hotelid` (`Hotelid`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `bill`
--
ALTER TABLE `bill`
  ADD CONSTRAINT `bill_ibfk_1` FOREIGN KEY (`Cust_ID`) REFERENCES `customer` (`Custid`);

--
-- Constraints for table `reservation`
--
ALTER TABLE `reservation`
  ADD CONSTRAINT `reservation_ibfk_1` FOREIGN KEY (`Custid`) REFERENCES `customer` (`Custid`);

--
-- Constraints for table `room`
--
ALTER TABLE `room`
  ADD CONSTRAINT `room_ibfk_1` FOREIGN KEY (`Custid`) REFERENCES `customer` (`Custid`),
  ADD CONSTRAINT `room_ibfk_2` FOREIGN KEY (`Hotelid`) REFERENCES `hotel` (`Hotelid`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
