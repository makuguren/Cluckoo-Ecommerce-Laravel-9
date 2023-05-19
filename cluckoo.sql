-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 19, 2023 at 07:13 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.0.25

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
(1, 'Longines', 'longines', 0, '2023-05-18 16:47:56', '2023-05-18 16:47:56', 1),
(2, 'Ball Watch', 'ball-watch', 0, '2023-05-18 17:38:37', '2023-05-18 17:38:37', 2),
(3, 'Blancpain', 'blancpain', 0, '2023-05-18 17:43:43', '2023-05-18 17:43:43', 2),
(4, 'Glashutte', 'glashutte', 0, '2023-05-18 17:55:55', '2023-05-18 17:55:55', 2),
(5, 'Bulgari', 'bulgari', 0, '2023-05-18 18:19:25', '2023-05-18 18:19:25', 1),
(6, 'Cartier', 'cartier', 0, '2023-05-18 18:36:51', '2023-05-18 18:36:51', 1),
(7, 'Chanel', 'chanel', 0, '2023-05-18 19:05:41', '2023-05-18 19:05:41', 3),
(8, 'Baume', 'baume', 0, '2023-05-18 19:24:10', '2023-05-18 19:24:10', 1),
(9, 'Iwatch', 'iwatch', 0, '2023-05-18 20:36:07', '2023-05-18 20:36:07', 4);

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
(1, 'Quartz', 'quartz-watch', 'Quartz watches are known for their accuracy, as the quartz crystal\'s frequency remains constant over time. Unlike mechanical watches that rely on intricate gears and springs, quartz watches require minimal maintenance and are less susceptible to external factors like temperature changes or movement.', 'uploads/category/1684456831.jpg', 'Timeless Elegance: Discover the Finest Quartz Watches for Unmatched Precision', 'quartz watch, precision timepieces, quartz movement, reliable timekeeping, stylish wristwatches', 'Explore our exquisite collection of quartz watches, featuring cutting-edge quartz movements for unparalleled accuracy and reliability. Embrace the perfect blend of timeless elegance and modern technology with our stylish wristwatches, designed to keep you on schedule in style. Discover the art of precise timekeeping and elevate your look with our meticulously crafted quartz watches today.', 0, '2023-05-18 16:40:31', '2023-05-18 16:40:31'),
(2, 'Automatic', 'automatic-watch', 'Automatic watches often have a power reserve indicator, which shows the amount of stored energy in the mainspring. This indicator helps the wearer gauge how long the watch can run without additional motion or winding. If an automatic watch is not worn for an extended period, it may stop running as the mainspring\'s energy depletes.', 'uploads/category/1684457132.jpg', 'Craftsmanship in Motion: Discover the Captivating World of Automatic Watches', 'automatic watch, self-winding timepieces, mechanical movement, horological excellence, luxury wristwatches', 'Immerse yourself in the captivating realm of automatic watches, where craftsmanship and precision intertwine. Experience the artistry of self-winding timepieces, powered by intricate mechanical movements that reflect horological excellence. Indulge in the luxury of our meticulously crafted automatic wristwatches, designed to make a statement while keeping impeccable time. Elevate your style and embrace the elegance of automatic watches that effortlessly blend tradition with modern sophistication.', 0, '2023-05-18 16:45:32', '2023-05-18 16:45:32'),
(3, 'Dress', 'dress', 'A dress watch is a timepiece specifically designed to complement formal and dressy attire. It typically features an elegant and understated design that exudes sophistication and refinement.', 'uploads/category/1684465507.jpg', 'Timeless Sophistication: Exquisite Dress Watches for Men and Women', 'Dress Watches, Timepieces, Formal Watches, Elegant Watches, Luxury Timekeeping', 'Elevate your style with our collection of exquisite dress watches. Designed to complement formal attire, these timepieces exude timeless sophistication. With their elegant designs, precise movements, and luxurious materials, our dress watches are the perfect accessory for special occasions or everyday elegance. Choose from a range of options for both men and women, and let our dress watches add a touch of refinement to your ensemble.', 0, '2023-05-18 19:05:07', '2023-05-18 19:05:07'),
(4, 'Smart Watch', 'smart-watch', 'Smart Watch', 'uploads/category/1684470849.jpg', 'Smart Watch', 'Smart Watch', 'Smart Watch', 0, '2023-05-18 20:34:09', '2023-05-18 20:34:09');

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
(1, 'Black', 'black', 0, '2023-05-18 20:38:16', '2023-05-18 20:38:16');

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
(1, 14, 'cluckoo-58r4rt6hWb', 'Mark Glen', 'markgmiguel@outlook.com', '09633653901', '4431', 'San Nicolas', 'Completed', 'Cash on Delivery', NULL, '2023-05-18 20:51:02', '2023-05-18 20:57:49'),
(2, 14, 'cluckoo-5KO4aWthQw', 'Mark Glen', 'markgmiguelyt@gmail.com', '09633653901', '4431', 'San Nicolas', 'Out for Delivery', 'Paid by Paypal', '82Y96239F6187793B', '2023-05-18 20:53:32', '2023-05-18 20:56:35');

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
(1, 1, 32, NULL, 1, 20000, '2023-05-18 20:51:02', '2023-05-18 20:51:02'),
(2, 2, 33, NULL, 2, 20000, '2023-05-18 20:53:32', '2023-05-18 20:53:32');

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
(1, 1, 'Longines PrimaLuna Quartz 26.5mm Ladies Watch', 'longines-primaluna-quartz-26-5mm-ladies-watch', 'Longines', 'The Longines PrimaLuna Quartz 26.5mm Ladies Watch is a testament to Longines\' legacy of precision and beauty, delivering a timepiece that embodies both timeless style and reliable performance.', 'The Longines PrimaLuna Quartz 26.5mm Ladies Watch is an exquisite timepiece that embodies timeless beauty and elegance. This watch showcases a delicate 26.5mm stainless steel case, perfectly designed to grace the wrist of a sophisticated woman. The dial features a captivating mother-of-pearl finish, adorned with diamond hour markers, adding a touch of luxury and refinement.', 5000, 7000, 10, 0, 0, 0, 'Elegance Personified: Longines PrimaLuna Quartz 26.5mm Ladies Watch', 'Longines PrimaLuna, ladies watch, quartz movement, 26.5mm case, elegance, precision timekeeping', 'Discover the epitome of elegance with the Longines PrimaLuna Quartz 26.5mm Ladies Watch. Featuring a quartz movement and a sleek 26.5mm case, this timepiece exudes sophistication and precision. Embrace timeless beauty and impeccable craftsmanship with this exquisite ladies watch from Longines. Elevate your style and enjoy the allure of this timekeeping masterpiece.', '2023-05-18 16:59:00', '2023-05-18 16:59:00'),
(2, 1, 'Longines PrimaLuna Moonphase 30.5mm Ladies Watch', 'longines-primaluna-moonphase-30-5mm-ladies-watch', 'Longines', 'The Longines PrimaLuna Moonphase is an elegant and sophisticated ladies\' watch with a diameter of 30.5mm.', 'The Longines PrimaLuna Moonphase is an elegant and sophisticated ladies\' watch with a diameter of 30.5mm. It showcases a timeless design that combines classic aesthetics with modern features. The watch features a beautiful moon phase complication, which adds a touch of romance and celestial charm to its appearance. The dial is crafted with meticulous attention to detail, featuring a shimmering mother-of-pearl background and diamond hour markers that enhance its luxurious appeal. The stainless steel case and bracelet provide durability and a sleek look, while the automatic movement ensures accurate timekeeping. The Longines PrimaLuna Moonphase 30.5mm ladies\' watch is a stunning accessory that combines style, craftsmanship, and functionality to elevate any woman\'s wrist.', 7000, 9000, 15, 0, 0, 0, 'Timeless Grace: Longines PrimaLuna Moonphase 30.5mm Ladies Watch', 'Longines PrimaLuna, Moonphase Watch, Ladies Watch, 30.5mm, Timepiece, Luxury Timekeeping', 'Discover the epitome of elegance with the Longines PrimaLuna Moonphase 30.5mm Ladies Watch. Crafted with timeless grace, this exquisite timepiece showcases a mesmerizing moonphase display. Indulge in luxury and precision with Longines\' renowned craftsmanship and style. Elevate your wrist with this enchanting companion, perfect for sophisticated women who appreciate refined beauty and impeccable timekeeping.', '2023-05-18 17:04:09', '2023-05-18 17:04:09'),
(3, 1, 'Longines La Grande Classique Quartz 38mm Midsize Watch', 'longines-la-grande-classique-quartz-38mm-midsize-watch', 'Longines', 'The Longines La Grande Classique Quartz 38mm Midsize Watch is a sophisticated timepiece that combines classic elegance with modern precision. With a diameter of', 'The Longines La Grande Classique Quartz 38mm Midsize Watch is a timepiece that effortlessly combines classic elegance with modern sophistication. With its timeless design and precise quartz movement, it is an ideal choice for those who appreciate understated luxury.', 4500, 6500, 20, 0, 0, 0, 'Timeless Sophistication: Longines La Grande Classique Quartz 38mm Midsize Watch', 'Longines La Grande Classique, Quartz Watch, Midsize Watch, 38mm, Timepiece, Luxury Timekeeping', 'Embrace timeless sophistication with the Longines La Grande Classique Quartz', '2023-05-18 17:08:07', '2023-05-18 17:08:07'),
(4, 1, 'Longines La Grande Classique Quartz 36mm Midsize Watch', 'longines-la-grande-classique-quartz-36mm-midsize-watch', 'Longines', 'The Longines La Grande Classique Quartz 36mm Midsize Watch is a refined and timeless timepiece that exudes understated elegance.', 'The Longines La Grande Classique Quartz 36mm Midsize Watch is a stunning timepiece that epitomizes timeless elegance and exquisite craftsmanship. Designed with a blend of classic and contemporary elements, it is the perfect accessory for those who appreciate refined luxury.\r\n\r\nThe watch features a 36mm round case, meticulously crafted from high-quality stainless steel. Its sleek and compact size ensures a comfortable fit on the wrist, making it suitable for both men and women. The case showcases a perfect balance between delicacy and durability, making it a versatile choice for any occasion.', 5000, 7000, 15, 0, 0, 0, 'Elegant Timelessness: Longines La Grande Classique Quartz 36mm Midsize Watch', 'Longines La Grande Classique, Quartz Watch, Midsize Watch, 36mm, Timepiece, Luxury Timekeeping', 'Embrace the essence of elegance with the Longines La Grande Classique Quartz 36mm Midsize Watch. This exquisite timepiece encapsulates timeless beauty and refined craftsmanship. With its sleek design and precise quartz movement, this watch is the perfect companion for those who appreciate classic style and impeccable timekeeping. Elevate your wrist with this symbol of enduring sophistication and grace.', '2023-05-18 17:11:29', '2023-05-18 17:11:29'),
(5, 1, 'Longines La Grande Classique Quartz 29mm Ladies Watch', 'longines-la-grande-classique-quartz-29mm-ladies-watch', 'Longines', 'The Longines La Grande Classique Quartz 29mm Ladies Watch is a delicate and graceful timepiece designed specifically for women. With its smaller 29mm diameter, it offers a dainty and feminine aesthetic that beautifully adorns the wrist. The watch features a clean and minimalist dial, exuding timeless elegance. Its slim profile and smooth lines create a sense of refinement and sophistication. The quartz movement ensures accurate timekeeping, while the stainless steel case and bracelet provide durability and a touch of luxury. The Longines La Grande Classique Quartz 29mm Ladies Watch is a stunning accessory that effortlessly combines classic design with modern functionality, making it a perfect companion for any occasion.', 'The Longines La Grande Classique Quartz 29mm Ladies Watch is a truly exquisite timepiece designed specifically for women who appreciate elegance, sophistication, and delicate beauty. It embodies the perfect combination of classic design elements and modern refinement, making it an ideal accessory for any occasion.\r\n\r\nThe watch features a petite 29mm round case, expertly crafted from high-quality stainless steel. Its smaller size is tailored to fit a woman\'s wrist comfortably and gracefully, enhancing the femininity of the wearer. The case exhibits a sleek and streamlined profile, exuding an aura of timeless charm.', 7000, 9000, 7, 0, 0, 0, 'Timeless Femininity: Longines La Grande Classique Quartz 29mm Ladies Watch', 'Longines La Grande Classique, Quartz Watch, Ladies Watch, 29mm, Timepiece, Luxury Timekeeping', 'Experience timeless femininity with the Longines La Grande Classique Quartz 29mm Ladies Watch. This exquisite timepiece combines elegance and sophistication, designed to grace the wrist of discerning women. With its precise quartz movement and delicate proportions, this watch is a symbol of refined beauty and impeccable timekeeping. Indulge in luxury and embrace your femininity with this captivating accessory that transcends trends and stands the test of time.', '2023-05-18 17:14:44', '2023-05-18 17:14:44'),
(6, 1, 'Longines La Grande Classique Quartz 24mm', 'longines-la-grande-classique-quartz-24mm-watch', 'Longines', 'The Longines La Grande Classique Quartz 24mm Watch is an exquisite timepiece designed specifically for those who appreciate delicate and refined aesthetics. With its petite 24mm diameter, it offers a graceful and feminine presence on the wrist. The watch features a clean and minimalistic dial, emphasizing its timeless elegance. Its slim profile and smooth lines create a sense of sophistication and understated luxury. Powered by a quartz movement, it ensures precise and reliable timekeeping. The stainless steel case and bracelet enhance durability while adding a touch of elegance. The Longines La Grande Classique Quartz 24mm Watch is a captivating accessory that exudes classic charm and is perfect for those seeking a smaller, yet stunning timepiece.', 'The Longines La Grande Classique Quartz 24mm Watch is an exquisite timepiece designed specifically for women who value elegance, sophistication, and delicate beauty. With its petite size and graceful design, it is the epitome of timeless femininity.\r\n\r\nThe watch features a dainty 24mm round case meticulously crafted from high-quality stainless steel. Its smaller size is perfectly suited for a woman\'s wrist, accentuating its delicate nature. The case showcases a sleek and slim profile, exuding an air of timeless charm and refinement.', 4000, 6000, 24, 0, 0, 0, 'Sublime Elegance: Longines La Grande Classique Quartz 24mm Watch', 'Longines La Grande Classique, Quartz Watch, 24mm, Timepiece, Luxury Timekeeping', 'Discover the epitome of sublime elegance with the Longines La Grande Classique Quartz 24mm Watch. This exquisite timepiece exudes timeless beauty and sophistication. With its delicate proportions and precise quartz movement, it is perfectly crafted to adorn the wrist of discerning individuals. Embrace the allure of luxury and elevate your style with this captivating accessory that effortlessly blends classic design and impeccable timekeeping.', '2023-05-18 17:18:03', '2023-05-18 17:18:03'),
(7, 1, 'Longines La Grande Classique Quartz 24mm Ladies Watch', 'longines-la-grande-classique-quartz-24mm-ladies-watch', 'Longines', 'The Longines La Grande Classique Quartz 24mm Ladies Watch is a captivating accessory that effortlessly combines classic design with modern functionality, making it a perfect choice for any woman seeking a timeless and elegant timepiece.', 'The Longines La Grande Classique Quartz 24mm Ladies Watch is a truly stunning timepiece designed specifically for women who appreciate elegance, sophistication, and timeless beauty. With its petite size and refined design, it is the perfect accessory to enhance any woman\'s style.\r\n\r\nThe watch features a delicate 24mm round case, skillfully crafted from high-quality stainless steel. Its small size is perfectly suited for a woman\'s wrist, showcasing a graceful and feminine appearance. The case exhibits a slim and streamlined profile, exuding an air of classic charm and sophistication.', 3000, 5000, 36, 0, 0, 0, 'Graceful Sophistication: Longines La Grande Classique Quartz 24mm Ladies Watch', 'Longines La Grande Classique, Quartz Watch, Ladies Watch, 24mm, Timepiece, Luxury Timekeeping', 'Embrace graceful sophistication with the Longines La Grande Classique Quartz 24mm Ladies Watch. This exquisite timepiece is a perfect blend of elegance and refinement, designed to complement the wrist of stylish women. With its precise quartz movement and delicate proportions, this watch is a symbol of timeless beauty and impeccable timekeeping. Indulge in luxury and elevate your ensemble with this captivating accessory that exudes grace and sophistication.', '2023-05-18 17:20:39', '2023-05-18 17:20:39'),
(8, 1, 'Longines La Grande Classique Quartz 24mm Ladies Watch L4.209.1.91.2', 'longines-la-grande-classique-quartz-24mm-ladies-watch-l4-209-1-91-2', 'Longines', 'The Longines La Grande Classique Quartz 24mm Ladies Watch L4.209.1.91.2 is a beautiful accessory that combines elegance, craftsmanship, and functionality, making it a perfect choice for any woman who appreciates timeless beauty and refined style.', 'The Longines La Grande Classique Quartz 24mm Ladies Watch L4.209.1.91.2 is a stunning timepiece that embodies elegance, femininity, and timeless beauty. With its petite size and refined design, it is the perfect accessory to complement a woman\'s style.\r\n\r\nThe watch features a delicate 24mm round case, expertly crafted from high-quality stainless steel. Its small size is designed to grace a woman\'s wrist with grace and sophistication. The case showcases a slim and streamlined profile, exuding a classic and timeless charm.', 6000, 8000, 25, 0, 0, 0, 'Elegant Timelessness: Longines La Grande Classique Quartz 24mm Ladies Watch L4.209.1.91.2', 'Longines La Grande Classique, Quartz Watch, Ladies Watch, 24mm, L4.209.1.91.2, Timepiece, Luxury Timekeeping', 'Embrace elegant timelessness with the Longines La Grande Classique Quartz 24mm Ladies Watch L4.209.1.91.2. This exquisite timepiece embodies the perfect blend of elegance and sophistication, designed specifically for discerning women. With its precise quartz movement and delicate proportions, this watch is a symbol of refined beauty and impeccable timekeeping. Indulge in luxury and elevate your style with this captivating accessory that exudes grace and timeless allure.', '2023-05-18 17:25:15', '2023-05-18 17:25:15'),
(9, 1, 'Longines HydroConquest Quartz 41mm Mens Watch', 'longines-hydroconquest-quartz-41mm-mens-watch', 'Longines', 'The Longines HydroConquest Quartz 41mm Men\'s Watch is a reliable and stylish companion that combines sporty design with practical features, making it perfect for those with an adventurous spirit.', 'The Longines HydroConquest Quartz 41mm Men\'s Watch is a robust and stylish timepiece designed for those who appreciate sporty elegance and high-performance functionality. Built with precision and durability in mind, it is a reliable companion for both water and land adventures.\r\n\r\nThe watch features a 41mm round case, expertly crafted from stainless steel, which offers a robust and masculine appearance. The combination of brushed and polished surfaces enhances its sporty yet refined aesthetic. The unidirectional rotating bezel with a diving scale adds a functional and adventurous touch to the design.', 3500, 5500, 21, 0, 0, 0, 'Dive into Adventure: Longines HydroConquest Quartz 41mm Men\'s Watch', 'Immerse yourself in the world of adventure with the Longines HydroConquest Quartz 41mm Men\'s Watch. Designed for the modern man seeking both style and functionality, this timepiece combines rugged durability with sleek design. With its precise quartz movement and water resistance, it is ready to accompany you on your underwater explorations. Dive into the realm of luxury and performance with this captivating accessory that embodies the spirit of adventure.', 'Longines HydroConquest, Quartz Watch, Men\'s Watch, 41mm, Timepiece, Luxury Timekeeping', '2023-05-18 17:29:25', '2023-05-18 17:29:25'),
(10, 1, 'Longines HydroConquest Quartz 41mm Blue Mens Watch', 'longines-hydroconquest-quartz-41mm-blue-mens-watch', 'Longines', 'The Longines HydroConquest Quartz 41mm Blue Men\'s Watch is an exceptional timepiece that combines a dynamic design with practical features, making it an excellent choice for those with an active lifestyle and a passion for style.', 'The Longines HydroConquest Quartz 41mm Blue Men\'s Watch is a remarkable timepiece that combines sporty functionality with sleek aesthetics. Designed for the modern man with an adventurous spirit, it is built to withstand the rigors of both water and land activities while making a stylish statement.\r\n\r\nThe watch features a robust 41mm round case, expertly crafted from stainless steel, offering durability and a masculine presence on the wrist. The combination of brushed and polished finishes adds depth and character to the design. The unidirectional rotating bezel with a diving scale in blue complements the overall sporty aesthetic and provides functionality for measuring elapsed time.', 6400, 8400, 12, 0, 0, 0, 'Unleash the Blue Depths: Longines HydroConquest Quartz 41mm Blue Men\'s Watch', 'Longines HydroConquest, Quartz Watch, Men\'s Watch, 41mm, Blue Dial, Timepiece, Luxury Timekeeping', 'Dive into the captivating blue depths with the Longines HydroConquest Quartz 41mm Blue Men\'s Watch. This timepiece combines sporty elegance with a stunning blue dial, making a bold statement on your wrist. With its precise quartz movement, robust construction, and water resistance, it is designed for the adventurous man who appreciates both style and functionality. Unleash your inner explorer and indulge in luxury with this exceptional timekeeping companion.', '2023-05-18 17:32:28', '2023-05-18 17:32:28'),
(11, 2, 'Ball Watch Fireman Victory 40mm NM2098C-L5J-BK', 'ball-watch-fireman-victory-40mm-nm2098c-l5j-bk', 'Ball Watch', 'The Ball Watch Fireman Victory 40mm NM2098C-L5J-BK is a robust and functional watch that captures the spirit of adventure, making it an ideal choice for those who appreciate reliability and performance in their timepieces.', 'The Ball Watch Fireman Victory 40mm NM2098C-L5J-BK is a striking timepiece that combines rugged durability with elegant design elements. Crafted with precision and attention to detail, it is a reliable companion for those who appreciate both style and functionality.\r\n\r\nThe watch features a 40mm round stainless steel case, exuding a robust and masculine presence on the wrist. The brushed and polished finishes on the case create a harmonious contrast, adding depth and character to the overall design. The screw-down crown contributes to the watch\'s impressive water resistance and ensures its reliability in various environments.', 3900, 5900, 20, 0, 0, 0, 'Unyielding Precision: Ball Watch Fireman Victory 40mm NM2098C-L5J-BK', 'Ball Watch Fireman Victory, 40mm, NM2098C-L5J-BK, Timepiece, Men\'s Watch, Luxury Timekeeping', 'Experience unyielding precision with the Ball Watch Fireman Victory 40mm NM2098C-L5J-BK. This exceptional timepiece exemplifies the perfect balance between ruggedness and elegance. With its robust construction, reliable automatic movement, and striking black dial, it is designed to withstand the challenges of any adventure. Elevate your wrist with this remarkable companion that embodies the spirit of victory and unwavering accuracy.', '2023-05-18 17:36:38', '2023-05-18 17:39:09'),
(14, 2, 'Blancpain Fifty Fathoms Bathyscaphe Automatic 38mm 5100-1127 Blue', 'blancpain-fifty-fathoms-bathyscaphe-automatic-38mm-5100-1127-blue', 'Blancpain', 'The Blancpain Fifty Fathoms Bathyscaphe Automatic 38mm 5100-1127 Blue is a remarkable watch that combines the heritage of diving watches with elegant aesthetics, making it a perfect choice for those who appreciate both style and functionality.', 'The Blancpain Fifty Fathoms Bathyscaphe Automatic 38mm 5100-1127 Blue is a remarkable timepiece that combines vintage-inspired aesthetics with modern features. Crafted with meticulous attention to detail, it is a true diver\'s watch that embodies the spirit of exploration and adventure.\r\n\r\nThe watch features a 38mm round case, expertly crafted from stainless steel, offering a balanced and versatile size that suits a variety of wrist sizes. The case showcases a combination of brushed and polished finishes, adding depth and sophistication to its design. The unidirectional rotating bezel, with its blue ceramic insert and luminous markers, allows for precise timing during diving expeditions.', 6500, 8500, 17, 0, 0, 0, 'Dive into Excellence: Blancpain Fifty Fathoms Bathyscaphe Automatic 38mm 5100-1127 Blue', 'Blancpain Fifty Fathoms Bathyscaphe, Automatic Watch, 38mm, 5100-1127, Blue Dial, Timepiece, Luxury Timekeeping', 'Immerse yourself in excellence with the Blancpain Fifty Fathoms Bathyscaphe Automatic 38mm 5100-1127 Blue. This remarkable timepiece combines exceptional craftsmanship with the spirit of exploration. With its automatic movement, durable construction, and captivating blue dial, it is designed to accompany you on underwater adventures while exuding style and elegance. Dive into the world of luxury and precision with this extraordinary companion that represents the pinnacle of fine watchmaking.', '2023-05-18 17:46:31', '2023-05-18 17:46:31'),
(15, 2, 'Blancpain Fifty Fathoms Bathyscaphe Automatic 38mm 5100-1127-naha', 'blancpain-fifty-fathoms-bathyscaphe-automatic-38mm-5100-1127-naha', 'Blancpain', 'The Blancpain Fifty Fathoms Bathyscaphe Automatic 38mm 5100-1127-NAHA is presented with a comfortable and stylish blue nylon strap, which adds a sporty touch to the overall design. The strap is complemented by a stainless steel tang buckle, ensuring a secure and comfortable fit.', 'The Blancpain Fifty Fathoms Bathyscaphe Automatic 38mm 5100-1127-NAHA is a stunning timepiece that combines vintage-inspired aesthetics with modern features. Crafted with meticulous attention to detail, it is a true diver\'s watch that embodies the spirit of exploration and adventure.\r\n\r\nThe watch features a 38mm round case, expertly crafted from stainless steel, offering a balanced and versatile size that suits a variety of wrist sizes. The case showcases a combination of brushed and polished finishes, adding depth and sophistication to its design. The unidirectional rotating bezel, with its blue ceramic insert and luminous markers, allows for precise timing during diving expeditions.', 7500, 9500, 4, 0, 0, 0, 'Exploring Nature\'s Wonders: Blancpain Fifty Fathoms Bathyscaphe Automatic 38mm 5100-1127-NAHA', 'Blancpain Fifty Fathoms Bathyscaphe, Automatic Watch, 38mm, 5100-1127-NAHA, Timepiece, Luxury Timekeeping', 'Embark on an extraordinary journey with the Blancpain Fifty Fathoms Bathyscaphe Automatic 38mm 5100-1127-NAHA. This exceptional timepiece combines rugged durability with timeless elegance, capturing the essence of exploration. With its automatic movement, robust construction, and unique NAHA special edition features, it is a tribute to nature\'s wonders. Dive into the world of luxury and adventure with this remarkable companion that embodies the spirit of discovery.', '2023-05-18 17:51:27', '2023-05-18 17:51:27'),
(16, 2, 'Blancpain Fifty Fathoms Bathyscaphe Automatic 38mm Blue Green', 'blancpain-fifty-fathoms-bathyscaphe-automatic-38mm-blue-green', 'Blancpain', 'The Blancpain Fifty Fathoms Bathyscaphe Automatic 38mm Blue Green is a remarkable timepiece that combines an attractive color scheme with the robustness of a professional diving watch, making it an ideal choice for those who seek both style and functionality in their timepieces.', 'The Blancpain Fifty Fathoms Bathyscaphe Automatic 38mm Blue Green is a striking timepiece that combines the allure of the ocean with a vibrant color palette. With its 38mm diameter, it offers a versatile size suitable for various wrist sizes. The watch features a captivating blue-green dial that evokes the depths of the sea, creating a unique and eye-catching aesthetic. The luminous hour markers and hands ensure optimal legibility in low-light conditions, while the unidirectional rotating bezel with a ceramic insert adds a touch of functionality and sporty elegance. Crafted from stainless steel, the case provides durability and a refined look. The blue-green sail-canvas strap further complements the overall design while offering comfort on the wrist. Powered by an automatic movement, the watch delivers accurate and reliable timekeeping. With a water resistance of 300 meters, the Bathyscaphe is built to meet the demands of underwater exploration.', 6700, 8700, 18, 0, 0, 0, 'Harmony of Blue and Green: Blancpain Fifty Fathoms Bathyscaphe Automatic 38mm Blue Green', 'Blancpain Fifty Fathoms Bathyscaphe, Automatic Watch, 38mm, Blue Green, Timepiece, Luxury Timekeeping', 'Experience the captivating harmony of blue and green with the Blancpain Fifty Fathoms Bathyscaphe Automatic 38mm in Blue Green. This extraordinary timepiece combines exceptional craftsmanship with a stunning color palette, creating a mesmerizing visual appeal. With its automatic movement, robust construction, and captivating blue-green dial, it exudes style and sophistication. Dive into the world of luxury and adventure with this remarkable companion that represents the perfect blend of elegance and versatility.', '2023-05-18 17:54:38', '2023-05-18 17:54:38'),
(17, 2, 'Glashutte Original Lady Serenade 39-22-01-11-04b', 'glashutte-original-lady-serenade-39-22-01-11-04b', 'Glashutte', 'The Glashütte Original Lady Serenade 39-22-01-11-04B is a sophisticated timepiece that combines elegance, craftsmanship, and functionality, making it a perfect choice for women seeking a luxurious and refined accessory.', 'The Glashütte Original Lady Serenade 39-22-01-11-04B is a sophisticated and elegant timepiece designed specifically for women who appreciate fine craftsmanship and timeless beauty. With its luxurious materials and attention to detail, it embodies the essence of refined luxury.\r\n\r\nThe watch features a round stainless steel case measuring 39mm in diameter, offering a substantial presence on the wrist without being overly large. The case is meticulously finished with a combination of polished and brushed surfaces, adding depth and sophistication to its design. The bezel is adorned with sparkling diamonds, adding a touch of glamour to the watch.', 7100, 8500, 14, 0, 0, 0, 'Timeless Elegance: Glashutte Original Lady Serenade 39-22-01-11-04b', 'Glashutte Original Lady Serenade, 39-22-01-11-04b, Timepiece, Ladies Watch, Luxury Timekeeping', 'Embrace timeless elegance with the Glashutte Original Lady Serenade 39-22-01-11-04b. This exquisite ladies\' timepiece showcases impeccable craftsmanship and refined design. With its captivating details, precise movement, and luxurious appeal, it is the perfect accessory for sophisticated women. Indulge in the world of luxury and elevate your style with this remarkable companion that exudes grace and sophistication.', '2023-05-18 18:00:24', '2023-05-18 18:00:24'),
(18, 2, 'Glashutte Original Lady Serenade 39-22-02-02', 'glashutte-original-lady-serenade-39-22-02-02', 'Glashutte', 'The Glashütte Original Lady Serenade 39-22-02-02 is a remarkable timepiece that combines elegance, craftsmanship, and functionality, making it an exquisite choice for women who desire a sophisticated and luxurious accessory.', 'The Glashütte Original Lady Serenade 39-22-02-02 is an exquisite and elegant timepiece designed specifically for women who appreciate luxury and timeless beauty. Crafted with exceptional attention to detail, it represents the epitome of refined craftsmanship and sophisticated aesthetics.\r\n\r\nThe watch features a round stainless steel case with a diameter of 39mm, offering a balanced and versatile size that suits a variety of wrist sizes. The case is meticulously finished with a combination of polished and brushed surfaces, enhancing its overall sophistication. The bezel is adorned with brilliant-cut diamonds, adding a touch of glamour and luxury.', 8300, 9700, 7, 0, 0, 0, 'Timeless Sophistication: Glashutte Original Lady Serenade 39-22-02-02', 'Glashutte Original Lady Serenade, 39-22-02-02, Timepiece, Ladies Watch, Luxury Timekeeping', 'Embrace timeless sophistication with the Glashutte Original Lady Serenade 39-22-02-02. This exquisite ladies\' timepiece combines impeccable craftsmanship with refined design. With its elegant details, precise movement, and luxurious allure, it is the perfect accessory for women who appreciate elegance and quality. Elevate your style and indulge in luxury with this remarkable companion that exudes grace and sophistication.', '2023-05-18 18:03:19', '2023-05-18 18:03:19'),
(19, 1, 'Glashutte Original Lady Serenade 39-22-04-01-44', 'glashutte-original-lady-serenade-39-22-04-01-44', 'Glashutte', 'The Glashütte Original Lady Serenade 39-22-04-01-44 is a remarkable timepiece that combines exquisite craftsmanship, refined design, and feminine elegance, making it a perfect choice for women who appreciate luxury and sophistication in their accessories.', 'The Glashütte Original Lady Serenade 39-22-04-01-44 is a stunning and elegant timepiece designed specifically for women who appreciate luxury and timeless beauty. With its exquisite craftsmanship and attention to detail, it represents the epitome of refined sophistication.\r\n\r\nThe watch features a round stainless steel case with a diameter of 39mm, offering a balanced and versatile size that suits a variety of wrist sizes. The case is meticulously finished with a combination of polished and brushed surfaces, enhancing its overall elegance. The bezel is adorned with brilliant-cut diamonds, adding a touch of glamour and luxury.', 8900, 10500, 3, 0, 0, 0, 'Elegant Excellence: Glashutte Original Lady Serenade 39-22-04-01-44', 'Glashutte Original Lady Serenade, 39-22-04-01-44, Timepiece, Ladies Watch, Luxury Timekeeping', 'Embrace elegant excellence with the Glashutte Original Lady Serenade 39-22-04-01-44. This exquisite ladies\' timepiece showcases impeccable craftsmanship and refined design. With its elegant details, precise movement, and luxurious appeal, it is the perfect accessory for sophisticated women who seek both style and substance. Elevate your wrist and indulge in luxury with this remarkable companion that exudes grace, sophistication, and timeless beauty.', '2023-05-18 18:06:41', '2023-05-18 18:06:41'),
(20, 2, 'Glashutte Original SeaQ Automatic 39.5mm 1-39-11-09-82-34', 'glashutte-original-lady-serenade-39-22-04-01-44', 'Glashutte', 'The Glashütte Original SeaQ Automatic 39.5mm 1-39-11-09-82-34 is a remarkable timepiece that combines ruggedness, functionality, and a hint of elegance, making it a perfect choice for those with an adventurous spirit and an appreciation for high-quality craftsmanship.', 'The Glashütte Original SeaQ Automatic 39.5mm 1-39-11-09-82-34 is a remarkable timepiece that combines vintage-inspired design elements with modern features. Crafted with meticulous attention to detail, it is a reliable and robust watch suitable for diving adventures while exuding a sophisticated aesthetic.\r\n\r\nThe watch features a 39.5mm stainless steel case, offering a balanced and versatile size that suits a variety of wrist sizes. The case is meticulously finished with a combination of polished and brushed surfaces, showcasing a harmonious and sporty appeal. The uni-directional rotating bezel with a ceramic insert and luminous markers adds functionality and a touch of elegance to the overall design.', 7700, 9500, 23, 0, 0, 0, 'Exploration in Style: Glashutte Original SeaQ Automatic 39.5mm 1-39-11-09-82-34', 'Glashutte Original SeaQ, Automatic Watch, 39.5mm, 1-39-11-09-82-34, Timepiece, Luxury Timekeeping', 'Embark on an exploration of style with the Glashutte Original SeaQ Automatic 39.5mm 1-39-11-09-82-34. This remarkable timepiece combines exceptional craftsmanship with a rugged and adventurous spirit. With its automatic movement, robust construction, and captivating design, it is designed to withstand the challenges of exploration while exuding style and sophistication. Dive into the world of luxury and adventure with this extraordinary companion that represents the perfect blend of performance and elegance.', '2023-05-18 18:11:17', '2023-05-18 18:11:17'),
(21, 2, 'Blancpain Villeret Ultra Slim Automatic 29.2mm 6104b-4654-99a-St-Valentine', 'blancpain-villeret-ultra-slim-automatic-29-2mm-6104b-4654-99a-st-valentine', 'Blancpain', 'This particular edition, St. Valentine, adds a touch of exclusivity and sentimentality to the timepiece. The Blancpain Villeret Ultra Slim Automatic 29.2mm 6104b-4654-99a-St-Valentine is a remarkable and romantic watch, making it a perfect choice for women who appreciate sophisticated design and a touch of romance in', 'The Blancpain Villeret Ultra Slim Automatic 29.2mm 6104B-4654-99A-St-Valentine is a luxurious and elegant timepiece designed to celebrate the timeless beauty of romance. With its refined aesthetics and slim profile, it captures the essence of sophistication and represents Blancpain\'s commitment to watchmaking excellence.\r\n\r\nThe watch features a 29.2mm round stainless steel case, exuding a delicate and feminine presence on the wrist. The case is meticulously finished with a combination of polished and brushed surfaces, enhancing its understated elegance. The bezel is adorned with brilliant-cut diamonds, adding a touch of luxury and sparkle to the watch.', 5300, 6500, 7, 0, 0, 0, 'Timeless Elegance: Blancpain Villeret Ultra Slim Automatic 29.2mm 6104b-4654-99a-St-Valentine', 'Blancpain Villeret, Ultra Slim, Automatic Watch, 29.2mm, 6104b-4654-99a-St-Valentine, Timepiece, Luxury Timekeeping', 'Embrace timeless elegance with the Blancpain Villeret Ultra Slim Automatic 29.2mm 6104b-4654-99a-St-Valentine. This exquisite timepiece from the Villeret collection showcases exceptional craftsmanship and refined design. With its slim profile, automatic movement, and special St. Valentine\'s edition features, it is a perfect symbol of love and sophistication. Elevate your style and indulge in luxury with this remarkable companion that exudes grace, beauty, and a touch of romance.', '2023-05-18 18:15:14', '2023-05-18 18:15:14'),
(22, 1, 'Bulgari Lucea Quartz 28mm Ladies Watch', 'bulgari-lucea-quartz-28mm-ladies-watch', 'Bulgari', 'The Bulgari Lucea Quartz 28mm Ladies Watch is a remarkable timepiece that seamlessly blends elegance, style, and craftsmanship, making it a perfect accessory for women who appreciate exquisite beauty and sophistication.', 'The Bulgari Lucea Quartz 28mm Ladies Watch is a stunning timepiece that combines elegance, craftsmanship, and luxurious design. Designed specifically for women, it exudes sophistication and style while offering reliable timekeeping.\r\n\r\nThe watch features a 28mm round stainless steel case, showcasing a balanced and feminine size on the wrist. The case is meticulously crafted, featuring a combination of polished and brushed finishes that enhance its overall allure. The bezel is adorned with brilliant-cut diamonds, adding a touch of glamour and luxury to the watch.', 3400, 5400, 26, 0, 0, 0, 'Radiant Sophistication: Bulgari Lucea Quartz 28mm Ladies Watch', 'Embrace radiant sophistication with the Bulgari Lucea Quartz 28mm Ladies Watch. This exquisite timepiece combines elegance and modernity, designed to adorn the wrist of discerning women. With its precise quartz movement and radiant details, this watch is a symbol of timeless beauty and impeccable timekeeping. Indulge in luxury and elevate your style with this captivating accessory that effortlessly blends classic design and contemporary flair. Let the luminous allure of the Bulgari Lucea enhance your every moment.', 'Bulgari Lucea, Quartz Watch, Ladies Watch, 28mm, Timepiece, Luxury Timekeeping', '2023-05-18 18:26:46', '2023-05-18 18:26:46'),
(23, 1, 'Bulgari Lucea Quartz 27mm Ladies Watch', 'bulgari-lucea-quartz-27mm-ladies-watch', 'Bulgari', 'The Bulgari Lucea Quartz 27mm Ladies Watch is a stunning timepiece that effortlessly combines elegance, style, and craftsmanship, making it an exquisite accessory for women who appreciate the finer things in life.', 'The Bulgari Lucea Quartz 27mm Ladies Watch is a sophisticated and elegant timepiece designed to capture the essence of femininity and luxury. With its exquisite craftsmanship and stylish design, it is a perfect accessory for women who appreciate refined aesthetics.\r\n\r\nThe watch features a 27mm round stainless steel case, offering a delicate and feminine size that is ideal for smaller wrists. The case is meticulously crafted, with a combination of polished and brushed finishes that enhance its overall elegance. The bezel is often adorned with brilliant-cut diamonds, adding a touch of sparkle and glamour.', 7300, 8800, 32, 0, 0, 0, 'Timeless Glamour: Bulgari Lucea Quartz 27mm Ladies Watch', 'Bulgari Lucea, Quartz Watch, Ladies Watch, 27mm, Timepiece, Luxury Timekeeping', 'Embrace timeless glamour with the Bulgari Lucea Quartz 27mm Ladies Watch. This exquisite timepiece combines elegance and sophistication, designed to grace the wrist of stylish women. With its precise quartz movement and captivating details, this watch is a symbol of refined beauty and impeccable timekeeping. Indulge in luxury and elevate your style with this captivating accessory that effortlessly blends classic design and contemporary allure. Let the Bulgari Lucea adorn your wrist with grace and sophistication.', '2023-05-18 18:31:16', '2023-05-18 18:31:16'),
(24, 1, 'Bulgari BVLGARI BVLGARI Quartz 33mm', 'bulgari-bvlgari-bvlgari-quartz-33mm-watch', 'Bulgari', 'The Bulgari BVLGARI BVLGARI Quartz 33mm is a sophisticated timepiece that combines elegance, style, and Bulgari\'s rich heritage, making it a perfect choice for those who appreciate a classic and distinctive watch design.', 'The Bulgari BVLGARI BVLGARI Quartz 33mm watch is a stylish and iconic timepiece that embodies Bulgari\'s signature design elements and luxury craftsmanship. With its distinctive double logo engraving and elegant details, it is a true representation of the brand\'s heritage and style.\r\n\r\nThe watch features a 33mm round stainless steel case, offering a balanced size that suits both men and women. The case is meticulously crafted, with a polished finish that exudes sophistication and refinement. The bezel is engraved with the iconic double Bulgari logo, showcasing a bold and distinctive design.', 3600, 4500, 23, 0, 0, 0, 'Iconic Elegance: Bulgari BVLGARI BVLGARI Quartz 33mm', 'Bulgari BVLGARI BVLGARI, Quartz Watch, 33mm, Timepiece, Luxury Timekeeping', 'Embrace iconic elegance with the Bulgari BVLGARI BVLGARI Quartz 33mm. This exquisite timepiece pays homage to Bulgari\'s rich heritage and iconic design. With its precise quartz movement and distinctive BVLGARI BVLGARI engraving, this watch is a symbol of timeless beauty and impeccable craftsmanship. Indulge in luxury and elevate your style with this captivating accessory that effortlessly blends classic design and contemporary allure. Let the Bulgari BVLGARI BVLGARI Quartz adorn your wrist with elegance and sophistication.', '2023-05-18 18:35:18', '2023-05-18 18:35:18'),
(25, 1, 'Cartier Tank Must Quartz Large Midsize Watch', 'cartier-tank-must-quartz-large-midsize-watch', 'Cartier', 'The Cartier Tank Must Quartz Large Midsize Watch is an emblematic timepiece that combines sophistication, heritage, and luxury, making it a perfect choice for those who appreciate the timeless elegance of Cartier.', 'The Cartier Tank Must Quartz Large Midsize Watch is a timeless and iconic timepiece that pays homage to the classic Tank design while offering a contemporary touch. With its clean lines, elegant proportions, and precise quartz movement, it is a versatile watch suitable for both men and women.\r\n\r\nThe watch features a rectangular stainless steel case with dimensions that strike a balance between large and midsize, offering a confident presence on the wrist without being overwhelming. The case is meticulously finished with a combination of polished and brushed surfaces, highlighting its refined aesthetics. The octagonal crown, adorned with a synthetic spinel cabochon, adds a touch of sophistication and authenticity.', 7800, 10700, 18, 0, 0, 0, 'Iconic Timeless Design: Cartier Tank Must Quartz Large Midsize Watch', 'Cartier Tank Must, Quartz Watch, Large Midsize, Timepiece, Luxury Timekeeping', 'Embrace the iconic timeless design of the Cartier Tank Must Quartz Large Midsize Watch. This exquisite timepiece showcases Cartier\'s signature Tank silhouette and impeccable craftsmanship. With its precise quartz movement and versatile size, this watch is a symbol of elegance and sophistication. Indulge in luxury and elevate your style with this captivating accessory that effortlessly blends classic design and contemporary allure. Let the Cartier Tank Must Quartz enhance your every moment with its timeless beauty.', '2023-05-18 18:39:40', '2023-05-18 18:39:40'),
(26, 1, 'Cartier Tank Must Quartz Large Midsize Watch wsta0055 Blue', 'cartier-tank-must-quartz-large-midsize-watch-wsta0055-blue', 'Cartier', 'The Cartier Tank Must Quartz Large Midsize Watch WSTA0055 in blue is a statement piece that blends classic elegance with contemporary style, making it a perfect choice for individuals who appreciate Cartier\'s iconic design and desire a touch of modern sophistication.', 'The Cartier Tank Must Quartz Large Midsize Watch WSTA0055 Blue is a stunning timepiece that combines the timeless elegance of the Tank design with a contemporary touch of sophistication. With its distinctive blue dial and refined aesthetics, it is a versatile watch suitable for both men and women.\r\n\r\nThe watch features a rectangular stainless steel case with dimensions that strike a balance between large and midsize, offering a confident presence on the wrist without being overwhelming. The case is meticulously finished with a combination of polished and brushed surfaces, enhancing its overall elegance. The octagonal crown, adorned with a synthetic spinel cabochon, adds a touch of luxury and authenticity.', 8900, 11200, 17, 0, 0, 0, 'Elegance in Blue: Cartier Tank Must Quartz Large Midsize Watch WSTA0055', 'Cartier Tank Must, Quartz Watch, Large Midsize, WSTA0055, Blue Dial, Timepiece, Luxury Timekeeping', 'Indulge in the elegance of blue with the Cartier Tank Must Quartz Large Midsize Watch WSTA0055. This exquisite timepiece features Cartier\'s iconic Tank design and impeccable craftsmanship. With its precise quartz movement and captivating blue dial, this watch is a symbol of refined style and sophistication. Elevate your wrist and embrace luxury with this captivating accessory that effortlessly combines classic design and contemporary allure. Let the Cartier Tank Must Quartz in blue become a statement of your elegance and grace.', '2023-05-18 18:45:52', '2023-05-18 18:45:52'),
(27, 3, 'Chanel J12-XS Quartz 19mm H5237', 'chanel-j12-xs-quartz-19mm-h5237', 'Chanel', 'The Chanel J12-XS Quartz 19mm H5237 is a refined and elegant dress watch that effortlessly combines style, craftsmanship, and luxury, making it an exquisite accessory for special occasions and formal events.', 'The Chanel J12-XS Quartz 19mm H5237 is a sleek and sophisticated timepiece that exudes elegance and refinement. With its small and delicate size, it is designed for women who appreciate understated luxury and a touch of glamour.\r\n\r\nThe watch features a round ceramic case with a diameter of 19mm, showcasing Chanel\'s iconic design aesthetics. The ceramic material is known for its durability, scratch resistance, and lustrous appearance. The case is meticulously finished, often with a high-gloss polish, reflecting light and adding to the watch\'s overall allure.', 10300, 12300, 42, 0, 0, 0, 'Chanel J12-XS Quartz 19mm H5237: Exquisite Timeless Elegance', 'Chanel J12-XS, Quartz Watch, 19mm, H5237, Timepiece, Luxury Timekeeping', 'Discover the epitome of timeless elegance with the Chanel J12-XS Quartz 19mm H5237. This exquisite timepiece from Chanel showcases impeccable craftsmanship and refined design. With its precise quartz movement and delicate 19mm size, it is the perfect accessory for sophisticated women who appreciate elegance and quality. Elevate your style and indulge in luxury with this remarkable companion that exudes grace and sophistication in every detail.', '2023-05-18 19:08:45', '2023-05-18 19:08:45'),
(28, 3, 'Chanel J12 Quartz 33mm', 'chanel-j12-quartz-33mm-watch', 'Chanel', 'The Chanel J12 Quartz 33mm is a sleek and modern timepiece that effortlessly combines style, durability, and craftsmanship, making it a perfect choice for individuals who appreciate a sophisticated and reliable watch with a touch of luxury.', 'The Chanel J12 Quartz 33mm watch is a stunning timepiece that combines elegance, craftsmanship, and modern design. It is a versatile watch suitable for both men and women, known for its iconic style and luxurious appeal.\r\n\r\nThe watch features a round ceramic case with a diameter of 33mm, showcasing Chanel\'s commitment to using high-quality materials. Ceramic is prized for its durability, scratch resistance, and sleek appearance. The case is meticulously finished, often with a high-gloss polish, reflecting light and adding to the watch\'s overall sophistication.', 15000, 16500, 31, 0, 1, 0, 'Chanel J12 Quartz 33mm: Timeless Sophistication and Modern Style', 'Chanel J12, Quartz Watch, 33mm, Timepiece, Luxury Timekeeping', 'Discover the perfect blend of timeless sophistication and modern style with the Chanel J12 Quartz 33mm. This exquisite timepiece from Chanel showcases impeccable craftsmanship and a sleek design. With its precise quartz movement and versatile 33mm size, it is the ideal accessory for those who appreciate elegance and contemporary aesthetics. Elevate your style and indulge in luxury with this remarkable companion that effortlessly combines classic elegance with a touch of modernity. Let the Chanel J12 Quartz 33mm adorn your wrist with timeless beauty and sophistication.', '2023-05-18 19:15:16', '2023-05-18 19:55:40'),
(29, 3, 'Chanel J12 Quartz 33mm Phantom Watch', 'chanel-j12-quartz-33mm-phantom-watch', 'Chanel', 'The Chanel J12 Quartz 33mm Phantom Watch is a statement piece that combines luxury, durability, and modern design, making it a perfect choice for individuals who appreciate a distinct and fashionable timepiece.', 'The Chanel J12 Quartz 33mm Phantom Watch is a striking and stylish timepiece that showcases Chanel\'s iconic design elements with a unique twist. With its all-black aesthetic and modern appeal, it exudes a sense of luxury and sophistication.\r\n\r\nThe watch features a round black ceramic case with a diameter of 33mm, displaying Chanel\'s commitment to using high-quality materials. Ceramic is known for its durability, scratch resistance, and sleek appearance. The case is meticulously finished, often with a matte or high-gloss black polish, creating a bold and captivating presence on the wrist.', 11200, 13200, 17, 0, 1, 0, 'Chanel J12 Quartz 33mm Phantom Watch: Captivating Elegance in Black', 'Chanel J12, Quartz Watch, 33mm, Phantom Watch, Timepiece, Luxury Timekeeping', 'Experience the captivating elegance of the Chanel J12 Quartz 33mm Phantom Watch. This exquisite timepiece from Chanel exudes a mysterious allure with its sleek black design. With its precise quartz movement and versatile 33mm size, it is the perfect accessory for those who appreciate sophistication with a hint of intrigue. Elevate your style and indulge in luxury with this remarkable companion that effortlessly combines timeless elegance with a bold statement. Let the Chanel J12 Quartz 33mm Phantom Watch be your ultimate expression of refined style and individuality.', '2023-05-18 19:19:29', '2023-05-18 19:55:16'),
(30, 3, 'Chanel J12-XS Quartz 19mm H5235', 'chanel-j12-xs-quartz-19mm-h5235', 'Chanel', 'The Chanel J12-XS Quartz 19mm H5235 is a captivating and elegant dress watch that effortlessly combines style, craftsmanship, and luxury, making it a perfect accessory for special occasions and formal events, and reflecting the timeless sophistication of the Chanel brand.', 'The Chanel J12-XS Quartz 19mm H5235 is a stylish and sophisticated timepiece designed for women who appreciate refined luxury and a touch of elegance. With its small size and attention to detail, it exudes understated glamour.\r\n\r\nThe watch features a round ceramic case with a diameter of 19mm, showcasing Chanel\'s iconic design aesthetic. The ceramic material is known for its durability, scratch resistance, and lustrous appearance. The case is meticulously finished, often with a high-gloss polish, reflecting light and adding to the watch\'s overall allure.', 13400, 15400, 21, 1, 0, 0, 'Chanel J12-XS Quartz 19mm H5235: Exquisite Miniature Beauty', 'Chanel J12-XS, Quartz Watch, 19mm, H5235, Timepiece, Luxury Timekeeping', 'Discover the exquisite miniature beauty of the Chanel J12-XS Quartz 19mm H5235. This stunning timepiece from Chanel captures attention with its impeccable craftsmanship and refined design. With its precise quartz movement and petite 19mm size, it is the perfect accessory for women who appreciate elegance in a compact form. Elevate your style and indulge in luxury with this remarkable companion that exudes grace and sophistication, making a statement of timeless allure on your wrist.', '2023-05-18 19:21:36', '2023-05-18 19:54:51');
INSERT INTO `products` (`id`, `category_id`, `name`, `slug`, `brand`, `small_description`, `description`, `original_price`, `selling_price`, `quantity`, `trending`, `featured`, `status`, `meta_title`, `meta_keyword`, `meta_description`, `created_at`, `updated_at`) VALUES
(31, 1, 'Baume _ Mercier Classima Quartz 31mm', 'baume-mercier-classima-quartz-31mm-watch', 'Baume', 'The Baume & Mercier Classima Quartz 31mm is a tasteful and timeless timepiece that effortlessly combines style, versatility, and reliability, making it a perfect choice for those who appreciate understated luxury and impeccable craftsmanship.', 'The Baume & Mercier Classima Quartz 31mm watch is a sophisticated and timeless timepiece that combines classic design elements with contemporary aesthetics. With its refined style and precise quartz movement, it is a versatile choice for individuals who appreciate elegance and reliability.\r\n\r\nThe watch features a round stainless steel case with a diameter of 31mm, offering a balanced size that suits both men and women. The case is meticulously crafted and often finished with a combination of polished and brushed surfaces, enhancing its overall appeal. The smooth bezel adds a touch of elegance and simplicity to the design.', 14500, 16300, 17, 1, 0, 0, 'Baume & Mercier Classima Quartz 31mm: Timeless Elegance and Versatility', 'Baume & Mercier Classima, Quartz Watch, 31mm, Timepiece, Luxury Timekeeping', 'Discover the timeless elegance and versatility of the Baume & Mercier Classima Quartz 31mm. This exquisite timepiece from Baume & Mercier showcases impeccable craftsmanship and a refined design. With its precise quartz movement and versatile 31mm size, it is the perfect accessory for both formal occasions and everyday elegance. Elevate your style and indulge in luxury with this remarkable companion that effortlessly blends classic design with modern versatility. Let the Baume & Mercier Classima Quartz 31mm adorn your wrist with sophistication and grace.', '2023-05-18 19:26:14', '2023-05-18 19:54:28'),
(32, 4, 'Iwatch', 'iwatch', 'Iwatch', 'Iwatch', 'Iwatch', 25000, 20000, 19, 1, 0, 0, 'Iwatch', 'Iwatch', 'Iwatch', '2023-05-18 20:37:25', '2023-05-18 20:51:02'),
(33, 4, 'Iwatch 40', 'iwatch-40', 'Iwatch', 'Iwatch 40', 'Iwatch 40', 23000, 20000, 11, 1, 1, 0, 'Iwatch 40', 'Iwatch 40', 'Iwatch 40', '2023-05-18 20:39:53', '2023-05-18 20:53:32');

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

