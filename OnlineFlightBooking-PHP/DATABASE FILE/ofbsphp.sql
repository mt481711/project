-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 16, 2023 at 04:02 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `name2`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL,
  `admin_uname` varchar(20) NOT NULL,
  `admin_email` varchar(50) NOT NULL,
  `admin_pwd` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `admin_uname`, `admin_email`, `admin_pwd`) VALUES
(1, 'admin', 'admin@mail.com', '$2a$12$FiZCiAPmhVp5esbOFM7fXuugMa419KbzxgnRsIatfiDN5pS/jTtQa');

-- --------------------------------------------------------

--
-- Table structure for table `airline`
--

CREATE TABLE `airline` (
  `airline_id` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `seats` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `airline`
--

INSERT INTO `airline` (`airline_id`, `name`, `seats`) VALUES
(1, 'Vistara Airline', 165),
(2, 'Indigo', 220),
(3, 'Tata ', 215),
(4, 'Devrv', 135);

-- --------------------------------------------------------

--
-- Table structure for table `cities`
--

CREATE TABLE `cities` (
  `city` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `cities`
--

INSERT INTO `cities` (`city`) VALUES
('Delhi'),
('Chandigarh'),
('Kashmir');


-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `feed_id` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `q1` varchar(250) NOT NULL,
  `q2` varchar(20) NOT NULL,
  `q3` varchar(250) NOT NULL,
  `rate` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `flight`
--

CREATE TABLE `flight` (
  `flight_id` int(11) NOT NULL,
  `admin_id` int(11) NOT NULL,
  `arrivale` datetime NOT NULL,
  `departure` datetime NOT NULL,
  `Destination` varchar(20) NOT NULL,
  `source` varchar(20) NOT NULL,
  `airline` varchar(20) NOT NULL,
  `Seats` varchar(110) NOT NULL,
  `duration` varchar(20) NOT NULL,
  `Price` int(11) NOT NULL,
  `status` varchar(6) DEFAULT NULL,
  `issue` varchar(50) DEFAULT NULL,
  `last_seat` varchar(5) DEFAULT '',
  `bus_seats` int(11) DEFAULT 20,
  `last_bus_seat` varchar(5) DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `flight`
--

INSERT INTO `flight` (`flight_id`, `admin_id`, `arrivale`, `departure`, `Destination`, `source`, `airline`, `Seats`, `duration`, `Price`, `status`, `issue`, `last_seat`, `bus_seats`, `last_bus_seat`) VALUES
(23, 1, '2023-06-17 18:18:00', '2023-06-17 16:18:00', 'Delhi', 'Chandigarh', 'Indigo', '210', '4 hrs', 23, '', '', '22D', 20, ''),
(24, 1, '2023-06-20 15:31:00', '2023-06-20 13:31:00', 'Chandigarh', 'Delhi', 'Indigo', '218', '4 hrs', 490, '', '', '21B', 20, ''),
(29, 1, '2023-06-18 16:06:00', '2023-06-18 15:06:00', 'Chandigarh', 'Delhi', 'Vistara Airline', '165', '1 hrs', 100, '', '', '', 20, ''),
(30, 1, '2023-06-19 14:07:00', '2023-06-19 13:07:00', 'Chandigarh', 'Delhi', 'Indigo', '220', '1 hrs', 100, '', '', '', 20, ''),
(31, 1, '2023-06-20 16:08:00', '2023-06-20 15:08:00', 'Chandigarh', 'Delhi', 'Devrv', '135', '1 hrs', 200, '', '', '', 20, ''),
(32, 1, '2023-06-18 20:11:00', '2023-06-18 19:11:00', 'Delhi', 'Chandigarh', 'Devrv', '135', '1 hrs', 100, '', '', '', 20, ''),
(33, 1, '2023-06-19 20:11:00', '2023-06-19 19:11:00', 'Delhi', 'Chandigarh', 'Tata ', '215', '1 hrs', 200, '', '', '', 20, ''),
(34, 1, '2023-06-20 20:12:00', '2023-06-20 19:12:00', 'Delhi', 'Chandigarh', 'Tata ', '215', '1 hrs', 100, '', '', '', 20, ''),
(35, 1, '2023-06-17 20:17:00', '2023-06-17 19:17:00', 'Chandigarh', 'Delhi', 'Indigo', '220', '1 hrs', 100, '', '', '', 20, ''),
(36, 1, '2023-06-17 21:18:00', '2023-06-17 19:18:00', 'Delhi', 'Kashmir', 'Indigo', '220', '2 hrs', 200, '', '', '', 20, ''),
(37, 1, '2023-06-18 21:19:00', '2023-06-18 19:19:00', 'Delhi', 'Kashmir', 'Devrv', '135', '2 hrs', 200, '', '', '', 20, ''),
(38, 1, '2023-06-19 21:20:00', '2023-06-19 19:20:00', 'Delhi', 'Kashmir', 'Tata ', '215', '2 hrs', 400, '', '', '', 20, ''),
(39, 1, '2023-06-20 21:21:00', '2023-06-20 19:21:00', 'Delhi', 'Kashmir', 'Vistara Airline', '165', '2 hrs', 59, '', '', '', 20, ''),
(40, 1, '2023-06-17 21:21:00', '2023-06-17 19:21:00', 'Kashmir', 'Delhi', 'Indigo', '220', '2 hrs', 400, '', '', '', 20, ''),
(41, 1, '2023-06-18 21:22:00', '2023-06-18 19:22:00', 'Kashmir', 'Delhi', 'Devrv', '135', '2 hrs', 200, '', '', '', 20, ''),
(42, 1, '2023-06-19 21:23:00', '2023-06-19 19:23:00', 'Kashmir', 'Delhi', 'Vistara Airline', '165', '2 hrs', 400, '', '', '', 20, ''),
(43, 1, '2023-06-20 21:24:00', '2023-06-20 19:24:00', 'Kashmir', 'Delhi', 'Vistara Airline', '165', '2 hrs', 200, '', '', '', 20, ''),
(44, 1, '2023-06-17 21:25:00', '2023-06-17 19:25:00', 'Chandigarh', 'Kashmir', 'Indigo', '220', '2 hrs', 600, '', '', '', 20, ''),
(45, 1, '2023-06-18 21:26:00', '2023-06-18 19:26:00', 'Chandigarh', 'Kashmir', 'Devrv', '135', '2 hrs', 78, '', '', '', 20, ''),
(46, 1, '2023-06-19 21:27:00', '2023-06-19 19:27:00', 'Chandigarh', 'Kashmir', 'Tata ', '215', '4 hrs', 800, '', '', '', 20, ''),
(47, 1, '2023-06-19 21:28:00', '2023-06-19 19:28:00', 'Chandigarh', 'Kashmir', 'Vistara Airline', '165', '4 hrs', 900, '', '', '', 20, ''),
(48, 1, '2023-06-20 20:28:00', '2023-06-20 19:28:00', 'Chandigarh', 'Kashmir', 'Devrv', '135', '1 hrs', 1000, '', '', '', 20, ''),
(49, 1, '2023-06-17 21:29:00', '2023-06-17 19:29:00', 'Kashmir', 'Chandigarh', 'Devrv', '135', '2 hrs', 899, '', '', '', 20, ''),
(50, 1, '2023-06-18 23:30:00', '2023-06-18 21:30:00', 'Kashmir', 'Chandigarh', 'Indigo', '220', '2 hrs', 788, '', '', '', 20, ''),
(51, 1, '2023-06-19 21:30:00', '2023-06-19 19:30:00', 'Kashmir', 'Chandigarh', 'Tata ', '215', '2 hrs', 900, '', '', '', 20, ''),
(52, 1, '2023-06-20 20:31:00', '2023-06-20 19:31:00', 'Kashmir', 'Chandigarh', 'Devrv', '135', '1 hrs', 9000, '', '', '', 20, '');

-- --------------------------------------------------------

--
-- Table structure for table `passenger_profile`
--

CREATE TABLE `passenger_profile` (
  `passenger_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `flight_id` int(11) NOT NULL,
  `mobile` varchar(110) NOT NULL,
  `dob` datetime NOT NULL,
  `f_name` varchar(20) DEFAULT NULL,
  `m_name` varchar(20) DEFAULT NULL,
  `l_name` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `card_no` varchar(16) NOT NULL,
  `user_id` int(11) NOT NULL,
  `flight_id` int(11) NOT NULL,
  `expire_date` varchar(5) DEFAULT NULL,
  `amount` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pwdreset`
--

CREATE TABLE `pwdreset` (
  `pwd_reset_id` int(11) NOT NULL,
  `pwd_reset_email` varchar(50) NOT NULL,
  `pwd_reset_selector` varchar(80) NOT NULL,
  `pwd_reset_token` varchar(120) NOT NULL,
  `pwd_reset_expires` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ticket`
--

CREATE TABLE `ticket` (
  `ticket_id` int(11) NOT NULL,
  `passenger_id` int(11) NOT NULL,
  `flight_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `seat_no` varchar(10) NOT NULL,
  `cost` int(11) NOT NULL,
  `class` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `username`, `email`, `password`) VALUES
(1, 'Chandan', 'Chandan@mail.com', '$2y$10$zr.UlaKFEhBdcirNaa03ceV8Y31Jiw5KSFboVYasgZBwxoddtVWwO'),
(2, 'Harish', 'Harish@mail.com', '$2y$10$zr.UlaKFEhBdcirNaa03ceV8Y31Jiw5KSFboVYasgZBwxoddtVWwO'),
(3, 'aman', 'aman@mail.com', '$2y$10$zr.UlaKFEhBdcirNaa03ceV8Y31Jiw5KSFboVYasgZBwxoddtVWwO'),
(4, 'Jaspreet', 'Jaspreet@mail.com', '$2y$10$zr.UlaKFEhBdcirNaa03ceV8Y31Jiw5KSFboVYasgZBwxoddtVWwO'),
(5, 'Kirti', 'wakawaks@gmail.com', '$2y$10$9rscJPJNoJUIasBidOTSueToKDvfxL8Jcrrx..PdUACRWWQ9ILYim'),
(6, 'Dharam', 'Dharam@gmail.com', '$2y$10$zr.UlaKFEhBdcirNaa03ceV8Y31Jiw5KSFboVYasgZBwxoddtVWwO'),
(7, 'Mohit', 'mt481711@gmail.com', '$2y$10$PPVDJyoUI3ebpb4ZqFVFsuZE/sZdIUnBuyJzqotEa2iJ/xplEUlO.');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `airline`
--
ALTER TABLE `airline`
  ADD PRIMARY KEY (`airline_id`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`feed_id`);

--
-- Indexes for table `flight`
--
ALTER TABLE `flight`
  ADD PRIMARY KEY (`flight_id`),
  ADD KEY `admin_id` (`admin_id`);

--
-- Indexes for table `passenger_profile`
--
ALTER TABLE `passenger_profile`
  ADD PRIMARY KEY (`passenger_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `flight_id` (`flight_id`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`card_no`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `flight_id` (`flight_id`);

--
-- Indexes for table `pwdreset`
--
ALTER TABLE `pwdreset`
  ADD PRIMARY KEY (`pwd_reset_id`);

--
-- Indexes for table `ticket`
--
ALTER TABLE `ticket`
  ADD PRIMARY KEY (`ticket_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `flight_id` (`flight_id`),
  ADD KEY `passenger_id` (`passenger_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `airline`
--
ALTER TABLE `airline`
  MODIFY `airline_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `feed_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `flight`
--
ALTER TABLE `flight`
  MODIFY `flight_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `passenger_profile`
--
ALTER TABLE `passenger_profile`
  MODIFY `passenger_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `pwdreset`
--
ALTER TABLE `pwdreset`
  MODIFY `pwd_reset_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ticket`
--
ALTER TABLE `ticket`
  MODIFY `ticket_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `flight`
--
ALTER TABLE `flight`
  ADD CONSTRAINT `flight_ibfk_1` FOREIGN KEY (`admin_id`) REFERENCES `admin` (`admin_id`);

--
-- Constraints for table `passenger_profile`
--
ALTER TABLE `passenger_profile`
  ADD CONSTRAINT `passenger_profile_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`),
  ADD CONSTRAINT `passenger_profile_ibfk_2` FOREIGN KEY (`flight_id`) REFERENCES `flight` (`flight_id`);

--
-- Constraints for table `payment`
--
ALTER TABLE `payment`
  ADD CONSTRAINT `payment_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`),
  ADD CONSTRAINT `payment_ibfk_2` FOREIGN KEY (`flight_id`) REFERENCES `flight` (`flight_id`);

--
-- Constraints for table `ticket`
--
ALTER TABLE `ticket`
  ADD CONSTRAINT `ticket_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`),
  ADD CONSTRAINT `ticket_ibfk_2` FOREIGN KEY (`flight_id`) REFERENCES `flight` (`flight_id`),
  ADD CONSTRAINT `ticket_ibfk_3` FOREIGN KEY (`passenger_id`) REFERENCES `passenger_profile` (`passenger_id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
