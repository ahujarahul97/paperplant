-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 13, 2020 at 02:26 PM
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
-- Table structure for table `address`
--

CREATE TABLE `address` (
  `User_ID` varchar(32) NOT NULL,
  `H.NO.` varchar(10) NOT NULL,
  `Street` varchar(20) NOT NULL,
  `Locality` varchar(20) NOT NULL,
  `Pin Code` int(6) NOT NULL,
  `City` varchar(15) NOT NULL,
  `State` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
('Mr. Paul', '1231234567', '55', 'ajmer', 'ajmer', 'plant', '2020-05-14', '13 to 14');

-- --------------------------------------------------------

--
-- Table structure for table `plans`
--

CREATE TABLE `plans` (
  `id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `cost` int(30) NOT NULL,
  `description` text NOT NULL,
  `status` int(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `plans`
--

INSERT INTO `plans` (`id`, `name`, `cost`, `description`, `status`) VALUES
(1, 'scrap 1', 20, 'Google SMTP Server – How to Send Emails for Free. Outgoing Mail (SMTP) Server: smtp.gmail.com. Use Authentication: Yes. Use Secure Connection: Yes (TLS or SSL depending on your mail client/website SMTP plugin) Username: your Gmail account (e.g. user@gmail.com) Password: your Gmail password. Port: 465 (SSL required) or ...', 1),
(2, 'scarp 2', 30, 'Apollo 11 was the spaceflight that first landed humans on the Moon. Commander Neil Armstrong and lunar module pilot Buzz Aldrin formed the American crew that landed the Apollo Lunar Module Eagle on July 20, 1969', 1);

-- --------------------------------------------------------

--
-- Table structure for table `plant`
--

CREATE TABLE `plant` (
  `Plant_ID` varchar(10) NOT NULL,
  `Name` varchar(35) NOT NULL,
  `Season` varchar(10) NOT NULL,
  `Ideal Area` varchar(15) NOT NULL,
  `Purchase_Price` int(5) NOT NULL,
  `Sell_Price` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `plant`
--

INSERT INTO `plant` (`Plant_ID`, `Name`, `Season`, `Ideal Area`, `Purchase_Price`, `Sell_Price`) VALUES
('P101', 'Snake Plant', 'All', 'Indoor', 75, 200),
('P102', 'Peace Lily', 'All', 'Indoor', 85, 210),
('P103', 'Aloe Vera', 'All', 'Indoor', 75, 200),
('P104', 'Lucky bamboo', 'All', 'Indoor', 75, 200),
('P105', 'Ferns(Pteridophytes)', 'All', 'Indoor', 75, 200),
('P106', 'Chinese Evergreen', 'All', 'Indoor', 75, 200),
('P107', 'Grape Ivy', 'All', 'Indoor', 75, 200),
('P108', 'Flamingo Flower', 'All', 'Indoor', 75, 200),
('P109', 'Areca Palm', 'All', 'Indoor', 80, 220),
('P110', 'Money Plant', 'All', 'Indoor', 80, 221),
('P111', 'Warneck Dracaena', 'All', 'Indoor', 80, 222),
('P112', 'Heart leaf philodendron', 'All', 'Indoor', 80, 223),
('P113', 'Azalea(simsii)', 'All', 'Indoor', 80, 224),
('P114', 'Green Spider Plant', 'All', 'Indoor', 80, 225),
('P115', 'Gerbera Daisy', 'All', 'Indoor', 80, 226),
('P116', 'Weeping fif', 'All', 'Indoor', 80, 227),
('P117', 'Croton', 'All', 'Indoor', 80, 228),
('P118', 'Indian Basil', 'All', 'Indoor', 80, 229),
('P119', 'Lavender', 'All', 'Indoor', 80, 230),
('P120', 'Rubber Plant', 'All', 'Indoor', 190, 350),
('P121', 'Pothos', 'All', 'Indoor', 80, 220),
('P122', 'Prayer Plant', 'All', 'Indoor', 90, 220),
('P201', 'Palm Trees (Tall)', 'Humid', 'Outdoor', 40, 180),
('P202', 'Bamboo Plant', 'Humid', 'Outdoor', 50, 180),
('P203', 'Neem Tree', 'Humid', 'Outdoor', 40, 180),
('P204', 'Ficus Benjamina Plant', 'Humid', 'Outdoor', 50, 180),
('P205', 'Sheesham Plant', 'Humid', 'Outdoor', 40, 180),
('P206', 'Guvava Plant', 'Humid', 'Outdoor', 75, 180),
('P207', 'Orange Tree', 'Humid', 'Outdoor', 85, 180),
('P208', 'Papaya', 'Humid', 'Outdoor', 75, 180),
('P209', 'Geranium', 'Humid', 'Outdoor', 85, 180),
('P210', 'Pipal', 'Humid', 'Outdoor', 75, 180),
('P211', 'Rose', 'Humid', 'Outdoor', 85, 180);

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
  `Scrap_ID` varchar(32) NOT NULL,
  `Name` varchar(32) NOT NULL,
  `REC/REU` varchar(10) NOT NULL,
  `PR_GOOD` float NOT NULL,
  `PR_MED` float NOT NULL,
  `PR_BAD` float NOT NULL,
  `Purchase_rate` float NOT NULL,
  `Sell_rate` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
  `User_ID` varchar(32) NOT NULL,
  `Plant_ID` varchar(32) NOT NULL,
  `Quanitity` int(5) NOT NULL,
  `Amount` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `User_ID` varchar(32) NOT NULL,
  `Name` varchar(32) NOT NULL,
  `Password` varchar(32) NOT NULL,
  `Mobile No.` int(10) NOT NULL,
  `User_type` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
(1, 'rahul', 'singh', 'ramram@yopmail.com', NULL, NULL, 11111111, 1),
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
-- Indexes for table `address`
--
ALTER TABLE `address`
  ADD KEY `RelUseradd` (`User_ID`);

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`Admin_ID`);

--
-- Indexes for table `plans`
--
ALTER TABLE `plans`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `plant`
--
ALTER TABLE `plant`
  ADD PRIMARY KEY (`Plant_ID`);

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
  ADD KEY `Plant_sell` (`User_ID`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`User_ID`);

--
-- Indexes for table `user_table`
--
ALTER TABLE `user_table`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `plans`
--
ALTER TABLE `plans`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `user_table`
--
ALTER TABLE `user_table`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `address`
--
ALTER TABLE `address`
  ADD CONSTRAINT `RelUseradd` FOREIGN KEY (`User_ID`) REFERENCES `user` (`User_ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `purchase`
--
ALTER TABLE `purchase`
  ADD CONSTRAINT `RelScrappur` FOREIGN KEY (`Scrap_ID`) REFERENCES `scrap` (`Scrap_ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `RelUserpur` FOREIGN KEY (`User_ID`) REFERENCES `user` (`User_ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `sell`
--
ALTER TABLE `sell`
  ADD CONSTRAINT `RelScrapsell` FOREIGN KEY (`Scrap_ID`) REFERENCES `scrap` (`Scrap_ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `RelUsersell` FOREIGN KEY (`User_ID`) REFERENCES `user` (`User_ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `sell_plant`
--
ALTER TABLE `sell_plant`
  ADD CONSTRAINT `Plant_sell` FOREIGN KEY (`User_ID`) REFERENCES `purchase` (`User_ID`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;