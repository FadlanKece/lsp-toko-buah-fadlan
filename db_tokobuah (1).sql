-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 24 Jun 2024 pada 01.02
-- Versi server: 10.4.32-MariaDB
-- Versi PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_tokobuah`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `about`
--

CREATE TABLE `about` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `judul_website` varchar(255) NOT NULL,
  `logo` varchar(255) NOT NULL,
  `deskripsi` text NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `telepon` varchar(255) NOT NULL,
  `atas_nama` varchar(255) NOT NULL,
  `no_rekening` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `about`
--

INSERT INTO `about` (`id`, `judul_website`, `logo`, `deskripsi`, `alamat`, `email`, `telepon`, `atas_nama`, `no_rekening`, `created_at`, `updated_at`) VALUES
(1, 'Freshpick Corner', 'logo.png', 'Freshpick Corner', 'Jl. Bogor', 'freshpick@gmail.com', '081234567890', 'Test', '081234567890', '2024-03-28 15:34:35', '2024-03-28 15:34:35');

-- --------------------------------------------------------

--
-- Struktur dari tabel `carts`
--

CREATE TABLE `carts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_customer` int(11) NOT NULL,
  `id_barang` int(11) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `total` int(11) NOT NULL,
  `is_checkout` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `carts`
--

INSERT INTO `carts` (`id`, `id_customer`, `id_barang`, `jumlah`, `total`, `is_checkout`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 5, 50, 1, '2024-03-28 15:38:43', '2024-03-30 15:57:34'),
(2, 1, 1, 3, 30, 1, '2024-03-29 16:13:11', '2024-03-30 15:57:34'),
(3, 1, 1, 4, 40, 1, '2024-03-29 17:42:10', '2024-03-30 15:57:34'),
(4, 1, 1, 17, 170, 1, '2024-03-30 15:38:51', '2024-03-30 15:57:34'),
(5, 1, 1, 7, 70, 1, '2024-03-30 15:44:28', '2024-03-30 15:57:34'),
(6, 1, 1, 4, 40, 1, '2024-03-30 15:46:30', '2024-03-30 15:57:34'),
(7, 1, 1, 6, 60, 1, '2024-03-30 15:56:21', '2024-03-30 15:57:34'),
(8, 1, 1, 4, 40, 1, '2024-03-30 15:57:19', '2024-03-30 15:57:34'),
(9, 1, 1, 5, 50, 1, '2024-03-30 16:01:00', '2024-03-30 16:01:12'),
(10, 1, 2, 3, 60, 1, '2024-04-11 02:20:47', '2024-04-11 02:21:03'),
(22, 1, 1, 1, 10000, 1, '2024-04-25 01:04:37', '2024-06-11 22:47:55'),
(24, 1, 2, 4, 80000, 1, '2024-06-11 22:18:10', '2024-06-11 22:47:55'),
(25, 1, 1, 1, 10000, 0, '2024-06-11 22:49:36', '2024-06-11 22:49:36'),
(28, 2, 7, 1, 21000, 0, '2024-06-19 04:55:56', '2024-06-19 04:55:56'),
(29, 2, 4, 1, 20000, 0, '2024-06-19 09:13:44', '2024-06-19 09:13:44'),
(30, 3, 4, 1, 20000, 1, '2024-06-23 22:47:19', '2024-06-23 22:51:30'),
(31, 3, 6, 1, 12000, 1, '2024-06-23 22:47:26', '2024-06-23 22:51:30'),
(32, 3, 7, 1, 21000, 1, '2024-06-23 22:53:39', '2024-06-23 22:54:08');

-- --------------------------------------------------------

--
-- Struktur dari tabel `customers`
--

CREATE TABLE `customers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama_customer` varchar(255) NOT NULL,
  `no_hp` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `customers`
--

INSERT INTO `customers` (`id`, `nama_customer`, `no_hp`, `email`, `address`, `password`, `created_at`, `updated_at`) VALUES
(2, 'fadlan', '0812212112', 'fadlan@ahmad.kamil', '123', '$2y$10$o.M4JEd7/3Kcd9AZ05J6kuaa266izHw9Vt2Ydk/AeTRpSxNjQHb9.', '2024-06-12 08:01:28', '2024-06-12 08:01:28'),
(3, 'fadlan', '12345678', 'fadlan@gmail.com', 'jalan jalan', '$2y$10$BACacfOf1oaTbLkJhpbslu3R4n9vROT.33.48tYNx2fgmcwHd3Ii.', '2024-06-23 22:46:52', '2024-06-23 22:46:52');

-- --------------------------------------------------------

--
-- Struktur dari tabel `discounts`
--

CREATE TABLE `discounts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_barang` int(11) NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `percentage` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `discounts`
--

INSERT INTO `discounts` (`id`, `id_barang`, `start_date`, `end_date`, `percentage`, `created_at`, `updated_at`) VALUES
(1, 6, '2024-06-05', '2024-07-05', 20, NULL, '2024-04-20 09:37:12');

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
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
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_04_10_013412_create_products_table', 1),
(6, '2023_04_10_015406_create_customers_table', 1),
(7, '2023_04_10_023448_create_reviews_table', 1),
(8, '2023_04_10_024318_create_orders_table', 1),
(9, '2023_06_01_034756_create_payments_table', 1),
(10, '2023_06_05_142345_create_about_table', 1),
(11, '2023_06_07_142633_create_carts_table', 1),
(12, '2024_03_28_175301_create_wishlists_table', 1),
(13, '2024_03_29_222903_create_discounts_table', 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_customer` int(11) NOT NULL,
  `invoice` int(11) NOT NULL,
  `grand_total` int(11) NOT NULL,
  `status` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `orders`
