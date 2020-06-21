-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 21 Jun 2020 pada 07.43
-- Versi server: 10.4.8-MariaDB
-- Versi PHP: 7.3.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `toko_online`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_barang`
--

CREATE TABLE `tb_barang` (
  `id_brg` int(11) NOT NULL,
  `nama_brg` varchar(120) NOT NULL,
  `keterangan` varchar(225) NOT NULL,
  `kategori` varchar(60) NOT NULL,
  `harga` int(11) NOT NULL,
  `stok` int(4) NOT NULL,
  `gambar` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tb_barang`
--

INSERT INTO `tb_barang` (`id_brg`, `nama_brg`, `keterangan`, `kategori`, `harga`, `stok`, `gambar`) VALUES
(17, 'Ayam', 'Potongnya bismillah ', 'Daging', 32000, 50, 'daging_ayam.png'),
(18, 'Ikan Tengiri ', 'Jaminan Segar (harga/kg)', 'Ikan', 20000, 19, 'ikan_tengiri.jpg'),
(19, 'Ikan Bandeng', 'Harga/kg', 'Ikan', 20000, 20, 'bandeng.jpg'),
(20, 'Daging Sapi', 'Harga/kg', 'Daging', 70000, 50, 'daging_sapi.jpg'),
(21, 'Kangkung', 'Harga/ikat', 'Sayur', 2000, 25, 'kangkung.jpg'),
(22, 'Wortel', 'Harga/kg', 'Sayur', 10000, 50, 'wortel.jpg'),
(23, 'Terong', 'Harga/kg', 'Sayur', 15000, 25, 'terong.jpg'),
(24, 'Kayu manis', 'Harga/ikat ', 'Bumbu', 10000, 7, 'kayu_manis.jpg'),
(25, 'Bawang Merah', 'Harga/kg', 'Bumbu', 20000, 25, 'bawang_merah.jpg'),
(26, 'Bawang Putih', 'Harga/kg', 'Bumbu', 20000, 20, 'bawang_putih.jpg'),
(27, 'Beras', 'Size 5kg', 'Bahan Pokok', 65000, 50, 'beras.jpg'),
(28, 'Minyak Bimoli', 'ukuran 1 liter', 'Bahan Lain', 10000, 7, 'minyak_bimoli.jpg'),
(29, 'Nuget Belfood', '500gr', 'Lauk Pauk', 32000, 2, 'nuget_belfood.jpg'),
(30, 'Apel Merah', 'Harga/kg', 'Buah', 20000, 25, 'apel_merah.jpg'),
(31, 'Bayam', 'Harga/ikat ', 'Bahan Lain', 500, 20, 'bayam.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_invoice`
--

CREATE TABLE `tb_invoice` (
  `id` int(11) NOT NULL,
  `nama` varchar(56) NOT NULL,
  `alamat` varchar(225) NOT NULL,
  `tgl_pesan` datetime NOT NULL,
  `batas_bayar` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tb_invoice`
--

INSERT INTO `tb_invoice` (`id`, `nama`, `alamat`, `tgl_pesan`, `batas_bayar`) VALUES
(1, 'Ade', 'tegal', '2020-06-18 13:15:25', '2035-06-18 13:15:25'),
(2, 'Ade', 'tegal', '2020-06-18 13:15:38', '2035-06-18 13:15:38'),
(3, 'Ade', 'tegal', '2020-06-18 13:17:38', '2035-06-18 13:17:38'),
(4, 'bagas', 'tegal', '2020-06-18 14:18:25', '2020-06-21 14:18:25'),
(5, '', '', '2020-06-18 14:58:30', '2020-06-18 14:58:33'),
(6, 'coba', 'bandung', '2020-06-18 15:00:27', '2020-06-18 18:00:27'),
(7, 'Ahmad', 'Tegal', '2020-06-19 20:38:45', '2020-06-19 23:38:45'),
(8, '', '', '2020-06-19 20:40:10', '2020-06-19 23:40:10'),
(9, '', '', '2020-06-19 20:41:30', '2020-06-19 23:41:30'),
(10, '', '', '2020-06-20 03:35:05', '2020-06-20 06:35:05');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_pesanan`
--

CREATE TABLE `tb_pesanan` (
  `id` int(11) NOT NULL,
  `id_invoice` int(11) NOT NULL,
  `id_brg` int(11) NOT NULL,
  `nama_brg` varchar(50) NOT NULL,
  `jumlah` int(3) NOT NULL,
  `harga` int(10) NOT NULL,
  `pilihan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tb_pesanan`
--

INSERT INTO `tb_pesanan` (`id`, `id_invoice`, `id_brg`, `nama_brg`, `jumlah`, `harga`, `pilihan`) VALUES
(1, 3, 1, 'bayam', 1, 10000, ''),
(2, 3, 2, 'Torong', 1, 50000, ''),
(3, 4, 3, 'Apel jepang', 1, 30000, ''),
(4, 5, 4, 'Cabai merah keriting', 1, 22000, ''),
(5, 6, 13, 'Ayam', 1, 32000, ''),
(6, 7, 1, 'bayam', 1, 10000, ''),
(7, 7, 18, 'Ikan Tengiri ', 1, 20000, ''),
(8, 8, 19, 'Ikan Bandeng', 1, 20000, ''),
(9, 9, 22, 'Wortel', 1, 10000, ''),
(10, 10, 18, 'Ikan Tengiri ', 1, 20000, '');

--
-- Trigger `tb_pesanan`
--
DELIMITER $$
CREATE TRIGGER `pesanan_penjualan` AFTER INSERT ON `tb_pesanan` FOR EACH ROW BEGIN
	UPDATE tb_barang SET stok = stok-New.jumlah
    WHERE id_brg = new.id_brg;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_user`
--

CREATE TABLE `tb_user` (
  `id` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` int(6) NOT NULL,
  `role_id` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tb_user`
--

INSERT INTO `tb_user` (`id`, `nama`, `username`, `password`, `role_id`) VALUES
(1, 'admin', 'admin', 123456, 1),
(2, 'user', 'user', 123456, 2),
(3, 'adesug', 'adesug', 123456, 2);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tb_barang`
--
ALTER TABLE `tb_barang`
  ADD PRIMARY KEY (`id_brg`);

--
-- Indeks untuk tabel `tb_invoice`
--
ALTER TABLE `tb_invoice`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tb_pesanan`
--
ALTER TABLE `tb_pesanan`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tb_user`
--
ALTER TABLE `tb_user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tb_barang`
--
ALTER TABLE `tb_barang`
  MODIFY `id_brg` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT untuk tabel `tb_invoice`
--
ALTER TABLE `tb_invoice`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `tb_pesanan`
--
ALTER TABLE `tb_pesanan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `tb_user`
--
ALTER TABLE `tb_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
