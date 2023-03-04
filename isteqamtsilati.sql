-- phpMyAdmin SQL Dump
-- version 5.1.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Feb 28, 2023 at 08:40 PM
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
-- Table structure for table `alumi`
--

CREATE TABLE `alumi` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `gambar` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `angkatan` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quotes` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `alumi`
--

INSERT INTO `alumi` (`id`, `gambar`, `nama`, `angkatan`, `title`, `quotes`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'gambar/testimonials-1.jpg', 'Arul Khan', '2018', 'Universitas Indonesia', '<p>Apa yang aku ingat tentang sekolah adalah kenangan-kenangan yang aku buat bersama teman-teman</p>', NULL, '2023-02-11 19:35:43', '2023-02-11 19:35:43'),
(2, 'gambar/testimonials-4.jpg', 'Hendra Uyee', '2018', 'UNPAD', '<p>Tiada masa paling indah masa-masa di sekolah, tiada kisah paling indah kisah kasih di sekolah</p>', NULL, '2023-02-11 19:36:55', '2023-02-11 19:36:55'),
(3, 'gambar/testimonials-5.jpg', 'Van Der Wik', '2018', 'ITB', '<p>Tak semua orang memiliki masa SMA yang indah. Namun setiap orang akan menemukan pengalaman yang berharga</p>', NULL, '2023-02-11 19:38:02', '2023-02-11 19:38:02');

-- --------------------------------------------------------

--
-- Table structure for table `background`
--

CREATE TABLE `background` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `gambar` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `background`
--

INSERT INTO `background` (`id`, `gambar`, `created_at`, `updated_at`) VALUES
(2, 'gambar/cta-bg.jpg', '2023-02-11 21:56:12', '2023-02-11 21:56:12');

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
-- Table structure for table `biayamts`
--

CREATE TABLE `biayamts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `harga` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `biayamts`
--

INSERT INTO `biayamts` (`id`, `nama`, `harga`, `created_at`, `updated_at`) VALUES
(1, 'Pendaftaran', '400000', '2023-02-28 12:37:46', '2023-02-28 12:38:08'),
(2, 'Kitab Amtsilati', '150000', '2023-02-28 12:38:01', '2023-02-28 12:38:01'),
(3, 'Infaq Bangunan', '500000', '2023-02-28 12:38:25', '2023-02-28 12:38:25'),
(4, 'Bulanan', '460000', '2023-02-28 12:38:42', '2023-02-28 12:44:23'),
(5, 'Lemari', '500000', '2023-02-28 12:38:58', '2023-02-28 12:38:58');

-- --------------------------------------------------------

--
-- Table structure for table `biayasantri`
--

CREATE TABLE `biayasantri` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `harga` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `biayasantri`
--

INSERT INTO `biayasantri` (`id`, `nama`, `harga`, `created_at`, `updated_at`) VALUES
(1, 'Pendaftaran', '400000', '2023-02-28 11:42:40', '2023-02-28 12:34:43'),
(2, 'Kitab Amtsilati', '150000', '2023-02-28 11:42:57', '2023-02-28 12:34:53'),
(3, 'Infaq Bangunan', '500000', '2023-02-28 11:43:14', '2023-02-28 12:34:59'),
(4, 'Bulanan', '460000', '2023-02-28 11:43:33', '2023-02-28 12:35:07'),
(5, 'Lemari', '500000', '2023-02-28 11:43:47', '2023-02-28 12:35:14');

-- --------------------------------------------------------

--
-- Table structure for table `biayasma`
--

CREATE TABLE `biayasma` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `harga` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `biayasma`
--

INSERT INTO `biayasma` (`id`, `nama`, `harga`, `created_at`, `updated_at`) VALUES
(1, 'Pendaftaran', '400000', '2023-02-28 12:39:32', '2023-02-28 12:39:59'),
(2, 'Kitab Amtsilati', '150000', '2023-02-28 12:39:51', '2023-02-28 12:39:51'),
(3, 'Infaq Bangunan', '500000', '2023-02-28 12:40:17', '2023-02-28 12:40:17'),
(4, 'Bulanan', '500000', '2023-02-28 12:40:29', '2023-02-28 12:40:29'),
(5, 'Lemari', '500000', '2023-02-28 12:40:45', '2023-02-28 12:40:45');

-- --------------------------------------------------------

--
-- Table structure for table `biografi`
--

CREATE TABLE `biografi` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `gambar` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deskripsi` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `biografi`
--

INSERT INTO `biografi` (`id`, `gambar`, `nama`, `deskripsi`, `created_at`, `updated_at`) VALUES
(1, 'gambar/akang-teteh.jpeg', 'K. H. Aden Ali Abduloh, M.Pd.I.', '<p>KH ADEN ALI ASADULLAH adalah pimpinan pondok pesantren salafiyah al istiqomah. Lahir di ciheulang des. Langen sari kec. Karang tengah kab. Cianjur tanggal 17 november 1974 masehi.</p><p>Beliau pernah mengenyam pendidikan di SD marga luyu, paket B, paket C, UNIVERSITAS YAMISA ( S 1), Uuniversitas Jakarta ( S 2 )&nbsp;</p><p>Pernah mondok di ponpes assalafiyyah cipriangan sukabumi, lalu ke ponpes keresek cibatu garut, dank e ponpes minhajul karomah Banjar. Dan beliau pernah ber tabarruk juga di ponpes gentur, bunikasih, dll.</p><p>Beliau menikah dengan HJ. NURLATIFAH yang berasal dari tasikMalaya&nbsp; pada tahu 1997 masehi. Dan di karuniai 2 orang putri.</p><p>Setelah wafat KH. APIPUDDIN MUGHNI beliau meneruskan kepemimpinan pesantren AL ISTIQOMAH sekaligus saat ini menjabat sebagai KEPALA WAKA 1 BAZNAS KAB. CIANJUR, dan aktif di organisasi nahdhotul ulama, sekaligus menjadi ketua di LEMBAGA FPP ( FORUM PONDOK PESANTREN ) KAB. CIANJUR dan ketua bidang ekonomi syari’at di MUI KAB. CIANJUR</p>', '2023-02-21 04:02:15', '2023-02-28 10:06:51');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nomor` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `divisi`
--

CREATE TABLE `divisi` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `gambar` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `divisi`
--

INSERT INTO `divisi` (`id`, `gambar`, `nama`, `created_at`, `updated_at`) VALUES
(1, 'gambar/logo-isteq-media.png', 'Divisi Media', '2023-02-22 08:35:11', '2023-02-22 08:37:19'),
(2, 'gambar/it.jpg', 'Media IT', '2023-02-22 08:40:23', '2023-02-22 08:40:23');

-- --------------------------------------------------------

--
-- Table structure for table `ekskul`
--

CREATE TABLE `ekskul` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `gambar` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `judul` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ekskul`
--

INSERT INTO `ekskul` (`id`, `gambar`, `judul`, `created_at`, `updated_at`) VALUES
(3, 'gambar/futsal.png', 'Futsal', '2023-02-21 06:30:54', '2023-02-21 06:30:54');

-- --------------------------------------------------------

--
-- Table structure for table `ekskulmts`
--

CREATE TABLE `ekskulmts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `gambar` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `judul` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ekskulmts`
--

INSERT INTO `ekskulmts` (`id`, `gambar`, `judul`, `created_at`, `updated_at`) VALUES
(1, 'gambar/futsal.png', 'Futsal', '2023-02-28 13:25:52', '2023-02-28 13:25:52');

-- --------------------------------------------------------

--
-- Table structure for table `ekskulpondok`
--

CREATE TABLE `ekskulpondok` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `gambar` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `judul` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ekskulpondok`
--

INSERT INTO `ekskulpondok` (`id`, `gambar`, `judul`, `created_at`, `updated_at`) VALUES
(1, 'gambar/futsal.png', 'Futsal', '2023-02-28 13:28:36', '2023-02-28 13:28:36');

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
-- Table structure for table `faq`
--

