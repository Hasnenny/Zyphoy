-- phpMyAdmin SQL Dump
-- version 5.2.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Apr 06, 2026 at 03:38 PM
-- Server version: 10.11.16-MariaDB
-- PHP Version: 8.4.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pnlpro_apimod`
--

-- --------------------------------------------------------

--
-- Table structure for table `credit`
--

CREATE TABLE `credit` (
  `id` int(11) NOT NULL,
  `name` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `credit`
--

INSERT INTO `credit` (`id`, `name`) VALUES
(1, '');

-- --------------------------------------------------------

--
-- Table structure for table `Feature`
--

CREATE TABLE `Feature` (
  `id` int(11) NOT NULL,
  `ESP` varchar(3) NOT NULL,
  `Item` varchar(3) NOT NULL,
  `SilentAim` varchar(3) NOT NULL,
  `AIM` varchar(3) NOT NULL,
  `BulletTrack` varchar(3) NOT NULL,
  `Memory` varchar(3) NOT NULL,
  `Floating` varchar(3) NOT NULL,
  `Setting` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `Feature`
--

INSERT INTO `Feature` (`id`, `ESP`, `Item`, `SilentAim`, `AIM`, `BulletTrack`, `Memory`, `Floating`, `Setting`) VALUES
(1, 'on', 'on', 'on', 'on', 'on', 'on', 'on', 'on');

-- --------------------------------------------------------

--
-- Table structure for table `history`
--

CREATE TABLE `history` (
  `id_history` int(11) NOT NULL,
  `keys_id` varchar(33) DEFAULT NULL,
  `user_do` varchar(33) DEFAULT NULL,
  `info` mediumtext NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `history`
--

INSERT INTO `history` (`id_history`, `keys_id`, `user_do`, `info`, `created_at`, `updated_at`) VALUES
(1, '1', 'ENGINE', 'PUBG|ENGIN|2|1', '2025-01-24 16:46:53', '2025-01-24 16:46:53'),
(2, '2', 'ENGINE', 'PUBG|ENGIN|2|1', '2025-01-24 16:47:45', '2025-01-24 16:47:45'),
(3, '3', 'ENGINE', 'PUBG|ENGIN|2|1', '2025-01-24 18:01:53', '2025-01-24 18:01:53'),
(4, '4', 'ENGINE', 'PUBG|ENGIN|24|1', '2025-01-24 18:02:19', '2025-01-24 18:02:19'),
(5, '5', 'ENGINE', 'PUBG|Silen|2|1', '2025-01-24 22:58:30', '2025-01-24 22:58:30'),
(6, '6', 'ENGINE', 'PUBG|ENGIN|2|1', '2025-01-24 23:04:51', '2025-01-24 23:04:51'),
(7, '7', 'ENGINE', 'PUBG|ENGIN|2|1', '2025-01-24 23:11:21', '2025-01-24 23:11:21'),
(8, '8', 'ENGINE', 'PUBG|KILLE|720|1', '2025-01-26 11:29:25', '2025-01-26 11:29:25'),
(9, '9', 'ENGINE', 'PUBG|ENGIN|2|1', '2025-02-01 21:11:48', '2025-02-01 21:11:48'),
(10, '10', 'ENGINE', 'PUBG|ENGIN|720|5', '2025-02-07 16:32:01', '2025-02-07 16:32:01'),
(11, '11', 'ENGINE', 'PUBG|PUSHP|720|5', '2025-02-18 12:14:37', '2025-02-18 12:14:37'),
(12, '12', 'ENGINE', 'PUBG|ENGIN|2|1', '2025-03-01 18:52:13', '2025-03-01 18:52:13'),
(13, '13', 'ENGINE', 'PUBG|ENGIN|5|1', '2025-03-01 18:54:08', '2025-03-01 18:54:08'),
(14, '14', 'ENGINE', 'PUBG|ENGIN|2|1', '2025-03-05 14:58:00', '2025-03-05 14:58:00'),
(15, '15', 'ENGINE', 'PUBG|ENGIN|720|10', '2025-03-05 16:56:15', '2025-03-05 16:56:15'),
(16, '16', 'ENGINE', 'PUBG|ENGIN|2|1', '2025-03-13 16:29:18', '2025-03-13 16:29:18'),
(17, '17', 'ENGINE', 'PUBG|ENGIN|24|1', '2025-03-13 16:37:47', '2025-03-13 16:37:47'),
(18, '18', 'ENGINE', 'PUBG|ENGIN|24|100', '2025-03-13 16:40:43', '2025-03-13 16:40:43'),
(19, '19', 'ENGINE', 'PUBG|ENGIN|24|1', '2025-03-15 14:43:55', '2025-03-15 14:43:55'),
(20, '20', 'ENGINE', 'PUBG|ENGIN|24|150', '2025-03-15 15:36:48', '2025-03-15 15:36:48'),
(21, '21', 'ENGINE', 'PUBG|ENGIN|2|1', '2025-03-19 12:25:07', '2025-03-19 12:25:07'),
(22, '22', 'ENGINE', 'PUBG|ENGIN|5|5', '2025-03-19 15:22:23', '2025-03-19 15:22:23'),
(23, '23', 'ENGINE', 'PUBG|ENGIN|24|1', '2025-03-20 22:56:54', '2025-03-20 22:56:54'),
(24, '24', 'ENGINE', 'PUBG|ENGIN|168|1', '2025-03-20 23:08:18', '2025-03-20 23:08:18'),
(25, '25', 'ENGINE', 'PUBG|ENGIN|5|1', '2025-03-20 23:10:05', '2025-03-20 23:10:05'),
(26, '26', 'ENGINE', 'PUBG|ENGIN|2|1', '2025-03-21 12:41:06', '2025-03-21 12:41:06'),
(27, '27', 'ENGINE', 'PUBG|ENGIN|72|1', '2025-03-21 12:41:20', '2025-03-21 12:41:20'),
(28, '28', 'ENGINE', 'PUBG|ENGIN|5|1', '2025-03-21 14:15:00', '2025-03-21 14:15:00'),
(29, '29', 'ENGINE', 'PUBG|ENGIN|24|2', '2025-03-21 14:42:39', '2025-03-21 14:42:39'),
(30, '30', 'ENGINE', 'PUBG|ENGIN|5|1', '2025-03-21 17:43:14', '2025-03-21 17:43:14'),
(31, '31', 'ENGINE', 'PUBG|ANDRO|720|10', '2025-03-22 19:55:47', '2025-03-22 19:55:47'),
(32, '32', 'ENGINE', 'PUBG|ENGIN|24|200', '2025-03-28 10:09:43', '2025-03-28 10:09:43'),
(33, '33', 'ENGINE', 'PUBG|ENGIN|5|1', '2025-05-15 19:48:37', '2025-05-15 19:48:37'),
(34, '34', 'ENGINE', 'PUBG|ENGIN|2|1', '2025-05-15 19:54:01', '2025-05-15 19:54:01'),
(35, '35', 'ENGINE', 'PUBG|ENGIN|24|1', '2025-05-17 11:13:57', '2025-05-17 11:13:57'),
(36, '36', 'ENGINE', 'PUBG|ENGIN|720|2', '2025-05-18 23:23:21', '2025-05-18 23:23:21'),
(37, '37', 'ENGINE', 'PUBG|ENGIN|168|500', '2025-05-18 23:25:48', '2025-05-18 23:25:48'),
(38, '38', 'ENGINE', 'PUBG|ENGIN|5|1', '2025-05-22 16:50:55', '2025-05-22 16:50:55'),
(39, '39', 'ENGINE', 'PUBG|ENGIN|5|2', '2025-05-22 16:51:04', '2025-05-22 16:51:04'),
(40, '40', 'ENGINE', 'PUBG|ENGIN|2|1', '2025-05-27 20:45:04', '2025-05-27 20:45:04'),
(41, '41', 'ENGINE', 'PUBG|ENGIN|2|1', '2025-06-10 11:07:46', '2025-06-10 11:07:46'),
(42, '42', 'SADAFANGEL', 'PUBG|SADAF|5|1', '2025-06-10 11:29:16', '2025-06-10 11:29:16'),
(43, '43', 'SADAFANGEL', 'PUBG|SADAF|24|50', '2025-06-10 12:08:21', '2025-06-10 12:08:21'),
(44, '44', 'AYUSHZEROONE', 'PUBG|AYUSH|720|10', '2025-06-10 21:29:56', '2025-06-10 21:29:56'),
(45, '47', 'ENGINE', 'PUBG|ENGIN|8760|1', '2025-06-10 22:51:44', '2025-06-10 22:51:44'),
(46, '51', 'AYUSHZEROONE', 'PUBG|AYUSH|2|1', '2025-06-11 13:12:48', '2025-06-11 13:12:48'),
(47, '85', 'ENGINE', 'PUBG|ENGIN|1|1', '2025-06-13 20:30:02', '2025-06-13 20:30:02'),
(48, '96', 'ENGINE', 'PUBG|ENGIN|1|1', '2025-06-15 13:47:53', '2025-06-15 13:47:53'),
(49, '124', 'ENGINE', 'PUBG|ENGIN|1|1', '2025-06-20 21:16:27', '2025-06-20 21:16:27'),
(50, '126', 'ENGINE', 'PUBG|ENGIN|1|1', '2025-06-20 21:49:49', '2025-06-20 21:49:49'),
(51, '134', 'ENGINE', 'PUBG|1234|8760|1', '2025-06-24 14:49:23', '2025-06-24 14:49:23'),
(52, '137', 'ENGINE', 'PUBG|ENGIN|1|1', '2025-06-27 12:47:35', '2025-06-27 12:47:35'),
(53, '168', 'ENGINE', 'PUBG|ENGIN|1|1', '2025-07-18 13:16:53', '2025-07-18 13:16:53'),
(54, '172', 'Jhskkwjnmkh', 'PUBG|Jhskk|1|1', '2025-07-29 19:48:54', '2025-07-29 19:48:54'),
(55, '173', 'Jhskkwjnmkh', 'PUBG|Jhskk|168|1', '2025-07-29 19:49:58', '2025-07-29 19:49:58'),
(56, '174', 'ENGINE', 'PUBG|ENGIN|1|1', '2025-07-29 20:06:52', '2025-07-29 20:06:52'),
(57, '175', 'ENGINE', 'PUBG|1xENG|1|1', '2025-07-29 20:08:12', '2025-07-29 20:08:12'),
(58, '176', 'ENGINE', 'PUBG|1HxEN|1|1', '2025-07-29 20:09:41', '2025-07-29 20:09:41'),
(59, '177', 'ENGINE', 'PUBG|24HxE|24|1', '2025-07-29 20:09:53', '2025-07-29 20:09:53'),
(60, '178', 'NEWPANNEL', 'PUBG|1HxNE|1|1', '2025-07-31 22:51:21', '2025-07-31 22:51:21'),
(61, '180', 'Rishi2021', 'PUBG|1HxRi|1|1', '2025-08-01 23:26:30', '2025-08-01 23:26:30'),
(62, '210', 'ENGINE', 'PUBG|Raju1|1|1', '2025-08-17 01:39:12', '2025-08-17 01:39:12'),
(63, '213', 'ENGINE', 'PUBG|1HxEN|1|1', '2025-08-25 21:49:17', '2025-08-25 21:49:17'),
(64, '214', 'Loadedvtx', 'PUBG|2HxLo|2|1', '2025-08-25 21:56:40', '2025-08-25 21:56:40'),
(65, '215', 'Loadedvtx', 'PUBG|1440H|1440|1', '2025-08-25 21:57:00', '2025-08-25 21:57:00'),
(66, '217', 'Loadedvtx', 'PUBG|8760H|8760|5', '2025-08-27 17:49:28', '2025-08-27 17:49:28'),
(67, '223', 'ENGINE', 'PUBG|24HxE|24|1', '2025-08-31 22:11:12', '2025-08-31 22:11:12'),
(68, '229', 'ENGINE', 'PUBG|5HxEN|5|1', '2025-09-07 01:16:22', '2025-09-07 01:16:22'),
(69, '234', 'ENGINE', 'PUBG|24HxE|24|1', '2025-09-07 01:18:20', '2025-09-07 01:18:20'),
(70, '239', 'ENGINE', 'PUBG|168Hx|168|1', '2025-09-07 01:19:56', '2025-09-07 01:19:56'),
(71, '244', 'ENGINE', 'PUBG|720Hx|720|1', '2025-09-07 01:21:39', '2025-09-07 01:21:39'),
(72, '249', 'ENGINE', 'PUBG|1440H|1440|1', '2025-09-07 01:22:57', '2025-09-07 01:22:57'),
(73, '250', 'ENGINE', 'PUBG|1HxEN|1|1', '2025-09-08 03:43:16', '2025-09-08 03:43:16'),
(74, '255', 'ENGINE', 'PUBG|1HxEN|1|1', '2025-09-08 03:47:05', '2025-09-08 03:47:05'),
(75, '260', 'ENGINE', 'PUBG|1HxEN|1|1', '2025-09-08 03:51:11', '2025-09-08 03:51:11'),
(76, '261', 'ENGINE', 'PUBG|1HxEN|1|1', '2025-09-08 03:52:05', '2025-09-08 03:52:05'),
(77, '262', 'ENGINE', 'PUBG|1HxEN|1|1', '2025-09-08 03:56:30', '2025-09-08 03:56:30'),
(78, '263', 'ENGINE', 'PUBG|1HxEN|1|1', '2025-09-08 03:57:49', '2025-09-08 03:57:49'),
(79, '268', 'ENGINE', 'PUBG|1HxEN|1|1', '2025-09-08 03:59:34', '2025-09-08 03:59:34'),
(80, '273', 'ENGINE', 'PUBG|1HxEN|1|1', '2025-09-08 04:06:50', '2025-09-08 04:06:50'),
(81, '278', 'ENGINE', 'PUBG|1HxEN|1|1', '2025-09-08 04:06:53', '2025-09-08 04:06:53'),
(82, '283', 'ENGINE', 'PUBG|1HxEN|1|1', '2025-09-08 04:09:49', '2025-09-08 04:09:49'),
(83, '288', 'ENGINE', 'PUBG|1HxEN|1|1', '2025-09-08 04:12:26', '2025-09-08 04:12:26'),
(84, '293', 'ENGINE', 'PUBG|1HxEN|1|1', '2025-09-08 04:15:35', '2025-09-08 04:15:35'),
(85, '302', 'ENGINE', 'PUBG|1HxEN|1|1', '2025-09-08 04:15:45', '2025-09-08 04:15:45'),
(86, '307', 'ENGINE', 'PUBG|1HxEN|1|1', '2025-09-08 04:16:41', '2025-09-08 04:16:41'),
(87, '312', 'ENGINE', 'PUBG|168Hx|168|1', '2025-09-08 04:16:50', '2025-09-08 04:16:50'),
(88, '317', 'ENGINE', 'PUBG|8760H|8760|10', '2025-09-08 04:17:03', '2025-09-08 04:17:03'),
(89, '318', 'ENGINE', 'PUBG|168Hx|168|1', '2025-09-08 04:17:18', '2025-09-08 04:17:18'),
(90, '319', 'ENGINE', 'PUBG|168Hx|168|1', '2025-09-08 04:17:32', '2025-09-08 04:17:32'),
(91, '324', 'ENGINE', 'PUBG|1HxEN|1|1', '2025-09-08 04:18:32', '2025-09-08 04:18:32'),
(92, '329', 'ENGINE', 'PUBG|1HxEN|1|1', '2025-09-08 04:18:35', '2025-09-08 04:18:35'),
(93, '330', 'ENGINE', 'PUBG|336Hx|336|1', '2025-09-08 04:19:33', '2025-09-08 04:19:33'),
(94, '429', 'ENGINE', 'PUBG|8760H|8760|1', '2025-09-08 04:20:09', '2025-09-08 04:20:09'),
(95, '434', 'ENGINE', 'PUBG|1HxEN|1|1', '2025-09-08 04:33:02', '2025-09-08 04:33:02'),
(96, '439', 'ENGINE', 'PUBG|168Hx|168|1', '2025-09-08 04:33:28', '2025-09-08 04:33:28'),
(97, '444', 'ENGINE', 'PUBG|1HxEN|1|1', '2025-09-08 06:19:17', '2025-09-08 06:19:17'),
(98, '449', 'ENGINE', 'PUBG|1H>EN|1|1', '2025-09-08 06:20:43', '2025-09-08 06:20:43'),
(99, '455', 'ENGINE', 'PUBG|1H>EN|1|1', '2025-09-08 17:51:19', '2025-09-08 17:51:19'),
(100, '460', 'ENGINE', 'PUBG|1H>EN|1|1', '2025-09-08 20:04:37', '2025-09-08 20:04:37'),
(101, '465', 'ENGINE', 'PUBG|1H>EN|1|1', '2025-09-08 21:18:59', '2025-09-08 21:18:59'),
(102, '470', 'ENGINE', 'PUBG|1H>EN|1|1', '2025-09-08 21:23:55', '2025-09-08 21:23:55'),
(103, '475', 'ENGINE', 'PUBG|24H>E|24|1', '2025-09-08 21:24:21', '2025-09-08 21:24:21'),
(104, '480', 'ENGINE', 'PUBG|1H>EN|1|1', '2025-09-08 21:32:03', '2025-09-08 21:32:03'),
(105, '481', 'ENGINE', 'PUBG|1H>EN|1|1', '2025-09-08 22:08:20', '2025-09-08 22:08:20'),
(106, '482', 'ENGINE', 'PUBG|24H>E|24|1', '2025-09-08 22:09:29', '2025-09-08 22:09:29'),
(107, '483', 'ENGINE', 'PUBG|1H>EN|1|1', '2025-09-08 22:10:45', '2025-09-08 22:10:45'),
(108, '484', 'ENGINE', 'PUBG|ANDRO|1|1', '2025-09-08 22:11:11', '2025-09-08 22:11:11'),
(109, '485', 'ENGINE', 'PUBG|1H>EN|1|1', '2025-09-08 22:13:39', '2025-09-08 22:13:39'),
(110, '486', 'ENGINE', 'PUBG|1H>EN|1|1', '2025-09-08 23:51:38', '2025-09-08 23:51:38'),
(111, '487', 'ENGINE', 'PUBG|1H>EN|1|1', '2025-09-08 23:51:38', '2025-09-08 23:51:38'),
(112, '488', 'ENGINE', 'PUBG|1H>EN|1|1', '2025-09-09 16:53:11', '2025-09-09 16:53:11'),
(113, '489', 'ENGINE', 'PUBG|1H>EN|1|1', '2025-09-09 22:56:47', '2025-09-09 22:56:47'),
(114, '490', 'ENGINE', 'PUBG|1H>EN|1|1', '2025-09-10 15:52:12', '2025-09-10 15:52:12'),
(115, '491', 'ENGINE', 'PUBG|1H>EN|1|1', '2025-09-10 19:01:49', '2025-09-10 19:01:49'),
(116, '492', 'ENGINE', 'PUBG|1H>EN|1|1', '2025-09-11 00:48:23', '2025-09-11 00:48:23'),
(117, '493', 'ENGINE', 'PUBG|mhZA5|1|1', '2025-09-11 00:51:59', '2025-09-11 00:51:59'),
(118, '494', 'ENGINE', 'PUBG|teDaQ|1|1', '2025-09-11 00:52:34', '2025-09-11 00:52:34'),
(119, '495', 'ENGINE', 'PUBG|OI9dy|1|1', '2025-09-11 00:52:42', '2025-09-11 00:52:42'),
(120, '496', 'ENGINE', 'PUBG|L1hOF|1|1', '2025-09-11 00:59:25', '2025-09-11 00:59:25'),
(121, '497', 'ENGINE', 'PUBG|oAlFY|1|1', '2025-09-11 02:27:04', '2025-09-11 02:27:04'),
(122, '498', 'ENGINE', 'PUBG|UPDBs|1|1', '2025-09-11 02:49:31', '2025-09-11 02:49:31'),
(123, '499', 'ENGINE', 'PUBG|QyI3w|1|1', '2025-09-11 02:49:43', '2025-09-11 02:49:43'),
(124, '500', 'ENGINE', 'PUBG|1H>EN|1|1', '2025-09-11 17:08:54', '2025-09-11 17:08:54'),
(125, '501', 'ENGINE', 'PUBG|3U17o|1|1', '2025-09-11 17:09:00', '2025-09-11 17:09:00'),
(126, '502', 'ENGINE', 'PUBG|1H>EN|1|1', '2025-09-12 01:32:08', '2025-09-12 01:32:08'),
(127, '503', 'ENGINE', 'PUBG|z8qSr|1|1', '2025-09-12 01:36:23', '2025-09-12 01:36:23'),
(128, '504', 'ENGINE', 'PUBG|1440H|1440|1', '2025-09-12 02:06:16', '2025-09-12 02:06:16'),
(129, '505', 'CnxAYUSH', 'PUBG|u5a2O|24|10', '2025-09-12 08:47:54', '2025-09-12 08:47:54'),
(130, '506', 'ENGINE', 'PUBG|7MJeN|1|1', '2025-09-12 09:31:39', '2025-09-12 09:31:39'),
(131, '507', 'ENGINE', 'PUBG|2H>EN|2|1', '2025-09-12 10:09:40', '2025-09-12 10:09:40'),
(132, '508', 'ENGINE', 'PUBG|1H>EN|1|1', '2025-09-12 10:09:58', '2025-09-12 10:09:58'),
(133, '509', 'ENGINE', 'PUBG|IwK2a|1|1', '2025-09-12 10:43:15', '2025-09-12 10:43:15'),
(134, '510', 'ENGINE', 'PUBG|vliB2|5|1', '2025-09-12 23:07:45', '2025-09-12 23:07:45'),
(135, '511', 'ENGINE', 'PUBG|lsAum|1|1', '2025-09-12 23:17:21', '2025-09-12 23:17:21'),
(136, '512', 'ENGINE', 'PUBG|wtToM|1|1', '2025-09-12 23:58:13', '2025-09-12 23:58:13'),
(137, '513', 'ENGINE', 'PUBG|DdIxT|1|1', '2025-09-12 23:58:34', '2025-09-12 23:58:34'),
(138, '514', 'ENGINE', 'PUBG|21Go7|1|1', '2025-09-12 23:58:40', '2025-09-12 23:58:40'),
(139, '515', 'CnxAYUSH', 'PUBG|xXo1B|8760|10', '2025-09-13 11:26:22', '2025-09-13 11:26:22'),
(140, '516', 'ENGINE', 'PUBG|8760H|8760|1', '2025-09-13 20:02:35', '2025-09-13 20:02:35'),
(141, '517', 'ENGINE', 'PUBG|168H>|168|1', '2025-09-13 21:22:10', '2025-09-13 21:22:10'),
(142, '518', 'ENGINE', 'PUBG|6SmGy|72|1', '2025-09-13 21:23:59', '2025-09-13 21:23:59'),
(143, '519', 'ENGINE', 'PUBG|8VSBP|1|1', '2025-09-13 21:29:17', '2025-09-13 21:29:17'),
(144, '520', 'ENGINE', 'PUBG|h5WFl|1|1', '2025-09-13 21:29:53', '2025-09-13 21:29:53'),
(145, '521', 'ENGINE', 'PUBG|TDNmB|1|1', '2025-09-14 02:38:19', '2025-09-14 02:38:19'),
(146, '522', 'ENGINE', 'PUBG|IlWgQ|1|1', '2025-09-14 13:04:44', '2025-09-14 13:04:44'),
(147, '523', 'ENGINE', 'PUBG|LxZpy|1|1', '2025-09-14 13:13:17', '2025-09-14 13:13:17'),
(148, '524', 'ENGINE', 'PUBG|24H>E|24|100', '2025-09-15 13:12:06', '2025-09-15 13:12:06'),
(149, '534', 'CnxAYUSH', 'PUBG|ANy3r|2|1', '2025-09-17 21:16:33', '2025-09-17 21:16:33'),
(150, '535', 'admin', 'PUBG|1H>En|1|1', '2025-09-18 13:21:13', '2025-09-18 13:21:13'),
(151, '536', 'admin', 'PUBG|2H>En|2|1', '2025-09-18 13:21:20', '2025-09-18 13:21:20'),
(152, '537', 'admin', 'PUBG|1H>En|1|1', '2025-09-18 13:21:23', '2025-09-18 13:21:23'),
(153, '538', 'admin', 'PUBG|1H>En|1|1', '2025-09-18 13:28:37', '2025-09-18 13:28:37'),
(154, '539', 'admin', 'PUBG|1H>En|1|1', '2025-09-18 13:28:40', '2025-09-18 13:28:40'),
(155, '540', 'admin', 'PUBG|1H>En|1|1', '2025-09-18 13:38:59', '2025-09-18 13:38:59'),
(156, '541', 'admin', 'PUBG|1H>En|1|1', '2025-09-18 13:39:02', '2025-09-18 13:39:02'),
(157, '542', 'admin', 'PUBG|1H>En|1|1', '2025-09-18 13:39:06', '2025-09-18 13:39:06'),
(158, '543', 'admin', 'PUBG|1H>En|1|1', '2025-09-19 13:57:17', '2025-09-19 13:57:17'),
(159, '544', 'admin', 'PUBG|WFQvM|1|1', '2025-09-19 13:57:29', '2025-09-19 13:57:29'),
(160, '545', 'ENGINE', 'PUBG|1H>EN|1|1', '2025-09-19 21:45:24', '2025-09-19 21:45:24'),
(161, '546', 'ENGINE', 'PUBG|upiKw|1|1', '2025-09-20 01:23:07', '2025-09-20 01:23:07'),
(162, '547', 'ENGINE', 'PUBG|24H>E|24|100', '2025-09-20 22:20:42', '2025-09-20 22:20:42'),
(163, '548', 'ENGINE', 'PUBG|ABCD|1|1', '2025-09-21 19:05:30', '2025-09-21 19:05:30'),
(164, '549', 'user_7631090802', 'PUBG|KEYGEN|24|1', '2025-09-22 23:55:46', '2025-09-22 23:55:46'),
(165, '550', 'user_7631090802', 'PUBG|KEYGEN|24|1', '2025-09-22 23:57:49', '2025-09-22 23:57:49'),
(166, '552', 'ENGINE', 'PUBG|3Mxow|8760|10', '2025-09-26 20:56:43', '2025-09-26 20:56:43'),
(167, '553', 'ENGINE', 'PUBG|4U6fy|1|1', '2025-10-09 01:11:50', '2025-10-09 01:11:50'),
(168, '554', 'ENGINE', 'PUBG|c4X9U|1|1', '2025-10-09 01:27:20', '2025-10-09 01:27:20'),
(169, '555', 'ENGINE', 'PUBG|aNQAV|1|1', '2025-10-09 01:32:31', '2025-10-09 01:32:31'),
(170, '556', 'ENGINE', 'PUBG|SCFb0|1|1', '2025-10-09 01:32:46', '2025-10-09 01:32:46'),
(171, '557', 'ENGINE', 'PUBG|MuXQL|1|1', '2025-10-09 01:36:28', '2025-10-09 01:36:28'),
(172, '558', 'ENGINE', 'PUBG|nxV8L|1|1', '2025-10-09 01:39:32', '2025-10-09 01:39:32'),
(173, '559', 'ENGINE', 'PUBG|7vCY6|1|1', '2025-10-09 01:39:37', '2025-10-09 01:39:37'),
(174, '560', 'ENGINE', 'PUBG|4qyjr|1|1', '2025-10-09 01:40:49', '2025-10-09 01:40:49'),
(175, '561', 'ENGINE', 'PUBG|1H>EN|1|1', '2025-10-10 09:13:08', '2025-10-10 09:13:08'),
(176, '562', 'ENGINE', 'PUBG|8760H|8760|10', '2025-10-10 12:16:23', '2025-10-10 12:16:23'),
(177, '563', 'ENGINE', 'PUBG|1H>EN|1|1', '2025-10-12 23:14:37', '2025-10-12 23:14:37'),
(178, '564', 'RAVAN', 'PUBG|2H>RA|2|1', '2025-10-17 23:35:56', '2025-10-17 23:35:56'),
(179, '565', 'ENGINE', 'PUBG|S5pau|2|1', '2025-10-17 23:47:30', '2025-10-17 23:47:30'),
(180, '566', 'RAVAN', 'PUBG|2H>RA|2|1', '2025-10-17 23:48:14', '2025-10-17 23:48:14'),
(181, '567', 'RAVAN', 'PUBG|2H>RA|2|1', '2025-10-17 23:51:13', '2025-10-17 23:51:13'),
(182, '568', 'ENGINE', 'PUBG|XcG1R|5|1', '2025-10-18 00:00:28', '2025-10-18 00:00:28'),
(183, '569', 'ENGINE', 'PUBG|ADHr1|5|1', '2025-10-18 00:00:31', '2025-10-18 00:00:31'),
(184, '570', 'admin1', 'PUBG|5H>En|5|3', '2025-10-18 22:28:54', '2025-10-18 22:28:54'),
(185, '571', 'admin1', 'PUBG|5H>En|5|50', '2025-10-18 22:29:14', '2025-10-18 22:29:14'),
(186, '572', 'admin1', 'PUBG|5H>En|5|4', '2025-10-18 22:29:37', '2025-10-18 22:29:37'),
(187, '573', 'admin1', 'PUBG|5H>En|5|50', '2025-10-18 22:29:45', '2025-10-18 22:29:45'),
(188, '574', 'admin1', 'PUBG|5H>En|5|3', '2025-10-18 22:45:23', '2025-10-18 22:45:23'),
(189, '575', 'ENGINE', 'PUBG|5H>EN|5|1', '2025-10-19 20:20:47', '2025-10-19 20:20:47'),
(190, '576', 'CnxAYUSH', 'PUBG|vuD9C|72|1', '2025-10-25 15:01:11', '2025-10-25 15:01:11'),
(191, '577', 'CnxAYUSH', 'PUBG|V7wst|168|1', '2025-10-26 13:48:22', '2025-10-26 13:48:22'),
(192, '578', 'OWNER', 'PUBG|5H>EN|5|1', '2025-11-04 20:36:41', '2025-11-04 20:36:41'),
(193, '579', 'OWNER', 'PUBG|IlCLU|5|1', '2025-11-07 20:52:08', '2025-11-07 20:52:08'),
(194, '580', 'OWNER', 'PUBG|nd2wI|5|1', '2025-11-11 23:13:01', '2025-11-11 23:13:01'),
(195, '581', 'CnxAYUSH', 'PUBG|KTGhB|24|1', '2025-11-13 20:47:26', '2025-11-13 20:47:26'),
(196, '582', 'OWNER', 'PUBG|f6rsp|5|1', '2025-11-16 13:04:04', '2025-11-16 13:04:04'),
(197, '583', 'OWNER', 'PUBG|5H>EN|5|1', '2025-11-19 20:37:49', '2025-11-19 20:37:49'),
(198, '584', 'OWNER', 'PUBG|5H>EN|5|1', '2026-02-25 23:38:46', '2026-02-25 23:38:46');

-- --------------------------------------------------------

--
-- Table structure for table `keys_code`
--

CREATE TABLE `keys_code` (
  `id_keys` int(11) NOT NULL,
  `game` varchar(32) NOT NULL,
  `user_key` varchar(32) DEFAULT NULL,
  `duration` int(11) DEFAULT NULL,
  `expired_date` datetime DEFAULT NULL,
  `max_devices` int(11) DEFAULT NULL,
  `devices` mediumtext DEFAULT NULL,
  `status` tinyint(1) DEFAULT 1,
  `registrator` varchar(32) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `keys_code`
--

INSERT INTO `keys_code` (`id_keys`, `game`, `user_key`, `duration`, `expired_date`, `max_devices`, `devices`, `status`, `registrator`, `created_at`, `updated_at`) VALUES
(584, 'PUBG', '5H>ENGINEHOST-KXMPQ', 5, NULL, 1, NULL, 1, 'OWNER', '2026-02-25 23:38:46', '2026-02-25 23:38:46');

-- --------------------------------------------------------

--
-- Table structure for table `lib`
--

CREATE TABLE `lib` (
  `id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `size` varchar(200) NOT NULL,
  `path` varchar(200) NOT NULL,
  `last_modified` bigint(10) NOT NULL,
  `link` varchar(400) NOT NULL,
  `token` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `lib`
