-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Waktu pembuatan: 16 Des 2023 pada 16.42
-- Versi server: 10.4.25-MariaDB
-- Versi PHP: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `helmku`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_admin`
--

CREATE TABLE `data_admin` (
  `id` int(11) NOT NULL,
  `nama` varchar(150) NOT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(180) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `data_admin`
--

INSERT INTO `data_admin` (`id`, `nama`, `username`, `email`, `password`) VALUES
(1, 'admin', 'admin', 'admin@gmail.com', '$2y$10$.JCwuAvCP2qJ2eb866uJpOpJYr3CkKyc3rALkhcgGfef.r4B/WALe');

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_bank`
--

CREATE TABLE `data_bank` (
  `id` int(11) NOT NULL,
  `nama_bank` int(11) NOT NULL,
  `no_rek` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_flashsale`
--

CREATE TABLE `data_flashsale` (
  `id_produk` int(11) NOT NULL,
  `status` int(1) NOT NULL,
  `harga_sale` int(20) NOT NULL,
  `start_sale` varchar(100) NOT NULL,
  `end_sale` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_kategori`
--

CREATE TABLE `data_kategori` (
  `id_kategori` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `data_kategori`
--

INSERT INTO `data_kategori` (`id_kategori`, `nama`) VALUES
(3, 'Sport'),
(4, 'Bogo'),
(6, 'Sepeda');

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_pengguna`
--

CREATE TABLE `data_pengguna` (
  `users_id` int(11) NOT NULL,
  `nama` varchar(150) NOT NULL,
  `email` varchar(200) NOT NULL,
  `no_hp` varchar(20) DEFAULT NULL,
  `alamat_jalan` text DEFAULT NULL,
  `kecamatan` varchar(180) DEFAULT NULL,
  `kelurahan` varchar(180) DEFAULT NULL,
  `kota` varchar(170) NOT NULL,
  `password` text NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `data_pengguna`
--

INSERT INTO `data_pengguna` (`users_id`, `nama`, `email`, `no_hp`, `alamat_jalan`, `kecamatan`, `kelurahan`, `kota`, `password`, `created_at`, `updated_at`) VALUES
(1, 'Danang Kusuma', 'danang@gmail.com', '08923912838', 'ijsaisja', 'jaisjais', 'aisjaisj', 'saksjasj', '$2y$10$xK4h4U5pXkY4lD9zI1ND0Oi5aNHBi./2q7U6iR6n/F1wB9cUq3w3i', '2021-11-20 04:21:52', '2021-11-23 15:30:59'),
(5, 'Ridho', 'agus@gmail.com', '081219832835', 'Komp guru Minda no25', 'palung', 'air', 'Tangerang', '$2y$10$xgLSGVCONk0nE/6yIlBze.eOWHXPWFmeBGkR4fITTn.MeApFKr6fu', '2021-11-24 14:39:17', '2021-11-24 14:44:49'),
(6, 'Deva', 'kokoka@gmail.com', '081111111111', 'Jln.Marunda ', 'Kelapa dua', 'Jatiasih', 'Jakarta', '$2y$10$H2CwMPvCFFjuSCo5yJv4VOdVrOMX.xnoxG4Cvi3rLo5IEg78UBXa6', '2021-11-28 10:32:29', '2021-11-28 10:35:02'),
(7, 'admin', 'admin@gmail.com', NULL, NULL, NULL, NULL, '', '$2y$10$/lfKsy/nj5OEli1HHcPxR.hD7qKAPWau5xHvcg9JJWF6SBc4PUeb.', '2023-12-16 20:28:40', '2023-12-16 20:28:40'),
(8, 'yanto', 'yanto@rektor.its.ac.id', '08981110123', 'Jl buntu no 30, 01/02, pangkah, ujungpangkah, meksiko', 'Ujungpangkah', 'Pangkah', 'Meksiko', '$2y$10$yQ9q/0cT2q1LyuX9HI1dHe1xBNZvnmvzJ3k7FlDET7TImigxfeYn6', '2023-12-16 21:56:03', '2023-12-16 22:14:34'),
(9, 'abeng', 'abeng@gemoy.com', '0818294853239', 'sebelah lumpur lapindo', 'porong', 'rambutan', 'sidoarjo', '$2y$10$8I5UsjpVsylDTverRvHZ6OFH7UleEwO3OLs9G2A7aJonuS3/YeBJm', '2023-12-16 22:23:29', '2023-12-16 22:26:01');

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_produk`
--

CREATE TABLE `data_produk` (
  `id` int(11) NOT NULL,
  `nama` varchar(150) NOT NULL,
  `deskripsi` text NOT NULL,
  `gambar` varchar(200) NOT NULL,
  `kategori` int(100) NOT NULL,
  `url_slug` varchar(150) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `data_produk`
--

INSERT INTO `data_produk` (`id`, `nama`, `deskripsi`, `gambar`, `kategori`, `url_slug`, `created_at`, `updated_at`) VALUES
(8, 'KYT', 'KYT SportÂ ', '1637072078_3534ee7278fc29178664.png', 3, 'KYT-6193bcce85c6c', '2021-11-16 21:14:38', '2023-12-16 22:28:59'),
(9, 'Cargloss', '<p><u>el banjir, el gemoy, el 4tidak<br></u></p>', '1637072539_09cc38022c04104e48a8.jpg', 4, 'Cargloss-6193be9b79259', '2021-11-16 21:22:19', '2023-12-16 22:30:25'),
(10, 'Helm Bogo Classic Dewasa Kaca Datar SNI', 'ok', '1637093563_80d8a40e7ec8bbd5ca42.jfif', 4, 'Helm-Bogo-Classic-Dewasa-Kaca-Datar-SNI-619410bb172bf', '2021-11-17 03:12:43', '2021-11-17 03:13:39'),
(11, 'White Sport', '<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Ducimus libero maxime placeat officia consequuntur magnam aliquam soluta consectetur, commodi odio, ullam architecto, voluptate doloribus vel culpa. Dicta quos eos et fugiat ea.</p><p> Illum laborum fugiat id voluptates cum, odit, itaque error ducimus, neque excepturi vero doloribus amet ratione eum magni.</p>', '1637915352_ce1fd09e12c527c48eba.png', 3, 'White-Sport-61a09ad8ab9a7', '2021-11-26 15:29:12', '2021-11-26 15:29:12'),
(14, 'Helm sepeda', '<p>el wadas vs el tuwantu<br></p>', '1702740933_84fda382247a585ccfec.jpg', 6, 'Helm-sepeda-657dc3c589069', '2023-12-16 22:35:33', '2023-12-16 22:35:33');

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_stok_produk`
--

CREATE TABLE `data_stok_produk` (
  `id` int(11) NOT NULL,
  `id_produk` int(11) NOT NULL,
  `ukuran` varchar(5) NOT NULL,
  `stok` int(10) NOT NULL,
  `harga` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `data_stok_produk`
--

INSERT INTO `data_stok_produk` (`id`, `id_produk`, `ukuran`, `stok`, `harga`) VALUES
(12, 8, 'XL', 5, 800000),
(13, 8, 'L', 3, 499999),
(14, 9, 'XL', 59, 800000),
(15, 9, 'L', 0, 800000),
(16, 10, 'XL', 10, 400000),
(17, 8, 'M', 3, 900000),
(18, 11, 'XL', 9, 499000),
(19, 11, 'L', 12, 450000),
(22, 14, 'L', 5, 50000),
(23, 14, 'XL', 5, 60000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_transaksi`
--

CREATE TABLE `data_transaksi` (
  `id` int(11) NOT NULL,
  `kode_trx` varchar(100) NOT NULL,
  `id_buyer` int(11) NOT NULL,
  `nama_produk` text DEFAULT NULL,
  `nama_bank` text DEFAULT NULL,
  `no_rek_bank` varchar(50) DEFAULT NULL,
  `variasi` text NOT NULL,
  `kuantitas` int(11) NOT NULL,
  `status` varchar(50) NOT NULL,
  `bukti_bayar` text DEFAULT NULL,
  `no_resi` varchar(50) DEFAULT NULL,
  `kurir` varchar(255) NOT NULL,
  `harga` int(20) NOT NULL,
  `alamat_jalan` text NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `data_transaksi`
--

INSERT INTO `data_transaksi` (`id`, `kode_trx`, `id_buyer`, `nama_produk`, `nama_bank`, `no_rek_bank`, `variasi`, `kuantitas`, `status`, `bukti_bayar`, `no_resi`, `kurir`, `harga`, `alamat_jalan`, `created_at`, `updated_at`) VALUES
(2, 'HLM619C0B223DB14', 1, 'Cargloss', NULL, NULL, 'XL', 1, 'Dibatalkan', NULL, NULL, '', 800000, 'ijsaisja', '2021-11-23 04:26:58', '2021-11-23 05:26:04'),
(3, 'HLM619C0CEEB7152', 1, 'Helm Bogo Classic Dewasa Kaca Datar SNI', NULL, NULL, 'XL', 1, 'Dibatalkan', NULL, NULL, '', 400000, 'ijsaisja', '2021-11-23 04:34:38', '2021-11-23 05:20:04'),
(4, 'HLM619C0CEEB7152', 1, 'Cargloss', NULL, NULL, 'XL', 1, 'Dibatalkan', NULL, NULL, '', 800000, 'ijsaisja', '2021-11-23 04:34:38', '2021-11-23 05:20:04'),
(5, 'HLM619C0CEEB7152', 1, 'KYT', NULL, NULL, 'M', 1, 'Dibatalkan', NULL, NULL, '', 900000, 'ijsaisja', '2021-11-23 04:34:38', '2021-11-23 05:20:04'),
(6, 'HLM619C0E1561321', 1, 'Cargloss', NULL, NULL, 'XL', 1, 'Dibatalkan', NULL, NULL, '', 800000, 'ijsaisja', '2021-11-23 04:39:33', '2021-11-23 05:25:38'),
(7, 'HLM619C190EED9F6', 1, 'Helm Bogo Classic Dewasa Kaca Datar SNI', NULL, NULL, 'XL', 1, 'Dibatalkan', NULL, NULL, '', 400000, 'ijsaisja', '2021-11-23 05:26:22', '2021-11-23 05:26:32'),
(8, 'HLM619C19311D5A5', 1, 'KYT', NULL, NULL, 'M', 1, 'Selesai', '1637659112_5d363494eab9809d61a0.jpg', 'qewfwefwefwe', 'JNE', 900000, 'ijsaisja', '2021-11-23 05:26:57', '2021-11-27 11:33:55'),
(9, 'HLM619C55A91AF02', 1, 'Cargloss', NULL, NULL, 'XL', 1, 'Dibatalkan', NULL, NULL, '', 800000, 'ijsaisja', '2021-11-23 09:44:57', '2021-11-23 09:45:33'),
(10, 'HLM619CB2604C46F', 1, 'Cargloss', NULL, NULL, 'XL', 1, 'Dibatalkan - Pembayaran Tidak Valid', '1637659263_2f062d6e09d77ecb7213.jpg', NULL, '', 800000, 'ijsaisja', '2021-11-23 16:20:32', '2021-11-24 12:56:06'),
(11, 'HLM619DC17B84691', 1, 'KYT', NULL, NULL, 'M', 1, 'Dibatalkan - Stok Kosong', '1637731843_0eb7bc14a03e9760a52a.jpg', NULL, '', 900000, 'ijsaisja', '2021-11-24 11:37:15', '2021-11-24 13:07:06'),
(12, 'HLM619DC17B84691', 1, 'Cargloss', NULL, NULL, 'XL', 1, 'Dibatalkan - Stok Kosong', '1637731843_0eb7bc14a03e9760a52a.jpg', NULL, '', 800000, 'ijsaisja', '2021-11-24 11:37:15', '2021-11-24 13:07:06'),
(13, 'HLM619DD0253A540', 1, 'Cargloss', NULL, NULL, 'XL', 1, 'Dibatalkan - Stok Kosong', NULL, NULL, '', 800000, 'ijsaisja', '2021-11-24 12:39:49', '2021-11-24 15:19:37'),
(14, 'HLM619DD4726C11E', 1, 'Cargloss', NULL, NULL, 'XL', 1, 'Dibatalkan - Stok Kosong', '1637733499_bb71f03af1e710c41b73.jpg', NULL, '', 800000, 'ijsaisja', '2021-11-24 12:58:10', '2021-11-24 13:09:09'),
(15, 'HLM619DED75EEBE0', 5, 'Cargloss', NULL, NULL, 'XL', 2, 'Dibatalkan - Spam', '1637740013_f34b5df15606a60a31ac.jpg', NULL, '', 800000, 'Komp guru Minda no25', '2021-11-24 14:44:53', '2021-11-24 15:23:20'),
(16, 'HLM619DF722B26D9', 5, 'Helm Bogo Classic Dewasa Kaca Datar SNI', NULL, NULL, 'XL', 1, 'Selesai', '1637742666_f0bed970ca25fbfb75c1.jpg', 'LP190355413S7', 'JNE', 400000, 'Komp guru Minda no25', '2021-11-24 15:26:10', '2021-11-27 11:33:40'),
(17, 'HLM619E03DF48250', 5, 'Cargloss', NULL, NULL, 'XL', 1, 'Menunggu Pembayaran', NULL, NULL, '', 800000, 'Komp guru Minda no25', '2021-11-24 16:20:31', '2021-11-24 16:20:31'),
(18, 'HLM619E0401A61B8', 5, 'Cargloss', NULL, NULL, 'XL', 1, 'Menunggu Pembayaran', NULL, NULL, '', 800000, 'Komp guru Minda no25', '2021-11-24 16:21:05', '2021-11-24 16:21:05'),
(19, 'HLM61A2F944583EF', 6, 'KYT', NULL, NULL, 'M', 1, 'Menunggu Pembayaran', NULL, NULL, '', 900000, 'Jln.Marunda ', '2021-11-28 10:36:36', '2021-11-28 10:36:36'),
(20, 'HLM61A2F944583EF', 6, 'Cargloss', NULL, NULL, 'XL', 1, 'Menunggu Pembayaran', NULL, NULL, '', 800000, 'Jln.Marunda ', '2021-11-28 10:36:36', '2021-11-28 10:36:36'),
(21, 'HLM657DBF1249654', 8, 'KYT', NULL, NULL, 'M', 1, 'Sedang dikirim', '1702739786_7457cc1e95d829f33737.png', 'jnt1234555', 'jnt', 900000, 'Jl buntu no 30, 01/02, pangkah, ujungpangkah, meksiko', '2023-12-16 22:15:30', '2023-12-16 22:21:16'),
(22, 'HLM657DBF1249654', 8, 'White Sport', NULL, NULL, 'XL', 2, 'Sedang dikirim', '1702739786_7457cc1e95d829f33737.png', 'jnt1234555', 'jnt', 499000, 'Jl buntu no 30, 01/02, pangkah, ujungpangkah, meksiko', '2023-12-16 22:15:30', '2023-12-16 22:21:16'),
(23, 'HLM657DC194551CE', 9, 'Helm Bogo Classic Dewasa Kaca Datar SNI', NULL, NULL, 'XL', 1, 'Menunggu Pembayaran', NULL, NULL, '', 400000, 'sebelah lumpur lapindo', '2023-12-16 22:26:12', '2023-12-16 22:26:12');

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `version` varchar(255) NOT NULL,
  `class` varchar(255) NOT NULL,
  `group` varchar(255) NOT NULL,
  `namespace` varchar(255) NOT NULL,
  `time` int(11) NOT NULL,
  `batch` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `data_admin`
--
ALTER TABLE `data_admin`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `data_bank`
--
ALTER TABLE `data_bank`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `data_flashsale`
--
ALTER TABLE `data_flashsale`
  ADD PRIMARY KEY (`id_produk`),
  ADD UNIQUE KEY `id_produk` (`id_produk`);

--
-- Indeks untuk tabel `data_kategori`
--
ALTER TABLE `data_kategori`
  ADD PRIMARY KEY (`id_kategori`);

--
-- Indeks untuk tabel `data_pengguna`
--
ALTER TABLE `data_pengguna`
  ADD PRIMARY KEY (`users_id`);

--
-- Indeks untuk tabel `data_produk`
--
ALTER TABLE `data_produk`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_kategori` (`kategori`);

--
-- Indeks untuk tabel `data_stok_produk`
--
ALTER TABLE `data_stok_produk`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_produk` (`id_produk`) USING BTREE;

--
-- Indeks untuk tabel `data_transaksi`
--
ALTER TABLE `data_transaksi`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `data_admin`
--
ALTER TABLE `data_admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `data_bank`
--
ALTER TABLE `data_bank`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `data_kategori`
--
ALTER TABLE `data_kategori`
  MODIFY `id_kategori` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `data_pengguna`
--
ALTER TABLE `data_pengguna`
  MODIFY `users_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `data_produk`
--
ALTER TABLE `data_produk`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT untuk tabel `data_stok_produk`
--
ALTER TABLE `data_stok_produk`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT untuk tabel `data_transaksi`
--
ALTER TABLE `data_transaksi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `data_flashsale`
--
ALTER TABLE `data_flashsale`
  ADD CONSTRAINT `data_flashsale_ibfk_1` FOREIGN KEY (`id_produk`) REFERENCES `data_produk` (`id`);

--
-- Ketidakleluasaan untuk tabel `data_produk`
--
ALTER TABLE `data_produk`
  ADD CONSTRAINT `data_produk_ibfk_1` FOREIGN KEY (`kategori`) REFERENCES `data_kategori` (`id_kategori`);

--
-- Ketidakleluasaan untuk tabel `data_stok_produk`
--
ALTER TABLE `data_stok_produk`
  ADD CONSTRAINT `data_stok_produk_ibfk_1` FOREIGN KEY (`id_produk`) REFERENCES `data_produk` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
