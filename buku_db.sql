-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 20 Nov 2019 pada 03.44
-- Versi server: 10.3.16-MariaDB
-- Versi PHP: 7.1.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `jpone_apps`
--
CREATE DATABASE IF NOT EXISTS `jpone_apps` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `jpone_apps`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `mahasiswa`
--

CREATE TABLE `mahasiswa` (
  `id` int(250) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `nohp` varchar(100) NOT NULL,
  `jeniskelamin` varchar(100) NOT NULL,
  `keperluan` varchar(100) NOT NULL,
  `datetime` date NOT NULL,
  `waktu` time NOT NULL,
  `bulan` varchar(100) NOT NULL,
  `tahun` year(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `mahasiswa`
--

INSERT INTO `mahasiswa` (`id`, `nama`, `alamat`, `nohp`, `jeniskelamin`, `keperluan`, `datetime`, `waktu`, `bulan`, `tahun`) VALUES
(1, 'Rino Satya Putra', 'Jakarta Barat', '085772903522', 'Laki-Laki', 'bertemu dengan pak lili', '2019-10-29', '10:39:35', '', 0000),
(2, 'Renaldhy', 'JAK ROXY', '095757228582', 'Laki-Laki', 'NONTON THE JAK', '2019-10-29', '10:41:02', '', 0000),
(3, 'Rendi Fadilah', 'Jalan Petojo', '097643121', 'Laki-Laki', 'NGOBAR', '2019-10-30', '08:34:15', '', 0000),
(4, 'Rino Satya Putra', 'Jakarta Barat', '0888888888', 'Laki-Laki', 'Ingin Bertemu Rino ', '2019-10-30', '13:56:38', '', 0000),
(8, 'Rino Satya Putra', 'Jakarta Tengah', '08878758', 'Laki-Laki', 'PKL', '2019-10-31', '08:19:47', '', 0000),
(11, 'Angga Risky', 'JL BUILD WITH ANGGA', '088232323', 'Laki-Laki', 'NGAJARIN UI UX DI JP', '2019-11-04', '01:37:02', '', 0000),
(12, 'Ryan', 'Jalan Karang Anyar', '0868483883847', 'Laki-Laki', 'Olahraga', '2019-11-12', '09:12:35', 'November', 0000),
(13, 'Jaki Andika', 'Jalan', '09855888', 'Laki-Laki', 'Bertemu Pak Firman ingin Sidang', '2019-11-12', '09:15:42', 'November', 0000),
(14, 'Ryan', 'Jalan Karang Anyar', '09855888', 'Laki-Laki', 'Bertemu Pak Firman ingin Sidang', '2019-11-12', '09:16:24', 'November', 0000),
(17, 'Jaki Andika', 'Jalan abdul muis no40', '0857237288', 'Laki-Laki', 'Bertemu kepala Sekolah', '2019-11-19', '08:21:03', 'November', 0000),
(18, 'Pak Agus', 'Jalan Abdul Muis No 40', '0857372736', 'Laki-Laki', 'Bertemu kepala Sekolah', '2019-11-19', '08:34:29', 'November', 0000),
(19, 'Firman Aulia', 'Jalan Abdul Muis No. 44 Jakarta Pusat', '081383967000', 'Laki-Laki', 'Legalisir Ijazah', '2019-11-19', '09:56:45', 'November', 0000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `email` varchar(128) NOT NULL,
  `image` varchar(128) NOT NULL,
  `password` varchar(256) NOT NULL,
  `role_id` int(11) NOT NULL,
  `is_active` int(1) NOT NULL,
  `date_created` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id`, `name`, `email`, `image`, `password`, `role_id`, `is_active`, `date_created`) VALUES
(18, 'Admin', 'admin@gmail.com', 'default.jpg', '$2y$10$i.neND/OvsrlEWB7p7DqcuJjOGUi0CyG4Dd47.GEei6ENkGaMyoiu', 1, 1, 1567852597),
(22, 'SMK JAKARTA PUSAT 1', 'user@gmail.com', 'jp.jpg', '$2y$10$32AGgWJLfIZ0rIUh9wO1/e993fFFTLrKbP9Vu4iGwZAm/5brgQczy', 2, 1, 1568001490),
(31, 'rinosatyaputra-id', 'rinosatyaputra.id@gmail.com', 'default.jpg', '$2y$10$B24.REHjmfJy8GSM4qmOJem5TMELPokby1xTjFus3Di3SongnE3Rq', 2, 1, 1572061113),
(32, 'Rendi Fadilah', 'rendifadillah009@gmail.com', 'default.jpg', '$2y$10$BuNAm5HNnRl9DOs1svMrbuUoiUaY/ctWantJU1bhc4mw.EY08eONa', 2, 1, 1572080851),
(34, 'ZIdane', 'zidanesatriani2901@gmail.com', 'default.jpg', '$2y$10$NOt9tJFJhsbo/vBGqkcBSOvMblGhgL5ux9pTHHAjlGlLqV2McGdqi', 2, 1, 1572225306),
(37, 'Yusril Agisha Hendrawan', 'yusril.agisha12@gmail.com', 'default.jpg', '$2y$10$2N9xuf.jUgg/ypGgH4h/juEGFFKGScZp3wRY2GJw7uAuMYqeqNEWO', 2, 1, 1572232864),
(38, 'Rino Satya Putra', 'member@gmail.com', 'default.jpg', '$2y$10$f/hQ63HOWLqc7pZhbaSAYOGNWflE5uCAbt5v3skP43sghvE.yI.dy', 2, 0, 1572822600),
(40, 'Jaki Andika', 'jakiandika19@gmail.com', 'default.jpg', '$2y$10$YIcNeZ8aXkbZjhViKJ.dZ.pD8egvLdiM/0CogNZRF.QGlFUDcxzyi', 2, 0, 1572987765),
(41, 'admin2', 'ADMIN12@GMAIL.COM', 'default.jpg', '$2y$10$OYwHHTcKyvPb1o1F1skYiuiCfLNM7.bweRtIHkf6VPR53gPZ/joWG', 2, 0, 1572987934),
(42, 'admin2', 'ADMI122@GMAIL.COM', 'default.jpg', '$2y$10$.CpIMeYad6BBnGsZVdxx3e3CzDeksdbTiJD0nLeScrTITBBS/9.Qa', 2, 0, 1572987961),
(43, 'admin2', 'ADMI2121122@GMAIL.COM', 'default.jpg', '$2y$10$Pda4EcSFxeB5X5tD9Hd47eKx9d/P9ycvE.VkxRTaJ7/T5f4iQxQ/W', 2, 0, 1572987998),
(44, 'admin2', 'iyaw@gmail.com', 'default.jpg', '$2y$10$vCvJfeVYsFAWhIX1kO6szOsB2Cfg0uTCo0seD3a1O3QXXUAJ5gfbS', 2, 0, 1572988130),
(45, 'admin2', 'iya12w@gmail.com', 'default.jpg', '$2y$10$X9iZLjNdlU1ZiHdhHBozu.lW./VQNwGRDrLb3AorQrhcO8G.ybsZO', 2, 0, 1572988420),
(46, 'admin3', 'admin3@gmail.com', 'default.jpg', '$2y$10$PSg6HcPcuG4hVMZUmxAHAOxcz7okvpolHq3wvUrsFRRbdpLU3rcsW', 2, 0, 1572988754),
(47, 'iyaw', 'iyaw123@gmail.com', 'default.jpg', '$2y$10$/wqN9x19ECy10WS8wSWCG.//Jd0w/UMlWb5IJlJ6plcnzforPotMu', 2, 0, 1573526268),
(48, 'user', 'user1@gmail.com', 'default.jpg', '$2y$10$xdhSBWvvYIv0qtFJ.96eweU1IwQMW4u/EgOAXV7femxt3XHWS.RIG', 2, 0, 1573693327),
(49, 'jidan', 'jidan@gmail.com', 'default.jpg', '$2y$10$5gB5m.qUHzjV54X7SRc17.VbaKj.yfjqFimvnwONJlYb7ysiVSzwq', 2, 0, 1573782412),
(50, 'Ryan Hidayat', 'ryansaputra@gmail.com', 'default.jpg', '$2y$10$eqiourZBvsbBntFexZ07KuvMDfQB7mciZs5lYBE00bbb9f1cQaWoq', 2, 0, 1574058922),
(51, 'Muhamad Ryan hidayat', 'ryanhidayat074@gmail.com', 'default.jpg', '$2y$10$aocLVbNK9PcIJ9q.gsWac.CcZkfLfM2EITwgI5EsgCqM8/m8C3Wr2', 2, 0, 1574059560),
(52, 'Muhamad Ryan hidayat', 'userbaru@gmail.com', 'default.jpg', '$2y$10$JWc1vfK3hu2o7iihAcAMQ.Ccana3qYZZwbHT/pF5r6wFxUG7BCioq', 2, 0, 1574059785),
(53, 'Muhamad Ryan hidayat', 'userbaru1@gmail.com', 'default.jpg', '$2y$10$iKAaZOGj2aQV2Je/sqIsiO1n9xZLbC9bqpzdQJE0jlr.Tqi/l6T9q', 2, 0, 1574059876),
(54, 'adminbaru', 'adminbaru@gmail.com', 'default.jpg', '$2y$10$HIwX1v/AaUeTvKKC6xN2QOMk1q7VsyAQbg8WejZNFmcnWeO0ZkjCW', 2, 0, 1574059972),
(55, 'adminbaru2', 'adminbaru2@gmail.com', 'default.jpg', '$2y$10$.eisuWI.QjJq.9rvYCVhTOqWrDqhUnPbHnYDIh.6EhZuekq3.UNva', 2, 0, 1574060119),
(56, 'admin', 'adminbaru3@gmail.com', 'default.jpg', '$2y$10$egnZaxQwRya7zcOVCecyguMcgNR1f3zjwTCx7E.zf7.YRjBuWO8Ke', 2, 0, 1574060262),
(57, 'Ryan', 'rinosatyaputrax@gmail.com', 'default.jpg', '$2y$10$Pz9BAhO1AREbQWhV7v5JauY/OnefRSrRy2g7pb3BD4wO5odSP5OD2', 2, 0, 1574126317);

-- --------------------------------------------------------

--
-- Struktur dari tabel `user_access_menu`
--

CREATE TABLE `user_access_menu` (
  `id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `user_access_menu`
--

INSERT INTO `user_access_menu` (`id`, `role_id`, `menu_id`) VALUES
(1, 1, 1),
(3, 2, 2),
(8, 1, 2),
(9, 1, 3);

-- --------------------------------------------------------

--
-- Struktur dari tabel `user_menu`
--

CREATE TABLE `user_menu` (
  `id` int(11) NOT NULL,
  `menu` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `user_menu`
--

INSERT INTO `user_menu` (`id`, `menu`) VALUES
(1, 'Admin'),
(2, 'User');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user_role`
--

CREATE TABLE `user_role` (
  `id` int(11) NOT NULL,
  `role` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `user_role`
--

INSERT INTO `user_role` (`id`, `role`) VALUES
(1, 'Administrator'),
(2, 'Member');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user_sub_menu`
--

CREATE TABLE `user_sub_menu` (
  `id` int(128) NOT NULL,
  `menu_id` int(128) NOT NULL,
  `title` varchar(128) NOT NULL,
  `url` varchar(128) NOT NULL,
  `icon` varchar(128) NOT NULL,
  `is_active` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `user_sub_menu`
--

INSERT INTO `user_sub_menu` (`id`, `menu_id`, `title`, `url`, `icon`, `is_active`) VALUES
(1, 2, 'Buku Tamu', 'user/buku', 'fas fa-fw fa-book', 1),
(2, 2, 'Profile Saya', 'user', 'fas fa-fw fa-user', 1),
(3, 2, 'Edit Profile', 'user/edit', 'fas fa-fw fa-user-edit', 1),
(7, 1, 'Donasi Admin', 'admin/role', 'fas fa-fw fa-user-tie', 1),
(8, 2, 'Ganti Password', 'user/changepassword', 'fas fa-fw fa-key', 1),
(9, 1, 'Buku Tamu Admin', 'admin/buku', 'fas fa-fw fa-book', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `user_token`
--

CREATE TABLE `user_token` (
  `id` int(11) NOT NULL,
  `email` varchar(128) NOT NULL,
  `token` varchar(128) NOT NULL,
  `date_created` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `user_token`
--

INSERT INTO `user_token` (`id`, `email`, `token`, `date_created`) VALUES
(1, 'admin1@gmail.com', 'D1gbqAPf9nJKSuqT3MzajL+HbysjHonKvuKQncW9JmU=', 1567990523),
(2, 'admin2@gmail.com', 'EPfATLapzeirUIjf8OEID2H9p/iUIjvxTAit5uvpLj0=', 1568000383),
(3, 'admin3@gmail.com', 'n6RDfg9RHEKtHKhJ/uPa2nu+gxrlLGg9f4vHEZyqq+g=', 1568001196),
(4, 'user@gmail.com', 'sBa5RJW6JHA1oyoZz8FXDPWeoR/8XCdf+/FH3M7L7yI=', 1568001490),
(5, 'admin1@gmail.com', 'xDUT3W4kL8tpZNZlWDM1+Og0ssdHXc6DVIIXzap/JDw=', 1568247608),
(6, 'user1@gmail.com', 'WjglPQVnc67OOZQm0NYAKN5lM8PboJRuc8G+9+2gjdc=', 1568260008),
(7, 'admin2@gmail.com', 'L0tceLkM31fkHI1ozlNVsqV3jObI46ZGa3h1pkaCxZk=', 1568260412),
(8, 'jasajoki3@gmail.com', 'YLd5qIB5g962gM8Qy9XcoRTWDxYbMcJyW/nnWVIoxSs=', 1568354171),
(9, 'admin2@gmail.com', 'kl5FKOFV5EPSXGDCGERx0+OCkdLFhlUAWWYrY7z3P64=', 1571642775),
(10, 'admin2@gmail.com', 'osWEc2GzVhJpbHPDyqAFukUr0E+VIGqkEvt8thVKYto=', 1571642855),
(11, 'admin@gmail.com', 'kAwbUJylrNEvW5l89SkceAbp1UJmbI8fgv3F7wPy3xw=', 1571923279),
(12, 'rinosatyaputra@gmail.com', 'tr+Gt8LuZXabIO+ZcgBjzNxVHp9REvFkCeJKwKBoIYk=', 1572059310),
(13, 'rinosatya9utra@gmail.com', 'tse8LKvwCT+n289JPcXRpD/M3iCIZdDIQRFDEYyFVtM=', 1572059525),
(14, 'rinosatya0utra@gmail.com', 'sfn70pP/dKrQ21IumJrsMIu0C2uI1GD3GVRh006Bms8=', 1572059572),
(15, 'rinosatya6utra@gmail.com', '3/XHD1/ac8r6iVYpBpu4P/Rvwy1HrS+JeGXwo5TYDcE=', 1572059691),
(16, 'hayoo@gmail.com', 'XLxEaYivmeiPgGr2c5Quv4mcEGNOXhzSTpZaWptoR30=', 1572060306),
(17, 'rinosatyaputra.id@gmail.com', 'L46AaKeysmv8lusWFHNAyLfnRXwv6txmu0UxMwrf9zk=', 1572064359),
(18, 'zidanesatriani2901|@gmail.com', 'Z0YIvLaa9lVzdbcwUavgfmcbb3Rge2ESWrUlQjZOsUE=', 1572225166),
(20, 'yusril.agisha@gmail.com', 'WgBUYrPMte+0m1FXj5jpnbEYMvfPUo8+vcWsvbhRig0=', 1572232615),
(21, 'member@gmail.com', 'oC1MBq72n4QXqQRNdEiktWpgaLE1KYnhRGc3ubnhh7s=', 1572822600),
(22, 'jakiandika19@gmail.com', 'lyE6R+JdkdLoqXZWD/d/BUrnv7YzV10VFYxGp67F06s=', 1572987463),
(23, 'jakiandika19@gmail.com', 'rQqZUs1IGVSp5Px5WFN+lr+XoAuXMrWaE2KiTqE2UZA=', 1572987765),
(24, 'ADMIN12@GMAIL.COM', '8F5IaHJcRJP3pHM4WzNPgww8I0bPUQ8Ti4c+5MiwG2w=', 1572987934),
(25, 'ADMI122@GMAIL.COM', 'bzKQRI5qugQn82oyFqLLiOvHd+xhmvdPuyNcn0XuXUA=', 1572987961),
(26, 'ADMI2121122@GMAIL.COM', 'sI1uQ1vhjIy7eLGdhseDpijp6bKWlFmM8B+rlZyhMfY=', 1572987998),
(27, 'iyaw@gmail.com', 'd3aQhXmsnvU0EJeRg0VoPcBRAvaOvQ0Z9/YPBwJU8h0=', 1572988130),
(28, 'iya12w@gmail.com', 'oDR5QRfEBKzqc2zPP3QYOcpYXt/oC2sRWwqU1sIEElU=', 1572988420),
(29, 'admin3@gmail.com', '4laNVtMAeYDe9gsBAJgdHF6in8BsW3RRjhtLaO0KKlE=', 1572988754),
(30, 'iyaw123@gmail.com', 'lRf9vP/8ZzF+H77nPH6gC7R2JTz7ST4oO4D1EgEuK/Q=', 1573526268),
(31, 'user1@gmail.com', 'UsSTwAOfgmQCYQSjO86mtc2QPdnm+bSFruPeowlDq0A=', 1573693327),
(32, 'jidan@gmail.com', 'Sy/EJvyKCXqZE2UeojH4P03brAPJx9hiT0huBe+unPc=', 1573782412),
(33, 'yusril.agisha12@gmail.com', 'GTZAp684cd9sKGrM6kc3OijMqPwYGgJ8iZX+JVgZNdI=', 1573782701),
(34, 'ryansaputra@gmail.com', 'QMNcG+eGOZLMj9TLNlWgDPWIPET3917bgRqEu28jv84=', 1574058922),
(35, 'ryanhidayat074@gmail.com', 'FYPW51QjXo0Dru+2oN3TX1fC5iyRD5vCt2i8PLT8aBY=', 1574059560),
(36, 'userbaru@gmail.com', 'tnhc8p4aY8U6vaepSl8EQOFumB9FpMVSiIBmk2S9tgc=', 1574059785),
(37, 'userbaru1@gmail.com', 'fCcvEnPmoh78xbXvSwfU0MjV/T75XXW8lnEC9aWG/0M=', 1574059876),
(38, 'adminbaru@gmail.com', 'LVBmSw25FDaoMbjO49MZt9skcjrRTflrbQl0P0Ju7DU=', 1574059972),
(39, 'adminbaru2@gmail.com', 'FnHPEYRH9NOWaCq/ehwKBR5fCNg6h4z8zfDOJ8O9ce4=', 1574060119),
(40, 'adminbaru3@gmail.com', 'ufVtfAkT0dsw3YwfkzgZ2szFd2D5W0+Os59NjJil0ZY=', 1574060262),
(41, 'rinosatyaputrax@gmail.com', 'uwSazmOCmMgociaScygrXPk1oF7ztlZI/FdEmjv6EmU=', 1574126317);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `user_access_menu`
--
ALTER TABLE `user_access_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `user_menu`
--
ALTER TABLE `user_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `user_role`
--
ALTER TABLE `user_role`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `user_sub_menu`
--
ALTER TABLE `user_sub_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `user_token`
--
ALTER TABLE `user_token`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `mahasiswa`
--
ALTER TABLE `mahasiswa`
  MODIFY `id` int(250) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT untuk tabel `user_access_menu`
--
ALTER TABLE `user_access_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `user_menu`
--
ALTER TABLE `user_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `user_role`
--
ALTER TABLE `user_role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `user_sub_menu`
--
ALTER TABLE `user_sub_menu`
  MODIFY `id` int(128) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `user_token`
--
ALTER TABLE `user_token`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;
--
-- Database: `latihan_1`
--
CREATE DATABASE IF NOT EXISTS `latihan_1` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `latihan_1`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `latihan_2`
--

CREATE TABLE `latihan_2` (
  `id` varchar(15) NOT NULL,
  `nama` varchar(20) DEFAULT NULL,
  `hobi` varchar(30) DEFAULT NULL,
  `nama_mantan` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `latihan_2`
--

INSERT INTO `latihan_2` (`id`, `nama`, `hobi`, `nama_mantan`) VALUES
('1', 'RINO', 'berak', 'ayu'),
('2', 'akmal', 'colay', 'rani'),
('3', 'rifky', 'ngocok', 'ananda febiani');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pengarang`
--

CREATE TABLE `pengarang` (
  `id_pengarang` char(5) NOT NULL,
  `nama_pengarang` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pengarang`
--

INSERT INTO `pengarang` (`id_pengarang`, `nama_pengarang`) VALUES
('AST98', 'Aryos Gantos'),
('AYG78', 'Ayoama Gosho'),
('BRM25', 'Boris Mirkin'),
('DBN01', 'Dan brown');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `latihan_2`
--
ALTER TABLE `latihan_2`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `pengarang`
--
ALTER TABLE `pengarang`
  ADD PRIMARY KEY (`id_pengarang`);
--
-- Database: `latihan_crud`
--
CREATE DATABASE IF NOT EXISTS `latihan_crud` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `latihan_crud`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `crud`
--

CREATE TABLE `crud` (
  `id` int(5) NOT NULL,
  `nama` varchar(20) NOT NULL,
  `alamat` varchar(20) NOT NULL,
  `pekerjaan` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `crud`
--
ALTER TABLE `crud`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `crud`
--
ALTER TABLE `crud`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT;
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

--
-- Dumping data untuk tabel `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{\"db\":\"latihan_crud\",\"table\":\"crud\"},{\"db\":\"latihan_1\",\"table\":\"pengarang\"},{\"db\":\"wpu_login\",\"table\":\"user\"},{\"db\":\"wpu_login\",\"table\":\"user_menu\"},{\"db\":\"wpu_login\",\"table\":\"user_sub_menu\"},{\"db\":\"wpu_login\",\"table\":\"user_access_menu\"},{\"db\":\"phpmyadmin\",\"table\":\"pma__users\"},{\"db\":\"wpu_login\",\"table\":\"user_role\"},{\"db\":\"latihan_1\",\"table\":\"latihan_2\"}]');

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
('root', '2019-11-20 02:43:30', '{\"Console\\/Mode\":\"collapse\",\"lang\":\"id\"}');

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
-- Database: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;
--
-- Database: `wpu_login`
--
CREATE DATABASE IF NOT EXISTS `wpu_login` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `wpu_login`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `email` varchar(128) NOT NULL,
  `image` varchar(128) NOT NULL,
  `password` varchar(256) NOT NULL,
  `role_id` int(11) NOT NULL,
  `is_active` int(1) NOT NULL,
  `date_created` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id`, `name`, `email`, `image`, `password`, `role_id`, `is_active`, `date_created`) VALUES
(3, 'Muhamad Ryan Hidayat', 'iyaw123@gmail.com', 'default.jpg', '$2y$10$gX4kydS30Do7MCWrvCTnCeJt15H7XtmFCSanefgLLGBGxF9gYkUHy', 2, 1, 1571787463),
(5, 'admin', 'admin@gmail.com', 'default.jpg', '$2y$10$8LhQQn4XTeHP0hxLeEAn.uqVxThgEpNxiK6kp8IPBAVVruA2qlOXG', 1, 1, 1571801058),
(6, 'user', 'user@gmail.com', 'default.jpg', '$2y$10$4pIbS0Fwj8MElCH1plht6OBCpKBYpLlLqJeO/j.MqqRgNGXVvOOKa', 2, 1, 1572072090);

-- --------------------------------------------------------

--
-- Struktur dari tabel `user_access_menu`
--

CREATE TABLE `user_access_menu` (
  `id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `user_access_menu`
--

INSERT INTO `user_access_menu` (`id`, `role_id`, `menu_id`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 2, 2),
(4, 1, 3);

-- --------------------------------------------------------

--
-- Struktur dari tabel `user_menu`
--

CREATE TABLE `user_menu` (
  `id` int(11) NOT NULL,
  `menu` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `user_menu`
--

INSERT INTO `user_menu` (`id`, `menu`) VALUES
(1, 'Admin'),
(2, 'User'),
(3, 'Menu');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user_role`
--

CREATE TABLE `user_role` (
  `id` int(11) NOT NULL,
  `role` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `user_role`
--

INSERT INTO `user_role` (`id`, `role`) VALUES
(1, 'Administrator'),
(2, 'Member');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user_sub_menu`
--

CREATE TABLE `user_sub_menu` (
  `id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `title` varchar(128) NOT NULL,
  `url` varchar(128) NOT NULL,
  `icon` varchar(128) NOT NULL,
  `is_active` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `user_sub_menu`
--

INSERT INTO `user_sub_menu` (`id`, `menu_id`, `title`, `url`, `icon`, `is_active`) VALUES
(1, 1, 'Dashboard', 'admin', 'fas fa-fw fa-tachometer-alt', 1),
(2, 2, 'My Profile', 'user', 'fas fa-fw fa-user', 1),
(3, 2, 'Edit Profile', 'user/edit', 'fas fa-fw fa-user-edit', 1),
(4, 3, 'Menu Management', 'menu', 'fas fa-fw fa-folder', 1),
(5, 3, 'Submenu Management', 'menu/submenu', 'fas fa-fw fa-folder-open', 1);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `user_access_menu`
--
ALTER TABLE `user_access_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `user_menu`
--
ALTER TABLE `user_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `user_role`
--
ALTER TABLE `user_role`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `user_sub_menu`
--
ALTER TABLE `user_sub_menu`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `user_access_menu`
--
ALTER TABLE `user_access_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `user_menu`
--
ALTER TABLE `user_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `user_role`
--
ALTER TABLE `user_role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `user_sub_menu`
--
ALTER TABLE `user_sub_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
