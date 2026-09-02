-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 02 Sep 2026 pada 02.38
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
-- Database: `laundry`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin`
--

CREATE TABLE `admin` (
  `id` int(20) NOT NULL,
  `password` varchar(255) NOT NULL,
  `hak_akses` int(1) NOT NULL,
  `username` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `admin`
--

INSERT INTO `admin` (`id`, `password`, `hak_akses`, `username`) VALUES
(1, '123', 1, 'admin'),
(2, '123', 2, 'admin1'),
(3, '123', 2, 'admin2');

-- --------------------------------------------------------

--
-- Struktur dari tabel `harga`
--

CREATE TABLE `harga` (
  `harga_per_kilo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `harga`
--

INSERT INTO `harga` (`harga_per_kilo`) VALUES
(20000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `pakaian`
--

CREATE TABLE `pakaian` (
  `pakaian_id` int(11) NOT NULL,
  `transaksi_id` int(11) NOT NULL,
  `pakaian_jenis` varchar(255) NOT NULL,
  `pakaian_jumlah` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `pakaian`
--

INSERT INTO `pakaian` (`pakaian_id`, `transaksi_id`, `pakaian_jenis`, `pakaian_jumlah`) VALUES
(1, 1, 'jeans', 12),
(2, 2, 'katun', 3),
(3, 2, 'seragam_sekolah', 5),
(4, 1, 'pakaian_dalam', 100),
(5, 1, 'jeans', 34),
(6, 1, 'daster', 23),
(7, 2, 'baju_anak', 12),
(8, 1, 'seragan_kerja', 45),
(9, 2, 'jersey', 49),
(10, 2, 'selimut', 2),
(11, 1, 'boneka', 12),
(12, 1, 'karpet', 4),
(13, 1, 'tas_sekolah', 12),
(14, 4, 'campur', 56),
(15, 3, 'sutra', 45),
(16, 4, 'jeans', 23),
(17, 5, 'pakaian_dalam', 123),
(18, 6, 'gorden', 44),
(19, 7, 'celana_katun', 23),
(20, 8, 'kerudung', 45);

-- --------------------------------------------------------

--
-- Struktur dari tabel `pelanggan`
--

CREATE TABLE `pelanggan` (
  `pelanggan_id` int(11) NOT NULL,
  `pelanggan_nama` varchar(255) NOT NULL,
  `pelanggan_hp` varchar(20) NOT NULL,
  `pelanggan_alamat` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `pelanggan`
--

INSERT INTO `pelanggan` (`pelanggan_id`, `pelanggan_nama`, `pelanggan_hp`, `pelanggan_alamat`) VALUES
(1, 'dina', '00982635', 'limbangan'),
(2, 'dewi', '6758903', 'boja'),
(3, 'rangga', '98342572', 'newyork'),
(4, 'anggi', '2347698', 'salamsari'),
(5, 'andi', '89023474', 'jetis'),
(6, 'amanda', '354657898', 'nglimut'),
(7, 'yuda', '8743565490', 'ngabean'),
(8, 'rora', '83264705887', 'jatisari'),
(9, 'arman', '34575675', 'nggandul'),
(10, 'rahman', '43790856954', 'kliris');

-- --------------------------------------------------------

--
-- Struktur dari tabel `transaksi`
--

CREATE TABLE `transaksi` (
  `transaksi_id` int(11) NOT NULL,
  `transaksi_tgl` date NOT NULL,
  `pelanggan_id` int(11) NOT NULL,
  `transaksi_harga` int(11) NOT NULL,
  `transaksi_berat` int(11) NOT NULL,
  `transaksi_tgl_selesai` date NOT NULL,
  `transaksi_status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `transaksi`
--

INSERT INTO `transaksi` (`transaksi_id`, `transaksi_tgl`, `pelanggan_id`, `transaksi_harga`, `transaksi_berat`, `transaksi_tgl_selesai`, `transaksi_status`) VALUES
(1, '2026-11-08', 1, 20000, 18, '2026-11-08', 1),
(2, '2026-09-07', 2, 20000, 9, '2026-09-09', 2),
(3, '2026-04-08', 9, 25000, 17, '2026-09-03', 1),
(4, '2026-03-04', 10, 70000, 12, '2026-03-06', 2),
(5, '2026-09-06', 5, 40000, 22, '2026-09-08', 0),
(6, '2026-03-02', 6, 100000, 189, '2026-03-07', 1),
(7, '2026-04-06', 7, 70000, 40, '2026-06-09', 2),
(8, '2026-08-05', 8, 40000, 30, '2026-08-09', 1),
(9, '2026-07-01', 10, 190000, 70, '2026-07-04', 2),
(10, '2026-06-02', 6, 70000, 35, '2026-06-09', 1),
(11, '2026-03-05', 4, 76000, 30, '2026-03-09', 2),
(12, '2026-09-06', 5, 460000, 28, '2026-09-08', 1),
(13, '2026-04-07', 9, 39000, 9, '2026-09-03', 1),
(14, '2026-03-07', 6, 47000, 34, '2026-03-08', 1),
(15, '2026-04-08', 7, 30000, 12, '2026-06-09', 2);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `pakaian`
--
ALTER TABLE `pakaian`
  ADD PRIMARY KEY (`pakaian_id`);

--
-- Indeks untuk tabel `pelanggan`
--
ALTER TABLE `pelanggan`
  ADD PRIMARY KEY (`pelanggan_id`);

--
-- Indeks untuk tabel `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`transaksi_id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `pakaian`
--
ALTER TABLE `pakaian`
  MODIFY `pakaian_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT untuk tabel `pelanggan`
--
ALTER TABLE `pelanggan`
  MODIFY `pelanggan_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `transaksi`
--
ALTER TABLE `transaksi`
  MODIFY `transaksi_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