CREATE TABLE `faq` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `judul` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deskripsi` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
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
(2, 'admin@gmail.com', '+628555577777', 'https://twitter.com/home?lang=id', 'https://www.facebook.com/ervan.fiverz', 'https://www.instagram.com/pyxisinvitation/', 'https://www.youtube.com/watch?v=u5_R0ouqKDA', NULL, '2023-02-11 22:30:26', '2023-02-11 22:30:26');

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
(5, 'gambar/dua-hendra.png', 'Al-Istiqomah', '<p><strong>Pondok Pesantren Salafiah Al-Istiqomah awalnya bernama Pesantren Al-Attoriyah yang didirikan oleh KH. At-Thori pada tahun 1940 di masa penjajah belanda hingga tahun 1960, kemudian di teruskan oleh generasi ke dua yaitu KH. Romli namun tidak lama meneruskannya dikarenakan meninggal di usia muda.</strong></p>', 'https://www.youtube.com/watch?v=pp2zAavyrQQ', NULL, '2023-02-11 21:55:40', '2023-02-11 21:55:40');

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
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `kotak`
--

INSERT INTO `kotak` (`id`, `judul1`, `judul2`, `judul3`, `deleted_at`, `created_at`, `updated_at`) VALUES
(2, 'bi bi-easel', 'MTs SA Al-Istiqomah', 'Terakreditasi A', NULL, '2023-02-09 00:27:20', '2023-02-11 04:33:04'),
(5, 'bi bi-easel', 'SMA-I Al-Istiqomah', 'Terakreditasi B', NULL, '2023-02-11 22:28:06', '2023-02-28 08:52:13'),
(6, 'bi bi-geo-alt', 'Lokasi YPI Al-Istiqomah', 'Cianjur, Jawa Barat', NULL, '2023-02-11 22:28:27', '2023-02-11 22:28:27'),
(7, 'bi bi-command', 'Pondok Pesantren', 'Salafiyah', NULL, '2023-02-11 22:28:46', '2023-02-11 22:28:46');

-- --------------------------------------------------------

--
-- Table structure for table `logo`
--

CREATE TABLE `logo` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `gambar` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `logo`
--

INSERT INTO `logo` (`id`, `gambar`, `created_at`, `updated_at`) VALUES
(6, 'gambar/client-1.png', '2023-02-11 22:26:00', '2023-02-11 22:26:00'),
(7, 'gambar/client-2.png', '2023-02-11 22:26:11', '2023-02-11 22:26:11'),
(8, 'gambar/client-3.png', '2023-02-11 22:26:21', '2023-02-11 22:26:21'),
(9, 'gambar/client-4.png', '2023-02-11 22:26:29', '2023-02-11 22:26:29'),
(10, 'gambar/client-5.png', '2023-02-11 22:26:38', '2023-02-11 22:26:38'),
(11, 'gambar/client-6.png', '2023-02-11 22:26:45', '2023-02-11 22:26:45');

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
(8, '2023_02_09_074607_create_berita_table', 5),
(9, '2023_02_11_044410_create_background_table', 6),
(10, '2023_02_11_053638_create_sambutan_table', 7),
(11, '2023_02_11_123117_create_pdmts_table', 8),
(12, '2023_02_12_014657_create_pdsma_table', 9),
(13, '2023_02_12_014824_create_pdpesantren_table', 9),
(14, '2023_02_12_020853_create_alumi_table', 10),
(15, '2023_02_12_033022_create_logo_table', 11),
(16, '2023_02_12_140807_create_sejarah_table', 12),
(17, '2023_02_12_145435_create_visimisi_table', 13),
(18, '2023_02_12_150231_create_visimisi_table', 14),
(19, '2023_02_12_165341_create_struktur_table', 15),
(20, '2023_02_21_101507_create_program_table', 16),
(21, '2023_02_21_105427_create_biografi_table', 17),
(22, '2023_02_21_132252_create_ekskul_table', 18),
(23, '2023_02_22_010512_create_pendaftransantri_table', 19),
(24, '2023_02_22_010658_create_pendaftranmts_table', 19),
(25, '2023_02_22_010750_create_pendaftransma_table', 19),
(26, '2023_02_22_010817_create_biayasma_table', 19),
(27, '2023_02_22_010827_create_biayamts_table', 19),
(28, '2023_02_22_010840_create_biayasantri_table', 19),
(29, '2023_02_22_065525_create_sma_table', 20),
(30, '2023_02_22_074920_create_sambutansma_table', 21),
(31, '2023_02_22_074936_create_visimisisma_table', 21),
(32, '2023_02_22_074955_create_struktursma_table', 21),
(33, '2023_02_22_082224_create_sambutanmts_table', 22),
(34, '2023_02_22_082256_create_visimisimts_table', 22),
(35, '2023_02_22_082309_create_strukturmts_table', 22),
(36, '2023_02_22_082331_create_sambutanra_table', 22),
(37, '2023_02_22_082345_create_visimisira_table', 22),
(38, '2023_02_22_082400_create_strukturra_table', 22),
(39, '2023_02_22_082728_create_contact_table', 23),
(40, '2023_02_22_120140_create_faq_table', 24),
(41, '2023_02_22_145058_create_divisi_table', 25),
(42, '2023_02_22_145115_create_team_table', 25),
(43, '2023_02_28_174152_create_ra_table', 26),
(44, '2023_02_28_174323_create_mts_table', 26),
(45, '2023_02_28_201850_create_ekskulpondok_table', 27),
(46, '2023_02_28_202023_create_ekskulmts_table', 27);

-- --------------------------------------------------------

--
-- Table structure for table `mts`
--

CREATE TABLE `mts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `judul` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `gambar` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jabatan` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `mts`
--

INSERT INTO `mts` (`id`, `judul`, `body`, `gambar`, `nama`, `jabatan`, `created_at`, `updated_at`) VALUES
(1, 'Selayang Pandang', '<p>SMAN 1 Cianjur didirikan pada tahun 1959 atas prakarsa tokoh masyarakat Cianjur beserta DPRD dan para orang tua murid yang anknya sudah tamat SLTP.</p><p>SMAN 1 Cianjur pada mulanya bernama SMA Badak Putih (swasta) dengan kepala sekolah Bapak Suryadi Wonoerdjojo. Pada bulan Oktober 1959 SMA Badak putih resmi berubah nama menjadi SMA Negeri dengan SK Menteri P&amp;K tanggal 15 Oktober 1959 No. 72/SK/B.III. Upacara peresmiannya pada tanggal 15 November 1959 di gedung Tjung Hwa Tjung Hwee yang kini bernama Wisma Karya. Mulai tanggal 1 Mei 1960 dengan SK Menteri P&amp;K tanggal 24 April 1960 No. 34037/C.I diangkatlah Bapak Moh. Muchtar sebagai direktur SMA Negeri Cianjur.</p><p>Pada tanggal 26 Desember 1964 dilakukan peletakan batu pertama pembangunan gedung SMA Negeri Cianjur (kampus yang ada sekarang) yang dihadiri oleh tokoh-tokoh masyarakat, Pemerintah Daerah, dan Provinsi juga CV. Haruman sebagai pelaksana pembangunan.</p><p>Kemudian tanggal 19 januari 1966 gedung SMA Negeri Cianjur mulai dipakai dan pimpinannya mulai tanggal 20 April 1966 diserahterinakab dari Moh. Muchtar kepada Bapak Endy Suhenda, lalu tanggal 2 september 1966 pimpinan SMA Negeri Cianjur diserahkan pada Bapak D. Effendi. Mulai tanggal 19 Oktober 1967 pimpinan SMA Negeri Cianjur diserahterimakan lagi kepada Bapak Drs. Mamin Wijayakusuma.</p><p>Pada tahun 1980 tepatnya bulan April, Bapak Drs. Mamin Wijayakusuma digantikan oleh Bapak Drs. A. Riswaya sampai tahun 1983. Kemudian Desember 1983 Bapak Drs. A. Riswaya diganti oleh Bapak Drs. Maryono sampai tahun 1988. Bulan Juli 1988 Bapak Drs.Maryono digantikan oleh Bapak Drs. A. Subarkah sampai tahun 1993, lalu pada bulan Januari 1993 Bapak Drs. A. Subarkah digantikan oleh Bapak Drs. Nanai Said, yang kemudian digantikan oleh Bapak Drs. A. S. Arifin Sulaeman.</p>', 'gambar/only-akang.jpeg', 'M. Agung Husaini', 'Kepala Madrasah', '2023-02-28 11:06:31', '2023-02-28 11:06:31');

-- --------------------------------------------------------

--
-- Table structure for table `pdmts`
--

CREATE TABLE `pdmts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `pdlaki` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pdperempuan` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pdmts`
--

