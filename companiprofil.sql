-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: 03 Jul 2020 pada 15.43
-- Versi Server: 5.7.19
-- PHP Version: 7.1.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `companiprofil`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `admins`
--

DROP TABLE IF EXISTS `admins`;
CREATE TABLE IF NOT EXISTS `admins` (
  `admin_id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(225) NOT NULL,
  `slug_admin` varchar(225) NOT NULL,
  `password` varchar(225) NOT NULL,
  `email` varchar(225) NOT NULL,
  PRIMARY KEY (`admin_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `admins`
--

INSERT INTO `admins` (`admin_id`, `username`, `slug_admin`, `password`, `email`) VALUES
(1, 'admin', '', 'd033e22ae348aeb5660fc2140aec35850c4da997', 'contact@compose.com'),
(2, 'admin2', '', 'admin2', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `blogs`
--

DROP TABLE IF EXISTS `blogs`;
CREATE TABLE IF NOT EXISTS `blogs` (
  `blog_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `title` varchar(225) NOT NULL,
  `slug_blog` varchar(225) NOT NULL,
  `content` text NOT NULL,
  `image` varchar(225) NOT NULL,
  `date_post` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` varchar(100) NOT NULL,
  `keywords` text NOT NULL,
  PRIMARY KEY (`blog_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `blogs`
--

INSERT INTO `blogs` (`blog_id`, `user_id`, `category_id`, `title`, `slug_blog`, `content`, `image`, `date_post`, `status`, `keywords`) VALUES
(2, 1, 2, 'test111', '10-test111', '<p>testing</p>', '29006-art_alphacoders_com2.jpg', '2017-02-24 07:21:31', 'publish', 'testing'),
(3, 1, 2, 'cara membuat anak', 'cara-membuat-anak', '<p>awdawd</p>', '8645-c-programming-1366x768-computer-wallpaper.jpg', '2017-02-16 08:26:28', 'publish', 'Cara membuat anak'),
(5, 1, 2, 'sfsefsef1', '5-sfsefsef1', '<p>dsdfsdf</p>', '1385096_445510758888115_1423375145_n.jpg', '2017-02-16 08:45:03', 'draft', 'ssdvsfs'),
(6, 1, 2, 'Apakah ahok akan menang?', 'apakah-ahok-akan-menang', '<p>Lorem Ipsum IdoorLorem Ipsum IdoorLorem Ipsum Idoor&nbsp;Lorem Ipsum Idoor&nbsp;Lorem Ipsum Idoor&nbsp;Lorem Ipsum Idoor&nbsp;Lorem Ipsum Idoor&nbsp;Lorem Ipsum Idoor&nbsp;Lorem Ipsum Idoor&nbsp;Lorem Ipsum IdoorLorem Ipsum IdoorLorem Ipsum Idoor&nbsp;Lorem Ipsum Idoor&nbsp;Lorem Ipsum Idoor&nbsp;Lorem Ipsum Idoor&nbsp;Lorem Ipsum Idoor&nbsp;Lorem Ipsum Idoor&nbsp;Lorem Ipsum Idoor&nbsp;Lorem Ipsum IdoorLorem Ipsum IdoorLorem Ipsum Idoor&nbsp;Lorem Ipsum Idoor&nbsp;Lorem Ipsum Idoor&nbsp;Lorem Ipsum Idoor&nbsp;Lorem Ipsum Idoor&nbsp;Lorem Ipsum Idoor&nbsp;Lorem Ipsum Idoor&nbsp;Lorem Ipsum IdoorLorem Ipsum IdoorLorem Ipsum Idoor&nbsp;Lorem Ipsum Idoor&nbsp;Lorem Ipsum Idoor&nbsp;Lorem Ipsum Idoor&nbsp;Lorem Ipsum Idoor&nbsp;Lorem Ipsum Idoor&nbsp;Lorem Ipsum Idoor&nbsp;Lorem Ipsum IdoorLorem Ipsum IdoorLorem Ipsum Idoor&nbsp;Lorem Ipsum Idoor&nbsp;Lorem Ipsum Idoor&nbsp;Lorem Ipsum Idoor&nbsp;Lorem Ipsum Idoor&nbsp;Lorem Ipsum Idoor&nbsp;Lorem Ipsum Idoor</p>', '3D-Scenery-HD-Macbook-Wallpaper4.jpg', '2017-02-17 09:20:08', 'publish', 'ahok kalah'),
(7, 1, 3, 'testing', 'testing', '<p>test</p>', '114845.jpg', '2017-02-23 05:47:56', 'publish', 'test'),
(8, 1, 3, 'adawda', 'adawda', '<p>awdawd</p>', '114846.jpg', '2017-02-23 06:31:47', 'publish', 'awdawd'),
(9, 1, 2, 'dawdawd', 'dawdawd', '<p>awdawd</p>', '29006-art_alphacoders_com8.jpg', '2017-02-24 07:17:20', 'publish', 'awdaw'),
(10, 1, 2, 'awdawd', 'awdawd', '<p>awdawd</p>', '29006-art_alphacoders_com9.jpg', '2017-02-24 07:21:10', 'publish', 'awdawd');

-- --------------------------------------------------------

--
-- Struktur dari tabel `books`
--

DROP TABLE IF EXISTS `books`;
CREATE TABLE IF NOT EXISTS `books` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kategori` varchar(50) NOT NULL,
  `isi_kategori` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `books`
--

INSERT INTO `books` (`id`, `kategori`, `isi_kategori`) VALUES
(1, 'sosial', 'asdas dadanmg'),
(2, 'training', 'asdasdas'),
(3, 'suport', 'asdas');

-- --------------------------------------------------------

--
-- Struktur dari tabel `categories`
--

DROP TABLE IF EXISTS `categories`;
CREATE TABLE IF NOT EXISTS `categories` (
  `category_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `category_name` varchar(225) NOT NULL,
  `slug_category` varchar(225) NOT NULL,
  `order_category` int(11) NOT NULL,
  `category_description` text NOT NULL,
  `date_category` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `categories`
--

INSERT INTO `categories` (`category_id`, `user_id`, `category_name`, `slug_category`, `order_category`, `category_description`, `date_category`) VALUES
(2, 1, 'News', '2-news', 1, 'News Update', '2017-02-15 14:31:39'),
(3, 1, 'Politik', 'politik', 2, 'Seputar Politik', '2017-02-23 05:47:26');

-- --------------------------------------------------------

--
-- Struktur dari tabel `clients`
--

DROP TABLE IF EXISTS `clients`;
CREATE TABLE IF NOT EXISTS `clients` (
  `client_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `client_name` varchar(225) NOT NULL,
  `slug_client` varchar(225) NOT NULL,
  `image` varchar(225) NOT NULL,
  `website` varchar(225) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` varchar(100) NOT NULL,
  PRIMARY KEY (`client_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `clients`
--

INSERT INTO `clients` (`client_id`, `user_id`, `client_name`, `slug_client`, `image`, `website`, `date`, `status`) VALUES
(2, 1, 'Hutan', 'hutan', '29006-art_alphacoders_com6.jpg', 'hutan.com', '2017-02-16 09:59:09', 'publish'),
(3, 1, 'C Programming', 'c-programming', '8645-c-programming-1366x768-computer-wallpaper1.jpg', 'http://indrarukmana.com', '2017-02-23 10:15:17', 'publish');

-- --------------------------------------------------------

--
-- Struktur dari tabel `comments`
--

DROP TABLE IF EXISTS `comments`;
CREATE TABLE IF NOT EXISTS `comments` (
  `comment_id` int(11) NOT NULL AUTO_INCREMENT,
  `blog_id` int(11) NOT NULL,
  `name` varchar(225) NOT NULL,
  `email` varchar(225) NOT NULL,
  `website` varchar(225) NOT NULL,
  `message` text NOT NULL,
  `date_comment` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`comment_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `comments`
--

INSERT INTO `comments` (`comment_id`, `blog_id`, `name`, `email`, `website`, `message`, `date_comment`) VALUES
(1, 0, 'Indra', 'indrkmna@gmail.com', 'http://indrarukmana.com', 'testing', '2017-02-20 03:54:40'),
(2, 0, 'awda', 'wdqdq@gmail.com', 'http://indrarukmana.com', 'qwdq', '2017-02-20 03:55:42'),
(3, 2, 'rats', 'rats123@gmail.com', 'http://indrarukmana.com', 'rats', '2017-02-20 03:56:37'),
(4, 2, 'xaxsa', 'scascasc@gmail.com', 'http://indrarukmana.com', 'ascasc', '2017-02-20 04:07:27'),
(5, 2, 'adwd', 'awda@gmail.com', 'http://indrarukmana.com', 'dawd', '2017-02-20 04:20:42'),
(6, 3, 'awd', 'apoyaja@gmail.com', 'http://indrarukmana.com', 'qwdqwd', '2017-02-24 07:22:53');

-- --------------------------------------------------------

--
-- Struktur dari tabel `config`
--

DROP TABLE IF EXISTS `config`;
CREATE TABLE IF NOT EXISTS `config` (
  `config_id` int(11) NOT NULL AUTO_INCREMENT,
  `nameweb` varchar(225) NOT NULL,
  `email` varchar(225) NOT NULL,
  `keywords` text NOT NULL,
  `google_maps` text NOT NULL,
  `logo` varchar(225) NOT NULL,
  `icon` varchar(225) NOT NULL,
  `about` text NOT NULL,
  `address` text NOT NULL,
  `city` varchar(100) NOT NULL,
  `zip_code` varchar(100) NOT NULL,
  `phone_number` varchar(225) NOT NULL,
  `metatext` text NOT NULL,
  `fax` text NOT NULL,
  `facebook` varchar(225) NOT NULL,
  `twitter` varchar(225) NOT NULL,
  `instagram` varchar(225) NOT NULL,
  `google_plus` varchar(225) NOT NULL,
  `pinterest` varchar(225) NOT NULL,
  PRIMARY KEY (`config_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `config`
--

INSERT INTO `config` (`config_id`, `nameweb`, `email`, `keywords`, `google_maps`, `logo`, `icon`, `about`, `address`, `city`, `zip_code`, `phone_number`, `metatext`, `fax`, `facebook`, `twitter`, `instagram`, `google_plus`, `pinterest`) VALUES
(1, 'Nirasoft', 'contact@nirasoft.com', 'Pickup your items', 'https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d15852.780606179473!2d106.81194969999999!3d-6.6226642!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x2c118e7fe877e90a!2sLippo+Plaza+Ekalokasari+Bogor!5e0!3m2!1sid!2sid!4v1482767277891', 'site-logo.png', 'i3qUAvP.jpg', '<p>lorem ipsum idoor lorem ipsum idoor lorem ipsum idoorlorem ipsum idoorlorem ipsum idoorlorem ipsum idoorlorem ipsum idoorlorem ipsum idoor lorem ipsum idoor lorem ipsum idoor lorem ipsum idoorlorem ipsum idoorlorem ipsum idoorlorem ipsum idoorlorem ipsum idoorlorem ipsum idoor</p>', 'Perkantoran selatan', 'Bandung', '18923', '324234', 'lorem ipsum idoor lorem ipsum idoor lorem ipsum idoorlorem ipsum idoorlorem ipsum idoorlorem ipsum idoorlorem ipsum idoorlorem ipsum idoor lorem ipsum idoor lorem ipsum idoor lorem ipsum idoorlorem ipsum idoorlorem ipsum idoorlorem ipsum idoorlorem ipsum idoorlorem ipsum idoor', '23424', 'https://www.facebook.com/indrkmna/', '', 'https://www.instagram.com/indra.97/', '', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `contacts`
--

DROP TABLE IF EXISTS `contacts`;
CREATE TABLE IF NOT EXISTS `contacts` (
  `message_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(225) NOT NULL,
  `email` varchar(100) NOT NULL,
  `subject` varchar(100) NOT NULL,
  `messages` text NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`message_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `contacts`
--

INSERT INTO `contacts` (`message_id`, `name`, `email`, `subject`, `messages`, `date`) VALUES
(1, 'indra', 'indrkmna@gmail.com', 'testign', 'testing', '2017-02-24 02:56:55'),
(3, 'testing', 'testing@gmail.com', 'testing', 'testing', '2017-02-24 03:00:30'),
(4, 'dadang', 'dadang@gmail.com', '', 'test', '2020-07-03 12:19:47'),
(5, 'ipul', 'admin@ikaitsln.com', '', 'asdasdasdasdasdas', '2020-07-03 12:22:10'),
(6, 'alfin', 'alfin@gmail.com', '', 'test', '2020-07-03 13:03:38');

-- --------------------------------------------------------

--
-- Struktur dari tabel `downloads`
--

DROP TABLE IF EXISTS `downloads`;
CREATE TABLE IF NOT EXISTS `downloads` (
  `download_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `file_name` varchar(225) NOT NULL,
  `slug_download` varchar(225) NOT NULL,
  `file` varchar(225) NOT NULL,
  `date_upload` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `file_description` text NOT NULL,
  `status` varchar(100) NOT NULL,
  PRIMARY KEY (`download_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `downloads`
--

INSERT INTO `downloads` (`download_id`, `user_id`, `file_name`, `slug_download`, `file`, `date_upload`, `file_description`, `status`) VALUES
(3, 1, 'Template', '3-template', '153-P101.pdf', '2017-02-16 13:19:05', 'asas', 'publish'),
(4, 1, 'PDF 1', '4-pdf-1', '153-P09.pdf', '2017-02-17 08:03:08', 'test', 'draft'),
(5, 1, 'Matematika (Matrix)', 'matematika-matrix', '153-P091.pdf', '2017-03-06 12:29:22', 'Silahkan download materi ini untuk di pelajari', 'publish');

-- --------------------------------------------------------

--
-- Struktur dari tabel `galleries`
--

DROP TABLE IF EXISTS `galleries`;
CREATE TABLE IF NOT EXISTS `galleries` (
  `gallery_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `gallery_name` varchar(225) NOT NULL,
  `slug_gallery` varchar(225) NOT NULL,
  `image` varchar(225) NOT NULL,
  `gallery_description` text NOT NULL,
  `position` varchar(100) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` varchar(100) NOT NULL,
  PRIMARY KEY (`gallery_id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `galleries`
--

INSERT INTO `galleries` (`gallery_id`, `user_id`, `gallery_name`, `slug_gallery`, `image`, `gallery_description`, `position`, `date`, `status`) VALUES
(8, 1, 'Hi Welcome to Nirasoft', 'hi-welcome-to-nirasoft', 'slide-1.jpg', 'Welcome to Nirasoft', 'slider', '2017-02-17 13:53:06', 'publish'),
(9, 1, 'Cantik ya hehe', 'cantik-ya-hehe', 'slide-2.jpg', 'cantik banget sih neng wkwk', 'slider', '2017-02-17 13:55:53', 'publish'),
(10, 1, 'Ngops gan', 'ngops-gan', 'slide-4.jpg', 'Ngops dulu', 'slider', '2017-02-17 13:56:35', 'publish'),
(12, 1, 'We Are Anon!!!', 'we-are-anon', '1385096_445510758888115_1423375145_n2.jpg', 'Testing', 'profil', '2017-02-17 13:58:14', 'publish'),
(13, 1, 'Hutan', '14-hutan', '29006-art_alphacoders_com7.jpg', 'hutan', 'harga', '2017-03-07 08:51:02', 'publish'),
(14, 1, 'Adaw', 'adaw', '361783.jpg', 'awdawd', 'footer', '2017-02-24 06:36:05', 'publish');

-- --------------------------------------------------------

--
-- Struktur dari tabel `price`
--

DROP TABLE IF EXISTS `price`;
CREATE TABLE IF NOT EXISTS `price` (
  `price_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `price_name` varchar(225) NOT NULL,
  `price` varchar(225) NOT NULL,
  `headline` text NOT NULL,
  `description` text NOT NULL,
  `with_service` varchar(100) NOT NULL,
  `no_with_service` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`price_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `price`
--

INSERT INTO `price` (`price_id`, `user_id`, `price_name`, `price`, `headline`, `description`, `with_service`, `no_with_service`, `status`, `date`) VALUES
(4, 1, 'Industri Setup Awal', '90.000/3 Bulan/ Unit', '', '', 'Free', '90.000/3 Bulan/ Unit', 'publish', '2017-03-07 00:50:38'),
(5, 1, 'Industri Kecil', '500.000/ Unit', '', '', 'Free', '270.000/3 Bulan/ Unit', 'publish', '2017-03-07 00:33:55'),
(6, 1, 'Industri Menengah', '750.000/ Unit', '', '', '270.000/3 Bulan/ Unit', 'Call', 'publish', '2017-03-07 00:34:29'),
(7, 1, 'Industri Besar', 'Call', '', '', 'Call', 'Call', 'publish', '2017-03-07 00:34:49'),
(8, 1, 'Pemerintah', 'Call', '', '', 'Call', 'Call', 'publish', '2017-03-07 00:35:01'),
(9, 0, '', '', 'awdawd', '', '', '', '', '2017-03-07 08:41:35');

-- --------------------------------------------------------

--
-- Struktur dari tabel `products`
--

DROP TABLE IF EXISTS `products`;
CREATE TABLE IF NOT EXISTS `products` (
  `product_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `product_name` varchar(225) DEFAULT NULL,
  `slug_product` varchar(225) DEFAULT NULL,
  `image` varchar(225) DEFAULT NULL,
  `product_description` text,
  `date` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `products`
--

INSERT INTO `products` (`product_id`, `user_id`, `product_name`, `slug_product`, `image`, `product_description`, `date`, `status`) VALUES
(9, 1, 'Seebuah Seni Bersikap Bodoh Amat', 'books', NULL, 'Novel,Comic,Motivation,etc.', '2020-07-03 04:01:24', NULL),
(10, 1, 'Segala-galanya Ambyar', 'books', NULL, 'Novel,Comic,Motivation,etc.', '2020-07-03 03:42:11', NULL),
(11, 1, 'Selena dan Nebula', 'books', NULL, 'Novel,Comic,Motivation,etc.', '2020-07-03 04:01:25', NULL),
(12, 1, 'Hai Miko 37', 'books', NULL, 'Novel,Comic,Motivation,etc.', '2020-07-03 04:01:25', NULL),
(13, 1, 'One Piece 198', 'books', NULL, 'Novel,Comic,Motivation,etc.', '2020-07-03 04:01:25', NULL),
(14, 1, 'Adhesive dan Tape', 'stationery', NULL, 'Atk Perkantoran dan Sekolah', '2020-07-03 03:45:58', NULL),
(15, 1, 'Pemotong Kertas', 'stationery', NULL, 'Atk Perkantoran dan Sekolah', '2020-07-03 03:45:58', NULL),
(16, 1, 'Alat Tulis', 'stationery', NULL, 'Atk Perkantoran dan Sekolah', '2020-07-03 03:45:58', NULL),
(17, 1, 'Penjilidan dan Penyimpanan', 'stationery', NULL, 'Atk Perkantoran dan Sekolah', '2020-07-03 03:45:58', NULL),
(18, 1, 'Produk Kertas', 'stationery', NULL, 'Atk Perkantoran dan Sekolah', '2020-07-03 03:45:58', NULL),
(19, 1, 'Lego', 'art_and_craft', NULL, 'Cat,Kuas,Clay', '2020-07-03 03:45:58', NULL),
(20, 1, 'Kertas Scrap', 'art_and_craft', NULL, 'Cat,Kuas,Clay', '2020-07-03 03:45:58', NULL),
(21, 1, 'Bufalo', 'art_and_craft', NULL, 'Cat,Kuas,Clay', '2020-07-03 03:45:58', NULL),
(22, 1, 'Impraboard', 'art_and_craft', NULL, 'Cat,Kuas,Clay', '2020-07-03 03:45:58', NULL),
(23, 1, 'Kertas Kado', 'art_and_craft', NULL, 'Cat,Kuas,Clay', '2020-07-03 03:45:58', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `types`
--

DROP TABLE IF EXISTS `types`;
CREATE TABLE IF NOT EXISTS `types` (
  `type_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `type_name` varchar(225) NOT NULL,
  `slug_type` varchar(225) NOT NULL,
  `order_type` int(11) NOT NULL,
  `type_description` text NOT NULL,
  `date_type` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `types`
--

INSERT INTO `types` (`type_id`, `user_id`, `type_name`, `slug_type`, `order_type`, `type_description`, `date_type`) VALUES
(4, 1, 'testing', '', 1, 'testing type', '2017-02-16 13:56:38'),
(5, 1, 'Odol', 'odol', 2, 'odol', '2017-02-16 13:57:21');

-- --------------------------------------------------------

--
-- Struktur dari tabel `upload_image`
--

DROP TABLE IF EXISTS `upload_image`;
CREATE TABLE IF NOT EXISTS `upload_image` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama_image` varchar(225) NOT NULL,
  `format_image` varchar(225) NOT NULL,
  `size_image` varchar(225) NOT NULL,
  `resolusi_image` varchar(225) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `upload_image`
--

INSERT INTO `upload_image` (`id`, `nama_image`, `format_image`, `size_image`, `resolusi_image`) VALUES
(2, '07-03-2020_01_02_30.jpeg', '.jpeg', '171.71', 'width=\"1280\" height=\"960\"'),
(3, '07-03-2020_01_02_36.jpg', '.jpg', '83.69', 'width=\"720\" height=\"400\"'),
(4, '07-03-2020_01_02_42.jpeg', '.jpeg', '198.14', 'width=\"1280\" height=\"960\"');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
