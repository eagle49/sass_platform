-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Apr 17, 2019 at 08:40 AM
-- Server version: 5.6.41-84.1
-- PHP Version: 7.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `thedessn_perklocker_saas_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `account`
--

CREATE TABLE `account` (
  `id` int(11) NOT NULL,
  `client_id` bigint(20) NOT NULL,
  `allocation` enum('deposit','withdrawl') NOT NULL,
  `amount` double DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `account`
--

INSERT INTO `account` (`id`, `client_id`, `allocation`, `amount`, `created_at`, `updated_at`) VALUES
(1, 1, 'deposit', 105000, '2019-03-24 14:07:56', NULL),
(2, 1, 'withdrawl', -5285, '2019-03-24 14:08:14', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `activations`
--

CREATE TABLE `activations` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `client_management`
--

CREATE TABLE `client_management` (
  `id` int(10) UNSIGNED NOT NULL,
  `company_unique_client_user_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company_in` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company_address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company_brief` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company_country` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_state` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_city` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company_zip` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company_email_address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company_phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_website` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_currency` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_timezone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_logo` text COLLATE utf8mb4_unicode_ci,
  `membership_assign` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `client_management`
--

INSERT INTO `client_management` (`id`, `company_unique_client_user_id`, `company_name`, `company_in`, `company_address`, `company_brief`, `company_country`, `company_state`, `company_city`, `company_zip`, `company_email_address`, `company_phone`, `company_website`, `company_currency`, `company_timezone`, `company_logo`, `membership_assign`, `created_at`, `updated_at`) VALUES
(1, '7I0112794605602', 'ABC', 'acv345', 'los angelos', 'It company', 'Uganda', 'fine', 'xip', '3456', 'abc@perklocker.com', '8674638393', 'www.abc.com', 'USD', '-12', '1553353899.jpg', '3|10000,4|2000', '2019-03-23 09:41:39', '2019-04-06 05:02:40'),
(9, '2504F0054849432', 'Infiact', '234', 'salt lake sec 5', 'Great cmpny', 'India', 'West Bengal', 'Kolkata', '700091', 'aa@infiact.com', '7894561230', 'www.abac.com', 'USD', '-12', '1554626235.jpg', '0|0000,3|123', '2019-04-07 14:37:15', '2019-04-07 14:51:33'),
(12, '675201239941T45', 'Infact', '987In', 'Guteng', 'Great cmpny aweas', 'Guam', 'Gauteng', 'Johannesburg', '70563', 'ad@infact.com', '1236547890', 'eee.com', 'USD', '-12', '1554627419.jpg', '0|0000', '2019-04-07 14:56:59', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `currency_conversion`
--

CREATE TABLE `currency_conversion` (
  `id` int(11) NOT NULL,
  `base_curr` varchar(100) NOT NULL,
  `conv_curr` varchar(100) NOT NULL,
  `rate` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `currency_conversion`
--

INSERT INTO `currency_conversion` (`id`, `base_curr`, `conv_curr`, `rate`, `created_at`, `updated_at`) VALUES
(1, 'GBP', 'USD', 1.315948076, '2019-03-23 02:35:00', '2019-03-23 02:35:30'),
(2, 'GBP', 'INR', 90.5609643023, '2019-03-23 02:13:00', NULL),
(3, 'GBP', 'AUD', 1.8543115438, '2019-03-23 02:16:00', NULL),
(7, 'GBP', 'CNY', 8.8101529903, '2019-03-23 02:20:00', NULL),
(8, 'GBP', 'HRK', 8.5973574409, '2019-03-23 02:20:00', NULL),
(9, 'GBP', 'NZD', 1.9201437181, '2019-03-23 09:44:00', NULL),
(10, 'GBP', 'MXN', 24.9383402874, '2019-03-23 09:44:00', NULL),
(11, 'GBP', 'JPY', 146.7663421419, '2019-03-23 09:44:00', NULL),
(12, 'GBP', 'BRL', 5.1416427287, '2019-03-26 00:02:00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `domain`
--

CREATE TABLE `domain` (
  `id` int(11) NOT NULL,
  `has_domain` int(11) NOT NULL,
  `domain_name` varchar(255) NOT NULL,
  `client_id` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `domain`
--

INSERT INTO `domain` (`id`, `has_domain`, `domain_name`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 2, 'abc', 1, '2019-04-07 14:57:31', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `laravel_logger_activity`
--

CREATE TABLE `laravel_logger_activity` (
  `id` int(10) UNSIGNED NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `userType` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `userId` int(11) DEFAULT NULL,
  `route` longtext COLLATE utf8mb4_unicode_ci,
  `ipAddress` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `userAgent` text COLLATE utf8mb4_unicode_ci,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `referer` longtext COLLATE utf8mb4_unicode_ci,
  `methodType` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `laravel_logger_activity`
--

INSERT INTO `laravel_logger_activity` (`id`, `description`, `userType`, `userId`, `route`, `ipAddress`, `userAgent`, `locale`, `referer`, `methodType`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Failed Login Attempt', 'Guest', NULL, 'http://localhost/laravel-auth/public/login', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36', 'en-US,en;q=0.9', 'http://localhost/laravel-auth/public/login', 'POST', '2019-03-05 09:58:32', '2019-03-05 09:58:32', NULL),
(2, 'Logged In', 'Registered', 1, 'http://localhost/laravel-auth/public/login', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36', 'en-US,en;q=0.9', 'http://localhost/laravel-auth/public/login', 'POST', '2019-03-05 09:58:43', '2019-03-05 09:58:43', NULL),
(3, 'Viewed home', 'Registered', 1, 'http://localhost/laravel-auth/public/home', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36', 'en-US,en;q=0.9', 'http://localhost/laravel-auth/public/login', 'GET', '2019-03-05 09:58:43', '2019-03-05 09:58:43', NULL),
(4, 'Viewed users', 'Registered', 1, 'http://localhost/laravel-auth/public/users', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36', 'en-US,en;q=0.9', 'http://localhost/laravel-auth/public/home', 'GET', '2019-03-05 09:58:51', '2019-03-05 09:58:51', NULL),
(5, 'Viewed users/create', 'Registered', 1, 'http://localhost/laravel-auth/public/users/create', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36', 'en-US,en;q=0.9', 'http://localhost/laravel-auth/public/users', 'GET', '2019-03-05 09:58:55', '2019-03-05 09:58:55', NULL),
(6, 'Viewed users', 'Registered', 1, 'http://localhost/laravel-auth/public/users', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36', 'en-US,en;q=0.9', 'http://localhost/laravel-auth/public/users/create', 'GET', '2019-03-05 10:05:30', '2019-03-05 10:05:30', NULL),
(7, 'Logged Out', 'Registered', 1, 'http://localhost/laravel-auth/public/logout', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36', 'en-US,en;q=0.9', 'http://localhost/laravel-auth/public/users', 'POST', '2019-03-05 10:05:33', '2019-03-05 10:05:33', NULL),
(8, 'Failed Login Attempt', 'Guest', NULL, 'http://localhost/laravel-auth/public/login', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36', 'en-US,en;q=0.9', 'http://localhost/laravel-auth/public/login', 'POST', '2019-03-09 06:22:46', '2019-03-09 06:22:46', NULL),
(9, 'Logged In', 'Registered', 1, 'http://localhost/laravel-auth/public/login', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36', 'en-US,en;q=0.9', 'http://localhost/laravel-auth/public/login', 'POST', '2019-03-09 06:22:56', '2019-03-09 06:22:56', NULL),
(10, 'Viewed home', 'Registered', 1, 'http://localhost/laravel-auth/public/home', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36', 'en-US,en;q=0.9', 'http://localhost/laravel-auth/public/login', 'GET', '2019-03-09 06:22:56', '2019-03-09 06:22:56', NULL),
(11, 'Viewed home', 'Registered', 1, 'http://localhost/laravel-auth/public/home', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36', 'en-US,en;q=0.9', 'http://localhost/laravel-auth/public/login', 'GET', '2019-03-09 06:26:11', '2019-03-09 06:26:11', NULL),
(12, 'Viewed home', 'Registered', 1, 'http://localhost/laravel-auth/public/home', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36', 'en-US,en;q=0.9', 'http://localhost/laravel-auth/public/login', 'GET', '2019-03-09 06:26:36', '2019-03-09 06:26:36', NULL),
(13, 'Viewed profile/r.t', 'Registered', 1, 'http://localhost/laravel-auth/public/profile/r.t', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36', 'en-US,en;q=0.9', 'http://localhost/laravel-auth/public/home', 'GET', '2019-03-09 06:26:42', '2019-03-09 06:26:42', NULL),
(14, 'Viewed profile/r.t', 'Registered', 1, 'http://localhost/laravel-auth/public/profile/r.t', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36', 'en-US,en;q=0.9', 'http://localhost/laravel-auth/public/profile/r.t', 'GET', '2019-03-09 06:26:51', '2019-03-09 06:26:51', NULL),
(15, 'Viewed profile/r.t/edit', 'Registered', 1, 'http://localhost/laravel-auth/public/profile/r.t/edit', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36', 'en-US,en;q=0.9', 'http://localhost/laravel-auth/public/profile/r.t', 'GET', '2019-03-09 06:26:53', '2019-03-09 06:26:53', NULL),
(16, 'Viewed profile/r.t/edit', 'Registered', 1, 'http://localhost/laravel-auth/public/profile/r.t/edit', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36', 'en-US,en;q=0.9', 'http://localhost/laravel-auth/public/profile/r.t', 'GET', '2019-03-09 06:27:01', '2019-03-09 06:27:01', NULL),
(17, 'Viewed home', 'Registered', 1, 'http://localhost/laravel-auth/public/home', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36', 'en-US,en;q=0.9', 'http://localhost/laravel-auth/public/login', 'GET', '2019-03-09 06:28:45', '2019-03-09 06:28:45', NULL),
(18, 'Viewed home', 'Registered', 1, 'http://localhost/laravel-auth/public/home', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36', 'en-US,en;q=0.9', 'http://localhost/laravel-auth/public/login', 'GET', '2019-03-09 06:29:03', '2019-03-09 06:29:03', NULL),
(19, 'Viewed home', 'Registered', 1, 'http://localhost/laravel-auth/public/home', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36', 'en-US,en;q=0.9', 'http://localhost/laravel-auth/public/login', 'GET', '2019-03-09 06:29:27', '2019-03-09 06:29:27', NULL),
(20, 'Viewed home', 'Registered', 1, 'http://localhost/laravel-auth/public/home', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36', 'en-US,en;q=0.9', 'http://localhost/laravel-auth/public/login', 'GET', '2019-03-09 06:29:45', '2019-03-09 06:29:45', NULL),
(21, 'Viewed home', 'Registered', 1, 'http://localhost/laravel-auth/public/home', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36', 'en-US,en;q=0.9', 'http://localhost/laravel-auth/public/login', 'GET', '2019-03-09 06:29:59', '2019-03-09 06:29:59', NULL),
(22, 'Viewed users', 'Registered', 1, 'http://localhost/laravel-auth/public/users', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36', 'en-US,en;q=0.9', 'http://localhost/laravel-auth/public/home', 'GET', '2019-03-09 06:30:13', '2019-03-09 06:30:13', NULL),
(23, 'Viewed users/1/edit', 'Registered', 1, 'http://localhost/laravel-auth/public/users/1/edit', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36', 'en-US,en;q=0.9', 'http://localhost/laravel-auth/public/users', 'GET', '2019-03-09 06:30:28', '2019-03-09 06:30:28', NULL),
(24, 'Viewed users/1', 'Registered', 1, 'http://localhost/laravel-auth/public/users/1', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36', 'en-US,en;q=0.9', 'http://localhost/laravel-auth/public/users/1/edit', 'GET', '2019-03-09 06:30:36', '2019-03-09 06:30:36', NULL),
(25, 'Viewed users', 'Registered', 1, 'http://localhost/laravel-auth/public/users', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36', 'en-US,en;q=0.9', 'http://localhost/laravel-auth/public/users/1', 'GET', '2019-03-09 06:30:46', '2019-03-09 06:30:46', NULL),
(26, 'Viewed users/2/edit', 'Registered', 1, 'http://localhost/laravel-auth/public/users/2/edit', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36', 'en-US,en;q=0.9', 'http://localhost/laravel-auth/public/users', 'GET', '2019-03-09 06:30:50', '2019-03-09 06:30:50', NULL),
(27, 'Viewed users/2', 'Registered', 1, 'http://localhost/laravel-auth/public/users/2', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36', 'en-US,en;q=0.9', 'http://localhost/laravel-auth/public/users/2/edit', 'GET', '2019-03-09 06:30:52', '2019-03-09 06:30:52', NULL),
(28, 'Viewed users/create', 'Registered', 1, 'http://localhost/laravel-auth/public/users/create', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36', 'en-US,en;q=0.9', 'http://localhost/laravel-auth/public/users/2/edit', 'GET', '2019-03-09 06:31:02', '2019-03-09 06:31:02', NULL),
(29, 'Viewed routes', 'Registered', 1, 'http://localhost/laravel-auth/public/routes', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36', 'en-US,en;q=0.9', 'http://localhost/laravel-auth/public/users/create', 'GET', '2019-03-09 06:31:07', '2019-03-09 06:31:07', NULL),
(30, 'Viewed profile/r.t', 'Registered', 1, 'http://localhost/laravel-auth/public/profile/r.t', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36', 'en-US,en;q=0.9', 'http://localhost/laravel-auth/public/routes', 'GET', '2019-03-09 06:31:13', '2019-03-09 06:31:13', NULL),
(31, 'Viewed profile/r.t/edit', 'Registered', 1, 'http://localhost/laravel-auth/public/profile/r.t/edit', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36', 'en-US,en;q=0.9', 'http://localhost/laravel-auth/public/profile/r.t', 'GET', '2019-03-09 06:31:16', '2019-03-09 06:31:16', NULL),
(32, 'Logged In', 'Registered', 1, 'http://localhost/laravel-auth/public/login', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36', 'en-US,en;q=0.9', NULL, 'GET', '2019-03-10 08:09:45', '2019-03-10 08:09:45', NULL),
(33, 'Viewed home', 'Registered', 1, 'http://localhost/laravel-auth/public/home', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36', 'en-US,en;q=0.9', NULL, 'GET', '2019-03-10 08:09:48', '2019-03-10 08:09:48', NULL),
(34, 'Viewed home', 'Registered', 1, 'http://localhost/laravel-auth/public/home', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36', 'en-US,en;q=0.9', NULL, 'GET', '2019-03-10 08:10:00', '2019-03-10 08:10:00', NULL),
(35, 'Logged Out', 'Registered', 1, 'http://localhost/laravel-auth/public/logout', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36', 'en-US,en;q=0.9', 'http://localhost/laravel-auth/public/home', 'POST', '2019-03-10 08:10:16', '2019-03-10 08:10:16', NULL),
(36, 'Logged In', 'Registered', 1, 'http://localhost/laravel-auth/public/login', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36', 'en-US,en;q=0.9', 'http://localhost/laravel-auth/public/login', 'POST', '2019-03-10 08:13:40', '2019-03-10 08:13:40', NULL),
(37, 'Viewed home', 'Registered', 1, 'http://localhost/laravel-auth/public/home', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36', 'en-US,en;q=0.9', 'http://localhost/laravel-auth/public/login', 'GET', '2019-03-10 08:13:41', '2019-03-10 08:13:41', NULL),
(38, 'Viewed profile/r.t', 'Registered', 1, 'http://localhost/laravel-auth/public/profile/r.t', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36', 'en-US,en;q=0.9', 'http://localhost/laravel-auth/public/home', 'GET', '2019-03-10 08:14:20', '2019-03-10 08:14:20', NULL),
(39, 'Viewed profile/r.t/edit', 'Registered', 1, 'http://localhost/laravel-auth/public/profile/r.t/edit', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36', 'en-US,en;q=0.9', 'http://localhost/laravel-auth/public/profile/r.t', 'GET', '2019-03-10 08:14:46', '2019-03-10 08:14:46', NULL),
(40, 'Viewed users/create', 'Registered', 1, 'http://localhost/laravel-auth/public/users/create', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36', 'en-US,en;q=0.9', 'http://localhost/laravel-auth/public/profile/r.t/edit', 'GET', '2019-03-10 08:16:41', '2019-03-10 08:16:41', NULL),
(41, 'Viewed active-users', 'Registered', 1, 'http://localhost/laravel-auth/public/active-users', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36', 'en-US,en;q=0.9', 'http://localhost/laravel-auth/public/users/create', 'GET', '2019-03-10 08:16:48', '2019-03-10 08:16:48', NULL),
(42, 'Viewed logs', 'Registered', 1, 'http://localhost/laravel-auth/public/logs', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36', 'en-US,en;q=0.9', 'http://localhost/laravel-auth/public/active-users', 'GET', '2019-03-10 08:17:20', '2019-03-10 08:17:20', NULL),
(43, 'Viewed users', 'Registered', 1, 'http://localhost/laravel-auth/public/users', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36', 'en-US,en;q=0.9', 'http://localhost/laravel-auth/public/logs', 'GET', '2019-03-10 08:18:07', '2019-03-10 08:18:07', NULL),
(44, 'Viewed users', 'Registered', 1, 'http://localhost/laravel-auth/public/users', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36', 'en-US,en;q=0.9', 'http://localhost/laravel-auth/public/logs', 'GET', '2019-03-10 08:19:40', '2019-03-10 08:19:40', NULL),
(45, 'Viewed users/1', 'Registered', 1, 'http://localhost/laravel-auth/public/users/1', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36', 'en-US,en;q=0.9', 'http://localhost/laravel-auth/public/users', 'GET', '2019-03-10 08:19:54', '2019-03-10 08:19:54', NULL),
(46, 'Viewed users/1', 'Registered', 1, 'http://localhost/laravel-auth/public/users/1', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36', 'en-US,en;q=0.9', 'http://localhost/laravel-auth/public/users', 'GET', '2019-03-10 08:20:12', '2019-03-10 08:20:12', NULL),
(47, 'Viewed users', 'Registered', 1, 'http://localhost/laravel-auth/public/users', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36', 'en-US,en;q=0.9', 'http://localhost/laravel-auth/public/users/1', 'GET', '2019-03-10 08:20:35', '2019-03-10 08:20:35', NULL),
(48, 'Viewed users/1/edit', 'Registered', 1, 'http://localhost/laravel-auth/public/users/1/edit', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36', 'en-US,en;q=0.9', 'http://localhost/laravel-auth/public/users', 'GET', '2019-03-10 08:20:37', '2019-03-10 08:20:37', NULL),
(49, 'Viewed users/1', 'Registered', 1, 'http://localhost/laravel-auth/public/users/1', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36', 'en-US,en;q=0.9', 'http://localhost/laravel-auth/public/users/1/edit', 'GET', '2019-03-10 08:20:41', '2019-03-10 08:20:41', NULL),
(50, 'Logged Out', 'Registered', 1, 'http://localhost/laravel-auth/public/logout', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36', 'en-US,en;q=0.9', 'http://localhost/laravel-auth/public/users/1', 'POST', '2019-03-10 08:20:54', '2019-03-10 08:20:54', NULL),
(51, 'Logged In', 'Registered', 1, 'http://localhost/laravel-auth/public/login', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36', 'en-US,en;q=0.9', 'http://localhost/laravel-auth/public/login', 'POST', '2019-03-10 10:53:40', '2019-03-10 10:53:40', NULL),
(52, 'Viewed home', 'Registered', 1, 'http://localhost/laravel-auth/public/home', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36', 'en-US,en;q=0.9', 'http://localhost/laravel-auth/public/login', 'GET', '2019-03-10 10:53:42', '2019-03-10 10:53:42', NULL),
(53, 'Viewed users', 'Registered', 1, 'http://localhost/laravel-auth/public/users', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36', 'en-US,en;q=0.9', 'http://localhost/laravel-auth/public/home', 'GET', '2019-03-10 10:53:49', '2019-03-10 10:53:49', NULL),
(54, 'Viewed users', 'Registered', 1, 'http://localhost/laravel-auth/public/users', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36', 'en-US,en;q=0.9', 'http://localhost/laravel-auth/public/home', 'GET', '2019-03-10 10:54:32', '2019-03-10 10:54:32', NULL),
(55, 'Failed Login Attempt', 'Guest', NULL, 'http://localhost/laravel-auth/public/login', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36', 'en-US,en;q=0.9', 'http://localhost/laravel-auth/public/login', 'POST', '2019-03-10 20:42:39', '2019-03-10 20:42:39', NULL),
(56, 'Logged In', 'Registered', 1, 'http://localhost/laravel-auth/public/login', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36', 'en-US,en;q=0.9', 'http://localhost/laravel-auth/public/login', 'POST', '2019-03-10 20:42:53', '2019-03-10 20:42:53', NULL),
(57, 'Viewed home', 'Registered', 1, 'http://localhost/laravel-auth/public/home', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36', 'en-US,en;q=0.9', 'http://localhost/laravel-auth/public/login', 'GET', '2019-03-10 20:42:54', '2019-03-10 20:42:54', NULL),
(58, 'Logged In', 'Registered', 1, 'http://localhost/laravel-auth/public/login', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36', 'en-US,en;q=0.9', NULL, 'GET', '2019-03-11 06:34:46', '2019-03-11 06:34:46', NULL),
(59, 'Viewed home', 'Registered', 1, 'http://localhost/laravel-auth/public/home', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36', 'en-US,en;q=0.9', NULL, 'GET', '2019-03-11 06:34:48', '2019-03-11 06:34:48', NULL),
(60, 'Logged Out', 'Registered', 1, 'http://localhost/laravel-auth/public/logout', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36', 'en-US,en;q=0.9', 'http://localhost/laravel-auth/public/home', 'POST', '2019-03-11 06:35:02', '2019-03-11 06:35:02', NULL),
(61, 'Logged In', 'Registered', 1, 'http://localhost/laravel-auth/public/login', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36', 'en-US,en;q=0.9', 'http://localhost/laravel-auth/public/login', 'POST', '2019-03-11 06:36:41', '2019-03-11 06:36:41', NULL),
(62, 'Viewed home', 'Registered', 1, 'http://localhost/laravel-auth/public/home', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36', 'en-US,en;q=0.9', 'http://localhost/laravel-auth/public/login', 'GET', '2019-03-11 06:36:42', '2019-03-11 06:36:42', NULL),
(63, 'Viewed profile/john.deo', 'Registered', 1, 'http://localhost/laravel-auth/public/profile/john.deo', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36', 'en-US,en;q=0.9', 'http://localhost/laravel-auth/public/home', 'GET', '2019-03-11 06:37:06', '2019-03-11 06:37:06', NULL),
(64, 'Viewed profile/john.deo/edit', 'Registered', 1, 'http://localhost/laravel-auth/public/profile/john.deo/edit', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36', 'en-US,en;q=0.9', 'http://localhost/laravel-auth/public/profile/john.deo', 'GET', '2019-03-11 06:37:30', '2019-03-11 06:37:30', NULL),
(65, 'Viewed users', 'Registered', 1, 'http://localhost/laravel-auth/public/users', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36', 'en-US,en;q=0.9', 'http://localhost/laravel-auth/public/profile/john.deo/edit', 'GET', '2019-03-11 06:38:58', '2019-03-11 06:38:58', NULL),
(66, 'Viewed users/1', 'Registered', 1, 'http://localhost/laravel-auth/public/users/1', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36', 'en-US,en;q=0.9', 'http://localhost/laravel-auth/public/users', 'GET', '2019-03-11 06:39:41', '2019-03-11 06:39:41', NULL),
(67, 'Viewed users', 'Registered', 1, 'http://localhost/laravel-auth/public/users', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36', 'en-US,en;q=0.9', 'http://localhost/laravel-auth/public/users/1', 'GET', '2019-03-11 06:40:17', '2019-03-11 06:40:17', NULL),
(68, 'Viewed users/1/edit', 'Registered', 1, 'http://localhost/laravel-auth/public/users/1/edit', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36', 'en-US,en;q=0.9', 'http://localhost/laravel-auth/public/users', 'GET', '2019-03-11 06:40:20', '2019-03-11 06:40:20', NULL),
(69, 'Viewed users/1', 'Registered', 1, 'http://localhost/laravel-auth/public/users/1', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36', 'en-US,en;q=0.9', 'http://localhost/laravel-auth/public/users/1/edit', 'GET', '2019-03-11 06:40:24', '2019-03-11 06:40:24', NULL),
(70, 'Viewed profile/john.deo', 'Registered', 1, 'http://localhost/laravel-auth/public/profile/john.deo', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36', 'en-US,en;q=0.9', 'http://localhost/laravel-auth/public/users/1', 'GET', '2019-03-11 06:40:29', '2019-03-11 06:40:29', NULL),
(71, 'Viewed profile/john.deo/edit', 'Registered', 1, 'http://localhost/laravel-auth/public/profile/john.deo/edit', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36', 'en-US,en;q=0.9', 'http://localhost/laravel-auth/public/profile/john.deo', 'GET', '2019-03-11 06:40:32', '2019-03-11 06:40:32', NULL),
(72, 'Viewed users', 'Registered', 1, 'http://localhost/laravel-auth/public/users', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36', 'en-US,en;q=0.9', 'http://localhost/laravel-auth/public/profile/john.deo/edit', 'GET', '2019-03-11 06:40:37', '2019-03-11 06:40:37', NULL),
(73, 'Viewed users/2/edit', 'Registered', 1, 'http://localhost/laravel-auth/public/users/2/edit', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36', 'en-US,en;q=0.9', 'http://localhost/laravel-auth/public/users', 'GET', '2019-03-11 06:40:41', '2019-03-11 06:40:41', NULL),
(74, 'Viewed users/2', 'Registered', 1, 'http://localhost/laravel-auth/public/users/2', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36', 'en-US,en;q=0.9', 'http://localhost/laravel-auth/public/users/2/edit', 'GET', '2019-03-11 06:40:44', '2019-03-11 06:40:44', NULL),
(75, 'Viewed users/create', 'Registered', 1, 'http://localhost/laravel-auth/public/users/create', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36', 'en-US,en;q=0.9', 'http://localhost/laravel-auth/public/users/2', 'GET', '2019-03-11 06:40:54', '2019-03-11 06:40:54', NULL),
(76, 'Viewed users', 'Registered', 1, 'http://localhost/laravel-auth/public/users', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36', 'en-US,en;q=0.9', 'http://localhost/laravel-auth/public/users/create', 'GET', '2019-03-11 06:41:01', '2019-03-11 06:41:01', NULL),
(77, 'Viewed users/create', 'Registered', 1, 'http://localhost/laravel-auth/public/users/create', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36', 'en-US,en;q=0.9', 'http://localhost/laravel-auth/public/users', 'GET', '2019-03-11 06:41:04', '2019-03-11 06:41:04', NULL),
(78, 'Viewed logs', 'Registered', 1, 'http://localhost/laravel-auth/public/logs', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36', 'en-US,en;q=0.9', 'http://localhost/laravel-auth/public/users/create', 'GET', '2019-03-11 06:41:35', '2019-03-11 06:41:35', NULL),
(79, 'Viewed activity', 'Registered', 1, 'http://localhost/laravel-auth/public/activity', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36', 'en-US,en;q=0.9', 'http://localhost/laravel-auth/public/logs', 'GET', '2019-03-11 06:42:11', '2019-03-11 06:42:11', NULL),
(80, 'Viewed phpinfo', 'Registered', 1, 'http://localhost/laravel-auth/public/phpinfo', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36', 'en-US,en;q=0.9', 'http://localhost/laravel-auth/public/logs', 'GET', '2019-03-11 06:42:18', '2019-03-11 06:42:18', NULL),
(81, 'Viewed routes', 'Registered', 1, 'http://localhost/laravel-auth/public/routes', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36', 'en-US,en;q=0.9', 'http://localhost/laravel-auth/public/phpinfo', 'GET', '2019-03-11 06:42:25', '2019-03-11 06:42:25', NULL),
(82, 'Viewed active-users', 'Registered', 1, 'http://localhost/laravel-auth/public/active-users', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36', 'en-US,en;q=0.9', 'http://localhost/laravel-auth/public/routes', 'GET', '2019-03-11 06:42:29', '2019-03-11 06:42:29', NULL),
(83, 'Viewed themes', 'Registered', 1, 'http://localhost/laravel-auth/public/themes', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36', 'en-US,en;q=0.9', 'http://localhost/laravel-auth/public/active-users', 'GET', '2019-03-11 06:42:36', '2019-03-11 06:42:36', NULL),
(84, 'Viewed themes/20', 'Registered', 1, 'http://localhost/laravel-auth/public/themes/20', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36', 'en-US,en;q=0.9', 'http://localhost/laravel-auth/public/themes', 'GET', '2019-03-11 06:42:43', '2019-03-11 06:42:43', NULL),
(85, 'Logged Out', 'Registered', 1, 'http://localhost/laravel-auth/public/logout', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36', 'en-US,en;q=0.9', 'http://localhost/laravel-auth/public/themes/20', 'POST', '2019-03-11 06:43:03', '2019-03-11 06:43:03', NULL),
(86, 'Logged In', 'Registered', 1, 'http://localhost/laravel-auth/public/login', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36', 'en-US,en;q=0.9', 'http://localhost/laravel-auth/public/login', 'POST', '2019-03-12 22:48:30', '2019-03-12 22:48:30', NULL),
(87, 'Viewed home', 'Registered', 1, 'http://localhost/laravel-auth/public/home', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36', 'en-US,en;q=0.9', 'http://localhost/laravel-auth/public/login', 'GET', '2019-03-12 22:48:31', '2019-03-12 22:48:31', NULL),
(88, 'Viewed users', 'Registered', 1, 'http://localhost/laravel-auth/public/users', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36', 'en-US,en;q=0.9', 'http://localhost/laravel-auth/public/home', 'GET', '2019-03-12 22:52:21', '2019-03-12 22:52:21', NULL),
(89, 'Viewed home', 'Registered', 1, 'http://localhost/laravel-auth/public/home', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36', 'en-US,en;q=0.9', NULL, 'GET', '2019-03-12 22:53:37', '2019-03-12 22:53:37', NULL),
(90, 'Viewed home', 'Registered', 1, 'http://localhost/laravel-auth/public/home', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36', 'en-US,en;q=0.9', NULL, 'GET', '2019-03-12 22:54:09', '2019-03-12 22:54:09', NULL),
(91, 'Viewed users', 'Registered', 1, 'http://localhost/laravel-auth/public/users', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36', 'en-US,en;q=0.9', 'http://localhost/laravel-auth/public/home', 'GET', '2019-03-12 22:54:13', '2019-03-12 22:54:13', NULL),
(92, 'Logged In', 'Registered', 1, 'http://saas.perklocker.thedevsites.com/public/login', '202.142.95.55', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36', 'en-US,en;q=0.9', 'http://saas.perklocker.thedevsites.com/public/login', 'POST', '2019-03-13 21:34:00', '2019-03-13 21:34:00', NULL),
(93, 'Viewed home', 'Registered', 1, 'http://saas.perklocker.thedevsites.com/public/home', '202.142.95.55', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36', 'en-US,en;q=0.9', 'http://saas.perklocker.thedevsites.com/public/login', 'GET', '2019-03-13 21:34:03', '2019-03-13 21:34:03', NULL),
(94, 'Viewed users', 'Registered', 1, 'http://saas.perklocker.thedevsites.com/public/users', '202.142.95.55', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36', 'en-US,en;q=0.9', 'http://saas.perklocker.thedevsites.com/public/home', 'GET', '2019-03-13 21:34:12', '2019-03-13 21:34:12', NULL),
(95, 'Viewed users/1', 'Registered', 1, 'http://saas.perklocker.thedevsites.com/public/users/1', '202.142.95.55', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36', 'en-US,en;q=0.9', 'http://saas.perklocker.thedevsites.com/public/users', 'GET', '2019-03-13 21:34:19', '2019-03-13 21:34:19', NULL),
(96, 'Viewed users', 'Registered', 1, 'http://saas.perklocker.thedevsites.com/public/users', '202.142.95.55', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36', 'en-US,en;q=0.9', 'http://saas.perklocker.thedevsites.com/public/users/1', 'GET', '2019-03-13 21:34:25', '2019-03-13 21:34:25', NULL),
(97, 'Viewed profile/john.deo', 'Registered', 1, 'http://saas.perklocker.thedevsites.com/public/profile/john.deo', '202.142.95.55', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36', 'en-US,en;q=0.9', 'http://saas.perklocker.thedevsites.com/public/users', 'GET', '2019-03-13 21:34:29', '2019-03-13 21:34:29', NULL),
(98, 'Viewed profile/john.deo/edit', 'Registered', 1, 'http://saas.perklocker.thedevsites.com/public/profile/john.deo/edit', '202.142.95.55', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36', 'en-US,en;q=0.9', 'http://saas.perklocker.thedevsites.com/public/profile/john.deo', 'GET', '2019-03-13 21:34:33', '2019-03-13 21:34:33', NULL),
(99, 'Logged In', 'Registered', 1, 'http://saas.perklocker.thedevsites.com/public/login', '42.110.137.30', 'Mozilla/5.0 (iPhone; CPU iPhone OS 12_1_4 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/12.0 Mobile/15E148 Safari/604.1', 'en-us', 'http://saas.perklocker.thedevsites.com/public/login', 'POST', '2019-03-13 21:37:44', '2019-03-13 21:37:44', NULL),
(100, 'Viewed home', 'Registered', 1, 'http://saas.perklocker.thedevsites.com/public/home', '42.110.137.30', 'Mozilla/5.0 (iPhone; CPU iPhone OS 12_1_4 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/12.0 Mobile/15E148 Safari/604.1', 'en-us', 'http://saas.perklocker.thedevsites.com/public/login', 'GET', '2019-03-13 21:37:45', '2019-03-13 21:37:45', NULL),
(101, 'Viewed profile/john.deo', 'Registered', 1, 'http://saas.perklocker.thedevsites.com/public/profile/john.deo', '42.110.137.30', 'Mozilla/5.0 (iPhone; CPU iPhone OS 12_1_4 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/12.0 Mobile/15E148 Safari/604.1', 'en-us', 'http://saas.perklocker.thedevsites.com/public/home', 'GET', '2019-03-13 21:38:00', '2019-03-13 21:38:00', NULL),
(102, 'Viewed profile/john.deo/edit', 'Registered', 1, 'http://saas.perklocker.thedevsites.com/public/profile/john.deo/edit', '42.110.137.30', 'Mozilla/5.0 (iPhone; CPU iPhone OS 12_1_4 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/12.0 Mobile/15E148 Safari/604.1', 'en-us', 'http://saas.perklocker.thedevsites.com/public/profile/john.deo', 'GET', '2019-03-13 21:38:04', '2019-03-13 21:38:04', NULL),
(103, 'Viewed users/create', 'Registered', 1, 'http://saas.perklocker.thedevsites.com/public/users/create', '42.110.137.30', 'Mozilla/5.0 (iPhone; CPU iPhone OS 12_1_4 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/12.0 Mobile/15E148 Safari/604.1', 'en-us', 'http://saas.perklocker.thedevsites.com/public/profile/john.deo/edit', 'GET', '2019-03-13 21:38:36', '2019-03-13 21:38:36', NULL),
(104, 'Viewed active-users', 'Registered', 1, 'http://saas.perklocker.thedevsites.com/public/active-users', '42.110.137.30', 'Mozilla/5.0 (iPhone; CPU iPhone OS 12_1_4 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/12.0 Mobile/15E148 Safari/604.1', 'en-us', 'http://saas.perklocker.thedevsites.com/public/users/create', 'GET', '2019-03-13 21:38:50', '2019-03-13 21:38:50', NULL),
(105, 'Viewed logs', 'Registered', 1, 'http://saas.perklocker.thedevsites.com/public/logs', '42.110.137.30', 'Mozilla/5.0 (iPhone; CPU iPhone OS 12_1_4 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/12.0 Mobile/15E148 Safari/604.1', 'en-us', 'http://saas.perklocker.thedevsites.com/public/active-users', 'GET', '2019-03-13 21:39:03', '2019-03-13 21:39:03', NULL),
(106, 'Logged In', 'Registered', 1, 'http://saas.perklocker.thedevsites.com/public/login', '5.148.139.143', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/12.0.3 Safari/605.1.15', 'en-gb', 'http://saas.perklocker.thedevsites.com/public/login', 'POST', '2019-03-13 21:45:15', '2019-03-13 21:45:15', NULL),
(107, 'Viewed home', 'Registered', 1, 'http://saas.perklocker.thedevsites.com/public/home', '5.148.139.143', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/12.0.3 Safari/605.1.15', 'en-gb', 'http://saas.perklocker.thedevsites.com/public/login', 'GET', '2019-03-13 21:45:16', '2019-03-13 21:45:16', NULL),
(108, 'Viewed profile/john.deo', 'Registered', 1, 'http://saas.perklocker.thedevsites.com/public/profile/john.deo', '5.148.139.143', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/12.0.3 Safari/605.1.15', 'en-gb', 'http://saas.perklocker.thedevsites.com/public/home', 'GET', '2019-03-13 21:45:27', '2019-03-13 21:45:27', NULL),
(109, 'Viewed users/create', 'Registered', 1, 'http://saas.perklocker.thedevsites.com/public/users/create', '5.148.139.143', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/12.0.3 Safari/605.1.15', 'en-gb', 'http://saas.perklocker.thedevsites.com/public/profile/john.deo', 'GET', '2019-03-13 21:45:36', '2019-03-13 21:45:36', NULL),
(110, 'Viewed phpinfo', 'Registered', 1, 'http://saas.perklocker.thedevsites.com/public/phpinfo', '5.148.139.143', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/12.0.3 Safari/605.1.15', 'en-gb', 'http://saas.perklocker.thedevsites.com/public/users/create', 'GET', '2019-03-13 21:45:40', '2019-03-13 21:45:40', NULL),
(111, 'Viewed profile/john.deo', 'Registered', 1, 'http://saas.perklocker.thedevsites.com/public/profile/john.deo', '5.148.139.143', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/12.0.3 Safari/605.1.15', 'en-gb', 'http://saas.perklocker.thedevsites.com/public/phpinfo', 'GET', '2019-03-13 21:50:44', '2019-03-13 21:50:44', NULL),
(112, 'Viewed active-users', 'Registered', 1, 'http://saas.perklocker.thedevsites.com/public/active-users', '5.148.139.143', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/12.0.3 Safari/605.1.15', 'en-gb', 'http://saas.perklocker.thedevsites.com/public/profile/john.deo', 'GET', '2019-03-13 21:50:52', '2019-03-13 21:50:52', NULL),
(113, 'Viewed routes', 'Registered', 1, 'http://saas.perklocker.thedevsites.com/public/routes', '5.148.139.143', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/12.0.3 Safari/605.1.15', 'en-gb', 'http://saas.perklocker.thedevsites.com/public/active-users', 'GET', '2019-03-13 21:51:02', '2019-03-13 21:51:02', NULL),
(114, 'Viewed active-users', 'Registered', 1, 'http://saas.perklocker.thedevsites.com/public/active-users', '5.148.139.143', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/12.0.3 Safari/605.1.15', 'en-gb', 'http://saas.perklocker.thedevsites.com/public/routes', 'GET', '2019-03-13 21:53:51', '2019-03-13 21:53:51', NULL),
(115, 'Viewed users/create', 'Registered', 1, 'http://saas.perklocker.thedevsites.com/public/users/create', '5.148.139.143', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/12.0.3 Safari/605.1.15', 'en-gb', 'http://saas.perklocker.thedevsites.com/public/active-users', 'GET', '2019-03-13 21:53:56', '2019-03-13 21:53:56', NULL),
(116, 'Viewed themes', 'Registered', 1, 'http://saas.perklocker.thedevsites.com/public/themes', '5.148.139.143', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/12.0.3 Safari/605.1.15', 'en-gb', 'http://saas.perklocker.thedevsites.com/public/users/create', 'GET', '2019-03-13 21:54:00', '2019-03-13 21:54:00', NULL),
(117, 'Viewed home', 'Registered', 1, 'http://saas.perklocker.thedevsites.com/public/home', '5.148.139.143', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/12.0.3 Safari/605.1.15', 'en-gb', NULL, 'GET', '2019-03-13 21:57:46', '2019-03-13 21:57:46', NULL),
(118, 'Viewed users', 'Registered', 1, 'http://saas.perklocker.thedevsites.com/public/users', '5.148.139.143', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/12.0.3 Safari/605.1.15', 'en-gb', 'http://saas.perklocker.thedevsites.com/public/home', 'GET', '2019-03-13 21:58:14', '2019-03-13 21:58:14', NULL),
(119, 'Viewed users', 'Registered', 1, 'http://saas.perklocker.thedevsites.com/public/users', '5.148.139.143', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/12.0.3 Safari/605.1.15', 'en-gb', 'http://saas.perklocker.thedevsites.com/public/home', 'GET', '2019-03-13 21:58:47', '2019-03-13 21:58:47', NULL),
(120, 'Viewed users/2/edit', 'Registered', 1, 'http://saas.perklocker.thedevsites.com/public/users/2/edit', '5.148.139.143', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/12.0.3 Safari/605.1.15', 'en-gb', 'http://saas.perklocker.thedevsites.com/public/users', 'GET', '2019-03-13 21:58:50', '2019-03-13 21:58:50', NULL),
(121, 'Viewed logs', 'Registered', 1, 'http://saas.perklocker.thedevsites.com/public/logs', '5.148.139.143', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/12.0.3 Safari/605.1.15', 'en-gb', 'http://saas.perklocker.thedevsites.com/public/users/2/edit', 'GET', '2019-03-13 21:59:07', '2019-03-13 21:59:07', NULL),
(122, 'Viewed logs', 'Registered', 1, 'http://saas.perklocker.thedevsites.com/public/logs?l=bGFyYXZlbC0yMDE5LTAzLTEzLmxvZw%3D%3D', '5.148.139.143', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/12.0.3 Safari/605.1.15', 'en-gb', 'http://saas.perklocker.thedevsites.com/public/logs', 'GET', '2019-03-13 21:59:13', '2019-03-13 21:59:13', NULL),
(123, 'Viewed logs', 'Registered', 1, 'http://saas.perklocker.thedevsites.com/public/logs?l=bGFyYXZlbC0yMDE5LTAzLTA1LmxvZw%3D%3D', '5.148.139.143', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/12.0.3 Safari/605.1.15', 'en-gb', 'http://saas.perklocker.thedevsites.com/public/logs', 'GET', '2019-03-13 22:01:02', '2019-03-13 22:01:02', NULL),
(124, 'Viewed profile/john.deo', 'Registered', 1, 'http://saas.perklocker.thedevsites.com/public/profile/john.deo', '5.148.139.143', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/12.0.3 Safari/605.1.15', 'en-gb', 'http://saas.perklocker.thedevsites.com/public/logs', 'GET', '2019-03-13 22:03:41', '2019-03-13 22:03:41', NULL),
(125, 'Viewed profile/john.deo/edit', 'Registered', 1, 'http://saas.perklocker.thedevsites.com/public/profile/john.deo/edit', '5.148.139.143', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/12.0.3 Safari/605.1.15', 'en-gb', 'http://saas.perklocker.thedevsites.com/public/profile/john.deo', 'GET', '2019-03-13 22:03:48', '2019-03-13 22:03:48', NULL),
(126, 'Viewed home', 'Registered', 1, 'http://saas.perklocker.thedevsites.com/public/home', '5.148.139.143', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/12.0.3 Safari/605.1.15', 'en-gb', 'http://saas.perklocker.thedevsites.com/public/', 'GET', '2019-03-13 22:20:04', '2019-03-13 22:20:04', NULL),
(127, 'Viewed home', 'Registered', 1, 'http://saas.perklocker.thedevsites.com/public/home', '5.148.139.143', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/12.0.3 Safari/605.1.15', 'en-gb', 'http://saas.perklocker.thedevsites.com/public/', 'GET', '2019-03-13 22:20:05', '2019-03-13 22:20:05', NULL),
(128, 'Logged In', 'Registered', 1, 'http://saas.perklocker.thedevsites.com/public/login', '185.69.145.58', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/12.0.3 Safari/605.1.15', 'en-gb', 'http://saas.perklocker.thedevsites.com/public/login', 'POST', '2019-03-14 00:59:17', '2019-03-14 00:59:17', NULL),
(129, 'Viewed home', 'Registered', 1, 'http://saas.perklocker.thedevsites.com/public/home', '185.69.145.58', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/12.0.3 Safari/605.1.15', 'en-gb', 'http://saas.perklocker.thedevsites.com/public/login', 'GET', '2019-03-14 00:59:18', '2019-03-14 00:59:18', NULL),
(130, 'Viewed users', 'Registered', 1, 'http://saas.perklocker.thedevsites.com/public/users', '185.69.145.58', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/12.0.3 Safari/605.1.15', 'en-gb', 'http://saas.perklocker.thedevsites.com/public/home', 'GET', '2019-03-14 00:59:23', '2019-03-14 00:59:23', NULL),
(131, 'Logged In', 'Registered', 1, 'http://saas.perklocker.thedevsites.com/public/login', '202.142.95.55', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36', 'en-US,en;q=0.9', 'http://saas.perklocker.thedevsites.com/public/login', 'POST', '2019-03-17 17:38:28', '2019-03-17 17:38:28', NULL),
(132, 'Viewed home', 'Registered', 1, 'http://saas.perklocker.thedevsites.com/public/home', '202.142.95.55', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36', 'en-US,en;q=0.9', 'http://saas.perklocker.thedevsites.com/public/login', 'GET', '2019-03-17 17:38:29', '2019-03-17 17:38:29', NULL),
(133, 'Viewed home', 'Registered', 1, 'http://saas.perklocker.thedevsites.com/public/home', '202.142.95.55', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36', 'en-US,en;q=0.9', 'http://saas.perklocker.thedevsites.com/public/login', 'GET', '2019-03-17 17:39:13', '2019-03-17 17:39:13', NULL),
(134, 'Logged Out', 'Registered', 1, 'http://saas.perklocker.thedevsites.com/public/logout', '202.142.95.55', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36', 'en-US,en;q=0.9', 'http://saas.perklocker.thedevsites.com/public/home', 'POST', '2019-03-17 17:39:18', '2019-03-17 17:39:18', NULL),
(135, 'Logged In', 'Registered', 1, 'http://saas.perklocker.thedevsites.com/public/login', '47.15.185.110', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.75 Safari/537.36', 'en-US,en;q=0.9', 'http://saas.perklocker.thedevsites.com/public/login', 'POST', '2019-03-17 21:14:43', '2019-03-17 21:14:43', NULL),
(136, 'Viewed home', 'Registered', 1, 'http://saas.perklocker.thedevsites.com/public/home', '47.15.185.110', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.75 Safari/537.36', 'en-US,en;q=0.9', 'http://saas.perklocker.thedevsites.com/public/login', 'GET', '2019-03-17 21:14:44', '2019-03-17 21:14:44', NULL),
(137, 'Viewed users', 'Registered', 1, 'http://saas.perklocker.thedevsites.com/public/users', '47.15.185.110', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.75 Safari/537.36', 'en-US,en;q=0.9', 'http://saas.perklocker.thedevsites.com/public/home', 'GET', '2019-03-17 21:15:14', '2019-03-17 21:15:14', NULL),
(138, 'Viewed logs', 'Registered', 1, 'http://saas.perklocker.thedevsites.com/public/logs', '47.15.185.110', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.75 Safari/537.36', 'en-US,en;q=0.9', 'http://saas.perklocker.thedevsites.com/public/users', 'GET', '2019-03-17 21:17:24', '2019-03-17 21:17:24', NULL),
(139, 'Logged In', 'Registered', 1, 'http://saas.perklocker.thedevsites.com/public/login', '202.142.95.55', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36', 'en-US,en;q=0.9', 'http://saas.perklocker.thedevsites.com/public/login', 'POST', '2019-03-17 22:01:32', '2019-03-17 22:01:32', NULL),
(140, 'Viewed home', 'Registered', 1, 'http://saas.perklocker.thedevsites.com/public/home', '202.142.95.55', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36', 'en-US,en;q=0.9', 'http://saas.perklocker.thedevsites.com/public/login', 'GET', '2019-03-17 22:01:33', '2019-03-17 22:01:33', NULL),
(141, 'Viewed users', 'Registered', 1, 'http://saas.perklocker.thedevsites.com/public/users', '47.15.185.110', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.75 Safari/537.36', 'en-US,en;q=0.9', NULL, 'GET', '2019-03-17 22:06:21', '2019-03-17 22:06:21', NULL),
(142, 'Viewed home', 'Registered', 1, 'http://saas.perklocker.thedevsites.com/public/home', '202.142.95.55', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36', 'en-US,en;q=0.9', NULL, 'GET', '2019-03-17 22:29:25', '2019-03-17 22:29:25', NULL),
(143, 'Logged In', 'Registered', 1, 'http://saas.perklocker.thedevsites.com/public/login', '47.15.185.110', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.75 Safari/537.36', 'en-US,en;q=0.9', 'http://saas.perklocker.thedevsites.com/public/login', 'POST', '2019-03-18 01:33:56', '2019-03-18 01:33:56', NULL);
INSERT INTO `laravel_logger_activity` (`id`, `description`, `userType`, `userId`, `route`, `ipAddress`, `userAgent`, `locale`, `referer`, `methodType`, `created_at`, `updated_at`, `deleted_at`) VALUES
(144, 'Viewed home', 'Registered', 1, 'http://saas.perklocker.thedevsites.com/public/home', '47.15.185.110', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.75 Safari/537.36', 'en-US,en;q=0.9', 'http://saas.perklocker.thedevsites.com/public/login', 'GET', '2019-03-18 01:33:56', '2019-03-18 01:33:56', NULL),
(145, 'Viewed profile/john.deo', 'Registered', 1, 'http://saas.perklocker.thedevsites.com/public/profile/john.deo', '47.15.185.110', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.75 Safari/537.36', 'en-US,en;q=0.9', 'http://saas.perklocker.thedevsites.com/public/home', 'GET', '2019-03-18 01:48:05', '2019-03-18 01:48:05', NULL),
(146, 'Viewed home', 'Registered', 1, 'http://saas.perklocker.thedevsites.com/public/home', '47.15.185.110', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.75 Safari/537.36', 'en-US,en;q=0.9', NULL, 'GET', '2019-03-18 02:33:28', '2019-03-18 02:33:28', NULL),
(147, 'Viewed home', 'Registered', 1, 'http://saas.perklocker.thedevsites.com/public/home', '47.15.185.110', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.75 Safari/537.36', 'en-US,en;q=0.9', NULL, 'GET', '2019-03-18 02:33:47', '2019-03-18 02:33:47', NULL),
(148, 'Viewed home', 'Registered', 1, 'http://saas.perklocker.thedevsites.com/public/home', '47.15.185.110', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.75 Safari/537.36', 'en-US,en;q=0.9', NULL, 'GET', '2019-03-18 02:37:42', '2019-03-18 02:37:42', NULL),
(149, 'Viewed home', 'Registered', 1, 'http://saas.perklocker.thedevsites.com/public/home', '47.15.185.110', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.75 Safari/537.36', 'en-US,en;q=0.9', NULL, 'GET', '2019-03-18 02:39:46', '2019-03-18 02:39:46', NULL),
(150, 'Viewed home', 'Registered', 1, 'http://saas.perklocker.thedevsites.com/public/home', '47.15.185.110', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.75 Safari/537.36', 'en-US,en;q=0.9', NULL, 'GET', '2019-03-18 02:42:33', '2019-03-18 02:42:33', NULL),
(151, 'Viewed home', 'Registered', 1, 'http://saas.perklocker.thedevsites.com/public/home', '47.15.185.110', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.75 Safari/537.36', 'en-US,en;q=0.9', NULL, 'GET', '2019-03-18 02:42:54', '2019-03-18 02:42:54', NULL),
(152, 'Viewed home', 'Registered', 1, 'http://saas.perklocker.thedevsites.com/public/home', '47.15.185.110', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.75 Safari/537.36', 'en-US,en;q=0.9', NULL, 'GET', '2019-03-18 02:45:04', '2019-03-18 02:45:04', NULL),
(153, 'Viewed home', 'Registered', 1, 'http://saas.perklocker.thedevsites.com/public/home', '47.15.185.110', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.75 Safari/537.36', 'en-US,en;q=0.9', NULL, 'GET', '2019-03-18 02:49:10', '2019-03-18 02:49:10', NULL),
(154, 'Viewed home', 'Registered', 1, 'http://saas.perklocker.thedevsites.com/public/home', '47.15.185.110', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.75 Safari/537.36', 'en-US,en;q=0.9', NULL, 'GET', '2019-03-18 02:54:21', '2019-03-18 02:54:21', NULL),
(155, 'Viewed home', 'Registered', 1, 'http://saas.perklocker.thedevsites.com/public/home', '47.15.185.110', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.75 Safari/537.36', 'en-US,en;q=0.9', NULL, 'GET', '2019-03-18 02:56:14', '2019-03-18 02:56:14', NULL),
(156, 'Viewed home', 'Registered', 1, 'https://saas.perklocker.thedevsites.com/public/home', '47.15.185.110', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.75 Safari/537.36', 'en-US,en;q=0.9', NULL, 'GET', '2019-03-18 02:58:06', '2019-03-18 02:58:06', NULL),
(157, 'Viewed home', 'Registered', 1, 'https://saas.perklocker.thedevsites.com/public/home', '47.15.185.110', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.75 Safari/537.36', 'en-US,en;q=0.9', NULL, 'GET', '2019-03-18 03:00:22', '2019-03-18 03:00:22', NULL),
(158, 'Viewed home', 'Registered', 1, 'https://saas.perklocker.thedevsites.com/public/home', '47.15.185.110', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.75 Safari/537.36', 'en-US,en;q=0.9', NULL, 'GET', '2019-03-18 03:04:11', '2019-03-18 03:04:11', NULL),
(159, 'Viewed home', 'Registered', 1, 'https://saas.perklocker.thedevsites.com/public/home', '47.15.185.110', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.75 Safari/537.36', 'en-US,en;q=0.9', NULL, 'GET', '2019-03-18 03:06:51', '2019-03-18 03:06:51', NULL),
(160, 'Viewed home', 'Registered', 1, 'https://saas.perklocker.thedevsites.com/public/home', '47.15.185.110', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.75 Safari/537.36', 'en-US,en;q=0.9', NULL, 'GET', '2019-03-18 03:09:05', '2019-03-18 03:09:05', NULL),
(161, 'Viewed home', 'Registered', 1, 'https://saas.perklocker.thedevsites.com/public/home', '47.15.185.110', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.75 Safari/537.36', 'en-US,en;q=0.9', NULL, 'GET', '2019-03-18 03:09:46', '2019-03-18 03:09:46', NULL),
(162, 'Viewed home', 'Registered', 1, 'https://saas.perklocker.thedevsites.com/public/home', '47.15.185.110', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.75 Safari/537.36', 'en-US,en;q=0.9', NULL, 'GET', '2019-03-18 03:10:05', '2019-03-18 03:10:05', NULL),
(163, 'Viewed home', 'Registered', 1, 'https://saas.perklocker.thedevsites.com/public/home', '47.15.185.110', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.75 Safari/537.36', 'en-US,en;q=0.9', NULL, 'GET', '2019-03-18 03:11:29', '2019-03-18 03:11:29', NULL),
(164, 'Viewed home', 'Registered', 1, 'https://saas.perklocker.thedevsites.com/public/home', '47.15.185.110', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.75 Safari/537.36', 'en-US,en;q=0.9', NULL, 'GET', '2019-03-18 03:15:42', '2019-03-18 03:15:42', NULL),
(165, 'Viewed home', 'Registered', 1, 'https://saas.perklocker.thedevsites.com/public/home', '47.15.185.110', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.75 Safari/537.36', 'en-US,en;q=0.9', NULL, 'GET', '2019-03-18 03:19:14', '2019-03-18 03:19:14', NULL),
(166, 'Viewed home', 'Registered', 1, 'https://saas.perklocker.thedevsites.com/public/home', '47.15.185.110', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.75 Safari/537.36', 'en-US,en;q=0.9', NULL, 'GET', '2019-03-18 03:46:10', '2019-03-18 03:46:10', NULL),
(167, 'Viewed home', 'Registered', 1, 'https://saas.perklocker.thedevsites.com/public/home', '47.15.185.110', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.75 Safari/537.36', 'en-US,en;q=0.9', NULL, 'GET', '2019-03-18 03:48:17', '2019-03-18 03:48:17', NULL),
(168, 'Viewed home', 'Registered', 1, 'https://saas.perklocker.thedevsites.com/public/home', '47.15.185.110', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.75 Safari/537.36', 'en-US,en;q=0.9', NULL, 'GET', '2019-03-18 03:49:07', '2019-03-18 03:49:07', NULL),
(169, 'Viewed home', 'Registered', 1, 'https://saas.perklocker.thedevsites.com/public/home', '47.15.185.110', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.75 Safari/537.36', 'en-US,en;q=0.9', NULL, 'GET', '2019-03-18 04:07:09', '2019-03-18 04:07:09', NULL),
(170, 'Viewed home', 'Registered', 1, 'https://saas.perklocker.thedevsites.com/public/home', '47.15.185.110', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.75 Safari/537.36', 'en-US,en;q=0.9', NULL, 'GET', '2019-03-18 04:09:48', '2019-03-18 04:09:48', NULL),
(171, 'Viewed users', 'Registered', 1, 'https://saas.perklocker.thedevsites.com/public/users', '47.15.185.110', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.75 Safari/537.36', 'en-US,en;q=0.9', 'https://saas.perklocker.thedevsites.com/public/home', 'GET', '2019-03-18 04:10:09', '2019-03-18 04:10:09', NULL),
(172, 'Viewed users', 'Registered', 1, 'https://saas.perklocker.thedevsites.com/public/users', '47.15.185.110', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.75 Safari/537.36', 'en-US,en;q=0.9', 'https://saas.perklocker.thedevsites.com/public/users', 'GET', '2019-03-18 04:10:16', '2019-03-18 04:10:16', NULL),
(173, 'Viewed users', 'Registered', 1, 'https://saas.perklocker.thedevsites.com/public/users', '47.15.185.110', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.75 Safari/537.36', 'en-US,en;q=0.9', 'https://saas.perklocker.thedevsites.com/public/users', 'GET', '2019-03-18 04:10:20', '2019-03-18 04:10:20', NULL),
(174, 'Viewed users', 'Registered', 1, 'https://saas.perklocker.thedevsites.com/public/users', '47.15.185.110', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.75 Safari/537.36', 'en-US,en;q=0.9', 'https://saas.perklocker.thedevsites.com/public/users', 'GET', '2019-03-18 04:10:22', '2019-03-18 04:10:22', NULL),
(175, 'Viewed users/create', 'Registered', 1, 'https://saas.perklocker.thedevsites.com/public/users/create', '47.15.185.110', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.75 Safari/537.36', 'en-US,en;q=0.9', 'https://saas.perklocker.thedevsites.com/public/users', 'GET', '2019-03-18 04:10:26', '2019-03-18 04:10:26', NULL),
(176, 'Viewed users/create', 'Registered', 1, 'https://saas.perklocker.thedevsites.com/public/users/create', '47.15.185.110', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.75 Safari/537.36', 'en-US,en;q=0.9', 'https://saas.perklocker.thedevsites.com/public/users', 'GET', '2019-03-18 04:12:38', '2019-03-18 04:12:38', NULL),
(177, 'Viewed logs', 'Registered', 1, 'https://saas.perklocker.thedevsites.com/public/logs', '47.15.185.110', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.75 Safari/537.36', 'en-US,en;q=0.9', 'https://saas.perklocker.thedevsites.com/public/users/create', 'GET', '2019-03-18 04:12:47', '2019-03-18 04:12:47', NULL),
(178, 'Viewed users', 'Registered', 1, 'https://saas.perklocker.thedevsites.com/public/users', '47.15.185.110', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.75 Safari/537.36', 'en-US,en;q=0.9', 'https://saas.perklocker.thedevsites.com/public/logs', 'GET', '2019-03-18 04:12:50', '2019-03-18 04:12:50', NULL),
(179, 'Viewed users/create', 'Registered', 1, 'https://saas.perklocker.thedevsites.com/public/users/create', '47.15.185.110', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.75 Safari/537.36', 'en-US,en;q=0.9', 'https://saas.perklocker.thedevsites.com/public/users', 'GET', '2019-03-18 04:12:53', '2019-03-18 04:12:53', NULL),
(180, 'Viewed users', 'Registered', 1, 'https://saas.perklocker.thedevsites.com/public/users', '47.15.185.110', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.75 Safari/537.36', 'en-US,en;q=0.9', 'https://saas.perklocker.thedevsites.com/public/users/create', 'GET', '2019-03-18 04:13:05', '2019-03-18 04:13:05', NULL),
(181, 'Viewed users/create', 'Registered', 1, 'https://saas.perklocker.thedevsites.com/public/users/create', '47.15.185.110', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.75 Safari/537.36', 'en-US,en;q=0.9', 'https://saas.perklocker.thedevsites.com/public/users', 'GET', '2019-03-18 04:14:11', '2019-03-18 04:14:11', NULL),
(182, 'Viewed logs', 'Registered', 1, 'https://saas.perklocker.thedevsites.com/public/logs', '47.15.185.110', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.75 Safari/537.36', 'en-US,en;q=0.9', 'https://saas.perklocker.thedevsites.com/public/users/create', 'GET', '2019-03-18 04:14:13', '2019-03-18 04:14:13', NULL),
(183, 'Viewed users', 'Registered', 1, 'https://saas.perklocker.thedevsites.com/public/users', '47.15.185.110', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.75 Safari/537.36', 'en-US,en;q=0.9', 'https://saas.perklocker.thedevsites.com/public/logs', 'GET', '2019-03-18 04:15:05', '2019-03-18 04:15:05', NULL),
(184, 'Viewed users', 'Registered', 1, 'https://saas.perklocker.thedevsites.com/public/users', '47.15.185.110', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.75 Safari/537.36', 'en-US,en;q=0.9', 'https://saas.perklocker.thedevsites.com/public/users', 'GET', '2019-03-18 04:18:48', '2019-03-18 04:18:48', NULL),
(185, 'Viewed home', 'Registered', 1, 'https://saas.perklocker.thedevsites.com/public/home', '47.15.185.110', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.75 Safari/537.36', 'en-US,en;q=0.9', NULL, 'GET', '2019-03-18 04:19:02', '2019-03-18 04:19:02', NULL),
(186, 'Viewed home', 'Registered', 1, 'https://saas.perklocker.thedevsites.com/public/home', '47.15.185.110', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.75 Safari/537.36', 'en-US,en;q=0.9', NULL, 'GET', '2019-03-18 04:23:22', '2019-03-18 04:23:22', NULL),
(187, 'Viewed home', 'Registered', 1, 'https://saas.perklocker.thedevsites.com/public/home', '47.15.185.110', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.75 Safari/537.36', 'en-US,en;q=0.9', NULL, 'GET', '2019-03-18 04:24:31', '2019-03-18 04:24:31', NULL),
(188, 'Viewed home', 'Registered', 1, 'https://saas.perklocker.thedevsites.com/public/home', '47.15.185.110', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.75 Safari/537.36', 'en-US,en;q=0.9', NULL, 'GET', '2019-03-18 04:25:52', '2019-03-18 04:25:52', NULL),
(189, 'Viewed users/create', 'Registered', 1, 'https://saas.perklocker.thedevsites.com/public/users/create', '47.15.185.110', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.75 Safari/537.36', 'en-US,en;q=0.9', 'https://saas.perklocker.thedevsites.com/public/home', 'GET', '2019-03-18 04:26:20', '2019-03-18 04:26:20', NULL),
(190, 'Viewed users', 'Registered', 1, 'https://saas.perklocker.thedevsites.com/public/users', '47.15.185.110', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.75 Safari/537.36', 'en-US,en;q=0.9', 'https://saas.perklocker.thedevsites.com/public/users/create', 'GET', '2019-03-18 04:26:29', '2019-03-18 04:26:29', NULL),
(191, 'Viewed home', 'Registered', 1, 'https://saas.perklocker.thedevsites.com/public/home', '47.15.185.110', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.75 Safari/537.36', 'en-US,en;q=0.9', NULL, 'GET', '2019-03-18 04:26:51', '2019-03-18 04:26:51', NULL),
(192, 'Viewed home', 'Registered', 1, 'https://saas.perklocker.thedevsites.com/public/home', '47.15.185.110', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.75 Safari/537.36', 'en-US,en;q=0.9', NULL, 'GET', '2019-03-18 04:32:38', '2019-03-18 04:32:38', NULL),
(193, 'Viewed home', 'Registered', 1, 'https://saas.perklocker.thedevsites.com/public/home', '47.15.185.110', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.75 Safari/537.36', 'en-US,en;q=0.9', NULL, 'GET', '2019-03-18 04:33:51', '2019-03-18 04:33:51', NULL),
(194, 'Viewed users/create', 'Registered', 1, 'https://saas.perklocker.thedevsites.com/public/users/create', '47.15.185.110', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.75 Safari/537.36', 'en-US,en;q=0.9', 'https://saas.perklocker.thedevsites.com/public/home', 'GET', '2019-03-18 04:36:03', '2019-03-18 04:36:03', NULL),
(195, 'Viewed users/create', 'Registered', 1, 'https://saas.perklocker.thedevsites.com/public/users/create', '47.15.185.110', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.75 Safari/537.36', 'en-US,en;q=0.9', 'https://saas.perklocker.thedevsites.com/public/home', 'GET', '2019-03-18 04:42:58', '2019-03-18 04:42:58', NULL),
(196, 'Viewed users/create', 'Registered', 1, 'https://saas.perklocker.thedevsites.com/public/users/create', '47.15.185.110', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.75 Safari/537.36', 'en-US,en;q=0.9', NULL, 'GET', '2019-03-18 04:49:09', '2019-03-18 04:49:09', NULL),
(197, 'Viewed users/create', 'Registered', 1, 'https://saas.perklocker.thedevsites.com/public/users/create', '47.15.185.110', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.75 Safari/537.36', 'en-US,en;q=0.9', NULL, 'GET', '2019-03-18 04:52:19', '2019-03-18 04:52:19', NULL),
(198, 'Viewed users/create', 'Registered', 1, 'https://saas.perklocker.thedevsites.com/public/users/create', '47.15.185.110', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.75 Safari/537.36', 'en-US,en;q=0.9', NULL, 'GET', '2019-03-18 04:53:00', '2019-03-18 04:53:00', NULL),
(199, 'Viewed users/create', 'Registered', 1, 'https://saas.perklocker.thedevsites.com/public/users/create', '47.15.185.110', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.75 Safari/537.36', 'en-US,en;q=0.9', NULL, 'GET', '2019-03-18 04:55:03', '2019-03-18 04:55:03', NULL),
(200, 'Viewed users/home', 'Registered', 1, 'https://saas.perklocker.thedevsites.com/public/users/home', '47.15.185.110', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.75 Safari/537.36', 'en-US,en;q=0.9', NULL, 'GET', '2019-03-18 04:55:09', '2019-03-18 04:55:09', NULL),
(201, 'Viewed users/home', 'Registered', 1, 'https://saas.perklocker.thedevsites.com/public/users/home', '47.15.185.110', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.75 Safari/537.36', 'en-US,en;q=0.9', NULL, 'GET', '2019-03-18 04:55:45', '2019-03-18 04:55:45', NULL),
(202, 'Viewed users/home', 'Registered', 1, 'https://saas.perklocker.thedevsites.com/public/users/home', '47.15.185.110', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.75 Safari/537.36', 'en-US,en;q=0.9', NULL, 'GET', '2019-03-18 04:55:52', '2019-03-18 04:55:52', NULL),
(203, 'Viewed users/home', 'Registered', 1, 'https://saas.perklocker.thedevsites.com/public/users/home', '47.15.185.110', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.75 Safari/537.36', 'en-US,en;q=0.9', NULL, 'GET', '2019-03-18 04:56:50', '2019-03-18 04:56:50', NULL),
(204, 'Viewed users/home', 'Registered', 1, 'https://saas.perklocker.thedevsites.com/public/users/home', '47.15.185.110', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.75 Safari/537.36', 'en-US,en;q=0.9', NULL, 'GET', '2019-03-18 04:57:37', '2019-03-18 04:57:37', NULL),
(205, 'Viewed users/home', 'Registered', 1, 'https://saas.perklocker.thedevsites.com/public/users/home', '47.15.185.110', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.75 Safari/537.36', 'en-US,en;q=0.9', NULL, 'GET', '2019-03-18 04:59:24', '2019-03-18 04:59:24', NULL),
(206, 'Viewed users/home', 'Registered', 1, 'https://saas.perklocker.thedevsites.com/public/users/home', '47.15.185.110', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.75 Safari/537.36', 'en-US,en;q=0.9', NULL, 'GET', '2019-03-18 05:00:35', '2019-03-18 05:00:35', NULL),
(207, 'Viewed users/create', 'Registered', 1, 'https://saas.perklocker.thedevsites.com/public/users/create', '47.15.185.110', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.75 Safari/537.36', 'en-US,en;q=0.9', NULL, 'GET', '2019-03-18 05:00:44', '2019-03-18 05:00:44', NULL),
(208, 'Viewed users/create', 'Registered', 1, 'https://saas.perklocker.thedevsites.com/public/users/create', '47.15.185.110', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.75 Safari/537.36', 'en-US,en;q=0.9', NULL, 'GET', '2019-03-18 05:01:35', '2019-03-18 05:01:35', NULL),
(209, 'Viewed users/home', 'Registered', 1, 'https://saas.perklocker.thedevsites.com/public/users/home', '47.15.185.110', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.75 Safari/537.36', 'en-US,en;q=0.9', NULL, 'GET', '2019-03-18 05:01:45', '2019-03-18 05:01:45', NULL),
(210, 'Viewed users/home', 'Registered', 1, 'https://saas.perklocker.thedevsites.com/public/users/home', '47.15.185.110', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.75 Safari/537.36', 'en-US,en;q=0.9', NULL, 'GET', '2019-03-18 05:02:58', '2019-03-18 05:02:58', NULL),
(211, 'Viewed users/create', 'Registered', 1, 'https://saas.perklocker.thedevsites.com/public/users/create', '47.15.185.110', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.75 Safari/537.36', 'en-US,en;q=0.9', NULL, 'GET', '2019-03-18 05:03:33', '2019-03-18 05:03:33', NULL),
(212, 'Viewed users/home', 'Registered', 1, 'https://saas.perklocker.thedevsites.com/public/users/home', '47.15.185.110', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.75 Safari/537.36', 'en-US,en;q=0.9', NULL, 'GET', '2019-03-18 05:04:31', '2019-03-18 05:04:31', NULL),
(213, 'Viewed users/home', 'Registered', 1, 'https://saas.perklocker.thedevsites.com/public/users/home', '47.15.185.110', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.75 Safari/537.36', 'en-US,en;q=0.9', NULL, 'GET', '2019-03-18 05:05:26', '2019-03-18 05:05:26', NULL),
(214, 'Viewed users/home', 'Registered', 1, 'https://saas.perklocker.thedevsites.com/public/users/home', '47.15.185.110', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.75 Safari/537.36', 'en-US,en;q=0.9', NULL, 'GET', '2019-03-18 05:07:38', '2019-03-18 05:07:38', NULL),
(215, 'Viewed users/home', 'Registered', 1, 'https://saas.perklocker.thedevsites.com/public/users/home', '47.15.185.110', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.75 Safari/537.36', 'en-US,en;q=0.9', NULL, 'GET', '2019-03-18 05:12:40', '2019-03-18 05:12:40', NULL),
(216, 'Viewed users/home', 'Registered', 1, 'https://saas.perklocker.thedevsites.com/public/users/home', '47.15.185.110', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.75 Safari/537.36', 'en-US,en;q=0.9', NULL, 'GET', '2019-03-18 05:13:28', '2019-03-18 05:13:28', NULL),
(217, 'Viewed users/home', 'Registered', 1, 'https://saas.perklocker.thedevsites.com/public/users/home', '47.15.185.110', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.75 Safari/537.36', 'en-US,en;q=0.9', NULL, 'GET', '2019-03-18 05:14:11', '2019-03-18 05:14:11', NULL),
(218, 'Viewed users/routes', 'Registered', 1, 'https://saas.perklocker.thedevsites.com/public/users/routes', '47.15.185.110', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.75 Safari/537.36', 'en-US,en;q=0.9', NULL, 'GET', '2019-03-18 05:16:01', '2019-03-18 05:16:01', NULL),
(219, 'Viewed users/routes', 'Registered', 1, 'https://saas.perklocker.thedevsites.com/public/users/routes', '47.15.185.110', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.75 Safari/537.36', 'en-US,en;q=0.9', NULL, 'GET', '2019-03-18 05:16:53', '2019-03-18 05:16:53', NULL),
(220, 'Viewed users/routes', 'Registered', 1, 'https://saas.perklocker.thedevsites.com/public/users/routes', '47.15.185.110', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.75 Safari/537.36', 'en-US,en;q=0.9', NULL, 'GET', '2019-03-18 05:17:15', '2019-03-18 05:17:15', NULL),
(221, 'Viewed users/routes', 'Registered', 1, 'https://saas.perklocker.thedevsites.com/public/users/routes', '47.15.185.110', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.75 Safari/537.36', 'en-US,en;q=0.9', NULL, 'GET', '2019-03-18 05:19:26', '2019-03-18 05:19:26', NULL),
(222, 'Viewed users/routes', 'Registered', 1, 'https://saas.perklocker.thedevsites.com/public/users/routes', '47.15.185.110', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.75 Safari/537.36', 'en-US,en;q=0.9', NULL, 'GET', '2019-03-18 05:21:21', '2019-03-18 05:21:21', NULL),
(223, 'Viewed users/routes', 'Registered', 1, 'https://saas.perklocker.thedevsites.com/public/users/routes', '47.15.185.110', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.75 Safari/537.36', 'en-US,en;q=0.9', NULL, 'GET', '2019-03-18 05:22:20', '2019-03-18 05:22:20', NULL),
(224, 'Viewed users/routes', 'Registered', 1, 'https://saas.perklocker.thedevsites.com/public/users/routes', '47.15.185.110', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.75 Safari/537.36', 'en-US,en;q=0.9', NULL, 'GET', '2019-03-18 05:26:06', '2019-03-18 05:26:06', NULL),
(225, 'Viewed users/home', 'Registered', 1, 'https://saas.perklocker.thedevsites.com/public/users/home', '47.15.185.110', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.75 Safari/537.36', 'en-US,en;q=0.9', NULL, 'GET', '2019-03-18 05:26:16', '2019-03-18 05:26:16', NULL),
(226, 'Viewed home', 'Registered', 1, 'https://saas.perklocker.thedevsites.com/public/home', '47.15.185.110', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.75 Safari/537.36', 'en-US,en;q=0.9', NULL, 'GET', '2019-03-18 05:26:41', '2019-03-18 05:26:41', NULL),
(227, 'Viewed home', 'Registered', 1, 'https://saas.perklocker.thedevsites.com/public/home', '47.15.185.110', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.75 Safari/537.36', 'en-US,en;q=0.9', NULL, 'GET', '2019-03-18 05:28:12', '2019-03-18 05:28:12', NULL),
(228, 'Viewed home', 'Registered', 1, 'https://saas.perklocker.thedevsites.com/public/home', '47.15.185.110', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.75 Safari/537.36', 'en-US,en;q=0.9', NULL, 'GET', '2019-03-18 05:38:14', '2019-03-18 05:38:14', NULL),
(229, 'Viewed home', 'Registered', 1, 'https://saas.perklocker.thedevsites.com/public/home', '47.15.185.110', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.75 Safari/537.36', 'en-US,en;q=0.9', NULL, 'GET', '2019-03-18 05:42:45', '2019-03-18 05:42:45', NULL),
(230, 'Viewed home', 'Registered', 1, 'https://saas.perklocker.thedevsites.com/public/home', '47.15.185.110', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.75 Safari/537.36', 'en-US,en;q=0.9', NULL, 'GET', '2019-03-18 05:42:53', '2019-03-18 05:42:53', NULL),
(231, 'Viewed home', 'Registered', 1, 'https://saas.perklocker.thedevsites.com/public/home', '47.15.185.110', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.75 Safari/537.36', 'en-US,en;q=0.9', NULL, 'GET', '2019-03-18 05:46:21', '2019-03-18 05:46:21', NULL),
(232, 'Viewed home', 'Registered', 1, 'https://saas.perklocker.thedevsites.com/public/home', '47.15.185.110', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.75 Safari/537.36', 'en-US,en;q=0.9', NULL, 'GET', '2019-03-18 05:49:51', '2019-03-18 05:49:51', NULL),
(233, 'Viewed home', 'Registered', 1, 'https://saas.perklocker.thedevsites.com/public/home', '47.15.185.110', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.75 Safari/537.36', 'en-US,en;q=0.9', 'https://saas.perklocker.thedevsites.com/public/', 'GET', '2019-03-18 05:54:32', '2019-03-18 05:54:32', NULL),
(234, 'Viewed home', 'Registered', 1, 'https://saas.perklocker.thedevsites.com/public/home', '47.15.185.110', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.75 Safari/537.36', 'en-US,en;q=0.9', NULL, 'GET', '2019-03-18 05:55:17', '2019-03-18 05:55:17', NULL),
(235, 'Viewed home', 'Registered', 1, 'http://saas.perklocker.thedevsites.com/public/home', '47.15.185.110', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.75 Safari/537.36', 'en-US,en;q=0.9', NULL, 'GET', '2019-03-18 05:55:38', '2019-03-18 05:55:38', NULL),
(236, 'Viewed home', 'Registered', 1, 'https://saas.perklocker.thedevsites.com/public/home', '47.15.185.110', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.75 Safari/537.36', 'en-US,en;q=0.9', NULL, 'GET', '2019-03-18 05:56:18', '2019-03-18 05:56:18', NULL),
(237, 'Viewed home', 'Registered', 1, 'http://saas.perklocker.thedevsites.com/public/home', '47.15.185.110', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.75 Safari/537.36', 'en-US,en;q=0.9', NULL, 'GET', '2019-03-18 05:57:14', '2019-03-18 05:57:14', NULL),
(238, 'Viewed home', 'Registered', 1, 'https://saas.perklocker.thedevsites.com/public/home', '47.15.185.110', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.75 Safari/537.36', 'en-US,en;q=0.9', NULL, 'GET', '2019-03-18 06:10:45', '2019-03-18 06:10:45', NULL),
(239, 'Viewed home', 'Registered', 1, 'https://saas.perklocker.thedevsites.com/public/home', '47.15.185.110', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.75 Safari/537.36', 'en-US,en;q=0.9', NULL, 'GET', '2019-03-18 06:11:10', '2019-03-18 06:11:10', NULL),
(240, 'Viewed home', 'Registered', 1, 'https://saas.perklocker.thedevsites.com/public/home', '47.15.185.110', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.75 Safari/537.36', 'en-US,en;q=0.9', NULL, 'GET', '2019-03-18 06:12:00', '2019-03-18 06:12:00', NULL),
(241, 'Viewed home', 'Registered', 1, 'https://saas.perklocker.thedevsites.com/public/home', '47.15.185.110', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.75 Safari/537.36', 'en-US,en;q=0.9', NULL, 'GET', '2019-03-18 06:13:07', '2019-03-18 06:13:07', NULL),
(242, 'Viewed home', 'Registered', 1, 'https://saas.perklocker.thedevsites.com/public/home', '47.15.185.110', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.75 Safari/537.36', 'en-US,en;q=0.9', NULL, 'GET', '2019-03-18 06:15:26', '2019-03-18 06:15:26', NULL),
(243, 'Viewed users', 'Registered', 1, 'https://saas.perklocker.thedevsites.com/public/users', '47.15.185.110', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.75 Safari/537.36', 'en-US,en;q=0.9', 'https://saas.perklocker.thedevsites.com/public/home', 'GET', '2019-03-18 06:16:03', '2019-03-18 06:16:03', NULL),
(244, 'Viewed users/create', 'Registered', 1, 'https://saas.perklocker.thedevsites.com/public/users/create', '47.15.185.110', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.75 Safari/537.36', 'en-US,en;q=0.9', 'https://saas.perklocker.thedevsites.com/public/users', 'GET', '2019-03-18 06:16:08', '2019-03-18 06:16:08', NULL),
(245, 'Viewed users/create', 'Registered', 1, 'https://saas.perklocker.thedevsites.com/public/users/create', '47.15.185.110', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.75 Safari/537.36', 'en-US,en;q=0.9', 'https://saas.perklocker.thedevsites.com/public/users', 'GET', '2019-03-18 06:16:10', '2019-03-18 06:16:10', NULL),
(246, 'Viewed logs', 'Registered', 1, 'https://saas.perklocker.thedevsites.com/public/logs', '47.15.185.110', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.75 Safari/537.36', 'en-US,en;q=0.9', 'https://saas.perklocker.thedevsites.com/public/users/create', 'GET', '2019-03-18 06:16:13', '2019-03-18 06:16:13', NULL),
(247, 'Logged In', 'Registered', 1, 'http://saas.perklocker.thedevsites.com/public/login', '47.15.185.110', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.75 Safari/537.36', 'en-US,en;q=0.9', 'http://saas.perklocker.thedevsites.com/public/login', 'POST', '2019-03-18 06:41:24', '2019-03-18 06:41:24', NULL),
(248, 'Viewed home', 'Registered', 1, 'http://saas.perklocker.thedevsites.com/public/home', '47.15.185.110', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.75 Safari/537.36', 'en-US,en;q=0.9', 'http://saas.perklocker.thedevsites.com/public/login', 'GET', '2019-03-18 06:41:25', '2019-03-18 06:41:25', NULL),
(249, 'Viewed home', 'Registered', 1, 'https://saas.perklocker.thedevsites.com/public/home', '47.15.185.110', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.75 Safari/537.36', 'en-US,en;q=0.9', NULL, 'GET', '2019-03-18 06:41:44', '2019-03-18 06:41:44', NULL),
(250, 'Logged In', 'Registered', 1, 'http://saas.perklocker.thedevsites.com/public/login', '202.142.95.55', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36', 'en-US,en;q=0.9', 'http://saas.perklocker.thedevsites.com/public/login', 'POST', '2019-03-18 13:28:48', '2019-03-18 13:28:48', NULL),
(251, 'Viewed home', 'Registered', 1, 'http://saas.perklocker.thedevsites.com/public/home', '202.142.95.55', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36', 'en-US,en;q=0.9', 'http://saas.perklocker.thedevsites.com/public/login', 'GET', '2019-03-18 13:28:48', '2019-03-18 13:28:48', NULL),
(252, 'Viewed users', 'Registered', 1, 'http://saas.perklocker.thedevsites.com/public/users', '202.142.95.55', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36', 'en-US,en;q=0.9', 'http://saas.perklocker.thedevsites.com/public/home', 'GET', '2019-03-18 13:29:04', '2019-03-18 13:29:04', NULL),
(253, 'Logged In', 'Registered', 1, 'http://saas.perklocker.thedevsites.com/public/login', '42.110.158.236', 'Mozilla/5.0 (iPhone; CPU iPhone OS 12_1_4 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/12.0 Mobile/15E148 Safari/604.1', 'en-us', 'http://saas.perklocker.thedevsites.com/public/login', 'POST', '2019-03-19 16:41:56', '2019-03-19 16:41:56', NULL),
(254, 'Viewed home', 'Registered', 1, 'http://saas.perklocker.thedevsites.com/public/home', '42.110.158.236', 'Mozilla/5.0 (iPhone; CPU iPhone OS 12_1_4 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/12.0 Mobile/15E148 Safari/604.1', 'en-us', 'http://saas.perklocker.thedevsites.com/public/login', 'GET', '2019-03-19 16:41:56', '2019-03-19 16:41:56', NULL),
(255, 'Viewed home', 'Registered', 1, 'https://saas.perklocker.thedevsites.com/public/home', '42.110.158.236', 'Mozilla/5.0 (iPhone; CPU iPhone OS 12_1_4 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/12.0 Mobile/15E148 Safari/604.1', 'en-us', NULL, 'GET', '2019-03-19 16:42:27', '2019-03-19 16:42:27', NULL),
(256, 'Viewed users', 'Registered', 1, 'https://saas.perklocker.thedevsites.com/public/users', '42.110.158.236', 'Mozilla/5.0 (iPhone; CPU iPhone OS 12_1_4 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/12.0 Mobile/15E148 Safari/604.1', 'en-us', 'https://saas.perklocker.thedevsites.com/public/home', 'GET', '2019-03-19 16:42:53', '2019-03-19 16:42:53', NULL),
(257, 'Viewed users/create', 'Registered', 1, 'https://saas.perklocker.thedevsites.com/public/users/create', '42.110.158.236', 'Mozilla/5.0 (iPhone; CPU iPhone OS 12_1_4 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/12.0 Mobile/15E148 Safari/604.1', 'en-us', 'https://saas.perklocker.thedevsites.com/public/users', 'GET', '2019-03-19 16:43:02', '2019-03-19 16:43:02', NULL),
(258, 'Viewed logs', 'Registered', 1, 'https://saas.perklocker.thedevsites.com/public/logs', '42.110.158.236', 'Mozilla/5.0 (iPhone; CPU iPhone OS 12_1_4 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/12.0 Mobile/15E148 Safari/604.1', 'en-us', 'https://saas.perklocker.thedevsites.com/public/users/create', 'GET', '2019-03-19 16:43:11', '2019-03-19 16:43:11', NULL),
(259, 'Viewed users', 'Registered', 1, 'https://saas.perklocker.thedevsites.com/public/users', '42.110.158.236', 'Mozilla/5.0 (iPhone; CPU iPhone OS 12_1_4 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/12.0 Mobile/15E148 Safari/604.1', 'en-us', 'https://saas.perklocker.thedevsites.com/public/logs', 'GET', '2019-03-19 16:43:27', '2019-03-19 16:43:27', NULL),
(260, 'Viewed home', 'Registered', 1, 'https://saas.perklocker.thedevsites.com/public/home', '42.110.158.236', 'Mozilla/5.0 (iPhone; CPU iPhone OS 12_1_4 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/12.0 Mobile/15E148 Safari/604.1', 'en-us', NULL, 'GET', '2019-03-19 16:46:08', '2019-03-19 16:46:08', NULL),
(261, 'Logged In', 'Registered', 1, 'http://saas.perklocker.thedevsites.com/public/login', '202.142.95.55', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36', 'en-US,en;q=0.9', 'http://saas.perklocker.thedevsites.com/public/login', 'POST', '2019-03-19 23:14:39', '2019-03-19 23:14:39', NULL),
(262, 'Viewed home', 'Registered', 1, 'http://saas.perklocker.thedevsites.com/public/home', '202.142.95.55', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36', 'en-US,en;q=0.9', 'http://saas.perklocker.thedevsites.com/public/login', 'GET', '2019-03-19 23:14:40', '2019-03-19 23:14:40', NULL),
(263, 'Viewed users', 'Registered', 1, 'http://saas.perklocker.thedevsites.com/public/users', '202.142.95.55', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36', 'en-US,en;q=0.9', 'http://saas.perklocker.thedevsites.com/public/home', 'GET', '2019-03-19 23:14:47', '2019-03-19 23:14:47', NULL),
(264, 'Logged In', 'Registered', 1, 'https://saas.perklocker.thedevsites.com/public/login', '85.255.232.138', 'Mozilla/5.0 (iPhone; CPU iPhone OS 12_1_4 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Mobile/16D57', 'en-gb', 'https://saas.perklocker.thedevsites.com/public/login', 'POST', '2019-03-23 00:11:06', '2019-03-23 00:11:06', NULL),
(265, 'Viewed home', 'Registered', 1, 'https://saas.perklocker.thedevsites.com/public/home', '85.255.232.138', 'Mozilla/5.0 (iPhone; CPU iPhone OS 12_1_4 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Mobile/16D57', 'en-gb', 'https://saas.perklocker.thedevsites.com/public/login', 'GET', '2019-03-23 00:11:07', '2019-03-23 00:11:07', NULL),
(266, 'Viewed users', 'Registered', 1, 'https://saas.perklocker.thedevsites.com/public/users', '85.255.232.138', 'Mozilla/5.0 (iPhone; CPU iPhone OS 12_1_4 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Mobile/16D57', 'en-gb', 'https://saas.perklocker.thedevsites.com/public/home', 'GET', '2019-03-23 00:11:28', '2019-03-23 00:11:28', NULL),
(267, 'Viewed logs', 'Registered', 1, 'https://saas.perklocker.thedevsites.com/public/logs', '85.255.232.138', 'Mozilla/5.0 (iPhone; CPU iPhone OS 12_1_4 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Mobile/16D57', 'en-gb', 'https://saas.perklocker.thedevsites.com/public/users', 'GET', '2019-03-23 00:12:03', '2019-03-23 00:12:03', NULL),
(268, 'Logged In', 'Registered', 1, 'http://saas.perklocker.thedevsites.com/public/login', '202.142.95.55', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36', 'en-US,en;q=0.9', 'http://saas.perklocker.thedevsites.com/public/login', 'POST', '2019-03-23 22:00:10', '2019-03-23 22:00:10', NULL),
(269, 'Viewed home', 'Registered', 1, 'http://saas.perklocker.thedevsites.com/public/home', '202.142.95.55', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36', 'en-US,en;q=0.9', 'http://saas.perklocker.thedevsites.com/public/login', 'GET', '2019-03-23 22:00:11', '2019-03-23 22:00:11', NULL),
(270, 'Viewed home', 'Registered', 1, 'http://saas.perklocker.thedevsites.com/public/home', '202.142.95.55', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36', 'en-US,en;q=0.9', 'http://saas.perklocker.thedevsites.com/public/login', 'GET', '2019-03-23 22:01:01', '2019-03-23 22:01:01', NULL),
(271, 'Viewed domain-management', 'Registered', 1, 'http://saas.perklocker.thedevsites.com/public/domain-management', '202.142.95.55', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36', 'en-US,en;q=0.9', 'http://saas.perklocker.thedevsites.com/public/home', 'GET', '2019-03-23 22:01:07', '2019-03-23 22:01:07', NULL),
(272, 'Viewed domain-management/setting/1', 'Registered', 1, 'http://saas.perklocker.thedevsites.com/public/domain-management/setting/1', '202.142.95.55', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36', 'en-US,en;q=0.9', 'http://saas.perklocker.thedevsites.com/public/domain-management', 'GET', '2019-03-23 22:01:11', '2019-03-23 22:01:11', NULL),
(273, 'Logged In', 'Registered', 1, 'http://saas.perklocker.thedevsites.com/public/login', '202.142.95.55', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36', 'en-US,en;q=0.9', 'http://saas.perklocker.thedevsites.com/public/login', 'POST', '2019-03-24 14:05:44', '2019-03-24 14:05:44', NULL),
(274, 'Viewed home', 'Registered', 1, 'http://saas.perklocker.thedevsites.com/public/home', '202.142.95.55', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36', 'en-US,en;q=0.9', 'http://saas.perklocker.thedevsites.com/public/login', 'GET', '2019-03-24 14:05:45', '2019-03-24 14:05:45', NULL),
(275, 'Viewed client-management', 'Registered', 1, 'http://saas.perklocker.thedevsites.com/public/client-management', '202.142.95.55', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36', 'en-US,en;q=0.9', 'http://saas.perklocker.thedevsites.com/public/home', 'GET', '2019-03-24 14:05:51', '2019-03-24 14:05:51', NULL),
(276, 'Viewed client-management/create', 'Registered', 1, 'http://saas.perklocker.thedevsites.com/public/client-management/create', '202.142.95.55', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36', 'en-US,en;q=0.9', 'http://saas.perklocker.thedevsites.com/public/client-management', 'GET', '2019-03-24 14:05:55', '2019-03-24 14:05:55', NULL),
(277, 'Created client-management/post_create', 'Registered', 1, 'http://saas.perklocker.thedevsites.com/public/client-management/post_create', '202.142.95.55', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36', 'en-US,en;q=0.9', 'http://saas.perklocker.thedevsites.com/public/client-management/create', 'POST', '2019-03-24 14:07:15', '2019-03-24 14:07:15', NULL),
(278, 'Created client-management/post_create', 'Registered', 1, 'http://saas.perklocker.thedevsites.com/public/client-management/post_create', '202.142.95.55', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36', 'en-US,en;q=0.9', 'http://saas.perklocker.thedevsites.com/public/client-management/create', 'POST', '2019-03-24 14:07:36', '2019-03-24 14:07:36', NULL),
(279, 'Viewed client-management', 'Registered', 1, 'http://saas.perklocker.thedevsites.com/public/client-management', '202.142.95.55', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36', 'en-US,en;q=0.9', 'http://saas.perklocker.thedevsites.com/public/client-management/create', 'GET', '2019-03-24 14:07:37', '2019-03-24 14:07:37', NULL),
(280, 'Viewed account-management', 'Registered', 1, 'http://saas.perklocker.thedevsites.com/public/account-management', '202.142.95.55', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36', 'en-US,en;q=0.9', 'http://saas.perklocker.thedevsites.com/public/client-management', 'GET', '2019-03-24 14:07:43', '2019-03-24 14:07:43', NULL),
(281, 'Viewed account-management/accsetting/1', 'Registered', 1, 'http://saas.perklocker.thedevsites.com/public/account-management/accsetting/1', '202.142.95.55', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36', 'en-US,en;q=0.9', 'http://saas.perklocker.thedevsites.com/public/account-management', 'GET', '2019-03-24 14:07:49', '2019-03-24 14:07:49', NULL),
(282, 'Created account-management/post_account', 'Registered', 1, 'http://saas.perklocker.thedevsites.com/public/account-management/post_account', '202.142.95.55', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36', 'en-US,en;q=0.9', 'http://saas.perklocker.thedevsites.com/public/account-management/accsetting/1', 'POST', '2019-03-24 14:07:56', '2019-03-24 14:07:56', NULL),
(283, 'Viewed account-management', 'Registered', 1, 'http://saas.perklocker.thedevsites.com/public/account-management', '202.142.95.55', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36', 'en-US,en;q=0.9', 'http://saas.perklocker.thedevsites.com/public/account-management/accsetting/1', 'GET', '2019-03-24 14:07:57', '2019-03-24 14:07:57', NULL),
(284, 'Viewed account-management/accsetting/1', 'Registered', 1, 'http://saas.perklocker.thedevsites.com/public/account-management/accsetting/1', '202.142.95.55', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36', 'en-US,en;q=0.9', 'http://saas.perklocker.thedevsites.com/public/account-management', 'GET', '2019-03-24 14:08:01', '2019-03-24 14:08:01', NULL),
(285, 'Created account-management/post_account', 'Registered', 1, 'http://saas.perklocker.thedevsites.com/public/account-management/post_account', '202.142.95.55', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36', 'en-US,en;q=0.9', 'http://saas.perklocker.thedevsites.com/public/account-management/accsetting/1', 'POST', '2019-03-24 14:08:14', '2019-03-24 14:08:14', NULL),
(286, 'Viewed account-management', 'Registered', 1, 'http://saas.perklocker.thedevsites.com/public/account-management', '202.142.95.55', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36', 'en-US,en;q=0.9', 'http://saas.perklocker.thedevsites.com/public/account-management/accsetting/1', 'GET', '2019-03-24 14:08:16', '2019-03-24 14:08:16', NULL),
(287, 'Logged In', 'Registered', 1, 'http://saas.perklocker.thedevsites.com/public/home', '157.40.24.11', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.86 Safari/537.36', 'en-US,en;q=0.9', NULL, 'GET', '2019-03-25 13:09:06', '2019-03-25 13:09:06', NULL),
(288, 'Viewed home', 'Registered', 1, 'http://saas.perklocker.thedevsites.com/public/home', '157.40.24.11', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.86 Safari/537.36', 'en-US,en;q=0.9', NULL, 'GET', '2019-03-25 13:09:06', '2019-03-25 13:09:06', NULL);
INSERT INTO `laravel_logger_activity` (`id`, `description`, `userType`, `userId`, `route`, `ipAddress`, `userAgent`, `locale`, `referer`, `methodType`, `created_at`, `updated_at`, `deleted_at`) VALUES
(289, 'Logged In', 'Registered', 1, 'http://saas.perklocker.thedevsites.com/public/login', '157.40.24.11', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.86 Safari/537.36', 'en-US,en;q=0.9', NULL, 'GET', '2019-03-25 13:09:20', '2019-03-25 13:09:20', NULL),
(290, 'Viewed home', 'Registered', 1, 'http://saas.perklocker.thedevsites.com/public/home', '157.40.24.11', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.86 Safari/537.36', 'en-US,en;q=0.9', NULL, 'GET', '2019-03-25 13:09:20', '2019-03-25 13:09:20', NULL),
(291, 'Viewed home', 'Registered', 1, 'https://saas.perklocker.thedevsites.com/public/home', '157.40.24.11', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.86 Safari/537.36', 'en-US,en;q=0.9', NULL, 'GET', '2019-03-25 13:09:40', '2019-03-25 13:09:40', NULL),
(292, 'Viewed client-management', 'Registered', 1, 'https://saas.perklocker.thedevsites.com/public/client-management', '157.40.24.11', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.86 Safari/537.36', 'en-US,en;q=0.9', 'https://saas.perklocker.thedevsites.com/public/home', 'GET', '2019-03-25 13:10:03', '2019-03-25 13:10:03', NULL),
(293, 'Viewed client-management', 'Registered', 1, 'https://saas.perklocker.thedevsites.com/public/client-management', '157.40.24.11', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.86 Safari/537.36', 'en-US,en;q=0.9', 'https://saas.perklocker.thedevsites.com/public/client-management', 'GET', '2019-03-25 13:10:16', '2019-03-25 13:10:16', NULL),
(294, 'Viewed currency-management', 'Registered', 1, 'https://saas.perklocker.thedevsites.com/public/currency-management', '157.40.24.11', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.86 Safari/537.36', 'en-US,en;q=0.9', 'https://saas.perklocker.thedevsites.com/public/client-management', 'GET', '2019-03-25 13:10:20', '2019-03-25 13:10:20', NULL),
(295, 'Viewed client-management', 'Registered', 1, 'https://saas.perklocker.thedevsites.com/public/client-management', '157.40.24.11', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.86 Safari/537.36', 'en-US,en;q=0.9', 'https://saas.perklocker.thedevsites.com/public/currency-management', 'GET', '2019-03-25 13:10:24', '2019-03-25 13:10:24', NULL),
(296, 'Viewed client-management/create', 'Registered', 1, 'https://saas.perklocker.thedevsites.com/public/client-management/create', '157.40.24.11', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.86 Safari/537.36', 'en-US,en;q=0.9', 'https://saas.perklocker.thedevsites.com/public/client-management', 'GET', '2019-03-25 13:10:30', '2019-03-25 13:10:30', NULL),
(297, 'Viewed currency-management', 'Registered', 1, 'https://saas.perklocker.thedevsites.com/public/currency-management', '157.40.24.11', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.86 Safari/537.36', 'en-US,en;q=0.9', 'https://saas.perklocker.thedevsites.com/public/client-management/create', 'GET', '2019-03-25 13:10:58', '2019-03-25 13:10:58', NULL),
(298, 'Viewed home', 'Registered', 1, 'https://saas.perklocker.thedevsites.com/public/home', '157.40.24.11', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.86 Safari/537.36', 'en-US,en;q=0.9', NULL, 'GET', '2019-03-25 13:14:04', '2019-03-25 13:14:04', NULL),
(299, 'Viewed account-management', 'Registered', 1, 'https://saas.perklocker.thedevsites.com/public/account-management', '157.40.24.11', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.86 Safari/537.36', 'en-US,en;q=0.9', 'https://saas.perklocker.thedevsites.com/public/home', 'GET', '2019-03-25 13:14:18', '2019-03-25 13:14:18', NULL),
(300, 'Viewed account-management/accsetting/1', 'Registered', 1, 'https://saas.perklocker.thedevsites.com/public/account-management/accsetting/1', '157.40.24.11', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.86 Safari/537.36', 'en-US,en;q=0.9', 'https://saas.perklocker.thedevsites.com/public/account-management', 'GET', '2019-03-25 13:14:34', '2019-03-25 13:14:34', NULL),
(301, 'Viewed domain-management', 'Registered', 1, 'https://saas.perklocker.thedevsites.com/public/domain-management', '157.40.24.11', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.86 Safari/537.36', 'en-US,en;q=0.9', 'https://saas.perklocker.thedevsites.com/public/account-management/accsetting/1', 'GET', '2019-03-25 13:14:54', '2019-03-25 13:14:54', NULL),
(302, 'Viewed domain-management/setting/1', 'Registered', 1, 'https://saas.perklocker.thedevsites.com/public/domain-management/setting/1', '157.40.24.11', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.86 Safari/537.36', 'en-US,en;q=0.9', 'https://saas.perklocker.thedevsites.com/public/domain-management', 'GET', '2019-03-25 13:15:00', '2019-03-25 13:15:00', NULL),
(303, 'Created domain-management/post_setting', 'Registered', 1, 'https://saas.perklocker.thedevsites.com/public/domain-management/post_setting', '157.40.24.11', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.86 Safari/537.36', 'en-US,en;q=0.9', 'https://saas.perklocker.thedevsites.com/public/domain-management/setting/1', 'POST', '2019-03-25 13:15:26', '2019-03-25 13:15:26', NULL),
(304, 'Viewed client-management', 'Registered', 1, 'https://saas.perklocker.thedevsites.com/public/client-management', '157.40.24.11', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.86 Safari/537.36', 'en-US,en;q=0.9', 'https://saas.perklocker.thedevsites.com/public/domain-management/setting/1', 'GET', '2019-03-25 13:15:48', '2019-03-25 13:15:48', NULL),
(305, 'Viewed users', 'Registered', 1, 'https://saas.perklocker.thedevsites.com/public/users', '157.40.24.11', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.86 Safari/537.36', 'en-US,en;q=0.9', 'https://saas.perklocker.thedevsites.com/public/client-management', 'GET', '2019-03-25 13:15:51', '2019-03-25 13:15:51', NULL),
(306, 'Viewed users/1', 'Registered', 1, 'https://saas.perklocker.thedevsites.com/public/users/1', '157.40.24.11', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.86 Safari/537.36', 'en-US,en;q=0.9', 'https://saas.perklocker.thedevsites.com/public/users', 'GET', '2019-03-25 13:15:59', '2019-03-25 13:15:59', NULL),
(307, 'Viewed users', 'Registered', 1, 'https://saas.perklocker.thedevsites.com/public/users', '157.40.24.11', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.86 Safari/537.36', 'en-US,en;q=0.9', 'https://saas.perklocker.thedevsites.com/public/users/1', 'GET', '2019-03-25 13:16:11', '2019-03-25 13:16:11', NULL),
(308, 'Viewed account-management', 'Registered', 1, 'https://saas.perklocker.thedevsites.com/public/account-management', '157.40.24.11', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.86 Safari/537.36', 'en-US,en;q=0.9', 'https://saas.perklocker.thedevsites.com/public/users', 'GET', '2019-03-25 13:16:17', '2019-03-25 13:16:17', NULL),
(309, 'Viewed logs', 'Registered', 1, 'https://saas.perklocker.thedevsites.com/public/logs', '157.40.24.11', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.86 Safari/537.36', 'en-US,en;q=0.9', 'https://saas.perklocker.thedevsites.com/public/account-management', 'GET', '2019-03-25 13:16:42', '2019-03-25 13:16:42', NULL),
(310, 'Viewed logs', 'Registered', 1, 'https://saas.perklocker.thedevsites.com/public/logs', '157.40.24.11', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.86 Safari/537.36', 'en-US,en;q=0.9', 'https://saas.perklocker.thedevsites.com/public/account-management', 'GET', '2019-03-25 13:16:43', '2019-03-25 13:16:43', NULL),
(311, 'Viewed users', 'Registered', 1, 'https://saas.perklocker.thedevsites.com/public/users', '157.40.24.11', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.86 Safari/537.36', 'en-US,en;q=0.9', 'https://saas.perklocker.thedevsites.com/public/logs', 'GET', '2019-03-25 13:16:53', '2019-03-25 13:16:53', NULL),
(312, 'Viewed client-management', 'Registered', 1, 'https://saas.perklocker.thedevsites.com/public/client-management', '157.40.24.11', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.86 Safari/537.36', 'en-US,en;q=0.9', 'https://saas.perklocker.thedevsites.com/public/users', 'GET', '2019-03-25 13:19:25', '2019-03-25 13:19:25', NULL),
(313, 'Viewed currency-management', 'Registered', 1, 'https://saas.perklocker.thedevsites.com/public/currency-management', '157.40.24.11', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.86 Safari/537.36', 'en-US,en;q=0.9', 'https://saas.perklocker.thedevsites.com/public/client-management', 'GET', '2019-03-25 13:19:35', '2019-03-25 13:19:35', NULL),
(314, 'Logged In', 'Registered', 1, 'https://saas.perklocker.thedevsites.com/public/users/create', '157.40.24.11', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.86 Safari/537.36', 'en-US,en;q=0.9', 'https://saas.perklocker.thedevsites.com/public/currency-management', 'GET', '2019-03-25 17:43:22', '2019-03-25 17:43:22', NULL),
(315, 'Viewed users/create', 'Registered', 1, 'https://saas.perklocker.thedevsites.com/public/users/create', '157.40.24.11', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.86 Safari/537.36', 'en-US,en;q=0.9', 'https://saas.perklocker.thedevsites.com/public/currency-management', 'GET', '2019-03-25 17:43:22', '2019-03-25 17:43:22', NULL),
(316, 'Logged In', 'Registered', 1, 'https://saas.perklocker.thedevsites.com/public/login', '85.255.235.35', 'Mozilla/5.0 (iPhone; CPU iPhone OS 12_1_4 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Mobile/16D57', 'en-gb', 'https://saas.perklocker.thedevsites.com/public/login', 'POST', '2019-03-25 21:38:34', '2019-03-25 21:38:34', NULL),
(317, 'Viewed home', 'Registered', 1, 'https://saas.perklocker.thedevsites.com/public/home', '85.255.235.35', 'Mozilla/5.0 (iPhone; CPU iPhone OS 12_1_4 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Mobile/16D57', 'en-gb', 'https://saas.perklocker.thedevsites.com/public/login', 'GET', '2019-03-25 21:38:35', '2019-03-25 21:38:35', NULL),
(318, 'Viewed users', 'Registered', 1, 'https://saas.perklocker.thedevsites.com/public/users', '85.255.235.35', 'Mozilla/5.0 (iPhone; CPU iPhone OS 12_1_4 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Mobile/16D57', 'en-gb', 'https://saas.perklocker.thedevsites.com/public/home', 'GET', '2019-03-25 21:38:42', '2019-03-25 21:38:42', NULL),
(319, 'Viewed users/2', 'Registered', 1, 'https://saas.perklocker.thedevsites.com/public/users/2', '85.255.235.35', 'Mozilla/5.0 (iPhone; CPU iPhone OS 12_1_4 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Mobile/16D57', 'en-gb', 'https://saas.perklocker.thedevsites.com/public/users', 'GET', '2019-03-25 21:39:13', '2019-03-25 21:39:13', NULL),
(320, 'Logged In', 'Registered', 1, 'https://saas.perklocker.thedevsites.com/public/login', '213.83.126.31', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/12.0.3 Safari/605.1.15', 'en-gb', 'https://saas.perklocker.thedevsites.com/public/login', 'POST', '2019-03-25 23:30:15', '2019-03-25 23:30:15', NULL),
(321, 'Viewed home', 'Registered', 1, 'https://saas.perklocker.thedevsites.com/public/home', '213.83.126.31', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/12.0.3 Safari/605.1.15', 'en-gb', 'https://saas.perklocker.thedevsites.com/public/login', 'GET', '2019-03-25 23:30:15', '2019-03-25 23:30:15', NULL),
(322, 'Viewed users', 'Registered', 1, 'https://saas.perklocker.thedevsites.com/public/users', '213.83.126.31', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/12.0.3 Safari/605.1.15', 'en-gb', 'https://saas.perklocker.thedevsites.com/public/home', 'GET', '2019-03-25 23:31:11', '2019-03-25 23:31:11', NULL),
(323, 'Viewed users/create', 'Registered', 1, 'https://saas.perklocker.thedevsites.com/public/users/create', '213.83.126.31', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/12.0.3 Safari/605.1.15', 'en-gb', 'https://saas.perklocker.thedevsites.com/public/users', 'GET', '2019-03-25 23:31:14', '2019-03-25 23:31:14', NULL),
(324, 'Viewed client-management', 'Registered', 1, 'https://saas.perklocker.thedevsites.com/public/client-management', '213.83.126.31', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/12.0.3 Safari/605.1.15', 'en-gb', 'https://saas.perklocker.thedevsites.com/public/users/create', 'GET', '2019-03-25 23:31:20', '2019-03-25 23:31:20', NULL),
(325, 'Viewed client-management/edit/1', 'Registered', 1, 'https://saas.perklocker.thedevsites.com/public/client-management/edit/1', '213.83.126.31', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/12.0.3 Safari/605.1.15', 'en-gb', 'https://saas.perklocker.thedevsites.com/public/client-management', 'GET', '2019-03-25 23:31:35', '2019-03-25 23:31:35', NULL),
(326, 'Viewed client-management', 'Registered', 1, 'https://saas.perklocker.thedevsites.com/public/client-management', '213.83.126.31', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/12.0.3 Safari/605.1.15', 'en-gb', 'https://saas.perklocker.thedevsites.com/public/client-management/edit/1', 'GET', '2019-03-25 23:32:06', '2019-03-25 23:32:06', NULL),
(327, 'Viewed client-management/edit/2', 'Registered', 1, 'https://saas.perklocker.thedevsites.com/public/client-management/edit/2', '213.83.126.31', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/12.0.3 Safari/605.1.15', 'en-gb', 'https://saas.perklocker.thedevsites.com/public/client-management', 'GET', '2019-03-25 23:32:14', '2019-03-25 23:32:14', NULL),
(328, 'Viewed currency-management', 'Registered', 1, 'https://saas.perklocker.thedevsites.com/public/currency-management', '213.83.126.31', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/12.0.3 Safari/605.1.15', 'en-gb', 'https://saas.perklocker.thedevsites.com/public/client-management/edit/2', 'GET', '2019-03-25 23:32:21', '2019-03-25 23:32:21', NULL),
(329, 'Viewed domain-management', 'Registered', 1, 'https://saas.perklocker.thedevsites.com/public/domain-management', '213.83.126.31', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/12.0.3 Safari/605.1.15', 'en-gb', 'https://saas.perklocker.thedevsites.com/public/currency-management', 'GET', '2019-03-25 23:32:31', '2019-03-25 23:32:31', NULL),
(330, 'Viewed account-management', 'Registered', 1, 'https://saas.perklocker.thedevsites.com/public/account-management', '213.83.126.31', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/12.0.3 Safari/605.1.15', 'en-gb', 'https://saas.perklocker.thedevsites.com/public/domain-management', 'GET', '2019-03-25 23:32:38', '2019-03-25 23:32:38', NULL),
(331, 'Viewed account-management', 'Registered', 1, 'https://saas.perklocker.thedevsites.com/public/account-management', '213.83.126.31', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/12.0.3 Safari/605.1.15', 'en-gb', 'https://saas.perklocker.thedevsites.com/public/domain-management', 'GET', '2019-03-25 23:32:39', '2019-03-25 23:32:39', NULL),
(332, 'Viewed account-management', 'Registered', 1, 'https://saas.perklocker.thedevsites.com/public/account-management', '213.83.126.31', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/12.0.3 Safari/605.1.15', 'en-gb', 'https://saas.perklocker.thedevsites.com/public/account-management', 'GET', '2019-03-25 23:32:44', '2019-03-25 23:32:44', NULL),
(333, 'Viewed domain-management', 'Registered', 1, 'https://saas.perklocker.thedevsites.com/public/domain-management', '213.83.126.31', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/12.0.3 Safari/605.1.15', 'en-gb', 'https://saas.perklocker.thedevsites.com/public/account-management', 'GET', '2019-03-25 23:32:45', '2019-03-25 23:32:45', NULL),
(334, 'Viewed domain-management/setting/1', 'Registered', 1, 'https://saas.perklocker.thedevsites.com/public/domain-management/setting/1', '213.83.126.31', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/12.0.3 Safari/605.1.15', 'en-gb', 'https://saas.perklocker.thedevsites.com/public/domain-management', 'GET', '2019-03-25 23:32:57', '2019-03-25 23:32:57', NULL),
(335, 'Viewed domain-management/setting/1', 'Registered', 1, 'https://saas.perklocker.thedevsites.com/public/domain-management/setting/1', '213.83.126.31', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/12.0.3 Safari/605.1.15', 'en-gb', 'https://saas.perklocker.thedevsites.com/public/domain-management', 'GET', '2019-03-25 23:32:59', '2019-03-25 23:32:59', NULL),
(336, 'Viewed domain-management/setting/1', 'Registered', 1, 'https://saas.perklocker.thedevsites.com/public/domain-management/setting/1', '213.83.126.31', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/12.0.3 Safari/605.1.15', 'en-gb', 'https://saas.perklocker.thedevsites.com/public/domain-management', 'GET', '2019-03-25 23:33:00', '2019-03-25 23:33:00', NULL),
(337, 'Viewed account-management', 'Registered', 1, 'https://saas.perklocker.thedevsites.com/public/account-management', '213.83.126.31', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/12.0.3 Safari/605.1.15', 'en-gb', 'https://saas.perklocker.thedevsites.com/public/domain-management/setting/1', 'GET', '2019-03-25 23:33:17', '2019-03-25 23:33:17', NULL),
(338, 'Viewed logs', 'Registered', 1, 'https://saas.perklocker.thedevsites.com/public/logs', '213.83.126.31', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/12.0.3 Safari/605.1.15', 'en-gb', 'https://saas.perklocker.thedevsites.com/public/account-management', 'GET', '2019-03-25 23:41:56', '2019-03-25 23:41:56', NULL),
(339, 'Viewed logs', 'Registered', 1, 'https://saas.perklocker.thedevsites.com/public/logs', '213.83.126.31', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/12.0.3 Safari/605.1.15', 'en-gb', 'https://saas.perklocker.thedevsites.com/public/account-management', 'GET', '2019-03-25 23:41:56', '2019-03-25 23:41:56', NULL),
(340, 'Viewed client-management', 'Registered', 1, 'https://saas.perklocker.thedevsites.com/public/client-management', '213.83.126.31', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/12.0.3 Safari/605.1.15', 'en-gb', 'https://saas.perklocker.thedevsites.com/public/logs', 'GET', '2019-03-26 00:01:25', '2019-03-26 00:01:25', NULL),
(341, 'Viewed currency-management', 'Registered', 1, 'https://saas.perklocker.thedevsites.com/public/currency-management', '213.83.126.31', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/12.0.3 Safari/605.1.15', 'en-gb', 'https://saas.perklocker.thedevsites.com/public/logs', 'GET', '2019-03-26 00:01:25', '2019-03-26 00:01:25', NULL),
(342, 'Viewed users/create', 'Registered', 1, 'https://saas.perklocker.thedevsites.com/public/users/create', '213.83.126.31', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/12.0.3 Safari/605.1.15', 'en-gb', 'https://saas.perklocker.thedevsites.com/public/currency-management', 'GET', '2019-03-26 00:01:26', '2019-03-26 00:01:26', NULL),
(343, 'Viewed client-management', 'Registered', 1, 'https://saas.perklocker.thedevsites.com/public/client-management', '213.83.126.31', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/12.0.3 Safari/605.1.15', 'en-gb', 'https://saas.perklocker.thedevsites.com/public/users/create', 'GET', '2019-03-26 00:01:28', '2019-03-26 00:01:28', NULL),
(344, 'Viewed client-management', 'Registered', 1, 'https://saas.perklocker.thedevsites.com/public/client-management', '213.83.126.31', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/12.0.3 Safari/605.1.15', 'en-gb', 'https://saas.perklocker.thedevsites.com/public/client-management', 'GET', '2019-03-26 00:01:31', '2019-03-26 00:01:31', NULL),
(345, 'Viewed currency-management', 'Registered', 1, 'https://saas.perklocker.thedevsites.com/public/currency-management', '213.83.126.31', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/12.0.3 Safari/605.1.15', 'en-gb', 'https://saas.perklocker.thedevsites.com/public/client-management', 'GET', '2019-03-26 00:01:33', '2019-03-26 00:01:33', NULL),
(346, 'Viewed currency-management/currency/GBP/5.1416427287/BRL', 'Registered', 1, 'https://saas.perklocker.thedevsites.com/public/currency-management/currency/GBP/5.1416427287/BRL', '213.83.126.31', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/12.0.3 Safari/605.1.15', 'en-gb', 'https://saas.perklocker.thedevsites.com/public/currency-management', 'GET', '2019-03-26 00:02:20', '2019-03-26 00:02:20', NULL),
(347, 'Viewed currency-management', 'Registered', 1, 'https://saas.perklocker.thedevsites.com/public/currency-management', '213.83.126.31', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/12.0.3 Safari/605.1.15', 'en-gb', 'https://saas.perklocker.thedevsites.com/public/currency-management', 'GET', '2019-03-26 00:02:21', '2019-03-26 00:02:21', NULL),
(348, 'Viewed currency-management', 'Registered', 1, 'https://saas.perklocker.thedevsites.com/public/currency-management', '213.83.126.31', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/12.0.3 Safari/605.1.15', 'en-gb', 'https://saas.perklocker.thedevsites.com/public/currency-management', 'GET', '2019-03-26 00:03:15', '2019-03-26 00:03:15', NULL),
(349, 'Viewed currency-management', 'Registered', 1, 'https://saas.perklocker.thedevsites.com/public/currency-management', '213.83.126.31', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/12.0.3 Safari/605.1.15', 'en-gb', 'https://saas.perklocker.thedevsites.com/public/currency-management', 'GET', '2019-03-26 00:03:16', '2019-03-26 00:03:16', NULL),
(350, 'Viewed home', 'Registered', 1, 'https://saas.perklocker.thedevsites.com/public/home', '213.83.126.31', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/12.0.3 Safari/605.1.15', 'en-gb', NULL, 'GET', '2019-03-26 00:04:18', '2019-03-26 00:04:18', NULL),
(351, 'Viewed currency-management', 'Registered', 1, 'https://saas.perklocker.thedevsites.com/public/currency-management', '213.83.126.31', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/12.0.3 Safari/605.1.15', 'en-gb', 'https://saas.perklocker.thedevsites.com/public/home', 'GET', '2019-03-26 00:04:26', '2019-03-26 00:04:26', NULL),
(352, 'Viewed domain-management', 'Registered', 1, 'https://saas.perklocker.thedevsites.com/public/domain-management', '213.83.126.31', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/12.0.3 Safari/605.1.15', 'en-gb', 'https://saas.perklocker.thedevsites.com/public/currency-management', 'GET', '2019-03-26 00:04:29', '2019-03-26 00:04:29', NULL),
(353, 'Viewed client-management', 'Registered', 1, 'https://saas.perklocker.thedevsites.com/public/client-management', '213.83.126.31', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/12.0.3 Safari/605.1.15', 'en-gb', 'https://saas.perklocker.thedevsites.com/public/domain-management', 'GET', '2019-03-26 00:04:34', '2019-03-26 00:04:34', NULL),
(354, 'Viewed client-management', 'Registered', 1, 'https://saas.perklocker.thedevsites.com/public/client-management', '213.83.126.31', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/12.0.3 Safari/605.1.15', 'en-gb', 'https://saas.perklocker.thedevsites.com/public/client-management', 'GET', '2019-03-26 00:04:36', '2019-03-26 00:04:36', NULL),
(355, 'Viewed account-management', 'Registered', 1, 'https://saas.perklocker.thedevsites.com/public/account-management', '213.83.126.31', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/12.0.3 Safari/605.1.15', 'en-gb', 'https://saas.perklocker.thedevsites.com/public/client-management', 'GET', '2019-03-26 00:04:39', '2019-03-26 00:04:39', NULL),
(356, 'Viewed domain-management', 'Registered', 1, 'https://saas.perklocker.thedevsites.com/public/domain-management', '213.83.126.31', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/12.0.3 Safari/605.1.15', 'en-gb', 'https://saas.perklocker.thedevsites.com/public/account-management', 'GET', '2019-03-26 00:04:42', '2019-03-26 00:04:42', NULL),
(357, 'Viewed currency-management', 'Registered', 1, 'https://saas.perklocker.thedevsites.com/public/currency-management', '213.83.126.31', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/12.0.3 Safari/605.1.15', 'en-gb', 'https://saas.perklocker.thedevsites.com/public/domain-management', 'GET', '2019-03-26 00:04:44', '2019-03-26 00:04:44', NULL),
(358, 'Viewed account-management', 'Registered', 1, 'https://saas.perklocker.thedevsites.com/public/account-management', '213.83.126.31', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/12.0.3 Safari/605.1.15', 'en-gb', 'https://saas.perklocker.thedevsites.com/public/currency-management', 'GET', '2019-03-26 00:05:02', '2019-03-26 00:05:02', NULL),
(359, 'Viewed account-management', 'Registered', 1, 'https://saas.perklocker.thedevsites.com/public/account-management', '213.83.126.31', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/12.0.3 Safari/605.1.15', 'en-gb', 'https://saas.perklocker.thedevsites.com/public/account-management', 'GET', '2019-03-26 00:05:14', '2019-03-26 00:05:14', NULL),
(360, 'Viewed users', 'Registered', 1, 'https://saas.perklocker.thedevsites.com/public/users', '213.83.126.31', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/12.0.3 Safari/605.1.15', 'en-gb', 'https://saas.perklocker.thedevsites.com/public/account-management', 'GET', '2019-03-26 00:05:18', '2019-03-26 00:05:18', NULL),
(361, 'Viewed users/1', 'Registered', 1, 'https://saas.perklocker.thedevsites.com/public/users/1', '213.83.126.31', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/12.0.3 Safari/605.1.15', 'en-gb', 'https://saas.perklocker.thedevsites.com/public/users', 'GET', '2019-03-26 00:05:26', '2019-03-26 00:05:26', NULL),
(362, 'Viewed profile/john.deo', 'Registered', 1, 'https://saas.perklocker.thedevsites.com/public/profile/john.deo', '213.83.126.31', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/12.0.3 Safari/605.1.15', 'en-gb', 'https://saas.perklocker.thedevsites.com/public/users/1', 'GET', '2019-03-26 00:06:52', '2019-03-26 00:06:52', NULL),
(363, 'Viewed currency-management', 'Registered', 1, 'https://saas.perklocker.thedevsites.com/public/currency-management', '213.83.126.31', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/12.0.3 Safari/605.1.15', 'en-gb', 'https://saas.perklocker.thedevsites.com/public/profile/john.deo', 'GET', '2019-03-26 00:07:04', '2019-03-26 00:07:04', NULL),
(364, 'Viewed domain-management', 'Registered', 1, 'https://saas.perklocker.thedevsites.com/public/domain-management', '213.83.126.31', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/12.0.3 Safari/605.1.15', 'en-gb', 'https://saas.perklocker.thedevsites.com/public/currency-management', 'GET', '2019-03-26 00:07:32', '2019-03-26 00:07:32', NULL),
(365, 'Viewed domain-management/setting/1', 'Registered', 1, 'https://saas.perklocker.thedevsites.com/public/domain-management/setting/1', '213.83.126.31', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/12.0.3 Safari/605.1.15', 'en-gb', 'https://saas.perklocker.thedevsites.com/public/domain-management', 'GET', '2019-03-26 00:07:39', '2019-03-26 00:07:39', NULL),
(366, 'Viewed account-management', 'Registered', 1, 'https://saas.perklocker.thedevsites.com/public/account-management', '213.83.126.31', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/12.0.3 Safari/605.1.15', 'en-gb', 'https://saas.perklocker.thedevsites.com/public/domain-management/setting/1', 'GET', '2019-03-26 00:08:10', '2019-03-26 00:08:10', NULL),
(367, 'Viewed domain-management', 'Registered', 1, 'https://saas.perklocker.thedevsites.com/public/domain-management', '213.83.126.31', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/12.0.3 Safari/605.1.15', 'en-gb', 'https://saas.perklocker.thedevsites.com/public/account-management', 'GET', '2019-03-26 00:08:14', '2019-03-26 00:08:14', NULL),
(368, 'Viewed currency-management', 'Registered', 1, 'https://saas.perklocker.thedevsites.com/public/currency-management', '213.83.126.31', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/12.0.3 Safari/605.1.15', 'en-gb', 'https://saas.perklocker.thedevsites.com/public/domain-management', 'GET', '2019-03-26 00:08:16', '2019-03-26 00:08:16', NULL),
(369, 'Viewed users/create', 'Registered', 1, 'https://saas.perklocker.thedevsites.com/public/users/create', '213.83.126.31', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/12.0.3 Safari/605.1.15', 'en-gb', 'https://saas.perklocker.thedevsites.com/public/currency-management', 'GET', '2019-03-26 00:08:20', '2019-03-26 00:08:20', NULL),
(370, 'Viewed users', 'Registered', 1, 'https://saas.perklocker.thedevsites.com/public/users', '213.83.126.31', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/12.0.3 Safari/605.1.15', 'en-gb', 'https://saas.perklocker.thedevsites.com/public/users/create', 'GET', '2019-03-26 00:08:25', '2019-03-26 00:08:25', NULL),
(371, 'Logged In', 'Registered', 1, 'http://saas.perklocker.thedevsites.com/public/login', '157.40.81.55', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.86 Safari/537.36', 'en-US,en;q=0.9', NULL, 'GET', '2019-03-26 02:14:23', '2019-03-26 02:14:23', NULL),
(372, 'Viewed home', 'Registered', 1, 'http://saas.perklocker.thedevsites.com/public/home', '157.40.81.55', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.86 Safari/537.36', 'en-US,en;q=0.9', NULL, 'GET', '2019-03-26 02:14:25', '2019-03-26 02:14:25', NULL),
(373, 'Viewed home', 'Registered', 1, 'https://saas.perklocker.thedevsites.com/public/home', '157.40.81.55', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.86 Safari/537.36', 'en-US,en;q=0.9', NULL, 'GET', '2019-03-26 02:14:38', '2019-03-26 02:14:38', NULL),
(374, 'Viewed home', 'Registered', 1, 'https://saas.perklocker.thedevsites.com/public/home', '157.40.81.55', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.86 Safari/537.36', 'en-US,en;q=0.9', NULL, 'GET', '2019-03-26 02:17:23', '2019-03-26 02:17:23', NULL),
(375, 'Logged In', 'Registered', 1, 'http://saas.perklocker.thedevsites.com/public/login', '47.15.201.42', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.86 Safari/537.36', 'en-US,en;q=0.9', NULL, 'GET', '2019-03-28 22:16:08', '2019-03-28 22:16:08', NULL),
(376, 'Viewed home', 'Registered', 1, 'http://saas.perklocker.thedevsites.com/public/home', '47.15.201.42', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.86 Safari/537.36', 'en-US,en;q=0.9', NULL, 'GET', '2019-03-28 22:16:09', '2019-03-28 22:16:09', NULL),
(377, 'Logged In', 'Registered', 1, 'https://saas.perklocker.thedevsites.com/public/login', '213.83.126.31', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/12.0.3 Safari/605.1.15', 'en-gb', 'https://saas.perklocker.thedevsites.com/public/login', 'POST', '2019-03-29 22:13:12', '2019-03-29 22:13:12', NULL),
(378, 'Viewed home', 'Registered', 1, 'https://saas.perklocker.thedevsites.com/public/home', '213.83.126.31', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/12.0.3 Safari/605.1.15', 'en-gb', 'https://saas.perklocker.thedevsites.com/public/login', 'GET', '2019-03-29 22:13:13', '2019-03-29 22:13:13', NULL),
(379, 'Viewed currency-management', 'Registered', 1, 'https://saas.perklocker.thedevsites.com/public/currency-management', '213.83.126.31', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/12.0.3 Safari/605.1.15', 'en-gb', 'https://saas.perklocker.thedevsites.com/public/home', 'GET', '2019-03-29 22:13:37', '2019-03-29 22:13:37', NULL),
(380, 'Viewed currency-management', 'Registered', 1, 'https://saas.perklocker.thedevsites.com/public/currency-management', '213.83.126.31', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/12.0.3 Safari/605.1.15', 'en-gb', 'https://saas.perklocker.thedevsites.com/public/home', 'GET', '2019-03-29 22:13:38', '2019-03-29 22:13:38', NULL),
(381, 'Viewed currency-management', 'Registered', 1, 'https://saas.perklocker.thedevsites.com/public/currency-management', '213.83.126.31', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/12.0.3 Safari/605.1.15', 'en-gb', 'https://saas.perklocker.thedevsites.com/public/home', 'GET', '2019-03-29 22:13:39', '2019-03-29 22:13:39', NULL),
(382, 'Viewed client-management', 'Registered', 1, 'https://saas.perklocker.thedevsites.com/public/client-management', '213.83.126.31', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/12.0.3 Safari/605.1.15', 'en-gb', 'https://saas.perklocker.thedevsites.com/public/home', 'GET', '2019-03-29 22:13:41', '2019-03-29 22:13:41', NULL),
(383, 'Viewed users', 'Registered', 1, 'https://saas.perklocker.thedevsites.com/public/users', '213.83.126.31', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/12.0.3 Safari/605.1.15', 'en-gb', 'https://saas.perklocker.thedevsites.com/public/client-management', 'GET', '2019-03-29 22:14:12', '2019-03-29 22:14:12', NULL),
(384, 'Viewed currency-management', 'Registered', 1, 'https://saas.perklocker.thedevsites.com/public/currency-management', '213.83.126.31', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/12.0.3 Safari/605.1.15', 'en-gb', 'https://saas.perklocker.thedevsites.com/public/users', 'GET', '2019-03-29 22:14:19', '2019-03-29 22:14:19', NULL),
(385, 'Viewed domain-management', 'Registered', 1, 'https://saas.perklocker.thedevsites.com/public/domain-management', '213.83.126.31', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/12.0.3 Safari/605.1.15', 'en-gb', 'https://saas.perklocker.thedevsites.com/public/currency-management', 'GET', '2019-03-29 22:14:23', '2019-03-29 22:14:23', NULL),
(386, 'Viewed account-management', 'Registered', 1, 'https://saas.perklocker.thedevsites.com/public/account-management', '213.83.126.31', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/12.0.3 Safari/605.1.15', 'en-gb', 'https://saas.perklocker.thedevsites.com/public/domain-management', 'GET', '2019-03-29 22:14:26', '2019-03-29 22:14:26', NULL),
(387, 'Viewed logs', 'Registered', 1, 'https://saas.perklocker.thedevsites.com/public/logs', '213.83.126.31', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/12.0.3 Safari/605.1.15', 'en-gb', 'https://saas.perklocker.thedevsites.com/public/account-management', 'GET', '2019-03-29 22:14:30', '2019-03-29 22:14:30', NULL),
(388, 'Logged In', 'Registered', 1, 'http://saas.perklocker.thedevsites.com/public/login', '47.15.193.14', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.86 Safari/537.36', 'en-US,en;q=0.9', NULL, 'GET', '2019-03-30 02:12:26', '2019-03-30 02:12:26', NULL),
(389, 'Viewed home', 'Registered', 1, 'http://saas.perklocker.thedevsites.com/public/home', '47.15.193.14', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.86 Safari/537.36', 'en-US,en;q=0.9', NULL, 'GET', '2019-03-30 02:12:29', '2019-03-30 02:12:29', NULL),
(390, 'Viewed home', 'Registered', 1, 'https://saas.perklocker.thedevsites.com/public/home', '47.15.193.14', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.86 Safari/537.36', 'en-US,en;q=0.9', NULL, 'GET', '2019-03-30 02:12:47', '2019-03-30 02:12:47', NULL),
(391, 'Logged In', 'Registered', 1, 'http://saas.perklocker.thedevsites.com/public/login', '47.15.173.104', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.86 Safari/537.36', 'en-US,en;q=0.9', 'http://saas.perklocker.thedevsites.com/public/login', 'POST', '2019-03-30 21:45:34', '2019-03-30 21:45:34', NULL),
(392, 'Viewed home', 'Registered', 1, 'http://saas.perklocker.thedevsites.com/public/home', '47.15.173.104', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.86 Safari/537.36', 'en-US,en;q=0.9', 'http://saas.perklocker.thedevsites.com/public/login', 'GET', '2019-03-30 21:45:36', '2019-03-30 21:45:36', NULL),
(393, 'Viewed home', 'Registered', 1, 'http://saas.perklocker.thedevsites.com/public/home', '47.15.173.104', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.86 Safari/537.36', 'en-US,en;q=0.9', NULL, 'GET', '2019-03-30 21:45:55', '2019-03-30 21:45:55', NULL),
(394, 'Viewed home', 'Registered', 1, 'https://saas.perklocker.thedevsites.com/public/home', '47.15.173.104', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.86 Safari/537.36', 'en-US,en;q=0.9', NULL, 'GET', '2019-03-30 21:46:14', '2019-03-30 21:46:14', NULL),
(395, 'Logged In', 'Registered', 1, 'http://saas.perklocker.thedevsites.com/public/login', '202.142.95.55', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.86 Safari/537.36', 'en-US,en;q=0.9', 'http://saas.perklocker.thedevsites.com/public/login', 'POST', '2019-04-07 14:35:56', '2019-04-07 14:35:56', NULL),
(396, 'Viewed home', 'Registered', 1, 'http://saas.perklocker.thedevsites.com/public/home', '202.142.95.55', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.86 Safari/537.36', 'en-US,en;q=0.9', 'http://saas.perklocker.thedevsites.com/public/login', 'GET', '2019-04-07 14:35:57', '2019-04-07 14:35:57', NULL),
(397, 'Viewed client-management', 'Registered', 1, 'http://saas.perklocker.thedevsites.com/public/client-management', '202.142.95.55', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.86 Safari/537.36', 'en-US,en;q=0.9', 'http://saas.perklocker.thedevsites.com/public/home', 'GET', '2019-04-07 14:36:09', '2019-04-07 14:36:09', NULL),
(398, 'Viewed client-management/delete/2', 'Registered', 1, 'http://saas.perklocker.thedevsites.com/public/client-management/delete/2', '202.142.95.55', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.86 Safari/537.36', 'en-US,en;q=0.9', 'http://saas.perklocker.thedevsites.com/public/client-management', 'GET', '2019-04-07 14:36:14', '2019-04-07 14:36:14', NULL),
(399, 'Viewed client-management', 'Registered', 1, 'http://saas.perklocker.thedevsites.com/public/client-management', '202.142.95.55', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.86 Safari/537.36', 'en-US,en;q=0.9', 'http://saas.perklocker.thedevsites.com/public/client-management', 'GET', '2019-04-07 14:36:15', '2019-04-07 14:36:15', NULL),
(400, 'Viewed client-management/delete/8', 'Registered', 1, 'http://saas.perklocker.thedevsites.com/public/client-management/delete/8', '202.142.95.55', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.86 Safari/537.36', 'en-US,en;q=0.9', 'http://saas.perklocker.thedevsites.com/public/client-management', 'GET', '2019-04-07 14:36:17', '2019-04-07 14:36:17', NULL),
(401, 'Viewed client-management', 'Registered', 1, 'http://saas.perklocker.thedevsites.com/public/client-management', '202.142.95.55', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.86 Safari/537.36', 'en-US,en;q=0.9', 'http://saas.perklocker.thedevsites.com/public/client-management', 'GET', '2019-04-07 14:36:18', '2019-04-07 14:36:18', NULL),
(402, 'Viewed client-management/create', 'Registered', 1, 'http://saas.perklocker.thedevsites.com/public/client-management/create', '202.142.95.55', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.86 Safari/537.36', 'en-US,en;q=0.9', 'http://saas.perklocker.thedevsites.com/public/client-management', 'GET', '2019-04-07 14:36:22', '2019-04-07 14:36:22', NULL),
(403, 'Created client-management/post_create', 'Registered', 1, 'http://saas.perklocker.thedevsites.com/public/client-management/post_create', '202.142.95.55', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.86 Safari/537.36', 'en-US,en;q=0.9', 'http://saas.perklocker.thedevsites.com/public/client-management/create', 'POST', '2019-04-07 14:37:15', '2019-04-07 14:37:15', NULL),
(404, 'Viewed client-management', 'Registered', 1, 'http://saas.perklocker.thedevsites.com/public/client-management', '202.142.95.55', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.86 Safari/537.36', 'en-US,en;q=0.9', 'http://saas.perklocker.thedevsites.com/public/client-management/create', 'GET', '2019-04-07 14:37:16', '2019-04-07 14:37:16', NULL),
(405, 'Viewed client-management/edit/9', 'Registered', 1, 'http://saas.perklocker.thedevsites.com/public/client-management/edit/9', '202.142.95.55', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.86 Safari/537.36', 'en-US,en;q=0.9', 'http://saas.perklocker.thedevsites.com/public/client-management', 'GET', '2019-04-07 14:37:20', '2019-04-07 14:37:20', NULL),
(406, 'Viewed membership-management', 'Registered', 1, 'http://saas.perklocker.thedevsites.com/public/membership-management', '202.142.95.55', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.86 Safari/537.36', 'en-US,en;q=0.9', 'http://saas.perklocker.thedevsites.com/public/client-management', 'GET', '2019-04-07 14:37:27', '2019-04-07 14:37:27', NULL),
(407, 'Viewed membership-management/edit/1', 'Registered', 1, 'http://saas.perklocker.thedevsites.com/public/membership-management/edit/1', '202.142.95.55', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.86 Safari/537.36', 'en-US,en;q=0.9', 'http://saas.perklocker.thedevsites.com/public/membership-management', 'GET', '2019-04-07 14:37:32', '2019-04-07 14:37:32', NULL),
(408, 'Viewed membership-management', 'Registered', 1, 'http://saas.perklocker.thedevsites.com/public/membership-management', '202.142.95.55', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.86 Safari/537.36', 'en-US,en;q=0.9', 'http://saas.perklocker.thedevsites.com/public/membership-management/edit/1', 'GET', '2019-04-07 14:37:37', '2019-04-07 14:37:37', NULL),
(409, 'Viewed membership-management/delete/1', 'Registered', 1, 'http://saas.perklocker.thedevsites.com/public/membership-management/delete/1', '202.142.95.55', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.86 Safari/537.36', 'en-US,en;q=0.9', 'http://saas.perklocker.thedevsites.com/public/membership-management', 'GET', '2019-04-07 14:37:39', '2019-04-07 14:37:39', NULL),
(410, 'Viewed membership-management', 'Registered', 1, 'http://saas.perklocker.thedevsites.com/public/membership-management', '202.142.95.55', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.86 Safari/537.36', 'en-US,en;q=0.9', 'http://saas.perklocker.thedevsites.com/public/membership-management', 'GET', '2019-04-07 14:37:41', '2019-04-07 14:37:41', NULL),
(411, 'Viewed membership-management/delete/2', 'Registered', 1, 'http://saas.perklocker.thedevsites.com/public/membership-management/delete/2', '202.142.95.55', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.86 Safari/537.36', 'en-US,en;q=0.9', 'http://saas.perklocker.thedevsites.com/public/membership-management', 'GET', '2019-04-07 14:37:42', '2019-04-07 14:37:42', NULL),
(412, 'Viewed membership-management', 'Registered', 1, 'http://saas.perklocker.thedevsites.com/public/membership-management', '202.142.95.55', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.86 Safari/537.36', 'en-US,en;q=0.9', 'http://saas.perklocker.thedevsites.com/public/membership-management', 'GET', '2019-04-07 14:37:43', '2019-04-07 14:37:43', NULL),
(413, 'Viewed membership-management/delete/2', 'Registered', 1, 'http://saas.perklocker.thedevsites.com/public/membership-management/delete/2', '202.142.95.55', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.86 Safari/537.36', 'en-US,en;q=0.9', 'http://saas.perklocker.thedevsites.com/public/membership-management', 'GET', '2019-04-07 14:37:43', '2019-04-07 14:37:43', NULL),
(414, 'Viewed membership-management', 'Registered', 1, 'http://saas.perklocker.thedevsites.com/public/membership-management', '202.142.95.55', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.86 Safari/537.36', 'en-US,en;q=0.9', 'http://saas.perklocker.thedevsites.com/public/membership-management', 'GET', '2019-04-07 14:37:44', '2019-04-07 14:37:44', NULL),
(415, 'Viewed membership-management/create', 'Registered', 1, 'http://saas.perklocker.thedevsites.com/public/membership-management/create', '202.142.95.55', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.86 Safari/537.36', 'en-US,en;q=0.9', 'http://saas.perklocker.thedevsites.com/public/membership-management', 'GET', '2019-04-07 14:37:46', '2019-04-07 14:37:46', NULL),
(416, 'Created membership-management/post_create', 'Registered', 1, 'http://saas.perklocker.thedevsites.com/public/membership-management/post_create', '202.142.95.55', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.86 Safari/537.36', 'en-US,en;q=0.9', 'http://saas.perklocker.thedevsites.com/public/membership-management/create', 'POST', '2019-04-07 14:37:57', '2019-04-07 14:37:57', NULL),
(417, 'Viewed membership-management', 'Registered', 1, 'http://saas.perklocker.thedevsites.com/public/membership-management', '202.142.95.55', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.86 Safari/537.36', 'en-US,en;q=0.9', 'http://saas.perklocker.thedevsites.com/public/membership-management/create', 'GET', '2019-04-07 14:37:58', '2019-04-07 14:37:58', NULL),
(418, 'Viewed membership-management/create', 'Registered', 1, 'http://saas.perklocker.thedevsites.com/public/membership-management/create', '202.142.95.55', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.86 Safari/537.36', 'en-US,en;q=0.9', 'http://saas.perklocker.thedevsites.com/public/membership-management', 'GET', '2019-04-07 14:38:10', '2019-04-07 14:38:10', NULL);
INSERT INTO `laravel_logger_activity` (`id`, `description`, `userType`, `userId`, `route`, `ipAddress`, `userAgent`, `locale`, `referer`, `methodType`, `created_at`, `updated_at`, `deleted_at`) VALUES
(419, 'Created membership-management/post_create', 'Registered', 1, 'http://saas.perklocker.thedevsites.com/public/membership-management/post_create', '202.142.95.55', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.86 Safari/537.36', 'en-US,en;q=0.9', 'http://saas.perklocker.thedevsites.com/public/membership-management/create', 'POST', '2019-04-07 14:38:32', '2019-04-07 14:38:32', NULL),
(420, 'Viewed membership-management', 'Registered', 1, 'http://saas.perklocker.thedevsites.com/public/membership-management', '202.142.95.55', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.86 Safari/537.36', 'en-US,en;q=0.9', 'http://saas.perklocker.thedevsites.com/public/membership-management/create', 'GET', '2019-04-07 14:38:33', '2019-04-07 14:38:33', NULL),
(421, 'Viewed client-management', 'Registered', 1, 'http://saas.perklocker.thedevsites.com/public/client-management', '202.142.95.55', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.86 Safari/537.36', 'en-US,en;q=0.9', 'http://saas.perklocker.thedevsites.com/public/membership-management', 'GET', '2019-04-07 14:38:46', '2019-04-07 14:38:46', NULL),
(422, 'Viewed client-management/edit/9', 'Registered', 1, 'http://saas.perklocker.thedevsites.com/public/client-management/edit/9', '202.142.95.55', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.86 Safari/537.36', 'en-US,en;q=0.9', 'http://saas.perklocker.thedevsites.com/public/client-management', 'GET', '2019-04-07 14:38:52', '2019-04-07 14:38:52', NULL),
(423, 'Viewed client-management/edit/9', 'Registered', 1, 'http://saas.perklocker.thedevsites.com/public/client-management/edit/9', '202.142.95.55', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.86 Safari/537.36', 'en-US,en;q=0.9', 'http://saas.perklocker.thedevsites.com/public/client-management', 'GET', '2019-04-07 14:41:53', '2019-04-07 14:41:53', NULL),
(424, 'Viewed client-management/edit/9', 'Registered', 1, 'http://saas.perklocker.thedevsites.com/public/client-management/edit/9', '202.142.95.55', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.86 Safari/537.36', 'en-US,en;q=0.9', 'http://saas.perklocker.thedevsites.com/public/client-management', 'GET', '2019-04-07 14:43:22', '2019-04-07 14:43:22', NULL),
(425, 'Viewed client-management/edit/9', 'Registered', 1, 'http://saas.perklocker.thedevsites.com/public/client-management/edit/9', '202.142.95.55', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.86 Safari/537.36', 'en-US,en;q=0.9', 'http://saas.perklocker.thedevsites.com/public/client-management', 'GET', '2019-04-07 14:46:32', '2019-04-07 14:46:32', NULL),
(426, 'Viewed client-management/edit/9', 'Registered', 1, 'http://saas.perklocker.thedevsites.com/public/client-management/edit/9', '202.142.95.55', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.86 Safari/537.36', 'en-US,en;q=0.9', 'http://saas.perklocker.thedevsites.com/public/client-management', 'GET', '2019-04-07 14:47:27', '2019-04-07 14:47:27', NULL),
(427, 'Viewed client-management/edit/9', 'Registered', 1, 'http://saas.perklocker.thedevsites.com/public/client-management/edit/9', '202.142.95.55', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.86 Safari/537.36', 'en-US,en;q=0.9', 'http://saas.perklocker.thedevsites.com/public/client-management', 'GET', '2019-04-07 14:48:34', '2019-04-07 14:48:34', NULL),
(428, 'Viewed client-management/edit/9', 'Registered', 1, 'http://saas.perklocker.thedevsites.com/public/client-management/edit/9', '202.142.95.55', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.86 Safari/537.36', 'en-US,en;q=0.9', 'http://saas.perklocker.thedevsites.com/public/client-management', 'GET', '2019-04-07 14:49:09', '2019-04-07 14:49:09', NULL),
(429, 'Created client-management/post_edit/add_membership', 'Registered', 1, 'http://saas.perklocker.thedevsites.com/public/client-management/post_edit/add_membership', '202.142.95.55', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.86 Safari/537.36', 'en-US,en;q=0.9', 'http://saas.perklocker.thedevsites.com/public/client-management/edit/9', 'POST', '2019-04-07 14:49:26', '2019-04-07 14:49:26', NULL),
(430, 'Viewed client-management/edit/9', 'Registered', 1, 'http://saas.perklocker.thedevsites.com/public/client-management/edit/9', '202.142.95.55', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.86 Safari/537.36', 'en-US,en;q=0.9', 'http://saas.perklocker.thedevsites.com/public/client-management', 'GET', '2019-04-07 14:51:12', '2019-04-07 14:51:12', NULL),
(431, 'Created client-management/post_edit/add_membership', 'Registered', 1, 'http://saas.perklocker.thedevsites.com/public/client-management/post_edit/add_membership', '202.142.95.55', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.86 Safari/537.36', 'en-US,en;q=0.9', 'http://saas.perklocker.thedevsites.com/public/client-management/edit/9', 'POST', '2019-04-07 14:51:32', '2019-04-07 14:51:32', NULL),
(432, 'Viewed client-management/edit/9', 'Registered', 1, 'http://saas.perklocker.thedevsites.com/public/client-management/edit/9', '202.142.95.55', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.86 Safari/537.36', 'en-US,en;q=0.9', 'http://saas.perklocker.thedevsites.com/public/client-management/edit/9', 'GET', '2019-04-07 14:51:33', '2019-04-07 14:51:33', NULL),
(433, 'Viewed client-management', 'Registered', 1, 'http://saas.perklocker.thedevsites.com/public/client-management', '202.142.95.55', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.86 Safari/537.36', 'en-US,en;q=0.9', 'http://saas.perklocker.thedevsites.com/public/client-management/edit/9', 'GET', '2019-04-07 14:51:41', '2019-04-07 14:51:41', NULL),
(434, 'Viewed client-management/edit/1', 'Registered', 1, 'http://saas.perklocker.thedevsites.com/public/client-management/edit/1', '202.142.95.55', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.86 Safari/537.36', 'en-US,en;q=0.9', 'http://saas.perklocker.thedevsites.com/public/client-management', 'GET', '2019-04-07 14:51:44', '2019-04-07 14:51:44', NULL),
(435, 'Viewed client-management', 'Registered', 1, 'http://saas.perklocker.thedevsites.com/public/client-management', '202.142.95.55', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.86 Safari/537.36', 'en-US,en;q=0.9', 'http://saas.perklocker.thedevsites.com/public/client-management/edit/1', 'GET', '2019-04-07 14:54:58', '2019-04-07 14:54:58', NULL),
(436, 'Viewed client-management/create', 'Registered', 1, 'http://saas.perklocker.thedevsites.com/public/client-management/create', '202.142.95.55', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.86 Safari/537.36', 'en-US,en;q=0.9', 'http://saas.perklocker.thedevsites.com/public/client-management', 'GET', '2019-04-07 14:55:02', '2019-04-07 14:55:02', NULL),
(437, 'Created client-management/post_create', 'Registered', 1, 'http://saas.perklocker.thedevsites.com/public/client-management/post_create', '202.142.95.55', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.86 Safari/537.36', 'en-US,en;q=0.9', 'http://saas.perklocker.thedevsites.com/public/client-management/create', 'POST', '2019-04-07 14:55:48', '2019-04-07 14:55:48', NULL),
(438, 'Created client-management/post_create', 'Registered', 1, 'http://saas.perklocker.thedevsites.com/public/client-management/post_create', '202.142.95.55', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.86 Safari/537.36', 'en-US,en;q=0.9', 'http://saas.perklocker.thedevsites.com/public/client-management/create', 'POST', '2019-04-07 14:56:19', '2019-04-07 14:56:19', NULL),
(439, 'Created client-management/post_create', 'Registered', 1, 'http://saas.perklocker.thedevsites.com/public/client-management/post_create', '202.142.95.55', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.86 Safari/537.36', 'en-US,en;q=0.9', 'http://saas.perklocker.thedevsites.com/public/client-management/create', 'POST', '2019-04-07 14:56:59', '2019-04-07 14:56:59', NULL),
(440, 'Viewed client-management', 'Registered', 1, 'http://saas.perklocker.thedevsites.com/public/client-management', '202.142.95.55', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.86 Safari/537.36', 'en-US,en;q=0.9', 'http://saas.perklocker.thedevsites.com/public/client-management/create', 'GET', '2019-04-07 14:57:00', '2019-04-07 14:57:00', NULL),
(441, 'Viewed client-management/edit/12', 'Registered', 1, 'http://saas.perklocker.thedevsites.com/public/client-management/edit/12', '202.142.95.55', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.86 Safari/537.36', 'en-US,en;q=0.9', 'http://saas.perklocker.thedevsites.com/public/client-management', 'GET', '2019-04-07 14:57:04', '2019-04-07 14:57:04', NULL),
(442, 'Viewed membership-management', 'Registered', 1, 'http://saas.perklocker.thedevsites.com/public/membership-management', '202.142.95.55', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.86 Safari/537.36', 'en-US,en;q=0.9', 'http://saas.perklocker.thedevsites.com/public/client-management/edit/12', 'GET', '2019-04-07 14:57:12', '2019-04-07 14:57:12', NULL),
(443, 'Viewed account-management', 'Registered', 1, 'http://saas.perklocker.thedevsites.com/public/account-management', '202.142.95.55', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.86 Safari/537.36', 'en-US,en;q=0.9', 'http://saas.perklocker.thedevsites.com/public/membership-management', 'GET', '2019-04-07 14:57:15', '2019-04-07 14:57:15', NULL),
(444, 'Viewed domain-management', 'Registered', 1, 'http://saas.perklocker.thedevsites.com/public/domain-management', '202.142.95.55', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.86 Safari/537.36', 'en-US,en;q=0.9', 'http://saas.perklocker.thedevsites.com/public/account-management', 'GET', '2019-04-07 14:57:20', '2019-04-07 14:57:20', NULL),
(445, 'Viewed domain-management/setting/1', 'Registered', 1, 'http://saas.perklocker.thedevsites.com/public/domain-management/setting/1', '202.142.95.55', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.86 Safari/537.36', 'en-US,en;q=0.9', 'http://saas.perklocker.thedevsites.com/public/domain-management', 'GET', '2019-04-07 14:57:23', '2019-04-07 14:57:23', NULL),
(446, 'Created domain-management/post_setting', 'Registered', 1, 'http://saas.perklocker.thedevsites.com/public/domain-management/post_setting', '202.142.95.55', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.86 Safari/537.36', 'en-US,en;q=0.9', 'http://saas.perklocker.thedevsites.com/public/domain-management/setting/1', 'POST', '2019-04-07 14:57:31', '2019-04-07 14:57:31', NULL),
(447, 'Viewed domain-management/setting/1', 'Registered', 1, 'http://saas.perklocker.thedevsites.com/public/domain-management/setting/1', '202.142.95.55', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.86 Safari/537.36', 'en-US,en;q=0.9', 'http://saas.perklocker.thedevsites.com/public/domain-management/setting/1', 'GET', '2019-04-07 14:57:31', '2019-04-07 14:57:31', NULL),
(448, 'Viewed audit-log', 'Registered', 1, 'http://saas.perklocker.thedevsites.com/public/audit-log', '202.142.95.55', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.86 Safari/537.36', 'en-US,en;q=0.9', 'http://saas.perklocker.thedevsites.com/public/domain-management/setting/1', 'GET', '2019-04-07 14:57:37', '2019-04-07 14:57:37', NULL),
(449, 'Logged Out', 'Registered', 1, 'http://saas.perklocker.thedevsites.com/public/logout', '202.142.95.55', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.86 Safari/537.36', 'en-US,en;q=0.9', 'http://saas.perklocker.thedevsites.com/public/audit-log', 'POST', '2019-04-07 14:58:08', '2019-04-07 14:58:08', NULL),
(450, 'Logged In', 'Registered', 1, 'https://saas.perklocker.thedevsites.com/public/login', '43.251.169.235', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.86 Safari/537.36', 'en-US,en;q=0.9', 'https://saas.perklocker.thedevsites.com/public/login', 'POST', '2019-04-08 17:16:43', '2019-04-08 17:16:43', NULL),
(451, 'Viewed home', 'Registered', 1, 'https://saas.perklocker.thedevsites.com/public/home', '43.251.169.235', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.86 Safari/537.36', 'en-US,en;q=0.9', 'https://saas.perklocker.thedevsites.com/public/login', 'GET', '2019-04-08 17:16:44', '2019-04-08 17:16:44', NULL),
(452, 'Viewed domain-management', 'Registered', 1, 'https://saas.perklocker.thedevsites.com/public/domain-management', '43.251.169.235', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.86 Safari/537.36', 'en-US,en;q=0.9', 'https://saas.perklocker.thedevsites.com/public/home', 'GET', '2019-04-08 17:17:03', '2019-04-08 17:17:03', NULL),
(453, 'Viewed domain-management/setting/1', 'Registered', 1, 'https://saas.perklocker.thedevsites.com/public/domain-management/setting/1', '43.251.169.235', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.86 Safari/537.36', 'en-US,en;q=0.9', 'https://saas.perklocker.thedevsites.com/public/domain-management', 'GET', '2019-04-08 17:17:12', '2019-04-08 17:17:12', NULL),
(454, 'Viewed membership-management', 'Registered', 1, 'https://saas.perklocker.thedevsites.com/public/membership-management', '43.251.169.235', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.86 Safari/537.36', 'en-US,en;q=0.9', 'https://saas.perklocker.thedevsites.com/public/domain-management/setting/1', 'GET', '2019-04-08 17:17:41', '2019-04-08 17:17:41', NULL),
(455, 'Viewed membership-management/create', 'Registered', 1, 'https://saas.perklocker.thedevsites.com/public/membership-management/create', '43.251.169.235', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.86 Safari/537.36', 'en-US,en;q=0.9', 'https://saas.perklocker.thedevsites.com/public/membership-management', 'GET', '2019-04-08 17:17:50', '2019-04-08 17:17:50', NULL),
(456, 'Viewed currency-management', 'Registered', 1, 'https://saas.perklocker.thedevsites.com/public/currency-management', '43.251.169.235', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.86 Safari/537.36', 'en-US,en;q=0.9', 'https://saas.perklocker.thedevsites.com/public/membership-management/create', 'GET', '2019-04-08 17:19:07', '2019-04-08 17:19:07', NULL),
(457, 'Viewed membership-management', 'Registered', 1, 'https://saas.perklocker.thedevsites.com/public/membership-management', '43.251.169.235', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.86 Safari/537.36', 'en-US,en;q=0.9', 'https://saas.perklocker.thedevsites.com/public/currency-management', 'GET', '2019-04-08 17:19:11', '2019-04-08 17:19:11', NULL),
(458, 'Viewed membership-management/edit/3', 'Registered', 1, 'https://saas.perklocker.thedevsites.com/public/membership-management/edit/3', '43.251.169.235', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.86 Safari/537.36', 'en-US,en;q=0.9', 'https://saas.perklocker.thedevsites.com/public/membership-management', 'GET', '2019-04-08 17:19:15', '2019-04-08 17:19:15', NULL),
(459, 'Viewed users', 'Registered', 1, 'https://saas.perklocker.thedevsites.com/public/users', '43.251.169.235', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.86 Safari/537.36', 'en-US,en;q=0.9', 'https://saas.perklocker.thedevsites.com/public/membership-management/edit/3', 'GET', '2019-04-08 17:20:47', '2019-04-08 17:20:47', NULL),
(460, 'Viewed client-management', 'Registered', 1, 'https://saas.perklocker.thedevsites.com/public/client-management', '43.251.169.235', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.86 Safari/537.36', 'en-US,en;q=0.9', 'https://saas.perklocker.thedevsites.com/public/users', 'GET', '2019-04-08 17:21:32', '2019-04-08 17:21:32', NULL),
(461, 'Viewed users', 'Registered', 1, 'https://saas.perklocker.thedevsites.com/public/users', '43.251.169.235', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.86 Safari/537.36', 'en-US,en;q=0.9', 'https://saas.perklocker.thedevsites.com/public/client-management', 'GET', '2019-04-08 17:21:40', '2019-04-08 17:21:40', NULL),
(462, 'Viewed membership-management', 'Registered', 1, 'https://saas.perklocker.thedevsites.com/public/membership-management', '43.251.169.235', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.86 Safari/537.36', 'en-US,en;q=0.9', 'https://saas.perklocker.thedevsites.com/public/users', 'GET', '2019-04-08 17:24:04', '2019-04-08 17:24:04', NULL),
(463, 'Viewed membership-management/edit/3', 'Registered', 1, 'https://saas.perklocker.thedevsites.com/public/membership-management/edit/3', '43.251.169.235', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.86 Safari/537.36', 'en-US,en;q=0.9', 'https://saas.perklocker.thedevsites.com/public/membership-management', 'GET', '2019-04-08 17:24:31', '2019-04-08 17:24:31', NULL),
(464, 'Logged In', 'Registered', 1, 'https://saas.perklocker.thedevsites.com/public/login', '157.40.56.130', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.86 Safari/537.36', 'en-US,en;q=0.9', 'https://saas.perklocker.thedevsites.com/public/login', 'POST', '2019-04-08 23:03:15', '2019-04-08 23:03:15', NULL),
(465, 'Viewed home', 'Registered', 1, 'https://saas.perklocker.thedevsites.com/public/home', '157.40.56.130', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.86 Safari/537.36', 'en-US,en;q=0.9', 'https://saas.perklocker.thedevsites.com/public/login', 'GET', '2019-04-08 23:03:17', '2019-04-08 23:03:17', NULL),
(466, 'Logged In', 'Registered', 1, 'https://saas.perklocker.thedevsites.com/public/home', '43.251.169.235', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.86 Safari/537.36', 'en-US,en;q=0.9', NULL, 'GET', '2019-04-09 01:30:40', '2019-04-09 01:30:40', NULL),
(467, 'Viewed home', 'Registered', 1, 'https://saas.perklocker.thedevsites.com/public/home', '43.251.169.235', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.86 Safari/537.36', 'en-US,en;q=0.9', NULL, 'GET', '2019-04-09 01:30:41', '2019-04-09 01:30:41', NULL),
(468, 'Viewed client-management', 'Registered', 1, 'https://saas.perklocker.thedevsites.com/public/client-management', '43.251.169.235', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.86 Safari/537.36', 'en-US,en;q=0.9', 'https://saas.perklocker.thedevsites.com/public/home', 'GET', '2019-04-09 01:31:00', '2019-04-09 01:31:00', NULL),
(469, 'Viewed client-management/edit/1', 'Registered', 1, 'https://saas.perklocker.thedevsites.com/public/client-management/edit/1', '43.251.169.235', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.86 Safari/537.36', 'en-US,en;q=0.9', 'https://saas.perklocker.thedevsites.com/public/client-management', 'GET', '2019-04-09 01:31:04', '2019-04-09 01:31:04', NULL),
(470, 'Viewed client-management', 'Registered', 1, 'https://saas.perklocker.thedevsites.com/public/client-management', '43.251.169.235', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.86 Safari/537.36', 'en-US,en;q=0.9', 'https://saas.perklocker.thedevsites.com/public/client-management/edit/1', 'GET', '2019-04-09 01:31:58', '2019-04-09 01:31:58', NULL),
(471, 'Viewed audit-log', 'Registered', 1, 'https://saas.perklocker.thedevsites.com/public/audit-log', '43.251.169.235', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.86 Safari/537.36', 'en-US,en;q=0.9', 'https://saas.perklocker.thedevsites.com/public/client-management', 'GET', '2019-04-09 01:32:34', '2019-04-09 01:32:34', NULL),
(472, 'Logged In', 'Registered', 1, 'https://saas.perklocker.thedevsites.com/public/login', '185.69.144.255', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/12.0.3 Safari/605.1.15', 'en-gb', 'https://saas.perklocker.thedevsites.com/public/login', 'POST', '2019-04-14 23:25:59', '2019-04-14 23:25:59', NULL),
(473, 'Viewed home', 'Registered', 1, 'https://saas.perklocker.thedevsites.com/public/home', '185.69.144.255', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/12.0.3 Safari/605.1.15', 'en-gb', 'https://saas.perklocker.thedevsites.com/public/login', 'GET', '2019-04-14 23:26:00', '2019-04-14 23:26:00', NULL),
(474, 'Viewed membership-management', 'Registered', 1, 'https://saas.perklocker.thedevsites.com/public/membership-management', '185.69.144.255', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/12.0.3 Safari/605.1.15', 'en-gb', 'https://saas.perklocker.thedevsites.com/public/home', 'GET', '2019-04-14 23:26:12', '2019-04-14 23:26:12', NULL),
(475, 'Viewed client-management', 'Registered', 1, 'https://saas.perklocker.thedevsites.com/public/client-management', '185.69.144.255', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/12.0.3 Safari/605.1.15', 'en-gb', 'https://saas.perklocker.thedevsites.com/public/membership-management', 'GET', '2019-04-14 23:26:27', '2019-04-14 23:26:27', NULL),
(476, 'Viewed users', 'Registered', 1, 'https://saas.perklocker.thedevsites.com/public/users', '185.69.144.255', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/12.0.3 Safari/605.1.15', 'en-gb', 'https://saas.perklocker.thedevsites.com/public/client-management', 'GET', '2019-04-14 23:26:48', '2019-04-14 23:26:48', NULL),
(477, 'Viewed audit-log', 'Registered', 1, 'https://saas.perklocker.thedevsites.com/public/audit-log', '185.69.144.255', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/12.0.3 Safari/605.1.15', 'en-gb', 'https://saas.perklocker.thedevsites.com/public/users', 'GET', '2019-04-14 23:27:05', '2019-04-14 23:27:05', NULL),
(478, 'Viewed audit-log', 'Registered', 1, 'https://saas.perklocker.thedevsites.com/public/audit-log', '185.69.144.255', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/12.0.3 Safari/605.1.15', 'en-gb', NULL, 'GET', '2019-04-14 23:33:13', '2019-04-14 23:33:13', NULL),
(479, 'Logged In', 'Registered', 1, 'https://saas.perklocker.thedevsites.com/public/login', '85.255.237.119', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/12.0.3 Safari/605.1.15', 'en-gb', 'https://saas.perklocker.thedevsites.com/public/login', 'POST', '2019-04-15 21:22:44', '2019-04-15 21:22:44', NULL),
(480, 'Viewed home', 'Registered', 1, 'https://saas.perklocker.thedevsites.com/public/home', '85.255.237.119', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/12.0.3 Safari/605.1.15', 'en-gb', 'https://saas.perklocker.thedevsites.com/public/login', 'GET', '2019-04-15 21:22:45', '2019-04-15 21:22:45', NULL),
(481, 'Viewed logs', 'Registered', 1, 'https://saas.perklocker.thedevsites.com/public/logs', '85.255.237.119', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/12.0.3 Safari/605.1.15', 'en-gb', 'https://saas.perklocker.thedevsites.com/public/home', 'GET', '2019-04-15 21:22:50', '2019-04-15 21:22:50', NULL),
(482, 'Viewed logs', 'Registered', 1, 'https://saas.perklocker.thedevsites.com/public/logs', '85.255.237.119', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/12.0.3 Safari/605.1.15', 'en-gb', 'https://saas.perklocker.thedevsites.com/public/logs', 'GET', '2019-04-15 21:22:55', '2019-04-15 21:22:55', NULL),
(483, 'Viewed logs', 'Registered', 1, 'https://saas.perklocker.thedevsites.com/public/logs', '85.255.237.119', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/12.0.3 Safari/605.1.15', 'en-gb', 'https://saas.perklocker.thedevsites.com/public/logs', 'GET', '2019-04-15 21:22:56', '2019-04-15 21:22:56', NULL),
(484, 'Viewed users/create', 'Registered', 1, 'https://saas.perklocker.thedevsites.com/public/users/create', '85.255.237.119', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/12.0.3 Safari/605.1.15', 'en-gb', 'https://saas.perklocker.thedevsites.com/public/logs', 'GET', '2019-04-15 21:23:25', '2019-04-15 21:23:25', NULL),
(485, 'Viewed audit-log', 'Registered', 1, 'https://saas.perklocker.thedevsites.com/public/audit-log', '85.255.237.119', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/12.0.3 Safari/605.1.15', 'en-gb', 'https://saas.perklocker.thedevsites.com/public/users/create', 'GET', '2019-04-15 21:23:28', '2019-04-15 21:23:28', NULL),
(486, 'Viewed audit-log', 'Registered', 1, 'https://saas.perklocker.thedevsites.com/public/audit-log', '85.255.237.119', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/12.0.3 Safari/605.1.15', 'en-gb', 'https://saas.perklocker.thedevsites.com/public/users/create', 'GET', '2019-04-15 21:23:29', '2019-04-15 21:23:29', NULL),
(487, 'Viewed audit-log', 'Registered', 1, 'https://saas.perklocker.thedevsites.com/public/audit-log', '85.255.237.119', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/12.0.3 Safari/605.1.15', 'en-gb', 'https://saas.perklocker.thedevsites.com/public/users/create', 'GET', '2019-04-15 21:23:31', '2019-04-15 21:23:31', NULL),
(488, 'Viewed membership-management', 'Registered', 1, 'https://saas.perklocker.thedevsites.com/public/membership-management', '85.255.237.119', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/12.0.3 Safari/605.1.15', 'en-gb', 'https://saas.perklocker.thedevsites.com/public/audit-log', 'GET', '2019-04-15 21:23:32', '2019-04-15 21:23:32', NULL),
(489, 'Viewed audit-log', 'Registered', 1, 'https://saas.perklocker.thedevsites.com/public/audit-log', '85.255.237.119', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/12.0.3 Safari/605.1.15', 'en-gb', 'https://saas.perklocker.thedevsites.com/public/audit-log', 'GET', '2019-04-15 21:23:33', '2019-04-15 21:23:33', NULL),
(490, 'Viewed account-management', 'Registered', 1, 'https://saas.perklocker.thedevsites.com/public/account-management', '85.255.237.119', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/12.0.3 Safari/605.1.15', 'en-gb', 'https://saas.perklocker.thedevsites.com/public/audit-log', 'GET', '2019-04-15 21:23:59', '2019-04-15 21:23:59', NULL),
(491, 'Viewed account-management', 'Registered', 1, 'https://saas.perklocker.thedevsites.com/public/account-management', '85.255.237.119', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/12.0.3 Safari/605.1.15', 'en-gb', 'https://saas.perklocker.thedevsites.com/public/account-management', 'GET', '2019-04-15 21:24:01', '2019-04-15 21:24:01', NULL),
(492, 'Viewed domain-management', 'Registered', 1, 'https://saas.perklocker.thedevsites.com/public/domain-management', '85.255.237.119', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/12.0.3 Safari/605.1.15', 'en-gb', 'https://saas.perklocker.thedevsites.com/public/account-management', 'GET', '2019-04-15 21:24:02', '2019-04-15 21:24:02', NULL),
(493, 'Viewed users', 'Registered', 1, 'https://saas.perklocker.thedevsites.com/public/users', '85.255.237.119', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/12.0.3 Safari/605.1.15', 'en-gb', 'https://saas.perklocker.thedevsites.com/public/domain-management', 'GET', '2019-04-15 21:24:06', '2019-04-15 21:24:06', NULL),
(494, 'Viewed users/create', 'Registered', 1, 'https://saas.perklocker.thedevsites.com/public/users/create', '85.255.237.119', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/12.0.3 Safari/605.1.15', 'en-gb', 'https://saas.perklocker.thedevsites.com/public/users', 'GET', '2019-04-15 21:24:12', '2019-04-15 21:24:12', NULL),
(495, 'Viewed users', 'Registered', 1, 'https://saas.perklocker.thedevsites.com/public/users', '85.255.237.119', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/12.0.3 Safari/605.1.15', 'en-gb', 'https://saas.perklocker.thedevsites.com/public/users/create', 'GET', '2019-04-15 21:24:22', '2019-04-15 21:24:22', NULL),
(496, 'Viewed client-management', 'Registered', 1, 'https://saas.perklocker.thedevsites.com/public/client-management', '85.255.237.119', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/12.0.3 Safari/605.1.15', 'en-gb', 'https://saas.perklocker.thedevsites.com/public/users', 'GET', '2019-04-15 21:24:28', '2019-04-15 21:24:28', NULL),
(497, 'Viewed users/create', 'Registered', 1, 'https://saas.perklocker.thedevsites.com/public/users/create', '85.255.237.119', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/12.0.3 Safari/605.1.15', 'en-gb', 'https://saas.perklocker.thedevsites.com/public/users', 'GET', '2019-04-15 21:24:28', '2019-04-15 21:24:28', NULL),
(498, 'Viewed client-management', 'Registered', 1, 'https://saas.perklocker.thedevsites.com/public/client-management', '85.255.237.119', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/12.0.3 Safari/605.1.15', 'en-gb', 'https://saas.perklocker.thedevsites.com/public/users/create', 'GET', '2019-04-15 21:24:30', '2019-04-15 21:24:30', NULL),
(499, 'Viewed currency-management', 'Registered', 1, 'https://saas.perklocker.thedevsites.com/public/currency-management', '85.255.237.119', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/12.0.3 Safari/605.1.15', 'en-gb', 'https://saas.perklocker.thedevsites.com/public/client-management', 'GET', '2019-04-15 21:24:31', '2019-04-15 21:24:31', NULL),
(500, 'Viewed membership-management', 'Registered', 1, 'https://saas.perklocker.thedevsites.com/public/membership-management', '85.255.237.119', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/12.0.3 Safari/605.1.15', 'en-gb', 'https://saas.perklocker.thedevsites.com/public/currency-management', 'GET', '2019-04-15 21:26:54', '2019-04-15 21:26:54', NULL),
(501, 'Viewed audit-log', 'Registered', 1, 'https://saas.perklocker.thedevsites.com/public/audit-log', '85.255.237.119', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/12.0.3 Safari/605.1.15', 'en-gb', 'https://saas.perklocker.thedevsites.com/public/membership-management', 'GET', '2019-04-15 21:26:58', '2019-04-15 21:26:58', NULL),
(502, 'Viewed logs', 'Registered', 1, 'https://saas.perklocker.thedevsites.com/public/logs', '85.255.237.119', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/12.0.3 Safari/605.1.15', 'en-gb', 'https://saas.perklocker.thedevsites.com/public/audit-log', 'GET', '2019-04-15 21:27:01', '2019-04-15 21:27:01', NULL),
(503, 'Viewed users/create', 'Registered', 1, 'https://saas.perklocker.thedevsites.com/public/users/create', '85.255.237.119', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/12.0.3 Safari/605.1.15', 'en-gb', 'https://saas.perklocker.thedevsites.com/public/logs', 'GET', '2019-04-15 21:27:28', '2019-04-15 21:27:28', NULL),
(504, 'Viewed users/create', 'Registered', 1, 'https://saas.perklocker.thedevsites.com/public/users/create', '85.255.237.119', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/12.0.3 Safari/605.1.15', 'en-gb', 'https://saas.perklocker.thedevsites.com/public/logs', 'GET', '2019-04-15 21:27:28', '2019-04-15 21:27:28', NULL),
(505, 'Viewed currency-management', 'Registered', 1, 'https://saas.perklocker.thedevsites.com/public/currency-management', '85.255.237.119', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/12.0.3 Safari/605.1.15', 'en-gb', 'https://saas.perklocker.thedevsites.com/public/users/create', 'GET', '2019-04-15 21:27:30', '2019-04-15 21:27:30', NULL),
(506, 'Viewed currency-management', 'Registered', 1, 'https://saas.perklocker.thedevsites.com/public/currency-management', '85.255.237.119', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/12.0.3 Safari/605.1.15', 'en-gb', 'https://saas.perklocker.thedevsites.com/public/currency-management', 'GET', '2019-04-15 21:27:31', '2019-04-15 21:27:31', NULL),
(507, 'Viewed domain-management', 'Registered', 1, 'https://saas.perklocker.thedevsites.com/public/domain-management', '85.255.237.119', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/12.0.3 Safari/605.1.15', 'en-gb', 'https://saas.perklocker.thedevsites.com/public/currency-management', 'GET', '2019-04-15 21:27:32', '2019-04-15 21:27:32', NULL),
(508, 'Failed Login Attempt', 'Guest', NULL, 'http://saas.perklocker.thedevsites.com/public/login', '47.15.172.43', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', 'en-US,en;q=0.9', 'http://saas.perklocker.thedevsites.com/public/login', 'POST', '2019-04-17 19:39:02', '2019-04-17 19:39:02', NULL),
(509, 'Logged In', 'Registered', 1, 'http://saas.perklocker.thedevsites.com/public/login', '47.15.172.43', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', 'en-US,en;q=0.9', 'http://saas.perklocker.thedevsites.com/public/login', 'POST', '2019-04-17 19:39:16', '2019-04-17 19:39:16', NULL),
(510, 'Viewed home', 'Registered', 1, 'https://saas.perklocker.thedevsites.com/public/home', '47.15.172.43', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', 'en-US,en;q=0.9', 'http://saas.perklocker.thedevsites.com/public/login', 'GET', '2019-04-17 19:39:17', '2019-04-17 19:39:17', NULL),
(511, 'Logged In', 'Registered', 1, 'http://saas.perklocker.thedevsites.com/public/login', '85.255.235.88', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/12.0.3 Safari/605.1.15', 'en-gb', 'http://saas.perklocker.thedevsites.com/public/login', 'POST', '2019-04-17 19:39:19', '2019-04-17 19:39:19', NULL),
(512, 'Viewed home', 'Registered', 1, 'http://saas.perklocker.thedevsites.com/public/home', '85.255.235.88', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/12.0.3 Safari/605.1.15', 'en-gb', 'http://saas.perklocker.thedevsites.com/public/login', 'GET', '2019-04-17 19:39:20', '2019-04-17 19:39:20', NULL),
(513, 'Viewed currency-management', 'Registered', 1, 'http://saas.perklocker.thedevsites.com/public/currency-management', '85.255.235.88', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/12.0.3 Safari/605.1.15', 'en-gb', 'http://saas.perklocker.thedevsites.com/public/home', 'GET', '2019-04-17 19:39:28', '2019-04-17 19:39:28', NULL),
(514, 'Viewed audit-log', 'Registered', 1, 'http://saas.perklocker.thedevsites.com/public/audit-log', '85.255.235.88', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/12.0.3 Safari/605.1.15', 'en-gb', 'http://saas.perklocker.thedevsites.com/public/currency-management', 'GET', '2019-04-17 19:39:32', '2019-04-17 19:39:32', NULL),
(515, 'Viewed membership-management', 'Registered', 1, 'http://saas.perklocker.thedevsites.com/public/membership-management', '85.255.235.88', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/12.0.3 Safari/605.1.15', 'en-gb', 'http://saas.perklocker.thedevsites.com/public/audit-log', 'GET', '2019-04-17 19:39:35', '2019-04-17 19:39:35', NULL),
(516, 'Viewed membership-management', 'Registered', 1, 'http://saas.perklocker.thedevsites.com/public/membership-management', '85.255.235.88', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/12.0.3 Safari/605.1.15', 'en-gb', 'http://saas.perklocker.thedevsites.com/public/audit-log', 'GET', '2019-04-17 19:39:36', '2019-04-17 19:39:36', NULL),
(517, 'Viewed account-management', 'Registered', 1, 'http://saas.perklocker.thedevsites.com/public/account-management', '85.255.235.88', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/12.0.3 Safari/605.1.15', 'en-gb', 'http://saas.perklocker.thedevsites.com/public/audit-log', 'GET', '2019-04-17 19:39:37', '2019-04-17 19:39:37', NULL),
(518, 'Viewed currency-management', 'Registered', 1, 'http://saas.perklocker.thedevsites.com/public/currency-management', '85.255.235.88', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/12.0.3 Safari/605.1.15', 'en-gb', 'http://saas.perklocker.thedevsites.com/public/account-management', 'GET', '2019-04-17 19:39:40', '2019-04-17 19:39:40', NULL),
(519, 'Viewed client-management', 'Registered', 1, 'http://saas.perklocker.thedevsites.com/public/client-management', '85.255.235.88', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/12.0.3 Safari/605.1.15', 'en-gb', 'http://saas.perklocker.thedevsites.com/public/currency-management', 'GET', '2019-04-17 19:39:43', '2019-04-17 19:39:43', NULL),
(520, 'Viewed users/create', 'Registered', 1, 'http://saas.perklocker.thedevsites.com/public/users/create', '85.255.235.88', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/12.0.3 Safari/605.1.15', 'en-gb', 'http://saas.perklocker.thedevsites.com/public/client-management', 'GET', '2019-04-17 19:39:46', '2019-04-17 19:39:46', NULL),
(521, 'Viewed users', 'Registered', 1, 'http://saas.perklocker.thedevsites.com/public/users', '85.255.235.88', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/12.0.3 Safari/605.1.15', 'en-gb', 'http://saas.perklocker.thedevsites.com/public/users/create', 'GET', '2019-04-17 19:39:51', '2019-04-17 19:39:51', NULL),
(522, 'Viewed audit-log', 'Registered', 1, 'http://saas.perklocker.thedevsites.com/public/audit-log', '85.255.235.88', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/12.0.3 Safari/605.1.15', 'en-gb', 'http://saas.perklocker.thedevsites.com/public/users', 'GET', '2019-04-17 19:40:03', '2019-04-17 19:40:03', NULL),
(523, 'Viewed membership-management', 'Registered', 1, 'http://saas.perklocker.thedevsites.com/public/membership-management', '85.255.235.88', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/12.0.3 Safari/605.1.15', 'en-gb', 'http://saas.perklocker.thedevsites.com/public/audit-log', 'GET', '2019-04-17 19:40:40', '2019-04-17 19:40:40', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `log`
--

CREATE TABLE `log` (
  `id` int(11) NOT NULL,
  `user` varchar(255) NOT NULL,
  `action` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `log`
--

INSERT INTO `log` (`id`, `user`, `action`, `description`, `created_at`, `updated_at`) VALUES
(1, 'developer@thedevsites.com', 'Logout', 'developer@thedevsites.com logs out from the system', '2019-04-06 09:40:06', NULL),
(2, 'developer@thedevsites.com', 'Logout', 'developer@thedevsites.com logs out from the system', '2019-04-06 09:40:43', NULL),
(3, 'developer@thedevsites.com', 'Logout', 'developer@thedevsites.com logs out from the system', '2019-04-06 09:46:31', NULL),
(4, 'developer@thedevsites.com', 'Logout', 'developer@thedevsites.com logs out from the system', '2019-04-06 09:50:03', NULL),
(5, 'developer@thedevsites.com', 'Logout', 'developer@thedevsites.com logs out from the system', '2019-04-06 09:52:17', NULL),
(6, 'developer@thedevsites.com', 'Logged In', 'developer@thedevsites.com logged into the system', '2019-04-06 09:52:23', NULL),
(7, 'developer@thedevsites.com', 'Logged In', 'developer@thedevsites.com logged into the system', '2019-04-06 09:52:33', NULL),
(8, 'developer@thedevsites.com', 'Logged In', 'developer@thedevsites.com logged into the system', '2019-04-06 09:55:22', NULL),
(9, 'developer@thedevsites.com', 'Logged In', 'developer@thedevsites.com logged into the system', '2019-04-06 09:55:42', NULL),
(10, 'developer@thedevsites.com', 'Logged In', 'developer@thedevsites.com logged into the system', '2019-04-06 09:56:02', NULL),
(11, 'developer@thedevsites.com', 'Logged In', 'developer@thedevsites.com logged into the system', '2019-04-06 09:56:24', NULL),
(12, 'developer@thedevsites.com', 'Logged In', 'developer@thedevsites.com logged into the system', '2019-04-06 09:56:40', NULL),
(13, 'developer@thedevsites.com', 'Logged In', 'developer@thedevsites.com logged into the system', '2019-04-06 09:56:49', NULL),
(14, 'developer@thedevsites.com', 'Logged In', 'developer@thedevsites.com logged into the system', '2019-04-06 09:57:00', NULL),
(15, 'developer@thedevsites.com', 'Company added', 'developer@thedevsites.com added company in client management', '2019-04-06 09:57:01', NULL),
(16, 'developer@thedevsites.com', 'Logged In', 'developer@thedevsites.com logged into the system', '2019-04-06 09:57:02', NULL),
(17, 'developer@thedevsites.com', 'Logged In', 'developer@thedevsites.com logged into the system', '2019-04-06 10:12:01', NULL),
(18, 'developer@thedevsites.com', 'Logged In', 'developer@thedevsites.com logged into the system', '2019-04-06 10:12:04', NULL),
(19, 'developer@thedevsites.com', 'Logout', 'developer@thedevsites.com logs out from the system', '2019-04-06 10:12:14', NULL),
(20, 'developer@thedevsites.com', 'Logged In', 'developer@thedevsites.com logged into the system', '2019-04-06 23:55:51', NULL),
(21, 'developer@thedevsites.com', 'Logged In', 'developer@thedevsites.com logged into the system', '2019-04-07 00:02:17', NULL),
(22, 'developer@thedevsites.com', 'Logged In', 'developer@thedevsites.com logged into the system', '2019-04-07 00:02:38', NULL),
(23, 'developer@thedevsites.com', 'Logged In', 'developer@thedevsites.com logged into the system', '2019-04-07 00:06:04', NULL),
(24, 'developer@thedevsites.com', 'Logged In', 'developer@thedevsites.com logged into the system', '2019-04-07 00:06:15', NULL),
(25, 'developer@thedevsites.com', 'Logged In', 'developer@thedevsites.com logged into the system', '2019-04-07 00:14:08', NULL),
(26, 'developer@thedevsites.com', 'Logged In', 'developer@thedevsites.com logged into the system', '2019-04-07 00:24:22', NULL),
(27, 'developer@thedevsites.com', 'Logged In', 'developer@thedevsites.com logged into the system', '2019-04-07 00:28:32', NULL),
(28, 'developer@thedevsites.com', 'Logged In', 'developer@thedevsites.com logged into the system', '2019-04-07 00:29:07', NULL),
(29, 'developer@thedevsites.com', 'Logged In', 'developer@thedevsites.com logged into the system', '2019-04-07 00:30:24', NULL),
(30, 'developer@thedevsites.com', 'Logged In', 'developer@thedevsites.com logged into the system', '2019-04-07 01:04:34', NULL),
(31, 'developer@thedevsites.com', 'Logged In', 'developer@thedevsites.com logged into the system', '2019-04-07 01:09:40', NULL),
(32, 'developer@thedevsites.com', 'Logged In', 'developer@thedevsites.com logged into the system', '2019-04-07 01:10:57', NULL),
(33, 'developer@thedevsites.com', 'Logged In', 'developer@thedevsites.com logged into the system', '2019-04-07 01:11:10', NULL),
(34, 'developer@thedevsites.com', 'Domain', 'developer@thedevsites.com domain added in domain setting successfully', '2019-04-07 01:11:10', NULL),
(35, 'developer@thedevsites.com', 'Logged In', 'developer@thedevsites.com logged into the system', '2019-04-07 01:11:12', NULL),
(36, 'developer@thedevsites.com', 'Logged In', 'developer@thedevsites.com logged into the system', '2019-04-07 01:11:33', NULL),
(37, 'developer@thedevsites.com', 'Logged In', 'developer@thedevsites.com logged into the system', '2019-04-07 01:12:10', NULL),
(38, 'developer@thedevsites.com', 'Domain', 'developer@thedevsites.com domain added in domain setting successfully', '2019-04-07 01:12:11', NULL),
(39, 'developer@thedevsites.com', 'Logged In', 'developer@thedevsites.com logged into the system', '2019-04-07 01:12:11', NULL),
(40, 'developer@thedevsites.com', 'Logged In', 'developer@thedevsites.com logged into the system', '2019-04-07 01:14:15', NULL),
(41, 'developer@thedevsites.com', 'Logged In', 'developer@thedevsites.com logged into the system', '2019-04-07 01:14:20', NULL),
(42, 'developer@thedevsites.com', 'Logged In', 'developer@thedevsites.com logged into the system', '2019-04-07 01:14:43', NULL),
(43, 'developer@thedevsites.com', 'Logged In', 'developer@thedevsites.com logged into the system', '2019-04-07 01:15:02', NULL),
(44, 'developer@thedevsites.com', 'Logged In', 'developer@thedevsites.com logged into the system', '2019-04-07 01:15:16', NULL),
(45, 'developer@thedevsites.com', 'Domain', 'developer@thedevsites.com domain added in domain setting successfully', '2019-04-07 01:15:17', NULL),
(46, 'developer@thedevsites.com', 'Logged In', 'developer@thedevsites.com logged into the system', '2019-04-07 01:15:17', NULL),
(47, 'developer@thedevsites.com', 'Logged In', 'developer@thedevsites.com logged into the system', '2019-04-07 01:16:26', NULL),
(48, 'developer@thedevsites.com', 'Logged In', 'developer@thedevsites.com logged into the system', '2019-04-07 01:18:43', NULL),
(49, 'developer@thedevsites.com', 'Domain', 'developer@thedevsites.com domain added in domain setting successfully', '2019-04-07 01:18:43', NULL),
(50, 'developer@thedevsites.com', 'Logged In', 'developer@thedevsites.com logged into the system', '2019-04-07 01:18:44', NULL),
(51, 'developer@thedevsites.com', 'Logged In', 'developer@thedevsites.com logged into the system', '2019-04-07 01:23:03', NULL),
(52, 'developer@thedevsites.com', 'Logged In', 'developer@thedevsites.com logged into the system', '2019-04-07 01:24:14', NULL),
(53, 'developer@thedevsites.com', 'Domain', 'developer@thedevsites.com domain added in domain setting successfully', '2019-04-07 01:24:15', NULL),
(54, 'developer@thedevsites.com', 'Logged In', 'developer@thedevsites.com logged into the system', '2019-04-07 01:24:17', NULL),
(55, 'developer@thedevsites.com', 'Company deleted', 'developer@thedevsites.com company deleted in client management', '2019-04-07 14:36:14', NULL),
(56, 'developer@thedevsites.com', 'Company deleted', 'developer@thedevsites.com company deleted in client management', '2019-04-07 14:36:17', NULL),
(57, 'developer@thedevsites.com', 'Company added', 'developer@thedevsites.com added company in client management', '2019-04-07 14:37:15', NULL),
(58, 'developer@thedevsites.com', 'Membership plan deleted', 'developer@thedevsites.com Membership plan deleted', '2019-04-07 14:37:40', NULL),
(59, 'developer@thedevsites.com', 'Membership plan deleted', 'developer@thedevsites.com Membership plan deleted', '2019-04-07 14:37:42', NULL),
(60, 'developer@thedevsites.com', 'Membership plan added', 'developer@thedevsites.com Membership plan added', '2019-04-07 14:37:57', NULL),
(61, 'developer@thedevsites.com', 'Membership plan added', 'developer@thedevsites.com Membership plan added', '2019-04-07 14:38:32', NULL),
(62, 'developer@thedevsites.com', 'Membership added', 'developer@thedevsites.com Membership added in client management inside company details', '2019-04-07 14:51:33', NULL),
(63, 'developer@thedevsites.com', 'Company added', 'developer@thedevsites.com added company in client management', '2019-04-07 14:56:59', NULL),
(64, 'developer@thedevsites.com', 'Domain', 'developer@thedevsites.com domain added in domain setting successfully', '2019-04-07 14:57:31', NULL),
(65, 'developer@thedevsites.com', 'Logout', 'developer@thedevsites.com logs out from the system', '2019-04-07 14:58:08', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `membership`
--

CREATE TABLE `membership` (
  `id` int(11) NOT NULL,
  `membership_image` text,
  `membership_name` varchar(255) DEFAULT NULL,
  `descrip` text,
  `total_usage` enum('1','0') NOT NULL,
  `duration` enum('monthly','yearly') NOT NULL,
  `qty` int(11) DEFAULT NULL,
  `validity` enum('1','0') NOT NULL,
  `renewal` enum('month','year') NOT NULL,
  `renewal_qty` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `membership`
--

INSERT INTO `membership` (`id`, `membership_image`, `membership_name`, `descrip`, `total_usage`, `duration`, `qty`, `validity`, `renewal`, `renewal_qty`, `created_at`, `updated_at`) VALUES
(3, '1554626277.jpg', 'Gold Membership', 'This is a gold membership', '0', 'monthly', NULL, '0', 'month', NULL, NULL, NULL),
(4, '1554626312.jpg', 'Silver Membership', 'This is a silver membership', '0', 'monthly', NULL, '0', 'month', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2016_01_15_105324_create_roles_table', 1),
(4, '2016_01_15_114412_create_role_user_table', 1),
(5, '2016_01_26_115212_create_permissions_table', 1),
(6, '2016_01_26_115523_create_permission_role_table', 1),
(7, '2016_02_09_132439_create_permission_user_table', 1),
(8, '2017_03_09_082449_create_social_logins_table', 1),
(9, '2017_03_09_082526_create_activations_table', 1),
(10, '2017_03_20_213554_create_themes_table', 1),
(11, '2017_03_21_042918_create_profiles_table', 1),
(12, '2017_11_04_103444_create_laravel_logger_activity_table', 1),
(13, '2017_12_09_070937_create_two_step_auth_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `id` int(10) UNSIGNED NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`id`, `email`, `token`, `created_at`) VALUES
(1, 'developer@thedevsites.com', '$2y$10$O/KF.uXdIyR6r11TLpemoeaNosEdfffzJACunh3B5UEBRMtPoRrLm', '2019-03-05 10:06:22');

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `model` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `slug`, `description`, `model`, `created_at`, `updated_at`) VALUES
(1, 'Can View Users', 'view.users', 'Can view users', 'Permission', '2019-03-05 09:37:13', '2019-03-05 09:37:13'),
(2, 'Can Create Users', 'create.users', 'Can create new users', 'Permission', '2019-03-05 09:37:13', '2019-03-05 09:37:13'),
(3, 'Can Edit Users', 'edit.users', 'Can edit users', 'Permission', '2019-03-05 09:37:13', '2019-03-05 09:37:13'),
(4, 'Can Delete Users', 'delete.users', 'Can delete users', 'Permission', '2019-03-05 09:37:13', '2019-03-05 09:37:13');

-- --------------------------------------------------------

--
-- Table structure for table `permission_role`
--

CREATE TABLE `permission_role` (
  `id` int(10) UNSIGNED NOT NULL,
  `permission_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permission_role`
--

INSERT INTO `permission_role` (`id`, `permission_id`, `role_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '2019-03-05 09:37:14', '2019-03-05 09:37:14'),
(2, 2, 1, '2019-03-05 09:37:14', '2019-03-05 09:37:14'),
(3, 3, 1, '2019-03-05 09:37:14', '2019-03-05 09:37:14'),
(4, 4, 1, '2019-03-05 09:37:14', '2019-03-05 09:37:14');

