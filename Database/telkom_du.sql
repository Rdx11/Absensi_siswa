-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Nov 01, 2019 at 04:57 PM
-- Server version: 5.7.27-0ubuntu0.19.04.1
-- PHP Version: 7.3.11-1+ubuntu19.04.1+deb.sury.org+1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `telkom_du`
--

-- --------------------------------------------------------

--
-- Table structure for table `archived_documents`
--

CREATE TABLE `archived_documents` (
  `ad_id` char(10) NOT NULL,
  `ad_sid` char(10) NOT NULL,
  `ad_ijazah` enum('Ada','Tidak Ada') DEFAULT NULL,
  `ad_ijazah_added_at` timestamp NULL DEFAULT NULL,
  `ad_ijazah_borrowed_at` timestamp NULL DEFAULT NULL,
  `ad_ijazah_returned_at` timestamp NULL DEFAULT NULL,
  `ad_ijazah_added_by` varchar(50) DEFAULT NULL,
  `ad_ijazah_borrowed_by` varchar(50) DEFAULT NULL,
  `ad_ijazah_returned_by` varchar(50) DEFAULT NULL,
  `ad_skhun` enum('Ada','Tidak Ada') DEFAULT NULL,
  `ad_skhun_added_at` timestamp NULL DEFAULT NULL,
  `ad_skhun_borrowed_at` timestamp NULL DEFAULT NULL,
  `ad_skhun_returned_at` timestamp NULL DEFAULT NULL,
  `ad_skhun_added_by` varchar(50) DEFAULT NULL,
  `ad_skhun_borrowed_by` varchar(50) DEFAULT NULL,
  `ad_skhun_returned_by` varchar(50) DEFAULT NULL,
  `ad_kk` enum('Ada','Tidak Ada') DEFAULT NULL,
  `ad_kk_added_at` timestamp NULL DEFAULT NULL,
  `ad_kk_added_by` varchar(50) DEFAULT NULL,
  `ad_ktpa` enum('Ada','Tidak Ada') DEFAULT NULL,
  `ad_ktpa_added_at` timestamp NULL DEFAULT NULL,
  `ad_ktpa_added_by` varchar(50) DEFAULT NULL,
  `ad_ktpi` enum('Ada','Tidak Ada') DEFAULT NULL,
  `ad_ktpi_added_at` timestamp NULL DEFAULT NULL,
  `ad_ktpi_added_by` varchar(50) DEFAULT NULL,
  `ad_kips` enum('Ada','Tidak Ada') DEFAULT NULL,
  `ad_kips_added_at` timestamp NULL DEFAULT NULL,
  `ad_kips_added_by` varchar(50) DEFAULT NULL,
  `ad_sktm` enum('Ada','Tidak Ada') DEFAULT NULL,
  `ad_sktm_added_at` timestamp NULL DEFAULT NULL,
  `ad_sktm_added_by` varchar(50) DEFAULT NULL,
  `ad_cname` varchar(20) DEFAULT NULL,
  `ad_fname` varchar(20) DEFAULT NULL,
  `ad_map` varchar(20) DEFAULT NULL,
  `ad_kode_map` varchar(20) DEFAULT NULL,
  `ad_status` enum('Penuh','Kosong','Diambil') DEFAULT NULL,
  `ad_created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ad_updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ad_deleted_at` timestamp NULL DEFAULT NULL,
  `ad_restored_at` timestamp NULL DEFAULT NULL,
  `ad_created_by` varchar(50) DEFAULT NULL,
  `ad_updated_by` varchar(50) DEFAULT NULL,
  `ad_deleted_by` varchar(50) DEFAULT NULL,
  `ad_restored_by` varchar(50) DEFAULT NULL,
  `ad_is_deleted` enum('TRUE','FALSE') DEFAULT 'FALSE',
  `ad_taken_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `ad_taken_by` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `cabinets`
--

CREATE TABLE `cabinets` (
  `c_id` char(5) NOT NULL,
  `c_name` varchar(20) DEFAULT NULL,
  `c_created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `c_updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `c_deleted_at` timestamp NULL DEFAULT NULL,
  `c_restored_at` timestamp NULL DEFAULT NULL,
  `c_created_by` char(5) DEFAULT NULL,
  `c_updated_by` char(5) DEFAULT NULL,
  `c_deleted_by` char(5) DEFAULT NULL,
  `c_restored_by` char(5) DEFAULT NULL,
  `c_is_deleted` enum('TRUE','FALSE') DEFAULT 'FALSE'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ci_sessions`
--

CREATE TABLE `ci_sessions` (
  `id` varchar(128) NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `timestamp` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `data` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ci_sessions`
--

INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES
('d95b7d1bd46e9dcc62e425996163657c0635ca12', '127.0.0.1', 1502238452, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530323233383435323b),
('7sjmfe25sl5br1j8tudkncgabt404sft', '::1', 1539743388, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533393734333338383b),
('uiu3mtcfsolt6arp9j4784vaia3eg52h', '::1', 1539921045, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533393932313034353b),
('q11f99ogvgr3ufqfffhmcur4aris7pr7', '::1', 1539922072, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533393932313931333b755f69647c733a353a227842336747223b755f6e616d657c733a363a226d6173727564223b755f666e616d657c733a31313a224d2e2052756469616e746f223b755f6c6576656c7c733a31333a2241646d696e6973747261746f72223b69735f6c6f676765645f696e7c623a313b),
('pkiaoflb37vqd5kk6p702khbhvf3283o', '127.0.0.1', 1572506911, 0x5f5f63695f6c6173745f726567656e65726174657c693a313537323530363833353b),
('2ouh3ukair7bf3h6eeirhcaqur58lrjl', '127.0.0.1', 1572515203, 0x5f5f63695f6c6173745f726567656e65726174657c693a313537323531353135373b755f69647c733a353a225567796342223b755f6e616d657c733a373a22696d616d5f3137223b755f666e616d657c733a31323a22696d616d696b686c6173756c223b755f6c6576656c7c733a31333a2241646d696e6973747261746f72223b69735f6c6f676765645f696e7c623a313b),
('f4b1ah1l48rrhevv4h84f1nefva2ofdn', '127.0.0.1', 1572533937, 0x5f5f63695f6c6173745f726567656e65726174657c693a313537323533333933373b),
('jqejpl36mvr597nsgac6qf8dj4m9mujs', '127.0.0.1', 1572602172, 0x5f5f63695f6c6173745f726567656e65726174657c693a313537323630323137323b755f69647c733a353a22464a546d33223b755f6e616d657c733a363a2264697461786c223b755f666e616d657c733a32343a2264697461206e757220616d616c69612062696e20526f6e69223b755f6c6576656c7c733a31333a2241646d696e6973747261746f72223b69735f6c6f676765645f696e7c623a313b);

-- --------------------------------------------------------

--
-- Table structure for table `documents`
--

CREATE TABLE `documents` (
  `d_id` char(10) NOT NULL,
  `d_sid` char(10) DEFAULT NULL,
  `d_ijazah` enum('Ada','Tidak Ada') DEFAULT NULL,
  `d_ijazah_added_at` timestamp NULL DEFAULT NULL,
  `d_ijazah_borrowed_at` timestamp NULL DEFAULT NULL,
  `d_ijazah_returned_at` timestamp NULL DEFAULT NULL,
  `d_ijazah_added_by` varchar(50) DEFAULT NULL,
  `d_ijazah_borrowed_by` varchar(50) DEFAULT NULL,
  `d_ijazah_returned_by` varchar(50) DEFAULT NULL,
  `d_skhun` enum('Ada','Tidak Ada') DEFAULT NULL,
  `d_skhun_added_at` timestamp NULL DEFAULT NULL,
  `d_skhun_borrowed_at` timestamp NULL DEFAULT NULL,
  `d_skhun_returned_at` timestamp NULL DEFAULT NULL,
  `d_skhun_added_by` varchar(50) DEFAULT NULL,
  `d_skhun_borrowed_by` varchar(50) DEFAULT NULL,
  `d_skhun_returned_by` varchar(50) DEFAULT NULL,
  `d_kk` enum('Ada','Tidak Ada') DEFAULT NULL,
  `d_kk_added_at` timestamp NULL DEFAULT NULL,
  `d_kk_added_by` varchar(50) DEFAULT NULL,
  `d_ktpa` enum('Ada','Tidak Ada') DEFAULT NULL,
  `d_ktpa_added_at` timestamp NULL DEFAULT NULL,
  `d_ktpa_added_by` varchar(50) DEFAULT NULL,
  `d_ktpi` enum('Ada','Tidak Ada') DEFAULT NULL,
  `d_ktpi_added_at` timestamp NULL DEFAULT NULL,
  `d_ktpi_added_by` varchar(50) DEFAULT NULL,
  `d_kips` enum('Ada','Tidak Ada') DEFAULT NULL,
  `d_kips_added_at` timestamp NULL DEFAULT NULL,
  `d_kips_added_by` varchar(50) DEFAULT NULL,
  `d_sktm` enum('Ada','Tidak Ada') DEFAULT NULL,
  `d_sktm_added_at` timestamp NULL DEFAULT NULL,
  `d_sktm_added_by` varchar(50) DEFAULT NULL,
  `d_cname` varchar(20) DEFAULT NULL,
  `d_fname` varchar(20) DEFAULT NULL,
  `d_map` varchar(20) DEFAULT NULL,
  `d_kode_map` varchar(20) DEFAULT NULL,
  `d_status` enum('Penuh','Kosong','Diambil') DEFAULT NULL,
  `d_created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `d_updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `d_deleted_at` timestamp NULL DEFAULT NULL,
  `d_restored_at` timestamp NULL DEFAULT NULL,
  `d_created_by` varchar(50) DEFAULT NULL,
  `d_updated_by` varchar(50) DEFAULT NULL,
  `d_deleted_by` varchar(50) DEFAULT NULL,
  `d_restored_by` varchar(50) DEFAULT NULL,
  `d_is_deleted` enum('TRUE','FALSE') DEFAULT 'FALSE'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `folders`
--

CREATE TABLE `folders` (
  `f_id` char(5) NOT NULL,
  `f_name` varchar(20) DEFAULT NULL,
  `f_created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `f_updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `f_deleted_at` timestamp NULL DEFAULT NULL,
  `f_restored_at` timestamp NULL DEFAULT NULL,
  `f_created_by` char(5) DEFAULT NULL,
  `f_updated_by` char(5) DEFAULT NULL,
  `f_deleted_by` char(5) DEFAULT NULL,
  `f_restored_by` char(5) DEFAULT NULL,
  `f_is_deleted` enum('TRUE','FALSE') DEFAULT 'FALSE'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `majors`
--

CREATE TABLE `majors` (
  `m_id` varchar(3) NOT NULL,
  `m_name` varchar(50) DEFAULT NULL,
  `m_created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `m_updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `m_deleted_at` timestamp NULL DEFAULT NULL,
  `m_restored_at` timestamp NULL DEFAULT NULL,
  `m_created_by` char(5) DEFAULT NULL,
  `m_updated_by` char(5) DEFAULT NULL,
  `m_deleted_by` char(5) DEFAULT NULL,
  `m_restored_by` char(5) DEFAULT NULL,
  `m_is_deleted` enum('TRUE','FALSE') DEFAULT 'FALSE'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `majors`
--

INSERT INTO `majors` (`m_id`, `m_name`, `m_created_at`, `m_updated_at`, `m_deleted_at`, `m_restored_at`, `m_created_by`, `m_updated_by`, `m_deleted_by`, `m_restored_by`, `m_is_deleted`) VALUES
('MM', 'Multimedia', '2019-10-31 14:45:46', '2019-10-31 14:45:46', NULL, NULL, 'UgycB', NULL, NULL, NULL, 'FALSE'),
('RPL', 'Rekayasa Perangkat Lunak', '2019-10-31 14:45:34', '2019-10-31 14:45:34', NULL, NULL, 'UgycB', NULL, NULL, NULL, 'FALSE'),
('TKJ', 'Teknik Komputer Jaringan', '2019-10-31 14:46:01', '2019-10-31 14:46:01', NULL, NULL, 'UgycB', NULL, NULL, NULL, 'FALSE');

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `s_id` char(10) NOT NULL,
  `s_nisn` varchar(20) DEFAULT NULL,
  `s_name` varchar(50) DEFAULT NULL,
  `s_dob` date DEFAULT NULL,
  `s_gender` enum('Laki-laki','Perempuan') DEFAULT NULL,
  `s_grade` char(5) DEFAULT 'X',
  `s_mid` char(5) DEFAULT 'MM',
  `s_yi` year(4) DEFAULT NULL,
  `s_yo` year(4) DEFAULT NULL,
  `s_foto` varchar(255) DEFAULT NULL,
  `s_kk` varchar(255) DEFAULT NULL,
  `s_ktpa` varchar(255) DEFAULT NULL,
  `s_ktpi` varchar(255) DEFAULT NULL,
  `s_kips` varchar(255) DEFAULT NULL,
  `s_sktm` varchar(255) DEFAULT NULL,
  `s_ijazah` varchar(255) DEFAULT NULL,
  `s_skhun` varchar(255) DEFAULT NULL,
  `s_status` enum('Lengkap','Kurang','Belum Ada Data') DEFAULT 'Belum Ada Data',
  `s_created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `s_updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `s_deleted_at` timestamp NULL DEFAULT NULL,
  `s_restored_at` timestamp NULL DEFAULT NULL,
  `s_created_by` char(5) DEFAULT NULL,
  `s_updated_by` char(5) DEFAULT NULL,
  `s_deleted_by` char(5) DEFAULT NULL,
  `s_restored_by` char(50) DEFAULT NULL,
  `s_is_deleted` enum('TRUE','FALSE') DEFAULT 'FALSE',
  `s_is_active` enum('Aktif','Tidak Aktif') NOT NULL DEFAULT 'Aktif'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `u_id` char(5) NOT NULL,
  `u_name` varchar(20) DEFAULT NULL,
  `u_pass` varchar(255) DEFAULT NULL,
  `u_fname` varchar(50) DEFAULT NULL,
  `u_level` enum('Administrator','User Biasa') NOT NULL DEFAULT 'User Biasa',
  `u_created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `u_updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `u_created_by` char(5) DEFAULT NULL,
  `u_updated_by` char(5) DEFAULT NULL,
  `u_password_updated_at` timestamp NULL DEFAULT NULL,
  `u_last_logged_in` timestamp NULL DEFAULT NULL,
  `u_ip_address` varchar(50) DEFAULT NULL,
  `u_is_active` enum('Aktif','Tidak Aktif') NOT NULL DEFAULT 'Aktif'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`u_id`, `u_name`, `u_pass`, `u_fname`, `u_level`, `u_created_at`, `u_updated_at`, `u_created_by`, `u_updated_by`, `u_password_updated_at`, `u_last_logged_in`, `u_ip_address`, `u_is_active`) VALUES
('6Yw7G', 'fatkurozi', '$2y$10$dzemxGMfZbcxR35gpoSSAuH1bBqXtFCjdMTfJVc4kWTGeSdS10WRW', 'M.fatkurozy', 'User Biasa', '2019-10-31 14:40:39', '2019-10-31 14:41:01', 'UgycB', NULL, NULL, '2019-10-31 14:41:01', '127.0.0.1', 'Aktif'),
('FJTm3', 'ditaxl', '$2y$10$6oMb5P6WPUUKgca4LgrctuedUX5xY8bLwUjUwVXlEkNFGWLSHeMXu', 'dita nur amalia bin Roni', 'Administrator', '2019-10-31 14:54:57', '2019-11-01 09:01:16', 'UgycB', NULL, NULL, '2019-11-01 09:01:16', '127.0.0.1', 'Aktif'),
('MWo5K', 'abim18', '$2y$10$IGvxM27mPfi8aPdzfw/.jO30h400MHB4sHK7/VDPhvmQ9PLDIZ2D2', 'abimgatya', 'Administrator', '2019-10-31 09:42:46', '2019-10-31 14:54:12', 'UgycB', 'UgycB', NULL, NULL, NULL, 'Aktif'),
('UgycB', 'imam_17', '$2y$10$u4/mojqGO6a1lh/IlJBaB.mY.POkdPFfprPsDZ7eDK1n5GI10P.Me', 'imamikhlasul', 'Administrator', '2019-10-31 06:46:43', '2019-10-31 14:44:22', 'xB3gG', NULL, NULL, '2019-10-31 14:44:22', '127.0.0.1', 'Aktif');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `archived_documents`
--
ALTER TABLE `archived_documents`
  ADD PRIMARY KEY (`ad_id`);

--
-- Indexes for table `cabinets`
--
ALTER TABLE `cabinets`
  ADD PRIMARY KEY (`c_id`),
  ADD UNIQUE KEY `mname` (`c_name`);

--
-- Indexes for table `ci_sessions`
--
ALTER TABLE `ci_sessions`
  ADD KEY `ci_sessions_timestamp` (`timestamp`);

--
-- Indexes for table `documents`
--
ALTER TABLE `documents`
  ADD PRIMARY KEY (`d_id`),
  ADD UNIQUE KEY `d_map` (`d_kode_map`);

--
-- Indexes for table `folders`
--
ALTER TABLE `folders`
  ADD PRIMARY KEY (`f_id`),
  ADD UNIQUE KEY `mname` (`f_name`);

--
-- Indexes for table `majors`
--
ALTER TABLE `majors`
  ADD PRIMARY KEY (`m_id`),
  ADD UNIQUE KEY `mname` (`m_name`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`s_id`),
  ADD UNIQUE KEY `snisn` (`s_nisn`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`u_id`),
  ADD UNIQUE KEY `uname` (`u_name`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
