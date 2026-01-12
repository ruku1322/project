-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 28, 2025 at 02:05 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `emergency_services`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbladmin`
--

CREATE TABLE `tbladmin` (
  `ID` int(11) NOT NULL,
  `AdminName` varchar(120) DEFAULT NULL,
  `AdminuserName` varchar(20) NOT NULL,
  `MobileNumber` bigint(12) NOT NULL,
  `Email` varchar(120) NOT NULL,
  `Password` varchar(120) DEFAULT NULL,
  `AdminRegdate` timestamp NULL DEFAULT current_timestamp(),
  `userRole` int(1) DEFAULT NULL,
  `isActive` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbladmin`
--

INSERT INTO `tbladmin` (`ID`, `AdminName`, `AdminuserName`, `MobileNumber`, `Email`, `Password`, `AdminRegdate`, `userRole`, `isActive`) VALUES
(1, 'Tanveer', 'tanveer', 1580367665, 'tanveertarek8@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '2025-05-21 17:30:00', NULL, 1),
(4, 'Sadhin ', 'sadhin', 1709213800, 'sadhinahamad2017@gmail.com', 'fd38d5aa60ebc929ee382a257f67d6b0', '2025-05-21 17:30:00', NULL, 1),
(5, 'Ruku', 'ruku', 1981262143, 'tasnim_ruku1152@uits.edu.bd', 'feabb9c62e113c25dd193887d75bbcfc', '2025-05-21 17:30:00', NULL, 1),
(6, 'Muhit', 'muhit', 1742793455, 'omayer05012000@gmail.com', '8a3981e2bd9ee1e4d48046371d9c6024', '2025-05-21 17:30:00', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblfirereport`
--

CREATE TABLE `tblfirereport` (
  `id` int(11) NOT NULL,
  `fullName` varchar(255) DEFAULT NULL,
  `mobileNumber` bigint(12) DEFAULT NULL,
  `location` mediumtext DEFAULT NULL,
  `messgae` mediumtext DEFAULT NULL,
  `assignTo` int(11) DEFAULT NULL,
  `status` varchar(120) DEFAULT NULL,
  `postingDate` timestamp NULL DEFAULT current_timestamp(),
  `assignTime` varchar(255) DEFAULT NULL,
  `assignTme` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblfirereport`
--

INSERT INTO `tblfirereport` (`id`, `fullName`, `mobileNumber`, `location`, `messgae`, `assignTo`, `status`, `postingDate`, `assignTime`, `assignTme`) VALUES
(4, 'sadhin', 1709213800, 'fhgshdi', 'ghsajhf', 9, 'Request Completed', '2025-05-28 09:44:40', NULL, '28-05-25 12:05:52'),
(5, 'Sadhin Ahamed', 1709213800, 'Vatara', 'fire', 5, 'Fire Relief Work in Progress', '2025-05-28 11:36:18', NULL, '28-05-25 01:05:18'),
(6, 'muhit', 1742793455, 'dhanmondi', 'ambulance', 6, 'Assigned', '2025-05-28 11:36:50', NULL, '28-05-25 01:05:08'),
(7, 'RUKU', 1981262143, 'uttara', 'medicale', 8, 'Request Completed', '2025-05-28 11:37:22', NULL, '28-05-25 01:05:51'),
(8, 'RUKU', 1981262143, 'uttara', 'digister', 9, 'Team On the Way', '2025-05-28 11:54:05', NULL, '28-05-25 01:05:06'),
(9, 'muhit', 1742793455, 'Dhanmondi', 'medicale', NULL, NULL, '2025-05-28 11:54:44', NULL, ''),
(10, 'Sadhin Ahamed', 1709213800, 'Vatara', 'fire ', 5, 'Team On the Way', '2025-05-28 11:59:21', NULL, '28-05-25 01:05:44');

-- --------------------------------------------------------

--
-- Table structure for table `tblfiretequesthistory`
--

CREATE TABLE `tblfiretequesthistory` (
  `id` int(11) NOT NULL,
  `requestId` int(11) DEFAULT NULL,
  `status` varchar(120) DEFAULT NULL,
  `remark` mediumtext DEFAULT NULL,
  `postingDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tblfiretequesthistory`
--

INSERT INTO `tblfiretequesthistory` (`id`, `requestId`, `status`, `remark`, `postingDate`) VALUES
(7, 4, 'Request Completed', 'okay', '2025-05-28 11:38:37'),
(8, 7, 'Team On the Way', 'coming', '2025-05-28 11:41:35'),
(9, 5, 'Fire Relief Work in Progress', 'doing\r\n', '2025-05-28 11:43:45'),
(10, 7, 'Request Completed', 'ok', '2025-05-28 11:50:12'),
(11, 8, 'Team On the Way', 'going\r\n', '2025-05-28 11:55:47'),
(12, 10, 'Team On the Way', 'ok', '2025-05-28 12:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `tblsite`
--

CREATE TABLE `tblsite` (
  `id` int(11) NOT NULL,
  `siteTitle` varchar(255) DEFAULT NULL,
  `siteLogo` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tblsite`
--

INSERT INTO `tblsite` (`id`, `siteTitle`, `siteLogo`) VALUES
(1, 'Emergency Services BD', 'f121d135f39f03e48da5fe5e8ced5b0a.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tblteams`
--

CREATE TABLE `tblteams` (
  `id` int(11) NOT NULL,
  `teamName` varchar(255) DEFAULT NULL,
  `teamLeaderName` varchar(255) DEFAULT NULL,
  `teamLeadMobno` bigint(12) DEFAULT NULL,
  `teamMembers` mediumtext DEFAULT NULL,
  `postingDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tblteams`
--

INSERT INTO `tblteams` (`id`, `teamName`, `teamLeaderName`, `teamLeadMobno`, `teamMembers`, `postingDate`) VALUES
(5, 'Fire', 'Ruku', 1981262143, 'Tanveer, Muhit,Sadhin', '2025-05-28 09:48:17'),
(6, 'Ambulance', 'Muhit', 1742793455, 'Tanveer, Ruku,Sadhin', '2025-05-28 09:49:37'),
(7, 'Police Assitance', 'Tarek', 1580367665, 'Sadhin,Ruku,Muhit', '2025-05-28 10:55:46'),
(8, 'Medicale Emergency', 'Sadhin Ahamed', 1709213800, 'Ruku,Muhit,Tarek', '2025-05-28 10:57:06'),
(9, 'Disaster Response', 'Shakib Ahamed', 1761457742, 'Sadhin,Ruku,Muhit,Tarek', '2025-05-28 10:58:13');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbladmin`
--
ALTER TABLE `tbladmin`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblfirereport`
--
ALTER TABLE `tblfirereport`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblfiretequesthistory`
--
ALTER TABLE `tblfiretequesthistory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblsite`
--
ALTER TABLE `tblsite`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblteams`
--
ALTER TABLE `tblteams`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbladmin`
--
ALTER TABLE `tbladmin`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tblfirereport`
--
ALTER TABLE `tblfirereport`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tblfiretequesthistory`
--
ALTER TABLE `tblfiretequesthistory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tblsite`
--
ALTER TABLE `tblsite`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblteams`
--
ALTER TABLE `tblteams`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
