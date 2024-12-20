-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 20, 2024 at 07:14 AM
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
-- Database: `dbhotelmanagement`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbladdons`
--

CREATE TABLE `tbladdons` (
  `AddonID` int(11) NOT NULL,
  `Bed` int(11) DEFAULT NULL,
  `Blanket` int(11) DEFAULT NULL,
  `Pillow` int(11) DEFAULT NULL,
  `Toiletries` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tblamenities`
--

CREATE TABLE `tblamenities` (
  `AmenityID` int(11) NOT NULL,
  `SwimmingPool` tinyint(1) DEFAULT NULL,
  `Gym` tinyint(1) DEFAULT NULL,
  `FootSpa` tinyint(1) DEFAULT NULL,
  `ThaiMassage` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbldestination`
--

CREATE TABLE `tbldestination` (
  `DestinationID` int(11) NOT NULL,
  `BookingDestination` varchar(100) DEFAULT NULL,
  `Place` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tblguest`
--

CREATE TABLE `tblguest` (
  `GuestID` int(11) NOT NULL,
  `Name` varchar(100) DEFAULT NULL,
  `Age` int(11) DEFAULT NULL,
  `AdultNum` int(11) DEFAULT NULL,
  `ChildNum` int(11) DEFAULT NULL,
  `ChildAge` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tblprice`
--

CREATE TABLE `tblprice` (
  `PriceID` int(11) NOT NULL,
  `RoomPrice` decimal(10,2) DEFAULT NULL,
  `RoomTotal` decimal(10,2) DEFAULT NULL,
  `Addon` decimal(10,2) DEFAULT NULL,
  `Amenities` decimal(10,2) DEFAULT NULL,
  `Total` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tblroom`
--

CREATE TABLE `tblroom` (
  `RoomID` int(11) NOT NULL,
  `RoomType` varchar(50) DEFAULT NULL,
  `RoomNum` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tblseasonal`
--

CREATE TABLE `tblseasonal` (
  `SeasonalID` int(11) NOT NULL,
  `CheckInDate` date DEFAULT NULL,
  `CheckOutDate` date DEFAULT NULL,
  `Season` varchar(50) DEFAULT NULL,
  `NumDays` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbladdons`
--
ALTER TABLE `tbladdons`
  ADD PRIMARY KEY (`AddonID`);

--
-- Indexes for table `tblamenities`
--
ALTER TABLE `tblamenities`
  ADD PRIMARY KEY (`AmenityID`);

--
-- Indexes for table `tbldestination`
--
ALTER TABLE `tbldestination`
  ADD PRIMARY KEY (`DestinationID`);

--
-- Indexes for table `tblguest`
--
ALTER TABLE `tblguest`
  ADD PRIMARY KEY (`GuestID`);

--
-- Indexes for table `tblprice`
--
ALTER TABLE `tblprice`
  ADD PRIMARY KEY (`PriceID`);

--
-- Indexes for table `tblroom`
--
ALTER TABLE `tblroom`
  ADD PRIMARY KEY (`RoomID`);

--
-- Indexes for table `tblseasonal`
--
ALTER TABLE `tblseasonal`
  ADD PRIMARY KEY (`SeasonalID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbladdons`
--
ALTER TABLE `tbladdons`
  MODIFY `AddonID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblamenities`
--
ALTER TABLE `tblamenities`
  MODIFY `AmenityID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbldestination`
--
ALTER TABLE `tbldestination`
  MODIFY `DestinationID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblguest`
--
ALTER TABLE `tblguest`
  MODIFY `GuestID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblprice`
--
ALTER TABLE `tblprice`
  MODIFY `PriceID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblroom`
--
ALTER TABLE `tblroom`
  MODIFY `RoomID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblseasonal`
--
ALTER TABLE `tblseasonal`
  MODIFY `SeasonalID` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
