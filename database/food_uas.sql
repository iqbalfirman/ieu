-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 30 Jan 2022 pada 13.28
-- Versi server: 10.4.10-MariaDB
-- Versi PHP: 7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `food_uas`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `detail_pesanan`
--

CREATE TABLE `detail_pesanan` (
  `id` int(11) NOT NULL,
  `no_pesanan` varchar(50) NOT NULL,
  `menu` varchar(150) NOT NULL,
  `harga` int(11) NOT NULL,
  `jml` int(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `detail_pesanan`
--

INSERT INTO `detail_pesanan` (`id`, `no_pesanan`, `menu`, `harga`, `jml`, `created_at`, `updated_at`) VALUES
(6, '202201260001', 'pizza', 300000, 2, '2022-01-26 00:06:16', '2022-01-26 00:06:16'),
(7, '202201260002', 'pizza', 300000, 2, '2022-01-26 00:06:56', '2022-01-26 00:06:56'),
(8, '202201260003', 'Red valvet soda gembira', 27000, 1, '2022-01-26 00:07:13', '2022-01-26 00:07:13'),
(9, '202201300004', 'pizza', 150000, 1, '2022-01-29 21:00:26', '2022-01-29 21:00:26');

-- --------------------------------------------------------

--
-- Struktur dari tabel `menu`
--

CREATE TABLE `menu` (
  `id` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `harga` int(11) NOT NULL,
  `gambar` varchar(150) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `menu`
--

INSERT INTO `menu` (`id`, `nama`, `harga`, `gambar`, `created_at`, `updated_at`) VALUES
(3, 'pizza', 150000, '20220125034019_download.jpg', '2022-01-24 20:40:19', '2022-01-24 20:40:19'),
(4, 'Susu Matcha', 25000, '20220125041459_matcha.jpg', '2022-01-24 21:15:00', '2022-01-24 21:15:00'),
(5, 'Indomie Goreng Special', 22000, '20220125041526_indomie.jpeg', '2022-01-24 21:15:27', '2022-01-24 21:15:27'),
(6, 'Roti bakar keju leleh', 18000, '20220125041550_roti_bakar.webp', '2022-01-24 21:15:50', '2022-01-24 21:15:50'),
(7, 'Hazzelnut coffe late', 28000, '20220125041614_hazelnut.jpg', '2022-01-24 21:16:15', '2022-01-24 21:16:15'),
(8, 'Red valvet soda gembira', 27000, '20220125041639_red_valvet.jpg', '2022-01-24 21:16:39', '2022-01-24 21:16:39'),
(9, 'Cappucino Coffe one shoot', 27000, '20220125041701_cappucino_cincau.jpg', '2022-01-24 21:17:01', '2022-01-24 21:17:01');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pesanan`
--

CREATE TABLE `pesanan` (
  `id` int(11) NOT NULL,
  `no_pesanan` varchar(50) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `meja` varchar(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `total` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `pesanan`
--

INSERT INTO `pesanan` (`id`, `no_pesanan`, `nama`, `meja`, `created_at`, `updated_at`, `total`) VALUES
(9, '202201260001', 'hhhjjj', '12', '2022-01-26 00:06:16', '2022-01-26 00:06:16', 300000),
(10, '202201260002', 'hhhjjj', '12', '2022-01-26 00:06:56', '2022-01-26 00:06:56', 300000),
(11, '202201260003', 'iqba', '0', '2022-01-26 00:07:13', '2022-01-26 00:07:13', 27000),
(12, '202201300004', 'Iqbal Firmansyah', '2', '2022-01-29 21:00:26', '2022-01-29 21:00:26', 150000);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `detail_pesanan`
--
ALTER TABLE `detail_pesanan`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `pesanan`
--
ALTER TABLE `pesanan`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `detail_pesanan`
--
ALTER TABLE `detail_pesanan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `menu`
--
ALTER TABLE `menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `pesanan`
--
ALTER TABLE `pesanan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
