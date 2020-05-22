-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 21, 2020 at 11:55 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecam-library`
--

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
(3, '2019_08_31_194921_create_table_kategori', 2),
(4, '2019_09_04_220643_create_table_buku', 3),
(5, '2019_09_05_004011_create_table_bukus', 4);

-- --------------------------------------------------------

--
-- Table structure for table `m_buku`
--

CREATE TABLE `m_buku` (
  `id` int(10) UNSIGNED NOT NULL,
  `kategori` int(11) NOT NULL,
  `judul` varchar(115) COLLATE utf8mb4_unicode_ci NOT NULL,
  `keterangan` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `stock` int(11) NOT NULL,
  `penulis` varchar(115) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gambar` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `m_buku`
--

INSERT INTO `m_buku` (`id`, `kategori`, `judul`, `keterangan`, `stock`, `penulis`, `gambar`, `status`, `created_at`, `updated_at`) VALUES
(1, 2, 'The End of The Ocean', '<p>Kualitas masih bagus.</p>', 3, 'Maja Lunde', 'x510.jpg', 1, '2020-05-21 06:01:01', '2020-05-21 06:01:01'),
(2, 2, 'Career of Evil', '<p>Kualitas masih bagus.</p>', 1, 'Robert Galbraith', '51t+VGJ5riL.jpg', 1, '2020-05-21 06:04:25', '2020-05-21 06:09:39'),
(3, 2, 'The Light Between Oceans', '<p>Kualitas masih bagus.</p>', 0, 'M. L. Stedman', '9781451681758_p0_v4_s1200x630.jpg', 0, '2020-05-21 06:05:47', '2020-05-21 06:33:17'),
(4, 4, 'Cosmos', '<p>Kualitas masih bagus.</p>', 3, 'Carl Sagan', '9780345539434.jpg', 1, '2020-05-21 06:06:44', '2020-05-21 08:15:12'),
(5, 4, 'Nalar Ayat-Ayat Semesta', '<p>Kualitas masih bagus.</p>', 3, 'Agus Purwanto', 'NALAR_AYAT_AYAT_SEMESTA.jpg', 1, '2020-05-21 06:08:06', '2020-05-21 06:10:15'),
(6, 4, 'Clean Code', '<p>Kualitas masih bagus.</p>', 0, 'Robert C. Martin', '9780132350884.jpg', 1, '2020-05-21 06:09:04', '2020-05-21 06:43:41'),
(7, 11, 'Shingeki no Kyojin vol. 31', '<p>Kualitas cukup bagus.</p>', 2, 'Hajime Isayama', 'q6mbbggho7k41.jpg', 1, '2020-05-21 06:11:42', '2020-05-21 06:12:30'),
(8, 11, 'Ao Haru Ride vol. 12', '<p>Kualitas masih bagus.</p>', 2, 'Sakisaka Io', 'a785bab4a8c81bb401d47be0fb1e935f.jpg', 1, '2020-05-21 06:13:50', '2020-05-21 06:13:50'),
(9, 11, 'Gyo vol. 2', '<p>Kualitas cukup bagus.</p>', 0, 'Ito Junji', '564874._SX318_.jpg', 0, '2020-05-21 06:14:51', '2020-05-21 06:38:42'),
(10, 3, 'Tech\'s Ultimate Entrepreneur: Elon Musk', '<p>Kualitas masih bagus</p>', 0, 'CEO Magazine', '0b3286ccaabfc0a103f25e069f2d6b8e.jpg', 1, '2020-05-21 06:17:56', '2020-05-21 06:49:05'),
(11, 3, 'Golden Boy: Jeon Jungkook', '<p>Kualitas rusak.&nbsp;</p>', 1, 'VOGUE', 'unnamed-13.jpg', 1, '2020-05-21 06:19:27', '2020-05-21 06:45:35'),
(12, 3, 'The World\'s Leading Scientist: Stephen Hawking', '<p>Kualitas masih bagus.</p>', 1, 'Wired', 'Wired-Dec17-Cover.jpg', 1, '2020-05-21 06:20:39', '2020-05-21 06:47:16'),
(13, 4, 'Making Things Happen', '<p>Kualitas cukup bagus.</p>', 3, 'Elizabeth Murphy', 'business_bookcover.webp', 1, '2020-05-21 06:22:17', '2020-05-21 06:22:17'),
(14, 4, 'Encyclopedia of Animals: A Complete Visual Guide', '<p>Kualitas masih bagus.</p>', 0, 'National Geographic', 'A1hLElwKmdL.jpg', 0, '2020-05-21 06:27:47', '2020-05-21 06:39:08'),
(15, 4, 'Minna no Nihongo', '<p>Kualitas cukup bagus.</p>', 2, 'Surie Nettowaku, Kabushiki Kaisha', '81p1NtOqNHL.jpg', 1, '2020-05-21 06:30:09', '2020-05-21 06:30:09');

