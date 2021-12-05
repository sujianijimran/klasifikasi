-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Waktu pembuatan: 05 Des 2021 pada 14.25
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
  `kesimpulan_id` int(11) DEFAULT NULL,
  `tgl_komentar` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `mengomentari`
--

INSERT INTO `mengomentari` (`pelanggan_id`, `produk_id`, `komentar`, `kesimpulan_id`, `tgl_komentar`) VALUES
(2, 2, 'Barang nya sudah tiba mba?', 1, '2021-12-05 13:47:49'),
(2, 2, 'Berapa ongkos kirimannya?', 1, '2021-12-05 13:47:49'),
(2, 2, 'Berapa lama pengirimannya?', 1, '2021-12-05 13:47:49'),
(1, 2, 'Mba bisa saya tukar barangnnya?', 1, '2021-12-05 13:47:49'),
(2, 2, 'Mba ada potongan harga?', 1, '2021-12-05 13:47:49'),
(2, 2, 'Ada size apa saja bajunya?', 1, '2021-12-05 13:47:49'),
(2, 2, 'Bajunya di kirim lewat apa?', 1, '2021-12-05 13:47:49'),
(1, 2, 'Ada referensinya mba?', 1, '2021-12-05 13:47:49'),
(2, 1, 'Jenis bahan bajunya apa mba?', 1, '2021-12-05 13:47:49'),
(2, 2, 'Tinggi dan berat badan modelnya berapa mba?', 1, '2021-12-05 13:47:49'),
(2, 2, 'Ada no rek bank lainnya?', 1, '2021-12-05 13:47:49'),
(2, 1, 'Warna apa saja yang ada kak?', 1, '2021-12-05 13:47:49'),
(2, 2, 'Berapa harga bajunya mba?', 1, '2021-12-05 13:47:49'),
(2, 2, 'Kapan barang saya diantarkan kak?', 1, '2021-12-05 13:47:49'),
(2, 1, 'Batas transfernya sampai kapan kak?', 1, '2021-12-05 13:47:49'),
(2, 1, 'Baju model ini masih ada kak?', 1, '2021-12-05 13:47:49'),
(1, 1, 'Ongkirnya bisa bayar di tujuan?', 1, '2021-12-05 13:47:49'),
(2, 2, 'Butiknya tutup jam berapa kak?', 1, '2021-12-05 13:47:49'),
(2, 2, 'Bisa kirim gambar aslinya?', 1, '2021-12-05 13:47:49'),
(2, 2, 'Muat berat badan berapa bajunya kak?', 1, '2021-12-05 13:47:49'),
(2, 2, 'Barangnya belum tiba mba', 2, '2021-12-05 13:47:49'),
(2, 2, 'Saya transfer ke rekening kemarin yah', 2, '2021-12-05 13:47:49'),
(2, 1, 'kalau ada stok baru, tolong kabari yah', 2, '2021-12-05 13:47:49'),
(2, 1, 'Saya tidak jadi pesan mbak', 2, '2021-12-05 13:47:49'),
(2, 2, 'Warnanya tidak sesuai', 2, '2021-12-05 13:47:49'),
(2, 1, 'Pesan bajunya 2pcs yah', 2, '2021-12-05 13:47:49'),
(2, 2, 'Ongkirnya saya bayar sekalian yah', 2, '2021-12-05 13:47:49'),
(1, 1, 'Post barang baru dong', 2, '2021-12-05 13:47:49'),
(2, 1, 'Saya mau order lagi', 2, '2021-12-05 13:47:49'),
(2, 2, 'Saya mau datang ambil pesanan', 2, '2021-12-05 13:47:49'),
(4, 1, 'Langsung dikirim yah', 2, '2021-12-05 13:47:49'),
(2, 2, 'Sudah jalan kurirnya', 2, '2021-12-05 13:47:49'),
(2, 2, 'Rencana saya mau ke butik langsung', 2, '2021-12-05 13:47:49'),
(3, 2, 'Saya mau warna lain mbak', 2, '2021-12-05 13:47:49'),
(2, 2, 'Semoga bajunya muat', 2, '2021-12-05 13:47:49'),
(2, 2, 'Bajunya cacat mbak', 2, '2021-12-05 13:47:49'),
(2, 1, 'Saya tidak ada uang cash', 2, '2021-12-05 13:47:49'),
(1, 2, 'Saya mau dikirim hari ini yah', 2, '2021-12-05 13:47:49'),
(2, 1, 'Gamis terbarunya saya suka', 2, '2021-12-05 13:47:49'),
(3, 1, 'Saya hanya mau tanya-tanya', 2, '2021-12-05 13:47:49'),
(2, 2, 'Barang sudah dikirim?', 1, '2021-12-05 13:47:49'),
(1, 2, 'Apa boleh membayar secara COD?', 1, '2021-12-05 13:47:49'),
(2, 3, 'Size kecilnya ada?', 1, '2021-12-05 14:25:18'),
(2, 3, 'Kalau size besarnya muat bb berapa?', 1, '2021-12-05 14:25:18'),
(2, 4, 'Saya mau warna putihnya, ada?', 1, '2021-12-05 14:25:18'),
(2, 4, 'Bisa saya coba dulu di butik?', 1, '2021-12-05 14:25:18'),
(2, 5, 'Warna hitam sudah restock say?', 1, '2021-12-05 14:25:18'),
(2, 5, 'Putihnya menerawang atau tidak?', 1, '2021-12-05 14:25:18'),
(2, 6, 'Yang polos saja depannya ada say?', 1, '2021-12-05 14:25:18'),
(2, 6, 'Muat bb 60 kah ini?', 1, '2021-12-05 14:25:18'),
(2, 7, 'Celananya model bagaimana say?', 1, '2021-12-05 14:25:18'),
(2, 7, 'Ada model lainnya ini sis?', 1, '2021-12-05 14:25:18'),
(2, 8, 'Butiknya di andonohu bagian mana sis?', 1, '2021-12-05 14:25:18'),
(2, 8, 'Saya mau cek dulu bahannya langsung, boleh?', 1, '2021-12-05 14:25:18'),
(2, 9, 'Bisakah di tukar kalau nda muat?', 1, '2021-12-05 14:25:18'),
(2, 9, 'Bisa fotokan lebih detail lagi say?', 1, '2021-12-05 14:25:18'),
(2, 10, 'Ada berapa pcs stoknya ini say?', 1, '2021-12-05 14:25:18'),
(2, 10, 'Saya mau pesan banyak untuk pesta, bisa kak?', 1, '2021-12-05 14:25:18'),
(2, 3, 'Ada yang cocok di pakai ke pantai?', 1, '2021-12-05 14:25:18'),
(2, 4, 'Bisa liat pilihan warnanya say?', 1, '2021-12-05 14:25:18'),
(2, 5, 'Nda bisakah di bayar dulu tapi jangan di antar langsung?', 1, '2021-12-05 14:25:18'),
(2, 6, 'Yang saya keep kemarin masih adaji?', 1, '2021-12-05 14:25:18'),
(2, 7, 'Bisakah di keep dulu?', 1, '2021-12-05 14:25:18'),
(2, 8, 'Size besarnya saja bisa kah sa liat?', 1, '2021-12-05 14:25:18'),
(2, 9, 'Mba, kapan masuk barang baru?', 1, '2021-12-05 14:25:18'),
(2, 10, 'Say, ada kita jual kaftan simple?', 1, '2021-12-05 14:25:18'),
(2, 10, 'Sis ini dapat potongan harga juga?', 1, '2021-12-05 14:25:18'),
(2, 9, 'Sampai kapan promonya berlaku?', 1, '2021-12-05 14:25:18'),
(2, 9, 'Harus langsung bayarkah ini sis?', 1, '2021-12-05 14:25:18'),
(2, 8, 'Bisa kirim gambarnya yang warna lain?', 1, '2021-12-05 14:25:18'),
(2, 8, 'Kalau anak kecil muatkah ini?', 1, '2021-12-05 14:25:18'),
(2, 7, 'Ada berapa pcs ini warna dustynya?', 1, '2021-12-05 14:25:18'),
(2, 7, 'Bisa saya dp dulu?', 1, '2021-12-05 14:25:18'),
(2, 6, 'Bisa kurirkan pakai maxim saja?', 1, '2021-12-05 14:25:18'),
(2, 6, 'Kalau mau di tukar bisa ji toh?', 1, '2021-12-05 14:25:18'),
(2, 5, 'Itu beltnya bisa dilepas kah?', 1, '2021-12-05 14:25:18'),
(2, 5, 'Kalau realpictnya boleh liat?', 1, '2021-12-05 14:25:18'),
(2, 4, 'Harganya cocokmi ini say?', 1, '2021-12-05 14:25:18'),
(2, 4, 'Bisakah kita pakai baru fotokan?', 1, '2021-12-05 14:25:18'),
(2, 3, 'Sis, bisa di bungkus pakai paper bag?', 1, '2021-12-05 14:25:18'),
(2, 3, 'Nda dapat diskon kah say?', 1, '2021-12-05 14:25:18'),
(2, 2, 'Minimal pembelian berapakah?', 1, '2021-12-05 14:25:18'),
(2, 2, 'Motif apa itu say?', 1, '2021-12-05 14:25:18'),
(2, 1, 'Yang bagaimana itu warna mauve?', 1, '2021-12-05 14:25:18'),
(2, 1, 'Habismi ini barangnya say?', 1, '2021-12-05 14:25:18'),
(2, 3, 'Saya mau tambah keepanku bisaji?', 1, '2021-12-05 14:25:18'),
(2, 6, 'Butiknya buka jam berapa biasanya sissy?', 1, '2021-12-05 14:25:18'),
(2, 8, 'Bajunya bisa di antar besok pagi?', 1, '2021-12-05 14:25:18'),
(2, 10, 'Say, apa syaratnya kalau mau jadi reseller?', 1, '2021-12-05 14:25:18'),
(2, 3, 'Sissy nda ada shopeenya?', 1, '2021-12-05 14:25:18'),
(2, 5, 'Bisakah datang langsung ke butik?', 1, '2021-12-05 14:25:18'),
(2, 7, 'Promonya hanya berlaku untuk offline?', 1, '2021-12-05 14:25:18'),
(2, 9, 'Masih ada warna yang kemarin sa tanya?', 1, '2021-12-05 14:25:18'),
(2, 9, 'Bisakah di kirim lewat kantor pos?', 1, '2021-12-05 14:25:18'),
(2, 4, 'Ini muatkah untuk bumil?', 1, '2021-12-05 14:25:18'),
(2, 6, 'Yang kayak bagaimana bahannya ini?', 1, '2021-12-05 14:25:18'),
(2, 8, 'Kalau COD via kurir bisa?', 1, '2021-12-05 14:25:18'),
(2, 1, 'Bisakah sebentar sore saja saya tf say?', 1, '2021-12-05 14:25:18'),
(2, 1, 'Kalau saya dp dulu nanti minggu depan saya ambil bisakah?', 1, '2021-12-05 14:25:18'),
(2, 2, 'Busui friendly ji ini toh sis?', 1, '2021-12-05 14:25:18'),
(2, 7, 'Minta nomor WA nya boleh say?', 1, '2021-12-05 14:25:18'),
(2, 7, 'Bisa minta format ordernya say?', 1, '2021-12-05 14:25:18'),
(2, 6, 'Say, bisa liat lagi tadi gambarnya?', 1, '2021-12-05 14:25:18'),
(2, 9, ' Tidak luntur ji itu sis?', 1, '2021-12-05 14:25:18'),
(2, 10, 'Kapankah masuk barang baruta?', 1, '2021-12-05 14:25:18'),
(2, 5, 'Sis, kalau COD luar kota bisa?', 1, '2021-12-05 14:25:18'),
(2, 6, 'Pengiriman luar kota pakai ekspedisi apa sis?', 1, '2021-12-05 14:25:18'),
(2, 10, 'Kalau pakai ke pesta ini cocok kah?', 1, '2021-12-05 14:25:18'),
(2, 9, 'Ini satu set dengan bawahannya kah?', 1, '2021-12-05 14:25:18'),
(2, 7, 'Bisa beli atasannya saja sis?', 1, '2021-12-05 14:25:18'),
(2, 5, 'Tinggi modelnya berapa sis?', 1, '2021-12-05 14:25:18'),
(2, 1, 'Cocokmi panjang gamisnya ini kak?', 1, '2021-12-05 14:25:18'),
(2, 1, 'Adami say barangnya.', 2, '2021-12-05 14:25:18'),
(2, 2, 'Restock secepatnya nah.', 2, '2021-12-05 14:25:18'),
(2, 3, 'Terlambat liat storynya akhirnya kehabisan.', 2, '2021-12-05 14:25:18'),
(2, 4, 'Kasitau saja kurirnya telpon kalau sudah sampai.', 2, '2021-12-05 14:25:18'),
(2, 5, 'Bagusji say.', 2, '2021-12-05 14:25:18'),
(2, 6, 'Cocokji say, cuma kebesaran.', 2, '2021-12-05 14:25:18'),
(2, 7, 'Say, terbuka jahitannya saya mau tukar.', 2, '2021-12-05 14:25:18'),
(2, 8, 'Saya keep memang dulu sis.', 2, '2021-12-05 14:25:18'),
(2, 9, 'Saya transfer mi nah.', 2, '2021-12-05 14:25:18'),
(2, 10, 'Nanti saya kesitu biar bisa pas langsung.', 2, '2021-12-05 14:25:18'),
(2, 1, 'Pengirimannya pakai JNT saja.', 2, '2021-12-05 14:25:18'),
(2, 2, 'Saya mau liat model lain saja.', 2, '2021-12-05 14:25:18'),
(2, 3, 'Padahal cantiknya, cepat sekali sold out.', 2, '2021-12-05 14:25:18'),
(2, 4, 'Bagus bahannya, motifnya tidak pasaran.', 2, '2021-12-05 14:25:18'),
(2, 5, 'Say, saya ambil sendiri saja nah.', 2, '2021-12-05 14:25:18'),
(2, 6, 'Saya mau kesitumi sis.', 2, '2021-12-05 14:25:18'),
(2, 7, 'Simpankan ini nah, saya transfer sekarang.', 2, '2021-12-05 14:25:18'),
(2, 8, 'Saya datang saja dulu liat yang lain.', 2, '2021-12-05 14:25:18'),
(2, 9, 'Bagus sekali bajunya.', 2, '2021-12-05 14:25:18'),
(2, 10, 'Saya mau order kembali.', 2, '2021-12-05 14:25:18'),
(2, 1, 'Simpankanmi dulu nanti saya kesitu ambil.', 2, '2021-12-05 14:25:18'),
(2, 2, 'Yang warna terang saja say.', 2, '2021-12-05 14:25:18'),
(2, 3, 'Saya bayar stengah saja dulu sissy.', 2, '2021-12-05 14:25:18'),
(2, 4, 'Butikta jauh dari rumahku say.', 2, '2021-12-05 14:25:18'),
(2, 5, 'Yang model terbaru saya mau sissy.', 2, '2021-12-05 14:25:18'),
(2, 6, 'Saya dijalanmi.', 2, '2021-12-05 14:25:18'),
(2, 7, 'Sudah dekatmi sis.', 2, '2021-12-05 14:25:18'),
(2, 8, 'Saya sudah di depan butik kak.', 2, '2021-12-05 14:25:18'),
(2, 9, 'Bajunya tidak muat say.', 2, '2021-12-05 14:25:18'),
(2, 10, 'Kasih diskon pi say.', 2, '2021-12-05 14:25:18'),
(2, 1, 'Sis, bukan ini yang saya pesan.', 2, '2021-12-05 14:25:18'),
(2, 2, 'Kita salah kasih warna baju kak.', 2, '2021-12-05 14:25:18'),
(2, 3, 'Kak, tertukar barangnya.', 2, '2021-12-05 14:25:18'),
(2, 4, 'Sissy restock pi lagi yang model ini.', 2, '2021-12-05 14:25:18'),
(2, 5, 'Sudah habismi lagi ini astaga.', 2, '2021-12-05 14:25:18'),
(2, 6, 'Jangan dulu kita close sissy.', 2, '2021-12-05 14:25:18'),
(2, 7, 'Sudahmi sy tf ke rek BCA sis.', 2, '2021-12-05 14:25:18'),
(2, 8, 'Saya diluar butik sis.', 2, '2021-12-05 14:25:18'),
(2, 9, 'Saya yang ini nah, sy tf sekarang.', 2, '2021-12-05 14:25:18'),
(2, 10, 'Cantiknyami ini kak.', 2, '2021-12-05 14:25:18'),
(2, 1, 'Lucu modelnya.', 2, '2021-12-05 14:25:18'),
(2, 2, 'Mba, keep yang ini yah.', 2, '2021-12-05 14:25:18'),
(2, 3, 'Sayapi ini.', 2, '2021-12-05 14:25:18'),
(2, 4, 'Saya order yang ini, antar sekarang.', 2, '2021-12-05 14:25:18'),
(2, 5, 'Mau isi format order dulu kak.', 2, '2021-12-05 14:25:18'),
(2, 6, 'Format ordernya belum ada kak.', 2, '2021-12-05 14:25:18'),
(2, 7, 'Saya sudah isi format itu hari sis.', 2, '2021-12-05 14:25:18'),
(2, 8, 'Nomorku masih samaji sissy.', 2, '2021-12-05 14:25:18'),
(2, 9, 'Alamat yang kemarin saja mba.', 2, '2021-12-05 14:25:18'),
(2, 10, 'Kak adakan pi lagi promo.', 2, '2021-12-05 14:25:18'),
(2, 1, 'Saya tunggu saja barang baru kalau begitu.', 2, '2021-12-05 14:25:18'),
(2, 2, 'Saya mau model yang simple saja.', 2, '2021-12-05 14:25:18'),
(2, 3, 'Saya ganti tadi dengan yang ini saja sis.', 2, '2021-12-05 14:25:18'),
(2, 4, 'Saya masih diluar kota say.', 2, '2021-12-05 14:25:18'),
(2, 5, 'Tidak ada orang dirumah sis.', 2, '2021-12-05 14:25:18'),
(2, 6, 'Suruh kurirnya masuk kedalam saja kak.', 2, '2021-12-05 14:25:18'),
(2, 7, 'Bukan ini yang saya keep tadi kak.', 2, '2021-12-05 14:25:18'),
(2, 8, 'Beda sekali warnanya ini sissy.', 2, '2021-12-05 14:25:18'),
(2, 9, 'Sebentarpi kita kurir sis.', 2, '2021-12-05 14:25:18'),
(2, 10, 'Kurirkanmi kak barangku.', 2, '2021-12-05 14:25:18'),
(2, 1, 'Totalkanmi semuanya sis.', 2, '2021-12-05 14:25:18'),
(2, 2, 'Telpon saja di nomor yang saya kasih kak.', 2, '2021-12-05 14:25:18'),
(2, 3, 'Belum sampai kurirnya daritadi kak.', 2, '2021-12-05 14:25:18'),
(2, 4, 'Daritadimi saya tunggu kak.', 2, '2021-12-05 14:25:18'),
(2, 5, 'Saya dirumahmi kak.', 2, '2021-12-05 14:25:18'),
(2, 6, 'Saya sudah dari tokomi tadi kak.', 2, '2021-12-05 14:25:18'),
(2, 7, 'Saya nda suka modelnya, tukar saja dengan yang lain.', 2, '2021-12-05 14:25:18'),
(2, 8, 'Nanti kurirku yang datang kesitu ambil sis.', 2, '2021-12-05 14:25:18'),
(2, 9, 'Saya bayar di toko saja langsung kak.', 2, '2021-12-05 14:25:18'),
(2, 10, 'Saya suka sekali bajunya sis.', 2, '2021-12-05 14:25:18');

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
(1, 'Sujiani', 'Desa Lahotutu, Kecamatan wonggeduku barat', '+6285396252675'),
(2, 'Nur Fitriani', 'Desa Lahotutu, Kecamatan wonggeduku barat', '+6285396252674'),
(3, 'Afifa Andriani', 'Desa Lahotutu, Kecamatan wonggeduku barat', '+6285396252475'),
(4, 'Destri Angraeni', 'Desa Lahotutu, Kecamatan wonggeduku barat', '+6285396256677'),
(5, 'Fitra', 'Desa Lahotutu, Kecamatan wonggeduku barat', '+6285397252675'),
(6, 'Arwan Prianto Mangidi', 'Desa Lahotutu, Kecamatan wonggeduku barat', '+6285398252677'),
(7, 'Jevi Alvenosa', 'Desa Lahotutu, Kecamatan wonggeduku barat', '+6285396252975'),
(8, 'Muhammad Zohri', 'Desa Lahotutu, Kecamatan wonggeduku barat', '+6285396254677'),
(9, 'Arwan Prianto Mangidi', 'Desa Lahotutu, Kecamatan wonggeduku barat', '+6285376252675'),
(10, 'Wahid Syafri Jayanto', 'Desa Lahotutu, Kecamatan wonggeduku barat', '+6285336252677');

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
(1, 20, 'Daster'),
(2, 2, 'Sepatu'),
(3, 10, 'Wrey'),
(4, 5, 'crinkle yumy set'),
(5, 9, 'Lemo'),
(6, 14, 'Auriem'),
(7, 25, 'Scuba kiy set'),
(8, 12, 'Strip hola long dress'),
(9, 10, 'Lola'),
(10, 16, 'Lisy skirt');

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
