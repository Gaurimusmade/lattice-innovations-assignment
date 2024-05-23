-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 23, 2024 at 03:00 PM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 7.4.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lattice-innovations`
--

-- --------------------------------------------------------

--
-- Table structure for table `hospitals`
--

CREATE TABLE `hospitals` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `hospitals`
--

INSERT INTO `hospitals` (`id`, `name`) VALUES
(4, 'AIIMS - All India Institute Of Medical Science'),
(1, 'Apollo Hospitals'),
(3, 'Indira Gandhi Institute of Medical Sciences (IGIMS)'),
(2, 'Jawaharlal Nehru Medical College and Hospital');

-- --------------------------------------------------------

--
-- Table structure for table `patients`
--

CREATE TABLE `patients` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone_number` varchar(255) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `photo` varchar(255) NOT NULL,
  `psychiatrist_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `patients`
--

INSERT INTO `patients` (`id`, `name`, `address`, `email`, `phone_number`, `password`, `photo`, `psychiatrist_id`) VALUES
(1, 'John Doe', '123 Main Street, Anytown, CA 12345', 'johndoe@example.com', '+919921890678', '$2a$10$JHuvxkto0DkdWb.Wxj4Ix.5MGaxlT4.MIGWak/qcGhJMcmCiao7US', 'https://www.example.com/profile_picture.jpg', 1),
(2, 'Jane Smith', '456 Oak Avenue, Othertown, NY 67890', 'janesmith@example.com', '+916551234568', '$2a$10$yyG7c7bsph8LuX/IX0Nrle.P1PbOc3f7sdrEihsJhQdhArbu302d.', 'https://www.example.com/profile_picture1.jpg', 2),
(3, 'Alice Johnson', '789 Pine Road, Sometown, TX 98765', 'alicejohnson@example.com', '+915551234569', '$2a$10$QJ8MObs4qqYSVApM6zOrG.tQAHtE/YfO17YiyVdToBM8l9K.nsRHC', 'https://www.example.com/profile_picture2.jpg', 3),
(4, 'Bob Brown', '101 Maple Lane, Anycity, FL 54321', 'bobbrown@example.com', '+915551234570', '$2a$10$Lmv1mue1R4G62LyMFnXuA.ViKqrB/CqW.7k3f42qcvw5dFVG8d2di', 'https://www.example.com/profile_picture3.jpg', 4),
(5, 'Charlie White', '202 Elm Street, Anothertown, AZ 23456', 'charliewhite@example.com', '+915551234571', '$2a$10$yyG7c7bsph8LuX/IX0Nrle.P1PbOc3f7sdrEihsJhQdhArbu302d.', 'https://www.example.com/profile_picture4.jpg', 3),
(6, 'Diane Green', '303 Birch Boulevard, Anyplace, IL 34567', 'dianegreen@example.com', '+915551234572', '$2a$10$JHuvxkto0DkdWb.Wxj4Ix.5MGaxlT4.MIGWak/qcGhJMcmCiao7US', 'https://www.example.com/profile_picture5.jpg', 1),
(7, 'Edward Black', '404 Cedar Court, Anyvillage, OH 45678', 'edwardblack@example.com', '+915551234573', '$2a$10$Lmv1mue1R4G62LyMFnXuA.ViKqrB/CqW.7k3f42qcvw5dFVG8d2di', 'https://www.example.com/profile_picture6.jpg', 2),
(8, 'Fiona Blue', '505 Aspen Path, Anywhere, WA 56789', 'fionablue@example.com', '+915551234574', '$2a$10$yyG7c7bsph8LuX/IX0Nrle.P1PbOc3f7sdrEihsJhQdhArbu302d.', 'https://www.example.com/profile_picture7.jpg', 3),
(9, 'George Red', '606 Chestnut Drive, Anyburgh, CO 67890', 'georgered@example.com', '+915551234575', '$2a$10$JHuvxkto0DkdWb.Wxj4Ix.5MGaxlT4.MIGWak/qcGhJMcmCiao7US', 'https://www.example.com/profile_picture8.jpg', 4),
(10, 'Helen Yellow', '707 Walnut Terrace, Anytown, VA 78901', 'helenyellow@example.com', '+915551234576', '$2a$10$Lmv1mue1R4G62LyMFnXuA.ViKqrB/CqW.7k3f42qcvw5dFVG8d2di', 'https://www.example.com/profile_picture9.jpg', 1),
(11, 'Ian Purple', '808 Poplar Street, Anytown, MI 89012', 'ianpurple@example.com', '+915551234577', '$2a$10$JHuvxkto0DkdWb.Wxj4Ix.5MGaxlT4.MIGWak/qcGhJMcmCiao7US', 'https://www.example.com/profile_picture10.jpg', 1),
(12, 'Jack Brown', '909 Fir Lane, Anytown, GA 12345', 'jackbrown@example.com', '+915551234578', '$2a$10$yyG7c7bsph8LuX/IX0Nrle.P1PbOc3f7sdrEihsJhQdhArbu302d.', 'https://www.example.com/profile_picture11.jpg', 12),
(13, 'Karen Grey', '100 Spruce Drive, Othertown, PA 23456', 'karengrey@example.com', '+915551234579', '$2a$10$JHuvxkto0DkdWb.Wxj4Ix.5MGaxlT4.MIGWak/qcGhJMcmCiao7US', 'https://www.example.com/profile_picture12.jpg', 13),
(14, 'Liam Pink', '111 Sycamore Way, Sometown, NJ 34567', 'liampink@example.com', '+915551234580', '$2a$10$yyG7c7bsph8LuX/IX0Nrle.P1PbOc3f7sdrEihsJhQdhArbu302d.', 'https://www.example.com/profile_picture13.jpg', 14),
(15, 'Mia Violet', '222 Holly Road, Anycity, NV 45678', 'miaviolet@example.com', '+915551234581', '$2a$10$JHuvxkto0DkdWb.Wxj4Ix.5MGaxlT4.MIGWak/qcGhJMcmCiao7US', 'https://www.example.com/profile_picture14.jpg', 9),
(16, 'Noah Indigo', '333 Magnolia Avenue, Anothertown, OR 56789', 'noahindigo@example.com', '+915551234582', '$2a$10$yyG7c7bsph8LuX/IX0Nrle.P1PbOc3f7sdrEihsJhQdhArbu302d.', 'https://www.example.com/profile_picture15.jpg', 10),
(17, 'Olivia Maroon', '444 Palm Street, Anyplace, AL 67890', 'oliviamaroon@example.com', '+915551234583', '$2a$10$JHuvxkto0DkdWb.Wxj4Ix.5MGaxlT4.MIGWak/qcGhJMcmCiao7US', 'https://www.example.com/profile_picture16.jpg', 18),
(18, 'Paul Teal', '555 Redwood Court, Anyvillage, AK 78901', 'paulteal@example.com', '+915551234584', '$2a$10$yyG7c7bsph8LuX/IX0Nrle.P1PbOc3f7sdrEihsJhQdhArbu302d.', 'https://www.example.com/profile_picture17.jpg', 17),
(19, 'Quinn Gold', '666 Alder Terrace, Anywhere, KY 89012', 'quinngold@example.com', '+915551234585', '$2a$10$JHuvxkto0DkdWb.Wxj4Ix.5MGaxlT4.MIGWak/qcGhJMcmCiao7US', 'https://www.example.com/profile_picture18.jpg', 5),
(20, 'Ruby Silver', '777 Cypress Path, Anyburgh, WV 90123', 'rubysilver@example.com', '+915551234586', 'R@by$iP@ss!', 'https://www.example.com/profile_picture19.jpg', 12),
(21, 'Steve Copper', '888 Hickory Lane, Anytown, NH 01234', 'stevecopper@example.com', '+915551234587', '$2a$10$JHuvxkto0DkdWb.Wxj4Ix.5MGaxlT4.MIGWak/qcGhJMcmCiao7US', 'https://www.example.com/profile_picture20.jpg', 11);

-- --------------------------------------------------------

--
-- Table structure for table `psychiatrists`
--

CREATE TABLE `psychiatrists` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `hospital_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `psychiatrists`
--

