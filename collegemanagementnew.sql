-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 14, 2020 at 12:21 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.2.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `collegemanagement`
--
CREATE DATABASE `collegemanagement`;
-- --------------------------------------------------------

--
-- Table structure for table `batch`
--

CREATE TABLE `batch` (
  `branch_id` varchar(10) NOT NULL,
  `start_year` int(5) NOT NULL,
  `batch_id` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `batch`
--

INSERT INTO `batch` (`branch_id`, `start_year`, `batch_id`) VALUES
('BCS', 2019, '2019BCS'),
('IMG', 2019, '2019IMG'),
('IMT', 2019, '2019IMT');

-- --------------------------------------------------------

--
-- Table structure for table `branch_info`
--

CREATE TABLE `branch_info` (
  `branch_id` varchar(10) NOT NULL,
  `branch_name` varchar(100) NOT NULL,
  `course_duration` int(5) NOT NULL,
  `degree_granted` varchar(25) NOT NULL,
  `seats` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `branch_info`
--

INSERT INTO `branch_info` (`branch_id`, `branch_name`, `course_duration`, `degree_granted`, `seats`) VALUES
('BCS', 'Bachelor of Technology Computer Science & Engineer', 4, 'B.Tech.(CSE)', 85),
('IMG', 'Integrated Post Graduate Course MBA Information Technology', 5, 'B.Tech(IT) + MBA', 60),
('IMT', 'Integrated Post Graduate Course Masters in Technology Information Technology\r\n\r\n', 5, 'B.Tech(IT) + M.Tech(IT)', 120),
('M. Tech', 'Masters in Technology Information Technology', 2, 'M.Tech(IT)', 120);

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `employee_id` int(10) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email_id` varchar(50) NOT NULL,
  `salary` int(10) NOT NULL,
  `position` varchar(50) NOT NULL,
  `contact_no` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`employee_id`, `name`, `email_id`, `salary`, `position`, `contact_no`) VALUES
(1, 'Joydip Dhar', 'abc@gmail.com', 1000000, 'Maths Lecturer', 1234567890),
(2, 'Dr. Neetesh Kumar', 'nkiiitmg@iiitm.ac.in', 2000000, 'DBMS Lecturer', 751244973),
(3, 'Dr. Arun Kumar', 'arunkumar@iiitm.ac.in', 1000000, 'PPM Lecturer', 751244973),
(4, 'Dr. Saumya Bhadauria', 'saumya@iiitm.ac.in', 1500000, 'DS Lecturer', 751244982);

-- --------------------------------------------------------

--
-- Table structure for table `lecturer`
--

CREATE TABLE `lecturer` (
  `lecturer_id` int(10) NOT NULL,
  `department` varchar(50) NOT NULL,
  `department_designation` varchar(50) NOT NULL,
  `qualifications` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `lecturer`
--

INSERT INTO `lecturer` (`lecturer_id`, `department`, `department_designation`, `qualifications`) VALUES
(1, 'Maths', 'Head', 'Ph.D. (IIT-Kanpur)'),
(2, 'Database Systems', 'Head', 'PhD (JNU, New Delhi)'),
(3, 'Management Sciences', 'Head', 'Ph.D. (ABV-IIITM, Gwalior)'),
(4, 'Data Stuctures and Algorithms', 'Head', 'Ph.D. (IIT-Indore)');

-- --------------------------------------------------------

--
-- Table structure for table `lectures`
--

CREATE TABLE `lectures` (
  `lecture_id` int(11) NOT NULL,
  `classroom` varchar(20) NOT NULL,
  `subject_id` varchar(10) NOT NULL,
  `type` varchar(20) NOT NULL,
  `duration` int(5) NOT NULL,
  `lecturer_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `lectures`
--

INSERT INTO `lectures` (`lecture_id`, `classroom`, `subject_id`, `type`, `duration`, `lecturer_id`) VALUES
(1, 'C-009', 'DBS', 'LAB', 1, 2),
(2, 'C-005', 'DS', 'CLASS', 2, 4),
(3, 'C-005', 'MATH2', 'CLASS', 2, 1),
(4, 'C-005', 'DMS', 'CLASS', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `registration_id` int(11) NOT NULL,
  `name` varchar(40) NOT NULL,
  `address` varchar(200) NOT NULL,
  `date_of_birth` date NOT NULL,
  `contact_no` int(10) NOT NULL,
  `email_id` varchar(30) NOT NULL,
  `gender` enum('M','F') NOT NULL,
  `roll_no` int(5) NOT NULL,
  `batch_id` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`registration_id`, `name`, `address`, `date_of_birth`, `contact_no`, `email_id`, `gender`, `roll_no`, `batch_id`) VALUES
(1, 'Ajay Devgan', 'Bhopal, Madhya Pradesh\r\n\r\n', '2000-01-01', 123456789, 'bcs2019045@iiitm.ac.in', 'M', 45, '2019BCS'),
(2, 'Saili Kumari', 'Jalgaon, Maharashtra', '2001-05-12', 234567891, 'img2019023@iiitm.ac.in', 'F', 23, '2019IMG'),
(3, 'Ashul Sharma', 'Kolkata , West Bengal', '2000-05-12', 751244982, 'imt2019063@iiitm.ac.in', 'M', 63, '2019IMT'),
(4, 'Ankur Gujrathi', 'Pune , Maharashtra\r\n', '2001-05-09', 751234520, 'img2019021@iiitm.ac.in', 'M', 21, '2019IMG'),
(5, 'Abhishek Patil', 'Mumbai,Maharashtra', '2000-05-19', 248324984, 'bcs2019023@iiitm.ac.in', 'M', 23, '2019BCS');

-- --------------------------------------------------------

--
-- Table structure for table `subject`
--

CREATE TABLE `subject` (
  `subject_code` varchar(10) NOT NULL,
  `subject_name` varchar(40) NOT NULL,
  `credits` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `subject`
--

INSERT INTO `subject` (`subject_code`, `subject_name`, `credits`) VALUES
('DBS', 'Data Base Systems', '2-1-1'),
('DCS', 'Digital Circuits System', '2-1-2'),
('DMS', 'Discrete Mathematical Structures', '3-1-2'),
('DS', 'Data Structures and Algorithms', '2-2-1'),
('MATH2', 'Maths-2', '2-2-1');

-- --------------------------------------------------------

--
-- Table structure for table `timetable`
--

CREATE TABLE `timetable` (
  `lecture_id` int(11) NOT NULL,
  `day` varchar(10) NOT NULL,
  `timing` time NOT NULL,
  `batch_id` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `timetable`
--

INSERT INTO `timetable` (`lecture_id`, `day`, `timing`, `batch_id`) VALUES
(1, 'Monday', '14:00:00', '2019BCS'),
(1, 'Monday', '14:00:00', '2019IMG'),
(3, 'Wednesday', '14:00:00', '2019IMT'),
(4, 'Tuesday', '15:00:00', '2019BCS');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `batch`
--
ALTER TABLE `batch`
  ADD PRIMARY KEY (`batch_id`),
  ADD UNIQUE KEY `batch_name` (`batch_id`),
  ADD KEY `batch_has_branch` (`branch_id`);

--
-- Indexes for table `branch_info`
--
ALTER TABLE `branch_info`
  ADD PRIMARY KEY (`branch_id`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`employee_id`);

--
-- Indexes for table `lecturer`
--
ALTER TABLE `lecturer`
  ADD PRIMARY KEY (`lecturer_id`);

--
-- Indexes for table `lectures`
--
ALTER TABLE `lectures`
  ADD PRIMARY KEY (`lecture_id`),
  ADD KEY `lecture_has_subject` (`subject_id`),
  ADD KEY `lecture_has_lecturer` (`lecturer_id`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`registration_id`),
  ADD KEY `student_has_batch` (`batch_id`);

--
-- Indexes for table `subject`
--
ALTER TABLE `subject`
  ADD PRIMARY KEY (`subject_code`),
  ADD UNIQUE KEY `subject_code` (`subject_code`);

--
-- Indexes for table `timetable`
--
ALTER TABLE `timetable`
  ADD PRIMARY KEY (`batch_id`,`day`,`timing`),
  ADD KEY `timetable_has_lecture` (`lecture_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `employee_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `lecturer`
--
ALTER TABLE `lecturer`
  MODIFY `lecturer_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `lectures`
--
ALTER TABLE `lectures`
  MODIFY `lecture_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `registration_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `batch`
--
ALTER TABLE `batch`
  ADD CONSTRAINT `batch_has_branch` FOREIGN KEY (`branch_id`) REFERENCES `branch_info` (`branch_id`);

--
-- Constraints for table `lecturer`
--
ALTER TABLE `lecturer`
  ADD CONSTRAINT `lecturer_has_id` FOREIGN KEY (`lecturer_id`) REFERENCES `employee` (`employee_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `lectures`
--
ALTER TABLE `lectures`
  ADD CONSTRAINT `lecture_has_lecturer` FOREIGN KEY (`lecturer_id`) REFERENCES `lecturer` (`lecturer_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `lecture_has_subject` FOREIGN KEY (`subject_id`) REFERENCES `subject` (`subject_code`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `student`
--
ALTER TABLE `student`
  ADD CONSTRAINT `student_has_batch` FOREIGN KEY (`batch_id`) REFERENCES `batch` (`batch_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `timetable`
--
ALTER TABLE `timetable`
  ADD CONSTRAINT `batch_has_timetable` FOREIGN KEY (`batch_id`) REFERENCES `batch` (`batch_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `timetable_has_lecture` FOREIGN KEY (`lecture_id`) REFERENCES `lectures` (`lecture_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
