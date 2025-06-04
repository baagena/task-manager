-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 04, 2025 at 07:09 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tasks`
--

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
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
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2024_07_23_130344_create_personal_access_tokens_table', 1),
(5, '2024_07_23_130658_create_products_table', 1),
(6, '2024_07_24_065631_create_brands_table', 1),
(7, '2025_06_04_142841_create_tasks_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
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
(1, 'App\\Models\\User', 1, 'RutagengwaericAuth-Token', '71f998e5ccf1e505aae59a62815fb713dde0203cf56a3aa0704078e61bf9dd67', '[\"*\"]', NULL, NULL, '2025-06-04 12:24:02', '2025-06-04 12:24:02'),
(2, 'App\\Models\\User', 2, 'Rutagengwa EricAuth-Token', '4e67125266da57edd66bd553bd61bed0139c23c14ef671f8934f63d8ca7e0b45', '[\"*\"]', NULL, NULL, '2025-06-04 13:33:01', '2025-06-04 13:33:01'),
(3, 'App\\Models\\User', 3, 'Rutagengwa EricAuth-Token', '9c0b9679c6af0de6bad333e524f833d52b4f51a926fe94bada879497856166fc', '[\"*\"]', NULL, NULL, '2025-06-04 13:34:32', '2025-06-04 13:34:32'),
(4, 'App\\Models\\User', 4, 'Rutagengwa EricsAuth-Token', '9ae4dd30217336f0a9741d5c4d40bb0b7e590a0919f90b874866f71d9acd0e4c', '[\"*\"]', NULL, NULL, '2025-06-04 13:35:41', '2025-06-04 13:35:41'),
(5, 'App\\Models\\User', 5, 'RutagengwaericAuth-Token', '583069f3a0d4065f911e798d0226fa502133c7fe11367511d06fffa2c3c6e829', '[\"*\"]', '2025-06-04 14:08:48', NULL, '2025-06-04 13:38:18', '2025-06-04 14:08:48'),
(6, 'App\\Models\\User', 6, 'RutaAuth-Token', 'cd14eb2d502fbd54b1bb55910ab83451b171bb7127161ccbb7583f215508b6da', '[\"*\"]', '2025-06-04 14:03:56', NULL, '2025-06-04 13:57:23', '2025-06-04 14:03:56'),
(7, 'App\\Models\\User', 6, 'RutaAuth-Token', '7c8ebd7cbe4afe505844c72d406df8b2c4449d1833df8c47daea81176a4af09f', '[\"*\"]', NULL, NULL, '2025-06-04 14:09:19', '2025-06-04 14:09:19'),
(8, 'App\\Models\\User', 6, 'RutaAuth-Token', '3cf351ba65b8ae258664556955aa9d0f1f9f172cf877bb516a62ab25de8e4ea1', '[\"*\"]', NULL, NULL, '2025-06-04 14:09:21', '2025-06-04 14:09:21'),
(9, 'App\\Models\\User', 6, 'RutaAuth-Token', '85554655674cc5913a24d0dde2b78e79537d79d5c459f137497501f70c702249', '[\"*\"]', '2025-06-04 14:16:55', NULL, '2025-06-04 14:09:44', '2025-06-04 14:16:55'),
(10, 'App\\Models\\User', 6, 'RutaAuth-Token', 'af7c93002e8d40402a38f2b381e2e76d0e536aa431dc7af58b35778255701eab', '[\"*\"]', '2025-06-04 14:26:32', NULL, '2025-06-04 14:17:21', '2025-06-04 14:26:32'),
(11, 'App\\Models\\User', 6, 'RutaAuth-Token', '662b9dc42361e181b61077cfb547bc5259b16db19d3efd8f38b6a118d552e52b', '[\"*\"]', '2025-06-04 14:33:39', NULL, '2025-06-04 14:33:38', '2025-06-04 14:33:39'),
(12, 'App\\Models\\User', 6, 'RutaAuth-Token', '8547a533c1982aa21740e6e7bd9c7a04ecd1f5eed25245fc731fbb5fc22cd3d8', '[\"*\"]', '2025-06-04 14:35:26', NULL, '2025-06-04 14:35:25', '2025-06-04 14:35:26'),
(13, 'App\\Models\\User', 7, 'Rutagengwa EricsAuth-Token', '653e247eec916949faa3e2f272fab7fc38f9a6656315e4b00aef1a1cca56b6d5', '[\"*\"]', '2025-06-04 14:36:53', NULL, '2025-06-04 14:35:52', '2025-06-04 14:36:53');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('k7saoalue68Y9hVxlfSRQ2k5dXZHoW47kMKBSWrk', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/137.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoicFdGc1NOSDNXMmFDV3VGVGI1WXliMDFySjkzaE85Q21PMGQ1VnZBaSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1749046710);

-- --------------------------------------------------------

--
-- Table structure for table `tasks`
--

CREATE TABLE `tasks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `note` text DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tasks`
--

INSERT INTO `tasks` (`id`, `user_id`, `title`, `note`, `status`, `created_at`, `updated_at`) VALUES
(1, 6, 'Buy groceries', 'Milk, Bread, Eggs, and Butter', 1, '2025-06-04 14:01:45', '2025-06-04 14:10:27'),
(3, 6, 'Hello Coder', 'Desdfsjflk', 0, '2025-06-04 14:26:31', '2025-06-04 14:26:31'),
(4, 7, 'Hello', 'sdfljsdfkl', 0, '2025-06-04 14:36:19', '2025-06-04 14:36:19');

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
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Rutagengwaeric', 'rutagengwaeric250@gmail.com', NULL, '$2y$12$CqFPhOdP6QuOp8GaIrNXhueaeR2m811txj3KjUDQtrzPaKfDKAU7e', NULL, '2025-06-04 12:24:02', '2025-06-04 12:24:02'),
(2, 'Rutagengwa Eric', 'rutagengwaeric@gmail.com', NULL, '$2y$12$0WCaH7YWkQxPAxiehBOSoeSngIGwc4irW74i6XEJibe5tI1aE5VCa', NULL, '2025-06-04 13:33:01', '2025-06-04 13:33:01'),
(3, 'Rutagengwa Eric', 'ruta@gmail.io', NULL, '$2y$12$IQvSs1npV2Xxm5Pl5OEO0eG8x2h0R9MNXAAAubhg5phM17zm/spae', NULL, '2025-06-04 13:34:32', '2025-06-04 13:34:32'),
(4, 'Rutagengwa Erics', 'rutas@gmail.io', NULL, '$2y$12$79lCjpcv5TOM1yWMi5XmHOzclHW7tHBA4Do1ct0.7fOYe1YJUMKcq', NULL, '2025-06-04 13:35:41', '2025-06-04 13:35:41'),
(5, 'Rutagengwaeric', 'rutae@gmail.ai', NULL, '$2y$12$AhraaMnFL1WxT5UoYPSQTeCmxKvDwIs6sOQz8XOlWX82hTuRnZ3sq', NULL, '2025-06-04 13:38:18', '2025-06-04 13:38:18'),
(6, 'Ruta', 'rutaa@gmail.com', NULL, '$2y$12$FyKLzw95vFDG4sNgQZpzCe910vjv1FaQOZWfeC8auROBx3/i.GnBi', NULL, '2025-06-04 13:57:23', '2025-06-04 13:57:23'),
(7, 'Rutagengwa Erics', 'demo@streamit.com', NULL, '$2y$12$VqrBJCp8AH3aytw5F4fquuHuQudosWhxOyVQ/m8k3MmQva69JpLse', NULL, '2025-06-04 14:35:52', '2025-06-04 14:35:52');

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
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `tasks`
--
ALTER TABLE `tasks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tasks_user_id_foreign` (`user_id`);

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
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `tasks`
--
ALTER TABLE `tasks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tasks`
--
ALTER TABLE `tasks`
  ADD CONSTRAINT `tasks_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
