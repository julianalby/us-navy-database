-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 03, 2025 at 05:40 PM
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
-- Database: `us_navy`
--

-- --------------------------------------------------------

--
-- Table structure for table `checkup`
--

CREATE TABLE `checkup` (
  `checkup_id` varchar(4) NOT NULL,
  `checkup_date` date NOT NULL,
  `condition_id` char(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `checkup`
--

INSERT INTO `checkup` (`checkup_id`, `checkup_date`, `condition_id`) VALUES
('H1', '2022-11-11', 'C1'),
('H10', '2023-02-17', 'C1'),
('H11', '2023-07-24', 'C5'),
('H12', '2023-02-17', 'C1'),
('H13', '2024-02-18', 'C2'),
('H14', '2022-11-11', 'C1'),
('H15', '2023-08-01', 'C1'),
('H16', '2023-01-30', 'C2'),
('H17', '2022-12-25', 'C3'),
('H18', '2023-02-17', 'C1'),
('H19', '2024-02-18', 'C1'),
('H2', '2023-01-06', 'C2'),
('H20', '2023-08-01', 'C1'),
('H21', '2022-12-28', 'C2'),
('H22', '2023-08-01', 'C1'),
('H3', '2022-11-11', 'C1'),
('H4', '2022-08-17', 'C4'),
('H5', '2022-07-22', 'C3'),
('H6', '2023-08-01', 'C1'),
('H7', '2022-11-11', 'C1'),
('H8', '2023-01-09', 'C2'),
('H9', '2024-02-13', 'C3');

-- --------------------------------------------------------

--
-- Table structure for table `fleet`
--

CREATE TABLE `fleet` (
  `fleet_id` char(1) NOT NULL,
  `fleet_name` varchar(100) NOT NULL,
  `fleet_status` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `fleet`
--

INSERT INTO `fleet` (`fleet_id`, `fleet_name`, `fleet_status`) VALUES
('3', 'Third Fleet', 'ACTIVE'),
('7', 'Seventh Fleet', 'ACTIVE');

-- --------------------------------------------------------

--
-- Table structure for table `main`
--

CREATE TABLE `main` (
  `personnel_id` char(3) DEFAULT NULL,
  `ship_id` varchar(6) DEFAULT NULL,
  `mission_id` char(5) DEFAULT NULL,
  `checkup_id` varchar(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `main`
--

INSERT INTO `main` (`personnel_id`, `ship_id`, `mission_id`, `checkup_id`) VALUES
('101', 'CVN-68', 'M-101', 'H1'),
('101', 'CG-62', 'M-102', 'H2'),
('102', 'CVN-68', 'M-101', 'H3'),
('103', 'CG-59', 'M-101', 'H4'),
('104', 'CG-59', 'M-101', 'H5'),
('104', 'CVN-73', 'M-103', 'H6'),
('105', 'CVN-68', 'M-101', 'H7'),
('106', 'CG-62', 'M-102', 'H8'),
('106', 'DDG-97', 'M-104', 'H9'),
('107', 'DDG-76', 'M-102', 'H10'),
('107', 'CVN-73', 'M-103', 'H11'),
('108', 'DDG-76', 'M-102', 'H12'),
('109', 'DDG-97', 'M-104', 'H13'),
('110', 'CVN-68', 'M-101', 'H14'),
('110', 'CVN-73', 'M-103', 'H15'),
('111', 'CG-62', 'M-102', 'H16'),
('112', 'DDG-76', 'M-102', 'H17'),
('113', 'DDG-76', 'M-102', 'H18'),
('113', 'DDG-97', 'M-104', 'H19'),
('114', 'CVN-73', 'M-103', 'H20'),
('115', 'CG-62', 'M-102', 'H21'),
('115', 'CVN-73', 'M-103', 'H22');

-- --------------------------------------------------------

--
-- Table structure for table `medicalcondition`
--

CREATE TABLE `medicalcondition` (
  `condition_id` char(2) NOT NULL,
  `medical_condition` varchar(100) NOT NULL,
  `treatment` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `medicalcondition`
--

INSERT INTO `medicalcondition` (`condition_id`, `medical_condition`, `treatment`) VALUES
('C1', 'No Issues', 'None'),
('C2', 'Common Cold', 'Medication prescribed'),
('C3', 'Heat Exhaustion', 'IV fluids administered'),
('C4', 'Hypertensive Crisis', 'IV medication administered'),
('C5', 'Fractured Wrist', 'Cast applied');

-- --------------------------------------------------------

--
-- Table structure for table `mission`
--

CREATE TABLE `mission` (
  `mission_id` char(5) NOT NULL,
  `mission_name` varchar(100) NOT NULL,
  `mission_date` date NOT NULL,
  `mission_duration` int(10) NOT NULL,
  `mission_location` varchar(255) NOT NULL,
  `objective` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `mission`
--

INSERT INTO `mission` (`mission_id`, `mission_name`, `mission_date`, `mission_duration`, `mission_location`, `objective`) VALUES
('M-101', 'Maritime Security Patrol', '2022-05-15', 180, 'Western Pacific Ocean', 'Monitor maritime security threats'),
('M-102', 'Anti-Submarine Operation', '2022-12-19', 60, 'Northern Pacific Ocean', 'Detect and neutralize submarine threats'),
('M-103', 'Humanitarian Assistance', '2023-07-02', 30, 'Pacific Islands Region', 'Deliver aid and provide support after tsunami'),
('M-104', 'Missile Defence Exercise', '2024-01-28', 21, 'Central Pacific Region', 'Test and improve missile defense systems');

-- --------------------------------------------------------

--
-- Table structure for table `personnel`
--

CREATE TABLE `personnel` (
  `personnel_id` char(3) NOT NULL,
  `full_name` varchar(255) NOT NULL,
  `gender` varchar(20) NOT NULL,
  `email` varchar(100) NOT NULL,
  `address` varchar(255) NOT NULL,
  `rank` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `personnel`
--

INSERT INTO `personnel` (`personnel_id`, `full_name`, `gender`, `email`, `address`, `rank`) VALUES
('101', 'Levy Ethelstone', 'Male', 'lethelstone0@va.gov', '827 Scenic Way', 'Ensign'),
('102', 'Wye Cheater', 'Male', 'wcheater1@va.gov', '58 Bridge Street', 'Lieutenant'),
('103', 'Kinna Shardlow', 'Bigender', 'kshardlow2@va.gov', '4727 Duff Avenue', 'Seaman'),
('104', 'Dre Le Blond', 'Male', 'dleblond3@va.gov', '2072 Romines Mill Road', 'Chief Petty Officer'),
('105', 'Laney Scoles', 'Male', 'lscoles4@va.gov', '2197 Dogwood Lane', 'Seaman'),
('106', 'Franklyn Wabersich', 'Male', 'fwabersich5@va.gov', '4945 Crim Lane', 'Seaman'),
('107', 'Stacee Fidge', 'Female', 'sfidge6@va.gov', '950 Goodwin Avenue', 'Captain'),
('108', 'Chloette Broome', 'Bigender', 'cbroome7@va.gov', '3094 Big Indian', 'Captain'),
('109', 'Shannan Stobbe', 'Male', 'sstobbe8@va.gov', '1130 Modoc Alley', 'Seaman'),
('110', 'Witty Joynes', 'Male', 'wjoynes9@va.gov', '2418 August Lane', 'Captain'),
('111', 'Alfred Gomez', 'Male', 'agomez10@va.gov', '923 Libby Street', 'Ensign'),
('112', 'Shawn Campbell', 'Male', 'scampbell11@va.gov', '2005 Losh Lane', 'Commander'),
('113', 'Ines Romero', 'Female', 'iromero12@va.gov', '4542 Pine Garden Lane', 'Vice Admiral'),
('114', 'Rachel Richards', 'Female', 'rrichards13@va.gov', '2709 Jefferson Street', 'Chief Petty Officer'),
('115', 'Kieran Cooper', 'Male', 'kcooper14@va.gov', '3217 Kelly Drive', 'Seaman');

-- --------------------------------------------------------

--
-- Table structure for table `ship`
--

CREATE TABLE `ship` (
  `ship_id` varchar(6) NOT NULL,
  `ship_name` varchar(100) NOT NULL,
  `ship_type` varchar(100) NOT NULL,
  `ship_commission_date` date NOT NULL,
  `fleet_id` char(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ship`
--

INSERT INTO `ship` (`ship_id`, `ship_name`, `ship_type`, `ship_commission_date`, `fleet_id`) VALUES
('CG-59', 'USS Princeton', 'Cruiser', '1989-02-11', '3'),
('CG-62', 'USS Robert Smalls', 'Cruiser', '1989-11-04', '7'),
('CVN-68', 'USS Nimitz', 'Aircraft Carrier', '1975-05-03', '3'),
('CVN-73', 'USS George Washington', 'Aircraft Carrier', '1992-07-04', '7'),
('DDG-76', 'USS Higgins', 'Destroyer', '1999-04-24', '7'),
('DDG-97', 'USS Halsey', 'Destroyer', '2005-07-30', '3');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `checkup`
--
ALTER TABLE `checkup`
  ADD PRIMARY KEY (`checkup_id`),
  ADD KEY `condition_id` (`condition_id`);

--
-- Indexes for table `fleet`
--
ALTER TABLE `fleet`
  ADD PRIMARY KEY (`fleet_id`);

--
-- Indexes for table `main`
--
ALTER TABLE `main`
  ADD KEY `personnel_id` (`personnel_id`),
  ADD KEY `ship_id` (`ship_id`),
  ADD KEY `mission_id` (`mission_id`),
  ADD KEY `checkup_id` (`checkup_id`);

--
-- Indexes for table `medicalcondition`
--
ALTER TABLE `medicalcondition`
  ADD PRIMARY KEY (`condition_id`);

--
-- Indexes for table `mission`
--
ALTER TABLE `mission`
  ADD PRIMARY KEY (`mission_id`);

--
-- Indexes for table `personnel`
--
ALTER TABLE `personnel`
  ADD PRIMARY KEY (`personnel_id`);

--
-- Indexes for table `ship`
--
ALTER TABLE `ship`
  ADD PRIMARY KEY (`ship_id`),
  ADD KEY `fleet_id` (`fleet_id`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `checkup`
--
ALTER TABLE `checkup`
  ADD CONSTRAINT `checkup_ibfk_1` FOREIGN KEY (`condition_id`) REFERENCES `medicalcondition` (`condition_id`);

--
-- Constraints for table `main`
--
ALTER TABLE `main`
  ADD CONSTRAINT `main_ibfk_1` FOREIGN KEY (`personnel_id`) REFERENCES `personnel` (`personnel_id`),
  ADD CONSTRAINT `main_ibfk_2` FOREIGN KEY (`ship_id`) REFERENCES `ship` (`ship_id`),
  ADD CONSTRAINT `main_ibfk_3` FOREIGN KEY (`mission_id`) REFERENCES `mission` (`mission_id`),
  ADD CONSTRAINT `main_ibfk_4` FOREIGN KEY (`checkup_id`) REFERENCES `checkup` (`checkup_id`);

--
-- Constraints for table `ship`
--
ALTER TABLE `ship`
  ADD CONSTRAINT `ship_ibfk_1` FOREIGN KEY (`fleet_id`) REFERENCES `fleet` (`fleet_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
