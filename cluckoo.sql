-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 18, 2023 at 06:33 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cluckoo`
--

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `category_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `name`, `slug`, `status`, `created_at`, `updated_at`, `category_id`) VALUES
(4, 'Casio', 'casio', 0, '2023-03-27 15:54:53', '2023-03-27 15:54:53', 6),
(5, 'Iwatch', 'iwatch', 0, '2023-03-29 05:51:23', '2023-04-05 19:10:50', 7),
(6, 'Gshocks', 'gshocks', 0, '2023-04-11 04:57:09', '2023-04-11 04:57:09', 6),
(7, 'Samsung', 'samsung', 0, '2023-05-17 06:04:35', '2023-05-17 06:04:35', 18);

-- --------------------------------------------------------

--
-- Table structure for table `carts`
--

CREATE TABLE `carts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_color_id` int(11) DEFAULT NULL,
  `quantity` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `description` longtext NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `meta_title` varchar(255) NOT NULL,
  `meta_keyword` varchar(255) NOT NULL,
  `meta_description` mediumtext NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0=visible,1=hidden',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `description`, `image`, `meta_title`, `meta_keyword`, `meta_description`, `status`, `created_at`, `updated_at`) VALUES
(18, 'Smart Watch', 'smart-watch', 'Smart Watch', 'uploads/category/1684325023.png', 'Smart Watch', 'Smart Watch', 'Smart Watch', 0, '2023-05-17 04:02:33', '2023-05-17 04:03:43'),
(19, 'Luxury Watch', 'luxury-watch', 'Luxury Watch', 'uploads/category/1684326798.png', 'Luxury Watch', 'Luxury Watch', 'Luxury Watch', 0, '2023-05-17 04:33:18', '2023-05-17 04:33:18');

-- --------------------------------------------------------

--
-- Table structure for table `colors`
--

CREATE TABLE `colors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `colors`
--

INSERT INTO `colors` (`id`, `name`, `code`, `status`, `created_at`, `updated_at`) VALUES
(11, 'Blue', 'Blue', 0, '2023-05-17 06:48:38', '2023-05-17 06:51:46');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_02_07_075719_add_details_to_users_table', 1),
(6, '2023_02_07_083229_create_categories_table', 1),
(7, '2023_02_26_005028_create_brands_table', 1),
(8, '2023_03_04_232223_create_products_table', 1),
(9, '2023_03_04_233337_create_product_images_table', 1),
(11, '2023_03_25_233640_create_colors_table', 2),
(12, '2023_03_26_120707_create_product_colors_table', 3),
(13, '2023_03_26_230737_create_sliders_table', 4),
(14, '2023_04_06_030023_add_category_id_to_brands_table', 5),
(15, '2023_04_12_231155_create_wishlists_table', 6),
(16, '2023_04_30_101751_create_carts_table', 7),
(17, '2023_05_01_130113_create_orders_table', 8),
(18, '2023_05_01_130352_create_order_items_table', 8),
(20, '2023_05_04_160919_create_settings_table', 9),
(21, '2023_05_05_134045_create_user_details_table', 10);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `tracking_no` varchar(255) NOT NULL,
  `fullname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `pincode` varchar(255) NOT NULL,
  `address` mediumtext NOT NULL,
  `status_message` varchar(255) NOT NULL,
  `payment_mode` varchar(255) NOT NULL,
  `payment_id` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `tracking_no`, `fullname`, `email`, `phone`, `pincode`, `address`, `status_message`, `payment_mode`, `payment_id`, `created_at`, `updated_at`) VALUES