-- --------------------------------------------------------

--
-- Table structure for table `permission_user`
--

CREATE TABLE `permission_user` (
  `id` int(10) UNSIGNED NOT NULL,
  `permission_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `profiles`
--

CREATE TABLE `profiles` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `theme_id` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `location` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bio` text COLLATE utf8mb4_unicode_ci,
  `twitter_username` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `github_username` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar_status` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `profiles`
--

INSERT INTO `profiles` (`id`, `user_id`, `theme_id`, `location`, `bio`, `twitter_username`, `github_username`, `avatar`, `avatar_status`, `created_at`, `updated_at`) VALUES
(1, 1, 1, NULL, NULL, NULL, NULL, NULL, 0, '2019-03-05 09:37:17', '2019-03-05 09:37:17'),
(2, 2, 1, NULL, NULL, NULL, NULL, NULL, 0, '2019-03-05 09:37:18', '2019-03-05 09:37:18');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `level` int(11) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `slug`, `description`, `level`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin', 'Admin Role', 5, '2019-03-05 09:37:13', '2019-03-05 09:37:13'),
(2, 'User', 'user', 'User Role', 1, '2019-03-05 09:37:13', '2019-03-05 09:37:13');

-- --------------------------------------------------------

--
-- Table structure for table `role_user`
--

CREATE TABLE `role_user` (
  `id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_user`
--

INSERT INTO `role_user` (`id`, `role_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '2019-03-05 09:37:17', '2019-03-05 09:37:17'),
(2, 2, 2, '2019-03-05 09:37:18', '2019-03-05 09:37:18');

