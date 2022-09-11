-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Sep 11, 2022 at 10:04 AM
-- Server version: 10.2.44-MariaDB-cll-lve
-- PHP Version: 7.4.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kitq3349_kitaauction`
--

-- --------------------------------------------------------

--
-- Table structure for table `apps`
--

CREATE TABLE `apps` (
  `id` int(11) NOT NULL,
  `merchant_token` varchar(255) NOT NULL,
  `hcode` varchar(255) NOT NULL,
  `name` text NOT NULL,
  `description` text NOT NULL,
  `is_active` int(1) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `created_by` int(11) NOT NULL,
  `update_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `update_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `apps`
--

INSERT INTO `apps` (`id`, `merchant_token`, `hcode`, `name`, `description`, `is_active`, `created_at`, `created_by`, `update_at`, `update_by`) VALUES
(1, 'aF5I7jy9nZmGEFY16&zhlIebtI^', 'dashboard', 'Dashboard', 'Lorem ipsum dolor siamet', 1, '2022-08-20 10:46:58', 0, '2022-08-20 14:52:26', 1),
(2, 'aF5I7jy9nZmGEFY16&zhlIebtI^', 'ppdb', 'PPDB', 'Lorem ipsum dolor siamet', 1, '2022-08-20 10:47:15', 1, '2022-08-20 14:52:30', 1);

-- --------------------------------------------------------

--
-- Table structure for table `apps_menu`
--

CREATE TABLE `apps_menu` (
  `id` int(1) NOT NULL,
  `merchant_token` varchar(255) NOT NULL,
  `apps_id` int(11) NOT NULL,
  `id_parent` int(1) DEFAULT NULL,
  `menu_name` varchar(255) DEFAULT NULL,
  `slug` text NOT NULL,
  `menu_description` text DEFAULT NULL,
  `menu_url` text DEFAULT NULL,
  `menu_order` int(11) DEFAULT NULL,
  `menu_type` enum('menu','dropdown','tab') DEFAULT NULL,
  `menu_icon` text DEFAULT NULL,
  `is_root` int(1) DEFAULT NULL,
  `is_active` int(1) DEFAULT NULL,
  `created_by` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_by` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `apps_menu`
--

INSERT INTO `apps_menu` (`id`, `merchant_token`, `apps_id`, `id_parent`, `menu_name`, `slug`, `menu_description`, `menu_url`, `menu_order`, `menu_type`, `menu_icon`, `is_root`, `is_active`, `created_by`, `created_at`, `updated_at`, `updated_by`) VALUES
(1, 'aF5I7jy9nZmGEFY16&zhlIebtI^', 1, NULL, 'Dashboard', 'home', 'Master Dashboard', 'dashboard', 0, 'menu', '<svg xmlns=\"http://www.w3.org/2000/svg\" width=\"24\" height=\"24\" viewBox=\"0 0 24 24\" fill=\"none\" stroke=\"currentColor\" stroke-width=\"2\" stroke-linecap=\"round\" stroke-linejoin=\"round\" class=\"feather feather-home\"><path d=\"M3 9l9-7 9 7v11a2 2 0 0 1-2 2H5a2 2 0 0 1-2-2z\"></path><polyline points=\"9 22 9 12 15 12 15 22\"></polyline></svg>', 1, 1, '1', '2021-10-15 20:23:39', '2021-11-17 07:41:42', '1'),
(2, 'aF5I7jy9nZmGEFY16&zhlIebtI^', 2, NULL, 'PPDB', 'ppdb', 'Lorem ipsum dolor siamet', '/ppdb', 2, 'dropdown', NULL, 1, 1, '1', '2022-08-20 11:08:55', '2022-08-20 11:08:55', '1');

-- --------------------------------------------------------

--
-- Table structure for table `apps_menu_role_permission`
--

