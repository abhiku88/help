-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 11, 2023 at 12:26 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `helpdesk_system`
--

-- --------------------------------------------------------

--
-- Table structure for table `hd_departments`
--

CREATE TABLE `hd_departments` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `hd_departments`
--

INSERT INTO `hd_departments` (`id`, `name`, `status`) VALUES
(1, 'technical', 1),
(7, 'computer science engineering', 0),
(8, 'admin', 1);

-- --------------------------------------------------------

--
-- Table structure for table `hd_signup`
--

CREATE TABLE `hd_signup` (
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `cpassword` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `hd_tickets`
--

CREATE TABLE `hd_tickets` (
  `id` int(11) NOT NULL,
  `uniqid` varchar(255) NOT NULL,
  `user` varchar(100) NOT NULL,
  `title` varchar(100) NOT NULL,
  `init_msg` varchar(100) NOT NULL,
  `department` text NOT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp(),
  `last_reply` varchar(100) NOT NULL,
  `user_read` varchar(100) NOT NULL,
  `admin_read` varchar(100) NOT NULL,
  `resolved` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `hd_tickets`
--

INSERT INTO `hd_tickets` (`id`, `uniqid`, `user`, `title`, `init_msg`, `department`, `date`, `last_reply`, `user_read`, `admin_read`, `resolved`) VALUES
(10, '63bd3e74e9244', '3', 'mai thik hu', 'mai thik hu', '4', '0000-00-00 00:00:00', '3', '0', '0', '0'),
(11, '63bd3eb498c29', '8', 'isyey', 'isyey', '6', '0000-00-00 00:00:00', '8', '0', '1', '0'),
(12, '63bd41565d186', '3', 'error', 'error', '6', '0000-00-00 00:00:00', '3', '0', '0', '1');

-- --------------------------------------------------------

--
-- Table structure for table `hd_ticket_replies`
--

CREATE TABLE `hd_ticket_replies` (
  `id` int(11) NOT NULL,
  `user` int(11) NOT NULL,
  `text` text NOT NULL,
  `ticket_id` text NOT NULL,
  `date` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `hd_ticket_replies`
--

INSERT INTO `hd_ticket_replies` (`id`, `user`, `text`, `ticket_id`, `date`) VALUES
(1, 1, 'This is fixed', '1', '1634829030');

-- --------------------------------------------------------

--
-- Table structure for table `hd_users`
--

CREATE TABLE `hd_users` (
  `id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `create_date` datetime DEFAULT current_timestamp(),
  `name` varchar(256) NOT NULL,
  `user_type` enum('admin','user') NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `hd_users`
--

INSERT INTO `hd_users` (`id`, `email`, `password`, `create_date`, `name`, `user_type`, `status`) VALUES
(3, 'abhikuchaubey@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '0000-00-00 00:00:00', 'Abhishek Kumar Chaubey', 'admin', 1),
(9, 'test@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', '2023-01-11 14:38:36', 'test', 'admin', 1),
(10, 'admin@gmail.com', '202cb962ac59075b964b07152d234b70', '2023-01-11 14:41:21', 'admin', 'user', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `hd_departments`
--
ALTER TABLE `hd_departments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hd_signup`
--
ALTER TABLE `hd_signup`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `hd_tickets`
--
ALTER TABLE `hd_tickets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hd_ticket_replies`
--
ALTER TABLE `hd_ticket_replies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hd_users`
--
ALTER TABLE `hd_users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `hd_departments`
--
ALTER TABLE `hd_departments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `hd_tickets`
--
ALTER TABLE `hd_tickets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `hd_ticket_replies`
--
ALTER TABLE `hd_ticket_replies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `hd_users`
--
ALTER TABLE `hd_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
