-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 02, 2023 at 12:17 PM
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
CREATE DATABASE IF NOT EXISTS `davay` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `davay`;

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
(1, '123', '123', '123@gmail.com', 'admin', 'dog', '2023-01-02');

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
(25, 'e', 'e', 'e@mail.com', 2147483647, 5),
(26, 't1', 't1', 'a@mail.com', 555555, 6),
(27, 't2', 't2', 'b@gmail.com', 21313, 6),
(28, 't3', 't3', 'c@mail.com', 2147483647, 6),
(29, 't4', 'd', 'd@mail.com', 312313, 6),
(30, 'e', 'e', 'e@mail.com', 2147483647, 6),
(31, 't1', 't1', 'a@mail.com', 555555, 7),
(32, 't2', 't2', 'b@gmail.com', 21313, 7),
(33, 't3', 't3', 'c@mail.com', 2147483647, 7),
(34, 't4', 'd', 'd@mail.com', 312313, 7),
(35, 'e', 'e', 'e@mail.com', 2147483647, 7),
(36, 't1', 't1', 'a@mail.com', 555555, 8),
(37, 't2', 't2', 'b@gmail.com', 21313, 8),
(38, 't3', 't3', 'c@mail.com', 2147483647, 8),
(39, 't4', 'd', 'd@mail.com', 312313, 8),
(40, 'e', 'e', 'e@mail.com', 2147483647, 8),
(41, 't1', 't1', 'a@mail.com', 555555, 9),
(42, 't2', 't2', 'b@gmail.com', 21313, 9),
(43, 't3', 't3', 'c@mail.com', 2147483647, 9),
(44, 't4', 'd', 'd@mail.com', 312313, 9),
(45, 'e', 'e', 'e@mail.com', 2147483647, 9),
(46, 't1', 't1', 'a@mail.com', 555555, 10),
(47, 't2', 't2', 'b@gmail.com', 21313, 10),
(48, 't3', 't3', 'c@mail.com', 2147483647, 10),
(49, 't4', 'd', 'd@mail.com', 312313, 10),
(50, 'e', 'e', 'e@mail.com', 2147483647, 10),
(51, 't1', 't1', 'a@mail.com', 555555, 11),
(52, 't2', 't2', 'b@gmail.com', 21313, 11),
(53, 't3', 't3', 'c@mail.com', 2147483647, 11),
(54, 't4', 'd', 'd@mail.com', 312313, 11),
(55, 'e', 'e', 'e@mail.com', 2147483647, 11),
(56, 't1', 't1', 'a@mail.com', 555555, 12),
(57, 't2', 't2', 'b@gmail.com', 21313, 12),
(58, 't3', 't3', 'c@mail.com', 2147483647, 12),
(59, 't4', 'd', 'd@mail.com', 312313, 12),
(60, 'e', 'e', 'e@mail.com', 2147483647, 12),
(61, 't1', 't1', 'a@mail.com', 555555, 13),
(62, 't2', 't2', 'b@gmail.com', 21313, 13),
(63, 't3', 't3', 'c@mail.com', 2147483647, 13),
(64, 't4', 'd', 'd@mail.com', 312313, 13),
(65, 'e', 'e', 'e@mail.com', 2147483647, 13),
(66, 't1', 't1', 'a@mail.com', 555555, 14),
(67, 't2', 't2', 'b@gmail.com', 21313, 14),
(68, 't3', 't3', 'c@mail.com', 2147483647, 14),
(69, 't4', 'd', 'd@mail.com', 312313, 14),
(70, 'e', 'e', 'e@mail.com', 2147483647, 14),
(71, 't1', 't1', 'a@mail.com', 555555, 15),
(72, 't2', 't2', 'b@gmail.com', 21313, 15),
(73, 't3', 't3', 'c@mail.com', 2147483647, 15),
(74, 't4', 'd', 'd@mail.com', 312313, 15),
(75, 'e', 'e', 'e@mail.com', 2147483647, 15),
(76, 't1', 't1', 'a@mail.com', 555555, 16),
(77, 't2', 't2', 'b@gmail.com', 21313, 16),
(78, 't3', 't3', 'c@mail.com', 2147483647, 16),
(79, 't4', 'd', 'd@mail.com', 312313, 16),
(80, 'e', 'e', 'e@mail.com', 2147483647, 16),
(81, 't1', 't1', 'a@mail.com', 555555, 17),
(82, 't2', 't2', 'b@gmail.com', 21313, 17),
(83, 't3', 't3', 'c@mail.com', 2147483647, 17),
(84, 't4', 'd', 'd@mail.com', 312313, 17),
(85, 'e', 'e', 'e@mail.com', 2147483647, 17),
(86, 't1', 't1', 'a@mail.com', 555555, 18),
(87, 't2', 't2', 'b@gmail.com', 21313, 18),
(88, 't3', 't3', 'c@mail.com', 2147483647, 18),
(89, 't4', 'd', 'd@mail.com', 312313, 18),
(90, 'e', 'e', 'e@mail.com', 2147483647, 18),
(91, 't1', 't1', 'a@mail.com', 555555, 19),
(92, 't2', 't2', 'b@gmail.com', 21313, 19),
(93, 't3', 't3', 'c@mail.com', 2147483647, 19),
(94, 't4', 'd', 'd@mail.com', 312313, 19),
(95, 'e', 'e', 'e@mail.com', 2147483647, 19),
(96, 't1', 't1', 'a@mail.com', 555555, 20),
(97, 't2', 't2', 'b@gmail.com', 21313, 20),
(98, 't3', 't3', 'c@mail.com', 2147483647, 20),
(99, 't4', 'd', 'd@mail.com', 312313, 20),
(100, 'e', 'e', 'e@mail.com', 2147483647, 20),
(101, 't1', 't1', 'a@mail.com', 555555, 21),
(102, 't2', 't2', 'b@gmail.com', 21313, 21),
(103, 't3', 't3', 'c@mail.com', 2147483647, 21),
(104, 't4', 'd', 'd@mail.com', 312313, 21),
(105, 'e', 'e', 'e@mail.com', 2147483647, 21),
(106, 't1', 't1', 'a@mail.com', 555555, 22),
(107, 't2', 't2', 'b@gmail.com', 21313, 22),
(108, 't3', 't3', 'c@mail.com', 2147483647, 22),
(109, 't4', 'd', 'd@mail.com', 312313, 22),
(110, 'e', 'e', 'e@mail.com', 2147483647, 22),
(111, 't1', 't1', 'a@mail.com', 555555, 23),
(112, 't2', 't2', 'b@gmail.com', 21313, 23),
(113, 't3', 't3', 'c@mail.com', 2147483647, 23),
(114, 't4', 'd', 'd@mail.com', 312313, 23),
(115, 'e', 'e', 'e@mail.com', 2147483647, 23),
(116, 't1', 't1', 'a@mail.com', 555555, 24),
(117, 't2', 't2', 'b@gmail.com', 21313, 24),
(118, 't3', 't3', 'c@mail.com', 2147483647, 24),
(119, 't4', 'd', 'd@mail.com', 312313, 24),
(120, 'e', 'e', 'e@mail.com', 2147483647, 24),
(121, 't1', 't1', 'a@mail.com', 555555, 25),
(122, 't2', 't2', 'b@gmail.com', 21313, 25),
(123, 't3', 't3', 'c@mail.com', 2147483647, 25),
(124, 't4', 'd', 'd@mail.com', 312313, 25),
(125, 'e', 'e', 'e@mail.com', 2147483647, 25),
(126, 't1', 't1', 'a@mail.com', 555555, 26),
(127, 't2', 't2', 'b@gmail.com', 21313, 26),
(128, 't3', 't3', 'c@mail.com', 2147483647, 26),
(129, 't4', 'd', 'd@mail.com', 312313, 26),
(130, 'e', 'e', 'e@mail.com', 2147483647, 26),
(131, 't1', 't1', 'a@mail.com', 555555, 27),
(132, 't2', 't2', 'b@gmail.com', 21313, 27),
(133, 't3', 't3', 'c@mail.com', 2147483647, 27),
(134, 't4', 'd', 'd@mail.com', 312313, 27),
(135, 'e', 'e', 'e@mail.com', 2147483647, 27),
(136, 't1', 't1', 'a@mail.com', 555555, 28),
(137, 't2', 't2', 'b@gmail.com', 21313, 28),
(138, 't3', 't3', 'c@mail.com', 2147483647, 28),
(139, 't4', 'd', 'd@mail.com', 312313, 28),
(140, 'e', 'e', 'e@mail.com', 2147483647, 28),
(141, 't1', 't1', 'a@mail.com', 555555, 29),
(142, 't2', 't2', 'b@gmail.com', 21313, 29),
(143, 't3', 't3', 'c@mail.com', 2147483647, 29),
(144, 't4', 'd', 'd@mail.com', 312313, 29),
(145, 'e', 'e', 'e@mail.com', 2147483647, 29),
(146, 't1', 't1', 'a@mail.com', 555555, 30),
(147, 't2', 't2', 'b@gmail.com', 21313, 30),
(148, 't3', 't3', 'c@mail.com', 2147483647, 30),
(149, 't4', 'd', 'd@mail.com', 312313, 30),
(150, 'e', 'e', 'e@mail.com', 2147483647, 30),
(151, 't1', 't1', 'a@mail.com', 555555, 31),
(152, 't2', 't2', 'b@gmail.com', 21313, 31),
(153, 't3', 't3', 'c@mail.com', 2147483647, 31),
(154, 't4', 'd', 'd@mail.com', 312313, 31),
(155, 'e', 'e', 'e@mail.com', 2147483647, 31),
(156, 't1', 't1', 'a@mail.com', 555555, 32),
(157, 't2', 't2', 'b@gmail.com', 21313, 32),
(158, 't3', 't3', 'c@mail.com', 2147483647, 32),
(159, 't4', 'd', 'd@mail.com', 312313, 32),
(160, 'e', 'e', 'e@mail.com', 2147483647, 32),
(161, 't1', 't1', 'a@mail.com', 555555, 33),
(162, 't2', 't2', 'b@gmail.com', 21313, 33),
(163, 't3', 't3', 'c@mail.com', 2147483647, 33),
(164, 't4', 'd', 'd@mail.com', 312313, 33),
(165, 'e', 'e', 'e@mail.com', 2147483647, 33),
(166, 't1', 't1', 'a@mail.com', 555555, 34),
(167, 't2', 't2', 'b@gmail.com', 21313, 34),
(168, 't3', 't3', 'c@mail.com', 2147483647, 34),
(169, 't4', 'd', 'd@mail.com', 312313, 34),
(170, 'e', 'e', 'e@mail.com', 2147483647, 34),
(171, 't1', 't1', 'a@mail.com', 555555, 35),
(172, 't2', 't2', 'b@gmail.com', 21313, 35),
(173, 't3', 't3', 'c@mail.com', 2147483647, 35),
(174, 't4', 'd', 'd@mail.com', 312313, 35),
(175, 'e', 'e', 'e@mail.com', 2147483647, 35),
(176, 't1', 't1', 'a@mail.com', 555555, 36),
(177, 't2', 't2', 'b@gmail.com', 21313, 36),
(178, 't3', 't3', 'c@mail.com', 2147483647, 36),
(179, 't4', 'd', 'd@mail.com', 312313, 36),
(180, 'e', 'e', 'e@mail.com', 2147483647, 36),
(181, 't1', 't1', 'a@mail.com', 555555, 37),
(182, 't2', 't2', 'b@gmail.com', 21313, 37),
(183, 't3', 't3', 'c@mail.com', 2147483647, 37),
(184, 't4', 'd', 'd@mail.com', 312313, 37),
(185, 'e', 'e', 'e@mail.com', 2147483647, 37),
(186, 't1', 't1', 'a@mail.com', 555555, 38),
(187, 't2', 't2', 'b@gmail.com', 21313, 38),
(188, 't3', 't3', 'c@mail.com', 2147483647, 38),
(189, 't4', 'd', 'd@mail.com', 312313, 38),
(190, 'e', 'e', 'e@mail.com', 2147483647, 38),
(191, 't1', 't1', 'a@mail.com', 555555, 39),
(192, 't2', 't2', 'b@gmail.com', 21313, 39),
(193, 't3', 't3', 'c@mail.com', 2147483647, 39),
(194, 't4', 'd', 'd@mail.com', 312313, 39),
(195, 'e', 'e', 'e@mail.com', 2147483647, 39),
(196, 't1', 't1', 'a@mail.com', 555555, 40),
(197, 't2', 't2', 'b@gmail.com', 21313, 40),
(198, 't3', 't3', 'c@mail.com', 2147483647, 40),
(199, 't4', 'd', 'd@mail.com', 312313, 40),
(200, 'e', 'e', 'e@mail.com', 2147483647, 40),
(201, 't1', 't1', 'a@mail.com', 555555, 41),
(202, 't2', 't2', 'b@gmail.com', 21313, 41),
(203, 't3', 't3', 'c@mail.com', 2147483647, 41),
(204, 't4', 'd', 'd@mail.com', 312313, 41),
(205, 'e', 'e', 'e@mail.com', 2147483647, 41),
(206, 't1', 't1', 'a@mail.com', 555555, 42),
(207, 't2', 't2', 'b@gmail.com', 21313, 42),
(208, 't3', 't3', 'c@mail.com', 2147483647, 42),
(209, 't4', 'd', 'd@mail.com', 312313, 42),
(210, 'e', 'e', 'e@mail.com', 2147483647, 42),
(211, 't1', 't1', 'a@mail.com', 555555, 43),
(212, 't2', 't2', 'b@gmail.com', 21313, 43),
(213, 't3', 't3', 'c@mail.com', 2147483647, 43),
(214, 't4', 'd', 'd@mail.com', 312313, 43),
(215, 'e', 'e', 'e@mail.com', 2147483647, 43),
(216, 't1', 't1', 'a@mail.com', 555555, 44),
(217, 't2', 't2', 'b@gmail.com', 21313, 44),
(218, 't3', 't3', 'c@mail.com', 2147483647, 44),
(219, 't4', 'd', 'd@mail.com', 312313, 44),
(220, 'e', 'e', 'e@mail.com', 2147483647, 44),
(221, 't1', 't1', 'a@mail.com', 555555, 45),
(222, 't2', 't2', 'b@gmail.com', 21313, 45),
(223, 't3', 't3', 'c@mail.com', 2147483647, 45),
(224, 't4', 'd', 'd@mail.com', 312313, 45),
(225, 'e', 'e', 'e@mail.com', 2147483647, 45),
(226, 't1', 't1', 'a@mail.com', 555555, 46),
(227, 't2', 't2', 'b@gmail.com', 21313, 46),
(228, 't3', 't3', 'c@mail.com', 2147483647, 46),
(229, 't4', 'd', 'd@mail.com', 312313, 46),
(230, 'e', 'e', 'e@mail.com', 2147483647, 46),
(231, 't1', 't1', 'a@mail.com', 555555, 47),
(232, 't2', 't2', 'b@gmail.com', 21313, 47),
(233, 't3', 't3', 'c@mail.com', 2147483647, 47),
(234, 't4', 'd', 'd@mail.com', 312313, 47),
(235, 'e', 'e', 'e@mail.com', 2147483647, 47),
(236, 't1', 't1', 'a@mail.com', 555555, 48),
(237, 't2', 't2', 'b@gmail.com', 21313, 48),
(238, 't3', 't3', 'c@mail.com', 2147483647, 48),
(239, 't4', 'd', 'd@mail.com', 312313, 48),
(240, 'e', 'e', 'e@mail.com', 2147483647, 48),
(241, 't1', 't1', 'a@mail.com', 555555, 49),
(242, 't2', 't2', 'b@gmail.com', 21313, 49),
(243, 't3', 't3', 'c@mail.com', 2147483647, 49),
(244, 't4', 'd', 'd@mail.com', 312313, 49),
(245, 'e', 'e', 'e@mail.com', 2147483647, 49),
(246, 't1', 't1', 'a@mail.com', 555555, 50),
(247, 't2', 't2', 'b@gmail.com', 21313, 50),
(248, 't3', 't3', 'c@mail.com', 2147483647, 50),
(249, 't4', 'd', 'd@mail.com', 312313, 50),
(250, 'e', 'e', 'e@mail.com', 2147483647, 50),
(251, 't1', 't1', 'a@mail.com', 555555, 51),
(252, 't2', 't2', 'b@gmail.com', 21313, 51),
(253, 't3', 't3', 'c@mail.com', 2147483647, 51),
(254, 't4', 'd', 'd@mail.com', 312313, 51),
(255, 'e', 'e', 'e@mail.com', 2147483647, 51),
(256, 't1', 't1', 'a@mail.com', 555555, 52),
(257, 't2', 't2', 'b@gmail.com', 21313, 52),
(258, 't3', 't3', 'c@mail.com', 2147483647, 52),
(259, 't4', 'd', 'd@mail.com', 312313, 52),
(260, 'e', 'e', 'e@mail.com', 2147483647, 52),
(261, 't1', 't1', 'a@mail.com', 555555, 53),
(262, 't2', 't2', 'b@gmail.com', 21313, 53),
(263, 't3', 't3', 'c@mail.com', 2147483647, 53),
(264, 't4', 'd', 'd@mail.com', 312313, 53),
(265, 'e', 'e', 'e@mail.com', 2147483647, 53),
(266, 't1', 't1', 'a@mail.com', 555555, 54),
(267, 't2', 't2', 'b@gmail.com', 21313, 54),
(268, 't3', 't3', 'c@mail.com', 2147483647, 54),
(269, 't4', 'd', 'd@mail.com', 312313, 54),
(270, 'e', 'e', 'e@mail.com', 2147483647, 54),
(271, 't1', 't1', 'a@mail.com', 555555, 55),
(272, 't2', 't2', 'b@gmail.com', 21313, 55),
(273, 't3', 't3', 'c@mail.com', 2147483647, 55),
(274, 't4', 'd', 'd@mail.com', 312313, 55),
(275, 'e', 'e', 'e@mail.com', 2147483647, 55),
(276, 't1', 't1', 'a@mail.com', 555555, 56),
(277, 't2', 't2', 'b@gmail.com', 21313, 56),
(278, 't3', 't3', 'c@mail.com', 2147483647, 56),
(279, 't4', 'd', 'd@mail.com', 312313, 56),
(280, 'e', 'e', 'e@mail.com', 2147483647, 56),
(281, 't1', 't1', 'a@mail.com', 555555, 57),
(282, 't2', 't2', 'b@gmail.com', 21313, 57),
(283, 't3', 't3', 'c@mail.com', 2147483647, 57),
(284, 't4', 'd', 'd@mail.com', 312313, 57),
(285, 'e', 'e', 'e@mail.com', 2147483647, 57),
(286, 't1', 't1', 'a@mail.com', 555555, 58),
(287, 't2', 't2', 'b@gmail.com', 21313, 58),
(288, 't3', 't3', 'c@mail.com', 2147483647, 58),
(289, 't4', 'd', 'd@mail.com', 312313, 58),
(290, 'e', 'e', 'e@mail.com', 2147483647, 58),
(291, 't1', 't1', 'a@mail.com', 555555, 59),
(292, 't2', 't2', 'b@gmail.com', 21313, 59),
(293, 't3', 't3', 'c@mail.com', 2147483647, 59),
(294, 't4', 'd', 'd@mail.com', 312313, 59),
(295, 'e', 'e', 'e@mail.com', 2147483647, 59),
(296, 't1', 't1', 'a@mail.com', 555555, 60),
(297, 't2', 't2', 'b@gmail.com', 21313, 60),
(298, 't3', 't3', 'c@mail.com', 2147483647, 60),
(299, 't4', 'd', 'd@mail.com', 312313, 60),
(300, 'e', 'e', 'e@mail.com', 2147483647, 60),
(301, 't1', 't1', 'a@mail.com', 555555, 61),
(302, 't2', 't2', 'b@gmail.com', 21313, 61),
(303, 't3', 't3', 'c@mail.com', 2147483647, 61),
(304, 't4', 'd', 'd@mail.com', 312313, 61),
(305, 'e', 'e', 'e@mail.com', 2147483647, 61),
(306, 't1', 't1', 'a@mail.com', 555555, 62),
(307, 't2', 't2', 'b@gmail.com', 21313, 62),
(308, 't3', 't3', 'c@mail.com', 2147483647, 62),
(309, 't4', 'd', 'd@mail.com', 312313, 62),
(310, 'e', 'e', 'e@mail.com', 2147483647, 62),
(311, 't1', 't1', 'a@mail.com', 555555, 63),
(312, 't2', 't2', 'b@gmail.com', 21313, 63),
(313, 't3', 't3', 'c@mail.com', 2147483647, 63),
(314, 't4', 'd', 'd@mail.com', 312313, 63),
(315, 'e', 'e', 'e@mail.com', 2147483647, 63),
(316, 't1', 't1', 'a@mail.com', 555555, 64),
(317, 't2', 't2', 'b@gmail.com', 21313, 64),
(318, 't3', 't3', 'c@mail.com', 2147483647, 64),
(319, 't4', 'd', 'd@mail.com', 312313, 64),
(320, 'e', 'e', 'e@mail.com', 2147483647, 64),
(321, 't1', 't1', 'a@mail.com', 555555, 65),
(322, 't2', 't2', 'b@gmail.com', 21313, 65),
(323, 't3', 't3', 'c@mail.com', 2147483647, 65),
(324, 't4', 'd', 'd@mail.com', 312313, 65),
(325, 'e', 'e', 'e@mail.com', 2147483647, 65),
(326, 't1', 't1', 'a@mail.com', 555555, 66),
(327, 't2', 't2', 'b@gmail.com', 21313, 66),
(328, 't3', 't3', 'c@mail.com', 2147483647, 66),
(329, 't4', 'd', 'd@mail.com', 312313, 66),
(330, 'e', 'e', 'e@mail.com', 2147483647, 66),
(331, 't1', 't1', 'a@mail.com', 555555, 67),
(332, 't2', 't2', 'b@gmail.com', 21313, 67),
(333, 't3', 't3', 'c@mail.com', 2147483647, 67),
(334, 't4', 'd', 'd@mail.com', 312313, 67),
(335, 'e', 'e', 'e@mail.com', 2147483647, 67),
(336, 't1', 't1', 'a@mail.com', 555555, 68),
(337, 't2', 't2', 'b@gmail.com', 21313, 68),
(338, 't3', 't3', 'c@mail.com', 2147483647, 68),
(339, 't4', 'd', 'd@mail.com', 312313, 68),
(340, 'e', 'e', 'e@mail.com', 2147483647, 68),
(341, 't1', 't1', 'a@mail.com', 555555, 69),
(342, 't2', 't2', 'b@gmail.com', 21313, 69),
(343, 't3', 't3', 'c@mail.com', 2147483647, 69),
(344, 't4', 'd', 'd@mail.com', 312313, 69),
(345, 'e', 'e', 'e@mail.com', 2147483647, 69),
(346, 't1', 't1', 'a@mail.com', 555555, 70),
(347, 't2', 't2', 'b@gmail.com', 21313, 70),
(348, 't3', 't3', 'c@mail.com', 2147483647, 70),
(349, 't4', 'd', 'd@mail.com', 312313, 70),
(350, 'e', 'e', 'e@mail.com', 2147483647, 70),
(351, 't1', 't1', 'a@mail.com', 555555, 71),
(352, 't2', 't2', 'b@gmail.com', 21313, 71),
(353, 't3', 't3', 'c@mail.com', 2147483647, 71),
(354, 't4', 'd', 'd@mail.com', 312313, 71),
(355, 'e', 'e', 'e@mail.com', 2147483647, 71),
(356, 't1', 't1', 'a@mail.com', 555555, 72),
(357, 't2', 't2', 'b@gmail.com', 21313, 72),
(358, 't3', 't3', 'c@mail.com', 2147483647, 72),
(359, 't4', 'd', 'd@mail.com', 312313, 72),
(360, 'e', 'e', 'e@mail.com', 2147483647, 72),
(361, 't1', 't1', 'a@mail.com', 555555, 73),
(362, 't2', 't2', 'b@gmail.com', 21313, 73),
(363, 't3', 't3', 'c@mail.com', 2147483647, 73),
(364, 't4', 'd', 'd@mail.com', 312313, 73),
(365, 'e', 'e', 'e@mail.com', 2147483647, 73),
(366, 't1', 't1', 'a@mail.com', 555555, 74),
(367, 't2', 't2', 'b@gmail.com', 21313, 74),
(368, 't3', 't3', 'c@mail.com', 2147483647, 74),
(369, 't4', 'd', 'd@mail.com', 312313, 74),
(370, 'e', 'e', 'e@mail.com', 2147483647, 74),
(371, 't1', 't1', 'a@mail.com', 555555, 75),
(372, 't2', 't2', 'b@gmail.com', 21313, 75),
(373, 't3', 't3', 'c@mail.com', 2147483647, 75),
(374, 't4', 'd', 'd@mail.com', 312313, 75),
(375, 'e', 'e', 'e@mail.com', 2147483647, 75),
(376, 't1', 't1', 'a@mail.com', 555555, 76),
(377, 't2', 't2', 'b@gmail.com', 21313, 76),
(378, 't3', 't3', 'c@mail.com', 2147483647, 76),
(379, 't4', 'd', 'd@mail.com', 312313, 76),
(380, 'e', 'e', 'e@mail.com', 2147483647, 76),
(381, 't1', 't1', 'a@mail.com', 555555, 77),
(382, 't2', 't2', 'b@gmail.com', 21313, 77),
(383, 't3', 't3', 'c@mail.com', 2147483647, 77),
(384, 't4', 'd', 'd@mail.com', 312313, 77),
(385, 'e', 'e', 'e@mail.com', 2147483647, 77),
(386, 't1', 't1', 'a@mail.com', 555555, 78),
(387, 't2', 't2', 'b@gmail.com', 21313, 78),
(388, 't3', 't3', 'c@mail.com', 2147483647, 78),
(389, 't4', 'd', 'd@mail.com', 312313, 78),
(390, 'e', 'e', 'e@mail.com', 2147483647, 78),
(391, 't1', 't1', 'a@mail.com', 555555, 79),
(392, 't2', 't2', 'b@gmail.com', 21313, 79),
(393, 't3', 't3', 'c@mail.com', 2147483647, 79),
(394, 't4', 'd', 'd@mail.com', 312313, 79),
(395, 'e', 'e', 'e@mail.com', 2147483647, 79),
(396, 't1', 't1', 'a@mail.com', 555555, 80),
(397, 't2', 't2', 'b@gmail.com', 21313, 80),
(398, 't3', 't3', 'c@mail.com', 2147483647, 80),
(399, 't4', 'd', 'd@mail.com', 312313, 80),
(400, 'e', 'e', 'e@mail.com', 2147483647, 80),
(401, 't1', 't1', 'a@mail.com', 555555, 81),
(402, 't2', 't2', 'b@gmail.com', 21313, 81),
(403, 't3', 't3', 'c@mail.com', 2147483647, 81),
(404, 't4', 'd', 'd@mail.com', 312313, 81),
(405, 'e', 'e', 'e@mail.com', 2147483647, 81),
(406, 't1', 't1', 'a@mail.com', 555555, 82),
(407, 't2', 't2', 'b@gmail.com', 21313, 82),
(408, 't3', 't3', 'c@mail.com', 2147483647, 82),
(409, 't4', 'd', 'd@mail.com', 312313, 82),
(410, 'e', 'e', 'e@mail.com', 2147483647, 82),
(411, 't1', 't1', 'a@mail.com', 555555, 83),
(412, 't2', 't2', 'b@gmail.com', 21313, 83),
(413, 't3', 't3', 'c@mail.com', 2147483647, 83),
(414, 't4', 'd', 'd@mail.com', 312313, 83),
(415, 'e', 'e', 'e@mail.com', 2147483647, 83),
(416, 't1', 't1', 'a@mail.com', 555555, 84),
(417, 't2', 't2', 'b@gmail.com', 21313, 84),
(418, 't3', 't3', 'c@mail.com', 2147483647, 84),
(419, 't4', 'd', 'd@mail.com', 312313, 84),
(420, 'e', 'e', 'e@mail.com', 2147483647, 84),
(421, 't1', 't1', 'a@mail.com', 555555, 85),
(422, 't2', 't2', 'b@gmail.com', 21313, 85),
(423, 't3', 't3', 'c@mail.com', 2147483647, 85),
(424, 't4', 'd', 'd@mail.com', 312313, 85),
(425, 'e', 'e', 'e@mail.com', 2147483647, 85),
(426, 't1', 't1', 'a@mail.com', 555555, 86),
(427, 't2', 't2', 'b@gmail.com', 21313, 86),
(428, 't3', 't3', 'c@mail.com', 2147483647, 86),
(429, 't4', 'd', 'd@mail.com', 312313, 86),
(430, 'e', 'e', 'e@mail.com', 2147483647, 86),
(431, 't1', 't1', 'a@mail.com', 555555, 87),
(432, 't2', 't2', 'b@gmail.com', 21313, 87),
(433, 't3', 't3', 'c@mail.com', 2147483647, 87),
(434, 't4', 'd', 'd@mail.com', 312313, 87),
(435, 'e', 'e', 'e@mail.com', 2147483647, 87),
(436, 't1', 't1', 'a@mail.com', 555555, 88),
(437, 't2', 't2', 'b@gmail.com', 21313, 88),
(438, 't3', 't3', 'c@mail.com', 2147483647, 88),
(439, 't4', 'd', 'd@mail.com', 312313, 88),
(440, 'e', 'e', 'e@mail.com', 2147483647, 88),
(441, 't1', 't1', 'a@mail.com', 555555, 89),
(442, 't2', 't2', 'b@gmail.com', 21313, 89),
(443, 't3', 't3', 'c@mail.com', 2147483647, 89),
(444, 't4', 'd', 'd@mail.com', 312313, 89),
(445, 'e', 'e', 'e@mail.com', 2147483647, 89),
(446, 't1', 't1', 'a@mail.com', 555555, 90),
(447, 't2', 't2', 'b@gmail.com', 21313, 90),
(448, 't3', 't3', 'c@mail.com', 2147483647, 90),
(449, 't4', 'd', 'd@mail.com', 312313, 90),
(450, 'e', 'e', 'e@mail.com', 2147483647, 90),
(451, 't1', 't1', 'a@mail.com', 555555, 91),
(452, 't2', 't2', 'b@gmail.com', 21313, 91),
(453, 't3', 't3', 'c@mail.com', 2147483647, 91),
(454, 't4', 'd', 'd@mail.com', 312313, 91),
(455, 'e', 'e', 'e@mail.com', 2147483647, 91),
(456, 't1', 't1', 'a@mail.com', 555555, 92),
(457, 't2', 't2', 'b@gmail.com', 21313, 92),
(458, 't3', 't3', 'c@mail.com', 2147483647, 92),
(459, 't4', 'd', 'd@mail.com', 312313, 92),
(460, 'e', 'e', 'e@mail.com', 2147483647, 92);

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
(1, 'test', 1),
(2, 'test', 1),
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
--
-- Database: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Table structure for table `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(10) UNSIGNED NOT NULL,
  `dbase` varchar(255) NOT NULL DEFAULT '',
  `user` varchar(255) NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `query` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Table structure for table `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) NOT NULL,
  `col_name` varchar(64) NOT NULL,
  `col_type` varchar(64) NOT NULL,
  `col_length` text DEFAULT NULL,
  `col_collation` varchar(64) NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) DEFAULT '',
  `col_default` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Table structure for table `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `column_name` varchar(64) NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `transformation` varchar(255) NOT NULL DEFAULT '',
  `transformation_options` varchar(255) NOT NULL DEFAULT '',
  `input_transformation` varchar(255) NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) NOT NULL,
  `settings_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

