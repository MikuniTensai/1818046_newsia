-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 21, 2021 at 04:48 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_newsia`
--

-- --------------------------------------------------------

--
-- Table structure for table `berita`
--

CREATE TABLE `berita` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `desc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `berita`
--

INSERT INTO `berita` (`id`, `title`, `desc`, `created_at`, `updated_at`) VALUES
(1, 'Aturan Terbaru Naik Kereta Api Berlaku Mulai 20 Desember 2021 hingga 2 Januari 2022', 'Pemerintah melalui Kementerian Perhubungan (Kemenhub) telah mengeluarkan Surat Edaran (SE) terkait aturan perjalanan kereta api di masa angkutan Natal dan tahun baru (Nataru). Surat Edaran tersebut yakni SE Kemenhub Nomor 112 Tahun 2021 yang berlaku pada 24 Desember 2021 hingga 2 Januari 2022. Kepala Humas PT KAI Daop 1 Jakarta Eva Chairunisa mengatakan, masa angkutan Natal dan tahun baru (Nataru) PT Kereta Api Indonesia (Persero) akan dimulai pada 17 Desember 2021 hingga 4 Januari 2022, atau berjalan selama 19 hari.', '2021-12-21 08:18:30', '2021-12-21 08:18:30'),
(2, 'Orang Tua Harus Bangga, Meski Keras Kepala 3 Weton Anak Ini Miliki Keistimewaan Lain', 'Anak yang keras kepala sering kali merepotkan orang tuanya. Bila orang tua tak sabar, pasti tak jarang anak akan mendapat omelan yang cukup banyak.\n\nNamun yang perlu diketahui oleh orang tua adalah, tidak semua anak yang keras kepada adalah anak nakal dan bandel.\n\nDalam primbon Jawa, ada anak yang memang keras kepala namun memiliki kelebihan lain dan dapat membuat bangga orang tua mereka.', '2021-12-21 08:19:58', '2021-12-21 08:19:58'),
(3, 'Aturan Terbaru Naik Kereta Api Berlaku Mulai 20 Desember 2021 hingga 2 Januari 2022', 'Pemerintah melalui Kementerian Perhubungan (Kemenhub) telah mengeluarkan Surat Edaran (SE) terkait aturan perjalanan kereta api di masa angkutan Natal dan tahun baru (Nataru). Surat Edaran tersebut yakni SE Kemenhub Nomor 112 Tahun 2021 yang berlaku pada 24 Desember 2021 hingga 2 Januari 2022. Kepala Humas PT KAI Daop 1 Jakarta Eva Chairunisa mengatakan, masa angkutan Natal dan tahun baru (Nataru) PT Kereta Api Indonesia (Persero) akan dimulai pada 17 Desember 2021 hingga 4 Januari 2022, atau berjalan selama 19 hari.', '2021-12-21 08:22:57', '2021-12-21 08:22:57');

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
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(10, '2021_12_21_143848_create_beritas_table', 2);

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
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\User', 1, 'auth_token', '27425ba2f05efdf16be5243ee0647111bed2781cd1ac3c85dea0889cfaa968b1', '[\"*\"]', NULL, '2021-12-19 07:45:56', '2021-12-19 07:45:56'),
(4, 'App\\Models\\User', 1, 'auth_token', 'cee8d4818a918fdd65dece05e11b278e7593627825553863cac729d5eaac1c74', '[\"*\"]', NULL, '2021-12-21 07:53:20', '2021-12-21 07:53:20'),
(5, 'App\\Models\\User', 1, 'auth_token', '4a1fe83662a12cfd7bfd047a76cca03cde8556107422f5eb38771b07053e7a67', '[\"*\"]', NULL, '2021-12-21 07:53:33', '2021-12-21 07:53:33'),
(6, 'App\\Models\\User', 1, 'auth_token', '2dd69b02d7e0ffa32edb25e4b8ba919f80a78a599a3e5a925622cfdf64f42848', '[\"*\"]', NULL, '2021-12-21 07:57:28', '2021-12-21 07:57:28'),
(7, 'App\\Models\\User', 1, 'auth_token', '98ef6943b4f87dec5b04268f535fa108eab8051fe5b1c638cbe2ffa1be28ab78', '[\"*\"]', NULL, '2021-12-21 07:57:38', '2021-12-21 07:57:38'),
(8, 'App\\Models\\User', 1, 'auth_token', 'ba1d0d3440e0e04a29bbffe3071e7fe694313c8fe03e5a5b6bccf564c127fb5a', '[\"*\"]', NULL, '2021-12-21 07:57:46', '2021-12-21 07:57:46'),
(9, 'App\\Models\\User', 1, 'auth_token', 'cec1be720b68fdb5da1d62ca157f8ec4a1d3f6aa4bea1405d5328fd47973f02c', '[\"*\"]', NULL, '2021-12-21 07:58:57', '2021-12-21 07:58:57'),
(10, 'App\\Models\\User', 1, 'auth_token', 'c5e6e58c7799324038a3d4af599b8a9d66a29b9b0229b6450f87ae75fd2ad702', '[\"*\"]', '2021-12-21 07:59:55', '2021-12-21 07:59:39', '2021-12-21 07:59:55'),
(11, 'App\\Models\\User', 1, 'auth_token', '4da5ace61dabe324dd0712d13cbcc3177fbe9ffbb9a8220e961d1572d2f6c9bf', '[\"*\"]', NULL, '2021-12-21 08:01:23', '2021-12-21 08:01:23'),
(12, 'App\\Models\\User', 1, 'auth_token', 'da05b5c5e26f806e50fe5489a6447b362ad3f5c279af3a57848c2b13983ace68', '[\"*\"]', '2021-12-21 08:04:08', '2021-12-21 08:03:55', '2021-12-21 08:04:08');

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
(4, 'mikunitensai', 'mikunitensai@gmail.com', NULL, '$2y$10$.3CAWyzgmVKLsl72NV9J5uFYqTTBA28cPMnKbihDEmmLmYqaJIqB.', NULL, '2021-12-21 08:13:03', '2021-12-21 08:13:03');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `berita`
--
ALTER TABLE `berita`
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
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

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
-- AUTO_INCREMENT for table `berita`
--
ALTER TABLE `berita`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