INSERT INTO `pdmts` (`id`, `pdlaki`, `pdperempuan`, `created_at`, `updated_at`) VALUES
(1, '100', '232', '2023-02-11 05:50:56', '2023-02-11 21:25:34');

-- --------------------------------------------------------

--
-- Table structure for table `pdpesantren`
--

CREATE TABLE `pdpesantren` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `pdlaki` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pdperempuan` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pdpesantren`
--

INSERT INTO `pdpesantren` (`id`, `pdlaki`, `pdperempuan`, `created_at`, `updated_at`) VALUES
(1, '213', '159', '2023-02-11 18:55:57', '2023-02-11 22:13:05');

-- --------------------------------------------------------

--
-- Table structure for table `pdsma`
--

CREATE TABLE `pdsma` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `pdlaki` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pdperempuan` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pdsma`
--

INSERT INTO `pdsma` (`id`, `pdlaki`, `pdperempuan`, `created_at`, `updated_at`) VALUES
(1, '200', '230', '2023-02-11 18:55:45', '2023-02-11 18:55:45');

-- --------------------------------------------------------

--
-- Table structure for table `pendaftranmts`
--

CREATE TABLE `pendaftranmts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tahun_ajaran` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gambar` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pendaftranmts`
--

INSERT INTO `pendaftranmts` (`id`, `tahun_ajaran`, `gambar`, `created_at`, `updated_at`) VALUES
(1, '2023 - 2024', 'gambar/brosur-santri.jpg', '2023-02-28 12:35:33', '2023-02-28 12:35:33');

-- --------------------------------------------------------

--
-- Table structure for table `pendaftransantri`
--

CREATE TABLE `pendaftransantri` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tahun_ajaran` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gambar` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pendaftransantri`
--

INSERT INTO `pendaftransantri` (`id`, `tahun_ajaran`, `gambar`, `created_at`, `updated_at`) VALUES
(1, '2023 - 2024', 'gambar/brosur-santri.jpg', '2023-02-28 11:58:50', '2023-02-28 11:58:50');

-- --------------------------------------------------------

--
-- Table structure for table `pendaftransma`
--

CREATE TABLE `pendaftransma` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tahun_ajaran` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gambar` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pendaftransma`
--

INSERT INTO `pendaftransma` (`id`, `tahun_ajaran`, `gambar`, `created_at`, `updated_at`) VALUES
(1, '2023 - 2024', 'gambar/brosur-santri.jpg', '2023-02-28 12:39:14', '2023-02-28 12:39:14');

-- --------------------------------------------------------

--
-- Table structure for table `program`
--

CREATE TABLE `program` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `judul` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deskripsi` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `program`
--

INSERT INTO `program` (`id`, `judul`, `deskripsi`, `created_at`, `updated_at`) VALUES
(1, 'Kajian Kitab Kuning Salafi AMSTILATI', '<p>-</p>', '2023-02-21 03:21:58', '2023-02-28 08:56:37'),
(2, 'Diklat Amtsilati', '<p>-</p>', '2023-02-28 08:57:17', '2023-02-28 08:57:17'),
(3, 'Fan Bilaghah', '<p>-</p>', '2023-02-28 08:59:11', '2023-02-28 08:59:11'),
(4, 'Takhosus Fan Fiqih', '<p>-</p>', '2023-02-28 08:59:53', '2023-02-28 08:59:53'),
(5, 'RA Al-Istiqomah', '<p>-</p>', '2023-02-28 09:00:26', '2023-02-28 09:00:26'),
(6, 'MTs-SA Al-Istiqomah', '<p>-</p>', '2023-02-28 09:01:04', '2023-02-28 09:01:04'),
(7, 'SMA-I Al-Istiqomah', '<p>-</p>', '2023-02-28 09:01:27', '2023-02-28 09:01:27'),
(8, 'Akademik STAI Syamsul Ulum', '<p>-</p>', '2023-02-28 09:04:30', '2023-02-28 09:04:30'),
(9, 'Muhadatsah Arab Fusha', '<p>-</p>', '2023-02-28 09:05:01', '2023-02-28 09:05:01');

-- --------------------------------------------------------

--
-- Table structure for table `ra`
--

CREATE TABLE `ra` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `judul` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `gambar` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jabatan` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ra`
--

INSERT INTO `ra` (`id`, `judul`, `body`, `gambar`, `nama`, `jabatan`, `created_at`, `updated_at`) VALUES
(1, 'Selayang Pandang', '<p>SMAN 1 Cianjur didirikan pada tahun 1959 atas prakarsa tokoh masyarakat Cianjur beserta DPRD dan para orang tua murid yang anknya sudah tamat SLTP.</p><p>SMAN 1 Cianjur pada mulanya bernama SMA Badak Putih (swasta) dengan kepala sekolah Bapak Suryadi Wonoerdjojo. Pada bulan Oktober 1959 SMA Badak putih resmi berubah nama menjadi SMA Negeri dengan SK Menteri P&amp;K tanggal 15 Oktober 1959 No. 72/SK/B.III. Upacara peresmiannya pada tanggal 15 November 1959 di gedung Tjung Hwa Tjung Hwee yang kini bernama Wisma Karya. Mulai tanggal 1 Mei 1960 dengan SK Menteri P&amp;K tanggal 24 April 1960 No. 34037/C.I diangkatlah Bapak Moh. Muchtar sebagai direktur SMA Negeri Cianjur.</p><p>Pada tanggal 26 Desember 1964 dilakukan peletakan batu pertama pembangunan gedung SMA Negeri Cianjur (kampus yang ada sekarang) yang dihadiri oleh tokoh-tokoh masyarakat, Pemerintah Daerah, dan Provinsi juga CV. Haruman sebagai pelaksana pembangunan.</p><p>Kemudian tanggal 19 januari 1966 gedung SMA Negeri Cianjur mulai dipakai dan pimpinannya mulai tanggal 20 April 1966 diserahterinakab dari Moh. Muchtar kepada Bapak Endy Suhenda, lalu tanggal 2 september 1966 pimpinan SMA Negeri Cianjur diserahkan pada Bapak D. Effendi. Mulai tanggal 19 Oktober 1967 pimpinan SMA Negeri Cianjur diserahterimakan lagi kepada Bapak Drs. Mamin Wijayakusuma.</p><p>Pada tahun 1980 tepatnya bulan April, Bapak Drs. Mamin Wijayakusuma digantikan oleh Bapak Drs. A. Riswaya sampai tahun 1983. Kemudian Desember 1983 Bapak Drs. A. Riswaya diganti oleh Bapak Drs. Maryono sampai tahun 1988. Bulan Juli 1988 Bapak Drs.Maryono digantikan oleh Bapak Drs. A. Subarkah sampai tahun 1993, lalu pada bulan Januari 1993 Bapak Drs. A. Subarkah digantikan oleh Bapak Drs. Nanai Said, yang kemudian digantikan oleh Bapak Drs. A. S. Arifin Sulaeman.</p>', 'gambar/only-akang.jpeg', 'M. Agung Husaini', 'Kepala Madrasah', '2023-02-28 10:55:22', '2023-02-28 10:55:22');

-- --------------------------------------------------------

--
-- Table structure for table `sambutan`
--

CREATE TABLE `sambutan` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `gambar` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sambutan` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sambutan`
--

INSERT INTO `sambutan` (`id`, `gambar`, `nama`, `sambutan`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'gambar/only-akang.jpeg', 'K. H. Aden Ali Abduloh, M.Pd.I.', '<p>Yayasan pendidikan islam al-istiqomah adalah lembaga yang didalamnya diajarkan aqidah ahlissunnah wal jama’ah dengan berlandasan didikan berfokus pada pendidikan karakter yang ber-akhlaqul karimah menjalankan lingkungan ke-salafiyyah an tanpa menutup wawasan masa kini yang luas dan lebih baik dengan motto</p><p>\" المحافظة على القديم الصالح والأخد بالجديد الأصلح</p><p>Yayasan pendidikan islam al-istiqomah menyediakan beberapa lembaga pendidikan, diantaranya :&nbsp;</p><ol><li>Pondok pesantren dengan program unggulan :<ul><li>Metode amtsilati&nbsp;</li><li>Takhossus pasca amtsilati&nbsp;</li><li>Takhossus fan nahwu shorof ( kitab alfiyyah )&nbsp;</li><li>Takhossus fan fiqih&nbsp;</li><li>Program unggulan metode mabdai (fan bilaghah)&nbsp;</li><li>Muhadatsah arab fusha&nbsp;</li></ul></li><li>Raudhatul athfal al-istiqomah&nbsp;</li><li>Madrasah tsanawiyah al-istiqomah , dengan program unggulan :&nbsp;<ul><li>Metode membaca kitab kuning&nbsp;</li><li>Muhadatsah Bahasa arab fusha&nbsp;</li><li>Percakapan Bahasa inggris&nbsp;</li></ul></li><li>Sekolah menengah atas al-istiqomah , dengan program unggulan :&nbsp;<ul><li>Pendidikan berbasis pesantren&nbsp;</li><li>Pembinaan akhlaq dan ibadah intensif&nbsp;</li><li>Praktek membaca kitab kuning&nbsp;</li><li>Percakapan Bahasa arab fusha&nbsp;</li><li>Percakapan Bahasa inggris&nbsp;</li></ul></li></ol><p>Itulah yayasan pendidikan islam al-istiqomah, semoga semua lembaga yang bernaung di bawah yayasan pendidikan islam al-istiqomah bisa menjadi lembaga yang baik, terpuji, dan sangat bermanfa’at bagi agama dan bangsa.&nbsp;</p>', NULL, '2023-02-10 23:29:15', '2023-02-28 11:00:58');

-- --------------------------------------------------------

--
-- Table structure for table `sambutanmts`
--

CREATE TABLE `sambutanmts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `gambar` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sambutan` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sambutanmts`
--