(1, 1, 'cluckoo-RYSNIw9EXf', 'Admin', 'admin@gmail.com', '09633653901', '4431', 'Iriga City, Philippines', 'In Progress', 'Cash on Delivery', NULL, '2023-05-01 05:52:04', '2023-05-01 05:52:04'),
(2, 1, 'cluckoo-CMoDkVezoy', 'Admin', 'admin@gmail.com', '09123456789', '3324', 'Philippines', 'In Progress', 'Cash on Delivery', NULL, '2023-05-01 05:55:51', '2023-05-01 05:55:51'),
(3, 1, 'cluckoo-o4IonwX1ED', 'Admin', 'admin@gmail.com', '09123456789', '3324', 'Philippiness', 'In Progress', 'Cash on Delivery', NULL, '2023-05-01 05:56:13', '2023-05-01 05:56:13'),
(4, 1, 'cluckoo-7vrLvHpfVL', 'Admin', 'admin@gmail.com', '1234567890', '2324', 'Bicol', 'In Progress', 'Cash on Delivery', NULL, '2023-05-01 05:58:16', '2023-05-01 05:58:16'),
(5, 1, 'cluckoo-TQh3JzGsks', 'Admin', 'admin@gmail.com', '33434354545', '3343', 'sasasasas', 'In Progress', 'Cash on Delivery', NULL, '2023-05-01 06:11:04', '2023-05-01 06:11:04'),
(6, 2, 'cluckoo-PuNfIEghkE', 'Makuguren', 'markgmiguel@outlook.com', '01234562890', '21343', 'sasasa', 'In Progress', 'Cash on Delivery', NULL, '2023-05-01 06:16:05', '2023-05-01 06:16:05'),
(7, 2, 'cluckoo-rk4mRsTO9D', 'Makuguren', 'markgmiguel@outlook.com', '1234556678', '2133', 'Iriga City, Philippines', 'In Progress', 'Cash on Delivery', NULL, '2023-05-01 06:49:45', '2023-05-01 06:49:45'),
(8, 2, 'cluckoo-K8fXezOS25', 'Makuguren', 'markgmiguel@outlook.com', '12121212121', '1343', 'dasdsdsd', 'In Progress', 'Cash on Delivery', NULL, '2023-05-01 06:55:08', '2023-05-01 06:55:08'),
(9, 2, 'cluckoo-WEcpaHiOLI', 'Makuguren', 'markgmiguel@outlook.com', '09213233234', '1213', 'Iriga City', 'In Progress', 'Cash on Delivery', NULL, '2023-05-01 06:57:54', '2023-05-01 06:57:54'),
(10, 2, 'cluckoo-xNle0MciIA', 'Makuguren', 'markgmiguel@outlook.com', '1212121212', '2121', 'sdssdsd', 'In Progress', 'Cash on Delivery', NULL, '2023-05-01 07:00:23', '2023-05-01 07:00:23'),
(11, 2, 'cluckoo-TqXcx85GCO', 'Makuguren', 'markgmiguel@outlook.com', '1212122133', '2121', '212', 'In Progress', 'Cash on Delivery', NULL, '2023-05-01 07:03:03', '2023-05-01 07:03:03'),
(12, 2, 'cluckoo-ZAEGvdFSxx', 'Makuguren', 'markgmiguel@outlook.com', '12345643211', '21312', 'wqwqwq', 'In Progress', 'Cash on Delivery', NULL, '2023-05-01 07:04:42', '2023-05-01 07:04:42'),
(13, 2, 'cluckoo-QICVdblOcc', 'Makuguren', 'markgmiguel@outlook.com', '12343565334', '2121', '21212', 'In Progress', 'Cash on Delivery', NULL, '2023-05-01 07:17:33', '2023-05-01 07:17:33'),
(14, 1, 'cluckoo-NW0OCTUNA2', 'Admin', 'admin@gmail.com', '12122344343', '2112', '2asasads', 'In Progress', 'Cash on Delivery', NULL, '2023-05-01 07:22:55', '2023-05-01 07:22:55'),
(15, 1, 'cluckoo-plzP9WwxTk', 'Admin', 'admin@gmail.com', '1211223311', '21121', '212qw121', 'In Progress', 'Cash on Delivery', NULL, '2023-05-01 07:28:07', '2023-05-01 07:28:07'),
(16, 1, 'cluckoo-uwsucUtaUh', 'Admin', 'admin@gmail.com', '2121234222', '2121', 'a12112121', 'In Progress', 'Cash on Delivery', NULL, '2023-05-01 07:29:15', '2023-05-01 07:29:15'),
(17, 1, 'cluckoo-FFuqLGx9su', 'Admin', 'admin@gmail.com', '12234312122', '1212', '212121212', 'In Progress', 'Cash on Delivery', NULL, '2023-05-01 07:30:37', '2023-05-01 07:30:37'),
(18, 1, 'cluckoo-zGu6BbYmQf', 'Admin', 'admin@gmail.com', '09234356432', '4431', 'Balintawak Street', 'Out for Delivery', 'Cash on Delivery', NULL, '2023-05-01 19:04:50', '2023-05-03 16:31:01'),
(19, 1, 'cluckoo-Q35uJAqvzw', 'Admin', 'admin@gmail.com', '09633653901', '4431', 'San Nicolas', 'Out for Delivery', 'Paid by Paypal', '3GP32812MP128594P', '2023-05-01 21:42:53', '2023-05-03 04:47:29'),
(20, 1, 'cluckoo-sYkTIpGcir', 'Admin', 'admin@gmail.com', '09633653901', '4431', 'Iriga', 'Completed', 'Paid by Paypal', '156619484L139361C', '2023-05-01 21:45:29', '2023-05-01 21:45:29'),
(21, 1, 'cluckoo-haR3Jp8zVY', 'Admin', 'admin@gmail.com', '09633653901', '4431', 'sasasa', 'In Progress', 'Cash on Delivery', NULL, '2023-05-01 23:08:43', '2023-05-01 23:08:43'),
(22, 2, 'cluckoo-83bRL0v5ad', 'Makuguren', 'markgmiguel@outlook.com', '09633653901', '4431', 'San Nicolas', 'Completed', 'Cash on Delivery', NULL, '2023-04-03 19:32:17', '2023-05-03 23:21:44'),
(23, 2, 'cluckoo-ytbWJh8m9W', 'Makuguren', 'markgmiguel@outlook.com', '09633653901', '4431', 'San Nicolas', 'In Progress', 'Paid by Paypal', '3KX90728S7242901W', '2023-05-04 23:26:42', '2023-05-03 23:26:42'),
(24, 2, 'cluckoo-xHqRlRrWZj', 'Makuguren Hello', 'markgmiguel@outlook.com', '09633653901', '4431', 'sasasasasasasasasasas', 'In Progress', 'Cash on Delivery', NULL, '2023-05-05 09:08:05', '2023-05-05 09:08:05'),
(25, 2, 'cluckoo-6MBtzkJqQ5', 'Mark Glen', 'markgmiguel@outlook.com', '09633653901', '4431', 'Balaigang, San Nicolas, Iriga City', 'In Progress', 'Cash on Delivery', NULL, '2023-05-06 21:56:59', '2023-05-06 21:56:59'),
(26, 2, 'cluckoo-bJlW5yt9v6', 'Mark Glen', 'markgmiguel@outlook.com', '09633653901', '4431', 'Balaigang, San Nicolas, Iriga City', 'Out for Delivery', 'Cash on Delivery', NULL, '2023-05-16 05:10:41', '2023-05-16 06:31:51');

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_color_id` int(11) DEFAULT NULL,
  `quantity` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_items`
