-- phpMyAdmin SQL Dump
-- version 5.2.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Oct 20, 2025 at 09:22 AM
-- Server version: 10.11.14-MariaDB
-- PHP Version: 8.4.13

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
(1, 'Spencer');

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
(1, '1', 'RAVAN', 'PUBG|Zyr4w|1|1', '2025-10-17 06:26:25', '2025-10-17 06:26:25'),
(2, '2', 'RAVAN', 'PUBG|1H>RA|1|1', '2025-10-17 20:57:43', '2025-10-17 20:57:43');

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
(1, 'PUBG', 'Zyr4wi7UBq29DgX', 1, NULL, 1, NULL, 1, 'RAVAN', '2025-10-17 06:26:25', '2025-10-17 06:26:25'),
(2, 'PUBG', '1H>RAVAN-YSgsC', 1, '2025-10-19 09:48:37', 1, '30de5b8a-6a73-3e0f-8e1b-b85be0dea081', 1, 'RAVAN', '2025-10-17 20:57:43', '2025-10-19 08:48:37');

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
(1, 'libRrQx64.so', '5.43 MB', 'BYPASS/libRrQx64.so', 1705076926, 'http://rambopapa.a1h.in/BYPASS/libRrQx64.so', 'b9a53162dc54bc56e61d2a75a39a283e778');

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
(0, '0bb4fcf07582dfcac3c41a422442ddb8', 0, 0, 1760944622),
(0, '7eb51d76fa13c82d3a043537be4a004e', 3, 0, 1760811882);

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
(1, 'RAVAN | 64-BIT | ANTI-BAN CHEAT');

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
(1, 10, 1),
(5, 50, 1),
(24, 70, 1),
(72, 130, 1),
(168, 160, 1),
(336, 220, 1),
(720, 300, 1),
(1440, 600, 1),
(2160, 800, 1),
(2880, 1700, 1),
(8760, 2300, 1);

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
(1, 'd7059fdffadcade39b7a00050a2de703', 'bslvBE', 1, 500, '', 'RAVAN', '2025-10-17 20:19:20', '2025-10-17 20:21:27', '2026-10-17 20:21:27'),
(2, 'a2535d3cf5047eed6659b0c0962eb717', 'OQz48W', 1, 5, '1', 'RAVAN', '2025-10-19 00:49:49', '2025-10-19 00:51:07', '2025-10-20 00:49:49'),
(3, '81df54fae990ebf5fd7775ac76857d7e', 'pxCJW4', 1, 500, '', 'RAVAN', '2025-10-20 11:58:45', '2025-10-20 11:58:45', '2025-10-27 11:58:45');

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
  `telegram_chat_id` varchar(64) DEFAULT NULL,
  `twofa_enabled` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id_users`, `fullname`, `username`, `email`, `reset_link_token`, `exp_date`, `level`, `saldo`, `status`, `uplink`, `password`, `user_ip`, `created_at`, `updated_at`, `expiration_date`, `device_id`, `device_reset_count`, `last_reset_at`, `telegram_chat_id`, `twofa_enabled`) VALUES
(1, 'RAVAN', 'RAVAN', 'deewanakoi6@gmail.com', 'a886a84c38036225b4bcabfd81e7d1f0582', '2023-07-23 01:22:54', 1, 2147384644, 1, 'RAVAN', '$2y$08$/CsSVgrGgCqVcievCuR2COPnlMIpRz6kA.hzItBD/xd1Cx0hj0kMK', '42.109.149.*', '2022-06-22 22:15:21', '2025-10-20 12:47:11', '2050-01-01 00:00:00', NULL, 0, NULL, '5873964096', 0),
(2, 'BDHASANYT', 'BDHASANYT', '', '', '', 1, 500, 1, 'RAVAN', '$2y$08$4XErXNcEYteoMs4DoBUNo.cTslfrEDrZhi6aryvRMC153gjG9/U0W', '103.124.110.13', '2025-10-17 20:21:27', '2025-10-19 02:24:29', '2050-12-16 20:19:20', NULL, 0, NULL, '', 0),
(3, 'adminn', 'admin', '', '', '', 2, 500000, 1, 'RAVAN', '$2y$08$o0DO9Z19YiuGrETj98wS6.RCdvkcT6usm023gOOAY7cxnGd/Xih3.', '2401:4900:63f8:2629:c8b8:dff:fef1:2639', '2025-10-19 00:51:07', '2025-10-19 10:19:38', '2025-10-20 00:49:49', NULL, 0, NULL, '', 0);

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
(1, 'Safe', 'Give Feedback else Keys off');

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
  ADD UNIQUE KEY `user_key` (`user_key`);

--
-- Indexes for table `lib`
--
ALTER TABLE `lib`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `referral_code`
--
ALTER TABLE `referral_code`
  ADD PRIMARY KEY (`id_reff`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id_users`),
  ADD UNIQUE KEY `username` (`username`,`email`);

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
  MODIFY `id_history` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `keys_code`
--
ALTER TABLE `keys_code`
  MODIFY `id_keys` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `lib`
--
ALTER TABLE `lib`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

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
  MODIFY `id_reff` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id_users` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `_ftext`
--
ALTER TABLE `_ftext`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
