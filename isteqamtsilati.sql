-- phpMyAdmin SQL Dump
-- version 5.1.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Feb 10, 2023 at 04:05 PM
-- Server version: 5.7.24
-- PHP Version: 7.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `isteqamtsilati`
--

-- --------------------------------------------------------

--
-- Table structure for table `berita`
--

CREATE TABLE `berita` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `judul` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `kategori_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `gambar` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `view` int(11) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `berita`
--

INSERT INTO `berita` (`id`, `judul`, `slug`, `body`, `kategori_id`, `user_id`, `gambar`, `is_active`, `view`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Pengembangan Aplikasi Berbasis Web', 'pengembangan-aplikasi-berbasis-web', '<p>Aplikasi berbasis web telah banyak digunakan sebagai media penyampai informasi di sektor pendidikan. Namun, SMP Negeri 32 Semarang belum mulai memanfaatkan teknologi ini.</p>', 4, 1, 'gambar/Screenshot (44).png', 1, 0, NULL, '2023-02-09 02:40:42', '2023-02-09 23:00:57'),
(2, 'Mobile Legends: Bang Bang', 'mobile-legends-bang-bang', '<p>Mobile Legends: Bang Bang adalah permainan video seluler ber-genre multiplayer online battle arena yang dikembangkan dan diterbitkan oleh Moonton, anak perusahaan dari ByteDance.</p>', 2, 1, 'gambar/Screenshot (36).png', 1, 0, NULL, '2023-02-09 22:58:16', '2023-02-09 22:58:16'),
(3, 'Game tembak-menembak taktis berbasis karakter 5v5', 'game-tembak-menembak-taktis-berbasis-karakter-5v5', '<p>Padukan gaya dan pengalamanmu di panggung kompetitif global. Kamu diberi 13 ronde untuk menyerang dan mempertahankan sisimu dengan keahlian tembak-menembak sengit dan kemampuan taktis. </p>', 3, 1, 'gambar/Screenshot (35).png', 1, 0, NULL, '2023-02-09 22:59:48', '2023-02-09 23:09:01'),
(4, 'ASSYIFA FESTIVAL 9', 'assyifa-festival-9', '<p>Assyifa Festival atau Syifest adalah kegiatan eksternal tahunan SMA IT Assyifa Boarding School yang telah diadakan sejak tahun 2012.</p>', 4, 1, 'gambar/Screenshot_20221119_073730.png', 0, 0, NULL, '2023-02-09 23:00:39', '2023-02-10 02:15:31');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `header`
--

CREATE TABLE `header` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nohp` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `twiter` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `facebook` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `instagram` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `youtube` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `header`
--

INSERT INTO `header` (`id`, `email`, `nohp`, `twiter`, `facebook`, `instagram`, `youtube`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'arul@gmail.com', '+628555577777', 'https://twitter.com/home?lang=id', 'https://www.facebook.com/ervan.fiverz', 'https://www.instagram.com/pyxisinvitation/', 'https://www.youtube.com/watch?v=u5_R0ouqKDA', NULL, '2023-02-08 07:58:52', '2023-02-10 02:17:47');

-- --------------------------------------------------------

--
-- Table structure for table `home`
--

CREATE TABLE `home` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `gambar` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `judul` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deskripsi` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `video` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `home`
--

INSERT INTO `home` (`id`, `gambar`, `judul`, `deskripsi`, `video`, `deleted_at`, `created_at`, `updated_at`) VALUES
(4, 'gambar/Screenshot (44).png', 'Al-Istiqomah', '<p><strong>Pondok Pesantren Salafiah Al-Istiqomah awalnya bernama Pesantren Al-Attoriyah yang didirikan oleh KH. At-Thori pada tahun 1940 di masa penjajah belanda hingga tahun 1960, kemudian di teruskan oleh generasi ke dua yaitu KH. Romli namun tidak lama meneruskannya dikarenakan meninggal di usia muda.</strong></p>', 'https://www.youtube.com/watch?v=PssMw773_iY', NULL, '2023-02-08 06:41:13', '2023-02-10 02:04:13');

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE `kategori` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama_kategori` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`id`, `nama_kategori`, `slug`, `deleted_at`, `created_at`, `updated_at`) VALUES
(2, 'Mobile Legend', 'mobile-legend', NULL, '2023-02-09 01:37:29', '2023-02-09 01:37:46'),
(3, 'Valorant', 'valorant', NULL, '2023-02-09 02:37:43', '2023-02-09 02:37:43'),
(4, 'Website', 'website', NULL, '2023-02-09 22:53:19', '2023-02-09 22:53:19');

-- --------------------------------------------------------

--
-- Table structure for table `kotak`
--

CREATE TABLE `kotak` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `judul1` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `judul2` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `judul3` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `judul4` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `kotak`
--

INSERT INTO `kotak` (`id`, `judul1`, `judul2`, `judul3`, `judul4`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'uyaa', 'uyeeee', 'uyyyy', 'oooo', NULL, '2023-02-08 09:33:53', '2023-02-08 09:34:19'),
(2, 'uyaa121', 'asdasd', 'asdasdasd', 'asdasd', NULL, '2023-02-09 00:27:20', '2023-02-09 00:27:20');

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
(2, '2019_08_19_000000_create_failed_jobs_table', 1),
(3, '2023_02_08_122659_create_home_table', 2),
(4, '2023_02_08_123019_create_kotak_table', 2),
(5, '2023_02_08_143045_create_header_table', 3),
(6, '2023_02_09_070225_creat_berita_table', 4),
(7, '2023_02_09_074550_create_kategori_table', 4),
(8, '2023_02_09_074607_create_berita_table', 5);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `level` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `level`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin@gmail.com', NULL, '$2y$10$p7JTq.AT/AhFVR4HbQ26t.v9WYs6rYlK4A1N4/86F/jd1VLEh.LFG', 'admin', NULL, '2023-02-08 03:13:21', '2023-02-08 03:13:21');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `berita`
--
ALTER TABLE `berita`
  ADD PRIMARY KEY (`id`),
  ADD KEY `berita_kategori_id_index` (`kategori_id`),
  ADD KEY `berita_user_id_index` (`user_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `header`
--
ALTER TABLE `header`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `home`
--
ALTER TABLE `home`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kotak`
--
ALTER TABLE `kotak`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
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
-- AUTO_INCREMENT for table `berita`
--
ALTER TABLE `berita`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `header`
--
ALTER TABLE `header`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `home`
--
ALTER TABLE `home`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `kotak`
--
ALTER TABLE `kotak`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `berita`
--
ALTER TABLE `berita`
  ADD CONSTRAINT `berita_kategori_id_foreign` FOREIGN KEY (`kategori_id`) REFERENCES `kategori` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `berita_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
