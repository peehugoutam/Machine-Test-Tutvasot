-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Oct 11, 2021 at 01:41 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `user_management`
--

-- --------------------------------------------------------

--
-- Table structure for table `chat_message`
--

CREATE TABLE `chat_message` (
  `chat_message_id` int(11) NOT NULL,
  `to_user_id` int(11) NOT NULL,
  `from_user_id` int(11) NOT NULL,
  `chat_message` text NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `chat_message`
--

INSERT INTO `chat_message` (`chat_message_id`, `to_user_id`, `from_user_id`, `chat_message`, `timestamp`, `status`) VALUES
(1, 1, 2, 'hii', '2021-10-03 14:02:39', 0),
(2, 1, 2, 'I have send for node developer profile please check my resume', '2021-10-03 14:04:12', 0),
(3, 1, 2, 'kkk', '2021-10-03 16:21:50', 0),
(4, 1, 2, '????', '2021-10-03 16:21:55', 0),
(5, 1, 2, 'kkk', '2021-10-03 16:22:01', 0),
(6, 1, 2, 'Hey when you applied for the job', '2021-10-04 04:39:16', 0),
(7, 2, 1, 'I applied yesterday', '2021-10-04 04:48:41', 0),
(8, 1, 2, 'Okay for both profile ?', '2021-10-04 04:49:12', 0),
(9, 2, 1, 'Yes sir please check', '2021-10-04 04:49:25', 0),
(10, 2, 1, 'I have applied for nest js also', '2021-10-04 04:50:07', 0),
(11, 1, 2, 'Yes i got 2 resume', '2021-10-04 04:50:19', 0),
(12, 1, 2, '1 for node & nest js', '2021-10-04 04:50:34', 0),
(13, 2, 1, 'Yes right', '2021-10-04 04:50:41', 0),
(14, 2, 1, 'kkk', '2021-10-04 04:58:10', 0),
(15, 2, 1, 'k', '2021-10-04 04:58:56', 0),
(16, 1, 2, '....', '2021-10-04 05:00:54', 0),
(17, 1, 2, 'gmm varsha', '2021-10-04 05:43:48', 0),
(18, 2, 1, 'gm vvv', '2021-10-04 05:44:10', 0),
(19, 2, 1, '', '2021-10-04 05:44:11', 0),
(20, 2, 1, 'kk', '2021-10-04 05:55:30', 0),
(21, 1, 2, 'kk1', '2021-10-04 05:55:40', 0),
(22, 2, 1, 'When you can join ?', '2021-10-04 05:59:41', 0),
(23, 1, 2, 'dont know', '2021-10-04 06:00:01', 1),
(24, 3, 2, 'Hello i applied for HTML', '2021-10-04 06:00:34', 1);

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `created_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `jobs`
--

INSERT INTO `jobs` (`id`, `title`, `created_by`) VALUES
(1, 'PHP ', 1),
(2, 'CI', 1),
(3, 'Laravel', 1),
(4, 'Node JS', 2),
(5, 'Nest Js', 2),
(6, 'HTML', 3),
(7, 'CSS', 3),
(8, 'Jquery', 3),
(9, 'Javascript', 3);

-- --------------------------------------------------------

--
-- Table structure for table `jobs_apply`
--

CREATE TABLE `jobs_apply` (
  `id` int(11) NOT NULL,
  `job_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `jobs_apply`
--

INSERT INTO `jobs_apply` (`id`, `job_id`, `user_id`) VALUES
(1, 4, 1),
(3, 5, 1),
(4, 6, 2);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(250) NOT NULL,
  `email` varchar(250) NOT NULL,
  `password` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`) VALUES
(1, 'varsha', 'varsha@gmail.com', '7c4a8d09ca3762af61e59520943dc26494f8941b'),
(2, 'vvv', 'vvv@gmail.com', '7c4a8d09ca3762af61e59520943dc26494f8941b'),
(3, 'v1', 'v1@gmail.com', '7c4a8d09ca3762af61e59520943dc26494f8941b');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `chat_message`
--
ALTER TABLE `chat_message`
  ADD PRIMARY KEY (`chat_message_id`),
  ADD KEY `from_user_id` (`from_user_id`),
  ADD KEY `to_user_id` (`to_user_id`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `created_by` (`created_by`);

--
-- Indexes for table `jobs_apply`
--
ALTER TABLE `jobs_apply`
  ADD PRIMARY KEY (`id`),
  ADD KEY `job_id` (`job_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `chat_message`
--
ALTER TABLE `chat_message`
  MODIFY `chat_message_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `jobs_apply`
--
ALTER TABLE `jobs_apply`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `chat_message`
--
ALTER TABLE `chat_message`
  ADD CONSTRAINT `chat_message_ibfk_1` FOREIGN KEY (`from_user_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `chat_message_ibfk_2` FOREIGN KEY (`to_user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `jobs`
--
ALTER TABLE `jobs`
  ADD CONSTRAINT `jobs_ibfk_1` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`);

--
-- Constraints for table `jobs_apply`
--
ALTER TABLE `jobs_apply`
  ADD CONSTRAINT `jobs_apply_ibfk_1` FOREIGN KEY (`job_id`) REFERENCES `jobs` (`id`),
  ADD CONSTRAINT `jobs_apply_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