--

INSERT INTO `order_items` (`id`, `order_id`, `product_id`, `product_color_id`, `quantity`, `price`, `created_at`, `updated_at`) VALUES
(1, 1, 5, 10, 1, 67000, '2023-05-01 05:52:04', '2023-05-01 05:52:04'),
(2, 1, 5, 12, 1, 67000, '2023-05-01 05:52:04', '2023-05-01 05:52:04'),
(3, 1, 6, NULL, 1, 1230, '2023-05-01 05:52:04', '2023-05-01 05:52:04'),
(4, 2, 5, 10, 1, 67000, '2023-05-01 05:55:51', '2023-05-01 05:55:51'),
(5, 2, 5, 12, 1, 67000, '2023-05-01 05:55:51', '2023-05-01 05:55:51'),
(6, 2, 6, NULL, 1, 1230, '2023-05-01 05:55:51', '2023-05-01 05:55:51'),
(7, 3, 5, 10, 1, 67000, '2023-05-01 05:56:13', '2023-05-01 05:56:13'),
(8, 3, 5, 12, 1, 67000, '2023-05-01 05:56:13', '2023-05-01 05:56:13'),
(9, 3, 6, NULL, 1, 1230, '2023-05-01 05:56:13', '2023-05-01 05:56:13'),
(10, 4, 5, 10, 1, 67000, '2023-05-01 05:58:16', '2023-05-01 05:58:16'),
(11, 4, 5, 12, 1, 67000, '2023-05-01 05:58:16', '2023-05-01 05:58:16'),
(12, 4, 6, NULL, 1, 1230, '2023-05-01 05:58:16', '2023-05-01 05:58:16'),
(13, 5, 5, 10, 1, 67000, '2023-05-01 06:11:04', '2023-05-01 06:11:04'),
(14, 6, 5, 10, 1, 67000, '2023-05-01 06:16:05', '2023-05-01 06:16:05'),
(15, 7, 5, 10, 1, 67000, '2023-05-01 06:49:45', '2023-05-01 06:49:45'),
(16, 7, 5, 12, 1, 67000, '2023-05-01 06:49:45', '2023-05-01 06:49:45'),
(17, 8, 5, 10, 1, 67000, '2023-05-01 06:55:08', '2023-05-01 06:55:08'),
(18, 9, 5, 10, 5, 67000, '2023-05-01 06:57:54', '2023-05-01 06:57:54'),
(19, 9, 5, 12, 5, 67000, '2023-05-01 06:57:54', '2023-05-01 06:57:54'),
(20, 10, 6, NULL, 4, 1230, '2023-05-01 07:00:23', '2023-05-01 07:00:23'),
(21, 11, 6, NULL, 3, 1230, '2023-05-01 07:03:03', '2023-05-01 07:03:03'),
(22, 11, 5, 10, 2, 67000, '2023-05-01 07:03:03', '2023-05-01 07:03:03'),
(23, 12, 5, 10, 3, 67000, '2023-05-01 07:04:42', '2023-05-01 07:04:42'),
(24, 12, 5, 12, 3, 67000, '2023-05-01 07:04:42', '2023-05-01 07:04:42'),
(25, 12, 6, NULL, 3, 1230, '2023-05-01 07:04:42', '2023-05-01 07:04:42'),
(26, 13, 5, 10, 3, 67000, '2023-05-01 07:17:33', '2023-05-01 07:17:33'),
(27, 13, 5, 12, 3, 67000, '2023-05-01 07:17:33', '2023-05-01 07:17:33'),
(28, 14, 7, 13, 2, 1222, '2023-05-01 07:22:55', '2023-05-01 07:22:55'),
(29, 14, 7, 14, 2, 1222, '2023-05-01 07:22:55', '2023-05-01 07:22:55'),
(30, 15, 8, 15, 5, 212121, '2023-05-01 07:28:07', '2023-05-01 07:28:07'),
(31, 16, 8, 16, 7, 212121, '2023-05-01 07:29:15', '2023-05-01 07:29:15'),
(32, 16, 8, 15, 7, 212121, '2023-05-01 07:29:15', '2023-05-01 07:29:15'),
(33, 17, 6, NULL, 7, 1230, '2023-05-01 07:30:37', '2023-05-01 07:30:37'),
(34, 17, 8, 16, 5, 212121, '2023-05-01 07:30:37', '2023-05-01 07:30:37'),
(35, 18, 6, NULL, 1, 1230, '2023-05-01 19:04:50', '2023-05-01 19:04:50'),
(36, 19, 6, NULL, 1, 1230, '2023-05-01 21:42:53', '2023-05-01 21:42:53'),
(37, 20, 6, NULL, 1, 1230, '2023-05-01 21:45:29', '2023-05-01 21:45:29'),
(38, 21, 8, 15, 4, 212121, '2023-05-01 23:08:43', '2023-05-01 23:08:43'),
(39, 21, 8, 16, 4, 212121, '2023-05-01 23:08:43', '2023-05-01 23:08:43'),
(40, 22, 6, NULL, 1, 1230, '2023-05-03 19:32:17', '2023-05-03 19:32:17'),
(41, 23, 8, 15, 1, 212121, '2023-05-03 23:26:42', '2023-05-03 23:26:42'),
(42, 23, 8, 16, 1, 212121, '2023-05-03 23:26:42', '2023-05-03 23:26:42'),
(43, 24, 6, NULL, 1, 1230, '2023-05-05 09:08:05', '2023-05-05 09:08:05'),
(44, 25, 13, NULL, 1, 1200, '2023-05-06 21:56:59', '2023-05-06 21:56:59'),
(45, 26, 15, NULL, 1, 1223, '2023-05-16 05:10:41', '2023-05-16 05:10:41');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES
(8, 'App\\Models\\User', 8, 'MyApp', 'e59e2bb43cd2c0006bfe3d435868f8d285d407cc08b6a3da4ff088a64d98022e', '[\"*\"]', NULL, NULL, '2023-05-08 04:25:57', '2023-05-08 04:25:57');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `brand` varchar(255) DEFAULT NULL,
  `small_description` mediumtext DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `original_price` int(11) NOT NULL,
  `selling_price` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `trending` tinyint(4) NOT NULL DEFAULT 0 COMMENT '1=trending,0=not-trending',
  `featured` tinyint(4) NOT NULL DEFAULT 0 COMMENT '1=featured,0=not-featured',
  `status` tinyint(4) NOT NULL DEFAULT 0 COMMENT '1=hidden,0=visible',
  `meta_title` varchar(255) NOT NULL,
  `meta_keyword` mediumtext DEFAULT NULL,
  `meta_description` mediumtext DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category_id`, `name`, `slug`, `brand`, `small_description`, `description`, `original_price`, `selling_price`, `quantity`, `trending`, `featured`, `status`, `meta_title`, `meta_keyword`, `meta_description`, `created_at`, `updated_at`) VALUES
(24, 19, 'Luxury Watch', 'luxury-watch', 'Gshocks', 'Luxury Watch', 'Luxury Watch', 1455, 2355, 677, 1, 1, 0, 'Luxury Watch', 'Luxury Watch', 'Luxury Watch', '2023-05-17 04:34:05', '2023-05-17 04:34:05');

-- --------------------------------------------------------

--
-- Table structure for table `product_colors`
--

CREATE TABLE `product_colors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `color_id` bigint(20) UNSIGNED DEFAULT NULL,
  `quantity` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_images`
--

CREATE TABLE `product_images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_images`
--

INSERT INTO `product_images` (`id`, `product_id`, `image`, `created_at`, `updated_at`) VALUES
(47, 24, 'uploads/products/16843268451.png', '2023-05-17 04:34:05', '2023-05-17 04:34:05'),
(48, 24, 'uploads/products/16843268452.png', '2023-05-17 04:34:05', '2023-05-17 04:34:05');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `website_name` varchar(255) DEFAULT NULL,
  `website_description` varchar(500) DEFAULT NULL,
  `website_url` varchar(255) DEFAULT NULL,
  `page_title` varchar(255) DEFAULT NULL,
  `meta_keyword` varchar(500) DEFAULT NULL,
  `meta_description` varchar(500) DEFAULT NULL,
  `address` varchar(500) DEFAULT NULL,
  `phone1` varchar(255) DEFAULT NULL,
  `phone2` varchar(255) DEFAULT NULL,
  `email1` varchar(255) DEFAULT NULL,
  `email2` varchar(255) DEFAULT NULL,
  `facebook` varchar(255) DEFAULT NULL,
  `twitter` varchar(255) DEFAULT NULL,
  `instagram` varchar(255) DEFAULT NULL,
  `youtube` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `website_name`, `website_description`, `website_url`, `page_title`, `meta_keyword`, `meta_description`, `address`, `phone1`, `phone2`, `email1`, `email2`, `facebook`, `twitter`, `instagram`, `youtube`, `created_at`, `updated_at`) VALUES
(1, 'Cluckoo', 'This is the \"Cluckoo\" that came from the clock.The logo shows a customer smiling when they arrive with their order and wearing the watches everywhere. \"We make time for you\" symbolizes then spending your time with Watches.', 'http://localhost:8000/', 'Cluckoo', 'Cluckoo', 'This is the \"Cluckoo\" that came from the clock.The logo shows a customer smiling when they arrive with their order and wearing the watches everywhere. \"We make time for you\" symbolizes then spending your time with Watches.', '1176 Balaigang Street, Zone 4 San Nicolas Iriga City, Camarines Sur Philippines', '09633653901', 'Phone', 'cluckooecom@zeroonetech.com', 'Phone', 'zeroonetech', 'zeroonetech', 'zeroonetech', 'zeroonetech', '2023-05-04 08:39:31', '2023-05-18 05:46:34');

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

CREATE TABLE `sliders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` mediumtext DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0 COMMENT '1=hidden,0=visible',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sliders`
--

