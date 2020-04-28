-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 27, 2020 at 08:04 PM
-- Server version: 10.4.8-MariaDB
-- PHP Version: 7.3.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `movie_rental`
--

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `customerID` int(3) NOT NULL,
  `fname` varchar(15) COLLATE utf8_bin NOT NULL,
  `lname` varchar(15) COLLATE utf8_bin NOT NULL,
  `contactNo` varchar(20) COLLATE utf8_bin NOT NULL,
  `loyaltyPoints` int(4) NOT NULL,
  `subscriptionID` int(3) NOT NULL,
  `rentalCount` int(1) NOT NULL,
  `rentsAllowed` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`customerID`, `fname`, `lname`, `contactNo`, `loyaltyPoints`, `subscriptionID`, `rentalCount`, `rentsAllowed`) VALUES
(1, 'John', 'Doee', '090078601', 20, 1, 0, 4),
(2, 'Methew', 'John', '090078600', 0, 2, 0, 4),
(4, 'joe', 'tribbiani', '000555', 0, 2, 0, 4),
(5, 'monica', 'geller', '907508', 0, 3, 0, 4),
(6, 'ross', 'geller', '1234567', 0, 1, 0, 4),
(7, 'Sumbel', 'Amin', '67980976500', 0, 1, 0, 4),
(8, 'brian', 'adam', '214567899', 0, 1, 0, 4),
(9, 'janice', 'joe', '5798809', 0, 2, 0, 4),
(10, 'chandler', 'bing', '123478943', 0, 2, 0, 4);

-- --------------------------------------------------------

--
-- Table structure for table `history`
--