--

INSERT INTO `orders` (`id`, `id_customer`, `invoice`, `grand_total`, `status`, `created_at`, `updated_at`) VALUES
(2, 1, 24032909, 50, 'Baru', '2024-03-29 14:56:09', NULL),
(3, 1, 24032915, 30, 'Baru', '2024-03-29 16:13:15', NULL),
(4, 1, 24033029, 40, 'Baru', '2024-03-29 17:42:29', NULL),
(5, 1, 24033001, 170, 'Baru', '2024-03-30 15:39:01', NULL),
(6, 1, 24033033, 70, 'Baru', '2024-03-30 15:44:33', NULL),
(7, 1, 24033015, 40, 'Baru', '2024-03-30 15:50:15', NULL),
(8, 1, 24033024, 60, 'Baru', '2024-03-30 15:56:24', NULL),
(9, 1, 24033022, 40, 'Baru', '2024-03-30 15:57:22', NULL),
(10, 1, 24033004, 50, 'Baru', '2024-03-30 16:01:04', NULL),
(11, 1, 24041155, 60, 'Baru', '2024-04-11 02:20:55', NULL),
(12, 3, 24042524, 17800, 'Baru', '2024-04-25 01:05:24', NULL),
(13, 1, 24061256, 90000, 'Baru', '2024-06-11 22:18:56', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `order_details`
--

CREATE TABLE `order_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_order` int(11) NOT NULL,
  `id_produk` int(11) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `total` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `order_details`
--

INSERT INTO `order_details` (`id`, `id_order`, `id_produk`, `jumlah`, `total`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 5, 50, '2024-03-28 15:38:46', NULL),
(2, 2, 1, 5, 50, '2024-03-29 14:56:09', NULL),
(3, 3, 1, 3, 30, '2024-03-29 16:13:15', NULL),
(4, 4, 1, 4, 40, '2024-03-29 17:42:29', NULL),
(5, 5, 1, 17, 170, '2024-03-30 15:39:01', NULL),
(6, 6, 1, 7, 70, '2024-03-30 15:44:33', NULL),
(7, 7, 1, 4, 40, '2024-03-30 15:50:15', NULL),
(8, 8, 1, 6, 60, '2024-03-30 15:56:24', NULL),
(9, 9, 1, 4, 40, '2024-03-30 15:57:22', NULL),
(10, 10, 1, 5, 50, '2024-03-30 16:01:04', NULL),
(11, 11, 2, 3, 60, '2024-04-11 02:20:55', NULL),
(12, 12, 2, 3, 7800, '2024-04-25 01:05:24', NULL),
(13, 12, 1, 1, 10000, '2024-04-25 01:05:24', NULL),
(14, 13, 1, 1, 10000, '2024-06-11 22:18:56', NULL),
(15, 13, 2, 4, 80000, '2024-06-11 22:18:56', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `payments`
--

CREATE TABLE `payments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_order` int(11) NOT NULL,
  `id_customer` int(11) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `address_detail` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `no_rekening` varchar(255) NOT NULL,
  `atas_nama` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `payments`
--

INSERT INTO `payments` (`id`, `id_order`, `id_customer`, `jumlah`, `address_detail`, `status`, `no_rekening`, `atas_nama`, `created_at`, `updated_at`) VALUES
(1, 2, 1, 50, 'Perumahan Bojong Depok Baru', 'MENUNGGU', '085693405490', 'Test', '2024-03-29 14:56:21', '2024-03-29 14:56:21'),
(2, 2, 1, 30, 'Perumahan Bojong Depok Baru', 'MENUNGGU', '085693405490', 'Test', '2024-03-29 16:13:23', '2024-03-29 16:13:23'),
(3, 2, 1, 30, 'Perumahan Bojong Depok Baru', 'MENUNGGU', '085693405490', 'Test', '2024-03-29 16:14:07', '2024-03-29 16:14:07'),
(4, 2, 1, 40, 'Perumahan Bojong Depok Baru', 'MENUNGGU', '085693405490', 'Test', '2024-03-29 17:42:36', '2024-03-29 17:42:36'),
(5, 2, 1, 170, 'Perumahan Bojong Depok Baru', 'MENUNGGU', '085693405490', 'Test', '2024-03-30 15:39:13', '2024-03-30 15:39:13'),
(6, 2, 1, 70, 'Perumahan Bojong Depok Baru', 'MENUNGGU', '085693405490', 'Test', '2024-03-30 15:44:42', '2024-03-30 15:44:42'),
(7, 2, 1, 70, 'Perumahan Bojong Depok Baru', 'MENUNGGU', '085693405490', 'Test', '2024-03-30 15:45:37', '2024-03-30 15:45:37'),
(8, 2, 1, 70, 'Perumahan Bojong Depok Baru', 'MENUNGGU', '085693405490', 'Test', '2024-03-30 15:45:49', '2024-03-30 15:45:49'),
(9, 2, 1, 70, 'Perumahan Bojong Depok Baru', 'MENUNGGU', '085693405490', 'Test', '2024-03-30 15:46:08', '2024-03-30 15:46:08'),
(10, 2, 1, 40, 'Perumahan Bojong Depok Baru', 'MENUNGGU', '085693405490', 'Test', '2024-03-30 15:50:30', '2024-03-30 15:50:30'),
(11, 2, 1, 60, 'Perumahan Bojong Depok Baru', 'MENUNGGU', '085693405490', 'Test', '2024-03-30 15:56:33', '2024-03-30 15:56:33'),
(12, 2, 1, 40, 'Perumahan Bojong Depok Baru', 'MENUNGGU', '085693405490', 'Test', '2024-03-30 15:57:34', '2024-03-30 15:57:34'),
(13, 2, 1, 50, 'Perumahan Bojong Depok Baru', 'MENUNGGU', '085693405490', 'Test', '2024-03-30 16:01:12', '2024-03-30 16:01:12'),
(14, 2, 1, 60, 'Perumahan Bojong Depok Baru', 'MENUNGGU', '085693405490', 'Devino', '2024-04-11 02:21:03', '2024-04-11 02:21:03'),
(15, 2, 1, 90000, 'Perumahan Bojong Depok Baru', 'MENUNGGU', '123123123', 'Test', '2024-06-11 22:47:55', '2024-06-11 22:47:55'),
(16, 12, 3, 32000, 'jalan jalan', 'MENUNGGU', '123456', 'fadlan', '2024-06-23 22:51:30', '2024-06-23 22:51:30'),
(17, 12, 3, 21000, 'jalan jalan', 'MENUNGGU', '123456', 'fadlan', '2024-06-23 22:54:08', '2024-06-23 22:54:08');

-- --------------------------------------------------------

--
-- Struktur dari tabel `personal_access_tokens`
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

-- --------------------------------------------------------

--
-- Struktur dari tabel `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_name` varchar(50) NOT NULL,
  `category` enum('buah','sayur') NOT NULL,
  `price` int(11) NOT NULL,
  `stok` int(11) NOT NULL,
  `foto1` varchar(255) NOT NULL,
  `foto2` varchar(255) DEFAULT NULL,
  `foto3` varchar(255) DEFAULT NULL,
  `deskripsi` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `products`
--

INSERT INTO `products` (`id`, `product_name`, `category`, `price`, `stok`, `foto1`, `foto2`, `foto3`, `deskripsi`, `created_at`, `updated_at`) VALUES
(4, 'Brokoli', 'sayur', 20000, 19, '17181795031.jpg', NULL, NULL, 'Brokoli', '2024-06-12 08:05:03', '2024-06-23 22:51:30'),
(5, 'Paprika', 'sayur', 20000, 20, '17181795409.jpg', NULL, NULL, 'Paprika', '2024-06-12 08:05:40', '2024-06-12 08:05:40'),
(6, 'Apel', 'buah', 15000, 14, '17181795791.jpg', NULL, NULL, 'Apel', '2024-06-12 08:06:19', '2024-06-23 22:51:30'),
(7, 'Strawberry', 'buah', 21000, 14, '17181796218.jpg', NULL, NULL, 'Strawberry', '2024-06-12 08:07:01', '2024-06-23 22:54:08');

-- --------------------------------------------------------

--
-- Struktur dari tabel `reviews`
--

CREATE TABLE `reviews` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_customer` int(11) NOT NULL,
  `id_mproduk` int(11) NOT NULL,
  `review` text NOT NULL,
  `rating` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `role` enum('owner','admin') NOT NULL DEFAULT 'owner',
  `password` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `role`, `password`, `email_verified_at`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Owner', 'owner@gmail.com', 'owner', '$2y$10$kfrys2PTdD74hXAxatyM9uwZnCG6naTHsviejGTNiIKn6aueY8CrG', '2024-03-28 15:34:35', NULL, '2024-03-28 15:34:35', '2024-03-28 15:34:35'),
(2, 'Admin', 'admin@gmail.com', 'admin', '$2y$10$opktYHXZqf.UhgnVNNI7yu.C1TJdYZulhgnFTHanN/NU/3p7Ljky.', '2024-03-28 15:34:35', NULL, '2024-03-28 15:34:35', '2024-03-28 15:34:35');

-- --------------------------------------------------------

--
-- Struktur dari tabel `wishlists`
--

CREATE TABLE `wishlists` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_customer` int(11) NOT NULL,
  `id_barang` int(11) NOT NULL,
  `is_checkout` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `wishlists`
--

INSERT INTO `wishlists` (`id`, `id_customer`, `id_barang`, `is_checkout`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 0, '2024-06-11 22:55:15', '2024-06-11 22:55:15');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `about`
--
ALTER TABLE `about`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `discounts`
--
ALTER TABLE `discounts`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indeks untuk tabel `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indeks untuk tabel `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `products_product_name_unique` (`product_name`);

--
-- Indeks untuk tabel `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indeks untuk tabel `wishlists`
--
ALTER TABLE `wishlists`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `about`
--
ALTER TABLE `about`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `carts`
--
ALTER TABLE `carts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT untuk tabel `customers`
--
ALTER TABLE `customers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `discounts`
--
ALTER TABLE `discounts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT untuk tabel `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT untuk tabel `order_details`
--
ALTER TABLE `order_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT untuk tabel `payments`
--
ALTER TABLE `payments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `wishlists`
--
ALTER TABLE `wishlists`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
