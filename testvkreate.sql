-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 05, 2020 at 08:59 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `testvkreate`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `Admin_ID` varchar(32) NOT NULL,
  `Name` varchar(32) NOT NULL,
  `Password` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `email` varchar(50) NOT NULL,
  `Plant_ID` int(5) NOT NULL,
  `Qty` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`email`, `Plant_ID`, `Qty`) VALUES
('rahulbro@yopmail.com', 5, 1),
('rahulbro@yopmail.com', 3, 1),
('rahulbro@yopmail.com', 5, 1),
('rahulbro@yopmail.com', 5, 1),
('rahulbro@yopmail.com', 5, 1),
('rahulbro@yopmail.com', 5, 1),
('rahulbro@yopmail.com', 5, 1),
('rahulbro@yopmail.com', 5, 1),
('rahulbro@yopmail.com', 5, 1),
('rahulbro@yopmail.com', 5, 1),
('rahulbro@yopmail.com', 5, 1),
('rahulbro@yopmail.com', 5, 1),
('rahulbro@yopmail.com', 5, 1);

-- --------------------------------------------------------

--
-- Table structure for table `newpickup`
--

CREATE TABLE `newpickup` (
  `Name` varchar(30) NOT NULL,
  `Mobile_No` varchar(10) NOT NULL,
  `HNo` varchar(5) NOT NULL,
  `Street` varchar(15) NOT NULL,
  `Locality` varchar(20) NOT NULL,
  `Exchange` varchar(10) NOT NULL,
  `Date` date NOT NULL,
  `Slot` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `newpickup`
--

INSERT INTO `newpickup` (`Name`, `Mobile_No`, `HNo`, `Street`, `Locality`, `Exchange`, `Date`, `Slot`) VALUES
('rahul', '1234', '66', '', '', '', '0000-00-00', ''),
('rahul12', '1234233', '66', 'shakti', 'nagar', '', '0000-00-00', '10 to 11'),
('rahul12', '1234233', '66', 'shakti', 'nagar', '', '0000-00-00', '10 to 11'),
('rahul12', '1234233', '66', 'shakti', 'nagar', '', '0000-00-00', '10 to 11'),
('rahul12', '1234233', '66', 'shakti', 'nagar', 'plant', '0000-00-00', '10 to 11'),
('rahul12', '1234233', '66', 'shakti', 'nagar', 'plant', '1970-01-01', '10 to 11'),
('rahul12', '1234233', '66', 'shakti', 'nagar', 'plant', '1970-01-01', '10 to 11'),
('rahul12', '1234233', '66', 'shakti', 'nagar', 'plant', '2020-04-25', '10 to 11'),
('rahul12', '1234233', '66', 'shakti', 'nagar', 'plant', '2020-04-25', '10 to 11'),
('', '4555455', 'rouna', '', '', '', '1970-01-01', ''),
('rounak', '131213', '12', 'churu', 'tara', 'plant', '2020-04-25', '10 to 11'),
('rounak', '131213', '12', 'churu', 'tara', 'plant', '2020-04-25', '10 to 11'),
('rounak', '131213', '12', 'churu', 'tara', 'plant', '2020-04-25', '10 to 11'),
('rounak', '131213', '12', 'churu', 'tara', 'plant', '2020-04-25', '10 to 11'),
('paul', '239893', 'kjw', 'bjn', 'njn', 'money', '2020-04-26', '11 to 12'),
('anshul', '122312131', '44', 'sikar', 'sikar', 'plant', '2020-04-26', '11 to 12'),
('prafful', '1231342', '22', 'jhotwara', 'jaipur', 'plant', '2020-04-26', '12 to 13'),
('tyagi', '232313', '3', 'agra', 'agra', 'plant', '2020-04-28', '12 to 13'),
('Mr. Paul', '1231234567', '55', 'ajmer', 'ajmer', 'plant', '2020-05-14', '13 to 14'),
('suresh', '1231231231', '11', 'jaipur', 'amity', 'money', '2020-05-17', '12 to 13'),
('abcx', '1616161616', '77', 'yu', 'yu', 'plant', '2020-05-15', '10 to 11'),
('sanju', '1818181818', '11', 'jaipur', 'bahar nikal', 'money', '2020-05-16', '16 to 17'),
('ramram', '1919191919', '112', 'jaipur', 'ajmer', 'money', '2020-05-15', '11 to 12'),
('tom', '1717171705', '', '', '', '', '1970-01-01', ''),
('tommy', '1716151413', '55', 'tom', 'derry', 'money', '2020-05-15', '11 to 12');

-- --------------------------------------------------------

--
-- Table structure for table `plant`
--

CREATE TABLE `plant` (
  `Plant_ID` int(5) NOT NULL,
  `Name` varchar(35) NOT NULL,
  `Location` varchar(15) NOT NULL,
  `Purchase_Price` int(5) NOT NULL,
  `Sell_Price` int(5) NOT NULL,
  `image` varchar(200) NOT NULL,
  `status` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `plant`
--

INSERT INTO `plant` (`Plant_ID`, `Name`, `Location`, `Purchase_Price`, `Sell_Price`, `image`, `status`) VALUES
(3, 'tulsi', 'indoor', 100, 150, 'admin.png', 1),
(5, 'neem', 'outdoor', 20, 70, 'pexels-photo-1002703.jpeg', 1);

-- --------------------------------------------------------

--
-- Table structure for table `plant_order`
--

CREATE TABLE `plant_order` (
  `Order_ID` int(5) NOT NULL,
  `email` varchar(50) NOT NULL,
  `Total` int(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `plant_order`
--

INSERT INTO `plant_order` (`Order_ID`, `email`, `Total`) VALUES
(2, 'rahulbro@yopmail.com', 89),
(3, 'rahulbro@yopmail.com', 246);

-- --------------------------------------------------------

--
-- Table structure for table `purchase`
--

CREATE TABLE `purchase` (
  `User_ID` varchar(32) NOT NULL,
  `Scrap_ID` varchar(32) NOT NULL,
  `Quantity` int(5) NOT NULL,
  `Quality` varchar(6) NOT NULL,
  `Price` int(5) NOT NULL,
  `Date` date NOT NULL,
  `Plant_Money` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `scrap`
--

CREATE TABLE `scrap` (
  `Scrap_ID` int(5) NOT NULL,
  `Name` varchar(32) NOT NULL,
  `PR_GOOD` float NOT NULL,
  `PR_MED` float NOT NULL,
  `PR_BAD` float NOT NULL,
  `Purchase_rate` float NOT NULL,
  `Sell_rate` float NOT NULL,
  `Unit` varchar(15) NOT NULL,
  `image` varchar(200) NOT NULL,
  `status` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `scrap`
--

INSERT INTO `scrap` (`Scrap_ID`, `Name`, `PR_GOOD`, `PR_MED`, `PR_BAD`, `Purchase_rate`, `Sell_rate`, `Unit`, `image`, `status`) VALUES
(5, 'Newspaper', 1, 0.8, 0.5, 12, 20, 'per kg', '0 WHh3CpEY7l9a67kB.jpg', 1),
(6, 'Magazines', 1, 0.8, 0.5, 14, 22, 'per kg', 'magazine-cover-flyer-template-2526f94e685554a3b90aabf07d713f27_screen.jpg', 1);

-- --------------------------------------------------------

--
-- Table structure for table `sell`
--

CREATE TABLE `sell` (
  `User_ID` varchar(32) NOT NULL,
  `Scrap_ID` varchar(32) NOT NULL,
  `Quantity` int(5) NOT NULL,
  `Price` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `sell_plant`
--

CREATE TABLE `sell_plant` (
  `Order_ID` int(5) NOT NULL,
  `email` varchar(50) NOT NULL,
  `Plant_ID` int(5) NOT NULL,
  `Qty` int(3) NOT NULL,
  `Amount` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sell_plant`
--

INSERT INTO `sell_plant` (`Order_ID`, `email`, `Plant_ID`, `Qty`, `Amount`) VALUES
(2, 'rahulbro@yopmail.com', 3, 2, 300),
(2, 'rahulbro@yopmail.com', 5, 1, 70),
(2, 'rahulbro@yopmail.com', 3, 0, 0),
(2, 'rahulbro@yopmail.com', 5, 1, 70);

-- --------------------------------------------------------

--
-- Table structure for table `user_table`
--

CREATE TABLE `user_table` (
  `id` int(11) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(50) NOT NULL,
  `verifyemail` varchar(50) DEFAULT NULL,
  `remember_tocken` varchar(100) DEFAULT NULL,
  `password` int(30) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 2
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_table`
--

INSERT INTO `user_table` (`id`, `first_name`, `last_name`, `email`, `verifyemail`, `remember_tocken`, `password`, `status`) VALUES
(1, 'rahul', 'ahuja', 'ramram@yopmail.com', NULL, NULL, 11111111, 1),
(2, 'singh', 'sabh', 'singhsabh1@yopmail.com', NULL, NULL, 11111111, 1),
(3, 'Rounak', 'Sarda', 'ramram11@yopmail.com', NULL, NULL, 11111111, 1),
(4, 'rahul', 'singh', 'hellorah@yopmail.com', NULL, '62615226374cea32133f1531743e2088', 12341234, 2),
(5, 'sudarshan', 'chod', 'sudu@yopmail.com', NULL, NULL, 12341234, 1),
(6, 'rahul ', 'ahuja ', 'rahulbro@yopmail.com', NULL, NULL, 12341234, 1);

-- --------------------------------------------------------

--
-- Table structure for table `user_type`
--

CREATE TABLE `user_type` (
  `id` int(11) NOT NULL,
  `type` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_type`
--

INSERT INTO `user_type` (`id`, `type`) VALUES
(1, 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`Admin_ID`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD KEY `plantid` (`Plant_ID`);

--
-- Indexes for table `plant`
--
ALTER TABLE `plant`
  ADD PRIMARY KEY (`Plant_ID`);

--
-- Indexes for table `plant_order`
--
ALTER TABLE `plant_order`
  ADD PRIMARY KEY (`Order_ID`);

--
-- Indexes for table `purchase`
--
ALTER TABLE `purchase`
  ADD KEY `RelScrappur` (`Scrap_ID`),
  ADD KEY `RelUserpur` (`User_ID`);

--
-- Indexes for table `scrap`
--
ALTER TABLE `scrap`
  ADD PRIMARY KEY (`Scrap_ID`);

--
-- Indexes for table `sell`
--
ALTER TABLE `sell`
  ADD KEY `RelUsersell` (`User_ID`),
  ADD KEY `RelScrapsell` (`Scrap_ID`);

--
-- Indexes for table `sell_plant`
--
ALTER TABLE `sell_plant`
  ADD KEY `relorder` (`Order_ID`),
  ADD KEY `relplant` (`Plant_ID`);

--
-- Indexes for table `user_table`
--
ALTER TABLE `user_table`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `plant`
--
ALTER TABLE `plant`
  MODIFY `Plant_ID` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `plant_order`
--
ALTER TABLE `plant_order`
  MODIFY `Order_ID` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `scrap`
--
ALTER TABLE `scrap`
  MODIFY `Scrap_ID` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `user_table`
--
ALTER TABLE `user_table`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `cart`
--
ALTER TABLE `cart`
  ADD CONSTRAINT `plantid` FOREIGN KEY (`Plant_ID`) REFERENCES `plant` (`Plant_ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `sell_plant`
--
ALTER TABLE `sell_plant`
  ADD CONSTRAINT `relorder` FOREIGN KEY (`Order_ID`) REFERENCES `plant_order` (`Order_ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `relplant` FOREIGN KEY (`Plant_ID`) REFERENCES `plant` (`Plant_ID`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
