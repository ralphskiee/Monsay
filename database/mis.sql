-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 27, 2018 at 03:05 PM
-- Server version: 10.1.26-MariaDB
-- PHP Version: 7.1.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mis`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `admin_id` int(20) NOT NULL,
  `position` varchar(25) NOT NULL,
  `fname` varchar(25) NOT NULL,
  `lname` varchar(25) NOT NULL,
  `birthday` date NOT NULL,
  `age` int(25) NOT NULL,
  `address` varchar(25) NOT NULL,
  `email` varchar(25) NOT NULL,
  `contact` int(25) NOT NULL,
  `status` varchar(25) NOT NULL,
  `password` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`admin_id`, `position`, `fname`, `lname`, `birthday`, `age`, `address`, `email`, `contact`, `status`, `password`) VALUES
(12345, 'admin', 'admin', 'admin', '1997-01-30', 20, 'Las Pinas City', 'rmhsadmin@gmail.com', 123456789, 'Single', 'admin1');

-- --------------------------------------------------------

--
-- Table structure for table `archive_admin`
--

CREATE TABLE `archive_admin` (
  `admin_id` int(25) NOT NULL,
  `position` varchar(25) NOT NULL,
  `fname` varchar(25) NOT NULL,
  `lname` varchar(25) NOT NULL,
  `birthday` date NOT NULL,
  `age` int(25) NOT NULL,
  `address` varchar(25) NOT NULL,
  `email` varchar(25) NOT NULL,
  `contact` int(25) NOT NULL,
  `status` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `archive_grading`
--

CREATE TABLE `archive_grading` (
  `id_num` int(25) NOT NULL,
  `year_level` varchar(25) NOT NULL,
  `subject` varchar(25) NOT NULL,
  `grade` int(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `archive_schedule`
--

CREATE TABLE `archive_schedule` (
  `teacher` varchar(25) NOT NULL,
  `year_level` varchar(25) NOT NULL,
  `time` time(6) NOT NULL,
  `day` varchar(25) NOT NULL,
  `section` varchar(25) NOT NULL,
  `adviser` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `archive_section`
--

CREATE TABLE `archive_section` (
  `year_level` varchar(25) NOT NULL,
  `section_name` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `archive_student`
--

CREATE TABLE `archive_student` (
  `id_num` int(20) NOT NULL,
  `fname` varchar(25) NOT NULL,
  `lname` varchar(25) NOT NULL,
  `birthday` date NOT NULL,
  `age` int(25) NOT NULL,
  `gender` varchar(25) NOT NULL,
  `address` varchar(25) NOT NULL,
  `contact` int(25) NOT NULL,
  `status` varchar(25) NOT NULL,
  `email` varchar(25) NOT NULL,
  `year` varchar(25) NOT NULL,
  `section` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `archive_subject`
--

CREATE TABLE `archive_subject` (
  `year_level` varchar(25) NOT NULL,
  `subject` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `archive_teacher`
--

CREATE TABLE `archive_teacher` (
  `teacher_id` int(25) NOT NULL,
  `fname` varchar(25) NOT NULL,
  `lname` varchar(25) NOT NULL,
  `birthday` date NOT NULL,
  `age` int(25) NOT NULL,
  `gender` varchar(25) NOT NULL,
  `email` varchar(25) NOT NULL,
  `advisory` varchar(25) NOT NULL,
  `subject` varchar(25) NOT NULL,
  `address` varchar(25) NOT NULL,
  `contact` int(25) NOT NULL,
  `status` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `grading`
--

CREATE TABLE `grading` (
  `id_num` int(25) NOT NULL,
  `year_level` varchar(25) NOT NULL,
  `subject` varchar(25) NOT NULL,
  `grade` int(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `pre_registration`
--

CREATE TABLE `pre_registration` (
  `ctrl_num` int(25) NOT NULL,
  `studname` varchar(50) NOT NULL,
  `birthday` date NOT NULL,
  `age` int(25) NOT NULL,
  `email` varchar(25) NOT NULL,
  `religion` varchar(25) NOT NULL,
  `gender` varchar(25) NOT NULL,
  `address` varchar(25) NOT NULL,
  `contact` int(25) NOT NULL,
  `parent_guard` varchar(25) NOT NULL,
  `pgcontact` int(25) NOT NULL,
  `status` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pre_registration`