-- --------------------------------------------------------

--
-- Table structure for table `themes`
--

CREATE TABLE `themes` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notes` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `taggable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `taggable_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `themes`
--

INSERT INTO `themes` (`id`, `name`, `link`, `notes`, `status`, `taggable_type`, `taggable_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Default', 'null', NULL, 1, 'theme', 1, '2019-03-05 09:37:14', '2019-03-05 09:37:15', NULL),
(2, 'Darkly', 'https://maxcdn.bootstrapcdn.com/bootswatch/4.0.0/darkly/bootstrap.min.css', NULL, 1, 'theme', 2, '2019-03-05 09:37:14', '2019-03-05 09:37:15', NULL),
(3, 'Cyborg', 'https://maxcdn.bootstrapcdn.com/bootswatch/4.0.0/cyborg/bootstrap.min.css', NULL, 1, 'theme', 3, '2019-03-05 09:37:14', '2019-03-05 09:37:15', NULL),
(4, 'Cosmo', 'https://maxcdn.bootstrapcdn.com/bootswatch/4.0.0/cosmo/bootstrap.min.css', NULL, 1, 'theme', 4, '2019-03-05 09:37:14', '2019-03-05 09:37:15', NULL),
(5, 'Cerulean', 'https://maxcdn.bootstrapcdn.com/bootswatch/4.0.0/cerulean/bootstrap.min.css', NULL, 1, 'theme', 5, '2019-03-05 09:37:14', '2019-03-05 09:37:15', NULL),
(6, 'Flatly', 'https://maxcdn.bootstrapcdn.com/bootswatch/4.0.0/flatly/bootstrap.min.css', NULL, 1, 'theme', 6, '2019-03-05 09:37:14', '2019-03-05 09:37:15', NULL),
(7, 'Journal', 'https://maxcdn.bootstrapcdn.com/bootswatch/4.0.0/journal/bootstrap.min.css', NULL, 1, 'theme', 7, '2019-03-05 09:37:14', '2019-03-05 09:37:15', NULL),
(8, 'Lumen', 'https://maxcdn.bootstrapcdn.com/bootswatch/4.0.0/lumen/bootstrap.min.css', NULL, 1, 'theme', 8, '2019-03-05 09:37:14', '2019-03-05 09:37:16', NULL),
(9, 'Paper', 'https://maxcdn.bootstrapcdn.com/bootswatch/4.0.0/paper/bootstrap.min.css', NULL, 1, 'theme', 9, '2019-03-05 09:37:14', '2019-03-05 09:37:16', NULL),
(10, 'Readable', 'https://maxcdn.bootstrapcdn.com/bootswatch/4.0.0/readable/bootstrap.min.css', NULL, 1, 'theme', 10, '2019-03-05 09:37:14', '2019-03-05 09:37:16', NULL),
(11, 'Sandstone', 'https://maxcdn.bootstrapcdn.com/bootswatch/4.0.0/sandstone/bootstrap.min.css', NULL, 1, 'theme', 11, '2019-03-05 09:37:14', '2019-03-05 09:37:16', NULL),
(12, 'Simplex', 'https://maxcdn.bootstrapcdn.com/bootswatch/4.0.0/simplex/bootstrap.min.css', NULL, 1, 'theme', 12, '2019-03-05 09:37:14', '2019-03-05 09:37:16', NULL),
(13, 'Slate', 'https://maxcdn.bootstrapcdn.com/bootswatch/4.0.0/slate/bootstrap.min.css', NULL, 1, 'theme', 13, '2019-03-05 09:37:14', '2019-03-05 09:37:16', NULL),
(14, 'Spacelab', 'https://maxcdn.bootstrapcdn.com/bootswatch/4.0.0/spacelab/bootstrap.min.css', NULL, 1, 'theme', 14, '2019-03-05 09:37:14', '2019-03-05 09:37:16', NULL),
(15, 'Superhero', 'https://maxcdn.bootstrapcdn.com/bootswatch/4.0.0/superhero/bootstrap.min.css', NULL, 1, 'theme', 15, '2019-03-05 09:37:14', '2019-03-05 09:37:16', NULL),
(16, 'United', 'https://maxcdn.bootstrapcdn.com/bootswatch/4.0.0/united/bootstrap.min.css', NULL, 1, 'theme', 16, '2019-03-05 09:37:15', '2019-03-05 09:37:16', NULL),
(17, 'Yeti', 'https://maxcdn.bootstrapcdn.com/bootswatch/4.0.0/yeti/bootstrap.min.css', NULL, 1, 'theme', 17, '2019-03-05 09:37:15', '2019-03-05 09:37:16', NULL),
(18, 'Bootstrap 4.0.0 Alpha', 'https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/css/bootstrap.min.css', NULL, 1, 'theme', 18, '2019-03-05 09:37:15', '2019-03-05 09:37:16', NULL),
(19, 'Materialize', 'https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0-beta/css/materialize.min.css', NULL, 1, 'theme', 19, '2019-03-05 09:37:15', '2019-03-05 09:37:17', NULL),
(20, 'Bootstrap Material Design 4.0.0', 'https://cdnjs.cloudflare.com/ajax/libs/bootstrap-material-design/4.0.0/bootstrap-material-design.min.css', NULL, 1, 'theme', 20, '2019-03-05 09:37:15', '2019-03-05 09:37:17', NULL),
(21, 'Bootstrap Material Design 4.0.2', 'https://cdnjs.cloudflare.com/ajax/libs/bootstrap-material-design/4.0.2/bootstrap-material-design.min.css', NULL, 1, 'theme', 21, '2019-03-05 09:37:15', '2019-03-05 09:37:17', NULL),
(22, 'mdbootstrap', 'https://cdnjs.cloudflare.com/ajax/libs/mdbootstrap/4.3.1/css/mdb.min.css', NULL, 1, 'theme', 22, '2019-03-05 09:37:15', '2019-03-05 09:37:17', NULL),
(23, 'Litera', 'https://maxcdn.bootstrapcdn.com/bootswatch/4.0.0/litera/bootstrap.min.css', NULL, 1, 'theme', 23, '2019-03-05 09:37:15', '2019-03-05 09:37:17', NULL),
(24, 'Lux', 'https://maxcdn.bootstrapcdn.com/bootswatch/4.0.0/lux/bootstrap.min.css', NULL, 1, 'theme', 24, '2019-03-05 09:37:15', '2019-03-05 09:37:17', NULL),
(25, 'Materia', 'https://maxcdn.bootstrapcdn.com/bootswatch/4.0.0/materia/bootstrap.min.css', NULL, 1, 'theme', 25, '2019-03-05 09:37:15', '2019-03-05 09:37:17', NULL),
(26, 'Minty', 'https://maxcdn.bootstrapcdn.com/bootswatch/4.0.0/minty/bootstrap.min.css', NULL, 1, 'theme', 26, '2019-03-05 09:37:15', '2019-03-05 09:37:17', NULL),
(27, 'Pulse', 'https://maxcdn.bootstrapcdn.com/bootswatch/4.0.0/pulse/bootstrap.min.css', NULL, 1, 'theme', 27, '2019-03-05 09:37:15', '2019-03-05 09:37:17', NULL),
(28, 'Sketchy', 'https://maxcdn.bootstrapcdn.com/bootswatch/4.0.0/sketchy/bootstrap.min.css', NULL, 1, 'theme', 28, '2019-03-05 09:37:15', '2019-03-05 09:37:17', NULL),
(29, 'Solar', 'https://maxcdn.bootstrapcdn.com/bootswatch/4.0.0/solar/bootstrap.min.css', NULL, 1, 'theme', 29, '2019-03-05 09:37:15', '2019-03-05 09:37:17', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `first_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `activated` tinyint(1) NOT NULL DEFAULT '0',
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `signup_ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `signup_confirmation_ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `signup_sm_ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `admin_ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `first_name`, `last_name`, `email`, `password`, `remember_token`, `activated`, `token`, `signup_ip_address`, `signup_confirmation_ip_address`, `signup_sm_ip_address`, `admin_ip_address`, `updated_ip_address`, `deleted_ip_address`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'john.deo', 'John', 'Deo', 'developer@thedevsites.com', '$2y$10$UYbZ3Tsg0WxhAGDh8tWh5.Do.EXuGWe78JR5Bpasfbwd3umAtCQ02', 'dIqGqE7DjoOV63tCBvgZYvtpZKWex3rEjcC97xBysVh0UPvEqHamsTGf4Nk1', 1, 'whjR7wzCnBRDRvqyMEANFjyNMXpKfzJ7KZaAJnF64AcjjwmicYZudKnWXv4i7Bzw', NULL, '27.0.165.224', NULL, '21.235.42.250', NULL, NULL, '2019-03-05 09:37:17', '2019-03-05 09:37:17', NULL),
(2, 'john.deo2', 'John', 'Deo', 'developer2@thedevsites.com', '$2y$10$JP49EnDybhnZoJuXi74Jwesb9V1NFj1qNC98hc.fZWQNeWTjVi/Qa', NULL, 1, 'BVIl87PYWqBX5gHxszYlf9xpVTVkpUaPlGWjG1mejAmt1lyL0QxxfM9k0m4uZTHR', '184.149.61.84', '26.118.209.155', NULL, NULL, NULL, NULL, '2019-03-05 09:37:18', '2019-03-05 09:37:18', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `account`
--
ALTER TABLE `account`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `activations`
--
ALTER TABLE `activations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `activations_user_id_index` (`user_id`);

--
-- Indexes for table `client_management`
--
ALTER TABLE `client_management`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `client_management_company_name_unique` (`company_name`),
  ADD UNIQUE KEY `client_management_company_in_unique` (`company_in`),
  ADD UNIQUE KEY `client_management_company_address_unique` (`company_address`),
  ADD UNIQUE KEY `client_management_company_brief_unique` (`company_brief`),
  ADD UNIQUE KEY `client_management_company_city_unique` (`company_city`),
  ADD UNIQUE KEY `client_management_company_zip_unique` (`company_zip`),
  ADD UNIQUE KEY `client_management_company_email_address_unique` (`company_email_address`),
  ADD UNIQUE KEY `client_management_company_country_unique` (`company_country`),
  ADD UNIQUE KEY `client_management_company_state_unique` (`company_state`);

--
-- Indexes for table `currency_conversion`
--
ALTER TABLE `currency_conversion`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `domain`
--
ALTER TABLE `domain`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `laravel_logger_activity`
--
ALTER TABLE `laravel_logger_activity`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `log`
--
ALTER TABLE `log`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `membership`
--
ALTER TABLE `membership`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `password_resets_email_index` (`email`),
  ADD KEY `password_resets_token_index` (`token`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_slug_unique` (`slug`);

--
-- Indexes for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`id`),
  ADD KEY `permission_role_permission_id_index` (`permission_id`),
  ADD KEY `permission_role_role_id_index` (`role_id`);

--
-- Indexes for table `permission_user`
--
ALTER TABLE `permission_user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `permission_user_permission_id_index` (`permission_id`),
  ADD KEY `permission_user_user_id_index` (`user_id`);

--
-- Indexes for table `profiles`
--
ALTER TABLE `profiles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `profiles_theme_id_foreign` (`theme_id`),
  ADD KEY `profiles_user_id_index` (`user_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_slug_unique` (`slug`);

--
-- Indexes for table `role_user`
--
ALTER TABLE `role_user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `role_user_role_id_index` (`role_id`),
  ADD KEY `role_user_user_id_index` (`user_id`);

--
-- Indexes for table `themes`
--
ALTER TABLE `themes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `themes_name_unique` (`name`),
  ADD UNIQUE KEY `themes_link_unique` (`link`),
  ADD KEY `themes_taggable_type_taggable_id_index` (`taggable_type`,`taggable_id`),
  ADD KEY `themes_id_index` (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_name_unique` (`name`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `account`
--
ALTER TABLE `account`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `activations`
--
ALTER TABLE `activations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `client_management`
--
ALTER TABLE `client_management`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `currency_conversion`
--
ALTER TABLE `currency_conversion`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `domain`
--
ALTER TABLE `domain`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `laravel_logger_activity`
--
ALTER TABLE `laravel_logger_activity`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=524;

--
-- AUTO_INCREMENT for table `log`
--
ALTER TABLE `log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT for table `membership`
--
ALTER TABLE `membership`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `password_resets`
--
ALTER TABLE `password_resets`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `permission_role`
--
ALTER TABLE `permission_role`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `permission_user`
--
ALTER TABLE `permission_user`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `profiles`
--
ALTER TABLE `profiles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `role_user`
--
ALTER TABLE `role_user`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `themes`
--
ALTER TABLE `themes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `activations`
--
ALTER TABLE `activations`
  ADD CONSTRAINT `activations_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `permission_user`
--
ALTER TABLE `permission_user`
  ADD CONSTRAINT `permission_user_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `permission_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `profiles`
--
ALTER TABLE `profiles`
  ADD CONSTRAINT `profiles_theme_id_foreign` FOREIGN KEY (`theme_id`) REFERENCES `themes` (`id`),
  ADD CONSTRAINT `profiles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_user`
--
ALTER TABLE `role_user`
  ADD CONSTRAINT `role_user_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