-- --------------------------------------------------------

--
-- Table structure for table `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL,
  `export_type` varchar(10) NOT NULL,
  `template_name` varchar(64) NOT NULL,
  `template_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

-- --------------------------------------------------------

--
-- Table structure for table `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) NOT NULL,
  `tables` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Table structure for table `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL DEFAULT '',
  `db` varchar(64) NOT NULL DEFAULT '',
  `table` varchar(64) NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp(),
  `sqlquery` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) NOT NULL,
  `item_name` varchar(64) NOT NULL,
  `item_type` varchar(64) NOT NULL,
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Table structure for table `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) NOT NULL,
  `tables` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Dumping data for table `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{\"db\":\"davay\",\"table\":\"dt_match\"}]');

-- --------------------------------------------------------

--
-- Table structure for table `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) NOT NULL DEFAULT '',
  `master_table` varchar(64) NOT NULL DEFAULT '',
  `master_field` varchar(64) NOT NULL DEFAULT '',
  `foreign_db` varchar(64) NOT NULL DEFAULT '',
  `foreign_table` varchar(64) NOT NULL DEFAULT '',
  `foreign_field` varchar(64) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Table structure for table `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL DEFAULT '',
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `search_name` varchar(64) NOT NULL DEFAULT '',
  `search_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT 0,
  `x` float UNSIGNED NOT NULL DEFAULT 0,
  `y` float UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `display_field` varchar(64) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) NOT NULL,
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL,
  `prefs` text NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

-- --------------------------------------------------------

--
-- Table structure for table `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text NOT NULL,
  `schema_sql` text DEFAULT NULL,
  `data_sql` longtext DEFAULT NULL,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `config_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Dumping data for table `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2019-10-21 13:37:09', '{\"Console\\/Mode\":\"collapse\"}');

-- --------------------------------------------------------

--
-- Table structure for table `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) NOT NULL,
  `tab` varchar(64) NOT NULL,
  `allowed` enum('Y','N') NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Table structure for table `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) NOT NULL,
  `usergroup` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Indexes for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Indexes for table `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Indexes for table `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Indexes for table `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Indexes for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Indexes for table `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Indexes for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Indexes for table `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Indexes for table `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Indexes for table `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Indexes for table `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Indexes for table `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Indexes for table `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Database: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