INSERT INTO `sliders` (`id`, `title`, `description`, `image`, `status`, `created_at`, `updated_at`) VALUES
(4, '<span>\"Timeless Elegance: Discover Exquisite Watches Online\"</span>', 'Explore our wide selection of luxury timepieces, carefully curated to offer the perfect blend of sophistication and style. From classic designs to modern masterpieces, our online store showcases the finest collection of watches, ensuring you find the perfect companion for every occasion.', 'uploads/slider/1679922683.jpg', 0, '2023-03-27 05:11:23', '2023-05-18 08:07:21'),
(5, '<span>\"Unleash Your Style: Shop Trendsetting Watches Online\"</span>', 'Embrace your individuality with our diverse range of fashion-forward watches available online. From sleek minimalist designs to bold statement pieces, our collection caters to every taste and personality. Browse through our virtual catalog and find the timepiece that reflects your unique sense of style.', 'uploads/slider/1679922894.jpg', 0, '2023-03-27 05:14:54', '2023-05-18 08:07:59'),
(6, '<span>\"Precision and Performance: Buy High-Quality Watches Online\"</span>', 'Experience precision craftsmanship and exceptional performance with our premium selection of watches. Whether you\'re an adventurer seeking durability, a sports enthusiast looking for advanced features, or a connoisseur appreciating intricate movements, our online store offers a range of top-tier watches to satisfy your discerning needs.', 'uploads/slider/1679922981.jpg', 0, '2023-03-27 05:16:21', '2023-05-18 08:09:34');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `role_as` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0=user,1=admin'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `role_as`) VALUES
(1, 'Admin', 'admin@gmail.com', NULL, '$2y$10$5yH2FzHj9P1/Rl/P2c2Y.uUrJHRGE/sshLxTfhk8I1V2zos9PZlDy', 'jamFfn4jioTTOY2SrjbTEDHFRVL539P0ZntpcrpzCgM6GmaCezj2CLuQJReQ', '2023-03-25 15:22:19', '2023-03-25 15:22:19', 1),
(14, 'Mark Glen', 'markgmiguel@outlook.com', NULL, '$2y$10$4ltgNzrHsD37vOZCaqb5L.IjZxBvb.QLYOc4tzZD0bapXdy8JgLqe', NULL, '2023-05-18 08:18:52', '2023-05-18 08:18:52', 0);

