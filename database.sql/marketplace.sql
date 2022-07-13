-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 13 Jul 2022 pada 04.48
-- Versi server: 10.4.22-MariaDB
-- Versi PHP: 7.2.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `marketplace`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `agenda`
--

CREATE TABLE `agenda` (
  `id_agenda` int(5) NOT NULL,
  `tema` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `tema_seo` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `isi_agenda` text COLLATE latin1_general_ci NOT NULL,
  `tempat` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `pengirim` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `gambar` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `tgl_mulai` date NOT NULL,
  `tgl_selesai` date NOT NULL,
  `tgl_posting` date NOT NULL,
  `jam` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `dibaca` int(5) NOT NULL DEFAULT 1,
  `username` varchar(50) COLLATE latin1_general_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data untuk tabel `agenda`
--

INSERT INTO `agenda` (`id_agenda`, `tema`, `tema_seo`, `isi_agenda`, `tempat`, `pengirim`, `gambar`, `tgl_mulai`, `tgl_selesai`, `tgl_posting`, `jam`, `dibaca`, `username`) VALUES
(64, 'Elton John Greatest Hits Tour', 'elton-john-greatest-hits-tour', '<p>November ini,&nbsp; Indonesia akan disuguhkan salah satu konser megah dari legenda musik dunia yaitu Elton John. Penampilan Elton John yang pertama kalinya di Indonesia akan berlangsung pada 17 November 2012, di&nbsp; Sentul International Convention Center, Bogor yang lokasinya tidak begitu jauh dari Jakarta.<br />\r\n<br />\r\nKonser Elton John ini merupakan bagian dari tur dunianya yang bertajuk &ldquo;Greatest Hits Tour&rdquo; dan akan dimulai pada awal November dari Latvia sampai ke Australia. Elton John akan membawa band lamanya yang terdiri dari Davey Johnstone, Nigel Olsson, Robert Birch, Kim Bullard dan John Mahon, dan empat backing vocal yaitu Rose&nbsp; Batu (Sly dan The Family Stone), Lisa Bank, Tata Vega, dan Jean Witherspoon.</p>\r\n', 'Sentul International Convention Center', 'Robby Prihandaya', '', '2012-11-17', '2012-11-17', '2012-08-20', '02:00:00 - 13:30:00', 89, 'admin'),
(62, 'Maroon Live in Jakarta 2012', 'maroon-live-in-jakarta-2012', 'Maroon 5 akan kembali menghibur penggemar Jakarta mereka dengan sebuah konser pada 5 Oktober 2012 di Istora Senayan, Jakarta. Ini akan menjadi penampilan kedua mereka di tanah air setelah tampil pada konser sold out 27 April 2011 lalu. Grup musik beraliran pop rock yang berasal dari Los Angeles, California Amerika Serikat. Rencananya menggelar konsernya pada 5 Oktober 2012, di Istora Senayan, Jakarta. Java Musikindo selaku promotor telah mengumumkan pembagian kelas serta harga tiket konser. Band yang digawangi oleh Adam Levine (vokal/gitar), Jesse Carmichael (keyboard/gitar),Mickey Madden (bass), James Valentine (gitar), Matt Flynn (drum) ini menggelar konser di Jakarta sebagai bagian dari promo album barunya, Overexposed, yang dirilis Juni lalu.\r\n', 'Istora Senayan Jakarta', 'Muhammad Arsenio', '', '2012-10-05', '2012-10-05', '2012-08-19', '20:00:00 - Selesai', 25, 'admin'),
(63, 'Festival Musik Bambu Nusa', 'festival-musik-bambu-nusantara-2012', 'Bambu Nusantara ke-6 tahun ini akan digelar di Jakarta Convention Center (JCC), di Jalan Jenderal Gatot Subroto, Jakarta, pada 1 - 2 September 2012. Acara tersebut akan menghadirkan beraneka kreasi berbahan bambu dan tampilnya beragam seni dari bambu. Selain suguhan musik etnik berpadu dengan musik modern, dalam Acara ini juga akan turut diisi dengan pameran, seminar, merchandise, kuliner, dan fashion yang dipadu padankan dengan karya berbahan bambu.<br />\r\n', 'Jakarta Convention Center (JCC), Jakarta', 'Dewiit Safitri', '', '2012-09-01', '2012-09-02', '2012-08-20', '09:00:00 - 21:00:00', 42, 'admin');

-- --------------------------------------------------------

--
-- Struktur dari tabel `album`
--

CREATE TABLE `album` (
  `id_album` int(5) NOT NULL,
  `jdl_album` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `album_seo` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `keterangan` text COLLATE latin1_general_ci NOT NULL,
  `gbr_album` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `aktif` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'Y',
  `hits_album` int(5) NOT NULL DEFAULT 1,
  `tgl_posting` date NOT NULL,
  `jam` time NOT NULL,
  `hari` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `username` varchar(50) COLLATE latin1_general_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data untuk tabel `album`
--

INSERT INTO `album` (`id_album`, `jdl_album`, `album_seo`, `keterangan`, `gbr_album`, `aktif`, `hits_album`, `tgl_posting`, `jam`, `hari`, `username`) VALUES
(30, 'Konser Kantata Barock 2018 berlangsung Dramatis', 'konser-kantata-barock-2018-berlangsung-dramatis', '<p>Para macan tua yang digawangi Iwan Fals, Setiawan Djody dan Sawung Jabo di Stadion Gelora Bung Karno, Jakarta, Jumat (30/12) malam. Kantata kembali membawakan lagu-lagu legendarisnya setelah 21 tahun vakum dari dunia musik.</p>\r\n\r\n<div style=\"background-color:#ffffff; border:medium none; color:#000000; overflow:hidden; text-align:left; text-decoration:none\">&nbsp;</div>\r\n', 'konser.png', 'Y', 36, '2012-08-20', '09:12:06', 'Senin', 'admin'),
(31, 'Asunt in anim uis aute irure dolor in reprehenderit', 'asunt-in-anim-uis-aute-irure-dolor-in-reprehenderit', '<p>Asunt in anim uis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in anim id est laborum. Allamco laboris nisi ut aliquip ex ea commodo consequat. Aser velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in anim id est laborum.</p>\r\n', 'maxresdefault.jpg', 'Y', 10, '2012-08-20', '09:40:01', 'Senin', 'admin'),
(28, 'Murah Meriah belanja puas di Pasar Asemka', 'murah-meriah-belanja-puas-di-pasar-asemka', '<p>Pasar Asemka, Jakarta, merupakan pasar grosir yang banyak menyediakan berbagai aksesoris seperti kalung, cincin, Souvenir pernakahan, dan lainnya. Di Pasara Asemka anda akan dimanjakan dengan beragam barang yang dibandrol dengan harga murah meriah dan biasanya dijual grosiran.</p>\r\n', 'Murah-Meriah.jpg', 'Y', 61, '2012-08-18', '23:14:05', 'Sabtu', 'admin'),
(29, 'Karpet Raksasa dari Bunga mendapatkan rekor muri', 'karpet-raksasa-dari-bunga-mendapatkan-rekor-muri', '<p>Belgia sedang memperingati peristiwa tahunan &quot;La Fete De La Fleur&quot; atau pesta bunga di bulan Agustus. Ahli bunga merancang karpet raksasa dari bunga di depan Grand Place di Brussel. Karpet ini dibuat menggunakan 700 ribu bunga.</p>\r\n', 'karpet.jpg', 'Y', 118, '2012-08-19', '03:02:27', 'Minggu', 'admin'),
(51, 'Jalan-jalan bersama pemenang quiz online swarakalibata', 'jalanjalan-bersama-pemenang-quiz-online-swarakalibata', '<p>Israel pekan-pekan belakangan ini meningkatkan ancaman-ancamannya untuk menghancurkan fasilitas-fasilitas nuklir Iran guna mencegah Teheran mampu memproduksi senjata-senjata atom. Iran yang terkena sanksi-sanksi Barat membantah tuduhan itu dan menegaskan bahwa program nuklirnya hanya untuk tujuan damai. Militernya memperingatkan akan menghancurkan Israel jika diserang.</p>\r\n', 'quiz.jpg', 'Y', 0, '2018-04-21', '22:55:11', 'Sabtu', 'admin');

-- --------------------------------------------------------

--
-- Struktur dari tabel `background`
--

CREATE TABLE `background` (
  `id_background` int(5) NOT NULL,
  `gambar` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `background`
--

INSERT INTO `background` (`id_background`, `gambar`) VALUES
(1, 'green');

-- --------------------------------------------------------

--
-- Struktur dari tabel `banner`
--

CREATE TABLE `banner` (
  `id_banner` int(5) NOT NULL,
  `judul` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `url` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `gambar` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `tgl_posting` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data untuk tabel `banner`
--

INSERT INTO `banner` (`id_banner`, `judul`, `url`, `gambar`, `tgl_posting`) VALUES
(19, 'Private Training Web Development', 'https://phpmu.com', '', '2017-05-21'),
(20, 'Kursus Web Programming Online', 'https://phpmu.com', '', '2017-05-21'),
(21, 'Komunitas Belajar web Programming', 'https://phpmu.com', '', '2017-05-21'),
(22, 'Jasa Pembuatan Website Murah', 'https://phpmu.com', '', '2017-05-21'),
(23, 'Komunitas  Pecinta CMS Lokomedia', 'https://phpmu.com', '', '2017-05-21');

-- --------------------------------------------------------

--
-- Struktur dari tabel `berita`
--

CREATE TABLE `berita` (
  `id_berita` int(5) NOT NULL,
  `id_kategori` int(5) NOT NULL,
  `username` varchar(30) COLLATE latin1_general_ci NOT NULL,
  `judul` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `sub_judul` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `youtube` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `judul_seo` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `headline` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'Y',
  `aktif` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'N',
  `utama` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'Y',
  `isi_berita` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `keterangan_gambar` text COLLATE latin1_general_ci NOT NULL,
  `hari` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `tanggal` date NOT NULL,
  `jam` time NOT NULL,
  `gambar` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `dibaca` int(5) NOT NULL DEFAULT 1,
  `tag` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `status` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'Y'
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `download`
--

CREATE TABLE `download` (
  `id_download` int(5) NOT NULL,
  `judul` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `nama_file` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `tgl_posting` date NOT NULL,
  `hits` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `gallery`
--

CREATE TABLE `gallery` (
  `id_gallery` int(5) NOT NULL,
  `id_album` int(5) NOT NULL,
  `username` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `jdl_gallery` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `gallery_seo` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `keterangan` text COLLATE latin1_general_ci NOT NULL,
  `gbr_gallery` varchar(100) COLLATE latin1_general_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `halamanstatis`
--

CREATE TABLE `halamanstatis` (
  `id_halaman` int(5) NOT NULL,
  `judul` varchar(100) NOT NULL,
  `judul_seo` varchar(100) NOT NULL,
  `isi_halaman` text NOT NULL,
  `tgl_posting` date NOT NULL,
  `gambar` varchar(100) NOT NULL,
  `username` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `dibaca` int(5) NOT NULL DEFAULT 1,
  `jam` time NOT NULL,
  `hari` varchar(20) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `halamanstatis`
--

INSERT INTO `halamanstatis` (`id_halaman`, `judul`, `judul_seo`, `isi_halaman`, `tgl_posting`, `gambar`, `username`, `dibaca`, `jam`, `hari`) VALUES
(48, 'Alamat Perusahaan', 'alamat-perusahaan', '<p>Tunggul.com merupakan portal online berita dan hiburan yang berfokus pada pembaca Indonesia baik yang berada di tanah air maupun yang tinggal di luar negeri. Berita Tunggul.com diupdate selama 24 jam dan mendapatkan kunjungan lebih dari 190 juta pageviews setiap bulannya (Sumber: Google Analytics).</p>\r\n\r\n<p>Tunggul.com memiliki beragam konten dari berita umum, politik, peristiwa, internasional, ekonomi, lifestyle, selebriti, sports, bola, auto, teknologi, dan lainya. Tunggul juga merupakan salah satu portal pertama yang memberikan inovasi konten video dan mobile (handphone). Para pembaca kami adalah profesional, karyawan kantor, pengusaha, politisi, pelajar, dan ibu rumah tangga.</p>\r\n\r\n<p>Tunggul.com memiliki beragam konten dari berita umum, politik, peristiwa, internasional, ekonomi, lifestyle, selebriti, sports, bola, auto, teknologi, dan lainya. Tunggul juga merupakan salah satu portal pertama yang memberikan inovasi konten video dan mobile (handphone). Para pembaca kami adalah profesional, karyawan kantor, pengusaha, politisi, pelajar, dan ibu rumah tangga.</p>\r\n', '2014-04-07', '', 'admin', 25, '13:32:28', 'Senin');

-- --------------------------------------------------------

--
-- Struktur dari tabel `header`
--

CREATE TABLE `header` (
  `id_header` int(5) NOT NULL,
  `judul` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `url` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `gambar` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `tgl_posting` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data untuk tabel `header`
--

INSERT INTO `header` (`id_header`, `judul`, `url`, `gambar`, `tgl_posting`) VALUES
(31, 'Header3', '', 'header3.jpg', '2011-04-06'),
(32, 'Header2', '', 'header1.jpg', '2011-04-06'),
(33, 'Header1', '', 'header2.jpg', '2011-04-06');

-- --------------------------------------------------------

--
-- Struktur dari tabel `hubungi`
--

CREATE TABLE `hubungi` (
  `id_hubungi` int(5) NOT NULL,
  `nama` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `email` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `subjek` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `pesan` text COLLATE latin1_general_ci NOT NULL,
  `tanggal` date NOT NULL,
  `jam` time NOT NULL,
  `dibaca` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'N',
  `lampiran` varchar(255) COLLATE latin1_general_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data untuk tabel `hubungi`
--

INSERT INTO `hubungi` (`id_hubungi`, `nama`, `email`, `subjek`, `pesan`, `tanggal`, `jam`, `dibaca`, `lampiran`) VALUES
(39, 'Robby Prihandaya', 'robby.prihandaya@gmail.com', '::1', 'Kami memiliki komitmen untuk memberikan layanan terbaik kepada Anda dan selalu berusaha untuk menyediakan produk dan layanan terbaik yang Anda butuhkan. Apabila untuk alasan tertentu Anda merasa tidak puas dengan pelayanan kami, Anda dapat menyampaikan kritik dan saran Anda kepada kami. Kami akan menidaklanjuti masukan yang Anda berikan dan bila perlu mengambil tindakan untuk mencegah masalah yang sama terulang kembali.', '2017-01-23', '21:56:12', 'Y', ''),
(35, 'yusri renor', 'aciafifah@gmail.com', 'pertanyaan', 'bagaimana cara mengunduh nomor ujian fak. pertanian', '2014-01-19', '00:00:00', 'Y', ''),
(36, 'Lusi Rahmawati', 'robby.prihandaya@gmail.com', 'xvgxcvxc', 'gbvibviubuibiub', '2014-07-02', '00:00:00', 'Y', ''),
(38, 'Udin Sedunia', 'udin.sedunia@gmail.com', 'Ip Pengirim : 120.177.28.244', 'Silahkan menghubungi kami melalui private message melalui form yang berada pada bagian kanan halaman ini. Kritik dan saran Anda sangat penting bagi kami untuk terus meningkatkan kualitas produk dan layanan yang kami berikan kepada Anda.', '2015-06-02', '00:00:00', 'Y', ''),
(40, 'Robby Prihandaya', 'robby.prihandaya@gmail.com', '::1', 'Kami memiliki komitmen untuk memberikan layanan terbaik kepada Anda dan selalu berusaha untuk menyediakan produk dan layanan terbaik yang Anda butuhkan. Apabila untuk alasan tertentu Anda merasa tidak puas dengan pelayanan kami, Anda dapat menyampaikan kritik dan saran Anda kepada kami. Kami akan menidaklanjuti masukan yang Anda berikan dan bila perlu mengambil tindakan untuk mencegah masalah yang sama terulang kembali.', '2017-01-25', '09:54:45', 'Y', ''),
(41, 'Robby Prihandaya', 'todaynews.co.id@gmail.coms', '::1', 'asdasdasd', '2018-05-04', '19:33:01', 'N', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `identitas`
--

CREATE TABLE `identitas` (
  `id_identitas` int(5) NOT NULL,
  `nama_website` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `url` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `facebook` text CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `rekening` varchar(100) NOT NULL,
  `no_telp` varchar(20) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `meta_deskripsi` varchar(250) NOT NULL,
  `meta_keyword` varchar(250) NOT NULL,
  `favicon` varchar(50) NOT NULL,
  `maps` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `identitas`
--

INSERT INTO `identitas` (`id_identitas`, `nama_website`, `email`, `url`, `facebook`, `rekening`, `no_telp`, `meta_deskripsi`, `meta_keyword`, `favicon`, `maps`) VALUES
(1, 'Swarakalibata Tunggul News Full Color', 'robby.prihandaya@gmail.com', 'http://localhost/swarakalibata_ci', 'https://www.facebook.com/robbyprihandaya, https://twitter.com/robbyprihandaya, https://plus.google.com/106633506064864167239, https://id.linkedin.com/', '3511887071', '081267771344', 'Menyajikan berita terbaru, tercepat, dan terpercaya seputar tunggul hitam.', 'Selamat datang di CMS Swarakalibata, adalah penyempurnaan dan perbaikan dari swarakalibata sebelumnya.', 'favicon.ico', 'https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d3989.3358607198243!2d100.35483479999999!3d-0.8910373999999999!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2fd4b8aa1a4e0441%3A0x3f81ebb48d31a38b!2sTunggul+Hitam%2C+Padang+Utara%2C+Kota+Padang%2C+Sumatera+Barat+25173!5e0!3m2!1sid!2sid!4v1408275531365');

-- --------------------------------------------------------

--
-- Struktur dari tabel `iklanatas`
--

CREATE TABLE `iklanatas` (
  `id_iklanatas` int(5) NOT NULL,
  `judul` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `username` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `url` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `gambar` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `tgl_posting` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data untuk tabel `iklanatas`
--

INSERT INTO `iklanatas` (`id_iklanatas`, `judul`, `username`, `url`, `gambar`, `tgl_posting`) VALUES
(40, 'Ayo Beli, Mumpung masih diskon Besar-besaran', 'slide', 'https://members.phpmu.com/', 'slidera.jpg', '2020-07-07'),
(41, 'Jadi Pahlawan dengan Belanja Produk Indonesia', 'slide', 'https://members.phpmu.com/', 'sliderb.jpg', '2020-07-07'),
(42, 'Iklan atas 3', 'default', 'https://members.phpmu.com/', '21.jpg', '2020-07-05'),
(43, 'Iklan atas 4', 'default', 'https://members.phpmu.com/', '0816f8-CB5.jpg', '2020-07-07'),
(44, 'Iklan atas 5', 'default', 'https://members.phpmu.com/', '8f4220-CB8.jpg', '2020-07-07'),
(45, 'Iklan atas 6', 'default', 'https://phpmu.com/', 'banner51.jpg', '2020-07-07');

-- --------------------------------------------------------

--
-- Struktur dari tabel `iklantengah`
--

CREATE TABLE `iklantengah` (
  `id_iklantengah` int(5) NOT NULL,
  `judul` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `username` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `url` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `gambar` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `tgl_posting` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data untuk tabel `iklantengah`
--

INSERT INTO `iklantengah` (`id_iklantengah`, `judul`, `username`, `url`, `gambar`, `tgl_posting`) VALUES
(1, 'Iklan Home No 1', 'admin', 'http://phpmu.com', '1.jpg', '2020-07-05'),
(2, 'Iklan Home No 2', 'admin', 'http://phpmu.com', '2.jpg', '2020-07-05'),
(3, 'Iklan Home No 3', 'admin', 'http://phpmu.com', '3.jpg', '2020-07-05'),
(4, 'Iklan Bawah Detail Berita', 'admin', 'http://phpmu.com', 'home.jpg', '2015-03-17'),
(5, 'Iklan dibawah Detail Video', 'admin', 'http://phpmu.com', 'home.jpg', '2015-03-18'),
(6, 'Iklan dibawah Detail Berita Foto', 'admin', 'http://phpmu.com', 'home.swf', '2015-03-19'),
(7, 'Iklan dibawah Halaman Download', 'admin', 'http://phpmu.com', 'home.jpg', '2015-03-17'),
(8, 'Iklan dibawah detail agenda', 'admin', 'http://phpmu.com', 'home.jpg', '2015-03-21'),
(9, 'Iklan dibawah halaman statis', 'admin', 'http://phpmu.com', '', '2015-03-21');

-- --------------------------------------------------------

--
-- Struktur dari tabel `katajelek`
--

CREATE TABLE `katajelek` (
  `id_jelek` int(11) NOT NULL,
  `kata` varchar(60) COLLATE latin1_general_ci DEFAULT NULL,
  `username` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `ganti` varchar(60) COLLATE latin1_general_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data untuk tabel `katajelek`
--

INSERT INTO `katajelek` (`id_jelek`, `kata`, `username`, `ganti`) VALUES
(4, 'sex', '', 's**'),
(2, 'bajingan', '', 'b*******'),
(3, 'bangsat', '', 'b******'),
(5, 'fuck', 'admin', 'f**k'),
(6, 'pantat', 'admin', 'p****t');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kategori`
--

CREATE TABLE `kategori` (
  `id_kategori` int(5) NOT NULL,
  `nama_kategori` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `username` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `kategori_seo` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `aktif` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'Y',
  `sidebar` int(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `komentar`
--

CREATE TABLE `komentar` (
  `id_komentar` int(5) NOT NULL,
  `id_berita` int(5) NOT NULL,
  `nama_komentar` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `url` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `isi_komentar` text COLLATE latin1_general_ci NOT NULL,
  `tgl` date NOT NULL,
  `jam_komentar` time NOT NULL,
  `aktif` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'Y',
  `email` varchar(100) COLLATE latin1_general_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `komentarvid`
--

CREATE TABLE `komentarvid` (
  `id_komentar` int(5) NOT NULL,
  `id_video` int(5) NOT NULL,
  `nama_komentar` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `url` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `isi_komentar` text COLLATE latin1_general_ci NOT NULL,
  `tgl` date NOT NULL,
  `jam_komentar` time NOT NULL,
  `aktif` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'Y'
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `logo`
--

CREATE TABLE `logo` (
  `id_logo` int(5) NOT NULL,
  `gambar` varchar(100) COLLATE latin1_general_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data untuk tabel `logo`
--

INSERT INTO `logo` (`id_logo`, `gambar`) VALUES
(15, 'logo-top-1.png');

-- --------------------------------------------------------

--
-- Struktur dari tabel `menu`
--

CREATE TABLE `menu` (
  `id_menu` int(5) NOT NULL,
  `id_parent` int(5) NOT NULL DEFAULT 0,
  `nama_menu` varchar(30) NOT NULL,
  `link` varchar(100) NOT NULL,
  `aktif` enum('Ya','Tidak') NOT NULL DEFAULT 'Ya',
  `position` enum('Top','Bottom') DEFAULT 'Bottom',
  `urutan` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `menu`
--

INSERT INTO `menu` (`id_menu`, `id_parent`, `nama_menu`, `link`, `aktif`, `position`, `urutan`) VALUES
(113, 0, 'Tentang Kami', 'halaman/detail/tentang-kami-tunggul-news', 'Ya', 'Bottom', 2),
(151, 150, 'Semua Produk', 'produk', 'Ya', 'Bottom', 19),
(150, 0, 'Marketplace System', '#', 'Ya', 'Bottom', 18),
(148, 150, 'Konfirmasi Orders', 'konfirmasi', 'Ya', 'Bottom', 22),
(149, 150, 'Tracking Orders', 'konfirmasi/tracking', 'Ya', 'Bottom', 21),
(152, 150, 'Semua Toko', 'produk/reseller', 'Ya', 'Bottom', 20),
(155, 150, 'Orders Report', 'members/orders_report', 'Ya', 'Bottom', 23);

-- --------------------------------------------------------

--
-- Struktur dari tabel `modul`
--

CREATE TABLE `modul` (
  `id_modul` int(5) NOT NULL,
  `nama_modul` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `username` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `link` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `static_content` text CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `gambar` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `publish` enum('Y','N') CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL DEFAULT 'Y',
  `status` enum('user','admin') CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `aktif` enum('Y','N') CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL DEFAULT 'Y',
  `urutan` int(5) NOT NULL,
  `link_seo` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `modul`
--

INSERT INTO `modul` (`id_modul`, `nama_modul`, `username`, `link`, `static_content`, `gambar`, `publish`, `status`, `aktif`, `urutan`, `link_seo`) VALUES
(2, 'Manajemen User', 'admin', 'manajemenuser', '', '', 'Y', 'user', 'Y', 0, ''),
(71, 'Background Website', 'admin', 'background', '', '', 'N', 'admin', 'N', 0, ''),
(10, 'Manajemen Modul', 'admin', 'manajemenmodul', '', '', 'Y', 'user', 'Y', 0, ''),
(45, 'Template Website', 'admin', 'templatewebsite', '', '', 'Y', 'user', 'Y', 0, ''),
(61, 'Identitas Website', 'admin', 'identitaswebsite', '', '', 'Y', 'user', 'Y', 0, ''),
(57, 'Menu Website', 'admin', 'menuwebsite', '', '', 'Y', 'user', 'Y', 0, ''),
(59, 'Halaman Baru', 'admin', 'halamanbaru', '', '', 'Y', 'user', 'Y', 0, ''),
(66, 'Logo Website', 'admin', 'logowebsite', '', '', 'Y', 'user', 'Y', 0, ''),
(67, 'Iklan Sidebar', 'admin', 'iklansidebar', '', '', 'N', 'admin', 'N', 0, ''),
(68, 'Iklan Home', 'admin', 'iklanhome', '', '', 'N', 'admin', 'N', 0, ''),
(69, 'Iklan Atas', 'admin', 'iklanatas', '', '', 'N', 'admin', 'N', 0, ''),
(70, 'Pesan Masuk', 'admin', 'pesanmasuk', '', '', 'Y', 'user', 'Y', 0, ''),
(72, 'Sekilas Info', 'admin', 'sekilasinfo', '', '', 'N', 'admin', 'N', 0, ''),
(73, 'Yahoo Messanger', 'admin', 'ym', '', '', 'N', 'admin', 'N', 0, ''),
(74, 'Download Area', 'admin', 'download', '', '', 'Y', 'admin', 'Y', 0, ''),
(75, 'Alamat Kontak', 'admin', 'alamat', '', '', 'Y', 'admin', 'Y', 0, '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `mod_alamat`
--

CREATE TABLE `mod_alamat` (
  `id_alamat` int(5) NOT NULL,
  `alamat` text CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `mod_alamat`
--

INSERT INTO `mod_alamat` (`id_alamat`, `alamat`) VALUES
(1, '<strong>Haloo!</strong>, Kami berkomitmen memberikan layanan terbaik untuk Anda,&nbsp;menyediakan produk dan layanan terbaik yang Anda butuhkan. Apabila untuk alasan tertentu Anda merasa tidak puas dengan pelayanan kami dapat menyampaikan kritik dan saran.<br />\r\n<br />\r\nKami akan menidaklanjuti masukan yang Anda berikan dan bila perlu mengambil tindakan untuk mencegah masalah yang sama terulang kembali.\r\n');

-- --------------------------------------------------------

--
-- Struktur dari tabel `mod_ym`
--

CREATE TABLE `mod_ym` (
  `id` int(11) NOT NULL,
  `nama` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `username` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `ym_icon` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pasangiklan`
--

CREATE TABLE `pasangiklan` (
  `id_pasangiklan` int(5) NOT NULL,
  `judul` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `username` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `url` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `gambar` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `tgl_posting` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data untuk tabel `pasangiklan`
--

INSERT INTO `pasangiklan` (`id_pasangiklan`, `judul`, `username`, `url`, `gambar`, `tgl_posting`) VALUES
(1, 'Iklan Sidebar Kiri', 'admin', 'http://phpmu.com', 'kiri.jpg', '2014-06-22'),
(2, 'Iklan Sidebar Kanan', 'admin', 'http://phpmu.com', 'kanan.jpg', '2014-06-22');

-- --------------------------------------------------------

--
-- Struktur dari tabel `playlist`
--

CREATE TABLE `playlist` (
  `id_playlist` int(5) NOT NULL,
  `jdl_playlist` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `username` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `playlist_seo` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `gbr_playlist` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `aktif` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'Y'
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `poling`
--

CREATE TABLE `poling` (
  `id_poling` int(5) NOT NULL,
  `pilihan` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `status` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `username` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `rating` int(5) NOT NULL DEFAULT 0,
  `aktif` enum('Y','N') COLLATE latin1_general_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data untuk tabel `poling`
--

INSERT INTO `poling` (`id_poling`, `pilihan`, `status`, `username`, `rating`, `aktif`) VALUES
(18, 'Siapakah Calon Walikota dan Wakil Walikota Padang Favorit Anda?', 'Pertanyaan', 'admin', 0, 'Y'),
(25, 'Mahyeldi Ansyarullah - Emzalmi', 'Jawaban', 'admin', 25, 'Y'),
(31, 'Robby Prihandaya - Dewi Safitri', 'Jawaban', 'admin', 1, 'Y'),
(32, 'Tommy Utama - Laura Hikmah', 'Jawaban', 'admin', 3, 'Y'),
(33, 'Willy Fernando - Vicky Armita', 'Jawaban', 'admin', 9, 'Y'),
(35, 'Laura Himah i Nisaa - Safaruddin', 'Jawaban', 'admin', 5, 'Y');

-- --------------------------------------------------------

--
-- Struktur dari tabel `rb_bonus`
--

CREATE TABLE `rb_bonus` (
  `id_bonus` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `nominal` int(11) NOT NULL,
  `status` enum('1','2') NOT NULL,
  `waktu_bonus` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `rb_bonus`
--

INSERT INTO `rb_bonus` (`id_bonus`, `username`, `nominal`, `status`, `waktu_bonus`) VALUES
(8, 'arsenio', 100000, '1', '2017-04-10 23:55:38'),
(7, 'robby', 100000, '1', '2017-04-10 23:55:38');

-- --------------------------------------------------------

--
-- Struktur dari tabel `rb_kategori_produk`
--

CREATE TABLE `rb_kategori_produk` (
  `id_kategori_produk` int(11) NOT NULL,
  `nama_kategori` varchar(255) NOT NULL,
  `kategori_seo` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `rb_kategori_produk`
--

INSERT INTO `rb_kategori_produk` (`id_kategori_produk`, `nama_kategori`, `kategori_seo`) VALUES
(1, 'Aksesoris & Komputer', 'aksesoris-gadget--komputer'),
(2, 'Fashion & Busana Wanita', 'fashion--busana-wanita'),
(6, 'Fashion & Busana Pria', 'fashion--busana-pria'),
(9, 'Alat Musik & Pro Audio', 'alat-musik--pro-audio'),
(10, 'Tas, Koper & Perjalanan', 'tas-koper--perjalanan'),
(12, 'Rumah Tangga', 'rumah-tangga'),
(13, 'Taman dan Alat Dapur', 'taman-dan-alat-dapur'),
(14, 'Perhiasan dan Jam Tangan', 'perhiasan-dan-jam-tangan');

-- --------------------------------------------------------

--
-- Struktur dari tabel `rb_kategori_produk_sub`
--

CREATE TABLE `rb_kategori_produk_sub` (
  `id_kategori_produk_sub` int(11) NOT NULL,
  `id_kategori_produk` int(11) NOT NULL,
  `nama_kategori_sub` varchar(255) NOT NULL,
  `kategori_seo_sub` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `rb_kategori_produk_sub`
--

INSERT INTO `rb_kategori_produk_sub` (`id_kategori_produk_sub`, `id_kategori_produk`, `nama_kategori_sub`, `kategori_seo_sub`) VALUES
(1, 2, 'Kiyora Sedang', 'kiyora-sedang'),
(2, 2, 'Kiyora Dalam', 'kiyora-dalam'),
(3, 1, 'Motherboard', 'motherboard'),
(4, 1, 'Storage External', 'storage-external');

-- --------------------------------------------------------

--
-- Struktur dari tabel `rb_keterangan`
--

CREATE TABLE `rb_keterangan` (
  `id_keterangan` int(5) NOT NULL,
  `id_reseller` int(11) NOT NULL,
  `keterangan` text NOT NULL,
  `tanggal_posting` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `rb_keterangan`
--

INSERT INTO `rb_keterangan` (`id_keterangan`, `id_reseller`, `keterangan`, `tanggal_posting`) VALUES
(1, 2, '<b>Informasi dari Reseller :</b><p></p>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec scelerisque condimentum mattis. Suspendisse potenti. Proin vitae elementum nisi. Aliquam eu pretium risus. Nam varius efficitur consectetur. Aenean vestibulum felis sed mollis faucibus. Interdum et malesuada fames ac ante ipsum primis in faucibus. Proin venenatis est sit amet eleifend vehicula. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer id nunc eu odio ultrices pulvinar non feugiat felis.&nbsp; dfsdfsdf</p><p>Duis consequat urna sapien, porta gravida diam venenatis at. Duis at ornare enim, ac accumsan eros. Sed in finibus metus. Etiam blandit tristique orci, sit amet congue dui facilisis id. Donec fermentum diam at orci viverra placerat. Sed nunc lorem, cursus nec vestibulum hendrerit, tempus et libero. ertert</p>', '2017-03-31'),
(2, 6, '<p>asdasdasd</p>', '2019-09-07'),
(3, 1, '<p>ZXZXZX</p>', '2019-09-07');

-- --------------------------------------------------------

--
-- Struktur dari tabel `rb_konfirmasi_pembayaran`
--

CREATE TABLE `rb_konfirmasi_pembayaran` (
  `id_konfirmasi_pembayaran` int(11) NOT NULL,
  `id_penjualan` int(11) NOT NULL,
  `total_transfer` varchar(20) NOT NULL,
  `id_rekening` int(11) NOT NULL,
  `nama_pengirim` varchar(255) NOT NULL,
  `tanggal_transfer` date NOT NULL,
  `bukti_transfer` varchar(255) NOT NULL,
  `waktu_konfirmasi` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `rb_konfirmasi_pembayaran`
--

INSERT INTO `rb_konfirmasi_pembayaran` (`id_konfirmasi_pembayaran`, `id_penjualan`, `total_transfer`, `id_rekening`, `nama_pengirim`, `tanggal_transfer`, `bukti_transfer`, `waktu_konfirmasi`) VALUES
(1, 14, 'Rp 3,605,000', 2, 'Robby Prihandaya', '2017-06-01', 'Transfer_Member_PHP.png', '2017-06-01 17:17:55'),
(2, 58, 'Rp 700,000', 1, 'ttt', '2018-09-12', '', '2018-09-12 14:43:39'),
(3, 68, 'Rp 1,332,900', 1, 'Reseller Utama', '2018-12-26', '234.JPG', '2018-12-26 08:19:57'),
(4, 91, 'Rp 399,000', 1, 'Murni Jaya', '2019-03-22', 'Screenshot_20190227-155933_BCA_mobile.jpg', '2019-03-22 06:28:27'),
(5, 117, 'Rp 114,000', 1, 'Umar Lapakers', '2020-06-28', '', '2020-06-28 08:44:42');

-- --------------------------------------------------------

--
-- Struktur dari tabel `rb_konfirmasi_pembayaran_konsumen`
--

CREATE TABLE `rb_konfirmasi_pembayaran_konsumen` (
  `id_konfirmasi_pembayaran` int(11) NOT NULL,
  `id_penjualan` int(11) NOT NULL,
  `total_transfer` varchar(20) NOT NULL,
  `id_rekening` int(11) NOT NULL,
  `nama_pengirim` varchar(255) NOT NULL,
  `tanggal_transfer` date NOT NULL,
  `bukti_transfer` varchar(255) NOT NULL,
  `waktu_konfirmasi` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `rb_konfirmasi_pembayaran_konsumen`
--

INSERT INTO `rb_konfirmasi_pembayaran_konsumen` (`id_konfirmasi_pembayaran`, `id_penjualan`, `total_transfer`, `id_rekening`, `nama_pengirim`, `tanggal_transfer`, `bukti_transfer`, `waktu_konfirmasi`) VALUES
(2, 19, 'Rp 1,278,000', 1, 'Robby Prihandaya', '2017-06-02', '00011.jpg', '2017-06-02 15:19:40'),
(3, 43, 'Rp 4,799,000', 0, 'Dewiit Safitri ', '2017-06-04', '0755.png', '2017-06-04 11:27:01'),
(5, 47, 'Rp 728,000', 1, 'Agus Raharjo', '2017-06-07', '1.png', '2017-06-07 21:06:06'),
(6, 57, 'Rp 945,900', 1, 'Robby Prihandaya', '2018-12-11', '', '2018-12-11 14:01:05'),
(7, 57, 'Rp 945,900', 1, 'Robby Prihandaya', '2018-12-11', '', '2018-12-11 14:02:22'),
(8, 57, 'Rp 945,900', 1, 'Robby Prihandaya', '2018-12-11', 'zhe_mandiri_logo.png', '2018-12-11 14:03:11'),
(9, 61, 'Rp 110,900', 1, 'Robby Prihandaya', '2018-12-23', 'bukti_transfer_phpmu1.jpeg', '2018-12-23 07:39:30'),
(10, 85, 'Rp 776,000', 2, 'Robby Prihandaya', '2019-03-21', 'bukti_transfer3.jpg', '2019-03-21 12:04:31'),
(11, 86, 'Rp 141,000', 1, 'Robby Prihandaya', '2019-03-21', 'IMG-20190217-WA0002.jpg', '2019-03-21 12:09:00'),
(12, 87, 'Rp 82,000', 1, 'Muhammad Arsenio', '2019-03-21', 'IMG-20190115-WA0013.jpg', '2019-03-21 12:11:56'),
(13, 106, 'Rp 776,000', 1, 'Robby Prihandaya', '2019-07-03', 'Screenshot.png', '2019-07-03 07:45:36');

-- --------------------------------------------------------

--
-- Struktur dari tabel `rb_konsumen`
--

CREATE TABLE `rb_konsumen` (
  `id_konsumen` int(11) NOT NULL,
  `username` varchar(60) NOT NULL,
  `password` text NOT NULL,
  `nama_lengkap` varchar(255) NOT NULL,
  `email` varchar(60) NOT NULL,
  `jenis_kelamin` enum('Laki-laki','Perempuan') NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `tempat_lahir` varchar(100) NOT NULL,
  `alamat_lengkap` text NOT NULL,
  `kecamatan` varchar(255) NOT NULL,
  `kota_id` int(11) NOT NULL,
  `no_hp` varchar(15) NOT NULL,
  `foto` varchar(255) NOT NULL,
  `tanggal_daftar` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `rb_konsumen`
--

INSERT INTO `rb_konsumen` (`id_konsumen`, `username`, `password`, `nama_lengkap`, `email`, `jenis_kelamin`, `tanggal_lahir`, `tempat_lahir`, `alamat_lengkap`, `kecamatan`, `kota_id`, `no_hp`, `foto`, `tanggal_daftar`) VALUES
(1, 'robby', '882c306525a9f885466520ba2aa6b10377b029cb569311fc17161d40df6e1bab7eb6103fcf567ce3a1375e77cc7db1928efec90cd0a379303fc2adb159bb1d14', 'Robby Prihandaya', 'robby.prihandaya@gmail.com', 'Laki-laki', '1988-08-07', '34623452223423', 'Jl. Angkasa Pura Jaya Merdeka', 'Koto Tangah', 318, '081267771341', 'robby1.jpg', '2017-04-05'),
(2, 'arsenio', 'ddd1e1ecf9826e4ae7aba6ebd09589d65880638f984357aa688cf265fbc8b3e8781ca573d27c13cafc99e4db9d5c38801bd270df6f0bf6d18cd877fefb159f6f', 'Muhammad Arsenio', 'muhammad.arsenio@gmail.com', 'Laki-laki', '1988-09-27', '67846234523434', 'jl. Siti Nurbayani Sogi roh', 'Koto Tangah', 394, '081267889912', '', '2017-04-07'),
(3, 'dewiit', 'af9f95fb734ca6abb2d02a6a169eca2bbf33feb3c25ed266e4129cbed937150699954d72dcb44fee7c9e9acebaf4e7283aabc64a6e56f1b8e6a5a0e8e0551324', 'Dewiit Safitri', 'dewiitt.safitri@gmail.com', 'Perempuan', '1989-06-16', '56224234234', 'Jl. Linggar Jati Lamo', '', 0, '098912334456', '', '2017-04-08'),
(4, 'cristine', '284e703a4d52451e1266b16660e50545e58bc0d4796587cb457e49cccd10af4d4ef6cf36d076a91002d806f443e0fb22b9391d81092d06a90252ec80b93a1269', 'Cristine Hakim', 'cristine.hakim@gmail.com', 'Perempuan', '1970-06-16', '46234234234', 'jl. Pondok Raya Begalung', '', 0, '097712445600', '', '2017-04-09'),
(5, 'tommy', 'e3bb0d1fb8d4d0aa070f22a9f73c975222449bb5466dc89033f66a8be07d6e8345308aa298e78066871c6844964e6b63f7be4327525c5025001c76b94310e2f2', 'Tommu Utama', 'tommy.utama@gmail.com', 'Laki-laki', '1985-08-18', '894563456354', 'Jl Cendrawasih Mujukirte', '', 0, '081267881233', '', '2017-04-10'),
(6, 'willy', '181676ffcb279fc91cfb9cb5f07be65b23224b05059f9f2ff0158aa520693a805496be090242c3cdf56c0463f278aba4b01c7115ea356eda346ef8270e402696', 'Willy Fernando', 'willy.fernando@gmail.com', 'Laki-laki', '1969-08-14', '567352234423', 'Jl. Angkasa Puri, Perundam 4', '', 0, '087811235433', '', '2017-04-11'),
(7, 'rosanna', '108b1016c8dfa4c6892fd745c09adc4859cd2e21ca3d55a30322ef667011aa3c379c02a45437fd6482555c17aab7f607e13b8431e19678a00a51edec958a9569', 'Rosanna Alexandro', 'rosanna.alexandro@gmail.com', 'Perempuan', '1967-04-17', '67543242343', 'Jl. Mantaliano Tubelegio', '', 0, '081242342341', '', '2017-04-10'),
(18, 'laura', 'ca946a52760d2c5e2670aa899019f09638e72462d8a9ff272dffb16d14e3873457ce6be0a3ecf205fdb0c8141bbe560b01240f1f1307e31b231cb18428ec5974', 'Laura Izzatin Nissa', 'laura.izzatin@gmail.com', 'Perempuan', '1998-02-12', 'Padang Panjang', 'Tunggul Hitam, Padang', '', 0, '082175123545', '', '2017-05-29'),
(24, 'rahmi', 'a6023aa2be2f8d9bb61edd627f957882c7a28abbbc1ed61b9cd93c36c06e52270396fcaa6303b341f52937432faa91ecbaea99534a1f55866ba3163389fcbfbf', 'Rahmi Saputra', 'rahmi.saputra@gmail.com', 'Laki-laki', '1989-12-12', 'Payakumbuh', 'Jl. Kijoko Bodoh', 'Perupuk Jaya', 370, '081978541155', '', '2017-06-07'),
(23, 'agusr', 'b87fb1f4862c52a175281636b0c270276e50e33e3aec4929c31da5199ca83ff25c0d045f9eb03b2e6dca41a390164a8c95c29bd28139cef18499c0d2ae59e098', 'Agus Raharjo', 'agus.raharjo@gmail.com', 'Laki-laki', '0000-00-00', '', 'Jl. Sutimah warohmah Jaya', 'Koto Tangah', 371, '081267991244', '', '2017-06-07'),
(22, 'agus.raharjo@gmail.com', '02b61e501d79d45025497898bbf96cdfb5798c6f41a3a5abbbf4e4a51945d398923fc4968d49653275372e396939f307a8625793e74c0a10f76e7b02130afcf8', 'Agus Raharjo', 'agus.raharjo@gmail.com', 'Laki-laki', '2017-06-07', 'Belum ada informasi', 'Jl. Super market jaya 1', 'Perupuk Tabing', 371, '081267771455', '', '2017-06-07'),
(26, 'ajopiaman', '60031d6080409529d7a34c00d38c33846fc14e62e9730dd781a26688ebdbee18751b4bf308e2b3933c7b8692ab1a57e51a7ddd1787e34254c063dc65f7f171b4', 'Ajo Piaman', 'ajo.piaman@gmail.com', 'Laki-laki', '1990-12-11', 'Pariaman', 'Jl. Piaman Raya Bendungan Sari, No 4A', 'Koto Tangah', 337, '081267770000', '', '2018-12-23'),
(27, 'Nutinut', '5b1b4973f8caa348444735f8c990b81bfeda30bb4a96f2cebfc492139bd893e1d1015316cb6e577ac29c428b38aa3d300ef5fb5217e82aa9a1682698ed5d6366', 'Ainut Toriqun Najah', 'ainuttoriqunnajah28@gmail.com', 'Laki-laki', '0000-00-00', '', 'Jl. selalu bisa', 'Kcamatan', 153, '08123456789', '', '2022-07-13');

-- --------------------------------------------------------

--
-- Struktur dari tabel `rb_kota`
--

CREATE TABLE `rb_kota` (
  `kota_id` int(11) NOT NULL,
  `provinsi_id` int(11) NOT NULL,
  `nama_kota` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `rb_kota`
--

INSERT INTO `rb_kota` (`kota_id`, `provinsi_id`, `nama_kota`) VALUES
(17, 1, 'Badung'),
(32, 1, 'Bangli'),
(94, 1, 'Buleleng'),
(114, 1, 'Denpasar'),
(128, 1, 'Gianyar'),
(161, 1, 'Jembrana'),
(170, 1, 'Karangasem'),
(197, 1, 'Klungkung'),
(447, 1, 'Tabanan'),
(27, 2, 'Bangka'),
(28, 2, 'Bangka Barat'),
(29, 2, 'Bangka Selatan'),
(30, 2, 'Bangka Tengah'),
(56, 2, 'Belitung'),
(57, 2, 'Belitung Timur'),
(334, 2, 'Pangkal Pinang'),
(106, 3, 'Cilegon'),
(232, 3, 'Lebak'),
(331, 3, 'Pandeglang'),
(402, 3, 'Serang'),
(403, 3, 'Serang'),
(455, 3, 'Tangerang'),
(456, 3, 'Tangerang'),
(457, 3, 'Tangerang Selatan'),
(62, 4, 'Bengkulu'),
(63, 4, 'Bengkulu Selatan'),
(64, 4, 'Bengkulu Tengah'),
(65, 4, 'Bengkulu Utara'),
(175, 4, 'Kaur'),
(183, 4, 'Kepahiang'),
(233, 4, 'Lebong'),
(294, 4, 'Muko Muko'),
(379, 4, 'Rejang Lebong'),
(397, 4, 'Seluma'),
(39, 5, 'Bantul'),
(135, 5, 'Gunung Kidul'),
(210, 5, 'Kulon Progo'),
(419, 5, 'Sleman'),
(501, 5, 'Yogyakarta'),
(151, 6, 'Jakarta Barat'),
(152, 6, 'Jakarta Pusat'),
(153, 6, 'Jakarta Selatan'),
(154, 6, 'Jakarta Timur'),
(155, 6, 'Jakarta Utara'),
(189, 6, 'Kepulauan Seribu'),
(77, 7, 'Boalemo'),
(88, 7, 'Bone Bolango'),
(129, 7, 'Gorontalo'),
(130, 7, 'Gorontalo'),
(131, 7, 'Gorontalo Utara'),
(361, 7, 'Pohuwato'),
(50, 8, 'Batang Hari'),
(97, 8, 'Bungo'),
(156, 8, 'Jambi'),
(194, 8, 'Kerinci'),
(280, 8, 'Merangin'),
(293, 8, 'Muaro Jambi'),
(393, 8, 'Sarolangun'),
(442, 8, 'Sungaipenuh'),
(460, 8, 'Tanjung Jabung Barat'),
(461, 8, 'Tanjung Jabung Timur'),
(471, 8, 'Tebo'),
(22, 9, 'Bandung'),
(23, 9, 'Bandung'),
(24, 9, 'Bandung Barat'),
(34, 9, 'Banjar'),
(54, 9, 'Bekasi'),
(55, 9, 'Bekasi'),
(78, 9, 'Bogor'),
(79, 9, 'Bogor'),
(103, 9, 'Ciamis'),
(104, 9, 'Cianjur'),
(107, 9, 'Cimahi'),
(108, 9, 'Cirebon'),
(109, 9, 'Cirebon'),
(115, 9, 'Depok'),
(126, 9, 'Garut'),
(149, 9, 'Indramayu'),
(171, 9, 'Karawang'),
(211, 9, 'Kuningan'),
(252, 9, 'Majalengka'),
(332, 9, 'Pangandaran'),
(376, 9, 'Purwakarta'),
(428, 9, 'Subang'),
(430, 9, 'Sukabumi'),
(431, 9, 'Sukabumi'),
(440, 9, 'Sumedang'),
(468, 9, 'Tasikmalaya'),
(469, 9, 'Tasikmalaya'),
(37, 10, 'Banjarnegara'),
(41, 10, 'Banyumas'),
(49, 10, 'Batang'),
(76, 10, 'Blora'),
(91, 10, 'Boyolali'),
(92, 10, 'Brebes'),
(105, 10, 'Cilacap'),
(113, 10, 'Demak'),
(134, 10, 'Grobogan'),
(163, 10, 'Jepara'),
(169, 10, 'Karanganyar'),
(177, 10, 'Kebumen'),
(181, 10, 'Kendal'),
(196, 10, 'Klaten'),
(209, 10, 'Kudus'),
(249, 10, 'Magelang'),
(250, 10, 'Magelang'),
(344, 10, 'Pati'),
(348, 10, 'Pekalongan'),
(349, 10, 'Pekalongan'),
(352, 10, 'Pemalang'),
(375, 10, 'Purbalingga'),
(377, 10, 'Purworejo'),
(380, 10, 'Rembang'),
(386, 10, 'Salatiga'),
(398, 10, 'Semarang'),
(399, 10, 'Semarang'),
(427, 10, 'Sragen'),
(433, 10, 'Sukoharjo'),
(445, 10, 'Surakarta (Solo)'),
(472, 10, 'Tegal'),
(473, 10, 'Tegal'),
(476, 10, 'Temanggung'),
(497, 10, 'Wonogiri'),
(498, 10, 'Wonosobo'),
(31, 11, 'Bangkalan'),
(42, 11, 'Banyuwangi'),
(51, 11, 'Batu'),
(74, 11, 'Blitar'),
(75, 11, 'Blitar'),
(80, 11, 'Bojonegoro'),
(86, 11, 'Bondowoso'),
(133, 11, 'Gresik'),
(160, 11, 'Jember'),
(164, 11, 'Jombang'),
(178, 11, 'Kediri'),
(179, 11, 'Kediri'),
(222, 11, 'Lamongan'),
(243, 11, 'Lumajang'),
(247, 11, 'Madiun'),
(248, 11, 'Madiun'),
(251, 11, 'Magetan'),
(256, 11, 'Malang'),
(255, 11, 'Malang'),
(289, 11, 'Mojokerto'),
(290, 11, 'Mojokerto'),
(305, 11, 'Nganjuk'),
(306, 11, 'Ngawi'),
(317, 11, 'Pacitan'),
(330, 11, 'Pamekasan'),
(342, 11, 'Pasuruan'),
(343, 11, 'Pasuruan'),
(363, 11, 'Ponorogo'),
(369, 11, 'Probolinggo'),
(370, 11, 'Probolinggo'),
(390, 11, 'Sampang'),
(409, 11, 'Sidoarjo'),
(418, 11, 'Situbondo'),
(441, 11, 'Sumenep'),
(444, 11, 'Surabaya'),
(487, 11, 'Trenggalek'),
(489, 11, 'Tuban'),
(492, 11, 'Tulungagung'),
(61, 12, 'Bengkayang'),
(168, 12, 'Kapuas Hulu'),
(176, 12, 'Kayong Utara'),
(195, 12, 'Ketapang'),
(208, 12, 'Kubu Raya'),
(228, 12, 'Landak'),
(279, 12, 'Melawi'),
(364, 12, 'Pontianak'),
(365, 12, 'Pontianak'),
(388, 12, 'Sambas'),
(391, 12, 'Sanggau'),
(395, 12, 'Sekadau'),
(415, 12, 'Singkawang'),
(417, 12, 'Sintang'),
(18, 13, 'Balangan'),
(33, 13, 'Banjar'),
(35, 13, 'Banjarbaru'),
(36, 13, 'Banjarmasin'),
(43, 13, 'Barito Kuala'),
(143, 13, 'Hulu Sungai Selatan'),
(144, 13, 'Hulu Sungai Tengah'),
(145, 13, 'Hulu Sungai Utara'),
(203, 13, 'Kotabaru'),
(446, 13, 'Tabalong'),
(452, 13, 'Tanah Bumbu'),
(454, 13, 'Tanah Laut'),
(466, 13, 'Tapin'),
(44, 14, 'Barito Selatan'),
(45, 14, 'Barito Timur'),
(46, 14, 'Barito Utara'),
(136, 14, 'Gunung Mas'),
(167, 14, 'Kapuas'),
(174, 14, 'Katingan'),
(205, 14, 'Kotawaringin Barat'),
(206, 14, 'Kotawaringin Timur'),
(221, 14, 'Lamandau'),
(296, 14, 'Murung Raya'),
(326, 14, 'Palangka Raya'),
(371, 14, 'Pulang Pisau'),
(405, 14, 'Seruyan'),
(432, 14, 'Sukamara'),
(19, 15, 'Balikpapan'),
(66, 15, 'Berau'),
(89, 15, 'Bontang'),
(214, 15, 'Kutai Barat'),
(215, 15, 'Kutai Kartanegara'),
(216, 15, 'Kutai Timur'),
(341, 15, 'Paser'),
(354, 15, 'Penajam Paser Utara'),
(387, 15, 'Samarinda'),
(96, 16, 'Bulungan (Bulongan)'),
(257, 16, 'Malinau'),
(311, 16, 'Nunukan'),
(450, 16, 'Tana Tidung'),
(467, 16, 'Tarakan'),
(48, 17, 'Batam'),
(71, 17, 'Bintan'),
(172, 17, 'Karimun'),
(184, 17, 'Kepulauan Anambas'),
(237, 17, 'Lingga'),
(302, 17, 'Natuna'),
(462, 17, 'Tanjung Pinang'),
(21, 18, 'Bandar Lampung'),
(223, 18, 'Lampung Barat'),
(224, 18, 'Lampung Selatan'),
(225, 18, 'Lampung Tengah'),
(226, 18, 'Lampung Timur'),
(227, 18, 'Lampung Utara'),
(282, 18, 'Mesuji'),
(283, 18, 'Metro'),
(355, 18, 'Pesawaran'),
(356, 18, 'Pesisir Barat'),
(368, 18, 'Pringsewu'),
(458, 18, 'Tanggamus'),
(490, 18, 'Tulang Bawang'),
(491, 18, 'Tulang Bawang Barat'),
(496, 18, 'Way Kanan'),
(14, 19, 'Ambon'),
(99, 19, 'Buru'),
(100, 19, 'Buru Selatan'),
(185, 19, 'Kepulauan Aru'),
(258, 19, 'Maluku Barat Daya'),
(259, 19, 'Maluku Tengah'),
(260, 19, 'Maluku Tenggara'),
(261, 19, 'Maluku Tenggara Barat'),
(400, 19, 'Seram Bagian Barat'),
(401, 19, 'Seram Bagian Timur'),
(488, 19, 'Tual'),
(138, 20, 'Halmahera Barat'),
(139, 20, 'Halmahera Selatan'),
(140, 20, 'Halmahera Tengah'),
(141, 20, 'Halmahera Timur'),
(142, 20, 'Halmahera Utara'),
(191, 20, 'Kepulauan Sula'),
(372, 20, 'Pulau Morotai'),
(477, 20, 'Ternate'),
(478, 20, 'Tidore Kepulauan'),
(1, 21, 'Aceh Barat'),
(2, 21, 'Aceh Barat Daya'),
(3, 21, 'Aceh Besar'),
(4, 21, 'Aceh Jaya'),
(5, 21, 'Aceh Selatan'),
(6, 21, 'Aceh Singkil'),
(7, 21, 'Aceh Tamiang'),
(8, 21, 'Aceh Tengah'),
(9, 21, 'Aceh Tenggara'),
(10, 21, 'Aceh Timur'),
(11, 21, 'Aceh Utara'),
(20, 21, 'Banda Aceh'),
(59, 21, 'Bener Meriah'),
(72, 21, 'Bireuen'),
(127, 21, 'Gayo Lues'),
(230, 21, 'Langsa'),
(235, 21, 'Lhokseumawe'),
(300, 21, 'Nagan Raya'),
(358, 21, 'Pidie'),
(359, 21, 'Pidie Jaya'),
(384, 21, 'Sabang'),
(414, 21, 'Simeulue'),
(429, 21, 'Subulussalam'),
(68, 22, 'Bima'),
(69, 22, 'Bima'),
(118, 22, 'Dompu'),
(238, 22, 'Lombok Barat'),
(239, 22, 'Lombok Tengah'),
(240, 22, 'Lombok Timur'),
(241, 22, 'Lombok Utara'),
(276, 22, 'Mataram'),
(438, 22, 'Sumbawa'),
(439, 22, 'Sumbawa Barat'),
(13, 23, 'Alor'),
(58, 23, 'Belu'),
(122, 23, 'Ende'),
(125, 23, 'Flores Timur'),
(212, 23, 'Kupang'),
(213, 23, 'Kupang'),
(234, 23, 'Lembata'),
(269, 23, 'Manggarai'),
(270, 23, 'Manggarai Barat'),
(271, 23, 'Manggarai Timur'),
(301, 23, 'Nagekeo'),
(304, 23, 'Ngada'),
(383, 23, 'Rote Ndao'),
(385, 23, 'Sabu Raijua'),
(412, 23, 'Sikka'),
(434, 23, 'Sumba Barat'),
(435, 23, 'Sumba Barat Daya'),
(436, 23, 'Sumba Tengah'),
(437, 23, 'Sumba Timur'),
(479, 23, 'Timor Tengah Selatan'),
(480, 23, 'Timor Tengah Utara'),
(16, 24, 'Asmat'),
(67, 24, 'Biak Numfor'),
(90, 24, 'Boven Digoel'),
(111, 24, 'Deiyai (Deliyai)'),
(117, 24, 'Dogiyai'),
(150, 24, 'Intan Jaya'),
(157, 24, 'Jayapura'),
(158, 24, 'Jayapura'),
(159, 24, 'Jayawijaya'),
(180, 24, 'Keerom'),
(193, 24, 'Kepulauan Yapen (Yapen Waropen)'),
(231, 24, 'Lanny Jaya'),
(263, 24, 'Mamberamo Raya'),
(264, 24, 'Mamberamo Tengah'),
(274, 24, 'Mappi'),
(281, 24, 'Merauke'),
(284, 24, 'Mimika'),
(299, 24, 'Nabire'),
(303, 24, 'Nduga'),
(335, 24, 'Paniai'),
(347, 24, 'Pegunungan Bintang'),
(373, 24, 'Puncak'),
(374, 24, 'Puncak Jaya'),
(392, 24, 'Sarmi'),
(443, 24, 'Supiori'),
(484, 24, 'Tolikara'),
(495, 24, 'Waropen'),
(499, 24, 'Yahukimo'),
(500, 24, 'Yalimo'),
(124, 25, 'Fakfak'),
(165, 25, 'Kaimana'),
(272, 25, 'Manokwari'),
(273, 25, 'Manokwari Selatan'),
(277, 25, 'Maybrat'),
(346, 25, 'Pegunungan Arfak'),
(378, 25, 'Raja Ampat'),
(424, 25, 'Sorong'),
(425, 25, 'Sorong'),
(426, 25, 'Sorong Selatan'),
(449, 25, 'Tambrauw'),
(474, 25, 'Teluk Bintuni'),
(475, 25, 'Teluk Wondama'),
(60, 26, 'Bengkalis'),
(120, 26, 'Dumai'),
(147, 26, 'Indragiri Hilir'),
(148, 26, 'Indragiri Hulu'),
(166, 26, 'Kampar'),
(187, 26, 'Kepulauan Meranti'),
(207, 26, 'Kuantan Singingi'),
(350, 26, 'Pekanbaru'),
(351, 26, 'Pelalawan'),
(381, 26, 'Rokan Hilir'),
(382, 26, 'Rokan Hulu'),
(406, 26, 'Siak'),
(253, 27, 'Majene'),
(262, 27, 'Mamasa'),
(265, 27, 'Mamuju'),
(266, 27, 'Mamuju Utara'),
(362, 27, 'Polewali Mandar'),
(38, 28, 'Bantaeng'),
(47, 28, 'Barru'),
(87, 28, 'Bone'),
(95, 28, 'Bulukumba'),
(123, 28, 'Enrekang'),
(132, 28, 'Gowa'),
(162, 28, 'Jeneponto'),
(244, 28, 'Luwu'),
(245, 28, 'Luwu Timur'),
(246, 28, 'Luwu Utara'),
(254, 28, 'Makassar'),
(275, 28, 'Maros'),
(328, 28, 'Palopo'),
(333, 28, 'Pangkajene Kepulauan'),
(336, 28, 'Parepare'),
(360, 28, 'Pinrang'),
(396, 28, 'Selayar (Kepulauan Selayar)'),
(408, 28, 'Sidenreng Rappang/Rapang'),
(416, 28, 'Sinjai'),
(423, 28, 'Soppeng'),
(448, 28, 'Takalar'),
(451, 28, 'Tana Toraja'),
(486, 28, 'Toraja Utara'),
(493, 28, 'Wajo'),
(25, 29, 'Banggai'),
(26, 29, 'Banggai Kepulauan'),
(98, 29, 'Buol'),
(119, 29, 'Donggala'),
(291, 29, 'Morowali'),
(329, 29, 'Palu'),
(338, 29, 'Parigi Moutong'),
(366, 29, 'Poso'),
(410, 29, 'Sigi'),
(482, 29, 'Tojo Una-Una'),
(483, 29, 'Toli-Toli'),
(53, 30, 'Bau-Bau'),
(85, 30, 'Bombana'),
(101, 30, 'Buton'),
(102, 30, 'Buton Utara'),
(182, 30, 'Kendari'),
(198, 30, 'Kolaka'),
(199, 30, 'Kolaka Utara'),
(200, 30, 'Konawe'),
(201, 30, 'Konawe Selatan'),
(202, 30, 'Konawe Utara'),
(295, 30, 'Muna'),
(494, 30, 'Wakatobi'),
(73, 31, 'Bitung'),
(81, 31, 'Bolaang Mongondow (Bolmong)'),
(82, 31, 'Bolaang Mongondow Selatan'),
(83, 31, 'Bolaang Mongondow Timur'),
(84, 31, 'Bolaang Mongondow Utara'),
(188, 31, 'Kepulauan Sangihe'),
(190, 31, 'Kepulauan Siau Tagulandang Biaro (Sitaro)'),
(192, 31, 'Kepulauan Talaud'),
(204, 31, 'Kotamobagu'),
(267, 31, 'Manado'),
(285, 31, 'Minahasa'),
(286, 31, 'Minahasa Selatan'),
(287, 31, 'Minahasa Tenggara'),
(288, 31, 'Minahasa Utara'),
(485, 31, 'Tomohon'),
(12, 32, 'Agam'),
(93, 32, 'Bukittinggi'),
(116, 32, 'Dharmasraya'),
(186, 32, 'Kepulauan Mentawai'),
(236, 32, 'Lima Puluh Koto/Kota'),
(318, 32, 'Padang'),
(321, 32, 'Padang Panjang'),
(322, 32, 'Padang Pariaman'),
(337, 32, 'Pariaman'),
(339, 32, 'Pasaman'),
(340, 32, 'Pasaman Barat'),
(345, 32, 'Payakumbuh'),
(357, 32, 'Pesisir Selatan'),
(394, 32, 'Sawah Lunto'),
(411, 32, 'Sijunjung (Sawah Lunto Sijunjung)'),
(420, 32, 'Solok'),
(421, 32, 'Solok'),
(422, 32, 'Solok Selatan'),
(453, 32, 'Tanah Datar'),
(40, 33, 'Banyuasin'),
(121, 33, 'Empat Lawang'),
(220, 33, 'Lahat'),
(242, 33, 'Lubuk Linggau'),
(292, 33, 'Muara Enim'),
(297, 33, 'Musi Banyuasin'),
(298, 33, 'Musi Rawas'),
(312, 33, 'Ogan Ilir'),
(313, 33, 'Ogan Komering Ilir'),
(314, 33, 'Ogan Komering Ulu'),
(315, 33, 'Ogan Komering Ulu Selatan'),
(316, 33, 'Ogan Komering Ulu Timur'),
(324, 33, 'Pagar Alam'),
(327, 33, 'Palembang'),
(367, 33, 'Prabumulih'),
(15, 34, 'Asahan'),
(52, 34, 'Batu Bara'),
(70, 34, 'Binjai'),
(110, 34, 'Dairi'),
(112, 34, 'Deli Serdang'),
(137, 34, 'Gunungsitoli'),
(146, 34, 'Humbang Hasundutan'),
(173, 34, 'Karo'),
(217, 34, 'Labuhan Batu'),
(218, 34, 'Labuhan Batu Selatan'),
(219, 34, 'Labuhan Batu Utara'),
(229, 34, 'Langkat'),
(268, 34, 'Mandailing Natal'),
(278, 34, 'Medan'),
(307, 34, 'Nias'),
(308, 34, 'Nias Barat'),
(309, 34, 'Nias Selatan'),
(310, 34, 'Nias Utara'),
(319, 34, 'Padang Lawas'),
(320, 34, 'Padang Lawas Utara'),
(323, 34, 'Padang Sidempuan'),
(325, 34, 'Pakpak Bharat'),
(353, 34, 'Pematang Siantar'),
(389, 34, 'Samosir'),
(404, 34, 'Serdang Bedagai'),
(407, 34, 'Sibolga'),
(413, 34, 'Simalungun'),
(459, 34, 'Tanjung Balai'),
(463, 34, 'Tapanuli Selatan'),
(464, 34, 'Tapanuli Tengah'),
(465, 34, 'Tapanuli Utara'),
(470, 34, 'Tebing Tinggi'),
(481, 34, 'Toba Samosir');

-- --------------------------------------------------------

--
-- Struktur dari tabel `rb_pembayaran_bonus`
--

CREATE TABLE `rb_pembayaran_bonus` (
  `id_pembayaran_bonus` int(10) NOT NULL,
  `username` varchar(60) NOT NULL,
  `nominal_bayar` int(10) NOT NULL,
  `waktu_bayar` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `rb_pembayaran_bonus`
--

INSERT INTO `rb_pembayaran_bonus` (`id_pembayaran_bonus`, `username`, `nominal_bayar`, `waktu_bayar`) VALUES
(1, 'arsenio', 50000, '2017-04-11'),
(2, 'robby', 70000, '2017-04-11');

-- --------------------------------------------------------

--
-- Struktur dari tabel `rb_pembelian`
--

CREATE TABLE `rb_pembelian` (
  `id_pembelian` int(11) NOT NULL,
  `kode_pembelian` varchar(50) NOT NULL,
  `id_supplier` int(11) NOT NULL,
  `waktu_beli` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `rb_pembelian`
--

INSERT INTO `rb_pembelian` (`id_pembelian`, `kode_pembelian`, `id_supplier`, `waktu_beli`) VALUES
(1, 'PO-0001', 1, '2017-05-23 10:13:05'),
(2, 'PO-0002', 2, '2017-05-24 07:05:11'),
(3, 'PO-0003', 1, '2017-05-27 14:58:50'),
(5, 'PO-0004', 1, '2017-05-30 09:30:02'),
(6, 'PO-0005', 1, '2017-06-01 10:29:39'),
(8, 'PO-0006', 1, '2019-02-20 07:44:57'),
(9, 'PO-20190321100135', 2, '2019-03-21 10:01:41');

-- --------------------------------------------------------

--
-- Struktur dari tabel `rb_pembelian_detail`
--

CREATE TABLE `rb_pembelian_detail` (
  `id_pembelian_detail` int(11) NOT NULL,
  `id_pembelian` int(11) NOT NULL,
  `id_produk` int(11) NOT NULL,
  `harga_pesan` int(11) NOT NULL,
  `jumlah_pesan` int(11) NOT NULL,
  `satuan` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `rb_pembelian_detail`
--

INSERT INTO `rb_pembelian_detail` (`id_pembelian_detail`, `id_pembelian`, `id_produk`, `harga_pesan`, `jumlah_pesan`, `satuan`) VALUES
(1, 1, 1, 260000, 100, 'pcs'),
(2, 1, 2, 455000, 150, 'pcs'),
(3, 2, 1, 255000, 235, 'pcs'),
(5, 2, 2, 3000000, 58, 'pcs'),
(9, 3, 1, 600000, 3, 'pcs'),
(7, 3, 2, 3000000, 43, 'pcs'),
(12, 5, 6, 320000, 25, 'unit'),
(13, 5, 5, 6990000, 10, 'unit'),
(14, 5, 4, 1000000, 45, 'unit'),
(16, 6, 13, 45900, 16, 'pcs'),
(17, 6, 12, 490000, 12, 'unit'),
(18, 6, 11, 8299000, 10, 'pcs'),
(19, 6, 9, 584000, 15, 'unit'),
(20, 6, 8, 275000, 6, 'unit'),
(21, 6, 7, 879000, 11, 'unit'),
(22, 6, 3, 14998000, 1, 'unit'),
(23, 6, 0, 0, 0, ''),
(26, 8, 13, 55000, 8, 'pcs'),
(27, 9, 13, 55000, 13, 'pcs');

-- --------------------------------------------------------

--
-- Struktur dari tabel `rb_pencairan_bonus`
--

CREATE TABLE `rb_pencairan_bonus` (
  `id_pencairan_bonus` int(11) NOT NULL,
  `id_reseller` int(11) NOT NULL,
  `bonus_referral` int(11) NOT NULL,
  `waktu_pencairan` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `rb_pencairan_bonus`
--

INSERT INTO `rb_pencairan_bonus` (`id_pencairan_bonus`, `id_reseller`, `bonus_referral`, `waktu_pencairan`) VALUES
(2, 1, 20000, '2017-06-04 13:39:15'),
(4, 1, 24450, '2019-03-22 08:18:17');

-- --------------------------------------------------------

--
-- Struktur dari tabel `rb_pencairan_reward`
--

CREATE TABLE `rb_pencairan_reward` (
  `id_pencairan_reward` int(11) NOT NULL,
  `id_reseller` int(11) NOT NULL,
  `id_reward` int(11) NOT NULL,
  `reward_date` varchar(10) NOT NULL,
  `waktu_pencairan` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `rb_pencairan_reward`
--

INSERT INTO `rb_pencairan_reward` (`id_pencairan_reward`, `id_reseller`, `id_reward`, `reward_date`, `waktu_pencairan`) VALUES
(5, 2, 1, '2019-03', '2019-03-22 09:12:01');

-- --------------------------------------------------------

--
-- Struktur dari tabel `rb_penjualan`
--

CREATE TABLE `rb_penjualan` (
  `id_penjualan` int(11) NOT NULL,
  `kode_transaksi` varchar(50) NOT NULL,
  `id_pembeli` int(11) NOT NULL,
  `id_penjual` int(11) NOT NULL DEFAULT 0,
  `status_pembeli` enum('reseller','konsumen') NOT NULL,
  `status_penjual` enum('admin','reseller') NOT NULL,
  `kurir` varchar(255) NOT NULL,
  `service` varchar(255) NOT NULL,
  `ongkir` int(11) NOT NULL,
  `waktu_transaksi` datetime NOT NULL,
  `proses` enum('0','1','2') NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `rb_penjualan`
--

INSERT INTO `rb_penjualan` (`id_penjualan`, `kode_transaksi`, `id_pembeli`, `id_penjual`, `status_pembeli`, `status_penjual`, `kurir`, `service`, `ongkir`, `waktu_transaksi`, `proses`) VALUES
(2, 'TRX-0002', 2, 1, 'reseller', 'admin', '', '', 0, '2017-05-28 08:23:40', '1'),
(3, 'TRX-0003', 3, 1, 'reseller', 'admin', '', '', 0, '2017-05-28 09:00:33', '0'),
(4, 'TRX-0004', 2, 1, 'reseller', 'admin', '', '', 0, '2017-05-30 10:50:55', '1'),
(12, 'TRX-20170531115350', 1, 1, 'konsumen', 'reseller', '', '', 0, '2017-05-31 11:53:50', '0'),
(14, 'TRX-20170601121916', 2, 1, 'reseller', 'admin', '', '', 0, '2017-06-01 12:19:16', '1'),
(15, 'TRX-20170601171840', 2, 1, 'reseller', 'admin', '', '', 0, '2017-06-01 17:18:40', '0'),
(20, 'TRX-20170602152730', 1, 1, 'konsumen', 'reseller', '', '', 0, '2017-06-02 15:27:30', '0'),
(73, 'TRX-20190216111223', 1, 2, 'konsumen', 'reseller', 'pos', 'Express Next Day Barang', 17000, '2019-02-16 11:12:51', '0'),
(74, 'TRX-20190216112320', 1, 2, 'konsumen', 'reseller', 'jne', 'YES', 17000, '2019-02-16 11:23:38', '0'),
(42, 'TRX-20170604112343', 3, 1, 'reseller', 'admin', '', '', 0, '2017-06-04 11:23:47', '1'),
(43, 'TRX-20170604112516', 3, 3, 'konsumen', 'reseller', '', '', 0, '2017-06-04 11:25:16', '1'),
(75, 'TRX-20190220070740', 2, 1, 'reseller', 'admin', '', 'Stok Otomatis (Pribadi)', 0, '2019-02-20 07:07:40', '1'),
(76, 'TRX-20190220070746', 2, 1, 'reseller', 'admin', '', 'Stok Otomatis (Pribadi)', 0, '2019-02-20 07:07:46', '1'),
(77, 'TRX-20190220072137', 2, 1, 'reseller', 'admin', '', '', 0, '2019-02-20 07:21:37', '1'),
(53, 'TRX-20180725083202', 1, 2, 'konsumen', 'reseller', 'pos', 'Paket Kilat Khusus', 76500, '2018-07-25 08:32:02', '0'),
(79, 'TRX-20190223150806', 1, 2, 'konsumen', 'reseller', 'pos', 'Express Next Day Barang', 34000, '2019-02-23 15:08:06', '1'),
(58, 'TRX-20180912144318', 2, 1, 'reseller', 'admin', '', '', 0, '2018-09-12 14:43:18', '2'),
(61, 'TRX-20181223070005', 1, 2, 'konsumen', 'reseller', 'tiki', 'ONS', 10000, '2018-12-23 07:00:16', '2'),
(62, 'TRX-20181223080117', 1, 2, 'konsumen', 'reseller', 'pos', 'Paket Kilat Khusus', 8000, '2018-12-23 08:01:17', '0'),
(63, 'TRX-20181223080145', 26, 2, 'konsumen', 'reseller', 'tiki', 'ONS', 17000, '2018-12-23 08:09:17', '0'),
(67, 'TRX-20181226072823', 2, 1, 'reseller', 'admin', '', '', 0, '2018-12-26 07:28:23', '0'),
(68, 'TRX-20181226073542', 2, 1, 'reseller', 'admin', '', '', 0, '2018-12-26 07:35:42', '2'),
(81, 'TRX-20190321080106', 2, 1, 'reseller', 'admin', '', 'TRX-20190220072137', 0, '2019-03-21 08:01:06', '1'),
(91, 'TRX-20190322062742', 1, 1, 'reseller', 'admin', '', '', 0, '2019-03-22 06:27:42', '1'),
(82, 'TRX-20190321114415', 2, 1, 'reseller', 'admin', '', '', 0, '2019-03-21 11:44:15', '1'),
(83, 'TRX-20190321115249', 2, 1, 'reseller', 'admin', '', 'TRX-20190321114415', 0, '2019-03-21 11:52:49', '1'),
(85, 'TRX-20190321120328', 1, 2, 'konsumen', 'reseller', 'jne', 'YES', 17000, '2019-03-21 12:03:28', '1'),
(86, 'TRX-20190321120745', 1, 2, 'konsumen', 'reseller', 'pos', 'Paket Kilat Khusus', 11000, '2019-03-21 12:07:45', '1'),
(87, 'TRX-20190321121109', 2, 2, 'konsumen', 'reseller', 'pos', 'Express Next Day Barang', 17000, '2019-03-21 12:11:09', '2'),
(88, 'TRX-20190322062417', 1, 1, 'reseller', 'admin', '', 'Stok Otomatis (Pribadi)', 0, '2019-03-22 06:24:17', '1'),
(89, 'TRX-20190322062422', 1, 1, 'reseller', 'admin', '', 'Stok Otomatis (Pribadi)', 0, '2019-03-22 06:24:22', '1'),
(90, 'TRX-20190322062426', 1, 1, 'reseller', 'admin', '', 'Stok Otomatis (Pribadi)', 0, '2019-03-22 06:24:26', '1'),
(92, 'TRX-20190322063729', 1, 1, 'reseller', 'admin', '', 'TRX-20190322062742', 0, '2019-03-22 06:37:29', '1'),
(93, 'TRX-20190322063829', 1, 1, 'reseller', 'admin', '', '', 0, '2019-03-22 06:38:29', '1'),
(94, 'TRX-20190322063914', 1, 1, 'reseller', 'admin', '', 'TRX-20190322063829', 0, '2019-03-22 06:39:14', '1'),
(95, 'TRX-20190324101735', 3, 1, 'reseller', 'admin', '', 'Stok Otomatis (Pribadi)', 0, '2019-03-24 10:17:35', '1'),
(96, 'TRX-20190324101739', 3, 1, 'reseller', 'admin', '', 'Stok Otomatis (Pribadi)', 0, '2019-03-24 10:17:39', '1'),
(97, 'TRX-20190324101743', 3, 1, 'reseller', 'admin', '', 'Stok Otomatis (Pribadi)', 0, '2019-03-24 10:17:43', '1'),
(98, 'TRX-20190324101747', 3, 1, 'reseller', 'admin', '', 'Stok Otomatis (Pribadi)', 0, '2019-03-24 10:17:47', '1'),
(99, 'TRX-20190324101751', 3, 1, 'reseller', 'admin', '', 'Stok Otomatis (Pribadi)', 0, '2019-03-24 10:17:51', '1'),
(100, 'TRX-20190324110240', 1, 1, 'konsumen', 'reseller', '', '', 0, '2019-03-24 11:16:41', '0'),
(101, 'TRX-20190325103704', 1, 2, 'konsumen', 'reseller', 'pos', 'Express Next Day Barang', 17000, '2019-03-25 10:38:02', '0'),
(105, 'TRX-20190703062416', 1, 1, 'konsumen', 'reseller', 'pos', 'Express Sameday Barang', 18000, '2019-07-03 06:24:16', '0'),
(106, 'TRX-20190703074508', 1, 2, 'konsumen', 'reseller', 'pos', 'Express Next Day Barang', 17000, '2019-07-03 07:45:08', '2'),
(107, 'TRX-20190817071150', 1, 3, 'konsumen', 'reseller', '', '', 0, '2019-08-17 07:11:50', '0'),
(108, 'TRX-20190831204112', 1, 3, 'konsumen', 'reseller', 'tiki', 'REG', 216000, '2019-08-31 20:41:12', '0'),
(109, 'TRX-20190901064338', 1, 1, 'konsumen', 'reseller', '', '', 0, '2019-09-01 06:52:03', '0'),
(110, 'TRX-20191203113328', 1, 2, 'konsumen', 'reseller', '', '', 0, '2019-12-03 11:33:40', '0'),
(111, 'TRX-20191203113402', 1, 2, 'konsumen', 'reseller', 'pos', 'Paket Kilat Khusus', 11000, '2019-12-03 11:34:02', '1'),
(112, 'TRX-20191203114327', 1, 2, 'konsumen', 'reseller', 'pos', 'Express Next Day Barang', 17000, '2019-12-03 11:43:27', '1'),
(118, 'TRX-20200628084703', 1, 1, 'reseller', 'admin', '', 'TRX-20200628084041', 0, '2020-06-28 08:47:03', '1'),
(114, 'TRX-20200612101356', 1, 2, 'konsumen', 'reseller', 'jne', 'REG', 11000, '2020-06-12 10:16:06', '0'),
(115, 'TRX-20200625165712', 1, 3, 'konsumen', 'reseller', 'tiki', 'ECO', 50000, '2020-06-25 16:57:12', '0'),
(116, 'TRX-20200625165750', 1, 3, 'konsumen', 'reseller', '', '', 0, '2020-06-25 16:57:50', '0'),
(117, 'TRX-20200628084041', 1, 1, 'reseller', 'admin', '', '', 0, '2020-06-28 08:40:41', '1'),
(119, 'TRX-20200628084811', 1, 1, 'reseller', 'admin', '', '', 0, '2020-06-28 08:48:11', '1'),
(120, 'TRX-20200628084830', 1, 1, 'reseller', 'admin', '', 'TRX-20200628084811', 0, '2020-06-28 08:48:30', '1'),
(121, 'TRX-20200703172915', 1, 2, 'konsumen', 'reseller', '', '', 0, '2020-07-03 17:29:29', '0'),
(125, 'TRX-20200707133923', 1, 2, 'konsumen', 'reseller', 'cod', 'Cash on delivery', 500, '2020-07-07 13:39:23', '0'),
(128, 'TRX-20200707135033', 1, 2, 'konsumen', 'reseller', 'jne', 'YES', 10000, '2020-07-07 13:50:33', '0'),
(129, 'TRX-20200707140121', 1, 2, 'konsumen', 'reseller', '', '', 0, '2020-07-07 14:01:42', '0'),
(130, 'TRX-20220713015105', 2, 1, 'reseller', 'admin', '', 'Stok Otomatis (Pribadi)', 0, '2022-07-13 01:51:05', '1');

-- --------------------------------------------------------

--
-- Struktur dari tabel `rb_penjualan_detail`
--

CREATE TABLE `rb_penjualan_detail` (
  `id_penjualan_detail` int(11) NOT NULL,
  `id_penjualan` int(11) NOT NULL,
  `id_produk` int(11) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `diskon` int(11) NOT NULL,
  `harga_jual` int(11) NOT NULL,
  `satuan` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `rb_penjualan_detail`
--

INSERT INTO `rb_penjualan_detail` (`id_penjualan_detail`, `id_penjualan`, `id_produk`, `jumlah`, `diskon`, `harga_jual`, `satuan`) VALUES
(159, 92, 20, 7, 0, 57000, 'pcs'),
(158, 91, 13, 7, 0, 57000, 'pcs'),
(3, 2, 2, 3, 50000, 3200000, 'pcs'),
(5, 2, 1, 1, 0, 650000, 'pcs'),
(7, 3, 1, 2, 0, 650000, 'pcs'),
(8, 3, 2, 50, 120000, 3200000, 'pcs'),
(9, 4, 11, 5, 0, 8500000, 'pcs'),
(10, 4, 12, 10, 0, 500000, 'unit'),
(11, 4, 13, 15, 0, 55000, 'pcs'),
(12, 4, 9, 12, 0, 625000, 'unit'),
(13, 4, 8, 3, 0, 300000, 'unit'),
(14, 4, 7, 7, 0, 900000, 'unit'),
(15, 4, 6, 1, 0, 330000, 'unit'),
(16, 4, 5, 8, 0, 7100000, 'unit'),
(29, 10, 13, 1, 0, 65000, 'pcs'),
(126, 69, 1, 1, 0, 70000, 'pcs'),
(30, 10, 2, 1, 0, 3500000, 'pcs'),
(138, 75, 14, 10, 0, 95000, 'pcs'),
(32, 12, 2, 1, 0, 3500000, 'pcs'),
(33, 12, 1, 1, 0, 700000, 'pcs'),
(37, 14, 13, 5, 0, 55000, 'pcs'),
(38, 14, 4, 3, 0, 1110000, 'unit'),
(40, 15, 9, 2, 50000, 625000, 'unit'),
(41, 15, 12, 3, 0, 500000, 'unit'),
(127, 69, 8, 2, 0, 34500, 'unit'),
(137, 74, 1, 1, 0, 70000, 'pcs'),
(46, 19, 12, 1, 0, 608000, 'unit'),
(47, 19, 9, 1, 0, 670000, 'unit'),
(48, 20, 2, 1, 0, 3500000, 'pcs'),
(139, 76, 14, 2, 0, 95000, 'pcs'),
(136, 74, 13, 1, 0, 57000, 'pcs'),
(135, 73, 13, 1, 0, 57000, 'pcs'),
(134, 73, 1, 1, 0, 70000, 'pcs'),
(81, 43, 4, 1, 0, 1299000, 'unit'),
(79, 42, 2, 5, 0, 3200000, 'pcs'),
(80, 42, 4, 7, 0, 1110000, 'unit'),
(82, 43, 2, 1, 0, 3500000, 'pcs'),
(141, 78, 5, 1, 0, 755000, 'unit'),
(140, 77, 13, 10, 0, 60000, 'pcs'),
(142, 78, 14, 1, 0, 100000, 'pcs'),
(143, 79, 14, 1, 0, 100000, 'pcs'),
(144, 79, 4, 1, 0, 40900, 'unit'),
(95, 53, 13, 1, 0, 60000, 'pcs'),
(96, 53, 8, 1, 0, 345000, 'unit'),
(145, 79, 7, 1, 0, 89000, 'unit'),
(146, 79, 12, 1, 0, 23000, 'unit'),
(147, 80, 16, 4, 0, 0, 'asd'),
(103, 58, 6, 10, 0, 70000, 'unit'),
(111, 61, 13, 1, 0, 60000, 'pcs'),
(112, 61, 4, 1, 0, 40900, 'unit'),
(113, 62, 5, 1, 0, 755000, 'unit'),
(114, 63, 1, 1, 0, 70000, 'pcs'),
(115, 63, 12, 1, 0, 23000, 'unit'),
(123, 68, 3, 5, 0, 164980, 'unit'),
(122, 67, 4, 1, 0, 124900, 'unit'),
(124, 68, 9, 8, 0, 63500, 'unit'),
(148, 81, 17, 10, 0, 60000, 'pcs'),
(149, 82, 18, 5, 0, 720000, 'Unit'),
(150, 83, 19, 5, 0, 720000, 'Unit'),
(152, 85, 19, 1, 0, 759000, 'Unit'),
(153, 86, 17, 2, 0, 65000, 'pcs'),
(154, 87, 17, 1, 0, 65000, 'pcs'),
(155, 88, 12, 5, 0, 0, 'unit'),
(156, 89, 11, 10, 0, 0, 'pcs'),
(157, 90, 10, 3, 0, 0, 'pcs'),
(160, 93, 13, 3, 0, 57000, 'pcs'),
(161, 94, 20, 3, 0, 57000, 'pcs'),
(162, 95, 26, 5, 0, 34750000, 'Unit'),
(163, 96, 25, 6, 0, 21449000, 'Unit'),
(164, 97, 24, 2, 0, 21465000, 'Unit'),
(165, 98, 23, 1, 0, 31520000, 'Unit'),
(166, 99, 21, 12, 0, 13000000, 'Unit'),
(167, 100, 12, 1, 0, 66000, 'unit'),
(168, 101, 9, 1, 15000, 68500, 'unit'),
(172, 105, 11, 1, 0, 89000, 'pcs'),
(173, 106, 19, 1, 0, 759000, 'Unit'),
(174, 107, 25, 1, 0, 22449000, 'Unit'),
(175, 107, 21, 2, 0, 16500000, 'Unit'),
(176, 108, 26, 2, 0, 35750000, 'Unit'),
(177, 108, 21, 1, 0, 16500000, 'Unit'),
(178, 109, 11, 1, 0, 89000, 'pcs'),
(179, 109, 10, 1, 0, 59900, 'pcs'),
(180, 109, 12, 2, 0, 66000, 'unit'),
(181, 111, 19, 1, 0, 759000, 'Unit'),
(182, 112, 19, 1, 0, 759000, 'Unit'),
(188, 118, 20, 2, 0, 57000, 'pcs'),
(184, 114, 14, 1, 0, 100000, 'pcs'),
(185, 115, 26, 1, 0, 35750000, 'Unit'),
(186, 116, 25, 1, 0, 22449000, 'Unit'),
(187, 117, 13, 2, 0, 57000, 'pcs'),
(189, 119, 18, 4, 0, 720000, 'Unit'),
(190, 120, 28, 4, 0, 720000, 'Unit'),
(191, 121, 14, 1, 0, 100000, 'pcs'),
(195, 125, 14, 1, 0, 100000, 'pcs'),
(198, 128, 14, 1, 0, 100000, 'pcs'),
(199, 129, 14, 1, 0, 100000, 'pcs'),
(200, 130, 29, 10, 0, 0, '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `rb_penjualan_temp`
--

CREATE TABLE `rb_penjualan_temp` (
  `id_penjualan_detail` int(11) NOT NULL,
  `session` varchar(50) NOT NULL,
  `id_produk` int(11) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `diskon` int(11) DEFAULT NULL,
  `harga_jual` int(11) NOT NULL,
  `satuan` varchar(50) NOT NULL,
  `waktu_order` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `rb_penjualan_temp`
--

INSERT INTO `rb_penjualan_temp` (`id_penjualan_detail`, `session`, `id_produk`, `jumlah`, `diskon`, `harga_jual`, `satuan`, `waktu_order`) VALUES
(7, 'TRX-20180812160418', 13, 1, 0, 60000, 'pcs', '2018-08-12 16:04:18'),
(8, 'TRX-20180812163525', 11, 1, 0, 8900000, 'pcs', '2018-08-12 16:35:25'),
(10, 'TRX-20180911095555', 6, 1, 0, 75000, 'unit', '2018-09-11 09:55:55'),
(11, 'TRX-20180911104512', 13, 1, 0, 60000, 'pcs', '2018-09-11 10:45:12'),
(12, 'TRX-20180911113613', 8, 1, 0, 34500, 'unit', '2018-09-11 11:36:13'),
(13, 'TRX-20180911114335', 5, 1, 0, 755000, 'unit', '2018-09-11 11:43:35'),
(14, 'TRX-20180911114532', 6, 1, 0, 75000, 'unit', '2018-09-11 11:45:32'),
(15, 'TRX-20180911120326', 5, 1, 0, 755000, 'unit', '2018-09-11 12:03:26'),
(16, 'TRX-20180912152157', 6, 1, 0, 75000, 'unit', '2018-09-12 15:21:57'),
(17, 'TRX-20180912182409', 7, 1, 0, 89000, 'unit', '2018-09-12 18:24:09'),
(18, 'TRX-20181221080543', 5, 1, 0, 755000, 'unit', '2018-12-21 08:05:43'),
(20, 'TRX-20181221080543', 12, 1, 0, 23000, 'unit', '2018-12-21 08:21:19'),
(21, 'TRX-20181222101726', 5, 1, 0, 755000, 'unit', '2018-12-22 10:17:26'),
(22, 'TRX-20181222101726', 11, 1, 0, 89000, 'pcs', '2018-12-22 10:17:44'),
(23, 'TRX-20181222101726', 4, 1, 0, 40900, 'unit', '2018-12-22 10:23:08'),
(33, 'TRX-20190203063622', 9, 1, 0, 53500, 'unit', '2019-02-03 06:36:22'),
(31, 'TRX-20181226094641', 13, 1, 0, 57000, 'pcs', '2018-12-26 09:46:41'),
(43, 'TRX-20190324190938', 14, 1, 0, 100000, 'pcs', '2019-03-24 19:09:38'),
(48, 'TRX-20190326080841', 14, 1, 0, 100000, 'pcs', '2019-03-26 08:08:41'),
(49, 'TRX-20190326150117', 14, 1, 0, 100000, 'pcs', '2019-03-26 15:01:17'),
(54, 'TRX-20191203113328', 19, 1, NULL, 759000, 'Unit', '2019-12-03 11:33:28'),
(55, 'TRX-20191221134255', 25, 1, 0, 22449000, 'Unit', '2019-12-21 13:42:55');

-- --------------------------------------------------------

--
-- Struktur dari tabel `rb_produk`
--

CREATE TABLE `rb_produk` (
  `id_produk` int(11) NOT NULL,
  `id_produk_perusahaan` int(11) NOT NULL,
  `id_kategori_produk` int(11) NOT NULL,
  `id_kategori_produk_sub` int(11) NOT NULL,
  `id_reseller` int(11) NOT NULL,
  `nama_produk` varchar(255) NOT NULL,
  `produk_seo` varchar(255) NOT NULL,
  `satuan` varchar(50) NOT NULL,
  `harga_beli` int(11) NOT NULL,
  `harga_reseller` int(11) NOT NULL,
  `harga_konsumen` int(11) NOT NULL,
  `berat` varchar(50) NOT NULL,
  `gambar` varchar(255) NOT NULL,
  `keterangan` text NOT NULL,
  `username` varchar(50) DEFAULT NULL,
  `waktu_input` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `rb_produk`
--

INSERT INTO `rb_produk` (`id_produk`, `id_produk_perusahaan`, `id_kategori_produk`, `id_kategori_produk_sub`, `id_reseller`, `nama_produk`, `produk_seo`, `satuan`, `harga_beli`, `harga_reseller`, `harga_konsumen`, `berat`, `gambar`, `keterangan`, `username`, `waktu_input`) VALUES
(1, 0, 2, 2, 2, 'Segitiga Instan Aira- AA94.9 Tropical Blue', 'segitiga-instan-aira-aa949-tropical-blue', 'pcs', 60000, 0, 70000, '300', 'RYB6_1_Grey_grande.jpg', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec scelerisque condimentum mattis. Suspendisse potenti. Proin vitae elementum nisi. Aliquam eu pretium risus. Nam varius efficitur consectetur. Aenean vestibulum felis sed mollis faucibus. Interdum et malesuada fames ac ante ipsum primis in faucibus. Proin venenatis est sit amet eleifend vehicula. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer id nunc eu odio ultrices pulvinar non feugiat felis. Duis consequat urna sapien, porta gravida diam venenatis at. Duis at ornare enim, ac accumsan eros. Sed in finibus metus. Etiam blandit tristique orci, sit amet congue dui facilisis id. Donec fermentum diam at orci viverra placerat. Sed nunc lorem, cursus nec vestibulum hendrerit, tempus et libero.</p>\r\n\r\n<p>Donec consequat lacinia fringilla. Proin dapibus justo at elit iaculis, eu rutrum velit dapibus. Phasellus nec augue vel nisl sagittis malesuada vel vel orci. In in euismod massa. Praesent vel blandit arcu. Maecenas eleifend dui in est rhoncus, mattis sollicitudin augue semper. Donec a lectus rhoncus, ornare nunc rutrum, egestas arcu. Aenean dapibus urna non nisl dignissim volutpat.</p>\r\n', 'admin', '2017-05-23 17:04:25'),
(2, 0, 2, 1, 2, 'Segitiga Instan Aira- AA94.8 Minty Green', 'segitiga-instan-aira-aa94-8-minty-green', 'pcs', 340000, 0, 350000, '500', 'RV71_27_Jeans_grande.jpg', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec scelerisque condimentum mattis. Suspendisse potenti. Proin vitae elementum nisi. Aliquam eu pretium risus. Nam varius efficitur consectetur. Aenean vestibulum felis sed mollis faucibus. Interdum et malesuada fames ac ante ipsum primis in faucibus. Proin venenatis est sit amet eleifend vehicula. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer id nunc eu odio ultrices pulvinar non feugiat felis. Duis consequat urna sapien, porta gravida diam venenatis at. Duis at ornare enim, ac accumsan eros. Sed in finibus metus. Etiam blandit tristique orci, sit amet congue dui facilisis id. Donec fermentum diam at orci viverra placerat. Sed nunc lorem, cursus nec vestibulum hendrerit, tempus et libero.</p>\r\n\r\n<p>Donec consequat lacinia fringilla. Proin dapibus justo at elit iaculis, eu rutrum velit dapibus. Phasellus nec augue vel nisl sagittis malesuada vel vel orci. In in euismod massa. Praesent vel blandit arcu. Maecenas eleifend dui in est rhoncus, mattis sollicitudin augue semper. Donec a lectus rhoncus, ornare nunc rutrum, egestas arcu. Aenean dapibus urna non nisl dignissim volutpat.</p>\r\n', 'admin', '2017-05-23 17:10:17'),
(3, 0, 2, 2, 2, 'Segitiga Instan KEINA - KN54.38 Delfine Lilac', 'segitiga-instan-keina--kn5438-delfine-lilac', 'unit', 159980, 0, 169980, '300', 'RV71_5_Cold_Ocean_grande.jpg', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec scelerisque condimentum mattis. Suspendisse potenti. Proin vitae elementum nisi. Aliquam eu pretium risus. Nam varius efficitur consectetur. Aenean vestibulum felis sed mollis faucibus. Interdum et malesuada fames ac ante ipsum primis in faucibus. Proin venenatis est sit amet eleifend vehicula. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer id nunc eu odio ultrices pulvinar non feugiat felis. Duis consequat urna sapien, porta gravida diam venenatis at. Duis at ornare enim, ac accumsan eros. Sed in finibus metus. Etiam blandit tristique orci, sit amet congue dui facilisis id. Donec fermentum diam at orci viverra placerat. Sed nunc lorem, cursus nec vestibulum hendrerit, tempus et libero.</p>\r\n\r\n<p>Donec consequat lacinia fringilla. Proin dapibus justo at elit iaculis, eu rutrum velit dapibus. Phasellus nec augue vel nisl sagittis malesuada vel vel orci. In in euismod massa. Praesent vel blandit arcu. Maecenas eleifend dui in est rhoncus, mattis sollicitudin augue semper. Donec a lectus rhoncus, ornare nunc rutrum, egestas arcu. Aenean dapibus urna non nisl dignissim volutpat.</p>\r\n', 'admin', '2017-05-30 06:47:14'),
(4, 0, 2, 1, 2, 'Segitiga Instan Madeira - MDB5.3 Sunset', 'segitiga-instan-madeira--mdb53-sunset', 'unit', 119900, 0, 129900, '100', '22.png;c4_grande1.jpg;AR91_95_Sheva_Maroon_1_grande1.png;MK97_7_Mocca_grande1.jpg;Emily_Grey_grande.jpg', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec scelerisque condimentum mattis. Suspendisse potenti. Proin vitae elementum nisi. Aliquam eu pretium risus. Nam varius efficitur consectetur. Aenean vestibulum felis sed mollis faucibus. Interdum et malesuada fames ac ante ipsum primis in faucibus. Proin venenatis est sit amet eleifend vehicula. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer id nunc eu odio ultrices pulvinar non feugiat felis. Duis consequat urna sapien, porta gravida diam venenatis at. Duis at ornare enim, ac accumsan eros. Sed in finibus metus. Etiam blandit tristique orci, sit amet congue dui facilisis id. Donec fermentum diam at orci viverra placerat. Sed nunc lorem, cursus nec vestibulum hendrerit, tempus et libero.</p>\r\n\r\n<p>Donec consequat lacinia fringilla. Proin dapibus justo at elit iaculis, eu rutrum velit dapibus. Phasellus nec augue vel nisl sagittis malesuada vel vel orci. In in euismod massa. Praesent vel blandit arcu. Maecenas eleifend dui in est rhoncus, mattis sollicitudin augue semper. Donec a lectus rhoncus, ornare nunc rutrum, egestas arcu. Aenean dapibus urna non nisl dignissim volutpat.</p>', 'reseller2', '2017-05-30 06:53:10'),
(5, 0, 2, 1, 2, 'Segitiga Instan Madeira - MDB5.2 Ocean', 'segitiga-instan-madeira-mdb5-2-ocean', 'unit', 745000, 0, 755000, '150', 'KYB4_14_Soft_Lavender_1024x1024_f993283a-dae0-4a05-b163-9f6b44465732_grande.jpg', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec scelerisque condimentum mattis. Suspendisse potenti. Proin vitae elementum nisi. Aliquam eu pretium risus. Nam varius efficitur consectetur. Aenean vestibulum felis sed mollis faucibus. Interdum et malesuada fames ac ante ipsum primis in faucibus. Proin venenatis est sit amet eleifend vehicula. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer id nunc eu odio ultrices pulvinar non feugiat felis. Duis consequat urna sapien, porta gravida diam venenatis at. Duis at ornare enim, ac accumsan eros. Sed in finibus metus. Etiam blandit tristique orci, sit amet congue dui facilisis id. Donec fermentum diam at orci viverra placerat. Sed nunc lorem, cursus nec vestibulum hendrerit, tempus et libero.</p>\r\n\r\n<p>Donec consequat lacinia fringilla. Proin dapibus justo at elit iaculis, eu rutrum velit dapibus. Phasellus nec augue vel nisl sagittis malesuada vel vel orci. In in euismod massa. Praesent vel blandit arcu. Maecenas eleifend dui in est rhoncus, mattis sollicitudin augue semper. Donec a lectus rhoncus, ornare nunc rutrum, egestas arcu. Aenean dapibus urna non nisl dignissim volutpat.</p>\r\n', 'admin', '2017-05-30 06:56:24'),
(6, 0, 2, 2, 2, 'Pashmina Instan Rafella - RLN1.2 Gold Maroon', 'pashmina-instan-rafella-rln1-2-gold-maroon', 'unit', 65000, 0, 75000, '130', 'Emily_Grey_grande.jpg', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec scelerisque condimentum mattis. Suspendisse potenti. Proin vitae elementum nisi. Aliquam eu pretium risus. Nam varius efficitur consectetur. Aenean vestibulum felis sed mollis faucibus. Interdum et malesuada fames ac ante ipsum primis in faucibus. Proin venenatis est sit amet eleifend vehicula. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer id nunc eu odio ultrices pulvinar non feugiat felis. Duis consequat urna sapien, porta gravida diam venenatis at. Duis at ornare enim, ac accumsan eros. Sed in finibus metus. Etiam blandit tristique orci, sit amet congue dui facilisis id. Donec fermentum diam at orci viverra placerat. Sed nunc lorem, cursus nec vestibulum hendrerit, tempus et libero.</p>\r\n\r\n<p>Donec consequat lacinia fringilla. Proin dapibus justo at elit iaculis, eu rutrum velit dapibus. Phasellus nec augue vel nisl sagittis malesuada vel vel orci. In in euismod massa. Praesent vel blandit arcu. Maecenas eleifend dui in est rhoncus, mattis sollicitudin augue semper. Donec a lectus rhoncus, ornare nunc rutrum, egestas arcu. Aenean dapibus urna non nisl dignissim volutpat.</p>\r\n', 'admin', '2017-05-30 06:57:11'),
(7, 0, 2, 2, 2, 'Pashmina Instan Rafella - RLN1.1 Sweet Grey', 'pashmina-instan-rafella--rln11-sweet-grey', 'unit', 89000, 0, 99000, '600', 'AYD5_3_Mayra_Pink_grande.jpg', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec scelerisque condimentum mattis. Suspendisse potenti. Proin vitae elementum nisi. Aliquam eu pretium risus. Nam varius efficitur consectetur. Aenean vestibulum felis sed mollis faucibus. Interdum et malesuada fames ac ante ipsum primis in faucibus. Proin venenatis est sit amet eleifend vehicula. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer id nunc eu odio ultrices pulvinar non feugiat felis. Duis consequat urna sapien, porta gravida diam venenatis at. Duis at ornare enim, ac accumsan eros. Sed in finibus metus. Etiam blandit tristique orci, sit amet congue dui facilisis id. Donec fermentum diam at orci viverra placerat. Sed nunc lorem, cursus nec vestibulum hendrerit, tempus et libero.</p>\r\n\r\n<p>Donec consequat lacinia fringilla. Proin dapibus justo at elit iaculis, eu rutrum velit dapibus. Phasellus nec augue vel nisl sagittis malesuada vel vel orci. In in euismod massa. Praesent vel blandit arcu. Maecenas eleifend dui in est rhoncus, mattis sollicitudin augue semper. Donec a lectus rhoncus, ornare nunc rutrum, egestas arcu. Aenean dapibus urna non nisl dignissim volutpat.</p>\r\n', 'admin', '2017-05-30 09:52:58'),
(8, 0, 6, 0, 2, 'Black Cotton Puplin Semi Wol Red White URI-12', 'black-cotton-puplin-semi-wol-red-white-uri12', 'unit', 24500, 0, 34500, '220', 'gamis6.jpg', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec scelerisque condimentum mattis. Suspendisse potenti. Proin vitae elementum nisi. Aliquam eu pretium risus. Nam varius efficitur consectetur. Aenean vestibulum felis sed mollis faucibus. Interdum et malesuada fames ac ante ipsum primis in faucibus. Proin venenatis est sit amet eleifend vehicula. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer id nunc eu odio ultrices pulvinar non feugiat felis. Duis consequat urna sapien, porta gravida diam venenatis at. Duis at ornare enim, ac accumsan eros. Sed in finibus metus. Etiam blandit tristique orci, sit amet congue dui facilisis id. Donec fermentum diam at orci viverra placerat. Sed nunc lorem, cursus nec vestibulum hendrerit, tempus et libero.</p>\r\n\r\n<p>Donec consequat lacinia fringilla. Proin dapibus justo at elit iaculis, eu rutrum velit dapibus. Phasellus nec augue vel nisl sagittis malesuada vel vel orci. In in euismod massa. Praesent vel blandit arcu. Maecenas eleifend dui in est rhoncus, mattis sollicitudin augue semper. Donec a lectus rhoncus, ornare nunc rutrum, egestas arcu. Aenean dapibus urna non nisl dignissim volutpat.</p>\r\n', 'admin', '2017-05-30 09:55:04'),
(9, 0, 6, 0, 2, 'Rompi Kurta Hoodie Zip Dark Grey Semi Wol', 'rompi-kurta-hoodie-zip-dark-grey-semi-wol', 'unit', 58500, 0, 68500, '250', 'gamis5.jpg', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec scelerisque condimentum mattis. Suspendisse potenti. Proin vitae elementum nisi. Aliquam eu pretium risus. Nam varius efficitur consectetur. Aenean vestibulum felis sed mollis faucibus. Interdum et malesuada fames ac ante ipsum primis in faucibus. Proin venenatis est sit amet eleifend vehicula. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer id nunc eu odio ultrices pulvinar non feugiat felis. Duis consequat urna sapien, porta gravida diam venenatis at. Duis at ornare enim, ac accumsan eros. Sed in finibus metus. Etiam blandit tristique orci, sit amet congue dui facilisis id. Donec fermentum diam at orci viverra placerat. Sed nunc lorem, cursus nec vestibulum hendrerit, tempus et libero.</p>\r\n\r\n<p>Donec consequat lacinia fringilla. Proin dapibus justo at elit iaculis, eu rutrum velit dapibus. Phasellus nec augue vel nisl sagittis malesuada vel vel orci. In in euismod massa. Praesent vel blandit arcu. Maecenas eleifend dui in est rhoncus, mattis sollicitudin augue semper. Donec a lectus rhoncus, ornare nunc rutrum, egestas arcu. Aenean dapibus urna non nisl dignissim volutpat.</p>\r\n', 'admin', '2017-05-30 09:58:43'),
(10, 0, 6, 0, 1, 'Gamis Green Filosifi Oxorcities TG-3452', 'gamis-green-filosifi-oxorcities-tg3452', 'pcs', 49900, 0, 59900, '320', 'gamis11.jpg', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec scelerisque condimentum mattis. Suspendisse potenti. Proin vitae elementum nisi. Aliquam eu pretium risus. Nam varius efficitur consectetur. Aenean vestibulum felis sed mollis faucibus. Interdum et malesuada fames ac ante ipsum primis in faucibus. Proin venenatis est sit amet eleifend vehicula. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer id nunc eu odio ultrices pulvinar non feugiat felis. Duis consequat urna sapien, porta gravida diam venenatis at. Duis at ornare enim, ac accumsan eros. Sed in finibus metus. Etiam blandit tristique orci, sit amet congue dui facilisis id. Donec fermentum diam at orci viverra placerat. Sed nunc lorem, cursus nec vestibulum hendrerit, tempus et libero.</p>\r\n\r\n<p>Donec consequat lacinia fringilla. Proin dapibus justo at elit iaculis, eu rutrum velit dapibus. Phasellus nec augue vel nisl sagittis malesuada vel vel orci. In in euismod massa. Praesent vel blandit arcu. Maecenas eleifend dui in est rhoncus, mattis sollicitudin augue semper. Donec a lectus rhoncus, ornare nunc rutrum, egestas arcu. Aenean dapibus urna non nisl dignissim volutpat.</p>\r\n', 'admin', '2017-05-30 10:02:14'),
(11, 0, 6, 0, 1, 'Rompi Kurta Hoodie Zip Mentantarei YU-234', 'rompi-kurta-hoodie-zip-mentantarei-yu234', 'pcs', 79000, 0, 89000, '250', 'gamis4.jpg', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec scelerisque condimentum mattis. Suspendisse potenti. Proin vitae elementum nisi. Aliquam eu pretium risus. Nam varius efficitur consectetur. Aenean vestibulum felis sed mollis faucibus. Interdum et malesuada fames ac ante ipsum primis in faucibus. Proin venenatis est sit amet eleifend vehicula. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer id nunc eu odio ultrices pulvinar non feugiat felis. Duis consequat urna sapien, porta gravida diam venenatis at. Duis at ornare enim, ac accumsan eros. Sed in finibus metus. Etiam blandit tristique orci, sit amet congue dui facilisis id. Donec fermentum diam at orci viverra placerat. Sed nunc lorem, cursus nec vestibulum hendrerit, tempus et libero.</p>\r\n\r\n<p>Donec consequat lacinia fringilla. Proin dapibus justo at elit iaculis, eu rutrum velit dapibus. Phasellus nec augue vel nisl sagittis malesuada vel vel orci. In in euismod massa. Praesent vel blandit arcu. Maecenas eleifend dui in est rhoncus, mattis sollicitudin augue semper. Donec a lectus rhoncus, ornare nunc rutrum, egestas arcu. Aenean dapibus urna non nisl dignissim volutpat.</p>\r\n', 'admin', '2017-05-30 10:03:47'),
(12, 0, 6, 0, 1, 'Koku Fren Grenn Latifa Consesi TY-634', 'koku-fren-grenn-latifa-consesi-ty634', 'unit', 55000, 0, 66000, '360', 'gamis3.jpg', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec scelerisque condimentum mattis. Suspendisse potenti. Proin vitae elementum nisi. Aliquam eu pretium risus. Nam varius efficitur consectetur. Aenean vestibulum felis sed mollis faucibus. Interdum et malesuada fames ac ante ipsum primis in faucibus. Proin venenatis est sit amet eleifend vehicula. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer id nunc eu odio ultrices pulvinar non feugiat felis. Duis consequat urna sapien, porta gravida diam venenatis at. Duis at ornare enim, ac accumsan eros. Sed in finibus metus. Etiam blandit tristique orci, sit amet congue dui facilisis id. Donec fermentum diam at orci viverra placerat. Sed nunc lorem, cursus nec vestibulum hendrerit, tempus et libero.</p>\r\n\r\n<p>Donec consequat lacinia fringilla. Proin dapibus justo at elit iaculis, eu rutrum velit dapibus. Phasellus nec augue vel nisl sagittis malesuada vel vel orci. In in euismod massa. Praesent vel blandit arcu. Maecenas eleifend dui in est rhoncus, mattis sollicitudin augue semper. Donec a lectus rhoncus, ornare nunc rutrum, egestas arcu. Aenean dapibus urna non nisl dignissim volutpat.</p>\r\n', 'admin', '2017-05-30 10:06:33'),
(21, 0, 1, 0, 3, 'Ultrabook Hackintosh Acer - I5 Haswell - 8 Gb - SSD', 'ultrabook-hackintosh-acer--i5-haswell--8-gb--ssd', 'Unit', 12500000, 13000000, 16500000, '1200', 'a1.jpg', '<p>Untuk diperhatikan : - Untuk Saat Ini Bless Hackintosh Tidak Melayani COD/Datang Ketempat, murni hanya melayani transaksi Online dengan fasilitas pengiriman spt yang ditetapkan</p>\r\n\r\n<p>Budayakan membaca Iklan sampai beres. Mohon jangan tanyakan lagi apa yang sudah dijelaskan di Lapak.</p>\r\n\r\n<p>Barang bergaransi 7x24 jam terhitung sejak agan menerima Barang. Dengan catatan, tidak merusak segel yang ada. Retur tidak dilayani apabila SEGEL RUSAK.</p>', 'reseller3', '2019-03-23 19:39:53'),
(13, 0, 2, 0, 0, 'Super Segiempat Rebya  - RYB6.7 Pink Clover', 'segiempat-rebya---ryb67-pink-clover', 'pcs', 55000, 57000, 65000, '300', 'AD_19_20_Misty_Grey_grande.jpg', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec scelerisque condimentum mattis. Suspendisse potenti. Proin vitae elementum nisi. Aliquam eu pretium risus. Nam varius efficitur consectetur. Aenean vestibulum felis sed mollis faucibus. Interdum et malesuada fames ac ante ipsum primis in faucibus. Proin venenatis est sit amet eleifend vehicula. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer id nunc eu odio ultrices pulvinar non feugiat felis. Duis consequat urna sapien, porta gravida diam venenatis at. Duis at ornare enim, ac accumsan eros. Sed in finibus metus. Etiam blandit tristique orci, sit amet congue dui facilisis id. Donec fermentum diam at orci viverra placerat. Sed nunc lorem, cursus nec vestibulum hendrerit, tempus et libero.</p>\r\n\r\n<p>Donec consequat lacinia fringilla. Proin dapibus justo at elit iaculis, eu rutrum velit dapibus. Phasellus nec augue vel nisl sagittis malesuada vel vel orci. In in euismod massa. Praesent vel blandit arcu. Maecenas eleifend dui in est rhoncus, mattis sollicitudin augue semper. Donec a lectus rhoncus, ornare nunc rutrum, egestas arcu. Aenean dapibus urna non nisl dignissim volutpat.</p>\r\n', 'admin', '2017-05-30 10:10:37'),
(14, 0, 6, 0, 2, 'Koku Black Cotton Sesnsation Gamis TY-4312', 'koku-black-cotton-sesnsation-gamis-ty4312', 'pcs', 90000, 0, 100000, '0', 'gamis2.jpg', '<p>Instan ZIFA, pashmina instan dengan bahan legendaris Diamond Lava ORIGINAL by Hijab Wanita Cantik, lentur dan nyaman bangeett! Ada ruffle cantik dan manis. Layernya panjang bisa dikreasi suka2, dijamin makin percaya diri ! Yuk belanja sekarang ! Nyeseel kalo cuma punya satu</p>\r\n', 'admin', '2018-09-11 10:20:24'),
(17, 13, 2, 0, 2, 'Segiempat Rebya  - RYB6.7 Pink Clover', 'segiempat-rebya---ryb67-pink-clover', 'pcs', 55000, 57000, 65000, '300', 'AD_19_20_Misty_Grey_grande.jpg', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec scelerisque condimentum mattis. Suspendisse potenti. Proin vitae elementum nisi. Aliquam eu pretium risus. Nam varius efficitur consectetur. Aenean vestibulum felis sed mollis faucibus. Interdum et malesuada fames ac ante ipsum primis in faucibus. Proin venenatis est sit amet eleifend vehicula. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer id nunc eu odio ultrices pulvinar non feugiat felis. Duis consequat urna sapien, porta gravida diam venenatis at. Duis at ornare enim, ac accumsan eros. Sed in finibus metus. Etiam blandit tristique orci, sit amet congue dui facilisis id. Donec fermentum diam at orci viverra placerat. Sed nunc lorem, cursus nec vestibulum hendrerit, tempus et libero.</p>\r\n\r\n<p>Donec consequat lacinia fringilla. Proin dapibus justo at elit iaculis, eu rutrum velit dapibus. Phasellus nec augue vel nisl sagittis malesuada vel vel orci. In in euismod massa. Praesent vel blandit arcu. Maecenas eleifend dui in est rhoncus, mattis sollicitudin augue semper. Donec a lectus rhoncus, ornare nunc rutrum, egestas arcu. Aenean dapibus urna non nisl dignissim volutpat.</p>\r\n', 'admin', '2019-03-21 08:01:06'),
(18, 0, 10, 0, 0, 'Consina Expert Series Lunara Biru Gelap', 'consina-expert-series-lunara-biru-gelap', 'Unit', 700000, 720000, 759000, '500', 'tas.jpg', '<h2>Produk Lokal, Rasa Internasional</h2>\r\n\r\n<p>Consina merupakan salah satu produk lokal yang lahir pada tahun 1994. Bagi Anda yang memiliki hobi mendaki gunung dan berkemah, tentunya merk Consina sudah melekat di telinga Anda. Semakin berkembangnya perusahaan ini, peminatnya semakin banyak. Produk-produk dari consina memiliki kualitas yang sangat bersaing karena dibuat dengan material-material kelas satu. Tidak hanya itu, fungsi dan desainnya tidak kalah dengan merk-merk dari luar negeri.&nbsp;</p>\r\n\r\n<h3>Menampung Keseharian Anda Sehari-hari</h3>\r\n\r\n<p>Kali ini consina mengeluarkan tas ransel dengan ukuran yang besar yang mampu menampung kebutuhan berpetualang Anda. Tidak hanya itu, tas ransel Consina Lunara hadir dengan dimensi ukuran 30 x 25 x 60 sehingga Anda mampu menampung barang bawaan hingga 20 sampai 40 liter. Walaupun tas ini diperuntukkan untuk kebutuhan bertualang, Anda dapat menggunakan tas ini untuk kegiatan sehari-hari Anda.</p>\r\n', 'admin', '2019-03-21 11:38:37'),
(19, 18, 10, 0, 2, 'Consina Expert Series Lunara Biru Gelap', 'consina-expert-series-lunara-biru-gelap', 'Unit', 700000, 720000, 759000, '500', 'tas.jpg', '<h2>Produk Lokal, Rasa Internasional</h2>\r\n\r\n<p>Consina merupakan salah satu produk lokal yang lahir pada tahun 1994. Bagi Anda yang memiliki hobi mendaki gunung dan berkemah, tentunya merk Consina sudah melekat di telinga Anda. Semakin berkembangnya perusahaan ini, peminatnya semakin banyak. Produk-produk dari consina memiliki kualitas yang sangat bersaing karena dibuat dengan material-material kelas satu. Tidak hanya itu, fungsi dan desainnya tidak kalah dengan merk-merk dari luar negeri.&nbsp;</p>\r\n\r\n<h3>Menampung Keseharian Anda Sehari-hari</h3>\r\n\r\n<p>Kali ini consina mengeluarkan tas ransel dengan ukuran yang besar yang mampu menampung kebutuhan berpetualang Anda. Tidak hanya itu, tas ransel Consina Lunara hadir dengan dimensi ukuran 30 x 25 x 60 sehingga Anda mampu menampung barang bawaan hingga 20 sampai 40 liter. Walaupun tas ini diperuntukkan untuk kebutuhan bertualang, Anda dapat menggunakan tas ini untuk kegiatan sehari-hari Anda.</p>\r\n', 'admin', '2019-03-21 11:52:49'),
(20, 13, 6, 0, 1, 'Gamis Green Filosifi Oxorcities TG-3452', 'gamis-green-filosifi-oxorcities-tg3452', 'pcs', 55000, 57000, 65000, '300', 'gamis1.jpg', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec scelerisque condimentum mattis. Suspendisse potenti. Proin vitae elementum nisi. Aliquam eu pretium risus. Nam varius efficitur consectetur. Aenean vestibulum felis sed mollis faucibus. Interdum et malesuada fames ac ante ipsum primis in faucibus. Proin venenatis est sit amet eleifend vehicula. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer id nunc eu odio ultrices pulvinar non feugiat felis. Duis consequat urna sapien, porta gravida diam venenatis at. Duis at ornare enim, ac accumsan eros. Sed in finibus metus. Etiam blandit tristique orci, sit amet congue dui facilisis id. Donec fermentum diam at orci viverra placerat. Sed nunc lorem, cursus nec vestibulum hendrerit, tempus et libero.</p>\r\n\r\n<p>Donec consequat lacinia fringilla. Proin dapibus justo at elit iaculis, eu rutrum velit dapibus. Phasellus nec augue vel nisl sagittis malesuada vel vel orci. In in euismod massa. Praesent vel blandit arcu. Maecenas eleifend dui in est rhoncus, mattis sollicitudin augue semper. Donec a lectus rhoncus, ornare nunc rutrum, egestas arcu. Aenean dapibus urna non nisl dignissim volutpat.</p>\r\n', 'admin', '2019-03-22 06:37:29'),
(22, 0, 1, 0, 3, 'APPLE MacBook Pro - Space Gray - Intel Core i5 2.3GHz', 'apple-macbook-pro--space-gray--intel-core-i5-23ghz', 'Unit', 19500000, 20000000, 22500000, '1200', 'a2.jpg', '<h3>Spesifikasi Lebih Tinggi untuk Pacu Produktivitas</h3>\r\n\r\n<p>Apple MacBook Pro edisi terbaru hadir dengan dua pilihan ukuran layar yakni 13 Inch dan 15 Inch. Apple MacBook Pro memiliki fitur terbaru yang memudahkan Anda bekerja dengan mengganti jejeran tombol Function (F) dengan panel sentuh. Fitur bernama Touch Bar ini dapat mengganti tampilan menu di panel sentuh sesuai aplikasi yang Anda gunakan. Namun, jika Anda masih menginginkan versi MacBook tanpa Touch Bar, Apple juga menyediakan varian MacBook Pro 13 Inch tanpa Touch Bar. Jadi Anda masih menggunakan Keyboard dengan tombol F berbentuk fisik seperti Layout Keyboard Laptop konvensional. MacBook Pro tanpa Touch Bar membawa peningkatan performa dibanding pendahulunya. Hadir sebagai otak utama adalah Processor Dual-Core besutan Intel Core i5 berkecepatan 2.3 GHz yang terintegrasi dengan pengolah grafis Intel Iris Graphics 640. Dua buah Port Thunderbolt 3 dengan antarmuka USB-C bisa digunakan untuk transfer data, mengisi baterai, dan Output Display.</p>\r\n\r\n<h3>Dua Pilihan Ukuran MacBook Pro</h3>\r\n\r\n<p>2 model MacBook Pro layar 13 dan 15 Inch, dengan dan tanpa Touch Bar.</p>\r\n', 'admin', '2019-03-23 20:24:24'),
(23, 0, 1, 0, 3, 'HP Business EliteBook X360 1020 G2', 'hp-business-elitebook-x360-1020-g2', 'Unit', 30520000, 31520000, 32520000, '1100', 'a4.jpg', '<h3><strong>Ringan, Kuat, dan Bertenaga</strong></h3>\r\n\r\n<p>HP EliteBook x360 1020 G2 merupakan laptop yang diperuntukkan bagi pebisnis yang memerlukkan tidak hanya bermobilitas tinggi, namun juga bertenaga. Elitebook x360 1020 G2 didukung oleh prosesor Intel® Core™ i7-7500U sehingga mampu menghadirkan performa yang sangat dapat diandalkan. Selain itu, laptop dengan layar 12.5 beresolusi Full HD ini sudah dilengkapi dengan SSD (Solid State Drive) sebagai media penyimpanan data sehingga kinerjanya semakin kencang. Tentu saja laptop ini memiliki bobot yang sangat ringan agar Anda dapat membawanya kemana saja.&nbsp;</p>\r\n\r\n<h3><strong>Empat Mode Untuk Segala Kebutuhan Bisnis</strong></h3>\r\n\r\n<p>EliteBook x360 1020 G@ hadir dengan beberapa mode yang didesain untuk kebutuhan Anda sehingga dapat menunjang produktivitas Anda. Mode-mode tersebut yaitu Mode Tent yang berbentuk seperti tenda yang sangat cocok untuk presentasi, Mode Tablet yang mentransformasikan laptop Anda menjadi sebuah tablet, Mode Media yang membawa Anda untuk merasakan pengalaman hiburan mendalam, dan yang terakhir adalah Mode Laptop.</p>', 'reseller3', '2019-03-24 10:09:20'),
(24, 0, 1, 0, 3, 'ACER Swift 7 (SF713-51) (Core i7-7Y75) - Gold', 'acer-swift-7-sf71351-core-i77y75--gold', 'Unit', 20465000, 21465000, 22465000, '1100', 'a7.jpg', '<h3><strong>5 Alasan Jitu Memilih Acer Swift 7</strong></h3>\r\n\r\n<p>Pasar ultrabook dunia diramaikan kehadiran Acer Swift 7 yang menjadi salah satu ultrabook paling tipis di dunia. Ketebalan laptop yang super tipis memang ditujukan untuk Anda yang punya mobilitas tinggi. Karena tipis dan ringan, saat dibawa-bawa Acer Swift 7 tidak akan terlalu menyiksa Anda. Berikut ini lima alasan kenapa Anda harus segera memiliki Acer Swift 7:</p>\r\n\r\n<h3>1) Laptop Paling Tipis di Dunia</h3>\r\n\r\n<p>Acer Swift 7 menjadi laptop paling tipis di dunia saat diluncurkan pertama kali pada awal Juli 2016. Ini sangat wajar karena ketebalan laptop satu ini hanya 0.39 inci. Pemilihan material berkualitas juga membuatnya sangat ringan. Perpaduan warna emas di bagian dalam dan hitam matte di luar menciptakan kesan elegan dan modern. Dengan memakai Acer Swift 7 tentu akan meningkatkan kepercayaan diri Anda.</p>\r\n\r\n<h3>2) Layar Sentuh Jernih Seluas 13 Inci</h3>\r\n\r\n<p>Konten layar yang Anda lihat jadi terlihat jernih berkat dukungan layar sentuh seluas 13.3 inci beresolusi Full HD. Teknologi Acer Color Intelligence mengatur gamma dan saturasi agar bisa menghasilkan warna lebih kaya. Acer Swift 7 juga menggunakan panel layar jenis IPS sehingga dari sudut mana pun Anda melihatnya, kontras dan warna layar tidak pudar. Tak usah khawatir layar tergores, karena sudah menggunakan kaca Corning Gorilla Glass yang 2 kali lebih kuat dari kaca biasa.&nbsp;</p>', 'reseller3', '2019-03-24 10:11:03'),
(25, 0, 1, 0, 3, 'DELL Business Latitude 7290 (Core i7-8650U)', 'dell-business-latitude-7290-core-i78650u', 'Unit', 20449000, 21449000, 22449000, '1100', 'a8.jpg', '<h3><strong>Alasan Jitu Memilih DELL Business Latitude 7290</strong></h3>\r\n\r\n<p>Pasar ultrabook dunia diramaikan kehadiran DELL Business Latitude 7290 yang menjadi salah satu ultrabook paling tipis di dunia. Ketebalan laptop yang super tipis memang ditujukan untuk Anda yang punya mobilitas tinggi. Karena tipis dan ringan, saat dibawa-bawa DELL Business Latitude 7290 tidak akan terlalu menyiksa Anda. Berikut ini lima alasan kenapa Anda harus segera memiliki DELL Business Latitude 7290:</p>\r\n\r\n<p>DELL Business Latitude 7290 menjadi laptop paling tipis di dunia saat diluncurkan pertama kali pada awal Juli 2016. Ini sangat wajar karena ketebalan laptop satu ini hanya 0.39 inci. Pemilihan material berkualitas juga membuatnya sangat ringan. Perpaduan warna emas di bagian dalam dan hitam matte di luar menciptakan kesan elegan dan modern. Dengan memakai DELL Business Latitude 7290 tentu akan meningkatkan kepercayaan diri Anda.</p>\r\n\r\n<p>Konten layar yang Anda lihat jadi terlihat jernih berkat dukungan layar sentuh seluas 13.3 inci beresolusi Full HD. Teknologi Acer Color Intelligence mengatur gamma dan saturasi agar bisa menghasilkan warna lebih kaya. Acer Swift 7 juga menggunakan panel layar jenis IPS sehingga dari sudut mana pun Anda melihatnya, kontras dan warna layar tidak pudar. Tak usah khawatir layar tergores, karena sudah menggunakan kaca Corning Gorilla Glass yang 2 kali lebih kuat dari kaca biasa.&nbsp;</p>', 'reseller3', '2019-03-24 10:13:19'),
(26, 0, 1, 0, 3, 'LENOVO X1 Carbon Gen 6 [20KGA04GID]', 'lenovo-x1-carbon-gen-6-20kga04gid', 'Unit', 33750000, 34750000, 35750000, '1200', 'a9.jpg', '<h3><strong>Alasan Jitu Memilih DELL Business Latitude 7290</strong></h3>\r\n\r\n<p>Pasar ultrabook dunia diramaikan kehadiran LENOVO X1 Carbon Gen 6&nbsp; yang menjadi salah satu ultrabook paling tipis di dunia. Ketebalan laptop yang super tipis memang ditujukan untuk Anda yang punya mobilitas tinggi. Karena tipis dan ringan, saat dibawa-bawa LENOVO X1 Carbon Gen 6&nbsp; tidak akan terlalu menyiksa Anda. Berikut ini lima alasan kenapa Anda harus segera memiliki LENOVO X1 Carbon Gen 6&nbsp;:</p>\r\n\r\n<p>LENOVO X1 Carbon Gen 6&nbsp; menjadi laptop paling tipis di dunia saat diluncurkan pertama kali pada awal Juli 2016. Ini sangat wajar karena ketebalan laptop satu ini hanya 0.39 inci. Pemilihan material berkualitas juga membuatnya sangat ringan. Perpaduan warna emas di bagian dalam dan hitam matte di luar menciptakan kesan elegan dan modern. Dengan memakai LENOVO X1 Carbon Gen 6&nbsp; tentu akan meningkatkan kepercayaan diri Anda.</p>\r\n\r\n<p>Konten layar yang Anda lihat jadi terlihat jernih berkat dukungan layar sentuh seluas 13.3 inci beresolusi Full HD. Teknologi Acer Color Intelligence mengatur gamma dan saturasi agar bisa menghasilkan warna lebih kaya. LENOVO X1 Carbon Gen 6&nbsp; juga menggunakan panel layar jenis IPS sehingga dari sudut mana pun Anda melihatnya, kontras dan warna layar tidak pudar. Tak usah khawatir layar tergores, karena sudah menggunakan kaca Corning Gorilla Glass yang 2 kali lebih kuat dari kaca biasa.&nbsp;</p>', 'reseller3', '2019-03-24 10:15:21'),
(28, 18, 10, 0, 1, 'Consina Expert Series Lunara Biru Gelap', 'consina-expert-series-lunara-biru-gelap', 'Unit', 700000, 720000, 759000, '500', 'tas.jpg', '<h2>Produk Lokal, Rasa Internasional</h2>\r\n\r\n<p>Consina merupakan salah satu produk lokal yang lahir pada tahun 1994. Bagi Anda yang memiliki hobi mendaki gunung dan berkemah, tentunya merk Consina sudah melekat di telinga Anda. Semakin berkembangnya perusahaan ini, peminatnya semakin banyak. Produk-produk dari consina memiliki kualitas yang sangat bersaing karena dibuat dengan material-material kelas satu. Tidak hanya itu, fungsi dan desainnya tidak kalah dengan merk-merk dari luar negeri.&nbsp;</p>\r\n\r\n<h3>Menampung Keseharian Anda Sehari-hari</h3>\r\n\r\n<p>Kali ini consina mengeluarkan tas ransel dengan ukuran yang besar yang mampu menampung kebutuhan berpetualang Anda. Tidak hanya itu, tas ransel Consina Lunara hadir dengan dimensi ukuran 30 x 25 x 60 sehingga Anda mampu menampung barang bawaan hingga 20 sampai 40 liter. Walaupun tas ini diperuntukkan untuk kebutuhan bertualang, Anda dapat menggunakan tas ini untuk kegiatan sehari-hari Anda.</p>\r\n', 'admin', '2020-06-28 08:48:30'),
(29, 0, 2, 1, 2, 'Baju wanita', 'baju-wanita', '', 150000, 0, 200000, '500', 'WhatsApp_Image_2020-11-30_at_07_35_31.jpeg', '<p>ini baju unlimited</p>', 'reseller2', '2022-07-13 01:51:05');

-- --------------------------------------------------------

--
-- Struktur dari tabel `rb_produk_diskon`
--

CREATE TABLE `rb_produk_diskon` (
  `id_produk_diskon` int(11) NOT NULL,
  `id_produk` int(11) NOT NULL,
  `id_reseller` int(11) NOT NULL,
  `diskon` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `rb_produk_diskon`
--

INSERT INTO `rb_produk_diskon` (`id_produk_diskon`, `id_produk`, `id_reseller`, `diskon`) VALUES
(1, 13, 2, 8000),
(2, 12, 2, 42000),
(3, 9, 2, 15000),
(4, 7, 2, 10000),
(5, 4, 2, 89000),
(7, 2, 2, 100000),
(8, 14, 1, 10),
(9, 14, 2, 0),
(10, 16, 2, 342),
(11, 12, 1, 0),
(12, 11, 1, 0),
(13, 10, 1, 0),
(14, 26, 3, 0),
(15, 25, 3, 0),
(16, 24, 3, 0),
(17, 23, 3, 0),
(18, 21, 3, 0),
(19, 27, 1, 1000),
(20, 29, 2, 20000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `rb_provinsi`
--

CREATE TABLE `rb_provinsi` (
  `provinsi_id` int(11) NOT NULL,
  `nama_provinsi` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `rb_provinsi`
--

INSERT INTO `rb_provinsi` (`provinsi_id`, `nama_provinsi`) VALUES
(1, 'Bali'),
(2, 'Bangka Belitung'),
(3, 'Banten'),
(4, 'Bengkulu'),
(5, 'DI Yogyakarta'),
(6, 'DKI Jakarta'),
(7, 'Gorontalo'),
(8, 'Jambi'),
(9, 'Jawa Barat'),
(10, 'Jawa Tengah'),
(11, 'Jawa Timur'),
(12, 'Kalimantan Barat'),
(13, 'Kalimantan Selatan'),
(14, 'Kalimantan Tengah'),
(15, 'Kalimantan Timur'),
(16, 'Kalimantan Utara'),
(17, 'Kepulauan Riau'),
(18, 'Lampung'),
(19, 'Maluku'),
(20, 'Maluku Utara'),
(21, 'Nanggroe Aceh Darussalam (NAD)'),
(22, 'Nusa Tenggara Barat (NTB)'),
(23, 'Nusa Tenggara Timur (NTT)'),
(24, 'Papua'),
(25, 'Papua Barat'),
(26, 'Riau'),
(27, 'Sulawesi Barat'),
(28, 'Sulawesi Selatan'),
(29, 'Sulawesi Tengah'),
(30, 'Sulawesi Tenggara'),
(31, 'Sulawesi Utara'),
(32, 'Sumatera Barat'),
(33, 'Sumatera Selatan'),
(34, 'Sumatera Utara');

-- --------------------------------------------------------

--
-- Struktur dari tabel `rb_rekening`
--

CREATE TABLE `rb_rekening` (
  `id_rekening` int(5) NOT NULL,
  `nama_bank` varchar(50) NOT NULL,
  `no_rekening` varchar(50) NOT NULL,
  `pemilik_rekening` varchar(150) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `rb_rekening`
--

INSERT INTO `rb_rekening` (`id_rekening`, `nama_bank`, `no_rekening`, `pemilik_rekening`) VALUES
(1, 'Bank BNI Syariah', '0817 0242 31', 'PT. BUKAKAPAK Indonesia'),
(2, 'Bank Mandiri Syariah', '7128 5288 67', 'PT. BUKAKAPAK Indonesia ');

-- --------------------------------------------------------

--
-- Struktur dari tabel `rb_rekening_reseller`
--

CREATE TABLE `rb_rekening_reseller` (
  `id_rekening_reseller` int(11) NOT NULL,
  `id_reseller` int(11) NOT NULL,
  `nama_bank` varchar(50) NOT NULL,
  `no_rekening` varchar(50) NOT NULL,
  `pemilik_rekening` varchar(150) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `rb_rekening_reseller`
--

INSERT INTO `rb_rekening_reseller` (`id_rekening_reseller`, `id_reseller`, `nama_bank`, `no_rekening`, `pemilik_rekening`) VALUES
(1, 2, 'Bank Danamon', '56234234000', 'Syarii Sentral'),
(2, 2, 'Bank BCA', '10823422', 'Syarii Sentral'),
(3, 3, 'Bank Mandiri', '234123123332', 'Kalifah Umayyah');

-- --------------------------------------------------------

--
-- Struktur dari tabel `rb_reseller`
--

CREATE TABLE `rb_reseller` (
  `id_reseller` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `nama_reseller` varchar(255) NOT NULL,
  `jenis_kelamin` varchar(50) NOT NULL,
  `kota_id` int(11) NOT NULL,
  `alamat_lengkap` text NOT NULL,
  `no_telpon` varchar(15) NOT NULL,
  `email` varchar(100) NOT NULL,
  `kode_pos` int(7) NOT NULL,
  `keterangan` text NOT NULL,
  `foto` varchar(255) NOT NULL,
  `referral` varchar(50) NOT NULL,
  `tanggal_daftar` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `rb_reseller`
--

INSERT INTO `rb_reseller` (`id_reseller`, `username`, `password`, `nama_reseller`, `jenis_kelamin`, `kota_id`, `alamat_lengkap`, `no_telpon`, `email`, `kode_pos`, `keterangan`, `foto`, `referral`, `tanggal_daftar`) VALUES
(1, 'reseller', 'd073f60ff87c6ffe0abd48687b939667c3bdfd019df58d670ed45d230c470b94a0389d825453d40978c48e6f49ddb1368b16c069ab8bf27cfe8a9e1e2c15e954', 'Umar Lapakers', 'Laki-laki', 318, 'Jl. Angkasa Pura Raya, No 456 BG', '681267771355', 'reseller.bukittinggi@gmail.com', 26125, 'Tidak ada keterangan...', 'Mozilla_Firefox.png', '', '2017-05-23 00:00:00'),
(2, 'reseller2', '097ee0662e53882111f603eb2de4dc9070d65782eee9f8bcb42829024c03af2813596b4b7d07dc05d55e9e345bc9a0eb9b2fb41565c529015660296ed7a96953', 'Nutistore', 'Perempuan', 152, 'Jl. cempaka putih', '081212121313', 'nutistore@gmail.com', 1290, 'Toko kami merupakan toko fashion ', 'logo.jpeg', 'reseller', '2017-05-23 00:00:00'),
(3, 'reseller3', 'b75f92610f21b882cd791b99cc4cc177d3e274017656a63ad61d65bd956b99d7773b56011828305259f1fd61b02ca855e5a28eee34e146ad137fea554c9f35e3', 'Kalifah Umayyah', 'Perempuan', 56, 'Jl. Tiaka Raya, No 678', '685423020111', 'reseller.payakumbuh@gmail.com', 34124, 'Tidak ada keterangan...', 'reseller.png', 'reseller', '2017-05-28 00:00:00'),
(4, 'udinn', '0944c75d38d1d77c1e2386c85c13be6cc008df927cd40a9ea9683babefe81d00b845f2261331c7c34c0697f36351ddb80eecc8da7475d55d1912ef4813e0627a', 'Al-Bukhori Lapak', 'Laki-laki', 114, 'Jl. Kenduri Miranti Jaya, No 4B', '684521212121', 'uidn@gmail.com', 234234, '', 'reseller.png', 'reseller1', '2017-06-08 08:15:49'),
(8, 'karani', 'f0ee173a710fee0135db96e3611ccb97ce6b957859608df87b2b0cbf3ff7515a2ac453a3b390ebb5fff9e4096880e607ab222b03b3cb102174f8270256e9acaa', 'Khalid Walid', 'Laki-laki', 455, 'Jl. Gumarang Jaya', '681267901211', 'karani.reseller@gmail.com', 45098, 'Tidak ada keterangan,..', 'reseller.png', '', '2019-02-03 00:00:00'),
(6, 'reseller1', '26b9d5c44e21c2e826528389b8f5a25cf6be8fc9664bb350a587f5389c2cf63802ba5f38939af4ec489e7ceab1c5262070d0b620bfba446160fad09758301553', 'Cut Kebaya', 'Laki-laki', 62, 'Jl. Gang Cinta Suci, No 333 UT', '688834771222', 'sadasd@sdfsd.dssdf', 32423423, '', 'reseller.png', 'reseller1', '2017-06-08 08:52:21'),
(7, 'pataros', '23bf71807cbf8d06afe79f43ea3c645ca2a1ec572529bf349b0f2e50a09f86153fafcc9aaba730db2f2645262dab6184c0fb79097c955d90b4a69ec60eca81d1', 'Portanida Judo', 'Laki-laki', 79, 'jl. parakansaat no 21', '688910126225', 'ganiez.julians@gmail.com', 40293, '', '', '', '2018-09-11 11:28:43'),
(9, 'udin', '701b8e57d1f5bea33aff7748846c47dc113f0d1d5c340086b174a9836f0600ca5db28ae8a02b295cd7d5edbe38d4519a0396fe0aaf2efd4d8d561754ce4cdff7', 'Toko Udin', 'Laki-laki', 318, 'Kec. Koto Tangah, Tunggul Hitam', '081276661433', 'toko.udin@gmail.com', 24125, '', '', 'reseller', '2019-09-07 15:11:28');

-- --------------------------------------------------------

--
-- Struktur dari tabel `rb_reseller_cod`
--

CREATE TABLE `rb_reseller_cod` (
  `id_cod` int(11) NOT NULL,
  `id_reseller` int(11) NOT NULL,
  `nama_alamat` varchar(255) NOT NULL,
  `biaya_cod` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `rb_reseller_cod`
--

INSERT INTO `rb_reseller_cod` (`id_cod`, `id_reseller`, `nama_alamat`, `biaya_cod`) VALUES
(1, 1, 'Ulak Karang', 5500),
(2, 1, 'Tunggul Hitam', 6500),
(4, 1, 'Lubuk Begalung', 7600),
(5, 2, 'Ulak Karang', 0),
(6, 2, 'Air Tawar', 500);

-- --------------------------------------------------------

--
-- Struktur dari tabel `rb_reward`
--

CREATE TABLE `rb_reward` (
  `id_reward` int(5) NOT NULL,
  `posisi` int(100) NOT NULL,
  `reward` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `rb_reward`
--

INSERT INTO `rb_reward` (`id_reward`, `posisi`, `reward`) VALUES
(1, 100000, 'Samsung Galaxy Senilai 2.500.000'),
(2, 500000, 'Laptop Asus Senilai 5.000.000'),
(3, 1000000, 'Pergi Umroh Senilai 25.000.000'),
(4, 90000000, 'Mobil Seken Senilai 50.000.000'),
(5, 120000000, 'Mobil Mewah Senilai 80.000.000'),
(7, 150000000, 'Rumah Mewah Senilai 100.000.000');

-- --------------------------------------------------------

--
-- Struktur dari tabel `rb_setting`
--

CREATE TABLE `rb_setting` (
  `id_setting` int(11) NOT NULL,
  `referral` int(11) NOT NULL,
  `tanggal_pencairan` varchar(11) NOT NULL,
  `aktif` enum('Y','N') NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `rb_setting`
--

INSERT INTO `rb_setting` (`id_setting`, `referral`, `tanggal_pencairan`, `aktif`) VALUES
(1, 5, '1', 'Y');

-- --------------------------------------------------------

--
-- Struktur dari tabel `rb_supplier`
--

CREATE TABLE `rb_supplier` (
  `id_supplier` int(11) NOT NULL,
  `nama_supplier` varchar(255) NOT NULL,
  `kontak_person` varchar(100) NOT NULL,
  `alamat_lengkap` text NOT NULL,
  `no_hp` varchar(15) NOT NULL,
  `alamat_email` varchar(100) NOT NULL,
  `kode_pos` int(10) NOT NULL,
  `no_telpon` varchar(15) NOT NULL,
  `fax` varchar(15) NOT NULL,
  `keterangan` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `rb_supplier`
--

INSERT INTO `rb_supplier` (`id_supplier`, `nama_supplier`, `kontak_person`, `alamat_lengkap`, `no_hp`, `alamat_email`, `kode_pos`, `no_telpon`, `fax`, `keterangan`) VALUES
(1, 'PT. Elektronik Jaya Abadi', 'Muhammad Arsen', 'Jl. Siti Nurbayara, No 23 D, Tunggul Hitam, Padang', '082173054522', 'jaya.abadi@gmail.com', 56123, '0751461692', '0751461691', 'Tidak ada keterangan,..'),
(2, 'PT. Muda Hardware Sejahtera', 'Saiful Tanjung', 'Jl. Persada Ramayana, Ulak Karang, Padang', '098912334566', 'hardware.sejahtera@gmail.com', 87632, '075165321', '075165312', 'Tidak ada keterangan,..'),
(3, 'PT.Antasari Jaya Melajaya', 'Roberto Duransi', 'Jl. Kilometer Jaya Raya', '081288991244', 'roberto.melajaya@gmail.com', 12456, '0751890231', '0751890234', 'Tidak ada keterangan untuk supplier ini...');

-- --------------------------------------------------------

--
-- Struktur dari tabel `sekilasinfo`
--

CREATE TABLE `sekilasinfo` (
  `id_sekilas` int(5) NOT NULL,
  `info` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `tgl_posting` date NOT NULL,
  `gambar` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `aktif` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'Y'
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data untuk tabel `sekilasinfo`
--

INSERT INTO `sekilasinfo` (`id_sekilas`, `info`, `tgl_posting`, `gambar`, `aktif`) VALUES
(1, 'Anak yang mengalami gangguan tidur, cenderung memakai obat2an dan alkohol berlebih saat dewasa.', '2015-04-11', '', 'Y'),
(2, 'WHO merilis, 30 persen anak di dunia kecanduan komputer dan menonton televisi.', '2015-03-16', '', 'Y'),
(3, 'Menurut peneliti di Detroit, orang yang selalu tersenyum lebar cenderung hidup lama.', '2015-04-17', '', 'Y'),
(4, 'Menurut United Stated Trade Representatives, 25% obat yang beredar di adalah palsu.', '2015-04-17', '', 'Y');

-- --------------------------------------------------------

--
-- Struktur dari tabel `statistik`
--

CREATE TABLE `statistik` (
  `ip` varchar(20) NOT NULL DEFAULT '',
  `tanggal` date NOT NULL,
  `hits` int(10) NOT NULL DEFAULT 1,
  `online` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `statistik`
--

INSERT INTO `statistik` (`ip`, `tanggal`, `hits`, `online`) VALUES
('223.255.231.148', '2014-05-06', 1, '1399357334'),
('223.255.231.147', '2014-05-15', 3, '1400119147'),
('223.255.224.73', '2014-05-15', 12, '1400123797'),
('223.255.224.69', '2014-05-16', 2, '1400215103'),
('118.96.51.231', '2014-05-16', 19, '1400233044'),
('223.255.231.146', '2014-05-16', 2, '1400228049'),
('::1', '2014-06-20', 2, '1403230579'),
('::1', '2014-06-22', 8, '1403436591'),
('223.255.231.154', '2014-06-26', 1, '1403739948'),
('223.255.231.148', '2014-06-26', 6, '1403745715'),
('223.255.224.74', '2014-06-26', 1, '1403748060'),
('223.255.224.69', '2014-06-26', 1, '1403753239'),
('223.255.224.77', '2014-06-29', 1, '1404039342'),
('::1', '2014-07-02', 6, '1404277263'),
('127.0.0.1', '2014-07-17', 2, '1405582494'),
('127.0.0.1', '2014-07-21', 1, '1405929828'),
('36.76.60.43', '2014-07-21', 1, '1405951864'),
('223.255.231.154', '2014-07-21', 2, '1405957200'),
('223.255.227.21', '2014-07-22', 1, '1405995171'),
('223.255.231.146', '2014-07-22', 1, '1405997152'),
('223.255.227.21', '2014-07-23', 1, '1406100212'),
('223.255.227.17', '2014-07-23', 1, '1406104552'),
('223.255.227.23', '2014-07-24', 1, '1406168095'),
('223.255.231.153', '2014-07-24', 1, '1406204439'),
('223.255.231.146', '2014-07-25', 1, '1406268985'),
('180.76.5.193', '2014-08-06', 1, '1407302738'),
('180.76.5.23', '2014-08-06', 1, '1407304739'),
('202.67.36.241', '2014-08-06', 1, '1407305643'),
('198.148.27.22', '2014-08-06', 1, '1407306703'),
('180.251.170.42', '2014-08-06', 7, '1407310167'),
('128.199.171.191', '2014-08-06', 3, '1407323435'),
('223.255.231.149', '2014-08-06', 2, '1407309879'),
('223.255.227.28', '2014-08-06', 8, '1407311801'),
('103.24.49.242', '2014-08-06', 1, '1407312326'),
('223.255.231.146', '2014-08-06', 1, '1407313297'),
('180.214.233.34', '2014-08-06', 1, '1407321063'),
('66.249.77.87', '2014-08-06', 1, '1407323509'),
('223.255.227.30', '2014-08-06', 1, '1407325862'),
('180.254.207.13', '2014-08-06', 5, '1407330687'),
('114.79.13.199', '2014-08-06', 1, '1407336900'),
('202.152.199.34', '2014-08-06', 7, '1407337100'),
('180.76.6.21', '2014-08-07', 1, '1407347753'),
('114.79.13.55', '2014-08-07', 3, '1407354277'),
('114.125.41.136', '2014-08-07', 1, '1407352625'),
('180.76.6.147', '2014-08-07', 1, '1407355344'),
('180.76.6.64', '2014-08-07', 1, '1407367237'),
('69.171.247.116', '2014-08-07', 1, '1407379834'),
('69.171.247.119', '2014-08-07', 1, '1407379834'),
('69.171.247.114', '2014-08-07', 1, '1407379834'),
('69.171.247.115', '2014-08-07', 1, '1407379834'),
('202.67.34.29', '2014-08-07', 2, '1407380415'),
('36.76.52.112', '2014-08-07', 1, '1407380496'),
('223.255.231.145', '2014-08-07', 5, '1407387045'),
('223.255.231.153', '2014-08-07', 2, '1407388883'),
('223.255.227.27', '2014-08-07', 1, '1407393087'),
('180.76.5.25', '2014-08-07', 1, '1407394749'),
('223.255.231.146', '2014-08-07', 1, '1407397183'),
('157.55.39.248', '2014-08-07', 1, '1407397231'),
('180.254.200.55', '2014-08-07', 2, '1407399466'),
('110.139.67.15', '2014-08-07', 8, '1407399221'),
('180.242.17.64', '2014-08-07', 11, '1407414373'),
('141.0.8.59', '2014-08-07', 1, '1407412384'),
('110.76.149.91', '2014-08-07', 1, '1407422367'),
('223.255.231.151', '2014-08-07', 3, '1407426943'),
('82.145.209.206', '2014-08-07', 1, '1407430369'),
('223.255.227.28', '2014-08-08', 3, '1407469589'),
('66.93.156.50', '2014-08-08', 1, '1407472340'),
('202.62.17.47', '2014-08-08', 1, '1407484393'),
('36.70.135.163', '2014-08-08', 6, '1407485987'),
('173.252.74.115', '2014-08-08', 1, '1407485153'),
('118.96.58.136', '2014-08-08', 2, '1407486347'),
('114.79.29.68', '2014-08-08', 1, '1407502537'),
('66.220.156.113', '2014-08-08', 1, '1407503375'),
('112.215.66.79', '2014-08-08', 1, '1407503381'),
('125.163.113.156', '2014-08-08', 9, '1407508824'),
('180.76.5.94', '2014-08-08', 1, '1407508624'),
('120.172.9.192', '2014-08-08', 1, '1407515634'),
('202.67.41.51', '2014-08-08', 1, '1407515702'),
('180.253.243.222', '2014-08-09', 1, '1407542724'),
('36.75.224.20', '2014-08-09', 1, '1407548005'),
('180.76.5.65', '2014-08-09', 1, '1407548865'),
('66.249.77.77', '2014-08-09', 2, '1407582711'),
('180.76.6.137', '2014-08-09', 1, '1407553037'),
('66.249.77.87', '2014-08-09', 1, '1407554836'),
('66.249.77.97', '2014-08-09', 2, '1407562640'),
('120.177.44.126', '2014-08-09', 2, '1407558625'),
('223.255.231.145', '2014-08-09', 3, '1407558663'),
('36.73.64.113', '2014-08-09', 1, '1407558640'),
('36.72.187.12', '2014-08-09', 1, '1407560351'),
('202.67.41.51', '2014-08-09', 1, '1407561096'),
('114.125.60.68', '2014-08-09', 4, '1407561514'),
('202.67.40.50', '2014-08-09', 1, '1407562007'),
('180.76.6.136', '2014-08-09', 1, '1407562581'),
('110.232.81.2', '2014-08-09', 5, '1407563275'),
('146.185.28.59', '2014-08-09', 1, '1407564768'),
('120.174.157.139', '2014-08-09', 1, '1407568139'),
('223.255.227.23', '2014-08-09', 2, '1407570163'),
('193.105.210.119', '2014-08-09', 1, '1407577518'),
('125.162.57.66', '2014-08-09', 2, '1407579822'),
('180.241.163.1', '2014-08-09', 8, '1407580493'),
('36.76.44.163', '2014-08-09', 6, '1407603574'),
('180.76.5.144', '2014-08-09', 1, '1407582757'),
('107.167.103.40', '2014-08-09', 1, '1407586189'),
('36.68.48.23', '2014-08-09', 1, '1407586974'),
('192.99.218.151', '2014-08-09', 4, '1407587574'),
('36.74.55.24', '2014-08-09', 3, '1407589161'),
('118.97.212.184', '2014-08-09', 8, '1407595169'),
('36.72.114.118', '2014-08-09', 2, '1407597684'),
('180.76.5.153', '2014-08-09', 1, '1407602870'),
('180.76.5.59', '2014-08-09', 1, '1407603153'),
('180.76.5.18', '2014-08-10', 1, '1407606581'),
('180.254.155.156', '2014-08-10', 2, '1407607003'),
('180.76.6.42', '2014-08-10', 1, '1407608363'),
('36.68.242.217', '2014-08-10', 5, '1407627100'),
('66.249.77.77', '2014-08-10', 2, '1407633623'),
('202.67.44.64', '2014-08-10', 1, '1407629598'),
('180.76.6.43', '2014-08-10', 1, '1407631270'),
('118.97.212.182', '2014-08-10', 4, '1407632228'),
('139.0.102.140', '2014-08-10', 1, '1407633944'),
('66.249.77.87', '2014-08-10', 1, '1407636902'),
('66.249.77.97', '2014-08-10', 1, '1407639983'),
('180.76.6.159', '2014-08-10', 1, '1407640798'),
('118.97.212.181', '2014-08-10', 3, '1407642556'),
('36.68.46.37', '2014-08-10', 2, '1407642940'),
('180.76.5.69', '2014-08-10', 1, '1407645158'),
('180.76.5.80', '2014-08-10', 1, '1407648268'),
('180.76.5.143', '2014-08-10', 1, '1407650068'),
('223.255.231.145', '2014-08-10', 1, '1407650216'),
('180.76.6.149', '2014-08-10', 1, '1407657020'),
('36.77.183.218', '2014-08-10', 2, '1407657119'),
('127.0.0.1', '2014-08-10', 2, '1407660057'),
('127.0.0.1', '2014-08-11', 2, '1407725194'),
('127.0.0.1', '2014-08-12', 1, '1407862185'),
('127.0.0.1', '2014-08-13', 1, '1407899819'),
('127.0.0.1', '2014-08-17', 44, '1408287630'),
('127.0.0.1', '2014-08-18', 253, '1408372590'),
('127.0.0.1', '2014-08-19', 4, '1408413702'),
('::1', '2014-08-19', 90, '1408433250'),
('::1', '2014-08-31', 1, '1409487043'),
('::1', '2015-03-11', 11, '1426061663'),
('::1', '2015-03-12', 1, '1426114982'),
('::1', '2015-03-15', 32, '1426430637'),
('::1', '2015-03-18', 137, '1426666506'),
('::1', '2015-03-19', 143, '1426751746'),
('::1', '2015-03-21', 198, '1426912294'),
('::1', '2015-03-22', 554, '1427039069'),
('127.0.0.1', '2015-03-22', 1, '1427030317'),
('::1', '2015-03-23', 275, '1427093113'),
('::1', '2015-03-24', 42, '1427179474'),
('::1', '2015-03-25', 45, '1427251499'),
('39.225.164.2', '2015-05-14', 7, '1431584409'),
('119.110.72.130', '2015-05-14', 30, '1431595368'),
('89.145.95.2', '2015-05-14', 1, '1431582645'),
('66.220.158.118', '2015-05-14', 1, '1431582842'),
('66.220.158.115', '2015-05-14', 1, '1431582852'),
('66.220.158.112', '2015-05-14', 3, '1431595371'),
('66.220.158.119', '2015-05-14', 1, '1431582942'),
('114.125.43.185', '2015-05-14', 5, '1431602132'),
('119.110.72.130', '2015-05-15', 1, '1431673658'),
('114.125.45.206', '2015-05-16', 18, '1431741581'),
('66.220.158.116', '2015-05-16', 1, '1431741049'),
('66.220.158.118', '2015-05-16', 1, '1431741224'),
('66.220.158.114', '2015-05-16', 1, '1431741233'),
('39.229.6.148', '2015-05-16', 11, '1431791037'),
('39.225.236.155', '2015-05-17', 8, '1431862096'),
('119.110.72.130', '2015-05-19', 6, '1432006569'),
('89.145.95.42', '2015-05-19', 2, '1432006661'),
('114.121.133.117', '2015-05-19', 3, '1432046663'),
('124.195.114.65', '2015-05-28', 16, '1432832381'),
('66.220.158.119', '2015-05-28', 1, '1432831000'),
('66.220.158.115', '2015-05-28', 1, '1432831013'),
('66.220.158.116', '2015-05-28', 1, '1432832385'),
('124.195.114.65', '2015-05-29', 77, '1432836214'),
('66.220.158.113', '2015-05-29', 1, '1432835961'),
('66.249.84.178', '2015-05-29', 1, '1432836220'),
('103.246.200.14', '2015-05-29', 1, '1432851867'),
('103.246.200.59', '2015-05-29', 1, '1432851916'),
('114.124.5.250', '2015-05-29', 6, '1432852876'),
('173.252.105.114', '2015-05-29', 1, '1432852770'),
('120.180.175.150', '2015-05-29', 36, '1432864082'),
('103.246.200.50', '2015-05-29', 1, '1432863615'),
('103.246.200.1', '2015-05-29', 1, '1432863650'),
('103.246.200.33', '2015-05-29', 1, '1432863711'),
('103.246.200.44', '2015-05-29', 1, '1432863795'),
('120.174.144.115', '2015-05-29', 1, '1432908445'),
('119.110.72.130', '2015-05-29', 27, '1432912022'),
('173.252.90.117', '2015-05-29', 1, '1432910852'),
('173.252.90.116', '2015-05-29', 1, '1432910873'),
('173.252.90.118', '2015-05-29', 1, '1432911344'),
('173.252.90.122', '2015-05-29', 1, '1432911470'),
('66.249.84.190', '2015-05-30', 1, '1432945579'),
('39.254.117.222', '2015-05-30', 1, '1432991226'),
('66.249.84.178', '2015-05-31', 1, '1433037242'),
('120.176.92.190', '2015-06-01', 3, '1433128955'),
('66.102.6.210', '2015-06-01', 1, '1433134430'),
('120.164.44.28', '2015-06-01', 13, '1433149419'),
('124.195.118.227', '2015-06-01', 1, '1433170960'),
('120.177.28.244', '2015-06-02', 8, '1433220043'),
('66.249.84.190', '2015-06-02', 1, '1433247837'),
('120.190.75.179', '2015-06-03', 7, '1433302768'),
('119.110.72.130', '2015-06-03', 4, '1433302761'),
('89.145.95.2', '2015-06-03', 1, '1433302690'),
('66.249.71.147', '2015-06-07', 46, '1433696370'),
('66.249.71.130', '2015-06-07', 30, '1433696150'),
('66.249.71.164', '2015-06-07', 37, '1433696154'),
('173.252.74.113', '2015-06-07', 8, '1433694061'),
('173.252.74.117', '2015-06-07', 3, '1433676319'),
('66.249.64.57', '2015-06-07', 1, '1433674283'),
('173.252.88.89', '2015-06-07', 5, '1433677999'),
('173.252.88.86', '2015-06-07', 2, '1433677597'),
('173.252.74.119', '2015-06-07', 7, '1433694862'),
('66.249.79.117', '2015-06-07', 1, '1433674983'),
('173.252.88.84', '2015-06-07', 2, '1433676738'),
('173.252.74.115', '2015-06-07', 3, '1433676460'),
('173.252.74.114', '2015-06-07', 2, '1433694204'),
('173.252.74.118', '2015-06-07', 3, '1433676180'),
('173.252.74.112', '2015-06-07', 5, '1433695314'),
('173.252.88.85', '2015-06-07', 2, '1433677804'),
('173.252.88.90', '2015-06-07', 1, '1433676251'),
('173.252.74.116', '2015-06-07', 5, '1433695249'),
('173.252.88.87', '2015-06-07', 2, '1433677488'),
('173.252.88.88', '2015-06-07', 1, '1433677370'),
('66.249.79.130', '2015-06-07', 1, '1433694848'),
('66.220.156.116', '2015-06-07', 2, '1433696197'),
('66.249.67.104', '2015-06-07', 1, '1433696147'),
('66.220.156.112', '2015-06-07', 2, '1433696173'),
('66.220.146.22', '2015-06-07', 1, '1433696162'),
('66.249.67.117', '2015-06-07', 1, '1433696288'),
('66.220.156.114', '2015-06-07', 1, '1433696309'),
('66.220.156.117', '2015-06-08', 3, '1433711204'),
('66.249.71.164', '2015-06-08', 32, '1433779112'),
('66.220.146.25', '2015-06-08', 2, '1433736854'),
('66.220.156.116', '2015-06-08', 2, '1433709422'),
('66.249.71.147', '2015-06-08', 29, '1433748751'),
('66.220.156.112', '2015-06-08', 4, '1433715007'),
('66.220.146.20', '2015-06-08', 1, '1433696744'),
('66.249.71.130', '2015-06-08', 38, '1433777391'),
('66.220.156.118', '2015-06-08', 2, '1433712628'),
('66.220.146.27', '2015-06-08', 1, '1433712556'),
('66.220.146.26', '2015-06-08', 1, '1433712746'),
('66.249.67.104', '2015-06-08', 4, '1433746797'),
('66.220.146.22', '2015-06-08', 1, '1433714244'),
('66.220.156.115', '2015-06-08', 2, '1433714821'),
('66.249.67.117', '2015-06-08', 2, '1433780504'),
('120.176.251.49', '2015-06-08', 2, '1433737104'),
('66.220.156.119', '2015-06-08', 1, '1433737457'),
('66.249.71.147', '2015-06-09', 3, '1433836081'),
('66.249.71.130', '2015-06-09', 4, '1433835126'),
('66.249.67.104', '2015-06-09', 1, '1433788622'),
('66.249.71.164', '2015-06-09', 1, '1433823064'),
('66.249.71.130', '2015-06-10', 5, '1433953790'),
('66.249.67.117', '2015-06-10', 1, '1433911605'),
('66.249.71.164', '2015-06-10', 3, '1433954890'),
('66.249.71.147', '2015-06-10', 2, '1433953573'),
('66.249.71.147', '2015-06-11', 1, '1433957808'),
('66.249.71.164', '2015-06-11', 2, '1433990805'),
('68.180.228.104', '2015-06-11', 1, '1433975257'),
('66.249.71.130', '2015-06-11', 1, '1433991891'),
('36.68.28.19', '2015-06-14', 5, '1434224041'),
('120.164.46.127', '2015-06-14', 2, '1434239557'),
('66.249.67.248', '2015-06-15', 1, '1434362861'),
('104.193.10.50', '2015-06-15', 3, '1434372762'),
('104.193.10.50', '2015-06-16', 2, '1434454308'),
('36.80.234.114', '2015-06-16', 4, '1434443273'),
('173.252.74.115', '2015-06-16', 1, '1434443264'),
('173.252.74.114', '2015-06-16', 1, '1434443279'),
('119.110.72.130', '2015-06-16', 1, '1434467216'),
('124.195.116.71', '2015-06-17', 3, '1434551738'),
('120.184.130.21', '2015-06-27', 1, '1435386862'),
('66.249.84.246', '2015-06-27', 1, '1435387150'),
('120.176.176.106', '2015-06-28', 7, '1435461088'),
('66.220.158.114', '2015-06-28', 1, '1435461007'),
('66.249.84.129', '2015-06-28', 1, '1435466083'),
('66.249.84.246', '2015-06-29', 2, '1435563211'),
('66.249.84.252', '2015-06-29', 1, '1435563206'),
('66.249.84.246', '2015-06-30', 3, '1435677685'),
('66.249.84.252', '2015-06-30', 1, '1435645799'),
('66.249.84.252', '2015-07-01', 1, '1435710707'),
('66.249.84.129', '2015-07-01', 1, '1435711780'),
('120.177.18.200', '2015-07-02', 1, '1435824891'),
('::1', '2015-11-25', 15, '1448407930'),
('::1', '2015-12-01', 12, '1448944568'),
('::1', '2015-12-03', 9, '1449138520'),
('::1', '2015-12-05', 26, '1449279360'),
('::1', '2015-12-07', 4, '1449442678'),
('::1', '2015-12-08', 8, '1449532582'),
('::1', '2015-12-13', 31, '1449974628'),
('::1', '2015-12-18', 9, '1450418535'),
('::1', '2015-12-21', 10, '1450654644'),
('::1', '2015-12-24', 3, '1450917714'),
('::1', '2015-12-25', 4, '1451037761'),
('::1', '2015-12-26', 5, '1451086546'),
('::1', '2016-01-01', 1, '1451626224'),
('::1', '2016-01-12', 2, '1452564572'),
('::1', '2016-01-16', 7, '1452913899'),
('::1', '2016-01-17', 150, '1453036730'),
('::1', '2016-07-24', 24, '1469318037'),
('::1', '2016-07-29', 1, '1469767572'),
('::1', '2016-07-31', 1, '1469936872'),
('::1', '2016-08-01', 14, '1470019073'),
('::1', '2016-08-12', 4, '1470940786'),
('::1', '2016-08-14', 3, '1471191885'),
('::1', '2016-08-22', 5, '1471851644'),
('::1', '2016-08-26', 4, '1472207940'),
('::1', '2016-08-29', 9, '1472475500'),
('::1', '2016-08-30', 1, '1472531831'),
('::1', '2016-09-13', 4, '1473760584'),
('::1', '2016-09-16', 7, '1473998550'),
('::1', '2016-09-17', 3, '1474076080'),
('::1', '2016-09-20', 4, '1474335445'),
('::1', '2016-09-21', 5, '1474470987'),
('::1', '2016-09-26', 8, '1474866854'),
('::1', '2016-11-21', 20, '1479719811'),
('::1', '2016-11-22', 26, '1479795839'),
('::1', '2016-12-24', 1, '1482592503'),
('::1', '2016-12-23', 2, '1482451494'),
('::1', '2016-12-20', 7, '1482205377'),
('::1', '2016-12-14', 4, '1481717872'),
('::1', '2016-12-13', 24, '1481593512'),
('::1', '2016-12-09', 1, '1481243159'),
('::1', '2016-12-03', 3, '1480741491'),
('::1', '2016-11-28', 32, '1480303392'),
('::1', '2016-11-27', 2, '1480224412'),
('::1', '2016-11-24', 403, '1479984680'),
('::1', '2016-11-23', 2, '1479913316'),
('::1', '2017-01-03', 9, '1483421812'),
('::1', '2017-01-04', 2, '1483534977'),
('::1', '2017-01-05', 3, '1483627230'),
('::1', '2017-01-14', 1, '1484352852'),
('::1', '2017-01-17', 3, '1484663823'),
('::1', '2017-01-25', 12, '1485359750'),
('::1', '2017-01-26', 37, '1485414680'),
('::1', '2017-01-27', 70, '1485508785'),
('::1', '2017-01-28', 1, '1485567010'),
('::1', '2017-02-04', 1, '1486213804'),
('::1', '2017-02-09', 14, '1486659480'),
('::1', '2017-02-10', 3, '1486684650'),
('::1', '2017-02-11', 11, '1486773431'),
('::1', '2017-02-12', 6, '1486869838'),
('::1', '2017-02-13', 5, '1486995163'),
('::1', '2017-02-15', 3, '1487123924'),
('::1', '2017-02-21', 1, '1487659967'),
('::1', '2017-02-23', 7, '1487832476'),
('::1', '2017-02-26', 4, '1488064851'),
('::1', '2017-03-13', 44, '1489366890'),
('::1', '2017-03-17', 24, '1489744337'),
('::1', '2017-03-20', 1, '1489988038'),
('::1', '2017-03-25', 1, '1490413626'),
('::1', '2017-03-29', 7, '1490744633'),
('::1', '2017-04-02', 1, '1491122695'),
('::1', '2017-04-06', 56, '1491462329'),
('::1', '2017-04-07', 59, '1491524075'),
('::1', '2017-04-09', 20, '1491711058'),
('::1', '2017-04-11', 9, '1491877995'),
('::1', '2017-04-12', 124, '1492006218'),
('::1', '2017-04-13', 53, '1492088580'),
('::1', '2017-05-14', 133, '1494767093'),
('::1', '2017-05-20', 167, '1495299592'),
('::1', '2017-05-21', 234, '1495359950'),
('::1', '2018-04-19', 1, '1524111568'),
('::1', '2018-04-21', 1, '1524249582'),
('::1', '2018-04-24', 19, '1524509093'),
('::1', '2018-05-04', 13, '1525441129'),
('::1', '2018-05-05', 36, '1525494921'),
('::1', '2018-05-06', 5, '1525614861'),
('::1', '2018-05-11', 15, '1525998298'),
('::1', '2018-05-18', 4, '1526611139'),
('::1', '2018-05-19', 6, '1526701697'),
('::1', '2018-05-20', 13, '1526833607'),
('::1', '2018-05-22', 13, '1526947912'),
('::1', '2018-05-23', 16, '1527056425'),
('::1', '2018-05-31', 1, '1527743948'),
('::1', '2018-06-01', 2, '1527815549'),
('::1', '2018-06-03', 191, '1528045141'),
('::1', '2018-06-04', 100, '1528127678'),
('::1', '2018-12-11', 315, '1544522200'),
('::1', '2018-12-21', 68, '1545398144'),
('::1', '2018-12-22', 81, '1545450822'),
('::1', '2018-12-23', 310, '1545529051'),
('::1', '2018-12-26', 70, '1545792411'),
('::1', '2018-12-28', 21, '1545959894'),
('::1', '2019-01-01', 40, '1546327662'),
('::1', '2019-01-11', 1, '1547192056'),
('::1', '2019-01-15', 1, '1547535461'),
('::1', '2019-02-03', 21, '1549151755'),
('::1', '2019-02-08', 2, '1549583794'),
('::1', '2019-02-14', 5, '1550143909'),
('::1', '2019-02-16', 139, '1550293098'),
('::1', '2019-02-17', 12, '1550360900'),
('::1', '2019-02-18', 9, '1550451537'),
('::1', '2019-02-19', 11, '1550552634'),
('::1', '2019-02-20', 115, '1550632680'),
('::1', '2019-02-20', 115, '1550632680'),
('::1', '2019-02-22', 83, '1550824388'),
('::1', '2019-02-23', 143, '1550910213'),
('::1', '2019-03-03', 2, '1551627040'),
('::1', '2019-03-05', 1, '1551794436'),
('::1', '2019-03-21', 127, '1553174723'),
('::1', '2019-03-22', 25, '1553221802'),
('::1', '2019-03-23', 255, '1553343322'),
('::1', '2019-03-24', 151, '1553429554'),
('::1', '2019-03-25', 292, '1553521395'),
('::1', '2019-03-26', 236, '1553603754'),
('::1', '2019-03-27', 135, '1553688661'),
('::1', '2019-07-03', 36, '1562116358'),
('::1', '2019-07-05', 1, '1562284598'),
('::1', '2019-07-14', 2, '1563088030'),
('::1', '2019-08-03', 2, '1564790513'),
('::1', '2019-08-10', 1, '1565406009'),
('::1', '2019-08-17', 20, '1566001489'),
('::1', '2019-08-31', 58, '1567260005'),
('::1', '2019-09-01', 181, '1567296028'),
('::1', '2019-09-05', 15, '1567643036'),
('::1', '2019-09-07', 34, '1567844461'),
('::1', '2019-09-08', 51, '1567913869'),
('::1', '2019-09-11', 24, '1568161499'),
('::1', '2019-12-03', 35, '1575348564'),
('::1', '2019-12-21', 4, '1576910575'),
('::1', '2019-12-27', 1, '1577405560'),
('::1', '2020-01-03', 1, '1578006463'),
('::1', '2020-04-20', 3, '1587375762'),
('::1', '2020-04-29', 4, '1588153099'),
('::1', '2020-04-30', 2, '1588209547'),
('::1', '2020-05-04', 9, '1588562635'),
('::1', '2020-05-06', 1, '1588725736'),
('::1', '2020-05-07', 16, '1588815744'),
('::1', '2020-05-17', 3, '1589685726'),
('::1', '2020-05-29', 1, '1590712474'),
('::1', '2020-06-05', 26, '1591354064'),
('::1', '2020-06-06', 1, '1591413973'),
('::1', '2020-06-09', 31, '1591668223'),
('::1', '2020-06-11', 3, '1591874593'),
('::1', '2020-06-12', 35, '1591933443'),
('::1', '2020-06-13', 5, '1592023726'),
('::1', '2020-06-14', 26, '1592111538'),
('::1', '2020-06-17', 7, '1592374115'),
('::1', '2020-06-18', 2, '1592450929'),
('::1', '2020-06-19', 63, '1592552859'),
('::1', '2020-06-20', 16, '1592630337'),
('::1', '2020-06-23', 9, '1592884753'),
('::1', '2020-06-25', 16, '1593079452'),
('::1', '2020-06-28', 45, '1593315597'),
('::1', '2020-07-02', 33, '1593674922'),
('::1', '2020-07-03', 18, '1593782119'),
('::1', '2020-07-04', 6, '1593848928'),
('::1', '2020-07-05', 93, '1593932590'),
('::1', '2020-07-07', 84, '1594107465'),
('::1', '2022-07-13', 37, '1657652356');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tag`
--

CREATE TABLE `tag` (
  `id_tag` int(5) NOT NULL,
  `nama_tag` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `username` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `tag_seo` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `count` int(5) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tagvid`
--

CREATE TABLE `tagvid` (
  `id_tag` int(5) NOT NULL,
  `nama_tag` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `username` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `tag_seo` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `count` int(5) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data untuk tabel `tagvid`
--

INSERT INTO `tagvid` (`id_tag`, `nama_tag`, `username`, `tag_seo`, `count`) VALUES
(34, 'perang', 'admin', 'perang', 2),
(35, 'Teknologi', 'admin', 'teknologi', 0),
(36, 'Nasional', 'admin', 'nasional', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_comment`
--

CREATE TABLE `tbl_comment` (
  `id_komentar` int(5) NOT NULL,
  `reply` int(5) NOT NULL,
  `nama_lengkap` varchar(150) NOT NULL,
  `alamat_email` varchar(150) NOT NULL,
  `isi_pesan` text NOT NULL,
  `tanggal_komentar` date NOT NULL,
  `jam_komentar` time NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_comment`
--

INSERT INTO `tbl_comment` (`id_komentar`, `reply`, `nama_lengkap`, `alamat_email`, `isi_pesan`, `tanggal_komentar`, `jam_komentar`) VALUES
(1, 0, 'Robby Prihandaya', 'robby.prihandaya@gmail.com', 'Perubahan UUD 1945 yang membawa perubahan mendasar mengenai penyelengaraan kekuasaan kehakiman, membuat perlunya dilakukan perubahan secara komprehensif mengenai Undang-Undang Ketentuan-ketentuan Pokok Kekuasaan Kehakiman.								', '2014-11-19', '00:00:00'),
(2, 1, 'si anu', 'anu@gmail.com', 'Video bocah melakukan hubungan intim layaknya suami istri membuat geger. Guna mencegah hal-hal yang tidak diinginkan, polisi pun sudah melakukan penelusuran siapa orang di balik pembuatan video cabul tersebut.', '2014-11-19', '00:00:00'),
(3, 0, 'Rio Saputra', 'rio.saputra@gmail.com', 'Video bocah melakukan hubungan intim layaknya suami istri membuat geger. Guna mencegah hal-hal yang tidak diinginkan, polisi pun sudah melakukan penelusuran siapa orang di balik pembuatan video cabul tersebut. Perubahan UUD 1945 yang membawa perubahan mendasar mengenai penyelengaraan kekuasaan kehakiman.								', '2014-11-21', '00:00:00'),
(4, 1, 'Anggun Pratiwi', 'angun@gmail.com', 'itu benar bro, kalau ndak pacayo tanyo lah ka baruak.Video bocah melakukan hubungan intim layaknya suami istri membuat geger. Guna mencegah hal-hal yang tidak diinginkan, polisi pun sudah melakukan penelusuran siapa orang di balik pembuatan video cabul tersebut.', '2014-11-21', '00:00:00'),
(5, 3, 'Dewi Safitri', 'dewi.safitri@gmail.com', 'Oii, ang kareh bana mah, den ambuang ang ka lauik beko,.. Video bocah melakukan hubungan intim layaknya suami istri membuat geger. Guna mencegah hal-hal yang tidak diinginkan, polisi pun sudah melakukan penelusuran siapa orang di balik pembuatan video cabul tersebut.', '2014-11-21', '00:00:00'),
(6, 0, 'Ahmad Hunaldi', 'ahmad@gmail.com', 'badan-badan peradilan penyelenggara kekuasaan kehakiman, asas-asas penyelengaraan kekuasaan kehakiman Video bocah melakukan hubungan intim layaknya suami istri membuat geger. Guna mencegah hal-hal yang tidak diinginkan, polisi pun sudah melakukan penelusuran siapa orang di balik pembuatan video cabul tersebut.								', '2014-11-21', '00:00:00'),
(7, 6, 'Prasmana Enru', 'prasmana@gmail.com', 'Undang-Undang Ketentuan-ketentuan Pokok Kekuasaan	Video bocah melakukan hubungan intim layaknya suami istri membuat geger. Guna mencegah hal-hal yang tidak diinginkan, polisi pun sudah melakukan penelusuran siapa orang di balik pembuatan video cabul tersebut.', '2014-11-21', '00:00:00'),
(9, 3, 'Robby Prihandaya', 'robby.prihandaya@gmail.com', 'Untuk itulah penulis memberikan solusi menggunakan program Dreamweaver,.. Video bocah melakukan hubungan intim layaknya suami istri membuat geger. Guna mencegah hal-hal yang tidak diinginkan, polisi pun sudah melakukan penelusuran siapa orang di balik pembuatan video cabul tersebut.', '2015-01-22', '00:00:00'),
(14, 0, 'Udin Sedunia', 'udin.sedubia@gmail.com', 'Perlahan tapi pasti, sosok TM yang merupakan artis dan berprofesi sebagai Pekerja Seks Komersial (PSK) akhirnya mulai terungkap Video bocah melakukan hubungan intim layaknya suami istri membuat geger. Guna mencegah hal-hal yang tidak diinginkan, polisi pun sudah melakukan penelusuran siapa orang di balik pembuatan video cabul tersebut.', '2015-05-29', '00:54:31'),
(15, 6, 'Robby Prihandaya', 'robby.prihandaya@gmail.com', 'Perlahan tapi pasti, sosok TM yang merupakan artis dan berprofesi sebagai Pekerja Seks Komersial (PSK) akhirnya mulai terungkap Video bocah melakukan hubungan intim layaknya suami istri membuat geger. Guna mencegah hal-hal yang tidak diinginkan, polisi pun sudah melakukan penelusuran siapa orang di balik pembuatan video cabul tersebut.', '2015-05-29', '00:59:50'),
(23, 20, 'Robby Prihandaya', 'robby.prihandaya@gmail.com', 'I spent almost a day searching for this. And found &#039;CSS3 Thumbnail Slider&#039; on this site. Thanks a lot. If the slideIndex is higher than the number of elements (x.length), the slideIndex is set to zero.', '2017-01-24', '16:31:47'),
(24, 14, 'Robby Prihandaya', 'robby.prihandaya@gmail.com', 'Guna mencegah hal-hal yang tidak diinginkan, polisi pun sudah melakukan penelusuran siapa orang di balik pembuatan video cabul tersebut', '2017-04-09', '11:07:23');

-- --------------------------------------------------------

--
-- Struktur dari tabel `templates`
--

CREATE TABLE `templates` (
  `id_templates` int(5) NOT NULL,
  `judul` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `username` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `pembuat` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `folder` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `aktif` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'N'
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data untuk tabel `templates`
--

INSERT INTO `templates` (`id_templates`, `judul`, `username`, `pembuat`, `folder`, `aktif`) VALUES
(22, 'PHPMU-Tigo - RNAStore', 'admin', 'AYSHA RAISA NUTI', 'phpmu-tigo', 'Y');

-- --------------------------------------------------------

--
-- Struktur dari tabel `testimoni`
--

CREATE TABLE `testimoni` (
  `id_testimoni` int(11) NOT NULL,
  `id_konsumen` int(11) NOT NULL,
  `isi_testimoni` text NOT NULL,
  `aktif` enum('Y','N') NOT NULL,
  `waktu_testimoni` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `testimoni`
--

INSERT INTO `testimoni` (`id_testimoni`, `id_konsumen`, `isi_testimoni`, `aktif`, `waktu_testimoni`) VALUES
(1, 1, 'Saya berusaha mencoba memaklumi mereka tentang kesan menjadi entrepreneur instan ini dengan menjadi seorang MLM-ers, dengan menanyakan penyebab bisa memunculkan kesan instan tersebut. Mereka memberikan jawaban beragam berkaitan dengan proses instan seorang entrepreneur ini. ', 'Y', '2016-09-11 03:25:21'),
(2, 3, '<p>Menjadi seorang sukses dengan cara instan memang impian banyak orang dan saya yakin anda pun akan menyetujuinya. Namun, kembali lagi kepada diri anda sendiri apakah anda benar-benar memahami makna menjadi seorang entrepreneur sesungguhnya atau hanya memaknai seperti halnya membuat mie instan.</p>\n', 'Y', '2016-09-12 07:09:16'),
(5, 6, '<p>Saya berusaha mencoba memaklumi mereka tentang kesan menjadi entrepreneur instan ini dengan menjadi seorang MLM-ers, dengan menanyakan penyebab bisa memunculkan kesan instan tersebut. Mereka memberikan jawaban beragam berkaitan dengan proses instan seorang entrepreneur inii.</p>\r\n', 'Y', '2016-09-14 14:11:36'),
(9, 1, 'asdasdasd', 'N', '2020-06-23 10:18:03');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `username` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `password` varchar(255) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `nama_lengkap` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `email` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `no_telp` varchar(20) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `foto` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `level` varchar(20) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL DEFAULT 'user',
  `blokir` enum('Y','N') CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL DEFAULT 'N',
  `id_session` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`username`, `password`, `nama_lengkap`, `email`, `no_telp`, `foto`, `level`, `blokir`, `id_session`) VALUES
('admin', 'bff0cc42103de1b4721370e84dc24f635a7afeca41198c9b3e03946a1b6b7191d14356408a5e57ce6daf77e6e800c66fac7ab0482d57d48d23e6808e4b562daa', 'Administrator', 'RNAStore@gmail.com', '8121111109', 'NUTISTORE_(1).png', 'admin', 'N', 'q173s8hs1jl04st35169ccl8o7'),
('dewi', '82712d6185313c5cab37780e6aa1bb571b2283efa92fd7153a28bbb3e34b0489dcc5a943ae7f61c5380184fea2ee750c40718a1601d9e7748427a767bdc3f64b', 'Dewiiit Safitri', 'dewi.safitri@gmail.com', '081267778899', '', 'kontributor', 'N', 'ed1d859c50262701d92e5cbf39652792-20170120090507'),
('arsen', 'dac396a174a4a2aa2526bf23c05f0adbe6139f53047c273fd65e1fb813a05ce42a82d8e9b997972937a87238702dab4e981b184083d5d83b6542f79f29f8bde0', 'Muhammad Arsenio', 'muhammad.arsenio@gmail.com', '081267773333', '', 'kontributor', 'N', 'f76ad5ee772ac196cbc09824e24859ee'),
('abas', 'ab97e162f3e1f3cb1d2aee3173099a6c5c410537f101554d20e56cfe807f16a5cf18099ec1d11db60fdfb6c416c2dda10af75d57182b7d4c866c365495e6661d', 'abas abas abas', 'abas@gmail.com', '43234234234', 'foto.png', 'kontributor', 'N', '8462a1a67fbed2bef22d490d88e35944-20200619140142');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users_modul`
--

CREATE TABLE `users_modul` (
  `id_umod` int(11) NOT NULL,
  `id_session` varchar(255) NOT NULL,
  `id_modul` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `users_modul`
--

INSERT INTO `users_modul` (`id_umod`, `id_session`, `id_modul`) VALUES
(1, 'ed1d859c50262701d92e5cbf39652792-20170120090507', 70),
(2, 'ed1d859c50262701d92e5cbf39652792-20170120090507', 65),
(3, 'ed1d859c50262701d92e5cbf39652792-20170120090507', 63),
(4, 'f76ad5ee772ac196cbc09824e24859ee', 70),
(5, 'f76ad5ee772ac196cbc09824e24859ee', 65),
(6, 'f76ad5ee772ac196cbc09824e24859ee', 63),
(7, 'ed1d859c50262701d92e5cbf39652792-20170120090507', 18),
(8, 'ed1d859c50262701d92e5cbf39652792-20170120090507', 66),
(9, 'ed1d859c50262701d92e5cbf39652792-20170120090507', 33),
(10, '3460d81e02faa3559f9e02c9a766fcbd-20170124215625', 18),
(11, 'ed1d859c50262701d92e5cbf39652792-20170120090507', 41),
(12, '6bec9c852847242e384a4d5ac0962ba0-20170406140423', 18),
(13, 'fa7688658d8b38aae731826ea1daebb5-20170521103501', 18),
(14, 'cfcd208495d565ef66e7dff9f98764da-20180421112213', 18),
(15, '8462a1a67fbed2bef22d490d88e35944-20200619140142', 18);

-- --------------------------------------------------------

--
-- Struktur dari tabel `video`
--

CREATE TABLE `video` (
  `id_video` int(5) NOT NULL,
  `id_playlist` int(5) NOT NULL,
  `username` varchar(30) COLLATE latin1_general_ci NOT NULL,
  `jdl_video` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `video_seo` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `keterangan` text COLLATE latin1_general_ci NOT NULL,
  `gbr_video` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `video` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `youtube` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `dilihat` int(7) NOT NULL DEFAULT 1,
  `hari` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `tanggal` date NOT NULL,
  `jam` time NOT NULL,
  `tagvid` varchar(100) COLLATE latin1_general_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data untuk tabel `video`
--

INSERT INTO `video` (`id_video`, `id_playlist`, `username`, `jdl_video`, `video_seo`, `keterangan`, `gbr_video`, `video`, `youtube`, `dilihat`, `hari`, `tanggal`, `jam`, `tagvid`) VALUES
(160, 56, 'admin', 'Selamatkan Hutan di Indonesia', 'selamatkan-hutan-di-indonesia', 'Pengamat politik dari Charta Politika, Yunarto Wijaya mempertanyakan dasar keputusan SBY menunjuk Roy Suryo sebagai Menpora. Apalagi, kata Yunarto, ada pernyataan SBY yang menegaskan Roy cakap untuk mengemban tugas sebagai Menpora.\r\n\r\nMenurut Yunarto, Roy selama ini lebih dikenal sebagai pakar foto digital dan video serta dosen di sebuah perguruan tinggi negeri. \"Namun, belum terdengar kiprahnya di bidang kepemudaan dan olahraga,\" kata Yunarto. Sementara, tugas Menpora yang berat dan masa tugasnya relatif singkat idealnya mengutamakan figur yang kompetensinya teruji di bidang kepemudaan dan olahraga.\r\n\r\nKarena itu, Yunarto menduga penunjukan Roy bukan karena kompetensi, melainkan representasi politik. \"Ditunjuknya kader Partai Demokrat Roy Suryo sebagai Menpora menunjukkan faktor politisnya sangat kuat,\" katanya.', '', '', 'http://www.youtube.com/embed/hkzpLJjZQbA', 31, 'Rabu', '2014-07-02', '07:30:12', ''),
(161, 56, 'admin', 'Hutan Hujan Tropis Indonesia', 'hutan-hujan-tropis-indonesia', 'Pihak Partai Liberal Demokrat pun langsung melontarkan kecaman atas tulisan dari Ward. Juru bicara partai mengatakan bahwa pihak partainya akan menerapkan sanksi terhadap Ward.\r\n\r\nSementara pihak Partai Konservatif yang menguasai koalisi pemerintahan bersama Liberal Demokrat menyatakan Ward harus menarik komentarnya.\r\n\r\n\"Tidak seharusnya seorang anggota parlemen menulis tindakan yang memicu kekerasan. Tindakannya tidak bertanggung jawab,\" ucap pihak Konservatif.\r\n\r\nIni bukan pertama kalinya Ward mengecam tindakan Israel. Pada Juli 2013 lalu, Ward menyebut pihak Zionis diambang kekalahan dalam perang. Dirinya pun mempertanyakan sampai kapan negara apartheid seperti Israel bisa bertahan.', '', '', 'http://www.youtube.com/embed/5biK_PcT7S0', 24, 'Rabu', '2014-07-02', '07:31:23', ''),
(162, 57, 'admin', 'Perang Sengit Pasukan Darat Israel Vs Hamas', 'perang-sengit-pasukan-darat-israel-vs-hamas', 'Israel makin gencar melakukan serangan ke Gaza, baik melalui udara maupun darat. Masjid menjadi salah satu target serangan dari Negara Yahudi itu.\r\n\r\nSekira 15 warga Palestina dilaporkan tewas dan 20 lainnya dalam serangan udara Isarel ke sebuah masjid di Kota Gaza pada Sabtu 19 Juli 2014 lalu. Masjid itu terletak tidak jauh dari rumah milik Komandan Polisi Gaza.\r\n\r\nRudal-rudal dari Israel menghancurkan sebagian dari bangunan masjid. Alquran yang berada di dalam masjid pun tampak rusak akibat serangan. Demikian diberitakan Associated Press, Rabu (23/7/2014).\r\n\r\nSelain itu, serangan Israel juga diarahkan ke rumah sakit yang berada di Gaza. Blokade yang dilakukan oleh Israel makin membuat rumah sakit sulit untuk beroperasi.', '', '', 'https://www.youtube.com/watch?v=CeNjeD8yknI', 16, 'Rabu', '2014-07-23', '15:23:10', ''),
(163, 57, 'admin', 'Isael dan Palestina Memanas', 'isael-dan-palestina-memanas', 'Khamenei dikenal sebagai musuh besar Israel. Beberapa komentarnya membuat panas telinga pemimpin Israel.\r\n\r\nKomentar paling pedas Khamenei adalah Iran tidak pernah mengenal Israel. Negara ini juga secara terang-terangan mendukung Hamas. Hamas sendiri sudah dimasukan ke dalam daftar hitam terorisme oleh Israel.\r\n\r\nSelain itu, Khamenei dan beberapa pemimpin Iran berjanji akan menghilangkan Israel dari peta dunia. Bahkan, beberapa pekan lalu, Khamenei menyatakan peristiwa pembantaian warga Yahudi oleh Nazi satu abad lalu, hanyalah sebuah ilusi yang tak nyata.', '', '', 'https://www.youtube.com/watch?v=oaJpxuDh5Ds', 31, 'Rabu', '2014-07-23', '15:24:30', ''),
(164, 57, 'admin', 'Israel Tembak Mati Warga Palestina Saat Gencatan', 'israel-tembak-mati-warga-palestina-saat-gencatan', 'Seorang tentara Israel dilaporkan menghilang di Jalur Gaza. Hal ini terjadi usai terjadinya pertempuran mematikan yang terjadi di Jalur Gaza pada akhir pekan lalu.\r\n\r\nMelansir Boston Herald, Selasa (22/7/2014), pejabat pertahanan Israel mengatakan, tentaranya hilang usai pertempuran mematikan di Gaza terjadi pada pekan lalu. Namun, tidak jelas apakah tentara tersebut masih hidup atau sudah tewas.\r\n\r\nKonflik yang terjadi antara Israel dan Hamas sejauh ini sudah menyebabkan sekira 25 tentara Israel tewas dan ratusan warga Palestina. Sebagian besar korban warga Palestina adalah anak-anak.\r\n\r\nMemanasnya situasi itu membuat sejumlah desakan gencatan berdatangan dari sejumlah negara dan organisasi internasional.\r\n\r\nSebelumnya, Sekretaris Jendral Perserikatan Bangsa - Bangsa (PBB) Ban Ki-moon dan Menteri Luar Negeri Amerika Serikat (AS) John Kerry melakukan pertemuan di Kairo, Mesir. Pertemuan di bertujuan untuk mendesak agar konflik yang terjadi di Gaza segera dihentikan.', '', '', 'https://www.youtube.com/watch?v=L6R-5XUcDSY', 44, 'Rabu', '2014-07-23', '15:29:41', ''),
(165, 57, 'admin', 'Gaza conflict: Israel & Hamas face allegations of war crimes', 'gaza-conflict-israel--hamas-face-allegations-of-war-crimes', '<p>Sebelumnya, Sekretaris Jendral Perserikatan Bangsa - Bangsa (PBB) Ban Ki-moon dan Menteri Luar Negeri Amerika Serikat (AS) John Kerry melakukan pertemuan di Kairo, Mesir. Pertemuan di bertujuan untuk mendesak agar konflik yang terjadi di Gaza segera dihentikan. Mengingat agresi yang militer yang dilancarkan Israel merupakan pelanggaran hukum humaniter internasional. Menyusul banyak warga sipil yang telah menjadi korban akibat pertempuran yang dilakukan Israel dan Hamas. Sebelumnya, Sekretaris Jendral Perserikatan Bangsa - Bangsa (PBB) Ban Ki-moon dan Menteri Luar Negeri Amerika Serikat (AS) John Kerry melakukan pertemuan di Kairo, Mesir. Pertemuan di bertujuan untuk mendesak agar konflik yang terjadi di Gaza segera dihentikan. Mengingat agresi yang militer yang dilancarkan Israel merupakan pelanggaran hukum humaniter internasional. Menyusul banyak warga sipil yang telah menjadi korban akibat pertempuran yang dilakukan Israel dan Hamas.</p>\r\n', '', '', 'http://www.youtube.com/embed/aqI4DOilySg', 24, 'Minggu', '2014-08-17', '16:49:33', ''),
(166, 57, 'admin', 'Chomsky: Calling for change on US support for Israelll', 'chomsky-calling-for-change-on-us-support-for-israelll', '<p>Pemimpin tertinggi Iran, Ayatollah Ali Khamenei menyampaikan pernyataan kontroversial terkait ketegangan di Gaza. Khamenei mendorong agar Palestina terus melawan Israel. \"Salah satu cara untuk menghentikan rezim kurang ajar ini adalah melanjutkan perlawanan dan dan perjuangan bersenjata harus diperluas ke Tepi Barat,\" sebut Khamenei, seperti dikutip dari IRNA, Kamis (24/7/2014). Khamenei dikenal sebagai musuh besar Israel. Beberapa komentarnya membuat panas telinga pemimpin Israel.</p>\r\n\r\n<p>Pemimpin tertinggi Iran, Ayatollah Ali Khamenei menyampaikan pernyataan kontroversial terkait ketegangan di Gaza. Khamenei mendorong agar Palestina terus melawan Israel. Salah satu cara untuk menghentikan rezim kurang ajar ini adalah melanjutkan perlawanan dan dan perjuangan bersenjata harus diperluas ke Tepi Barat, sebut Khamenei, seperti dikutip dari IRNA, Kamis (24/7/2014). Khamenei dikenal sebagai musuh besar Israel. Beberapa komentarnya membuat panas telinga pemimpin Israel.</p>\r\n', '', '', 'http://www.youtube.com/embed/gQRJEnoxr2A', 122, 'Minggu', '2014-08-17', '16:51:04', 'perang');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `agenda`
--
ALTER TABLE `agenda`
  ADD PRIMARY KEY (`id_agenda`);

--
-- Indeks untuk tabel `album`
--
ALTER TABLE `album`
  ADD PRIMARY KEY (`id_album`);

--
-- Indeks untuk tabel `background`
--
ALTER TABLE `background`
  ADD PRIMARY KEY (`id_background`);

--
-- Indeks untuk tabel `banner`
--
ALTER TABLE `banner`
  ADD PRIMARY KEY (`id_banner`);

--
-- Indeks untuk tabel `berita`
--
ALTER TABLE `berita`
  ADD PRIMARY KEY (`id_berita`);

--
-- Indeks untuk tabel `download`
--
ALTER TABLE `download`
  ADD PRIMARY KEY (`id_download`);

--
-- Indeks untuk tabel `gallery`
--
ALTER TABLE `gallery`
  ADD PRIMARY KEY (`id_gallery`);

--
-- Indeks untuk tabel `halamanstatis`
--
ALTER TABLE `halamanstatis`
  ADD PRIMARY KEY (`id_halaman`);

--
-- Indeks untuk tabel `header`
--
ALTER TABLE `header`
  ADD PRIMARY KEY (`id_header`);

--
-- Indeks untuk tabel `hubungi`
--
ALTER TABLE `hubungi`
  ADD PRIMARY KEY (`id_hubungi`);

--
-- Indeks untuk tabel `identitas`
--
ALTER TABLE `identitas`
  ADD PRIMARY KEY (`id_identitas`);

--
-- Indeks untuk tabel `iklanatas`
--
ALTER TABLE `iklanatas`
  ADD PRIMARY KEY (`id_iklanatas`);

--
-- Indeks untuk tabel `iklantengah`
--
ALTER TABLE `iklantengah`
  ADD PRIMARY KEY (`id_iklantengah`);

--
-- Indeks untuk tabel `katajelek`
--
ALTER TABLE `katajelek`
  ADD PRIMARY KEY (`id_jelek`);

--
-- Indeks untuk tabel `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id_kategori`);

--
-- Indeks untuk tabel `komentar`
--
ALTER TABLE `komentar`
  ADD PRIMARY KEY (`id_komentar`);

--
-- Indeks untuk tabel `komentarvid`
--
ALTER TABLE `komentarvid`
  ADD PRIMARY KEY (`id_komentar`);

--
-- Indeks untuk tabel `logo`
--
ALTER TABLE `logo`
  ADD PRIMARY KEY (`id_logo`);

--
-- Indeks untuk tabel `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id_menu`);

--
-- Indeks untuk tabel `modul`
--
ALTER TABLE `modul`
  ADD PRIMARY KEY (`id_modul`);

--
-- Indeks untuk tabel `mod_alamat`
--
ALTER TABLE `mod_alamat`
  ADD PRIMARY KEY (`id_alamat`);

--
-- Indeks untuk tabel `mod_ym`
--
ALTER TABLE `mod_ym`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `pasangiklan`
--
ALTER TABLE `pasangiklan`
  ADD PRIMARY KEY (`id_pasangiklan`);

--
-- Indeks untuk tabel `playlist`
--
ALTER TABLE `playlist`
  ADD PRIMARY KEY (`id_playlist`);

--
-- Indeks untuk tabel `poling`
--
ALTER TABLE `poling`
  ADD PRIMARY KEY (`id_poling`);

--
-- Indeks untuk tabel `rb_bonus`
--
ALTER TABLE `rb_bonus`
  ADD PRIMARY KEY (`id_bonus`);

--
-- Indeks untuk tabel `rb_kategori_produk`
--
ALTER TABLE `rb_kategori_produk`
  ADD PRIMARY KEY (`id_kategori_produk`);

--
-- Indeks untuk tabel `rb_kategori_produk_sub`
--
ALTER TABLE `rb_kategori_produk_sub`
  ADD PRIMARY KEY (`id_kategori_produk_sub`);

--
-- Indeks untuk tabel `rb_keterangan`
--
ALTER TABLE `rb_keterangan`
  ADD PRIMARY KEY (`id_keterangan`);

--
-- Indeks untuk tabel `rb_konfirmasi_pembayaran`
--
ALTER TABLE `rb_konfirmasi_pembayaran`
  ADD PRIMARY KEY (`id_konfirmasi_pembayaran`);

--
-- Indeks untuk tabel `rb_konfirmasi_pembayaran_konsumen`
--
ALTER TABLE `rb_konfirmasi_pembayaran_konsumen`
  ADD PRIMARY KEY (`id_konfirmasi_pembayaran`);

--
-- Indeks untuk tabel `rb_konsumen`
--
ALTER TABLE `rb_konsumen`
  ADD PRIMARY KEY (`id_konsumen`);

--
-- Indeks untuk tabel `rb_kota`
--
ALTER TABLE `rb_kota`
  ADD PRIMARY KEY (`kota_id`);

--
-- Indeks untuk tabel `rb_pembayaran_bonus`
--
ALTER TABLE `rb_pembayaran_bonus`
  ADD PRIMARY KEY (`id_pembayaran_bonus`);

--
-- Indeks untuk tabel `rb_pembelian`
--
ALTER TABLE `rb_pembelian`
  ADD PRIMARY KEY (`id_pembelian`);

--
-- Indeks untuk tabel `rb_pembelian_detail`
--
ALTER TABLE `rb_pembelian_detail`
  ADD PRIMARY KEY (`id_pembelian_detail`);

--
-- Indeks untuk tabel `rb_pencairan_bonus`
--
ALTER TABLE `rb_pencairan_bonus`
  ADD PRIMARY KEY (`id_pencairan_bonus`);

--
-- Indeks untuk tabel `rb_pencairan_reward`
--
ALTER TABLE `rb_pencairan_reward`
  ADD PRIMARY KEY (`id_pencairan_reward`);

--
-- Indeks untuk tabel `rb_penjualan`
--
ALTER TABLE `rb_penjualan`
  ADD PRIMARY KEY (`id_penjualan`);

--
-- Indeks untuk tabel `rb_penjualan_detail`
--
ALTER TABLE `rb_penjualan_detail`
  ADD PRIMARY KEY (`id_penjualan_detail`);

--
-- Indeks untuk tabel `rb_penjualan_temp`
--
ALTER TABLE `rb_penjualan_temp`
  ADD PRIMARY KEY (`id_penjualan_detail`);

--
-- Indeks untuk tabel `rb_produk`
--
ALTER TABLE `rb_produk`
  ADD PRIMARY KEY (`id_produk`);

--
-- Indeks untuk tabel `rb_produk_diskon`
--
ALTER TABLE `rb_produk_diskon`
  ADD PRIMARY KEY (`id_produk_diskon`);

--
-- Indeks untuk tabel `rb_provinsi`
--
ALTER TABLE `rb_provinsi`
  ADD PRIMARY KEY (`provinsi_id`);

--
-- Indeks untuk tabel `rb_rekening`
--
ALTER TABLE `rb_rekening`
  ADD PRIMARY KEY (`id_rekening`);

--
-- Indeks untuk tabel `rb_rekening_reseller`
--
ALTER TABLE `rb_rekening_reseller`
  ADD PRIMARY KEY (`id_rekening_reseller`);

--
-- Indeks untuk tabel `rb_reseller`
--
ALTER TABLE `rb_reseller`
  ADD PRIMARY KEY (`id_reseller`);

--
-- Indeks untuk tabel `rb_reseller_cod`
--
ALTER TABLE `rb_reseller_cod`
  ADD PRIMARY KEY (`id_cod`);

--
-- Indeks untuk tabel `rb_reward`
--
ALTER TABLE `rb_reward`
  ADD PRIMARY KEY (`id_reward`);

--
-- Indeks untuk tabel `rb_setting`
--
ALTER TABLE `rb_setting`
  ADD PRIMARY KEY (`id_setting`);

--
-- Indeks untuk tabel `rb_supplier`
--
ALTER TABLE `rb_supplier`
  ADD PRIMARY KEY (`id_supplier`);

--
-- Indeks untuk tabel `sekilasinfo`
--
ALTER TABLE `sekilasinfo`
  ADD PRIMARY KEY (`id_sekilas`);

--
-- Indeks untuk tabel `tag`
--
ALTER TABLE `tag`
  ADD PRIMARY KEY (`id_tag`);

--
-- Indeks untuk tabel `tagvid`
--
ALTER TABLE `tagvid`
  ADD PRIMARY KEY (`id_tag`);

--
-- Indeks untuk tabel `tbl_comment`
--
ALTER TABLE `tbl_comment`
  ADD PRIMARY KEY (`id_komentar`);

--
-- Indeks untuk tabel `templates`
--
ALTER TABLE `templates`
  ADD PRIMARY KEY (`id_templates`);

--
-- Indeks untuk tabel `testimoni`
--
ALTER TABLE `testimoni`
  ADD PRIMARY KEY (`id_testimoni`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`username`);

--
-- Indeks untuk tabel `users_modul`
--
ALTER TABLE `users_modul`
  ADD PRIMARY KEY (`id_umod`);

--
-- Indeks untuk tabel `video`
--
ALTER TABLE `video`
  ADD PRIMARY KEY (`id_video`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `agenda`
--
ALTER TABLE `agenda`
  MODIFY `id_agenda` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

--
-- AUTO_INCREMENT untuk tabel `album`
--
ALTER TABLE `album`
  MODIFY `id_album` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT untuk tabel `background`
--
ALTER TABLE `background`
  MODIFY `id_background` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `banner`
--
ALTER TABLE `banner`
  MODIFY `id_banner` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT untuk tabel `berita`
--
ALTER TABLE `berita`
  MODIFY `id_berita` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `download`
--
ALTER TABLE `download`
  MODIFY `id_download` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `gallery`
--
ALTER TABLE `gallery`
  MODIFY `id_gallery` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `halamanstatis`
--
ALTER TABLE `halamanstatis`
  MODIFY `id_halaman` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT untuk tabel `header`
--
ALTER TABLE `header`
  MODIFY `id_header` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT untuk tabel `hubungi`
--
ALTER TABLE `hubungi`
  MODIFY `id_hubungi` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT untuk tabel `identitas`
--
ALTER TABLE `identitas`
  MODIFY `id_identitas` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `iklanatas`
--
ALTER TABLE `iklanatas`
  MODIFY `id_iklanatas` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT untuk tabel `iklantengah`
--
ALTER TABLE `iklantengah`
  MODIFY `id_iklantengah` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT untuk tabel `katajelek`
--
ALTER TABLE `katajelek`
  MODIFY `id_jelek` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id_kategori` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `komentar`
--
ALTER TABLE `komentar`
  MODIFY `id_komentar` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `komentarvid`
--
ALTER TABLE `komentarvid`
  MODIFY `id_komentar` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `logo`
--
ALTER TABLE `logo`
  MODIFY `id_logo` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT untuk tabel `menu`
--
ALTER TABLE `menu`
  MODIFY `id_menu` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=156;

--
-- AUTO_INCREMENT untuk tabel `modul`
--
ALTER TABLE `modul`
  MODIFY `id_modul` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;

--
-- AUTO_INCREMENT untuk tabel `mod_alamat`
--
ALTER TABLE `mod_alamat`
  MODIFY `id_alamat` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `mod_ym`
--
ALTER TABLE `mod_ym`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `pasangiklan`
--
ALTER TABLE `pasangiklan`
  MODIFY `id_pasangiklan` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT untuk tabel `playlist`
--
ALTER TABLE `playlist`
  MODIFY `id_playlist` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `poling`
--
ALTER TABLE `poling`
  MODIFY `id_poling` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT untuk tabel `rb_bonus`
--
ALTER TABLE `rb_bonus`
  MODIFY `id_bonus` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `rb_kategori_produk`
--
ALTER TABLE `rb_kategori_produk`
  MODIFY `id_kategori_produk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT untuk tabel `rb_kategori_produk_sub`
--
ALTER TABLE `rb_kategori_produk_sub`
  MODIFY `id_kategori_produk_sub` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `rb_keterangan`
--
ALTER TABLE `rb_keterangan`
  MODIFY `id_keterangan` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `rb_konfirmasi_pembayaran`
--
ALTER TABLE `rb_konfirmasi_pembayaran`
  MODIFY `id_konfirmasi_pembayaran` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `rb_konfirmasi_pembayaran_konsumen`
--
ALTER TABLE `rb_konfirmasi_pembayaran_konsumen`
  MODIFY `id_konfirmasi_pembayaran` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT untuk tabel `rb_konsumen`
--
ALTER TABLE `rb_konsumen`
  MODIFY `id_konsumen` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT untuk tabel `rb_kota`
--
ALTER TABLE `rb_kota`
  MODIFY `kota_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=502;

--
-- AUTO_INCREMENT untuk tabel `rb_pembayaran_bonus`
--
ALTER TABLE `rb_pembayaran_bonus`
  MODIFY `id_pembayaran_bonus` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `rb_pembelian`
--
ALTER TABLE `rb_pembelian`
  MODIFY `id_pembelian` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `rb_pembelian_detail`
--
ALTER TABLE `rb_pembelian_detail`
  MODIFY `id_pembelian_detail` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT untuk tabel `rb_pencairan_bonus`
--
ALTER TABLE `rb_pencairan_bonus`
  MODIFY `id_pencairan_bonus` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `rb_pencairan_reward`
--
ALTER TABLE `rb_pencairan_reward`
  MODIFY `id_pencairan_reward` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `rb_penjualan`
--
ALTER TABLE `rb_penjualan`
  MODIFY `id_penjualan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=131;

--
-- AUTO_INCREMENT untuk tabel `rb_penjualan_detail`
--
ALTER TABLE `rb_penjualan_detail`
  MODIFY `id_penjualan_detail` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=201;

--
-- AUTO_INCREMENT untuk tabel `rb_penjualan_temp`
--
ALTER TABLE `rb_penjualan_temp`
  MODIFY `id_penjualan_detail` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT untuk tabel `rb_produk`
--
ALTER TABLE `rb_produk`
  MODIFY `id_produk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT untuk tabel `rb_produk_diskon`
--
ALTER TABLE `rb_produk_diskon`
  MODIFY `id_produk_diskon` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT untuk tabel `rb_provinsi`
--
ALTER TABLE `rb_provinsi`
  MODIFY `provinsi_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT untuk tabel `rb_rekening`
--
ALTER TABLE `rb_rekening`
  MODIFY `id_rekening` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `rb_rekening_reseller`
--
ALTER TABLE `rb_rekening_reseller`
  MODIFY `id_rekening_reseller` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `rb_reseller`
--
ALTER TABLE `rb_reseller`
  MODIFY `id_reseller` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `rb_reseller_cod`
--
ALTER TABLE `rb_reseller_cod`
  MODIFY `id_cod` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `rb_reward`
--
ALTER TABLE `rb_reward`
  MODIFY `id_reward` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `rb_setting`
--
ALTER TABLE `rb_setting`
  MODIFY `id_setting` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `rb_supplier`
--
ALTER TABLE `rb_supplier`
  MODIFY `id_supplier` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `sekilasinfo`
--
ALTER TABLE `sekilasinfo`
  MODIFY `id_sekilas` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT untuk tabel `tag`
--
ALTER TABLE `tag`
  MODIFY `id_tag` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT untuk tabel `tagvid`
--
ALTER TABLE `tagvid`
  MODIFY `id_tag` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT untuk tabel `tbl_comment`
--
ALTER TABLE `tbl_comment`
  MODIFY `id_komentar` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT untuk tabel `templates`
--
ALTER TABLE `templates`
  MODIFY `id_templates` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT untuk tabel `testimoni`
--
ALTER TABLE `testimoni`
  MODIFY `id_testimoni` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `users_modul`
--
ALTER TABLE `users_modul`
  MODIFY `id_umod` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT untuk tabel `video`
--
ALTER TABLE `video`
  MODIFY `id_video` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=175;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
