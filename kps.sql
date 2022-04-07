-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 07 Apr 2022 pada 19.57
-- Versi server: 10.1.38-MariaDB
-- Versi PHP: 5.6.40

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kps`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(128) NOT NULL,
  `password` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`) VALUES
(1, 'adminkps', 'bebea5e99a1812a628c826ac5cd7e2d9');

-- --------------------------------------------------------

--
-- Struktur dari tabel `berita`
--

CREATE TABLE `berita` (
  `id_berita` int(11) NOT NULL,
  `judul` varchar(100) NOT NULL,
  `isi` text NOT NULL,
  `kategori` varchar(20) NOT NULL,
  `penulis` varchar(50) NOT NULL,
  `tglpost` varchar(50) NOT NULL,
  `g_berita` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `berita`
--

INSERT INTO `berita` (`id_berita`, `judul`, `isi`, `kategori`, `penulis`, `tglpost`, `g_berita`) VALUES
(35, 'Lowongan Pekerjaan Bagian Posisi Toko', '<h2 align=\"center\" style=\"margin-top: 0cm; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; text-align: center;\"><span style=\"font-weight: bolder;\"><font color=\"#000000\">OPEN RECRUITMENT</font></span></h2><h2 align=\"center\" style=\"margin-top: 0cm; text-align: center; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><b><font color=\"#000000\">POSISI TOKO</font></b></h2>\r\n\r\n<p style=\"margin-top: 0cm; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><b><span style=\"font-family:Nunito;\r\ncolor:black;mso-themecolor:text1\">&nbsp; &nbsp; &nbsp;</span></b><b><span style=\"font-family:Nunito;\r\nmso-bidi-font-family:Helvetica;color:black;mso-themecolor:text1\">*) Persyaratan</span></b><span style=\"font-family:Nunito;color:black;mso-themecolor:text1\"><o:p></o:p></span></p>\r\n\r\n<ul type=\"disc\">\r\n <li class=\"MsoNormal\" style=\"color: black; line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"font-size: 1rem;\"><span style=\"font-family:\r\n     Nunito;mso-bidi-font-family:Helvetica\">Laki-laki/perempuan</span></span><span style=\"font-family:Nunito\"><o:p></o:p></span></li>\r\n <li class=\"MsoNormal\" style=\"color: black; line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"font-family:Nunito;mso-bidi-font-family:\r\n     Helvetica\">Usia maksimal 24 tahun</span><span style=\"font-family:\r\n     Nunito\"><o:p></o:p></span></li>\r\n <li class=\"MsoNormal\" style=\"color: black; line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"font-family:Nunito;mso-bidi-font-family:\r\n     Helvetica\">Minimal lulusan SMA/sederajat</span><span style=\"font-family:Nunito\"><o:p></o:p></span></li>\r\n <li class=\"MsoNormal\" style=\"color: black; line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"font-family:Nunito;mso-bidi-font-family:\r\n     Helvetica\">Dapat mengoperasikan komputer (ms. word &amp; excel)</span><span style=\"font-family:Nunito\"><o:p></o:p></span></li>\r\n <li class=\"MsoNormal\" style=\"color: black; line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"font-family:Nunito;mso-bidi-font-family:\r\n     Helvetica\">Dapat bekerja secara tim maupun individu</span><span style=\"font-family:Nunito\"><o:p></o:p></span></li>\r\n <li class=\"MsoNormal\" style=\"color: black; line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"font-family:Nunito;mso-bidi-font-family:\r\n     Helvetica\">Dapat bekerja dibawah tekanan</span><span style=\"font-family:Nunito\"><o:p></o:p></span></li>\r\n <li class=\"MsoNormal\" style=\"color: black; line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"font-family:Nunito;mso-bidi-font-family:\r\n     Helvetica\">Dapat berkomunikasi dengan baik dan responsif</span><span style=\"font-family:Nunito\"><o:p></o:p></span></li>\r\n <li class=\"MsoNormal\" style=\"color: black; line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"font-family:Nunito;mso-bidi-font-family:\r\n     Helvetica\">Jujur, rajin dan bertanggungjawab</span><span style=\"font-family:Nunito\"><o:p></o:p></span></li>\r\n <li class=\"MsoNormal\" style=\"color: black; line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"font-family:Nunito;mso-bidi-font-family:\r\n     Helvetica\">Mempunyai pengalaman di bidang marketing (nilai tambah)</span><span style=\"font-family:Nunito\"><o:p></o:p></span></li>\r\n</ul>\r\n\r\n<p style=\"margin-top: 0cm; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"font-family:Nunito;color:black;mso-themecolor:text1\">&nbsp;</span></p>\r\n\r\n<h5 style=\"margin-top: 0cm; text-align: center; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"font-family: Nunito; color: black;\">BERKAS&nbsp;</span><span style=\"font-family: Nunito; color: black;\">LAMARAN DIKIRIM KE :</span></h5>\r\n\r\n<h3 style=\"margin-top: 0cm; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; text-align: center;\"><span style=\"font-weight: bolder;\"><span style=\"font-family: Nunito; color: black;\">CV KEBUMEN PRIMA SARANA</span></span></h3>\r\n\r\n<h5 style=\"margin-top: 0cm; text-align: center; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"font-size:10.0pt;line-height:107%;font-family:\r\nNunito;mso-bidi-font-family:Helvetica;color:black;mso-themecolor:text1\">Zulfan Dian PJl. Raya Kutosari RT 001 RW 005 Tembono Kutosari\r\nKebumen</span></h5>\r\n\r\n<h5 align=\"center\" style=\"margin-top: 0cm; text-align: center; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><b><span style=\"font-family:\r\nNunito;color:black;mso-themecolor:text1\">&nbsp;</span></b></h5>\r\n\r\n<h4 align=\"center\" style=\"margin-top: 0cm; text-align: center; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><b><span style=\"font-family: Nunito; color: black;\">CONTACT PERSON :</span></b><b><span style=\"font-family: Nunito; color: black;\"><o:p></o:p></span></b></h4>\r\n\r\n<h6 align=\"center\" style=\"margin-top: 0cm; text-align: center; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"font-family:Nunito;color:black;mso-themecolor:\r\ntext1\">0853-2545-4495&nbsp; &nbsp;Zulfan Dian P<b><o:p></o:p></b></span></h6>\r\n\r\n<h6 align=\"center\" style=\"margin-top: 0cm; text-align: center; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"font-family:Nunito;color:black;mso-themecolor:\r\ntext1\">0859-7487-2662&nbsp; &nbsp; Dwi Suraningsih<b><o:p></o:p></b></span></h6>\"&gt;', 'Lowongan Pekerjaan', 'Dwi Suraningsih', '2022-04-05', 'G_loker.jpg'),
(36, 'CV. KEBUMEN PRIMA SARANA', '<h3 style=\"line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; text-align: justify;\"><font color=\"#000000\"><span style=\"font-weight: bolder;\"><span times=\"\" new=\"\" roman\";=\"\" mso-bidi-font-family:\"times=\"\" roman\";color:black;mso-themecolor:text1;=\"\" mso-fareast-language:en-id\"=\"\" style=\"font-size: 13.5pt; font-family: Nunito;\">PROFIL PERUSAHAAN</span></span></font></h3><p></p><p class=\"MsoNormal\" style=\"text-align: justify; line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"font-size:\r\n12.0pt;font-family:Nunito;mso-fareast-font-family:\" times=\"\" new=\"\" roman\";mso-bidi-font-family:=\"\" \"times=\"\" roman\";color:black;mso-themecolor:text1;mso-fareast-language:en-id\"=\"\"><font color=\"#000000\"><span style=\"font-family: Nunito;\">CV.\r\nKebumen Prima Sarana merupakan perusahaan yang melayani penjualan ATK,\r\nMekanikal Elektrikal, Komputer Aksesoris, CCTV, Cetakan, Mebelair dan Service.</span><o:p></o:p></font></span></p><p class=\"MsoNormal\" style=\"text-align: justify; line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"font-size:\r\n12.0pt;font-family:Nunito;mso-fareast-font-family:\" times=\"\" new=\"\" roman\";mso-bidi-font-family:=\"\" \"times=\"\" roman\";color:black;mso-themecolor:text1;mso-fareast-language:en-id\"=\"\"><font color=\"#000000\">&nbsp;</font></span></p><h3 style=\"text-align: justify; line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><font color=\"#000000\"><b><span style=\"font-size:13.5pt;font-family:Nunito;mso-fareast-font-family:\" times=\"\" new=\"\" roman\";=\"\" mso-bidi-font-family:\"times=\"\" roman\";color:black;mso-themecolor:text1;=\"\" mso-fareast-language:en-id\"=\"\">TENTANG CV KEBUMEN PRIMA SARANA</span></b></font></h3><p class=\"MsoNormal\" style=\"text-align: justify; line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"font-size:\r\n12.0pt;font-family:Nunito;mso-fareast-font-family:\" times=\"\" new=\"\" roman\";mso-bidi-font-family:=\"\" \"times=\"\" roman\";color:black;mso-themecolor:text1;mso-fareast-language:en-id\"=\"\"><font color=\"#000000\">KEBUMEN\r\nPRIMA SARANA merupakan perusahaan yang mempunyai kompetensi bisnis yang salah\r\nsatunya pada bidang Perdagangan Alat Tulis Kantor.&nbsp;<o:p></o:p></font></span></p><p class=\"MsoNormal\" style=\"text-align: justify; line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"font-size:12.0pt;font-family:\r\nNunito;mso-fareast-font-family:\" times=\"\" new=\"\" roman\";mso-bidi-font-family:\"times=\"\" roman\";=\"\" color:black;mso-themecolor:text1;mso-fareast-language:en-id\"=\"\"><font color=\"#000000\">Menurut ekspektasi\r\nkami, alat tulis kantor adalah kebutuhan yang sangat pokok disetiap perusahaan\r\n/ institusi / lembaga sehingga harus selalu ada setiap saat. Oleh karena itu\r\nkami hadir untuk bisa memenuhi kebutuhan yang anda inginkan.</font></span></p><p class=\"MsoNormal\" style=\"text-align: justify; line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"font-size:12.0pt;font-family:\r\nNunito;mso-fareast-font-family:\" times=\"\" new=\"\" roman\";mso-bidi-font-family:\"times=\"\" roman\";=\"\" color:black;mso-themecolor:text1;mso-fareast-language:en-id\"=\"\"><font color=\"#000000\"><br></font></span></p><span style=\"font-family: Helvetica;\"><font color=\"#000000\">\r\n\r\n</font></span><p class=\"MsoNormal\" style=\"text-align: justify; line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><font color=\"#000000\"><b><span style=\"font-size:13.5pt;font-family:Nunito;mso-fareast-font-family:\" times=\"\" new=\"\" roman\";=\"\" mso-bidi-font-family:\"times=\"\" roman\";color:black;mso-themecolor:text1;=\"\" mso-fareast-language:en-id\"=\"\">MANAJEMEN MUTU CV KEBUMEN PRIMA SARANA</span></b><span style=\"font-size:13.5pt;font-family:Nunito;mso-fareast-font-family:\" times=\"\" new=\"\" roman\";=\"\" mso-bidi-font-family:\"times=\"\" roman\";color:black;mso-themecolor:text1;=\"\" mso-fareast-language:en-id\"=\"\"><o:p></o:p></span></font></p><span style=\"font-family: Helvetica;\"><font color=\"#000000\">\r\n\r\n</font></span><p class=\"MsoNormal\" style=\"text-align: justify; line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"font-size: 12pt; font-family: Nunito;\" times=\"\" new=\"\" roman\";mso-bidi-font-family:\"times=\"\" roman\";=\"\" color:black;mso-themecolor:text1;mso-fareast-language:en-id\"=\"\"><font color=\"#000000\">Dalam manajemen\r\nmutu / kualitas CV. KEBUMEN PRIMA SARANA mengadopsi beberapa prinsip-prinsip\r\nmanajemen, yaitu:&nbsp;</font></span></p><p style=\"margin: 0cm 0cm 5pt 36pt; text-align: justify; text-indent: -18pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><!--[if !supportLists]--><font color=\"#000000\"><span style=\"font-family: Symbol;\">·<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: \" times=\"\" new=\"\" roman\";\"=\"\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n</span></span><!--[endif]--><span style=\"font-family: Nunito;\">Fokus pada keinginan konsumen (customer focus)&nbsp;<o:p></o:p></span></font></p><p style=\"margin-top: 0cm; margin-right: 0cm; margin-left: 36pt; text-align: justify; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"font-family: Nunito;\"><font color=\"#000000\">KEBUMEN PRIMA SARANA berkomitmen untuk dapat\r\nmenjaga dan mengembangkan konsumennya, CV. KEBUMEN PRIMA SARANA terus berusaha untuk\r\ndapat mengerti dan memahami tuntutan dan kebutuhan konsumen saat ini dan\r\nmendatang, sehingga dapat memenuhi kebutuhan dan ekspetasi konsumen.&nbsp;<o:p></o:p></font></span></p><p style=\"margin-top: 0cm; margin-right: 0cm; margin-left: 36pt; text-align: justify; text-indent: -18pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><!--[if !supportLists]--><font color=\"#000000\"><span style=\"font-family: Symbol;\">·<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: \" times=\"\" new=\"\" roman\";\"=\"\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n</span></span><!--[endif]--><span style=\"font-family: Nunito;\">Kepemimpinan (Leadership)&nbsp;<o:p></o:p></span></font></p><p style=\"margin-top: 0cm; margin-right: 0cm; margin-left: 36pt; text-align: justify; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"font-family: Nunito;\"><font color=\"#000000\">Memberikan motivasi kepada para pemimpin /\r\nmanager / supervisor dalam setiap unit di CV. KEBUMEN PRIMA SARANA untuk\r\nmenyiapkan dan mengarahkan budaya kualitas. Mereka harus dapat mengkreasikan\r\ndan memelihara budaya kualitas dalam setiap lingkungan internal yang\r\ndipimpinnya, mendorong setiap anggota timnya untuk mencapai tujuan perusahaan\r\nyakni pencapaian target kualitas/mutu pekerjaan.&nbsp;<o:p></o:p></font></span></p><p style=\"margin-top: 0cm; margin-right: 0cm; margin-left: 36pt; text-align: justify; text-indent: -18pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><!--[if !supportLists]--><font color=\"#000000\"><span style=\"font-family: Symbol;\">·<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: \" times=\"\" new=\"\" roman\";\"=\"\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n</span></span><!--[endif]--><span style=\"font-family: Nunito;\">Pengembangan Individu (Involvement of people)&nbsp;<o:p></o:p></span></font></p><p style=\"margin-top: 0cm; margin-right: 0cm; margin-left: 36pt; text-align: justify; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"font-family: Nunito;\"><font color=\"#000000\">Setiap individu baik karyawan maupun pemimpin\r\ndi CV. KEBUMEN PRIMA SARANA harus memahami budaya manajemen kualitas. Setiap\r\nindividu harus berusaha mengembangkan segala kemampuan dan kemungkinan yang\r\ndapat digunakan bagi keuntungan perusahaan.&nbsp;<o:p></o:p></font></span></p><p style=\"margin-top: 0cm; margin-right: 0cm; margin-left: 36pt; text-align: justify; text-indent: -18pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><!--[if !supportLists]--><font color=\"#000000\"><span style=\"font-family: Symbol;\">·<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: \" times=\"\" new=\"\" roman\";\"=\"\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n</span></span><!--[endif]--><span style=\"font-family: Nunito;\">Pendekatan proses (Process approach)&nbsp;<o:p></o:p></span></font></p><p style=\"margin-top: 0cm; margin-right: 0cm; margin-left: 36pt; text-align: justify; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"font-family: Nunito;\"><font color=\"#000000\">Melakukan monitoring dan evaluasi setiap\r\nhasil yang dikerjakan. Hasil yang buruk dapat dikurangi di setiap aktivitas dan\r\nkebutuhan sumber daya (manusia, material/bahan/alat, waktu).&nbsp;<o:p></o:p></font></span></p><p style=\"margin-top: 0cm; margin-right: 0cm; margin-left: 36pt; text-align: justify; text-indent: -18pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><!--[if !supportLists]--><font color=\"#000000\"><span style=\"font-family: Symbol;\">·<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: \" times=\"\" new=\"\" roman\";\"=\"\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n</span></span><!--[endif]--><span style=\"font-family: Nunito;\">Pendekatan Sistem Pada Manajemen (System approach to\r\nmanagement)&nbsp;<o:p></o:p></span></font></p><p style=\"margin-top: 0cm; margin-right: 0cm; margin-left: 36pt; text-align: justify; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"font-family: Nunito;\"><font color=\"#000000\">Struktur organisasi yang jelas dan sesuai\r\ndengan kompetensi karyawan memberikan target di CV. KEBUMEN PRIMA SARANA untuk\r\ndapat secara efektif dan efisien dalam mengembangkan target dan tujuan\r\nmutu/kualitas produk.&nbsp;<o:p></o:p></font></span></p><p style=\"margin-top: 0cm; margin-right: 0cm; margin-left: 36pt; text-align: justify; text-indent: -18pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><!--[if !supportLists]--><font color=\"#000000\"><span style=\"font-family: Symbol;\">·<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: \" times=\"\" new=\"\" roman\";\"=\"\">&nbsp; &nbsp; &nbsp; &nbsp;</span></span><span style=\"font-family: Nunito;\">Terus Berkembang (Continual improvement)&nbsp;<o:p></o:p></span></font></p><p style=\"margin-top: 0cm; margin-right: 0cm; margin-left: 36pt; text-align: justify; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"font-family: Nunito;\"><font color=\"#000000\">Selalu inovatif mengembangkan produk-produk\r\nterutama produk perangkat lunak. Selain itu, CV. KEBUMEN PRIMA SARANA juga\r\nsecara berkelanjutan mengembangkan kemampuan SDM dengan pelatihan dan\r\nsertifikasi.&nbsp;&nbsp;<o:p></o:p></font></span></p><p>\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n</p><p style=\"margin-top: 0cm; margin-right: 0cm; margin-left: 36pt; text-align: justify; text-indent: -18pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><!--[if !supportLists]--><font color=\"#000000\"><span style=\"font-family: Symbol;\">·<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: \" times=\"\" new=\"\" roman\";\"=\"\">&nbsp; &nbsp; &nbsp; </span></span><span style=\"font-family: Nunito;\">Membangun Hubungan yang Saling Menguntungkan dengan\r\nSuplier (Mutually beneficial supplier relationships).</span></font></p>', 'Profile CV', 'Dwi Suraningsih', '2022-04-07', 'KPSkbm.jpeg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `clients`
--

CREATE TABLE `clients` (
  `id_clients` int(11) NOT NULL,
  `nama_clients` varchar(50) NOT NULL,
  `logo_clients` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `clients`
--

INSERT INTO `clients` (`id_clients`, `nama_clients`, `logo_clients`) VALUES
(1, 'Kab. Kebumen', 'kebumen.png'),
(2, 'Kab.  Klaten', 'klaten.png'),
(3, 'Kab. Semarang', 'semarang.png');

-- --------------------------------------------------------

--
-- Struktur dari tabel `daftarlayanan`
--

CREATE TABLE `daftarlayanan` (
  `id_layanan` int(11) NOT NULL,
  `layanan` varchar(225) NOT NULL,
  `deskripsi` text NOT NULL,
  `icon_layanan` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `daftarlayanan`
--

INSERT INTO `daftarlayanan` (`id_layanan`, `layanan`, `deskripsi`, `icon_layanan`) VALUES
(1, 'Penjualan ATK', 'Menyediakan berbagai jenis kebutuhan alat tulis untuk keperluan sekolah dan kantor', '<i class=\"icofont-ruler-pencil-alt-2\"></i>'),
(2, 'Mekanikal Elektrikal', 'Jasa instalasi dan pemeliharaan jaringan internet, pemasangan fiber optik dan lain-lain', '<i class=\"icofont-power-zone\"></i>'),
(3, 'Komputer dan Aksesoris', 'Pengadaan perangkat komputer untuk sekolah dan kantor. Menyediakan berbagai aksesoris komputer', '<i class=\"icofont-computer\"></i>'),
(4, 'CCTV', 'Menyediakan CCTV berbagai jenis dan melayani instalasi maupun servis CCTVddd', '<i class=\"icofont-camera\"></i>'),
(5, 'Cetakan', 'Melayani pembuatan kwitansi, banner, nota dan sejenisnya untuk berbagai keperluan', '<i class=\"icofont-print\"></i>'),
(6, 'Mebelair', 'Pengadaan kebutuhan sarana dan prasarana kantor dan sekolah seperti kursi & meja kantor, rak dokumen dan lemari', '<i class=\"icofont-chair\"></i>'),
(7, 'Service', 'Jasa service komputer, laptop, cpu, printer, teks running dan sebagainya. Instalasi software dan install ulang sistem operasi komputer', '<i class=\"icofont-repair\"></i>'),
(9, 'Web & Apps Development', 'Melayani pembuatan sistem informasi baik dalam bentuk website, lms, aplikasi, web apps, dan sejenisnya', '<i class=\"icofont-code\"></i>');

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_barang`
--

CREATE TABLE `data_barang` (
  `id_barang` int(11) NOT NULL,
  `nama_barang` varchar(100) NOT NULL,
  `harga_barang` varchar(50) NOT NULL,
  `id_kat_barang` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `data_barang`
--

INSERT INTO `data_barang` (`id_barang`, `nama_barang`, `harga_barang`, `id_kat_barang`) VALUES
(1, '70 F4 SINAR DUNIA', '55.000', 1),
(2, '70 F4 HIJAU SINAR DUNIA', '65.000', 1),
(3, '70 F4 BIRU SINAR DUNIA  ', '65.000', 1),
(4, '70 F4 PINK SINAR DUNIA', '65.000', 1),
(5, '70 F4 KUNING SINAR DUNIA', '65.000', 1),
(6, '75 F4 PAPERONE', '49.000', 1),
(7, '75 F4 BMO (Bright-White Multipurpose Office Paper)', '45.000', 1),
(8, '60 F4 SINAR DUNIA', '43.000', 1),
(9, '70 F4 OFFICE PAPER ', '43.000', 1),
(10, '70 F4 PAPERONE', '49.000', 1),
(11, '80 F4 SINAR DUNIA', '58.000', 1),
(12, '70 A3L PAPERONE', '86.000', 1),
(13, '70 A3 SINAR DUNIA', '86.000', 1),
(14, '70 A3 COPYPAPER', '45.000', 1),
(15, '80 A3L PAPERONE', '90.000', 1),
(16, '70 A4 SINAR DUNIA', '45.000', 1),
(17, '70 A4 PAPERONE', '44.000', 1),
(18, '70 A4 COPY PAPER', '42.000', 1),
(19, '70 A4S SINAR DUNIA', '48.500', 1),
(20, '80 A4 PAPERONE', '53.000', 1),
(21, '80 A4 SINAR DUNIA', '49.500', 1),
(22, '80 A4S SINAR DUNIA', '53.000', 1),
(23, '70 B5 PAPERONE', '39.000', 1),
(24, 'KERTAS BURAM ', '27.600', 1),
(25, 'KERTAS KARBON BB SAILINGBOAT', '750', 1),
(26, 'BC FOLIO KYOTO UNGU TUA', '50.000', 2),
(27, 'BC FOLIO KUNING MUDA', '50.000', 2),
(28, 'BC FOLIO COKLAT MUDA', '50.000', 2),
(29, 'BC FOLIO BIRU MUDA', '50.000', 2),
(30, 'BC FOLIO HIJAU MUDA', '50.000', 2),
(31, 'BC FOLIO PINK', '50.000', 2),
(32, 'BC FOLIO PUTIH', '50.000', 2),
(33, 'BC FOLIO BIRU LAUT', '50.000', 2),
(34, 'BC FOLIO COKLAT TUA', '50.000', 2),
(35, 'BC FOLIO KUNING TUA/KK', '50.000', 2),
(36, 'BC FOLIO MERAH', '50.000', 2),
(37, 'BC FOLIO OREN', '50.000', 2),
(38, 'BC FOLIO BIRU TUA', '50.000', 2),
(39, 'BC FOLIO HIJAU TUA', '50.000', 2),
(40, 'BC A3 BIRU MUDA', '800', 2),
(41, 'BC A3 BIRU TUA', '800', 2),
(42, 'BC A3 HIJAU MUDA', '800', 2),
(43, 'BC A3 PINK', '800', 2),
(44, 'BC A3 MERAH', '800', 2),
(45, 'BC A3 150 PUTIH', '33.600', 2),
(46, 'BC PLANO/ MANILA PUTIH 150', '2.000', 2),
(47, 'BC PLANO/ MANILA KUNING MUDA 61 X 86', '2.200', 2),
(48, 'BC PLANO PINK 61 X 86', '2.200', 2),
(49, 'MIKA BENING KYOTO (100)', '50.000', 2),
(50, 'MIKA WARNA COKLAT POP1 (100)', '50.000', 2),
(51, 'MIKA WARNA KUNING KYOTO (100)', '50.000', 2),
(52, 'MIKA WARNA MERAH TUA KYOTO (100)', '50.000', 2),
(53, 'MIKA WARNA BIRU MUDA KYOTO (100)', '50.000', 2),
(54, 'MIKA WARNA UNGU KYOTO (100)', '50.000', 2),
(55, 'MIKA WARNA OREN KYOTO (100)', '50.000', 2),
(56, 'MIKA WARNA HIJAU MUDA KYOTO (100)', '50.000', 2),
(57, 'NCR F4 BOTTOM HIJAU MULTI TOPLA', '58.900', 2),
(58, 'NCR F4 MIDDLE  KUNING MULTI TOPLA', '63.500', 2),
(59, 'NCR F4 MIDDLE  PINK MULTI TOPLA', '63.500', 2),
(60, 'CF PPL K1 PRS', '203.000', 3),
(61, 'CF PPL K1 NON PRS', '195.000', 3),
(62, 'CF PPL K2 PRS WARNA', '294.000', 3),
(63, 'CF PPL K2 NON PRS WARNA', '288.000', 3),
(64, 'CF PPL K3 PRS WARNA', '450.000', 3),
(65, 'CF PPL K3 NON PRS WARNA', '437.000', 3),
(66, 'CF PPL K4 PRS WARNA', '320.000', 3),
(67, 'CF PPL K5 PRS WARNA', '445.000', 3),
(68, 'CF PPL K5 NON PRS  WARNA', '426.000', 3),
(69, 'CF DEEPAPER NCR 2 PLY WARTEL', '293.500', 3),
(70, 'AMP 310 AIRMAIL EXECUTIVE TTL', '46.000', 4),
(71, 'AMP 310 AIRMAIL EXECUTIVE TL', '9.000', 4),
(72, 'AMPLOP SAMSON KRAFT POP1 A (100)', '27.500', 4),
(73, 'AMPLOP PPL 110 PPS  ', '16.500', 4),
(74, 'AMPLOP PPL 104', '15.200', 4),
(75, 'AMPLOP PPL 90 POLOS', '21.800', 4),
(76, 'AMPLOP PPL MINI', '10.000', 4),
(77, 'AMPLOP KYOTO KABINET SAMSON GARIS A', '27.500', 4),
(78, 'AMPLOP MERPATI BESAR', '18.000', 4),
(79, 'V-TEC A4 GLOSSY PAPER 230', '18.000', 5),
(80, 'V-TEC A4 GLOSSY PAPER 210', '17.000', 5),
(81, 'KERTAS FOLIO  32X42 60 GRAM', '32.500', 6),
(82, 'KERTAS STIKER LABEL LASER A4 T&J', '40.000', 6),
(83, 'ASTURO POLOS', '3.000', 6),
(84, 'ASTURO PELANGI/GRADASI', '3.600', 6),
(85, 'KADO KIKY KECIL', '1.000', 6),
(86, 'KADO SD LUCU/BATIK (HVS/GLOSSY)', '1.000', 6),
(87, 'KALKIR CANSON C.S 80/85 G A3', '2.000', 6),
(88, 'RIBBON TIE NCL PK50Y', '12.000', 6),
(89, 'KARTON TEBAL T40', '7.200', 6),
(90, 'KARTON TIPIS T160', '2.000', 6),
(91, 'KERTAS EMAS', '1.500', 6),
(92, 'KERTAS KADO KIKY WARNA POLOS (MARMER)', '1.000', 6),
(93, 'ORIGAMI ASTURO 20X20', '14.000', 6),
(94, 'ORIGAMI ASTURO 16X16', '10.000', 6),
(95, 'ORIGAMI ASTURO 14X14', '8.000', 6),
(96, 'PARCEL TEBAL MOTIF SANWA', '4.500', 6),
(97, 'PARCEL SHEET HORE 70X80CM10', '1.500', 6),
(98, 'PARCEL POLOS TIPIS', '1.500', 6),
(99, 'PARCEL POLOS SANWA', '4.000', 6),
(100, 'TIME TABLE KECIL', '9.000', 6),
(101, 'KERTAS KREP BESAR BINTANG', '1.500', 6),
(102, 'KREP POTONG BINTANG', '1.000', 6),
(103, 'BUKU SD 58  ', '5.000', 7),
(104, 'BUKU SD 38 MTK', '2.500', 7),
(105, 'BUKU SD 38 HALUS', '2.500', 7),
(106, 'BUKU SD 38 ', '3.250', 7),
(107, 'BUKU SD 40 KRAFT', '2.750', 7),
(108, 'BUKU SD BOXY 42', '4.000', 7),
(109, 'BUKU SD BB SP 50', '5.000', 7),
(110, 'BUKU SD BOXY 50', '4.900', 7),
(111, 'BUKU SD 100', '6.700', 7),
(112, 'BUKU SD 78', '5.250', 7),
(113, 'BUKU SD 60 KRAF', '3.950', 7),
(114, 'BUKU SD 32', '2.250', 7),
(115, 'BUKU VISION SKRIP 38', '2.500', 7),
(116, 'BUKU VISION 38 HALUS 6 GARIS', '2.750', 7),
(117, 'BUKU VISION 38', '3.000', 7),
(118, 'BUKU VISION 58', '4.000', 7),
(119, 'BUKU VISION 32', '3.100', 7),
(120, 'BUKU VISION BOXY', '4.250', 7),
(121, 'BUKU VISION KOTAK T30', '2.400', 7),
(122, 'BUKU KIKY BOXY 98', '14.650', 7),
(123, 'BUKU KIKY 38', '3.250', 7),
(124, 'BUKU KIKY 58', '4.900', 7),
(125, 'BUKU KIKY BOXY 42', '5.400', 7),
(126, 'BUKU KIKY DIKTAT 40', '7.850', 7),
(127, 'THERMAL 80X80 PRINTECH', '18.200', 8),
(128, 'THERMAL RJ 80X80', '18.200', 8),
(129, 'THERMAL JIFAX ', '6.800', 8),
(130, 'KERTAS THERMAL PPL 57X50', '65.000', 8),
(131, 'KERTAS THERMAL ROLL EDC', '52.000', 8),
(132, 'REGISTER ROL PAPERLINE 7565 2PLY', '8.450', 8),
(133, 'REGISTER ROL PAPERLINE 7565', '5.590', 8),
(134, 'REGISTER ROL SINARLINE 5865', '4.290', 8),
(135, 'REGISTER ROLL PP/SIDU 8050', '8.970', 8),
(136, 'LABEL ROL KENKO 1LINE PUTIH 60012R', '24.000', 8),
(137, 'LABEL ROLL JOYKO LB-7', '50.000', 8),
(138, 'LABEL ROLL JOYKO LB-9 GREEN', '50.000', 8),
(139, 'PRICE LABEL KENKO MX5500', '49.400', 8),
(140, 'KERTAS FAX OJI THERMAL 210/216X30', '23.400', 8),
(141, 'THERMAL PAPER ROLL 57X30 CM THEMPER', '5.700', 8),
(142, 'BK GAMBAR DODO A4', '2.300', 9),
(143, 'BK GAMBAR KIKY A3', '8.600', 9),
(144, 'BK GAMBAR DODO A3', '5.100', 9),
(145, 'BK GAMBAR KIKY KECIL', '4.500', 9),
(146, 'SAMPUL BK POP1 PANDA BOXY', '17.250', 10),
(147, 'SAMPUL BK POP1 PANDA Q', '10.900', 10),
(148, 'SAMPUL BK OPP IKAN MAS KWARTO (60)', '9.400', 10),
(149, 'SAMPUL BK SAMSON KWARTO NAMA SBC1814', '5.000', 10),
(150, 'SAMPUL BK BATIK KWARTO SBKP0418T', '5.650', 10),
(151, 'SAMPUL BK BATIK SBBP0318A', '7.650', 10),
(152, 'SAMPUL BK BOXY POLOS EXECUTIVE (20)', '6.250', 10),
(153, 'HC GELATIK EXPEDISI 50', '7.000', 11),
(154, 'HC GELATIK EXPEDISI 100', '10.750', 11),
(155, 'HC GELATIK EXPEDISI 200', '19.000', 11),
(156, 'HC GELATIK FOLIO 50', '12.500', 11),
(157, 'HC GELATIK FOLIO 100', '18.100', 11),
(158, 'HC GELATIK FOLIO 200', '31.000', 11),
(159, 'HC GELATIK FOLIO 300', '56.700', 11),
(160, 'HC GELATIK OKTAVO 100', '5.500', 11),
(161, 'HC GELATIK OKTAVO 50', '3.700', 11),
(162, 'HC GELATIK KAS FOLIO 100 2/3 KOLOM', '19.100', 11),
(163, 'HC GELATIK KAS FOLIO 50 2/3 KOLOM', '12.500', 11),
(164, 'HC GELATIK QUARTO 200', '18.000', 11),
(165, 'HC GELATIK QUARTO 100', '10.000', 11),
(166, 'HC GELATIK QUARTO 50', '6.750', 11),
(167, 'NOTE BOOK A6 NC6040', '16.250', 12),
(168, 'NOTE BOOK BAZIC A7 NA780012', '10.950', 12),
(169, 'NOTE BOOK BAZIC A7 NA780014', '11.250', 12),
(170, 'POCKET NOTE KENKO PN501', '11.000', 12),
(171, 'POCKET NOTE KENKO PN404', '3.500', 12),
(172, 'BUKU AGENDA 707 ', '16.500', 12),
(173, 'AGENDA BATIK SHINTOENG 212', '23.500', 12),
(174, 'BLOCK NOTE PP PF A5', '5.000', 12),
(175, 'NOTE BOOK A6 NC6040', '16.250', 13),
(176, 'NOTE BOOK BAZIC A7 NA780012', '10.950', 13),
(177, 'NOTE BOOK BAZIC A7 NA780014', '11.250', 13),
(178, 'POCKET NOTE KENKO PN501', '11.000', 13),
(179, 'KWITANSI PPL BESAR', '5.500', 14),
(180, 'KWITANSI GELATIK TANGGUNG', '3.750', 14),
(181, 'KWITANSI GELATIK KECIL', '1.700', 14),
(182, 'KWITANSI PEMDA 3 PLY', '27.000', 14),
(183, 'KWITANSI PEMDA 2 PLY', '17.500', 14),
(184, 'KWITANSI PEMDA 2 PLY PUTIH-PUTIH', '17.500', 14),
(185, 'NOTA GELATIK BESAR RANGKAP 2', '5.250', 15),
(186, 'NOTA GELATIK KECIL RANGKAP 1', '2.050', 15),
(187, 'NOTA GELATIK KECIL RANGKAP 2', '2.550', 15),
(188, 'NOTA GELATIK KECIL RANGKAP 3', '3.750', 15),
(189, 'NOTA PAPERLINE KECIL RANGKAP 1', '2.000', 15),
(190, 'NOTA PAPERLINE RANGKAP 2', '2.900', 15),
(191, 'STD AE7 HITAM', '20.000', 16),
(192, 'STD AE7 BIRU', '20.000', 16),
(193, 'STD AE7 MERAH', '20.000', 16),
(194, 'STD AE7 CRYSTAL HITAM', '20.000', 16),
(195, 'STD P5 0,7 HITAM', '30.000', 16),
(196, 'BP FABER CASTEL', '25.000', 16),
(197, 'PILOT BPTP HITAM', '22.500', 16),
(198, 'PILOT BPTP MERAH', '22.500', 16),
(199, 'PILOT BPTP PUTIH', '22.500', 16),
(200, 'REFFIL PENTEL MG8 HITAM', '21.000', 16),
(201, 'REFFIL PENTEL MG8 BIRU', '21.000', 16),
(202, 'BALLPOINT PENTEL RS3 JAPAN', '75.500', 16),
(203, 'BOLPEN PILOT BALLINER BIRU', '15.000', 16),
(204, 'BP PILOT BALLINER HITAM', '15.000', 16),
(205, 'BOLPEN GEL TIZO TG 33404-2', '4.000', 16),
(206, 'BOLPEN GEL TIZO TG395C', '3.700', 16),
(207, 'BOLPEN GEL TIZO TG340 HITAM', '4.000', 16),
(208, 'BOLPEN GEL TIZO TG340 BIRU', '4.000', 16),
(209, 'BOLPEN GEL TIZO TG30605C', '2.000', 16),
(210, 'BOLPEN GEL TIZO TG31037C', '2.000', 16),
(211, 'BOLPEN GEL V-TRO VTR203 HIJAB GIRL', '2.500', 16),
(212, 'BOLPEN GEL STD FUNZZY 05 HITAM', '2.700', 16),
(213, 'BOLPEN BOXY MITSUBHISI HITAM ', '8.500', 16),
(214, 'BOLPEN BOXY MITSUBHISI BIRU', '8.500', 16),
(215, 'BOLPEN GEL KENKO K1', '3.500', 16),
(216, 'BOLPEN GEL KENKO WINDELLER KE600', '2.500', 16),
(217, 'BOLPEN GEL BAZIC GEL 0.5 HY-601', '1.800', 16),
(218, 'BP BAZIC 0.5 MM GP-601', '1.500', 16),
(219, 'BP KENKO HITECH 0,28 HITAM & BIRU', '3.400', 16),
(220, 'BALLPOINT GEL HY AWAN C0002', '3.000', 16),
(221, 'REFILL BP FANCY Q-3058', '450', 16),
(222, 'DR SNOWMAN 0,7 HITAM', '10.000', 16),
(223, 'DR SNOWMAN 0,2 HITAM', '10.000', 16),
(224, 'DR SNOWMAN 0,1 HITAM', '10.000', 16),
(225, 'DR SNOWMAN 0,8 HITAM', '10.000', 16),
(226, 'DR SNOWMAN 0,5 HITAM', '10.000', 16),
(227, 'DR SNOWMAN 0,4 HITAM', '10.000', 16),
(228, 'DR SNOWMAN 0,2 BIRU', '10.000', 16),
(229, 'DR SNOWMAN 0,3 MERAH', '10.000', 16),
(230, 'DR SNOWMAN 0,6 HITAM', '10.000', 16),
(231, 'PENCILTIC ZEBRA RED', '3.500', 16),
(232, 'PENCILTIC ZEBRA BLUE', '3.500', 16),
(233, 'PENCILTIC ZEBRA ORANGE', '3.500', 16),
(234, 'PENCILTIC ZEBRA GREEN', '3.500', 16),
(235, 'PENCILTIC ZEBRA VIOLET', '3.500', 16),
(236, 'PENCILTIC ZEBRA HITAM', '3.500', 16),
(237, 'PENCILTIC ZEBRA BROWN', '3.500', 16),
(238, 'BP ZEBRA A4C', '11.500', 16),
(239, 'BP FANCY SUPERHERO 3090', '3.000', 16),
(240, 'BP JOYKO 4WQUACO BP213', '6.500', 16),
(241, 'BP X-DATA M-2', '1.000', 16),
(242, 'SPIDOL SNOWMAN 12W PW-12A', '20.000', 17),
(243, 'SPIDOL SNOWMAN LOSS LO55 BIRU', '1.750', 17),
(244, 'SPIDOL SNOWMAN LOSS LO55 HITAM', '1.750', 17),
(245, 'SPIDOL SNOWMAN LOSS LO55 MERAH', '1.750', 17),
(246, 'SPIDOL SNOWMAN LOSS LO55 KUNING', '1.750', 17),
(247, 'SPIDOL SNOWMAN LOSS LO55 HIJAU', '1.750', 17),
(248, 'SPIDOL ARTLINE MARKER ', '1.500', 17),
(249, 'SPIDOL FC CON PEN SET 20 11200ADVDCB', '45.000', 17),
(250, 'SPIDOL STANDART P77 PRMNT HT', '4.000', 17),
(251, 'SPIDOL STANDARD WB W88 BLACK', '4.500', 17),
(252, 'SPIDOL SNOWMAN G12 BLACK', '6.500', 18),
(253, 'SPIDOL SNOWMAN G12 GREEN', '6.500', 18),
(254, 'SPIDOL SNOWMAN G12 BLUE', '6.500', 18),
(255, 'SPIDOL SNOWMAN G12 RED', '6.500', 18),
(256, 'SPIDOL SNOWMAN BG12 BLUE', '7.500', 18),
(257, 'SPIDOL SNOWMAN BG12 RED', '7.500', 18),
(258, 'SPIDOL SNOWMAN BG12 GREEN', '7.500', 18),
(259, 'SPIDOL SNOWMAN BG12 BLACK', '7.500', 18),
(260, 'SPIDOL  SNOWMAN BG12 YELLOW', '7.500', 18),
(261, 'SPIDOL SNOWMAN SILVER SP12 BESAR', '14.900', 18),
(262, 'SPIDOL SNOWMAN GOLD FGP12 FINE TIP', '14.900', 18),
(263, 'SPIDOL SNOWMAN SILVER FSP12 FINE TIP', '14.900', 18),
(264, 'SPIDOL SNOWMAN WHITE EFWP12 EXTRA FINE F', '14.900', 18),
(265, 'SPIDOL GOLD B MEDIUM', '14.900', 18),
(266, 'SPIDOL SNOWMAN 500', '20.000', 18),
(267, 'REF SPIDOL SNOW BG12 BLACK', '15.500', 19),
(268, 'REF SPIDOL SNOW BG12 RED', '15.500', 19),
(269, 'REF SPIDOL SNOW BG12 BLUE', '15.500', 19),
(270, 'REF SPIDOL SNOW G12 BLACK', '10.000', 19),
(271, 'HIGHLIGHTER KENKO HL100 GREEN', '5.250', 20),
(272, 'HIGHLIGHTER KENKO HL100 PURPLE', '5.250', 20),
(273, 'HIGHLIGHTER KENKO HL100 YELLOW', '5.250', 20),
(274, 'HIGHLIGHTER VIENCE HP7150', '5.000', 20),
(275, 'HIGHLIGHTER DEBOZZ DBOF2001', '4.500', 20),
(276, 'HIGHLIGHTER SUNWELL 2W HL600', '4.500', 20),
(277, 'HIGHLIGHTER SUNWELL HL500', '4.000', 20),
(278, 'HIGHLIGHTER BOSS NEON KECIL', '5.000', 20),
(279, 'HIGHLIGHTER BOSS YELLOW', '8.500', 20),
(280, 'HIGHLIGHTER BOSS LAVENDER', '8.500', 20),
(281, 'HIGHLIGHTER BOSS GREEN', '8.500', 20),
(282, 'HIGHLIGHTER BOSS LILAC', '8.500', 20),
(283, 'HIGHLIGHTER BOSS ORANGE', '8.500', 20),
(284, 'CP KENKO KE01', '5.000', 21),
(285, 'CP KENKO KE 826', '5.500', 21),
(286, 'CT JOYKO CT555', '6.500', 21),
(287, 'CT FANCY LOL 0885', '3.500', 21),
(288, 'CT FANCY MY LITTLE PONY 0828', '3.500', 21),
(289, 'CT KENKO CT902', '5.500', 21),
(290, 'CP PENTEL ZL31-W', '36.000', 21),
(291, 'PENSIL FABER CASTEL 2B', '4.250', 22),
(292, 'PENSIL FABER CASTEL 6B', '4.300', 22),
(293, 'PENSIL JOYKO 2B P97', '1.100', 22),
(294, 'PENSIL JOYKO 2B P122', '1.500', 22),
(295, 'PENSIL BAZIC 2B BLACK BC319', '1.000', 22),
(296, 'PENSIL 2B STAEDLER', '3.450', 22),
(297, 'PENSIL KENKO 28 6906 BATIK', '1.000', 22),
(298, 'PENSIL KENKO PELANGI 0820', '1.350', 22),
(299, 'PM JOYKO 0,5 MP47 SAFARI', '4.200', 22),
(300, 'PM CADWELL 0,5 ASTER SW51i1', '2.600', 22),
(301, 'ISI PM PILOT POLYMER', '5.500', 22),
(302, 'PENSIL SPIDERMAN YOYO8010', '1.000', 22),
(303, 'PENSIL BIG 2B GOLD 988', '1.250', 22),
(304, 'PENSIL BENSIA FLAMINGO ZC125 (48)', '3.700', 22),
(305, 'PAKET UJIAN FABER CASTEL MANTAP 119055', '35.500', 23),
(306, 'PAKET UJIAN FC FABER CASTEL SPMB 119045', '27.500', 23),
(307, 'RAUTAN KENKO SP62J (36)', '1.500', 24),
(308, 'RAUTAN VIS-1 NO 888', '2.500', 24),
(309, 'RAUTAN VIS-1 KURAKURA NO1910', '2.500', 24),
(310, 'RM FANCY 0541', '47.500', 24),
(311, 'RM BIG KOTAK 8001', '25.000', 24),
(312, 'RM RUMAH JGTL 9232 AE75', '72.000', 24),
(313, 'RM DINGB SMILE 8651', '50.500', 24),
(314, 'RM DINGB KANCIL 0541', '42.000', 24),
(315, 'RAUTAN KENKO SP-318', '3.500', 24),
(316, 'RAUTAN PENSIL MEJA A-5M JOYKO', '65.000', 24),
(317, 'PENGHAPUS STAEDTLER PUTIH 526B40', '2.000', 25),
(318, 'PENGHAPUS VIS-1 ER105 WARNA', '1.200', 25),
(319, 'PENGHAPUS KENKO ERW40SQ', '800', 25),
(320, 'PENGHAPUS JOYKO 526B40BL', '800', 25),
(321, 'PENGHAPUS SUNWELL ER03 BUNGA MATAHARI', '1.300', 25),
(322, 'PENGHAPUS SET FANCY IKAN', '1.400', 25),
(323, 'PW  CLASSIC 12W FC 115852', '32.000', 26),
(324, 'PW WP 12L FC 114462', '31.500', 26),
(325, 'PW FC WC 12S 114461', '16.800', 26),
(326, 'PW FC CLASSIC 12S 115851', '27.000', 26),
(327, 'PW BIG CP 8101 12 PANJANG', '15.000', 26),
(328, 'CRAYON PUTAR TITI HCP 24W TICP24T', '67.600', 26),
(329, 'PASTEL TITI 18S', '31.000', 26),
(330, 'PASTEL FC HEXA 24W PLASTIC BAG 120089A', '61.000', 26),
(331, 'PASTEL TITI 12S', '16.000', 26),
(332, 'PASTEL JOYKO 12S', '16.000', 26),
(333, 'PASTEL APIK 12W', '7.500', 26),
(334, 'COLOR BRUSH PEN JOYKO CLP06', '40.500', 26),
(335, 'CAT ACRYLIC 12C 6ML BAZIC2631', '21.000', 27),
(336, 'CAT ACRYLIC  SET 12 FC 572312', '64.800', 27),
(337, 'CAT AIR MEDIA GUITAR 110', '10.500', 27),
(338, 'PALET PLASTIK VTEC VT8050', '3.500', 27),
(339, 'PALET PLASTIK VTEC VTRD14DRL', '10.500', 27),
(340, 'PALET PLASTIK KECIL', '3.500', 27),
(341, 'PALET PLASTIK BESAR', '10.000', 27),
(342, 'PALET PLASTIK TANGGUNG', '5.000', 27),
(343, 'PASTA TIMBUL MUDA ROYAL 50', '3.500', 27),
(344, 'KUAS LEGONG 251 NO 6', '3.000', 27),
(345, 'KUAS LEGONG 251 NO 4', '1.800', 27),
(346, 'KUAS LEGONG 251 NO 9', '2.500', 27),
(347, 'BUSSINES FILE RR ECO BIRU MUDA', '2.750', 28),
(348, 'BUSSINES FILE RR ECO MERAH', '2.750', 28),
(349, 'BUSSINES FILE RR ECO  PINK', '2.750', 28),
(350, 'BUSSINES FILE RR ECO  ORANGE', '2.750', 28),
(351, 'BUSSINES FILE RR ECO  KUNING', '2.750', 28),
(352, 'BUSSINES FILE RR ECO  PUTIH', '2.750', 28),
(353, 'BUSSINES FILE RR ECO BIRU TUA', '2.750', 28),
(354, 'BUSSINES FILE BIG 8117 BIRU', '2.500', 28),
(355, 'BUSSINES FILE RR SECO UNGU', '2.750', 28),
(356, 'BUSSINES FILE RR ECO HITAM', '2.750', 28),
(357, 'BUSSINES FILE BIG 8117 HIJAU', '2.500', 28),
(358, 'BUSSINES FILE BIG 8117 MERAH', '2.500', 28),
(359, 'BUSSINES FILE BIG 8804 MERAH', '3.200', 28),
(360, 'BUSSINES  FILE FOLDER ONE HIJAU', '2.750', 28),
(361, 'BUSSINES  FILE FOLDER ONE PUTIH', '2.750', 28),
(362, 'BUSSINES  FILE FOLDER ONE KUNING', '2.750', 28),
(363, 'BUSSINES FILE FOLDER ONE BIRU TUA', '2.750', 28),
(364, 'BUSSINES FILE JENIA POLOS PINK JBFP05', '2.500', 28),
(365, 'BUSSINES FILE JENIA POLOS PUTIH JBFP10', '2.500', 28),
(366, 'BUSSINES FILE JENIA HITAM', '2.500', 28),
(367, 'CLEAR HOLDER SUNWELL CH 60 KUNING', '25.000', 29),
(368, 'CLEAR HOLDER SUNWELL CH 60 MERAH', '25.000', 29),
(369, 'CLEAR HOLDER SUNWELL CH 60 BIRU', '25.000', 29),
(370, 'CLEAR HOLDER FOLDER ONE HIJAU', '23.500', 29),
(371, 'CLEAR HOLDER FOLDER ONE KUNING', '23.500', 29),
(372, 'CLEAR HOLDER BIG F4802 40S HIJAU', '23.000', 29),
(373, 'CLEAR HOLDER BIG F4803 BIRU', '28.500', 29),
(374, 'CLEAR HOLDER BIG F4803 MERAH ', '28.500', 29),
(375, 'DOKUMEN KEEPER BATIK', '25.000', 29),
(376, 'DOKUMEN KEEPER AUTHENTIC DK512', '25.000', 29),
(377, 'DOKUMEN KEEPER PHAYOO', '25.000', 29),
(378, 'MAP SERTIFIKAT', '20.000', 29),
(379, 'SPRING FILE INTER-X MERAH', '8.500', 30),
(380, 'SPRING FILE INTER-X BIRU', '8.500', 30),
(381, 'SPRING FILE INTER-X HIJAU', '8.500', 30),
(382, 'SPRING FILE INTER-X KUNING', '8.500', 30),
(383, 'SPRING FILE FOLDER ONE', '5.650', 30),
(384, 'CLIP FILE INTER-X BIRU', '10.000', 31),
(385, 'CLIP FILE FOLDER ONE BIRU', '5.650', 31),
(386, 'CLIP FILE FOLDER ONE KUNING', '5.650', 31),
(387, 'CLIP FILE FOLDER ONE UNGU', '5.650', 31),
(388, 'MAP HVO EXCECUTIVE KUNING TUA', '22.000', 32),
(389, 'MAP HVO EXCECUTIVE HIJAU TUA', '22.000', 32),
(390, 'MAP HVO EXCECUTIVE BIRU', '22.000', 32),
(391, 'MAP HVO EXCECUTIVE MERAH', '22.000', 32),
(392, 'MAP KYOTO/ KING', '800', 32),
(393, 'MAP BIOLA TS HIJAU DAUN', '20.000', 32),
(394, 'MAP BIOLA TS MERAH', '20.000', 32),
(395, 'MAP BIOLA TS KUNING KUNYIT', '20.000', 32),
(396, 'MAP KANCING SON BATIK F4 GZ165D', '6.500', 32),
(397, 'MAP L RR FOLIO BIRU', '1.500', 32),
(398, 'MAP L RR FOLIO PINK', '1.500', 32),
(399, 'MAP L RR FOLIO BENING', '1.500', 32),
(400, 'MAP L POP1 FOLIO KUNING', '1.500', 32),
(401, 'MAP BATIK KIKY', '3.000', 32),
(402, 'MAP KANCING DPLAYERS KUNING SOLID', '4.000', 32),
(403, 'MAP KANCING RR HIJAU SOLID', '4.000', 32),
(404, 'MAP KANCING RR MERAH SOLID', '4.000', 32),
(405, 'MAP KANCING RR DELUXE ORENGE', '4.000', 32),
(406, 'MAP KANCING RR PINK SOLID', '4.000', 32),
(407, 'MAP KANCING RR BENING', '4.000', 32),
(408, 'MAP KANCING BIG BIRU 8111', '3.750', 32),
(409, 'MAP KANCING BIG MERAH 8111', '3.750', 32),
(410, 'MAP KANCING POP1 BIRU TRANSPARANT', '4.000', 32),
(411, 'MAP RIT BATIK JENIA', '14.000', 32),
(412, 'MAP RIT TENTENG + KANCING NEXT-M', '12.500', 32),
(413, 'MAP PLASTIK TALI FOLDER ONE EBO 100F', '28.800', 32),
(414, 'MAP RIT BATIK TOPLA 1828', '14.000', 32),
(415, 'ZIPPER RIT JOYKO DCB48BILL', '11.250', 32),
(416, 'ZIPPER FILE BAZIC SIZE A6 BG753', '5.650', 32),
(417, 'ZIPPER RIT JOYKO DCB35B5', '11.250', 32),
(418, 'ZIPPER RIT JOYKO DCB39A4', '15.650', 32),
(419, 'ZIPPER BAG CERDAS 2828C HIJAU (MAP RIT)', '9.500', 32),
(420, 'ZIPPER BAG CERDAS 2828C BIRU (MAP RIT)', '9.500', 32),
(421, 'ZIPPER BAG CERDAS 2828C MERAH (MAP RIT)', '9.500', 32),
(422, 'ZIPPER FILE TOPLA 2828 MERAH', '9.500', 32),
(423, 'ZIPPER FILE TOPLA 2828 KUNING', '9.500', 32),
(424, 'ZIPPER FILE TOPLA 2828 HIJAU', '9.500', 32),
(425, 'ZIPPER FILE TOPLA 2828 BIRU', '9.500', 32),
(426, 'MAP KYOTO SNELHEKTER BIRU', '33.500', 32),
(427, 'MAP KYOTO SNELHEKTER MERAH', '33.500', 32),
(428, 'MAP KYOTO SNELHEKTER KUNING', '33.500', 32),
(429, 'MAP KYOTO SNELHEKTER HIJAU', '33.500', 32),
(430, 'EXPANDING FILE JOYKO EF 2638', '46.250', 32),
(431, 'EXPANDING FILE SUNWELL EF-09 MERAH', '20.000', 32),
(432, 'FILE CASE GUNINDO DFE-01', '25.000', 32),
(433, 'FILE CASE A3 FOLIO TORA FC-003', '27.000', 32),
(434, 'HANG MAP OCI NO 168', '4.000', 32),
(435, 'ODNER BANTEX ECO 1402-10', '23.500', 33),
(436, 'ODNER BANTEX ECO 1401-10', '23.100', 33),
(437, 'ODNER BANTEX ECO 1403-10', '21.600', 33),
(438, 'ORDNER PAPEO P10110', '15.000', 33),
(439, 'ODNER BANTEX TRENDY 1446-10', '24.000', 33),
(440, 'BOX FILE V-TECH 102', '10.000', 34),
(441, 'BOX FILE OCI FR777', '16.800', 34),
(442, 'BOX FILE HORE MIX HFR5758', '13.000', 34),
(443, 'BOX FILE BANTEX 4011 10', '35.000', 34),
(444, '\"V-TEC STAND BOOK 8\"\" ST07\"', '17.500', 34),
(445, 'BOOK END VIS-1 9274', '18.000', 34),
(446, 'RAK SUSUN MULTI TRAY TOPLA ET838', '65.000', 34),
(447, 'RAK SUSUN HAWAII ', '50.000', 34),
(448, 'BINDER CLIP KENKO 105', '3.600', 35),
(449, 'BINDER CLIP KENKO 107', '4.200', 35),
(450, 'BINDER CLIP KENKO 111', '6.000', 35),
(451, 'BINDER CLIP KENKO 155', '7.800', 35),
(452, 'BINDER CLIP KENKO 200', '13.800', 35),
(453, 'BINDER CLIP KENKO 260', '20.400', 35),
(454, 'BINDER CLIP COLOUR V-TECH 260 (12)', '2.500', 35),
(455, 'BINDER CLIP COLOUR V-TECH 111 (48)', '700', 35),
(456, 'BINDER CLIP COLOUR V-TECH 155 (24)', '1.050', 35),
(457, 'BINDER CLIP COLOUR V-TECH 107 (40)', '500', 35),
(458, 'KEY RING V-TECH VT-1005/50 TB', '30.000', 35),
(459, 'COLOURCLIP KENKO 3100', '4.500', 36),
(460, 'PAPERCLIP KENKO NO3', '2.000', 36),
(461, 'PAPERCLIP KENKO NO1', '2.200', 36),
(462, 'PAPERCLIP KENKO NO5', '4.500', 36),
(463, 'HOLDER MAGNETIC BAZIC 241', '12.500', 36),
(464, 'PAPERCLIP BOOKMARK HAEBARAGI EX16944', '15.000', 36),
(465, 'PAPERCLIP FUN AND JOY HC17767 MEOW', '12.000', 36),
(466, 'CLIP MAGNET 3D BOOKMARK VIS-1 (20)', '1.500', 36),
(467, 'CLIP MAGNET 3D BOOKMARK VIS-1 (6)', '5.000', 36),
(468, 'ISI PENSIL MEKANIK KENKO', '1.800', 36),
(469, 'V-TEC MAGNETIC VUTTON VT-MB30 CLR/5', '6.500', 37),
(470, 'V-TEC MAGNETIC VUTTON VT-MB40 CLR/4', '7.500', 37),
(471, 'PUSHPIN KENKO PN30 COLOR', '3.750', 37),
(472, 'JARUM PENTUL AMANDA', '1.500', 37),
(473, 'PENITI SWAN NO. 012', '1.000', 37),
(474, 'PERFORATOR KENKO 85', '56.250', 38),
(475, 'PERFORATOR KENKO 85N', '45.000', 38),
(476, 'PERFORATOR KENKO 40XL', '39.000', 38),
(477, 'PERFORATOR KENKO 30XL', '20.000', 38),
(478, 'PERFORATOR KENKO 40', '26.000', 38),
(479, 'CUTTER JOYKO L500', '13.550', 39),
(480, 'CUTTER KENKO L500', '13.550', 39),
(481, 'CUTTER KENKO A300', '5.250', 39),
(482, 'CUTTER GUNINDO A18', '3.750', 39),
(483, 'CUTTER DELI 2022', '4.100', 39),
(484, 'TAPE CUTTER JOYKO TC112', '16.250', 39),
(485, 'REFIL CUTTER KENKO A100', '2.900', 40),
(486, 'REFIL CUTTER JOYKO L150', '5.000', 40),
(487, 'GUNTING GUNINDO OSS', '4.750', 41),
(488, 'GUNTING GUNINDO OMM', '5.250', 41),
(489, 'GUNTING GUNINDO OLL', '10.500', 41),
(490, 'GUNTING KC888', '11.500', 41),
(491, 'GUNTING KB868', '8.000', 41),
(492, 'GUNTING KS818', '4.300', 41),
(493, 'GUNTING JOYKO SC14', '23.500', 41),
(494, 'GUNTING BAZIC ZIGZAG 160412', '5.950', 41),
(495, 'CUTTER TACO CT78 BUTEK', '2.500', 41),
(496, 'GUNTING DELI 6031', '10.650', 41),
(497, 'GUNTING KENKO FSC805', '10.650', 41),
(498, 'GUNTING GUNINDO FL', '10.500', 41),
(499, 'GUNTING KUKU WELL YEAR 357G-1', '2.950', 41),
(500, 'GUNTING KUKU E-STAR ES202', '2.650', 41),
(501, 'GUNTING KUKU NAIL CLIPPER BATIK LUX', '6.100', 41),
(502, 'STAPLER KENKO HD50', '20.000', 42),
(503, 'STAPLER KENKO HD10', '7.000', 42),
(504, 'STAPLER MAX HD50', '57.500', 42),
(505, 'STAPLER MAX HD10', '13.100', 42),
(506, 'STRAPLER KANGARO LE23S13QL', '400.000', 42),
(507, 'RIMOVER KANGARO SR-45T', '10.000', 42),
(508, 'STAPLES KENKO HD12N/24', '250.000', 42),
(509, 'STICK NOTE BAZIC 5127 ', '8.000', 43),
(510, 'STICK NOTE BAZIC 5156', '9.500', 43),
(511, 'STICK NOTE BAZIC 5154', '9.000', 43),
(512, 'STICK NOTE BAZIC 5128', '9.500', 43),
(513, 'STICK NOTE BAZIC 5157 SIGN HERE', '8.000', 43),
(514, 'STICK NOTE BAZIC 5168', '6.500', 43),
(515, 'STICK NOTE BAZIC 5170', '6.500', 43),
(516, 'STICK NOTE BAZIC 5198', '5.000', 43),
(517, '\"STICK NOTE BAZIC 5146 PAGE MARKER 1\"\"X3\"\"\"', '10.800', 43),
(518, '\"STICK NOTE BAZIC 5153 1\"\"X1.8\"\"\"', '8.500', 43),
(519, 'STICK NOTE JOYKO IM31', '7.000', 43),
(520, 'STICK NOTE JOYKO IM32', '6.500', 43),
(521, 'STICK NOTE JOYKO IM33', '6.500', 43),
(522, 'STICK NOTE JOYKO IM36', '7.000', 43),
(523, 'STICK NOTE JOYKO IM30', '6.500', 43),
(524, 'STICK NOTE V-TEC SN7676 1CLR HIJAU', '5.800', 43),
(525, 'STICK NOTE V-TEC SN7676 1CLR PINK', '5.800', 43),
(526, 'STICK NOTE V- TEC SN7676 1CLR ORANGE', '5.800', 43),
(527, 'STICK NOTE V-TEC SN380B POLOS', '5.000', 43),
(528, 'STICK NOTE V-TEC SN7676 4MC', '5.800', 43),
(529, 'STICK NOTE V-TEC FANCY SN331', '6.500', 43),
(530, 'STICK NOTE V-TEC SN76101 1CLR ORANGE', '6.500', 43),
(531, 'STICK NOTE V-TEC SN7676 1CLR KUNING', '5.800', 43),
(532, 'STICK NOTE V-TEC SN47676 MC', '5.800', 43),
(533, 'STICK NOTE V-TEC SN27651 MC', '5.000', 43),
(534, 'STICK NOTE V-TEC SN7651 1CLR HIJAU', '5.000', 43),
(535, 'STICK NOTE V-TEC SN3851 1CLR KUNING', '4.000', 43),
(536, 'STICK NOTE V-TEC SN7651 1CLR ORANGE', '5.000', 43),
(537, 'STICK NOTE V-TEC SN7651 1CLR PINK', '5.000', 43),
(538, 'STICK NOTE V-TEC SN3851 1CLR PINK', '4.000', 43),
(539, 'STICK NOTE V-TEC SN3851 1CLR HIJAU', '4.000', 43),
(540, 'STICK NOTE V-TEC SN3851 1CLR ORANGE', '4.000', 43),
(541, 'STICK NOTE V-TEC SN76101 1CLR KUNING', '6.500', 43),
(542, 'STICK NOTE V-TEC SN76101 1CLR PINK', '6.500', 43),
(543, 'STICK NOTE V-TEC SN76101 1CLR HIJAU', '6.500', 43),
(544, 'STICK NOTE V-TEC SN 380B POLOS', '5.000', 43),
(545, 'STICK NOTE V-TEC SN 380B GARIS', '5.000', 43),
(546, 'STICKER NOTE V-TEC SN76101 1CLR PINK', '6.750', 43),
(547, 'STICK NOTE SON GZ731A', '6.000', 43),
(548, 'STICK NOTE SON GZ732A', '8.500', 43),
(549, 'STICK NOTE SON GZ733A', '6.000', 43),
(550, 'MEMO PUTAR SUNWELL 4W POLOS NM57', '15.000', 43),
(551, 'STICK NOTE N1102', '6.500', 43),
(552, 'STICK NOTE PLASTIK 3D NO.5015', '6.500', 43),
(553, 'STICK  NOTE PREMIUM PLUS HR1705', '6.500', 43),
(554, 'STICK NOTE SPIDERMAN SN 8925', '6.750', 43),
(555, 'STICK NOTE BIG 7676C', '6.250', 43),
(556, 'STICK NOTE BIG 5138 5W/TUMPUK/COLOUR', '5.000', 43),
(557, 'STICK NOTE BAZIC 76101', '6.500', 43),
(558, 'STICK NOTE FLAGS SIGN HERE TJ55SH', '8.500', 43),
(559, 'STICK NOTE FLAGS SIGN HERE TJ44SH', '9.500', 43),
(560, 'STICK NOTE BENTUK LOVE SN 331/FANCY', '6.500', 43),
(561, 'STICKER NAMA FANCY JQ811', '5.000', 43),
(562, 'STICK NOTE BIG SN7651T/5W/3W', '6.000', 43),
(563, 'STICKER BENDERA M/P MINI', '10.000', 43),
(564, 'LABEL GOLDEN COCK 105', '3.100', 44),
(565, 'LABEL GOLDEN COCK 104', '3.100', 44),
(566, 'LABEL GOLDEN COCK 112', '3.100', 44),
(567, 'LABEL GOLDEN COCK 99', '3.100', 44),
(568, 'LABEL GOLDEN COCK 121', '3.100', 44),
(569, 'LABEL GOLDEN COCK 107', '3.100', 44),
(570, 'LABEL GOLDEN COCK 108', '3.100', 44),
(571, 'LABEL HORE 103', '3.100', 44),
(572, 'LABEL OLEAN CITY 99', '3.100', 44),
(573, 'V-TECH NO10', '2.900', 45),
(574, 'MAX NO10', '2.750', 45),
(575, 'GREATWELL KECIL', '17.000', 45),
(576, 'GREATWELL BESAR', '27.000', 45),
(577, 'MAX NO3', '5.450', 45),
(578, 'ETONA NO10', '34.000', 45),
(579, 'ETONA 13/6', '24.500', 45),
(580, 'ETONA 13/8', '28.500', 45),
(581, 'ETONA 24/6', '3.500', 45),
(582, 'KANGARO 23/24', '55.000', 45),
(583, 'KANGARO 23/20', '50.000', 45),
(584, 'KANGARO 23/17', '29.375', 45),
(585, 'KANGARO 23/15', '28.125', 45),
(586, 'KANGARO 23/13', '26.250', 45),
(587, 'KANGARO 23/8', '20.000', 45),
(588, 'DISPENSER VTECH VT216', '22.500', 46),
(589, 'DISPENSER KENKO TD323NC', '21.900', 46),
(590, 'DISPENSER KENKO TD201', '17.500', 46),
(591, 'DISPENSER KENKO TD321', '21.250', 46),
(592, 'DISPENSER KENKO TD505', '30.650', 46),
(593, 'TAPE DISPENSER KENKO TDB-2', '22.500', 46),
(594, 'PAPER CUTTER VTEC F4  VT1510', '210.000', 47),
(595, 'LAKBAN NACHI OPP 2\' BENING TEBAL NCB22', '13.000', 48),
(596, 'LAKBAN NACHI OPP 2\' COKLAT TEBAL NCB22', '11.000', 48),
(597, 'LAKBAN NACHI OPP 1\' BENING', '5.500', 48),
(598, 'LAKBAN NACHI OPP 1\' COKLAT', '5.900', 48),
(599, 'LAKBAN NACHI OPP 2\' BENING TIPIS', '6.600', 48),
(600, 'LAKBAN NACHI OPP 2\' COKLAT TIPIS', '6.600', 48),
(601, 'LAKBAN NACHI 1,5\' HITAM', '11.100', 48),
(602, 'LAKBAN NACHI 1\' HITAM', '7.500', 48),
(603, 'LAKBAN NACHI 2\' HITAM', '14.550', 48),
(604, 'LAKBAN NACHI 1/2X72 NC127', '3.500', 48),
(605, 'LAKBAN OCI 2\' PINK', '16.500', 48),
(606, 'LAKBAN OCI 2\' ORANGE', '16.500', 48),
(607, 'LAKBAN OCI 2\' UNGU', '16.500', 48),
(608, 'LAKBAN BERRY 2\' PUTIH', '16.500', 48),
(609, 'LAKBAN OCI 2’ MERAH', '16.500', 48),
(610, 'LAKBAN ADHESIVE 2 INCH ABU-ABU', '16.500', 48),
(611, 'LAKBAN OPP TAPE 48X100 M1W PUTIH B JANGAN DIBANTING', '25.000', 48),
(612, 'LAKBAN BIRU 1,5’ SEIKIMORI', '11.000', 48),
(613, 'PITA SATIN ¼’ GZ-911', '3.000', 48),
(614, 'PITA SATIN ¼’ SAKURA', '5.000', 48),
(615, 'PITA SATIN REBORN 6 MM', '3.000', 48),
(616, 'MT NACHI 18MM', '2.850', 49),
(617, 'MT NACHI 12 MM', '2.750', 49),
(618, 'MT NACHI 1’', '5.250', 49),
(619, 'MT NACHI 2’', '9.100', 49),
(620, 'DT NACHI 2’', '11.000', 50),
(621, 'DT NACHI 1’', '5.100', 50),
(622, 'DT FOAM NACHI 24MM', '10.500', 50),
(623, 'DT NACHI 1/2’', '2.550', 50),
(624, 'DT NACHI ¼ INCH DN14', '1.500', 50),
(625, 'DT BAZIC WHITE FOAM 40MMX5M', '12.750', 50),
(626, 'MOUNTING TAPE 3M 1”', '56.500', 51),
(627, 'MOUNTING TAPE 3M ½ INCH', '35.000', 51),
(628, 'NACHI 1/2X10 NC110', '750', 51),
(629, 'NACHI 1/2X25 NC125', '1.100', 51),
(630, 'ISOLASI SON 1/2 X 10 BLACK AND WHITE GZ855', '2.700', 52),
(631, 'ISOLASI SON 1/2 X 10 FANCY GLITTER GZ856', '2.150', 52),
(632, 'ISOLASI SON 1/2 X 10 GLITTER GZ865', '2.150', 52),
(633, 'ISOLASI SON 1/2 X 10 FANCY GZ867', '1.050', 52),
(634, 'ISOLASI SON 2X72 HOLOGRAM GZ873', '20.000', 52),
(635, 'ISOLASI SON 1X72 HOLOGRAM GZ871', '10.500', 52),
(636, 'ISOLASI SON 1/2X72 BLACK AND WHITE GZ862', '6.000', 52),
(637, 'ISOLASI SON 1/2X72 HOLOGRAM GZ869', '6.000', 52),
(638, 'ISOLASI SON 1/2X72 FANCY GLITTER GZ862', '6.000', 52),
(639, 'ISOLASI SON 1/2X72 FANCY GLITTER GZ864', '6.000', 52),
(640, 'GOLDTAPE SOLASI LISTRIK', '850', 53),
(641, 'NACHI LISTRIK 7X3/4”X20MTRS', '9.900', 53),
(642, 'NATIONAL ELECRICAL TAPE 5X3/4X20YARDS', '5.250', 53),
(643, 'STAMPAD JOYKO N0. 1', '7.000', 54),
(644, 'STAMPAD JOYCO NO.0/345039', '6.500', 54),
(645, 'STAMPAD HERO KECIL E2460 VIOLET', '10.000', 54),
(646, 'STAMPAD HERO BESAR E1460 VIOLET', '11.000', 54),
(647, 'STAMPAD AMANDA KECIL', '4.500', 54),
(648, 'DATE STAMP KENKO S68(LUNAS)', '10.500', 55),
(649, 'DATE STAMP KENKO D4', '7.200', 55),
(650, 'DATE STAMP JOYKO S68', '10.000', 55),
(651, 'NUMBER STAMP KENKO N38', '10.000', 55),
(652, 'STAMPAD INK JOYKO SPI12 BLUE', '5.750', 56),
(653, 'STAMPAD INK JOYKO SPI14 MERAH', '5.750', 56),
(654, 'STAMPAD INK JOYKO SP111 UNGU', '5.750', 56),
(655, 'STAMPAD INK BAZIC 1110 UNGU', '8.000', 56),
(656, 'SPON AIR HORE MS5908', '12.000', 57),
(657, 'ALKALINE 9 V (KOTAK)', '35.000', 58),
(658, 'ABC 9V KOTAK', '11.500', 58),
(659, 'BATRE ABC BESAR R-20', '9.500', 58),
(660, 'BATRE ABC A2', '2.400', 58),
(661, 'BATU ABC TGG R-14', '6.000', 58),
(662, 'BATU BATERAI ABC AA 1.5 V', '2.400', 58),
(663, 'BATU BATERAI ABC SUPER POWER AAA 1.5V', '5.000', 58),
(664, 'BATU BATERAI ENERGIZER MAX AA 2+1', '22.500', 58),
(665, 'BATU ENERGIZER A23', '22.500', 58),
(666, 'BATRE ALKALINE A2', '14.000', 58),
(667, 'BATRE ALKALINE A3', '13.500', 58),
(668, 'BATU BATERAI ABC ALKALINE KOTAK 9 VOLT', '35.000', 58),
(669, 'C-MOS LITHIUM CR2032', '5.000', 58),
(670, 'LEM JOYKO 8GR GS112', '3.000', 59),
(671, 'LEM JOYKO GL502', '2.200', 59),
(672, 'LEM JOYKO GS104', '3.000', 59),
(673, 'LEM KENKO LG50', '2.600', 59),
(674, 'LEM KENKO LG50', '2.600', 59),
(675, 'LEM UHU STICK 21GR 65', '18.600', 59),
(676, 'LEM GLUVINAL KECIL 111', '2.000', 59),
(677, 'LEM GLUVINAL BESAR 112', '4.100', 59),
(678, 'LEM POVINAL 111 K', '2.250', 59),
(679, 'LEM POVINAL PO 112 B', '4.100', 59),
(680, 'LEM UHU STICK 40GR 70', '30.000', 59),
(681, 'LEM CASTOL KECIL', '6.000', 59),
(682, 'LEM UHU ALL PURPOSE 60 ML 40981', '28.000', 59),
(683, 'LEM UHU STICK 8,2GR 60', '11.000', 59),
(684, 'LEM GLUKOL KECIL', '1.200', 59),
(685, 'LEM GLUKOL BESAR', '7.000', 59),
(686, 'LEM UHU ALL PURPOSE 35ML 40759', '17.500', 59),
(687, 'LEM FOX BOTOL PVAC 150GR', '10.000', 59),
(688, 'LEM UHU ALL PURPOSE 20ML 40756', '15.750', 59),
(689, 'LEM AICA AIBON', '12.500', 59),
(690, 'LEM ALTECO 3GR', '5.000', 59),
(691, 'LEM G', '6.500', 59),
(692, 'LEM TEMBAK K TOZHCA TZ-920W', '15.000', 59),
(693, 'LEM TEMBAK S KOSS KS-G40 40W', '30.000', 59),
(694, 'LEM TEMBAK B OK-960 60W', '95.000', 59),
(695, 'LEM TEMBAK V-TEC VT MGG20', '19.500', 59),
(696, 'LEM TEMBAK OEM NO. 62-885', '1.100', 59),
(697, 'REFILL LEM TEMBAK B', '3.000', 59),
(698, 'REFILL LEM TEMBAK T', '1.500', 59),
(699, 'REFILL LEM TEMBAK K', '800', 59),
(700, 'GLUE GUN V-TEC VT MGG20', '19.500', 59),
(701, 'HOT MELT GLUE STICK OZ GZ885', '800', 59),
(702, 'LILIN ANGKAT POLKADOT', '5.000', 59),
(703, 'LILIN CAP BENTENG', '7.500', 59),
(704, 'LILIN SUPER', '12.000', 59),
(705, 'CAL CASIO DH12 WE', '155.000', 60),
(706, 'CAL CASIO DH14', '180.000', 60),
(707, 'CAL CASIO DH16 BK', '220.000', 60),
(708, 'CAL CASIO FX350ESPLUS', '187.200', 60),
(709, 'CAL CASIO FX350MS', '180.000', 60),
(710, 'CAL JOYKO CC868', '55.000', 60),
(711, 'CAL JOYKO CC45', '52.000', 60),
(712, 'CAL JOYKO CC25', '84.000', 60),
(713, 'CAL JOYKO CC12', '60.000', 60),
(714, 'CALT CITIZEN LC 310N', '42.000', 60),
(715, 'CAL CITIZEN CT-555N ', '75.000', 60),
(716, 'ID CARD TRANSPARAN TOPLA', '1.000', 61),
(717, 'ID CARD COLOR DX612', '5.500', 61),
(718, 'ID CARD V-TEC+TALI COLOR IDC-5490  BIRU MUDA', '3.000', 61),
(719, 'ID CARD V-TEC+TALI COLOR IDC-5490 KUNING', '3.000', 61),
(720, 'ID CARD A3 POP1 OC1913', '1.000', 61),
(721, 'ID CARD A2 POP1 OC1912', '1.000', 61),
(722, 'ID CARD B1 POP1 OC1991', '500', 61),
(723, 'TALI ID CARD STRAP 981', '1.000', 61),
(724, 'TALI ID CARD POP1 KAIT 2CM TEBAL', '4.000', 61),
(725, 'YOYO WARNA TRANSPARAN', '2.500', 61),
(726, 'PEN CASE PLASTIK TOPLA 2878 COLOR', '5.500', 62),
(727, 'PEN CASE PLASTIK TOPLA 2879 FANCY', '6.750', 62),
(728, 'PEN CASE XPM51801', '35.000', 62),
(729, 'PEN CASE KARTON KUNCI KODE KK8D', '33.000', 62),
(730, 'PEN CASE RIT SANWA PC60091', '33.000', 62),
(731, 'PEN CASE RIT ZIAOLINGJING BD650', '32.000', 62),
(732, 'PAN CASE RIT LOL ST513A', '12.500', 62),
(733, 'PENCIL CUP V TEC BULAT MOTIF PC1506', '14.000', 62),
(734, 'PENCIL CUP V TEC BULAT WARNA 802/C', '9.000', 62),
(735, 'PENCIL CUP V TEC KOTAK COLOR 804/C', '12.000', 62),
(736, 'PEN HOLDER KENKO BATIK PH902', '24.100', 62),
(737, 'PEN CASE KALENG B383', '12.500', 62),
(738, 'RAK PLASTIK SUSUN  3 LION STAR B', '65.000', 62),
(739, 'RAK PLASTIK SUSUN  3 HAWAI K 5051 S3', '50.000', 62),
(740, 'PEN CASE SLOT LITTE PONY KM-8881-P', '20.000', 62),
(741, 'PEN STAND GUNINDO PST004', '22.500', 62),
(742, 'PEN STAND GUNINDO PST007', '23.500', 62),
(743, 'PEN STAND GUNINDO PST005', '24.750', 62),
(744, 'PEN STAND KENKO STP100SG', '5.500', 62),
(745, 'TANCAPAN NOTA ZRM0902', '15.000', 63),
(746, 'PGRS SEGITIGA BTF NO. 12', '17.700', 64),
(747, 'PGRS SEGITIGA BTF NO. 10', '14.000', 64),
(748, 'PGRS SEGITIGA BTF NO. 8', '11.000', 64),
(749, 'PGRS SEGITIGA BTF NO. 7', '7.000', 64),
(750, 'PGRS SEGITIGA BTF NO. 6', '5.200', 64),
(751, 'PGRS 20 BUTTERFLY', '1.750', 64),
(752, 'PGRS 30 BUTTERFLY', '2.150', 64),
(753, 'PGRS 30 BIG 3350', '2.200', 64),
(754, 'PGRS 30 FANCY PF804', '2.100', 64),
(755, 'PGRS BESI 30 ESTAR', '2.500', 64),
(756, 'PGRS BESI 60 KENKO', '19.100', 64),
(757, 'PGRS BESI 30 FANCY GPT04-203-002 FZ/HK/AV/SP', '3.350', 64),
(758, 'PGRS BESI 30 KENKO', '6.750', 64),
(759, 'PGRS BESI 15 KENKO', '3.000', 64),
(760, 'PGRS BESI 50 KENKO', '18.500', 64),
(761, 'BSR BTF 360/12 36012', '4.200', 65),
(762, 'BSR BTF 360/15CM', '4.150', 65),
(763, 'BSR BTF 180/15CM', '2.300', 65),
(764, 'BSR BAZIC 660 180-10', '1.650', 65),
(765, 'PAPAN WHITE BOARD 120 X 60', '90.000', 66),
(766, 'PAPAN WHITE BOARD 50X30', '60.000', 66),
(767, 'CLIPBOARD ECECUTIVE KAYU/UNIMAS', '4.000', 66),
(768, 'CLIPBOARD JK COLLECTION CB0818D', '10.500', 66),
(769, 'PAPAN WB FANCY 606', '45.000', 66),
(770, 'PAPAN WB FANCY 808', '39.000', 66),
(771, 'PENGHAPUS  GUNINDO WBE805', '5.000', 67),
(772, 'PENGHAPUS GUNINDO WBE803', '6.000', 67),
(773, 'CD-R GT PRO CANDY', '2.200', 68),
(774, 'CD-R MAXELL', '2.750', 68),
(775, 'CD-RW GT PRO', '7.000', 68),
(776, 'CD-R GTPRO ICE CREAM', '3.000', 68),
(777, 'DVD-R MAXELL', '3.500', 69),
(778, 'DVD-R GT PRO APPLE', '3.500', 69),
(779, 'DVD-RW GT PRO 4X', '8.100', 69),
(780, 'PLASTIK CD', '8.000', 70),
(781, 'CD CONE', '18.000', 70),
(782, 'AMPLOP CD TOPLA', '300', 70),
(783, 'AMPLOP CC BRO', '700', 70),
(784, 'CD CASE KERANG OREN', '1.500', 70),
(785, 'CD CASE KERANG ISI 2 BIG CD101', '2.150', 70),
(786, 'CD CASE PLASTIK SINGLE BENING', '1.900', 70),
(787, 'LABEL CD MAGIC GLOSSY', '500', 70),
(788, 'LABEL CD MAGIC HVS', '500', 70),
(789, 'MOUSE USB M-TECH 129', '35.000', 71),
(790, 'MOUSE USB M-TECH MT-06', '30.000', 71),
(791, 'MOUSE USB ROLLCABLE M-TECH RE-87', '30.000', 71),
(792, 'MOUSE WIRELESS ROBOT M210', '63.750', 71),
(793, 'MOUSE WIRELESS EYOTA M187', '45.000', 71),
(794, 'MOUSE LOGITECH KABEL B100 USB', '65.000', 71),
(795, 'MOUSE LOGITECH WIRELESS M170', '125.000', 71),
(796, 'MOUSE LOGITECH WIRELESS M171', '155.000', 71),
(797, 'MOUSE LOGITECH WIRELESS M185', '180.000', 71),
(798, 'MOUSE LOGITECH KABEL M90', '65.000', 71),
(799, 'MOUSE GENIUS NX-7000 WIRELESS', '110.000', 71),
(800, 'MOUSE SPC SMW-10 WIRELESS', '40.000', 71),
(801, 'MOUSE REXUS Q10 WIRELESS', '55.000', 71),
(802, 'MOUSE REXUS Q20 WIRELESS', '56.250', 71),
(803, 'MOUSE PAD REXUS K-VLAR', '50.000', 71),
(804, 'FLASHDISK KINGSTONE DT20 32GB', '80.000', 72),
(805, 'FLASHDISK KINGSTON FD 64 GB', '125.000', 72),
(806, 'FLASHDISK SANDISK BLADE CZ50 16GB', '55.000', 72),
(807, 'FLASHDISK SANDISK BLADE CZ50 32GB', '71.500', 72),
(808, 'FLASHDISK SANDISK BLADE CZ50 64GB', '120.000', 72),
(809, 'FLASHDISK SANDISK BLADE CZ50 128GB', '177.000', 72),
(810, 'FLASHDISK SANDISK ULTRA OTG 16GB 3,0', '88.000', 72),
(811, 'FLASHDISK SANDISK ULTRA OTG 32GB 3,0', '110.000', 72),
(812, 'FLASHDISK SANDISK ULTRA OTG 64GB 3,0', '182.500', 72),
(813, 'SD SANDISK ULTRA TYPE C 16GB', '115.000', 72),
(814, 'SD SANDISK ULTRA TYPE C 32GB', '127.500', 72),
(815, 'SD SANDISK ULTRA DUAL USB DRIVE 3,0 64GB', '155.000', 72),
(816, 'FLASHDISK HP245-16GB', '80.000', 72),
(817, 'FLASHDISK HP 221-16GB', '80.000', 72),
(818, 'FLASHDISK HP178-16GB', '80.000', 72),
(819, 'KEYBOARD MOUSE LOGITECH KABEL MK120', '172.000', 73),
(820, 'KEYBOARD MOUSE LOGITECH WIRELESS MK220', '285.000', 73),
(821, 'KEYBOARD VOTRE', '25.000', 73),
(822, 'CATRIDGE CN CA 91', '380.000', 74),
(823, 'CATRIDGE CN CA 92', '415.000', 74),
(824, 'CATRIDGE PG 810 ', '285.000', 74),
(825, 'CATRIDGE CL 811', '315.000', 74),
(826, 'CATRIDGE CANON 47 BK', '160.000', 74),
(827, 'CATRIDGE CANON 57 S COLOR', '250.000', 74),
(828, 'CATRIDGE PG 40 BK', '325.000', 74),
(829, 'CATRIDGE CL 41 COLOR', '400.000', 74),
(830, 'CATRIDGE BLACK TONER EP-303 CANON', '1.134.000', 74),
(831, 'RIBBON PITA LX300', '60.000', 75),
(832, 'RIBBON PITA LX310', '60.000', 75),
(833, 'RIBBON PRINTRONIX P7000', '900.000', 75),
(834, 'RIBBON PITA LQ 2180', '160.000', 75),
(835, 'RIBBON E-PRINT ERC 30/34/38', '45.000', 75),
(836, 'TONER HP 12A ORI', '800.000', 76),
(837, 'TONER HP 85A ORI', '800.000', 76),
(838, 'TONER HP 36A ORI', '800.000', 76),
(839, 'TONER HP 35A ORI', '800.000', 76),
(840, 'TONER HP 17A ORI', '800.000', 76),
(841, 'TONER HP 83A ORI', '800.000', 76),
(842, 'TONER HP 12A COMPATIBLE', '200.000', 76),
(843, 'TONER HP 85A COMPATIBLE', '200.000', 76),
(844, 'TONER HP 35A COMPATIBLE', '200.000', 76),
(845, 'TONER 83A COMPATIBLE', '200.000', 76),
(846, 'TONER 36A COMPATIBLE', '200.000', 76),
(847, 'TONER HP 17A COMPATIBLE', '350.000', 76),
(848, 'TONER CANON 303 (LBP2900/3000)', '1.152.000', 76),
(849, 'TONER HP 204A BLACK ', '830.000', 76),
(850, 'TONER HP 204A WARNA', '900.000', 76),
(851, 'TINTA SUNTIK BLUE PRINT EPSON BPE93K', '37.500', 77),
(852, 'TINTA SUNTIK DP 40', '37.500', 77),
(853, 'TINTA SUNTIK DP 41', '37.500', 77),
(854, 'TINTA CANON GI 790 BLACK', '170.000', 77),
(855, 'TINTA CANON GI 790 CYAN', '135.000', 77),
(856, 'TINTA CANON GI 790 MAGENTA', '135.000', 77),
(857, 'TINTA CANON GI 790 YELLOW', '135.000', 77),
(858, 'BLUE PRINT 100ML CANON M', '43.000', 77),
(859, 'BLUE PRINT 100ML CANON C', '43.000', 77),
(860, 'BLUE PRINT 100ML CANON K', '43.000', 77),
(861, 'BLUE PRINT 100ML CANON Y', '43.000', 77),
(862, 'BLUE PRINT 100ML EPSON M', '43.000', 77),
(863, 'BLUE PRINT 100ML EPSON C', '43.000', 77),
(864, 'BLUE PRINT 100ML EPSON K', '43.000', 77),
(865, 'BLUE PRINT 100ML EPSON Y', '43.000', 77),
(866, 'BLUE PRINT 100ML EPSON LC', '43.000', 77),
(867, 'BLUE PRINT 100ML EPSON LM', '43.000', 77),
(868, 'TINTA EPSON Y 664', '90.000', 77),
(869, 'TINTA EPSON K 664', '96.000', 77),
(870, 'TINTA EPSON C 664', '90.000', 77),
(871, 'TINTA EPSON M 664', '90.000', 77),
(872, 'TINTA EPSON 003 UTK L3110 BLACK', '96.000', 77),
(873, 'TINTA EPSON 003 C', '90.000', 77),
(874, 'TINTA EPSON 003 M', '90.000', 77),
(875, 'TINTA EPSON 003 Y', '90.000', 77),
(876, 'TINTA EPSON 774 BK', '215.000', 77),
(877, 'TINTA BLUEPRINT LITE EPSON 664 70 ML BK', '42.000', 77),
(878, 'TINTA BLUEPRINT LITE EPSON 664 70 ML CYAN', '42.000', 77),
(879, 'TINTA BLUEPRINT LITE EPSON 664 70 ML MAGENTA', '42.000', 77),
(880, 'TINTA BLUEPRINT LITE EPSON 664', '42.000', 77),
(881, '70 ML YELLOW', '', 77),
(882, 'TINTA BLUEPRINT LITE EPSON 003 72 ML BK', '42.000', 77),
(883, 'TINTA BLUEPRINT LITE EPSON 003 72 ML CYAN ', '42.000', 77),
(884, 'TINTA BLUEPRINT LITE EPSON 003 72 ML MAGENTA', '42.000', 77),
(885, 'TINTA BLUEPRINT LITE EPSON 003 72 ML YELLOW', '42.000', 77),
(886, 'TINTA STEMPEL OTOMATIS', '11.000', 77),
(887, 'CHARGER BATERAI A2 JIAMEING JM-101', '25.000', 78),
(888, 'TIPE-X MESIN TIK', '15.000', 78),
(889, 'HDMI SPLITTER 4PORT NYK', '170.000', 78),
(890, 'KABEL HDMI PIPIH 5M (FLAT)', '45.000', 78),
(891, 'CONVERTER HDMI TO VGA ADAPTOR FIVE STAR', '125.000', 78),
(892, 'BRAKET TV BERVIN BWB-A4060SK (40-60)', '450.000', 78),
(893, 'SERBUK TONER PAF 85A MERAH', '165.000', 78),
(894, 'SWITCH POE 4PORT+1 MERK SPC', '350.000', 78),
(895, 'ADAPTOR CCTV 5A JARING', '80.000', 78),
(896, 'CONVERTER VGA TO HDMI AUDIO KOTAK 1080 P', '75.000', 78),
(897, '3-PORT HUB HI-SPEED USB 2.0', '45.000', 78),
(898, 'HDD CASE WD ELEMENT', '110.000', 78),
(899, 'HDD 2.5” EXTERNAL SEAGATE BACKUP PLUS 1TB', '900.000', 78),
(900, 'HDD 2.5” EXTERNAL SEAGATE BACKUP PLUS 2TB', '1.300.000', 78),
(901, 'HDD 2.5” EXTERNAL SEAGATE BACKUP PLUS 4TB', '2.000.000', 78),
(902, 'HDD 2.5” EXTERNAL SEAGATE BACKUP PLUS 5TB', '2.400.000', 78),
(903, 'HDD 2.5” EXTERNAL SEAGATE EXPANSION 1TB', '860.000', 78),
(904, 'HDD 2.5” EXTERNAL SEAGATE EXPANSION 2TB', '1.255.000', 78),
(905, 'HDD 2.5” EXTERNAL SEAGATE EXPANSION 4TB', '1.900.000', 78),
(906, 'HDD 2.5” EXTERNAL SEAGATE EXPANSION 5TB', '2.300.000', 78),
(907, 'HDD 2.5” EXTERNAL WD ELEMENT 1TB', '850.000', 78),
(908, 'HDD 2.5” EXTERNAL WD ELEMENT 1,5TB', '1.050.000', 78),
(909, 'HDD 2.5” EXTERNAL WD ELEMENT 2TB', '1.250.000', 78),
(910, 'HDD 2.5” EXTERNAL WD MY PASSPORT 1TB  ', '900.000', 78),
(911, 'HDD 2.5” EXTERNAL WD MY PASSPORT 2TB  ', '1.300.000', 78),
(912, 'HDD 2.5” EXTERNAL WD MY PASSPORT 4TB  ', '2.000.000', 78),
(913, 'STELLA MATIC (PENGHARUM RUANGAN)', '73.000', 79),
(914, 'REFILL STELLA 225 ML', '39.600', 79),
(915, 'STELLA ALL IN ONE ORANGE', '11.500', 79),
(916, 'TISSUE PASEO 250 SMART HIJAU ORANGE', '12.500', 79),
(917, 'TISSUE GULUNG TESSA', '6.500', 79),
(918, 'TISSUE SEE-U', '7.600', 79),
(919, 'TISSUE BASAH PASEO 50 SHEETS', '9.500', 79),
(920, 'HAND SOAP YURI 410 ML', '33.000', 79),
(921, 'HAND SOAP SAVE L 4 LITER', '70.000', 79),
(922, 'REFILL HAND SOAP YURI 375 ML', '16.500', 79),
(923, 'REFILL HAND SOAP LARISST 375 ML', '6.500', 79),
(924, 'SO KLIN LANTAI 780 ML', '13.500', 79),
(925, 'SO KLIN LANTAI 900 ML', '15.900', 79),
(926, 'SUPER PELL 770 ML', '16.500', 79),
(927, 'CLING 440 ML', '9.500', 79),
(928, 'SUNLIGHT 105 ML', '2.000', 79),
(929, 'SUNLIGHT BOTOL 750 ML', '25.000', 79),
(930, 'SUNLIGHT 755 ML', '19.350', 79),
(931, 'SPON SUSEMI', '2.500', 79),
(932, 'WIPOL 750 ML', '30.200', 79),
(933, 'VIXAL 780 ML', '26.000', 79),
(934, 'PORSTEX 1.000 ML', '21.000', 79),
(935, 'PORSTEX 2.000 ML', '44.500', 79),
(936, 'BAYCLIN 500 ML', '9.500', 79),
(937, 'BAYCLIN 1.000 ML', '11.500', 79),
(938, 'RINSO MATIC 800 ML', '33.500', 79),
(939, 'BAYGON SEMPROT 600 ML', '44.500', 79),
(940, 'KIWI 200 ML', '25.000', 79),
(941, 'KAPUR BARUS KAMAR MANDI LOTUS ', '17.000', 79),
(942, 'TRASHBAG 60 X 100', '75.000', 79),
(943, 'PLASTIK MEDIS WARNA KUNING', '4.700', 79),
(944, 'JAM DINDING DIAMOND', '88.000', 79),
(945, 'JAM DINDING OGANA', '45000', 79),
(946, 'ACRILIC TEMPAT WUDHU WANITA', '20.700', 80),
(947, 'CELENGAN KEROPI B', '12.000', 80),
(948, 'CELENGAN FROZEN B', '11.000', 80),
(949, 'CELENGAN TSUM-TSUM K', '9.000', 80),
(950, 'MASKER MEDIS SPC EARLOOP', '40.000', 80),
(951, 'MASKER MEDIS SPC HEADLOOP', '40.000', 80),
(952, 'KACA PEMBESAR', '20.000', 80),
(953, 'NAMPAN KECIL TANTOS 5551', '5.500', 80),
(954, 'HEADSET LENOVO STEREO EARBUD WITH MIC LS 118 - BLACK', '60.000', 80),
(955, 'FILLING CABINET BROTHER B 103', '2.000.000', 81),
(956, 'FILLING CABINET BROTHER SUPER BS 103', '2.500.000', 81),
(957, 'FILLING CABINET BROTHER B 104', '2.600.000', 81),
(958, 'FILLING CABINET BROTHER SUPER 104', '2.800.000', 81),
(959, 'ALMARI BROTHER B 304', '3.060.000', 81),
(960, 'ALMARI BROTHER B 303', '3.075.000', 81),
(961, 'ALMARI BROTHER B 203', '2.600.000', 81),
(962, 'ALMARI BROTHER B 703-3', '4.400.000', 81),
(963, 'ALMARI BROTHER B 306', '2.300.000', 81);

-- --------------------------------------------------------

--
-- Struktur dari tabel `kat_barang`
--

CREATE TABLE `kat_barang` (
  `id_kat_barang` int(11) NOT NULL,
  `kat_barang` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `kat_barang`
--

INSERT INTO `kat_barang` (`id_kat_barang`, `kat_barang`) VALUES
(1, 'KERTAS HVS'),
(2, 'KERTAS SAMPUL'),
(3, 'KERTAS KOMPUTER'),
(4, 'AMPLOP'),
(5, 'KERTAS FOTO'),
(6, 'MACAM-MACAM KERTAS'),
(7, 'BUKU TULIS'),
(8, 'KERTAS THERMAL DAN FAX'),
(9, 'BUKU GAMBAR'),
(10, 'SAMPUL BUKU'),
(11, 'BUKU HARD COVER'),
(12, 'BLOCKNOTE & BUKU AGENDA'),
(13, 'LOSELEAF/ISI BINDER'),
(14, 'KWITANSI'),
(15, 'NOTA'),
(16, 'BALLPOINT'),
(17, 'SPIDOL KECIL'),
(18, 'SPIDOL BESAR/WHITEBOARD'),
(19, 'REFILL SPIDOL'),
(20, 'STABILO'),
(21, 'TIPE-X/CORRECTION PEN'),
(22, 'PENSIL'),
(23, 'PAKET UJIAN'),
(24, 'RAUTAN'),
(25, 'PENGHAPUS'),
(26, 'PENSIL WARNA/PASTEL/CRAYON'),
(27, 'CAT AIR PALET DAN KUAS'),
(28, 'BUSSINES FILE'),
(29, 'MAP DOKUMEN'),
(30, 'SPRING FILE'),
(31, 'CLIP FILE'),
(32, 'STOPMAP'),
(33, 'ODNER'),
(34, 'BOX FILE & TEMPAT BUKU'),
(35, 'BINDER CLIP'),
(36, 'TRIGONAL CLIP'),
(37, 'PUSHPIN'),
(38, 'PERFORATOR'),
(39, 'CUTTER'),
(40, 'REFILL CUTTER'),
(41, 'GUNTING'),
(42, 'STAPLER'),
(43, 'STICK NOTE/POS-IT'),
(44, 'KERTAS LABEL'),
(45, 'ISI STAPLES'),
(46, 'DISPENSER TAPE'),
(47, 'PAPER CUTTER BESAR'),
(48, 'LAKBAN'),
(49, 'MASKING TAPE'),
(50, 'DOUBLE TAPE'),
(51, 'MOUNTING TAPE'),
(52, 'ISOLASI'),
(53, 'ISOLASI LISTRIK'),
(54, 'BANTALAN STAMPEL'),
(55, 'STAMPEL'),
(56, 'TINTA STAMPEL'),
(57, 'LEM HITUNG UANG'),
(58, 'BATERAI'),
(59, 'LEM'),
(60, 'CALCULATOR'),
(61, 'ID CARD'),
(62, 'TEMPAT BALLPOINT/PEN CASE'),
(63, 'TANCAPAN NOTA'),
(64, 'PENGGARIS'),
(65, 'BUSUR JANGKA'),
(66, 'WHITEBOARD'),
(67, 'PENGHAPUS WHITEBOARD'),
(68, 'CD-R'),
(69, 'DVD-R'),
(70, 'TEMPAT CD'),
(71, 'MOUSE'),
(72, 'FLASHDISK'),
(73, 'KEYBOARD + MOUSE'),
(74, 'CATRIDGE'),
(75, 'RIBBON PITA'),
(76, 'CATRIDGE TONER'),
(77, 'TINTA'),
(78, 'AKSESORIS KOMPUTER'),
(79, 'PERALATAN & BAHAN KEBERSIHAN'),
(80, 'LAIN-LAIN'),
(81, 'MEBELAIR'),
(87, 'BUKU');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kontak`
--

CREATE TABLE `kontak` (
  `id_kontak` int(11) NOT NULL,
  `email` varchar(128) NOT NULL,
  `no_hp` varchar(128) NOT NULL,
  `alamat` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `kontak`
--

INSERT INTO `kontak` (`id_kontak`, `email`, `no_hp`, `alamat`) VALUES
(1, 'malik.addkomputer@gmail.com', '0853 2545 4495 (Zulfan Dian P)', 'Jl. HM Sarbini No.60, Jetis, Kutosari, Kec. Kebumen, Kabupaten Kebumen, Jawa Tengah 54317');

-- --------------------------------------------------------

--
-- Struktur dari tabel `misi`
--

CREATE TABLE `misi` (
  `id_misi` int(11) NOT NULL,
  `misiperusahaan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `misi`
--

INSERT INTO `misi` (`id_misi`, `misiperusahaan`) VALUES
(2, 'Menjadi mitra dan pemasok peralatan kantor yang berkualitas tinggi dan terpercaya.'),
(3, 'Menjadi pemimpin pasar bidang sarana dan prasarana kantor.'),
(4, 'Menjaga dan mengembangkan profesionalisme dan kualitas sumber daya manusia.'),
(5, 'Mengembangkan kerjasama dan kemitraan usaha yang saling menguntungkan.');

-- --------------------------------------------------------

--
-- Struktur dari tabel `portofolio`
--

CREATE TABLE `portofolio` (
  `id_portofolio` int(11) NOT NULL,
  `kategori_p` varchar(50) NOT NULL,
  `gambar_p` varchar(200) NOT NULL,
  `judul_p` varchar(50) NOT NULL,
  `detail_p` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `portofolio`
--

INSERT INTO `portofolio` (`id_portofolio`, `kategori_p`, `gambar_p`, `judul_p`, `detail_p`) VALUES
(4, 'web', 'simbok_blonjo.jpg', 'Simbok Blonjo', 'Website ini merupakan salah satu kerjasama CV. Kebumen Prima Sarana dengan Dinas Pemerintahan Kabupaten Kebumen'),
(5, 'web', 'cv_add_com.png', 'Website CV ADD', 'Website ini merupakan salah satu website untuk keperluan rekrutmen CV ADD Computer');

-- --------------------------------------------------------

--
-- Struktur dari tabel `slideshow`
--

CREATE TABLE `slideshow` (
  `id_slideshow` int(11) NOT NULL,
  `j_slideshow` varchar(500) NOT NULL,
  `d_slideshow` text NOT NULL,
  `g_slideshow` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `slideshow`
--

INSERT INTO `slideshow` (`id_slideshow`, `j_slideshow`, `d_slideshow`, `g_slideshow`) VALUES
(8, 'Kebumen Prima Sarana', 'CV. Kebumen Prima Sarana merupakan perusahaan yang melayani penjualan ATK, Mekanikal Elektrikal, Komputer Aksesoris, CCTV, Cetakan, Mebelair dan Service.', 'KPSkbm.jpeg'),
(9, 'Kerjasama CV. Kebumen Prima Sarana dengan RSUD Kebumen', 'Adapun kerjasama terserbut terkait pembuatan sistem informasi RSUD Kebumen yang mencakup berbagai bagian sistem informasi rumah sakit.', 'slide-2.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_statistic`
--

CREATE TABLE `tb_statistic` (
  `statistic_id` int(11) NOT NULL,
  `statistic_date` date NOT NULL,
  `statistic_visitor` int(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=FIXED;

--
-- Dumping data untuk tabel `tb_statistic`
--

INSERT INTO `tb_statistic` (`statistic_id`, `statistic_date`, `statistic_visitor`) VALUES
(1, '2021-10-02', 5),
(2, '2021-10-03', 7),
(3, '2021-10-03', 7),
(4, '2021-10-11', 3),
(5, '2021-10-15', 2),
(6, '2021-10-20', 6),
(7, '2021-10-20', 6),
(8, '2021-11-10', 3),
(9, '2021-11-11', 3),
(10, '2021-11-23', 3),
(11, '2021-11-30', 1),
(12, '2021-12-05', 2),
(13, '2022-01-12', 5),
(14, '2022-01-14', 31),
(15, '2022-01-18', 15),
(16, '2022-01-20', 1),
(17, '2022-01-21', 28),
(18, '2022-01-22', 2),
(19, '2022-01-26', 5),
(20, '2022-01-27', 2),
(21, '2022-01-29', 1),
(22, '2022-02-03', 14),
(23, '2022-02-20', 4),
(24, '2022-02-21', 2),
(25, '2022-03-16', 2),
(26, '2022-03-18', 6),
(27, '2022-03-21', 2),
(28, '2022-03-30', 2),
(29, '2022-04-05', 21),
(30, '2022-04-07', 13),
(31, '2022-04-08', 12);

-- --------------------------------------------------------

--
-- Struktur dari tabel `testimoni`
--

CREATE TABLE `testimoni` (
  `id_testimoni` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `pekerjaan` varchar(50) NOT NULL,
  `isi` text NOT NULL,
  `foto` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `visi`
--

CREATE TABLE `visi` (
  `id_visi` int(11) NOT NULL,
  `visiperusahaan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `visi`
--

INSERT INTO `visi` (`id_visi`, `visiperusahaan`) VALUES
(6, 'Menjadi perusahaan penyedia sarana, prasarana terbaik, terpercaya dan terbesar di Indonesia.');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `berita`
--
ALTER TABLE `berita`
  ADD PRIMARY KEY (`id_berita`);

--
-- Indeks untuk tabel `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`id_clients`);

--
-- Indeks untuk tabel `daftarlayanan`
--
ALTER TABLE `daftarlayanan`
  ADD PRIMARY KEY (`id_layanan`);

--
-- Indeks untuk tabel `data_barang`
--
ALTER TABLE `data_barang`
  ADD PRIMARY KEY (`id_barang`);

--
-- Indeks untuk tabel `kat_barang`
--
ALTER TABLE `kat_barang`
  ADD PRIMARY KEY (`id_kat_barang`);

--
-- Indeks untuk tabel `kontak`
--
ALTER TABLE `kontak`
  ADD PRIMARY KEY (`id_kontak`);

--
-- Indeks untuk tabel `misi`
--
ALTER TABLE `misi`
  ADD PRIMARY KEY (`id_misi`);

--
-- Indeks untuk tabel `portofolio`
--
ALTER TABLE `portofolio`
  ADD PRIMARY KEY (`id_portofolio`);

--
-- Indeks untuk tabel `slideshow`
--
ALTER TABLE `slideshow`
  ADD PRIMARY KEY (`id_slideshow`);

--
-- Indeks untuk tabel `tb_statistic`
--
ALTER TABLE `tb_statistic`
  ADD PRIMARY KEY (`statistic_id`) USING BTREE;

--
-- Indeks untuk tabel `testimoni`
--
ALTER TABLE `testimoni`
  ADD PRIMARY KEY (`id_testimoni`);

--
-- Indeks untuk tabel `visi`
--
ALTER TABLE `visi`
  ADD PRIMARY KEY (`id_visi`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `berita`
--
ALTER TABLE `berita`
  MODIFY `id_berita` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT untuk tabel `clients`
--
ALTER TABLE `clients`
  MODIFY `id_clients` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `daftarlayanan`
--
ALTER TABLE `daftarlayanan`
  MODIFY `id_layanan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `data_barang`
--
ALTER TABLE `data_barang`
  MODIFY `id_barang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=964;

--
-- AUTO_INCREMENT untuk tabel `kontak`
--
ALTER TABLE `kontak`
  MODIFY `id_kontak` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `misi`
--
ALTER TABLE `misi`
  MODIFY `id_misi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `portofolio`
--
ALTER TABLE `portofolio`
  MODIFY `id_portofolio` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `slideshow`
--
ALTER TABLE `slideshow`
  MODIFY `id_slideshow` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `tb_statistic`
--
ALTER TABLE `tb_statistic`
  MODIFY `statistic_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT untuk tabel `testimoni`
--
ALTER TABLE `testimoni`
  MODIFY `id_testimoni` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `visi`
--
ALTER TABLE `visi`
  MODIFY `id_visi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