--

INSERT INTO `lib` (`id`, `name`, `size`, `path`, `last_modified`, `link`, `token`) VALUES
(1, 'libbgmi.so', '5.16 MB', 'ONLINELIB/libbgmi.so', 1760290791, 'http://api.androidengine.xyz/ONLINELIB/libbgmi.so', '656b60088c263b4045db2720e57fe0ab936');

-- --------------------------------------------------------

--
-- Table structure for table `login_throttle`
--

CREATE TABLE `login_throttle` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `fingerprint` varchar(64) NOT NULL,
  `attempts` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `blocked_until` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `last_attempt_at` int(10) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `login_throttle`
--

INSERT INTO `login_throttle` (`id`, `fingerprint`, `attempts`, `blocked_until`, `last_attempt_at`) VALUES
(7, '964256dc4ca615b7efca38978500f512', 0, 0, 1772042915);

-- --------------------------------------------------------

--
-- Table structure for table `modname`
--

CREATE TABLE `modname` (
  `id` int(11) NOT NULL,
  `modname` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `modname`
--

INSERT INTO `modname` (`id`, `modname`) VALUES
(1, 'RAVAN VIP MODZ');

-- --------------------------------------------------------

--
-- Table structure for table `onoff`
--

CREATE TABLE `onoff` (
  `id` int(11) NOT NULL,
  `status` varchar(5) NOT NULL,
  `myinput` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `onoff`
--

INSERT INTO `onoff` (`id`, `status`, `myinput`) VALUES
(1, 'off', '');

-- --------------------------------------------------------

--
-- Table structure for table `price_config`
--

CREATE TABLE `price_config` (
  `duration` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `price_config`
--

INSERT INTO `price_config` (`duration`, `price`, `is_active`) VALUES
(1, 30, 0),
(2, 30, 0),
(5, 70, 1),
(24, 150, 1),
(72, 250, 1),
(168, 500, 1),
(336, 750, 1),
(720, 1200, 1),
(1000, 100, 0),
(1440, 1800, 1),
(2160, 2500, 1),
(2880, 3500, 1),
(8760, 5000, 1);

-- --------------------------------------------------------

--
-- Table structure for table `referral_code`
--

CREATE TABLE `referral_code` (
  `id_reff` int(11) NOT NULL,
  `code` varchar(128) NOT NULL,
  `Referral` varchar(7) NOT NULL,
  `level` int(11) NOT NULL,
  `set_saldo` int(11) NOT NULL DEFAULT 0,
  `used_by` varchar(66) NOT NULL,
  `created_by` varchar(66) NOT NULL DEFAULT 'Owner',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `acc_expiration` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `referral_code`
--

INSERT INTO `referral_code` (`id_reff`, `code`, `Referral`, `level`, `set_saldo`, `used_by`, `created_by`, `created_at`, `updated_at`, `acc_expiration`) VALUES
(1, '2b291cfe0fdbab240adb35068ed8a596', 'z56c3T', 2, 500000, '', 'ENGINE', '2025-01-31 15:24:32', '2025-01-31 15:24:32', '2025-03-02 15:24:32'),
(2, 'f6e5ecf3f72d447749b3f82ecf9fc08b', 'RUMIyp', 2, 500000, '', 'ENGINE', '2025-01-31 15:24:53', '2025-01-31 15:24:53', '2025-03-02 15:24:52'),
(3, '7980b9ce4b5d31f51ff271022c66d3e1', 'gmrzRq', 2, 500000, '', 'ENGINE', '2025-01-31 15:25:11', '2025-01-31 15:25:11', '2025-03-02 15:25:11'),
(4, '0b46c019a67f09d49fea056f5743e344', 'RlzKiB', 2, 500000, '', 'ENGINE', '2025-01-31 15:25:33', '2025-01-31 15:25:33', '2025-03-02 15:25:33'),
(5, 'e05270c453e86ac7fe0886848707a482', 'bMThsa', 2, 500000, '', 'ENGINE', '2025-01-31 15:25:48', '2025-01-31 15:25:48', '2025-03-02 15:25:48'),
(6, '84df7374fcb83778c1e04e8c36dbf8b6', 'qP6v5O', 2, 500000, '', 'ENGINE', '2025-01-31 15:26:05', '2025-01-31 15:26:05', '2025-03-02 15:26:05'),
(7, '1bffd3d094052911400aba18438e5fbb', '0YNiCS', 1, 500000, '', 'ENGINE', '2025-01-31 15:26:21', '2025-01-31 15:26:21', '2025-03-02 15:26:21'),
(8, '6f3ee33b722f6ba1a938b44d78bf31b6', 'RdlxTb', 2, 500000, '', 'ENGINE', '2025-01-31 15:26:36', '2025-01-31 15:26:36', '2025-03-02 15:26:36'),
(9, '8812299d22b8307336c38314da729cbd', 'ylEQ5Z', 2, 500000, '', 'ENGINE', '2025-01-31 15:26:51', '2025-01-31 15:26:51', '2025-03-02 15:26:51'),
(10, 'fe2f40423485621b0a452e342a26d597', 'x3bLOK', 2, 500000, '', 'ENGINE', '2025-01-31 15:27:10', '2025-01-31 15:27:10', '2025-03-02 15:27:10'),
(11, '361a0344531bc9afc4cd169b6ffa84fa', 'iY1wkD', 2, 5, '', 'ENGINE', '2025-01-31 15:51:40', '2025-01-31 15:51:40', '2025-02-01 15:51:40'),
(12, '8d4fa2953da27c7705c7178eb73777b7', 'WFyjD0', 2, 5, '', 'ENGINE', '2025-01-31 16:00:25', '2025-01-31 16:00:25', '2025-02-01 16:00:25'),
(13, '4698daf37de0a2ba50f86df83b016ebf', 'JB6Q4Z', 2, 5, '', 'ENGINE', '2025-01-31 16:02:41', '2025-01-31 16:02:41', '2025-02-01 16:02:41'),
(14, '501f02c488c8fd7f663d95c913cd82bf', 'wJvt9r', 2, 5, '', 'ENGINE', '2025-01-31 16:05:31', '2025-01-31 16:05:31', '2025-02-01 16:05:31'),
(15, 'e3c538d971969cffec3c02ee2a8828a0', 'VEx3y6', 3, 5000000, '1', 'ENGINE', '2025-06-10 11:21:53', '2025-06-10 11:26:57', '2025-08-09 11:21:53'),
(16, 'c9bd71814c4ad847c04ab1d294fbfe5d', 'hcO6S1', 1, 50000000, '1', 'ENGINE', '2025-06-10 11:36:55', '2025-06-10 11:41:19', '2025-08-09 11:36:55'),
(17, '99edab576cc26c6f325cf175efb291aa', '7PmTt0', 1, 5000, '1', 'ENGINE', '2025-06-27 04:31:02', '2025-06-27 04:34:05', '2025-06-28 04:31:02'),
(18, 'dc350f19fa2788a49c52ed93307b3e86', 'HR2SUN', 1, 50000, '1', 'ENGINE', '2025-06-29 10:16:45', '2025-06-29 10:17:49', '2025-08-28 10:16:45'),
(19, 'e3db0f92621e98e9abddf4c412dcf28c', 'hpGVse', 2, 2147483647, '1', 'ENGINE', '2025-07-23 18:03:46', '2025-07-23 18:06:43', '2025-09-21 18:03:46'),
(20, '6d9858a0f65708c17a489f49e1b85cbb', 'N1LkG2', 1, 500, '1', 'ENGINE', '2025-07-29 19:46:30', '2025-07-29 19:47:45', '2025-07-30 19:46:30'),
(21, 'd2f9b189a395c80f5e094a31966ea3ec', 'LvwlZo', 1, 500, '1', 'ENGINE', '2025-07-31 22:49:20', '2025-07-31 22:50:46', '2025-08-01 22:49:20'),
(22, 'a96505caf7ad2b0b528643a1124e2ebd', 'DdwxJX', 1, 500, '1', 'ENGINE', '2025-08-01 23:24:38', '2025-08-01 23:25:56', '2025-08-02 23:24:38'),
(23, 'aa1f9ed643fea295c1dfa2f1fcf38d76', 'vqTk1r', 1, 5, '1', 'ENGINE', '2025-08-20 22:45:29', '2025-08-20 22:46:32', '2025-08-21 22:45:29'),
(24, 'ce090adca16226d7fb286e3e951484a0', 'qvNYi4', 2, 50000000, '1', 'ENGINE', '2025-08-25 21:38:14', '2025-08-25 21:56:06', '2025-10-24 21:38:14'),
(25, '1c630463a1b57405c835dbc32a9278ff', 'Sbfw2D', 2, 5, '1', 'ENGINE', '2025-09-08 05:53:58', '2025-09-08 05:55:18', '2025-09-09 05:53:58'),
(26, 'd68886f1e1acd6f218f722f5d5745e85', 'uJZbwr', 3, 5, '1', 'ENGINE', '2025-09-09 23:10:41', '2025-09-09 23:11:58', '2025-09-10 23:10:41'),
(27, '02af592544f57558d35c4dec3226ea67', 'KLa8wF', 1, 50000, '1', 'ENGINE', '2025-09-14 15:01:06', '2025-09-14 15:05:19', '2025-09-15 15:01:06'),
(28, '52cf193fbb461242a9e9e762129421cf', '6cTXlh', 1, 5000, '1', 'ENGINE', '2025-09-17 12:51:29', '2025-09-17 12:52:42', '2025-09-18 12:51:29'),
(29, '33f8e88cee73404018dd7f36719f3c39', 'fAQbzg', 1, 50000000, '1', 'ENGINE', '2025-09-18 13:19:12', '2025-09-18 13:20:39', '2025-11-17 13:19:12'),
(30, '0a193ba7436167f916a759d8e3c8dddf', 'sX2eiW', 1, 2147483647, '1', 'admin', '2025-09-19 02:13:36', '2025-09-19 02:14:57', '2025-11-18 02:13:36'),
(31, '5ff7db1f1d564262b705f1b0b4348be6', '43VWmg', 2, 5, '1', 'ENGINE', '2025-10-13 14:36:07', '2025-10-13 14:36:59', '2025-10-14 14:36:07'),
(32, '9275a91026836fb58e4fa459cd1d32cc', 'oubtHQ', 2, 5, '1', 'ENGINE', '2025-10-13 14:38:37', '2025-10-13 14:39:29', '2025-10-14 14:38:37'),
(33, '83c73d1a3b1a43dc841860f4d8c872a6', '2wHGpb', 1, 5, '1', 'ENGINE', '2025-10-13 22:38:56', '2025-10-13 22:40:09', '2025-10-14 22:38:55'),
(34, '84b7310154cecd76a40a07b5afecce73', 'hytg9F', 1, 5, '1', 'ENGINE', '2025-10-14 22:59:53', '2025-10-14 23:01:06', '2025-10-15 22:59:53'),
(35, '922a3f4e2d572e251f8be22ba10d6a86', 'lU46Zt', 3, 5, '1', 'ENGINE', '2025-10-15 01:47:54', '2025-10-15 01:48:27', '2025-10-16 01:47:54'),
(36, 'a4dd51a3bf8d5fde8e03c9793bd3c01e', 'iKdTao', 3, 5, '1', 'admin1', '2025-10-15 01:50:26', '2025-10-15 01:51:09', '2025-10-16 01:50:26'),
(37, 'bd2238f7fd3fc92c70809a341c4adf5a', 'aqr94g', 1, 2146870494, '1', 'ENGINE', '2025-10-16 01:11:32', '2025-10-16 01:12:13', '2025-12-15 01:11:32'),
(38, '08ec3ad105134ead64fec5c96ac6a7ab', 'VRBjGw', 3, 5, '', 'admin1', '2025-10-17 03:14:43', '2025-10-17 03:14:43', '2025-10-18 03:14:43'),
(39, '4ff47b964ce4d8e4a6731efdcff6b62f', 'edIM30', 3, 5, '1', 'admin1', '2025-10-17 03:14:49', '2025-10-17 03:15:30', '2025-12-16 03:14:49'),
(40, '403cb1e8b78c9357e56876c0f7b7218b', 'PNa1xc', 3, 5, '1', 'admin1', '2025-10-17 03:36:53', '2025-10-17 03:37:31', '2025-12-16 03:36:53'),
(41, '87eead52e67c9bb008edb058d5333eaa', 'HmYBGg', 1, 50000, '1', 'ENGINE', '2025-10-18 10:09:55', '2025-10-18 10:11:25', '2025-10-19 10:09:55'),
(42, '149e90da76f9983ec72cd6369b35fc32', 'HIpvUf', 1, 500, '1', 'ENGINE', '2025-10-18 12:05:31', '2025-10-18 12:07:43', '2025-10-19 12:05:31'),
(43, 'd25c71c233f20d6daa77276440874ce4', 'I2p0mw', 1, 5000, '', 'ENGINE', '2025-10-18 13:10:47', '2025-10-18 13:10:47', '2025-10-19 13:10:47'),
(44, '5b09179be7476adba8faa03ef51ad963', 'nw87pD', 1, 5000, '1', 'ENGINE', '2025-10-18 13:10:58', '2025-10-18 13:14:38', '2025-10-19 13:10:58'),
(45, 'afda93bd0e4a8054066482b7847bef13', '1WudJq', 3, 5, '', 'admin1', '2025-10-18 22:36:52', '2025-10-18 22:36:52', '2025-10-19 22:36:52'),
(46, '2e2e5611ec62793a5a11b6304f686d2c', '4SzKoq', 3, 5, '', 'admin1', '2025-10-18 22:40:26', '2025-10-18 22:40:26', '2025-10-19 22:40:26'),
(47, '2c2305be68e1c01c4288099e126f3532', 'vCxjPF', 3, 5, '', 'admin1', '2025-10-18 22:40:28', '2025-10-18 22:40:28', '2025-10-19 22:40:28'),
(48, 'f3bb609969ffb38beac55ff755c71b34', 'mbwvVk', 3, 5, '', 'admin1', '2025-10-18 22:40:29', '2025-10-18 22:40:29', '2025-10-19 22:40:29'),
(49, '35534160c2bf3a8f15277817863e2ce1', 'YRVPQm', 3, 5, '', 'admin1', '2025-10-18 22:40:31', '2025-10-18 22:40:31', '2025-10-19 22:40:31'),
(52, '60f3c9cfa374c12df97659f2a76ed24f', 'MsOnLj', 2, 5, '1', 'RAVAN', '2025-10-19 02:34:16', '2025-10-19 02:35:25', '2025-10-20 02:34:16');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id_users` int(11) NOT NULL,
  `fullname` varchar(155) DEFAULT NULL,
  `username` varchar(66) NOT NULL,
  `email` varchar(40) NOT NULL,
  `reset_link_token` varchar(255) NOT NULL,
  `exp_date` varchar(250) NOT NULL,
  `level` int(11) NOT NULL,
  `saldo` int(11) DEFAULT NULL,
  `status` tinyint(1) DEFAULT 1,
  `uplink` varchar(66) DEFAULT NULL,
  `password` varchar(155) NOT NULL,
  `user_ip` varchar(155) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `expiration_date` datetime DEFAULT NULL,
  `device_id` varchar(255) DEFAULT NULL,
  `device_reset_count` int(11) NOT NULL DEFAULT 0,
  `last_reset_at` datetime DEFAULT NULL,
  `device_reset_limit` int(11) NOT NULL DEFAULT 2,
  `key_device_limit` int(11) NOT NULL DEFAULT 2,
  `referral_create_limit` int(11) DEFAULT NULL,
  `telegram_chat_id` varchar(64) DEFAULT NULL,
  `twofa_enabled` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id_users`, `fullname`, `username`, `email`, `reset_link_token`, `exp_date`, `level`, `saldo`, `status`, `uplink`, `password`, `user_ip`, `created_at`, `updated_at`, `expiration_date`, `device_id`, `device_reset_count`, `last_reset_at`, `device_reset_limit`, `key_device_limit`, `referral_create_limit`, `telegram_chat_id`, `twofa_enabled`) VALUES
(1, 'ENGINEHOST', 'OWNER', '', '', '2023-07-23 01:22:54', 1, 2146869834, 1, 'RAVAN', '$2y$08$/CsSVgrGgCqVcievCuR2COPnlMIpRz6kA.hzItBD/xd1Cx0hj0kMK', '', '2022-06-22 22:15:21', '2026-02-25 23:38:46', '2050-01-01 00:00:00', NULL, 1, '2025-10-15 22:19:38', 2, 2, NULL, '7631090802', 0);

-- --------------------------------------------------------

--
-- Table structure for table `user_states`
--

CREATE TABLE `user_states` (
  `id` int(11) NOT NULL,
  `user_id` varchar(50) DEFAULT NULL,
  `state_data` text DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `_ftext`
--

CREATE TABLE `_ftext` (
  `id` int(11) NOT NULL,
  `_status` varchar(100) NOT NULL,
  `_ftext` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `_ftext`
--

INSERT INTO `_ftext` (`id`, `_status`, `_ftext`) VALUES
(1, 'Safe', 'MOD STATUS :- 100% SAFE');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `credit`
--
ALTER TABLE `credit`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Feature`
--
ALTER TABLE `Feature`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `history`
--
ALTER TABLE `history`
  ADD PRIMARY KEY (`id_history`);

--
-- Indexes for table `keys_code`
--
ALTER TABLE `keys_code`
  ADD PRIMARY KEY (`id_keys`),
  ADD UNIQUE KEY `user_key` (`user_key`),
  ADD KEY `idx_keys_user_key` (`user_key`),
  ADD KEY `idx_keys_registrator` (`registrator`),
  ADD KEY `idx_keys_expired_date` (`expired_date`);

--
-- Indexes for table `login_throttle`
--
ALTER TABLE `login_throttle`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uniq_fingerprint` (`fingerprint`),
  ADD KEY `idx_blocked_until` (`blocked_until`);

--
-- Indexes for table `modname`
--
ALTER TABLE `modname`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `onoff`
--
ALTER TABLE `onoff`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `price_config`
--
ALTER TABLE `price_config`
  ADD PRIMARY KEY (`duration`);

--
-- Indexes for table `referral_code`
--
ALTER TABLE `referral_code`
  ADD PRIMARY KEY (`id_reff`),
  ADD KEY `idx_referral_created_by` (`created_by`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id_users`),
  ADD UNIQUE KEY `username` (`username`,`email`);

--
-- Indexes for table `user_states`
--
ALTER TABLE `user_states`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_id` (`user_id`);

--
-- Indexes for table `_ftext`
--
ALTER TABLE `_ftext`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `credit`
--
ALTER TABLE `credit`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `Feature`
--
ALTER TABLE `Feature`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `history`
--
ALTER TABLE `history`
  MODIFY `id_history` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=199;

--
-- AUTO_INCREMENT for table `keys_code`
--
ALTER TABLE `keys_code`
  MODIFY `id_keys` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=585;

--
-- AUTO_INCREMENT for table `login_throttle`
--
ALTER TABLE `login_throttle`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `modname`
--
ALTER TABLE `modname`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `onoff`
--
ALTER TABLE `onoff`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `referral_code`
--
ALTER TABLE `referral_code`
  MODIFY `id_reff` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id_users` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `user_states`
--
ALTER TABLE `user_states`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `_ftext`
--
ALTER TABLE `_ftext`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
