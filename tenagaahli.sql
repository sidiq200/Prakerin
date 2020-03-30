-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 30, 2020 at 03:51 AM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tenagaahli`
--

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE `menu` (
  `id` int(11) NOT NULL,
  `kualifikasi` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`id`, `kualifikasi`) VALUES
(1, 'Aplikasi'),
(2, 'Tata Kelola IT'),
(3, 'Jaringan');

-- --------------------------------------------------------

--
-- Table structure for table `pengalaman`
--

CREATE TABLE `pengalaman` (
  `id` int(11) NOT NULL,
  `nama_pekerjaan` varchar(500) NOT NULL,
  `instansi` varchar(500) NOT NULL,
  `lokasi` varchar(500) NOT NULL,
  `waktu` char(15) NOT NULL,
  `kualifikasi` varchar(500) NOT NULL,
  `tahun` char(15) NOT NULL,
  `kategori` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pengalaman`
--

INSERT INTO `pengalaman` (`id`, `nama_pekerjaan`, `instansi`, `lokasi`, `waktu`, `kualifikasi`, `tahun`, `kategori`) VALUES
(9, 'membetulkan', 'jasna', 'Bandung', '23-3-2002', '1', '2009', 'web');

-- --------------------------------------------------------

--
-- Table structure for table `tenaga`
--

CREATE TABLE `tenaga` (
  `id` int(11) NOT NULL,
  `nama` char(218) NOT NULL,
  `sertifikat_IT` varchar(128) NOT NULL,
  `jurusan` char(128) NOT NULL,
  `lulustahun` char(128) NOT NULL,
  `jurusan2` char(128) NOT NULL,
  `lulustahun2` char(128) NOT NULL,
  `tgl_lahir` date NOT NULL,
  `alamat` char(255) NOT NULL,
  `no_ktp` char(50) NOT NULL,
  `npwp` char(50) NOT NULL,
  `bukti_potong` char(255) NOT NULL,
  `espt` char(255) NOT NULL,
  `tgl_sejak` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tenaga`
--

INSERT INTO `tenaga` (`id`, `nama`, `sertifikat_IT`, `jurusan`, `lulustahun`, `jurusan2`, `lulustahun2`, `tgl_lahir`, `alamat`, `no_ktp`, `npwp`, `bukti_potong`, `espt`, `tgl_sejak`) VALUES
(12, 'vikri', 'penyanyi', 'D1', '2011', 'S1', '2015', '2002-06-11', 'jl.uber', '2389011784', '12783812345690', '11000000', '2200000', 20191002);

-- --------------------------------------------------------

--
-- Table structure for table `trans`
--

CREATE TABLE `trans` (
  `id` int(11) NOT NULL,
  `nama` varchar(128) NOT NULL,
  `pekerjaan` varchar(128) NOT NULL,
  `posisi` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `trans`
--

INSERT INTO `trans` (`id`, `nama`, `pekerjaan`, `posisi`) VALUES
(1, 'dude', 'programmer', 'Direktur');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `email` varchar(128) NOT NULL,
  `image` varchar(128) NOT NULL,
  `password` varchar(218) NOT NULL,
  `role_id` int(11) NOT NULL,
  `is_active` int(1) NOT NULL,
  `date_created` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `email`, `image`, `password`, `role_id`, `is_active`, `date_created`) VALUES
(12, 'faisalsidiq', 'faisalsidiq12@gmail.com', 'pengguna.png', '$2y$10$kXcw6U0.bpqI0dwNffJ4E.iBYQTIdx6B6TwEAj6vlewptsPGkfctW', 1, 1, 1585405985),
(13, 'Dika', 'Teukudika12@co.id', 'pengguna.png', '$2y$10$zmW0TPaVg1PSW7lXP3bct.8QC3jaXqX7wtcBFJp/1/5b40DEUYaRu', 2, 1, 1585413281);

-- --------------------------------------------------------

--
-- Table structure for table `user_access_menu`
--

CREATE TABLE `user_access_menu` (
  `id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_access_menu`
--

INSERT INTO `user_access_menu` (`id`, `role_id`, `menu_id`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 2, 2),
(4, 1, 3),
(5, 2, 4);

-- --------------------------------------------------------

--
-- Table structure for table `user_menu`
--

CREATE TABLE `user_menu` (
  `id` int(11) NOT NULL,
  `menu` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_menu`
--

INSERT INTO `user_menu` (`id`, `menu`) VALUES
(1, 'Admin'),
(2, 'User'),
(3, 'Menu'),
(4, 'data');

-- --------------------------------------------------------

--
-- Table structure for table `user_role`
--

CREATE TABLE `user_role` (
  `id` int(11) NOT NULL,
  `role` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_role`
--

INSERT INTO `user_role` (`id`, `role`) VALUES
(1, 'Administrator'),
(2, 'Member');

-- --------------------------------------------------------

--
-- Table structure for table `user_sub_menu`
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
-- Dumping data for table `user_sub_menu`
--

INSERT INTO `user_sub_menu` (`id`, `menu_id`, `title`, `url`, `icon`, `is_active`) VALUES
(1, 1, 'Dashboard', 'admin', 'mdi mdi-view-dashboard', 1),
(2, 2, 'Profil saya\r\n', 'user', 'fas fa-user-circle', 1),
(3, 2, 'Edit Profil', 'user/edit', 'mdi mdi-account-edit', 1),
(4, 3, 'Manajemen menu', 'menu', 'fas fa-align-justify', 1),
(5, 3, 'Manajemen submenu', 'menu/submenu', 'fas fa-fw fa-folder-open', 1),
(6, 1, 'Role', 'admin/role', 'mdi mdi-account-settings', 1),
(7, 2, 'Ganti kata sandi', 'user/changepassword', 'mdi mdi-account-key', 1),
(12, 4, 'Data Tenaga Ahli', 'data', 'mdi mdi-clipboard', 1);

-- --------------------------------------------------------

--
-- Table structure for table `user_token`
--

CREATE TABLE `user_token` (
  `id` int(11) NOT NULL,
  `email` varchar(128) NOT NULL,
  `token` varchar(128) NOT NULL,
  `date_created` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_token`
--

INSERT INTO `user_token` (`id`, `email`, `token`, `date_created`) VALUES
(1, 'herow688@gmail.com', 'J1MLgtO1XxoQc7iQc4GPzC79wbcP7XQnbcB7txsm7xA=', 1579503355),
(2, 'herow688@gmail.com', 'ldykYU/tK6tWSDV7o0/YQvqEUMIit/U9RzlDfzBIdzY=', 1579503427);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pengalaman`
--
ALTER TABLE `pengalaman`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tenaga`
--
ALTER TABLE `tenaga`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `trans`
--
ALTER TABLE `trans`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_access_menu`
--
ALTER TABLE `user_access_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_menu`
--
ALTER TABLE `user_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_role`
--
ALTER TABLE `user_role`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_sub_menu`
--
ALTER TABLE `user_sub_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_token`
--
ALTER TABLE `user_token`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `menu`
--
ALTER TABLE `menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `pengalaman`
--
ALTER TABLE `pengalaman`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `tenaga`
--
ALTER TABLE `tenaga`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `trans`
--
ALTER TABLE `trans`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `user_access_menu`
--
ALTER TABLE `user_access_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `user_menu`
--
ALTER TABLE `user_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `user_role`
--
ALTER TABLE `user_role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `user_sub_menu`
--
ALTER TABLE `user_sub_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `user_token`
--
ALTER TABLE `user_token`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
