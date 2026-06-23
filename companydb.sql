-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 22, 2026 at 05:19 AM
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
-- Database: `companydb`
--

-- --------------------------------------------------------

--
-- Table structure for table `departments`
--

CREATE TABLE `departments` (
  `DepartmentID` int(11) NOT NULL,
  `DepartmentName` varchar(100) NOT NULL,
  `Location` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `departments`
--

INSERT INTO `departments` (`DepartmentID`, `DepartmentName`, `Location`) VALUES
(1, 'Data Analytics', 'Bonifacio Global City'),
(2, 'Cloud Infrastructure', 'Makati'),
(3, 'Cybersecurity', 'Ortigas'),
(4, 'Software Engineering', 'Quezon City'),
(5, 'Business Intelligence', 'Cebu');

-- --------------------------------------------------------

--
-- Table structure for table `employeeprojects`
--

CREATE TABLE `employeeprojects` (
  `EmployeeID` int(11) NOT NULL,
  `ProjectID` int(11) NOT NULL,
  `AssignedDate` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `employeeprojects`
--

INSERT INTO `employeeprojects` (`EmployeeID`, `ProjectID`, `AssignedDate`) VALUES
(1, 1, '2025-01-15'),
(2, 2, '2025-02-18'),
(3, 4, '2025-01-25'),
(3, 10, '2025-07-15'),
(4, 3, '2025-03-05'),
(5, 1, '2025-01-20'),
(5, 5, '2025-04-10'),
(6, 6, '2025-03-20'),
(7, 1, '2025-01-18'),
(7, 5, '2025-04-12'),
(8, 9, '2025-06-15'),
(9, 8, '2025-02-12'),
(10, 10, '2025-07-05'),
(11, 2, '2025-02-25'),
(11, 7, '2025-05-10'),
(12, 5, '2025-04-15'),
(13, 3, '2025-03-08'),
(14, 4, '2025-01-30'),
(15, 6, '2025-03-28'),
(16, 7, '2025-05-12'),
(17, 2, '2025-02-22'),
(18, 6, '2025-03-22'),
(18, 9, '2025-06-20'),
(19, 10, '2025-07-08'),
(20, 8, '2025-02-18');

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `EmployeeID` int(11) NOT NULL,
  `FirstName` varchar(50) NOT NULL,
  `LastName` varchar(50) NOT NULL,
  `Age` int(11) DEFAULT NULL,
  `Gender` varchar(10) DEFAULT NULL,
  `HireDate` date DEFAULT NULL,
  `Salary` decimal(10,2) DEFAULT NULL,
  `DepartmentID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`EmployeeID`, `FirstName`, `LastName`, `Age`, `Gender`, `HireDate`, `Salary`, `DepartmentID`) VALUES
(1, 'Mary Ehllaizabel', 'Año', 24, 'Female', '2023-07-10', 42000.00, 4),
(2, 'Rodney', 'Besonia', 31, 'Male', '2021-11-18', 68000.00, 2),
(3, 'Nathaniel', 'Esguerra', 29, 'Male', '2022-05-09', 59000.00, 1),
(4, 'Beatrice', 'Samonte', 27, 'Female', '2023-02-15', 51000.00, 3),
(5, 'Lance', 'Bautista', 35, 'Male', '2020-01-20', 94000.00, 2),
(6, 'Celine', 'Marquez', 26, 'Female', '2022-09-12', 56000.00, 5),
(7, 'Tristan', 'Villareal', 32, 'Male', '2019-08-30', 87000.00, 4),
(8, 'Janelle', 'Escobar', 28, 'Female', '2021-03-17', 61000.00, 1),
(9, 'Ezekiel', 'Navarro', 30, 'Male', '2020-12-01', 72000.00, 3),
(10, 'Patricia', 'Yumul', 25, 'Female', '2024-01-08', 47000.00, 5),
(11, 'Dominic', 'Quintos', 38, 'Male', '2018-06-21', 108000.00, 4),
(12, 'Kiara', 'Lazaro', 29, 'Female', '2022-04-14', 60000.00, 2),
(13, 'Rafael', 'Calumpang', 34, 'Male', '2019-10-05', 82000.00, 3),
(14, 'Mikaela', 'Soriano', 27, 'Female', '2023-06-28', 54000.00, 1),
(15, 'Cedric', 'Malabanan', 33, 'Male', '2021-07-16', 76000.00, 5),
(16, 'Ysabelle', 'Arceo', 24, 'Female', '2024-02-11', 45000.00, 4),
(17, 'Vincent', 'Abrenica', 37, 'Male', '2018-03-22', 115000.00, 2),
(18, 'Sophia', 'Del Rosario', 31, 'Female', '2020-09-19', 79000.00, 1),
(19, 'Gabriel', 'Ledesma', 28, 'Male', '2022-11-04', 63000.00, 5),
(20, 'Danica', 'Montemayor', 30, 'Female', '2021-05-27', 71000.00, 3);

-- --------------------------------------------------------

--
-- Table structure for table `projects`
--

CREATE TABLE `projects` (
  `ProjectID` int(11) NOT NULL,
  `ProjectName` varchar(100) NOT NULL,
  `StartDate` date DEFAULT NULL,
  `Budget` decimal(12,2) DEFAULT NULL,
  `DepartmentID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `projects`
--

INSERT INTO `projects` (`ProjectID`, `ProjectName`, `StartDate`, `Budget`, `DepartmentID`) VALUES
(1, 'Project Helios', '2025-01-10', 4500000.00, 4),
(2, 'Operation Nebula', '2025-02-15', 3200000.00, 2),
(3, 'Sentinel Shield', '2025-03-01', 2800000.00, 3),
(4, 'Insight Horizon', '2025-01-20', 1800000.00, 1),
(5, 'Atlas Migration', '2025-04-01', 5200000.00, 2),
(6, 'Quantum Ledger', '2025-03-12', 2500000.00, 5),
(7, 'Phoenix CRM', '2025-05-01', 3000000.00, 4),
(8, 'Aegis Firewall', '2025-02-05', 2100000.00, 3),
(9, 'Vision Pulse', '2025-06-10', 1700000.00, 1),
(10, 'Echo Intelligence', '2025-07-01', 3900000.00, 5);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `departments`
--
ALTER TABLE `departments`
  ADD PRIMARY KEY (`DepartmentID`);

--
-- Indexes for table `employeeprojects`
--
ALTER TABLE `employeeprojects`
  ADD PRIMARY KEY (`EmployeeID`,`ProjectID`),
  ADD KEY `ProjectID` (`ProjectID`);

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`EmployeeID`),
  ADD KEY `DepartmentID` (`DepartmentID`);

--
-- Indexes for table `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`ProjectID`),
  ADD KEY `DepartmentID` (`DepartmentID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `departments`
--
ALTER TABLE `departments`
  MODIFY `DepartmentID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `EmployeeID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `projects`
--
ALTER TABLE `projects`
  MODIFY `ProjectID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `employeeprojects`
--
ALTER TABLE `employeeprojects`
  ADD CONSTRAINT `employeeprojects_ibfk_1` FOREIGN KEY (`EmployeeID`) REFERENCES `employees` (`EmployeeID`),
  ADD CONSTRAINT `employeeprojects_ibfk_2` FOREIGN KEY (`ProjectID`) REFERENCES `projects` (`ProjectID`);

--
-- Constraints for table `employees`
--
ALTER TABLE `employees`
  ADD CONSTRAINT `employees_ibfk_1` FOREIGN KEY (`DepartmentID`) REFERENCES `departments` (`DepartmentID`);

--
-- Constraints for table `projects`
--
ALTER TABLE `projects`
  ADD CONSTRAINT `projects_ibfk_1` FOREIGN KEY (`DepartmentID`) REFERENCES `departments` (`DepartmentID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
