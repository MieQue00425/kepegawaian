-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 09 Feb 2025 pada 17.42
-- Versi server: 10.4.11-MariaDB
-- Versi PHP: 7.4.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mysql_if11_kepegawaian`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `absen`
--

CREATE TABLE `absen` (
  `id_absen` int(11) NOT NULL,
  `id_pegawai` int(100) NOT NULL,
  `hadir` int(100) NOT NULL,
  `izin` int(100) NOT NULL,
  `tidak_hadir` int(100) NOT NULL,
  `bulan` int(100) NOT NULL,
  `tanggal` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `absen`
--

INSERT INTO `absen` (`id_absen`, `id_pegawai`, `hadir`, `izin`, `tidak_hadir`, `bulan`, `tanggal`) VALUES
(15, 9, 30, 0, 0, 1, '2025-02-09'),
(16, 9, 30, 0, 0, 3, '2025-02-09'),
(17, 9, 30, 1, 0, 4, '2025-02-09'),
(18, 9, 29, 1, 1, 5, '2025-02-09'),
(19, 9, 29, 1, 1, 7, '2025-02-09'),
(20, 9, 29, 1, 1, 8, '2025-02-09'),
(21, 9, 29, 1, 1, 9, '2025-02-09'),
(22, 9, 29, 1, 1, 10, '2025-02-09'),
(23, 9, 29, 1, 1, 11, '2025-02-09'),
(24, 9, 29, 1, 1, 12, '2025-02-09'),
(25, 12, 10, 10, 10, 1, '2025-02-09');

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin`
--

