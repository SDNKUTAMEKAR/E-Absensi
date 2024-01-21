-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 20 Jan 2024 pada 12.01
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
-- Database: `absen`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `absensi`
--

CREATE TABLE `absensi` (
  `id` int(11) NOT NULL,
  `nik` varchar(30) DEFAULT NULL,
  `tanggal` date DEFAULT NULL,
  `masuk` datetime DEFAULT NULL,
  `pulang` datetime DEFAULT NULL,
  `ijin` varchar(25) DEFAULT NULL,
  `update_by` varchar(10) DEFAULT NULL,
  `tw` datetime DEFAULT NULL,
  `shif` varchar(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `absensi`
--

INSERT INTO `absensi` (`id`, `nik`, `tanggal`, `masuk`, `pulang`, `ijin`, `update_by`, `tw`, `shif`) VALUES
(16, '2110631050058', '2024-01-15', '2024-01-15 22:01:13', NULL, NULL, NULL, NULL, NULL),
(17, '2110631050058', '2024-01-16', '2024-01-16 00:50:28', '2024-01-16 19:13:49', NULL, NULL, NULL, NULL),
(18, '1234567890', '2024-01-16', '2024-01-16 01:16:31', '2024-01-16 09:03:58', NULL, NULL, NULL, NULL),
(19, '1234512345', '2024-01-16', '2024-01-16 15:20:43', '2024-01-16 19:14:03', NULL, NULL, NULL, NULL),
(20, '1234567890', '2024-01-19', NULL, NULL, 'sakit', NULL, NULL, NULL),
(21, '1234512345', '2024-01-19', '2024-01-19 05:01:06', NULL, NULL, NULL, NULL, NULL),
(22, '2110631050058', '2024-01-19', '2024-01-19 05:20:49', '2024-01-19 08:07:17', NULL, NULL, NULL, NULL),
(23, '2110631050059', '2024-01-19', '2024-01-19 08:04:13', NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `aplikasi`
--

CREATE TABLE `aplikasi` (
  `id` int(11) NOT NULL,
  `nama_aplikasi` varchar(255) DEFAULT NULL,
  `nama_perusahaan` varchar(255) DEFAULT NULL,
  `logo` varchar(255) DEFAULT NULL,
  `alamat` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `aplikasi`
--

INSERT INTO `aplikasi` (`id`, `nama_aplikasi`, `nama_perusahaan`, `logo`, `alamat`) VALUES
(1, 'Sistem Absensi Siswa', 'Sistem Absensi Siswa SDN Kutamekar 1', 'file_20240116152139.logo-karawang.png', 'Dusun Gintung, Kutamekar, Kec. Ciampel, Kab. Karawang Prov. Jawa Bara');

-- --------------------------------------------------------

--
-- Struktur dari tabel `area`
--

CREATE TABLE `area` (
  `id` int(11) NOT NULL,
  `kode_area` varchar(255) DEFAULT NULL,
  `area` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `area`
--

INSERT INTO `area` (`id`, `kode_area`, `area`) VALUES
(1, 'Jabatan', 'Siswa'),
(2, 'Jabatan', 'Guru');

-- --------------------------------------------------------

--
-- Struktur dari tabel `jobtitle`
--

CREATE TABLE `jobtitle` (
  `id` int(11) NOT NULL,
  `kode_jobtitle` varchar(255) DEFAULT NULL,
  `jobtitle` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `jobtitle`
--

INSERT INTO `jobtitle` (`id`, `kode_jobtitle`, `jobtitle`) VALUES
(4, 'SISWA', 'KELAS I'),
(5, 'SISWA', 'KELAS II'),
(6, 'SISWA', 'KELAS III'),
(7, 'SISWA', 'KELAS IV'),
(8, 'SISWA', 'KELAS V'),
(9, 'SISWA', 'KELAS VI');

-- --------------------------------------------------------

--
-- Struktur dari tabel `karyawan`
--

CREATE TABLE `karyawan` (
  `id` int(11) NOT NULL,
  `nik` char(30) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `job_title` varchar(255) DEFAULT NULL,
  `no_telp` varchar(255) DEFAULT NULL,
  `nama_ayah` varchar(255) NOT NULL,
  `jenis_kelamin` varchar(255) DEFAULT NULL,
  `agama` varchar(255) DEFAULT NULL,
  `lokasi` varchar(255) DEFAULT NULL,
  `area` varchar(255) DEFAULT NULL,
  `sub_area` varchar(255) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `foto` varchar(255) DEFAULT NULL,
  `lat` double DEFAULT NULL,
  `lon` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `karyawan`
--

INSERT INTO `karyawan` (`id`, `nik`, `password`, `nama`, `job_title`, `no_telp`, `nama_ayah`, `jenis_kelamin`, `agama`, `lokasi`, `area`, `sub_area`, `start_date`, `end_date`, `foto`, `lat`, `lon`) VALUES
(1, '2110631050058', NULL, 'Dimas Dwi Indriyanto', 'SISWA', '', '', '', '', 'SDN Kutamekar 1', 'Jabatan', 'KELAS VI', '0000-00-00', '0000-00-00', 'file_20240119080041.WhatsApp Image 2024-01-15 at 07.04.17.jpeg', NULL, NULL),
(2, '2110631050059', NULL, 'Siti Mariyam', 'SISWA', '', '', '', '', 'SDN Kutamekar 1', 'Jabatan', 'KELAS VI', '0000-00-00', '0000-00-00', 'file_20240119080151.logo-karawang.png', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `lokasi`
--

CREATE TABLE `lokasi` (
  `id` int(11) NOT NULL,
  `kode` varchar(255) DEFAULT NULL,
  `lokasi` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `lokasi`
--

INSERT INTO `lokasi` (`id`, `kode`, `lokasi`) VALUES
(1, 'Sekolah', 'SDN Kutamekar 1');

-- --------------------------------------------------------

--
-- Struktur dari tabel `shift`
--

CREATE TABLE `shift` (
  `id` int(11) NOT NULL,
  `shift` varchar(255) DEFAULT NULL,
  `jam_masuk` time DEFAULT NULL,
  `jam_pulang` time DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `shift`
--

INSERT INTO `shift` (`id`, `shift`, `jam_masuk`, `jam_pulang`) VALUES
(1, 'Shift 1', '00:01:00', '08:00:00'),
(2, 'Shift 2', '08:01:00', '16:00:00'),
(3, 'Shift 3', '16:01:00', '23:59:00'),
(4, 'Non Shift', '08:00:00', '17:00:00');

-- --------------------------------------------------------

--
-- Struktur dari tabel `sub_area`
--

CREATE TABLE `sub_area` (
  `id` int(11) NOT NULL,
  `kode_subarea` varchar(255) DEFAULT NULL,
  `subarea` varchar(255) DEFAULT NULL,
  `latlong` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `sub_area`
--

INSERT INTO `sub_area` (`id`, `kode_subarea`, `subarea`, `latlong`) VALUES
(1, 'KELAS', 'KELAS I', '-6.208568169767049, 106.71735670712019'),
(2, 'KELAS', 'KELAS II', NULL),
(3, 'KELAS', 'KELAS III', NULL),
(4, 'KELAS', 'KELAS IV', NULL),
(5, 'KELAS', 'KELAS V', NULL),
(6, 'KELAS', 'KELAS VI', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(15) DEFAULT NULL,
  `password` varchar(15) DEFAULT NULL,
  `nama` varchar(50) DEFAULT NULL,
  `area` varchar(50) DEFAULT NULL,
  `level` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `nama`, `area`, `level`) VALUES
(1, 'admin', 'admin', 'Administrator', 'all', 'superadmin'),
(7, 'Guru1', '123', 'Dimas Dwi Indriyanto', 'Kota', 'adminarea');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user_level`
--

CREATE TABLE `user_level` (
  `id` int(11) NOT NULL,
  `level` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `user_level`
--

INSERT INTO `user_level` (`id`, `level`) VALUES
(1, 'superadmin'),
(2, 'adminarea'),
(3, 'supervisor');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `absensi`
--
ALTER TABLE `absensi`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `aplikasi`
--
ALTER TABLE `aplikasi`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `area`
--
ALTER TABLE `area`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `jobtitle`
--
ALTER TABLE `jobtitle`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `karyawan`
--
ALTER TABLE `karyawan`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `lokasi`
--
ALTER TABLE `lokasi`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `shift`
--
ALTER TABLE `shift`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `sub_area`
--
ALTER TABLE `sub_area`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `user_level`
--
ALTER TABLE `user_level`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `absensi`
--
ALTER TABLE `absensi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT untuk tabel `aplikasi`
--
ALTER TABLE `aplikasi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `area`
--
ALTER TABLE `area`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `jobtitle`
--
ALTER TABLE `jobtitle`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `karyawan`
--
ALTER TABLE `karyawan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `lokasi`
--
ALTER TABLE `lokasi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `shift`
--
ALTER TABLE `shift`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `sub_area`
--
ALTER TABLE `sub_area`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `user_level`
--
ALTER TABLE `user_level`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