INSERT INTO `sambutanmts` (`id`, `gambar`, `nama`, `sambutan`, `created_at`, `updated_at`) VALUES
(1, 'gambar/only-akang.jpeg', 'M. Agung Husaini', '<p>Yayasan pendidikan islam al-istiqomah adalah lembaga yang didalamnya diajarkan aqidah ahlissunnah wal jama’ah dengan berlandasan didikan berfokus pada pendidikan karakter yang ber-akhlaqul karimah menjalankan lingkungan ke-salafiyyah an tanpa menutup wawasan masa kini yang luas dan lebih baik dengan motto</p><p>\" المحافظة على القديم الصالح والأخد بالجديد الأصلح</p><p>Yayasan pendidikan islam al-istiqomah menyediakan beberapa lembaga pendidikan, diantaranya :&nbsp;</p><ol><li>Pondok pesantren dengan program unggulan :<ul><li>Metode amtsilati&nbsp;</li><li>Takhossus pasca amtsilati&nbsp;</li><li>Takhossus fan nahwu shorof ( kitab alfiyyah )&nbsp;</li><li>Takhossus fan fiqih&nbsp;</li><li>Program unggulan metode mabdai (fan bilaghah)&nbsp;</li><li>Muhadatsah arab fusha&nbsp;</li></ul></li><li>Raudhatul athfal al-istiqomah&nbsp;</li><li>Madrasah tsanawiyah al-istiqomah , dengan program unggulan :&nbsp;<ul><li>Metode membaca kitab kuning&nbsp;</li><li>Muhadatsah Bahasa arab fusha&nbsp;</li><li>Percakapan Bahasa inggris&nbsp;</li></ul></li><li>Sekolah menengah atas al-istiqomah , dengan program unggulan :&nbsp;<ul><li>Pendidikan berbasis pesantren&nbsp;</li><li>Pembinaan akhlaq dan ibadah intensif&nbsp;</li><li>Praktek membaca kitab kuning&nbsp;</li><li>Percakapan Bahasa arab fusha&nbsp;</li><li>Percakapan Bahasa inggris&nbsp;</li></ul></li></ol><p>Itulah yayasan pendidikan islam al-istiqomah, semoga semua lembaga yang bernaung di bawah yayasan pendidikan islam al-istiqomah bisa menjadi lembaga yang baik, terpuji, dan sangat bermanfa’at bagi agama dan bangsa.&nbsp;</p>', '2023-02-28 11:07:16', '2023-02-28 11:07:16');

-- --------------------------------------------------------

--
-- Table structure for table `sambutanra`
--

CREATE TABLE `sambutanra` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `gambar` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sambutan` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sambutanra`
--

INSERT INTO `sambutanra` (`id`, `gambar`, `nama`, `sambutan`, `created_at`, `updated_at`) VALUES
(1, 'gambar/only-akang.jpeg', 'M. Agung Husaini', '<p>Yayasan pendidikan islam al-istiqomah adalah lembaga yang didalamnya diajarkan aqidah ahlissunnah wal jama’ah dengan berlandasan didikan berfokus pada pendidikan karakter yang ber-akhlaqul karimah menjalankan lingkungan ke-salafiyyah an tanpa menutup wawasan masa kini yang luas dan lebih baik dengan motto</p><p>\" المحافظة على القديم الصالح والأخد بالجديد الأصلح</p><p>Yayasan pendidikan islam al-istiqomah menyediakan beberapa lembaga pendidikan, diantaranya :&nbsp;</p><ol><li>Pondok pesantren dengan program unggulan :<ul><li>Metode amtsilati&nbsp;</li><li>Takhossus pasca amtsilati&nbsp;</li><li>Takhossus fan nahwu shorof ( kitab alfiyyah )&nbsp;</li><li>Takhossus fan fiqih&nbsp;</li><li>Program unggulan metode mabdai (fan bilaghah)&nbsp;</li><li>Muhadatsah arab fusha&nbsp;</li></ul></li><li>Raudhatul athfal al-istiqomah&nbsp;</li><li>Madrasah tsanawiyah al-istiqomah , dengan program unggulan :&nbsp;<ul><li>Metode membaca kitab kuning&nbsp;</li><li>Muhadatsah Bahasa arab fusha&nbsp;</li><li>Percakapan Bahasa inggris&nbsp;</li></ul></li><li>Sekolah menengah atas al-istiqomah , dengan program unggulan :&nbsp;<ul><li>Pendidikan berbasis pesantren&nbsp;</li><li>Pembinaan akhlaq dan ibadah intensif&nbsp;</li><li>Praktek membaca kitab kuning&nbsp;</li><li>Percakapan Bahasa arab fusha&nbsp;</li><li>Percakapan Bahasa inggris&nbsp;</li></ul></li></ol><p>Itulah yayasan pendidikan islam al-istiqomah, semoga semua lembaga yang bernaung di bawah yayasan pendidikan islam al-istiqomah bisa menjadi lembaga yang baik, terpuji, dan sangat bermanfa’at bagi agama dan bangsa.&nbsp;</p>', '2023-02-28 11:00:35', '2023-02-28 11:00:35');

-- --------------------------------------------------------

--
-- Table structure for table `sambutansma`
--

CREATE TABLE `sambutansma` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `gambar` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sambutan` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sambutansma`
--

