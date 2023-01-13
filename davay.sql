-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 13, 2023 at 10:48 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `davay`
--

-- --------------------------------------------------------

--
-- Table structure for table `dt_match`
--

CREATE TABLE `dt_match` (
  `id_match` int(11) NOT NULL,
  `team1_id` int(11) DEFAULT NULL,
  `team2_id` int(11) DEFAULT NULL,
  `score1` int(1) NOT NULL,
  `score2` int(1) NOT NULL,
  `tipe_match` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `dt_match`
--

INSERT INTO `dt_match` (`id_match`, `team1_id`, `team2_id`, `score1`, `score2`, `tipe_match`) VALUES
(1, 86, 87, 0, 0, 'Quarter Final'),
(2, 90, 92, 0, 0, 'Quarter Final '),
(3, 85, 88, 0, 0, 'Quarter Final '),
(4, 89, 91, 0, 0, 'Quarter Final '),
(5, NULL, NULL, 0, 0, 'Semi Final '),
(6, NULL, NULL, 0, 0, 'Semi Final '),
(7, NULL, NULL, 0, 0, 'Final');

-- --------------------------------------------------------

--
-- Table structure for table `dt_member`
--

CREATE TABLE `dt_member` (
  `id` int(11) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `birth_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `dt_member`
--

INSERT INTO `dt_member` (`id`, `first_name`, `last_name`, `email`, `username`, `password`, `birth_date`) VALUES
(1, '123', '123', '123@gmail.com', 'udin', 'dog', '2023-01-13');

-- --------------------------------------------------------

--
-- Table structure for table `dt_player`
--

CREATE TABLE `dt_player` (
  `id_player` int(11) NOT NULL,
  `full_name` varchar(255) NOT NULL,
  `game_nickname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone_number` int(255) NOT NULL,
  `team_id` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `dt_player`
--

INSERT INTO `dt_player` (`id_player`, `full_name`, `game_nickname`, `email`, `phone_number`, `team_id`) VALUES
(1, 't1', 't1', 'a@mail.com', 555555, 1),
(2, 't2', 't2', 'b@gmail.com', 2313131, 1),
(3, 't3', 't3', 'c@mail.com', 2147483647, 1),
(4, 't4', 'd', 'd@mail.com', 32131321, 1),
(5, 'e', 'e', 'e@mail.com', 2147483647, 1),
(6, 't1', 't1', 'a@mail.com', 555555, 2),
(7, 't2', 't2', 'b@gmail.com', 21313, 2),
(8, 't3', 't3', 'c@mail.com', 2147483647, 2),
(9, 't4', 'd', 'd@mail.com', 312313, 2),
(10, 'e', 'e', 'e@mail.com', 2147483647, 2),
(11, 't1', 't1', 'a@mail.com', 555555, 3),
(12, 't2', 't2', 'b@gmail.com', 21313, 3),
(13, 't3', 't3', 'c@mail.com', 2147483647, 3),
(14, 't4', 'd', 'd@mail.com', 312313, 3),
(15, 'e', 'e', 'e@mail.com', 2147483647, 3),
(16, 't1', 't1', 'a@mail.com', 555555, 4),
(17, 't2', 't2', 'b@gmail.com', 21313, 4),
(18, 't3', 't3', 'c@mail.com', 2147483647, 4),
(19, 't4', 'd', 'd@mail.com', 312313, 4),
(20, 'e', 'e', 'e@mail.com', 2147483647, 4),
(21, 't1', 't1', 'a@mail.com', 555555, 5),
(22, 't2', 't2', 'b@gmail.com', 21313, 5),
(23, 't3', 't3', 'c@mail.com', 2147483647, 5),
(24, 't4', 'd', 'd@mail.com', 312313, 5),
(25, 'e', 'e', 'e@mail.com', 2147483647, 5);

-- --------------------------------------------------------

--
-- Table structure for table `dt_team`
--

CREATE TABLE `dt_team` (
  `id_team` int(11) NOT NULL,
  `team_name` varchar(255) NOT NULL,
  `id_pendaftar` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `dt_team`
--

INSERT INTO `dt_team` (`id_team`, `team_name`, `id_pendaftar`) VALUES
(1, 'MimingZ', 1),
(2, 'Cliffous', 1),
(3, 'test', 1),
(4, 'test', 1),
(5, 'test', 1),
(6, 'test', 1),
(7, 'test', 1),
(8, 'test', 1),
(9, 'test', 1),
(10, 'test', 1),
(11, 'test', 1),
(12, 'test', 1),
(13, 'test', 1),
(14, 'test', 1),
(15, 'test', 1),
(16, 'test', 1),
(17, 'test', 1),
(18, 'test', 1),
(19, 'test', 1),
(20, 'test', 1),
(21, 'test', 1),
(22, 'test', 1),
(23, 'test', 1),
(24, 'test', 1),
(25, 'test', 1),
(26, 'test', 1),
(27, 'test', 1),
(28, 'test', 1),
(29, 'test', 1),
(30, 'test', 1),
(31, 'test', 1),
(32, 'test', 1),
(33, 'test', 1),
(34, 'test', 1),
(35, 'test', 1),
(36, 'test', 1),
(37, 'test', 1),
(38, 'test', 1),
(39, 'test', 1),
(40, 'test', 1),
(41, 'test', 1),
(42, 'test', 1),
(43, 'test', 1),
(44, 'test', 1),
(45, 'test', 1),
(46, 'test', 1),
(47, 'test', 1),
(48, 'test', 1),
(49, 'test', 1),
(50, 'test', 1),
(51, 'test', 1),
(52, 'test', 1),
(53, 'test', 1),
(54, 'test', 1),
(55, 'test', 1),
(56, 'test', 1),
(57, 'test', 1),
(58, 'test', 1),
(59, 'test', 1),
(60, 'test', 1),
(61, 'test', 1),
(62, 'test', 1),
(63, 'test', 1),
(64, 'test', 1),
(65, 'test', 1),
(66, 'test', 1),
(67, 'test', 1),
(68, 'test', 1),
(69, 'test', 1),
(70, 'test', 1),
(71, 'test', 1),
(72, 'test', 1),
(73, 'test', 1),
(74, 'test', 1),
(75, 'test', 1),
(76, 'test', 1),
(77, 'test', 1),
(78, 'test', 1),
(79, 'test', 1),
(80, 'test', 1),
(81, 'test', 1),
(82, 'test', 1),
(83, 'test', 1),
(84, 'test', 1),
(85, 'test', 1),
(86, 'test2', 1),
(87, 'test2', 1),
(88, 'test2', 1),
(89, 'test2', 1),
(90, 'test2', 1),
(91, 'test2', 1),
(92, 'test2', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `dt_match`
--
ALTER TABLE `dt_match`
  ADD PRIMARY KEY (`id_match`),
  ADD KEY `team1_id` (`team1_id`),
  ADD KEY `team2_id` (`team2_id`);

--
-- Indexes for table `dt_member`
--
ALTER TABLE `dt_member`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dt_player`
--
ALTER TABLE `dt_player`
  ADD PRIMARY KEY (`id_player`),
  ADD KEY `team_id` (`team_id`);

--
-- Indexes for table `dt_team`
--
ALTER TABLE `dt_team`
  ADD PRIMARY KEY (`id_team`),
  ADD KEY `id_pendaftar` (`id_pendaftar`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `dt_match`
--
ALTER TABLE `dt_match`
  MODIFY `id_match` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `dt_member`
--
ALTER TABLE `dt_member`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `dt_player`
--
ALTER TABLE `dt_player`
  MODIFY `id_player` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=461;

--
-- AUTO_INCREMENT for table `dt_team`
--
ALTER TABLE `dt_team`
  MODIFY `id_team` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=93;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `dt_match`
--
ALTER TABLE `dt_match`
  ADD CONSTRAINT `dt_match_ibfk_1` FOREIGN KEY (`team1_id`) REFERENCES `dt_team` (`id_team`),
  ADD CONSTRAINT `dt_match_ibfk_2` FOREIGN KEY (`team2_id`) REFERENCES `dt_team` (`id_team`);

--
-- Constraints for table `dt_player`
--
ALTER TABLE `dt_player`
  ADD CONSTRAINT `dt_player_ibfk_1` FOREIGN KEY (`team_id`) REFERENCES `dt_team` (`id_team`);

--
-- Constraints for table `dt_team`
--
ALTER TABLE `dt_team`
  ADD CONSTRAINT `dt_team_ibfk_1` FOREIGN KEY (`id_pendaftar`) REFERENCES `dt_member` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
