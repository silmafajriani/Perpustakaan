-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 14 Apr 2022 pada 07.12
-- Versi server: 10.4.22-MariaDB
-- Versi PHP: 7.4.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `perpustakaan_silma`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tabel_anggota`
--

CREATE TABLE `tabel_anggota` (
  `id_anggota` int(5) NOT NULL,
  `nama_anggota` varchar(50) NOT NULL,
  `jenis_kelamin` varchar(15) NOT NULL,
  `alamat` text NOT NULL,
  `no_hp` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tabel_anggota`
--

INSERT INTO `tabel_anggota` (`id_anggota`, `nama_anggota`, `jenis_kelamin`, `alamat`, `no_hp`) VALUES
(1, 'Silma', 'perempuan', 'tasikmalaya', '087654322215');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tabel_buku`
--

CREATE TABLE `tabel_buku` (
  `id_buku` int(7) NOT NULL,
  `isbn` varchar(30) NOT NULL,
  `nama_buku` varchar(50) NOT NULL,
  `penulis` varchar(50) NOT NULL,
  `penerbit` varchar(50) NOT NULL,
  `tahun_terbit` year(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tabel_buku`
--

INSERT INTO `tabel_buku` (`id_buku`, `isbn`, `nama_buku`, `penulis`, `penerbit`, `tahun_terbit`) VALUES
(22334, '978602873919', 'si kancil yang bijak', 'Endyas Wiguna ', 'Bintang Indonesia', 2010);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tabel_pegawai`
--

CREATE TABLE `tabel_pegawai` (
  `id_pegawai` int(5) NOT NULL,
  `nama_pegawai` varchar(50) NOT NULL,
  `jenis_kelamin` enum('laki-laki','perempuan') NOT NULL,
  `alamat` text NOT NULL,
  `no_hp` varchar(20) NOT NULL,
  `jabatan` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tabel_pegawai`
--

INSERT INTO `tabel_pegawai` (`id_pegawai`, `nama_pegawai`, `jenis_kelamin`, `alamat`, `no_hp`, `jabatan`) VALUES
(1, 'silma fajriani', 'perempuan', 'tasikmalaya', '08765432222544', 'admin');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tabel_transaksi`
--

CREATE TABLE `tabel_transaksi` (
  `id_transaksi` int(5) NOT NULL,
  `tanggal_transaksi` date NOT NULL,
  `id_anggota` int(5) NOT NULL,
  `id_pegawai` int(5) NOT NULL,
  `id_buku` int(7) NOT NULL,
  `quantity` int(2) NOT NULL,
  `jenis_transaksi` enum('pinjam','kembali') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tabel_transaksi`
--

INSERT INTO `tabel_transaksi` (`id_transaksi`, `tanggal_transaksi`, `id_anggota`, `id_pegawai`, `id_buku`, `quantity`, `jenis_transaksi`) VALUES
(1, '2022-04-18', 1, 1, 22334, 1, 'pinjam');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tabel_user`
--

CREATE TABLE `tabel_user` (
  `id_user` int(5) NOT NULL,
  `id_pegawai` int(5) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `level` int(1) NOT NULL,
  `dibuatpada` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tabel_user`
--

INSERT INTO `tabel_user` (`id_user`, `id_pegawai`, `username`, `password`, `level`, `dibuatpada`) VALUES
(1, 1, 'admin', 'admin', 1, '2022-04-11');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tabel_anggota`
--
ALTER TABLE `tabel_anggota`
  ADD PRIMARY KEY (`id_anggota`);

--
-- Indeks untuk tabel `tabel_buku`
--
ALTER TABLE `tabel_buku`
  ADD PRIMARY KEY (`id_buku`);

--
-- Indeks untuk tabel `tabel_pegawai`
--
ALTER TABLE `tabel_pegawai`
  ADD PRIMARY KEY (`id_pegawai`);

--
-- Indeks untuk tabel `tabel_transaksi`
--
ALTER TABLE `tabel_transaksi`
  ADD PRIMARY KEY (`id_transaksi`);

--
-- Indeks untuk tabel `tabel_user`
--
ALTER TABLE `tabel_user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tabel_anggota`
--
ALTER TABLE `tabel_anggota`
  MODIFY `id_anggota` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT untuk tabel `tabel_buku`
--
ALTER TABLE `tabel_buku`
  MODIFY `id_buku` int(7) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22335;

--
-- AUTO_INCREMENT untuk tabel `tabel_pegawai`
--
ALTER TABLE `tabel_pegawai`
  MODIFY `id_pegawai` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `tabel_transaksi`
--
ALTER TABLE `tabel_transaksi`
  MODIFY `id_transaksi` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `tabel_user`
--
ALTER TABLE `tabel_user`
  MODIFY `id_user` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