INSERT INTO `sambutansma` (`id`, `gambar`, `nama`, `sambutan`, `created_at`, `updated_at`) VALUES
(1, 'gambar/only-akang.jpeg', 'M. Agung Husaini', '<p>Yayasan pendidikan islam al-istiqomah adalah lembaga yang didalamnya diajarkan aqidah ahlissunnah wal jama’ah dengan berlandasan didikan berfokus pada pendidikan karakter yang ber-akhlaqul karimah menjalankan lingkungan ke-salafiyyah an tanpa menutup wawasan masa kini yang luas dan lebih baik dengan motto</p><p>\" المحافظة على القديم الصالح والأخد بالجديد الأصلح</p><p>Yayasan pendidikan islam al-istiqomah menyediakan beberapa lembaga pendidikan, diantaranya :&nbsp;</p><ol><li>Pondok pesantren dengan program unggulan :<ul><li>Metode amtsilati&nbsp;</li><li>Takhossus pasca amtsilati&nbsp;</li><li>Takhossus fan nahwu shorof ( kitab alfiyyah )&nbsp;</li><li>Takhossus fan fiqih&nbsp;</li><li>Program unggulan metode mabdai (fan bilaghah)&nbsp;</li><li>Muhadatsah arab fusha&nbsp;</li></ul></li><li>Raudhatul athfal al-istiqomah&nbsp;</li><li>Madrasah tsanawiyah al-istiqomah , dengan program unggulan :&nbsp;<ul><li>Metode membaca kitab kuning&nbsp;</li><li>Muhadatsah Bahasa arab fusha&nbsp;</li><li>Percakapan Bahasa inggris&nbsp;</li></ul></li><li>Sekolah menengah atas al-istiqomah , dengan program unggulan :&nbsp;<ul><li>Pendidikan berbasis pesantren&nbsp;</li><li>Pembinaan akhlaq dan ibadah intensif&nbsp;</li><li>Praktek membaca kitab kuning&nbsp;</li><li>Percakapan Bahasa arab fusha&nbsp;</li><li>Percakapan Bahasa inggris&nbsp;</li></ul></li></ol><p>Itulah yayasan pendidikan islam al-istiqomah, semoga semua lembaga yang bernaung di bawah yayasan pendidikan islam al-istiqomah bisa menjadi lembaga yang baik, terpuji, dan sangat bermanfa’at bagi agama dan bangsa.&nbsp;</p>', '2023-02-28 11:07:55', '2023-02-28 11:07:55');

-- --------------------------------------------------------

--
-- Table structure for table `sejarah`
--

