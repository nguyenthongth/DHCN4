-- phpMyAdmin SQL Dump
-- version 4.4.15.9
-- https://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jun 30, 2021 at 01:42 PM
-- Server version: 5.6.37
-- PHP Version: 7.1.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `thong_dit`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_widgets`
--

CREATE TABLE IF NOT EXISTS `admin_widgets` (
  `id` bigint(20) unsigned NOT NULL,
  `module` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Admin',
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `group` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `order` int(10) unsigned NOT NULL DEFAULT '0',
  `config` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `banners`
--

CREATE TABLE IF NOT EXISTS `banners` (
  `id` int(10) unsigned NOT NULL,
  `widget_id` int(10) unsigned NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_src` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_alt` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `begin_time` timestamp NULL DEFAULT NULL,
  `expired_time` timestamp NULL DEFAULT NULL,
  `link` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT '#',
  `order` int(10) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `banners`
--

INSERT INTO `banners` (`id`, `widget_id`, `title`, `file_src`, `file_alt`, `begin_time`, `expired_time`, `link`, `order`, `status`, `created_at`, `updated_at`) VALUES
(2, 1, 'Hè Đến Rồi', '/upload/banner.jpg', NULL, NULL, NULL, '#', 0, 1, '2021-06-30 12:36:46', '2021-06-30 12:36:46'),
(3, 1, 'Hè Đến Rồi', '/upload/banner2.jpg', NULL, NULL, NULL, '#', 0, 1, '2021-06-30 12:38:41', '2021-06-30 12:38:41'),
(4, 1, 'Hè Đến Rồi', '/upload/db5bcff908cbfd95a4da.jpg', NULL, NULL, NULL, '#', 0, 1, '2021-06-30 12:42:48', '2021-06-30 12:42:48');

-- --------------------------------------------------------

--
-- Table structure for table `banner_widgets`
--

CREATE TABLE IF NOT EXISTS `banner_widgets` (
  `id` int(10) unsigned NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `banner_id` int(10) unsigned DEFAULT NULL,
  `position` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `banner_widgets`
--

INSERT INTO `banner_widgets` (`id`, `title`, `banner_id`, `position`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Slider trang chủ', NULL, 'TOP', 0, NULL, NULL),
(2, 'Banner thành viên FIP', NULL, 'MIDDLE', 0, NULL, NULL),
(3, 'Banner đối tác FIP', NULL, 'BOTTOM', 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `bookings`
--

CREATE TABLE IF NOT EXISTS `bookings` (
  `id` int(10) unsigned NOT NULL,
  `customer` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_customer` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `note` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `tour_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bookings`
--

INSERT INTO `bookings` (`id`, `customer`, `address`, `total_customer`, `email`, `phone`, `note`, `status`, `tour_id`, `created_at`, `updated_at`) VALUES
(1, '121', '2121', '2111', 'admin@gmail.com', '357272095989053', 'sadadsa', 1, 1, '2021-06-30 13:01:16', '2021-06-30 13:01:16');

-- --------------------------------------------------------

--
-- Table structure for table `cms_activity_log`
--

CREATE TABLE IF NOT EXISTS `cms_activity_log` (
  `id` bigint(20) unsigned NOT NULL,
  `log_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject_id` bigint(20) unsigned DEFAULT NULL,
  `subject_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `causer_id` bigint(20) unsigned DEFAULT NULL,
  `causer_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `properties` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cms_activity_log`
--

INSERT INTO `cms_activity_log` (`id`, `log_name`, `description`, `subject_id`, `subject_type`, `causer_id`, `causer_type`, `properties`, `created_at`, `updated_at`) VALUES
(1, 'module', 'install module', NULL, NULL, 1, 'Modules\\User\\Models\\User', '{"name":"post"}', '2021-06-15 19:58:37', '2021-06-15 19:58:37'),
(2, 'module', 'updated module', NULL, NULL, 1, 'Modules\\User\\Models\\User', '{"name":"post"}', '2021-06-15 19:58:40', '2021-06-15 19:58:40'),
(3, 'module', 'install module', NULL, NULL, 1, 'Modules\\User\\Models\\User', '{"name":"contact"}', '2021-06-15 19:58:45', '2021-06-15 19:58:45'),
(4, 'module', 'updated module', NULL, NULL, 1, 'Modules\\User\\Models\\User', '{"name":"contact"}', '2021-06-15 19:58:49', '2021-06-15 19:58:49'),
(5, 'setting', 'Cập nhật thông tin website', NULL, NULL, 1, 'Modules\\User\\Models\\User', '{"site_status":"0","site_url":null,"site_name":"\\u0110\\u0103ng tin \\u0111\\u01b0a b\\u00e0i c\\u1ee7a b\\u00e9 CHIP Y\\u00caU","site_logo":"\\/upload\\/125296110_146909683830608_8496595305277085181_n.jpg","site_email":"quoctuanit.282@gmail.com","site_description":null,"site_keywords":null,"site_phone":null,"site_address":null,"mail":{"host":null,"port":null,"encryption":null,"username":null,"password":null,"from":{"name":null,"address":null}}}', '2021-06-15 20:05:16', '2021-06-15 20:05:16'),
(6, 'module', 'uninstall module', NULL, NULL, 1, 'Modules\\User\\Models\\User', '{"name":"contact"}', '2021-06-17 20:36:40', '2021-06-17 20:36:40'),
(7, 'module', 'install module', NULL, NULL, 1, 'Modules\\User\\Models\\User', '{"name":"contact"}', '2021-06-27 20:40:27', '2021-06-27 20:40:27'),
(8, 'module', 'install module', NULL, NULL, 1, 'Modules\\User\\Models\\User', '{"name":"widget"}', '2021-06-29 11:58:07', '2021-06-29 11:58:07'),
(9, 'module', 'updated module', NULL, NULL, 1, 'Modules\\User\\Models\\User', '{"name":"widget"}', '2021-06-29 11:58:08', '2021-06-29 11:58:08'),
(10, 'module', 'install module', NULL, NULL, 1, 'Modules\\User\\Models\\User', '{"name":"tour"}', '2021-06-29 11:58:14', '2021-06-29 11:58:14'),
(11, 'module', 'updated module', NULL, NULL, 1, 'Modules\\User\\Models\\User', '{"name":"tour"}', '2021-06-29 11:58:15', '2021-06-29 11:58:15'),
(12, 'module', 'uninstall module', NULL, NULL, 1, 'Modules\\User\\Models\\User', '{"name":"tour"}', '2021-06-29 13:52:59', '2021-06-29 13:52:59'),
(13, 'module', 'install module', NULL, NULL, 1, 'Modules\\User\\Models\\User', '{"name":"tour"}', '2021-06-29 13:53:02', '2021-06-29 13:53:02'),
(14, 'module', 'updated module', NULL, NULL, 1, 'Modules\\User\\Models\\User', '{"name":"tour"}', '2021-06-29 13:53:03', '2021-06-29 13:53:03'),
(15, 'module', 'install module', NULL, NULL, 1, 'Modules\\User\\Models\\User', '{"name":"banner"}', '2021-06-29 14:59:16', '2021-06-29 14:59:16'),
(16, 'module', 'updated module', NULL, NULL, 1, 'Modules\\User\\Models\\User', '{"name":"banner"}', '2021-06-29 14:59:17', '2021-06-29 14:59:17'),
(17, 'module', 'install module', NULL, NULL, 1, 'Modules\\User\\Models\\User', '{"name":"menu"}', '2021-06-29 14:59:20', '2021-06-29 14:59:20'),
(18, 'module', 'updated module', NULL, NULL, 1, 'Modules\\User\\Models\\User', '{"name":"menu"}', '2021-06-29 14:59:21', '2021-06-29 14:59:21'),
(19, 'module', 'uninstall module', NULL, NULL, 1, 'Modules\\User\\Models\\User', '{"name":"menu"}', '2021-06-29 15:17:36', '2021-06-29 15:17:36'),
(20, 'module', 'install module', NULL, NULL, 1, 'Modules\\User\\Models\\User', '{"name":"menu"}', '2021-06-29 15:19:08', '2021-06-29 15:19:08'),
(21, 'module', 'updated module', NULL, NULL, 1, 'Modules\\User\\Models\\User', '{"name":"menu"}', '2021-06-29 15:19:10', '2021-06-29 15:19:10'),
(22, 'module', 'uninstall module', NULL, NULL, 1, 'Modules\\User\\Models\\User', '{"name":"menu"}', '2021-06-29 15:21:31', '2021-06-29 15:21:31'),
(23, 'module', 'install module', NULL, NULL, 1, 'Modules\\User\\Models\\User', '{"name":"menu"}', '2021-06-29 15:21:47', '2021-06-29 15:21:47'),
(24, 'module', 'updated module', NULL, NULL, 1, 'Modules\\User\\Models\\User', '{"name":"menu"}', '2021-06-29 15:21:48', '2021-06-29 15:21:48'),
(25, 'module', 'uninstall module', NULL, NULL, 1, 'Modules\\User\\Models\\User', '{"name":"tour"}', '2021-06-29 16:57:19', '2021-06-29 16:57:19'),
(26, 'module', 'install module', NULL, NULL, 1, 'Modules\\User\\Models\\User', '{"name":"tour"}', '2021-06-29 16:57:22', '2021-06-29 16:57:22'),
(27, 'module', 'updated module', NULL, NULL, 1, 'Modules\\User\\Models\\User', '{"name":"tour"}', '2021-06-29 16:57:23', '2021-06-29 16:57:23'),
(28, 'module', 'uninstall module', NULL, NULL, 1, 'Modules\\User\\Models\\User', '{"name":"tour"}', '2021-06-29 17:08:42', '2021-06-29 17:08:42'),
(29, 'module', 'uninstall module', NULL, NULL, 1, 'Modules\\User\\Models\\User', '{"name":"tour"}', '2021-06-29 17:09:25', '2021-06-29 17:09:25'),
(30, 'module', 'install module', NULL, NULL, 1, 'Modules\\User\\Models\\User', '{"name":"tour"}', '2021-06-29 17:09:29', '2021-06-29 17:09:29'),
(31, 'module', 'updated module', NULL, NULL, 1, 'Modules\\User\\Models\\User', '{"name":"tour"}', '2021-06-29 17:09:30', '2021-06-29 17:09:30'),
(32, 'module', 'uninstall module', NULL, NULL, 1, 'Modules\\User\\Models\\User', '{"name":"post"}', '2021-06-30 11:40:01', '2021-06-30 11:40:01'),
(33, 'module', 'install module', NULL, NULL, 1, 'Modules\\User\\Models\\User', '{"name":"post"}', '2021-06-30 11:40:05', '2021-06-30 11:40:05'),
(34, 'module', 'updated module', NULL, NULL, 1, 'Modules\\User\\Models\\User', '{"name":"post"}', '2021-06-30 11:40:07', '2021-06-30 11:40:07'),
(35, 'module', 'uninstall module', NULL, NULL, 1, 'Modules\\User\\Models\\User', '{"name":"tour"}', '2021-06-30 11:40:22', '2021-06-30 11:40:22'),
(36, 'module', 'install module', NULL, NULL, 1, 'Modules\\User\\Models\\User', '{"name":"tour"}', '2021-06-30 11:40:26', '2021-06-30 11:40:26'),
(37, 'module', 'updated module', NULL, NULL, 1, 'Modules\\User\\Models\\User', '{"name":"tour"}', '2021-06-30 11:40:59', '2021-06-30 11:40:59'),
(38, 'module', 'uninstall module', NULL, NULL, 1, 'Modules\\User\\Models\\User', '{"name":"contact"}', '2021-06-30 12:33:25', '2021-06-30 12:33:25'),
(39, 'module', 'install module', NULL, NULL, 1, 'Modules\\User\\Models\\User', '{"name":"contact"}', '2021-06-30 12:33:28', '2021-06-30 12:33:28'),
(40, 'module', 'uninstall module', NULL, NULL, 1, 'Modules\\User\\Models\\User', '{"name":"menu"}', '2021-06-30 12:51:31', '2021-06-30 12:51:31'),
(41, 'module', 'install module', NULL, NULL, 1, 'Modules\\User\\Models\\User', '{"name":"menu"}', '2021-06-30 12:53:24', '2021-06-30 12:53:24'),
(42, 'module', 'updated module', NULL, NULL, 1, 'Modules\\User\\Models\\User', '{"name":"menu"}', '2021-06-30 12:53:26', '2021-06-30 12:53:26'),
(43, 'module', 'uninstall module', NULL, NULL, 1, 'Modules\\User\\Models\\User', '{"name":"menu"}', '2021-06-30 12:58:42', '2021-06-30 12:58:42'),
(44, 'module', 'install module', NULL, NULL, 1, 'Modules\\User\\Models\\User', '{"name":"menu"}', '2021-06-30 12:58:44', '2021-06-30 12:58:44'),
(45, 'module', 'updated module', NULL, NULL, 1, 'Modules\\User\\Models\\User', '{"name":"menu"}', '2021-06-30 12:58:46', '2021-06-30 12:58:46');

-- --------------------------------------------------------

--
-- Table structure for table `cms_admin_widgets`
--

CREATE TABLE IF NOT EXISTS `cms_admin_widgets` (
  `id` bigint(20) unsigned NOT NULL,
  `module` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'global',
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `group` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `order` int(10) unsigned NOT NULL DEFAULT '0',
  `config` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cms_failed_jobs`
--

CREATE TABLE IF NOT EXISTS `cms_failed_jobs` (
  `id` bigint(20) unsigned NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cms_jobs`
--

CREATE TABLE IF NOT EXISTS `cms_jobs` (
  `id` bigint(20) unsigned NOT NULL,
  `queue` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint(3) unsigned NOT NULL,
  `reserved_at` int(10) unsigned DEFAULT NULL,
  `available_at` int(10) unsigned NOT NULL,
  `created_at` int(10) unsigned NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cms_jobs`
--

INSERT INTO `cms_jobs` (`id`, `queue`, `payload`, `attempts`, `reserved_at`, `available_at`, `created_at`) VALUES
(1, 'default', '{"displayName":"Modules\\\\Contact\\\\Jobs\\\\SendMailNewContact","job":"Illuminate\\\\Queue\\\\CallQueuedHandler@call","maxTries":null,"delay":null,"timeout":null,"timeoutAt":null,"data":{"commandName":"Modules\\\\Contact\\\\Jobs\\\\SendMailNewContact","command":"O:39:\\"Modules\\\\Contact\\\\Jobs\\\\SendMailNewContact\\":9:{s:10:\\"\\u0000*\\u0000contact\\";O:45:\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\":4:{s:5:\\"class\\";s:30:\\"Modules\\\\Contact\\\\Models\\\\Contact\\";s:2:\\"id\\";i:1;s:9:\\"relations\\";a:0:{}s:10:\\"connection\\";s:5:\\"mysql\\";}s:6:\\"\\u0000*\\u0000job\\";N;s:10:\\"connection\\";N;s:5:\\"queue\\";N;s:15:\\"chainConnection\\";N;s:10:\\"chainQueue\\";N;s:5:\\"delay\\";N;s:10:\\"middleware\\";a:0:{}s:7:\\"chained\\";a:0:{}}"}}', 0, NULL, 1624801312, 1624801312),
(2, 'default', '{"displayName":"Modules\\\\Contact\\\\Jobs\\\\SendMailNewContact","job":"Illuminate\\\\Queue\\\\CallQueuedHandler@call","maxTries":null,"delay":null,"timeout":null,"timeoutAt":null,"data":{"commandName":"Modules\\\\Contact\\\\Jobs\\\\SendMailNewContact","command":"O:39:\\"Modules\\\\Contact\\\\Jobs\\\\SendMailNewContact\\":9:{s:10:\\"\\u0000*\\u0000contact\\";O:45:\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\":4:{s:5:\\"class\\";s:30:\\"Modules\\\\Contact\\\\Models\\\\Contact\\";s:2:\\"id\\";i:2;s:9:\\"relations\\";a:0:{}s:10:\\"connection\\";s:5:\\"mysql\\";}s:6:\\"\\u0000*\\u0000job\\";N;s:10:\\"connection\\";N;s:5:\\"queue\\";N;s:15:\\"chainConnection\\";N;s:10:\\"chainQueue\\";N;s:5:\\"delay\\";N;s:10:\\"middleware\\";a:0:{}s:7:\\"chained\\";a:0:{}}"}}', 0, NULL, 1624805249, 1624805249),
(3, 'default', '{"displayName":"Modules\\\\Contact\\\\Jobs\\\\SendMailNewContact","job":"Illuminate\\\\Queue\\\\CallQueuedHandler@call","maxTries":null,"delay":null,"timeout":null,"timeoutAt":null,"data":{"commandName":"Modules\\\\Contact\\\\Jobs\\\\SendMailNewContact","command":"O:39:\\"Modules\\\\Contact\\\\Jobs\\\\SendMailNewContact\\":9:{s:10:\\"\\u0000*\\u0000contact\\";O:45:\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\":4:{s:5:\\"class\\";s:30:\\"Modules\\\\Contact\\\\Models\\\\Contact\\";s:2:\\"id\\";i:3;s:9:\\"relations\\";a:0:{}s:10:\\"connection\\";s:5:\\"mysql\\";}s:6:\\"\\u0000*\\u0000job\\";N;s:10:\\"connection\\";N;s:5:\\"queue\\";N;s:15:\\"chainConnection\\";N;s:10:\\"chainQueue\\";N;s:5:\\"delay\\";N;s:10:\\"middleware\\";a:0:{}s:7:\\"chained\\";a:0:{}}"}}', 0, NULL, 1624805474, 1624805474),
(4, 'default', '{"displayName":"Modules\\\\Contact\\\\Jobs\\\\SendMailNewContact","job":"Illuminate\\\\Queue\\\\CallQueuedHandler@call","maxTries":null,"delay":null,"timeout":null,"timeoutAt":null,"data":{"commandName":"Modules\\\\Contact\\\\Jobs\\\\SendMailNewContact","command":"O:39:\\"Modules\\\\Contact\\\\Jobs\\\\SendMailNewContact\\":9:{s:10:\\"\\u0000*\\u0000contact\\";O:45:\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\":4:{s:5:\\"class\\";s:30:\\"Modules\\\\Contact\\\\Models\\\\Contact\\";s:2:\\"id\\";i:4;s:9:\\"relations\\";a:0:{}s:10:\\"connection\\";s:5:\\"mysql\\";}s:6:\\"\\u0000*\\u0000job\\";N;s:10:\\"connection\\";N;s:5:\\"queue\\";N;s:15:\\"chainConnection\\";N;s:10:\\"chainQueue\\";N;s:5:\\"delay\\";N;s:10:\\"middleware\\";a:0:{}s:7:\\"chained\\";a:0:{}}"}}', 0, NULL, 1624805662, 1624805662),
(5, 'default', '{"displayName":"Modules\\\\Contact\\\\Jobs\\\\SendMailNewContact","job":"Illuminate\\\\Queue\\\\CallQueuedHandler@call","maxTries":null,"delay":null,"timeout":null,"timeoutAt":null,"data":{"commandName":"Modules\\\\Contact\\\\Jobs\\\\SendMailNewContact","command":"O:39:\\"Modules\\\\Contact\\\\Jobs\\\\SendMailNewContact\\":9:{s:10:\\"\\u0000*\\u0000contact\\";O:45:\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\":4:{s:5:\\"class\\";s:30:\\"Modules\\\\Contact\\\\Models\\\\Contact\\";s:2:\\"id\\";i:5;s:9:\\"relations\\";a:0:{}s:10:\\"connection\\";s:5:\\"mysql\\";}s:6:\\"\\u0000*\\u0000job\\";N;s:10:\\"connection\\";N;s:5:\\"queue\\";N;s:15:\\"chainConnection\\";N;s:10:\\"chainQueue\\";N;s:5:\\"delay\\";N;s:10:\\"middleware\\";a:0:{}s:7:\\"chained\\";a:0:{}}"}}', 0, NULL, 1624865725, 1624865725);

-- --------------------------------------------------------

--
-- Table structure for table `cms_layouts`
--

CREATE TABLE IF NOT EXISTS `cms_layouts` (
  `id` bigint(20) unsigned NOT NULL,
  `module` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `view` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `layout` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'main',
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cms_mail_templates`
--

CREATE TABLE IF NOT EXISTS `cms_mail_templates` (
  `id` bigint(20) unsigned NOT NULL,
  `lang` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'vi',
  `module` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'global',
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `mail_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mail_content` text COLLATE utf8mb4_unicode_ci,
  `variables` longtext COLLATE utf8mb4_unicode_ci,
  `status` int(10) unsigned NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cms_modules`
--

CREATE TABLE IF NOT EXISTS `cms_modules` (
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `version` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int(10) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cms_modules`
--

INSERT INTO `cms_modules` (`name`, `title`, `icon`, `description`, `version`, `order`, `status`, `created_at`, `updated_at`) VALUES
('banner', 'Banner', NULL, 'This is description for module banner', '1.0.0', 7, 1, '2021-06-29 14:59:15', '2021-06-30 13:27:54'),
('contact', 'Contact', '', 'This is description for module contact', '1.0.0', 2, 1, '2021-06-30 12:33:27', '2021-06-30 13:27:54'),
('link', 'Link', '', 'This is description for module link', '1.0.0', 5, 1, '2021-06-29 15:50:06', '2021-06-30 13:27:54'),
('menu', 'Menu', NULL, 'Đây là module menu', '1.0.0', 1, 1, '2021-06-30 12:58:44', '2021-06-30 13:27:54'),
('page', 'Page', '', 'This is description for module page', '1.0.0', 6, 1, '2021-06-29 15:50:06', '2021-06-30 13:27:54'),
('post', 'Bài viết', NULL, 'Đây là module bài viết', '1.0.0', 4, 1, '2021-06-30 11:40:05', '2021-06-30 13:27:54'),
('tour', 'Tour', NULL, 'This is description for module tour', '1.0.0', 3, 1, '2021-06-30 11:40:26', '2021-06-30 13:27:54'),
('user', 'User', '', 'Manager users for system', '1.0.0', 9, 1, '2021-06-15 19:36:22', '2021-06-30 13:27:54'),
('web', 'Web', '', 'This is description for module web', '1.0.0', 10, 1, '2021-06-15 19:35:14', '2021-06-30 13:27:54'),
('widget', 'Widget', NULL, 'Đây là module Widget', '1.0.0', 8, 1, '2021-06-29 11:58:07', '2021-06-30 13:27:54');

-- --------------------------------------------------------

--
-- Table structure for table `cms_settings`
--

CREATE TABLE IF NOT EXISTS `cms_settings` (
  `key` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cms_settings`
--

INSERT INTO `cms_settings` (`key`, `value`) VALUES
('site_status', '0'),
('site_name', 'Đăng tin đưa bài của bé CHIP YÊU'),
('site_logo', '/upload/125296110_146909683830608_8496595305277085181_n.jpg'),
('site_email', 'quoctuanit.282@gmail.com'),
('mail.host', NULL),
('mail.port', NULL),
('mail.encryption', NULL),
('mail.username', NULL),
('mail.password', NULL),
('mail.from.name', NULL),
('mail.from.address', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE IF NOT EXISTS `contacts` (
  `id` bigint(20) unsigned NOT NULL,
  `topic` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sender_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sender_phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sender_email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sender_address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sender_ip` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sender_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `reply_by` int(10) unsigned DEFAULT NULL,
  `reply_at` timestamp NULL DEFAULT NULL,
  `reply_content` text COLLATE utf8mb4_unicode_ci,
  `reply_attachments` text COLLATE utf8mb4_unicode_ci,
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `topic`, `title`, `sender_name`, `sender_phone`, `sender_email`, `sender_address`, `sender_ip`, `sender_content`, `reply_by`, `reply_at`, `reply_content`, `reply_attachments`, `status`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, NULL, 'test', 'tran quang tuan', '0389728969', 'quoctuanit@admin.vn', 'ijsaiodsa', NULL, 'sadsasssssssssssssssssssssssss', 1, '2021-06-30 12:50:23', NULL, NULL, 2, NULL, '2021-06-30 12:50:10', '2021-06-30 12:50:23'),
(2, NULL, 'test', 'tran quang tuan', '0389728969', 'quoctuanit@admin.vn', 'ijsaiodsa', NULL, 'sadsasssssssssssssssssssssssss', NULL, NULL, NULL, NULL, 1, NULL, '2021-06-30 12:59:42', '2021-06-30 12:59:42');

-- --------------------------------------------------------

--
-- Table structure for table `links`
--

CREATE TABLE IF NOT EXISTS `links` (
  `id` bigint(20) unsigned NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `locations`
--

CREATE TABLE IF NOT EXISTS `locations` (
  `id` int(10) unsigned NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `locations`
--

INSERT INTO `locations` (`id`, `title`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Vĩnh Phúc', 1, '2021-06-30 11:53:53', '2021-06-30 11:53:53'),
(2, 'Ninh Bình', 1, '2021-06-30 11:53:53', '2021-06-30 11:53:53'),
(3, 'Cà Mau', 1, '2021-06-30 11:53:53', '2021-06-30 11:53:53'),
(4, 'Nghệ An', 1, '2021-06-30 11:53:53', '2021-06-30 11:53:53'),
(5, 'Vĩnh Long', 1, '2021-06-30 11:53:53', '2021-06-30 11:53:53'),
(6, 'Quảng Bình', 1, '2021-06-30 11:53:53', '2021-06-30 11:53:53'),
(7, 'Hải Phòng', 1, '2021-06-30 11:53:53', '2021-06-30 11:53:53'),
(8, 'Hà Nội', 1, '2021-06-30 11:53:53', '2021-06-30 11:53:53'),
(9, 'Đồng Tháp', 1, '2021-06-30 11:53:53', '2021-06-30 11:53:53'),
(10, 'Lai Châu', 1, '2021-06-30 11:53:53', '2021-06-30 11:53:53'),
(11, 'Hưng Yên', 1, '2021-06-30 11:53:53', '2021-06-30 11:53:53'),
(12, 'Lạng Sơn', 1, '2021-06-30 11:53:53', '2021-06-30 11:53:53'),
(13, 'Đồng Nai', 1, '2021-06-30 11:53:53', '2021-06-30 11:53:53'),
(14, 'Tiền Giang', 1, '2021-06-30 11:53:53', '2021-06-30 11:53:53'),
(15, 'Phú Yên', 1, '2021-06-30 11:53:53', '2021-06-30 11:53:53'),
(16, 'Yên Bái', 1, '2021-06-30 11:53:53', '2021-06-30 11:53:53'),
(17, 'Bình Dương', 1, '2021-06-30 11:53:53', '2021-06-30 11:53:53'),
(18, 'Quảng Nam', 1, '2021-06-30 11:53:53', '2021-06-30 11:53:53'),
(19, 'Điện Biên', 1, '2021-06-30 11:53:53', '2021-06-30 11:53:53'),
(20, 'Kon Tum', 1, '2021-06-30 11:53:53', '2021-06-30 11:53:53'),
(21, 'Bạc Liêu', 1, '2021-06-30 11:53:53', '2021-06-30 11:53:53'),
(22, 'Đắk Lắk', 1, '2021-06-30 11:53:53', '2021-06-30 11:53:53'),
(23, 'An Giang', 1, '2021-06-30 11:53:53', '2021-06-30 11:53:53'),
(24, 'Thanh Hóa', 1, '2021-06-30 11:53:53', '2021-06-30 11:53:53'),
(25, 'Quảng Ngãi', 1, '2021-06-30 11:53:53', '2021-06-30 11:53:53'),
(26, 'Tây Ninh', 1, '2021-06-30 11:53:53', '2021-06-30 11:53:53'),
(27, 'Bắc Giang', 1, '2021-06-30 11:53:53', '2021-06-30 11:53:53'),
(28, 'Hồ Chí Minh', 1, '2021-06-30 11:53:53', '2021-06-30 11:53:53'),
(29, 'Ninh Thuận', 1, '2021-06-30 11:53:53', '2021-06-30 11:53:53'),
(30, 'Tuyên Quang', 1, '2021-06-30 11:53:53', '2021-06-30 11:53:53'),
(31, 'Sơn La', 1, '2021-06-30 11:53:53', '2021-06-30 11:53:53'),
(32, 'Nam Định', 1, '2021-06-30 11:53:53', '2021-06-30 11:53:53'),
(33, 'Hà Nam', 1, '2021-06-30 11:53:53', '2021-06-30 11:53:53'),
(34, 'Hải Dương', 1, '2021-06-30 11:53:53', '2021-06-30 11:53:53'),
(35, 'Bà Rịa - Vũng Tàu', 1, '2021-06-30 11:53:53', '2021-06-30 11:53:53'),
(36, 'Kiên Giang', 1, '2021-06-30 11:53:53', '2021-06-30 11:53:53'),
(37, 'Cao Bằng', 1, '2021-06-30 11:53:53', '2021-06-30 11:53:53'),
(38, 'Hà Tĩnh', 1, '2021-06-30 11:53:53', '2021-06-30 11:53:53'),
(39, 'Gia Lai', 1, '2021-06-30 11:53:53', '2021-06-30 11:53:53'),
(40, 'Hoà Bình', 1, '2021-06-30 11:53:53', '2021-06-30 11:53:53'),
(41, 'Sóc Trăng', 1, '2021-06-30 11:53:53', '2021-06-30 11:53:53'),
(42, 'Bình Định', 1, '2021-06-30 11:53:53', '2021-06-30 11:53:53'),
(43, 'Thái Bình', 1, '2021-06-30 11:53:53', '2021-06-30 11:53:53'),
(44, 'Phú Thọ', 1, '2021-06-30 11:53:53', '2021-06-30 11:53:53'),
(45, 'Hậu Giang', 1, '2021-06-30 11:53:53', '2021-06-30 11:53:53'),
(46, 'Cần Thơ', 1, '2021-06-30 11:53:53', '2021-06-30 11:53:53'),
(47, 'Quảng Ninh', 1, '2021-06-30 11:53:53', '2021-06-30 11:53:53'),
(48, 'Quảng Trị', 1, '2021-06-30 11:53:53', '2021-06-30 11:53:53'),
(49, 'Lào Cai', 1, '2021-06-30 11:53:53', '2021-06-30 11:53:53'),
(50, 'Đắk Nông', 1, '2021-06-30 11:53:53', '2021-06-30 11:53:53'),
(51, 'Bắc Ninh', 1, '2021-06-30 11:53:53', '2021-06-30 11:53:53'),
(52, 'Lâm Đồng', 1, '2021-06-30 11:53:53', '2021-06-30 11:53:53'),
(53, 'Thái Nguyên', 1, '2021-06-30 11:53:53', '2021-06-30 11:53:53'),
(54, 'Bình Thuận', 1, '2021-06-30 11:53:53', '2021-06-30 11:53:53'),
(55, 'Khánh Hòa', 1, '2021-06-30 11:53:53', '2021-06-30 11:53:53'),
(56, 'Bến Tre', 1, '2021-06-30 11:53:53', '2021-06-30 11:53:53'),
(57, 'Thừa Thiên Huế', 1, '2021-06-30 11:53:53', '2021-06-30 11:53:53'),
(58, 'Hà Giang', 1, '2021-06-30 11:53:53', '2021-06-30 11:53:53'),
(59, 'Trà Vinh', 1, '2021-06-30 11:53:53', '2021-06-30 11:53:53'),
(60, 'Long An', 1, '2021-06-30 11:53:53', '2021-06-30 11:53:53'),
(61, 'Bắc Kạn', 1, '2021-06-30 11:53:53', '2021-06-30 11:53:53'),
(62, 'Đà Nẵng', 1, '2021-06-30 11:53:53', '2021-06-30 11:53:53'),
(63, 'Bình Phước', 1, '2021-06-30 11:53:53', '2021-06-30 11:53:53');

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE IF NOT EXISTS `menus` (
  `id` bigint(20) unsigned NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `title`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Main Menu', 1, '2021-06-30 12:58:54', '2021-06-30 12:58:54');

-- --------------------------------------------------------

--
-- Table structure for table `menu_items`
--

CREATE TABLE IF NOT EXISTS `menu_items` (
  `id` int(10) unsigned NOT NULL,
  `menu_id` int(10) unsigned NOT NULL,
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0',
  `link` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int(10) unsigned NOT NULL,
  `module` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `target` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menu_items`
--

INSERT INTO `menu_items` (`id`, `menu_id`, `parent_id`, `link`, `order`, `module`, `target`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 0, 'lien-he', 3, 'contact', NULL, 1, '2021-06-30 12:59:10', '2021-06-30 12:59:38'),
(2, 1, 0, 'danh-muc-bai-viet/tin-tuc-du-lich', 1, 'post', NULL, 1, '2021-06-30 12:59:19', '2021-06-30 12:59:38'),
(3, 1, 0, 'danh-sach-tour', 2, 'tour', NULL, 1, '2021-06-30 12:59:28', '2021-06-30 12:59:38');

-- --------------------------------------------------------

--
-- Table structure for table `menu_item_transtion`
--

CREATE TABLE IF NOT EXISTS `menu_item_transtion` (
  `id` int(10) unsigned NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'vi',
  `content` text COLLATE utf8mb4_unicode_ci,
  `menu_item_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menu_item_transtion`
--

INSERT INTO `menu_item_transtion` (`id`, `title`, `locale`, `content`, `menu_item_id`, `created_at`, `updated_at`) VALUES
(1, 'undefined', 'en', NULL, 1, '2021-06-30 12:59:10', '2021-06-30 12:59:10'),
(2, 'Liên hệ', 'vi', NULL, 1, '2021-06-30 12:59:10', '2021-06-30 12:59:10'),
(3, 'undefined', 'en', NULL, 2, '2021-06-30 12:59:19', '2021-06-30 12:59:19'),
(4, 'Tin Tức', 'vi', NULL, 2, '2021-06-30 12:59:19', '2021-06-30 12:59:19'),
(5, 'undefined', 'en', NULL, 3, '2021-06-30 12:59:28', '2021-06-30 12:59:28'),
(6, 'Tour du lịch', 'vi', NULL, 3, '2021-06-30 12:59:28', '2021-06-30 12:59:28');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) unsigned NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2019_09_19_023850_create_settings_table', 1),
(2, '2019_09_23_015522_create_modules_table', 1),
(3, '2019_09_26_141017_create_activity_log_table', 1),
(4, '2019_09_28_105403_create_jobs_table', 1),
(5, '2019_09_28_105451_create_failed_jobs_table', 1),
(6, '2019_10_05_093316_create_admin_widgets_table', 1),
(7, '2019_10_31_111317_create_notifications_table', 1),
(8, '2019_11_08_151726_create_layouts_table', 1),
(9, '2019_11_09_104544_create_email_templates_table', 1),
(10, '2019_10_01_141156_create_permission_tables', 2),
(11, '2019_10_13_074206_create_departments_table', 2),
(12, '2019_10_13_145708_create_users_table', 2),
(13, '2019_11_07_095711_create_user_social_table', 2),
(18, '2020_04_01_144623_create_contact_topics_table', 4),
(19, '2020_03_22_145708_create_widgets_table', 5),
(22, '2020_03_22_145708_create_banners_table', 7),
(26, '2020_03_22_145708_create_pages_table', 9),
(27, '2020_03_22_145708_create_links_table', 9),
(30, '2020_03_23_140807_create_post_table', 11),
(31, '2020_03_22_145708_create_tours_table', 12),
(32, '2020_03_22_145708_create_contacts_table', 13),
(34, '2020_03_22_145708_create_menus_table', 14);

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE IF NOT EXISTS `notifications` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_id` bigint(20) unsigned NOT NULL,
  `data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE IF NOT EXISTS `pages` (
  `id` int(10) unsigned NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int(10) unsigned DEFAULT NULL,
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `page_transtions`
--

CREATE TABLE IF NOT EXISTS `page_transtions` (
  `id` int(10) unsigned NOT NULL,
  `locale` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'vi',
  `page_id` int(10) unsigned NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE IF NOT EXISTS `posts` (
  `id` int(10) unsigned NOT NULL,
  `lang` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'vi',
  `category_id` int(10) unsigned NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `source` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attachments` mediumtext COLLATE utf8mb4_unicode_ci,
  `tags` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `author` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `featured` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `created_by` int(10) unsigned NOT NULL,
  `public_at` timestamp NULL DEFAULT NULL,
  `totalhits` bigint(20) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `lang`, `category_id`, `title`, `slug`, `image`, `description`, `content`, `source`, `attachments`, `tags`, `author`, `featured`, `created_by`, `public_at`, `totalhits`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'vi', 1, 'hưởng thức hương vị độc đáo của Kem Gelato của Ý', 'tin-tuc-du-lich', '/upload/thuong-thuc-huong-vi-doc-dao-cua-kem-gelato-cua-y.jpg', 'Du khách có biết rằng kem gelato khác biệt so với những loại kem thông thường khác không? Món ăn tinh hoa của ẩm thực Ý khiến khá nhiều du khách du lịch Ý đã nhầm lẫn với việc cách gọi gelato là một loại kem của Ý nhưng thực ra nó có kết cấu khác nhau hoàn toàn từ đó hương vị cũng rất đặc biệt.\r\n\r\nTìm hiểu về kem gelato của Ý', '<h3><strong>T&igrave;m hiểu về kem gelato của &Yacute;</strong></h3>\r\n\r\n<p>Gelato c&oacute; chất lượng cao, nguồn gốc từ tr&aacute;i c&acirc;y với h&agrave;m lượng chất b&eacute;o vừa phải do đ&oacute; hương vị của n&oacute; cũng v&ocirc; c&ugrave;ng kh&aacute;c biệt.&nbsp;Ngay cả trong thời kỳ La M&atilde; cổ đại, th&igrave; người d&acirc;n nước &Yacute; đ&atilde; ăn loại kem ngọt l&agrave;m từ băng hoặc tuyết. nhưng với hiện đại th&igrave; gelato được ph&aacute;t triển trong thời phục hưng. Cho đến những năm cuối thế kỷ 17, kem đ&atilde; xuất hiện đặc biệt l&agrave; ở v&ugrave;ng Napoli( l&agrave; một trong những nơi tốt nhất để thử gelato) với rất nhiều &yacute; tưởng hấp dẫn v&agrave; ngon miệng. Nhưng đến thế kỷ 19, th&igrave; gelato đ&atilde; trở th&agrave;nh một m&oacute;n ăn đ&ocirc;ng lạnh được nhiều người y&ecirc;u th&iacute;ch.&nbsp;Vậy nếu gelao c&oacute; nghĩa l&agrave; đ&ocirc;ng lạnh, th&igrave; tại sao n&oacute; lại c&oacute; vị rất kh&aacute;c so với kem ở những nơi kh&aacute;c?<br />\r\n<br />\r\nViệc đầu ti&ecirc;n phải n&oacute;i đến l&agrave; kem gelato truyền thống c&oacute; bơ &iacute;t hơn. Khoảng 4 đến 8 phần trăm gelato l&agrave; butterfat, so với 14% cho c&aacute;c loại kem. Điều đ&oacute; c&oacute; nghĩa l&agrave; gelato khi đ&oacute;ng băng &iacute;t rắn v&agrave; cứng hơn kem ( n&oacute; được duy tr&igrave; ở nhiệt độ ấm hơn khoảng 10 đến 15 độ so với c&aacute;c loại kem kh&aacute;c. V&igrave; thế n&oacute; tan chảy trong miệng nhanh hơn.<br />\r\n<br />\r\nViệc thứ hai phải n&oacute;i đến l&agrave; kem gelato c&oacute; mật độ c&aacute;c th&agrave;nh phần cao hơn so với kem kh&aacute;c. Để l&agrave;m kem, c&aacute;c nh&agrave; sản xuất phải trộn kem , sữa, đường, v&agrave; sau đ&oacute; cho th&ecirc;m kh&ocirc;ng kh&iacute;( l&agrave;m tăng thể t&iacute;ch) v&agrave; nước( để l&agrave;m tăng trọng lượng). nhưng tất cả c&aacute;c th&agrave;nh phần n&agrave;y đều mang lại một hương vị ngọt ng&agrave;o &iacute;t hơn nhiều. Trong khi đ&oacute;, th&igrave; ở c&aacute;c nước Ch&acirc;u &Acirc;u kh&ocirc;ng thể tăng trọng lượng kem một c&aacute;ch hợp ph&aacute;p bằng nước v&agrave; thể t&iacute;ch bằng kh&ocirc;ng kh&iacute;.<br />\r\n<br />\r\nCuối c&ugrave;ng, hầu hết c&aacute;c loại kem thương mại ở nơi kh&aacute;c được sản xuất để lưu trữ trong thời gian l&acirc;u d&agrave;i, đ&oacute; l&agrave; l&yacute; do tại sao ch&uacute;ng đ&ocirc;ng lạnh ho&agrave;n to&agrave;n hơn v&agrave; c&oacute; h&agrave;m lượng chất b&eacute;o cao hơn. Kem gelato &Yacute; được l&agrave;m đ&ocirc;ng lạnh nhanh ch&oacute;ng trong c&aacute;c khay nhỏ v&agrave; điều đ&oacute; c&oacute; nghĩa l&agrave; n&oacute; sẽ tươi hơn, chất lượng cao hơn, v&agrave; gelato thủ c&ocirc;ng phải được ăn trong v&agrave;i ng&agrave;y sau khi sản xuất.<br />\r\n<br />\r\nĐiều đặc biệt hơn l&agrave; khi du kh&aacute;ch đến&nbsp;<a href="https://dulichviet.com.vn/du-lich-y"><strong>tour du lịch &Yacute;</strong></a>&nbsp;sẽ bắt gặp kem gelato tự l&agrave;m ở bất kỳ th&agrave;nh phố hay thị trấn n&agrave;y bởi sự nổi tiếng của n&oacute;, du kh&aacute;ch n&agrave;o cũng muốn thưởng thức m&oacute;n ăn ngọt ng&agrave;o n&agrave;y. C&oacute; thể n&oacute;i người &Yacute; l&agrave; c&aacute;c chuy&ecirc;n gia khi n&oacute;i đến việc l&agrave;m kem gelato.</p>\r\n\r\n<p><img alt="Cách để du khách lựa chọn kem gelato ngon nhất khi đến du lịch tại Ý" src="https://dulichviet.com.vn/images/bandidau/cach-de-du-khach-lua-chon-kem-gelato-ngon-nhat-khi-den-du-lich-tai-y.jpg" /></p>\r\n\r\n<p><em>C&aacute;ch để du kh&aacute;ch lựa chọn kem gelato ngon nhất khi đến du lịch tại &Yacute;</em></p>\r\n\r\n<h3><strong>C&aacute;ch để du kh&aacute;ch lựa chọn kem gelato ngon nhất khi đến du lịch tại &Yacute;</strong></h3>\r\n\r\n<p>Để c&oacute; thể thưởng thức được hương vị ngon l&agrave;nh của kem gelato &Yacute; th&igrave; du kh&aacute;ch n&ecirc;n lưu &yacute; những điểm sau đ&acirc;y:</p>\r\n\r\n<p>Khi nh&igrave;n v&agrave;o m&agrave;u sắc: đ&acirc;y l&agrave; một v&iacute; dụ về c&aacute;ch lựa chọn c&aacute;c th&agrave;nh phần tr&aacute;i c&acirc;y trong kem. C&aacute;c loại tr&aacute;i c&acirc;y phải c&oacute; được m&agrave;u sắc tự nhi&ecirc;n vốn c&oacute; như chuối m&agrave;u x&aacute;m nhạt v&agrave; quả hồ trăm c&oacute; m&agrave;u n&acirc;u nhạt. Nếu l&agrave; một loại kem tốt l&agrave; sẽ kh&ocirc;ng tiết kiệm những th&agrave;nh phần như thế n&agrave;y. V&igrave; vậy nếu thấy kem chuối m&agrave;u v&agrave;ng s&aacute;ng th&igrave; chưa phải l&agrave; loại kem ngon nhất nh&eacute;.<br />\r\n<br />\r\nKiểm tra t&iacute;nh nhất qu&aacute;n: bản chất của c&aacute;ch l&agrave;m kem gelato thủ c&ocirc;ng kh&ocirc;ng giống như c&aacute;c loại kem chất lượng thấp hơn của &Yacute;, gelato tốt c&oacute; xu hướng kh&aacute; nhớt, kh&ocirc;ng thể c&oacute; qu&aacute; nhiều trong một khay. Điều m&agrave; gelato chất lượng thực sự tốt kh&ocirc;ng c&oacute; nhiều kh&ocirc;ng kh&iacute; trong đ&oacute;, do c&aacute;ch thức khuấy trộn của người l&agrave;m kem. Điều đ&aacute;ng ch&uacute; &yacute; nhất ở đ&acirc;y l&agrave; kem gelato lại mất đi h&igrave;nh dạng khi cho v&agrave;o khay.<br />\r\n<br />\r\nNếu du kh&aacute;ch đi&nbsp;<a href="https://dulichviet.com.vn/du-lich-y"><strong>tour &Yacute;</strong></a>&nbsp;lựa chọn c&aacute;c loại kem gelato theo m&ugrave;a đ&acirc;y l&agrave; điều quan trọng để c&oacute; một loại kem ngon bởi v&igrave; tr&aacute;i c&acirc;y theo m&ugrave;a lu&ocirc;n c&oacute; sẵn v&agrave; ngon l&agrave;nh, với hương vị tươi hơn cho du kh&aacute;ch thưởng thức.<br />\r\n<br />\r\nĐặc biệt khi du kh&aacute;ch mua kem gelato đừng ngại xếp h&agrave;ng v&igrave; cửa h&agrave;ng kem ngon đều kh&aacute; l&agrave; đ&ocirc;ng kh&aacute;ch. Khi đến&nbsp;<strong><a href="https://dulichviet.com.vn/du-lich-y">du lịch &Yacute;</a></strong>&nbsp;th&igrave; du kh&aacute;ch đ&atilde; sẵn s&agrave;ng để ng&agrave;y n&agrave;o cũng thưởng thức m&oacute;n kem gelato chưa? Mong rằng những th&ocirc;ng tin tr&ecirc;n sẽ l&agrave; h&agrave;nh trang bổ &iacute;ch cho chuyến đi du lịch &Yacute; sắp tới của du kh&aacute;ch. Ch&uacute;c du kh&aacute;ch c&oacute; một chuyến đi đầy trải nghiệm th&uacute; vị v&agrave; nhiều kỷ niệm đ&aacute;ng nhớ tại đất nước h&igrave;nh chiếc ủng n&agrave;y nh&eacute;.</p>', NULL, NULL, NULL, 'Vy Oanh', 0, 1, NULL, 0, 1, '2021-06-30 12:23:31', '2021-06-30 12:23:31', NULL),
(2, 'vi', 1, 'Khám phá thiên dường nghĩ dưỡng Dambri giữa núi rừng Tây Nguyên', 'kham-pha-thien-duong-nghi-duong-dambri-giua-nui-rung-tay-nguyen', '/upload/kham-pha-thien-duong-nghi-duong-dambri-giua-nui-rung-tay-nguyen.jpg', 'Sở hữu cảnh vật thiên nhiên hùng vĩ với hệ sinh thái vô cùng đa dạng, thác Đambri là một địa điểm du lịch Tây Nguyên nổi tiếng hấp dẫn mọi du khách đến tham quan mang đậm nét hoang sơ kỳ vĩ của núi rừng.', '<p>T&acirc;y Nguy&ecirc;n kh&ocirc;ng chỉ mang vẻ đẹp của những c&aacute;nh đồng hoa thơ mộng, hay những đồi th&ocirc;ng trập tr&ugrave;ng bạt ng&agrave;n xanh ngắt m&agrave; c&ograve;n được biết đến với những ngọn th&aacute;c h&ugrave;ng vĩ hoang sơ bậc nhất. V&agrave; một trong những c&aacute;i t&ecirc;n kh&ocirc;ng thể kh&ocirc;ng nhắc đến khi du kh&aacute;ch&nbsp;<a href="https://dulichviet.com.vn/du-lich-tay-nguyen"><strong>du lịch T&acirc;y Nguy&ecirc;n</strong></a>&nbsp;đ&oacute; ch&iacute;nh l&agrave; th&aacute;c Dambri nơi ẩn chứa c&acirc;u chuyện t&igrave;nh đẹp của cặp người d&acirc;n tộc K&rsquo;Ho. Đ&acirc;y cũng ch&iacute;nh l&agrave; một trong những địa điểm du lịch hấp dẫn du kh&aacute;ch trong v&agrave; ngo&agrave;i nước khi c&oacute; dịp gh&eacute; thăm T&acirc;y nguy&ecirc;n. Giờ h&atilde;y c&ugrave;ng&nbsp;<a href="https://dulichviet.com.vn/"><strong>Du Lịch Việt</strong></a>&nbsp;kh&aacute;m ph&aacute; thi&ecirc;n đường nghỉ dưỡng Dambri qua b&agrave;i viết dưới đ&acirc;y nh&eacute;.</p>\r\n\r\n<p><img alt="Khám phá thiên dường nghĩ dưỡng Dambri giữa núi rừng Tây Nguyên" src="https://dulichviet.com.vn/images/bandidau/kham-pha-thien-duong-nghi-duong-dambri-giua-nui-rung-tay-nguyen.jpg" /></p>\r\n\r\n<p><em>Kh&aacute;m ph&aacute; thi&ecirc;n dường nghĩ dưỡng Dambri giữa n&uacute;i rừng T&acirc;y Nguy&ecirc;n</em></p>\r\n\r\n<h2><strong>Kh&aacute;m ph&aacute; thi&ecirc;n đường nghỉ dưỡng Dambri giữa n&uacute;i rừng T&acirc;y Nguy&ecirc;n</strong></h2>\r\n\r\n<p>Sở hữu cảnh vật thi&ecirc;n nhi&ecirc;n h&ugrave;ng vĩ với hệ sinh th&aacute;i v&ocirc; c&ugrave;ng đa dạng, th&aacute;c Đambri l&agrave; một địa điểm&nbsp;<a href="https://dulichviet.com.vn/du-lich-tay-nguyen"><strong>du lịch T&acirc;y Nguy&ecirc;n</strong></a>&nbsp;nổi tiếng hấp dẫn mọi du kh&aacute;ch đến tham quan mang đậm n&eacute;t hoang sơ kỳ vĩ của n&uacute;i rừng. h&agrave;nh tr&igrave;nh kh&aacute;m ph&aacute; vẻ đẹp của Dambri sẽ mang đến cho du kh&aacute;ch nhiều cảm x&uacute;c v&agrave; trải nghiệm tuyệt vời.</p>\r\n\r\n<h3><strong>Th&aacute;c Đambri nằm ở đ&acirc;u?</strong></h3>\r\n\r\n<p>Nằm c&aacute;ch trung t&acirc;m th&agrave;nh phố Bảo lộc khoảng 18km, v&agrave; c&aacute;ch trung t&acirc;m th&agrave;nh phố Đ&agrave; Lạt 100km. C&aacute;ch th&agrave;nh S&agrave;i G&ograve;n chỉ khoảng 200km theo quốc lộ 20. Sau khi băng qua những đồi ch&egrave; v&agrave; vườn c&agrave; ph&ecirc; bạt ng&agrave;n v&agrave; c&acirc;y ăn tr&aacute;i xanh ng&aacute;t l&agrave; du kh&aacute;ch bắt gặp khu du lịch sinh th&aacute;i Dambri tuyệt vời. Nơi đ&acirc;y đ&atilde; g&acirc;y ấn tượng từ c&aacute;i nh&igrave;n đầu ti&ecirc;n bởi vẻ đẹp h&ugrave;ng vĩ c&ugrave;ng kh&iacute; hậu trong l&agrave;nh n&uacute;i rừng nguy&ecirc;n sinh Nam T&acirc;y Nguy&ecirc;n.<br />\r\n<br />\r\nDambri trong tiếng K&rsquo;Ho c&oacute; nghĩa l&agrave; đợi chờ, nơi đ&acirc;y đ&atilde; gắn liền với truyền thuyết đẹp về tấm l&ograve;ng son sắt của người thiếu nữ d&agrave;nh cho ch&agrave;ng trai m&agrave; m&igrave;nh y&ecirc;u. Theo truyền thuyết, c&oacute; một đ&ocirc;i trai g&aacute;i y&ecirc;u nhau nhưng lại bị gia đ&igrave;nh c&ocirc; g&aacute;i ra sức ngăn cản. Bỗng một ng&agrave;y ch&agrave;ng trai bị mất t&iacute;ch m&agrave; kh&ocirc;ng để lại dấu vết g&igrave;, c&ocirc; g&aacute;i H&rsquo;Bi cứ ngồi kh&oacute;c m&atilde;i v&agrave; đợi m&atilde;i nhưng vẫn kh&ocirc;ng thấy ch&agrave;ng trai ấy quay về, nước mắt của c&ocirc; đ&atilde; trở th&agrave;nh d&ograve;ng th&aacute;c lớn đổ xuống. Ch&iacute;nh nơi đ&acirc;y l&agrave; địa điểm hẹn h&ograve; của đ&ocirc;i t&igrave;nh nh&acirc;n l&uacute;c xưa, v&igrave; thế m&agrave; người d&acirc;n đ&atilde; lấy t&ecirc;n Dambri mang &yacute; nghĩa chờ đợi để đặt t&ecirc;n cho d&ograve;ng th&aacute;c.</p>\r\n\r\n<h3><strong>Vẻ đẹp của khu du lịch Dambri</strong></h3>\r\n\r\n<p>Từ cổng ch&agrave;o du kh&aacute;ch đ&atilde; nghe được tiếng ầm ầm cuộn tr&agrave;o của d&ograve;ng th&aacute;c đổ mạnh mẽ xuống mặt nước. Đường dẫn v&agrave;o trung t&acirc;m khu du lịch c&oacute; một c&acirc;y cầu xi măng d&agrave;i hơn 20m bắc ngang qua suối đến đỉnh th&aacute;c. Tại đ&acirc;y du kh&aacute;ch c&oacute; thể chi&ecirc;m ngưỡng hết tầm mắt to&agrave;n bộ vẻ đẹp th&aacute;c Dambri giống như một bức tranh h&ugrave;ng vĩ n&uacute;i rừng T&acirc;y Nguy&ecirc;n tuyệt đẹp.<br />\r\n<br />\r\nNgo&agrave;i ra khu du lịch Dambri c&ograve;n lấy th&aacute;c nước để l&agrave;m trung t&acirc;m với rất nhiều hoạt động vui chơi giải tr&iacute; kh&aacute;c nhau diễn ra xung quanh. Th&aacute;c Dambri cao gần 60m với độ rộng l&agrave; 30m như phủ trắng x&oacute;a cả kh&ocirc;ng gian rộng lớn giữa những t&aacute;n c&acirc;y rừng tạo n&ecirc;n bức tranh non nước hữu t&igrave;nh.<br />\r\n<br />\r\nĐến đ&acirc;y du kh&aacute;ch sẽ được chứng kiến d&ograve;ng nước thẳng đứng chảy từ tr&ecirc;n cao xuống dưới mang theo những lớp sương m&ugrave; chạm v&agrave;o tảng đ&aacute; l&agrave;m văng l&ecirc;n bọt nước trắng x&oacute;a, tạo n&ecirc;n khung cảnh kỳ ảo m&ecirc; hoặc bao &aacute;nh nh&igrave;n của người lữ kh&aacute;ch.<br />\r\n<br />\r\nNếu du kh&aacute;ch đi&nbsp;<a href="https://dulichviet.com.vn/du-lich-tay-nguyen"><strong>tour T&acirc;y Nguy&ecirc;n</strong></a>&nbsp;đến Dambri v&agrave;o m&ugrave;a mưa th&igrave; sẽ ngạc nhi&ecirc;n với tốc độ d&ograve;ng chảy mạnh mẽ của th&aacute;c nước, thậm ch&iacute; ch&uacute;ng c&ograve;n khiến du kh&aacute;ch c&oacute; ch&uacute;t g&igrave; đ&oacute; e sợ. Đ&acirc;y cũng ch&iacute;nh l&agrave; thời điểm nước đầu nguồn dội về, d&ograve;ng nước đổ xuống con suối ph&iacute;a dưới tăng gấp đ&ocirc;i n&ecirc;n tạo n&ecirc;n tiếng vang lớn, g&acirc;y chấn động cả một kh&ocirc;ng gian y&ecirc;n tĩnh của n&uacute;i rừng nơi đ&acirc;y. Song ch&iacute;nh sự h&ugrave;ng vĩ n&agrave;y c&oacute; ch&uacute;t hoang dại n&agrave;y đ&atilde; tạo n&ecirc;n vẻ đẹp độc đ&aacute;o, k&iacute;ch th&iacute;ch mọi gi&aacute;c quan của du kh&aacute;ch khi gh&eacute; thăm Đambri.<br />\r\n<br />\r\nKh&ocirc;ng chỉ c&oacute; th&aacute;c kh&ocirc;ng th&ocirc;i m&agrave; khu du lịch Dambri c&ograve;n c&oacute; một hệ thống sinh th&aacute;i rừng nguy&ecirc;n sinh tự nhi&ecirc;n kh&aacute; lớn, với diện t&iacute;ch 300 ha với đủ loại chim. Ở đ&acirc;y c&ograve;n c&oacute; nhiều c&acirc;y cổ thụ qu&yacute; hiếm như sao, dổi, kền kền,&hellip; gốc to khoảng 3 v&ograve;ng tay người &ocirc;m. Điều n&agrave;y đ&atilde; tạo n&ecirc;n một khung cảnh v&ocirc; c&ugrave;ng hoang sơ m&agrave; kỳ vĩ, lại mang đến kh&ocirc;ng kh&iacute; trong l&agrave;nh th&iacute;ch hợp cho chuyến nghỉ dưỡng sau những ng&agrave;y l&agrave;m việc mệt nhọc.</p>\r\n\r\n<p><img alt="Những hoạt động vui chơi thú vị, độc đáo tại khu du lịch Dambri" src="https://dulichviet.com.vn/images/bandidau/nhung-hoat-dong-vui-choi-thu-vi-doc-dao-tai-khu-du-lich-dambri.jpg" /></p>\r\n\r\n<p><em>Những hoạt động vui chơi th&uacute; vị, độc đ&aacute;o tại khu du lịch Dambri</em></p>\r\n\r\n<h3><strong>Những hoạt động vui chơi th&uacute; vị, độc đ&aacute;o tại khu du lịch Dambri</strong></h3>\r\n\r\n<p>B&ecirc;n cạnh những vẻ đẹp kỳ vĩ tr&aacute;ng lệ của th&aacute;c nước, khu du lịch sinh th&aacute;i Dambri c&ograve;n mang đến cho du kh&aacute;ch trải nghiệm dịch vụ hấp dẫn với nhiều khu vui chơi giải tr&iacute; được x&acirc;y dựng xung quanh th&aacute;c nước.<br />\r\n<br />\r\nĐến&nbsp;<a href="https://dulichviet.com.vn/du-lich-tay-nguyen"><strong>tour du lịch T&acirc;y Nguy&ecirc;n</strong></a>&nbsp;nh&igrave;n ngắm th&aacute;c nước Dambri th&igrave; du du kh&aacute;ch c&oacute; thể tự m&igrave;nh chinh phục th&aacute;c với h&agrave;nh tr&igrave;nh độc đ&aacute;o l&agrave; đi bộ 138 bậc thang. Men dọc theo v&aacute;ch đ&aacute; v&agrave; sườn n&uacute;i để chi&ecirc;m ngưỡng trọn vẹn vẻ đẹp của d&ograve;ng th&aacute;c từ nhiều hướng. Nếu du kh&aacute;ch th&iacute;ch kh&aacute;m ph&aacute; thi&ecirc;n nhi&ecirc;n một c&aacute;ch hoang dại h&atilde;y thử tr&ograve; chơi m&aacute;ng trượt với chiều d&agrave;i 1650m. Hay với hoạt động mới mẻ như đạp vịt quanh hồ nước nối liền với th&aacute;c Đambri ở gần đ&oacute;. Bằng c&aacute;ch n&agrave;y du kh&aacute;ch c&oacute; thể tận hưởng kh&ocirc;ng kh&iacute; trong l&agrave;nh v&agrave; chi&ecirc;m ngưỡng vẻ đẹp y&ecirc;n b&igrave;nh của n&uacute;i rừng. Đ&oacute; cũng ch&iacute;nh l&agrave; nơi c&oacute; kh&ocirc;ng gian th&iacute;ch hợp để du kh&aacute;ch nghỉ dưỡng thư th&aacute;i, thả hồn v&agrave;o cảnh đẹp mộng mơ b&ecirc;n n&uacute;i rừng h&ugrave;ng vĩ.<br />\r\n<br />\r\nKh&ocirc;ng chỉ vậy du kh&aacute;ch c&ograve;n được kh&aacute;m ph&aacute; nhiều n&eacute;t văn h&oacute;a độc đ&aacute;o của người d&acirc;n sống xung quanh, trong đ&oacute; phải kể đến l&agrave;ng người Ch&acirc;u Mạ. Khi đến bu&ocirc;n l&agrave;ng người Ch&acirc;u Mạ du kh&aacute;ch sẽ được tiếp đ&oacute;n bằng lễ hội cồng chi&ecirc;ng hoang d&atilde;. Đ&acirc;y l&agrave; cơ hội để du kh&aacute;ch t&igrave;m hiểu về nghề dệt thổ cẩm truyền thống.<br />\r\n<br />\r\nChẳng những kho&aacute;c tr&ecirc;n m&igrave;nh vẻ đẹp dịu d&agrave;ng, nhẹ nh&agrave;ng vốn c&oacute; như c&aacute;i t&ecirc;n xứ sở ng&agrave;n hoa, c&ograve;n c&oacute; những điểm đến hoang sơ, h&ugrave;ng vĩ tuyệt đẹp. Ch&iacute;nh v&igrave; vậy khi đến&nbsp;<a href="https://dulichviet.com.vn/du-lich-tay-nguyen"><strong>du lịch T&acirc;y Nguy&ecirc;n</strong></a>&nbsp;chắc chắn du kh&aacute;ch kh&ocirc;ng thể bỏ qua h&agrave;nh tr&igrave;nh tham quan kh&aacute;m ph&aacute; th&aacute;c Đambri của n&uacute;i rừng T&acirc;y Nguy&ecirc;n nh&eacute;.</p>', NULL, NULL, NULL, 'Oanh', 1, 1, NULL, 0, 1, '2021-06-30 12:30:10', '2021-06-30 12:30:10', NULL),
(3, 'vi', 1, 'Choáng ngợp trước vẻ đẹp của cánh đồng hoa xanh Hitashi Nhật Bản', 'choang-ngop-truoc-ve-dep-cua-canh-dong-hoa-xanh-hitashi-nhat-ban', '/upload/choang-ngop-truoc-ve-dep-cua-canh-dong-hoa-xanh-hitashi-nhat-ban.jpg', 'Nếu du khách đến du lịch Nhật Bản vào tháng 4 thì không khỏi trầm trồ ngạc nhiên trước vẻ đẹp tuyệt hảo của những cánh hoa Nemophila xanh biếc. Nào hãy cùng Du Lịch Việt tìm hiểu và khám phá về cánh đồng hoa xanh biếc qua bài viết dưới đây nhé.', '<p>Đất nước Nhật Bản kh&ocirc;ng chỉ c&oacute; cảnh đẹp, những m&oacute;n ăn ngon m&agrave; c&ograve;n phải kể đến những lo&agrave;i hoa đại diện cho c&aacute;c m&ugrave;a trong năm. Nếu du kh&aacute;ch đến&nbsp;<a href="https://dulichviet.com.vn/du-lich-nhat-ban"><strong>du lịch Nhật Bản</strong></a>&nbsp;v&agrave;o th&aacute;ng 4 th&igrave; kh&ocirc;ng khỏi trầm trồ ngạc nhi&ecirc;n trước vẻ đẹp tuyệt hảo của những c&aacute;nh hoa Nemophila xanh biếc. N&agrave;o h&atilde;y c&ugrave;ng&nbsp;<a href="https://dulichviet.com.vn/"><strong>Du Lịch Việt</strong></a>&nbsp;t&igrave;m hiểu v&agrave; kh&aacute;m ph&aacute; về c&aacute;nh đồng hoa xanh biếc qua b&agrave;i viết dưới đ&acirc;y nh&eacute;.</p>\r\n\r\n<p><img alt="Choáng ngợp trước vẻ đẹp của cánh đồng hoa xanh Hitashi Nhật Bản" src="https://dulichviet.com.vn/images/bandidau/choang-ngop-truoc-ve-dep-cua-canh-dong-hoa-xanh-hitashi-nhat-ban.jpg" /></p>\r\n\r\n<p><em>Cho&aacute;ng ngợp trước vẻ đẹp của c&aacute;nh đồng hoa xanh Hitashi Nhật Bản</em></p>\r\n\r\n<h2><strong>Cho&aacute;ng ngợp trước vẻ đẹp của c&aacute;nh đồng hoa xanh Hitachi Nhật Bản</strong></h2>\r\n\r\n<h3><strong>Sơ lược về hoa Nemophila Nhật Bản</strong></h3>\r\n\r\n<p>C&ocirc;ng vi&ecirc;n bờ biển Hitashi tọa lạc tại th&agrave;nh phố Hitachinaka quận Ibaraki, Nhật Bản được biết đến l&agrave; một địa điểm&nbsp;<a href="https://dulichviet.com.vn/du-lich-nhat-ban"><strong>du lịch Nhật Bản</strong></a>&nbsp;thần ti&ecirc;n với những thảm hoa đẹp d&agrave;i ng&uacute;t ng&agrave;n, c&ugrave;ng nhiều m&agrave;u sắc sặc sỡ. Nhưng điều đặc biệt nhất vẫn l&agrave; c&aacute;nh đồng hoa xanh baby Blue eyes với m&agrave;u sắc v&ocirc; c&ugrave;ng đẹp m&agrave; lạ mắt v&agrave; độc đ&aacute;o khiến bất kỳ du kh&aacute;ch n&agrave;o cũng mơ ước một lần được gh&eacute; qua để chi&ecirc;m ngưỡng. Hoa n&agrave;y thường nở v&agrave;o thời điểm đất nước Nhật chuyển từ m&ugrave;a xu&acirc;n sang m&ugrave;a hạ. V&agrave;o cuối th&aacute;ng 4 đầu th&aacute;ng 5 cũng ch&iacute;nh l&agrave; thời điểm l&yacute; tưởng nhất để ngắm nh&igrave;n những b&ocirc;ng hoa nhuộm xanh cả c&aacute;nh đồng Nhật Bản.<br />\r\n<br />\r\nNhững b&ocirc;ng hoa Nemophila đem m&agrave;u sắc của bầu trời xanh h&ograve;a lẫn v&agrave;o đại dương đ&atilde; cho ra một m&agrave;u xanh đẹp đến nao l&ograve;ng. Đến&nbsp;<a href="https://dulichviet.com.vn/du-lich-nhat-ban"><strong>tour du lịch Nhật Bản</strong></a>&nbsp;du kh&aacute;ch sẽ c&agrave;ng th&ecirc;m th&uacute; vị khi c&oacute; dịp tham quan c&aacute;nh đồng hoa xanh nổi tiếng. Ngắm nh&igrave;n sắc xanh trong l&agrave;nh của những c&agrave;nh hoa mọc liền kề, c&oacute; t&aacute;c dụng gi&uacute;p cho tinh thần th&ecirc;m thoải m&aacute;i, chữa l&agrave;nh những vết thương l&ograve;ng. Những c&aacute;nh hoa đung đưa trong gi&oacute;, mang đến m&ugrave;i hương thoang thoảng, dễ chịu sẽ khiến cho chuyến du lịch Nhật Bản th&ecirc;m phần trọn vẹn.</p>\r\n\r\n<h3><strong>Ngắm hoa Nemophila tại c&ocirc;ng vi&ecirc;n Hitashi</strong></h3>\r\n\r\n<p>Cứ mỗi năm v&agrave;o dịp h&egrave; đến, Nhật Bản lại ch&agrave;o đ&oacute;n hơn triệu c&acirc;y hoa Nemophila nở rộ, nhuộm xanh cả một v&ugrave;ng trời. C&ocirc;ng vi&ecirc;n Hitashi l&agrave; một địa điểm du lịch Nhật Bản nổi tiếng d&agrave;nh cho những du kh&aacute;ch n&agrave;o y&ecirc;u th&iacute;ch hoa v&agrave; y&ecirc;u vẻ đẹp của Nemophila. Ch&iacute;nh v&igrave; thế, du kh&aacute;ch h&atilde;y chuẩn bị cho m&igrave;nh một bộ trang phục thật đẹp để c&oacute; những bộ ảnh thật đẹp tại c&ocirc;ng vi&ecirc;n hoa xanh n&agrave;y nh&eacute;. Hitashi l&agrave; c&ocirc;ng vi&ecirc;n hoa xanh nằm s&aacute;t ven biển thuộc tỉnh Ibaraki y&ecirc;n ả. C&ocirc;ng vi&ecirc;n c&oacute; diện t&iacute;ch cực lớn, 350 hecta đất, trong đ&oacute; c&oacute; gần 200 hecta, c&oacute; đến 4,5 triệu c&acirc;y hoa Nemophila được trồng tại c&ocirc;ng vi&ecirc;n v&agrave; nhiều loại hoa bốn m&ugrave;a kh&aacute;c nhau như hoa tulip, hoa hướng dương.,&hellip;</p>\r\n\r\n<p><img alt="Ngắm hoa Nemophila tại công viên Hitashi" src="https://dulichviet.com.vn/images/bandidau/ngam-hoa-nemophila-tai-cong-vien-hitashi.jpg" /></p>\r\n\r\n<p><em>Ngắm hoa Nemophila tại c&ocirc;ng vi&ecirc;n Hitashi</em></p>\r\n\r\n<p>Tuy vậy, c&ocirc;ng vi&ecirc;n Hitashi được mọi người biết đến nhiều nhất l&agrave; v&agrave;o m&ugrave;a h&egrave;. Đ&acirc;y cũng ch&iacute;nh l&agrave; thời điểm hoa mắt xanh nở b&ocirc;ng, xanh m&aacute;t. Kh&ocirc;ng chỉ c&oacute; kh&aacute;ch đi&nbsp;<a href="https://dulichviet.com.vn/du-lich-nhat-ban"><strong>tour Nhật Bản</strong></a>&nbsp;m&agrave; cả người d&acirc;n nơi đ&acirc;y n&agrave;y đều đổ về c&ocirc;ng vi&ecirc;n n&agrave;y để chi&ecirc;m ngưỡng vẻ đẹp c&oacute; một kh&ocirc;ng hai n&agrave;y. Mỗi năm tại c&ocirc;ng vi&ecirc;n Hitashi n&agrave;y đều diễn ra lễ hội Nemophila đ&atilde; thu h&uacute;t h&agrave;ng ngh&igrave;n lượt kh&aacute;ch đến tham quan. Du kh&aacute;ch đến đ&acirc;y hầu hết đều ngạc nhi&ecirc;n v&agrave; bị cho&aacute;ng ngợp bởi vẻ đẹp của c&aacute;nh đồng hoa xanh mắt. Cho d&ugrave; loại hoa xanh biếc n&agrave;y kh&ocirc;ng mang vẻ đẹp lung linh như những c&agrave;nh hoa đ&agrave;o, những b&ocirc;ng hoa hồng, hay hoa tulip nhưng Nemophila mang đến cho mọi người vẻ đẹp mộc mạc, giản dị nhưng hết sức sang trọng.<br />\r\n<br />\r\nNhững c&aacute;nh hoa nhỏ m&agrave;u xanh xen lẫn một ch&uacute;t m&agrave;u trắng sữa, đ&atilde; tạo n&ecirc;n một vẻ đẹp rạng ngời, tươi tắn. Đứng trước c&aacute;nh đồng hoa xanh Hitashi du kh&aacute;ch như được bỏ qu&ecirc;n hết bao muộn phiền trong cuộc sống h&agrave;ng ng&agrave;y v&agrave; tận hưởng cảnh đẹp nơi đ&acirc;y. Để đến được c&aacute;nh đồng hoa mắt xanh tại c&ocirc;ng vi&ecirc;n Hitashi du kh&aacute;ch phải đi bộ qua con đường nhỏ hẹp, dưới những t&aacute;n c&acirc;y xanh. Trải qua những đoạn đường đầy c&acirc;y xanh, du kh&aacute;ch sẽ tận mắt chi&ecirc;m ngưỡng c&aacute;nh đồng hoa xanh tuyệt đẹp trước mắt. Ch&iacute;nh sắc xanh của từng b&ocirc;ng hoa Nemophila k&eacute;o d&agrave;i đến tận ch&acirc;n trời lại c&agrave;ng khiến cho ch&uacute;ng c&oacute; cảm gi&aacute;c thật b&igrave;nh y&ecirc;n v&agrave; thoải m&aacute;i t&acirc;m hồn, một m&agrave;u xanh của sự tinh khiết, b&igrave;nh y&ecirc;n v&agrave; dịu d&agrave;ng.</p>\r\n\r\n<h3><strong>Hướng dẫn du kh&aacute;ch di chuyển đến c&ocirc;ng vi&ecirc;n Hitashi</strong></h3>\r\n\r\n<p>Đi bằng t&agrave;u điện: từ thủ đ&ocirc; Tokyo, du kh&aacute;ch c&oacute; thể đi bằng t&agrave;u điện với tuyến t&agrave;u JR Hitashi- Tokiwa ( mỗi chuyến sẽ c&aacute;ch nhau 30 ph&uacute;t). T&agrave;u sẽ khởi h&agrave;nh từ ga Ueno, đi đến ga Katsuta ở tỉnh Ibaraki. Sau đ&oacute; từ ga Katsuta du kh&aacute;ch đi xe bu&yacute;t để đến c&ocirc;ng vi&ecirc;n.<br />\r\n<br />\r\nĐi bằng xe bus: từ ga Tokyo du kh&aacute;ch di chuyển Tokyo &ndash; Ibaraki Kotsu xuống tại cổng Kaihinkoen Nishiguchi, c&aacute;ch di chuyển n&agrave;y th&ocirc;ng thường mất tầm 2h để đến c&ocirc;ng vi&ecirc;n Hitashi.<br />\r\n<br />\r\nNhững ng&agrave;y đ&oacute;ng cửa của c&ocirc;ng vi&ecirc;n Hitashi:</p>\r\n\r\n<ul>\r\n	<li>C&ocirc;ng vi&ecirc;n sẽ đ&oacute;ng cửa v&agrave;o tất cả c&aacute;c ng&agrave;y thứ 2, loại trừ c&aacute;c trường hợp sau.</li>\r\n	<li>Nếu ng&agrave;y thứ 2 l&agrave; ng&agrave;y lễ th&igrave; sẽ đ&oacute;ng cửa v&agrave;o thứ 3</li>\r\n	<li>Mở cửa tất cả c&aacute;c ng&agrave;y v&agrave;o m&ugrave;a hoa ch&iacute;nh như m&ugrave;a xu&acirc;n (26/3-31/5), m&ugrave;a hạ (21/7-31/8), m&ugrave;a thu(1/10-31/10).</li>\r\n</ul>\r\n\r\n<p>Để tận hưởng một m&ugrave;a h&egrave; th&uacute; vị bằng chuyến&nbsp;<a href="https://dulichviet.com.vn/du-lich-nhat-ban"><strong>du lịch Nhật Bản</strong></a>&nbsp;hấp dẫn, ngắm nh&igrave;n cảnh đẹp tuyệt diệu của đất nước mặt trời mọc v&agrave; chi&ecirc;m ngưỡng c&aacute;nh đồng hoa xanh biếc sẽ l&agrave; một trải nghiệm v&ocirc; c&ugrave;ng th&uacute; vị. Ch&uacute;c du kh&aacute;ch c&oacute; một chuyến đi đầy th&uacute; vị, đầy những kỷ niệm đẹp tr&ecirc;n đất nước Nhật Bản.</p>', NULL, NULL, NULL, 'Toan', 1, 1, NULL, 0, 1, '2021-06-30 12:31:40', '2021-06-30 12:31:40', NULL),
(4, 'vi', 1, 'Chia sẻ kinh nghiệm đi du lịch đảo Lý Sơn từ Đà Nẵng tiết kiệm nhất', 'chia-se-kinh-nghiem-di-du-lich-dao-ly-son-tu-da-nang-tiet-kiem-nhat', '/upload/chia-se-kinh-nghiem-di-du-lich-dao-ly-son-tu-da-nang-tiet-kiem-nhat.jpg', 'Hi vọng với những chia sẻ kinh nghiệm du lịch đảo Lý Sơn Đà Nẵng sẽ giúp du khách có một chuyến đi trọn vẹn hơn. Chúc du khách có một chuyến đi đầy trải nghiệm thú vị tại vùng biển đảo này nhé.', '<p>Chỉ c&aacute;ch Đ&agrave; Nẵng khoảng 130km về ph&iacute;a nam. Nhưng du lịch đảo L&yacute; Sơn Đ&agrave; Nẵng đang trở th&agrave;nh một địa điểm du lịch hấp dẫn đ&ocirc;ng đảo du kh&aacute;ch du lịch trong nước v&agrave; ngo&agrave;i nước đến tham quan v&agrave; nghỉ dưỡng. Sau khi đ&atilde; vi vu&nbsp;<a href="https://dulichviet.com.vn/du-lich-da-nang"><strong>du lịch Đ&agrave; Nẵng</strong></a>&nbsp;thỏa th&iacute;ch với th&agrave;nh phố biển th&igrave; nhất định du kh&aacute;ch phải gh&eacute; đến đảo L&yacute; Sơn. Để c&oacute; một chuyến đi tuyệt vời. C&ugrave;ng&nbsp;<a href="https://dulichviet.com.vn/"><strong>Du Lịch Việt</strong></a>&nbsp;chia sẻ những kinh nghiệm du lịch L&yacute; Sơn từ Đ&agrave; Nẵng một c&aacute;ch tiết kiệm nhất qua b&agrave;i viết b&ecirc;n dưới nh&eacute;.</p>\r\n\r\n<p><img alt="Chia sẻ kinh nghiệm đi du lịch đảo Lý Sơn từ Đà Nẵng tiết kiệm nhất" src="https://dulichviet.com.vn/images/bandidau/chia-se-kinh-nghiem-di-du-lich-dao-ly-son-tu-da-nang-tiet-kiem-nhat.jpg" /></p>\r\n\r\n<p><em>Chia sẻ kinh nghiệm đi du lịch đảo L&yacute; Sơn từ Đ&agrave; Nẵng tiết kiệm nhất</em></p>\r\n\r\n<h2><strong>Giới thiệu về đảo L&yacute; Sơn</strong></h2>\r\n\r\n<p>L&yacute; sơn kh&ocirc;ng chỉ l&agrave; v&ugrave;ng đất thi&ecirc;ng li&ecirc;ng của những di t&iacute;ch mang t&iacute;nh văn h&oacute;a, lịch sử m&agrave; c&ograve;n l&agrave; điểm đến với v&ocirc; v&agrave;n danh lam thắng cảnh đẹp huyền b&iacute; khi được kiến tạo bởi mạch dung nham, n&uacute;i lửa h&agrave;ng trăm năm về trước.<br />\r\n<br />\r\nĐảo L&yacute; Sơn l&agrave; một huyện đảo duy nhất thuộc địa phận của tỉnh Quảng Ng&atilde;i, c&aacute;ch đất liền khoảng 15 hải l&yacute;. Đảo L&yacute; Sơn c&ograve;n được gọi bằng c&aacute;i t&ecirc;n th&acirc;n mật, mộc mạc hơn l&agrave; c&ugrave; Lao R&eacute; bởi lẽ tr&ecirc;n h&ograve;n đảo n&agrave;y mọc rất nhiều những c&acirc;y r&eacute;.<br />\r\n<br />\r\nĐảo L&yacute; Sơn gồm c&oacute; ba h&ograve;n đảo l&agrave; đảo lớn, đảo b&eacute; v&agrave; h&ograve;n M&ugrave; Cu. Khi đến&nbsp;<a href="https://dulichviet.com.vn/du-lich-da-nang"><strong>tour du lịch Đ&agrave; Nẵng</strong></a>&nbsp;tham quan đảo L&yacute; Sơn du kh&aacute;ch sẽ cảm nhận được sự gắn b&oacute; h&agrave;i h&ograve;a v&agrave; chặt chẽ giữa cảnh quan thi&ecirc;n nhi&ecirc;n v&agrave; con người nơi đ&acirc;y. Được đắm m&igrave;nh trong l&agrave;n nước trong xanh. Phơi m&igrave;nh tr&ecirc;n những b&atilde;i c&aacute;t trắng mịn tr&agrave;n ngập &aacute;nh nắng v&agrave;ng mặt trời. Hay thưởng thức những m&oacute;n ăn đặc trưng m&agrave; thi&ecirc;n nhi&ecirc;n nơi đ&acirc;y đ&atilde; ưu &aacute;i ban tặng.</p>\r\n\r\n<h2><strong>Kinh nghiệm để du kh&aacute;ch du lịch L&yacute; Sơn từ Đ&agrave; Nẵng</strong></h2>\r\n\r\n<h3><strong>C&aacute;ch du kh&aacute;ch di chuyển từ Đ&agrave; Nẵng đến L&yacute; Sơn</strong></h3>\r\n\r\n<p>Đ&agrave; Nẵng c&aacute;ch L&yacute; Sơn khoảng 130km. Một khoảng đường kh&aacute; xa, tuy nhi&ecirc;n đường bằng phẳng lại dễ đi n&ecirc;n du kh&aacute;ch sẽ kh&ocirc;ng mất qu&aacute; nhiều thời gian cho việc di chuyển. Từ Đ&agrave; Nẵng ra đến đảo L&yacute; Sơn, du kh&aacute;ch sẽ đi qua hai chặng đường : Từ Đ&agrave; Nẵng &ndash; cảng Sa Kỳ, từ cảng Sa Kỳ - đảo L&yacute; Sơn.</p>\r\n\r\n<p><strong>Đ&agrave; Nẵng &ndash; cảng Sa Kỳ</strong></p>\r\n\r\n<p>Xe m&aacute;y: loại phương n&agrave;y th&iacute;ch hợp d&agrave;nh cho những bạn trẻ. Th&iacute;ch kh&aacute;m ph&aacute; v&agrave; đặc biệt l&agrave; th&iacute;ch đi phượt. Xe m&aacute;y du kh&aacute;ch c&oacute; thể thu&ecirc; ở trung t&acirc;m th&agrave;nh phố với gi&aacute; 100k -150k/1 xe/1 ng&agrave;y. Tuy nhi&ecirc;n n&ecirc;n thử xe trước khi thu&ecirc; nh&eacute;. V&igrave; đoạn đường kh&aacute; xa, xe phải tốt để đảm bảo an to&agrave;n cho chuyến đi.<br />\r\n<br />\r\nXe kh&aacute;ch: từ trung t&acirc;m Đ&agrave; Nẵng, du kh&aacute;ch c&oacute; thể bắt bất cứ chuyến xe n&agrave;o cũng đến đảo L&yacute; Sơn được nh&eacute;. xuống xe tại cảng Sa Kỳ. Du kh&aacute;ch c&oacute; thể chọn cho m&igrave;nh những nh&agrave; xe giường nằm uy t&iacute;n như Phương Trang hay Mai Linh. Gi&aacute; l&agrave; 370k/người.<br />\r\n<br />\r\nT&agrave;u hỏa: đ&acirc;y l&agrave; phương tiện được nhiều du kh&aacute;ch lựa chọn khi du lịch đảo L&yacute; Sơn Đ&agrave; Nẵng v&agrave; du kh&aacute;ch n&ecirc;n lưu &yacute; để tr&aacute;nh bị nhỡ lọ tr&igrave;nh nh&eacute;. Du kh&aacute;ch sẽ mua v&eacute; đi từ Quảng Ng&atilde;i ở ga Đ&agrave; Nẵng. Sau khi đ&atilde; xuống t&agrave;u ở ga Quảng Ng&atilde;i th&igrave; đi xe &ocirc;m hoặc Taxi tới cảng Sa Kỳ.</p>\r\n\r\n<p><img alt="Thời gian thích hợp để du lịch đảo Lý Sơn" src="https://dulichviet.com.vn/images/bandidau/thoi-gian-thich-hop-de-du-lich-dao-ly-son.jpg" /></p>\r\n\r\n<p><em>Thời gian th&iacute;ch hợp để du lịch đảo L&yacute; Sơn</em></p>\r\n\r\n<p><strong>Cảng Sa Kỳ - Đảo L&yacute; Sơn</strong></p>\r\n\r\n<p>Du kh&aacute;ch sẽ ra đảo bằng những chiếc cano si&ecirc;u tốc tại cảng Sa Kỳ. T&agrave;u xuất ph&aacute;t từ cảng Sa Kỳ mỗi ng&agrave;y chỉ c&oacute; một chuyến v&agrave;o khoảng khung giờ l&agrave; 7h30 đến 8h s&aacute;ng kh&ocirc;ng cố định. Du kh&aacute;ch bắt buộc phải mua v&eacute; th&igrave; mới l&ecirc;n t&agrave;u được. Khi mua v&eacute; cần xuất tr&igrave;nh giấy chứng minh nh&acirc;n d&acirc;n hoặc hộ chiếu để được mua v&eacute;.&nbsp;Gi&aacute; v&eacute; từ 130 &ndash; 150k/người t&ugrave;y v&agrave;o từng thời điểm. quầy b&aacute;n v&eacute; mở cửa từ 6h s&aacute;ng h&agrave;ng ng&agrave;y.</p>\r\n\r\n<p><strong>Di chuyển tr&ecirc;n đảo L&yacute; Sơn</strong></p>\r\n\r\n<p>Xe m&aacute;y l&agrave; loại phương tiện được du kh&aacute;ch sử dụng phổ biến nhất tại đảo. Du kh&aacute;ch đi&nbsp;<a href="https://dulichviet.com.vn/du-lich-da-nang"><strong>tour Đ&agrave; Nẵng</strong></a>&nbsp;c&oacute; thể thu&ecirc; xe m&aacute;y ngay ở kh&aacute;ch sạn, homestay m&agrave; m&igrave;nh lưu tr&uacute;.&nbsp;Ngo&agrave;i ra, du kh&aacute;ch c&oacute; thể thu&ecirc; xe điện để tham quan quanh đảo. Tuy nhi&ecirc;n gi&aacute; cả sẽ mắc hơn.</p>\r\n\r\n<h3><strong>Lưu tr&uacute; tr&ecirc;n đảo L&yacute; Sơn</strong></h3>\r\n\r\n<p>Tr&ecirc;n đảo c&oacute; nhiều loại h&igrave;nh lưu tr&uacute; c&oacute; gi&aacute; ph&ograve;ng từ b&igrave;nh d&acirc;n cho đến cao cấp. du kh&aacute;ch c&oacute; thể tham khảo một số nh&agrave; nghỉ như nh&agrave; nghỉ Hoa Biển, nh&agrave; nghỉ Biển Đ&ocirc;ng, nh&agrave; nghỉ Minh Vy,..&nbsp;Nếu kh&ocirc;ng muốn lang thang để đi kiếm nơi lưu tr&uacute;. Th&igrave; du kh&aacute;ch n&ecirc;n đặt ph&ograve;ng trước khi đến đ&acirc;y.</p>\r\n\r\n<h3><strong>Thời gian th&iacute;ch hợp để du lịch đảo L&yacute; Sơn</strong></h3>\r\n\r\n<p>V&igrave; đảo L&yacute; Sơn kh&ocirc;ng phải thời gian n&agrave;o cũng c&oacute; thể đi du lịch. Nhất l&agrave; c&aacute;c m&ugrave;a mưa b&atilde;o, t&agrave;u thuyền sẽ kh&ocirc;ng được ph&eacute;p di chuyển tr&ecirc;n biển.<br />\r\n<br />\r\nThời điểm đẹp nhất để du lịch đảo L&yacute; Sơn Đ&agrave; Nẵng l&agrave; v&agrave;o m&ugrave;a h&egrave;, dao động trong khoảng thời gian từ th&aacute;ng 6 đến th&aacute;ng 9. Thời tiết l&uacute;c n&agrave;y rất đẹp, kh&ocirc;ng c&oacute; mauw b&atilde;o, biển động lại rất nắng n&ecirc;n th&iacute;ch hợp cho c&aacute;c hoạt động bơi lội, tắm biển.<br />\r\n<br />\r\nKh&ocirc;ng th&igrave; du kh&aacute;ch c&oacute; thể đến L&yacute; Sơn v&agrave;o ba thời điểm n&agrave;y:</p>\r\n\r\n<ul>\r\n	<li>M&ugrave;a tỏi ( từ ng&agrave;y 10/2 &ndash; 28/2 dương lịch): từ l&acirc;u loại tỏi L&yacute; Sơn l&agrave; một thương hiệu nổi tiếng gần xa. M&ugrave;a tỏi bắt đầu từ th&aacute;ng 10 v&agrave; thu hoạch v&agrave;o th&aacute;ng 2. Nếu du kh&aacute;ch đến v&agrave;o thời điểm n&agrave;y sẽ tha hồ thử đặc sản tỏi L&yacute; Sơn.</li>\r\n	<li>Lễ khao thề l&iacute;nh Ho&agrave;ng sa (18-20/3 &acirc;m lịch) : đ&acirc;y l&agrave; lễ hội truyền thống được tổ chức h&agrave;ng năm nhằm tri &acirc;n những người đ&atilde; c&oacute; c&ocirc;ng x&acirc;y dựng v&agrave; bảo vệ h&ograve;n đảo. Lễ hội n&agrave;y c&oacute; rất nhiều th&uacute; vị của người d&acirc;n nơi v&ugrave;ng đảo xa.</li>\r\n	<li>M&ugrave;a h&egrave; (th&aacute;ng 5- 8 dương lịch): thời điểm n&agrave;y ở đảo thời tiết rất đẹp. biển xanh, c&aacute;t trắng, nắng v&agrave;ng n&ecirc;n bạn thỏa th&iacute;ch đắm m&igrave;nh trong l&agrave;n nước trong xanh m&aacute;t rượi.</li>\r\n</ul>\r\n\r\n<p>Đến&nbsp;<a href="https://dulichviet.com.vn/du-lich-da-nang"><strong>du lịch Đ&agrave; Nẵng</strong></a>&nbsp;tham quan đảo L&yacute; Sơn sẽ l&agrave; một chuyến đi nhớ đời của du kh&aacute;ch với những cảnh quan thi&ecirc;n nhi&ecirc;n đẹp như mơ. Hi vọng với những chia sẻ kinh nghiệm du lịch đảo L&yacute; Sơn Đ&agrave; Nẵng sẽ gi&uacute;p du kh&aacute;ch c&oacute; một chuyến đi trọn vẹn hơn. Ch&uacute;c du kh&aacute;ch c&oacute; một chuyến đi đầy trải nghiệm th&uacute; vị tại v&ugrave;ng biển đảo n&agrave;y nh&eacute;.</p>', NULL, NULL, NULL, 'Bin', 0, 1, NULL, 0, 1, '2021-06-30 12:32:46', '2021-06-30 12:32:46', NULL),
(5, 'vi', 1, 'Khám phá 2 ngôi làng bích họa 3D tuyệt đẹp ở Quảng Ngãi', 'kham-pha-2-ngoi-lang-bich-hoa-3d-tuyet-dep-o-quang-ngai', '/upload/1.jpg', 'Khi đến du lịch Quảng Ngãi du khách không chỉ ngắm bích họa đẹp, được chụp ảnh đẹp mà còn có dịp tìm hiểu về văn hóa, ẩm thực, những nét đẹp riêng của người dân bản địa.', '<p>Nếu c&oacute; c&oacute; hội đến&nbsp;<a href="https://dulichviet.com.vn/du-lich-quang-ngai"><strong>du lịch Quảng Ng&atilde;i</strong></a>&nbsp;th&igrave; du kh&aacute;ch đừng qu&ecirc;n chi&ecirc;m ngưỡng tận mắt nhiều cảnh đẹp thơ mộng m&agrave; thi&ecirc;n nhi&ecirc;n ưu &aacute;i ban tặng cho v&ugrave;ng đất n&agrave;y. V&agrave; hơn thế tại Quảng Ng&atilde;i c&ograve;n nổi tiếng với l&agrave;ng b&iacute;ch họa nơi m&agrave; c&aacute;c t&aacute;c phẩm trang mang hơi thở của cuộc sống biển cả. N&agrave;o h&atilde;y c&ugrave;ng&nbsp;<a href="https://dulichviet.com.vn/"><strong>Du Lịch Việt</strong></a>&nbsp;kh&aacute;m ph&aacute; 2 ng&ocirc;i l&agrave;ng b&iacute;ch họa tranh 3D tuyệt đẹp ở Quảng Ng&atilde;i qua b&agrave;i viết b&ecirc;n dưới nh&eacute;.</p>\r\n\r\n<p><img alt="Khám phá 2 ngôi làng bích họa 3D tuyệt đẹp ở Quảng Ngãi" src="https://dulichviet.com.vn/images/bandidau/kham-pha-2-ngoi-lang-bich-hoa-3d-tuyet-dep-o-quang-ngai.jpg" /></p>\r\n\r\n<p><em>Kh&aacute;m ph&aacute; 2 ng&ocirc;i l&agrave;ng b&iacute;ch họa 3D tuyệt đẹp ở Quảng Ng&atilde;i</em></p>\r\n\r\n<h2><strong>Kh&aacute;m ph&aacute; 2 ng&ocirc;i l&agrave;ng b&iacute;ch họa 3D tuyệt đẹp ở Quảng Ng&atilde;i</strong></h2>\r\n\r\n<p>Khi du kh&aacute;ch đến&nbsp;<a href="https://dulichviet.com.vn/du-lich-quang-ngai"><strong>tour du lịch Quảng Ng&atilde;i</strong></a>&nbsp;tham quan hai ng&ocirc;i l&agrave;ng b&iacute;ch họa du kh&aacute;ch sẽ được check in c&ugrave;ng những bức họa sống động v&agrave; thưởng thức khung cảnh lung linh sống động khi c&aacute;c bức tranh ph&aacute;t s&aacute;ng l&uacute;c về đ&ecirc;m.</p>\r\n\r\n<h3><strong>L&agrave;ng b&iacute;ch họa Thọ An</strong></h3>\r\n\r\n<p>Từ l&acirc;u v&ugrave;ng đất ấy vốn đ&atilde; nổi tiếng với l&agrave;ng b&iacute;ch họa Quảng Ng&atilde;i tr&ecirc;n đảo b&eacute; L&yacute; Sơn nơi đ&atilde; truyền tải những th&ocirc;ng điệp v&ocirc; c&ugrave;ng &yacute; nghĩa về bảo vệ m&ocirc;i trường, cũng như c&aacute;c t&aacute;c phẩm mang hơi thở của cuộc sống nơi biển đảo. Tuy nhi&ecirc;n, xứ Quảng c&ograve;n c&oacute; một ng&ocirc;i l&agrave;ng cổ t&iacute;ch kh&aacute;c nằm s&acirc;u trong bản l&agrave;ng đ&oacute; ch&iacute;nh l&agrave; l&agrave;ng b&iacute;ch họa ở th&ocirc;n Thọ An, x&atilde; B&igrave;nh An, huyện B&igrave;nh Sơn.<br />\r\n<br />\r\nNg&ocirc;i l&agrave;ng n&agrave;y nhỏ nằm c&aacute;ch trung t&acirc;m th&agrave;nh phố khoảng hơn 50km, nằm giữa bức tranh thi&ecirc;n nhi&ecirc;n n&uacute;i rừng b&igrave;nh y&ecirc;n xanh m&aacute;t. Cũng như nhiều ng&ocirc;i l&agrave;ng b&iacute;ch họa nổi tiếng kh&aacute;c ở nước ta, c&aacute;c t&aacute;c phẩm tranh được vẽ tr&ecirc;n tường nh&agrave; d&acirc;n với đa dạng c&aacute;c chủ đề, m&agrave;u sắc. một ng&ocirc;i l&agrave;ng y&ecirc;n b&igrave;nh, tĩnh lặng bỗng chốc trở n&ecirc;n rực rỡ, sống động hơn bao giờ hết. Với ng&ocirc;i l&agrave;ng b&iacute;ch họa Quảng Ng&atilde;i n&agrave;y kh&ocirc;ng chỉ c&oacute; những bức b&iacute;ch họa th&ocirc;ng thường m&agrave; c&ograve;n được đầu tư thực hiện c&aacute;c t&aacute;c phẩm 3D c&oacute; khả năng ph&aacute;t s&aacute;ng l&uacute;c về đ&ecirc;m. Nhưng ti&ecirc;u biểu nhất vẫn l&agrave; bức tranh mi&ecirc;u tả về vẻ đẹp của rừng c&acirc;y, suối chảy được thực hiện tr&ecirc;n tường nh&agrave; văn h&oacute;a th&ocirc;n Thọ An.<br />\r\n<br />\r\nT&aacute;c phẩm như mở ra một kh&ocirc;ng gian rừng gi&agrave; h&ugrave;ng vĩ v&agrave; sống động- nơi m&agrave; c&aacute;c lo&agrave;i động vật như chim, s&oacute;c, bướm, &hellip;đang bay lượn tung tăng, tận hưởng cuộc sống thư thả.&nbsp;Những người họa sĩ để thực hiện dự &aacute;n n&agrave;y đ&atilde; d&agrave;nh thời gian tham quan cảnh sắc rừng c&acirc;y, con suối, bản l&agrave;ng v&agrave; ăn ngủ c&ugrave;ng với người d&acirc;n địa phương để c&oacute; thể t&igrave;m cảm hứng thực hiện bức b&iacute;ch họa. Đ&oacute; cũng ch&iacute;nh l&agrave; l&yacute; do m&agrave; c&aacute;c t&aacute;c phẩm tranh khi ho&agrave;n th&agrave;nh đều mang một vẻ đẹp gần gũi, t&aacute;i hiện ch&acirc;n thực cảnh sắc xinh đẹp của đất Quảng Ng&atilde;i v&agrave; cả n&eacute;t đẹp trong lối sống của người d&acirc;n địa phương nơi đ&acirc;y.<br />\r\n<br />\r\nĐến với l&agrave;ng b&iacute;ch họa 3D Quảng Ng&atilde;i du kh&aacute;ch kh&ocirc;ng chỉ c&oacute; cơ hội thưởng thức vẻ đẹp rực rỡ sắc m&agrave;u của c&aacute;c t&aacute;c phẩm tranh v&agrave;o ban ng&agrave;y. M&agrave; khi đ&ecirc;m về, du kh&aacute;ch sẽ chi&ecirc;m ngưỡng khung cảnh lung linh, rực s&aacute;ng của c&aacute;c bức b&iacute;ch họa 3D. N&ecirc;n đ&oacute; ch&iacute;nh l&agrave; sự kh&aacute;c biệt m&agrave; th&ocirc;n l&agrave;ng Thọ An c&oacute; được so với những l&agrave;ng b&iacute;ch họa nổi tiếng kh&aacute;c tại nước ta. Mỗi t&aacute;c phẩm tranh được thực hiện tr&ecirc;n một bức tường nh&agrave; d&acirc;n để gửi gắm th&ocirc;ng điệp &yacute; nghĩa về m&ocirc;i trường, về t&igrave;nh y&ecirc;u thi&ecirc;n nhi&ecirc;n, cảnh đẹp v&agrave; cả n&eacute;t văn h&oacute;a đặc trưng của người d&acirc;n tộc Cor tại Quảng Ng&atilde;i.&nbsp;Kh&ocirc;ng chỉ thế, khi đến&nbsp;<a href="https://dulichviet.com.vn/du-lich-quang-ngai"><strong>du lịch Quảng Ng&atilde;i</strong></a>&nbsp;du kh&aacute;ch kh&ocirc;ng chỉ ngắm b&iacute;ch họa đẹp, được chụp ảnh đẹp m&agrave; c&ograve;n c&oacute; dịp t&igrave;m hiểu về văn h&oacute;a, ẩm thực, những n&eacute;t đẹp ri&ecirc;ng của người d&acirc;n bản địa.</p>\r\n\r\n<p><img alt="Làng bích họa Gành Yến" src="https://dulichviet.com.vn/images/bandidau/lang-bich-hoa-ganh-yen.jpg" /></p>\r\n\r\n<p><em>L&agrave;ng b&iacute;ch họa G&agrave;nh Yến</em></p>\r\n\r\n<h3><strong>L&agrave;ng b&iacute;ch họa G&agrave;nh Yến</strong></h3>\r\n\r\n<p>B&ecirc;n cạnh ng&ocirc;i l&agrave;ng ở th&ocirc;n Thọ An, th&igrave; đi&nbsp;<a href="https://dulichviet.com.vn/du-lich-quang-ngai"><strong>tour Quảng Ng&atilde;i</strong></a>&nbsp;du kh&aacute;ch đừng qu&ecirc;n check in l&agrave;ng b&iacute;ch họa ở G&agrave;nh Yến. Đ&acirc;y cũng l&agrave; một điểm đến nổi tiếng, c&aacute;ch trung t&acirc;m th&agrave;nh phố khoảng 45km. Đ&acirc;y cũng ch&iacute;nh l&agrave; l&agrave;ng ch&agrave;i nằm ở x&atilde; Thanh Thủy, huyện B&Igrave;nh Sơn, gần thắng cảnh G&agrave;nh Yến nổi tiếng. V&igrave; vậy, khi nhắc đến l&agrave;ng b&iacute;ch họa Quảng Ng&atilde;i n&agrave;y th&igrave; mọi người thường gọi t&ecirc;n l&agrave; l&agrave;ng b&iacute;ch họa G&agrave;nh Yến cho dễ nhớ v&agrave; dễ ph&acirc;n biệt với ng&ocirc;i l&agrave;ng ở th&ocirc;n Thọ An.<br />\r\n<br />\r\nKể từ khi mới xuất hiện, l&agrave;ng b&iacute;ch họa 3D Quảng Ng&atilde;i đ&atilde; khiến cho c&aacute;c bạn trẻ đứng ngồi kh&ocirc;ng y&ecirc;n v&igrave; những t&aacute;c phẩm b&iacute;ch họa 3D c&oacute; khả năng ph&aacute;t ra &aacute;nh s&aacute;ng đẹp mắt khi trời tối. To&agrave;n bộ 14 bức tranh đều được vẽ ở dạng 3D độc đ&aacute;o, nhiều m&agrave;u sắc rực rỡ v&agrave; h&uacute;t mắt. Cho d&ugrave; đến đ&acirc;y ban ng&agrave;y hay trời tối, du kh&aacute;ch đều được chụp c&ugrave;ng c&aacute;c t&aacute;c phẩm đẹp v&agrave; nổi bật.<br />\r\n<br />\r\nNếu ở l&agrave;ng Thọ An mang đến những bức tranh thể hiện sự ho&agrave;nh tr&aacute;ng của n&uacute;i rừng v&agrave; n&eacute;t đẹp văn h&oacute;a của người d&acirc;n bản l&agrave;ng. Th&igrave; ở l&agrave;ng ch&agrave;i Thanh Thủy, những t&aacute;c phẩm b&iacute;ch họa lại thể hiện cảnh sắc tươi mới, đầy sức sống của thế giới b&ecirc;n dưới đại dương hay những ng&ocirc;i nh&agrave; xinh, vườn hoa tươi m&aacute;t. Ngo&agrave;i ra, th&igrave; một số bức tranh t&aacute;i hiện ch&acirc;n thực cuộc sống lao động của phụ nữ tr&ecirc;n những c&aacute;nh đồng trồng h&agrave;nh cũng rất đẹp v&agrave; nổi bật.<br />\r\n<br />\r\nKh&ocirc;ng chỉ c&oacute; những bức tường nh&agrave; d&acirc;n mới được kho&aacute;c &aacute;o mới c&aacute;c bức tranh đầy m&agrave;u sắc. M&agrave; ngay cả những chiếc th&uacute;ng đi biển cũng được l&agrave;m mới bằng những đường n&eacute;t đi&ecirc;u luyện, những bức tranh về c&aacute; v&agrave; c&aacute;c lo&agrave;i sinh vật biển. Nhờ vậy m&agrave; kh&ocirc;ng gian l&agrave;ng ch&agrave;i nơi đ&acirc;y trở n&ecirc;n sinh động hơn. Du kh&aacute;ch đến đ&acirc;y đứng ở g&oacute;c n&agrave;o cũng c&oacute; thể chụp cho m&igrave;nh c&ugrave;ng những t&aacute;c phẩm b&iacute;ch họa đẹp.<br />\r\n<br />\r\nGiờ đ&acirc;y, khi du kh&aacute;ch&nbsp;<a href="https://dulichviet.com.vn/du-lich-quang-ngai"><strong>du lịch Quảng Ng&atilde;i</strong></a>&nbsp;ngo&agrave;i những điểm tham quan như L&yacute; Sơn, Biển Dung Quất, Sa Huỳnh,&hellip; th&igrave; du kh&aacute;ch c&oacute; thể d&agrave;nh thời gian để kh&aacute;m ph&aacute; 2 ng&ocirc;i l&agrave;ng Thọ An v&agrave; Thanh Thủy. Nơi c&oacute; những bức họa rực rỡ v&agrave;o ban ng&agrave;y v&agrave; lung linh kỳ ảo v&agrave;o ban đ&ecirc;m. Ch&uacute;c du kh&aacute;ch c&oacute; một chuyến đi vui vẻ, đầy những trải nghiệm th&uacute; vị nh&eacute;.</p>', NULL, NULL, NULL, 'Dat', 0, 1, NULL, 0, 1, '2021-06-30 12:33:47', '2021-06-30 12:33:47', NULL);
INSERT INTO `posts` (`id`, `lang`, `category_id`, `title`, `slug`, `image`, `description`, `content`, `source`, `attachments`, `tags`, `author`, `featured`, `created_by`, `public_at`, `totalhits`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(6, 'vi', 1, 'Rượu Làng Vân: Thức uống làm mê mẩn khách du lịch miền Bắc', 'ruou-lang-van-thuc-uong-lam-me-man-khach-du-lich-mien-bac', '/upload/ruou-lang-van-thuc-uong-lam-me-man-khach-du-lich-mien-bac.jpg', 'Miền Bắc nước ta có rất nhiều những món ẩm thực nổi tiếng mà không phải ai cũng biết đến, trong đó có rượu Làng Vân một thức uống đã làm mê mẩn biết bao du khách du lịch Miền Bắc mỗi khi thưởng thức. Nào hãy cùng Du Lịch Việt khám phá tìm hiểu rượu Làng Vân qua bài viết dưới đây nhé.', '<p>Tỉnh Bắc Giang nổi tiếng với cảnh quan thi&ecirc;n nhi&ecirc;n đẹp, c&ugrave;ng những di t&iacute;ch lịch sử , văn h&oacute;a ghi đậm dấu ấn lịch sử như ch&ugrave;a Vĩnh Nghi&ecirc;m, rừng Khe Rỗ,&hellip; Ngo&agrave;i ra, nơi đ&acirc;y c&ograve;n rất nhiều những m&oacute;n ẩm thực nổi tiếng m&agrave; kh&ocirc;ng phải ai cũng biết đến, trong đ&oacute; c&oacute; rượu L&agrave;ng V&acirc;n một thức uống đ&atilde; l&agrave;m m&ecirc; mẩn biết bao du kh&aacute;ch&nbsp;<a href="https://dulichviet.com.vn/du-lich-mien-bac"><strong>du lịch miền Bắc</strong></a>&nbsp;mỗi khi thưởng thức. N&agrave;o h&atilde;y c&ugrave;ng&nbsp;<a href="https://dulichviet.com.vn/"><strong>Du Lịch Việt</strong></a>&nbsp;kh&aacute;m ph&aacute; t&igrave;m hiểu rượu L&agrave;ng V&acirc;n qua b&agrave;i viết dưới đ&acirc;y nh&eacute;.</p>\r\n\r\n<p><img alt="Rượu Làng Vân: Thức uống làm mê mẩn khách du lịch miền Bắc" src="https://dulichviet.com.vn/images/bandidau/ruou-lang-van-thuc-uong-lam-me-man-khach-du-lich-mien-bac.jpg" /></p>\r\n\r\n<p><em>Rượu L&agrave;ng V&acirc;n: Thức uống l&agrave;m m&ecirc; mẩn kh&aacute;ch du lịch miền Bắc</em></p>\r\n\r\n<h2><strong>Rượu L&agrave;ng V&acirc;n: thức uống l&agrave;m m&ecirc; mẩn kh&aacute;ch du lịch miền Bắc</strong></h2>\r\n\r\n<p>L&agrave;ng V&acirc;n (hay c&ograve;n gọi l&agrave; Vạn V&acirc;n) c&oacute; t&ecirc;n chữ l&agrave; Y&ecirc;n Vi&ecirc;n, tọa lạc tại ph&iacute;a Bắc của x&atilde; V&acirc;n H&agrave;, huyện Việt Y&ecirc;n, tỉnh Bắc Giang. L&agrave;ng nằm dọc theo tả ngạn s&ocirc;ng Cầu, trải d&agrave;i hơn 1km, đối diện với ng&ocirc;i l&agrave;ng b&ecirc;n kia s&ocirc;ng l&agrave; l&agrave;ng Đại L&acirc;m.</p>\r\n\r\n<p>Mặc d&ugrave; đ&acirc;y ch&iacute;nh l&agrave; l&agrave;ng qu&ecirc; y&ecirc;n b&igrave;nh, mộc mạc mang nhiều n&eacute;t đặc trưng của l&agrave;ng qu&ecirc; Bắc Bộ nhưng V&acirc;n H&agrave; vẫn c&oacute; n&eacute;t đẹp rất ri&ecirc;ng, đ&oacute; ch&iacute;nh l&agrave; người d&acirc;n nơi đ&acirc;y kh&ocirc;ng c&oacute; ruộng. Họ kh&ocirc;ng trồng l&uacute;a, hay trồng hoa m&agrave;u m&agrave; sống ho&agrave;n to&agrave;n bằng nghề ch&iacute;nh l&agrave; thủ c&ocirc;ng, giao thương với c&aacute;c địa phương l&acirc;n cận, trong đ&oacute; c&oacute; nghề nấu rượu.</p>\r\n\r\n<p>L&agrave;ng V&acirc;n kh&ocirc;ng chỉ được du kh&aacute;ch&nbsp;<a href="https://dulichviet.com.vn/du-lich-mien-bac"><strong>tour miền Bắc</strong></a>&nbsp;biết đến với những cảnh quan thi&ecirc;n nhi&ecirc;n đẹp v&agrave; thơ mộng, m&agrave; l&agrave;ng V&acirc;n từ xưa c&ograve;n nổi tiếng gần xa với nghề nấu rượu truyền thống. Với c&aacute;i t&ecirc;n rượu l&agrave;ng V&acirc;n đ&atilde; trở th&agrave;nh thương hiệu v&ocirc; c&ugrave;ng độc đ&aacute;o v&agrave; được xem như l&agrave; một loại mỹ tửu của xứ Kinh Bắc, l&agrave; niềm tự h&agrave;o bao đời nay của người d&acirc;n sống tại mảnh đất Bắc Giang n&agrave;y.</p>\r\n\r\n<p>Đ&atilde; từ rất l&acirc;u l&agrave; nghe t&ecirc;n rượu l&agrave;ng V&acirc;n nhưng để x&aacute;c định nguồn gốc của thức uống n&agrave;y th&igrave; cho đến nay vẫn chưa c&oacute; c&acirc;u trả lời ch&iacute;nh x&aacute;c. Chỉ biết được rằng, l&agrave; d&acirc;n l&agrave;ng V&acirc;n xưa nay vẫn thờ b&agrave; &ldquo;Tổ Nghiệp&rdquo;l&agrave; b&agrave; Nghi Định. B&agrave; đ&atilde; mang nghề nấu rượu từ đất nước Trung Hoa về v&agrave; truyền dạy lại cho người d&acirc;n l&agrave;ng Vạn V&acirc;n, l&agrave;m n&ecirc;n danh tiếng rượu l&agrave;ng V&acirc;n.</p>\r\n\r\n<p>Kể từ đ&oacute; trong l&agrave;ng đ&atilde; h&igrave;nh th&agrave;nh n&ecirc;n một tục lệ v&agrave;o m&ugrave;ng 4 Tết Nguy&ecirc;n đ&aacute;n, mỗi nh&agrave; sẽ cử một người ra ch&ugrave;a Rộc uống m&aacute;u ăn thề, nguyền phải giữ b&iacute; quyết nghề tổ, kh&ocirc;ng được truyền cho bất cứ ai người ở ngo&agrave;i l&agrave;ng. V&agrave; từ đ&oacute; d&acirc;n V&acirc;n H&agrave; lu&ocirc;n tự h&agrave;o với b&iacute; truyền nấu rượu từ nếp c&aacute;i hoa v&agrave;ng h&ograve;a quyện với thứ men gia truyền tinh chế từ ch&iacute;nh 36 vị thuốc bắc v&agrave; c&ograve;n từ nguồn nước trong veo, tinh khiết được lấy từ c&aacute;i giếng khơi trong l&agrave;ng.</p>\r\n\r\n<p><img alt="Rượu làng Vân - đặc sản miền Bắc ai cũng thích" src="https://dulichviet.com.vn/images/bandidau/ruou-lang-van-dac-san-mien-bac-ai-cung-thich.jpg" /></p>\r\n\r\n<p><em>Rượu l&agrave;ng V&acirc;n - đặc sản miền Bắc ai cũng th&iacute;ch</em></p>\r\n\r\n<h3><strong>Nếp c&aacute;i Hoa V&agrave;ng</strong></h3>\r\n\r\n<p>Thứ gạo người V&acirc;n H&agrave; sử dụng l&agrave; loại gạo c&oacute; hạt tr&ograve;n, dẻo thơm đặc biệt mang t&ecirc;n nếp c&aacute;i hoa v&agrave;ng, một giống l&uacute;a nếp truyền thống nổi tiếng tại c&aacute;c tỉnh đồng bằng Bắc bộ.&nbsp;Nguy&ecirc;n nh&acirc;n gọi l&agrave; nếp c&aacute;i hoa v&agrave;ng l&agrave; do khi c&acirc;y l&uacute;a trổ b&ocirc;ng, phấn hoa c&oacute; m&agrave;u v&agrave;ng chứ kh&ocirc;ng trắng như c&aacute;c loại l&uacute;a kh&aacute;c.</p>\r\n\r\n<h3><strong>Loại men d&ugrave;ng để ủ</strong></h3>\r\n\r\n<p>Để quyết định hương vị v&agrave; chất lượng của rượu l&agrave;ng V&acirc;n ch&iacute;nh l&agrave; thứ men đặc biệt, đ&acirc;y l&agrave; loại men thuốc Bắc gia truyền của l&agrave;ng V&acirc;n với 36 vị thuốc Bắc qu&yacute; hiếm. Nhưng nếu để kiểm chứng l&agrave; c&oacute; đủ 36 vị thuốc Bắc hay kh&ocirc;ng th&igrave; kh&ocirc;ng ai kiểm chứng được v&agrave; cũng c&oacute; &yacute; kiến cho rằng con số 36 chỉ mang &yacute; nghĩa tượng trưng cho 36 l&agrave;n điệu quan họ xứ Kinh Bắc đ&atilde; m&ecirc; mẩn biết bao du kh&aacute;ch trong chuyến đi&nbsp;<a href="https://dulichviet.com.vn/du-lich-mien-bac"><strong>du lịch miền Bắc</strong></a>&nbsp;của m&igrave;nh.</p>\r\n\r\n<h3><strong>Lọc v&agrave; xử l&yacute; độc tố trong rượu</strong></h3>\r\n\r\n<p>Sau giai đoạn l&ecirc;n men giữa gạo nếp v&agrave; men ủ, sẽ l&agrave; qu&aacute; tr&igrave;nh chưng cất phức tạp qua một hệ thống lọc v&agrave; xử l&yacute; độc tố đa tầng. Nhờ c&oacute; hệ thống n&agrave;y m&agrave; rượu lu&ocirc;n giữ được hương vị thơm ngon, lại kh&ocirc;ng ảnh hưởng đến sức khỏe, đặc biệt khi uống sẽ kh&ocirc;ng bị đau đầu.</p>\r\n\r\n<h3><strong>Hạ thủy trong thổ v&agrave; cất giữ trong hầm</strong></h3>\r\n\r\n<p>Thực ra sau khi chưng cất v&agrave; xử l&yacute; độc tố rượu L&agrave;ng V&acirc;n ho&agrave;n to&agrave;n c&oacute; thể sử dụng được. Nhưng để đạt được vị &ecirc;m nhất định, rượu cần được đem đi hạ thủy trong thố bằng b&igrave;nh s&agrave;nh sứ c&agrave;ng l&acirc;u c&agrave;ng tốt. Kh&acirc;u cuối c&ugrave;ng rượu được cất trữ trong chai nhỏ v&agrave; cất giữ trong hầm trong điều kiện m&ocirc;i trường kh&ocirc;ng c&oacute; &aacute;nh s&aacute;ng, nhiệt độ v&agrave; độ ẩm đạt ở mức tối ưu.</p>\r\n\r\n<p>C&oacute; lẽ ch&iacute;nh v&igrave; những quy tr&igrave;nh cầu kỳ phức tạp của rượu l&agrave;ng V&acirc;n đ&atilde; tạo n&ecirc;n hương vị v&agrave; thương hiệu của sản phẩm n&agrave;y. C&aacute;i hồn của những hũ rượu l&agrave;ng v&acirc;n ch&iacute;nh l&agrave; hương vị đậm đ&agrave;, m&ugrave;i thơm thanh khiết, uống v&agrave;o một ngụm thấy bừng l&ecirc;n nồng n&agrave;n như ai vừa mở &aacute;o chỏ x&ocirc;i nếp c&aacute;i, thấy &ecirc;m ru như đang đi v&agrave;o giấc mộng.</p>\r\n\r\n<p>Điều đặc biệt nhất của rượu l&agrave;ng V&acirc;n khiến mọi du kh&aacute;ch đi&nbsp;<a href="https://dulichviet.com.vn/du-lich-mien-bac"><strong>tour du lịch miền Bắc</strong></a>&nbsp;m&ecirc; đắm đ&oacute; l&agrave; cảm gi&aacute;c say rượu l&agrave;ng V&acirc;n l&agrave; cảm gi&aacute;c say mơ m&agrave;ng, l&uacute;c tỉnh dậy kh&ocirc;ng những kh&ocirc;ng thấy uể oải m&agrave; lại thấy con người như được th&ecirc;m sức mạnh, tinh thần sảng kho&aacute;i. Say rượu l&agrave;ng V&acirc;n l&agrave; c&aacute;i say la đ&agrave;, c&aacute;i say của sự nền n&atilde;.</p>\r\n\r\n<p>Nếu c&oacute; dịp đến&nbsp;<a href="https://dulichviet.com.vn/du-lich-mien-bac"><strong>du lịch miền Bắc</strong></a>&nbsp;thưởng thức rượu l&agrave;ng V&acirc;n hoặc đem l&ograve;ng si m&ecirc; loại mỹ tửu n&agrave;y th&igrave; chắc chắn du kh&aacute;ch sẽ nhớ m&atilde;i c&aacute;i thứ nước trong vắt v&agrave; được v&iacute; như nắng hạ, chỉ cần lắc nhẹ l&agrave; thấy sủi tăm, rất l&acirc;u sau mới hết. Tr&ecirc;n đ&acirc;y l&agrave; một v&agrave;i th&ocirc;ng tin rượu l&agrave;ng V&acirc;n m&agrave; c&ocirc;ng ty&nbsp;<strong>Du Lịch Việt</strong>&nbsp;đ&atilde; tổng hợp lại, sẽ l&agrave; trang s&aacute;ch bổ &iacute;ch c&oacute; th&ecirc;m th&ocirc;ng tin khi đến du lịch miền Bắc nh&eacute;. Ch&uacute;c du kh&aacute;ch c&oacute; một chuyến đi đầy trải nghiệm th&uacute; vị v&agrave; vui vẻ.</p>', NULL, NULL, NULL, 'Thinh', 0, 1, NULL, 0, 1, '2021-06-30 13:12:45', '2021-06-30 13:12:45', NULL),
(7, 'vi', 1, 'Khám phá vẻ đẹp khó cưỡng của đồi cát trong chuyến du lịch Mũi Né Phan Thiết', 'kham-pha-ve-dep-kho-cuong-cua-doi-cat-trong-chuyen-du-lich-mui-ne-phan-thiet', '/upload/kham-pha-ve-dep-kho-cuong-cua-doi-cat-trong-chuyen-du-lich-mui-ne-phan-thiet.jpg', 'Khi đến du lịch Phan Thiết du khách còn có cơ hội chiêm ngưỡng khung cảnh thiên nhiên xinh đẹp của Đồi Cát và tìm hiểu cộng đồng văn hóa người Chăm. Giờ hãy cùng Du Lịch Việt khám phá đồi cát Mũi Né qua bài viết dưới đây nhé.', '<p>Mũi N&eacute; đang ng&agrave;y c&agrave;ng trở th&agrave;nh địa điểm du lịch hấp dẫn kh&aacute;ch trong nước cũng như kh&aacute;ch du lịch nước ngo&agrave;i với cảnh qua thi&ecirc;n nhi&ecirc;n tươi đẹp, c&ugrave;ng những b&atilde;i biển xanh thơ mộng, những bờ c&aacute;t trắng trải d&agrave;i, những h&agrave;ng dừa cong v&uacute;t. Kh&ocirc;ng chỉ vậy, khi đến&nbsp;<a href="https://dulichviet.com.vn/du-lich-phan-thiet"><strong>du lịch Phan Thiết</strong></a>&nbsp;du kh&aacute;ch c&ograve;n c&oacute; cơ hội chi&ecirc;m ngưỡng khung cảnh thi&ecirc;n nhi&ecirc;n xinh đẹp của Đồi C&aacute;t v&agrave; t&igrave;m hiểu cộng đồng văn h&oacute;a người Chăm. Giờ h&atilde;y c&ugrave;ng&nbsp;<a href="https://dulichviet.com.vn/"><strong>Du Lịch Việt</strong></a>&nbsp;kh&aacute;m ph&aacute; đồi c&aacute;t Mũi N&eacute; qua b&agrave;i viết dưới đ&acirc;y nh&eacute;.</p>\r\n\r\n<p><img alt="Khám phá vẻ đẹp khó cưỡng của đồi cát trong chuyến du lịch Mũi Né Phan Thiết" src="https://dulichviet.com.vn/images/bandidau/kham-pha-ve-dep-kho-cuong-cua-doi-cat-trong-chuyen-du-lich-mui-ne-phan-thiet.jpg" /></p>\r\n\r\n<p><em>Kh&aacute;m ph&aacute; vẻ đẹp kh&oacute; cưỡng của đồi c&aacute;t trong chuyến du lịch Mũi N&eacute; Phan Thiết</em></p>\r\n\r\n<h2><strong>Kh&aacute;m ph&aacute; vẻ đẹp kh&oacute; cưỡng của đồi c&aacute;t trong chuyến du lịch Mũi N&eacute;</strong></h2>\r\n\r\n<p>Đ&atilde; bao giờ du kh&aacute;ch đặt ch&acirc;n đến Đồi C&aacute;t Mũi N&eacute;? Đ&oacute; sẽ l&agrave; một trải nghiệm tuyệt vời trong chuyến đi&nbsp;<a href="https://dulichviet.com.vn/du-lich-phan-thiet"><strong>tour du lịch Phan Thiết</strong></a>&nbsp;với mảnh đất đầy nắng, gi&oacute; n&agrave;y. Tại đ&acirc;y, du kh&aacute;ch cứ ngỡ như m&igrave;nh đang đi lạc v&agrave;o sa mạc xa x&ocirc;i n&agrave;o đ&oacute;.</p>\r\n\r\n<h3><strong>Vị tr&iacute; địa l&yacute;</strong></h3>\r\n\r\n<p>Đồi C&aacute;t nằm ở khu phố 5, thuộc phường Mũi N&eacute;, th&agrave;nh phố Phan Thiết. Đ&acirc;y l&agrave; một trong những b&atilde;i c&aacute;t trải d&agrave;i với nhiều c&acirc;y số v&agrave; lan rộng với một diện t&iacute;ch kh&ocirc;ng nhất định với tổng diện t&iacute;ch lớn.</p>\r\n\r\n<p>Đồi C&aacute;t chỉ c&aacute;ch chợ Mũi N&eacute; c&oacute; 2km, v&agrave; c&aacute;ch trung t&acirc;m của th&agrave;nh phố Phan Thiết 23km. Đồi C&aacute;t đ&atilde; được h&igrave;nh th&agrave;nh từ l&acirc;u đời, với diện t&iacute;ch khoảng 50 ha trải d&agrave;i từ tỉnh B&igrave;nh Thuận đến tỉnh Ninh Thuận.</p>\r\n\r\n<h3><strong>Tại sao lại mang t&ecirc;n gọi l&agrave; Đồi C&aacute;t Bay?</strong></h3>\r\n\r\n<p>Kh&ocirc;ng &iacute;t du kh&aacute;ch đ&atilde; thắc mắc về t&ecirc;n gọi của địa điểm du lịch n&agrave;y. Sở dĩ, c&oacute; t&ecirc;n l&agrave; Đồi C&aacute;t Bay v&igrave; h&igrave;nh d&aacute;ng của đồi c&aacute;t lu&ocirc;n thay đổi li&ecirc;n tục từng ng&agrave;y, từng giờ. Đ&oacute; ch&iacute;nh l&agrave; điểm đặc biệt nhất của đồi c&aacute;t Mũi N&eacute; khiến bao du kh&aacute;ch m&ecirc; mẩn kh&ocirc;ng thể bỏ qua trong chuyến du lịch của m&igrave;nh.</p>\r\n\r\n<p>Nếu du kh&aacute;ch đến Đồi C&aacute;t Mũi N&eacute; v&agrave;o m&ugrave;a gi&oacute; nhiều, th&igrave; những cồn c&aacute;t lu&ocirc;n được thay đổi biến dạng qua từng cơn lốc. N&oacute; thay đổi theo từng giờ n&ecirc;n du kh&aacute;ch kh&oacute; bắt gặp những h&igrave;nh ảnh ấy được t&aacute;i dựng lại. Tại sao như vậy? nguy&ecirc;n nh&acirc;n ch&iacute;nh l&agrave; đồi c&aacute;t Mũi N&eacute; chịu ảnh hưởng bởi c&aacute;c yếu tố từ thi&ecirc;n nhi&ecirc;n như thời tiết, kh&iacute; hậu, gi&oacute; m&ugrave;a,... Trong đ&oacute;, hai cơ chế gi&oacute; m&ugrave;a Đ&ocirc;ng Bắc v&agrave; gi&oacute; m&ugrave;a T&acirc;y Nam c&oacute; ảnh hưởng trực tiếp l&ecirc;n đồi c&aacute;t n&ecirc;n hiện tượng biến chuyển về diện mạo, cũng như h&igrave;nh d&aacute;ng của đồi c&aacute;t. Tất cả, tạo n&ecirc;n một cảnh quan thi&ecirc;n nhi&ecirc;n v&ocirc; c&ugrave;ng độc đ&aacute;o, thu h&uacute;t du kh&aacute;ch.</p>\r\n\r\n<h3><strong>Bất ngờ trước sự thay đổi của Đồi C&aacute;t Mũi N&eacute;</strong></h3>\r\n\r\n<p>Du kh&aacute;ch c&oacute; biết. M&agrave;u của c&aacute;t nơi đ&acirc;y do mỏ sắt cũ kiến tạo n&ecirc;n, n&ecirc;n c&aacute;t ở đ&acirc;y c&oacute; rất nhiều m&agrave;u kh&aacute;c nhau. Theo như những t&iacute;n đồ du lịch đ&atilde; chia sẻ th&igrave; c&oacute; đến 18 m&agrave;u. C&oacute; một số loại m&agrave;u dưới đ&acirc;y:</p>\r\n\r\n<ul>\r\n	<li>M&agrave;u đỏ: đ&acirc;y l&agrave; m&agrave;u ch&iacute;nh của c&aacute;t v&agrave; cũng l&agrave; m&agrave;u phổ biến nhất tại đ&acirc;y.</li>\r\n	<li>M&agrave;u trắng: m&agrave;u nằm tr&ecirc;n những b&atilde;i biển v&agrave; c&oacute; pha tạp chất</li>\r\n	<li>M&agrave;u trắng x&aacute;m: ch&iacute;nh l&agrave; m&agrave;u c&aacute;t nằm tập trung tại ranh giới giữa tỉnh B&igrave;nh Thuận v&agrave; Ninh Thuận, trải d&agrave;i tr&ecirc;n diện rộng. Nguy&ecirc;n nh&acirc;n l&agrave; do đất đai ở đ&acirc;y k&eacute;m phần m&agrave;u mỡ.</li>\r\n	<li>M&agrave;u đỏ đen: l&agrave; một m&agrave;u pha b&ugrave;n, cứng v&agrave; kh&oacute; h&ograve;a tan.</li>\r\n	<li>M&ugrave;a hồng: m&agrave;u nằm dưới m&agrave;u đỏ.</li>\r\n</ul>\r\n\r\n<p><img alt="Tại sao lại mang tên gọi là Đồi Cát Bay?" src="https://dulichviet.com.vn/images/bandidau/tai-sao-lai-mang-ten-goi-la-doi-cat-bay.jpg" /></p>\r\n\r\n<p><em>Tại sao lại mang t&ecirc;n gọi l&agrave; Đồi C&aacute;t Bay?</em></p>\r\n\r\n<h3><strong>N&ecirc;n đi Đồi C&aacute;t Mũi N&eacute; v&agrave;o thời gian n&agrave;o l&agrave; th&iacute;ch hợp?</strong></h3>\r\n\r\n<p>Thời gian th&iacute;ch hợp nhất để đi&nbsp;<a href="https://dulichviet.com.vn/du-lich-phan-thiet"><strong>du lịch Phan Thiết</strong></a>&nbsp;l&agrave; từ th&aacute;ng 9 cho đến th&aacute;ng 4. Đặc biệt l&agrave; v&agrave;o th&aacute;ng 4 &acirc;m lịch h&agrave;ng năm. V&igrave; l&uacute;c n&agrave;y, ở đồi c&aacute;t Mũi N&eacute; sẽ tổ chức cuộc thi trượt c&aacute;t giữa c&aacute;c thanh ni&ecirc;n trong khu vực. N&ecirc;n, lễ hội n&agrave;y thu h&uacute;t rất nhiều người tham gia rất đ&ocirc;ng vui, rất n&aacute;o nhiệt.</p>\r\n\r\n<h3><strong>Vẻ đẹp của Đồi C&aacute;t Mũi N&eacute;</strong></h3>\r\n\r\n<p>Thời gian th&iacute;ch hợp nhất để du kh&aacute;ch tham quan đồi c&aacute;t Mũi N&eacute; l&agrave; từ v&agrave;o khoảng 5 -8h s&aacute;ng v&igrave; l&uacute;c n&agrave;y trời c&ograve;n sớm v&agrave; c&aacute;t c&ograve;n m&aacute;t.</p>\r\n\r\n<p>Khi đến đ&acirc;y, du kh&aacute;ch sẽ bị cuốn h&uacute;t bởi những đường cong uốn lượn huyền b&iacute;. Ấn tượng trước những v&acirc;n c&aacute;t lạ mắt, thay đổi h&igrave;nh dạng v&agrave; m&agrave;u sắc c&oacute; khi th&igrave; v&agrave;ng, khi lại đỏ,&hellip; tạo n&ecirc;n một bức tranh thi&ecirc;n nhi&ecirc;n tuyệt đẹp, thu h&uacute;t mọi &aacute;nh nh&igrave;n.</p>\r\n\r\n<p>Kh&ocirc;ng chỉ với du kh&aacute;ch đến tham quan, điểm đến n&agrave;y con l&agrave;m say đắm những nh&agrave; nhiếp ảnh, họa sĩ c&ugrave;ng những nghệ nh&acirc;n t&agrave;i hoa kh&aacute;c đến để s&aacute;ng tạo nghệ thuật.</p>\r\n\r\n<h3><strong>Một số hoạt động vui chơi tại Đồi C&aacute;t Mũi N&eacute;</strong></h3>\r\n\r\n<p><strong>Trượt&nbsp;c&aacute;t</strong><br />\r\nĐến với đồi c&aacute;t, du kh&aacute;ch đi&nbsp;<a href="https://dulichviet.com.vn/du-lich-phan-thiet"><strong>tour Phan Thiết</strong></a>&nbsp;kh&ocirc;ng thể bỏ qua tr&ograve; chơi trượt c&aacute;t v&ocirc; c&ugrave;ng th&uacute; vị. chỉ với 10.000 đồng/v&aacute;n trượt, du kh&aacute;ch sẽ được hướng dẫn tận t&igrave;nh c&aacute;c thao t&aacute;c cơ bản.<br />\r\nVới nhiều cảm gi&aacute;c lẫn lộn diễn ra trong tr&ograve; chơi n&agrave;y. Từ sợ h&atilde;i la h&eacute;t đến th&iacute;ch th&uacute; khi chinh phục được những đồi c&aacute;t cao hơn. V&agrave; du kh&aacute;ch n&ecirc;n tham gia tr&ograve; chơi trượt c&aacute;t n&agrave;y v&agrave;o s&aacute;ng sớm hoặc chiều muộn th&igrave; l&uacute;c n&agrave;y c&aacute;t đỡ n&oacute;ng, đi lại dễ d&agrave;ng hơn v&agrave; kh&ocirc;ng bị r&aacute;t ch&acirc;n.</p>\r\n\r\n<p><strong>Ngắm to&agrave;n cảnh tr&ecirc;n đỉnh đồi c&aacute;t</strong><br />\r\nDu kh&aacute;ch h&atilde;y thử trải nghiệm leo l&ecirc;n ngọn đồi c&aacute;t v&agrave; ngắm nh&igrave;n từ xa ra biển khơi. Đ&oacute; l&agrave; một trải nghiệm cực kỳ th&uacute; vị khi được hưởng cảm gi&aacute;c gi&oacute; m&aacute;t từ biển thổi v&agrave;o, ngắm nh&igrave;n to&agrave;n cảnh xung quanh. Từ tr&ecirc;n đồi c&aacute;t, du kh&aacute;ch c&oacute; thể ngắm trọn vẹn Mũi N&eacute; v&agrave; bờ biển xung quanh.<br />\r\n<br />\r\n<strong>Thỏa sức check in sống ảo</strong><br />\r\nĐồi c&aacute;t Mũi N&eacute; l&agrave; địa điểm l&yacute; tưởng để du kh&aacute;ch thỏa sức check in. Tại mỗi g&oacute;c, kh&ocirc;ng gian đều cho du kh&aacute;ch những bức ảnh si&ecirc;u lung linh, ảo diệu.<br />\r\n<br />\r\n<strong>Đi xe địa h&igrave;nh kh&aacute;m ph&aacute; đồi c&aacute;t</strong><br />\r\nNếu du kh&aacute;ch th&iacute;ch cảm gi&aacute;c mạnh th&igrave; c&oacute; thể chơi m&ocirc;n thể thao đi xe địa h&igrave;nh tr&ecirc;n đồi c&aacute;t. Đ&acirc;y cũng ch&iacute;nh l&agrave; một trải nghiệm vui chơi kh&oacute; bỏ qua trong chuyến đi nh&eacute;.<br />\r\n<br />\r\nĐến để tham quan đồi c&aacute;t tại Mũi N&eacute; l&agrave; điểm đến tuyệt vời d&agrave;nh cho du kh&aacute;ch. Nếu c&oacute; dự định đến&nbsp;<a href="https://dulichviet.com.vn/du-lich-phan-thiet"><strong>du lịch Phan Thiết</strong></a>&nbsp;trong thời gian tới th&igrave; đừng bỏ qua điểm đến y&ecirc;u thương n&agrave;y nh&eacute;. Ch&uacute;c du kh&aacute;ch c&oacute; một chuyến đi đầy trải nghiệm th&uacute; vị tại v&ugrave;ng đất đầy nắng gi&oacute; n&agrave;y nha.</p>', NULL, NULL, NULL, 'Rinn', 0, 1, NULL, 0, 1, '2021-06-30 13:14:56', '2021-06-30 13:14:56', NULL),
(8, 'vi', 1, 'Cổng trời Bali tại Đà Lạt: Địa điểm check in hình cực đẹp dành cho giới trẻ', 'cong-troi-bali-tai-da-lat-dia-diem-check-in-hinh-cuc-dep-danh-cho-gioi-tre', '/upload/cong-troi-bali-tai-da-lat-dia-diem-check-in-hinh-cuc-dep-danh-cho-gioi-tre.jpg', 'Cổng trời Bali là một địa điểm thú vị và hấp dẫn trong chuyến du lịch Đà Lạt mà du khách không thể bỏ qua trong chuyến nghỉ mát của mình. Cùng Du Lịch Việt tìm hiểu địa điểm cổng trời Bali cực hot này qua bài viết dưới đây nhé.', '<p>Khi n&oacute;i đến th&agrave;nh phố Đ&agrave; Lạt l&agrave; nhắc ngay đến ng&agrave;n điểm check in sống ảo cho giới trẻ. Trong số đ&oacute;, thời gian gần đ&acirc;y nổi nhất c&oacute; thể n&oacute;i đến l&agrave; cổng trời Bali một địa điểm du lịch đang được rất nhiều bạn trẻ đề cập tr&ecirc;n mạng x&atilde; hội trong thời gian gần đ&acirc;y. Nơi đ&acirc;y l&agrave; một địa điểm th&uacute; vị v&agrave; hấp dẫn trong chuyến&nbsp;<a href="https://dulichviet.com.vn/du-lich-da-lat"><strong>du lịch Đ&agrave; Lạt</strong></a>&nbsp;m&agrave; du kh&aacute;ch kh&ocirc;ng thể bỏ qua trong chuyến nghỉ m&aacute;t của m&igrave;nh. C&ugrave;ng&nbsp;<a href="https://dulichviet.com.vn/"><strong>Du Lịch Việt</strong></a>&nbsp;t&igrave;m hiểu địa điểm cổng trời Bali cực hot n&agrave;y qua b&agrave;i viết dưới đ&acirc;y nh&eacute;.</p>\r\n\r\n<p><img alt="Cổng trời Bali tại Đà Lạt: Địa điểm check in hình cực đẹp dành cho giới trẻ" src="https://dulichviet.com.vn/images/bandidau/cong-troi-bali-tai-da-lat-dia-diem-check-in-hinh-cuc-dep-danh-cho-gioi-tre.jpg" /></p>\r\n\r\n<p><em>Cổng trời Bali tại Đ&agrave; Lạt: Địa điểm check in h&igrave;nh cực đẹp d&agrave;nh cho giới trẻ</em></p>\r\n\r\n<h2><strong>Cổng trời Bali tại Đ&agrave; Lạt: Địa điểm check in h&igrave;nh cực đẹp d&agrave;nh cho giới trẻ</strong></h2>\r\n\r\n<h3><strong>Cổng trời Bali nằm ở đ&acirc;u?</strong></h3>\r\n\r\n<p>Cổng trời Bali tọa lạc trong khu nghỉ dưỡng Greenland II, tr&ecirc;n ngọn đồi Robin, thuộc khu du lịch c&aacute;p treo Đ&agrave; Lạt tại con hẻm Đống Đa, phường 3, Th&agrave;nh phố Đ&agrave; Lạt. Đ&acirc;y cũng l&agrave; nơi c&oacute; vị tr&iacute; đẹp nhất Đ&agrave; Lạt, đến đ&acirc;y du kh&aacute;ch đi&nbsp;<a href="https://dulichviet.com.vn/du-lich-da-lat"><strong>tour Đ&agrave; Lạt</strong></a>&nbsp;c&oacute; thể ngắm nh&igrave;n to&agrave;n cảnh nội th&agrave;nh Đ&agrave; Lạt.</p>\r\n\r\n<h3><strong>C&aacute;ch di chuyển đến cổng trời Bali như thế n&agrave;o?</strong></h3>\r\n\r\n<p>Nếu du kh&aacute;ch bắt đầu đi từ chợ Đ&agrave; lạt, th&igrave; h&atilde;y di chuyển theo con đường Hồ T&ugrave;ng Mậu để ra b&ugrave;ng binh đầu đ&egrave;o Đ&agrave; Lạt. Sau đ&oacute; di chuyển theo đường 3 th&aacute;ng 4 Đ&agrave; Lạt. Cho đến bến xe li&ecirc;n tỉnh tới đ&oacute; du kh&aacute;ch sẽ thấy con đường l&ecirc;n đồi Robin, cứ đi hết con dốc du kh&aacute;ch sẽ thấy cổng trời Bali Đ&agrave; Lạt.</p>\r\n\r\n<h3><strong>Cổng trời Bali c&oacute; g&igrave; đẹp?</strong></h3>\r\n\r\n<p>Đ&acirc;y l&agrave; khu tiểu cảnh, bao quanh l&agrave; n&uacute;i v&agrave; rừng th&ocirc;ng. Tuy nhi&ecirc;n cổng trời phi&ecirc;n bản tại Đ&agrave; Lạt c&oacute; phần nhỏ hơn so với cổng trời Bali. C&aacute;nh cổng được trang tr&iacute; hoa văn v&agrave; c&aacute;c họa tiết nổi bật, nằm giữa một kh&ocirc;ng gian tho&aacute;ng đ&atilde;ng, được bao bọc xung quanh bởi n&uacute;i non v&agrave; rừng th&ocirc;ng xanh ng&aacute;t tr&ecirc;n ngọn đồi Robin. Từ đ&acirc;y du kh&aacute;ch c&oacute; thể ph&oacute;ng tầm mắt bao qu&aacute;t chi&ecirc;m ngưỡng khung cảnh h&ugrave;ng vĩ, n&ecirc;n thơ của Đ&agrave; Lạt. kh&ocirc;ng chỉ vậy, tại đ&acirc;y du kh&aacute;ch c&oacute; thể cảm nhận được những &aacute;ng m&acirc;y như lững lờ tr&ocirc;i ở tr&ecirc;n đầu.</p>\r\n\r\n<p>Du kh&aacute;ch c&oacute; thể ngắm b&igrave;nh minh v&agrave; ho&agrave;ng h&ocirc;n tại cổng trời Bali cũng rất đẹp. V&agrave;o buổi s&aacute;ng sớm du kh&aacute;ch sẽ cảm nhận được những l&agrave;n sương sớm lững lờ tr&ocirc;i. Khiến cho khung cảnh nơi đ&acirc;y trở n&ecirc;n mờ ảo l&atilde;ng mạn chưa từng thấy. V&agrave;o l&uacute;c ho&agrave;ng h&ocirc;n th&igrave; khung cảnh trở n&ecirc;n rực rỡ hơn. Bởi ph&iacute;a xa xa của ch&acirc;n trời l&agrave; cả một khoảng trời đỏ rực. Những đ&aacute;m m&acirc;y như được nhuộm một m&agrave;u sắc nổi bật. Tất cả tạo n&ecirc;n một điểm đến&nbsp;<a href="https://dulichviet.com.vn/du-lich-da-lat"><strong>du lịch Đ&agrave; Lạt</strong></a>&nbsp;hấp dẫn mọi du kh&aacute;ch cả trong nước v&agrave; ngo&agrave;i nước. Cũng l&agrave; điểm đến kh&ocirc;ng thể bỏ qua trong chuyến đi của mọi du kh&aacute;ch.</p>\r\n\r\n<p><img alt="Những hoạt động thú vị trong chuyến du lịch cổng trời Bali" src="https://dulichviet.com.vn/images/bandidau/nhung-hoat-dong-thu-vi-trong-chuyen-du-lich-cong-troi-bali.jpg" /></p>\r\n\r\n<p><em>Những hoạt động th&uacute; vị trong chuyến du lịch cổng trời Bali</em></p>\r\n\r\n<h3><strong>Check in sống ảo tại cổng trời Bali</strong></h3>\r\n\r\n<p>Cổng trời Bali lu&ocirc;n được mệnh danh l&agrave; thi&ecirc;n đường sống ảo của giới trẻ. H&agrave;ng ng&agrave;y c&oacute; rất nhiều du kh&aacute;ch đến đ&acirc;y tham quan v&igrave; muốn c&oacute; được những tấm h&igrave;nh đẹp lung linh nhất. Chẳng cần phải đến Bali xa x&ocirc;i du kh&aacute;ch mới được tham quan cổng trời. B&acirc;y giờ chỉ cần đến&nbsp;<a href="https://dulichviet.com.vn/du-lich-da-lat"><strong>tour du lịch Đ&agrave; Lạt</strong></a>&nbsp;l&agrave; du kh&aacute;ch đ&atilde; được chi&ecirc;m ngưỡng rồi đấy. Những du kh&aacute;ch đ&atilde; c&oacute; dịp đến Indonesia đều c&oacute; nhận x&eacute;t rằng nơi n&agrave;y kh&aacute; giống với cổng trời tại ng&ocirc;i đền Lura. Chỉ kh&aacute;c nhau về k&iacute;ch thước v&agrave; quang cảnh xung quanh m&agrave; th&ocirc;i.</p>\r\n\r\n<p>Cổng trời được thiết kế đẹp mắt v&agrave; độc đ&aacute;o. B&ecirc;n dưới l&agrave; mặt hồ phẳng lặng phản chiếu h&igrave;nh ảnh cổng trời. Ch&iacute;nh v&igrave; thế tr&ocirc;ng rất lạ mắt v&agrave; đem lại hiệu ứng cực k&igrave; tốt. Cho d&ugrave; du kh&aacute;ch đứng ở bất k&igrave; vị tr&iacute; n&agrave;o cũng đều cho ra một tấm ảnh đẹp.</p>\r\n\r\n<h3><strong>Thời điểm l&yacute; tưởng nhất để đi cổng trời Bali Đ&agrave; Lạt</strong></h3>\r\n\r\n<p>C&oacute; thể n&oacute;i rằng cổng trời Bali mới xuất hiện nhưng n&oacute; l&agrave; một th&agrave;nh địa sống ảo tiếp theo sau Hồ v&ocirc; cực. Để c&oacute; một bức ảnh đẹp t&acirc;m đắc. Du kh&aacute;ch n&ecirc;n đến đ&acirc;y v&agrave;o buổi s&aacute;ng. Đến đ&acirc;y v&agrave;o buổi s&aacute;ng du kh&aacute;ch sẽ bị m&ecirc; hoặc bởi cảnh sắc thi&ecirc;n nhi&ecirc;n tuyệt đẹp. Nơi đ&acirc;y sẽ th&ocirc;i mi&ecirc;n du kh&aacute;ch đến nỗi qu&ecirc;n chụp ảnh lu&ocirc;n đ&oacute;.</p>\r\n\r\n<p>V&igrave; tọa lạc tr&ecirc;n ngọn đồi Robin n&ecirc;n cổng trời ở một độ cao nhất định. Buổi s&aacute;ng, du kh&aacute;ch c&oacute; thể ngắm nh&igrave;n l&agrave;n sương mờ ảo của th&agrave;nh phố ng&agrave;n hoa. L&agrave;n sương sớm đ&atilde; bao phủ l&ecirc;n những ngọn đồi, c&ugrave;ng những rừng th&ocirc;ng ng&uacute;t ng&agrave;n. Đến khi b&igrave;nh minh h&eacute; mở, &aacute;nh s&aacute;ng mặt trời dần len lỏi th&igrave; khung cảnh nơi đ&acirc;y trở n&ecirc;n thật huyền ảo hơn cả. Bức tranh thi&ecirc;n nhi&ecirc;n n&agrave;y sẽ l&agrave;m cho bức ảnh của bạn thật đẹp.<br />\r\nKh&ocirc;ng chỉ v&agrave;o buổi s&aacute;ng m&agrave; nơi đ&acirc;y sẽ cho du kh&aacute;ch một album l&uacute;c ho&agrave;ng h&ocirc;n cực đẹp. &Aacute;nh ho&agrave;ng h&ocirc;n chiếu rọi xuống mặt nước k&eacute;o theo đ&oacute; l&agrave; c&aacute;nh cổng trời với thiết kế độc đ&aacute;o. Một kh&ocirc;ng gian v&ocirc; c&ugrave;ng y&ecirc;n b&igrave;nh thơ mộng cũng đầy l&atilde;ng mạn trong khu nghỉ dưỡng Greenland.</p>\r\n\r\n<p>Khu nghỉ dưỡng Greenland c&ograve;n c&oacute; nhiều khu vườn cảnh cho du kh&aacute;ch tha hồ chụp ảnh như mai anh đ&agrave;o, vườn hồng, tổ chim. Du kh&aacute;ch c&oacute; thể đi c&aacute;p treo l&ecirc;n đồi, ngắm cảnh chi&ecirc;m ngưỡng bốn bề rừng c&acirc;y v&agrave; c&ograve;n c&oacute; thể tham quan trại ch&oacute; Alaska dễ thương.&nbsp;C&ograve;n nếu du kh&aacute;ch kh&ocirc;ng ở khu nghỉ dưỡng Greenland II th&igrave; vẫn c&oacute; thể đến đ&acirc;y tham quan v&agrave; chụp h&igrave;nh miễn ph&iacute;.<br />\r\n<br />\r\nHy vọng với những chia sẻ ở tr&ecirc;n sẽ gi&uacute;p &iacute;ch cho du kh&aacute;ch hiểu th&ecirc;m về cổng trời Bali một địa điểm check in sống ảo tuyệt vời nhất Đ&agrave; Lạt. Nếu du kh&aacute;ch c&oacute; dự định lựa chọn đến&nbsp;<a href="https://dulichviet.com.vn/du-lich-da-lat"><strong>du lịch Đ&agrave; Lạt</strong></a>&nbsp;trong thời gian sắp tới. V&agrave; muốn c&oacute; được những trải nghiệm tuyệt vời tại Đ&agrave; Lạt mộng mơ th&igrave; đừng qu&ecirc;n lựa chọn&nbsp;<strong>Du Lịch Việt</strong>&nbsp;l&agrave; bạn đồng h&agrave;nh c&ugrave;ng du kh&aacute;ch nh&eacute;. Ch&uacute;c du kh&aacute;ch c&oacute; một chuyến tham quan th&uacute; vị, &yacute; nghĩa v&agrave; nhiều niềm vui.</p>', NULL, NULL, NULL, 'Luka', 0, 1, NULL, 0, 1, '2021-06-30 13:15:57', '2021-06-30 13:15:57', NULL),
(9, 'vi', 1, 'Đồi Thiên Phúc Đức – Địa chỉ được giới trẻ check in rầm rộ tại Đà Lạt', 'doi-thien-phuc-duc-dia-chi-duoc-gioi-tre-check-in-ram-ro-tai-da-lat', '/upload/doi-thien-phuc-duc-dia-chi-duoc-gioi-tre-check-in-ram-ro-tai-da-lat.jpg', 'Đảm bảo với du khách rằng, khi đến đồi Thiên Phúc Đức giữa mênh mông sương mù, mây mù vây quanh những rừng thông, du khách sẽ không khỏi ngạc nhiên trước vẻ đẹp tuyệt vời của đồi.', '<p>Đ&agrave; Lạt l&agrave; một trong những địa điểm du lịch đẹp m&agrave; bất cứ ai cũng muốn đến thăm v&agrave; quay lại th&ecirc;m nhiều lần nữa. Một trong những hoạt động đặc biệt v&agrave; v&ocirc; c&ugrave;ng th&uacute; vị khi đi&nbsp;<a href="https://dulichviet.com.vn/du-lich-da-lat"><strong>du lịch Đ&agrave; Lạt</strong></a>&nbsp;ch&iacute;nh l&agrave; l&ecirc;n đồi Thi&ecirc;n Ph&uacute;c Đức để cắm trại v&agrave; săn m&acirc;y. Giờ th&igrave;&nbsp;<a href="https://dulichviet.com.vn/"><strong>Du Lịch Việt</strong></a>&nbsp;sẽ đưa du kh&aacute;ch đến với ngọn đồi Thi&ecirc;n Ph&uacute;c Đức, nơi c&oacute; cảnh quan thi&ecirc;n nhi&ecirc;n v&ocirc; c&ugrave;ng thơ mộng xinh đẹp, th&ocirc;ng qua b&agrave;i viết b&ecirc;n dưới nh&eacute;. Đảm bảo với du kh&aacute;ch rằng, khi đến đồi Thi&ecirc;n Ph&uacute;c Đức giữa m&ecirc;nh m&ocirc;ng sương m&ugrave;, m&acirc;y m&ugrave; v&acirc;y quanh những rừng th&ocirc;ng, du kh&aacute;ch sẽ kh&ocirc;ng khỏi ngạc nhi&ecirc;n trước vẻ đẹp tuyệt vời của đồi.</p>\r\n\r\n<p><img alt="Đồi Thiên Phúc Đức – Địa chỉ được giới trẻ check in rầm rộ tại Đà Lạt" src="https://dulichviet.com.vn/images/bandidau/doi-thien-phuc-duc-dia-chi-duoc-gioi-tre-check-in-ram-ro-tai-da-lat.jpg" /></p>\r\n\r\n<p><em>Đồi Thi&ecirc;n Ph&uacute;c Đức &ndash; Địa chỉ được giới trẻ check in rầm rộ tại Đ&agrave; Lạt</em></p>\r\n\r\n<h2><strong>Đồi Thi&ecirc;n Ph&uacute;c Đức &ndash; Địa chỉ được giới trẻ check in rầm rộ tại Đ&agrave; Lạt</strong></h2>\r\n\r\n<h3><strong>Đồi Thi&ecirc;n Ph&uacute;c nằm ở địa chỉ n&agrave;o?</strong></h3>\r\n\r\n<p>Ngọn đồi trọc n&agrave;y nằm tại phường 7, đối diện ngọn n&uacute;i Langbiang v&agrave; c&aacute;ch trung t&acirc;m th&agrave;nh phố Đ&agrave; Lạt 8km. Như vậy, du kh&aacute;ch chỉ mất c&oacute; 20 ph&uacute;t đi xe m&aacute;y l&agrave; đ&atilde; đến được địa điểm n&agrave;y. Đồi Thi&ecirc;n Ph&uacute;c Đức lu&ocirc;n y&ecirc;n b&igrave;nh tĩnh lặng như người c&ograve;n ng&aacute;i ngủ trong m&agrave;n sương. L&agrave; ngọn đồi trọc &iacute;t được người thường biết đến nhưng lại kh&aacute; quen thuộc với những người du h&agrave;nh. Đ&acirc;y l&agrave; một ngọn đồi hoang sơ, kỳ vĩ nhưng kh&ocirc;ng k&eacute;m chất &ldquo;t&igrave;nh&rdquo; để du kh&aacute;ch c&oacute; thể thoải m&aacute;i chụp h&igrave;nh m&agrave; kh&ocirc;ng cần lo lắng chuyện đ&ocirc;ng đ&uacute;c kh&aacute;ch du lịch.</p>\r\n\r\n<h3><strong>Đường l&ecirc;n đồi Thi&ecirc;n Ph&uacute;c Đức</strong></h3>\r\n\r\n<p>Từ trung t&acirc;m của th&agrave;nh phố Đ&agrave; Lạt, phường 1, du kh&aacute;ch đi theo đường Ph&ugrave; Đổng Thi&ecirc;n Vương đi về hướng Bắc. Khi đến gần khu du lịch Langbiang, du kh&aacute;ch hỏi đường đến nh&agrave; thờ Th&aacute;nh Mẫu phường 7. Sau đ&oacute;, đi theo đường Ch&acirc;u Văn Li&ecirc;m l&agrave; đến được đồi Thi&ecirc;n Ph&uacute;c Đức.</p>\r\n\r\n<p>V&igrave; đ&acirc;y c&ograve;n la nơi chưa được khai th&aacute;c nhiều, n&ecirc;n đường đến đồi c&ograve;n kh&oacute; khăn. Đoạn đường t&igrave;m đến đồi được xem l&agrave; một trải nghiệm th&uacute; vị trong h&agrave;nh tr&igrave;nh&nbsp;<a href="https://dulichviet.com.vn/du-lich-da-lat"><strong>tour du lịch Đ&agrave; Lạt</strong></a>&nbsp;v&agrave; rất mới mẻ đối với mọi du kh&aacute;ch. Qua khỏi con đường nhựa bằng phẳng, th&igrave; đường l&ecirc;n đỉnh đồi sẽ dần dần thu hẹp lại chỉ c&ograve;n l&agrave; một con đường nhỏ, hẹp, v&agrave; dốc dựng đứng cho đến khi du kh&aacute;ch thấy ở xa cao cao kia ch&iacute;nh l&agrave; Đồi Thi&ecirc;n Ph&uacute;c Đức. Xung quanh đồi l&agrave; ruộng đồng cỏ c&acirc;y hoang vắng hiếm b&oacute;ng người, n&ecirc;n du kh&aacute;ch chỉ việc để xe ở ch&acirc;n đồi, đi bộ tầm 20 ph&uacute;t l&ecirc;n đỉnh để c&oacute; thể thu v&agrave;o tầm mắt m&igrave;nh một Đ&agrave; lạt thu nhỏ đẹp mộng mơ.</p>\r\n\r\n<p><img alt="Khám phá vẻ đẹp tự nhiên của đồi Thiên Phúc Đức" src="https://dulichviet.com.vn/images/bandidau/kham-pha-ve-dep-tu-nhien-cua-doi-thien-phuc-duc.jpg" /></p>\r\n\r\n<p><em>Kh&aacute;m ph&aacute; vẻ đẹp tự nhi&ecirc;n của đồi Thi&ecirc;n Ph&uacute;c Đức</em></p>\r\n\r\n<h3><strong>Kh&aacute;m ph&aacute; vẻ đẹp tự nhi&ecirc;n của đồi Thi&ecirc;n Ph&uacute;c Đức</strong></h3>\r\n\r\n<p>Tọa lạc ngay tại th&agrave;nh phố Đ&agrave; Lạt mộng mơ xinh đẹp, đồi Thi&ecirc;n Ph&uacute;c Đức lu&ocirc;n mang sẵn trong m&igrave;nh một vẻ đẹp t&igrave;nh tứ v&agrave; l&atilde;ng mạn. Ở đồi Thi&ecirc;n Ph&uacute;c cũng c&oacute; một c&acirc;y th&ocirc;ng c&ocirc; đơn bơ vơ giữa ngọn đồi quang đ&atilde;ng.</p>\r\n\r\n<p>Với một độ cao vừa phải, đứng từ tr&ecirc;n đỉnh đồi l&agrave; du kh&aacute;ch c&oacute; thể ngắm trọn vẹn một Đ&agrave; Lạt mộng mơ v&agrave;o trong tầm mắt, hay chi&ecirc;m ngưỡng được cả những đồi th&ocirc;ng b&aacute;t ng&aacute;t v&agrave; sườn cỏ xanh mơn mởn.<br />\r\nNh&igrave;n từ xa xăm ph&iacute;a đối diện, du kh&aacute;ch cũng c&oacute; thể nh&igrave;n thấy đỉnh Langbiang h&ugrave;ng vĩ. Tất cả đều trở n&ecirc;n mờ ảo trong l&agrave;n m&acirc;y mỏng manh đang bao phủ cả th&agrave;nh phố Đ&agrave; lạt ng&agrave;n hoa.</p>\r\n\r\n<p>Đứng tr&ecirc;n ngọn đồi du kh&aacute;ch đi&nbsp;<a href="https://dulichviet.com.vn/du-lich-da-lat"><strong>tour Đ&agrave; Lạt</strong></a>&nbsp;c&oacute; thể được h&iacute;t h&agrave; kh&ocirc;ng kh&iacute; trong l&agrave;nh. M&ugrave;a h&egrave; v&agrave; m&ugrave;a thu sẽ c&oacute; ch&uacute;t se lạnh, c&ograve;n v&agrave;o m&ugrave;a đ&ocirc;ng th&igrave; th&ecirc;m phần gi&aacute; buốt, nhưng d&ugrave; bất kể m&ugrave;a n&agrave;o, nơi đ&acirc;y cũng vẫn đẹp n&ecirc;n thơ như thế.</p>\r\n\r\n<p>Với n&eacute;t đẹp h&ugrave;ng vĩ, bao la, rộng lớn, ngọn đồi n&agrave;y l&agrave; một địa điểm sống ảo rất tuyệt vời. Với n&uacute;i non, đồi cỏ, m&acirc;y trời bao phủ quả thật l&agrave;m cho bức ảnh sống động th&ecirc;m rất nhiều.</p>\r\n\r\n<h2><strong>Những hoạt động v&ocirc; c&ugrave;ng th&uacute; vị tại đồi Thi&ecirc;n Ph&uacute;c Đức</strong></h2>\r\n\r\n<p>Đến đồi n&agrave;y, du kh&aacute;ch kh&ocirc;ng thể bỏ qua những hoạt động v&ocirc; c&ugrave;ng th&uacute; vị tr&ecirc;n đỉnh đồi trọc thơ mộng n&agrave;y nh&eacute;.</p>\r\n\r\n<h3><strong>Cắm trại qua đ&ecirc;m</strong></h3>\r\n\r\n<p>Việc đầu ti&ecirc;n phải kể đến việc cắm trại qua đ&ecirc;m. Đồi Thi&ecirc;n Ph&uacute;c Đức được xem l&agrave; một trong những địa điểm cắm trại kh&aacute; nổi tiếng tại Đ&agrave; Lạt. Cắm trại trong một khung cảnh thi&ecirc;n nhi&ecirc;n tuyệt đẹp của trời đất thế n&agrave;y th&igrave; c&ograve;n g&igrave; bằng. Du kh&aacute;ch sẽ được thưởng thức trọn vẹn n&eacute;t đẹp y&ecirc;n b&igrave;nh, c&ugrave;ng kh&ocirc;ng kh&iacute; trong l&agrave;nh v&agrave; cảnh đẹp hoang d&atilde; m&agrave; ngọn đồi n&agrave;y mang lại.</p>\r\n\r\n<p>Đến&nbsp;<a href="https://dulichviet.com.vn/du-lich-da-lat"><strong>du lịch Đ&agrave; Lạt</strong></a>&nbsp;tham quan đồi Thi&ecirc;n Ph&uacute;c Đức c&ograve;n ngần ngại g&igrave; m&agrave; kh&ocirc;ng c&ugrave;ng bạn b&egrave; dựng trại, mở một bữa tiệc nướng BBQ c&ugrave;ng nhau qu&acirc;y quần tr&ograve; chuyện. Đ&ecirc;m xuống, mọi người c&ugrave;ng nhau đốt lửa trại v&agrave; c&ugrave;ng nhau cất tiếng h&aacute;t vang vọng khắp n&uacute;i đồi. Thời khắc vui vẻ ấy chắc chắn sẽ l&agrave; kỷ niệm kh&ocirc;ng thể n&agrave;o qu&ecirc;n được trong l&ograve;ng mỗi du kh&aacute;ch.</p>\r\n\r\n<h3><strong>Ngắm b&igrave;nh minh v&agrave; ho&agrave;ng h&ocirc;n</strong></h3>\r\n\r\n<p>Khi chiều đến, tại ngọn đồi trọc n&agrave;y du kh&aacute;ch c&oacute; thể chi&ecirc;m ngưỡng một m&agrave;n ho&agrave;ng h&ocirc;n tuyệt sắc. Cảnh bầu trời c&oacute; m&agrave;u đỏ lưng v&agrave; mặt trời từ từ khuất sau d&atilde;y n&uacute;i nơi đ&acirc;y đ&atilde; l&agrave;m rung động biết bao tr&aacute;i tim du kh&aacute;ch.</p>\r\n\r\n<p>S&aacute;ng ra, khoảng 5h s&aacute;ng khi bước ra khỏi trại v&agrave; ngắm b&igrave;nh minh. Tại đ&acirc;y du kh&aacute;ch c&oacute; thể ngắm b&igrave;nh minh một c&aacute;ch r&otilde; rệt v&agrave; sớm nhất. H&atilde;y tận hưởng niềm vui sướng khi vai kề vai c&ugrave;ng bạn b&egrave; ngắm mặt trời l&oacute; rạng. Trong c&aacute;i kh&ocirc;ng kh&iacute; l&agrave;nh lạnh buổi s&aacute;ng sớm, du kh&aacute;ch sẽ tận mắt chi&ecirc;m ngưỡng th&agrave;nh phố Đ&agrave; Lạt nằm im l&igrave;m trong một biển m&acirc;y đẹp đến rung động.<br />\r\n<br />\r\nTr&ecirc;n đ&acirc;y l&agrave; những chia sẻ gi&uacute;p du kh&aacute;ch c&oacute; th&ecirc;m những th&ocirc;ng tin cần thiết về đồi Thi&ecirc;n Ph&uacute;c Đức trong chuyến&nbsp;<a href="https://dulichviet.com.vn/du-lich-da-lat"><strong>du lịch Đ&agrave; Lạt</strong></a>&nbsp;sắp tới của du kh&aacute;ch nh&eacute;. Ch&uacute;c du kh&aacute;ch c&oacute; một chuyến đi đầy những kỉ niệm đẹp, với thật nhiều trải nghiệm th&uacute; vị.</p>', NULL, NULL, NULL, 'Bka', 0, 1, NULL, 0, 1, '2021-06-30 13:17:02', '2021-06-30 13:17:02', NULL),
(10, 'vi', 1, 'Tour du lịch Pháp ghé thăm hòn đảo Corse xinh đẹp đầy quyến rũ', 'tour-du-lich-phap-ghe-tham-hon-dao-corse-xinh-dep-day-quyen-ru', '/upload/tour-du-lich-phap-ghe-tham-hon-dao-corse-xinh-dep-day-quyen-ru.jpg', 'Corse - một hòn đảo mang vẻ đẹp yên bình, và xinh đẹp tọa lạc giữa mênh mông biển xanh, một vùng đất lãng mạn giao thoa tuyệt vời giữa hai nước Pháp và nước Ý. Nhưng ít ai biết đến, đây còn là quê hương của thiên tài quân sự Napoleon Bonaparte.', '<p>Những h&ograve;n đảo lu&ocirc;n l&agrave; địa điểm du lịch hấp dẫn với mọi du kh&aacute;ch. C&oacute; thể v&igrave; cuộc sống nơi đ&oacute; kh&oacute; tiếp cận hơn đại lục, cũng c&oacute; thể v&igrave; cảnh quan thi&ecirc;n nhi&ecirc;n đặc biệt hay những m&oacute;n ăn hải sản kh&oacute; cưỡng n&ecirc;n&nbsp;<a href="https://dulichviet.com.vn/du-lich-phap"><strong>du lịch Ph&aacute;p</strong></a>&nbsp;lu&ocirc;n thu h&uacute;t số lượng kh&aacute;ch đủ mọi lứa tuổi, sở th&iacute;ch. Đảo tại v&ugrave;ng Địa Trung Hải n&agrave;y lại c&agrave;ng đặc biệt hơn nữa. Tuy nhi&ecirc;n điểm đầu ti&ecirc;n chắc chắn m&agrave; du kh&aacute;ch phải gh&eacute; thăm l&agrave; đảo Corse nơi được mệnh danh l&agrave; đảo tuyệt mỹ với h&igrave;nh d&aacute;ng như một chiếc l&aacute; xanh. Giờ c&ugrave;ng&nbsp;<a href="https://dulichviet.com.vn/"><strong>Du Lịch Việt</strong></a>&nbsp;kh&aacute;m ph&aacute; h&ograve;n đảo xinh đẹp Corse qua b&agrave;i viết dưới đ&acirc;y nh&eacute;.</p>\r\n\r\n<p><img alt="Tour du lịch Pháp ghé thăm hòn đảo Corse xinh đẹp đầy quyến rũ" src="https://dulichviet.com.vn/images/bandidau/tour-du-lich-phap-ghe-tham-hon-dao-corse-xinh-dep-day-quyen-ru.jpg" /></p>\r\n\r\n<p><em>Tour du lịch Ph&aacute;p gh&eacute; thăm h&ograve;n đảo Corse xinh đẹp đầy quyến rũ</em></p>\r\n\r\n<h2><strong>Tour du lịch Ph&aacute;p gh&eacute; thăm h&ograve;n đảo Corse xinh đẹp đầy quyến rũ</strong></h2>\r\n\r\n<h3><strong>Những điều th&uacute; vị ở Corse khi đi du lịch Ph&aacute;p</strong></h3>\r\n\r\n<p>Corse một h&ograve;n đảo mang vẻ đẹp y&ecirc;n b&igrave;nh, v&agrave; xinh đẹp tọa lạc giữa m&ecirc;nh m&ocirc;ng biển xanh, một v&ugrave;ng đất l&atilde;ng mạn giao thoa tuyệt vời giữa hai nước Ph&aacute;p v&agrave; nước &Yacute;. Nhưng &iacute;t ai biết đến, đ&acirc;y c&ograve;n l&agrave; qu&ecirc; hương của thi&ecirc;n t&agrave;i qu&acirc;n sự Napoleon Bonaparte.<br />\r\n<br />\r\nKh&ocirc;ng chỉ vậy đảo Corse l&agrave; một trong những nơi ở nước Ph&aacute;p c&ograve;n giữ được ng&ocirc;n ngữ truyền thống của ri&ecirc;ng m&igrave;nh, mặc d&ugrave; hiện nay ng&ocirc;n ngữ n&agrave;y đ&atilde; c&oacute; sự pha trộn giữa tiến Ph&aacute;p v&agrave; tiếng &Yacute;. Do vị tr&iacute; địa l&yacute; gần với Ch&acirc;u Phi hơn n&ecirc;n thời tiết nắng v&agrave; ấm n&ecirc;n người d&acirc;n địa phương sở hữu t&oacute;c đen v&agrave; d&agrave;y, mắt đen, da m&agrave;u n&acirc;u v&agrave; d&aacute;ng người nhỏ nhắn. Tr&ecirc;n h&ograve;n đảo c&oacute; một khu vườn quốc gai tập hợp c&aacute;c lo&agrave;i động thực vật qu&yacute; hiếm v&agrave; c&oacute; nguy cơ tuyệt chủng như lo&agrave;i cừu rừng, hươu đỏ. Ngo&agrave;i ra, tại đảo Corse c&ograve;n c&oacute; một số lo&agrave;i vật đặc biệt kh&aacute;c như kỳ nh&ocirc;ng đỏ, kỳ nh&ocirc;ng suối c&ugrave;ng nhiều lo&agrave;i thực vật đa dạng kh&aacute;c nữa.<br />\r\n<br />\r\nNgười thi&ecirc;n t&agrave;i qu&acirc;n sự Napoleon Bonaparte sinh năm 1976 ngay tại thủ phủ Ajaccio của đảo Corse. Ng&ocirc;i nh&agrave; tổ ti&ecirc;n của &ocirc;ng hiện nay đ&atilde; trở th&agrave;nh một bảo t&agrave;ng để du kh&aacute;ch đến tham quan. Du kh&aacute;ch đến&nbsp;<a href="https://dulichviet.com.vn/du-lich-phap"><strong>tour du lịch Ph&aacute;p</strong></a>&nbsp;tham quan đảo Corse bởi kh&iacute; hậu đặc trưng của v&ugrave;ng Địa Trung Hải, cảnh quan thi&ecirc;n nhi&ecirc;n v&ocirc; c&ugrave;ng hoang sơ, địa h&igrave;nh hiểm trở v&agrave; điểm đến th&iacute;ch hợp để du kh&aacute;ch nghỉ dưỡng, tham gia c&aacute;c hoạt động hoạt n&aacute;o v&agrave; chơi c&aacute;c m&ocirc;n thể thao mạo hiểm.<br />\r\n<br />\r\nNgo&agrave;i ba th&agrave;nh phố cảng lớn như Bastia, Ajaccio, Calvi, th&igrave; Corse c&ograve;n c&oacute; rất nhiều thị trấn xinh đẹp kh&aacute;c nữa c&ugrave;ng nhiều ng&ocirc;i l&agrave;ng nhỏ cổ k&iacute;nh. Con đường để nối c&aacute;c th&agrave;nh phố tr&ecirc;n đảo sẽ đi qua những c&aacute;nh đồng nho m&ecirc;nh m&ocirc;ng, những c&aacute;nh đồng &ocirc; liu, c&acirc;y cọ hay những rừng th&ocirc;ng bạt ng&agrave;n. C&aacute;c b&atilde;i tắm tr&ecirc;n đảo Corse lu&ocirc;n nổi tiếng v&agrave; đẹp nhất của v&ugrave;ng Địa Trung Hải, g&acirc;y ấn tượng với du kh&aacute;ch bởi vẻ đẹp tự nhi&ecirc;n v&agrave; v&ocirc; c&ugrave;ng hoang sơ.</p>\r\n\r\n<p><img alt="Những điều thú vị ở Corse khi đi du lịch Pháp" src="https://dulichviet.com.vn/images/bandidau/nhung-dieu-thu-vi-o-corse-khi-di-du-lich-phap.jpg" /></p>\r\n\r\n<p><em>Những điều th&uacute; vị ở Corse khi đi du lịch Ph&aacute;p</em></p>\r\n\r\n<p><strong>Mũi Cap Corse</strong></p>\r\n\r\n<p>Đ&acirc;y nổi tiếng l&agrave; niềm ki&ecirc;u h&atilde;nh tự h&agrave;o tuy nhi&ecirc;n những người d&acirc;n địa phương chưa d&aacute;m gọi đảo Corse l&agrave; một trong những địa điểm du lịch đẹp nhất thế giới, nhưng họ vẫn n&oacute;i với nhau l&agrave;: h&ograve;n đảo xinh xắn n&agrave;y ch&iacute;nh l&agrave; nấc thang cuối c&ugrave;ng dẫn ta đi v&agrave;o thi&ecirc;n đường miền &ocirc;n đới.</p>\r\n\r\n<p><strong>Đặc sản tại đảo Corse</strong></p>\r\n\r\n<p>Đến với h&ograve;n đảo Corse n&agrave;y du kh&aacute;ch sẽ được thưởng thức nhiều m&oacute;n ăn hải sản của địa phương như fromage brocciu được l&agrave;m từ sữa d&ecirc;, thịt lợn quay Longzhu, đ&ugrave;i lợn hun kh&oacute;i, x&uacute;c x&iacute;ch v&agrave; thịt hun kh&oacute;i, s&uacute;p đậu đỏ, hoa mướp non lăn bột chi&ecirc;n bơ,&hellip; c&ugrave;ng thưởng thức những m&oacute;n ăn truyền thống v&agrave; ly rượu vang Corse nổi tiếng.<br />\r\n<br />\r\nĐối với những du kh&aacute;ch đi&nbsp;<a href="https://dulichviet.com.vn/du-lich-phap"><strong>tour Ph&aacute;p</strong></a>&nbsp;tham quan đảo Corse đều ấn tượng về con người cũng như cảnh quan thi&ecirc;n nhi&ecirc;n nơi đ&acirc;y, những c&ocirc;ng tr&igrave;nh cổ k&iacute;nh r&ecirc;u phong, những d&atilde;y n&uacute;i c&ugrave;ng những hang động kỳ vĩ, vừa thơ mộng vừa huyền ảo tr&ecirc;n biển v&agrave; những c&aacute;nh đồng nho hay c&aacute;nh đồng &ocirc; liu ng&uacute;t ng&agrave;n. Tất cả những thứ ấy đều mang đậm hương vị v&ugrave;ng đất đảo xinh đẹp, tr&ugrave; ph&uacute; v&agrave; mến kh&aacute;ch.</p>\r\n\r\n<h3><strong>Những điểm tham quan tại đảo Corse</strong></h3>\r\n\r\n<p><strong>Ajaccio</strong></p>\r\n\r\n<p>Vẻ đẹp tự nhi&ecirc;n của Ajaccio đ&atilde; l&agrave;m cho du kh&aacute;ch phải đem l&ograve;ng say m&ecirc;. Thị trấn n&agrave;y c&oacute; một khung cảnh h&ugrave;ng vĩ b&ecirc;n bờ biển với đỉnh n&uacute;i tuyết ở ph&iacute;a xa xa v&agrave; những b&atilde;i biển đầy c&aacute;t gần đ&oacute;. Ajaccio l&agrave; thị trấn lớn nhất v&agrave; cũng ch&iacute;nh l&agrave; thủ đ&ocirc; của Corse nhưng vẫn th&iacute;ch c&aacute;ch sống thoải m&aacute;i. Điểm thu h&uacute;t kh&aacute;ch du lịch l&agrave; ng&ocirc;i nh&agrave; nơi Napoleon sinh ra. Ng&ocirc;i nh&agrave; giờ l&agrave; bảo t&agrave;ng trưng b&agrave;y đồ nội thất của thời kỳ, vũ kh&iacute;, ch&acirc;n dung v&agrave; t&agrave;i liệu gia đ&igrave;nh.</p>\r\n\r\n<p><strong>Bonifacio</strong></p>\r\n\r\n<p>Tọa lạc ở một vị tr&iacute; đẹp như bức tranh vẽ tr&ecirc;n v&aacute;ch đ&aacute; v&ocirc;i, được bao quanh bởi những bức tường cổ, Bonifacio được bảo tồn tốt thị trấn ki&ecirc;n cố c&oacute; ni&ecirc;n đại từ thế kỷ 9 khi n&oacute; được th&agrave;nh lập bởi Bonifacio. Nơi đ&acirc;y c&oacute; một kh&ocirc;ng gian tuyệt vời của thế giới cũ, thị trấn l&agrave; một m&ecirc; cung quyến rũ của những con đường thời cổ hai b&ecirc;n l&agrave; những ng&ocirc;i nh&agrave; cổ. C&aacute;c Eglise Sainte Marie Majeure th&igrave; nằm ở trung t&acirc;m của thị trấn lịch sử n&agrave;y. Được x&acirc;y dựng giữa thế kỷ 12 v&agrave; 13, nh&agrave; thờ c&oacute; ngoại thất đơn giản được ph&acirc;n biệt bởi h&agrave;nh lang b&ecirc;n ngo&agrave;i của n&oacute;, một m&aacute;i hi&ecirc;n c&oacute; lớp m&aacute;i che với những đường n&eacute;t cổ điển. Nội thất đ&oacute;n kh&aacute;ch với kiến tr&uacute;c v&agrave; cột v&ograve;m thanh b&igrave;nh theo phong c&aacute;ch La M&atilde;.</p>\r\n\r\n<p><strong>Calvi</strong></p>\r\n\r\n<p>Thị trấn s&ocirc;i động n&agrave;y tự h&agrave;o c&oacute; một khung cảnh đẹp tr&ecirc;n một v&aacute;ch đ&aacute; đ&atilde; chiếu l&ecirc;n h&igrave;nh ảnh Vịnh Calvi. Với một bến du thuyền v&ocirc; c&ugrave;ng đẹp như những bức tranh vẽ v&agrave; năm c&acirc;y số những b&atilde;i biển đẹp dọc theo vịnh, Calvi l&agrave; điểm đến kỳ nghỉ phổ biến. Tắm nắng v&agrave; bơi lội l&agrave; những hoạt động du lịch được du kh&aacute;ch ưa th&iacute;ch. Ngo&agrave;i ra thị trấn c&ograve;n c&oacute; nhiều địa điểm y&ecirc;u th&iacute;ch văn h&oacute;a, chẳng hạn l&agrave; th&agrave;nh cổ với những bức tường bảo vệ ấn tượng k&eacute;o d&agrave;i xuống biển.<br />\r\n<br />\r\nKh&ocirc;ng chỉ vậy Calvi c&ograve;n nổi tiếng với lễ hội nhạc Jazz m&ugrave;a h&egrave; thu h&uacute;t t&agrave;i năng &acirc;m nhạc h&agrave;ng đầu. C&aacute;c buổi h&ograve;a nhạc thường được tổ chức tại c&aacute;c địa điểm trong thị trấn cũng như trong khu vực xung quanh.<br />\r\n<br />\r\nNếu c&oacute; cơ hội đi&nbsp;<a href="https://dulichviet.com.vn/du-lich-phap"><strong>du lịch Ph&aacute;p</strong></a>&nbsp;nhất định du kh&aacute;ch phải đến đảo Corse thi&ecirc;n đường n&agrave;y để kh&aacute;m ph&aacute; v&agrave; t&igrave;m hiểu v&ugrave;ng đất đảo n&agrave;y nha. Chắc chắn sẻ c&oacute; nhiều điều th&uacute; vị đang chờ đ&oacute;n du kh&aacute;ch kh&aacute;m ph&aacute; ở ph&iacute;a trước. Ch&uacute;c du kh&aacute;ch c&oacute; một chuyến đi vui vẻ, đầy ắp những kỷ niệm.</p>', NULL, NULL, NULL, 'Lukaku', 0, 1, NULL, 0, 1, '2021-06-30 13:18:14', '2021-06-30 13:18:14', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `post_categories`
--

CREATE TABLE IF NOT EXISTS `post_categories` (
  `id` int(10) unsigned NOT NULL,
  `order` int(10) unsigned NOT NULL DEFAULT '0',
  `lang` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'vi',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `featured` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `post_categories`
--

INSERT INTO `post_categories` (`id`, `order`, `lang`, `parent_id`, `title`, `slug`, `description`, `image`, `featured`, `status`, `created_at`, `updated_at`) VALUES
(1, 0, 'vi', 0, 'Tin Tức', 'tin-tuc-du-lich', NULL, '/upload/thuong-thuc-huong-vi-doc-dao-cua-kem-gelato-cua-y.jpg', 0, 1, '2021-06-30 12:22:18', '2021-06-30 12:22:18');

-- --------------------------------------------------------

--
-- Table structure for table `tours`
--

CREATE TABLE IF NOT EXISTS `tours` (
  `id` int(10) unsigned NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tour_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_go` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `price` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `leave_from` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_date` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_us` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `locaion_id` int(10) unsigned NOT NULL,
  `image_tour` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tours`
--

INSERT INTO `tours` (`id`, `title`, `tour_code`, `date_go`, `description`, `price`, `leave_from`, `total_date`, `contact_us`, `locaion_id`, `image_tour`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Du lịch Hè - Tour Du lịch Nha Trang', 'hfghfgwer', 'khanh hoa', 'Du lịch đảo Điệp Sơn, trải nghiệm cảm giác đi bộ trên con đường nổi giữa đại dương, thưởng thức hải sản ở làng chài Vạn Giã… sẽ đem lại cho bạn những cảm giác mới mẻ, đầy thú vị. Nơi đây cuốn hút bởi vẻ đẹp hoang sơ và đặc biệt là con đường nổi lênh đênh giữa đại dương độc đáo nhất Việt Nam.', '3453465768', 'Sai gon', '3 ngay - dem', '0375689031', 55, '/upload/mieu-ba-chua-su-tour-du-lich-chau-doc.jpg', 1, '2021-06-30 12:08:36', '2021-06-30 13:10:47'),
(2, 'Du lịch Hè - Tour Du lịch Cam Ranh', 'zfdhfghggfj', 'Tối thứ 6 hàng tuần', 'Du lịch Đảo Bình Ba - Đảo Bình Ba có lẽ đó là một cái tên khá lạ lẫm đối với nhiều người, nhưng đối với dân du lịch bụi hay phượt thì đây là một điểm du lịch rất tuyệt vời. Bình Ba là một hòn đảo nhỏ thuộc Cam Ranh, Khánh Hòa, diện tích trên 3km vuông, cách Nha Trang 60km, cách thành phố Hồ Chí Minh khoảng 390km. Để đến được Bình Ba bạn phải đến cảng Ba Ngòi. Đây là một hòn đảo quân sự, trước đây cấm dân ngoài và người nước ngoài vào đảo nhưng bây giờ đã cho phép người Việt Nam đến nhưng vẫn cấm người nước ngoài, nhưng với điều kiện là không mò đến những khu vực cấm và không có những hành động quá khích. Chính vì điều này của Bình Ba, khiến cho nhiều người càng muốn thực hiện tour du lịch đảo Bình Ba để hiểu về nó nhiều hơn. Và chuyến du lịch đảo Bình Ba sẽ không làm bạn thất vọng bởi vẻ đẹp hoang sơ kỳ bí của nó.', '123423543', 'Sai gon', '2 ngày 2 đêm', '0375689031', 55, '/upload/img-07.jpg', 1, '2021-06-30 12:10:51', '2021-06-30 12:10:51'),
(3, 'Du lịch Hè - Tour Du lịch Đảo Bình Hưng', 'sdghfgjghj', 'Thứ 6 hàng tuần', 'Đến với hành trình du lịch Đảo Bình Hưng du khách sẽ bị cuốn hút ngay bởi một màu xanh và trong của nước biển hòa quyện bên những bãi cát trắng tinh. Những bãi biển ở đây không dài và rộng nhưng luôn sạch và trong tới tận đáy. Đặc biệt, đên đây du khách có thể thoải mái ngắm nhìn những dải san hô chỉ với vài bước chân trần…', '23434543', 'TO..HCM', '3 ngày 2 đêm', '0375689031', 55, '/upload/bai-nuoc-ngot-tour-dao-binh-hung-gia-re.jpg', 1, '2021-06-30 12:13:31', '2021-06-30 12:13:31'),
(4, 'Du lịch Nha Trang - Tháp Bà Ponagar', 'fdhfgjhgk', '30/04/2021', 'Du lịch Nha Trang - Tháp Bà Ponagar - Chùa Long Sơn - Vinpearl Land dịp Lễ 30/4 từ Sài Gòn - Du lịch Nha Trang - Thành phố biển Nha Trang nổi tiếng với những cảnh quan thiên nhiên đẹp “mê hoặc” lòng người, hàng năm thu hút hàng trăm ngàn du khách cả trong và ngoài nước đến thăm quan nghỉ dưỡng. Nếu bạn đang tìm kiếm một chuyến du lịch đúng nghĩa nghỉ dưỡng thì Tour du lịch Nha Trang là sự lựa chọn tuyệt vời dành cho bạn. Đến với Thành phố biển Nha Trang bạn sẽ được thăm quan ngắm cảnh với rất nhiều những danh lam thắng cảnh nổi tiếng, được thử trải nghiệm câu tôm trên thuyền khi mặt trời đã ngả bóng,... Được thưởng thức nhiều món ăn hấp dẫn, cùng khí hậu mát mẻ,... Hứa hẹn đây sẽ là một kỳ nghỉ đầy thú vị và ý nghĩa dành cho bạn.', '5,999,000 đ', 'TP.HCM', '3 ngày 2 đêm', '0375689031', 55, '/upload/du-lich-mua-he-binh-hung.jpg', 1, '2021-06-30 12:15:29', '2021-06-30 12:15:29'),
(5, 'Du lịch Nha Trang - Du Ngoạn 4 Đảo', 'SDhffgjhg', '30/04; 01/05/2021', 'Du lịch Nha Trang - Du Ngoạn 4 Đảo - Vinpearl Land - Tháp Bà Ponagar - Nhà Thờ Đá dịp Lễ 30/4 từ Sài Gòn - Du lịch Nha Trang - Thành phố biển Nha Trang nổi tiếng với những cảnh quan thiên nhiên đẹp “mê hoặc” lòng người, hàng năm thu hút hàng trăm ngàn du khách cả trong và ngoài nước đến thăm quan nghỉ dưỡng. Nếu bạn đang tìm kiếm một chuyến du lịch đúng nghĩa nghỉ dưỡng thì Tour du lịch Nha Trang là sự lựa chọn tuyệt vời dành cho bạn. Đến với Thành phố biển Nha Trang bạn sẽ được thăm quan ngắm cảnh với rất nhiều những danh lam thắng cảnh nổi tiếng, được thử trải nghiệm câu tôm trên thuyền khi mặt trời đã ngả bóng,... Được thưởng thức nhiều món ăn hấp dẫn, cùng khí hậu mát mẻ,... Hứa hẹn đây sẽ là một kỳ nghỉ đầy thú vị và ý nghĩa dành cho bạn.', '4,399,000 đ', 'TP.HCM', '4 ngày 3 đêm', '0375689031', 55, '/upload/vinpearland-du-lich-nha-gia-tot-du-lich-viet.jpg', 1, '2021-06-30 12:17:23', '2021-06-30 12:17:23'),
(6, 'Du lịch Nha Trang - Đà Lạt', 'sdhgfjhg', '29,30/04/2021', 'Du lịch Nha Trang - Đà Lạt 5 ngày 4 đêm dịp Lễ 30/4 từ Sài Gòn - Mùa Xuân là mùa của sum họp và đoàn viên, hãy cùng gia đình và bạn bè tận hưởng cảm giác vi vu trên những cung đường đẹp nhất Việt Nam. Tận hưởng không khí Tết tại 2 thành phố du lịch nổi tiếng là Nha Trang và Đà Lạt. Nha Trang thành phố biển náo nhiệt bậc nhất Việt Nam. Với những bãi biển xanh cát trắng trải dài và những thắng cảnh đặc sắc. Tour Lễ 30/4 du khách còn được lên thăm Đà Lạt thành phố ngàn hoa….Đà Lạt mùa xuân mang một vẻ đẹp say đắm lòng người. Du Lịch Việt hứa hẹn sẽ mang đến cho du khách một kỳ nghỉ Tết trọn vẹn và đáng nhớ.', '5,399,000 đ', 'TP.HCM', '5 ngày 4 đêm', '0375689031', 55, '/upload/du-lich-da-lat-que-garden-gia-tot-du-lich-viet(1).jpg', 1, '2021-06-30 12:19:03', '2021-06-30 12:19:03'),
(7, 'Du lịch Nha Trang - Du Ngoạn 4 Đảo', 'vsdgfhgj', '30/04; 01/05/2021', 'Du lịch Nha Trang - Du Ngoạn 4 Đảo - Vinpearl Land - Tháp Bà Ponagar - Nhà Thờ Đá dịp Lễ 30/4 từ Sài Gòn - Du lịch Nha Trang - Thành phố biển Nha Trang nổi tiếng với những cảnh quan thiên nhiên đẹp “mê hoặc” lòng người, hàng năm thu hút hàng trăm ngàn du khách cả trong và ngoài nước đến thăm quan nghỉ dưỡng. Nếu bạn đang tìm kiếm một chuyến du lịch đúng nghĩa nghỉ dưỡng thì Tour du lịch Nha Trang là sự lựa chọn tuyệt vời dành cho bạn. Đến với Thành phố biển Nha Trang bạn sẽ được thăm quan ngắm cảnh với rất nhiều những danh lam thắng cảnh nổi tiếng, được thử trải nghiệm câu tôm trên thuyền khi mặt trời đã ngả bóng,... Được thưởng thức nhiều món ăn hấp dẫn, cùng khí hậu mát mẻ,... Hứa hẹn đây sẽ là một kỳ nghỉ đầy thú vị và ý nghĩa dành cho bạn.', '4,399,000 đ', 'TP.HCM', '4 ngày 3 đêm Khởi hành	30/04; 01/05/20', '0375689031', 55, '/upload/vinpearland-du-lich-nha-gia-tot-du-lich-viet.jpg', 1, '2021-06-30 12:20:46', '2021-06-30 12:20:46'),
(8, 'Du lịch Hà Nội - Yên Tử - Hạ Long', 'dsgdfhgf', '03,10,17,24/04 ; 08,15,22/05', 'Miền Bắc là nơi khởi nguồn văn hóa ngàn năm văn hiến của dân tộc Việt Nam. Du lịch miền Bắc du khách sẽ được khám phá những thắng cảnh thiên nhiên đẹp mê hồn cùng nhiều công trình kiến trúc ấn tượng được tạo nên bởi bàn tay khéo léo của con người. Điểm du lịch Tràng An là nơi du khách sẽ được khám phá một trong những địa điểm du lịch đẹp nhất Ninh Bình. Tạo hóa đã vô cùng ưu ái ban tặng cho nơi đây một cảnh quan thiên nhiên tuyệt đẹp với các dãy núi uốn lượn bao quanh các dòng Suối nước tự nhiên, tạo nên vô vàn các hang động kỳ ảo, huyền bí.... Cùng Du Lịch Việt khám phá những địa điểm du lịch miền bắc hấp dẫn nhất như Hà Nội - Yên Tử - Hạ Long - Chùa Bái Đính - Tràng An - Sapa - Bản Cát Cát - Đỉnh Fansipan,... để bắt đầu lên kế hoạch cho chuyến du lịch ngay nhé!', '8,399,000 đ', 'TP.HCM', '6 ngày 5 đêm', '0375689031', 8, '/upload/du-lich-da-lat-que-garden-gia-tot-du-lich-viet(1).jpg', 1, '2021-06-30 12:53:45', '2021-06-30 12:53:45'),
(9, 'Du lịch Miền Bắc - Hà Nội - Hà Giang', 'fdhgjkhjgfh', '06,13,27/03 ; 03,10,17,24/04 ; 08,15,22/05', 'Du lịch Đông Bắc 6 ngày 5 đêm của Du Lịch Việt, du khách sẽ được khám phá vẻ đẹp kỳ ảo của thác Bản Giốc, nơi những khối nước lớn đổ xuống qua nhiều bậc đá vôi tạo nên một khung cảnh thiên nhiên kỳ vĩ. Dưới chân thác Bản Giốc là mặt sông rộng, phẳng như gương, hai bên bờ là những thảm cỏ, vạt rừng xanh ngắt… đến với động Ngườm Ngao, một là thế giới của nhũ đá với nhiều tuyệt tác của thiên nhiên. Nhiệt độ trong động luôn tạo cảm giác dễ chịu, mùa hè mát mẻ còn mùa đông ấm áp. Theo thời gian, nhũ đá và măng đá nơi đây đã tạo nên khung cảnh sinh động, kì thú làm say lòng tất cả những ai một lần đặt chân tới đây.', '8,399,000 đ', 'TP.HCM', '6 ngày 5 đêm', '0375689031', 8, '/upload/mien bac.jpg', 1, '2021-06-30 12:58:55', '2021-06-30 12:58:55'),
(10, 'Du lịch Hè - Tour Du lịch Miền Tây - Mỹ Tho - Châu Đốc - Thiên Cấm Sơn từ Sài Gòn', 'sdgdfgfd', 'Thứ 6 hàng tuần', 'Du lịch Miền Tây - Mang vẻ đẹp đặc trưng của vùng đồng bằng sông nước Cửu Long, An Giang nổi tiếng bởi cảnh quan thiên nhiên nhuốm màu sắc huyền bí. Nằm trong dãy núi Thất Sơn, núi Cấm là ngọn núi cao nhất, nơi đây cảnh trí sơn thủy hữu tình, khí hậu mát mẻ được ví như một phiên bản “Đà Lạt” của miền Tây, là điểm đến lý tưởng du lịch sinh thái và tâm linh cho du khách hành hương cả nước. Hành trình sẽ là chuyến du hí đầy màu sắc dành cho du khách.', '2,199,000 đ', 'TP.HCM', '3 ngày 2 đêm', '0375689031', 60, '/upload/tien-giang-du-lich-viet.jpg', 1, '2021-06-30 13:07:25', '2021-06-30 13:07:25'),
(11, 'Combo du lịch Đà Lạt Khách Sạn Swiss Belresort', '15948', 'Từ Hồ Chí Minh', 'COMBO 3N2Đ /PHÒNG + VMB  BAO GỒM:\r\n - Vé máy bay khứ hồi SÀI GÒN < - > ĐÀ LẠT, bao gồm 7kg hành lý xách tay\r\n- 02 đêm nghỉ dưỡng tại hạng phòng Deluxe Mountain\r\n- Ăn sáng buffet hằng ngày\r\n- Miễn phí trà, cafe, nước suối đặt phòng hàng ngày\r\n- Miễn phí trải nghiệm các dịch vụ của khách san như: wifi, bể bơi nước ấm trong nhà và bể bơi ngoài trời\r\n- Miễn phí shuttle bus đưa đón ra trung tâm thành phố Đà Lạt theo lịch trình của resort\r\n- Miễn phí sử dụng xe đạp vòng quanh resort', '2,999,000 đ', '11/05/2021 - 30/08/2021', '3 ngày 2 đêm', '0375689031', 52, '/upload/tua-da-lat-gia-tot-du-lich-viet.jpg', 1, '2021-06-30 13:22:09', '2021-06-30 13:22:09'),
(12, 'Du lịch Hè - Tour Du lịch Mỹ Tho', '15863', 'Từ Hồ Chí Minh', 'Du lịch Hè  - Du lịch Miền Tây - Xuôi theo dòng nước du khách đến với chợ nổi Cái Răng để chứng kiến điều kì lạ, chợ mà nổi được trên sông? Du khách đi chợ nổi Cái Răng trên sông Cần Thơ không chỉ để ngắm nhìn những ghe thuyền đầy ắp hoa quả, hàng hóa mà còn để thưởng thức hương vị tô hủ tiếu hay tô bún cua thơm ngon giữa dòng nước mênh mông. Bên cạnh tham quan các Chợ nổi, du khách còn được viếng thăm Thiền Viện Trúc Lâm Phương Nam, Thiền Viện được xem là một trong những công trình nghệ thuật độc đáo của đất Tây Đô - ngôi chùa rộng nhất khu vực Đồng bằng sông Cửu Long, được xây dựng trên diện tích gần 4 ha, với kết cấu lợp ngói, khung cột gỗ lim, chánh điện rộng cùng nhà tổ, nhiều tượng Phật được làm bằng gỗ Du Sam.', '1,499,000 đ', 'Thứ 7 hàng tuần', '2 ngày 1 đêm', '0375689031', 46, '/upload/My-tho-du-lich-viet.jpg', 1, '2021-06-30 13:24:44', '2021-06-30 13:24:44');

-- --------------------------------------------------------

--
-- Table structure for table `tour_content_programs`
--

CREATE TABLE IF NOT EXISTS `tour_content_programs` (
  `id` int(10) unsigned NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `tour_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tour_content_programs`
--

INSERT INTO `tour_content_programs` (`id`, `content`, `tour_id`, `created_at`, `updated_at`) VALUES
(1, '<p>NG&Agrave;Y 1 |&nbsp;NHA TRANG&nbsp;&ndash; VINPEARLAND &ndash; TẮM B&Ugrave;N KHO&Aacute;NG (Ăn s&aacute;ng, trưa, ăn tối tự t&uacute;c) (Xem th&ecirc;m) (Xem th&ecirc;m)</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>S&aacute;ng:</strong>&nbsp;D&ugrave;ng bữa s&aacute;ng.&nbsp;</p>\r\n\r\n<ul>\r\n	<li>Tham quan&nbsp;<strong>th&aacute;p B&agrave; Ponagar&nbsp;</strong>- một c&ocirc;ng tr&igrave;nh c&oacute; quy m&ocirc; lớn nhất v&agrave; c&oacute; vai tr&ograve; quan trọng trong lịch sử nghệ thuật kiến tr&uacute;c t&ocirc;n gi&aacute;o Chăm.</li>\r\n	<li>Viếng&nbsp;<strong>Ch&ugrave;a Long Sơn</strong>&nbsp;- ng&ocirc;i ch&ugrave;a nổi tiếng nhất Nha Trang. Đỉnh đồi l&agrave; bức tượng Kim Th&acirc;n Phật tổ (c&ograve;n gọi l&agrave; tượng Phật trắng) ngồi thuyết ph&aacute;p, tượng cao 21m, đ&agrave;i sen l&agrave;m đế cao 7m.</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Trưa:&nbsp;</strong>D&ugrave;ng cơm trưa, Qu&yacute; kh&aacute;ch c&oacute; thể chọn 1 trong 2 điểm tham quan sau:<br />\r\n<strong>*Lựa chọn 1:&nbsp;Khu du lịch suối kho&aacute;ng n&oacute;ng &ndash; massage cơ thể với hệ thống thủy lực zaccuzi, ng&acirc;m m&igrave;nh trong hồ kho&aacute;ng n&oacute;ng, tắm b&ugrave;n</strong>&nbsp;&hellip; (v&eacute; tham quan tự t&uacute;c).<br />\r\n<strong>*Lựa chọn 2: Khu chơi giải tr&iacute; Vinpearl Land</strong>&nbsp;(v&eacute; tham quan tự t&uacute;c).&nbsp;</p>\r\n\r\n<ul>\r\n	<li>Tr&ograve; chơi ngo&agrave;i trời: Đu quay cảm gi&aacute;c mạnh, đu quay d&acirc;y văng, đu quay th&uacute; nh&uacute;n, đu quay con voi, t&agrave;u lượn si&ecirc;u tốc, đu quay v&ograve;ng xoay, xe đạp bay, t&agrave;u hải tặc, th&agrave;nh phố vui nhộn, th&uacute; nh&uacute;n, xiếc th&uacute; (3 xuất/ng&agrave;y).</li>\r\n	<li>Tr&ograve; chơi trong nh&agrave;: Phim bốn chiều, xe đụng, vườn cổ t&iacute;ch, thi&ecirc;n đường trẻ em, si&ecirc;u thị game, ph&ograve;ng karaoke&hellip;</li>\r\n	<li>Khu thuỷ cung Vinpearland với diện t&iacute;ch tr&ecirc;n 3,400m2, l&agrave; đại dương thu nhỏ với hơn 300 lo&agrave;i c&aacute; đẹp, qu&yacute; hiếm v&agrave; lạ mắt.</li>\r\n	<li>Khu c&ocirc;ng vi&ecirc;n nước với c&aacute;c tr&ograve; chơi cảm gi&aacute;c mạnh: khu tr&ograve; chơi mạo hiểm, khu tr&ograve; chơi d&agrave;nh cho trẻ em, hồ tạo s&oacute;ng, d&ograve;ng s&ocirc;ng lười, khu tr&ograve; chơi gia đ&igrave;nh mạo hiểm&hellip;</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Tối:</strong>&nbsp;Qu&yacute; kh&aacute;ch tự t&uacute;c ăn tối, nghỉ đ&ecirc;m tại Nha Trang. Qu&yacute; kh&aacute;ch tự do dạo phố, chợ đ&ecirc;m hoặc thưởng thức Hải sản tại Khu Th&aacute;p B&agrave; (chi ph&iacute; tự t&uacute;c).</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>NG&Agrave;Y 2 |&nbsp;NHA TRANG&nbsp;&ndash;&nbsp;ĐẢO ĐIỆP SƠN &ndash; NHA TRANG&nbsp;(Ăn s&aacute;ng, trưa, chiều) (Xem th&ecirc;m) (Xem th&ecirc;m)</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>S&aacute;ng:&nbsp;</strong>D&ugrave;ng bữa s&aacute;ng.&nbsp;<br />\r\nQu&yacute; kh&aacute;ch khởi h&agrave;nh đi&nbsp;<strong>đảo Điệp Sơn</strong>, tr&ecirc;n đường đi qua những địa danh n&ocirc;i tiếng của tỉnh Kh&aacute;nh H&ograve;a: Vịnh Nha Phu, Ninh V&acirc;n Bay, H&ograve;n H&egrave;o, Đ&aacute; B&agrave;n, nghe hướng dẫn vi&ecirc;n thuyết minh về những ng&agrave;nh nghề truyền thống v&agrave; ng&agrave;nh nu&ocirc;i, trồng thủy sản, t&igrave;m hiểu những m&oacute;n đặc sản truyền thống của Kh&aacute;nh Ho&agrave;.<br />\r\nDừng ch&acirc;n tham quan&nbsp;<strong>Cầu Ngọc Trai</strong>&nbsp;hay c&ograve;n được gọi l&agrave; Cầu T&igrave;nh Y&ecirc;u, c&acirc;y cầu gỗ bắc ra biển d&agrave;i khoảng 300m v&ocirc; c&ugrave;ng độc đ&aacute;o với nhiều cảnh đẹp, nơi đ&acirc;y được nhiều du kh&aacute;ch chọn để l&agrave;m địa điểm chụp h&igrave;nh.<br />\r\nĐến Cảng Điệp Sơn, qu&yacute; kh&aacute;ch l&ecirc;n t&agrave;u bắt đầu h&agrave;nh tr&igrave;nh&nbsp;<strong>kh&aacute;m ph&aacute; đảo Điệp Sơn</strong>&nbsp;một trong những địa điểm du lịch l&yacute; tưởng cho những ai th&iacute;ch kh&aacute;m ph&aacute; biển đảo. Đảo Điệp Sơn dần hiện với biển hoang sơ, non nước hữu t&igrave;nh, c&oacute; n&uacute;i, biển, m&acirc;y trời, v&agrave; con đường giữa đại dương.<br />\r\nT&agrave;u cập bờ, qu&yacute; kh&aacute;ch t&igrave;m hiểu cuộc sống, tập tục của ngư d&acirc;n Điệp Sơn, chinh phục con đường m&ograve;n tr&ecirc;n biển v&ocirc; c&ugrave;ng độc đ&aacute;o v&agrave; th&uacute; vị d&agrave;i gần 700 m, nối liền hai h&ograve;n đảo của cụm đảo Điệp Sơn; con đường uốn lượn, rộng khoảng 1 m v&agrave; nằm s&acirc;u dưới mặt nước biển trong xanh chưa đến nửa m&eacute;t. Khi thủy triều r&uacute;t xuống con đường độc đ&aacute;o hiện ra đem lại cảm gi&aacute;c v&ocirc; c&ugrave;ng th&iacute;ch th&uacute;, xen lẫn hồi hộp v&agrave; một ch&uacute;t sợ h&atilde;i khi bước giữa đại dương bao la.<br />\r\nKh&aacute;m ph&aacute; một v&ograve;ng quanh c&aacute;c đảo với vẻ đẹp của những b&atilde;i biển hoang sơ c&aacute;t trắng, nước biển trong xanh, v&agrave; những c&aacute;nh đồng cỏ lau tuyệt đẹp.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Trưa:</strong>&nbsp;D&ugrave;ng cơm trưa, đo&agrave;n l&ecirc;n t&agrave;u rời đảo khởi h&agrave;nh về Nha Trang.<br />\r\nViếng&nbsp;<strong>nh&agrave; thờ đ&aacute;&nbsp;</strong>(Nh&agrave; thờ Ch&aacute;nh t&ograve;a Kit&ocirc; Vua) với n&eacute;t kiến tr&uacute;c độc đ&aacute;o mang đậm phong c&aacute;ch Ph&aacute;p.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Tối:&nbsp;</strong>D&ugrave;ng cơm tối, nghỉ đ&ecirc;m tại Nha Trang. Qu&yacute; kh&aacute;ch c&oacute; thể tự do dạo phố biển.&nbsp;</p>\r\n\r\n<p>NG&Agrave;Y 3 |&nbsp;NHA TRANG&nbsp;&ndash;&nbsp;TP.HCM (Ăn s&aacute;ng, trưa) (Xem th&ecirc;m) (Xem th&ecirc;m)</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>S&aacute;ng:&nbsp;</strong>D&ugrave;ng bữa s&aacute;ng. Đo&agrave;n khởi h&agrave;nh tham quan, mua sắm đặc sản tại trung t&acirc;m thương mại&nbsp;<strong>Chợ Đầm</strong>.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Trưa:&nbsp;</strong>Khởi h&agrave;nh về TP.HCM, tiếp tục đến Phan Thiết, d&ugrave;ng cơm trưa.</p>', 1, '2021-06-30 12:08:36', '2021-06-30 13:10:47'),
(2, '<p>NG&Agrave;Y 1 |&nbsp;NHA TRANG&nbsp;&ndash; VINPEARLAND &ndash; TẮM B&Ugrave;N KHO&Aacute;NG (Ăn s&aacute;ng, trưa, ăn tối tự t&uacute;c) (Xem th&ecirc;m) (Xem th&ecirc;m)</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>S&aacute;ng:</strong>&nbsp;D&ugrave;ng bữa s&aacute;ng.&nbsp;</p>\r\n\r\n<ul>\r\n	<li>Tham quan&nbsp;<strong>th&aacute;p B&agrave; Ponagar&nbsp;</strong>- một c&ocirc;ng tr&igrave;nh c&oacute; quy m&ocirc; lớn nhất v&agrave; c&oacute; vai tr&ograve; quan trọng trong lịch sử nghệ thuật kiến tr&uacute;c t&ocirc;n gi&aacute;o Chăm.</li>\r\n	<li>Viếng&nbsp;<strong>Ch&ugrave;a Long Sơn</strong>&nbsp;- ng&ocirc;i ch&ugrave;a nổi tiếng nhất Nha Trang. Đỉnh đồi l&agrave; bức tượng Kim Th&acirc;n Phật tổ (c&ograve;n gọi l&agrave; tượng Phật trắng) ngồi thuyết ph&aacute;p, tượng cao 21m, đ&agrave;i sen l&agrave;m đế cao 7m.</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Trưa:&nbsp;</strong>D&ugrave;ng cơm trưa, Qu&yacute; kh&aacute;ch c&oacute; thể chọn 1 trong 2 điểm tham quan sau:<br />\r\n<strong>*Lựa chọn 1:&nbsp;Khu du lịch suối kho&aacute;ng n&oacute;ng &ndash; massage cơ thể với hệ thống thủy lực zaccuzi, ng&acirc;m m&igrave;nh trong hồ kho&aacute;ng n&oacute;ng, tắm b&ugrave;n</strong>&nbsp;&hellip; (v&eacute; tham quan tự t&uacute;c).<br />\r\n<strong>*Lựa chọn 2: Khu chơi giải tr&iacute; Vinpearl Land</strong>&nbsp;(v&eacute; tham quan tự t&uacute;c).&nbsp;</p>\r\n\r\n<ul>\r\n	<li>Tr&ograve; chơi ngo&agrave;i trời: Đu quay cảm gi&aacute;c mạnh, đu quay d&acirc;y văng, đu quay th&uacute; nh&uacute;n, đu quay con voi, t&agrave;u lượn si&ecirc;u tốc, đu quay v&ograve;ng xoay, xe đạp bay, t&agrave;u hải tặc, th&agrave;nh phố vui nhộn, th&uacute; nh&uacute;n, xiếc th&uacute; (3 xuất/ng&agrave;y).</li>\r\n	<li>Tr&ograve; chơi trong nh&agrave;: Phim bốn chiều, xe đụng, vườn cổ t&iacute;ch, thi&ecirc;n đường trẻ em, si&ecirc;u thị game, ph&ograve;ng karaoke&hellip;</li>\r\n	<li>Khu thuỷ cung Vinpearland với diện t&iacute;ch tr&ecirc;n 3,400m2, l&agrave; đại dương thu nhỏ với hơn 300 lo&agrave;i c&aacute; đẹp, qu&yacute; hiếm v&agrave; lạ mắt.</li>\r\n	<li>Khu c&ocirc;ng vi&ecirc;n nước với c&aacute;c tr&ograve; chơi cảm gi&aacute;c mạnh: khu tr&ograve; chơi mạo hiểm, khu tr&ograve; chơi d&agrave;nh cho trẻ em, hồ tạo s&oacute;ng, d&ograve;ng s&ocirc;ng lười, khu tr&ograve; chơi gia đ&igrave;nh mạo hiểm&hellip;</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Tối:</strong>&nbsp;Qu&yacute; kh&aacute;ch tự t&uacute;c ăn tối, nghỉ đ&ecirc;m tại Nha Trang. Qu&yacute; kh&aacute;ch tự do dạo phố, chợ đ&ecirc;m hoặc thưởng thức Hải sản tại Khu Th&aacute;p B&agrave; (chi ph&iacute; tự t&uacute;c).</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>NG&Agrave;Y 2 |&nbsp;NHA TRANG&nbsp;&ndash;&nbsp;ĐẢO ĐIỆP SƠN &ndash; NHA TRANG&nbsp;(Ăn s&aacute;ng, trưa, chiều) (Xem th&ecirc;m) (Xem th&ecirc;m)</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>S&aacute;ng:&nbsp;</strong>D&ugrave;ng bữa s&aacute;ng.&nbsp;<br />\r\nQu&yacute; kh&aacute;ch khởi h&agrave;nh đi&nbsp;<strong>đảo Điệp Sơn</strong>, tr&ecirc;n đường đi qua những địa danh n&ocirc;i tiếng của tỉnh Kh&aacute;nh H&ograve;a: Vịnh Nha Phu, Ninh V&acirc;n Bay, H&ograve;n H&egrave;o, Đ&aacute; B&agrave;n, nghe hướng dẫn vi&ecirc;n thuyết minh về những ng&agrave;nh nghề truyền thống v&agrave; ng&agrave;nh nu&ocirc;i, trồng thủy sản, t&igrave;m hiểu những m&oacute;n đặc sản truyền thống của Kh&aacute;nh Ho&agrave;.<br />\r\nDừng ch&acirc;n tham quan&nbsp;<strong>Cầu Ngọc Trai</strong>&nbsp;hay c&ograve;n được gọi l&agrave; Cầu T&igrave;nh Y&ecirc;u, c&acirc;y cầu gỗ bắc ra biển d&agrave;i khoảng 300m v&ocirc; c&ugrave;ng độc đ&aacute;o với nhiều cảnh đẹp, nơi đ&acirc;y được nhiều du kh&aacute;ch chọn để l&agrave;m địa điểm chụp h&igrave;nh.<br />\r\nĐến Cảng Điệp Sơn, qu&yacute; kh&aacute;ch l&ecirc;n t&agrave;u bắt đầu h&agrave;nh tr&igrave;nh&nbsp;<strong>kh&aacute;m ph&aacute; đảo Điệp Sơn</strong>&nbsp;một trong những địa điểm du lịch l&yacute; tưởng cho những ai th&iacute;ch kh&aacute;m ph&aacute; biển đảo. Đảo Điệp Sơn dần hiện với biển hoang sơ, non nước hữu t&igrave;nh, c&oacute; n&uacute;i, biển, m&acirc;y trời, v&agrave; con đường giữa đại dương.<br />\r\nT&agrave;u cập bờ, qu&yacute; kh&aacute;ch t&igrave;m hiểu cuộc sống, tập tục của ngư d&acirc;n Điệp Sơn, chinh phục con đường m&ograve;n tr&ecirc;n biển v&ocirc; c&ugrave;ng độc đ&aacute;o v&agrave; th&uacute; vị d&agrave;i gần 700 m, nối liền hai h&ograve;n đảo của cụm đảo Điệp Sơn; con đường uốn lượn, rộng khoảng 1 m v&agrave; nằm s&acirc;u dưới mặt nước biển trong xanh chưa đến nửa m&eacute;t. Khi thủy triều r&uacute;t xuống con đường độc đ&aacute;o hiện ra đem lại cảm gi&aacute;c v&ocirc; c&ugrave;ng th&iacute;ch th&uacute;, xen lẫn hồi hộp v&agrave; một ch&uacute;t sợ h&atilde;i khi bước giữa đại dương bao la.<br />\r\nKh&aacute;m ph&aacute; một v&ograve;ng quanh c&aacute;c đảo với vẻ đẹp của những b&atilde;i biển hoang sơ c&aacute;t trắng, nước biển trong xanh, v&agrave; những c&aacute;nh đồng cỏ lau tuyệt đẹp.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Trưa:</strong>&nbsp;D&ugrave;ng cơm trưa, đo&agrave;n l&ecirc;n t&agrave;u rời đảo khởi h&agrave;nh về Nha Trang.<br />\r\nViếng&nbsp;<strong>nh&agrave; thờ đ&aacute;&nbsp;</strong>(Nh&agrave; thờ Ch&aacute;nh t&ograve;a Kit&ocirc; Vua) với n&eacute;t kiến tr&uacute;c độc đ&aacute;o mang đậm phong c&aacute;ch Ph&aacute;p.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Tối:&nbsp;</strong>D&ugrave;ng cơm tối, nghỉ đ&ecirc;m tại Nha Trang. Qu&yacute; kh&aacute;ch c&oacute; thể tự do dạo phố biển.&nbsp;</p>\r\n\r\n<p>NG&Agrave;Y 3 |&nbsp;NHA TRANG&nbsp;&ndash;&nbsp;TP.HCM (Ăn s&aacute;ng, trưa) (Xem th&ecirc;m) (Xem th&ecirc;m)</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>S&aacute;ng:&nbsp;</strong>D&ugrave;ng bữa s&aacute;ng. Đo&agrave;n khởi h&agrave;nh tham quan, mua sắm đặc sản tại trung t&acirc;m thương mại&nbsp;<strong>Chợ Đầm</strong>.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Trưa:&nbsp;</strong>Khởi h&agrave;nh về TP.HCM, tiếp tục đến Phan Thiết, d&ugrave;ng cơm trưa.</p>', 2, '2021-06-30 12:10:51', '2021-06-30 13:10:47'),
(3, '<p>NG&Agrave;Y 1 |&nbsp;NHA TRANG&nbsp;&ndash; VINPEARLAND &ndash; TẮM B&Ugrave;N KHO&Aacute;NG (Ăn s&aacute;ng, trưa, ăn tối tự t&uacute;c) (Xem th&ecirc;m) (Xem th&ecirc;m)</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>S&aacute;ng:</strong>&nbsp;D&ugrave;ng bữa s&aacute;ng.&nbsp;</p>\r\n\r\n<ul>\r\n	<li>Tham quan&nbsp;<strong>th&aacute;p B&agrave; Ponagar&nbsp;</strong>- một c&ocirc;ng tr&igrave;nh c&oacute; quy m&ocirc; lớn nhất v&agrave; c&oacute; vai tr&ograve; quan trọng trong lịch sử nghệ thuật kiến tr&uacute;c t&ocirc;n gi&aacute;o Chăm.</li>\r\n	<li>Viếng&nbsp;<strong>Ch&ugrave;a Long Sơn</strong>&nbsp;- ng&ocirc;i ch&ugrave;a nổi tiếng nhất Nha Trang. Đỉnh đồi l&agrave; bức tượng Kim Th&acirc;n Phật tổ (c&ograve;n gọi l&agrave; tượng Phật trắng) ngồi thuyết ph&aacute;p, tượng cao 21m, đ&agrave;i sen l&agrave;m đế cao 7m.</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Trưa:&nbsp;</strong>D&ugrave;ng cơm trưa, Qu&yacute; kh&aacute;ch c&oacute; thể chọn 1 trong 2 điểm tham quan sau:<br />\r\n<strong>*Lựa chọn 1:&nbsp;Khu du lịch suối kho&aacute;ng n&oacute;ng &ndash; massage cơ thể với hệ thống thủy lực zaccuzi, ng&acirc;m m&igrave;nh trong hồ kho&aacute;ng n&oacute;ng, tắm b&ugrave;n</strong>&nbsp;&hellip; (v&eacute; tham quan tự t&uacute;c).<br />\r\n<strong>*Lựa chọn 2: Khu chơi giải tr&iacute; Vinpearl Land</strong>&nbsp;(v&eacute; tham quan tự t&uacute;c).&nbsp;</p>\r\n\r\n<ul>\r\n	<li>Tr&ograve; chơi ngo&agrave;i trời: Đu quay cảm gi&aacute;c mạnh, đu quay d&acirc;y văng, đu quay th&uacute; nh&uacute;n, đu quay con voi, t&agrave;u lượn si&ecirc;u tốc, đu quay v&ograve;ng xoay, xe đạp bay, t&agrave;u hải tặc, th&agrave;nh phố vui nhộn, th&uacute; nh&uacute;n, xiếc th&uacute; (3 xuất/ng&agrave;y).</li>\r\n	<li>Tr&ograve; chơi trong nh&agrave;: Phim bốn chiều, xe đụng, vườn cổ t&iacute;ch, thi&ecirc;n đường trẻ em, si&ecirc;u thị game, ph&ograve;ng karaoke&hellip;</li>\r\n	<li>Khu thuỷ cung Vinpearland với diện t&iacute;ch tr&ecirc;n 3,400m2, l&agrave; đại dương thu nhỏ với hơn 300 lo&agrave;i c&aacute; đẹp, qu&yacute; hiếm v&agrave; lạ mắt.</li>\r\n	<li>Khu c&ocirc;ng vi&ecirc;n nước với c&aacute;c tr&ograve; chơi cảm gi&aacute;c mạnh: khu tr&ograve; chơi mạo hiểm, khu tr&ograve; chơi d&agrave;nh cho trẻ em, hồ tạo s&oacute;ng, d&ograve;ng s&ocirc;ng lười, khu tr&ograve; chơi gia đ&igrave;nh mạo hiểm&hellip;</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Tối:</strong>&nbsp;Qu&yacute; kh&aacute;ch tự t&uacute;c ăn tối, nghỉ đ&ecirc;m tại Nha Trang. Qu&yacute; kh&aacute;ch tự do dạo phố, chợ đ&ecirc;m hoặc thưởng thức Hải sản tại Khu Th&aacute;p B&agrave; (chi ph&iacute; tự t&uacute;c).</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>NG&Agrave;Y 2 |&nbsp;NHA TRANG&nbsp;&ndash;&nbsp;ĐẢO ĐIỆP SƠN &ndash; NHA TRANG&nbsp;(Ăn s&aacute;ng, trưa, chiều) (Xem th&ecirc;m) (Xem th&ecirc;m)</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>S&aacute;ng:&nbsp;</strong>D&ugrave;ng bữa s&aacute;ng.&nbsp;<br />\r\nQu&yacute; kh&aacute;ch khởi h&agrave;nh đi&nbsp;<strong>đảo Điệp Sơn</strong>, tr&ecirc;n đường đi qua những địa danh n&ocirc;i tiếng của tỉnh Kh&aacute;nh H&ograve;a: Vịnh Nha Phu, Ninh V&acirc;n Bay, H&ograve;n H&egrave;o, Đ&aacute; B&agrave;n, nghe hướng dẫn vi&ecirc;n thuyết minh về những ng&agrave;nh nghề truyền thống v&agrave; ng&agrave;nh nu&ocirc;i, trồng thủy sản, t&igrave;m hiểu những m&oacute;n đặc sản truyền thống của Kh&aacute;nh Ho&agrave;.<br />\r\nDừng ch&acirc;n tham quan&nbsp;<strong>Cầu Ngọc Trai</strong>&nbsp;hay c&ograve;n được gọi l&agrave; Cầu T&igrave;nh Y&ecirc;u, c&acirc;y cầu gỗ bắc ra biển d&agrave;i khoảng 300m v&ocirc; c&ugrave;ng độc đ&aacute;o với nhiều cảnh đẹp, nơi đ&acirc;y được nhiều du kh&aacute;ch chọn để l&agrave;m địa điểm chụp h&igrave;nh.<br />\r\nĐến Cảng Điệp Sơn, qu&yacute; kh&aacute;ch l&ecirc;n t&agrave;u bắt đầu h&agrave;nh tr&igrave;nh&nbsp;<strong>kh&aacute;m ph&aacute; đảo Điệp Sơn</strong>&nbsp;một trong những địa điểm du lịch l&yacute; tưởng cho những ai th&iacute;ch kh&aacute;m ph&aacute; biển đảo. Đảo Điệp Sơn dần hiện với biển hoang sơ, non nước hữu t&igrave;nh, c&oacute; n&uacute;i, biển, m&acirc;y trời, v&agrave; con đường giữa đại dương.<br />\r\nT&agrave;u cập bờ, qu&yacute; kh&aacute;ch t&igrave;m hiểu cuộc sống, tập tục của ngư d&acirc;n Điệp Sơn, chinh phục con đường m&ograve;n tr&ecirc;n biển v&ocirc; c&ugrave;ng độc đ&aacute;o v&agrave; th&uacute; vị d&agrave;i gần 700 m, nối liền hai h&ograve;n đảo của cụm đảo Điệp Sơn; con đường uốn lượn, rộng khoảng 1 m v&agrave; nằm s&acirc;u dưới mặt nước biển trong xanh chưa đến nửa m&eacute;t. Khi thủy triều r&uacute;t xuống con đường độc đ&aacute;o hiện ra đem lại cảm gi&aacute;c v&ocirc; c&ugrave;ng th&iacute;ch th&uacute;, xen lẫn hồi hộp v&agrave; một ch&uacute;t sợ h&atilde;i khi bước giữa đại dương bao la.<br />\r\nKh&aacute;m ph&aacute; một v&ograve;ng quanh c&aacute;c đảo với vẻ đẹp của những b&atilde;i biển hoang sơ c&aacute;t trắng, nước biển trong xanh, v&agrave; những c&aacute;nh đồng cỏ lau tuyệt đẹp.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Trưa:</strong>&nbsp;D&ugrave;ng cơm trưa, đo&agrave;n l&ecirc;n t&agrave;u rời đảo khởi h&agrave;nh về Nha Trang.<br />\r\nViếng&nbsp;<strong>nh&agrave; thờ đ&aacute;&nbsp;</strong>(Nh&agrave; thờ Ch&aacute;nh t&ograve;a Kit&ocirc; Vua) với n&eacute;t kiến tr&uacute;c độc đ&aacute;o mang đậm phong c&aacute;ch Ph&aacute;p.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Tối:&nbsp;</strong>D&ugrave;ng cơm tối, nghỉ đ&ecirc;m tại Nha Trang. Qu&yacute; kh&aacute;ch c&oacute; thể tự do dạo phố biển.&nbsp;</p>\r\n\r\n<p>NG&Agrave;Y 3 |&nbsp;NHA TRANG&nbsp;&ndash;&nbsp;TP.HCM (Ăn s&aacute;ng, trưa) (Xem th&ecirc;m) (Xem th&ecirc;m)</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>S&aacute;ng:&nbsp;</strong>D&ugrave;ng bữa s&aacute;ng. Đo&agrave;n khởi h&agrave;nh tham quan, mua sắm đặc sản tại trung t&acirc;m thương mại&nbsp;<strong>Chợ Đầm</strong>.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Trưa:&nbsp;</strong>Khởi h&agrave;nh về TP.HCM, tiếp tục đến Phan Thiết, d&ugrave;ng cơm trưa.</p>', 3, '2021-06-30 12:13:31', '2021-06-30 13:10:47'),
(4, '<p>NG&Agrave;Y 1 |&nbsp;NHA TRANG&nbsp;&ndash; VINPEARLAND &ndash; TẮM B&Ugrave;N KHO&Aacute;NG (Ăn s&aacute;ng, trưa, ăn tối tự t&uacute;c) (Xem th&ecirc;m) (Xem th&ecirc;m)</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>S&aacute;ng:</strong>&nbsp;D&ugrave;ng bữa s&aacute;ng.&nbsp;</p>\r\n\r\n<ul>\r\n	<li>Tham quan&nbsp;<strong>th&aacute;p B&agrave; Ponagar&nbsp;</strong>- một c&ocirc;ng tr&igrave;nh c&oacute; quy m&ocirc; lớn nhất v&agrave; c&oacute; vai tr&ograve; quan trọng trong lịch sử nghệ thuật kiến tr&uacute;c t&ocirc;n gi&aacute;o Chăm.</li>\r\n	<li>Viếng&nbsp;<strong>Ch&ugrave;a Long Sơn</strong>&nbsp;- ng&ocirc;i ch&ugrave;a nổi tiếng nhất Nha Trang. Đỉnh đồi l&agrave; bức tượng Kim Th&acirc;n Phật tổ (c&ograve;n gọi l&agrave; tượng Phật trắng) ngồi thuyết ph&aacute;p, tượng cao 21m, đ&agrave;i sen l&agrave;m đế cao 7m.</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Trưa:&nbsp;</strong>D&ugrave;ng cơm trưa, Qu&yacute; kh&aacute;ch c&oacute; thể chọn 1 trong 2 điểm tham quan sau:<br />\r\n<strong>*Lựa chọn 1:&nbsp;Khu du lịch suối kho&aacute;ng n&oacute;ng &ndash; massage cơ thể với hệ thống thủy lực zaccuzi, ng&acirc;m m&igrave;nh trong hồ kho&aacute;ng n&oacute;ng, tắm b&ugrave;n</strong>&nbsp;&hellip; (v&eacute; tham quan tự t&uacute;c).<br />\r\n<strong>*Lựa chọn 2: Khu chơi giải tr&iacute; Vinpearl Land</strong>&nbsp;(v&eacute; tham quan tự t&uacute;c).&nbsp;</p>\r\n\r\n<ul>\r\n	<li>Tr&ograve; chơi ngo&agrave;i trời: Đu quay cảm gi&aacute;c mạnh, đu quay d&acirc;y văng, đu quay th&uacute; nh&uacute;n, đu quay con voi, t&agrave;u lượn si&ecirc;u tốc, đu quay v&ograve;ng xoay, xe đạp bay, t&agrave;u hải tặc, th&agrave;nh phố vui nhộn, th&uacute; nh&uacute;n, xiếc th&uacute; (3 xuất/ng&agrave;y).</li>\r\n	<li>Tr&ograve; chơi trong nh&agrave;: Phim bốn chiều, xe đụng, vườn cổ t&iacute;ch, thi&ecirc;n đường trẻ em, si&ecirc;u thị game, ph&ograve;ng karaoke&hellip;</li>\r\n	<li>Khu thuỷ cung Vinpearland với diện t&iacute;ch tr&ecirc;n 3,400m2, l&agrave; đại dương thu nhỏ với hơn 300 lo&agrave;i c&aacute; đẹp, qu&yacute; hiếm v&agrave; lạ mắt.</li>\r\n	<li>Khu c&ocirc;ng vi&ecirc;n nước với c&aacute;c tr&ograve; chơi cảm gi&aacute;c mạnh: khu tr&ograve; chơi mạo hiểm, khu tr&ograve; chơi d&agrave;nh cho trẻ em, hồ tạo s&oacute;ng, d&ograve;ng s&ocirc;ng lười, khu tr&ograve; chơi gia đ&igrave;nh mạo hiểm&hellip;</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Tối:</strong>&nbsp;Qu&yacute; kh&aacute;ch tự t&uacute;c ăn tối, nghỉ đ&ecirc;m tại Nha Trang. Qu&yacute; kh&aacute;ch tự do dạo phố, chợ đ&ecirc;m hoặc thưởng thức Hải sản tại Khu Th&aacute;p B&agrave; (chi ph&iacute; tự t&uacute;c).</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>NG&Agrave;Y 2 |&nbsp;NHA TRANG&nbsp;&ndash;&nbsp;ĐẢO ĐIỆP SƠN &ndash; NHA TRANG&nbsp;(Ăn s&aacute;ng, trưa, chiều) (Xem th&ecirc;m) (Xem th&ecirc;m)</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>S&aacute;ng:&nbsp;</strong>D&ugrave;ng bữa s&aacute;ng.&nbsp;<br />\r\nQu&yacute; kh&aacute;ch khởi h&agrave;nh đi&nbsp;<strong>đảo Điệp Sơn</strong>, tr&ecirc;n đường đi qua những địa danh n&ocirc;i tiếng của tỉnh Kh&aacute;nh H&ograve;a: Vịnh Nha Phu, Ninh V&acirc;n Bay, H&ograve;n H&egrave;o, Đ&aacute; B&agrave;n, nghe hướng dẫn vi&ecirc;n thuyết minh về những ng&agrave;nh nghề truyền thống v&agrave; ng&agrave;nh nu&ocirc;i, trồng thủy sản, t&igrave;m hiểu những m&oacute;n đặc sản truyền thống của Kh&aacute;nh Ho&agrave;.<br />\r\nDừng ch&acirc;n tham quan&nbsp;<strong>Cầu Ngọc Trai</strong>&nbsp;hay c&ograve;n được gọi l&agrave; Cầu T&igrave;nh Y&ecirc;u, c&acirc;y cầu gỗ bắc ra biển d&agrave;i khoảng 300m v&ocirc; c&ugrave;ng độc đ&aacute;o với nhiều cảnh đẹp, nơi đ&acirc;y được nhiều du kh&aacute;ch chọn để l&agrave;m địa điểm chụp h&igrave;nh.<br />\r\nĐến Cảng Điệp Sơn, qu&yacute; kh&aacute;ch l&ecirc;n t&agrave;u bắt đầu h&agrave;nh tr&igrave;nh&nbsp;<strong>kh&aacute;m ph&aacute; đảo Điệp Sơn</strong>&nbsp;một trong những địa điểm du lịch l&yacute; tưởng cho những ai th&iacute;ch kh&aacute;m ph&aacute; biển đảo. Đảo Điệp Sơn dần hiện với biển hoang sơ, non nước hữu t&igrave;nh, c&oacute; n&uacute;i, biển, m&acirc;y trời, v&agrave; con đường giữa đại dương.<br />\r\nT&agrave;u cập bờ, qu&yacute; kh&aacute;ch t&igrave;m hiểu cuộc sống, tập tục của ngư d&acirc;n Điệp Sơn, chinh phục con đường m&ograve;n tr&ecirc;n biển v&ocirc; c&ugrave;ng độc đ&aacute;o v&agrave; th&uacute; vị d&agrave;i gần 700 m, nối liền hai h&ograve;n đảo của cụm đảo Điệp Sơn; con đường uốn lượn, rộng khoảng 1 m v&agrave; nằm s&acirc;u dưới mặt nước biển trong xanh chưa đến nửa m&eacute;t. Khi thủy triều r&uacute;t xuống con đường độc đ&aacute;o hiện ra đem lại cảm gi&aacute;c v&ocirc; c&ugrave;ng th&iacute;ch th&uacute;, xen lẫn hồi hộp v&agrave; một ch&uacute;t sợ h&atilde;i khi bước giữa đại dương bao la.<br />\r\nKh&aacute;m ph&aacute; một v&ograve;ng quanh c&aacute;c đảo với vẻ đẹp của những b&atilde;i biển hoang sơ c&aacute;t trắng, nước biển trong xanh, v&agrave; những c&aacute;nh đồng cỏ lau tuyệt đẹp.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Trưa:</strong>&nbsp;D&ugrave;ng cơm trưa, đo&agrave;n l&ecirc;n t&agrave;u rời đảo khởi h&agrave;nh về Nha Trang.<br />\r\nViếng&nbsp;<strong>nh&agrave; thờ đ&aacute;&nbsp;</strong>(Nh&agrave; thờ Ch&aacute;nh t&ograve;a Kit&ocirc; Vua) với n&eacute;t kiến tr&uacute;c độc đ&aacute;o mang đậm phong c&aacute;ch Ph&aacute;p.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Tối:&nbsp;</strong>D&ugrave;ng cơm tối, nghỉ đ&ecirc;m tại Nha Trang. Qu&yacute; kh&aacute;ch c&oacute; thể tự do dạo phố biển.&nbsp;</p>\r\n\r\n<p>NG&Agrave;Y 3 |&nbsp;NHA TRANG&nbsp;&ndash;&nbsp;TP.HCM (Ăn s&aacute;ng, trưa) (Xem th&ecirc;m) (Xem th&ecirc;m)</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>S&aacute;ng:&nbsp;</strong>D&ugrave;ng bữa s&aacute;ng. Đo&agrave;n khởi h&agrave;nh tham quan, mua sắm đặc sản tại trung t&acirc;m thương mại&nbsp;<strong>Chợ Đầm</strong>.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Trưa:&nbsp;</strong>Khởi h&agrave;nh về TP.HCM, tiếp tục đến Phan Thiết, d&ugrave;ng cơm trưa.</p>', 4, '2021-06-30 12:15:29', '2021-06-30 13:10:47'),
(5, '<p>NG&Agrave;Y 1 |&nbsp;NHA TRANG&nbsp;&ndash; VINPEARLAND &ndash; TẮM B&Ugrave;N KHO&Aacute;NG (Ăn s&aacute;ng, trưa, ăn tối tự t&uacute;c) (Xem th&ecirc;m) (Xem th&ecirc;m)</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>S&aacute;ng:</strong>&nbsp;D&ugrave;ng bữa s&aacute;ng.&nbsp;</p>\r\n\r\n<ul>\r\n	<li>Tham quan&nbsp;<strong>th&aacute;p B&agrave; Ponagar&nbsp;</strong>- một c&ocirc;ng tr&igrave;nh c&oacute; quy m&ocirc; lớn nhất v&agrave; c&oacute; vai tr&ograve; quan trọng trong lịch sử nghệ thuật kiến tr&uacute;c t&ocirc;n gi&aacute;o Chăm.</li>\r\n	<li>Viếng&nbsp;<strong>Ch&ugrave;a Long Sơn</strong>&nbsp;- ng&ocirc;i ch&ugrave;a nổi tiếng nhất Nha Trang. Đỉnh đồi l&agrave; bức tượng Kim Th&acirc;n Phật tổ (c&ograve;n gọi l&agrave; tượng Phật trắng) ngồi thuyết ph&aacute;p, tượng cao 21m, đ&agrave;i sen l&agrave;m đế cao 7m.</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Trưa:&nbsp;</strong>D&ugrave;ng cơm trưa, Qu&yacute; kh&aacute;ch c&oacute; thể chọn 1 trong 2 điểm tham quan sau:<br />\r\n<strong>*Lựa chọn 1:&nbsp;Khu du lịch suối kho&aacute;ng n&oacute;ng &ndash; massage cơ thể với hệ thống thủy lực zaccuzi, ng&acirc;m m&igrave;nh trong hồ kho&aacute;ng n&oacute;ng, tắm b&ugrave;n</strong>&nbsp;&hellip; (v&eacute; tham quan tự t&uacute;c).<br />\r\n<strong>*Lựa chọn 2: Khu chơi giải tr&iacute; Vinpearl Land</strong>&nbsp;(v&eacute; tham quan tự t&uacute;c).&nbsp;</p>\r\n\r\n<ul>\r\n	<li>Tr&ograve; chơi ngo&agrave;i trời: Đu quay cảm gi&aacute;c mạnh, đu quay d&acirc;y văng, đu quay th&uacute; nh&uacute;n, đu quay con voi, t&agrave;u lượn si&ecirc;u tốc, đu quay v&ograve;ng xoay, xe đạp bay, t&agrave;u hải tặc, th&agrave;nh phố vui nhộn, th&uacute; nh&uacute;n, xiếc th&uacute; (3 xuất/ng&agrave;y).</li>\r\n	<li>Tr&ograve; chơi trong nh&agrave;: Phim bốn chiều, xe đụng, vườn cổ t&iacute;ch, thi&ecirc;n đường trẻ em, si&ecirc;u thị game, ph&ograve;ng karaoke&hellip;</li>\r\n	<li>Khu thuỷ cung Vinpearland với diện t&iacute;ch tr&ecirc;n 3,400m2, l&agrave; đại dương thu nhỏ với hơn 300 lo&agrave;i c&aacute; đẹp, qu&yacute; hiếm v&agrave; lạ mắt.</li>\r\n	<li>Khu c&ocirc;ng vi&ecirc;n nước với c&aacute;c tr&ograve; chơi cảm gi&aacute;c mạnh: khu tr&ograve; chơi mạo hiểm, khu tr&ograve; chơi d&agrave;nh cho trẻ em, hồ tạo s&oacute;ng, d&ograve;ng s&ocirc;ng lười, khu tr&ograve; chơi gia đ&igrave;nh mạo hiểm&hellip;</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Tối:</strong>&nbsp;Qu&yacute; kh&aacute;ch tự t&uacute;c ăn tối, nghỉ đ&ecirc;m tại Nha Trang. Qu&yacute; kh&aacute;ch tự do dạo phố, chợ đ&ecirc;m hoặc thưởng thức Hải sản tại Khu Th&aacute;p B&agrave; (chi ph&iacute; tự t&uacute;c).</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>NG&Agrave;Y 2 |&nbsp;NHA TRANG&nbsp;&ndash;&nbsp;ĐẢO ĐIỆP SƠN &ndash; NHA TRANG&nbsp;(Ăn s&aacute;ng, trưa, chiều) (Xem th&ecirc;m) (Xem th&ecirc;m)</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>S&aacute;ng:&nbsp;</strong>D&ugrave;ng bữa s&aacute;ng.&nbsp;<br />\r\nQu&yacute; kh&aacute;ch khởi h&agrave;nh đi&nbsp;<strong>đảo Điệp Sơn</strong>, tr&ecirc;n đường đi qua những địa danh n&ocirc;i tiếng của tỉnh Kh&aacute;nh H&ograve;a: Vịnh Nha Phu, Ninh V&acirc;n Bay, H&ograve;n H&egrave;o, Đ&aacute; B&agrave;n, nghe hướng dẫn vi&ecirc;n thuyết minh về những ng&agrave;nh nghề truyền thống v&agrave; ng&agrave;nh nu&ocirc;i, trồng thủy sản, t&igrave;m hiểu những m&oacute;n đặc sản truyền thống của Kh&aacute;nh Ho&agrave;.<br />\r\nDừng ch&acirc;n tham quan&nbsp;<strong>Cầu Ngọc Trai</strong>&nbsp;hay c&ograve;n được gọi l&agrave; Cầu T&igrave;nh Y&ecirc;u, c&acirc;y cầu gỗ bắc ra biển d&agrave;i khoảng 300m v&ocirc; c&ugrave;ng độc đ&aacute;o với nhiều cảnh đẹp, nơi đ&acirc;y được nhiều du kh&aacute;ch chọn để l&agrave;m địa điểm chụp h&igrave;nh.<br />\r\nĐến Cảng Điệp Sơn, qu&yacute; kh&aacute;ch l&ecirc;n t&agrave;u bắt đầu h&agrave;nh tr&igrave;nh&nbsp;<strong>kh&aacute;m ph&aacute; đảo Điệp Sơn</strong>&nbsp;một trong những địa điểm du lịch l&yacute; tưởng cho những ai th&iacute;ch kh&aacute;m ph&aacute; biển đảo. Đảo Điệp Sơn dần hiện với biển hoang sơ, non nước hữu t&igrave;nh, c&oacute; n&uacute;i, biển, m&acirc;y trời, v&agrave; con đường giữa đại dương.<br />\r\nT&agrave;u cập bờ, qu&yacute; kh&aacute;ch t&igrave;m hiểu cuộc sống, tập tục của ngư d&acirc;n Điệp Sơn, chinh phục con đường m&ograve;n tr&ecirc;n biển v&ocirc; c&ugrave;ng độc đ&aacute;o v&agrave; th&uacute; vị d&agrave;i gần 700 m, nối liền hai h&ograve;n đảo của cụm đảo Điệp Sơn; con đường uốn lượn, rộng khoảng 1 m v&agrave; nằm s&acirc;u dưới mặt nước biển trong xanh chưa đến nửa m&eacute;t. Khi thủy triều r&uacute;t xuống con đường độc đ&aacute;o hiện ra đem lại cảm gi&aacute;c v&ocirc; c&ugrave;ng th&iacute;ch th&uacute;, xen lẫn hồi hộp v&agrave; một ch&uacute;t sợ h&atilde;i khi bước giữa đại dương bao la.<br />\r\nKh&aacute;m ph&aacute; một v&ograve;ng quanh c&aacute;c đảo với vẻ đẹp của những b&atilde;i biển hoang sơ c&aacute;t trắng, nước biển trong xanh, v&agrave; những c&aacute;nh đồng cỏ lau tuyệt đẹp.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Trưa:</strong>&nbsp;D&ugrave;ng cơm trưa, đo&agrave;n l&ecirc;n t&agrave;u rời đảo khởi h&agrave;nh về Nha Trang.<br />\r\nViếng&nbsp;<strong>nh&agrave; thờ đ&aacute;&nbsp;</strong>(Nh&agrave; thờ Ch&aacute;nh t&ograve;a Kit&ocirc; Vua) với n&eacute;t kiến tr&uacute;c độc đ&aacute;o mang đậm phong c&aacute;ch Ph&aacute;p.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Tối:&nbsp;</strong>D&ugrave;ng cơm tối, nghỉ đ&ecirc;m tại Nha Trang. Qu&yacute; kh&aacute;ch c&oacute; thể tự do dạo phố biển.&nbsp;</p>\r\n\r\n<p>NG&Agrave;Y 3 |&nbsp;NHA TRANG&nbsp;&ndash;&nbsp;TP.HCM (Ăn s&aacute;ng, trưa) (Xem th&ecirc;m) (Xem th&ecirc;m)</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>S&aacute;ng:&nbsp;</strong>D&ugrave;ng bữa s&aacute;ng. Đo&agrave;n khởi h&agrave;nh tham quan, mua sắm đặc sản tại trung t&acirc;m thương mại&nbsp;<strong>Chợ Đầm</strong>.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Trưa:&nbsp;</strong>Khởi h&agrave;nh về TP.HCM, tiếp tục đến Phan Thiết, d&ugrave;ng cơm trưa.</p>', 5, '2021-06-30 12:17:23', '2021-06-30 13:10:47'),
(6, '<p>NG&Agrave;Y 1 |&nbsp;NHA TRANG&nbsp;&ndash; VINPEARLAND &ndash; TẮM B&Ugrave;N KHO&Aacute;NG (Ăn s&aacute;ng, trưa, ăn tối tự t&uacute;c) (Xem th&ecirc;m) (Xem th&ecirc;m)</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>S&aacute;ng:</strong>&nbsp;D&ugrave;ng bữa s&aacute;ng.&nbsp;</p>\r\n\r\n<ul>\r\n	<li>Tham quan&nbsp;<strong>th&aacute;p B&agrave; Ponagar&nbsp;</strong>- một c&ocirc;ng tr&igrave;nh c&oacute; quy m&ocirc; lớn nhất v&agrave; c&oacute; vai tr&ograve; quan trọng trong lịch sử nghệ thuật kiến tr&uacute;c t&ocirc;n gi&aacute;o Chăm.</li>\r\n	<li>Viếng&nbsp;<strong>Ch&ugrave;a Long Sơn</strong>&nbsp;- ng&ocirc;i ch&ugrave;a nổi tiếng nhất Nha Trang. Đỉnh đồi l&agrave; bức tượng Kim Th&acirc;n Phật tổ (c&ograve;n gọi l&agrave; tượng Phật trắng) ngồi thuyết ph&aacute;p, tượng cao 21m, đ&agrave;i sen l&agrave;m đế cao 7m.</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Trưa:&nbsp;</strong>D&ugrave;ng cơm trưa, Qu&yacute; kh&aacute;ch c&oacute; thể chọn 1 trong 2 điểm tham quan sau:<br />\r\n<strong>*Lựa chọn 1:&nbsp;Khu du lịch suối kho&aacute;ng n&oacute;ng &ndash; massage cơ thể với hệ thống thủy lực zaccuzi, ng&acirc;m m&igrave;nh trong hồ kho&aacute;ng n&oacute;ng, tắm b&ugrave;n</strong>&nbsp;&hellip; (v&eacute; tham quan tự t&uacute;c).<br />\r\n<strong>*Lựa chọn 2: Khu chơi giải tr&iacute; Vinpearl Land</strong>&nbsp;(v&eacute; tham quan tự t&uacute;c).&nbsp;</p>\r\n\r\n<ul>\r\n	<li>Tr&ograve; chơi ngo&agrave;i trời: Đu quay cảm gi&aacute;c mạnh, đu quay d&acirc;y văng, đu quay th&uacute; nh&uacute;n, đu quay con voi, t&agrave;u lượn si&ecirc;u tốc, đu quay v&ograve;ng xoay, xe đạp bay, t&agrave;u hải tặc, th&agrave;nh phố vui nhộn, th&uacute; nh&uacute;n, xiếc th&uacute; (3 xuất/ng&agrave;y).</li>\r\n	<li>Tr&ograve; chơi trong nh&agrave;: Phim bốn chiều, xe đụng, vườn cổ t&iacute;ch, thi&ecirc;n đường trẻ em, si&ecirc;u thị game, ph&ograve;ng karaoke&hellip;</li>\r\n	<li>Khu thuỷ cung Vinpearland với diện t&iacute;ch tr&ecirc;n 3,400m2, l&agrave; đại dương thu nhỏ với hơn 300 lo&agrave;i c&aacute; đẹp, qu&yacute; hiếm v&agrave; lạ mắt.</li>\r\n	<li>Khu c&ocirc;ng vi&ecirc;n nước với c&aacute;c tr&ograve; chơi cảm gi&aacute;c mạnh: khu tr&ograve; chơi mạo hiểm, khu tr&ograve; chơi d&agrave;nh cho trẻ em, hồ tạo s&oacute;ng, d&ograve;ng s&ocirc;ng lười, khu tr&ograve; chơi gia đ&igrave;nh mạo hiểm&hellip;</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Tối:</strong>&nbsp;Qu&yacute; kh&aacute;ch tự t&uacute;c ăn tối, nghỉ đ&ecirc;m tại Nha Trang. Qu&yacute; kh&aacute;ch tự do dạo phố, chợ đ&ecirc;m hoặc thưởng thức Hải sản tại Khu Th&aacute;p B&agrave; (chi ph&iacute; tự t&uacute;c).</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>NG&Agrave;Y 2 |&nbsp;NHA TRANG&nbsp;&ndash;&nbsp;ĐẢO ĐIỆP SƠN &ndash; NHA TRANG&nbsp;(Ăn s&aacute;ng, trưa, chiều) (Xem th&ecirc;m) (Xem th&ecirc;m)</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>S&aacute;ng:&nbsp;</strong>D&ugrave;ng bữa s&aacute;ng.&nbsp;<br />\r\nQu&yacute; kh&aacute;ch khởi h&agrave;nh đi&nbsp;<strong>đảo Điệp Sơn</strong>, tr&ecirc;n đường đi qua những địa danh n&ocirc;i tiếng của tỉnh Kh&aacute;nh H&ograve;a: Vịnh Nha Phu, Ninh V&acirc;n Bay, H&ograve;n H&egrave;o, Đ&aacute; B&agrave;n, nghe hướng dẫn vi&ecirc;n thuyết minh về những ng&agrave;nh nghề truyền thống v&agrave; ng&agrave;nh nu&ocirc;i, trồng thủy sản, t&igrave;m hiểu những m&oacute;n đặc sản truyền thống của Kh&aacute;nh Ho&agrave;.<br />\r\nDừng ch&acirc;n tham quan&nbsp;<strong>Cầu Ngọc Trai</strong>&nbsp;hay c&ograve;n được gọi l&agrave; Cầu T&igrave;nh Y&ecirc;u, c&acirc;y cầu gỗ bắc ra biển d&agrave;i khoảng 300m v&ocirc; c&ugrave;ng độc đ&aacute;o với nhiều cảnh đẹp, nơi đ&acirc;y được nhiều du kh&aacute;ch chọn để l&agrave;m địa điểm chụp h&igrave;nh.<br />\r\nĐến Cảng Điệp Sơn, qu&yacute; kh&aacute;ch l&ecirc;n t&agrave;u bắt đầu h&agrave;nh tr&igrave;nh&nbsp;<strong>kh&aacute;m ph&aacute; đảo Điệp Sơn</strong>&nbsp;một trong những địa điểm du lịch l&yacute; tưởng cho những ai th&iacute;ch kh&aacute;m ph&aacute; biển đảo. Đảo Điệp Sơn dần hiện với biển hoang sơ, non nước hữu t&igrave;nh, c&oacute; n&uacute;i, biển, m&acirc;y trời, v&agrave; con đường giữa đại dương.<br />\r\nT&agrave;u cập bờ, qu&yacute; kh&aacute;ch t&igrave;m hiểu cuộc sống, tập tục của ngư d&acirc;n Điệp Sơn, chinh phục con đường m&ograve;n tr&ecirc;n biển v&ocirc; c&ugrave;ng độc đ&aacute;o v&agrave; th&uacute; vị d&agrave;i gần 700 m, nối liền hai h&ograve;n đảo của cụm đảo Điệp Sơn; con đường uốn lượn, rộng khoảng 1 m v&agrave; nằm s&acirc;u dưới mặt nước biển trong xanh chưa đến nửa m&eacute;t. Khi thủy triều r&uacute;t xuống con đường độc đ&aacute;o hiện ra đem lại cảm gi&aacute;c v&ocirc; c&ugrave;ng th&iacute;ch th&uacute;, xen lẫn hồi hộp v&agrave; một ch&uacute;t sợ h&atilde;i khi bước giữa đại dương bao la.<br />\r\nKh&aacute;m ph&aacute; một v&ograve;ng quanh c&aacute;c đảo với vẻ đẹp của những b&atilde;i biển hoang sơ c&aacute;t trắng, nước biển trong xanh, v&agrave; những c&aacute;nh đồng cỏ lau tuyệt đẹp.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Trưa:</strong>&nbsp;D&ugrave;ng cơm trưa, đo&agrave;n l&ecirc;n t&agrave;u rời đảo khởi h&agrave;nh về Nha Trang.<br />\r\nViếng&nbsp;<strong>nh&agrave; thờ đ&aacute;&nbsp;</strong>(Nh&agrave; thờ Ch&aacute;nh t&ograve;a Kit&ocirc; Vua) với n&eacute;t kiến tr&uacute;c độc đ&aacute;o mang đậm phong c&aacute;ch Ph&aacute;p.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Tối:&nbsp;</strong>D&ugrave;ng cơm tối, nghỉ đ&ecirc;m tại Nha Trang. Qu&yacute; kh&aacute;ch c&oacute; thể tự do dạo phố biển.&nbsp;</p>\r\n\r\n<p>NG&Agrave;Y 3 |&nbsp;NHA TRANG&nbsp;&ndash;&nbsp;TP.HCM (Ăn s&aacute;ng, trưa) (Xem th&ecirc;m) (Xem th&ecirc;m)</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>S&aacute;ng:&nbsp;</strong>D&ugrave;ng bữa s&aacute;ng. Đo&agrave;n khởi h&agrave;nh tham quan, mua sắm đặc sản tại trung t&acirc;m thương mại&nbsp;<strong>Chợ Đầm</strong>.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Trưa:&nbsp;</strong>Khởi h&agrave;nh về TP.HCM, tiếp tục đến Phan Thiết, d&ugrave;ng cơm trưa.</p>', 6, '2021-06-30 12:19:03', '2021-06-30 13:10:47'),
(7, '<p>NG&Agrave;Y 1 |&nbsp;NHA TRANG&nbsp;&ndash; VINPEARLAND &ndash; TẮM B&Ugrave;N KHO&Aacute;NG (Ăn s&aacute;ng, trưa, ăn tối tự t&uacute;c) (Xem th&ecirc;m) (Xem th&ecirc;m)</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>S&aacute;ng:</strong>&nbsp;D&ugrave;ng bữa s&aacute;ng.&nbsp;</p>\r\n\r\n<ul>\r\n	<li>Tham quan&nbsp;<strong>th&aacute;p B&agrave; Ponagar&nbsp;</strong>- một c&ocirc;ng tr&igrave;nh c&oacute; quy m&ocirc; lớn nhất v&agrave; c&oacute; vai tr&ograve; quan trọng trong lịch sử nghệ thuật kiến tr&uacute;c t&ocirc;n gi&aacute;o Chăm.</li>\r\n	<li>Viếng&nbsp;<strong>Ch&ugrave;a Long Sơn</strong>&nbsp;- ng&ocirc;i ch&ugrave;a nổi tiếng nhất Nha Trang. Đỉnh đồi l&agrave; bức tượng Kim Th&acirc;n Phật tổ (c&ograve;n gọi l&agrave; tượng Phật trắng) ngồi thuyết ph&aacute;p, tượng cao 21m, đ&agrave;i sen l&agrave;m đế cao 7m.</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Trưa:&nbsp;</strong>D&ugrave;ng cơm trưa, Qu&yacute; kh&aacute;ch c&oacute; thể chọn 1 trong 2 điểm tham quan sau:<br />\r\n<strong>*Lựa chọn 1:&nbsp;Khu du lịch suối kho&aacute;ng n&oacute;ng &ndash; massage cơ thể với hệ thống thủy lực zaccuzi, ng&acirc;m m&igrave;nh trong hồ kho&aacute;ng n&oacute;ng, tắm b&ugrave;n</strong>&nbsp;&hellip; (v&eacute; tham quan tự t&uacute;c).<br />\r\n<strong>*Lựa chọn 2: Khu chơi giải tr&iacute; Vinpearl Land</strong>&nbsp;(v&eacute; tham quan tự t&uacute;c).&nbsp;</p>\r\n\r\n<ul>\r\n	<li>Tr&ograve; chơi ngo&agrave;i trời: Đu quay cảm gi&aacute;c mạnh, đu quay d&acirc;y văng, đu quay th&uacute; nh&uacute;n, đu quay con voi, t&agrave;u lượn si&ecirc;u tốc, đu quay v&ograve;ng xoay, xe đạp bay, t&agrave;u hải tặc, th&agrave;nh phố vui nhộn, th&uacute; nh&uacute;n, xiếc th&uacute; (3 xuất/ng&agrave;y).</li>\r\n	<li>Tr&ograve; chơi trong nh&agrave;: Phim bốn chiều, xe đụng, vườn cổ t&iacute;ch, thi&ecirc;n đường trẻ em, si&ecirc;u thị game, ph&ograve;ng karaoke&hellip;</li>\r\n	<li>Khu thuỷ cung Vinpearland với diện t&iacute;ch tr&ecirc;n 3,400m2, l&agrave; đại dương thu nhỏ với hơn 300 lo&agrave;i c&aacute; đẹp, qu&yacute; hiếm v&agrave; lạ mắt.</li>\r\n	<li>Khu c&ocirc;ng vi&ecirc;n nước với c&aacute;c tr&ograve; chơi cảm gi&aacute;c mạnh: khu tr&ograve; chơi mạo hiểm, khu tr&ograve; chơi d&agrave;nh cho trẻ em, hồ tạo s&oacute;ng, d&ograve;ng s&ocirc;ng lười, khu tr&ograve; chơi gia đ&igrave;nh mạo hiểm&hellip;</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Tối:</strong>&nbsp;Qu&yacute; kh&aacute;ch tự t&uacute;c ăn tối, nghỉ đ&ecirc;m tại Nha Trang. Qu&yacute; kh&aacute;ch tự do dạo phố, chợ đ&ecirc;m hoặc thưởng thức Hải sản tại Khu Th&aacute;p B&agrave; (chi ph&iacute; tự t&uacute;c).</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>NG&Agrave;Y 2 |&nbsp;NHA TRANG&nbsp;&ndash;&nbsp;ĐẢO ĐIỆP SƠN &ndash; NHA TRANG&nbsp;(Ăn s&aacute;ng, trưa, chiều) (Xem th&ecirc;m) (Xem th&ecirc;m)</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>S&aacute;ng:&nbsp;</strong>D&ugrave;ng bữa s&aacute;ng.&nbsp;<br />\r\nQu&yacute; kh&aacute;ch khởi h&agrave;nh đi&nbsp;<strong>đảo Điệp Sơn</strong>, tr&ecirc;n đường đi qua những địa danh n&ocirc;i tiếng của tỉnh Kh&aacute;nh H&ograve;a: Vịnh Nha Phu, Ninh V&acirc;n Bay, H&ograve;n H&egrave;o, Đ&aacute; B&agrave;n, nghe hướng dẫn vi&ecirc;n thuyết minh về những ng&agrave;nh nghề truyền thống v&agrave; ng&agrave;nh nu&ocirc;i, trồng thủy sản, t&igrave;m hiểu những m&oacute;n đặc sản truyền thống của Kh&aacute;nh Ho&agrave;.<br />\r\nDừng ch&acirc;n tham quan&nbsp;<strong>Cầu Ngọc Trai</strong>&nbsp;hay c&ograve;n được gọi l&agrave; Cầu T&igrave;nh Y&ecirc;u, c&acirc;y cầu gỗ bắc ra biển d&agrave;i khoảng 300m v&ocirc; c&ugrave;ng độc đ&aacute;o với nhiều cảnh đẹp, nơi đ&acirc;y được nhiều du kh&aacute;ch chọn để l&agrave;m địa điểm chụp h&igrave;nh.<br />\r\nĐến Cảng Điệp Sơn, qu&yacute; kh&aacute;ch l&ecirc;n t&agrave;u bắt đầu h&agrave;nh tr&igrave;nh&nbsp;<strong>kh&aacute;m ph&aacute; đảo Điệp Sơn</strong>&nbsp;một trong những địa điểm du lịch l&yacute; tưởng cho những ai th&iacute;ch kh&aacute;m ph&aacute; biển đảo. Đảo Điệp Sơn dần hiện với biển hoang sơ, non nước hữu t&igrave;nh, c&oacute; n&uacute;i, biển, m&acirc;y trời, v&agrave; con đường giữa đại dương.<br />\r\nT&agrave;u cập bờ, qu&yacute; kh&aacute;ch t&igrave;m hiểu cuộc sống, tập tục của ngư d&acirc;n Điệp Sơn, chinh phục con đường m&ograve;n tr&ecirc;n biển v&ocirc; c&ugrave;ng độc đ&aacute;o v&agrave; th&uacute; vị d&agrave;i gần 700 m, nối liền hai h&ograve;n đảo của cụm đảo Điệp Sơn; con đường uốn lượn, rộng khoảng 1 m v&agrave; nằm s&acirc;u dưới mặt nước biển trong xanh chưa đến nửa m&eacute;t. Khi thủy triều r&uacute;t xuống con đường độc đ&aacute;o hiện ra đem lại cảm gi&aacute;c v&ocirc; c&ugrave;ng th&iacute;ch th&uacute;, xen lẫn hồi hộp v&agrave; một ch&uacute;t sợ h&atilde;i khi bước giữa đại dương bao la.<br />\r\nKh&aacute;m ph&aacute; một v&ograve;ng quanh c&aacute;c đảo với vẻ đẹp của những b&atilde;i biển hoang sơ c&aacute;t trắng, nước biển trong xanh, v&agrave; những c&aacute;nh đồng cỏ lau tuyệt đẹp.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Trưa:</strong>&nbsp;D&ugrave;ng cơm trưa, đo&agrave;n l&ecirc;n t&agrave;u rời đảo khởi h&agrave;nh về Nha Trang.<br />\r\nViếng&nbsp;<strong>nh&agrave; thờ đ&aacute;&nbsp;</strong>(Nh&agrave; thờ Ch&aacute;nh t&ograve;a Kit&ocirc; Vua) với n&eacute;t kiến tr&uacute;c độc đ&aacute;o mang đậm phong c&aacute;ch Ph&aacute;p.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Tối:&nbsp;</strong>D&ugrave;ng cơm tối, nghỉ đ&ecirc;m tại Nha Trang. Qu&yacute; kh&aacute;ch c&oacute; thể tự do dạo phố biển.&nbsp;</p>\r\n\r\n<p>NG&Agrave;Y 3 |&nbsp;NHA TRANG&nbsp;&ndash;&nbsp;TP.HCM (Ăn s&aacute;ng, trưa) (Xem th&ecirc;m) (Xem th&ecirc;m)</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>S&aacute;ng:&nbsp;</strong>D&ugrave;ng bữa s&aacute;ng. Đo&agrave;n khởi h&agrave;nh tham quan, mua sắm đặc sản tại trung t&acirc;m thương mại&nbsp;<strong>Chợ Đầm</strong>.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Trưa:&nbsp;</strong>Khởi h&agrave;nh về TP.HCM, tiếp tục đến Phan Thiết, d&ugrave;ng cơm trưa.</p>', 7, '2021-06-30 12:20:46', '2021-06-30 13:10:47'),
(8, '<p>NG&Agrave;Y 1 |&nbsp;NHA TRANG&nbsp;&ndash; VINPEARLAND &ndash; TẮM B&Ugrave;N KHO&Aacute;NG (Ăn s&aacute;ng, trưa, ăn tối tự t&uacute;c) (Xem th&ecirc;m) (Xem th&ecirc;m)</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>S&aacute;ng:</strong>&nbsp;D&ugrave;ng bữa s&aacute;ng.&nbsp;</p>\r\n\r\n<ul>\r\n	<li>Tham quan&nbsp;<strong>th&aacute;p B&agrave; Ponagar&nbsp;</strong>- một c&ocirc;ng tr&igrave;nh c&oacute; quy m&ocirc; lớn nhất v&agrave; c&oacute; vai tr&ograve; quan trọng trong lịch sử nghệ thuật kiến tr&uacute;c t&ocirc;n gi&aacute;o Chăm.</li>\r\n	<li>Viếng&nbsp;<strong>Ch&ugrave;a Long Sơn</strong>&nbsp;- ng&ocirc;i ch&ugrave;a nổi tiếng nhất Nha Trang. Đỉnh đồi l&agrave; bức tượng Kim Th&acirc;n Phật tổ (c&ograve;n gọi l&agrave; tượng Phật trắng) ngồi thuyết ph&aacute;p, tượng cao 21m, đ&agrave;i sen l&agrave;m đế cao 7m.</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Trưa:&nbsp;</strong>D&ugrave;ng cơm trưa, Qu&yacute; kh&aacute;ch c&oacute; thể chọn 1 trong 2 điểm tham quan sau:<br />\r\n<strong>*Lựa chọn 1:&nbsp;Khu du lịch suối kho&aacute;ng n&oacute;ng &ndash; massage cơ thể với hệ thống thủy lực zaccuzi, ng&acirc;m m&igrave;nh trong hồ kho&aacute;ng n&oacute;ng, tắm b&ugrave;n</strong>&nbsp;&hellip; (v&eacute; tham quan tự t&uacute;c).<br />\r\n<strong>*Lựa chọn 2: Khu chơi giải tr&iacute; Vinpearl Land</strong>&nbsp;(v&eacute; tham quan tự t&uacute;c).&nbsp;</p>\r\n\r\n<ul>\r\n	<li>Tr&ograve; chơi ngo&agrave;i trời: Đu quay cảm gi&aacute;c mạnh, đu quay d&acirc;y văng, đu quay th&uacute; nh&uacute;n, đu quay con voi, t&agrave;u lượn si&ecirc;u tốc, đu quay v&ograve;ng xoay, xe đạp bay, t&agrave;u hải tặc, th&agrave;nh phố vui nhộn, th&uacute; nh&uacute;n, xiếc th&uacute; (3 xuất/ng&agrave;y).</li>\r\n	<li>Tr&ograve; chơi trong nh&agrave;: Phim bốn chiều, xe đụng, vườn cổ t&iacute;ch, thi&ecirc;n đường trẻ em, si&ecirc;u thị game, ph&ograve;ng karaoke&hellip;</li>\r\n	<li>Khu thuỷ cung Vinpearland với diện t&iacute;ch tr&ecirc;n 3,400m2, l&agrave; đại dương thu nhỏ với hơn 300 lo&agrave;i c&aacute; đẹp, qu&yacute; hiếm v&agrave; lạ mắt.</li>\r\n	<li>Khu c&ocirc;ng vi&ecirc;n nước với c&aacute;c tr&ograve; chơi cảm gi&aacute;c mạnh: khu tr&ograve; chơi mạo hiểm, khu tr&ograve; chơi d&agrave;nh cho trẻ em, hồ tạo s&oacute;ng, d&ograve;ng s&ocirc;ng lười, khu tr&ograve; chơi gia đ&igrave;nh mạo hiểm&hellip;</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Tối:</strong>&nbsp;Qu&yacute; kh&aacute;ch tự t&uacute;c ăn tối, nghỉ đ&ecirc;m tại Nha Trang. Qu&yacute; kh&aacute;ch tự do dạo phố, chợ đ&ecirc;m hoặc thưởng thức Hải sản tại Khu Th&aacute;p B&agrave; (chi ph&iacute; tự t&uacute;c).</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>NG&Agrave;Y 2 |&nbsp;NHA TRANG&nbsp;&ndash;&nbsp;ĐẢO ĐIỆP SƠN &ndash; NHA TRANG&nbsp;(Ăn s&aacute;ng, trưa, chiều) (Xem th&ecirc;m) (Xem th&ecirc;m)</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>S&aacute;ng:&nbsp;</strong>D&ugrave;ng bữa s&aacute;ng.&nbsp;<br />\r\nQu&yacute; kh&aacute;ch khởi h&agrave;nh đi&nbsp;<strong>đảo Điệp Sơn</strong>, tr&ecirc;n đường đi qua những địa danh n&ocirc;i tiếng của tỉnh Kh&aacute;nh H&ograve;a: Vịnh Nha Phu, Ninh V&acirc;n Bay, H&ograve;n H&egrave;o, Đ&aacute; B&agrave;n, nghe hướng dẫn vi&ecirc;n thuyết minh về những ng&agrave;nh nghề truyền thống v&agrave; ng&agrave;nh nu&ocirc;i, trồng thủy sản, t&igrave;m hiểu những m&oacute;n đặc sản truyền thống của Kh&aacute;nh Ho&agrave;.<br />\r\nDừng ch&acirc;n tham quan&nbsp;<strong>Cầu Ngọc Trai</strong>&nbsp;hay c&ograve;n được gọi l&agrave; Cầu T&igrave;nh Y&ecirc;u, c&acirc;y cầu gỗ bắc ra biển d&agrave;i khoảng 300m v&ocirc; c&ugrave;ng độc đ&aacute;o với nhiều cảnh đẹp, nơi đ&acirc;y được nhiều du kh&aacute;ch chọn để l&agrave;m địa điểm chụp h&igrave;nh.<br />\r\nĐến Cảng Điệp Sơn, qu&yacute; kh&aacute;ch l&ecirc;n t&agrave;u bắt đầu h&agrave;nh tr&igrave;nh&nbsp;<strong>kh&aacute;m ph&aacute; đảo Điệp Sơn</strong>&nbsp;một trong những địa điểm du lịch l&yacute; tưởng cho những ai th&iacute;ch kh&aacute;m ph&aacute; biển đảo. Đảo Điệp Sơn dần hiện với biển hoang sơ, non nước hữu t&igrave;nh, c&oacute; n&uacute;i, biển, m&acirc;y trời, v&agrave; con đường giữa đại dương.<br />\r\nT&agrave;u cập bờ, qu&yacute; kh&aacute;ch t&igrave;m hiểu cuộc sống, tập tục của ngư d&acirc;n Điệp Sơn, chinh phục con đường m&ograve;n tr&ecirc;n biển v&ocirc; c&ugrave;ng độc đ&aacute;o v&agrave; th&uacute; vị d&agrave;i gần 700 m, nối liền hai h&ograve;n đảo của cụm đảo Điệp Sơn; con đường uốn lượn, rộng khoảng 1 m v&agrave; nằm s&acirc;u dưới mặt nước biển trong xanh chưa đến nửa m&eacute;t. Khi thủy triều r&uacute;t xuống con đường độc đ&aacute;o hiện ra đem lại cảm gi&aacute;c v&ocirc; c&ugrave;ng th&iacute;ch th&uacute;, xen lẫn hồi hộp v&agrave; một ch&uacute;t sợ h&atilde;i khi bước giữa đại dương bao la.<br />\r\nKh&aacute;m ph&aacute; một v&ograve;ng quanh c&aacute;c đảo với vẻ đẹp của những b&atilde;i biển hoang sơ c&aacute;t trắng, nước biển trong xanh, v&agrave; những c&aacute;nh đồng cỏ lau tuyệt đẹp.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Trưa:</strong>&nbsp;D&ugrave;ng cơm trưa, đo&agrave;n l&ecirc;n t&agrave;u rời đảo khởi h&agrave;nh về Nha Trang.<br />\r\nViếng&nbsp;<strong>nh&agrave; thờ đ&aacute;&nbsp;</strong>(Nh&agrave; thờ Ch&aacute;nh t&ograve;a Kit&ocirc; Vua) với n&eacute;t kiến tr&uacute;c độc đ&aacute;o mang đậm phong c&aacute;ch Ph&aacute;p.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Tối:&nbsp;</strong>D&ugrave;ng cơm tối, nghỉ đ&ecirc;m tại Nha Trang. Qu&yacute; kh&aacute;ch c&oacute; thể tự do dạo phố biển.&nbsp;</p>\r\n\r\n<p>NG&Agrave;Y 3 |&nbsp;NHA TRANG&nbsp;&ndash;&nbsp;TP.HCM (Ăn s&aacute;ng, trưa) (Xem th&ecirc;m) (Xem th&ecirc;m)</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>S&aacute;ng:&nbsp;</strong>D&ugrave;ng bữa s&aacute;ng. Đo&agrave;n khởi h&agrave;nh tham quan, mua sắm đặc sản tại trung t&acirc;m thương mại&nbsp;<strong>Chợ Đầm</strong>.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Trưa:&nbsp;</strong>Khởi h&agrave;nh về TP.HCM, tiếp tục đến Phan Thiết, d&ugrave;ng cơm trưa.</p>', 8, '2021-06-30 12:53:45', '2021-06-30 13:10:47');
INSERT INTO `tour_content_programs` (`id`, `content`, `tour_id`, `created_at`, `updated_at`) VALUES
(9, '<p>NG&Agrave;Y 1 |&nbsp;NHA TRANG&nbsp;&ndash; VINPEARLAND &ndash; TẮM B&Ugrave;N KHO&Aacute;NG (Ăn s&aacute;ng, trưa, ăn tối tự t&uacute;c) (Xem th&ecirc;m) (Xem th&ecirc;m)</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>S&aacute;ng:</strong>&nbsp;D&ugrave;ng bữa s&aacute;ng.&nbsp;</p>\r\n\r\n<ul>\r\n	<li>Tham quan&nbsp;<strong>th&aacute;p B&agrave; Ponagar&nbsp;</strong>- một c&ocirc;ng tr&igrave;nh c&oacute; quy m&ocirc; lớn nhất v&agrave; c&oacute; vai tr&ograve; quan trọng trong lịch sử nghệ thuật kiến tr&uacute;c t&ocirc;n gi&aacute;o Chăm.</li>\r\n	<li>Viếng&nbsp;<strong>Ch&ugrave;a Long Sơn</strong>&nbsp;- ng&ocirc;i ch&ugrave;a nổi tiếng nhất Nha Trang. Đỉnh đồi l&agrave; bức tượng Kim Th&acirc;n Phật tổ (c&ograve;n gọi l&agrave; tượng Phật trắng) ngồi thuyết ph&aacute;p, tượng cao 21m, đ&agrave;i sen l&agrave;m đế cao 7m.</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Trưa:&nbsp;</strong>D&ugrave;ng cơm trưa, Qu&yacute; kh&aacute;ch c&oacute; thể chọn 1 trong 2 điểm tham quan sau:<br />\r\n<strong>*Lựa chọn 1:&nbsp;Khu du lịch suối kho&aacute;ng n&oacute;ng &ndash; massage cơ thể với hệ thống thủy lực zaccuzi, ng&acirc;m m&igrave;nh trong hồ kho&aacute;ng n&oacute;ng, tắm b&ugrave;n</strong>&nbsp;&hellip; (v&eacute; tham quan tự t&uacute;c).<br />\r\n<strong>*Lựa chọn 2: Khu chơi giải tr&iacute; Vinpearl Land</strong>&nbsp;(v&eacute; tham quan tự t&uacute;c).&nbsp;</p>\r\n\r\n<ul>\r\n	<li>Tr&ograve; chơi ngo&agrave;i trời: Đu quay cảm gi&aacute;c mạnh, đu quay d&acirc;y văng, đu quay th&uacute; nh&uacute;n, đu quay con voi, t&agrave;u lượn si&ecirc;u tốc, đu quay v&ograve;ng xoay, xe đạp bay, t&agrave;u hải tặc, th&agrave;nh phố vui nhộn, th&uacute; nh&uacute;n, xiếc th&uacute; (3 xuất/ng&agrave;y).</li>\r\n	<li>Tr&ograve; chơi trong nh&agrave;: Phim bốn chiều, xe đụng, vườn cổ t&iacute;ch, thi&ecirc;n đường trẻ em, si&ecirc;u thị game, ph&ograve;ng karaoke&hellip;</li>\r\n	<li>Khu thuỷ cung Vinpearland với diện t&iacute;ch tr&ecirc;n 3,400m2, l&agrave; đại dương thu nhỏ với hơn 300 lo&agrave;i c&aacute; đẹp, qu&yacute; hiếm v&agrave; lạ mắt.</li>\r\n	<li>Khu c&ocirc;ng vi&ecirc;n nước với c&aacute;c tr&ograve; chơi cảm gi&aacute;c mạnh: khu tr&ograve; chơi mạo hiểm, khu tr&ograve; chơi d&agrave;nh cho trẻ em, hồ tạo s&oacute;ng, d&ograve;ng s&ocirc;ng lười, khu tr&ograve; chơi gia đ&igrave;nh mạo hiểm&hellip;</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Tối:</strong>&nbsp;Qu&yacute; kh&aacute;ch tự t&uacute;c ăn tối, nghỉ đ&ecirc;m tại Nha Trang. Qu&yacute; kh&aacute;ch tự do dạo phố, chợ đ&ecirc;m hoặc thưởng thức Hải sản tại Khu Th&aacute;p B&agrave; (chi ph&iacute; tự t&uacute;c).</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>NG&Agrave;Y 2 |&nbsp;NHA TRANG&nbsp;&ndash;&nbsp;ĐẢO ĐIỆP SƠN &ndash; NHA TRANG&nbsp;(Ăn s&aacute;ng, trưa, chiều) (Xem th&ecirc;m) (Xem th&ecirc;m)</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>S&aacute;ng:&nbsp;</strong>D&ugrave;ng bữa s&aacute;ng.&nbsp;<br />\r\nQu&yacute; kh&aacute;ch khởi h&agrave;nh đi&nbsp;<strong>đảo Điệp Sơn</strong>, tr&ecirc;n đường đi qua những địa danh n&ocirc;i tiếng của tỉnh Kh&aacute;nh H&ograve;a: Vịnh Nha Phu, Ninh V&acirc;n Bay, H&ograve;n H&egrave;o, Đ&aacute; B&agrave;n, nghe hướng dẫn vi&ecirc;n thuyết minh về những ng&agrave;nh nghề truyền thống v&agrave; ng&agrave;nh nu&ocirc;i, trồng thủy sản, t&igrave;m hiểu những m&oacute;n đặc sản truyền thống của Kh&aacute;nh Ho&agrave;.<br />\r\nDừng ch&acirc;n tham quan&nbsp;<strong>Cầu Ngọc Trai</strong>&nbsp;hay c&ograve;n được gọi l&agrave; Cầu T&igrave;nh Y&ecirc;u, c&acirc;y cầu gỗ bắc ra biển d&agrave;i khoảng 300m v&ocirc; c&ugrave;ng độc đ&aacute;o với nhiều cảnh đẹp, nơi đ&acirc;y được nhiều du kh&aacute;ch chọn để l&agrave;m địa điểm chụp h&igrave;nh.<br />\r\nĐến Cảng Điệp Sơn, qu&yacute; kh&aacute;ch l&ecirc;n t&agrave;u bắt đầu h&agrave;nh tr&igrave;nh&nbsp;<strong>kh&aacute;m ph&aacute; đảo Điệp Sơn</strong>&nbsp;một trong những địa điểm du lịch l&yacute; tưởng cho những ai th&iacute;ch kh&aacute;m ph&aacute; biển đảo. Đảo Điệp Sơn dần hiện với biển hoang sơ, non nước hữu t&igrave;nh, c&oacute; n&uacute;i, biển, m&acirc;y trời, v&agrave; con đường giữa đại dương.<br />\r\nT&agrave;u cập bờ, qu&yacute; kh&aacute;ch t&igrave;m hiểu cuộc sống, tập tục của ngư d&acirc;n Điệp Sơn, chinh phục con đường m&ograve;n tr&ecirc;n biển v&ocirc; c&ugrave;ng độc đ&aacute;o v&agrave; th&uacute; vị d&agrave;i gần 700 m, nối liền hai h&ograve;n đảo của cụm đảo Điệp Sơn; con đường uốn lượn, rộng khoảng 1 m v&agrave; nằm s&acirc;u dưới mặt nước biển trong xanh chưa đến nửa m&eacute;t. Khi thủy triều r&uacute;t xuống con đường độc đ&aacute;o hiện ra đem lại cảm gi&aacute;c v&ocirc; c&ugrave;ng th&iacute;ch th&uacute;, xen lẫn hồi hộp v&agrave; một ch&uacute;t sợ h&atilde;i khi bước giữa đại dương bao la.<br />\r\nKh&aacute;m ph&aacute; một v&ograve;ng quanh c&aacute;c đảo với vẻ đẹp của những b&atilde;i biển hoang sơ c&aacute;t trắng, nước biển trong xanh, v&agrave; những c&aacute;nh đồng cỏ lau tuyệt đẹp.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Trưa:</strong>&nbsp;D&ugrave;ng cơm trưa, đo&agrave;n l&ecirc;n t&agrave;u rời đảo khởi h&agrave;nh về Nha Trang.<br />\r\nViếng&nbsp;<strong>nh&agrave; thờ đ&aacute;&nbsp;</strong>(Nh&agrave; thờ Ch&aacute;nh t&ograve;a Kit&ocirc; Vua) với n&eacute;t kiến tr&uacute;c độc đ&aacute;o mang đậm phong c&aacute;ch Ph&aacute;p.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Tối:&nbsp;</strong>D&ugrave;ng cơm tối, nghỉ đ&ecirc;m tại Nha Trang. Qu&yacute; kh&aacute;ch c&oacute; thể tự do dạo phố biển.&nbsp;</p>\r\n\r\n<p>NG&Agrave;Y 3 |&nbsp;NHA TRANG&nbsp;&ndash;&nbsp;TP.HCM (Ăn s&aacute;ng, trưa) (Xem th&ecirc;m) (Xem th&ecirc;m)</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>S&aacute;ng:&nbsp;</strong>D&ugrave;ng bữa s&aacute;ng. Đo&agrave;n khởi h&agrave;nh tham quan, mua sắm đặc sản tại trung t&acirc;m thương mại&nbsp;<strong>Chợ Đầm</strong>.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Trưa:&nbsp;</strong>Khởi h&agrave;nh về TP.HCM, tiếp tục đến Phan Thiết, d&ugrave;ng cơm trưa.</p>', 9, '2021-06-30 12:58:55', '2021-06-30 13:10:47'),
(10, '<p>NG&Agrave;Y 1 |&nbsp;NHA TRANG&nbsp;&ndash; VINPEARLAND &ndash; TẮM B&Ugrave;N KHO&Aacute;NG (Ăn s&aacute;ng, trưa, ăn tối tự t&uacute;c) (Xem th&ecirc;m) (Xem th&ecirc;m)</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>S&aacute;ng:</strong>&nbsp;D&ugrave;ng bữa s&aacute;ng.&nbsp;</p>\r\n\r\n<ul>\r\n	<li>Tham quan&nbsp;<strong>th&aacute;p B&agrave; Ponagar&nbsp;</strong>- một c&ocirc;ng tr&igrave;nh c&oacute; quy m&ocirc; lớn nhất v&agrave; c&oacute; vai tr&ograve; quan trọng trong lịch sử nghệ thuật kiến tr&uacute;c t&ocirc;n gi&aacute;o Chăm.</li>\r\n	<li>Viếng&nbsp;<strong>Ch&ugrave;a Long Sơn</strong>&nbsp;- ng&ocirc;i ch&ugrave;a nổi tiếng nhất Nha Trang. Đỉnh đồi l&agrave; bức tượng Kim Th&acirc;n Phật tổ (c&ograve;n gọi l&agrave; tượng Phật trắng) ngồi thuyết ph&aacute;p, tượng cao 21m, đ&agrave;i sen l&agrave;m đế cao 7m.</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Trưa:&nbsp;</strong>D&ugrave;ng cơm trưa, Qu&yacute; kh&aacute;ch c&oacute; thể chọn 1 trong 2 điểm tham quan sau:<br />\r\n<strong>*Lựa chọn 1:&nbsp;Khu du lịch suối kho&aacute;ng n&oacute;ng &ndash; massage cơ thể với hệ thống thủy lực zaccuzi, ng&acirc;m m&igrave;nh trong hồ kho&aacute;ng n&oacute;ng, tắm b&ugrave;n</strong>&nbsp;&hellip; (v&eacute; tham quan tự t&uacute;c).<br />\r\n<strong>*Lựa chọn 2: Khu chơi giải tr&iacute; Vinpearl Land</strong>&nbsp;(v&eacute; tham quan tự t&uacute;c).&nbsp;</p>\r\n\r\n<ul>\r\n	<li>Tr&ograve; chơi ngo&agrave;i trời: Đu quay cảm gi&aacute;c mạnh, đu quay d&acirc;y văng, đu quay th&uacute; nh&uacute;n, đu quay con voi, t&agrave;u lượn si&ecirc;u tốc, đu quay v&ograve;ng xoay, xe đạp bay, t&agrave;u hải tặc, th&agrave;nh phố vui nhộn, th&uacute; nh&uacute;n, xiếc th&uacute; (3 xuất/ng&agrave;y).</li>\r\n	<li>Tr&ograve; chơi trong nh&agrave;: Phim bốn chiều, xe đụng, vườn cổ t&iacute;ch, thi&ecirc;n đường trẻ em, si&ecirc;u thị game, ph&ograve;ng karaoke&hellip;</li>\r\n	<li>Khu thuỷ cung Vinpearland với diện t&iacute;ch tr&ecirc;n 3,400m2, l&agrave; đại dương thu nhỏ với hơn 300 lo&agrave;i c&aacute; đẹp, qu&yacute; hiếm v&agrave; lạ mắt.</li>\r\n	<li>Khu c&ocirc;ng vi&ecirc;n nước với c&aacute;c tr&ograve; chơi cảm gi&aacute;c mạnh: khu tr&ograve; chơi mạo hiểm, khu tr&ograve; chơi d&agrave;nh cho trẻ em, hồ tạo s&oacute;ng, d&ograve;ng s&ocirc;ng lười, khu tr&ograve; chơi gia đ&igrave;nh mạo hiểm&hellip;</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Tối:</strong>&nbsp;Qu&yacute; kh&aacute;ch tự t&uacute;c ăn tối, nghỉ đ&ecirc;m tại Nha Trang. Qu&yacute; kh&aacute;ch tự do dạo phố, chợ đ&ecirc;m hoặc thưởng thức Hải sản tại Khu Th&aacute;p B&agrave; (chi ph&iacute; tự t&uacute;c).</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>NG&Agrave;Y 2 |&nbsp;NHA TRANG&nbsp;&ndash;&nbsp;ĐẢO ĐIỆP SƠN &ndash; NHA TRANG&nbsp;(Ăn s&aacute;ng, trưa, chiều) (Xem th&ecirc;m) (Xem th&ecirc;m)</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>S&aacute;ng:&nbsp;</strong>D&ugrave;ng bữa s&aacute;ng.&nbsp;<br />\r\nQu&yacute; kh&aacute;ch khởi h&agrave;nh đi&nbsp;<strong>đảo Điệp Sơn</strong>, tr&ecirc;n đường đi qua những địa danh n&ocirc;i tiếng của tỉnh Kh&aacute;nh H&ograve;a: Vịnh Nha Phu, Ninh V&acirc;n Bay, H&ograve;n H&egrave;o, Đ&aacute; B&agrave;n, nghe hướng dẫn vi&ecirc;n thuyết minh về những ng&agrave;nh nghề truyền thống v&agrave; ng&agrave;nh nu&ocirc;i, trồng thủy sản, t&igrave;m hiểu những m&oacute;n đặc sản truyền thống của Kh&aacute;nh Ho&agrave;.<br />\r\nDừng ch&acirc;n tham quan&nbsp;<strong>Cầu Ngọc Trai</strong>&nbsp;hay c&ograve;n được gọi l&agrave; Cầu T&igrave;nh Y&ecirc;u, c&acirc;y cầu gỗ bắc ra biển d&agrave;i khoảng 300m v&ocirc; c&ugrave;ng độc đ&aacute;o với nhiều cảnh đẹp, nơi đ&acirc;y được nhiều du kh&aacute;ch chọn để l&agrave;m địa điểm chụp h&igrave;nh.<br />\r\nĐến Cảng Điệp Sơn, qu&yacute; kh&aacute;ch l&ecirc;n t&agrave;u bắt đầu h&agrave;nh tr&igrave;nh&nbsp;<strong>kh&aacute;m ph&aacute; đảo Điệp Sơn</strong>&nbsp;một trong những địa điểm du lịch l&yacute; tưởng cho những ai th&iacute;ch kh&aacute;m ph&aacute; biển đảo. Đảo Điệp Sơn dần hiện với biển hoang sơ, non nước hữu t&igrave;nh, c&oacute; n&uacute;i, biển, m&acirc;y trời, v&agrave; con đường giữa đại dương.<br />\r\nT&agrave;u cập bờ, qu&yacute; kh&aacute;ch t&igrave;m hiểu cuộc sống, tập tục của ngư d&acirc;n Điệp Sơn, chinh phục con đường m&ograve;n tr&ecirc;n biển v&ocirc; c&ugrave;ng độc đ&aacute;o v&agrave; th&uacute; vị d&agrave;i gần 700 m, nối liền hai h&ograve;n đảo của cụm đảo Điệp Sơn; con đường uốn lượn, rộng khoảng 1 m v&agrave; nằm s&acirc;u dưới mặt nước biển trong xanh chưa đến nửa m&eacute;t. Khi thủy triều r&uacute;t xuống con đường độc đ&aacute;o hiện ra đem lại cảm gi&aacute;c v&ocirc; c&ugrave;ng th&iacute;ch th&uacute;, xen lẫn hồi hộp v&agrave; một ch&uacute;t sợ h&atilde;i khi bước giữa đại dương bao la.<br />\r\nKh&aacute;m ph&aacute; một v&ograve;ng quanh c&aacute;c đảo với vẻ đẹp của những b&atilde;i biển hoang sơ c&aacute;t trắng, nước biển trong xanh, v&agrave; những c&aacute;nh đồng cỏ lau tuyệt đẹp.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Trưa:</strong>&nbsp;D&ugrave;ng cơm trưa, đo&agrave;n l&ecirc;n t&agrave;u rời đảo khởi h&agrave;nh về Nha Trang.<br />\r\nViếng&nbsp;<strong>nh&agrave; thờ đ&aacute;&nbsp;</strong>(Nh&agrave; thờ Ch&aacute;nh t&ograve;a Kit&ocirc; Vua) với n&eacute;t kiến tr&uacute;c độc đ&aacute;o mang đậm phong c&aacute;ch Ph&aacute;p.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Tối:&nbsp;</strong>D&ugrave;ng cơm tối, nghỉ đ&ecirc;m tại Nha Trang. Qu&yacute; kh&aacute;ch c&oacute; thể tự do dạo phố biển.&nbsp;</p>\r\n\r\n<p>NG&Agrave;Y 3 |&nbsp;NHA TRANG&nbsp;&ndash;&nbsp;TP.HCM (Ăn s&aacute;ng, trưa) (Xem th&ecirc;m) (Xem th&ecirc;m)</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>S&aacute;ng:&nbsp;</strong>D&ugrave;ng bữa s&aacute;ng. Đo&agrave;n khởi h&agrave;nh tham quan, mua sắm đặc sản tại trung t&acirc;m thương mại&nbsp;<strong>Chợ Đầm</strong>.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Trưa:&nbsp;</strong>Khởi h&agrave;nh về TP.HCM, tiếp tục đến Phan Thiết, d&ugrave;ng cơm trưa.</p>', 10, '2021-06-30 13:07:25', '2021-06-30 13:10:47'),
(11, '<p>NG&Agrave;Y 1 |&nbsp;TP.HCM &ndash; THIỀN VIỆN TR&Uacute;C L&Acirc;M - Đ&Agrave; LẠT (ăn s&aacute;ng, trưa, chiều)</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>S&aacute;ng:&nbsp;Xe v&agrave; Hướng Dẫn Vi&ecirc;n Du Lịch Việt đ&oacute;n Qu&yacute; kh&aacute;ch tại điểm hẹn khởi h&agrave;nh đi Đ&agrave; Lạt.&nbsp;</strong></p>\r\n\r\n<ul>\r\n	<li>Đo&agrave;n d&ugrave;ng bữa s&aacute;ng tại Ng&atilde; Ba Dầu D&acirc;y. Đo&agrave;n tiếp tục khởi h&agrave;nh đến TP. Đ&agrave; Lạt.</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Trưa:&nbsp; D&ugrave;ng cơm trưa tại nh&agrave; h&agrave;ng.</strong></p>\r\n\r\n<ul>\r\n	<li>Tham quan Thiền Viện Tr&uacute;c L&acirc;m, đi c&aacute;p treo qua đồi R&ocirc;bin (chi ph&iacute; tự t&uacute;c), ngắm cảnh rừng th&ocirc;ng, hồ Tuyền L&acirc;m, n&uacute;i Phượng Ho&agrave;ng từ tr&ecirc;n cao.</li>\r\n	<li>Đo&agrave;n đến Đ&agrave; Lạt, đến Quảng trường L&acirc;m Vi&ecirc;n với tuyệt t&aacute;c kiến tr&uacute;c bằng k&iacute;nh: B&ocirc;ng Hoa D&atilde; Quỳ v&agrave; Nụ Hoa Atiso.&nbsp;&nbsp; &nbsp;</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Tối: D&ugrave;ng cơm tối, nhận ph&ograve;ng nghỉ ngơi</strong></p>\r\n\r\n<ul>\r\n	<li>Qu&yacute; kh&aacute;ch tự t&uacute;c dạo th&agrave;nh phố Đ&agrave; Lạt về đ&ecirc;m, ngắm cảnh Hồ Xu&acirc;n Hương, thưởng thức hương vị c&agrave; ph&ecirc; phố n&uacute;i (chi ph&iacute; tự t&uacute;c). Nghỉ đ&ecirc;m kh&aacute;ch sạn tại Đ&agrave; Lạt.</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>NG&Agrave;Y 2 |&nbsp;QU&Ecirc; GARDEN &ndash; Đ&Agrave; LẠT VIEW &ndash; KIM NG&Acirc;N HILLS ( Ăn s&aacute;ng, trưa, chiều) (Xem th&ecirc;m)</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>S&aacute;ng:&nbsp;&nbsp; &nbsp;D&ugrave;ng bữa s&aacute;ng.</strong></p>\r\n\r\n<ul>\r\n	<li>Đo&agrave;n kh&aacute;m ph&aacute; Qu&ecirc; Garden, khu vườn đặc biệt mang lối kiến tr&uacute;c Nhật Bản nằm giữa cao nguy&ecirc;n L&acirc;m Vi&ecirc;n. Nơi đ&acirc;y tự h&agrave;o l&agrave; khu vườn bonsai l&aacute; kim lớn nhất Việt Nam, kết hợp với sắc hoa nổi tiếng của Đ&agrave; Lạt, được bao bọc xung quanh bởi những c&aacute;nh rừng th&ocirc;ng xanh bạt ng&agrave;n. B&ecirc;n cạnh đ&oacute;, Qu&yacute; kh&aacute;ch nhất định kh&ocirc;ng thể bỏ qua những hồ c&aacute; Koi, với h&agrave;ng ng&agrave;n ch&uacute; c&aacute; đầy m&agrave;u sắc, biểu tượng của xứ sở Ph&ugrave; Tang, chắc chắn sẽ mang đến một kh&ocirc;ng gian thư th&aacute;i, h&ograve;a quyện c&ugrave;ng thi&ecirc;n nhi&ecirc;n.</li>\r\n	<li>Tham quan Ch&ugrave;a T&agrave;u (Thi&ecirc;n Vương Cổ S&aacute;t), ng&ocirc;i ch&ugrave;a cổ k&iacute;nh bậc nhất Đ&agrave; Lạt. Được x&acirc;y dựng theo phong c&aacute;ch Ch&ugrave;a Hoa kết hợp với hội qu&aacute;n tạo n&ecirc;n một quần thể kiến tr&uacute;c độc đ&aacute;o v&agrave; đặc trưng ri&ecirc;ng biệt. B&ecirc;n trong Quang Minh Bảo Điện thờ T&acirc;y Phương Tam Th&aacute;nh gồm: A Di Đ&agrave;, Quan Thế &Acirc;m Bồ T&aacute;t v&agrave; Đại Thế Ch&iacute; Bồ T&aacute;t. Ba pho tượng cao 4m, nặng khoảng 1500kg v&agrave; được l&agrave;m từ gỗ trầm hương qu&yacute; hiếm</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Trưa:&nbsp;&nbsp; &nbsp;D&ugrave;ng bữa trưa.</strong></p>\r\n\r\n<ul>\r\n	<li>Đo&agrave;n đến với Đ&agrave; Lạt View Cafe, với h&igrave;nh ảnh Cổng trời thứ 2 ph&aacute; c&aacute;ch, độc đ&aacute;o. Qu&yacute; kh&aacute;ch c&oacute; thể thưởng thức một ly caf&eacute; thơm ngon, chụp ngay v&agrave;i bức h&igrave;nh checkin tr&ecirc;n chiếc cầu t&igrave;nh duy&ecirc;n m&agrave;u đỏ bắt ngang qua rừng th&ocirc;ng tuyệt đẹp để khoe với bạn b&egrave;, người th&acirc;n.</li>\r\n	<li>Tiếp tục tham quan khu du lịch Kim Ng&acirc;n Hills, ng&ocirc;i l&agrave;ng Ch&acirc;u &Acirc;u thu nhỏ mang phong c&aacute;ch cổ điển, c&ugrave;ng cảnh quan thơ mộng, tiết trời se lạnh, mang đến cho Qu&yacute; kh&aacute;ch cảm gi&aacute;c như đang lạc tới một v&ugrave;ng đất Ch&acirc;u &Acirc;u n&agrave;o đ&oacute;. Nơi đ&acirc;y nổi bật với vườn th&uacute; đang nu&ocirc;i giữ nhiều loại động vật độc lạ như: ngựa l&ugrave;n Ponny, hươu sao, cừu Valais, ch&oacute; Corgi, lạc đ&agrave; Alpace&hellip; Khu vườn chim Avira lớn nhất tỉnh L&acirc;m Đồng với hơn 50 lo&agrave;i chim bản địa, v&ugrave;ng miền kh&aacute;c nhau.&nbsp;</li>\r\n	<li>Đặc biệt, Kim Ng&acirc;n Hills c&ograve;n thu h&uacute;t Qu&yacute; kh&aacute;ch bằng h&igrave;nh ảnh cung đường ẩm thực &ldquo;K&iacute; ức thời bao cấp&rdquo; t&aacute;i hiện sinh động nhịp sống ở Việt Nam giai đoạn 1976-1986 với nhiều m&oacute;n ăn truyền thống, đậm chất hương vị đồng qu&ecirc;.</li>\r\n	<li>Tham quan Nh&agrave; Thờ Domaine nằm tr&ecirc;n ngọn đồi nhiều hoa anh đ&agrave;o, đ&acirc;y l&agrave; một điểm đến ti&ecirc;u biểu g&acirc;y ấn tượng với du kh&aacute;ch bởi quần thể kiến tr&uacute;c Ph&aacute;p cổ k&iacute;nh từ thế kỷ thứ XVII.</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Tối:&nbsp;&nbsp; &nbsp;D&ugrave;ng cơm tối.&nbsp;</strong></p>\r\n\r\n<ul>\r\n	<li>Tự do dạo phố n&uacute;i, v&agrave; mua sắm đặc sản tại chợ đ&ecirc;m Đ&agrave; Lạt. Nghỉ đ&ecirc;m tại Đ&agrave; Lạt.</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>NG&Agrave;Y 3 |&nbsp;Đ&Agrave; LẠT &ndash; TP.HCM (ăn s&aacute;ng, trưa) (Xem th&ecirc;m)</p>\r\n\r\n<p>Dịch vụ bao gồm v&agrave; kh&ocirc;ng bao gồm</p>\r\n\r\n<p>(Đo&agrave;n tối thiểu 10 kh&aacute;ch khởi h&agrave;nh)<br />\r\n<strong>Gi&aacute; tour bao g&ocirc;̀m:</strong><br />\r\n-&nbsp;&nbsp; &nbsp; Xe tham quan (xe 16 chỗ, 29 chỗ, 35 chỗ, 45 chỗ) t&ugrave;y theo số lượng kh&aacute;ch thực tế tr&ecirc;n chuyến đi..<br />\r\n-&nbsp;&nbsp; &nbsp;Ăn các bữa ăn theo chương trình:<br />\r\n+ Ăn s&aacute;ng: 3 bữa s&aacute;ng (1 m&oacute;n ăn, 1 phần nước).<br />\r\n+ Ăn ch&iacute;nh: 5 bữa ch&iacute;nh ti&ecirc;u chuẩn 140.000đ ~ 150.000đ/ bữa&nbsp;<br />\r\n-&nbsp;&nbsp; &nbsp;Kh&aacute;ch sạn 2 sao: Trung Nh&acirc;n, Sweet Lavender, ... (hoặc tương đương) đầy đủ tiện nghi, ph&ograve;ng 4 (4 kh&aacute;ch/ ph&ograve;ng).&nbsp;<br />\r\n-&nbsp;&nbsp; &nbsp;Ph&ograve;ng 2:&nbsp;<br />\r\n+ Nếu ở 2 kh&aacute;ch/ ph&ograve;ng, phụ thu 100.000đ/ kh&aacute;ch.<br />\r\n+ Nếu ở 1 kh&aacute;ch/ ph&ograve;ng, phụ thu 1.000.000đ.<br />\r\n-&nbsp;&nbsp; &nbsp;Ph&ograve;ng 3:&nbsp;<br />\r\n+ Ph&ograve;ng 3 nếu ở 2 kh&aacute;ch/ ph&ograve;ng, phụ thu th&ecirc;m 200.000đ/ kh&aacute;ch.<br />\r\n+ Ph&ograve;ng 3 nếu ở 1 kh&aacute;ch/ ph&ograve;ng, phụ thu th&ecirc;m 1.400.000đ/ kh&aacute;ch.<br />\r\n-&nbsp;&nbsp; &nbsp;Ph&ograve;ng 4:&nbsp;<br />\r\n+ Ph&ograve;ng 4 nếu ở 3 kh&aacute;ch/ ph&ograve;ng, phụ thu th&ecirc;m 100.000đ/ kh&aacute;ch.<br />\r\n+ Ph&ograve;ng 4 nếu ở 2 kh&aacute;ch/ ph&ograve;ng, phụ thu th&ecirc;m 600.000đ/ kh&aacute;ch.<br />\r\n+ Ph&ograve;ng 4 nếu ở 1 kh&aacute;ch/ ph&ograve;ng, phụ thu th&ecirc;m 2.200.000đ/ kh&aacute;ch.<br />\r\n-&nbsp;&nbsp; &nbsp;Hướng dẫn vi&ecirc;n tiếng Việt nhiệt t&igrave;nh phục vụ đoàn ăn nghỉ suốt tuyến.<br />\r\n-&nbsp;&nbsp; &nbsp;V&eacute; tham quan theo chương tr&igrave;nh.<br />\r\n-&nbsp;&nbsp; &nbsp;Quý khách được phục vụ nước u&ocirc;́ng tr&ecirc;n xe 02 chai/khách/ngày.<br />\r\n-&nbsp;&nbsp; &nbsp;Quý khách được tặng 01 mũ Du Lịch Vi&ecirc;̣t.&nbsp;<br />\r\n-&nbsp;&nbsp; &nbsp;Bảo hiểm trọn tour mức bồi thường cao nhất 100,000,000đ/trường hợp. Kh&ocirc;ng &aacute;p dụng cho kh&aacute;ch từ 80 tuổi trở l&ecirc;n.<br />\r\n<strong>&nbsp;Gi&aacute; tour kh&ocirc;ng bao g&ocirc;̀m:</strong><br />\r\n-&nbsp;&nbsp; &nbsp;Ăn uống, tham quan, caf&eacute;, vận chuyển ngo&agrave;i chương tr&igrave;nh.<br />\r\n-&nbsp;&nbsp; &nbsp;Bồi dưỡng hướng dẫn vi&ecirc;n v&agrave; t&agrave;i xế.<br />\r\n-&nbsp;&nbsp; &nbsp;Phụ ph&iacute; ph&ograve;ng đơn, phụ ph&iacute; người nước ngo&agrave;i.<br />\r\n-&nbsp;&nbsp; &nbsp;Thuế VAT.</p>', 11, '2021-06-30 13:22:09', '2021-06-30 13:22:09'),
(12, '<p>NG&Agrave;Y 1 |&nbsp;TP. HCM &ndash; TIỀN GIANG &ndash; MỸ THO &ndash; CẦN THƠ (Ăn s&aacute;ng, trưa, chiều)</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>S&aacute;ng&nbsp;&nbsp; &nbsp;Xe v&agrave; Hướng Dẫn Vi&ecirc;n C&ocirc;ng Ty Du Lịch Việt đ&oacute;n Qu&yacute; kh&aacute;ch tại điểm hẹn.</strong></p>\r\n\r\n<ul>\r\n	<li>Khởi h&agrave;nh đi Mỹ Tho.</li>\r\n	<li>Qu&yacute; kh&aacute;ch d&ugrave;ng bữa s&aacute;ng tại Trung Lương. Tiếp tục lộ tr&igrave;nh gh&eacute; tham quan ch&ugrave;a Vĩnh Tr&agrave;ng với lối kiến tr&uacute;c kết hợp Ch&acirc;u &Acirc;u v&agrave; Ch&acirc;u &Aacute;.</li>\r\n	<li>Đo&agrave;n xuống bến đ&ograve; 30/04, Qu&yacute; kh&aacute;ch xuống thuyền thưởng ngoạn cảnh s&ocirc;ng nước miền T&acirc;y Nam Bộ với 4 c&ugrave; lao: Long, L&acirc;n , Quy, Phụng, thưởng thức hương vị ngọt ng&agrave;o của tr&aacute;i dừa xi&ecirc;m.</li>\r\n	<li>Thuyền đưa đo&agrave;n đi tham quan c&ugrave; lao Thới Sơn, đi bộ tr&ecirc;n đường l&agrave;ng, tham quan trại nu&ocirc;i ong mật, uống tr&agrave; mật ong, thưởng thức c&aacute;c loại mứt đặc sản. Tham quan vườn c&acirc;y ăn tr&aacute;i, thưởng thức c&aacute;c loại tr&aacute;i c&acirc;y tại vườn, nghe nhạc t&agrave;i tử Nam Bộ. Đi xuồng ch&egrave;o trong rạch dừa nước thi&ecirc;n nhi&ecirc;n.</li>\r\n	<li>Thuyền lớn đưa kh&aacute;ch sang Bến Tre tham quan l&ograve; kẹo dừa nổi tiếng Bến Tre.</li>\r\n	<li>Tham quan Cồn Phụng ( Di t&iacute;ch &Ocirc;ng Đạo Dừa).</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Trưa&nbsp;&nbsp; &nbsp;D&ugrave;ng cơm trưa.&nbsp;&nbsp; &nbsp;</strong></p>\r\n\r\n<ul>\r\n	<li>Thuyền đưa du kh&aacute;ch trở lại Bến T&agrave;u 30/4, khởi h&agrave;nh đi Cần Thơ.</li>\r\n	<li>Chiều &nbsp;D&ugrave;ng cơm chiều.</li>\r\n	<li>Nghỉ đ&ecirc;m kh&aacute;ch sạn tại Cần Thơ.</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>NG&Agrave;Y 2 |&nbsp;CHỢ NỔI C&Aacute;I RĂNG &ndash; THIỀN VIỆN TR&Uacute;C L&Acirc;M &ndash; TP. HCM (Ăn s&aacute;ng, trưa) (Xem th&ecirc;m)</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>S&aacute;ng&nbsp;&nbsp; &nbsp;Du kh&aacute;ch đến bến Ninh Kiều: Thuyền đưa du kh&aacute;ch tham quan chợ nổi C&aacute;i Răng với cảnh nhộn nhịp bu&ocirc;n b&aacute;n tr&ecirc;n s&ocirc;ng, một n&eacute;t văn h&oacute;a rất đặc sắc ở v&ugrave;ng đồng bằng s&ocirc;ng nước Cửu Long.</p>\r\n\r\n<ul>\r\n	<li>Về lại kh&aacute;ch sạn, d&ugrave;ng bữa s&aacute;ng.&nbsp;</li>\r\n	<li>Viếng thăm Thiền Viện Tr&uacute;c L&acirc;m Phương Nam được xem l&agrave; một trong những c&ocirc;ng tr&igrave;nh nghệ thuật độc đ&aacute;o của đất T&acirc;y Đ&ocirc; - ng&ocirc;i ch&ugrave;a rộng nhất khu vực Đồng bằng s&ocirc;ng Cửu Long, được x&acirc;y dựng tr&ecirc;n diện t&iacute;ch gần 4 ha, với kết cấu lợp ng&oacute;i, khung cột gỗ lim, ch&aacute;nh điện rộng c&ugrave;ng nh&agrave; tổ, nhiều tượng Phật được l&agrave;m bằng gỗ Du Sam.</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Trưa&nbsp;&nbsp; &nbsp;D&ugrave;ng cơm trưa.</strong></p>\r\n\r\n<ul>\r\n	<li>Khởi h&agrave;nh về TP.HCM tr&ecirc;n dừng ch&acirc;n tham quan cầu treo Mỹ Thuận, tiếp tục lộ tr&igrave;nh về đến TP.HCM</li>\r\n	<li>Kết th&uacute;c h&agrave;nh tr&igrave;nh tour. Ch&agrave;o tạm biệt v&agrave; hẹn gặp lại.</li>\r\n</ul>', 12, '2021-06-30 13:24:44', '2021-06-30 13:24:44');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) unsigned NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `forgotpasskey` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `display_name`, `email_verified_at`, `forgotpasskey`, `remember_token`, `status`, `created_at`, `updated_at`) VALUES
(1, 'admin@gmail.com', '$2y$10$Q2UZBHkQobAMg8PhmJroFeID143PnxexWB1o1A0JrsKTH88Ex33eW', 'Admin', NULL, NULL, NULL, 1, '2021-06-15 19:58:18', '2021-06-15 19:58:18'),
(2, 'huyen@gmail.com', '$2y$10$NNS8MFtKXoYDIf4XQmwKXeEsbmd/7ouSW6qh2eELkj1mbEqPn9hKG', 'chip', NULL, NULL, NULL, 1, '2021-06-17 13:35:57', '2021-06-17 13:35:57');

-- --------------------------------------------------------

--
-- Table structure for table `user_departments`
--

CREATE TABLE IF NOT EXISTS `user_departments` (
  `id` int(10) unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `roles` text COLLATE utf8mb4_unicode_ci,
  `default_role` int(10) unsigned DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_infos`
--

CREATE TABLE IF NOT EXISTS `user_infos` (
  `id` int(10) unsigned NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  `department_id` int(10) unsigned DEFAULT NULL,
  `fullname` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `gender` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `province_id` int(10) unsigned DEFAULT NULL,
  `district_id` int(10) unsigned DEFAULT NULL,
  `ward_id` int(10) unsigned DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_infos`
--

INSERT INTO `user_infos` (`id`, `user_id`, `department_id`, `fullname`, `phone`, `photo`, `birthday`, `gender`, `province_id`, `district_id`, `ward_id`, `address`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2021-06-15 19:58:18', '2021-06-15 19:58:18'),
(2, 2, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '2021-06-17 13:35:57', '2021-06-27 21:50:37');

-- --------------------------------------------------------

--
-- Table structure for table `user_model_has_permissions`
--

CREATE TABLE IF NOT EXISTS `user_model_has_permissions` (
  `permission_id` int(10) unsigned NOT NULL,
  `model_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_model_has_permissions`
--

INSERT INTO `user_model_has_permissions` (`permission_id`, `model_type`, `model_id`) VALUES
(3, 'Modules\\User\\Models\\User', 2);

-- --------------------------------------------------------

--
-- Table structure for table `user_model_has_roles`
--

CREATE TABLE IF NOT EXISTS `user_model_has_roles` (
  `role_id` int(10) unsigned NOT NULL,
  `model_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_model_has_roles`
--

INSERT INTO `user_model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'Modules\\User\\Models\\User', 1),
(2, 'Modules\\User\\Models\\User', 2);

-- --------------------------------------------------------

--
-- Table structure for table `user_permissions`
--

CREATE TABLE IF NOT EXISTS `user_permissions` (
  `id` int(10) unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'system',
  `module` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_permissions`
--

INSERT INTO `user_permissions` (`id`, `name`, `guard_name`, `title`, `description`, `type`, `module`, `created_at`, `updated_at`) VALUES
(1, 'dashboard', 'web', 'Quản lý admin', 'Quản lý admin', 'system', 'system', '2021-06-17 13:40:31', '2021-06-17 13:40:31'),
(3, 'contact.admin.list', 'web', 'contact::common.list_contact', 'contact::common.list_contact_description', 'module', 'contact', '2021-06-17 13:40:31', '2021-06-17 13:40:31'),
(14, 'user.admin.list', 'web', 'Danh sách tài khoản', 'Cho phép xem danh sách tài khoản', 'module', 'user', '2021-06-17 13:40:31', '2021-06-17 13:40:31'),
(15, 'user.admin.add', 'web', 'Thêm tài khoản', 'Cho phép thêm tài khoản', 'module', 'user', '2021-06-17 13:40:31', '2021-06-17 13:40:31'),
(16, 'user.admin.edit', 'web', 'Sửa tài khoản', 'Cho phép sửa tài khoản', 'module', 'user', '2021-06-17 13:40:31', '2021-06-17 13:40:31'),
(17, 'user.admin.delete', 'web', 'Xóa tài khoản', 'Cho phép xóa tài khoản', 'module', 'user', '2021-06-17 13:40:31', '2021-06-17 13:40:31'),
(22, 'post.admin.index', 'web', 'Quản lý bài viết', 'Quản lý tât cả các thao tác với module bài viết', 'module', 'post', '2021-06-17 20:35:31', '2021-06-17 20:35:31');

-- --------------------------------------------------------

--
-- Table structure for table `user_roles`
--

CREATE TABLE IF NOT EXISTS `user_roles` (
  `id` int(10) unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `order` int(10) unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_roles`
--

INSERT INTO `user_roles` (`id`, `name`, `guard_name`, `title`, `description`, `order`, `created_at`, `updated_at`) VALUES
(1, 'superadmin', 'web', 'Super Admin', 'Quản trị toàn quyền hệ thống', 1, '2021-06-15 19:58:18', '2021-06-17 20:36:30'),
(2, 'cong_tac_vien', 'web', 'Cộng tác viên', 'Phần đăng tin đưa bài dành cho cộng tác viên', 2, '2021-06-17 20:36:29', '2021-06-17 20:36:30');

-- --------------------------------------------------------

--
-- Table structure for table `user_role_has_permissions`
--

CREATE TABLE IF NOT EXISTS `user_role_has_permissions` (
  `permission_id` int(10) unsigned NOT NULL,
  `role_id` int(10) unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_role_has_permissions`
--

INSERT INTO `user_role_has_permissions` (`permission_id`, `role_id`) VALUES
(1, 2),
(22, 2);

-- --------------------------------------------------------

--
-- Table structure for table `user_social`
--

CREATE TABLE IF NOT EXISTS `user_social` (
  `id` bigint(20) unsigned NOT NULL,
  `provider` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `social_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `widgets`
--

CREATE TABLE IF NOT EXISTS `widgets` (
  `id` bigint(20) unsigned NOT NULL,
  `module` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'global',
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `group` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `order` int(10) unsigned NOT NULL DEFAULT '0',
  `config` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `widgets`
--

INSERT INTO `widgets` (`id`, `module`, `name`, `title`, `group`, `status`, `order`, `config`, `created_at`, `updated_at`) VALUES
(1, 'Banner', 'SlideHome', 'Slide Trang Chủ', 'SLIDE_HOME', 1, 1, '[]', '2021-06-29 15:31:43', '2021-06-29 15:32:46'),
(2, 'Menu', 'MainMenu', 'Menu chính', 'MAIN_MENU', 1, 1, '[]', '2021-06-29 15:32:42', '2021-06-29 15:32:46');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_widgets`
--
ALTER TABLE `admin_widgets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `banners`
--
ALTER TABLE `banners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `banner_widgets`
--
ALTER TABLE `banner_widgets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bookings`
--
ALTER TABLE `bookings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_activity_log`
--
ALTER TABLE `cms_activity_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cms_activity_log_log_name_index` (`log_name`),
  ADD KEY `subject` (`subject_id`,`subject_type`),
  ADD KEY `causer` (`causer_id`,`causer_type`);

--
-- Indexes for table `cms_admin_widgets`
--
ALTER TABLE `cms_admin_widgets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_failed_jobs`
--
ALTER TABLE `cms_failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_jobs`
--
ALTER TABLE `cms_jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cms_jobs_queue_index` (`queue`);

--
-- Indexes for table `cms_layouts`
--
ALTER TABLE `cms_layouts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_mail_templates`
--
ALTER TABLE `cms_mail_templates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_modules`
--
ALTER TABLE `cms_modules`
  ADD PRIMARY KEY (`name`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `links`
--
ALTER TABLE `links`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `locations`
--
ALTER TABLE `locations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menu_items`
--
ALTER TABLE `menu_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menu_item_transtion`
--
ALTER TABLE `menu_item_transtion`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `menu_item_transtion_menu_item_id_locale_unique` (`menu_item_id`,`locale`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notifications_notifiable_type_notifiable_id_index` (`notifiable_type`,`notifiable_id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `page_transtions`
--
ALTER TABLE `page_transtions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `post_categories`
--
ALTER TABLE `post_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tours`
--
ALTER TABLE `tours`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tour_content_programs`
--
ALTER TABLE `tour_content_programs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `user_departments`
--
ALTER TABLE `user_departments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_infos`
--
ALTER TABLE `user_infos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_model_has_permissions`
--
ALTER TABLE `user_model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `user_model_has_roles`
--
ALTER TABLE `user_model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `user_permissions`
--
ALTER TABLE `user_permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_role_has_permissions`
--
ALTER TABLE `user_role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `user_role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `user_social`
--
ALTER TABLE `user_social`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `widgets`
--
ALTER TABLE `widgets`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_widgets`
--
ALTER TABLE `admin_widgets`
  MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `banners`
--
ALTER TABLE `banners`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `banner_widgets`
--
ALTER TABLE `banner_widgets`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `bookings`
--
ALTER TABLE `bookings`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `cms_activity_log`
--
ALTER TABLE `cms_activity_log`
  MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=46;
--
-- AUTO_INCREMENT for table `cms_admin_widgets`
--
ALTER TABLE `cms_admin_widgets`
  MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `cms_failed_jobs`
--
ALTER TABLE `cms_failed_jobs`
  MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `cms_jobs`
--
ALTER TABLE `cms_jobs`
  MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `cms_layouts`
--
ALTER TABLE `cms_layouts`
  MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `cms_mail_templates`
--
ALTER TABLE `cms_mail_templates`
  MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `links`
--
ALTER TABLE `links`
  MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `locations`
--
ALTER TABLE `locations`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=64;
--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `menu_items`
--
ALTER TABLE `menu_items`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `menu_item_transtion`
--
ALTER TABLE `menu_item_transtion`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=35;
--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `page_transtions`
--
ALTER TABLE `page_transtions`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `post_categories`
--
ALTER TABLE `post_categories`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tours`
--
ALTER TABLE `tours`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `tour_content_programs`
--
ALTER TABLE `tour_content_programs`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `user_departments`
--
ALTER TABLE `user_departments`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `user_infos`
--
ALTER TABLE `user_infos`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `user_permissions`
--
ALTER TABLE `user_permissions`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT for table `user_roles`
--
ALTER TABLE `user_roles`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `user_social`
--
ALTER TABLE `user_social`
  MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `widgets`
--
ALTER TABLE `widgets`
  MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `menu_item_transtion`
--
ALTER TABLE `menu_item_transtion`
  ADD CONSTRAINT `menu_item_transtion_menu_item_id_foreign` FOREIGN KEY (`menu_item_id`) REFERENCES `menu_items` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `user_model_has_permissions`
--
ALTER TABLE `user_model_has_permissions`
  ADD CONSTRAINT `user_model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `user_permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `user_model_has_roles`
--
ALTER TABLE `user_model_has_roles`
  ADD CONSTRAINT `user_model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `user_roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `user_role_has_permissions`
--
ALTER TABLE `user_role_has_permissions`
  ADD CONSTRAINT `user_role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `user_permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `user_roles` (`id`) ON DELETE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