--

INSERT INTO `pre_registration` (`ctrl_num`, `studname`, `birthday`, `age`, `email`, `religion`, `gender`, `address`, `contact`, `parent_guard`, `pgcontact`, `status`) VALUES
(5, 'Thalia Markova', '1997-03-02', 20, 'asaskda@gmail.com', 'Roman Catholic', 'Male', 'klasdklzxkclasdj', 23232123, 'aksjdaxzkcjz', 823712731, 'Pending');

-- --------------------------------------------------------

--
-- Table structure for table `register`
--

CREATE TABLE `register` (
  `name` varchar(25) NOT NULL,
  `email` varchar(25) NOT NULL,
  `contact` int(25) NOT NULL,
  `password` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `register`
--

INSERT INTO `register` (`name`, `email`, `contact`, `password`) VALUES
('', 'ralph@gmail.com', 1234567890, '1234567'),
('', 'ralph3@gmail.com', 1231329, '123123'),
('', 'aasdd@yahoo.com', 1231329, 'aasdkasd'),
('blobbers', 'skska@gmail.com', 12318231, 'alsdaks');

-- --------------------------------------------------------

--
-- Table structure for table `schedule`
--

CREATE TABLE `schedule` (
  `scheid` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `schedule`
--

INSERT INTO `schedule` (`scheid`) VALUES
('SAM123'),
('SAM231');

-- --------------------------------------------------------

--
-- Table structure for table `schedule_subject`
--

CREATE TABLE `schedule_subject` (
  `scheid` varchar(10) NOT NULL,
  `day` varchar(10) NOT NULL,
  `time` varchar(10) NOT NULL,
  `subid` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `schedule_subject`
--

INSERT INTO `schedule_subject` (`scheid`, `day`, `time`, `subid`) VALUES
('SAM123', '7:00', '8:00', 'M102'),
('SAM123', '8:00', '7:00', 'S101'),
('SAM231', '9:00', '10', 'H103'),
('SAM123', '123', '123', 'S101'),
('SAM123', '321', '321', 'S101');

-- --------------------------------------------------------

--
-- Table structure for table `section`
--

CREATE TABLE `section` (
  `secid` varchar(25) NOT NULL,
  `section_name` varchar(25) NOT NULL,
  `year_level` varchar(25) NOT NULL,
  `scheid` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `section`
--

INSERT INTO `section` (`secid`, `section_name`, `year_level`, `scheid`) VALUES
('12345', 'Bethlehem', 'Kinder', 'SAM123'),
('54321', 'Amity', 'Preparatory', 'SAM231');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `id_num` int(25) NOT NULL,
  `studname` varchar(50) NOT NULL,
  `email` varchar(25) NOT NULL,
  `birthday` date NOT NULL,
  `age` int(25) NOT NULL,
  `contact` int(25) NOT NULL,
  `gender` varchar(25) NOT NULL,
  `religion` varchar(25) NOT NULL,
  `address` varchar(25) NOT NULL,
  `parent_guard` varchar(25) NOT NULL,
  `pgcontact` int(25) NOT NULL,
  `year` varchar(25) NOT NULL,
  `secid` varchar(25) NOT NULL,
  `status` varchar(25) NOT NULL,
  `password` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`id_num`, `studname`, `email`, `birthday`, `age`, `contact`, `gender`, `religion`, `address`, `parent_guard`, `pgcontact`, `year`, `secid`, `status`, `password`) VALUES
(1, 'Gilberto Durugdug', 'GILBERT@gmail.com', '1997-04-09', 20, 1234567890, 'male', 'sad boys', 'Tuguegarao', 'Urduja', 123123123, '4th year', '12345', 'Single', '12345'),
(2, 'Havana', 'Obeybe@gmail.com', '2002-05-27', 0, 1231231231, 'Female', 'Roman Catholic', 'asjdlasjdlk', 'asldjalksdj', 12312313, 'Kinder', '12345', 'Enrolled', ''),
(23423, 'acqaw', 'jbsddvisb', '0000-00-00', 32, 328772, 'Male', 'Roman Catholic', 'owehf9eorh943', '93urhwnierb', 24523, 'Kinder', '12345', 'qwifq', ''),
(23424, 'John', 'bentong@gmail.com', '2005-03-24', 0, 1234567890, 'Male', 'Roman Catholic', 'Dito lang sa tabi', 'Omniknight', 2147483647, '', '', 'Enrolled', ''),
(23425, 'Kyrie', 'uncledrew@gmail.com', '1992-04-21', 0, 23123123, 'Male', 'Roman Catholic', 'Boston Celtics', 'Earth is Flat', 2147483647, '', '', 'Enrolled', '');

-- --------------------------------------------------------

--
-- Table structure for table `subject`
--

CREATE TABLE `subject` (
  `subid` varchar(10) NOT NULL,
  `subject` varchar(50) NOT NULL,
  `faculty` varchar(20) NOT NULL,
  `year_level` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subject`
--

INSERT INTO `subject` (`subid`, `subject`, `faculty`, `year_level`) VALUES
('H103', 'Hekasi', 'History', 'Grade 4'),
('M102', 'Basic Math', 'Math', 'Grade 1'),
('S101', 'Biology', 'Science', 'Grade 2');

-- --------------------------------------------------------

--
-- Table structure for table `teacher`
--

CREATE TABLE `teacher` (
  `teacher_id` int(20) NOT NULL,
  `fullname` varchar(25) NOT NULL,
  `birthday` date NOT NULL,
  `age` int(25) NOT NULL,
  `gender` varchar(25) NOT NULL,
  `email` varchar(25) NOT NULL,
  `advisory` varchar(25) NOT NULL,
  `faculty` varchar(25) NOT NULL,
  `address` varchar(25) NOT NULL,
  `contact` int(25) NOT NULL,
  `status` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `teacher`
--

INSERT INTO `teacher` (`teacher_id`, `fullname`, `birthday`, `age`, `gender`, `email`, `advisory`, `faculty`, `address`, `contact`, `status`) VALUES
(1, 'teacher yany', '1998-01-02', 20, 'female', 'teacheryany', 'asd', 'asdasd', 'Manila', 1234567890, 'single');

-- --------------------------------------------------------

--
-- Table structure for table `type`
--

CREATE TABLE `type` (
  `type` varchar(25) NOT NULL,
  `email` varchar(25) NOT NULL,
  `id_number` int(25) NOT NULL,
  `password` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `type`
--

INSERT INTO `type` (`type`, `email`, `id_number`, `password`) VALUES
('Admin', 'rmhsadmin@gmail.com', 12345, 'admin1'),
('Student', 'GILBERT@gmail.com', 1, '12345');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pre_registration`
--
ALTER TABLE `pre_registration`
  ADD PRIMARY KEY (`ctrl_num`);

--
-- Indexes for table `schedule`
--
ALTER TABLE `schedule`
  ADD PRIMARY KEY (`scheid`);

--
-- Indexes for table `schedule_subject`
--
ALTER TABLE `schedule_subject`
  ADD KEY `scheid` (`scheid`),
  ADD KEY `subid` (`subid`);

--
-- Indexes for table `section`
--
ALTER TABLE `section`
  ADD PRIMARY KEY (`secid`),
  ADD KEY `scheid` (`scheid`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`id_num`),
  ADD KEY `secid` (`secid`);

--
-- Indexes for table `subject`
--
ALTER TABLE `subject`
  ADD PRIMARY KEY (`subid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pre_registration`
--
ALTER TABLE `pre_registration`
  MODIFY `ctrl_num` int(25) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `id_num` int(25) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23426;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `schedule_subject`
--
ALTER TABLE `schedule_subject`
  ADD CONSTRAINT `schedule_subject_ibfk_1` FOREIGN KEY (`scheid`) REFERENCES `schedule` (`scheid`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `schedule_subject_ibfk_2` FOREIGN KEY (`subid`) REFERENCES `subject` (`subid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `section`
--
ALTER TABLE `section`
  ADD CONSTRAINT `section_ibfk_1` FOREIGN KEY (`scheid`) REFERENCES `schedule` (`scheid`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