CREATE TABLE `sejarah` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `gambar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `heading` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deskripsi` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sejarah`
--

INSERT INTO `sejarah` (`id`, `gambar`, `heading`, `deskripsi`, `created_at`, `updated_at`) VALUES
(1, 'gambar/isteqdepan.jpg', 'SEJARAH PONDOK PESANTREN SALAFIYAH AL ISTIQOMAH', '<p><strong>Sejarah Awal&nbsp;</strong></p><p>Pondok pesantren salafiyah Al istiqomah didirikan tahun 1971 M oleh KH MUHAEMIN HUSEN beliau adalah seorang pendatang dari daerah CIKALONG CIANJUR yang menikah dengan Hj.Syarifah Binti H Atori pada tahun 1969 M , beliau adalah seorang ulama yang masyhur dengan keilmuan nya dan masyhur dalam dawam wudhu nya sampai akhir hayat pun beliau selalu dawam dalam wudhu . Nasab ilmu KH MUHAEMIN HUSEN pertama beliau mondok di ponpes AL munawwir CILAKU ABC ,lalu di teruskan ke pesantren BAROS Cianjur , lalu di teruskan kembali ke ponpes SEMPUR Purwakarta . beliau sempat pula Tabarruk&nbsp; ke ponpes ternama lain nya seperti Pesantren Gentur ,pesantren Ciwaringin Cirebon DLL</p><p>Selang satu tahun Mama KH MUHAEMIN HUSEN mendirikan pondok pesantren yang di beri nama AL ISTIQOMAH , dimana bangunan awal baru ada masjid , satu bangunan pondok (pusaka) dan satu bangunan madrasah untuk di gunakan mengaji Alhamdulillah waktu itu walau baru satu bangunan pondok yang sudah di bangun . masyarakat setempat maupun dari luar daerah sangat antusias untuk memondokan putra putri nya di AL ISTIQOMAH ,namun karena hanya baru satupondok yang ada dan itu pun untuk laki laki maka santri putri yang ingin mesantren di AL ISTIQOMAH kala itu hanya menerima santri yang hanya mengaji (tidak sambil mondok) kalau istilah orang sunda itu SANTRI KALONG (santri yang&nbsp; datang pas jadwal ngaji saja, sehabis ngaji pulang lagi ke rumah masing – masing ) jumlah santri putra putri pada kala itu&nbsp; sekitar 30 – 40 orang .&nbsp;</p><p>Mama KH MUHAEIMIN HUSEN hanya mempunyai satu putra yaitu : KH APIPUDIN MUGHNI beliau lahir tahun&nbsp; 1945 M&nbsp; &nbsp; &nbsp; dan&nbsp; di pondokan di ponpes assalafiyah cipriangan lalu ke ponpes ASyujai’ Ciharashas lalu ke ponpes ciwaringin Cirebon</p><p>Kegiatan pondok terus berjalan , pada tahun 1966&nbsp; &nbsp; &nbsp; KH APIPUDIN MUGHNI menikah dengan ummi HJ EDEH ZENAB dari sukabumi . laludi karuniai 5 orang anak 4putra dan 1 putri</p><p>Pondok pesantren berjalan dengan lancar dibawah asuhan Mama KH MUHAEMIN HUSEN ,KH APIPIDIN MUGHNI dan KH ADEN ALI ASADULLOH (putra ke 3)yang telah bermukim dari tahun 1997 M</p><p>&nbsp;pada tahun 2000 M kondisi kesehatan mama kh muhaemin terus menurun sampai pada bulan robiutsani di tahun itu beliau wafat .</p><p><i><strong>SEJARAH HADIRNYA AMTSILATI DI PONPES SALAFIYAH AL ISTIQOMAH</strong></i></p><p>Ponpes salafiyah al&nbsp;istiqomah adalah pondok pesantren yang menerapkan system pembelajaran asli yang mengamalkan kajian klasik asli karya ulama terdahulu spt ngaji kitab kuning safinah , jurumiyah , tafsir dll melalui system ngaji sorogan , balagan , mudakarah yang di ajarkan oleh APA (KH APIPUDIN MUGNI ) dan AKANG (kh aden ali asadullah)</p><p>Sampai pada tahun 2001 KH ADEN ALI ASADULLAH (akang) di hubungi oleh gurunya dari garut untuk menghadiri seminar AMTSILATI yng saat itu di adakan di garut, seminar yang di isi oleh bah ya’I (KH TAUFIKUL HAKIM)</p><p>&nbsp;setelah mengikuti seminar , akang sangat tertarik dengan metode amtsilati&nbsp; sampai akang mendatangi dan bertabarruk langsung dengan bah ya’I berniyat untuk mengamalkan metode ajaib ini di pnpes salafiyah al istiqomah</p><p>Dan Alhamdulillah tanggapan bah ya’I saat itu sangat baik sehingga pinta beliau, akang jika ingin menerapkan metode ini ada baiknya untuk mengamati langsung terlebih dahulu bagaimana proses metode ini brjalan. Lalu berangkatlah akang ke jepara dan mengamati metode amtsilati disana selama kurang lebih satu bulan. Setelah mengamati langsung metode amtsilati disana bah ya’I berpesan : kiai kalau mau mengembangkan amtsilati alangkah baik nya untuk jadi iklan yang bagus harus buat dulu kader yang nanti di jadikan contoh.</p><p>Kader yang bagus untuk di jadikan iklan harus anak – anak, karna sebetulnya amtsilati ini adalah metode dasar bisa membaca kitab kuning untuk anak khususnya, umumnya untuk semua umur.&nbsp;</p><p>Dari apa yang di sampaikan mbah ya’i dan apa yang diamati oleh akang di jepara , benar adanya jika metode amtsilati harus di jalankan seperti itu, lalu pulanglah akang ke ponpes al-istiqomah, selang beberapa waktu madrasah yang di jadikan tempat ngaji anak santri bangunan atasnya mulai di bangun dan di jadikan pondok dan Alhamdulillah selesai di jadikan 3 kamar berukuran besar yang berlantai papan, sesuai bangunan pondok sederhana zaman dulu. Tujuan di bangunnya pondok ini untuk diisi oleh santri kecil. Karena akang berfikir “bagaimana bisa mendatangkan santri kecil untuk di jadikan kader amtsilati jika sarananya belum tersedia. “ karena pondok pusaka adalah pondok yang diisi santri yang sudah dewasa,bukan tidak mungkin jika santri kecil pun di masukan ke pondok pusaka namun di khawatirkan ketidak cocokannya lingkungan antara santri kecil dan santri dewasa.&nbsp;</p><p>Dan Alhamdulillah setelah adanya pondok baru diatas madrasah santri kecil pun mulai berdatangan dari berbagai daerah, waktu itu awwal – awwal santri kecil hanya sekitar kurang lebih 15 orang, dan 5 orang sengaja di didik untuk di jadikan contoh metode amtsilati. Waktu berjalan sampai pada tahun 2003 masehi barulah ponpes salafiyyah al istiqomah PEDE untuk menampilkan amtsilati dikalangan umum, waktu itu ponpes salafiyyah alistiqomah sengaja mengadakan seminar amtsilati yang mengundang langsung KH. TAUFIQUL HAKIM pada saat itu antusias peserta seminar sangat baik sampai saat itu kurang lebih 600 orang dari berbagai kota datang untuk mengikuti seminar.&nbsp;</p><p>Maka dari sejak itu jadilah ponpes al-istiqomah sebagai pondok pesantren koordinator amtsilati pertama di jawa barat, dan metode amtsilati terus maju dan berkembang sampai sekarang.</p><p><i><strong>SEJARAH HADIRNYA AMTSILATI DI PONPES SALAFIYAH AL ISTIQOMAH</strong></i></p><p>Ponpes salafiyah al&nbsp;istiqomah adalah pondok pesantren yang menerapkan system pembelajaran asli yang mengamalkan kajian klasik asli karya ulama terdahulu spt ngaji kitab kuning safinah , jurumiyah , tafsir dll melalui system ngaji sorogan , balagan , mudakarah yang di ajarkan oleh APA (KH APIPUDIN MUGNI ) dan AKANG (kh aden ali asadullah)</p><p>Sampai pada tahun 2001 KH ADEN ALI ASADULLAH (akang) di hubungi oleh gurunya dari garut untuk menghadiri seminar AMTSILATI yang saat itu di adakan di garut, seminar yang di isi oleh bah ya’I (KH TAUFIKUL HAKIM)</p><p>&nbsp;setelah mengikuti seminar , akang sangat tertarik dengan metode amtsilati&nbsp; sampai akang mendatangi dan bertabarruk langsung dengan bah ya’I berniyat untuk mengamalkan metode ajaib ini di pnpes salafiyah al istiqomah</p><p>Dan Alhamdulillah tanggapan bah ya’I saat itu sangat baik sehingga pinta beliau, akang jika ingin menerapkan metode ini ada baiknya untuk mengamati langsung terlebih dahulu bagaimana proses metode ini brjalan. Lalu berangkatlah akang ke jepara dan mengamati metode amtsilati disana selama kurang lebih satu bulan. Setelah mengamati langsung metode amtsilati disana bah ya’I berpesan : kiai kalau mau mengembangkan amtsilati alangkah baik nya untuk jadi iklan yang bagus harus buat dulu kader yang nanti di jadikan contoh.</p><p>Kader yang bagus untuk di jadikan iklan harus anak – anak, karna sebetulnya amtsilati ini adalah metode dasar bisa membaca kitab kuning untuk anak khususnya, umumnya untuk semua umur.&nbsp;</p><p>Dari apa yang di sampaikan mbah ya’i dan apa yang diamati oleh akang di jepara , benar adanya jika metode amtsilati harus di jalankan seperti itu, lalu pulanglah akang ke ponpes al-istiqomah, selang beberapa waktu madrasah yang di jadikan tempat ngaji anak santri bangunan atasnya mulai di bangun dan di jadikan pondok dan Alhamdulillah selesai di jadikan 3 kamar berukuran besar yang berlantai papan, sesuai bangunan pondok sederhana zaman dulu. Tujuan di bangunnya pondok ini untuk diisi oleh santri kecil. Karena akang berfikir “bagaimana bisa mendatangkan santri kecil untuk di jadikan kader amtsilati jika sarananya belum tersedia. “ karena pondok pusaka adalah pondok yang diisi santri yang sudah dewasa,bukan tidak mungkin jika santri kecil pun di masukan ke pondok pusaka namun di khawatirkan ketidak cocokannya lingkungan antara santri kecil dan santri dewasa.&nbsp;</p><p>Dan Alhamdulillah setelah adanya pondok baru diatas madrasah santri kecil pun mulai berdatangan dari berbagai daerah, waktu itu awwal – awwal santri kecil hanya sekitar kurang lebih 15 orang, dan 5 orang sengaja di didik untuk di jadikan contoh metode amtsilati. Waktu berjalan sampai pada tahun 2003 masehi barulah ponpes salafiyyah al istiqomah PEDE untuk menampilkan amtsilati dikalangan umum, waktu itu ponpes salafiyyah alistiqomah sengaja mengadakan seminar amtsilati yang mengundang langsung KH. TAUFIQUL HAKIM pada saat itu antusias peserta seminar sangat baik sampai saat itu kurang lebih 600 orang dari berbagai kota datang untuk mengikuti seminar.&nbsp;</p><p>Maka dari sejak itu jadilah ponpes al-istiqomah sebagai pondok pesantren koordinator amtsilati pertama di jawa barat, dan metode amtsilati terus maju dan berkembang sampai sekarang.</p>', '2023-02-12 07:51:36', '2023-02-28 09:56:33');

-- --------------------------------------------------------

--
-- Table structure for table `sma`
--

CREATE TABLE `sma` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `judul` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `gambar` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jabatan` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sma`
--

INSERT INTO `sma` (`id`, `judul`, `body`, `gambar`, `nama`, `jabatan`, `created_at`, `updated_at`) VALUES
(2, 'Selayang Pandang', '<p>SMAN 1 Cianjur didirikan pada tahun 1959 atas prakarsa tokoh masyarakat Cianjur beserta DPRD dan para orang tua murid yang anknya sudah tamat SLTP.</p><p>SMAN 1 Cianjur pada mulanya bernama SMA Badak Putih (swasta) dengan kepala sekolah Bapak Suryadi Wonoerdjojo. Pada bulan Oktober 1959 SMA Badak putih resmi berubah nama menjadi SMA Negeri dengan SK Menteri P&amp;K tanggal 15 Oktober 1959 No. 72/SK/B.III. Upacara peresmiannya pada tanggal 15 November 1959 di gedung Tjung Hwa Tjung Hwee yang kini bernama Wisma Karya. Mulai tanggal 1 Mei 1960 dengan SK Menteri P&amp;K tanggal 24 April 1960 No. 34037/C.I diangkatlah Bapak Moh. Muchtar sebagai direktur SMA Negeri Cianjur.</p><p>Pada tanggal 26 Desember 1964 dilakukan peletakan batu pertama pembangunan gedung SMA Negeri Cianjur (kampus yang ada sekarang) yang dihadiri oleh tokoh-tokoh masyarakat, Pemerintah Daerah, dan Provinsi juga CV. Haruman sebagai pelaksana pembangunan.</p><p>Kemudian tanggal 19 januari 1966 gedung SMA Negeri Cianjur mulai dipakai dan pimpinannya mulai tanggal 20 April 1966 diserahterinakab dari Moh. Muchtar kepada Bapak Endy Suhenda, lalu tanggal 2 september 1966 pimpinan SMA Negeri Cianjur diserahkan pada Bapak D. Effendi. Mulai tanggal 19 Oktober 1967 pimpinan SMA Negeri Cianjur diserahterimakan lagi kepada Bapak Drs. Mamin Wijayakusuma.</p><p>Pada tahun 1980 tepatnya bulan April, Bapak Drs. Mamin Wijayakusuma digantikan oleh Bapak Drs. A. Riswaya sampai tahun 1983. Kemudian Desember 1983 Bapak Drs. A. Riswaya diganti oleh Bapak Drs. Maryono sampai tahun 1988. Bulan Juli 1988 Bapak Drs.Maryono digantikan oleh Bapak Drs. A. Subarkah sampai tahun 1993, lalu pada bulan Januari 1993 Bapak Drs. A. Subarkah digantikan oleh Bapak Drs. Nanai Said, yang kemudian digantikan oleh Bapak Drs. A. S. Arifin Sulaeman.</p>', 'gambar/only-akang.jpeg', 'M. Agung Husaini', 'Kepala Sekolah', '2023-02-28 11:08:18', '2023-02-28 11:08:18');

-- --------------------------------------------------------

--
-- Table structure for table `struktur`
--

CREATE TABLE `struktur` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tahun_periode` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gambar` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `struktur`
--

INSERT INTO `struktur` (`id`, `tahun_periode`, `gambar`, `created_at`, `updated_at`) VALUES
(1, '2019-2024', 'gambar/breadcrumbs-bg.jpg', '2023-02-12 10:07:47', '2023-02-12 10:07:47');

-- --------------------------------------------------------

--
-- Table structure for table `strukturmts`
--

CREATE TABLE `strukturmts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tahun_periode` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gambar` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `strukturmts`
--

