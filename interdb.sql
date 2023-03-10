-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 30, 2019 at 11:38 PM
-- Server version: 10.1.34-MariaDB
-- PHP Version: 7.2.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `internsdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `accepted`
--

CREATE TABLE `accepted` (
  `password` varchar(50) NOT NULL,
  `section` varchar(20) NOT NULL,
  `Sdate` date NOT NULL,
  `Edate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(50) NOT NULL,
  `username` varchar(250) NOT NULL,
  `email` varchar(150) NOT NULL,
  `password` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `email`, `password`) VALUES
(1, 'Nii Jesse', 'jesse@admin.com', 'uuuu');

-- --------------------------------------------------------

--
-- Table structure for table `admin_section`
--

CREATE TABLE `admin_section` (
  `internID` varchar(150) NOT NULL,
  `fullname` varchar(250) NOT NULL,
  `Department` varchar(250) NOT NULL,
  `startDate` date NOT NULL,
  `endDate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `bs_section`
--

CREATE TABLE `bs_section` (
  `internID` varchar(150) NOT NULL,
  `fullname` varchar(250) NOT NULL,
  `Department` varchar(250) NOT NULL,
  `startDate` date NOT NULL,
  `endDate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `clock_in`
--

CREATE TABLE `clock_in` (
  `InternID` varchar(50) NOT NULL,
  `fname` varchar(50) NOT NULL,
  `InternDepartment` varchar(20) NOT NULL,
  `date_in` date NOT NULL,
  `time_in` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `clock_in`
--

INSERT INTO `clock_in` (`InternID`, `fname`, `InternDepartment`, `date_in`, `time_in`) VALUES
('3', 'Adiza', 'MIS', '2030-12-19', '0000-00-00 00:00:00.000000'),
('', '', '', '2019-08-29', '2019-08-29 14:32:59.000000'),
('', '', '', '2019-08-29', '2019-08-29 14:40:39.000000'),
('', 'jcoy@hamil.com', '', '2019-08-29', '2019-08-29 14:44:57.000000'),
('', 'Oko Jesse Nii Mccoy Jnr', '', '2019-08-29', '2019-08-29 14:47:22.000000'),
('', 'Oko Jesse Nii Mccoy Jnr', 'MIS', '2019-08-29', '2019-08-29 14:48:40.000000'),
('3', 'Oko Jesse Nii Mccoy Jnr', 'MIS', '2019-08-29', '2019-08-29 15:20:04.000000'),
('3', 'Oko Jesse Nii Mccoy Jnr', 'MIS', '2019-08-29', '2019-08-29 15:29:53.000000'),
('3', 'Oko Jesse Nii Mccoy Jnr', 'MIS', '2019-08-29', '2019-08-29 22:14:58.000000'),
('3', 'Oko Jesse Nii Mccoy Jnr', 'MIS', '2019-08-29', '2019-08-29 22:16:15.000000'),
('3', 'Oko Jesse Nii Mccoy Jnr', 'MIS', '2019-08-29', '2019-08-29 22:25:37.000000'),
('3', 'Oko Jesse Nii Mccoy Jnr', 'MIS', '2019-08-30', '2019-08-30 07:18:46.000000'),
('3', 'Oko Jesse Nii Mccoy Jnr', 'MIS', '2019-08-30', '2019-08-30 09:36:25.000000');

-- --------------------------------------------------------

--
-- Table structure for table `clock_out`
--

CREATE TABLE `clock_out` (
  `internID` varchar(50) NOT NULL,
  `fname` varchar(50) NOT NULL,
  `internDepartment` varchar(20) NOT NULL,
  `date_out` date NOT NULL,
  `time_out` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `clock_out`
--

INSERT INTO `clock_out` (`internID`, `fname`, `internDepartment`, `date_out`, `time_out`) VALUES
('3', 'Oko Jesse Nii Mccoy Jnr', 'MIS', '2019-08-29', '2019-08-29 15:29:06'),
('3', 'Oko Jesse Nii Mccoy Jnr', 'MIS', '2019-08-29', '2019-08-29 15:29:59'),
('3', 'Oko Jesse Nii Mccoy Jnr', 'MIS', '2019-08-29', '2019-08-29 22:15:03'),
('3', 'Oko Jesse Nii Mccoy Jnr', 'MIS', '2019-08-29', '2019-08-29 22:16:07'),
('3', 'Oko Jesse Nii Mccoy Jnr', 'MIS', '2019-08-30', '2019-08-30 07:18:51');

-- --------------------------------------------------------

--
-- Table structure for table `cst_section`
--

CREATE TABLE `cst_section` (
  `internID` varchar(150) NOT NULL,
  `fullname` varchar(250) NOT NULL,
  `Department` varchar(250) NOT NULL,
  `startDate` date NOT NULL,
  `endDate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `dm_section`
--

CREATE TABLE `dm_section` (
  `internID` varchar(150) NOT NULL,
  `fullname` varchar(250) NOT NULL,
  `Department` varchar(250) NOT NULL,
  `startDate` date NOT NULL,
  `endDate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `icti_section`
--

CREATE TABLE `icti_section` (
  `internID` varchar(150) NOT NULL,
  `fullname` varchar(250) NOT NULL,
  `Department` varchar(250) NOT NULL,
  `startDate` date NOT NULL,
  `endDate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `interns`
--

CREATE TABLE `interns` (
  `id` int(11) NOT NULL,
  `internID` varchar(150) NOT NULL,
  `fullname` varchar(550) NOT NULL,
  `DepartName` varchar(350) NOT NULL,
  `DepartSection` varchar(200) NOT NULL,
  `Specialty` varchar(150) NOT NULL,
  `InternEmail` varchar(250) NOT NULL,
  `InternPassword` varchar(200) NOT NULL,
  `startDate` date NOT NULL,
  `endDate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `interns`
--

INSERT INTO `interns` (`id`, `internID`, `fullname`, `DepartName`, `DepartSection`, `Specialty`, `InternEmail`, `InternPassword`, `startDate`, `endDate`) VALUES
(30, '1', 'NIi Mccoy', 'Management Information System', 'ICT Infrastructure', 'Networking', 'jmail@yahoo.com', 'jjjj', '2019-08-01', '2019-08-31'),
(35, '2', 'Jesse Odoi', 'Management Information System', 'ICT Infrastructure', 'Engineering', 'jesse@mail.com', 'mmmm', '2019-08-01', '2019-08-02'),
(36, '3', 'Oko Jesse Nii Mccoy Jnr', 'Management Information System', 'Business Solution', 'Software Development', 'jcoy@hamil.com', 'jcoy22', '2019-08-01', '2019-08-23');

-- --------------------------------------------------------

--
-- Table structure for table `intern_r`
--

CREATE TABLE `intern_r` (
  `internID` varchar(50) NOT NULL,
  `fname` varchar(200) NOT NULL,
  `report` varchar(200) NOT NULL,
  `InternDepartment` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `intern_r`
--

INSERT INTO `intern_r` (`internID`, `fname`, `report`, `InternDepartment`) VALUES
('2', 'Adiza Alhassan', 'I am happy to be here', 'MIS'),
('3', 'Adiza', 'REPORT', 'MIS'),
('3', 'Oko Jesse Nii Mccoy Jnr', 'ccvcvcvc', 'MIS'),
('3', 'Oko Jesse Nii Mccoy Jnr', 'bdfhhg', 'MIS'),
('3', 'Oko Jesse Nii Mccoy Jnr', '', 'MIS'),
('3', 'Oko Jesse Nii Mccoy Jnr', '', 'MIS');

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `ID` int(50) NOT NULL,
  `fname` varchar(150) NOT NULL,
  `gender` varchar(50) NOT NULL,
  `dob` date NOT NULL,
  `nationality` varchar(200) NOT NULL,
  `number` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `resaddress` varchar(250) NOT NULL,
  `school` varchar(250) NOT NULL,
  `course` varchar(150) NOT NULL,
  `level` varchar(50) NOT NULL,
  `specialty` varchar(150) NOT NULL,
  `caretaker` varchar(50) NOT NULL,
  `fullname` varchar(250) NOT NULL,
  `pgender` varchar(50) NOT NULL,
  `pemail` varchar(50) NOT NULL,
  `pnumber` varchar(50) NOT NULL,
  `presaddress` varchar(250) NOT NULL,
  `createdDate` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`ID`, `fname`, `gender`, `dob`, `nationality`, `number`, `email`, `resaddress`, `school`, `course`, `level`, `specialty`, `caretaker`, `fullname`, `pgender`, `pemail`, `pnumber`, `presaddress`, `createdDate`) VALUES
(1, 'NIi Mccoy', 'Male', '2019-07-10', 'Ghanaian', '1234567898765', 'jmail@yahoo.com', '8th Street Mall Osu', 'GTUC', 'BIT', '300', 'Networking', 'Guardian', 'NaaBabay', 'Female', 'naa@mail.com', '2435467898765', '9th Opposite Mall', '2019-07-30 16:09:58'),
(2, 'Jesse Odoi', 'Male', '2018-04-04', 'Ghanaian', '123456255', 'jesse@mail.com', '1st Street La', 'University Of Ghana ', 'Web Development', '400', 'Engineering', 'Guardian', 'Nii Tettey', 'Male', 'niit@big.com', '788555440', '9th Opposite Mall', '2019-07-31 09:45:21'),
(3, 'Oko Jesse Nii Mccoy Jnr', 'Male', '1997-06-11', 'American', '1223345412', 'jcoy@hamil.com', 'Ever Green Cali', 'StandFord University', 'Basic Programmin', '300', 'Software Development', 'Guardian', 'Kpakpo Waller', 'Male', 'ephy@mail.com', '024488879654', 'Ghana POBox 1223Dansoman', '2019-07-31 10:16:54'),
(4, 'Abel Nyarko', 'Male', '2019-07-16', 'Libarian', '02011214111', 'a@yahoo.com', '21st Jump Street', 'University Of Cape Coast', 'Building And Tech', '400', 'Database Administration', 'Guardian', 'Joseph Bart', 'Male', 'jpla@gmail.com', '101010101010', 'Ghana POBox 1223Dansoman', '2019-07-31 14:08:37'),
(5, 'Adiza Alhassan', 'Female', '2019-01-31', 'Ghanaian', '0243909535', 'kuburatuadiza5@gmail.com', 'Accra', 'University of Capecoast', 'Bsc. Information Technology', '300', 'Software Development', 'Parent', 'Ramatu AbdulRahman', 'Female', 'rama@gmail.com', '02443989535', 'E334/15', '2019-08-15 08:36:18'),
(6, 'Alhassan Abu', 'Male', '2019-08-20', 'Ghanaian', '0243909535', 'fkfarouk@gmail.com', 'Tamale', 'University of Capecoast', 'Bsc. Computer Science', '300', 'Networking', 'Parent', 'AbdulRahman', 'Male', 'abdul@gmail.com', '02443989535', 'Accra 441', '2019-08-19 15:18:20'),
(7, 'Adiza Alhassan', 'Male', '1999-08-20', 'Ghanaian', '0243909535', 'mo@gmail.com', 'Accra', 'University of Ghana', 'Bsc. Information Technology', '400', 'Computer Hardware', 'Guardian', 'AbdulRahman', 'Female', 'rama@gmail.com', '0278679768', 'Accra 441', '2019-08-19 15:24:07'),
(8, 'Adiza Alhassan', 'Female', '2019-08-01', 'Ghanaian', '0243909535', 'ella@vra.com', 'Tamale', 'University of Capecoast', 'Bsc. Information Technology', '200', 'Networking', 'Guardian', 'Ramatu AbdulRahman', 'Female', 'rama@gmail.com', '0278679768', 'E334/15', '2019-08-27 09:30:38');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `interns`
--
ALTER TABLE `interns`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `interns`
--
ALTER TABLE `interns`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `ID` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
