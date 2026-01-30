-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Dec 30, 2024 at 05:04 PM
-- Server version: 8.0.31
-- PHP Version: 8.0.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `farmer`
--

-- --------------------------------------------------------

--
-- Table structure for table `equipment_details`
--

DROP TABLE IF EXISTS `equipment_details`;
CREATE TABLE IF NOT EXISTS `equipment_details` (
  `equipment_id` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `farmer_id` varchar(50) NOT NULL,
  `address` varchar(100) NOT NULL,
  `details` varchar(100) NOT NULL,
  `cost_per_day` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `equipment_details`
--

INSERT INTO `equipment_details` (`equipment_id`, `name`, `farmer_id`, `address`, `details`, `cost_per_day`) VALUES
('2', 'Tailor', '1', 'Dharwad', 'carry the seeds', '1500'),
('3', 'Disc Harrow', '2', 'hubli', 'ntg', '3000');

-- --------------------------------------------------------

--
-- Table structure for table `equipment_exchange`
--

DROP TABLE IF EXISTS `equipment_exchange`;
CREATE TABLE IF NOT EXISTS `equipment_exchange` (
  `equipment_owner` varchar(50) NOT NULL,
  `equipment_receiver` varchar(50) NOT NULL,
  `from_date` varchar(50) NOT NULL,
  `till_date` varchar(50) NOT NULL,
  `no_of_days` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `equipment_exchange`
--

INSERT INTO `equipment_exchange` (`equipment_owner`, `equipment_receiver`, `from_date`, `till_date`, `no_of_days`) VALUES
('3', 'rotary tiller', '3', 'gadag', 'farming');

-- --------------------------------------------------------

--
-- Table structure for table `farmer_details`
--

DROP TABLE IF EXISTS `farmer_details`;
CREATE TABLE IF NOT EXISTS `farmer_details` (
  `farmer_id` varchar(50) NOT NULL,
  `farmer_name` varchar(50) NOT NULL,
  `aadhar_no` varchar(20) NOT NULL,
  `address` varchar(100) NOT NULL,
  `contact_no` varchar(15) NOT NULL,
  `village_name` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `farmer_details`
--

INSERT INTO `farmer_details` (`farmer_id`, `farmer_name`, `aadhar_no`, `address`, `contact_no`, `village_name`) VALUES
('1', 'Harsh', '713017192949', 'Near New Bus stop Dharwad', '7760606336', 'Bittband halli '),
('2', 'sdfl', 'jlkj', 'l', 'jkl', 'jk');

-- --------------------------------------------------------

--
-- Table structure for table `issue_details`
--

DROP TABLE IF EXISTS `issue_details`;
CREATE TABLE IF NOT EXISTS `issue_details` (
  `issue_id` varchar(50) NOT NULL,
  `request_id` varchar(50) NOT NULL,
  `farmer_id` varchar(50) NOT NULL,
  `equipment_farmer_id` varchar(50) NOT NULL,
  `issue_date` varchar(50) NOT NULL,
  `time` varchar(50) NOT NULL,
  `conditions` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `issue_details`
--

INSERT INTO `issue_details` (`issue_id`, `request_id`, `farmer_id`, `equipment_farmer_id`, `issue_date`, `time`, `conditions`) VALUES
('2', '2', '2', 'Sachin', '13', '10', 'Bad'),
('3', '3', '3', 'Suraj', '15', '11', 'Not bad');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

DROP TABLE IF EXISTS `login`;
CREATE TABLE IF NOT EXISTS `login` (
  `username` varchar(50) NOT NULL,
  `aadhar_no` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `type` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`username`, `aadhar_no`, `type`) VALUES
('farmer', '123123', 'farmer'),
('owner', '123123', 'owner');

-- --------------------------------------------------------

--
-- Table structure for table `request_details`
--

DROP TABLE IF EXISTS `request_details`;
CREATE TABLE IF NOT EXISTS `request_details` (
  `request_id` varchar(50) NOT NULL,
  `farmer_name` varchar(50) NOT NULL,
  `farmer_id` varchar(50) NOT NULL,
  `equipment_id` varchar(50) NOT NULL,
  `from_date` varchar(50) NOT NULL,
  `to_date` varchar(50) NOT NULL,
  `total_day` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `request_details`
--

INSERT INTO `request_details` (`request_id`, `farmer_name`, `farmer_id`, `equipment_id`, `from_date`, `to_date`, `total_day`) VALUES
('2', 'Suresh', '2', '3', '12', '15', '3'),
('3', 'Prajwal', '3', '4', '13', '17', '4');

-- --------------------------------------------------------

--
-- Table structure for table `return_details`
--

DROP TABLE IF EXISTS `return_details`;
CREATE TABLE IF NOT EXISTS `return_details` (
  `issue_id` varchar(50) NOT NULL,
  `return_date` varchar(50) NOT NULL,
  `conditions` varchar(50) NOT NULL,
  `total_no_ofdays` varchar(50) NOT NULL,
  `cost` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `return_details`
--

INSERT INTO `return_details` (`issue_id`, `return_date`, `conditions`, `total_no_ofdays`, `cost`) VALUES
('1', '12', 'bad', '3', '5000'),
('3', '15', 'not bad', '5', '10000');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
