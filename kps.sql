-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 20 Okt 2021 pada 11.07
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
(32, 'Singapura termasuk salah satu negara maju di Asia Tenggara', '<p></p><p dir=\"ltr\" style=\"margin-top: 0pt; margin-bottom: 0pt; line-height: 1.38; letter-spacing: 0.5px; color: rgb(77, 77, 77); font-family: GalanoGrotesque, sans-serif; font-size: 14px;\"><span style=\"font-size: 11pt; font-family: \" times=\"\" new=\"\" roman\";=\"\" color:=\"\" rgb(0,=\"\" 0,=\"\" 0);=\"\" background-color:=\"\" transparent;=\"\" font-weight:=\"\" 700;=\"\" font-variant-numeric:=\"\" normal;=\"\" font-variant-east-asian:=\"\" vertical-align:=\"\" baseline;=\"\" white-space:=\"\" pre-wrap;\"=\"\">Mengapa memilih Singapura?</span></p><p dir=\"ltr\" style=\"margin-top: 0pt; margin-bottom: 0pt; line-height: 1.38; letter-spacing: 0.5px; color: rgb(77, 77, 77); font-family: GalanoGrotesque, sans-serif; font-size: 14px;\"><span style=\"font-size: 11pt; font-family: \" times=\"\" new=\"\" roman\";=\"\" color:=\"\" rgb(0,=\"\" 0,=\"\" 0);=\"\" background-color:=\"\" transparent;=\"\" font-variant-numeric:=\"\" normal;=\"\" font-variant-east-asian:=\"\" vertical-align:=\"\" baseline;=\"\" white-space:=\"\" pre-wrap;\"=\"\">Singapura adalah salah satu dari empat ‘Macan Asia’ dan juga menjadi pusat perbankan dan keuangan di Asia Tenggara. Pertumbuhan ekonomi di sektor ini menambah permintaan tenaga kerja profesional sehingga pastinya membuka peluang kerja.</span></p><br style=\"color: rgb(77, 77, 77); font-family: GalanoGrotesque, sans-serif; font-size: 14px;\"><p dir=\"ltr\" style=\"margin-top: 0pt; margin-bottom: 0pt; line-height: 1.38; letter-spacing: 0.5px; color: rgb(77, 77, 77); font-family: GalanoGrotesque, sans-serif; font-size: 14px;\"><span style=\"font-size: 11pt; font-family: \" times=\"\" new=\"\" roman\";=\"\" color:=\"\" rgb(0,=\"\" 0,=\"\" 0);=\"\" background-color:=\"\" transparent;=\"\" font-variant-numeric:=\"\" normal;=\"\" font-variant-east-asian:=\"\" vertical-align:=\"\" baseline;=\"\" white-space:=\"\" pre-wrap;\"=\"\">Contohnya jika Anda adalah pelajar di bidang Teknologi dan Komunikasi, Anda bisa langsung bekerja dalam industri terpenting di Singapura serta menjadi kontributor utama bagi pertumbuhan ekonomi negara yang mempekerjakan 80.000 tenaga kerja.</span></p><br style=\"color: rgb(77, 77, 77); font-family: GalanoGrotesque, sans-serif; font-size: 14px;\"><p dir=\"ltr\" style=\"margin-top: 0pt; margin-bottom: 0pt; line-height: 1.38; letter-spacing: 0.5px; color: rgb(77, 77, 77); font-family: GalanoGrotesque, sans-serif; font-size: 14px;\"><span style=\"font-size: 12pt; font-family: \" times=\"\" new=\"\" roman\";=\"\" color:=\"\" rgb(0,=\"\" 0,=\"\" 0);=\"\" background-color:=\"\" transparent;=\"\" font-weight:=\"\" 700;=\"\" font-variant-numeric:=\"\" normal;=\"\" font-variant-east-asian:=\"\" vertical-align:=\"\" baseline;=\"\" white-space:=\"\" pre-wrap;\"=\"\">Biaya hidup dan kuliah di Singapura</span></p><p dir=\"ltr\" style=\"margin-top: 0pt; margin-bottom: 0pt; line-height: 1.38; letter-spacing: 0.5px; color: rgb(77, 77, 77); font-family: GalanoGrotesque, sans-serif; font-size: 14px;\"><span style=\"font-size: 11pt; font-family: \" times=\"\" new=\"\" roman\";=\"\" color:=\"\" rgb(0,=\"\" 0,=\"\" 0);=\"\" background-color:=\"\" transparent;=\"\" font-variant-numeric:=\"\" normal;=\"\" font-variant-east-asian:=\"\" vertical-align:=\"\" baseline;=\"\" white-space:=\"\" pre-wrap;\"=\"\">Bicara seputar </span><span style=\"font-family: \" times=\"\" new=\"\" roman\";\"=\"\">biaya kuliah di Singapura</span><span style=\"font-size: 11pt; font-family: \" times=\"\" new=\"\" roman\";=\"\" color:=\"\" rgb(0,=\"\" 0,=\"\" 0);=\"\" background-color:=\"\" transparent;=\"\" font-variant-numeric:=\"\" normal;=\"\" font-variant-east-asian:=\"\" vertical-align:=\"\" baseline;=\"\" white-space:=\"\" pre-wrap;\"=\"\">, sebenarnya tergantung pada jenjang pendidikan dan di mana Anda memutuskan untuk studi.&nbsp;</span></p><br style=\"color: rgb(77, 77, 77); font-family: GalanoGrotesque, sans-serif; font-size: 14px;\"><p dir=\"ltr\" style=\"margin-top: 0pt; margin-bottom: 0pt; line-height: 1.38; letter-spacing: 0.5px; color: rgb(77, 77, 77); font-family: GalanoGrotesque, sans-serif; font-size: 14px;\"><span style=\"font-size: 11pt; font-family: \" times=\"\" new=\"\" roman\";=\"\" color:=\"\" rgb(0,=\"\" 0,=\"\" 0);=\"\" background-color:=\"\" transparent;=\"\" font-variant-numeric:=\"\" normal;=\"\" font-variant-east-asian:=\"\" vertical-align:=\"\" baseline;=\"\" white-space:=\"\" pre-wrap;\"=\"\">Namun, sebagai gambaran kasarnya, untuk jenjang diploma, Anda perlu menyiapkan biaya sebesar SG$12.000- SG$25.000 atau setara dengan Rp119 juta-Rp247 juta per tahun. Sementara itu, untuk biaya kuliah jenjang sarjana (S1) umumnya berkisar antara SG$20.000-SG$60.000 atau setara dengan Rp198 juta-Rp593 juta per tahun. Terakhir, biaya kuliah untuk jenjang pascasarjana (S2) umumnya berkisar antara SG$30.000- SG$70.000 atau setara dengan Rp269 juta-Rp692 juta per tahun.</span></p><br style=\"color: rgb(77, 77, 77); font-family: GalanoGrotesque, sans-serif; font-size: 14px;\"><p dir=\"ltr\" style=\"margin-top: 0pt; margin-bottom: 0pt; line-height: 1.38; letter-spacing: 0.5px; color: rgb(77, 77, 77); font-family: GalanoGrotesque, sans-serif; font-size: 14px;\"><span style=\"font-size: 11pt; font-family: \" times=\"\" new=\"\" roman\";=\"\" color:=\"\" rgb(0,=\"\" 0,=\"\" 0);=\"\" background-color:=\"\" transparent;=\"\" font-variant-numeric:=\"\" normal;=\"\" font-variant-east-asian:=\"\" vertical-align:=\"\" baseline;=\"\" white-space:=\"\" pre-wrap;\"=\"\">Biaya hidup di Singapura cukup terjangkau bila dibandingkan dengan negara maju lainnya. Untuk menyewa kamar atau tempat tinggal, Anda perlu menyiapkan Rp5-30 juta per bulan tergantung fitur dan luas kamar Anda. Sementara, untuk transportasi dan biaya makanan sehari-hari membutuhkan sekitar Rp2-6 juta per bulan.&nbsp;</span></p><br style=\"color: rgb(77, 77, 77); font-family: GalanoGrotesque, sans-serif; font-size: 14px;\"><p dir=\"ltr\" style=\"margin-top: 0pt; margin-bottom: 0pt; line-height: 1.38; letter-spacing: 0.5px; color: rgb(77, 77, 77); font-family: GalanoGrotesque, sans-serif; font-size: 14px;\"><span style=\"font-size: 12pt; font-family: \" times=\"\" new=\"\" roman\";=\"\" color:=\"\" rgb(0,=\"\" 0,=\"\" 0);=\"\" background-color:=\"\" transparent;=\"\" font-weight:=\"\" 700;=\"\" font-variant-numeric:=\"\" normal;=\"\" font-variant-east-asian:=\"\" vertical-align:=\"\" baseline;=\"\" white-space:=\"\" pre-wrap;\"=\"\">Beasiswa untuk Kuliah di Singapura</span></p><p dir=\"ltr\" style=\"margin-top: 0pt; margin-bottom: 0pt; line-height: 1.38; letter-spacing: 0.5px; color: rgb(77, 77, 77); font-family: GalanoGrotesque, sans-serif; font-size: 14px;\"><span style=\"font-size: 11pt; font-family: \" times=\"\" new=\"\" roman\";=\"\" color:=\"\" rgb(0,=\"\" 0,=\"\" 0);=\"\" background-color:=\"\" transparent;=\"\" font-variant-numeric:=\"\" normal;=\"\" font-variant-east-asian:=\"\" vertical-align:=\"\" baseline;=\"\" white-space:=\"\" pre-wrap;\"=\"\">Apabila Anda ingin melanjutkan studi di Singapura namun terhalang biaya, Anda dapat mencoba mengajukan beasiswa kuliah di Singapura</span><span style=\"font-size: 11pt; font-family: \" times=\"\" new=\"\" roman\";=\"\" color:=\"\" rgb(0,=\"\" 0,=\"\" 0);=\"\" background-color:=\"\" transparent;=\"\" font-variant-numeric:=\"\" normal;=\"\" font-variant-east-asian:=\"\" vertical-align:=\"\" baseline;=\"\" white-space:=\"\" pre-wrap;\"=\"\">, seperti misalnya ;</span></p><br style=\"color: rgb(77, 77, 77); font-family: GalanoGrotesque, sans-serif; font-size: 14px;\"><p dir=\"ltr\" style=\"margin-top: 0pt; margin-bottom: 0pt; line-height: 1.38; letter-spacing: 0.5px; color: rgb(77, 77, 77); font-family: GalanoGrotesque, sans-serif; font-size: 14px;\"><span style=\"font-size: 11pt; font-family: \" times=\"\" new=\"\" roman\";=\"\" color:=\"\" rgb(0,=\"\" 0,=\"\" 0);=\"\" background-color:=\"\" transparent;=\"\" font-weight:=\"\" 700;=\"\" font-variant-numeric:=\"\" normal;=\"\" font-variant-east-asian:=\"\" vertical-align:=\"\" baseline;=\"\" white-space:=\"\" pre-wrap;\"=\"\">Singapore Government Scholarships for Southeast Asians</span></p><p dir=\"ltr\" style=\"margin-top: 0pt; margin-bottom: 0pt; line-height: 1.38; letter-spacing: 0.5px; color: rgb(77, 77, 77); font-family: GalanoGrotesque, sans-serif; font-size: 14px;\"><span style=\"font-size: 11pt; font-family: \" times=\"\" new=\"\" roman\";=\"\" color:=\"\" rgb(0,=\"\" 0,=\"\" 0);=\"\" background-color:=\"\" transparent;=\"\" font-variant-numeric:=\"\" normal;=\"\" font-variant-east-asian:=\"\" vertical-align:=\"\" baseline;=\"\" white-space:=\"\" pre-wrap;\"=\"\">Beasiswa ini dikhususkan untuk mahasiswa dari negara ASEAN selain Singapura.&nbsp;</span></p><br style=\"color: rgb(77, 77, 77); font-family: GalanoGrotesque, sans-serif; font-size: 14px;\"><p dir=\"ltr\" style=\"margin-top: 0pt; margin-bottom: 0pt; line-height: 1.38; letter-spacing: 0.5px; color: rgb(77, 77, 77); font-family: GalanoGrotesque, sans-serif; font-size: 14px;\"><span style=\"font-size: 11pt; font-family: \" times=\"\" new=\"\" roman\";=\"\" color:=\"\" rgb(0,=\"\" 0,=\"\" 0);=\"\" background-color:=\"\" transparent;=\"\" font-variant-numeric:=\"\" normal;=\"\" font-variant-east-asian:=\"\" vertical-align:=\"\" baseline;=\"\" white-space:=\"\" pre-wrap;\"=\"\">Beasiswa dari pemerintah Singapura ini bersifat penuh. Selain biaya kuliah penuh, pelamar beasiswa juga akan diberikan biaya tunjangan sebesar SG$4.300 atau sekitar Rp45 juta per tahun, tiket pesawat kelas ekonomi ke Singapura, dan biaya akomodasi harga kamar di setiap universitas pada tiap semesternya.&nbsp;</span></p><br style=\"color: rgb(77, 77, 77); font-family: GalanoGrotesque, sans-serif; font-size: 14px;\"><p dir=\"ltr\" style=\"margin-top: 0pt; margin-bottom: 0pt; line-height: 1.38; letter-spacing: 0.5px; color: rgb(77, 77, 77); font-family: GalanoGrotesque, sans-serif; font-size: 14px;\"><span style=\"font-size: 11pt; font-family: \" times=\"\" new=\"\" roman\";=\"\" color:=\"\" rgb(0,=\"\" 0,=\"\" 0);=\"\" background-color:=\"\" transparent;=\"\" font-weight:=\"\" 700;=\"\" font-variant-numeric:=\"\" normal;=\"\" font-variant-east-asian:=\"\" vertical-align:=\"\" baseline;=\"\" white-space:=\"\" pre-wrap;\"=\"\">NUS Graduate Student Scholarship for ASEAN</span></p><p dir=\"ltr\" style=\"margin-top: 0pt; margin-bottom: 0pt; line-height: 1.38; letter-spacing: 0.5px; color: rgb(77, 77, 77); font-family: GalanoGrotesque, sans-serif; font-size: 14px;\"><span style=\"font-size: 11pt; font-family: \" times=\"\" new=\"\" roman\";=\"\" color:=\"\" rgb(0,=\"\" 0,=\"\" 0);=\"\" background-color:=\"\" transparent;=\"\" font-variant-numeric:=\"\" normal;=\"\" font-variant-east-asian:=\"\" vertical-align:=\"\" baseline;=\"\" white-space:=\"\" pre-wrap;\"=\"\">Beasiswa ini ditujukan pada mahasiswa yang ingin melanjutkan studi ke jenjang S2 dalam bidang humaniora dan ilmu sosial di Asia Tenggara.&nbsp;</span></p><br style=\"color: rgb(77, 77, 77); font-family: GalanoGrotesque, sans-serif; font-size: 14px;\"><p dir=\"ltr\" style=\"margin-top: 0pt; margin-bottom: 0pt; line-height: 1.38; letter-spacing: 0.5px; color: rgb(77, 77, 77); font-family: GalanoGrotesque, sans-serif; font-size: 14px;\"><span style=\"font-size: 11pt; font-family: \" times=\"\" new=\"\" roman\";=\"\" color:=\"\" rgb(0,=\"\" 0,=\"\" 0);=\"\" background-color:=\"\" transparent;=\"\" font-variant-numeric:=\"\" normal;=\"\" font-variant-east-asian:=\"\" vertical-align:=\"\" baseline;=\"\" white-space:=\"\" pre-wrap;\"=\"\">Beasiswa yang akan diberikan pada calon mahasiswa adalah tunjangan bulanan sebesar SG$1.000 (sekitar Rp10 juta), tunjangan perumahaan bulanan SG$250(sekitar Rp2,6 juta), lain-lain SG$250.</span></p><br style=\"color: rgb(77, 77, 77); font-family: GalanoGrotesque, sans-serif; font-size: 14px;\"><p dir=\"ltr\" style=\"margin-top: 0pt; margin-bottom: 0pt; line-height: 1.38; letter-spacing: 0.5px; color: rgb(77, 77, 77); font-family: GalanoGrotesque, sans-serif; font-size: 14px;\"><span style=\"font-size: 11pt; font-family: \" times=\"\" new=\"\" roman\";=\"\" color:=\"\" rgb(0,=\"\" 0,=\"\" 0);=\"\" background-color:=\"\" transparent;=\"\" font-weight:=\"\" 700;=\"\" font-variant-numeric:=\"\" normal;=\"\" font-variant-east-asian:=\"\" vertical-align:=\"\" baseline;=\"\" white-space:=\"\" pre-wrap;\"=\"\">Science and Technology Undergraduate Scholarship</span></p><p dir=\"ltr\" style=\"margin-top: 0pt; margin-bottom: 0pt; line-height: 1.38; letter-spacing: 0.5px; color: rgb(77, 77, 77); font-family: GalanoGrotesque, sans-serif; font-size: 14px;\"><span style=\"font-size: 11pt; font-family: \" times=\"\" new=\"\" roman\";=\"\" color:=\"\" rgb(0,=\"\" 0,=\"\" 0);=\"\" background-color:=\"\" transparent;=\"\" font-variant-numeric:=\"\" normal;=\"\" font-variant-east-asian:=\"\" vertical-align:=\"\" baseline;=\"\" white-space:=\"\" pre-wrap;\"=\"\">Beasiswa ini ditujukan kepada Anda yang memiliki IPK minimal 3,5.&nbsp;</span></p><br style=\"color: rgb(77, 77, 77); font-family: GalanoGrotesque, sans-serif; font-size: 14px;\"><p dir=\"ltr\" style=\"margin-top: 0pt; margin-bottom: 0pt; line-height: 1.38; letter-spacing: 0.5px; color: rgb(77, 77, 77); font-family: GalanoGrotesque, sans-serif; font-size: 14px;\"><span style=\"font-size: 11pt; font-family: \" times=\"\" new=\"\" roman\";=\"\" color:=\"\" rgb(0,=\"\" 0,=\"\" 0);=\"\" background-color:=\"\" transparent;=\"\" font-variant-numeric:=\"\" normal;=\"\" font-variant-east-asian:=\"\" vertical-align:=\"\" baseline;=\"\" white-space:=\"\" pre-wrap;\"=\"\">Biaya yang diberikan melingkupi semua biaya kuliah. Mahasiswa penerima beasiswa juga akan mendapat dana untuk tunjangan hidup tahunan sebesar SG$6.000 (sekitar Rp60 juta) dan tunjangan satu kali menetap saat pendaftaran SG$200 (Rp2,1 juta rupiah).&nbsp;</span></p><br style=\"color: rgb(77, 77, 77); font-family: GalanoGrotesque, sans-serif; font-size: 14px;\"><p dir=\"ltr\" style=\"margin-top: 0pt; margin-bottom: 0pt; line-height: 1.38; letter-spacing: 0.5px; color: rgb(77, 77, 77); font-family: GalanoGrotesque, sans-serif; font-size: 14px;\"><span style=\"font-size: 11pt; font-family: \" times=\"\" new=\"\" roman\";=\"\" color:=\"\" rgb(0,=\"\" 0,=\"\" 0);=\"\" background-color:=\"\" transparent;=\"\" font-variant-numeric:=\"\" normal;=\"\" font-variant-east-asian:=\"\" vertical-align:=\"\" baseline;=\"\" white-space:=\"\" pre-wrap;\"=\"\">Penerima beasiswa juga akan difasilitasi dua buah tiket pesawat kelas ekonomi, satu saat akan berangkat ke Singapura untuk studi dan satu ketika ingin kembali ke negara asal setelah menyelesaikan studi.</span></p><br style=\"color: rgb(77, 77, 77); font-family: GalanoGrotesque, sans-serif; font-size: 14px;\"><p dir=\"ltr\" style=\"margin-top: 0pt; margin-bottom: 0pt; line-height: 1.38; letter-spacing: 0.5px; color: rgb(77, 77, 77); font-family: GalanoGrotesque, sans-serif; font-size: 14px;\"><span style=\"font-size: 11pt; font-family: \" times=\"\" new=\"\" roman\";=\"\" color:=\"\" rgb(0,=\"\" 0,=\"\" 0);=\"\" background-color:=\"\" transparent;=\"\" font-weight:=\"\" 700;=\"\" font-variant-numeric:=\"\" normal;=\"\" font-variant-east-asian:=\"\" vertical-align:=\"\" baseline;=\"\" white-space:=\"\" pre-wrap;\"=\"\">The Dr Goh Keng Swee Scholarship</span></p><p dir=\"ltr\" style=\"margin-top: 0pt; margin-bottom: 0pt; line-height: 1.38; letter-spacing: 0.5px; color: rgb(77, 77, 77); font-family: GalanoGrotesque, sans-serif; font-size: 14px;\"><span style=\"font-size: 11pt; font-family: \" times=\"\" new=\"\" roman\";=\"\" color:=\"\" rgb(0,=\"\" 0,=\"\" 0);=\"\" background-color:=\"\" transparent;=\"\" font-variant-numeric:=\"\" normal;=\"\" font-variant-east-asian:=\"\" vertical-align:=\"\" baseline;=\"\" white-space:=\"\" pre-wrap;\"=\"\">Beasiswa dari pihak swasta ini dikelola oleh asosiasi bank di Singapura.&nbsp;</span></p><br style=\"color: rgb(77, 77, 77); font-family: GalanoGrotesque, sans-serif; font-size: 14px;\"><p dir=\"ltr\" style=\"margin-top: 0pt; margin-bottom: 0pt; line-height: 1.38; letter-spacing: 0.5px; color: rgb(77, 77, 77); font-family: GalanoGrotesque, sans-serif; font-size: 14px;\"><span style=\"font-size: 11pt; font-family: \" times=\"\" new=\"\" roman\";=\"\" color:=\"\" rgb(0,=\"\" 0,=\"\" 0);=\"\" background-color:=\"\" transparent;=\"\" font-variant-numeric:=\"\" normal;=\"\" font-variant-east-asian:=\"\" vertical-align:=\"\" baseline;=\"\" white-space:=\"\" pre-wrap;\"=\"\">Setiap tahun kuota beasiswa GKS cukup sedikit, hanya 3-4 orang saja. Selama 4 tahun, penerima beasiswa ini akan mendapatkan tunjangan tahunan $SG6500 atau sekitar Rp69 juta dan biaya hidup selama pendaftaran sebesar SG$200 (Rp2,1 juta rupiah)</span></p><br style=\"color: rgb(77, 77, 77); font-family: GalanoGrotesque, sans-serif; font-size: 14px;\"><p dir=\"ltr\" style=\"margin-top: 0pt; margin-bottom: 0pt; line-height: 1.38; letter-spacing: 0.5px; color: rgb(77, 77, 77); font-family: GalanoGrotesque, sans-serif; font-size: 14px;\"><span style=\"font-size: 11pt; font-family: \" times=\"\" new=\"\" roman\";=\"\" color:=\"\" rgb(0,=\"\" 0,=\"\" 0);=\"\" background-color:=\"\" transparent;=\"\" font-weight:=\"\" 700;=\"\" font-variant-numeric:=\"\" normal;=\"\" font-variant-east-asian:=\"\" vertical-align:=\"\" baseline;=\"\" white-space:=\"\" pre-wrap;\"=\"\">Temasek Education Foundation (TEF) Sunburst Scholarship</span></p><p dir=\"ltr\" style=\"margin-top: 0pt; margin-bottom: 0pt; line-height: 1.38; letter-spacing: 0.5px; color: rgb(77, 77, 77); font-family: GalanoGrotesque, sans-serif; font-size: 14px;\"><span style=\"font-size: 11pt; font-family: \" times=\"\" new=\"\" roman\";=\"\" color:=\"\" rgb(0,=\"\" 0,=\"\" 0);=\"\" background-color:=\"\" transparent;=\"\" font-variant-numeric:=\"\" normal;=\"\" font-variant-east-asian:=\"\" vertical-align:=\"\" baseline;=\"\" white-space:=\"\" pre-wrap;\"=\"\">Beasiswa dari Yayasan Temasek ini menawarkan beasiswa penuh selama 3-4 tahun untuk jenjang diploma dan S1.&nbsp;</span></p><br style=\"color: rgb(77, 77, 77); font-family: GalanoGrotesque, sans-serif; font-size: 14px;\"><p dir=\"ltr\" style=\"margin-top: 0pt; margin-bottom: 0pt; line-height: 1.38; letter-spacing: 0.5px; color: rgb(77, 77, 77); font-family: GalanoGrotesque, sans-serif; font-size: 14px;\"><span style=\"font-size: 11pt; font-family: \" times=\"\" new=\"\" roman\";=\"\" color:=\"\" rgb(0,=\"\" 0,=\"\" 0);=\"\" background-color:=\"\" transparent;=\"\" font-variant-numeric:=\"\" normal;=\"\" font-variant-east-asian:=\"\" vertical-align:=\"\" baseline;=\"\" white-space:=\"\" pre-wrap;\"=\"\">Pemegang beasiswa ini akan diberikan biaya kuliah secara penuh, tunjangan hidup sebesar SG$500 atau sekitar Rp5,3 juta per bulan, tunjangan tempat tinggal sebesar SG$350 (Rp3,7 juta) per bulan, dan tiket pesawat kelas ekonomi tujuan Singapura</span></p>\"&gt;\"&gt;\"&gt;', 'pendidikan', 'Anonymouse', '2021-09-15', 'tempberita.jpeg'),
(33, 'Resmi, Pengguna Instagram Bisa \"Posting\" Foto serta Video dari PC dan Mac', '<p><span style=\"color: rgb(42, 42, 42); font-family: Roboto, sans-serif; font-size: 14px;\">Instagram akhirnya memiliki fitur yang memungkinkan pengguna&nbsp; mengunggah konten foto dan video (durasi maksimal 60 detik) melalui web browser di komputer Mac dan PC. Sebelumnya, melalui web browser, pengguna Instagram hanya bisa melihat konten dan mengirim DM. Jika ingin mengunggah foto atau video di Instagram, mereka harus menggunakan aplikasi smartphone. Adapun jenis konten yang bisa diunggah pengguna adalah konten Instagram Feed, bukan Instagram Stories.</span><br style=\"color: rgb(42, 42, 42); font-family: Roboto, sans-serif; font-size: 14px;\"><span style=\"color: rgb(42, 42, 42); font-family: Roboto, sans-serif; font-size: 14px;\">Menurut Instagram, posting konten melalui Instagram web merupakan fitur yang paling dinanti komunitas Instagram, terutama para kreator konten. Sebelumnya, fitur upload konten via dekstop telah diuji coba pada pertengahan tahun ini, namun terbatas hanya untuk segelintir pengguna. Nah, mulai besok, 21 Oktober 2021, Instagram bakal resmi menyalurkan fitur posting lewat PC dan Mac secara global sehingga bisa dimanfaatkan oleh seluruh pengguna, sebagaimana dihimpun KompasTekno dari 9to5Mac, Rabu (20/10/2021).</span><br style=\"color: rgb(42, 42, 42); font-family: Roboto, sans-serif; font-size: 14px;\"><br style=\"color: rgb(42, 42, 42); font-family: Roboto, sans-serif; font-size: 14px;\"></p>', 'Teknologi', 'anonymous', '2021-10-20', 'tempberita1.jpeg'),
(34, 'Google Luncurkan Smartphone Pixel 6 dan Pixel 6 Pro', '<span style=\"color: rgb(42, 42, 42); font-family: Roboto, sans-serif; font-size: 14px;\">Setelah mengungkap desainnya pada Agustus lalu, Google pekan ini meluncurkan duo smartphone flagship terbarunya, Pixel 6 dan Pixel 6 Pro, dalam sebuah acara virtual yang digelar pada Rabu (20/10/2021) dini hari WIB. Salah satu yang paling menarik dari suksesor Pixel 5 ini adalah komponen internalnya. Bukannya chip Snapdragon dari Qualcomm seperti sebelumnya, kedua ponsel Pixel terbaru itu diotaki oleh SoC besutan Google sendiri, Google Tensor. Chip tersebut memiliki delapan inti prosesor (CPU) berkecepatan hingga 2,8 GHz, dipadu dengan pengolah grafis (GPU) ARM Mali-G78.</span><br style=\"color: rgb(42, 42, 42); font-family: Roboto, sans-serif; font-size: 14px;\"><br style=\"color: rgb(42, 42, 42); font-family: Roboto, sans-serif; font-size: 14px;\"><span style=\"color: rgb(42, 42, 42); font-family: Roboto, sans-serif; font-size: 14px;\">Dengan Tensor ini, Google mengeklaim performa CPU Pixel 6 dan Pixel 6 Pro 80 persen lebih tinggi dibanding pendahulunya, serta 370 persen lebih kencang pada aspek GPU. SVP Devices dan Services Google, Rick Osterloh, mengatakan bahwa Tensor adalah inovasi piranti keras terbesar dalam sejarah perusahaannya. \"Ini juga merupakan wujud hasil kerja keras kami selama bertahun-tahun dalam AI, serta pengalaman kami dalam sektor semikonduktor,\" ujar Osterloh dalam acara peluncuran. Dapatkan informasi, inspirasi dan insight di email kamu. Daftarkan email Desain Pixel 6 dan Pixel 6 Pro juga kini tampak lebih segar. Pada bagian belakangnya, kedua ponsel tersebut hadir dengan modul kamera persegi panjang, alias \"Camera Bar\" berwarna hitam yang membentang secara horizontal dari ujung ke ujung.</span><br style=\"color: rgb(42, 42, 42); font-family: Roboto, sans-serif; font-size: 14px;\"><br style=\"color: rgb(42, 42, 42); font-family: Roboto, sans-serif; font-size: 14px;\"><span style=\"color: rgb(42, 42, 42); font-family: Roboto, sans-serif; font-size: 14px;\">Pixel 6 memiliki layar AMOLED 6,4 inci dengan resolusi Full HD Plus dan refresh rate 90 Hz. Di bagian tengah atasnya, terdapat kamera selfie 8 MP (f/2.0) yang dimuat dalam modul punch hole. Di bagian belakangnya, terdapat pula dua buah kamera yang terdiri dari kamera utama 50 MP (f/1.9, OIS) dan kamera ultrawide 12 MP (f/2.2)</span><br style=\"color: rgb(42, 42, 42); font-family: Roboto, sans-serif; font-size: 14px;\">', 'Teknologi', 'anonymous', '2021-10-20', 'google-pixel-6-1_169.jpeg');

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
(4, 'CCTV', 'Menyediakan CCTV berbagai jenis dan melayani instalasi maupun servis CCTV', '<i class=\"icofont-camera\"></i>'),
(5, 'Cetakan', 'Melayani pembuatan kwitansi, banner, nota dan sejenisnya untuk berbagai keperluan', '<i class=\"icofont-print\"></i>'),
(6, 'Mebelair', 'Pengadaan kebutuhan sarana dan prasarana kantor dan sekolah seperti kursi & meja kantor, rak dokumen dan lemari', '<i class=\"icofont-chair\"></i>'),
(7, 'Service', 'Jasa service komputer, laptop, cpu, printer, teks running dan sebagainya. Instalasi software dan install ulang sistem operasi komputer', '<i class=\"icofont-repair\"></i>'),
(9, 'Web & Apps Development', 'Melayani pembuatan sistem informasi baik dalam bentuk website, lms, aplikasi, web apps, dan sejenisnya', '<i class=\"icofont-code\"></i>');

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
(4, 'web', 'simblok_blonjo.png', 'Simbok Mblonjo', 'Website ini merupakan salah satu kerjasama CV. Kebumen Prima Sarana dengan Dinas Pemerintahan Kabupaten Kebumen'),
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
(7, '2021-10-20', 6);

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