-- --------------------------------------------------------

--
-- Table structure for table `user_details`
--

CREATE TABLE `user_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `phone` varchar(255) NOT NULL,
  `pin_code` varchar(255) NOT NULL,
  `address` varchar(500) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_details`
--

INSERT INTO `user_details` (`id`, `user_id`, `phone`, `pin_code`, `address`, `created_at`, `updated_at`) VALUES
(2, 14, '09633653901', '4431', 'San Nicolas, Iriga City', '2023-05-18 08:22:46', '2023-05-18 08:22:46');

-- --------------------------------------------------------

--
-- Table structure for table `wishlists`
--

CREATE TABLE `wishlists` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `colors`
--
ALTER TABLE `colors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_category_id_foreign` (`category_id`);

--
-- Indexes for table `product_colors`
--
ALTER TABLE `product_colors`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_colors_product_id_foreign` (`product_id`),
  ADD KEY `product_colors_color_id_foreign` (`color_id`);

--
-- Indexes for table `product_images`
--
ALTER TABLE `product_images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_images_product_id_foreign` (`product_id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `user_details`
--
ALTER TABLE `user_details`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_details_user_id_unique` (`user_id`);

--
-- Indexes for table `wishlists`
--
ALTER TABLE `wishlists`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `carts`
--
ALTER TABLE `carts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `colors`
--
ALTER TABLE `colors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `product_colors`
--
ALTER TABLE `product_colors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `product_images`
--
ALTER TABLE `product_images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `user_details`
--
ALTER TABLE `user_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `wishlists`
--
ALTER TABLE `wishlists`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `product_colors`
--
ALTER TABLE `product_colors`
  ADD CONSTRAINT `product_colors_color_id_foreign` FOREIGN KEY (`color_id`) REFERENCES `colors` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `product_colors_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `product_images`
--
ALTER TABLE `product_images`
  ADD CONSTRAINT `product_images_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `user_details`
--
ALTER TABLE `user_details`
  ADD CONSTRAINT `user_details_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
