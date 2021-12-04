-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Waktu pembuatan: 02 Nov 2021 pada 07.02
-- Versi server: 5.7.24
-- Versi PHP: 7.4.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `klasifikasi`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `nama_admin` varchar(45) DEFAULT NULL,
  `alamat_admin` varchar(45) DEFAULT NULL,
  `no_hp` varchar(14) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `admin`
--

INSERT INTO `admin` (`admin_id`, `username`, `password`, `nama_admin`, `alamat_admin`, `no_hp`) VALUES
(1, 'sujiani', '$2y$10$QAxni3g1UpoXCJxlNDXdIOrqZ0Bj1vCq.Ed76BIcinVHKrKbCOe1a', 'Sujian Jimran', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `kesimpulan`
--

CREATE TABLE `kesimpulan` (
  `id_kesimpulan` int(11) NOT NULL,
  `kesimpulan` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `kesimpulan`
--

INSERT INTO `kesimpulan` (`id_kesimpulan`, `kesimpulan`) VALUES
(1, 'Pertanyaan'),
(2, 'Pernyataan');

-- --------------------------------------------------------

--
-- Struktur dari tabel `mengomentari`
--

CREATE TABLE `mengomentari` (
  `pelanggan_id` int(11) NOT NULL,
  `produk_id` int(11) NOT NULL,
  `komentar` text,
  `kesimpulan_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `mengomentari`
--

INSERT INTO `mengomentari` (`pelanggan_id`, `produk_id`, `komentar`, `kesimpulan_id`) VALUES
(2, 2, 'Barang nya sudah tiba mba?', 1),
(2, 2, 'Berapa ongkos kirimannya?', 1),
(2, 2, 'Berapa lama pengirimannya?', 1),
(27, 2, 'Mba bisa saya tukar barangnnya?', 1),
(2, 2, 'Mba ada potongan harga?', 1),
(2, 2, 'Ada size apa saja bajunya?', 1),
(2, 2, 'Bajunya di kirim lewat apa?', 1),
(27, 2, 'Ada referensinya mba?', 1),
(2, 1, 'Jenis bahan bajunya apa mba?', 1),
(2, 2, 'Tinggi dan berat badan modelnya berapa mba?', 1),
(2, 2, 'Ada no rek bank lainnya?', 1),
(2, 1, 'Warna apa saja yang ada kak?', 1),
(2, 2, 'Berapa harga bajunya mba?', 1),
(2, 2, 'Kapan barang saya diantarkan kak?', 1),
(2, 1, 'Batas transfernya sampai kapan kak?', 1),
(2, 1, 'Baju model ini masih ada kak?', 1),
(27, 1, 'Ongkirnya bisa bayar di tujuan?', 1),
(2, 2, 'Butiknya tutup jam berapa kak?', 1),
(2, 2, 'Bisa kirim gambar aslinya?', 1),
(2, 2, 'Muat berat badan berapa bajunya kak?', 1),
(2, 2, 'Barangnya belum tiba mba', 2),
(2, 2, 'Saya transfer ke rekening kemarin yah', 2),
(2, 1, 'kalau ada stok baru, tolong kabari yah', 2),
(2, 1, 'Saya tidak jadi pesan mbak', 2),
(2, 2, 'Warnanya tidak sesuai', 2),
(2, 1, 'Pesan bajunya 2pcs yah', 2),
(2, 2, 'Ongkirnya saya bayar sekalian yah', 2),
(27, 1, 'Post barang baru dong', 2),
(2, 1, 'Saya mau order lagi', 2),
(2, 2, 'Saya mau datang ambil pesanan', 2),
(2, 1, 'Langsung dikirim yah', 2),
(2, 2, 'Sudah jalan kurirnya', 2),
(2, 2, 'Rencana saya mau ke butik langsung', 2),
(2, 2, 'Saya mau warna lain mbak', 2),
(2, 2, 'Semoga bajunya muat', 2),
(2, 2, 'Bajunya cacat mbak', 2),
(2, 1, 'Saya tidak ada uang cash', 2),
(27, 2, 'Saya mau dikirim hari ini yah', 2),
(2, 1, 'Gamis terbarunya saya suka', 2),
(2, 1, 'Saya hanya mau tanya-tanya', 2),
(2, 2, 'Barang sudah dikirim?', 1),
(2, 2, 'Apa boleh membayar secara COD?', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `pelanggan`
--

CREATE TABLE `pelanggan` (
  `id_pelanggan` int(11) NOT NULL,
  `nama_pelanggan` varchar(45) DEFAULT NULL,
  `alamat_pelanggan` varchar(45) DEFAULT NULL,
  `no_hp` varchar(14) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `pelanggan`
--

INSERT INTO `pelanggan` (`id_pelanggan`, `nama_pelanggan`, `alamat_pelanggan`, `no_hp`) VALUES
(2, 'Arwan Prianto Mangidi', 'Desa Lahotutu, Kecamatan wonggeduku barat', '+6285396252675'),
(27, 'Arwan Prianto Mangidi', 'Desa Lahotutu, Kecamatan wonggeduku barat', '+6285396252677');

-- --------------------------------------------------------

--
-- Struktur dari tabel `produk`
--

CREATE TABLE `produk` (
  `produk_id` int(11) NOT NULL,
  `total` int(11) DEFAULT NULL,
  `produk` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `produk`
--

INSERT INTO `produk` (`produk_id`, `total`, `produk`) VALUES
(1, 20, 'Fitra'),
(2, 2, 'Sepatu');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indeks untuk tabel `kesimpulan`
--
ALTER TABLE `kesimpulan`
  ADD PRIMARY KEY (`id_kesimpulan`);

--
-- Indeks untuk tabel `mengomentari`
--
ALTER TABLE `mengomentari`
  ADD KEY `fk_pelanggan_has_produk_produk1_idx` (`produk_id`),
  ADD KEY `fk_pelanggan_has_produk_pelanggan_idx` (`pelanggan_id`),
  ADD KEY `kesimpulan_id` (`kesimpulan_id`);

--
-- Indeks untuk tabel `pelanggan`
--
ALTER TABLE `pelanggan`
  ADD PRIMARY KEY (`id_pelanggan`);

--
-- Indeks untuk tabel `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`produk_id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `pelanggan`
--
ALTER TABLE `pelanggan`
  MODIFY `id_pelanggan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `mengomentari`
--
ALTER TABLE `mengomentari`
  ADD CONSTRAINT `fk_pelanggan_has_produk_produk1` FOREIGN KEY (`produk_id`) REFERENCES `produk` (`produk_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `mengomentari_ibfk_1` FOREIGN KEY (`pelanggan_id`) REFERENCES `pelanggan` (`id_pelanggan`),
  ADD CONSTRAINT `mengomentari_ibfk_2` FOREIGN KEY (`kesimpulan_id`) REFERENCES `kesimpulan` (`id_kesimpulan`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