CREATE TABLE `apps_menu_role_permission` (
  `role_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `merchant_token` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `apps_menu_user`
--

CREATE TABLE `apps_menu_user` (
  `id` int(11) NOT NULL,
  `role_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `apps_id` int(11) NOT NULL,
  `apps_menu_id` int(1) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `created_by` int(11) NOT NULL,
  `updated_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `update_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `apps_user`
--

CREATE TABLE `apps_user` (
  `id` int(11) NOT NULL,
  `merchant_token` varchar(255) NOT NULL,
  `role_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `apps_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `created_by` int(11) NOT NULL,
  `updated_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `update_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auction_invoicing`
--

CREATE TABLE `auction_invoicing` (
  `id` int(11) NOT NULL,
  `merchant_token` varchar(255) NOT NULL,
  `auction_period_id` int(11) NOT NULL,
  `invoice_code` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `amount` double NOT NULL,
  `packing` double NOT NULL,
  `shipping` double NOT NULL,
  `total` double NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `created_by` int(11) NOT NULL,
  `updated_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auction_offer`
--

CREATE TABLE `auction_offer` (
  `id` int(11) NOT NULL,
  `merchant_token` varchar(255) NOT NULL,
  `auction_period_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `amount` double NOT NULL,
  `is_win` int(11) NOT NULL DEFAULT 1,
  `is_delete` int(11) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `created_by` int(11) NOT NULL,
  `updated_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auction_period`
--

CREATE TABLE `auction_period` (
  `id` int(11) NOT NULL,
  `merchant_token` varchar(255) NOT NULL,
  `period_code` text NOT NULL,
  `name` text NOT NULL,
  `description` text NOT NULL,
  `is_active` int(11) NOT NULL,
  `is_auto_lock` int(11) NOT NULL,
  `time_start` datetime DEFAULT NULL,
  `time_end` datetime NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `created_by` int(11) NOT NULL,
  `updated_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `mst_category`
--

CREATE TABLE `mst_category` (
  `id` int(11) NOT NULL,
  `code` varchar(255) NOT NULL,
  `name` text NOT NULL,
  `description` text NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `created_by` int(11) NOT NULL,
  `updated_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `update_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mst_category`
--

INSERT INTO `mst_category` (`id`, `code`, `name`, `description`, `created_at`, `created_by`, `updated_at`, `update_by`) VALUES
(1, 'THS', 'THS', 'Treasure Hunt', '2022-09-11 09:08:49', 1, '2022-09-11 09:08:49', 1),
(2, 'FS', 'FS', 'Factory Sealed', '2022-09-11 09:09:09', 1, '2022-09-11 09:09:09', 1),
(3, 'REG', 'Regular', 'Regular', '2022-09-11 09:09:36', 1, '2022-09-11 09:09:36', 1),
(4, 'RLC', 'RLC', 'Red Line Club', '2022-09-11 09:46:41', 1, '2022-09-11 09:46:41', 1);

-- --------------------------------------------------------

--
-- Table structure for table `mst_item`
--

CREATE TABLE `mst_item` (
  `id` int(11) NOT NULL,
  `merchant_token` int(11) NOT NULL,
  `item_code` int(11) NOT NULL,
  `item_type` enum('sell','auction') NOT NULL,
  `name` text NOT NULL,
  `description` text NOT NULL,
  `category_id` int(11) NOT NULL,
  `img` text NOT NULL,
  `item_signature` text NOT NULL,
  `price` double NOT NULL,
  `open_bid` double NOT NULL,
  `next_bid` double NOT NULL,
  `buy_it_now` double NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `created_by` int(11) NOT NULL,
  `updated_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `mst_role`
--

CREATE TABLE `mst_role` (
  `id` int(11) NOT NULL,
  `hcode` varchar(100) NOT NULL,
  `name` text NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `created_by` int(11) NOT NULL,
  `updated_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mst_role`
--

INSERT INTO `mst_role` (`id`, `hcode`, `name`, `created_at`, `created_by`, `updated_at`, `updated_by`) VALUES
(1, 'superadmin', 'Super Admin', '2022-08-20 11:02:11', 1, '2022-08-20 11:02:11', 1),
(2, 'admin', 'Admin', '2022-08-14 18:18:19', 1, '2022-08-20 11:57:12', 1),
(3, 'staff', 'Staff', '2022-08-20 11:02:11', 1, '2022-08-20 11:02:11', 1);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `merchant_token` varchar(255) NOT NULL,
  `name` text NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` text NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `info` text NOT NULL,
  `role_id` int(11) NOT NULL,
  `account_id` int(11) NOT NULL,
  `is_active` int(11) NOT NULL DEFAULT 1,
  `is_delete` int(11) NOT NULL DEFAULT 0,
  `is_need_change_password` int(11) NOT NULL DEFAULT 1,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `created_by` int(11) DEFAULT NULL,
  `updated_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `merchant_token`, `name`, `username`, `password`, `email`, `phone`, `info`, `role_id`, `account_id`, `is_active`, `is_delete`, `is_need_change_password`, `created_at`, `created_by`, `updated_at`, `updated_by`) VALUES
(1, 'aF5I7jy9nZmGEFY16&zhlIebtI^', 'Admin', 'admin', '$2y$10$1MRGzcmmOo8.LVtd0Rf5G.9LU/ji3K.Eq2PTaeSbJO7U0pH.DHV6O', 'admin', '0893456789', '', 6, 0, 1, 0, 1, '2022-08-20 14:36:49', 1, '2022-08-20 15:33:56', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `apps`
--
ALTER TABLE `apps`
ADD PRIMARY KEY (`id`);

--
-- Indexes for table `apps_menu`
--
ALTER TABLE `apps_menu`
ADD PRIMARY KEY (`id`);

--
-- Indexes for table `apps_menu_user`
--
ALTER TABLE `apps_menu_user`
ADD PRIMARY KEY (`id`);

--
-- Indexes for table `apps_user`
--
ALTER TABLE `apps_user`
ADD PRIMARY KEY (`id`);

--
-- Indexes for table `auction_invoicing`
--
ALTER TABLE `auction_invoicing`
ADD PRIMARY KEY (`id`);

--
-- Indexes for table `auction_offer`
--
ALTER TABLE `auction_offer`
ADD PRIMARY KEY (`id`);

--
-- Indexes for table `auction_period`
--
ALTER TABLE `auction_period`
ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mst_category`
--
ALTER TABLE `mst_category`
ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mst_item`
--
ALTER TABLE `mst_item`
ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mst_role`
--
ALTER TABLE `mst_role`
ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `apps`
--
ALTER TABLE `apps`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `apps_menu`
--
ALTER TABLE `apps_menu`
MODIFY `id` int(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `apps_menu_user`
--
ALTER TABLE `apps_menu_user`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `apps_user`
--
ALTER TABLE `apps_user`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `auction_invoicing`
--
ALTER TABLE `auction_invoicing`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auction_offer`
--
ALTER TABLE `auction_offer`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auction_period`
--
ALTER TABLE `auction_period`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mst_category`
--
ALTER TABLE `mst_category`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `mst_item`
--
ALTER TABLE `mst_item`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mst_role`
--
ALTER TABLE `mst_role`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