--
-- Dumping data for table `product_colors`
--

INSERT INTO `product_colors` (`id`, `product_id`, `color_id`, `quantity`, `created_at`, `updated_at`) VALUES
(1, 33, 1, 20, '2023-05-18 20:39:53', '2023-05-18 20:39:53');

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
(1, 1, 'uploads/products/16844579401.jpg', '2023-05-18 16:59:00', '2023-05-18 16:59:00'),
(2, 2, 'uploads/products/16844582491.jpg', '2023-05-18 17:04:09', '2023-05-18 17:04:09'),
(3, 3, 'uploads/products/16844584871.jpg', '2023-05-18 17:08:07', '2023-05-18 17:08:07'),
(4, 4, 'uploads/products/16844586891.jpg', '2023-05-18 17:11:29', '2023-05-18 17:11:29'),
(5, 5, 'uploads/products/16844588841.jpg', '2023-05-18 17:14:44', '2023-05-18 17:14:44'),
(6, 6, 'uploads/products/16844590831.jpg', '2023-05-18 17:18:03', '2023-05-18 17:18:03'),
(7, 7, 'uploads/products/16844592391.jpg', '2023-05-18 17:20:39', '2023-05-18 17:20:39'),
(8, 8, 'uploads/products/16844595151.jpg', '2023-05-18 17:25:15', '2023-05-18 17:25:15'),
(9, 9, 'uploads/products/16844597651.jpg', '2023-05-18 17:29:25', '2023-05-18 17:29:25'),
(10, 10, 'uploads/products/16844599481.jpg', '2023-05-18 17:32:28', '2023-05-18 17:32:28'),
(11, 11, 'uploads/products/16844601981.jpg', '2023-05-18 17:36:38', '2023-05-18 17:36:38'),
(14, 14, 'uploads/products/16844607911.jpg', '2023-05-18 17:46:31', '2023-05-18 17:46:31'),
(15, 15, 'uploads/products/16844610871.jpg', '2023-05-18 17:51:27', '2023-05-18 17:51:27'),
(16, 16, 'uploads/products/16844612781.jpg', '2023-05-18 17:54:38', '2023-05-18 17:54:38'),
(17, 17, 'uploads/products/16844616241.jpg', '2023-05-18 18:00:24', '2023-05-18 18:00:24'),
(18, 18, 'uploads/products/16844617991.jpg', '2023-05-18 18:03:19', '2023-05-18 18:03:19'),
(19, 19, 'uploads/products/16844620011.jpg', '2023-05-18 18:06:41', '2023-05-18 18:06:41'),
(20, 20, 'uploads/products/16844622771.jpg', '2023-05-18 18:11:17', '2023-05-18 18:11:17'),
(21, 21, 'uploads/products/16844625141.jpg', '2023-05-18 18:15:14', '2023-05-18 18:15:14'),
(22, 22, 'uploads/products/16844632061.jpg', '2023-05-18 18:26:46', '2023-05-18 18:26:46'),
(23, 23, 'uploads/products/16844634761.jpg', '2023-05-18 18:31:16', '2023-05-18 18:31:16'),
(24, 24, 'uploads/products/16844637181.jpg', '2023-05-18 18:35:18', '2023-05-18 18:35:18'),
(25, 25, 'uploads/products/16844639801.jpg', '2023-05-18 18:39:40', '2023-05-18 18:39:40'),
(26, 26, 'uploads/products/16844643521.jpg', '2023-05-18 18:45:52', '2023-05-18 18:45:52'),
(27, 27, 'uploads/products/16844657251.jpg', '2023-05-18 19:08:45', '2023-05-18 19:08:45'),
(28, 28, 'uploads/products/16844661161.jpg', '2023-05-18 19:15:16', '2023-05-18 19:15:16'),
(29, 29, 'uploads/products/16844663691.jpg', '2023-05-18 19:19:29', '2023-05-18 19:19:29'),
(30, 30, 'uploads/products/16844664961.jpg', '2023-05-18 19:21:36', '2023-05-18 19:21:36'),
(31, 31, 'uploads/products/16844667741.jpg', '2023-05-18 19:26:14', '2023-05-18 19:26:14'),
(32, 32, 'uploads/products/16844710451.jpg', '2023-05-18 20:37:25', '2023-05-18 20:37:25'),
(33, 33, 'uploads/products/16844711931.jpg', '2023-05-18 20:39:53', '2023-05-18 20:39:53');

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
(1, 'Cluckoo Edited', 'This is the \"Cluckoo\" that came from the clock.The logo shows a customer smiling when they arrive with their order and wearing the watches everywhere. \"We make time for you\" symbolizes then spending your time with Watches. Edited', 'http://localhost:8000/', 'Cluckoo', 'Cluckoo', 'This is the \"Cluckoo\" that came from the clock.The logo shows a customer smiling when they arrive with their order and wearing the watches everywhere. \"We make time for you\" symbolizes then spending your time with Watches.', '1176 Balaigang Street, Zone 4 San Nicolas Iriga City, Camarines Sur Philippines', '09633653901', 'Phone', 'cluckooecom@zeroonetech.com', 'Phone', 'zeroonetech', 'zeroonetech', 'zeroonetech', 'zeroonetech', '2023-05-04 08:39:31', '2023-05-18 20:43:51');

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
(1, 'Admin', 'admin@gmail.com', NULL, '$2y$10$5yH2FzHj9P1/Rl/P2c2Y.uUrJHRGE/sshLxTfhk8I1V2zos9PZlDy', 'rlLX69GDFdEdn1OBAkbUR86whQBSYarDiTTapvhUJbhZ4L3d7ZEJ64A79SxG', '2023-03-25 15:22:19', '2023-03-25 15:22:19', 1),
(13, 'Makuguren', 'makuguren@gmail.com', NULL, '$2y$10$IOHeS0g8CX3/b.hFJXtOUOKs6cnDRuNiADt2oX858UtwZL36NP9vC', NULL, '2023-05-18 20:41:58', '2023-05-18 20:41:58', 0),
(14, 'Mark Glen', 'markgmiguelyt@gmail.com', NULL, '$2y$10$WU/H4hQiy8TO3zcuKVRnW.xjyb0j.ipMHM5AUg9zdK0Z.LQUiBxwe', NULL, '2023-05-18 20:45:16', '2023-05-18 20:45:16', 0);

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
(1, 14, '09633653901', '4431', 'San Nicolas', '2023-05-18 20:46:03', '2023-05-18 20:46:03');

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
-- Dumping data for table `wishlists`
--

INSERT INTO `wishlists` (`id`, `user_id`, `product_id`, `created_at`, `updated_at`) VALUES
(1, 14, 32, '2023-05-18 20:48:34', '2023-05-18 20:48:34');

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `carts`
--
ALTER TABLE `carts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `colors`
--
ALTER TABLE `colors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `product_colors`
--
ALTER TABLE `product_colors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `product_images`
--
ALTER TABLE `product_images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wishlists`
--
ALTER TABLE `wishlists`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

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
