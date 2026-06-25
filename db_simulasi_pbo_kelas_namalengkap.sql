-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jun 25, 2026 at 05:27 AM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_simulasi_pbo_kelas_namalengkap`
--

-- --------------------------------------------------------

--
-- Table structure for table `tabel_pendaftaran`
--

CREATE TABLE `tabel_pendaftaran` (
  `id_pendaftaran` int NOT NULL,
  `nama_calon` varchar(100) NOT NULL,
  `asal_sekolah` varchar(100) NOT NULL,
  `nilai_ujian` decimal(5,2) NOT NULL,
  `biaya_pendaftaran_dasar` decimal(10,2) NOT NULL,
  `jalur_pendaftaran` enum('Reguler','Prestasi','Kedinasan') NOT NULL,
  `pilihan_prodi` varchar(50) DEFAULT NULL,
  `lokasi_kampus` varchar(50) DEFAULT NULL,
  `jenis_prestasi` varchar(50) DEFAULT NULL,
  `tingkat_prestasi` varchar(30) DEFAULT NULL,
  `sk_ikatan_dinas` varchar(50) DEFAULT NULL,
  `instansi_sponsor` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `tabel_pendaftaran`
--

INSERT INTO `tabel_pendaftaran` (`id_pendaftaran`, `nama_calon`, `asal_sekolah`, `nilai_ujian`, `biaya_pendaftaran_dasar`, `jalur_pendaftaran`, `pilihan_prodi`, `lokasi_kampus`, `jenis_prestasi`, `tingkat_prestasi`, `sk_ikatan_dinas`, `instansi_sponsor`) VALUES
(1, 'Ahmad Fauzi', 'SMAN 1 Jakarta', '85.50', '150000.00', 'Reguler', 'Teknik Informatika', 'Kampus Utama', NULL, NULL, NULL, NULL),
(2, 'Budi Santoso', 'SMAN 3 Bandung', '78.00', '150000.00', 'Reguler', 'Sistem Informasi', 'Kampus Utama', NULL, NULL, NULL, NULL),
(3, 'Citra Dewi', 'SMKN 2 Surabaya', '92.25', '150000.00', 'Reguler', 'Teknik Informatika', 'Kampus Merdeka', NULL, NULL, NULL, NULL),
(4, 'Dedi Kurniawan', 'SMAN 5 Yogyakarta', '80.00', '150000.00', 'Reguler', 'Manajemen Informatika', 'Kampus Utama', NULL, NULL, NULL, NULL),
(5, 'Eka Putri', 'SMAN 1 Semarang', '88.75', '150000.00', 'Reguler', 'Sistem Informasi', 'Kampus Merdeka', NULL, NULL, NULL, NULL),
(6, 'Fajar Nugroho', 'SMKN 1 Balikpapan', '75.50', '150000.00', 'Reguler', 'Teknik Informatika', 'Kampus Utama', NULL, NULL, NULL, NULL),
(7, 'Gita Permata', 'SMAN 8 Medan', '83.40', '150000.00', 'Reguler', 'Sistem Informasi', 'Kampus Utama', NULL, NULL, NULL, NULL),
(8, 'Hadi Wijaya', 'SMAN 2 Surakarta', '95.00', '100000.00', 'Prestasi', NULL, NULL, 'Olimpiade Matematika', 'Nasional', NULL, NULL),
(9, 'Indah Lestari', 'SMAN 1 Malang', '91.50', '100000.00', 'Prestasi', NULL, NULL, 'Futsal', 'Provinsi', NULL, NULL),
(10, 'Joko Susilo', 'SMAN 4 Denpasar', '89.00', '100000.00', 'Prestasi', NULL, NULL, 'Karya Ilmiah Remaja', 'Nasional', NULL, NULL),
(11, 'Kurniawati', 'SMKN 1 Makassar', '94.20', '100000.00', 'Prestasi', NULL, NULL, 'Lomba Kompetensi Siswa', 'Nasional', NULL, NULL),
(12, 'Laksana Tri', 'SMAN 3 Palembang', '87.50', '100000.00', 'Prestasi', NULL, NULL, 'Pencak Silat', 'Internasional', NULL, NULL),
(13, 'Mega Utami', 'SMAN 7 Padang', '90.00', '100000.00', 'Prestasi', NULL, NULL, 'Paduan Suara', 'Provinsi', NULL, NULL),
(14, 'Naufal Hadi', 'SMAN 1 Banjarmasin', '93.10', '100000.00', 'Prestasi', NULL, NULL, 'Debat Bahasa Inggris', 'Nasional', NULL, NULL),
(15, 'Oki Rian', 'SMAN 1 Tarakan', '86.00', '200000.00', 'Kedinasan', NULL, NULL, NULL, NULL, 'SK-990/KD/2026', 'Kementerian Komunikasi dan Digital'),
(16, 'Putri Ayu', 'SMAN 2 Pontianak', '89.50', '200000.00', 'Kedinasan', NULL, NULL, NULL, NULL, 'SK-102/KD/2026', 'Badan Siber dan Sandi Negara'),
(17, 'Rian Hidayat', 'SMKN 4 Bandung', '84.00', '200000.00', 'Kedinasan', NULL, NULL, NULL, NULL, 'SK-551/KD/2026', 'Kementerian Perhubungan'),
(18, 'Siti Aminah', 'SMAN 1 Jayapura', '88.25', '200000.00', 'Kedinasan', NULL, NULL, NULL, NULL, 'SK-088/KD/2026', 'Pemerintah Daerah Provinsi Papua'),
(19, 'Taufik Hidayat', 'SMAN 3 Banda Aceh', '82.70', '200000.00', 'Kedinasan', NULL, NULL, NULL, NULL, 'SK-412/KD/2026', 'Kementerian Dalam Negeri'),
(20, 'Utami Rizki', 'SMAN 1 Manado', '91.00', '200000.00', 'Kedinasan', NULL, NULL, NULL, NULL, 'SK-303/KD/2026', 'Badan Pusat Statistik'),
(21, 'Vino Bastian', 'SMAN 6 Jakarta', '87.90', '200000.00', 'Kedinasan', NULL, NULL, NULL, NULL, 'SK-707/KD/2026', 'Kementerian Keuangan');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tabel_pendaftaran`
--
ALTER TABLE `tabel_pendaftaran`
  ADD PRIMARY KEY (`id_pendaftaran`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tabel_pendaftaran`
--
ALTER TABLE `tabel_pendaftaran`
  MODIFY `id_pendaftaran` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