INSERT INTO `strukturmts` (`id`, `tahun_periode`, `gambar`, `created_at`, `updated_at`) VALUES
(1, '2019-2024', 'gambar/breadcrumbs-bg.jpg', '2023-02-28 11:09:54', '2023-02-28 11:09:54');

-- --------------------------------------------------------

--
-- Table structure for table `strukturra`
--

CREATE TABLE `strukturra` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tahun_periode` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gambar` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `strukturra`
--

INSERT INTO `strukturra` (`id`, `tahun_periode`, `gambar`, `created_at`, `updated_at`) VALUES
(1, '2019-2024', 'gambar/breadcrumbs-bg.jpg', '2023-02-28 11:05:19', '2023-02-28 11:05:19');

-- --------------------------------------------------------

--
-- Table structure for table `struktursma`
--

CREATE TABLE `struktursma` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tahun_periode` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gambar` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `struktursma`
--

INSERT INTO `struktursma` (`id`, `tahun_periode`, `gambar`, `created_at`, `updated_at`) VALUES
(1, '2019-2024', 'gambar/breadcrumbs-bg.jpg', '2023-02-28 11:10:35', '2023-02-28 11:10:35');

-- --------------------------------------------------------

--
-- Table structure for table `team`
--

CREATE TABLE `team` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `divisi_id` bigint(20) UNSIGNED DEFAULT NULL,
  `gambar` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jabatan` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `team`
--

INSERT INTO `team` (`id`, `divisi_id`, `gambar`, `nama`, `jabatan`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 'gambar/team-1.jpg', 'K. H. Aden Ali Abduloh, M.Pd.I.', 'Pimpinan Redaksi', 'leader', '2023-02-22 08:41:02', '2023-02-22 08:43:13'),
(2, 1, 'gambar/team-3.jpg', 'Van Der Wik', 'Bendahara', 'leader', '2023-02-22 08:41:26', '2023-02-22 08:43:37'),
(3, 1, 'gambar/team-2.jpg', 'Nadia Sabrina', 'Sekretaris', 'leader', '2023-02-22 08:42:08', '2023-02-22 08:42:08'),
(4, 1, 'gambar/team-1.jpg', 'Arul Khan', 'Anggota', 'member', '2023-02-22 08:46:36', '2023-02-22 08:46:36'),
(5, 1, 'gambar/team-3.jpg', 'Van Der Wik', 'Anggota', 'member', '2023-02-22 09:12:37', '2023-02-22 09:12:37'),
(6, 1, 'gambar/team-4.jpg', 'Nabila', 'Anggota', 'member', '2023-02-22 09:14:22', '2023-02-22 09:14:22'),
(7, 2, 'gambar/team-2.jpg', 'Neneng', 'Anggota', 'member', '2023-02-22 10:22:58', '2023-02-22 10:22:58'),
(8, 2, 'gambar/team-3.jpg', 'San Der N', 'Pimpinan Redaksi', 'leader', '2023-02-23 01:40:47', '2023-02-23 01:40:47'),
(9, 2, 'gambar/team-2.jpg', 'Nana', 'Bendahara', 'leader', '2023-02-23 01:43:29', '2023-02-23 01:43:29'),
(10, 2, 'gambar/team-4.jpg', 'Mia', 'Sekretaris', 'leader', '2023-02-23 01:43:51', '2023-02-23 01:43:51');

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
  `poto` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `level`, `poto`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin@gmail.com', NULL, '$2y$10$sqjCTK3o9c59FfKjoqNzbOJQpXwpDPimESohQ1aGxG.GsLiSHzifO', 'admin', 'gambar/Screenshot (44).png', NULL, '2023-02-08 03:13:21', '2023-02-10 12:45:07');

-- --------------------------------------------------------

--
-- Table structure for table `visimisi`
--

CREATE TABLE `visimisi` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `visi` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `misi` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `tujuan` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `visimisi`
--

INSERT INTO `visimisi` (`id`, `visi`, `misi`, `tujuan`, `created_at`, `updated_at`) VALUES
(1, '<p><i>“Mencetak Generasi Mandiri Penerus Ulama”</i></p>', '<p><i>“Melaksanakan Pendidikan berbasis Ilmu salafiyah dan akhlaqul karimah”</i></p>', NULL, '2023-02-12 09:25:31', '2023-02-28 10:16:11');

-- --------------------------------------------------------

--
-- Table structure for table `visimisimts`
--

CREATE TABLE `visimisimts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `visi` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `misi` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `tujuan` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `visimisimts`
--

INSERT INTO `visimisimts` (`id`, `visi`, `misi`, `tujuan`, `created_at`, `updated_at`) VALUES
(1, '<p>MEWUJUDKAN MADRASAH YANG UNGGUL DAN BERAKHLAQ MULIA</p>', '<ol><li>Memupukan jiwa ta\'at dan giat beribadah serta berbudi pekerti yang luhur.</li><li>Memiliki ilmu agama yang kuat dan pengetahuan umum yang luas.</li><li>Sehat jasmani dan rohani serta berkepribadian yang baik.</li><li>Mempunyai keterampialan serta disiplin dan bertanggung jawab.</li><li>Melaksanakan pembelajaran yang efektif dan optimal bagi setiap siswa.</li><li>Mengembangkan kurikulum sesuai dengan kurikulum yang berlaku dan memperhatikan kondisi madrasah.</li><li>Mengembangkan fasilitas pendidikan sesuai dengan kebutuhan.</li><li>Meningkatkan mutu akademi dan non akademi untuk mencapai standar kelulusan.</li><li>Mendorong peserta didik untuk mengenali potensi dirinya dan untuk meningkatkan motivasi berprestasi.</li><li>Membentuk lingkungan religius.</li></ol>', '<ol><li>Semua warga sekolah dapat melaksanakan ibadah tepat waktu, berjamaah, sesuai dengan agama islam.</li><li>Terbentuknya lulusan yang berkarakter, Giat beribadah, ta\'at terhadap peraturan, rajin belajar, jujur, disiplin, sportif, bertanggung jawab, percaya diri, tekun dan sabar, tangguh menghadapi tangtangan dan cobaan.</li><li>Hormat terhadap orang tua dan guru, peduli, sayang terhadap sesama dan cinta terhadap tanah air.</li><li>Menjadi sekolah yang mampu meraih prestasi didaerah maupun nasional melalui kegiatan olimpiade akademik dan non akademik.</li><li>Meningkatnya kompetensi seluruh pendidik dan tenaga kependidikan.</li><li>Sekolah mampu mengembangkan sistem informasi untuk mengontrol proses pembelajaran dan menyajikan data sebagai dasar pengambilan keputusan.</li><li>Menjadi sekolah yang mandiri, bersih, sehat, aman dan ramah terhadap lingkungan.</li><li>Tersedianya sarana dan prasarana belajar yang memadai.</li></ol>', '2023-02-28 11:09:31', '2023-02-28 11:09:31');

-- --------------------------------------------------------

--
-- Table structure for table `visimisira`
--