CREATE TABLE `history` (
  `historyID` int(3) NOT NULL,
  `customerID` int(3) NOT NULL,
  `titleID` int(3) NOT NULL,
  `rentalDate` date NOT NULL,
  `active` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `history`
--

INSERT INTO `history` (`historyID`, `customerID`, `titleID`, `rentalDate`, `active`) VALUES
(8, 1, 5, '2020-04-26', 0),
(10, 1, 7, '2020-04-27', 0);

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE `staff` (
  `staffID` varchar(10) COLLATE utf8_bin NOT NULL,
  `password` varchar(10) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`staffID`, `password`) VALUES
('admin', 'admin123');

-- --------------------------------------------------------

--
-- Table structure for table `subscription`
--

CREATE TABLE `subscription` (
  `subscriptionID` int(3) NOT NULL,
  `subscriptionName` varchar(20) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `subscription`
--

INSERT INTO `subscription` (`subscriptionID`, `subscriptionName`) VALUES
(1, 'Music Lover'),
(2, 'TV Lover'),
(3, 'Video Lover'),
(4, 'Premium');

-- --------------------------------------------------------

--
-- Table structure for table `title`
--

CREATE TABLE `title` (
  `titleID` int(3) NOT NULL,
  `titleName` varchar(20) COLLATE utf8_bin NOT NULL,
  `typeID` int(1) NOT NULL,
  `availability` tinyint(1) NOT NULL,
  `mediaFormat` varchar(20) COLLATE utf8_bin NOT NULL,
  `releaseYear` int(4) NOT NULL,
  `genre` varchar(20) COLLATE utf8_bin NOT NULL,
  `description` varchar(50) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `title`
--

INSERT INTO `title` (`titleID`, `titleName`, `typeID`, `availability`, `mediaFormat`, `releaseYear`, `genre`, `description`) VALUES
(1, 'Parasite', 4, 1, 'DVD', 2019, 'Thriller/Comedy', 'Director: Bong Joon-ho'),
(2, 'Bloodshot', 4, 1, 'DVD', 2020, 'Action/Adventure', 'Director: David S. F. Wilson'),
(3, 'Breaking Bad', 3, 1, 'DVD', 2008, ' Drama', 'No. of episodes: 62 '),
(4, 'Friends', 3, 1, 'DVD', 1994, 'Comedy', 'No. of episodes: 236'),
(5, 'Nevermind', 1, 1, 'CD', 1990, 'Rock', 'Artist: Nirvana'),
(6, 'AM', 1, 1, 'CD', 2013, 'English indie rock', 'Artist: Arctic Monkeys'),
(7, 'Eagles Live', 2, 1, 'Blu-Ray', 2019, 'Country rock', 'Band: Eagles'),
(11, 'beyonce', 2, 1, 'Blu-Ray', 2009, 'pop', 'artist: Beyonce'),
(12, 'billy jeans', 2, 1, 'Blu-Ray', 1980, 'pop', 'artist: michael jackson'),
(13, 'mad world', 2, 1, 'Blu-Ray', 1990, 'pop', 'Band:tears for fears'),
(14, 'beautiful', 1, 0, 'CD', 2000, 'mild', 'artist: lana del ray');

-- --------------------------------------------------------

--
-- Table structure for table `type`
--

CREATE TABLE `type` (
  `typeID` int(1) NOT NULL,
  `typeName` varchar(25) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `type`
--

INSERT INTO `type` (`typeID`, `typeName`) VALUES
(1, 'Music (ML)'),
(2, 'Live Concert Video (ML)'),
(3, 'TV Lover'),
(4, 'Video Lover');

-- --------------------------------------------------------

--
-- Table structure for table `type_subscription`
--

CREATE TABLE `type_subscription` (
  `typeID` int(3) NOT NULL,
  `subscriptionID` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `type_subscription`
--

INSERT INTO `type_subscription` (`typeID`, `subscriptionID`) VALUES
(2, 1),
(1, 1),
(3, 2),
(4, 3),
(2, 4),
(1, 4),
(3, 4),
(4, 4);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`customerID`),
  ADD KEY `customer_ibfk_1` (`subscriptionID`);

--
-- Indexes for table `history`
--
ALTER TABLE `history`
  ADD PRIMARY KEY (`historyID`),
  ADD KEY `history_ibfk_1` (`customerID`),
  ADD KEY `history_ibfk_2` (`titleID`);

--
-- Indexes for table `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`staffID`);

--
-- Indexes for table `subscription`
--
ALTER TABLE `subscription`
  ADD PRIMARY KEY (`subscriptionID`);

--
-- Indexes for table `title`
--
ALTER TABLE `title`
  ADD PRIMARY KEY (`titleID`),
  ADD KEY `title_ibfk_1` (`typeID`);

--
-- Indexes for table `type`
--
ALTER TABLE `type`
  ADD PRIMARY KEY (`typeID`);

--
-- Indexes for table `type_subscription`
--
ALTER TABLE `type_subscription`
  ADD KEY `type_subscription_ibfk_1` (`subscriptionID`),
  ADD KEY `type_subscription_ibfk_2` (`typeID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `customerID` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `history`
--
ALTER TABLE `history`
  MODIFY `historyID` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `subscription`
--
ALTER TABLE `subscription`
  MODIFY `subscriptionID` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `title`
--
ALTER TABLE `title`
  MODIFY `titleID` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `type`
--
ALTER TABLE `type`
  MODIFY `typeID` int(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `customer`
--
ALTER TABLE `customer`
  ADD CONSTRAINT `customer_ibfk_1` FOREIGN KEY (`subscriptionID`) REFERENCES `subscription` (`subscriptionID`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `history`
--
ALTER TABLE `history`
  ADD CONSTRAINT `history_ibfk_1` FOREIGN KEY (`customerID`) REFERENCES `customer` (`customerID`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `history_ibfk_2` FOREIGN KEY (`titleID`) REFERENCES `title` (`titleID`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `title`
--
ALTER TABLE `title`
  ADD CONSTRAINT `title_ibfk_1` FOREIGN KEY (`typeID`) REFERENCES `type` (`typeID`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `type_subscription`
--
ALTER TABLE `type_subscription`
  ADD CONSTRAINT `type_subscription_ibfk_1` FOREIGN KEY (`subscriptionID`) REFERENCES `subscription` (`subscriptionID`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `type_subscription_ibfk_2` FOREIGN KEY (`typeID`) REFERENCES `type` (`typeID`) ON DELETE CASCADE ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
