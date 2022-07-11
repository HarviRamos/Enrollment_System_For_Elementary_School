-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 29, 2021 at 10:28 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `enrollemnt_system`
--

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `Department_ID` int(90) NOT NULL,
  `DEPARTMENT_NAME` varchar(90) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`Department_ID`, `DEPARTMENT_NAME`) VALUES
(11, 'FILIPINO'),
(12, 'ENGLISH'),
(13, 'MATH'),
(14, 'SCIENCE'),
(15, 'HEKASI'),
(16, 'EPP');

-- --------------------------------------------------------

--
-- Table structure for table `enrolled`
--

CREATE TABLE `enrolled` (
  `Enrolled_ID` int(90) NOT NULL,
  `Student_ID` int(90) DEFAULT NULL,
  `NEW_ID` int(90) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `enrolled`
--

INSERT INTO `enrolled` (`Enrolled_ID`, `Student_ID`, `NEW_ID`) VALUES
(1, 20191, NULL),
(2, 20192, NULL),
(3, 20194, NULL),
(4, 20195, NULL),
(5, 20198, NULL),
(6, 201711, NULL),
(7, 201721, NULL),
(8, 201731, NULL),
(9, 201741, NULL),
(10, 201751, NULL),
(11, 201781, NULL),
(12, 201811, NULL),
(13, 201821, NULL),
(14, 201831, NULL),
(15, 201841, NULL),
(16, 201851, NULL),
(17, 201881, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `grade_section`
--

CREATE TABLE `grade_section` (
  `GradeSec_ID` int(90) NOT NULL,
  `GRADE` varchar(90) NOT NULL,
  `Section` varchar(90) NOT NULL,
  `Schedule_ID` int(90) NOT NULL,
  `Enrolled_ID` int(90) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `grade_section`
--

INSERT INTO `grade_section` (`GradeSec_ID`, `GRADE`, `Section`, `Schedule_ID`, `Enrolled_ID`) VALUES
(1, '2', 'JADE', 7, 1),
(2, '2', 'JADE', 8, 1),
(3, '2', 'JADE', 9, 1),
(4, '2', 'JADE', 10, 1),
(5, '2', 'JADE', 11, 1),
(6, '2', 'JADE', 12, 1),
(7, '2', 'JADE', 7, 2),
(8, '2', 'JADE', 8, 2),
(9, '2', 'JADE', 9, 2),
(10, '2', 'JADE', 10, 2),
(11, '2', 'JADE', 11, 2),
(12, '2', 'JADE', 12, 2),
(13, '2', 'JADE', 7, 3),
(14, '2', 'JADE', 8, 3),
(15, '2', 'JADE', 9, 3),
(16, '2', 'JADE', 10, 3),
(17, '2', 'JADE', 11, 3),
(18, '2', 'JADE', 12, 3),
(19, '2', 'JADE', 7, 4),
(20, '2', 'JADE', 8, 4),
(21, '2', 'JADE', 9, 4),
(22, '2', 'JADE', 10, 4),
(23, '2', 'JADE', 11, 4),
(24, '2', 'JADE', 12, 4),
(25, '2', 'JADE', 7, 5),
(26, '2', 'JADE', 8, 5),
(27, '2', 'JADE', 9, 5),
(28, '2', 'JADE', 10, 5),
(29, '2', 'JADE', 11, 5),
(30, '2', 'JADE', 12, 5),
(31, '4', 'GOLD', 19, 6),
(32, '4', 'GOLD', 20, 6),
(33, '4', 'GOLD', 21, 6),
(34, '4', 'GOLD', 22, 6),
(35, '4', 'GOLD', 23, 6),
(36, '4', 'GOLD', 24, 6),
(37, '4', 'GOLD', 19, 7),
(38, '4', 'GOLD', 20, 7),
(39, '4', 'GOLD', 21, 7),
(40, '4', 'GOLD', 22, 7),
(41, '4', 'GOLD', 23, 7),
(42, '4', 'GOLD', 24, 7),
(43, '4', 'GOLD', 19, 8),
(44, '4', 'GOLD', 20, 8),
(45, '4', 'GOLD', 21, 8),
(46, '4', 'GOLD', 22, 8),
(47, '4', 'GOLD', 23, 8),
(48, '4', 'GOLD', 24, 8),
(49, '4', 'GOLD', 19, 9),
(50, '4', 'GOLD', 20, 9),
(51, '4', 'GOLD', 21, 9),
(52, '4', 'GOLD', 22, 9),
(53, '4', 'GOLD', 23, 9),
(54, '4', 'GOLD', 24, 9),
(55, '4', 'GOLD', 19, 10),
(56, '4', 'GOLD', 20, 10),
(57, '4', 'GOLD', 21, 10),
(58, '4', 'GOLD', 22, 10),
(59, '4', 'GOLD', 23, 10),
(60, '4', 'GOLD', 24, 10),
(61, '4', 'GOLD', 19, 11),
(62, '4', 'GOLD', 20, 11),
(63, '4', 'GOLD', 21, 11),
(64, '4', 'GOLD', 22, 11),
(65, '4', 'GOLD', 23, 11),
(66, '4', 'GOLD', 24, 11),
(79, '5', 'DIAMOND', 25, 12),
(80, '5', 'DIAMOND', 26, 12),
(81, '5', 'DIAMOND', 27, 12),
(82, '5', 'DIAMOND', 28, 12),
(83, '5', 'DIAMOND', 29, 12),
(84, '5', 'DIAMOND', 30, 12),
(85, '5', 'DIAMOND', 25, 13),
(86, '5', 'DIAMOND', 26, 13),
(87, '5', 'DIAMOND', 27, 13),
(88, '5', 'DIAMOND', 28, 13),
(89, '5', 'DIAMOND', 29, 13),
(90, '5', 'DIAMOND', 30, 13),
(91, '5', 'DIAMOND', 25, 14),
(92, '5', 'DIAMOND', 26, 14),
(93, '5', 'DIAMOND', 27, 14),
(94, '5', 'DIAMOND', 28, 14),
(95, '5', 'DIAMOND', 29, 14),
(96, '5', 'DIAMOND', 30, 14),
(97, '5', 'DIAMOND', 25, 15),
(98, '5', 'DIAMOND', 26, 15),
(99, '5', 'DIAMOND', 27, 15),
(100, '5', 'DIAMOND', 28, 15),
(101, '5', 'DIAMOND', 29, 15),
(102, '5', 'DIAMOND', 30, 15),
(103, '5', 'DIAMOND', 25, 16),
(104, '5', 'DIAMOND', 26, 16),
(105, '5', 'DIAMOND', 27, 16),
(106, '5', 'DIAMOND', 28, 16),
(107, '5', 'DIAMOND', 29, 16),
(108, '5', 'DIAMOND', 30, 16),
(109, '5', 'DIAMOND', 25, 17),
(110, '5', 'DIAMOND', 26, 17),
(111, '5', 'DIAMOND', 27, 17),
(112, '5', 'DIAMOND', 28, 17),
(113, '5', 'DIAMOND', 29, 17),
(114, '5', 'DIAMOND', 30, 17);

-- --------------------------------------------------------

--
-- Table structure for table `new_student`
--

CREATE TABLE `new_student` (
  `NEW_ID` int(90) NOT NULL,
  `LASTname` varchar(90) NOT NULL,
  `FIRSTname` varchar(90) NOT NULL,
  `MIDDLEname` varchar(90) NOT NULL,
  `Age` int(80) NOT NULL,
  `Gender` varchar(90) NOT NULL,
  `Address` varchar(90) NOT NULL,
  `Email_add` varchar(90) NOT NULL,
  `Classification` varchar(90) NOT NULL,
  `Form137` varchar(90) NOT NULL,
  `Form136` varchar(90) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `old_student`
--

CREATE TABLE `old_student` (
  `Student_ID` int(90) NOT NULL,
  `LASTname` varchar(90) NOT NULL,
  `FIRSTname` varchar(90) NOT NULL,
  `MIDDLEname` varchar(90) NOT NULL,
  `Age` int(80) NOT NULL,
  `Gender` varchar(90) NOT NULL,
  `Address` varchar(90) NOT NULL,
  `Email_add` varchar(90) NOT NULL,
  `Classification` varchar(90) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `old_student`
--

INSERT INTO `old_student` (`Student_ID`, `LASTname`, `FIRSTname`, `MIDDLEname`, `Age`, `Gender`, `Address`, `Email_add`, `Classification`) VALUES
(20191, 'SAINT', 'LAURENT', 'LORESS', 8, 'MALE', '1645 ICTORINE, PASIG CITY', 'laurent.sAintlorx@gmail.com', 'OLD_STUDENT'),
(20192, 'JOHNSONS', 'MIA', 'LEVAE', 8, 'FEMALE', 'BLK 24 LOT 29,CAMMELA HOMES, PASIG CITY', 'JohnsMar2@yahoo.com', 'OLD_STUDENT'),
(20193, 'SANTOS', 'JOHN', 'LAUV', 7, 'MALE', 'BLK 1 LOT 25, MONACO HOMES, PASIG CITY', ' maoate@gmail.com', 'OLD_STUDENT'),
(20194, 'DELA CRUZ', 'MICHAEL', 'ANGELO', 7, 'MALE', 'BLK 25 LOT 1, MONACO HOMES, PASIG CITY', 'mariesate@gmail.com', 'OLD_STUDENT'),
(20195, 'FROST', 'MICHAEL', 'BELLO', 8, 'MALE', 'BLK 25 LOT 1, HACIENDA, PASIG CITY', 'FROSTemma@gmail.com', 'OLD_STUDENT'),
(20198, 'leBORN', 'LORD', 'St.God', 8, 'MALE', 'BLK 10 LOT 25, HLX, PASIG CITY', 'LORDdLC@gmail.com', 'OLD_STUDENT'),
(201711, 'DEKLA', 'CHULI', 'LO', 11, 'MALE', '1658 ICTORINE, PASIG CITY', 'ASDA@gmail.com', 'OLD_STUDENT'),
(201721, 'AVOX', 'COVIDAY', 'GA', 10, 'FEMALE', 'BLK 1 LOT 1,JDK HOMES, PASIG CITY', 'ASDAS@yahoo.com', 'OLD_STUDENT'),
(201731, 'KRAMER', 'THOR', 'KI', 11, 'MALE', 'BLK 1 LOT 26, JP.CO HOMES, PASIG CITY', 'THOR@gmail.com', 'OLD_STUDENT'),
(201741, 'XARAM', 'ANNERC JACOB', 'ANGE', 11, 'MALE', 'BLK 1 LOT 1, GEN HOMES, PASIG CITY', 'DASDe@gmail.com', 'OLD_STUDENT'),
(201751, 'MARCHEDES', 'HELLA', 'PA', 10, 'MALE', 'BLK 2 LOT 1, PASSIO HOMES, PASIG CITY', 'HELLAGODDES@gmail.com', 'OLD_STUDENT'),
(201781, 'SUNNY', 'TAE', 'GOS', 11, 'MALE', 'BLK 2 LOT 2, HVX, PASIG CITY', 'TAE@gmail.com', 'OLD_STUDENT'),
(201811, 'RAMOS', 'KIM CHULI', 'LOUV', 9, 'MALE', '1648 ICTORINE, PASIG CITY', 'LOUVX@gmail.com', 'OLD_STUDENT'),
(201821, 'LACUESTA', 'ANDRE LORD', 'GARCIA', 10, 'FEMALE', 'BLK 1 LOT 1,CAMMELA HOMES, PASIG CITY', 'GARCIAS2@yahoo.com', 'OLD_STUDENT'),
(201831, 'GARCIA', 'JTHOR', 'KIM', 9, 'MALE', 'BLK 1 LOT 26, MONACO HOMES, PASIG CITY', 'MINISOJ@gmail.com', 'OLD_STUDENT'),
(201841, 'GARACIA', 'MARC JACOB', 'ANGELICAN', 10, 'MALE', 'BLK 1 LOT 1, MONACO HOMES, PASIG CITY', 'MARCANGEe@gmail.com', 'OLD_STUDENT'),
(201851, 'MARCH', 'HELA', 'PARK', 10, 'MALE', 'BLK 2 LOT 1, HACIENDA, PASIG CITY', 'ANGELOXH@gmail.com', 'OLD_STUDENT'),
(201881, 'SUNRAY', 'MAYBUNGA', 'GODDES', 9, 'MALE', 'BLK 2 LOT 2, HLX, PASIG CITY', 'LORCHARLESDC@gmail.com', 'OLD_STUDENT');

-- --------------------------------------------------------

--
-- Table structure for table `schedule`
--

CREATE TABLE `schedule` (
  `Schedule_ID` int(90) NOT NULL,
  `Schedule_code` int(80) NOT NULL,
  `Subject_ID` int(90) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `schedule`
--

INSERT INTO `schedule` (`Schedule_ID`, `Schedule_code`, `Subject_ID`) VALUES
(1, 10001, 1),
(2, 10001, 7),
(3, 10001, 13),
(4, 10001, 19),
(5, 10001, 25),
(6, 10001, 31),
(7, 10002, 2),
(8, 10002, 8),
(9, 10002, 14),
(10, 10002, 20),
(11, 10002, 26),
(12, 10002, 32),
(13, 10003, 3),
(14, 10003, 9),
(15, 10003, 15),
(16, 10003, 21),
(17, 10003, 27),
(18, 10003, 33),
(19, 10004, 4),
(20, 10004, 10),
(21, 10004, 16),
(22, 10004, 22),
(23, 10004, 28),
(24, 10004, 34),
(25, 10005, 5),
(26, 10005, 11),
(27, 10005, 17),
(28, 10005, 23),
(29, 10005, 29),
(30, 10005, 35),
(31, 10006, 6),
(32, 10006, 12),
(33, 10006, 18),
(34, 10006, 24),
(35, 10006, 30),
(36, 10006, 36);

-- --------------------------------------------------------

--
-- Table structure for table `subject`
--

CREATE TABLE `subject` (
  `Subject_ID` int(90) NOT NULL,
  `Subject_name` varchar(90) NOT NULL,
  `Subject_code` int(80) NOT NULL,
  `Subject_date` varchar(90) NOT NULL,
  `Subject_time` varchar(90) NOT NULL,
  `Teacher_ID` int(90) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `subject`
--

INSERT INTO `subject` (`Subject_ID`, `Subject_name`, `Subject_code`, `Subject_date`, `Subject_time`, `Teacher_ID`) VALUES
(1, 'FILIPINO I', 101, 'MON-FRI', '7-8 AM', 1),
(2, 'FILIPINO II', 202, 'MON-FRI', '7-8 AM', 2),
(3, 'FILIPINO III', 303, 'MON-FRI', '7-8 AM', 3),
(4, 'FILIPINO IV', 404, 'MON-FRI', '7-8 AM', 4),
(5, 'FILIPINO V', 505, 'MON-FRI', '7-8 AM', 5),
(6, 'FILIPINO VI', 606, 'MON-FRI', '7-8 AM', 6),
(7, 'ENGLISH I', 101, 'MON-FRI', '8-9 AM', 8),
(8, 'ENGLISH II', 202, 'MON-FRI', '8-9 AM', 9),
(9, 'ENGLISH III', 303, 'MON-FRI', '8-9 AM', 10),
(10, 'ENGLISH IV', 404, 'MON-FRI', '8-9 AM', 11),
(11, 'ENGLISH V', 505, 'MON-FRI', '8-9 AM', 12),
(12, 'ENGLISH VI', 606, 'MON-FRI', '8-9 AM', 13),
(13, 'MATH I', 101, 'MON-FRI', '10-11 AM', 14),
(14, 'MATH II', 202, 'MON-FRI', '10-11 AM', 15),
(15, 'MATH III', 303, 'MON-FRI', '10-11 AM', 16),
(16, 'MATH IV', 404, 'MON-FRI', '10-11 AM', 17),
(17, 'MATH V', 505, 'MON-FRI', '10-11 AM', 18),
(18, 'MATH VI', 606, 'MON-FRI', '10-11 AM', 19),
(19, 'SCIENCE I', 101, 'MON-FRI', '1-2 PM', 20),
(20, 'SCIENCE II', 202, 'MON-FRI', '1-2 PM', 21),
(21, 'SCIENCE III', 303, 'MON-FRI', '1-2 PM', 22),
(22, 'SCIENCE IV', 404, 'MON-FRI', '1-2 PM', 23),
(23, 'SCIENCE V', 505, 'MON-FRI', '1-2 PM', 24),
(24, 'SCIENCE VI', 606, 'MON-FRI', '1-2 PM', 25),
(25, 'HEKASI I', 101, 'MON-FRI', '2-3 PM', 26),
(26, 'HEKASI II', 202, 'MON-FRI', '2-3 PM', 27),
(27, 'HEKASI III', 303, 'MON-FRI', '2-3 PM', 28),
(28, 'HEKASI IV', 404, 'MON-FRI', '2-3 PM', 29),
(29, 'HEKASI V', 505, 'MON-FRI', '2-3 PM', 30),
(30, 'HEKASI VI', 606, 'MON-FRI', '2-3 PM', 31),
(31, 'EPP I', 101, 'MON-FRI', '3-4 PM', 32),
(32, 'EPP II', 202, 'MON-FRI', '3-4 PM', 33),
(33, 'EPP III', 303, 'MON-FRI', '3-4 PM', 34),
(34, 'EPP IV', 404, 'MON-FRI', '3-4 PM', 35),
(35, 'EPP V', 505, 'MON-FRI', '3-4 PM', 36),
(36, 'EPP VI', 606, 'MON-FRI', '3-4 PM', 37);

-- --------------------------------------------------------

--
-- Table structure for table `teacher`
--

CREATE TABLE `teacher` (
  `Teacher_ID` int(90) NOT NULL,
  `LASTname` varchar(90) NOT NULL,
  `FIRSTname` varchar(90) NOT NULL,
  `MIDDLEname` varchar(90) NOT NULL,
  `Department_ID` int(90) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `teacher`
--

INSERT INTO `teacher` (`Teacher_ID`, `LASTname`, `FIRSTname`, `MIDDLEname`, `Department_ID`) VALUES
(1, 'FROST', 'EMMA', 'LAUV', 11),
(2, 'XAVIER', 'CHARLES', 'MOLINA', 11),
(3, 'GRACIA', 'CATHERINE', 'RAMOS', 11),
(4, 'DELA CRUZ', 'CHARLES', 'SARMIENTO', 11),
(5, 'SUMMER', 'SARAH', 'VERSOA', 11),
(6, 'VERSOLA', 'ASH', 'KIM', 11),
(7, 'ABERINE', 'SHY', 'RAZON', 11),
(8, 'MARIE', 'HWASA', 'D.VEROSE', 12),
(9, 'JENIA', 'HOSILET', 'RAMOS', 12),
(10, 'JENNIE', 'KIM', 'KIM', 12),
(11, 'MANOBAN', 'LISA', 'KIM', 12),
(12, 'ROSE', 'ANNA', 'BLACK', 12),
(13, 'MARITES', 'ANNE', 'KALEV', 12),
(14, 'MLOAN', 'EUDORA', 'ALEV', 13),
(15, 'RAMOS', 'ALUCARD', 'MAGE', 13),
(16, 'FROST', 'CURRY', 'VICTOR', 13),
(17, 'JANDI', 'VLOSO', 'LANAA', 13),
(18, 'LANA', 'CONNOR', 'XAVIER', 13),
(19, 'ARIANA', 'GRANDE', 'LAUV', 13),
(20, 'ARIANA', 'VEGA', 'CAVI', 14),
(21, 'DELA CRUZ', 'AUSTI', 'CAVIS', 14),
(22, 'GRANDE', 'CHUN-LI', 'FIGHTER', 14),
(23, 'VEGA', 'CHRISTOPHER', 'BOSTON', 14),
(24, 'MIKE', 'CHRIST', 'SAINT', 14),
(25, 'SAINT', 'ANNE', 'ELEKAN', 14),
(26, 'NACHOS', 'ELEKTRA', 'XAVIER', 15),
(27, 'MONROE', 'ORORO', 'CALEB', 15),
(28, 'RAMOS', 'LOGAN', 'JAYSTIN', 15),
(29, 'FUMUSO', 'CHRIST', 'BARON', 15),
(30, 'BARRON', 'AMETHYST', 'SAINT', 15),
(31, 'PETER', 'EVAN', 'ELEVEN', 15),
(32, 'NACHOS', 'ELEKTRA', 'COLLIN', 16),
(33, 'MAX', 'COLLIN', 'CALEB', 16),
(34, 'RAMOS', 'JADE', 'XENON', 16),
(35, 'LOGAN', 'MARIE ANNE', 'BARON', 16),
(36, 'BAXTAX', 'CRYETE;', 'LORD', 16),
(37, 'ELITE', 'EVAN', 'PETER', 16),
(38, 'XAVIER', 'CHARLES', 'MOLINA', 11),
(39, 'GRACIA', 'CATHERINE', 'RAMOS', 11),
(40, 'DELA CRUZ', 'CHARLES', 'SARMIENTO', 11),
(41, 'SUMMER', 'SARAH', 'VERSOA', 11),
(42, 'VERSOLA', 'ASH', 'KIM', 11),
(43, 'ABERINE', 'SHY', 'RAZON', 11),
(44, 'MARIE', 'HWASA', 'D.VEROSE', 12),
(45, 'JENIA', 'HOSILET', 'RAMOS', 12),
(46, 'JENNIE', 'KIM', 'KIM', 12),
(47, 'MANOBAN', 'LISA', 'KIM', 12),
(48, 'ROSE', 'ANNA', 'BLACK', 12),
(49, 'MARITES', 'ANNE', 'KALEV', 12),
(50, 'MLOAN', 'EUDORA', 'ALEV', 13),
(51, 'RAMOS', 'ALUCARD', 'MAGE', 13),
(52, 'FROST', 'CURRY', 'VICTOR', 13),
(53, 'JANDI', 'VLOSO', 'LANAA', 13),
(54, 'LANA', 'CONNOR', 'XAVIER', 13),
(55, 'ARIANA', 'GRANDE', 'LAUV', 13),
(56, 'ARIANA', 'VEGA', 'CAVI', 14),
(57, 'DELA CRUZ', 'AUSTI', 'CAVIS', 14),
(58, 'GRANDE', 'CHUN-LI', 'FIGHTER', 14),
(59, 'VEGA', 'CHRISTOPHER', 'BOSTON', 14),
(60, 'MIKE', 'CHRIST', 'SAINT', 14),
(61, 'SAINT', 'ANNE', 'ELEKAN', 14),
(62, 'NACHOS', 'ELEKTRA', 'XAVIER', 15),
(63, 'MONROE', 'ORORO', 'CALEB', 15),
(64, 'RAMOS', 'LOGAN', 'JAYSTIN', 15),
(65, 'FUMUSO', 'CHRIST', 'BARON', 15),
(66, 'BARRON', 'AMETHYST', 'SAINT', 15),
(67, 'PETER', 'EVAN', 'ELEVEN', 15),
(68, 'NACHOS', 'ELEKTRA', 'COLLIN', 16),
(69, 'MAX', 'COLLIN', 'CALEB', 16),
(70, 'RAMOS', 'JADE', 'XENON', 16),
(71, 'LOGAN', 'MARIE ANNE', 'BARON', 16),
(72, 'BAXTAX', 'CRYETE;', 'LORD', 16),
(73, 'ELITE', 'EVAN', 'PETER', 16);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`Department_ID`);

--
-- Indexes for table `enrolled`
--
ALTER TABLE `enrolled`
  ADD PRIMARY KEY (`Enrolled_ID`),
  ADD KEY `Student_ID` (`Student_ID`),
  ADD KEY `NEW_ID` (`NEW_ID`);

--
-- Indexes for table `grade_section`
--
ALTER TABLE `grade_section`
  ADD PRIMARY KEY (`GradeSec_ID`),
  ADD KEY `Schedule_ID` (`Schedule_ID`),
  ADD KEY `Enrolled_ID` (`Enrolled_ID`);

--
-- Indexes for table `new_student`
--
ALTER TABLE `new_student`
  ADD PRIMARY KEY (`NEW_ID`);

--
-- Indexes for table `old_student`
--
ALTER TABLE `old_student`
  ADD PRIMARY KEY (`Student_ID`);

--
-- Indexes for table `schedule`
--
ALTER TABLE `schedule`
  ADD PRIMARY KEY (`Schedule_ID`),
  ADD KEY `Subject_ID` (`Subject_ID`);

--
-- Indexes for table `subject`
--
ALTER TABLE `subject`
  ADD PRIMARY KEY (`Subject_ID`),
  ADD KEY `Teacher_ID` (`Teacher_ID`);

--
-- Indexes for table `teacher`
--
ALTER TABLE `teacher`
  ADD PRIMARY KEY (`Teacher_ID`),
  ADD KEY `Department_ID` (`Department_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `department`
--
ALTER TABLE `department`
  MODIFY `Department_ID` int(90) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `enrolled`
--
ALTER TABLE `enrolled`
  MODIFY `Enrolled_ID` int(90) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `grade_section`
--
ALTER TABLE `grade_section`
  MODIFY `GradeSec_ID` int(90) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=115;

--
-- AUTO_INCREMENT for table `new_student`
--
ALTER TABLE `new_student`
  MODIFY `NEW_ID` int(90) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `schedule`
--
ALTER TABLE `schedule`
  MODIFY `Schedule_ID` int(90) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `subject`
--
ALTER TABLE `subject`
  MODIFY `Subject_ID` int(90) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `teacher`
--
ALTER TABLE `teacher`
  MODIFY `Teacher_ID` int(90) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `enrolled`
--
ALTER TABLE `enrolled`
  ADD CONSTRAINT `enrolled_ibfk_1` FOREIGN KEY (`Student_ID`) REFERENCES `old_student` (`Student_ID`),
  ADD CONSTRAINT `enrolled_ibfk_2` FOREIGN KEY (`NEW_ID`) REFERENCES `new_student` (`NEW_ID`);

--
-- Constraints for table `grade_section`
--
ALTER TABLE `grade_section`
  ADD CONSTRAINT `grade_section_ibfk_1` FOREIGN KEY (`Schedule_ID`) REFERENCES `schedule` (`Schedule_ID`),
  ADD CONSTRAINT `grade_section_ibfk_2` FOREIGN KEY (`Enrolled_ID`) REFERENCES `enrolled` (`Enrolled_ID`);

--
-- Constraints for table `schedule`
--
ALTER TABLE `schedule`
  ADD CONSTRAINT `schedule_ibfk_1` FOREIGN KEY (`Subject_ID`) REFERENCES `subject` (`Subject_ID`);

--
-- Constraints for table `subject`
--
ALTER TABLE `subject`
  ADD CONSTRAINT `subject_ibfk_1` FOREIGN KEY (`Teacher_ID`) REFERENCES `teacher` (`Teacher_ID`);

--
-- Constraints for table `teacher`
--
ALTER TABLE `teacher`
  ADD CONSTRAINT `teacher_ibfk_1` FOREIGN KEY (`Department_ID`) REFERENCES `department` (`Department_ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