CREATE TABLE `admin` (
  `id_admin` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `level` varchar(100) NOT NULL,
  `log` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `admin`
--

INSERT INTO `admin` (`id_admin`, `username`, `password`, `nama`, `level`, `log`) VALUES
(2, 'admin', '21232f297a57a5a743894a0e4a801fc3', 'admin', 'admin', '2018-03-30 02:51:21'),
(3, 'user', 'ee11cbb19052e40b07aac0ca060c23ee', 'User', 'user', '2018-04-02 18:27:39'),
(5, 'mie', '202cb962ac59075b964b07152d234b70', 'ami', 'admin', '2025-02-04 03:42:29');

-- --------------------------------------------------------

--
-- Struktur dari tabel `jabatan`
--

CREATE TABLE `jabatan` (
  `id_jabatan` int(11) NOT NULL,
  `nama_jabatan` varchar(100) NOT NULL,
  `golongan` varchar(100) NOT NULL,
  `tunjangan` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `jabatan`
--

INSERT INTO `jabatan` (`id_jabatan`, `nama_jabatan`, `golongan`, `tunjangan`) VALUES
(5, 'Frontend Developer', 'Junior', 2500000),
(6, 'Backend Developer', 'Junior', 2800000),
(7, 'Database Admin', 'Senior', 5700000),
(8, 'Frontend Developer', 'Middle', 5200000),
(9, 'Backend Developer', 'Middle', 5500000),
(10, 'Frontend Developer', 'Senior', 8550000),
(11, 'Backend Developer', 'Senior', 9325700),
(12, 'Staff IT', 'Senior', 3500000),
(13, 'General Manager', '-', 12750000),
(14, 'Network Engineer', 'Senior', 8500000),
(15, 'Admin Server', 'Senior', 8750000),
(16, 'Graphic Designer', 'Senior', 7500000),
(17, 'Graphic Designer', 'Junior', 2200000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `pegawai`
--

CREATE TABLE `pegawai` (
  `id_pegawai` int(11) NOT NULL,
  `id_jabatan` int(110) NOT NULL,
  `nip` varchar(100) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `jk` varchar(100) NOT NULL,
  `foto` varchar(100) NOT NULL,
  `agama` varchar(100) NOT NULL,
  `pendidikan` varchar(100) NOT NULL,
  `status_kep` varchar(100) NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pegawai`
--

INSERT INTO `pegawai` (`id_pegawai`, `id_jabatan`, `nip`, `nama`, `jk`, `foto`, `agama`, `pendidikan`, `status_kep`, `alamat`, `username`, `password`) VALUES
(9, 14, '102', 'rama anata wijaya', 'L', 'foto_1738651902.png', 'islam', 'S1 UNIKOM', 'Tetap', 'Cianjur', 'ramae', '827ccb0eea8a706c4c34a16891f84e7b'),
(10, 15, '103', 'Hatsune Miku', 'L', 'foto_1589668962.jpg', 'islam', 'S1 UNIKOM', 'Tetap', 'Tokyo, Japan', 'miku2255', '827ccb0eea8a706c4c34a16891f84e7b'),
(11, 17, '104', 'Kizuna Ai', 'L', 'foto_1589669245.jpg', 'islam', 'S1 UNIKOM', 'Magang', 'Sapporo, Japan', 'kizunaai_', '827ccb0eea8a706c4c34a16891f84e7b'),
(12, 7, '101', 'Fahmi maulanae', 'L', 'foto_1738651853.png', 'islam', 'S1 UNIKOM', 'TETAP', 'bandung', 'queque', '202cb962ac59075b964b07152d234b70');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tpp`
--

CREATE TABLE `tpp` (
  `id_tpp` int(11) NOT NULL,
  `id_pegawai` int(110) NOT NULL,
  `jumlah_tpp` varchar(100) NOT NULL,
  `jumlah_potongan` varchar(100) NOT NULL,
  `bulan_t` int(100) NOT NULL,
  `tahun` int(100) NOT NULL,
  `tgl` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tpp`
--

INSERT INTO `tpp` (`id_tpp`, `id_pegawai`, `jumlah_tpp`, `jumlah_potongan`, `bulan_t`, `tahun`, `tgl`) VALUES
(12, 9, '8499970', '30%', 1, 2025, '2025-02-09'),
(13, 9, '8499970', '30%', 3, 2025, '2025-02-09'),
(14, 9, '8499970', '30%', 4, 2025, '2025-02-09'),
(15, 9, '8499970', '30%', 5, 2025, '2025-02-09'),
(16, 9, '8499970', '30%', 7, 2025, '2025-02-09'),
(17, 9, '8499970', '30%', 8, 2025, '2025-02-09'),
(18, 9, '8499970', '30%', 9, 2025, '2025-02-09'),
(19, 9, '8499970', '30%', 10, 2025, '2025-02-09'),
(20, 9, '8499970', '30%', 11, 2025, '2025-02-09'),
(21, 9, '8499970', '30%', 12, 2025, '2025-02-09'),
(22, 12, '5699970', '30%', 1, 2025, '2025-02-09');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `absen`
--
ALTER TABLE `absen`
  ADD PRIMARY KEY (`id_absen`),
  ADD KEY `fk_absen_pegawai` (`id_pegawai`);

--
-- Indeks untuk tabel `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indeks untuk tabel `jabatan`
--
ALTER TABLE `jabatan`
  ADD PRIMARY KEY (`id_jabatan`);

--
-- Indeks untuk tabel `pegawai`
--
ALTER TABLE `pegawai`
  ADD PRIMARY KEY (`id_pegawai`),
  ADD KEY `fk_pegawai_jabatan_new` (`id_jabatan`);

--
-- Indeks untuk tabel `tpp`
--
ALTER TABLE `tpp`
  ADD PRIMARY KEY (`id_tpp`),
  ADD KEY `fk_tpp_pegawai` (`id_pegawai`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `absen`
--
ALTER TABLE `absen`
  MODIFY `id_absen` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT untuk tabel `admin`
--
ALTER TABLE `admin`
  MODIFY `id_admin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `jabatan`
--
ALTER TABLE `jabatan`
  MODIFY `id_jabatan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT untuk tabel `pegawai`
--
ALTER TABLE `pegawai`
  MODIFY `id_pegawai` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT untuk tabel `tpp`
--
ALTER TABLE `tpp`
  MODIFY `id_tpp` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `absen`
--
ALTER TABLE `absen`
  ADD CONSTRAINT `fk_absen_pegawai` FOREIGN KEY (`id_pegawai`) REFERENCES `pegawai` (`id_pegawai`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `pegawai`
--
ALTER TABLE `pegawai`
  ADD CONSTRAINT `fk_pegawai_jabatan_new` FOREIGN KEY (`id_jabatan`) REFERENCES `jabatan` (`id_jabatan`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `tpp`
--
ALTER TABLE `tpp`
  ADD CONSTRAINT `fk_tpp_pegawai` FOREIGN KEY (`id_pegawai`) REFERENCES `pegawai` (`id_pegawai`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
