-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 01, 2023 at 07:29 PM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 5.6.40

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `toko_sumber_rejeki`
--

-- --------------------------------------------------------

--
-- Table structure for table `bank`
--

CREATE TABLE `bank` (
  `bank_id` int(11) NOT NULL,
  `bank_nama` varchar(255) NOT NULL,
  `bank_nomor` varchar(255) NOT NULL,
  `bank_pemilik` varchar(255) NOT NULL,
  `bank_saldo` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `bank`
--

INSERT INTO `bank` (`bank_id`, `bank_nama`, `bank_nomor`, `bank_pemilik`, `bank_saldo`) VALUES
(1, 'BRI', '111111111111', 'Villa Putra Cakung', 0),
(2, 'bca', 'Villa Putra Cakung', '222222222', 660000);

-- --------------------------------------------------------

--
-- Table structure for table `hutang`
--

CREATE TABLE `hutang` (
  `hutang_id` int(11) NOT NULL,
  `hutang_tanggal` date NOT NULL,
  `hutang_nominal` int(11) NOT NULL,
  `hutang_keterangan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `hutang`
--

INSERT INTO `hutang` (`hutang_id`, `hutang_tanggal`, `hutang_nominal`, `hutang_keterangan`) VALUES
(1, '2023-03-25', 100000, 'kasbon bang jay');

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE `kategori` (
  `kategori_id` int(11) NOT NULL,
  `kategori` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`kategori_id`, `kategori`) VALUES
(1, '01. LAINNYA'),
(18, 'Pembayaran Uang Kebersihan'),
(19, 'Pembayaran Karyawan'),
(20, 'pembayaran rental'),
(21, 'pembayaran turnamen');

-- --------------------------------------------------------

--
-- Table structure for table `piutang`
--

CREATE TABLE `piutang` (
  `piutang_id` int(11) NOT NULL,
  `piutang_tanggal` date NOT NULL,
  `piutang_nominal` int(11) NOT NULL,
  `piutang_keterangan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `piutang`
--

INSERT INTO `piutang` (`piutang_id`, `piutang_tanggal`, `piutang_nominal`, `piutang_keterangan`) VALUES
(1, '2023-03-25', 200000, 'beli bohlam lapangan');

-- --------------------------------------------------------

--
-- Table structure for table `transaksi`
--

CREATE TABLE `transaksi` (
  `transaksi_id` int(11) NOT NULL,
  `transaksi_tanggal` date NOT NULL,
  `transaksi_jenis` enum('Pengeluaran','Pemasukan') NOT NULL,
  `transaksi_kategori` int(11) NOT NULL,
  `transaksi_nominal` int(11) NOT NULL,
  `transaksi_keterangan` text NOT NULL,
  `transaksi_foto` varchar(255) NOT NULL,
  `transaksi_bank` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `transaksi`
--

INSERT INTO `transaksi` (`transaksi_id`, `transaksi_tanggal`, `transaksi_jenis`, `transaksi_kategori`, `transaksi_nominal`, `transaksi_keterangan`, `transaksi_foto`, `transaksi_bank`) VALUES
(16, '2023-03-25', 'Pemasukan', 20, 430000, 'pb maknyus', '5856_keripik4.jpg', 2),
(17, '2023-03-25', 'Pengeluaran', 19, 200000, 'bayar adul', '11673_keripik3.jpg', 2),
(18, '2023-03-25', 'Pemasukan', 20, 430000, 'pb tepok', '27885_keripik3.jpg', 2);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `user_nama` varchar(100) NOT NULL,
  `user_username` varchar(100) NOT NULL,
  `user_password` varchar(100) NOT NULL,
  `user_foto` varchar(100) DEFAULT NULL,
  `user_level` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `user_nama`, `user_username`, `user_password`, `user_foto`, `user_level`) VALUES
(1, 'Administrator', 'admin', '0192023a7bbd73250516f069df18b500', '1293879237_NBLSTORELOGO.jpg', 'administrator'),
(2, 'manajemen', 'manajemen', '19b51f1cbb6146adcacbce46d5bdc3f2', '1215276191_NBLSTORELOGO.jpg', 'manajemen');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bank`
--
ALTER TABLE `bank`
  ADD PRIMARY KEY (`bank_id`);

--
-- Indexes for table `hutang`
--
ALTER TABLE `hutang`
  ADD PRIMARY KEY (`hutang_id`);

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`kategori_id`);

--
-- Indexes for table `piutang`
--
ALTER TABLE `piutang`
  ADD PRIMARY KEY (`piutang_id`);

--
-- Indexes for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`transaksi_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bank`
--
ALTER TABLE `bank`
  MODIFY `bank_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `hutang`
--
ALTER TABLE `hutang`
  MODIFY `hutang_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `kategori`
--
ALTER TABLE `kategori`
  MODIFY `kategori_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `piutang`
--
ALTER TABLE `piutang`
  MODIFY `piutang_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `transaksi`
--
ALTER TABLE `transaksi`
  MODIFY `transaksi_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
