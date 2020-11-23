-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 23, 2020 at 07:36 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shop`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `categoryname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `categoryname`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Food', 'food', '2020-11-05 01:00:40', '2020-11-05 01:00:40'),
(2, 'Apparel', 'apparel', '2020-11-05 01:03:28', '2020-11-05 01:03:28'),
(3, 'Vehicle', 'vehicle', '2020-11-05 01:04:38', '2020-11-05 01:04:38'),
(5, 'Drinks', 'drinks', '2020-11-05 12:15:10', '2020-11-05 12:15:10'),
(6, 'Buku', 'buku', '2020-11-08 19:14:09', '2020-11-08 19:14:09');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2020_11_05_035042_laratrust_setup_tables', 1),
(6, '2020_11_05_061427_create_products_table', 2),
(7, '2020_11_05_083348_create_categories_table', 3),
(8, '2020_11_05_083400_create_subcategories_table', 3);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `display_name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'users-create', 'Create Users', 'Create Users', '2020-11-04 19:56:35', '2020-11-04 19:56:35'),
(2, 'users-read', 'Read Users', 'Read Users', '2020-11-04 19:56:35', '2020-11-04 19:56:35'),
(3, 'users-update', 'Update Users', 'Update Users', '2020-11-04 19:56:35', '2020-11-04 19:56:35'),
(4, 'users-delete', 'Delete Users', 'Delete Users', '2020-11-04 19:56:35', '2020-11-04 19:56:35'),
(5, 'payments-create', 'Create Payments', 'Create Payments', '2020-11-04 19:56:35', '2020-11-04 19:56:35'),
(6, 'payments-read', 'Read Payments', 'Read Payments', '2020-11-04 19:56:35', '2020-11-04 19:56:35'),
(7, 'payments-update', 'Update Payments', 'Update Payments', '2020-11-04 19:56:35', '2020-11-04 19:56:35'),
(8, 'payments-delete', 'Delete Payments', 'Delete Payments', '2020-11-04 19:56:35', '2020-11-04 19:56:35'),
(9, 'profile-read', 'Read Profile', 'Read Profile', '2020-11-04 19:56:35', '2020-11-04 19:56:35'),
(10, 'profile-update', 'Update Profile', 'Update Profile', '2020-11-04 19:56:35', '2020-11-04 19:56:35'),
(11, 'module_1_name-create', 'Create Module_1_name', 'Create Module_1_name', '2020-11-04 19:56:35', '2020-11-04 19:56:35'),
(12, 'module_1_name-read', 'Read Module_1_name', 'Read Module_1_name', '2020-11-04 19:56:35', '2020-11-04 19:56:35'),
(13, 'module_1_name-update', 'Update Module_1_name', 'Update Module_1_name', '2020-11-04 19:56:35', '2020-11-04 19:56:35'),
(14, 'module_1_name-delete', 'Delete Module_1_name', 'Delete Module_1_name', '2020-11-04 19:56:35', '2020-11-04 19:56:35');

-- --------------------------------------------------------

--
-- Table structure for table `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permission_role`
--

INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES
(1, 1),
(1, 2),
(2, 1),
(2, 2),
(3, 1),
(3, 2),
(4, 1),
(4, 2),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(9, 2),
(9, 3),
(10, 1),
(10, 2),
(10, 3),
(11, 4),
(12, 4),
(13, 4),
(14, 4);

-- --------------------------------------------------------

--
-- Table structure for table `permission_user`
--

CREATE TABLE `permission_user` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `user_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `subcategory_id` bigint(20) UNSIGNED DEFAULT NULL,
  `product_id` int(10) UNSIGNED DEFAULT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shortdescription` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `img` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `thumbnail` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` decimal(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category_id`, `subcategory_id`, `product_id`, `name`, `shortdescription`, `img`, `thumbnail`, `price`, `created_at`, `updated_at`) VALUES
(1, 1, 2, NULL, 'Beef Burger', NULL, '1604589710_burger.png', NULL, '15.00', '2020-11-05 07:21:50', '2020-11-05 07:21:50'),
(2, 1, 2, NULL, 'Steak', NULL, '1604590944_steak.png', NULL, '199.99', '2020-11-05 07:42:24', '2020-11-05 07:42:24'),
(3, 1, 1, NULL, 'Squid', NULL, '1604590977_squid.png', NULL, '5.70', '2020-11-05 07:42:57', '2020-11-05 07:42:57'),
(4, 1, 1, NULL, 'Assorted Seafood', NULL, '1604591038_seafood.png', NULL, '100.00', '2020-11-05 07:43:58', '2020-11-05 07:43:58'),
(5, 2, 4, NULL, 'Blue shirt', NULL, '1604591066_shirt.png', NULL, '15.00', '2020-11-05 07:44:26', '2020-11-05 07:44:26'),
(6, 2, 4, NULL, 'Orange shirt', NULL, '1604591095_tshirt.png', NULL, '15.00', '2020-11-05 07:44:55', '2020-11-05 07:44:55'),
(7, 2, 5, NULL, 'Blue Cap', NULL, '1604591540_cap.png', NULL, '5.00', '2020-11-05 07:52:20', '2020-11-05 07:52:20'),
(8, 2, 5, NULL, 'Top Hat', NULL, '1604591555_top_hat.png', NULL, '200.00', '2020-11-05 07:52:35', '2020-11-05 07:52:35'),
(9, 5, 8, NULL, 'Coke', NULL, '1604607333_coke.png', NULL, '2.00', '2020-11-05 12:15:33', '2020-11-05 12:15:33'),
(10, 1, 2, NULL, 'Burger Ayam', NULL, '1604891681_burger.png', NULL, '5.00', '2020-11-08 19:14:41', '2020-11-08 19:14:41'),
(11, 1, 3, NULL, 'Tiramisu', NULL, '1605153941_pngtree-realistic-tiramisu-cake-png-free-image_1443682.jpg', NULL, '25.00', '2020-11-11 20:05:41', '2020-11-11 20:05:41');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'superadministrator', 'Superadministrator', 'Superadministrator', '2020-11-04 19:56:35', '2020-11-04 19:56:35'),
(2, 'administrator', 'Administrator', 'Administrator', '2020-11-04 19:56:35', '2020-11-04 19:56:35'),
(3, 'user', 'User', 'User', '2020-11-04 19:56:35', '2020-11-04 19:56:35'),
(4, 'role_name', 'Role Name', 'Role Name', '2020-11-04 19:56:35', '2020-11-04 19:56:35');

-- --------------------------------------------------------

--
-- Table structure for table `role_user`
--

CREATE TABLE `role_user` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `user_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_user`
--

INSERT INTO `role_user` (`role_id`, `user_id`, `user_type`) VALUES
(1, 1, 'App\\Models\\User'),
(3, 2, 'App\\Models\\User'),
(1, 3, 'App\\Models\\User'),
(2, 5, 'App\\Models\\User');

-- --------------------------------------------------------

--
-- Table structure for table `subcategories`
--

CREATE TABLE `subcategories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `subcategoryname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subcategories`
--

INSERT INTO `subcategories` (`id`, `subcategoryname`, `slug`, `category_id`, `created_at`, `updated_at`) VALUES
(1, 'Seafood', 'seafood', 1, '2020-11-05 01:16:15', '2020-11-05 01:16:15'),
(2, 'Meat', 'meat', 1, '2020-11-05 01:16:28', '2020-11-05 01:16:28'),
(3, 'Vegetarian', 'vegetarian', 1, '2020-11-05 01:16:44', '2020-11-05 01:16:44'),
(4, 'Tops', 'tops', 2, '2020-11-05 01:16:54', '2020-11-05 01:16:54'),
(5, 'Hat', 'hat', 2, '2020-11-05 01:17:01', '2020-11-05 01:17:01'),
(6, 'Sedan', 'sedan', 3, '2020-11-05 01:17:06', '2020-11-05 01:17:06'),
(7, 'MPV', 'mpv', 3, '2020-11-05 01:17:11', '2020-11-05 01:17:11'),
(8, 'Soft Drinks', 'soft-drinks', 5, '2020-11-05 12:15:19', '2020-11-05 12:15:19'),
(9, 'Fiction', 'fiction', 6, '2020-11-08 19:14:19', '2020-11-08 19:14:19');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(2, 'user', 'user@app.com', NULL, '$2y$10$YhrryMT8ZaEOQS.Eh.66iuuSxiqmDjEGZZhr6wDxUULP076lOykyG', NULL, '2020-11-04 20:08:19', '2020-11-04 20:08:19'),
(3, 'superadmin', 'superadmin@app.com', NULL, '$2y$10$eTKoszywTO5H3Kikif7mv.FVTHvoOYoPEyKbBeziL6wZLkumRLhm2', NULL, '2020-11-04 20:15:42', '2020-11-04 20:15:42'),
(5, 'Den', 'den@app.com', NULL, '$2y$10$S/B.LRbnoIAdxgZbhHEViekGVAVVTwPvq8075OPd2edBx0gst12SO', NULL, '2020-11-04 20:22:57', '2020-11-04 20:22:57');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
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
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_unique` (`name`);

--
-- Indexes for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `permission_role_role_id_foreign` (`role_id`);

--
-- Indexes for table `permission_user`
--
ALTER TABLE `permission_user`
  ADD PRIMARY KEY (`user_id`,`permission_id`,`user_type`),
  ADD KEY `permission_user_permission_id_foreign` (`permission_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Indexes for table `role_user`
--
ALTER TABLE `role_user`
  ADD PRIMARY KEY (`user_id`,`role_id`,`user_type`),
  ADD KEY `role_user_role_id_foreign` (`role_id`);

--
-- Indexes for table `subcategories`
--
ALTER TABLE `subcategories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `subcategories`
--
ALTER TABLE `subcategories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `permission_user`
--
ALTER TABLE `permission_user`
  ADD CONSTRAINT `permission_user_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `role_user`
--
ALTER TABLE `role_user`
  ADD CONSTRAINT `role_user_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
