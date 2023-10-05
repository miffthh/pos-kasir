-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 13 Jun 2022 pada 14.37
-- Versi Server: 10.1.29-MariaDB
-- PHP Version: 7.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_toko`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `barang`
--

CREATE TABLE `barang` (
  `id` int(11) NOT NULL,
  `id_barang` varchar(255) NOT NULL,
  `id_kategori` int(11) NOT NULL,
  `nama_barang` text NOT NULL,
  `merk` varchar(255) NOT NULL,
  `harga_beli` varchar(255) NOT NULL,
  `harga_jual` varchar(255) NOT NULL,
  `satuan_barang` varchar(255) NOT NULL,
  `stok` text NOT NULL,
  `tgl_input` varchar(255) NOT NULL,
  `tgl_update` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `barang`
--

INSERT INTO `barang` (`id`, `id_barang`, `id_kategori`, `nama_barang`, `merk`, `harga_beli`, `harga_jual`, `satuan_barang`, `stok`, `tgl_input`, `tgl_update`) VALUES
(4, 'BR001', 8, 'Indomie Rebus', 'Indomie', '2200', '3000', 'PCS', '33', '13 June 2022, 18:52', NULL),
(5, 'BR002', 8, 'Indomie Goreng', 'Indomie', '2500', '3500', 'PCS', '49', '13 June 2022, 18:52', NULL),
(6, 'BR003', 8, 'Indomie Rendang', 'Indomie', '2500', '3000', 'PCS', '50', '13 June 2022, 18:53', NULL),
(7, 'BR004', 9, 'Aqua Botol', 'Aqua', '35000', '40000', 'DUS', '5', '13 June 2022, 18:57', NULL),
(8, 'BR005', 9, 'Teh Pucuk Harum', 'Teh Pucuk', '40000', '45000', 'DUS', '7', '13 June 2022, 18:58', NULL),
(9, 'BR006', 9, 'Larutan Cap Kaki Tiga', 'Caplang', '30000', '35000', 'DUS', '6', '13 June 2022, 18:59', NULL),
(10, 'BR007', 9, 'Power F', 'Power F', '18500', '19500', 'DUS', '13', '13 June 2022, 19:00', NULL),
(11, 'BR008', 10, 'Baterai ABC', 'ABC', '3000', '4000', 'PCS', '61', '13 June 2022, 19:06', NULL),
(12, 'BR009', 10, 'Lampu Pilips', 'Pilips', '12500', '17000', 'BUAH', '32', '13 June 2022, 19:07', NULL),
(13, 'BR010', 10, 'Kabel Listrik 1 Meter', 'Listrik Cable', '5000', '7000', 'UNIT', '21', '13 June 2022, 19:07', NULL),
(14, 'BR011', 11, 'Sarung Wadimor', 'Wadimor', '35000', '40000', 'UNIT', '17', '13 June 2022, 19:09', NULL),
(15, 'BR012', 11, 'Kemeja Planel', 'Wooks Sale', '65000', '75000', 'PCS', '21', '13 June 2022, 19:09', NULL),
(16, 'BR013', 11, 'Celana Kargo', 'Wonnshake', '120000', '150000', 'PCS', '48', '13 June 2022, 19:10', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `kategori`
--

CREATE TABLE `kategori` (
  `id_kategori` int(11) NOT NULL,
  `nama_kategori` varchar(255) NOT NULL,
  `tgl_input` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `kategori`
--

INSERT INTO `kategori` (`id_kategori`, `nama_kategori`, `tgl_input`) VALUES
(8, 'Makanan', '13 June 2022, 18:51'),
(9, 'Minuman', '13 June 2022, 18:51'),
(10, 'Elektronik', '13 June 2022, 18:51'),
(11, 'Pakaian', '13 June 2022, 18:51');

-- --------------------------------------------------------

--
-- Struktur dari tabel `login`
--

CREATE TABLE `login` (
  `id_login` int(11) NOT NULL,
  `user` varchar(255) NOT NULL,
  `pass` char(32) NOT NULL,
  `id_member` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `login`
--

INSERT INTO `login` (`id_login`, `user`, `pass`, `id_member`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `member`
--

CREATE TABLE `member` (
  `id_member` int(11) NOT NULL,
  `nm_member` varchar(255) NOT NULL,
  `alamat_member` text NOT NULL,
  `telepon` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `gambar` text NOT NULL,
  `NIK` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `member`
--

INSERT INTO `member` (`id_member`, `nm_member`, `alamat_member`, `telepon`, `email`, `gambar`, `NIK`) VALUES
(1, 'MifSherVin', 'Tarogong Kaler Garut', '085156993720', '1906034@itg.ac.id', 'unnamed.jpg', '32050402086869879');

-- --------------------------------------------------------

--
-- Struktur dari tabel `nota`
--

CREATE TABLE `nota` (
  `id_nota` int(11) NOT NULL,
  `id_barang` varchar(255) NOT NULL,
  `id_member` int(11) NOT NULL,
  `jumlah` varchar(255) NOT NULL,
  `total` varchar(255) NOT NULL,
  `tanggal_input` varchar(255) NOT NULL,
  `periode` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `nota`
--

INSERT INTO `nota` (`id_nota`, `id_barang`, `id_member`, `jumlah`, `total`, `tanggal_input`, `periode`) VALUES
(1, 'BR001', 1, '4', '12000', '6 October 2020, 0:45', '10-2020'),
(2, 'BR001', 1, '4', '12000', '6 October 2020, 0:45', '10-2020'),
(3, 'BR001', 1, '4', '12000', '6 October 2020, 0:45', '10-2020'),
(4, 'BR001', 1, '4', '12000', '6 October 2020, 0:45', '10-2020'),
(5, 'BR001', 1, '2', '6000', '6 October 2020, 0:49', '10-2020'),
(6, 'BR001', 1, '2', '6000', '6 October 2020, 0:49', '10-2020'),
(7, 'BR001', 1, '2', '6000', '6 October 2020, 1:15', '10-2020'),
(8, 'BR002', 1, '2', '6000', '6 October 2020, 1:17', '10-2020'),
(9, 'BR001', 1, '2', '6000', '6 October 2020, 1:20', '10-2020'),
(10, 'BR013', 1, '1', '150000', '13 June 2022, 19:11', '06-2022'),
(11, 'BR002', 1, '1', '3500', '13 June 2022, 19:11', '06-2022'),
(12, 'BR007', 1, '1', '19500', '13 June 2022, 19:11', '06-2022'),
(13, 'BR001', 1, '1', '3000', '13 June 2022, 19:14', '06-2022'),
(14, 'BR005', 1, '1', '45000', '13 June 2022, 19:14', '06-2022'),
(15, 'BR008', 1, '1', '4000', '13 June 2022, 19:14', '06-2022'),
(16, 'BR009', 1, '1', '17000', '13 June 2022, 19:14', '06-2022'),
(17, 'BR009', 1, '1', '17000', '13 June 2022, 19:20', '06-2022'),
(18, 'BR007', 1, '1', '19500', '13 June 2022, 19:20', '06-2022'),
(19, 'BR005', 1, '1', '45000', '13 June 2022, 19:20', '06-2022'),
(20, 'BR012', 1, '1', '75000', '13 June 2022, 19:24', '06-2022'),
(21, 'BR013', 1, '1', '150000', '13 June 2022, 19:24', '06-2022'),
(22, 'BR005', 1, '1', '45000', '13 June 2022, 19:24', '06-2022');

-- --------------------------------------------------------

--
-- Struktur dari tabel `penjualan`
--

CREATE TABLE `penjualan` (
  `id_penjualan` int(11) NOT NULL,
  `id_barang` varchar(255) NOT NULL,
  `id_member` int(11) NOT NULL,
  `jumlah` varchar(255) NOT NULL,
  `total` varchar(255) NOT NULL,
  `tanggal_input` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `penjualan`
--

INSERT INTO `penjualan` (`id_penjualan`, `id_barang`, `id_member`, `jumlah`, `total`, `tanggal_input`) VALUES
(34, 'BR012', 1, '1', '75000', '13 June 2022, 19:24'),
(35, 'BR013', 1, '1', '150000', '13 June 2022, 19:24'),
(36, 'BR005', 1, '1', '45000', '13 June 2022, 19:24');

-- --------------------------------------------------------

--
-- Struktur dari tabel `toko`
--

CREATE TABLE `toko` (
  `id_toko` int(11) NOT NULL,
  `nama_toko` varchar(255) NOT NULL,
  `alamat_toko` text NOT NULL,
  `tlp` varchar(255) NOT NULL,
  `nama_pemilik` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `toko`
--

INSERT INTO `toko` (`id_toko`, `nama_toko`, `alamat_toko`, `tlp`, `nama_pemilik`) VALUES
(1, 'TOKO BERKAH JAYA', 'Jl.Ahmad Yani No.22 Garut', '085156993720', 'MIFSHERVIN');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id_kategori`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id_login`);

--
-- Indexes for table `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`id_member`);

--
-- Indexes for table `nota`
--
ALTER TABLE `nota`
  ADD PRIMARY KEY (`id_nota`);

--
-- Indexes for table `penjualan`
--
ALTER TABLE `penjualan`
  ADD PRIMARY KEY (`id_penjualan`);

--
-- Indexes for table `toko`
--
ALTER TABLE `toko`
  ADD PRIMARY KEY (`id_toko`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `barang`
--
ALTER TABLE `barang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id_kategori` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `id_login` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `member`
--
ALTER TABLE `member`
  MODIFY `id_member` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `nota`
--
ALTER TABLE `nota`
  MODIFY `id_nota` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `penjualan`
--
ALTER TABLE `penjualan`
  MODIFY `id_penjualan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `toko`
--
ALTER TABLE `toko`
  MODIFY `id_toko` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
