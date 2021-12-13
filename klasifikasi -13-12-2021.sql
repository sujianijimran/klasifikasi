-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Waktu pembuatan: 13 Des 2021 pada 13.12
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
  `nama_admin` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `admin`
--

INSERT INTO `admin` (`admin_id`, `username`, `password`, `nama_admin`) VALUES
(1, 'sujiani', '$2y$10$QAxni3g1UpoXCJxlNDXdIOrqZ0Bj1vCq.Ed76BIcinVHKrKbCOe1a', 'Sujian Jimran');

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
  `id_komentar` int(11) NOT NULL,
  `pelanggan_id` int(11) NOT NULL,
  `produk_id` int(11) NOT NULL,
  `komentar` text,
  `kesimpulan_id` int(11) DEFAULT NULL,
  `tgl_komentar` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `mengomentari`
--

INSERT INTO `mengomentari` (`id_komentar`, `pelanggan_id`, `produk_id`, `komentar`, `kesimpulan_id`, `tgl_komentar`) VALUES
(1, 2, 2, 'Barang nya sudah tiba mba?', 1, '2021-12-05 13:47:49'),
(2, 2, 2, 'Berapa ongkos kirimannya?', 1, '2021-12-05 13:47:49'),
(3, 2, 2, 'Berapa lama pengirimannya?', 1, '2021-12-05 13:47:49'),
(4, 1, 2, 'Mba bisa saya tukar barangnnya?', 1, '2021-12-05 13:47:49'),
(5, 2, 2, 'Mba ada potongan harga?', 1, '2021-12-05 13:47:49'),
(6, 2, 2, 'Ada size apa saja bajunya?', 1, '2021-12-05 13:47:49'),
(7, 2, 2, 'Bajunya di kirim lewat apa?', 1, '2021-12-05 13:47:49'),
(8, 1, 2, 'Ada referensinya mba?', 1, '2021-12-05 13:47:49'),
(9, 2, 1, 'Jenis bahan bajunya apa mba?', 1, '2021-12-05 13:47:49'),
(10, 2, 2, 'Tinggi dan berat badan modelnya berapa mba?', 1, '2021-12-05 13:47:49'),
(11, 2, 2, 'Ada no rek bank lainnya?', 1, '2021-12-05 13:47:49'),
(12, 2, 1, 'Warna apa saja yang ada kak?', 1, '2021-12-05 13:47:49'),
(13, 2, 2, 'Berapa harga bajunya mba?', 1, '2021-12-05 13:47:49'),
(14, 2, 2, 'Kapan barang saya diantarkan kak?', 1, '2021-12-05 13:47:49'),
(15, 2, 1, 'Batas transfernya sampai kapan kak?', 1, '2021-12-05 13:47:49'),
(16, 2, 1, 'Baju model ini masih ada kak?', 1, '2021-12-05 13:47:49'),
(17, 1, 1, 'Ongkirnya bisa bayar di tujuan?', 1, '2021-12-05 13:47:49'),
(18, 2, 2, 'Butiknya tutup jam berapa kak?', 1, '2021-12-05 13:47:49'),
(19, 2, 2, 'Bisa kirim gambar aslinya?', 1, '2021-12-05 13:47:49'),
(20, 2, 2, 'Muat berat badan berapa bajunya kak?', 1, '2021-12-05 13:47:49'),
(21, 2, 2, 'Barangnya belum tiba mba', 2, '2021-12-05 13:47:49'),
(22, 2, 2, 'Saya transfer ke rekening kemarin yah', 2, '2021-12-05 13:47:49'),
(23, 2, 1, 'kalau ada stok baru, tolong kabari yah', 2, '2021-12-05 13:47:49'),
(24, 2, 1, 'Saya tidak jadi pesan mbak', 2, '2021-12-05 13:47:49'),
(25, 2, 2, 'Warnanya tidak sesuai', 2, '2021-12-05 13:47:49'),
(26, 2, 1, 'Pesan bajunya 2pcs yah', 2, '2021-12-05 13:47:49'),
(27, 2, 2, 'Ongkirnya saya bayar sekalian yah', 2, '2021-12-05 13:47:49'),
(28, 1, 1, 'Post barang baru dong', 2, '2021-12-05 13:47:49'),
(29, 2, 1, 'Saya mau order lagi', 2, '2021-12-05 13:47:49'),
(30, 2, 2, 'Saya mau datang ambil pesanan', 2, '2021-12-05 13:47:49'),
(31, 4, 1, 'Langsung dikirim yah', 2, '2021-12-05 13:47:49'),
(32, 2, 2, 'Sudah jalan kurirnya', 2, '2021-12-05 13:47:49'),
(33, 2, 2, 'Rencana saya mau ke butik langsung', 2, '2021-12-05 13:47:49'),
(34, 3, 2, 'Saya mau warna lain mbak', 2, '2021-12-05 13:47:49'),
(35, 2, 2, 'Semoga bajunya muat', 2, '2021-12-05 13:47:49'),
(36, 2, 2, 'Bajunya cacat mbak', 2, '2021-12-05 13:47:49'),
(37, 2, 1, 'Saya tidak ada uang cash', 2, '2021-12-05 13:47:49'),
(38, 1, 2, 'Saya mau dikirim hari ini yah', 2, '2021-12-05 13:47:49'),
(39, 2, 1, 'Gamis terbarunya saya suka', 2, '2021-12-05 13:47:49'),
(40, 3, 1, 'Saya hanya mau tanya-tanya', 2, '2021-12-05 13:47:49'),
(41, 2, 2, 'Barang sudah dikirim?', 1, '2021-12-05 13:47:49'),
(42, 1, 2, 'Apa boleh membayar secara COD?', 1, '2021-12-05 13:47:49'),
(43, 2, 3, 'Size kecilnya ada?', 1, '2021-12-05 14:25:18'),
(44, 2, 3, 'Kalau size besarnya muat bb berapa?', 1, '2021-12-05 14:25:18'),
(45, 2, 4, 'Saya mau warna putihnya, ada?', 1, '2021-12-05 14:25:18'),
(46, 2, 4, 'Bisa saya coba dulu di butik?', 1, '2021-12-05 14:25:18'),
(47, 2, 5, 'Warna hitam sudah restock say?', 1, '2021-12-05 14:25:18'),
(48, 2, 5, 'Putihnya menerawang atau tidak?', 1, '2021-12-05 14:25:18'),
(49, 2, 6, 'Yang polos saja depannya ada say?', 1, '2021-12-05 14:25:18'),
(50, 2, 6, 'Muat bb 60 kah ini?', 1, '2021-12-05 14:25:18'),
(51, 2, 7, 'Celananya model bagaimana say?', 1, '2021-12-05 14:25:18'),
(52, 2, 7, 'Ada model lainnya ini sis?', 1, '2021-12-05 14:25:18'),
(53, 2, 8, 'Butiknya di andonohu bagian mana sis?', 1, '2021-12-05 14:25:18'),
(54, 2, 8, 'Saya mau cek dulu bahannya langsung, boleh?', 1, '2021-12-05 14:25:18'),
(55, 2, 9, 'Bisakah di tukar kalau nda muat?', 1, '2021-12-05 14:25:18'),
(56, 2, 9, 'Bisa fotokan lebih detail lagi say?', 1, '2021-12-05 14:25:18'),
(57, 2, 10, 'Ada berapa pcs stoknya ini say?', 1, '2021-12-05 14:25:18'),
(58, 2, 10, 'Saya mau pesan banyak untuk pesta, bisa kak?', 1, '2021-12-05 14:25:18'),
(59, 2, 3, 'Ada yang cocok di pakai ke pantai?', 1, '2021-12-05 14:25:18'),
(60, 2, 4, 'Bisa liat pilihan warnanya say?', 1, '2021-12-05 14:25:18'),
(61, 2, 5, 'Nda bisakah di bayar dulu tapi jangan di antar langsung?', 1, '2021-12-05 14:25:18'),
(62, 2, 6, 'Yang saya keep kemarin masih adaji?', 1, '2021-12-05 14:25:18'),
(63, 2, 7, 'Bisakah di keep dulu?', 1, '2021-12-05 14:25:18'),
(64, 2, 8, 'Size besarnya saja bisa kah sa liat?', 1, '2021-12-05 14:25:18'),
(65, 2, 9, 'Mba, kapan masuk barang baru?', 1, '2021-12-05 14:25:18'),
(66, 2, 10, 'Say, ada kita jual kaftan simple?', 1, '2021-12-05 14:25:18'),
(67, 2, 10, 'Sis ini dapat potongan harga juga?', 1, '2021-12-05 14:25:18'),
(68, 2, 9, 'Sampai kapan promonya berlaku?', 1, '2021-12-05 14:25:18'),
(69, 2, 9, 'Harus langsung bayarkah ini sis?', 1, '2021-12-05 14:25:18'),
(70, 2, 8, 'Bisa kirim gambarnya yang warna lain?', 1, '2021-12-05 14:25:18'),
(71, 2, 8, 'Kalau anak kecil muatkah ini?', 1, '2021-12-05 14:25:18'),
(72, 2, 7, 'Ada berapa pcs ini warna dustynya?', 1, '2021-12-05 14:25:18'),
(73, 2, 7, 'Bisa saya dp dulu?', 1, '2021-12-05 14:25:18'),
(74, 2, 6, 'Bisa kurirkan pakai maxim saja?', 1, '2021-12-05 14:25:18'),
(75, 2, 6, 'Kalau mau di tukar bisa ji toh?', 1, '2021-12-05 14:25:18'),
(76, 2, 5, 'Itu beltnya bisa dilepas kah?', 1, '2021-12-05 14:25:18'),
(77, 2, 5, 'Kalau realpictnya boleh liat?', 1, '2021-12-05 14:25:18'),
(78, 2, 4, 'Harganya cocokmi ini say?', 1, '2021-12-05 14:25:18'),
(79, 2, 4, 'Bisakah kita pakai baru fotokan?', 1, '2021-12-05 14:25:18'),
(80, 2, 3, 'Sis, bisa di bungkus pakai paper bag?', 1, '2021-12-05 14:25:18'),
(81, 2, 3, 'Nda dapat diskon kah say?', 1, '2021-12-05 14:25:18'),
(82, 2, 2, 'Minimal pembelian berapakah?', 1, '2021-12-05 14:25:18'),
(83, 2, 2, 'Motif apa itu say?', 1, '2021-12-05 14:25:18'),
(84, 2, 1, 'Yang bagaimana itu warna mauve?', 1, '2021-12-05 14:25:18'),
(85, 2, 1, 'Habismi ini barangnya say?', 1, '2021-12-05 14:25:18'),
(86, 2, 3, 'Saya mau tambah keepanku bisaji?', 1, '2021-12-05 14:25:18'),
(87, 2, 6, 'Butiknya buka jam berapa biasanya sissy?', 1, '2021-12-05 14:25:18'),
(88, 2, 8, 'Bajunya bisa di antar besok pagi?', 1, '2021-12-05 14:25:18'),
(89, 2, 10, 'Say, apa syaratnya kalau mau jadi reseller?', 1, '2021-12-05 14:25:18'),
(90, 2, 3, 'Sissy nda ada shopeenya?', 1, '2021-12-05 14:25:18'),
(91, 2, 5, 'Bisakah datang langsung ke butik?', 1, '2021-12-05 14:25:18'),
(92, 2, 7, 'Promonya hanya berlaku untuk offline?', 1, '2021-12-05 14:25:18'),
(93, 2, 9, 'Masih ada warna yang kemarin sa tanya?', 1, '2021-12-05 14:25:18'),
(94, 2, 9, 'Bisakah di kirim lewat kantor pos?', 1, '2021-12-05 14:25:18'),
(95, 2, 4, 'Ini muatkah untuk bumil?', 1, '2021-12-05 14:25:18'),
(96, 2, 6, 'Yang kayak bagaimana bahannya ini?', 1, '2021-12-05 14:25:18'),
(97, 2, 8, 'Kalau COD via kurir bisa?', 1, '2021-12-05 14:25:18'),
(98, 2, 1, 'Bisakah sebentar sore saja saya tf say?', 1, '2021-12-05 14:25:18'),
(99, 2, 1, 'Kalau saya dp dulu nanti minggu depan saya ambil bisakah?', 1, '2021-12-05 14:25:18'),
(100, 2, 2, 'Busui friendly ji ini toh sis?', 1, '2021-12-05 14:25:18'),
(101, 2, 7, 'Minta nomor WA nya boleh say?', 1, '2021-12-05 14:25:18'),
(102, 2, 7, 'Bisa minta format ordernya say?', 1, '2021-12-05 14:25:18'),
(103, 2, 6, 'Say, bisa liat lagi tadi gambarnya?', 1, '2021-12-05 14:25:18'),
(104, 2, 9, ' Tidak luntur ji itu sis?', 1, '2021-12-05 14:25:18'),
(105, 2, 10, 'Kapankah masuk barang baruta?', 1, '2021-12-05 14:25:18'),
(106, 2, 5, 'Sis, kalau COD luar kota bisa?', 1, '2021-12-05 14:25:18'),
(107, 2, 6, 'Pengiriman luar kota pakai ekspedisi apa sis?', 1, '2021-12-05 14:25:18'),
(108, 2, 10, 'Kalau pakai ke pesta ini cocok kah?', 1, '2021-12-05 14:25:18'),
(109, 2, 9, 'Ini satu set dengan bawahannya kah?', 1, '2021-12-05 14:25:18'),
(110, 2, 7, 'Bisa beli atasannya saja sis?', 1, '2021-12-05 14:25:18'),
(111, 2, 5, 'Tinggi modelnya berapa sis?', 1, '2021-12-05 14:25:18'),
(112, 2, 1, 'Cocokmi panjang gamisnya ini kak?', 1, '2021-12-05 14:25:18'),
(113, 2, 1, 'Adami say barangnya.', 2, '2021-12-05 14:25:18'),
(114, 2, 2, 'Restock secepatnya nah.', 2, '2021-12-05 14:25:18'),
(115, 2, 3, 'Terlambat liat storynya akhirnya kehabisan.', 2, '2021-12-05 14:25:18'),
(116, 2, 4, 'Kasitau saja kurirnya telpon kalau sudah sampai.', 2, '2021-12-05 14:25:18'),
(117, 2, 5, 'Bagusji say.', 2, '2021-12-05 14:25:18'),
(118, 2, 6, 'Cocokji say, cuma kebesaran.', 2, '2021-12-05 14:25:18'),
(119, 2, 7, 'Say, terbuka jahitannya saya mau tukar.', 2, '2021-12-05 14:25:18'),
(120, 2, 8, 'Saya keep memang dulu sis.', 2, '2021-12-05 14:25:18'),
(121, 2, 9, 'Saya transfer mi nah.', 2, '2021-12-05 14:25:18'),
(122, 2, 10, 'Nanti saya kesitu biar bisa pas langsung.', 2, '2021-12-05 14:25:18'),
(123, 2, 1, 'Pengirimannya pakai JNT saja.', 2, '2021-12-05 14:25:18'),
(124, 2, 2, 'Saya mau liat model lain saja.', 2, '2021-12-05 14:25:18'),
(125, 2, 3, 'Padahal cantiknya, cepat sekali sold out.', 2, '2021-12-05 14:25:18'),
(126, 2, 4, 'Bagus bahannya, motifnya tidak pasaran.', 2, '2021-12-05 14:25:18'),
(127, 2, 5, 'Say, saya ambil sendiri saja nah.', 2, '2021-12-05 14:25:18'),
(128, 2, 6, 'Saya mau kesitumi sis.', 2, '2021-12-05 14:25:18'),
(129, 2, 7, 'Simpankan ini nah, saya transfer sekarang.', 2, '2021-12-05 14:25:18'),
(130, 2, 8, 'Saya datang saja dulu liat yang lain.', 2, '2021-12-05 14:25:18'),
(131, 2, 9, 'Bagus sekali bajunya.', 2, '2021-12-05 14:25:18'),
(132, 2, 10, 'Saya mau order kembali.', 2, '2021-12-05 14:25:18'),
(133, 2, 1, 'Simpankanmi dulu nanti saya kesitu ambil.', 2, '2021-12-05 14:25:18'),
(134, 2, 2, 'Yang warna terang saja say.', 2, '2021-12-05 14:25:18'),
(135, 2, 3, 'Saya bayar stengah saja dulu sissy.', 2, '2021-12-05 14:25:18'),
(136, 2, 4, 'Butikta jauh dari rumahku say.', 2, '2021-12-05 14:25:18'),
(137, 2, 5, 'Yang model terbaru saya mau sissy.', 2, '2021-12-05 14:25:18'),
(138, 2, 6, 'Saya dijalanmi.', 2, '2021-12-05 14:25:18'),
(139, 2, 7, 'Sudah dekatmi sis.', 2, '2021-12-05 14:25:18'),
(140, 2, 8, 'Saya sudah di depan butik kak.', 2, '2021-12-05 14:25:18'),
(141, 2, 9, 'Bajunya tidak muat say.', 2, '2021-12-05 14:25:18'),
(142, 2, 10, 'Kasih diskon pi say.', 2, '2021-12-05 14:25:18'),
(143, 2, 1, 'Sis, bukan ini yang saya pesan.', 2, '2021-12-05 14:25:18'),
(144, 2, 2, 'Kita salah kasih warna baju kak.', 2, '2021-12-05 14:25:18'),
(145, 2, 3, 'Kak, tertukar barangnya.', 2, '2021-12-05 14:25:18'),
(146, 2, 4, 'Sissy restock pi lagi yang model ini.', 2, '2021-12-05 14:25:18'),
(147, 2, 5, 'Sudah habismi lagi ini astaga.', 2, '2021-12-05 14:25:18'),
(148, 2, 6, 'Jangan dulu kita close sissy.', 2, '2021-12-05 14:25:18'),
(149, 2, 7, 'Sudahmi sy tf ke rek BCA sis.', 2, '2021-12-05 14:25:18'),
(150, 2, 8, 'Saya diluar butik sis.', 2, '2021-12-05 14:25:18'),
(151, 2, 9, 'Saya yang ini nah, sy tf sekarang.', 2, '2021-12-05 14:25:18'),
(152, 2, 10, 'Cantiknyami ini kak.', 2, '2021-12-05 14:25:18'),
(153, 2, 1, 'Lucu modelnya.', 2, '2021-12-05 14:25:18'),
(154, 2, 2, 'Mba, keep yang ini yah.', 2, '2021-12-05 14:25:18'),
(155, 2, 3, 'Sayapi ini.', 2, '2021-12-05 14:25:18'),
(156, 2, 4, 'Saya order yang ini, antar sekarang.', 2, '2021-12-05 14:25:18'),
(157, 2, 5, 'Mau isi format order dulu kak.', 2, '2021-12-05 14:25:18'),
(158, 2, 6, 'Format ordernya belum ada kak.', 2, '2021-12-05 14:25:18'),
(159, 2, 7, 'Saya sudah isi format itu hari sis.', 2, '2021-12-05 14:25:18'),
(160, 2, 8, 'Nomorku masih samaji sissy.', 2, '2021-12-05 14:25:18'),
(161, 2, 9, 'Alamat yang kemarin saja mba.', 2, '2021-12-05 14:25:18'),
(162, 2, 10, 'Kak adakan pi lagi promo.', 2, '2021-12-05 14:25:18'),
(163, 2, 1, 'Saya tunggu saja barang baru kalau begitu.', 2, '2021-12-05 14:25:18'),
(164, 2, 2, 'Saya mau model yang simple saja.', 2, '2021-12-05 14:25:18'),
(165, 2, 3, 'Saya ganti tadi dengan yang ini saja sis.', 2, '2021-12-05 14:25:18'),
(166, 2, 4, 'Saya masih diluar kota say.', 2, '2021-12-05 14:25:18'),
(167, 2, 5, 'Tidak ada orang dirumah sis.', 2, '2021-12-05 14:25:18'),
(168, 2, 6, 'Suruh kurirnya masuk kedalam saja kak.', 2, '2021-12-05 14:25:18'),
(169, 2, 7, 'Bukan ini yang saya keep tadi kak.', 2, '2021-12-05 14:25:18'),
(170, 2, 8, 'Beda sekali warnanya ini sissy.', 2, '2021-12-05 14:25:18'),
(171, 2, 9, 'Sebentarpi kita kurir sis.', 2, '2021-12-05 14:25:18'),
(172, 2, 10, 'Kurirkanmi kak barangku.', 2, '2021-12-05 14:25:18'),
(173, 2, 1, 'Totalkanmi semuanya sis.', 2, '2021-12-05 14:25:18'),
(174, 2, 2, 'Telpon saja di nomor yang saya kasih kak.', 2, '2021-12-05 14:25:18'),
(175, 2, 3, 'Belum sampai kurirnya daritadi kak.', 2, '2021-12-05 14:25:18'),
(176, 2, 4, 'Daritadimi saya tunggu kak.', 2, '2021-12-05 14:25:18'),
(177, 2, 5, 'Saya dirumahmi kak.', 2, '2021-12-05 14:25:18'),
(178, 2, 6, 'Saya sudah dari tokomi tadi kak.', 2, '2021-12-05 14:25:18'),
(179, 2, 7, 'Saya nda suka modelnya, tukar saja dengan yang lain.', 2, '2021-12-05 14:25:18'),
(180, 2, 8, 'Nanti kurirku yang datang kesitu ambil sis.', 2, '2021-12-05 14:25:18'),
(181, 2, 9, 'Saya bayar di toko saja langsung kak.', 2, '2021-12-05 14:25:18'),
(182, 2, 10, 'Saya suka sekali bajunya sis.', 2, '2021-12-05 14:25:18'),
(183, 2, 1, 'Kak bisa kita fotokan ulang?', 1, '2021-12-07 08:10:33'),
(184, 2, 2, 'Mba saya tukar warna boleh?', 1, '2021-12-07 08:10:33'),
(185, 2, 3, 'Sis, ini sudah dengan belt nya yah? ', 1, '2021-12-07 08:10:33'),
(186, 2, 4, 'Bisa kirim lokasinya sis?', 1, '2021-12-07 08:10:33'),
(187, 2, 5, 'Sis bisaji gesek di situ?', 1, '2021-12-07 08:10:33'),
(188, 2, 6, 'Pengirimannya bisa via lain kah sis?', 1, '2021-12-07 08:10:33'),
(189, 2, 7, 'Kalau COD langsung di butik bisa?', 1, '2021-12-07 08:10:33'),
(190, 2, 1, 'Sampai jam berapa kita buka butik sissy?', 1, '2021-12-07 08:10:33'),
(191, 2, 2, 'Kenapa lama sekali kurirta di sis?', 1, '2021-12-07 08:10:33'),
(192, 2, 3, 'Kak nda bisa terbuka gambarnya.', 2, '2021-12-07 08:10:33'),
(193, 2, 4, 'Sis, lokasi butiknya terlalu jauh.', 2, '2021-12-07 08:10:33'),
(194, 2, 1, 'Sissy saya mau order yang kayak kemarin.', 2, '2021-12-07 08:10:33'),
(195, 2, 2, 'Kalau sudah restock kabari nah say.', 2, '2021-12-07 08:10:33'),
(196, 2, 3, 'Perpanjangpi promonya sissy.', 2, '2021-12-07 08:10:33'),
(197, 2, 4, 'Astaga belum gajian tapi sudah banyak model baru lagi.', 2, '2021-12-07 08:10:33'),
(198, 2, 5, 'Saya suka barangnya nanti order lagi.', 2, '2021-12-07 08:10:33'),
(199, 2, 6, 'Rok motifnya kasih restock kembali pi kak.', 2, '2021-12-07 08:10:33'),
(200, 2, 7, 'Sissy saya mau kesitumi sudah di jalan.', 2, '2021-12-07 08:10:33'),
(201, 2, 1, 'Adami kurirku kesitu ambil pesananku nah. ', 2, '2021-12-07 08:10:33'),
(202, 2, 2, 'Kalau bisa promonya sampai 1 minggu sissy.', 2, '2021-12-07 08:10:33'),
(203, 11, 10, 'Ongkirnya saya bayar ditujuan nah, kak.', 2, '2021-12-08 08:39:53'),
(204, 12, 5, 'Mba, masa bajunya tidak muat dibadan saya.', 1, '2021-12-08 08:40:38'),
(205, 13, 4, 'Model lain, tapi warna yang sama, ada?', 1, '2021-12-08 08:41:17'),
(206, 13, 8, 'Kak, bisa saya kesitu besok saja?', 2, '2021-12-08 08:41:51'),
(207, 14, 3, 'Apakah stok barang masih ada?', 1, '2021-12-11 08:03:09');

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
(2, 'Ita', 'Desa Lahotutu, Kecamatan wonggeduku barat', '+6285396252674'),
(3, 'Yuyun', 'Desa Lahotutu, Kecamatan wonggeduku barat', '+6285396252475'),
(4, 'Nisa', 'Desa Lahotutu, Kecamatan wonggeduku barat', '+6285396256677'),
(5, 'Lisa', 'Desa Lahotutu, Kecamatan wonggeduku barat', '+6285397252675'),
(6, 'Gita', 'Desa Lahotutu, Kecamatan wonggeduku barat', '+6285398252677'),
(7, 'Ade nur', 'Desa Lahotutu, Kecamatan wonggeduku barat', '+6285396252975'),
(8, 'Rini', 'Desa Lahotutu, Kecamatan wonggeduku barat', '+6285396254677'),
(9, 'Sukma', 'Desa Lahotutu, Kecamatan wonggeduku barat', '+6285376252675'),
(10, 'Dian', 'Desa Lahotutu, Kecamatan wonggeduku barat', '+6285336252677'),
(11, 'Asmi', 'Lorong Bintang', '085242768005'),
(12, 'Nani', 'lrg jupiter', '082325880168'),
(13, 'Ega Agustina', 'Jl Kharisma 1', '082271511399'),
(14, 'Sujiani', 'Kota Kendari', '+6285396252677');

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
  ADD PRIMARY KEY (`id_komentar`),
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
-- AUTO_INCREMENT untuk tabel `mengomentari`
--
ALTER TABLE `mengomentari`
  MODIFY `id_komentar` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=208;

--
-- AUTO_INCREMENT untuk tabel `pelanggan`
--
ALTER TABLE `pelanggan`
  MODIFY `id_pelanggan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

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
