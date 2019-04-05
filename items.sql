-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 05, 2019 at 03:22 PM
-- Server version: 10.1.34-MariaDB
-- PHP Version: 7.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `event`
--

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE `items` (
  `prodid` int(4) NOT NULL,
  `prodName` varchar(30) NOT NULL,
  `prodPicNameSmall` varchar(100) NOT NULL,
  `prodPicNameLarge` varchar(100) NOT NULL,
  `prodDescripShort` varchar(1000) DEFAULT NULL,
  `prodDescripLong` varchar(3000) DEFAULT NULL,
  `prodPrice` decimal(6,2) NOT NULL,
  `prodQuantity` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`prodid`, `prodName`, `prodPicNameSmall`, `prodPicNameLarge`, `prodDescripShort`, `prodDescripLong`, `prodPrice`, `prodQuantity`) VALUES
(1, 'catering', 'catering.jpg', 'CateringL.jpg', 'Dinner Service Includes: Catering staff, number of staff dependent on guest count. Based on availability, choice of renting our dinnerware, flatware, and glassware or complimentary disposable plates, napkins, and utensils', 'Catering offers a wide variety of services to fit everyone’s catering needs. We understand that the type of event you are planning will determine the type of service you need. Whether you are looking for a lunch delivery for a meeting or you need a dinner buffet for a graduation party or full-serve formal catering for a wedding, we have an option for you! Popolo Catering has offers unique catering meal packages and amenities to our clients to help them customize an order that works best with their event needs. We are based out of San Luis Obispo, CA inside the Courtyard by Marriott and have the ability to travel up and down Central California. We’ve catered in Santa Barbara County and as far North as Big Sur providing a range of services. Feel happy and safe knowing that your event will be executed by one of the biggest and most loved caterers in Central California.', '1000.00', 100),
(2, 'decoration', 'decoration.jpg', 'decorationL.jpg', 'Backdrop Banners. Special Occasions. Party Lights. Streamers. Luau Party Decorations. Graduation Party Favors. Father\'s Day - Jun. Decorating Fabric. Table Numbers. Religious Items. Backdrops & Scene Setters. Cardboard Cutouts. Door Decorations. Bulk Egg Assortments.', 'Backdrop Banners. Special Occasions. Party Lights. Streamers. Luau Party Decorations. Graduation Party Favors. Father\'s Day - Jun. Decorating Fabric. Table Numbers. Religious Items. Backdrops & Scene Setters. Cardboard Cutouts. Door Decorations. Bulk Egg Assortments.', '150.00', 5000),
(3, 'sound system', 'sound.jpg', 'soundL.jpg', 'With 80W sound output and bluetooth connectivity, these speakers are perfect for playing music, games, movies and online videos on mobiles, MAC and PC.', 'This speaker comes feature-packed and can be your ideal music partner. Built with Bluetooth connectivity it can play music wirelessly. In built FM is an added advantage. Notch up your music experience with clear sound and powerful bass.', '9999.99', 10);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`prodid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `items`
--
ALTER TABLE `items`
  MODIFY `prodid` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
