-- phpMyAdmin SQL Dump
-- version 5.2.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Dec 05, 2025 at 03:36 AM
-- Server version: 8.4.3
-- PHP Version: 8.4.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_recipedia`
--

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `recipe_id` bigint UNSIGNED NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `queue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint UNSIGNED NOT NULL,
  `reserved_at` int UNSIGNED DEFAULT NULL,
  `available_at` int UNSIGNED NOT NULL,
  `created_at` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_jobs` int NOT NULL,
  `pending_jobs` int NOT NULL,
  `failed_jobs` int NOT NULL,
  `failed_job_ids` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` mediumtext COLLATE utf8mb4_unicode_ci,
  `cancelled_at` int DEFAULT NULL,
  `created_at` int NOT NULL,
  `finished_at` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `likes`
--

CREATE TABLE `likes` (
  `user_id` bigint UNSIGNED NOT NULL,
  `recipe_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `likes`
--

INSERT INTO `likes` (`user_id`, `recipe_id`, `created_at`, `updated_at`) VALUES
(2, 3, '2025-12-04 18:31:03', '2025-12-04 18:31:03');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2024_01_01_000003_create_recipes_table', 1),
(5, '2024_01_01_000004_create_likes_table', 1),
(6, '2024_01_01_000005_create_comments_table', 1),
(7, '2025_12_03_112019_add_timestamps_to_likes_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `recipes`
--

CREATE TABLE `recipes` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `ingredients` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `instructions` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `recipes`
--

INSERT INTO `recipes` (`id`, `user_id`, `title`, `description`, `ingredients`, `instructions`, `image_path`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 'Mie Ayam', 'Pake Ayam', '200 gr mie telur\r\n100 gr ayam (potong kecil)\r\n2 siung bawang putih (cincang)\r\n1 sdm kecap manis\r\n1 sdm minyak goreng\r\n1 sdt garam\r\n1/2 sdt merica', '1. Rebus mie hingga matang, tiriskan.\r\n2. Tumis bawang putih dengan minyak hingga harum.\r\n3. Masukkan ayam, aduk sampai berubah warna.\r\n4. Tambahkan kecap, garam, dan merica, masak sebentar.\r\n5. Sajikan mie dengan tumisan ayam di atasnya.', 'recipes/Smss9E48URCOFDjRMAOwbvug6Qm61z8J7J0vxE1u.jpg', '2025-12-03 07:02:35', '2025-12-03 07:02:35', NULL),
(2, 1, 'Nasi Goreng', 'Pake Bawang', '1 porsi nasi putih\r\n1 butir telur\r\n2 siung bawang putih, cincang\r\n1 siung bawang merah, iris\r\n1 sdm kecap manis\r\nGaram & merica secukupnya\r\nMinyak untuk menumis', 'Panaskan minyak, tumis bawang hingga harum.\r\nMasukkan telur, orak-arik.\r\nTambahkan nasi, aduk rata.\r\nTambah kecap manis, garam, merica.\r\nMasak hingga tercampur sempurna dan harum.', 'recipes/HiaEyB4Bq1mJGpkvfLde1A9uIPe8iV6AuF1O6MRl.jpg', '2025-12-03 07:03:59', '2025-12-03 07:03:59', NULL),
(3, 2, 'Ayam Kecap', 'Pake Kecap', '* 250 g ayam potong kecil\r\n* 3 siung bawang putih, cincang\r\n* 1 siung bawang merah\r\n* 3 sdm kecap manis\r\n* Garam, merica, sedikit air', '1. Tumis bawang hingga harum.\r\n2. Masukkan ayam, aduk hingga berubah warna.\r\n3. Tambahkan kecap manis, garam, merica dan sedikit air.\r\n4. Masak hingga ayam matang dan bumbu meresap.', 'recipes/UJtwFPHFHjNFEZJncjD506wchKH5n0IDciT5SuLO.jpg', '2025-12-03 07:05:08', '2025-12-03 07:05:08', NULL),
(4, 2, 'Mie Goreng Rumahan', 'Bukan Hotel', '* 1 bungkus mie telur\r\n* 1 buah wortel, iris\r\n* 1 genggam sawi\r\n* 2 siung bawang putih\r\n* 1 sdm kecap manis, 1 sdm saus tiram, 1 sdt kecap asin', '1. Rebus mie, tiriskan.\r\n2. Tumis bawang, masukkan sayuran.\r\n3. Tambahkan mie, kecap manis, kecap asin, saus tiram.\r\n4. Aduk hingga bumbu merata.', 'recipes/1qUVTeVGWmkdPBthFyRrZE3DebKO3p1OCpX60GrJ.jpg', '2025-12-03 07:06:00', '2025-12-03 07:06:00', NULL),
(5, 2, 'tes', 'tes', 'a', 'a', 'recipes/LkPM89QSj2VJR09O9StXxj3Ykms2mWnIWNDhSSDF.jpg', '2025-12-03 07:06:21', '2025-12-03 07:06:31', '2025-12-03 07:06:31'),
(6, 3, 'Tumis Kangkung', 'Sehat dan Murah', '* 1 ikat kangkung\r\n* 3 siung bawang putih\r\n* 2 cabai merah\r\n* 1 sdm saus tiram\r\n* Garam, kaldu bubuk', '1. Tumis bawang & cabai.\r\n2. Masukkan kangkung, aduk cepat.\r\n3. Tambahkan saus tiram, garam, kaldu.\r\n4. Masak hingga kangkung layu.', 'recipes/B0mkFovZpW0zr6Avfa4hYL2ohij7nu1JctHEHE2A.jpg', '2025-12-03 07:08:31', '2025-12-03 07:08:31', NULL),
(7, 3, 'Bakwan Jagung', 'Pake Jagung Bukan Ubi', '* 1 buah jagung manis dipipil\r\n* 5 sdm tepung terigu\r\n* 1 batang daun bawang\r\n* Garam, merica, air secukupnya', '1. Campur semua bahan dalam mangkuk.\r\n2. Tambahkan air hingga adonan agak kental.\r\n3. Goreng sesendok demi sesendok hingga renyah.', 'recipes/mF1ABrkaO94vnFLZzWeOnh67zGPJf1P6BZhOIkpv.jpg', '2025-12-03 07:09:15', '2025-12-03 07:09:15', NULL),
(8, 5, 'A', 'A', 'A', 'A', 'recipes/KZIBdRYajxc0kj8uXJIHRQM5tLcor9vUQVmhPSUn.png', '2025-12-04 19:44:50', '2025-12-04 19:54:26', '2025-12-04 19:54:26'),
(9, 5, 'aa', 'a', 'aa', 'a', 'recipes/kvQ7BqR61Xo5Ec2BYkVH4BgbtY56o2YeJKzLFa4j.jpg', '2025-12-04 19:56:49', '2025-12-04 19:56:54', '2025-12-04 19:56:54');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('dfg5RGjfKkwUd76khEOJ3H3jGaa6Sv1pmlxoqJ50', 5, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiUTNBeXREZ2d5TW9MTjJDSWNNdjJwQnl6dDYyM0tLMDNvTlo1R05pViI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7czo1OiJyb3V0ZSI7czo0OiJob21lIjt9czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6NTt9', 1764905303),
('SlhUbRrgTDVKOaMAG5c21jUrlFTf6xAavQvl5RX1', 5, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoiNlN5VGswMGFaQldUQ1cxb3NTa0tiSGR4alVZaG5aOTlHMmRobnFCYSI7czozOiJ1cmwiO2E6MTp7czo4OiJpbnRlbmRlZCI7czozMToiaHR0cDovLzEyNy4wLjAuMTo4MDAwL2Rhc2hib2FyZCI7fXM6OToiX3ByZXZpb3VzIjthOjI6e3M6MzoidXJsIjtzOjMxOiJodHRwOi8vMTI3LjAuMC4xOjgwMDAvcmVjaXBlcy80IjtzOjU6InJvdXRlIjtzOjEyOiJyZWNpcGVzLnNob3ciO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aTo1O30=', 1764903226);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
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
(1, 'Test User', 'test@example.com', '2025-12-03 06:37:49', '$2y$12$znhX3ps.z8egtx4jYEI/6udTG6aGCIz6zlQM.NiMzll6HYeNfQOou', 'iOzIxvVFdBf6sPPWbSnuBXmg3CCd5DNX3rl5RItZECK6Q44X0F0PDw0OufzM', '2025-12-03 06:37:50', '2025-12-03 06:37:50'),
(2, 'tes user 2', 'test2@example.com', NULL, '$2y$12$Wayru3NFJ0BCISbMgdhNfOPicGMjy9gpNYMfIv1YouVKExPvSeRXm', NULL, '2025-12-03 07:04:32', '2025-12-03 07:04:32'),
(3, 'tes user 3', 'test3@example.com', NULL, '$2y$12$qHHb5eKsf2WzR2J2dUdb7O0nDuyhiPZcun5Vchf33rV13toZepoq.', NULL, '2025-12-03 07:07:26', '2025-12-03 07:07:26'),
(4, 'tes user 4', 'test4@example.com', NULL, '$2y$12$QJwEezzqECwVzPTwJ5idoOAKBMuFjNIzViNqPhIfTZ5DUD8raIr5m', NULL, '2025-12-03 07:46:07', '2025-12-03 07:46:07'),
(5, 'user', 'user@example.com', NULL, '$2y$12$sIRbQ4g4DP.KE79kWoSp/udIejZ7z20qP.p/ptk8S9qavIY9exrHq', NULL, '2025-12-04 19:42:34', '2025-12-04 19:42:34');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comments_recipe_id_index` (`recipe_id`),
  ADD KEY `comments_user_id_index` (`user_id`),
  ADD KEY `comments_created_at_index` (`created_at`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `likes`
--
ALTER TABLE `likes`
  ADD PRIMARY KEY (`user_id`,`recipe_id`),
  ADD KEY `likes_recipe_id_index` (`recipe_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `recipes`
--
ALTER TABLE `recipes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `recipes_user_id_index` (`user_id`),
  ADD KEY `recipes_created_at_index` (`created_at`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

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
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `recipes`
--
ALTER TABLE `recipes`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_recipe_id_foreign` FOREIGN KEY (`recipe_id`) REFERENCES `recipes` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `comments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `likes`
--
ALTER TABLE `likes`
  ADD CONSTRAINT `likes_recipe_id_foreign` FOREIGN KEY (`recipe_id`) REFERENCES `recipes` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `likes_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `recipes`
--
ALTER TABLE `recipes`
  ADD CONSTRAINT `recipes_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