CREATE TABLE `visimisira` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `visi` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `misi` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `tujuan` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `visimisira`
--

INSERT INTO `visimisira` (`id`, `visi`, `misi`, `tujuan`, `created_at`, `updated_at`) VALUES
(1, '<p>“Terwujudnya generasi yang sehat, cerdas dan berakhlaqul Karimah”</p>', '<ol><li>Menyelenggarakan pembelajaran yang sesuai dengan kebutuhan anak usia dini.</li><li>Menumbuhkan kecerdasan anak usia dini.</li><li>Menanamkan keimanan dan ketaqwaan kepada Allah SWT.</li><li>Membiasakan akhlaq dan prilaku yang sesuai dengan ajaran islam.</li></ol>', '<ol><li>Mempersiapkan anak guna memasuki jenjang sekolah berikutnya.</li><li>Membantu orang tua guna membentuk anak yang cerdas intelektual dan emosional cerdas dalam beragama dan kreatif serta mandiri.</li><li>Membantu mengembangkan sikap beragama dan pemahaman beragama sejak dini.</li></ol>', '2023-02-28 11:04:58', '2023-02-28 11:04:58');

-- --------------------------------------------------------

--
-- Table structure for table `visimisisma`
--

CREATE TABLE `visimisisma` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `visi` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `misi` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `tujuan` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `visimisisma`
--

INSERT INTO `visimisisma` (`id`, `visi`, `misi`, `tujuan`, `created_at`, `updated_at`) VALUES
(1, '<p>Mewujudkan Generasi Yang Kreatif Mandiri dan Berakhlak Islami</p>', '<ol><li>Memacu kreatifitas siswa dalam bidang akademik maupun non akademik.</li><li>Melaksanakan pembelajaran dengan berbagai media pembelajaran.</li><li>Melaksanakan pembelajaran belajar yang efektif, kreatif, inovatif dan menyenangkan.</li><li>Melakukan kegiatan melalui ekstrakurikuler secara efektif dengan bakat dan minat siswa.</li><li>Meningkatkan kompetensi pendidik dan tenaga kependidikan.</li><li>Menyediakan fasilitas belajar yang memadai baik fisik maupun non fisik.</li><li>Menumbuhkembangkan sikap penghayatan dan pengamalan nilai-nilai agama Islam untuk membentuk siswa berakhlakul karimah.</li><li>Meningkatkan Kerjasama dengan berbagai pihak dalam rangka meningkatkan pengetahuan dan kemampuan peserta didik.</li></ol>', '<ol><li>Meningkatkan potensi dan kompetensi seluruh peserta didik, pendidik dan tenaga kependidikan.</li><li>Menjadikan sekolah yang mandiri, kreatif dan menanamkan nilai-nilai budaya local serta nasional.</li><li>Tersedianya sarana dan prasarana yang memadai.</li><li>Semua warga sekolah dapat melakukan ibadah tepat waktu, berjamaah sesuai dengan syariat Islam.</li><li>Terbentuknya lulusan yang berkarakter, giat beribadah dan taat terhadap peraturan.</li></ol>', '2023-02-28 11:10:24', '2023-02-28 11:10:24');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `alumi`
--
ALTER TABLE `alumi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `background`
--
ALTER TABLE `background`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `berita`
--
ALTER TABLE `berita`
  ADD PRIMARY KEY (`id`),
  ADD KEY `berita_kategori_id_index` (`kategori_id`),
  ADD KEY `berita_user_id_index` (`user_id`);

--
-- Indexes for table `biayamts`
--
ALTER TABLE `biayamts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `biayasantri`
--
ALTER TABLE `biayasantri`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `biayasma`
--
ALTER TABLE `biayasma`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `biografi`
--
ALTER TABLE `biografi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `divisi`
--
ALTER TABLE `divisi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ekskul`
--
ALTER TABLE `ekskul`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ekskulmts`
--
ALTER TABLE `ekskulmts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ekskulpondok`
--
ALTER TABLE `ekskulpondok`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `faq`
--
ALTER TABLE `faq`
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
-- Indexes for table `logo`
--
ALTER TABLE `logo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mts`
--
ALTER TABLE `mts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pdmts`
--
ALTER TABLE `pdmts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pdpesantren`
--
ALTER TABLE `pdpesantren`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pdsma`
--
ALTER TABLE `pdsma`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pendaftranmts`
--
ALTER TABLE `pendaftranmts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pendaftransantri`
--
ALTER TABLE `pendaftransantri`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pendaftransma`
--
ALTER TABLE `pendaftransma`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `program`
--
ALTER TABLE `program`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ra`
--
ALTER TABLE `ra`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sambutan`
--
ALTER TABLE `sambutan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sambutanmts`
--
ALTER TABLE `sambutanmts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sambutanra`
--
ALTER TABLE `sambutanra`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sambutansma`
--
ALTER TABLE `sambutansma`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sejarah`
--
ALTER TABLE `sejarah`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sma`
--
ALTER TABLE `sma`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `struktur`
--
ALTER TABLE `struktur`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `strukturmts`
--
ALTER TABLE `strukturmts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `strukturra`
--
ALTER TABLE `strukturra`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `struktursma`
--
ALTER TABLE `struktursma`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `team`
--
ALTER TABLE `team`
  ADD PRIMARY KEY (`id`),
  ADD KEY `team_divisi_id_index` (`divisi_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `visimisi`
--
ALTER TABLE `visimisi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `visimisimts`
--
ALTER TABLE `visimisimts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `visimisira`
--
ALTER TABLE `visimisira`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `visimisisma`
--
ALTER TABLE `visimisisma`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `alumi`
--
ALTER TABLE `alumi`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `background`
--
ALTER TABLE `background`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `berita`
--
ALTER TABLE `berita`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `biayamts`
--
ALTER TABLE `biayamts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `biayasantri`
--
ALTER TABLE `biayasantri`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `biayasma`
--
ALTER TABLE `biayasma`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `biografi`
--
ALTER TABLE `biografi`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `divisi`
--
ALTER TABLE `divisi`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `ekskul`
--
ALTER TABLE `ekskul`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `ekskulmts`
--
ALTER TABLE `ekskulmts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `ekskulpondok`
--
ALTER TABLE `ekskulpondok`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `faq`
--
ALTER TABLE `faq`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `header`
--
ALTER TABLE `header`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `home`
--
ALTER TABLE `home`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `kotak`
--
ALTER TABLE `kotak`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `logo`
--
ALTER TABLE `logo`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `mts`
--
ALTER TABLE `mts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `pdmts`
--
ALTER TABLE `pdmts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `pdpesantren`
--
ALTER TABLE `pdpesantren`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `pdsma`
--
ALTER TABLE `pdsma`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `pendaftranmts`
--
ALTER TABLE `pendaftranmts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `pendaftransantri`
--
ALTER TABLE `pendaftransantri`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `pendaftransma`
--
ALTER TABLE `pendaftransma`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `program`
--
ALTER TABLE `program`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `ra`
--
ALTER TABLE `ra`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sambutan`
--
ALTER TABLE `sambutan`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sambutanmts`
--
ALTER TABLE `sambutanmts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sambutanra`
--
ALTER TABLE `sambutanra`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sambutansma`
--
ALTER TABLE `sambutansma`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sejarah`
--
ALTER TABLE `sejarah`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sma`
--
ALTER TABLE `sma`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `struktur`
--
ALTER TABLE `struktur`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `strukturmts`
--
ALTER TABLE `strukturmts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `strukturra`
--
ALTER TABLE `strukturra`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `struktursma`
--
ALTER TABLE `struktursma`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `team`
--
ALTER TABLE `team`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `visimisi`
--
ALTER TABLE `visimisi`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `visimisimts`
--
ALTER TABLE `visimisimts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `visimisira`
--
ALTER TABLE `visimisira`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `visimisisma`
--
ALTER TABLE `visimisisma`
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

--
-- Constraints for table `team`
--
ALTER TABLE `team`
  ADD CONSTRAINT `team_divisi_id_foreign` FOREIGN KEY (`divisi_id`) REFERENCES `divisi` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
