-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 11 Mar 2023 pada 13.45
-- Versi server: 10.4.24-MariaDB
-- Versi PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `apelin`
--
CREATE DATABASE IF NOT EXISTS `apelin` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `apelin`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
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
-- Struktur dari tabel `log_activities`
--

CREATE TABLE `log_activities` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `ip` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `method` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `agent` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `log_activities`
--

INSERT INTO `log_activities` (`id`, `user_id`, `ip`, `subject`, `method`, `url`, `agent`, `created_at`, `updated_at`) VALUES
(1, 1, '127.0.0.1', 'berhasil Login', 'POST', 'http://localhost:8000/login', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', '2023-03-07 13:55:19', '2023-03-07 13:55:19'),
(2, 1, '127.0.0.1', 'berhasil update paket ', 'PUT', 'http://localhost:8000/paket/1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', '2023-03-07 13:56:21', '2023-03-07 13:56:21');

-- --------------------------------------------------------

--
-- Struktur dari tabel `members`
--

CREATE TABLE `members` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jenis_kelamin` enum('L','P') COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `tlp` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `members`
--

INSERT INTO `members` (`id`, `nama`, `jenis_kelamin`, `alamat`, `tlp`) VALUES
(1, 'Dodo Sidodo', 'L', 'Padaherang', '888777666888'),
(2, 'Alfiana', 'P', 'Lakbok', '888222666555'),
(3, 'Arianti', 'P', 'Padaherang', '888777666333');

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_02_06_092757_create_outlets_table', 1),
(6, '2023_02_06_092911_add_outlet_id_to_users_table', 1),
(7, '2023_02_07_084730_create_pakets_table', 1),
(8, '2023_02_07_095236_create_members_table', 1),
(9, '2023_02_07_105934_create_transaksis_table', 1),
(10, '2023_02_07_110017_create_transaksi_details_table', 1),
(11, '2023_02_13_112120_create_log_activities_table', 1),
(12, '2023_03_06_111239_add_diskon_and_harga_akhir_to_paket', 1),
(13, '2023_03_06_111806_add_diskon_paket_to_transaksi_details_table', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `outlets`
--

CREATE TABLE `outlets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `tlp` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `outlets`
--

INSERT INTO `outlets` (`id`, `nama`, `alamat`, `tlp`) VALUES
(1, 'Toko Arianti Laundry', 'Purwadadi', '888777444555'),
(2, 'Toko Alfiana Laundry', 'b', '888666444111');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pakets`
--

CREATE TABLE `pakets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `outlet_id` bigint(20) UNSIGNED NOT NULL,
  `nama_paket` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jenis` enum('kiloan','selimut','bed_cover','kaos','lain') COLLATE utf8mb4_unicode_ci NOT NULL,
  `diskon` int(11) DEFAULT NULL,
  `harga` int(11) NOT NULL,
  `harga_akhir` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `pakets`
--

INSERT INTO `pakets` (`id`, `outlet_id`, `nama_paket`, `jenis`, `diskon`, `harga`, `harga_akhir`) VALUES
(1, 1, 'Reguler', 'kiloan', 5000, 7000, 2000),
(2, 1, 'Bed Cover', 'bed_cover', NULL, 5000, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `transaksis`
--

CREATE TABLE `transaksis` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `outlet_id` bigint(20) UNSIGNED NOT NULL,
  `member_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `kode_invoice` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tgl` datetime NOT NULL,
  `batas_waktu` datetime NOT NULL,
  `tgl_bayar` datetime DEFAULT NULL,
  `biaya_tambahan` int(11) DEFAULT NULL,
  `diskon` int(11) DEFAULT NULL,
  `pajak` int(11) NOT NULL,
  `sub_total` int(11) NOT NULL,
  `qty_total` int(11) NOT NULL,
  `total_bayar` int(11) NOT NULL,
  `cash` int(11) DEFAULT NULL,
  `kembalian` int(11) DEFAULT NULL,
  `status` enum('baru','proses','selesai','diambil') COLLATE utf8mb4_unicode_ci NOT NULL,
  `dibayar` enum('dibayar','belum_bayar') COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `transaksis`
--

INSERT INTO `transaksis` (`id`, `outlet_id`, `member_id`, `user_id`, `kode_invoice`, `tgl`, `batas_waktu`, `tgl_bayar`, `biaya_tambahan`, `diskon`, `pajak`, `sub_total`, `qty_total`, `total_bayar`, `cash`, `kembalian`, `status`, `dibayar`) VALUES
(1, 1, 3, 1, '202303070001', '2023-03-07 20:57:03', '2023-03-09 20:56:00', NULL, NULL, 1000, 300, 4000, 2, 3300, NULL, NULL, 'baru', 'belum_bayar');

-- --------------------------------------------------------

--
-- Struktur dari tabel `transaksi_details`
--

CREATE TABLE `transaksi_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `transaksi_id` bigint(20) UNSIGNED NOT NULL,
  `paket_id` bigint(20) UNSIGNED NOT NULL,
  `harga` int(11) NOT NULL,
  `diskon_paket` int(11) DEFAULT NULL,
  `qty` int(11) NOT NULL,
  `sub_total` int(11) NOT NULL,
  `keterangan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `transaksi_details`
--

INSERT INTO `transaksi_details` (`id`, `transaksi_id`, `paket_id`, `harga`, `diskon_paket`, `qty`, `sub_total`, `keterangan`) VALUES
(1, 1, 1, 7000, 5000, 2, 4000, '2 Celana');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` enum('admin','kasir','owner') COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `outlet_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `nama`, `username`, `password`, `role`, `remember_token`, `created_at`, `updated_at`, `outlet_id`) VALUES
(1, 'Administrator', 'admin', '$2y$10$VTL8aXZA964QcuNOeY79kekwODpGH.2ca0bpRd7oArGL6rC33.bE2', 'admin', NULL, NULL, NULL, 1),
(2, 'Kasir', 'kasir', '$2y$10$UQc5avHmpUmrpu./gynjuuH9UT5e3v1w6L2zkvVJ9Oq8.IS.vFy0i', 'kasir', NULL, NULL, NULL, 1),
(3, 'Pemilik', 'owner', '$2y$10$GrX.EY6VdiTOSCahDX16.e2zxBTHBxU0fus4094bveMvlLhbVGUHi', 'owner', NULL, NULL, NULL, 1);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indeks untuk tabel `log_activities`
--
ALTER TABLE `log_activities`
  ADD PRIMARY KEY (`id`),
  ADD KEY `log_activities_user_id_foreign` (`user_id`);

--
-- Indeks untuk tabel `members`
--
ALTER TABLE `members`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `outlets`
--
ALTER TABLE `outlets`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `pakets`
--
ALTER TABLE `pakets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pakets_outlet_id_foreign` (`outlet_id`);

--
-- Indeks untuk tabel `password_resets`
--
ALTER TABLE `password_resets`
  ADD PRIMARY KEY (`email`);

--
-- Indeks untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indeks untuk tabel `transaksis`
--
ALTER TABLE `transaksis`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `transaksis_kode_invoice_unique` (`kode_invoice`);

--
-- Indeks untuk tabel `transaksi_details`
--
ALTER TABLE `transaksi_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transaksi_details_transaksi_id_foreign` (`transaksi_id`),
  ADD KEY `transaksi_details_paket_id_foreign` (`paket_id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`),
  ADD KEY `users_outlet_id_foreign` (`outlet_id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `log_activities`
--
ALTER TABLE `log_activities`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `members`
--
ALTER TABLE `members`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT untuk tabel `outlets`
--
ALTER TABLE `outlets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `pakets`
--
ALTER TABLE `pakets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `transaksis`
--
ALTER TABLE `transaksis`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `transaksi_details`
--
ALTER TABLE `transaksi_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `log_activities`
--
ALTER TABLE `log_activities`
  ADD CONSTRAINT `log_activities_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Ketidakleluasaan untuk tabel `pakets`
--
ALTER TABLE `pakets`
  ADD CONSTRAINT `pakets_outlet_id_foreign` FOREIGN KEY (`outlet_id`) REFERENCES `outlets` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `transaksi_details`
--
ALTER TABLE `transaksi_details`
  ADD CONSTRAINT `transaksi_details_paket_id_foreign` FOREIGN KEY (`paket_id`) REFERENCES `pakets` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `transaksi_details_transaksi_id_foreign` FOREIGN KEY (`transaksi_id`) REFERENCES `transaksis` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_outlet_id_foreign` FOREIGN KEY (`outlet_id`) REFERENCES `outlets` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
--
-- Database: `apelin_febri`
--
CREATE DATABASE IF NOT EXISTS `apelin_febri` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `apelin_febri`;
--
-- Database: `apelin_febri1`
--
CREATE DATABASE IF NOT EXISTS `apelin_febri1` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `apelin_febri1`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
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
-- Struktur dari tabel `log_activities`
--

CREATE TABLE `log_activities` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `ip` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `method` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `agent` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `log_activities`
--

INSERT INTO `log_activities` (`id`, `user_id`, `ip`, `subject`, `method`, `url`, `agent`, `created_at`, `updated_at`) VALUES
(1, 1, '127.0.0.1', 'berhasil Logout', 'POST', 'http://localhost:8000/logout', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', '2023-03-08 04:09:33', '2023-03-08 04:09:33'),
(2, 1, '127.0.0.1', 'berhasil Login', 'POST', 'http://localhost:8000/login', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', '2023-03-08 04:09:48', '2023-03-08 04:09:48'),
(3, 1, '127.0.0.1', 'Berhasil Menghapus User', 'DELETE', 'http://localhost:8000/user/3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', '2023-03-08 04:10:29', '2023-03-08 04:10:29'),
(4, 1, '127.0.0.1', 'Berhasil Menghapus Outlet', 'DELETE', 'http://localhost:8000/outlet/2', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', '2023-03-08 04:10:45', '2023-03-08 04:10:45'),
(5, 1, '127.0.0.1', 'berhasil Logout', 'POST', 'http://localhost:8000/logout', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', '2023-03-08 04:10:53', '2023-03-08 04:10:53');

-- --------------------------------------------------------

--
-- Struktur dari tabel `members`
--

CREATE TABLE `members` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jenis_kelamin` enum('L','P') COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `tlp` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `members`
--

INSERT INTO `members` (`id`, `nama`, `jenis_kelamin`, `alamat`, `tlp`) VALUES
(1, 'Dodo Sidodo', 'L', 'Padaherang', '888777666888'),
(2, 'Alfiana', 'P', 'Lakbok', '888222666555'),
(3, 'Tita', 'P', 'Padaherang', '888777666333');

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_02_06_092757_create_outlets_table', 1),
(6, '2023_02_06_092911_add_outlet_id_to_users_table', 1),
(7, '2023_02_07_084730_create_pakets_table', 1),
(8, '2023_02_07_095236_create_members_table', 1),
(9, '2023_02_07_105934_create_transaksis_table', 1),
(10, '2023_02_07_110017_create_transaksi_details_table', 1),
(11, '2023_02_13_112120_create_log_activities_table', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `outlets`
--

CREATE TABLE `outlets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `tlp` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `outlets`
--

INSERT INTO `outlets` (`id`, `nama`, `alamat`, `tlp`) VALUES
(1, 'Toko Arianti Laundry', 'Cakung Sari', '888777444555');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pakets`
--

CREATE TABLE `pakets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `outlet_id` bigint(20) UNSIGNED NOT NULL,
  `nama_paket` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jenis` enum('kiloan','selimut','bed_cover','kaos','lain') COLLATE utf8mb4_unicode_ci NOT NULL,
  `harga` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `pakets`
--

INSERT INTO `pakets` (`id`, `outlet_id`, `nama_paket`, `jenis`, `harga`) VALUES
(1, 1, 'Reguler', 'kiloan', 7000),
(2, 1, 'Bed Cover', 'bed_cover', 5000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `transaksis`
--

CREATE TABLE `transaksis` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `outlet_id` bigint(20) UNSIGNED NOT NULL,
  `member_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `kode_invoice` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tgl` datetime NOT NULL,
  `batas_waktu` datetime NOT NULL,
  `tgl_bayar` datetime DEFAULT NULL,
  `biaya_tambahan` int(11) DEFAULT NULL,
  `diskon` int(11) DEFAULT NULL,
  `pajak` int(11) NOT NULL,
  `sub_total` int(11) NOT NULL,
  `qty_total` int(11) NOT NULL,
  `total_bayar` int(11) NOT NULL,
  `cash` int(11) DEFAULT NULL,
  `kembalian` int(11) DEFAULT NULL,
  `status` enum('baru','proses','selesai','diambil') COLLATE utf8mb4_unicode_ci NOT NULL,
  `dibayar` enum('dibayar','belum_bayar') COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `transaksi_details`
--

CREATE TABLE `transaksi_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `transaksi_id` bigint(20) UNSIGNED NOT NULL,
  `paket_id` bigint(20) UNSIGNED NOT NULL,
  `harga` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `sub_total` int(11) NOT NULL,
  `keterangan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` enum('admin','kasir','owner') COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `outlet_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `nama`, `username`, `password`, `role`, `remember_token`, `created_at`, `updated_at`, `outlet_id`) VALUES
(1, 'Administrator', 'admin', '$2y$10$WOd/ywNA07cJU9trFxRt3.LWqcwdiC9gR6ohKDt7G62Mx.YHv/CHC', 'admin', NULL, NULL, NULL, 1),
(2, 'Kasir', 'kasir', '$2y$10$60avF9o5W.Eh3mZcrqmk.u5pTlvtw0nOkpvKGUKfh4wjhN5S8dtwi', 'kasir', NULL, NULL, NULL, 1);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indeks untuk tabel `log_activities`
--
ALTER TABLE `log_activities`
  ADD PRIMARY KEY (`id`),
  ADD KEY `log_activities_user_id_foreign` (`user_id`);

--
-- Indeks untuk tabel `members`
--
ALTER TABLE `members`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `outlets`
--
ALTER TABLE `outlets`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `pakets`
--
ALTER TABLE `pakets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pakets_outlet_id_foreign` (`outlet_id`);

--
-- Indeks untuk tabel `password_resets`
--
ALTER TABLE `password_resets`
  ADD PRIMARY KEY (`email`);

--
-- Indeks untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indeks untuk tabel `transaksis`
--
ALTER TABLE `transaksis`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `transaksis_kode_invoice_unique` (`kode_invoice`);

--
-- Indeks untuk tabel `transaksi_details`
--
ALTER TABLE `transaksi_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transaksi_details_transaksi_id_foreign` (`transaksi_id`),
  ADD KEY `transaksi_details_paket_id_foreign` (`paket_id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`),
  ADD KEY `users_outlet_id_foreign` (`outlet_id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `log_activities`
--
ALTER TABLE `log_activities`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `members`
--
ALTER TABLE `members`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT untuk tabel `outlets`
--
ALTER TABLE `outlets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `pakets`
--
ALTER TABLE `pakets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `transaksis`
--
ALTER TABLE `transaksis`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `transaksi_details`
--
ALTER TABLE `transaksi_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `log_activities`
--
ALTER TABLE `log_activities`
  ADD CONSTRAINT `log_activities_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Ketidakleluasaan untuk tabel `pakets`
--
ALTER TABLE `pakets`
  ADD CONSTRAINT `pakets_outlet_id_foreign` FOREIGN KEY (`outlet_id`) REFERENCES `outlets` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `transaksi_details`
--
ALTER TABLE `transaksi_details`
  ADD CONSTRAINT `transaksi_details_paket_id_foreign` FOREIGN KEY (`paket_id`) REFERENCES `pakets` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `transaksi_details_transaksi_id_foreign` FOREIGN KEY (`transaksi_id`) REFERENCES `transaksis` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_outlet_id_foreign` FOREIGN KEY (`outlet_id`) REFERENCES `outlets` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
--
-- Database: `dbapelin`
--
CREATE DATABASE IF NOT EXISTS `dbapelin` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `dbapelin`;
--
-- Database: `dbapelin_febri`
--
CREATE DATABASE IF NOT EXISTS `dbapelin_febri` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `dbapelin_febri`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
--
-- Kesalahan membaca struktur untuk tabel dbapelin_febri.failed_jobs: #1932 - Table &#039;dbapelin_febri.failed_jobs&#039; doesn&#039;t exist in engine
-- Kesalahan membaca data untuk tabel dbapelin_febri.failed_jobs: #1064 - You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near &#039;FROM `dbapelin_febri`.`failed_jobs`&#039; at line 1

-- --------------------------------------------------------

--
-- Struktur dari tabel `log_activities`
--
-- Kesalahan membaca struktur untuk tabel dbapelin_febri.log_activities: #1932 - Table &#039;dbapelin_febri.log_activities&#039; doesn&#039;t exist in engine
-- Kesalahan membaca data untuk tabel dbapelin_febri.log_activities: #1064 - You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near &#039;FROM `dbapelin_febri`.`log_activities`&#039; at line 1

-- --------------------------------------------------------

--
-- Struktur dari tabel `members`
--
-- Kesalahan membaca struktur untuk tabel dbapelin_febri.members: #1932 - Table &#039;dbapelin_febri.members&#039; doesn&#039;t exist in engine
-- Kesalahan membaca data untuk tabel dbapelin_febri.members: #1064 - You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near &#039;FROM `dbapelin_febri`.`members`&#039; at line 1

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--
-- Kesalahan membaca struktur untuk tabel dbapelin_febri.migrations: #1932 - Table &#039;dbapelin_febri.migrations&#039; doesn&#039;t exist in engine
-- Kesalahan membaca data untuk tabel dbapelin_febri.migrations: #1064 - You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near &#039;FROM `dbapelin_febri`.`migrations`&#039; at line 1

-- --------------------------------------------------------

--
-- Struktur dari tabel `outlets`
--
-- Kesalahan membaca struktur untuk tabel dbapelin_febri.outlets: #1932 - Table &#039;dbapelin_febri.outlets&#039; doesn&#039;t exist in engine
-- Kesalahan membaca data untuk tabel dbapelin_febri.outlets: #1064 - You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near &#039;FROM `dbapelin_febri`.`outlets`&#039; at line 1

-- --------------------------------------------------------

--
-- Struktur dari tabel `pakets`
--
-- Kesalahan membaca struktur untuk tabel dbapelin_febri.pakets: #1932 - Table &#039;dbapelin_febri.pakets&#039; doesn&#039;t exist in engine
-- Kesalahan membaca data untuk tabel dbapelin_febri.pakets: #1064 - You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near &#039;FROM `dbapelin_febri`.`pakets`&#039; at line 1

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_resets`
--
-- Kesalahan membaca struktur untuk tabel dbapelin_febri.password_resets: #1932 - Table &#039;dbapelin_febri.password_resets&#039; doesn&#039;t exist in engine
-- Kesalahan membaca data untuk tabel dbapelin_febri.password_resets: #1064 - You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near &#039;FROM `dbapelin_febri`.`password_resets`&#039; at line 1

-- --------------------------------------------------------

--
-- Struktur dari tabel `personal_access_tokens`
--
-- Kesalahan membaca struktur untuk tabel dbapelin_febri.personal_access_tokens: #1932 - Table &#039;dbapelin_febri.personal_access_tokens&#039; doesn&#039;t exist in engine
-- Kesalahan membaca data untuk tabel dbapelin_febri.personal_access_tokens: #1064 - You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near &#039;FROM `dbapelin_febri`.`personal_access_tokens`&#039; at line 1

-- --------------------------------------------------------

--
-- Struktur dari tabel `transaksis`
--
-- Kesalahan membaca struktur untuk tabel dbapelin_febri.transaksis: #1932 - Table &#039;dbapelin_febri.transaksis&#039; doesn&#039;t exist in engine
-- Kesalahan membaca data untuk tabel dbapelin_febri.transaksis: #1064 - You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near &#039;FROM `dbapelin_febri`.`transaksis`&#039; at line 1

-- --------------------------------------------------------

--
-- Struktur dari tabel `transaksi_details`
--
-- Kesalahan membaca struktur untuk tabel dbapelin_febri.transaksi_details: #1932 - Table &#039;dbapelin_febri.transaksi_details&#039; doesn&#039;t exist in engine
-- Kesalahan membaca data untuk tabel dbapelin_febri.transaksi_details: #1064 - You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near &#039;FROM `dbapelin_febri`.`transaksi_details`&#039; at line 1

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--
-- Kesalahan membaca struktur untuk tabel dbapelin_febri.users: #1932 - Table &#039;dbapelin_febri.users&#039; doesn&#039;t exist in engine
-- Kesalahan membaca data untuk tabel dbapelin_febri.users: #1064 - You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near &#039;FROM `dbapelin_febri`.`users`&#039; at line 1
--
-- Database: `db_laravel_arianti`
--
CREATE DATABASE IF NOT EXISTS `db_laravel_arianti` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `db_laravel_arianti`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
--
-- Kesalahan membaca struktur untuk tabel db_laravel_arianti.failed_jobs: #1932 - Table &#039;db_laravel_arianti.failed_jobs&#039; doesn&#039;t exist in engine
-- Kesalahan membaca data untuk tabel db_laravel_arianti.failed_jobs: #1064 - You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near &#039;FROM `db_laravel_arianti`.`failed_jobs`&#039; at line 1

-- --------------------------------------------------------

--
-- Struktur dari tabel `latihans`
--
-- Kesalahan membaca struktur untuk tabel db_laravel_arianti.latihans: #1932 - Table &#039;db_laravel_arianti.latihans&#039; doesn&#039;t exist in engine
-- Kesalahan membaca data untuk tabel db_laravel_arianti.latihans: #1064 - You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near &#039;FROM `db_laravel_arianti`.`latihans`&#039; at line 1

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--
-- Kesalahan membaca struktur untuk tabel db_laravel_arianti.migrations: #1932 - Table &#039;db_laravel_arianti.migrations&#039; doesn&#039;t exist in engine
-- Kesalahan membaca data untuk tabel db_laravel_arianti.migrations: #1064 - You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near &#039;FROM `db_laravel_arianti`.`migrations`&#039; at line 1

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_resets`
--
-- Kesalahan membaca struktur untuk tabel db_laravel_arianti.password_resets: #1932 - Table &#039;db_laravel_arianti.password_resets&#039; doesn&#039;t exist in engine
-- Kesalahan membaca data untuk tabel db_laravel_arianti.password_resets: #1064 - You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near &#039;FROM `db_laravel_arianti`.`password_resets`&#039; at line 1

-- --------------------------------------------------------

--
-- Struktur dari tabel `personal_access_tokens`
--
-- Kesalahan membaca struktur untuk tabel db_laravel_arianti.personal_access_tokens: #1932 - Table &#039;db_laravel_arianti.personal_access_tokens&#039; doesn&#039;t exist in engine
-- Kesalahan membaca data untuk tabel db_laravel_arianti.personal_access_tokens: #1064 - You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near &#039;FROM `db_laravel_arianti`.`personal_access_tokens`&#039; at line 1

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--
-- Kesalahan membaca struktur untuk tabel db_laravel_arianti.users: #1932 - Table &#039;db_laravel_arianti.users&#039; doesn&#039;t exist in engine
-- Kesalahan membaca data untuk tabel db_laravel_arianti.users: #1064 - You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near &#039;FROM `db_laravel_arianti`.`users`&#039; at line 1
--
-- Database: `db_laravel_semar`
--
CREATE DATABASE IF NOT EXISTS `db_laravel_semar` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `db_laravel_semar`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `semar`
--
-- Kesalahan membaca struktur untuk tabel db_laravel_semar.semar: #1932 - Table &#039;db_laravel_semar.semar&#039; doesn&#039;t exist in engine
-- Kesalahan membaca data untuk tabel db_laravel_semar.semar: #1064 - You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near &#039;FROM `db_laravel_semar`.`semar`&#039; at line 1
--
-- Database: `db_sekolah_arianti`
--
CREATE DATABASE IF NOT EXISTS `db_sekolah_arianti` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `db_sekolah_arianti`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `guru`
--
-- Kesalahan membaca struktur untuk tabel db_sekolah_arianti.guru: #1932 - Table &#039;db_sekolah_arianti.guru&#039; doesn&#039;t exist in engine
-- Kesalahan membaca data untuk tabel db_sekolah_arianti.guru: #1064 - You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near &#039;FROM `db_sekolah_arianti`.`guru`&#039; at line 1

-- --------------------------------------------------------

--
-- Struktur dari tabel `jurusan`
--
-- Kesalahan membaca struktur untuk tabel db_sekolah_arianti.jurusan: #1932 - Table &#039;db_sekolah_arianti.jurusan&#039; doesn&#039;t exist in engine
-- Kesalahan membaca data untuk tabel db_sekolah_arianti.jurusan: #1064 - You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near &#039;FROM `db_sekolah_arianti`.`jurusan`&#039; at line 1

-- --------------------------------------------------------

--
-- Struktur dari tabel `kelas`
--
-- Kesalahan membaca struktur untuk tabel db_sekolah_arianti.kelas: #1932 - Table &#039;db_sekolah_arianti.kelas&#039; doesn&#039;t exist in engine
-- Kesalahan membaca data untuk tabel db_sekolah_arianti.kelas: #1064 - You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near &#039;FROM `db_sekolah_arianti`.`kelas`&#039; at line 1

-- --------------------------------------------------------

--
-- Struktur dari tabel `mapel`
--
-- Kesalahan membaca struktur untuk tabel db_sekolah_arianti.mapel: #1932 - Table &#039;db_sekolah_arianti.mapel&#039; doesn&#039;t exist in engine
-- Kesalahan membaca data untuk tabel db_sekolah_arianti.mapel: #1064 - You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near &#039;FROM `db_sekolah_arianti`.`mapel`&#039; at line 1

-- --------------------------------------------------------

--
-- Struktur dari tabel `mengajar`
--
-- Kesalahan membaca struktur untuk tabel db_sekolah_arianti.mengajar: #1932 - Table &#039;db_sekolah_arianti.mengajar&#039; doesn&#039;t exist in engine
-- Kesalahan membaca data untuk tabel db_sekolah_arianti.mengajar: #1064 - You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near &#039;FROM `db_sekolah_arianti`.`mengajar`&#039; at line 1

-- --------------------------------------------------------

--
-- Struktur dari tabel `murid`
--
-- Kesalahan membaca struktur untuk tabel db_sekolah_arianti.murid: #1932 - Table &#039;db_sekolah_arianti.murid&#039; doesn&#039;t exist in engine
-- Kesalahan membaca data untuk tabel db_sekolah_arianti.murid: #1064 - You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near &#039;FROM `db_sekolah_arianti`.`murid`&#039; at line 1

-- --------------------------------------------------------

--
-- Struktur dari tabel `nilai`
--
-- Kesalahan membaca struktur untuk tabel db_sekolah_arianti.nilai: #1932 - Table &#039;db_sekolah_arianti.nilai&#039; doesn&#039;t exist in engine
-- Kesalahan membaca data untuk tabel db_sekolah_arianti.nilai: #1064 - You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near &#039;FROM `db_sekolah_arianti`.`nilai`&#039; at line 1
--
-- Database: `db_sekolah_zahra`
--
CREATE DATABASE IF NOT EXISTS `db_sekolah_zahra` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `db_sekolah_zahra`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `guru`
--
-- Kesalahan membaca struktur untuk tabel db_sekolah_zahra.guru: #1932 - Table &#039;db_sekolah_zahra.guru&#039; doesn&#039;t exist in engine
-- Kesalahan membaca data untuk tabel db_sekolah_zahra.guru: #1064 - You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near &#039;FROM `db_sekolah_zahra`.`guru`&#039; at line 1

-- --------------------------------------------------------

--
-- Struktur dari tabel `jurusan`
--
-- Kesalahan membaca struktur untuk tabel db_sekolah_zahra.jurusan: #1932 - Table &#039;db_sekolah_zahra.jurusan&#039; doesn&#039;t exist in engine
-- Kesalahan membaca data untuk tabel db_sekolah_zahra.jurusan: #1064 - You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near &#039;FROM `db_sekolah_zahra`.`jurusan`&#039; at line 1

-- --------------------------------------------------------

--
-- Struktur dari tabel `mapel`
--
-- Kesalahan membaca struktur untuk tabel db_sekolah_zahra.mapel: #1932 - Table &#039;db_sekolah_zahra.mapel&#039; doesn&#039;t exist in engine
-- Kesalahan membaca data untuk tabel db_sekolah_zahra.mapel: #1064 - You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near &#039;FROM `db_sekolah_zahra`.`mapel`&#039; at line 1

-- --------------------------------------------------------

--
-- Struktur dari tabel `murid`
--
-- Kesalahan membaca struktur untuk tabel db_sekolah_zahra.murid: #1932 - Table &#039;db_sekolah_zahra.murid&#039; doesn&#039;t exist in engine
-- Kesalahan membaca data untuk tabel db_sekolah_zahra.murid: #1064 - You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near &#039;FROM `db_sekolah_zahra`.`murid`&#039; at line 1
--
-- Database: `hotel`
--
CREATE DATABASE IF NOT EXISTS `hotel` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `hotel`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` enum('admin','resepsionis') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'resepsionis',
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `admins`
--

INSERT INTO `admins` (`id`, `nama`, `username`, `role`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Administrator', 'admin', 'admin', '$2y$10$fS3PD3GO8JVvBCZrpWUypurOpfP5Cehua/loi4FNdXAsz4Su7HTRi', NULL, '2023-03-06 21:58:26', '2023-03-06 21:58:26'),
(2, 'Resepsionis', 'resepsionis', 'resepsionis', '$2y$10$c0KN619dVc0EEG0kuw9ml.ZTAm5Qoj4NbxhjnkClQkG65VJQ1tbwS', NULL, '2023-03-06 21:58:26', '2023-03-06 21:58:26'),
(3, 'Hayabusa', 'haya', 'resepsionis', '$2y$10$q.228W6ZwfMb17MijdnphuXNsxV9VyJBV.i.9WRY0Rc5MPJQhIXbi', NULL, '2023-03-06 21:58:26', '2023-03-06 21:58:26');

-- --------------------------------------------------------

--
-- Struktur dari tabel `fasilitas_hotels`
--

CREATE TABLE `fasilitas_hotels` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama_fasilitas_hotel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foto_fasilitas_hotel` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deskripsi_fasilitas_hotel` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `fasilitas_hotels`
--

INSERT INTO `fasilitas_hotels` (`id`, `nama_fasilitas_hotel`, `foto_fasilitas_hotel`, `deskripsi_fasilitas_hotel`) VALUES
(1, 'Kolam Renang', NULL, 'In imperdiet mi in auctor vestibulum. Sed imperdiet neque nisl, a feugiat leo efficitur quis. Maecenas rhoncus vel urna vel tempus. Praesent imperdiet ut massa semper varius. Quisque in aliquam leo, et pharetra elit. Vivamus hendrerit volutpat consectetur. Maecenas sed nisl ut arcu volutpat dignissim egestas quis sapien. Fusce metus velit, hendrerit id bibendum in, feugiat sed augue. Nunc interdum imperdiet quam, eu euismod ante molestie sed. Phasellus ut porttitor erat. Phasellus imperdiet massa eu diam rutrum tincidunt. Aenean varius ligula nec nibh volutpat molestie.'),
(2, 'Restoran', NULL, 'In imperdiet mi in auctor vestibulum. Sed imperdiet neque nisl, a feugiat leo efficitur quis. Maecenas rhoncus vel urna vel tempus. Praesent imperdiet ut massa semper varius. Quisque in aliquam leo, et pharetra elit. Vivamus hendrerit volutpat consectetur. Maecenas sed nisl ut arcu volutpat dignissim egestas quis sapien. Fusce metus velit, hendrerit id bibendum in, feugiat sed augue. Nunc interdum imperdiet quam, eu euismod ante molestie sed. Phasellus ut porttitor erat. Phasellus imperdiet massa eu diam rutrum tincidunt. Aenean varius ligula nec nibh volutpat molestie.'),
(3, 'Parkir Luas', NULL, 'In imperdiet mi in auctor vestibulum. Sed imperdiet neque nisl, a feugiat leo efficitur quis. Maecenas rhoncus vel urna vel tempus. Praesent imperdiet ut massa semper varius. Quisque in aliquam leo, et pharetra elit. Vivamus hendrerit volutpat consectetur. Maecenas sed nisl ut arcu volutpat dignissim egestas quis sapien. Fusce metus velit, hendrerit id bibendum in, feugiat sed augue. Nunc interdum imperdiet quam, eu euismod ante molestie sed. Phasellus ut porttitor erat. Phasellus imperdiet massa eu diam rutrum tincidunt. Aenean varius ligula nec nibh volutpat molestie.'),
(4, 'Sarapan Pagi Gratis', NULL, 'In imperdiet mi in auctor vestibulum. Sed imperdiet neque nisl, a feugiat leo efficitur quis. Maecenas rhoncus vel urna vel tempus. Praesent imperdiet ut massa semper varius. Quisque in aliquam leo, et pharetra elit. Vivamus hendrerit volutpat consectetur. Maecenas sed nisl ut arcu volutpat dignissim egestas quis sapien. Fusce metus velit, hendrerit id bibendum in, feugiat sed augue. Nunc interdum imperdiet quam, eu euismod ante molestie sed. Phasellus ut porttitor erat. Phasellus imperdiet massa eu diam rutrum tincidunt. Aenean varius ligula nec nibh volutpat molestie.');

-- --------------------------------------------------------

--
-- Struktur dari tabel `fasilitas_kamars`
--

CREATE TABLE `fasilitas_kamars` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `kamar_id` bigint(20) UNSIGNED NOT NULL,
  `nama_fasilitas_kamar` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `fasilitas_kamars`
--

INSERT INTO `fasilitas_kamars` (`id`, `kamar_id`, `nama_fasilitas_kamar`) VALUES
(1, 1, 'TV'),
(2, 1, 'AC'),
(3, 2, 'TV'),
(4, 2, 'AC');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kamars`
--

CREATE TABLE `kamars` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama_kamar` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foto_kamar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `jum_kamar` int(11) NOT NULL,
  `harga_kamar` int(11) DEFAULT NULL,
  `deskripsi_kamar` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `kamars`
--

INSERT INTO `kamars` (`id`, `nama_kamar`, `foto_kamar`, `jum_kamar`, `harga_kamar`, `deskripsi_kamar`) VALUES
(1, 'laudantium', NULL, 6, 679912, 'Explicabo numquam vero et voluptas voluptatum ipsum perferendis. Ullam blanditiis doloribus sit. Soluta incidunt eaque amet distinctio sed expedita amet.'),
(2, 'molestias', NULL, 5, 590022, 'Recusandae a ex animi soluta et. Dignissimos et recusandae non amet velit. Voluptate rerum et voluptas eveniet aperiam quia necessitatibus quisquam.'),
(3, 'ea', NULL, 10, 385183, 'Qui perferendis repellendus quos voluptatibus. Aspernatur aliquid et explicabo perferendis libero vitae eos. Iure neque ducimus expedita.');

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(2, '2022_04_23_031717_create_admins_table', 1),
(3, '2022_05_08_020226_create_kamars_table', 1),
(4, '2022_05_09_094800_create_fasilitas_kamars_table', 1),
(5, '2022_05_11_020045_create_fasilitas_hotels_table', 1),
(6, '2022_05_31_123135_create_pemesanans_table', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `pemesanans`
--

CREATE TABLE `pemesanans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `kamar_id` bigint(20) UNSIGNED DEFAULT NULL,
  `tgl_checkin` date NOT NULL,
  `tgl_checkout` date NOT NULL,
  `jum_kamar_dipesan` int(11) NOT NULL,
  `nama_pemesan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_pemesan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `no_hp` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_tamu` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('pesan','checkin','checkout','batal') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pesan',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `pemesanans`
--

INSERT INTO `pemesanans` (`id`, `kamar_id`, `tgl_checkin`, `tgl_checkout`, `jum_kamar_dipesan`, `nama_pemesan`, `email_pemesan`, `no_hp`, `nama_tamu`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, '2023-03-09', '2023-03-11', 1, 'Isaac Kub', 'norberto.oconner@gmail.com', '747-884-3157', 'Celia Wuckert', 'pesan', '2023-03-07 17:00:00', '2023-03-07 17:00:00'),
(2, 1, '2023-03-04', '2023-03-07', 2, 'Gregoria Zboncak', 'golson@gmail.com', '1-217-208-3227', 'Flo Murray', 'pesan', '2023-03-02 17:00:00', '2023-03-02 17:00:00'),
(3, 2, '2023-03-02', '2023-03-05', 2, 'Otto Lowe', 'nettie22@hotmail.com', '228.382.6705', 'Imani Towne', 'pesan', '2023-02-28 17:00:00', '2023-02-28 17:00:00'),
(4, 1, '2023-03-05', '2023-03-06', 2, 'Dr. Emmanuelle Rath', 'garry82@gmail.com', '+1-484-967-6193', 'Kaya Effertz', 'pesan', '2023-03-02 17:00:00', '2023-03-02 17:00:00'),
(5, 1, '2023-03-03', '2023-03-04', 1, 'Keira Dooley', 'oturcotte@yahoo.com', '+1 (513) 928-8068', 'Nyah Howe II', 'pesan', '2023-03-01 17:00:00', '2023-03-01 17:00:00'),
(6, 2, '2023-03-08', '2023-03-11', 1, 'Ilene Rath', 'klocko.jennyfer@yahoo.com', '1-765-680-0499', 'Annetta Volkman', 'pesan', '2023-03-04 17:00:00', '2023-03-04 17:00:00'),
(7, 1, '2023-03-14', '2023-03-17', 1, 'Dr. Fermin Padberg', 'paucek.ezequiel@hotmail.com', '+1-478-231-6197', 'Keara Bradtke DDS', 'pesan', '2023-03-12 17:00:00', '2023-03-12 17:00:00'),
(8, 2, '2023-02-28', '2023-03-02', 1, 'Hadley Cummerata', 'mortimer.damore@yahoo.com', '480-887-1648', 'Americo Dickens III', 'pesan', '2023-02-26 17:00:00', '2023-02-26 17:00:00'),
(9, 3, '2023-03-01', '2023-03-02', 2, 'Melyna Schamberger V', 'joshuah.blanda@hotmail.com', '+1 (641) 254-4637', 'Mr. Giuseppe Rippin PhD', 'pesan', '2023-02-25 17:00:00', '2023-02-25 17:00:00'),
(10, 1, '2023-03-05', '2023-03-07', 2, 'Durward Ledner', 'ashley.schmitt@hotmail.com', '+1.203.256.1534', 'Sigrid Zboncak', 'pesan', '2023-03-02 17:00:00', '2023-03-02 17:00:00'),
(11, 2, '2023-03-11', '2023-03-12', 2, 'Prof. Khalil Schuppe', 'tracy.denesik@gmail.com', '(339) 630-8255', 'Sigurd Kemmer', 'pesan', '2023-03-09 17:00:00', '2023-03-09 17:00:00'),
(12, 1, '2023-03-12', '2023-03-13', 1, 'Mr. Kelton Anderson DDS', 'nikki78@yahoo.com', '(620) 514-1016', 'Aida Farrell', 'pesan', '2023-03-08 17:00:00', '2023-03-08 17:00:00'),
(13, 2, '2023-03-06', '2023-03-07', 1, 'Clarissa Bosco', 'emery83@gmail.com', '+1 (678) 632-1842', 'Delores Durgan Jr.', 'pesan', '2023-03-02 17:00:00', '2023-03-02 17:00:00'),
(14, 1, '2023-03-04', '2023-03-06', 1, 'Gudrun Shanahan DDS', 'gpadberg@gmail.com', '+1-828-667-7239', 'Marshall O\'Keefe', 'pesan', '2023-03-01 17:00:00', '2023-03-01 17:00:00'),
(15, 3, '2023-03-12', '2023-03-14', 1, 'Christiana Hermiston', 'flo79@yahoo.com', '478-736-9018', 'Clementina Wiegand', 'pesan', '2023-03-08 17:00:00', '2023-03-08 17:00:00'),
(16, 3, '2023-03-05', '2023-03-06', 2, 'Barton Abbott I', 'gkulas@yahoo.com', '678.833.7609', 'Coty Volkman DDS', 'pesan', '2023-03-01 17:00:00', '2023-03-01 17:00:00'),
(17, 2, '2023-03-03', '2023-03-06', 2, 'Marcel Feeney', 'jkautzer@gmail.com', '1-970-751-0570', 'Percival VonRueden', 'pesan', '2023-03-01 17:00:00', '2023-03-01 17:00:00'),
(18, 2, '2023-03-07', '2023-03-08', 2, 'Mr. Mason Crist III', 'qmante@yahoo.com', '986-659-2471', 'Mr. Royal Howell', 'pesan', '2023-03-05 17:00:00', '2023-03-05 17:00:00'),
(19, 3, '2023-03-02', '2023-03-03', 2, 'Marc Huel Sr.', 'bashirian.alisha@gmail.com', '1-385-576-2807', 'Prof. Floy Haley', 'pesan', '2023-02-28 17:00:00', '2023-02-28 17:00:00'),
(20, 1, '2023-03-02', '2023-03-05', 1, 'Leo Lebsack', 'okeefe.piper@yahoo.com', '(917) 489-6687', 'Candido Wunsch', 'pesan', '2023-02-28 17:00:00', '2023-02-28 17:00:00'),
(21, 3, '2023-03-07', '2023-03-09', 2, 'Wilson Haag', 'xhegmann@gmail.com', '781-815-0443', 'Ashton Hessel', 'pesan', '2023-03-04 17:00:00', '2023-03-04 17:00:00'),
(22, 2, '2023-03-05', '2023-03-06', 1, 'Pattie Labadie', 'yundt.brain@gmail.com', '1-203-609-9685', 'Asia Koss II', 'pesan', '2023-03-02 17:00:00', '2023-03-02 17:00:00'),
(23, 1, '2023-03-09', '2023-03-10', 2, 'Ms. Stephanie Zulauf PhD', 'dschimmel@yahoo.com', '+1-762-685-2652', 'Hipolito King', 'pesan', '2023-03-06 17:00:00', '2023-03-06 17:00:00'),
(24, 3, '2023-02-28', '2023-03-03', 1, 'Ericka Nicolas', 'ckirlin@yahoo.com', '716-203-4893', 'Ronny Swaniawski', 'pesan', '2023-02-26 17:00:00', '2023-02-26 17:00:00'),
(25, 3, '2023-03-09', '2023-03-12', 2, 'Prof. Elwyn Hoeger', 'evert.trantow@hotmail.com', '+1 (743) 986-3185', 'Constantin Pollich IV', 'pesan', '2023-03-07 17:00:00', '2023-03-07 17:00:00'),
(26, 2, '2023-03-04', '2023-03-07', 1, 'Prof. Eldon Beahan', 'solson@hotmail.com', '+1-706-890-7421', 'Alanna Johnson', 'pesan', '2023-03-02 17:00:00', '2023-03-02 17:00:00'),
(27, 2, '2023-03-06', '2023-03-08', 1, 'Alayna Walter PhD', 'arunolfsdottir@yahoo.com', '+1-931-567-7923', 'Jovan VonRueden', 'pesan', '2023-03-04 17:00:00', '2023-03-04 17:00:00'),
(28, 1, '2023-03-12', '2023-03-14', 2, 'Eladio Sipes III', 'leannon.noe@yahoo.com', '+1 (956) 827-3229', 'Dr. Lila Kautzer III', 'pesan', '2023-03-10 17:00:00', '2023-03-10 17:00:00'),
(29, 3, '2023-03-07', '2023-03-10', 2, 'Joaquin Gislason IV', 'hintz.luis@hotmail.com', '+1.973.929.2387', 'Mr. Ariel Kutch V', 'pesan', '2023-03-04 17:00:00', '2023-03-04 17:00:00'),
(30, 1, '2023-03-07', '2023-03-10', 2, 'Dr. Gay Kunde V', 'xbeer@hotmail.com', '+12622889334', 'Wiley Hand', 'pesan', '2023-03-03 17:00:00', '2023-03-03 17:00:00'),
(31, 2, '2023-03-05', '2023-03-07', 1, 'Anastasia Hane', 'caden71@hotmail.com', '(347) 382-5314', 'Vernice Rath', 'pesan', '2023-03-02 17:00:00', '2023-03-02 17:00:00'),
(32, 1, '2023-03-03', '2023-03-04', 2, 'Eva Schiller', 'darryl17@yahoo.com', '+1-661-516-5832', 'Hadley Koss II', 'pesan', '2023-02-27 17:00:00', '2023-02-27 17:00:00'),
(33, 3, '2023-03-09', '2023-03-12', 1, 'Quentin Morissette', 'qrice@yahoo.com', '+1-754-539-1252', 'Miss Kelly Emard', 'pesan', '2023-03-06 17:00:00', '2023-03-06 17:00:00'),
(34, 1, '2023-03-10', '2023-03-13', 2, 'Elaina Streich', 'rpaucek@gmail.com', '337-951-2950', 'Cordelia Beer', 'pesan', '2023-03-08 17:00:00', '2023-03-08 17:00:00'),
(35, 2, '2023-03-01', '2023-03-03', 1, 'Dr. Ambrose Kihn', 'kautzer.chanelle@yahoo.com', '801-267-3965', 'Nathen Skiles', 'pesan', '2023-02-27 17:00:00', '2023-02-27 17:00:00'),
(36, 2, '2023-03-07', '2023-03-08', 2, 'Jaden Armstrong', 'herbert.rau@gmail.com', '+1-915-920-0039', 'Taryn McKenzie', 'pesan', '2023-03-05 17:00:00', '2023-03-05 17:00:00'),
(37, 1, '2023-03-03', '2023-03-06', 1, 'Lavinia Stehr II', 'cpacocha@yahoo.com', '+1.667.757.9818', 'Travon Schmeler', 'pesan', '2023-02-28 17:00:00', '2023-02-28 17:00:00'),
(38, 2, '2023-03-11', '2023-03-14', 1, 'Dorcas Kuhn', 'jevon03@gmail.com', '+1.930.479.7213', 'Yasmin Hagenes', 'pesan', '2023-03-07 17:00:00', '2023-03-07 17:00:00'),
(39, 2, '2023-03-03', '2023-03-05', 1, 'Amara Romaguera II', 'shawn28@gmail.com', '618.548.5396', 'Torey Cronin', 'pesan', '2023-02-28 17:00:00', '2023-02-28 17:00:00'),
(40, 2, '2023-03-02', '2023-03-04', 1, 'Prof. Delmer Hoeger IV', 'nellie02@gmail.com', '769-921-0190', 'Emelie Morar', 'pesan', '2023-02-27 17:00:00', '2023-02-27 17:00:00'),
(41, 2, '2023-03-02', '2023-03-03', 1, 'Oren Jerde', 'evangeline66@yahoo.com', '828.361.0671', 'Cordia Fadel', 'pesan', '2023-02-28 17:00:00', '2023-02-28 17:00:00'),
(42, 3, '2023-03-07', '2023-03-10', 1, 'Westley Bailey', 'ugrant@gmail.com', '937.225.4041', 'Verlie Mitchell', 'pesan', '2023-03-03 17:00:00', '2023-03-03 17:00:00'),
(43, 2, '2023-03-01', '2023-03-04', 2, 'Mr. Adolph VonRueden', 'ed42@hotmail.com', '970.414.1503', 'Casandra Rodriguez', 'pesan', '2023-02-25 17:00:00', '2023-02-25 17:00:00'),
(44, 1, '2023-03-05', '2023-03-08', 2, 'Bo Farrell', 'zander36@hotmail.com', '(718) 367-5492', 'Dr. Euna Funk I', 'pesan', '2023-03-01 17:00:00', '2023-03-01 17:00:00'),
(45, 1, '2023-03-12', '2023-03-14', 2, 'Daisy Cole III', 'joan.wisoky@yahoo.com', '269.647.0382', 'Salvatore Goldner', 'pesan', '2023-03-10 17:00:00', '2023-03-10 17:00:00'),
(46, 3, '2023-03-07', '2023-03-08', 1, 'Raleigh Cronin', 'elvie77@hotmail.com', '458.430.4217', 'Thaddeus Schaefer DDS', 'pesan', '2023-03-03 17:00:00', '2023-03-03 17:00:00'),
(47, 3, '2023-03-12', '2023-03-13', 1, 'Dr. Saul Sauer', 'alexander.brakus@hotmail.com', '+1.203.989.8435', 'Guiseppe Kohler', 'pesan', '2023-03-08 17:00:00', '2023-03-08 17:00:00'),
(48, 3, '2023-03-07', '2023-03-08', 2, 'Candace Trantow', 'elisha.dare@yahoo.com', '678.478.6309', 'Nash Greenfelder', 'pesan', '2023-03-04 17:00:00', '2023-03-04 17:00:00'),
(49, 3, '2023-03-06', '2023-03-07', 2, 'Donna Hartmann', 'rachelle73@yahoo.com', '1-331-247-3327', 'Lauretta Hessel', 'pesan', '2023-03-02 17:00:00', '2023-03-02 17:00:00'),
(50, 3, '2023-03-03', '2023-03-05', 2, 'Stephan Lowe', 'klocko.esta@gmail.com', '+18704494247', 'Jaden Cummings MD', 'pesan', '2023-02-27 17:00:00', '2023-02-27 17:00:00'),
(51, 3, '2023-03-05', '2023-03-07', 1, 'Miss Alysson Borer Sr.', 'gwen.west@gmail.com', '1-239-340-8941', 'Miss Wava West', 'pesan', '2023-03-03 17:00:00', '2023-03-03 17:00:00'),
(52, 1, '2023-03-09', '2023-03-10', 2, 'Cullen Kovacek DVM', 'amaya88@hotmail.com', '+18024133846', 'Taryn Abbott', 'pesan', '2023-03-06 17:00:00', '2023-03-06 17:00:00'),
(53, 1, '2023-03-13', '2023-03-16', 1, 'Della Oberbrunner', 'koch.ulises@yahoo.com', '(928) 865-7731', 'Caitlyn Osinski II', 'pesan', '2023-03-10 17:00:00', '2023-03-10 17:00:00'),
(54, 1, '2023-03-10', '2023-03-13', 2, 'Abner Hodkiewicz', 'jkulas@hotmail.com', '1-904-710-2371', 'Kirk Wintheiser', 'pesan', '2023-03-06 17:00:00', '2023-03-06 17:00:00'),
(55, 2, '2023-03-11', '2023-03-12', 1, 'Christophe Ryan', 'tierra.mckenzie@yahoo.com', '1-320-691-0891', 'Mr. Johnathon Steuber II', 'pesan', '2023-03-09 17:00:00', '2023-03-09 17:00:00'),
(56, 3, '2023-03-05', '2023-03-08', 1, 'Miss Yasmeen Boyle PhD', 'jarrod.schimmel@yahoo.com', '424-203-9023', 'Prof. Berry Feest', 'pesan', '2023-03-03 17:00:00', '2023-03-03 17:00:00'),
(57, 1, '2023-03-01', '2023-03-04', 1, 'Colleen Gutkowski', 'litzy.emmerich@yahoo.com', '+1-325-378-5121', 'Christop Hamill', 'pesan', '2023-02-25 17:00:00', '2023-02-25 17:00:00'),
(58, 3, '2023-03-05', '2023-03-08', 1, 'Monty Lueilwitz MD', 'koch.merlin@yahoo.com', '+1.479.727.3071', 'Gregoria Schuster', 'pesan', '2023-03-01 17:00:00', '2023-03-01 17:00:00'),
(59, 1, '2023-03-07', '2023-03-09', 1, 'Merritt Schoen', 'stoltenberg.camylle@yahoo.com', '+1-424-952-0604', 'Esther Connelly', 'pesan', '2023-03-04 17:00:00', '2023-03-04 17:00:00'),
(60, 1, '2023-03-01', '2023-03-04', 1, 'Russell Smitham', 'collier.dejon@hotmail.com', '+1-781-933-7855', 'Amina Deckow', 'pesan', '2023-02-27 17:00:00', '2023-02-27 17:00:00'),
(61, 1, '2023-03-05', '2023-03-06', 2, 'Arely Schinner', 'gharvey@gmail.com', '(339) 540-1236', 'Dr. Maxwell Graham', 'pesan', '2023-03-03 17:00:00', '2023-03-03 17:00:00'),
(62, 2, '2023-03-11', '2023-03-14', 1, 'Ms. Matilda Simonis V', 'melba23@gmail.com', '(240) 495-8609', 'Dr. Paxton Rosenbaum', 'pesan', '2023-03-09 17:00:00', '2023-03-09 17:00:00'),
(63, 3, '2023-03-12', '2023-03-14', 2, 'Emery Roob', 'bianka.lynch@hotmail.com', '+1 (364) 436-3816', 'Sterling Hermann', 'pesan', '2023-03-08 17:00:00', '2023-03-08 17:00:00'),
(64, 3, '2023-03-11', '2023-03-12', 2, 'Aiden Nikolaus', 'ufeeney@yahoo.com', '+14357240930', 'Savanna Ortiz Sr.', 'pesan', '2023-03-09 17:00:00', '2023-03-09 17:00:00'),
(65, 3, '2023-03-03', '2023-03-05', 2, 'Mrs. Scarlett Goldner', 'fspencer@gmail.com', '+1.217.212.0315', 'Loyal Larson PhD', 'pesan', '2023-02-27 17:00:00', '2023-02-27 17:00:00'),
(66, 1, '2023-03-02', '2023-03-03', 1, 'Miss Shaniya Weber', 'hilbert.johnston@gmail.com', '+12542761893', 'Prof. Eliane Carter II', 'pesan', '2023-02-26 17:00:00', '2023-02-26 17:00:00'),
(67, 1, '2023-03-05', '2023-03-08', 2, 'Theodora Gottlieb V', 'randall.schuster@gmail.com', '267-464-6670', 'Twila Roob I', 'pesan', '2023-03-01 17:00:00', '2023-03-01 17:00:00'),
(68, 1, '2023-03-13', '2023-03-14', 2, 'Lera Wilkinson', 'mcclure.pattie@hotmail.com', '+1-469-520-3200', 'Clovis Bergstrom', 'pesan', '2023-03-11 17:00:00', '2023-03-11 17:00:00'),
(69, 1, '2023-03-02', '2023-03-04', 1, 'Nikita Kuvalis V', 'dmedhurst@gmail.com', '321-673-9453', 'Branson Ward Jr.', 'pesan', '2023-02-27 17:00:00', '2023-02-27 17:00:00'),
(70, 1, '2023-03-08', '2023-03-11', 1, 'Prof. Emory Schulist DVM', 'tomasa.schoen@yahoo.com', '(380) 773-4369', 'Salvatore Mueller', 'pesan', '2023-03-05 17:00:00', '2023-03-05 17:00:00'),
(71, 1, '2023-03-05', '2023-03-06', 1, 'Cedrick Bayer', 'reva46@hotmail.com', '(380) 910-7851', 'Ana Champlin', 'pesan', '2023-03-02 17:00:00', '2023-03-02 17:00:00'),
(72, 2, '2023-03-11', '2023-03-14', 2, 'Everette Witting', 'dora97@yahoo.com', '1-854-484-4125', 'Prof. Brain Lindgren I', 'pesan', '2023-03-09 17:00:00', '2023-03-09 17:00:00'),
(73, 1, '2023-03-08', '2023-03-11', 2, 'Nia Yundt', 'mccullough.newell@gmail.com', '541-299-8348', 'Miss Aiyana Terry II', 'pesan', '2023-03-04 17:00:00', '2023-03-04 17:00:00'),
(74, 1, '2023-03-06', '2023-03-08', 1, 'Delilah Upton', 'phoebe45@yahoo.com', '+17374954631', 'Antonia Hackett', 'pesan', '2023-03-03 17:00:00', '2023-03-03 17:00:00'),
(75, 1, '2023-03-04', '2023-03-07', 1, 'Victoria Mitchell', 'crohan@yahoo.com', '(814) 744-7578', 'Emelie Sporer', 'pesan', '2023-03-02 17:00:00', '2023-03-02 17:00:00'),
(76, 1, '2023-02-28', '2023-03-01', 2, 'Mr. Arnoldo Ruecker', 'kuhic.dianna@yahoo.com', '1-903-903-7909', 'Rupert Gleichner', 'pesan', '2023-02-25 17:00:00', '2023-02-25 17:00:00'),
(77, 1, '2023-03-06', '2023-03-09', 2, 'Hudson Smitham I', 'dax01@gmail.com', '+14754675025', 'Mrs. Hanna Cummerata I', 'pesan', '2023-03-02 17:00:00', '2023-03-02 17:00:00'),
(78, 2, '2023-03-05', '2023-03-08', 2, 'Miracle Funk', 'savion19@yahoo.com', '(816) 476-0874', 'Sophie Braun', 'pesan', '2023-03-01 17:00:00', '2023-03-01 17:00:00'),
(79, 3, '2023-02-28', '2023-03-03', 1, 'Darion Grady', 'fisher.lonny@gmail.com', '+15703984435', 'Mae Wunsch', 'pesan', '2023-02-25 17:00:00', '2023-02-25 17:00:00'),
(80, 2, '2023-03-02', '2023-03-04', 2, 'Nikko Beer I', 'maufderhar@gmail.com', '531.994.3155', 'Cathy Renner V', 'pesan', '2023-02-28 17:00:00', '2023-02-28 17:00:00'),
(81, 2, '2023-03-07', '2023-03-08', 2, 'Boyd Ebert', 'uhane@yahoo.com', '+16694081442', 'Savanah Hauck V', 'pesan', '2023-03-04 17:00:00', '2023-03-04 17:00:00'),
(82, 3, '2023-03-01', '2023-03-02', 1, 'Mr. Derek Kuvalis', 'ashleigh.bradtke@gmail.com', '+1-240-395-5419', 'Else Osinski', 'pesan', '2023-02-27 17:00:00', '2023-02-27 17:00:00'),
(83, 1, '2023-03-08', '2023-03-11', 2, 'Daren Parisian DDS', 'casey08@hotmail.com', '+1.820.401.2703', 'Brittany Hirthe', 'pesan', '2023-03-05 17:00:00', '2023-03-05 17:00:00'),
(84, 2, '2023-02-28', '2023-03-01', 1, 'Euna Howell DVM', 'christine.green@yahoo.com', '325-892-6311', 'Dr. Rowland Kerluke MD', 'pesan', '2023-02-26 17:00:00', '2023-02-26 17:00:00'),
(85, 3, '2023-03-03', '2023-03-05', 1, 'Taylor Fadel', 'imoen@gmail.com', '669-212-6799', 'Dr. Toby Hyatt DVM', 'pesan', '2023-03-01 17:00:00', '2023-03-01 17:00:00'),
(86, 2, '2023-03-11', '2023-03-14', 1, 'Jaida Collins MD', 'zrosenbaum@hotmail.com', '+16513381410', 'Flo Treutel', 'pesan', '2023-03-08 17:00:00', '2023-03-08 17:00:00'),
(87, 2, '2023-03-09', '2023-03-12', 2, 'German Tromp MD', 'gkuhlman@yahoo.com', '+1-281-360-8853', 'Brady Beer IV', 'pesan', '2023-03-05 17:00:00', '2023-03-05 17:00:00'),
(88, 3, '2023-03-10', '2023-03-13', 2, 'Mrs. Clara Schaden IV', 'jillian11@hotmail.com', '+1 (469) 320-1611', 'Prof. Delpha Spinka Sr.', 'pesan', '2023-03-06 17:00:00', '2023-03-06 17:00:00'),
(89, 2, '2023-03-01', '2023-03-03', 1, 'Dessie McDermott', 'kerluke.emiliano@hotmail.com', '872.667.2383', 'Noemy Rolfson DDS', 'pesan', '2023-02-27 17:00:00', '2023-02-27 17:00:00'),
(90, 2, '2023-03-07', '2023-03-08', 2, 'Justen Reinger', 'freida.predovic@yahoo.com', '859.386.5937', 'Mertie Kuhic', 'pesan', '2023-03-05 17:00:00', '2023-03-05 17:00:00'),
(91, 2, '2023-03-05', '2023-03-06', 2, 'Prof. Jayne Swaniawski IV', 'sfahey@gmail.com', '+1-562-649-1620', 'John Herman', 'pesan', '2023-03-03 17:00:00', '2023-03-03 17:00:00'),
(92, 2, '2023-03-04', '2023-03-05', 2, 'Prof. Maryjane Waters', 'malcolm.wolff@hotmail.com', '820-802-3600', 'Brianne Steuber', 'pesan', '2023-03-01 17:00:00', '2023-03-01 17:00:00'),
(93, 3, '2023-03-08', '2023-03-09', 2, 'Lilla Jenkins', 'bednar.claude@hotmail.com', '+1-872-354-7555', 'Chloe Corkery', 'pesan', '2023-03-05 17:00:00', '2023-03-05 17:00:00'),
(94, 2, '2023-03-01', '2023-03-03', 1, 'Archibald Rohan', 'irau@gmail.com', '860.548.4105', 'Walker Schuster', 'pesan', '2023-02-26 17:00:00', '2023-02-26 17:00:00'),
(95, 3, '2023-02-28', '2023-03-01', 2, 'Miss Retha Wyman', 'nikko.casper@gmail.com', '1-817-873-9588', 'Breanne Dach V', 'pesan', '2023-02-24 17:00:00', '2023-02-24 17:00:00'),
(96, 1, '2023-03-05', '2023-03-08', 1, 'Kurtis Ruecker', 'marilyne65@yahoo.com', '+1 (425) 652-3599', 'Corbin Abbott V', 'pesan', '2023-03-01 17:00:00', '2023-03-01 17:00:00'),
(97, 3, '2023-03-01', '2023-03-03', 2, 'Fae Pouros', 'glennie99@hotmail.com', '1-361-807-1871', 'Henry Herman', 'pesan', '2023-02-25 17:00:00', '2023-02-25 17:00:00'),
(98, 2, '2023-03-07', '2023-03-09', 2, 'Charley Herzog', 'lenna31@hotmail.com', '520-380-5822', 'Prof. Forest Heathcote Jr.', 'pesan', '2023-03-03 17:00:00', '2023-03-03 17:00:00'),
(99, 2, '2023-03-12', '2023-03-13', 1, 'Gunner Johns', 'koepp.nola@gmail.com', '(336) 266-1234', 'Maverick Murphy', 'pesan', '2023-03-09 17:00:00', '2023-03-09 17:00:00'),
(100, 2, '2023-03-08', '2023-03-10', 2, 'Jamaal Greenholt', 'orpha.tremblay@hotmail.com', '1-484-725-7315', 'Roselyn Berge', 'pesan', '2023-03-04 17:00:00', '2023-03-04 17:00:00');

-- --------------------------------------------------------

--
-- Struktur dari tabel `personal_access_tokens`
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
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_username_unique` (`username`);

--
-- Indeks untuk tabel `fasilitas_hotels`
--
ALTER TABLE `fasilitas_hotels`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `fasilitas_kamars`
--
ALTER TABLE `fasilitas_kamars`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fasilitas_kamars_kamar_id_foreign` (`kamar_id`);

--
-- Indeks untuk tabel `kamars`
--
ALTER TABLE `kamars`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `pemesanans`
--
ALTER TABLE `pemesanans`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pemesanans_kamar_id_foreign` (`kamar_id`);

--
-- Indeks untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `fasilitas_hotels`
--
ALTER TABLE `fasilitas_hotels`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `fasilitas_kamars`
--
ALTER TABLE `fasilitas_kamars`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `kamars`
--
ALTER TABLE `kamars`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `pemesanans`
--
ALTER TABLE `pemesanans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `fasilitas_kamars`
--
ALTER TABLE `fasilitas_kamars`
  ADD CONSTRAINT `fasilitas_kamars_kamar_id_foreign` FOREIGN KEY (`kamar_id`) REFERENCES `kamars` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `pemesanans`
--
ALTER TABLE `pemesanans`
  ADD CONSTRAINT `pemesanans_kamar_id_foreign` FOREIGN KEY (`kamar_id`) REFERENCES `kamars` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;
--
-- Database: `inventaris`
--
CREATE DATABASE IF NOT EXISTS `inventaris` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `inventaris`;
--
-- Database: `inventaris_arianti`
--
CREATE DATABASE IF NOT EXISTS `inventaris_arianti` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `inventaris_arianti`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `detail_pinjams`
--

CREATE TABLE `detail_pinjams` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `peminjaman_id` bigint(20) UNSIGNED NOT NULL,
  `inventaris_id` bigint(20) UNSIGNED NOT NULL,
  `jumlah_pinjam` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `detail_pinjams`
--

INSERT INTO `detail_pinjams` (`id`, `peminjaman_id`, `inventaris_id`, `jumlah_pinjam`) VALUES
(1, 1, 1, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
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
-- Struktur dari tabel `inventaris`
--

CREATE TABLE `inventaris` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `jenis_id` bigint(20) UNSIGNED NOT NULL,
  `ruang_id` bigint(20) UNSIGNED NOT NULL,
  `petugas_id` bigint(20) UNSIGNED NOT NULL,
  `kode_inventaris` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_inventaris` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kondisi` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jumlah` int(11) NOT NULL,
  `tanggal_register` date NOT NULL,
  `keterangan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `inventaris`
--

INSERT INTO `inventaris` (`id`, `jenis_id`, `ruang_id`, `petugas_id`, `kode_inventaris`, `nama_inventaris`, `kondisi`, `jumlah`, `tanggal_register`, `keterangan`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 1, 'K001', 'Komputer PC', 'Baik', 20, '2023-03-07', 'Komputer PC Lengkap dengan Monitor', '2023-03-07 07:04:34', '2023-03-07 07:04:34'),
(2, 3, 2, 1, 'M001', 'Meja Komputer', 'Baik', 18, '2023-03-07', NULL, '2023-03-07 07:04:34', '2023-03-07 07:04:34'),
(3, 4, 2, 1, 'KR001', 'Kursi Plastik', 'Baik', 36, '2023-03-07', 'Kursi Plastik Olympus', '2023-03-07 07:04:34', '2023-03-07 07:04:34');

-- --------------------------------------------------------

--
-- Struktur dari tabel `jenis`
--

CREATE TABLE `jenis` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `kode_jenis` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_jenis` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `keterangan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `jenis`
--

INSERT INTO `jenis` (`id`, `kode_jenis`, `nama_jenis`, `keterangan`) VALUES
(1, 'KOMP', 'Komputer', 'PC, Laptop, Notebook'),
(2, 'INF', 'Infocus', NULL),
(3, 'MJ', 'Meja', 'Berbagai Jenis Meja'),
(4, 'KR', 'Kursi', 'Berbagai Jenis Kursi');

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_100000_create_password_resets_table', 1),
(2, '2019_08_19_000000_create_failed_jobs_table', 1),
(3, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(4, '2023_01_12_132416_create_petugas_table', 1),
(5, '2023_01_13_072540_create_pegawais_table', 1),
(6, '2023_01_17_050433_create_jenis_table', 1),
(7, '2023_01_17_122111_create_ruangs_table', 1),
(8, '2023_01_20_034723_create_inventaris_table', 1),
(9, '2023_01_21_024823_create_peminjamans_table', 1),
(10, '2023_01_21_024942_create_detail_pinjams_table', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pegawais`
--

CREATE TABLE `pegawais` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_pegawai` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nip` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alamat` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `pegawais`
--

INSERT INTO `pegawais` (`id`, `username`, `password`, `nama_pegawai`, `nip`, `alamat`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'dodo', '$2y$10$4FQoPy86YnB8jNGnip1VKuKolUB9O7x1zNgNL/OguRgsSH9dC32L6', 'Dodo Sidodo', '200302032022031001', 'Jl. Raya Pangandaran, Pangandaran.', NULL, '2023-03-07 07:04:33', '2023-03-07 07:04:33');

-- --------------------------------------------------------

--
-- Struktur dari tabel `peminjamans`
--

CREATE TABLE `peminjamans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `pegawai_id` bigint(20) UNSIGNED NOT NULL,
  `tanggal_pinjam` date NOT NULL,
  `tanggal_kembali` date NOT NULL,
  `status_peminjaman` enum('pinjam','selesai','batal') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pinjam',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `peminjamans`
--

INSERT INTO `peminjamans` (`id`, `pegawai_id`, `tanggal_pinjam`, `tanggal_kembali`, `status_peminjaman`, `created_at`, `updated_at`) VALUES
(1, 1, '2023-03-07', '2023-03-08', 'pinjam', '2023-03-07 07:09:55', '2023-03-07 07:09:55');

-- --------------------------------------------------------

--
-- Struktur dari tabel `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `petugas`
--

CREATE TABLE `petugas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_petugas` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `level` enum('admin','operator') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'operator',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `petugas`
--

INSERT INTO `petugas` (`id`, `username`, `password`, `nama_petugas`, `level`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', '$2y$10$YpTYFHBFLJemC/PqMyy9.e8Skj3lvXKTvhkQts7HGmhMgaMCua7Ky', 'Administrator', 'admin', NULL, '2023-03-07 07:04:32', '2023-03-07 07:04:32'),
(2, 'operator', '$2y$10$NjSXH/jKn65e5FjOSN/ug.Qr.DYih34TgRwdXQzqoca8EOTGW5P82', 'Operator', 'operator', NULL, '2023-03-07 07:04:33', '2023-03-07 07:04:33');

-- --------------------------------------------------------

--
-- Struktur dari tabel `ruangs`
--

CREATE TABLE `ruangs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `kode_ruang` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_ruang` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `keterangan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `ruangs`
--

INSERT INTO `ruangs` (`id`, `kode_ruang`, `nama_ruang`, `keterangan`) VALUES
(1, 'RPL1', 'LAB RPL 1', NULL),
(2, 'RPL2', 'LAB RPL 2', NULL),
(3, 'TKJ', 'LAB TKJ', NULL),
(4, 'GP', 'LAB GP', NULL);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `detail_pinjams`
--
ALTER TABLE `detail_pinjams`
  ADD PRIMARY KEY (`id`),
  ADD KEY `detail_pinjams_peminjaman_id_foreign` (`peminjaman_id`),
  ADD KEY `detail_pinjams_inventaris_id_foreign` (`inventaris_id`);

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indeks untuk tabel `inventaris`
--
ALTER TABLE `inventaris`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `inventaris_kode_inventaris_unique` (`kode_inventaris`),
  ADD KEY `inventaris_jenis_id_foreign` (`jenis_id`),
  ADD KEY `inventaris_ruang_id_foreign` (`ruang_id`),
  ADD KEY `inventaris_petugas_id_foreign` (`petugas_id`);

--
-- Indeks untuk tabel `jenis`
--
ALTER TABLE `jenis`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `jenis_kode_jenis_unique` (`kode_jenis`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `password_resets`
--
ALTER TABLE `password_resets`
  ADD PRIMARY KEY (`email`);

--
-- Indeks untuk tabel `pegawais`
--
ALTER TABLE `pegawais`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pegawais_username_unique` (`username`);

--
-- Indeks untuk tabel `peminjamans`
--
ALTER TABLE `peminjamans`
  ADD PRIMARY KEY (`id`),
  ADD KEY `peminjamans_pegawai_id_foreign` (`pegawai_id`);

--
-- Indeks untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indeks untuk tabel `petugas`
--
ALTER TABLE `petugas`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `petugas_username_unique` (`username`);

--
-- Indeks untuk tabel `ruangs`
--
ALTER TABLE `ruangs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ruangs_kode_ruang_unique` (`kode_ruang`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `detail_pinjams`
--
ALTER TABLE `detail_pinjams`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `inventaris`
--
ALTER TABLE `inventaris`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `jenis`
--
ALTER TABLE `jenis`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `pegawais`
--
ALTER TABLE `pegawais`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `peminjamans`
--
ALTER TABLE `peminjamans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `petugas`
--
ALTER TABLE `petugas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `ruangs`
--
ALTER TABLE `ruangs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `detail_pinjams`
--
ALTER TABLE `detail_pinjams`
  ADD CONSTRAINT `detail_pinjams_inventaris_id_foreign` FOREIGN KEY (`inventaris_id`) REFERENCES `inventaris` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `detail_pinjams_peminjaman_id_foreign` FOREIGN KEY (`peminjaman_id`) REFERENCES `peminjamans` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Ketidakleluasaan untuk tabel `inventaris`
--
ALTER TABLE `inventaris`
  ADD CONSTRAINT `inventaris_jenis_id_foreign` FOREIGN KEY (`jenis_id`) REFERENCES `jenis` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `inventaris_petugas_id_foreign` FOREIGN KEY (`petugas_id`) REFERENCES `petugas` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `inventaris_ruang_id_foreign` FOREIGN KEY (`ruang_id`) REFERENCES `ruangs` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Ketidakleluasaan untuk tabel `peminjamans`
--
ALTER TABLE `peminjamans`
  ADD CONSTRAINT `peminjamans_pegawai_id_foreign` FOREIGN KEY (`pegawai_id`) REFERENCES `pegawais` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;
--
-- Database: `inventaris_febri`
--
CREATE DATABASE IF NOT EXISTS `inventaris_febri` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `inventaris_febri`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `detail_pinjams`
--
-- Kesalahan membaca struktur untuk tabel inventaris_febri.detail_pinjams: #1932 - Table &#039;inventaris_febri.detail_pinjams&#039; doesn&#039;t exist in engine
-- Kesalahan membaca data untuk tabel inventaris_febri.detail_pinjams: #1064 - You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near &#039;FROM `inventaris_febri`.`detail_pinjams`&#039; at line 1

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
--
-- Kesalahan membaca struktur untuk tabel inventaris_febri.failed_jobs: #1932 - Table &#039;inventaris_febri.failed_jobs&#039; doesn&#039;t exist in engine
-- Kesalahan membaca data untuk tabel inventaris_febri.failed_jobs: #1064 - You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near &#039;FROM `inventaris_febri`.`failed_jobs`&#039; at line 1

-- --------------------------------------------------------

--
-- Struktur dari tabel `inventaris`
--
-- Kesalahan membaca struktur untuk tabel inventaris_febri.inventaris: #1932 - Table &#039;inventaris_febri.inventaris&#039; doesn&#039;t exist in engine
-- Kesalahan membaca data untuk tabel inventaris_febri.inventaris: #1064 - You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near &#039;FROM `inventaris_febri`.`inventaris`&#039; at line 1

-- --------------------------------------------------------

--
-- Struktur dari tabel `jenis`
--
-- Kesalahan membaca struktur untuk tabel inventaris_febri.jenis: #1932 - Table &#039;inventaris_febri.jenis&#039; doesn&#039;t exist in engine
-- Kesalahan membaca data untuk tabel inventaris_febri.jenis: #1064 - You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near &#039;FROM `inventaris_febri`.`jenis`&#039; at line 1

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--
-- Kesalahan membaca struktur untuk tabel inventaris_febri.migrations: #1932 - Table &#039;inventaris_febri.migrations&#039; doesn&#039;t exist in engine
-- Kesalahan membaca data untuk tabel inventaris_febri.migrations: #1064 - You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near &#039;FROM `inventaris_febri`.`migrations`&#039; at line 1

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_resets`
--
-- Kesalahan membaca struktur untuk tabel inventaris_febri.password_resets: #1932 - Table &#039;inventaris_febri.password_resets&#039; doesn&#039;t exist in engine
-- Kesalahan membaca data untuk tabel inventaris_febri.password_resets: #1064 - You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near &#039;FROM `inventaris_febri`.`password_resets`&#039; at line 1

-- --------------------------------------------------------

--
-- Struktur dari tabel `pegawais`
--
-- Kesalahan membaca struktur untuk tabel inventaris_febri.pegawais: #1932 - Table &#039;inventaris_febri.pegawais&#039; doesn&#039;t exist in engine
-- Kesalahan membaca data untuk tabel inventaris_febri.pegawais: #1064 - You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near &#039;FROM `inventaris_febri`.`pegawais`&#039; at line 1

-- --------------------------------------------------------

--
-- Struktur dari tabel `peminjamans`
--
-- Kesalahan membaca struktur untuk tabel inventaris_febri.peminjamans: #1932 - Table &#039;inventaris_febri.peminjamans&#039; doesn&#039;t exist in engine
-- Kesalahan membaca data untuk tabel inventaris_febri.peminjamans: #1064 - You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near &#039;FROM `inventaris_febri`.`peminjamans`&#039; at line 1

-- --------------------------------------------------------

--
-- Struktur dari tabel `personal_access_tokens`
--
-- Kesalahan membaca struktur untuk tabel inventaris_febri.personal_access_tokens: #1932 - Table &#039;inventaris_febri.personal_access_tokens&#039; doesn&#039;t exist in engine
-- Kesalahan membaca data untuk tabel inventaris_febri.personal_access_tokens: #1064 - You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near &#039;FROM `inventaris_febri`.`personal_access_tokens`&#039; at line 1

-- --------------------------------------------------------

--
-- Struktur dari tabel `petugas`
--
-- Kesalahan membaca struktur untuk tabel inventaris_febri.petugas: #1932 - Table &#039;inventaris_febri.petugas&#039; doesn&#039;t exist in engine
-- Kesalahan membaca data untuk tabel inventaris_febri.petugas: #1064 - You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near &#039;FROM `inventaris_febri`.`petugas`&#039; at line 1

-- --------------------------------------------------------

--
-- Struktur dari tabel `ruangs`
--
-- Kesalahan membaca struktur untuk tabel inventaris_febri.ruangs: #1932 - Table &#039;inventaris_febri.ruangs&#039; doesn&#039;t exist in engine
-- Kesalahan membaca data untuk tabel inventaris_febri.ruangs: #1064 - You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near &#039;FROM `inventaris_febri`.`ruangs`&#039; at line 1
--
-- Database: `inventaris_febri1`
--
CREATE DATABASE IF NOT EXISTS `inventaris_febri1` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `inventaris_febri1`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `detail_pinjams`
--

CREATE TABLE `detail_pinjams` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `peminjaman_id` bigint(20) UNSIGNED NOT NULL,
  `inventaris_id` bigint(20) UNSIGNED NOT NULL,
  `jumlah_pinjam` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
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
-- Struktur dari tabel `inventaris`
--

CREATE TABLE `inventaris` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `jenis_id` bigint(20) UNSIGNED NOT NULL,
  `ruang_id` bigint(20) UNSIGNED NOT NULL,
  `petugas_id` bigint(20) UNSIGNED NOT NULL,
  `kode_inventaris` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_inventaris` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kondisi` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jumlah` int(11) NOT NULL,
  `tanggal_register` date NOT NULL,
  `keterangan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `inventaris`
--

INSERT INTO `inventaris` (`id`, `jenis_id`, `ruang_id`, `petugas_id`, `kode_inventaris`, `nama_inventaris`, `kondisi`, `jumlah`, `tanggal_register`, `keterangan`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 1, 'K001', 'Komputer PC', 'Baik', 20, '2023-03-08', 'Komputer PC Lengkap dengan Monitor', '2023-03-07 20:36:44', '2023-03-07 20:36:44'),
(2, 3, 2, 1, 'M001', 'Meja Komputer', 'Baik', 18, '2023-03-08', NULL, '2023-03-07 20:36:44', '2023-03-07 20:36:44'),
(3, 4, 2, 1, 'KR001', 'Kursi Plastik', 'Baik', 36, '2023-03-08', 'Kursi Plastik Olympus', '2023-03-07 20:36:44', '2023-03-07 20:36:44');

-- --------------------------------------------------------

--
-- Struktur dari tabel `jenis`
--

CREATE TABLE `jenis` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `kode_jenis` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_jenis` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `keterangan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `jenis`
--

INSERT INTO `jenis` (`id`, `kode_jenis`, `nama_jenis`, `keterangan`) VALUES
(1, 'KOMP', 'Komputer', 'PC, Laptop, Notebook'),
(2, 'INF', 'Infocus', NULL),
(3, 'MJ', 'Meja', 'Berbagai Jenis Meja'),
(4, 'KR', 'Kursi', 'Berbagai Jenis Kursi');

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_100000_create_password_resets_table', 1),
(2, '2019_08_19_000000_create_failed_jobs_table', 1),
(3, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(4, '2023_01_15_074718_create_petugas_table', 1),
(5, '2023_01_16_040415_create_pegawais_table', 1),
(6, '2023_01_24_034404_create_jenis_table', 1),
(7, '2023_01_25_064135_create_ruangs_table', 1),
(8, '2023_01_26_104625_create_inventaris_table', 1),
(9, '2023_01_26_135822_create_peminjamans_table', 1),
(10, '2023_01_26_140009_create_detail_pinjams_table', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pegawais`
--

CREATE TABLE `pegawais` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_pegawai` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nip` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alamat` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `pegawais`
--

INSERT INTO `pegawais` (`id`, `username`, `password`, `nama_pegawai`, `nip`, `alamat`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'dodo', '$2y$10$7K87S.lxuTL1FMeMtIpPRuZr0IocuLATfl8Ukbcu62l0F4MGMW1em', 'Dodo Sidodo', '200302032022031001', 'Jl. Raya Pangandaran, Pangandaran.', NULL, '2023-03-07 20:36:44', '2023-03-07 20:36:44');

-- --------------------------------------------------------

--
-- Struktur dari tabel `peminjamans`
--

CREATE TABLE `peminjamans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `pegawai_id` bigint(20) UNSIGNED NOT NULL,
  `tanggal_pinjam` date NOT NULL,
  `tanggal_kembali` date NOT NULL,
  `status_peminjaman` enum('pinjam','selesai','batal') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pinjam',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `petugas`
--

CREATE TABLE `petugas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_petugas` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `level` enum('admin','operator') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'operator',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `petugas`
--

INSERT INTO `petugas` (`id`, `username`, `password`, `nama_petugas`, `level`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', '$2y$10$1OD2iD2.utMN/7a5jEzt0ODWaBUdPMWVLyLpJz71nF9IKePEY.wOS', 'Administrator', 'admin', NULL, '2023-03-07 20:36:43', '2023-03-07 20:36:43'),
(2, 'operator', '$2y$10$iJrVDPJfX/TareYWv96/7.m4ihUSTx97hg10N6Wwkzaf/NdglHq.m', 'Operator', 'operator', NULL, '2023-03-07 20:36:43', '2023-03-07 20:36:43');

-- --------------------------------------------------------

--
-- Struktur dari tabel `ruangs`
--

CREATE TABLE `ruangs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `kode_ruang` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_ruang` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `keterangan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `ruangs`
--

INSERT INTO `ruangs` (`id`, `kode_ruang`, `nama_ruang`, `keterangan`, `created_at`, `updated_at`) VALUES
(1, 'RPL1', 'LAB RPL 1', NULL, NULL, NULL),
(2, 'RPL2', 'LAB RPL 2', NULL, NULL, NULL),
(3, 'TKJ', 'LAB TKJ', NULL, NULL, NULL),
(4, 'GP', 'LAB GP', NULL, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `detail_pinjams`
--
ALTER TABLE `detail_pinjams`
  ADD PRIMARY KEY (`id`),
  ADD KEY `detail_pinjams_peminjaman_id_foreign` (`peminjaman_id`),
  ADD KEY `detail_pinjams_inventaris_id_foreign` (`inventaris_id`);

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indeks untuk tabel `inventaris`
--
ALTER TABLE `inventaris`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `inventaris_kode_inventaris_unique` (`kode_inventaris`),
  ADD KEY `inventaris_jenis_id_foreign` (`jenis_id`),
  ADD KEY `inventaris_ruang_id_foreign` (`ruang_id`),
  ADD KEY `inventaris_petugas_id_foreign` (`petugas_id`);

--
-- Indeks untuk tabel `jenis`
--
ALTER TABLE `jenis`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `jenis_kode_jenis_unique` (`kode_jenis`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `password_resets`
--
ALTER TABLE `password_resets`
  ADD PRIMARY KEY (`email`);

--
-- Indeks untuk tabel `pegawais`
--
ALTER TABLE `pegawais`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pegawais_username_unique` (`username`);

--
-- Indeks untuk tabel `peminjamans`
--
ALTER TABLE `peminjamans`
  ADD PRIMARY KEY (`id`),
  ADD KEY `peminjamans_pegawai_id_foreign` (`pegawai_id`);

--
-- Indeks untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indeks untuk tabel `petugas`
--
ALTER TABLE `petugas`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `petugas_username_unique` (`username`);

--
-- Indeks untuk tabel `ruangs`
--
ALTER TABLE `ruangs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ruangs_kode_ruang_unique` (`kode_ruang`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `detail_pinjams`
--
ALTER TABLE `detail_pinjams`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `inventaris`
--
ALTER TABLE `inventaris`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `jenis`
--
ALTER TABLE `jenis`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `pegawais`
--
ALTER TABLE `pegawais`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `peminjamans`
--
ALTER TABLE `peminjamans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `petugas`
--
ALTER TABLE `petugas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `ruangs`
--
ALTER TABLE `ruangs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `detail_pinjams`
--
ALTER TABLE `detail_pinjams`
  ADD CONSTRAINT `detail_pinjams_inventaris_id_foreign` FOREIGN KEY (`inventaris_id`) REFERENCES `inventaris` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `detail_pinjams_peminjaman_id_foreign` FOREIGN KEY (`peminjaman_id`) REFERENCES `peminjamans` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Ketidakleluasaan untuk tabel `inventaris`
--
ALTER TABLE `inventaris`
  ADD CONSTRAINT `inventaris_jenis_id_foreign` FOREIGN KEY (`jenis_id`) REFERENCES `jenis` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `inventaris_petugas_id_foreign` FOREIGN KEY (`petugas_id`) REFERENCES `petugas` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `inventaris_ruang_id_foreign` FOREIGN KEY (`ruang_id`) REFERENCES `ruangs` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Ketidakleluasaan untuk tabel `peminjamans`
--
ALTER TABLE `peminjamans`
  ADD CONSTRAINT `peminjamans_pegawai_id_foreign` FOREIGN KEY (`pegawai_id`) REFERENCES `pegawais` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;
--
-- Database: `kasir`
--
CREATE DATABASE IF NOT EXISTS `kasir` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `kasir`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
--
-- Kesalahan membaca struktur untuk tabel kasir.failed_jobs: #1932 - Table &#039;kasir.failed_jobs&#039; doesn&#039;t exist in engine
-- Kesalahan membaca data untuk tabel kasir.failed_jobs: #1064 - You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near &#039;FROM `kasir`.`failed_jobs`&#039; at line 1

-- --------------------------------------------------------

--
-- Struktur dari tabel `log_activities`
--
-- Kesalahan membaca struktur untuk tabel kasir.log_activities: #1932 - Table &#039;kasir.log_activities&#039; doesn&#039;t exist in engine
-- Kesalahan membaca data untuk tabel kasir.log_activities: #1064 - You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near &#039;FROM `kasir`.`log_activities`&#039; at line 1

-- --------------------------------------------------------

--
-- Struktur dari tabel `menus`
--
-- Kesalahan membaca struktur untuk tabel kasir.menus: #1932 - Table &#039;kasir.menus&#039; doesn&#039;t exist in engine
-- Kesalahan membaca data untuk tabel kasir.menus: #1064 - You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near &#039;FROM `kasir`.`menus`&#039; at line 1

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--
-- Kesalahan membaca struktur untuk tabel kasir.migrations: #1932 - Table &#039;kasir.migrations&#039; doesn&#039;t exist in engine
-- Kesalahan membaca data untuk tabel kasir.migrations: #1064 - You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near &#039;FROM `kasir`.`migrations`&#039; at line 1

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_resets`
--
-- Kesalahan membaca struktur untuk tabel kasir.password_resets: #1932 - Table &#039;kasir.password_resets&#039; doesn&#039;t exist in engine
-- Kesalahan membaca data untuk tabel kasir.password_resets: #1064 - You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near &#039;FROM `kasir`.`password_resets`&#039; at line 1

-- --------------------------------------------------------

--
-- Struktur dari tabel `personal_access_tokens`
--
-- Kesalahan membaca struktur untuk tabel kasir.personal_access_tokens: #1932 - Table &#039;kasir.personal_access_tokens&#039; doesn&#039;t exist in engine
-- Kesalahan membaca data untuk tabel kasir.personal_access_tokens: #1064 - You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near &#039;FROM `kasir`.`personal_access_tokens`&#039; at line 1

-- --------------------------------------------------------

--
-- Struktur dari tabel `transaksis`
--
-- Kesalahan membaca struktur untuk tabel kasir.transaksis: #1932 - Table &#039;kasir.transaksis&#039; doesn&#039;t exist in engine
-- Kesalahan membaca data untuk tabel kasir.transaksis: #1064 - You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near &#039;FROM `kasir`.`transaksis`&#039; at line 1

-- --------------------------------------------------------

--
-- Struktur dari tabel `transaksi_details`
--
-- Kesalahan membaca struktur untuk tabel kasir.transaksi_details: #1932 - Table &#039;kasir.transaksi_details&#039; doesn&#039;t exist in engine
-- Kesalahan membaca data untuk tabel kasir.transaksi_details: #1064 - You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near &#039;FROM `kasir`.`transaksi_details`&#039; at line 1

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--
-- Kesalahan membaca struktur untuk tabel kasir.users: #1932 - Table &#039;kasir.users&#039; doesn&#039;t exist in engine
-- Kesalahan membaca data untuk tabel kasir.users: #1064 - You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near &#039;FROM `kasir`.`users`&#039; at line 1
--
-- Database: `kasir_febri`
--
CREATE DATABASE IF NOT EXISTS `kasir_febri` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `kasir_febri`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
--
-- Kesalahan membaca struktur untuk tabel kasir_febri.failed_jobs: #1932 - Table &#039;kasir_febri.failed_jobs&#039; doesn&#039;t exist in engine
-- Kesalahan membaca data untuk tabel kasir_febri.failed_jobs: #1064 - You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near &#039;FROM `kasir_febri`.`failed_jobs`&#039; at line 1

-- --------------------------------------------------------

--
-- Struktur dari tabel `log_activities`
--
-- Kesalahan membaca struktur untuk tabel kasir_febri.log_activities: #1932 - Table &#039;kasir_febri.log_activities&#039; doesn&#039;t exist in engine
-- Kesalahan membaca data untuk tabel kasir_febri.log_activities: #1064 - You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near &#039;FROM `kasir_febri`.`log_activities`&#039; at line 1

-- --------------------------------------------------------

--
-- Struktur dari tabel `menus`
--
-- Kesalahan membaca struktur untuk tabel kasir_febri.menus: #1932 - Table &#039;kasir_febri.menus&#039; doesn&#039;t exist in engine
-- Kesalahan membaca data untuk tabel kasir_febri.menus: #1064 - You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near &#039;FROM `kasir_febri`.`menus`&#039; at line 1

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--
-- Kesalahan membaca struktur untuk tabel kasir_febri.migrations: #1932 - Table &#039;kasir_febri.migrations&#039; doesn&#039;t exist in engine
-- Kesalahan membaca data untuk tabel kasir_febri.migrations: #1064 - You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near &#039;FROM `kasir_febri`.`migrations`&#039; at line 1

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_resets`
--
-- Kesalahan membaca struktur untuk tabel kasir_febri.password_resets: #1932 - Table &#039;kasir_febri.password_resets&#039; doesn&#039;t exist in engine
-- Kesalahan membaca data untuk tabel kasir_febri.password_resets: #1064 - You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near &#039;FROM `kasir_febri`.`password_resets`&#039; at line 1

-- --------------------------------------------------------

--
-- Struktur dari tabel `personal_access_tokens`
--
-- Kesalahan membaca struktur untuk tabel kasir_febri.personal_access_tokens: #1932 - Table &#039;kasir_febri.personal_access_tokens&#039; doesn&#039;t exist in engine
-- Kesalahan membaca data untuk tabel kasir_febri.personal_access_tokens: #1064 - You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near &#039;FROM `kasir_febri`.`personal_access_tokens`&#039; at line 1

-- --------------------------------------------------------

--
-- Struktur dari tabel `transaksis`
--
-- Kesalahan membaca struktur untuk tabel kasir_febri.transaksis: #1932 - Table &#039;kasir_febri.transaksis&#039; doesn&#039;t exist in engine
-- Kesalahan membaca data untuk tabel kasir_febri.transaksis: #1064 - You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near &#039;FROM `kasir_febri`.`transaksis`&#039; at line 1

-- --------------------------------------------------------

--
-- Struktur dari tabel `transaksi_details`
--
-- Kesalahan membaca struktur untuk tabel kasir_febri.transaksi_details: #1932 - Table &#039;kasir_febri.transaksi_details&#039; doesn&#039;t exist in engine
-- Kesalahan membaca data untuk tabel kasir_febri.transaksi_details: #1064 - You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near &#039;FROM `kasir_febri`.`transaksi_details`&#039; at line 1

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--
-- Kesalahan membaca struktur untuk tabel kasir_febri.users: #1932 - Table &#039;kasir_febri.users&#039; doesn&#039;t exist in engine
-- Kesalahan membaca data untuk tabel kasir_febri.users: #1064 - You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near &#039;FROM `kasir_febri`.`users`&#039; at line 1
--
-- Database: `kasir_febri1`
--
CREATE DATABASE IF NOT EXISTS `kasir_febri1` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `kasir_febri1`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
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
-- Struktur dari tabel `log_activities`
--

CREATE TABLE `log_activities` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `ip` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `method` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `agent` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `log_activities`
--

INSERT INTO `log_activities` (`id`, `user_id`, `ip`, `subject`, `method`, `url`, `agent`, `created_at`, `updated_at`) VALUES
(1, 1, '127.0.0.1', 'berhasil Login', 'POST', 'http://localhost:8000/login', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', '2023-03-07 20:32:17', '2023-03-07 20:32:17');

-- --------------------------------------------------------

--
-- Struktur dari tabel `menus`
--

CREATE TABLE `menus` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama_menu` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `harga` int(11) NOT NULL,
  `foto` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `keterangan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kategori` enum('makanan','minuman') COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_11_16_074605_create_log_activities_table', 1),
(6, '2022_11_18_061120_create_menus_table', 1),
(7, '2022_11_18_071136_create_transaksis_table', 1),
(8, '2022_11_18_071600_create_transaksi_details_table', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `transaksis`
--

CREATE TABLE `transaksis` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `qty_total` int(11) NOT NULL,
  `sub_total` int(11) NOT NULL,
  `pajak` int(11) NOT NULL,
  `total` int(11) NOT NULL,
  `tunai` int(11) NOT NULL,
  `kembalian` int(11) NOT NULL,
  `status` enum('success','cancel') COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `transaksi_details`
--

CREATE TABLE `transaksi_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `transaksi_id` bigint(20) UNSIGNED NOT NULL,
  `menu_id` bigint(20) UNSIGNED NOT NULL,
  `qty` int(11) NOT NULL,
  `harga` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` enum('admin','manajer','kasir') COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `nama`, `username`, `password`, `role`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Administrator', 'admin', '$2y$10$ECt./hXDB47reOpuCK/hZOXVL30UqjcBtMBNm0N5J21ab4AgK/J3K', 'admin', 'm0TwnZqahA', '2023-03-07 20:30:21', '2023-03-07 20:30:21'),
(2, 'Manajer', 'manajer', '$2y$10$Rs74t69vDpDOlL09I4NVQe9.aJaM7IYWBDgiqP80Ho0ePVclBvCAq', 'manajer', 'zmTzchZOKn', '2023-03-07 20:30:22', '2023-03-07 20:30:22'),
(3, 'Kasir', 'kasir', '$2y$10$y8QKYsTxQcJOCs0veBCQAe5bWTW6kENXc6z19ybrPqbLn3jyHp5qK', 'kasir', 'W12oqZxwUa', '2023-03-07 20:30:22', '2023-03-07 20:30:22');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indeks untuk tabel `log_activities`
--
ALTER TABLE `log_activities`
  ADD PRIMARY KEY (`id`),
  ADD KEY `log_activities_user_id_foreign` (`user_id`);

--
-- Indeks untuk tabel `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indeks untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indeks untuk tabel `transaksis`
--
ALTER TABLE `transaksis`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transaksis_user_id_foreign` (`user_id`);

--
-- Indeks untuk tabel `transaksi_details`
--
ALTER TABLE `transaksi_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transaksi_details_transaksi_id_foreign` (`transaksi_id`),
  ADD KEY `transaksi_details_menu_id_foreign` (`menu_id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `log_activities`
--
ALTER TABLE `log_activities`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `menus`
--
ALTER TABLE `menus`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `transaksis`
--
ALTER TABLE `transaksis`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `transaksi_details`
--
ALTER TABLE `transaksi_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `log_activities`
--
ALTER TABLE `log_activities`
  ADD CONSTRAINT `log_activities_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Ketidakleluasaan untuk tabel `transaksis`
--
ALTER TABLE `transaksis`
  ADD CONSTRAINT `transaksis_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Ketidakleluasaan untuk tabel `transaksi_details`
--
ALTER TABLE `transaksi_details`
  ADD CONSTRAINT `transaksi_details_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `transaksi_details_transaksi_id_foreign` FOREIGN KEY (`transaksi_id`) REFERENCES `transaksis` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;
--
-- Database: `latihan_arianti`
--
CREATE DATABASE IF NOT EXISTS `latihan_arianti` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `latihan_arianti`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
--
-- Kesalahan membaca struktur untuk tabel latihan_arianti.failed_jobs: #1932 - Table &#039;latihan_arianti.failed_jobs&#039; doesn&#039;t exist in engine
-- Kesalahan membaca data untuk tabel latihan_arianti.failed_jobs: #1064 - You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near &#039;FROM `latihan_arianti`.`failed_jobs`&#039; at line 1

-- --------------------------------------------------------

--
-- Struktur dari tabel `members`
--
-- Kesalahan membaca struktur untuk tabel latihan_arianti.members: #1932 - Table &#039;latihan_arianti.members&#039; doesn&#039;t exist in engine
-- Kesalahan membaca data untuk tabel latihan_arianti.members: #1064 - You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near &#039;FROM `latihan_arianti`.`members`&#039; at line 1

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--
-- Kesalahan membaca struktur untuk tabel latihan_arianti.migrations: #1932 - Table &#039;latihan_arianti.migrations&#039; doesn&#039;t exist in engine
-- Kesalahan membaca data untuk tabel latihan_arianti.migrations: #1064 - You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near &#039;FROM `latihan_arianti`.`migrations`&#039; at line 1

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_reset_tokens`
--
-- Kesalahan membaca struktur untuk tabel latihan_arianti.password_reset_tokens: #1932 - Table &#039;latihan_arianti.password_reset_tokens&#039; doesn&#039;t exist in engine
-- Kesalahan membaca data untuk tabel latihan_arianti.password_reset_tokens: #1064 - You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near &#039;FROM `latihan_arianti`.`password_reset_tokens`&#039; at line 1

-- --------------------------------------------------------

--
-- Struktur dari tabel `personal_access_tokens`
--
-- Kesalahan membaca struktur untuk tabel latihan_arianti.personal_access_tokens: #1932 - Table &#039;latihan_arianti.personal_access_tokens&#039; doesn&#039;t exist in engine
-- Kesalahan membaca data untuk tabel latihan_arianti.personal_access_tokens: #1064 - You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near &#039;FROM `latihan_arianti`.`personal_access_tokens`&#039; at line 1

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--
-- Kesalahan membaca struktur untuk tabel latihan_arianti.users: #1932 - Table &#039;latihan_arianti.users&#039; doesn&#039;t exist in engine
-- Kesalahan membaca data untuk tabel latihan_arianti.users: #1064 - You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near &#039;FROM `latihan_arianti`.`users`&#039; at line 1
--
-- Database: `latihan_ujikom`
--
CREATE DATABASE IF NOT EXISTS `latihan_ujikom` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `latihan_ujikom`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
--
-- Kesalahan membaca struktur untuk tabel latihan_ujikom.failed_jobs: #1932 - Table &#039;latihan_ujikom.failed_jobs&#039; doesn&#039;t exist in engine
-- Kesalahan membaca data untuk tabel latihan_ujikom.failed_jobs: #1064 - You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near &#039;FROM `latihan_ujikom`.`failed_jobs`&#039; at line 1

-- --------------------------------------------------------

--
-- Struktur dari tabel `members`
--
-- Kesalahan membaca struktur untuk tabel latihan_ujikom.members: #1932 - Table &#039;latihan_ujikom.members&#039; doesn&#039;t exist in engine
-- Kesalahan membaca data untuk tabel latihan_ujikom.members: #1064 - You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near &#039;FROM `latihan_ujikom`.`members`&#039; at line 1

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--
-- Kesalahan membaca struktur untuk tabel latihan_ujikom.migrations: #1932 - Table &#039;latihan_ujikom.migrations&#039; doesn&#039;t exist in engine
-- Kesalahan membaca data untuk tabel latihan_ujikom.migrations: #1064 - You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near &#039;FROM `latihan_ujikom`.`migrations`&#039; at line 1

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_reset_tokens`
--
-- Kesalahan membaca struktur untuk tabel latihan_ujikom.password_reset_tokens: #1932 - Table &#039;latihan_ujikom.password_reset_tokens&#039; doesn&#039;t exist in engine
-- Kesalahan membaca data untuk tabel latihan_ujikom.password_reset_tokens: #1064 - You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near &#039;FROM `latihan_ujikom`.`password_reset_tokens`&#039; at line 1

-- --------------------------------------------------------

--
-- Struktur dari tabel `personal_access_tokens`
--
-- Kesalahan membaca struktur untuk tabel latihan_ujikom.personal_access_tokens: #1932 - Table &#039;latihan_ujikom.personal_access_tokens&#039; doesn&#039;t exist in engine
-- Kesalahan membaca data untuk tabel latihan_ujikom.personal_access_tokens: #1064 - You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near &#039;FROM `latihan_ujikom`.`personal_access_tokens`&#039; at line 1

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--
-- Kesalahan membaca struktur untuk tabel latihan_ujikom.users: #1932 - Table &#039;latihan_ujikom.users&#039; doesn&#039;t exist in engine
-- Kesalahan membaca data untuk tabel latihan_ujikom.users: #1064 - You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near &#039;FROM `latihan_ujikom`.`users`&#039; at line 1
--
-- Database: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(10) UNSIGNED NOT NULL,
  `dbase` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `query` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_length` text COLLATE utf8_bin DEFAULT NULL,
  `col_collation` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) COLLATE utf8_bin DEFAULT '',
  `col_default` text COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `column_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `settings_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `export_type` varchar(10) COLLATE utf8_bin NOT NULL,
  `template_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `template_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp(),
  `sqlquery` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT 0,
  `x` float UNSIGNED NOT NULL DEFAULT 0,
  `y` float UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `display_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `prefs` text COLLATE utf8_bin NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text COLLATE utf8_bin NOT NULL,
  `schema_sql` text COLLATE utf8_bin DEFAULT NULL,
  `data_sql` longtext COLLATE utf8_bin DEFAULT NULL,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') COLLATE utf8_bin DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `config_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Dumping data untuk tabel `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2023-03-11 12:43:21', '{\"Console\\/Mode\":\"collapse\",\"lang\":\"id\"}');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL,
  `tab` varchar(64) COLLATE utf8_bin NOT NULL,
  `allowed` enum('Y','N') COLLATE utf8_bin NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Indeks untuk tabel `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Indeks untuk tabel `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Indeks untuk tabel `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Indeks untuk tabel `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Indeks untuk tabel `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Indeks untuk tabel `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Indeks untuk tabel `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Indeks untuk tabel `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Indeks untuk tabel `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Indeks untuk tabel `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Indeks untuk tabel `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Indeks untuk tabel `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Indeks untuk tabel `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Indeks untuk tabel `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Indeks untuk tabel `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Indeks untuk tabel `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Indeks untuk tabel `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Database: `resto`
--
CREATE DATABASE IF NOT EXISTS `resto` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `resto`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
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
-- Struktur dari tabel `log_activities`
--

CREATE TABLE `log_activities` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `ip` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `method` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `agent` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `log_activities`
--

INSERT INTO `log_activities` (`id`, `user_id`, `ip`, `subject`, `method`, `url`, `agent`, `created_at`, `updated_at`) VALUES
(1, 1, '127.0.0.1', 'berhasil Login', 'POST', 'http://localhost:8000/login', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', '2023-03-06 22:15:43', '2023-03-06 22:15:43'),
(2, 1, '127.0.0.1', 'berhasil Logout', 'POST', 'http://localhost:8000/logout', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', '2023-03-06 22:15:59', '2023-03-06 22:15:59'),
(3, 3, '127.0.0.1', 'berhasil Login', 'POST', 'http://localhost:8000/login', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', '2023-03-06 22:16:08', '2023-03-06 22:16:08'),
(4, 1, '127.0.0.1', 'berhasil Login', 'POST', 'http://localhost:8000/login', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', '2023-03-07 07:17:57', '2023-03-07 07:17:57'),
(5, 1, '127.0.0.1', 'berhasil Logout', 'POST', 'http://localhost:8000/logout', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', '2023-03-07 07:18:15', '2023-03-07 07:18:15'),
(6, 2, '127.0.0.1', 'berhasil Login', 'POST', 'http://localhost:8000/login', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', '2023-03-07 07:18:26', '2023-03-07 07:18:26');

-- --------------------------------------------------------

--
-- Struktur dari tabel `menus`
--

CREATE TABLE `menus` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama_menu` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `harga` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foto` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `keterangan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kategori` enum('makanan','minuman') COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `menus`
--

INSERT INTO `menus` (`id`, `nama_menu`, `harga`, `foto`, `keterangan`, `kategori`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Ramyeon', '20000', '20230307021924.webp', NULL, 'makanan', NULL, '2023-03-07 07:19:25', '2023-03-07 07:19:25'),
(2, 'Kimchi', '35000', '20230307021958.jpg', NULL, 'makanan', NULL, '2023-03-07 07:19:58', '2023-03-07 07:19:58'),
(3, 'Tteokbokki', '20000', '20230307022016.jpg', NULL, 'makanan', NULL, '2023-03-07 07:20:16', '2023-03-07 07:20:16'),
(4, 'Jjangmyeon', '25000', '20230307022056.jpeg', NULL, 'makanan', NULL, '2023-03-07 07:20:56', '2023-03-07 07:20:56'),
(5, 'Bulgogi', '30000', '20230307022124.jpg', NULL, 'makanan', NULL, '2023-03-07 07:21:24', '2023-03-07 07:21:24'),
(6, 'Nakji Bokkeum', '25000', '20230307022147.jpg', NULL, 'makanan', NULL, '2023-03-07 07:21:47', '2023-03-07 07:21:47');

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_11_10_135434_create_log_activities_table', 1),
(6, '2022_11_11_203842_create_menus_table', 1),
(7, '2022_11_12_114510_create_transaksis_table', 1),
(8, '2022_11_12_115041_create_transaksi_details_table', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `transaksis`
--

CREATE TABLE `transaksis` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `qty_total` int(11) NOT NULL,
  `sub_total` int(11) NOT NULL,
  `pajak` int(11) NOT NULL,
  `total` int(11) NOT NULL,
  `tunai` int(11) NOT NULL,
  `kembalian` int(11) NOT NULL,
  `status` enum('success','cancel') COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `transaksi_details`
--

CREATE TABLE `transaksi_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `transaksi_id` bigint(20) UNSIGNED NOT NULL,
  `menu_id` bigint(20) UNSIGNED NOT NULL,
  `qty` int(11) NOT NULL,
  `harga` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` enum('admin','manajer','kasir') COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `nama`, `username`, `password`, `role`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Administrator', 'admin', '$2y$10$nL5cPQpIbD4TEvh1m00WiOZ5Olx5k19c0CwTs/hrDN72M8LFDsRBK', 'admin', 'W2MdU2dDFLegLEW7P4ytsHkBC2p46tp4e2q4F2XRI7OR2tuETw4AJ6etNEpW', '2023-03-06 22:15:00', '2023-03-06 22:15:00'),
(2, 'Manajer', 'manajer', '$2y$10$M8E/kJt9WPQh7mjyjstFOetUxOugGQvHDeUqE5lelOIDwgke8LZke', 'manajer', 'hs2G45WNTX', '2023-03-06 22:15:01', '2023-03-06 22:15:01'),
(3, 'Kasir', 'kasir', '$2y$10$vBCwuwDQl.pzRWaXIBJLSOhz6qko056FJIx1fVccHryahtaPq2esm', 'kasir', 'oNVKgno1wV', '2023-03-06 22:15:01', '2023-03-06 22:15:01');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indeks untuk tabel `log_activities`
--
ALTER TABLE `log_activities`
  ADD PRIMARY KEY (`id`),
  ADD KEY `log_activities_user_id_foreign` (`user_id`);

--
-- Indeks untuk tabel `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indeks untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indeks untuk tabel `transaksis`
--
ALTER TABLE `transaksis`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transaksis_user_id_foreign` (`user_id`);

--
-- Indeks untuk tabel `transaksi_details`
--
ALTER TABLE `transaksi_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transaksi_details_transaksi_id_foreign` (`transaksi_id`),
  ADD KEY `transaksi_details_menu_id_foreign` (`menu_id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `log_activities`
--
ALTER TABLE `log_activities`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `menus`
--
ALTER TABLE `menus`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `transaksis`
--
ALTER TABLE `transaksis`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `transaksi_details`
--
ALTER TABLE `transaksi_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `log_activities`
--
ALTER TABLE `log_activities`
  ADD CONSTRAINT `log_activities_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Ketidakleluasaan untuk tabel `transaksis`
--
ALTER TABLE `transaksis`
  ADD CONSTRAINT `transaksis_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Ketidakleluasaan untuk tabel `transaksi_details`
--
ALTER TABLE `transaksi_details`
  ADD CONSTRAINT `transaksi_details_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `transaksi_details_transaksi_id_foreign` FOREIGN KEY (`transaksi_id`) REFERENCES `transaksis` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;
--
-- Database: `semar`
--
CREATE DATABASE IF NOT EXISTS `semar` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `semar`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `semarv5`
--
-- Kesalahan membaca struktur untuk tabel semar.semarv5: #1932 - Table &#039;semar.semarv5&#039; doesn&#039;t exist in engine
-- Kesalahan membaca data untuk tabel semar.semarv5: #1064 - You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near &#039;FROM `semar`.`semarv5`&#039; at line 1

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--
-- Kesalahan membaca struktur untuk tabel semar.user: #1932 - Table &#039;semar.user&#039; doesn&#039;t exist in engine
-- Kesalahan membaca data untuk tabel semar.user: #1064 - You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near &#039;FROM `semar`.`user`&#039; at line 1
--
-- Database: `semarv5`
--
CREATE DATABASE IF NOT EXISTS `semarv5` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `semarv5`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tmhs`
--
-- Kesalahan membaca struktur untuk tabel semarv5.tmhs: #1932 - Table &#039;semarv5.tmhs&#039; doesn&#039;t exist in engine
-- Kesalahan membaca data untuk tabel semarv5.tmhs: #1064 - You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near &#039;FROM `semarv5`.`tmhs`&#039; at line 1

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--
-- Kesalahan membaca struktur untuk tabel semarv5.user: #1932 - Table &#039;semarv5.user&#039; doesn&#039;t exist in engine
-- Kesalahan membaca data untuk tabel semarv5.user: #1064 - You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near &#039;FROM `semarv5`.`user`&#039; at line 1
--
-- Database: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;
--
-- Database: `ujikom_febri`
--
CREATE DATABASE IF NOT EXISTS `ujikom_febri` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `ujikom_febri`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
--
-- Kesalahan membaca struktur untuk tabel ujikom_febri.failed_jobs: #1932 - Table &#039;ujikom_febri.failed_jobs&#039; doesn&#039;t exist in engine
-- Kesalahan membaca data untuk tabel ujikom_febri.failed_jobs: #1064 - You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near &#039;FROM `ujikom_febri`.`failed_jobs`&#039; at line 1

-- --------------------------------------------------------

--
-- Struktur dari tabel `members`
--
-- Kesalahan membaca struktur untuk tabel ujikom_febri.members: #1932 - Table &#039;ujikom_febri.members&#039; doesn&#039;t exist in engine
-- Kesalahan membaca data untuk tabel ujikom_febri.members: #1064 - You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near &#039;FROM `ujikom_febri`.`members`&#039; at line 1

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--
-- Kesalahan membaca struktur untuk tabel ujikom_febri.migrations: #1932 - Table &#039;ujikom_febri.migrations&#039; doesn&#039;t exist in engine
-- Kesalahan membaca data untuk tabel ujikom_febri.migrations: #1064 - You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near &#039;FROM `ujikom_febri`.`migrations`&#039; at line 1

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_reset_tokens`
--
-- Kesalahan membaca struktur untuk tabel ujikom_febri.password_reset_tokens: #1932 - Table &#039;ujikom_febri.password_reset_tokens&#039; doesn&#039;t exist in engine
-- Kesalahan membaca data untuk tabel ujikom_febri.password_reset_tokens: #1064 - You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near &#039;FROM `ujikom_febri`.`password_reset_tokens`&#039; at line 1

-- --------------------------------------------------------

--
-- Struktur dari tabel `personal_access_tokens`
--
-- Kesalahan membaca struktur untuk tabel ujikom_febri.personal_access_tokens: #1932 - Table &#039;ujikom_febri.personal_access_tokens&#039; doesn&#039;t exist in engine
-- Kesalahan membaca data untuk tabel ujikom_febri.personal_access_tokens: #1064 - You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near &#039;FROM `ujikom_febri`.`personal_access_tokens`&#039; at line 1

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--
-- Kesalahan membaca struktur untuk tabel ujikom_febri.users: #1932 - Table &#039;ujikom_febri.users&#039; doesn&#039;t exist in engine
-- Kesalahan membaca data untuk tabel ujikom_febri.users: #1064 - You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near &#039;FROM `ujikom_febri`.`users`&#039; at line 1
--
-- Database: `ujikom_hotel`
--
CREATE DATABASE IF NOT EXISTS `ujikom_hotel` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `ujikom_hotel`;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