INSERT INTO `psychiatrists` (`id`, `name`, `hospital_id`) VALUES
(1, 'Dr. Alice Smith', 1),
(2, 'Dr. Ben Jones', 1),
(3, 'Dr. Charles Miller', 1),
(4, 'Dr. David Lee', 1),
(5, 'Dr. Emily Brown', 1),
(6, 'Dr. Fatima Khan', 2),
(7, 'Dr. Gaurav Patel', 2),
(8, 'Dr. Hema Singh', 2),
(9, 'Dr. Imran Khan', 2),
(10, 'Dr. Jasmine Shah', 2),
(11, 'Dr. Mohan Sharma', 3),
(12, 'Dr. Priya Kapoor', 3),
(13, 'Dr. Gauri Musmade', 3),
(14, 'Dr. Akshada Tambe', 3),
(15, 'Dr. Rajeev Gupta', 3),
(16, 'Dr. Sunita Verma', 4),
(17, 'Dr. Vikas Malhotra', 4),
(18, 'Dr. Anagha Kshirsagar', 4),
(19, 'Dr. Nitya Jadhav', 4),
(20, 'Dr. Yaseen Khan', 4);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `hospitals`
--
ALTER TABLE `hospitals`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `patients`
--
ALTER TABLE `patients`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD KEY `psychiatrist_id` (`psychiatrist_id`);

--
-- Indexes for table `psychiatrists`
--
ALTER TABLE `psychiatrists`
  ADD PRIMARY KEY (`id`),
  ADD KEY `hospital_id` (`hospital_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `hospitals`
--
ALTER TABLE `hospitals`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `patients`
--
ALTER TABLE `patients`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `psychiatrists`
--
ALTER TABLE `psychiatrists`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `patients`
--
ALTER TABLE `patients`
  ADD CONSTRAINT `patients_ibfk_1` FOREIGN KEY (`psychiatrist_id`) REFERENCES `psychiatrists` (`id`);

--
-- Constraints for table `psychiatrists`
--
ALTER TABLE `psychiatrists`
  ADD CONSTRAINT `psychiatrists_ibfk_1` FOREIGN KEY (`hospital_id`) REFERENCES `hospitals` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