--
-- Dumping data untuk tabel `testimoni`
--

INSERT INTO `testimoni` (`id_testimoni`, `nama`, `pekerjaan`, `isi`, `foto`) VALUES
(2, 'Fulan', 'Web Developmment', 'Kerjasamanya bagus dan terstruktur ', '8108-yuda-asmara-c-3x4.jpg');

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
-- Indeks untuk tabel `daftarlayanan`
--
ALTER TABLE `daftarlayanan`
  ADD PRIMARY KEY (`id_layanan`);

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
  MODIFY `id_berita` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT untuk tabel `daftarlayanan`
--
ALTER TABLE `daftarlayanan`
  MODIFY `id_layanan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `kontak`
--
ALTER TABLE `kontak`
  MODIFY `id_kontak` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `misi`
--
ALTER TABLE `misi`
  MODIFY `id_misi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `portofolio`
--
ALTER TABLE `portofolio`
  MODIFY `id_portofolio` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `slideshow`
--
ALTER TABLE `slideshow`
  MODIFY `id_slideshow` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `tb_statistic`
--
ALTER TABLE `tb_statistic`
  MODIFY `statistic_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `testimoni`
--
ALTER TABLE `testimoni`
  MODIFY `id_testimoni` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `visi`
--
ALTER TABLE `visi`
  MODIFY `id_visi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