-- --------------------------------------------------------

--
-- Table structure for table `m_kategori`
--

CREATE TABLE `m_kategori` (
  `id` int(10) UNSIGNED NOT NULL,
  `nama` varchar(115) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `m_kategori`
--

INSERT INTO `m_kategori` (`id`, `nama`, `created_at`, `updated_at`) VALUES
(2, 'Novel', '2020-03-17 07:10:07', '2020-03-17 07:10:07'),
(3, 'Majalah', '2020-05-20 15:11:29', '2020-05-20 15:11:29'),
(4, 'Buku Belajar', '2020-05-20 15:12:22', '2020-05-20 15:12:22'),
(11, 'Komik', '2020-05-21 05:59:15', '2020-05-21 05:59:15');

-- --------------------------------------------------------

--
-- Table structure for table `m_status`
--

CREATE TABLE `m_status` (
  `id` int(11) NOT NULL,
  `kode` int(11) DEFAULT NULL,
  `nama` varchar(115) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `m_status`
--

INSERT INTO `m_status` (`id`, `kode`, `nama`) VALUES
(1, 0, 'Menunggu Verifikasi'),
(2, 1, 'Disetujui'),
(3, 2, 'Ditolak'),
(4, 3, 'Dikembalikan');

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
-- Table structure for table `peminjaman`
--

CREATE TABLE `peminjaman` (
  `id` int(11) NOT NULL,
  `buku` int(11) NOT NULL,
  `user` int(11) NOT NULL,
  `status` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `peminjaman`
--

INSERT INTO `peminjaman` (`id`, `buku`, `user`, `status`, `created_at`, `updated_at`) VALUES
(5, 4, 2, 3, '2020-05-20 15:42:06', '2020-05-21 15:15:12'),
(6, 1, 4, 1, '2020-05-20 15:42:06', '2020-05-20 15:42:06'),
(7, 8, 5, 1, '2020-05-20 15:42:06', '2020-05-20 15:42:06'),
(8, 7, 6, 1, '2020-05-20 15:42:06', '2020-05-20 15:42:06'),
(9, 15, 7, 1, '2020-05-20 15:42:06', '2020-05-20 15:42:06'),
(10, 2, 8, 1, '2020-05-20 15:42:06', '2020-05-20 15:42:06'),
(14, 5, 9, 1, '2020-05-20 15:42:06', '2020-05-20 15:42:06'),
(15, 9, 10, 2, '2020-05-20 15:42:06', '2020-05-21 03:25:34'),
(16, 13, 11, 0, '2020-05-20 22:30:24', '2020-05-20 23:05:53'),
(17, 12, 12, 0, '2020-05-20 22:30:31', '2020-05-20 22:30:31'),
(18, 4, 13, 2, '2020-05-20 22:30:31', '2020-05-21 14:09:43'),
(19, 2, 14, 1, '2020-05-20 22:30:31', '2020-05-20 22:30:31'),
(23, 10, 2, 0, '2020-05-21 14:59:41', '2020-05-21 14:59:41');

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
  `status` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Nabila Putri Listyanto', 'nabila@gmail.com', NULL, '$2y$10$AJ9Mdz7lRRjyDh3oWloKyOdSl6O8.gTC9TocOwa2bkgTomVN2zpH2', 'gXZzpKTQaJDFjsfMrclIOK3QILRrTVUgauXFghdBbeYq2eWndiexGFeYmm4d', 2, '2020-05-20 08:42:06', '2020-05-20 08:42:06'),
(2, 'Lutvia Rahmawati', 'lutvia@gmail.com', NULL, '$2y$10$AJ9Mdz7lRRjyDh3oWloKyOdSl6O8.gTC9TocOwa2bkgTomVN2zpH2', NULL, 3, '2020-05-20 08:42:06', '2020-05-20 08:42:06'),
(3, 'Rohmatus Sholihah', 'rohmatus@gmail.com', NULL, '$2y$10$4YqwSV34qjAOp1hZ4oJkieNuITe1X1EpJt9bF7Z5I/IG0uVOeUz7m', NULL, 1, '2020-05-20 16:27:40', '2020-05-20 16:27:40'),
(4, 'Safania', 'safania@gmail.com', NULL, '$2y$10$4YqwSV34qjAOp1hZ4oJkieNuITe1X1EpJt9bF7Z5I/IG0uVOeUz7m', NULL, 3, '2020-05-20 16:27:57', '2020-05-20 16:27:57'),
(5, 'Vanessa Pramessari', 'vanessa@gmail.com', NULL, '$2y$10$4YqwSV34qjAOp1hZ4oJkieNuITe1X1EpJt9bF7Z5I/IG0uVOeUz7m', NULL, 3, '2020-05-20 16:28:13', '2020-05-20 16:28:13'),
(6, 'Joko Widodo', 'joko@gmail.com', NULL, '$2y$10$4YqwSV34qjAOp1hZ4oJkieNuITe1X1EpJt9bF7Z5I/IG0uVOeUz7m', NULL, 3, '2020-05-20 16:28:29', '2020-05-20 16:28:29'),
(7, 'Moch. Aldi', 'aldi@gmail.com', NULL, '$2y$10$4YqwSV34qjAOp1hZ4oJkieNuITe1X1EpJt9bF7Z5I/IG0uVOeUz7m', NULL, 3, '2020-05-20 16:29:52', '2020-05-20 16:29:52'),
(8, 'Ahmad Effendi', 'effendi@gmail.com', NULL, '$2y$10$4YqwSV34qjAOp1hZ4oJkieNuITe1X1EpJt9bF7Z5I/IG0uVOeUz7m', NULL, 3, '2020-05-20 16:30:45', '2020-05-20 16:30:45'),
(9, 'Alifah Nur', 'alifah@gmail.com', NULL, '$2y$10$4YqwSV34qjAOp1hZ4oJkieNuITe1X1EpJt9bF7Z5I/IG0uVOeUz7m', NULL, 3, '2020-05-20 16:31:30', '2020-05-20 16:31:30'),
(10, 'Najwa Galuh', 'najwa@gmail.com', NULL, '$2y$10$4YqwSV34qjAOp1hZ4oJkieNuITe1X1EpJt9bF7Z5I/IG0uVOeUz7m', NULL, 3, '2020-05-20 16:32:02', '2020-05-20 16:32:02'),
(11, 'Rizky Febrian', 'rizky@gmail.com', NULL, '$2y$10$4YqwSV34qjAOp1hZ4oJkieNuITe1X1EpJt9bF7Z5I/IG0uVOeUz7m', NULL, 3, '2020-05-20 16:33:04', '2020-05-20 16:33:04'),
(12, 'Fira Putri', 'fira@gmail.com', NULL, '$2y$10$4YqwSV34qjAOp1hZ4oJkieNuITe1X1EpJt9bF7Z5I/IG0uVOeUz7m', NULL, 3, '2020-05-20 16:33:48', '2020-05-20 16:33:48'),
(13, 'Ahmad Agustin', 'agustin@gmail.com', NULL, '$2y$10$NGgZW.afF.Bi4rmc5fYO4uwlOEPgdL99Rw5OfVrXANtLzgipko4kC', NULL, 3, '2020-05-21 06:54:24', '2020-05-21 06:54:24'),
(14, 'Moch. Tirta', 'tirta@gmail.com', NULL, '$2y$10$6Ck1rVF/Uq8hhNn3i3RTOeigvsc1cQ3KFgBZ8axZXg2rB.z7yxK3G', NULL, 3, '2020-05-21 07:02:32', '2020-05-21 07:02:32'),
(33, 'Jeon Jungkook', 'jungkook@gmail.com', NULL, '$2y$10$46rz.Wos6UkxitauNNwNyuRiQheXjof7yv/w1h48krOf6Rfgu8fYu', NULL, NULL, '2020-05-21 12:56:04', '2020-05-21 12:56:04');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `m_buku`
--
ALTER TABLE `m_buku`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `m_kategori`
--
ALTER TABLE `m_kategori`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `m_status`
--
ALTER TABLE `m_status`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `peminjaman`
--
ALTER TABLE `peminjaman`
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
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `m_buku`
--
ALTER TABLE `m_buku`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `m_kategori`
--
ALTER TABLE `m_kategori`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `m_status`
--
ALTER TABLE `m_status`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `peminjaman`
--
ALTER TABLE `peminjaman`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
