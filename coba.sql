-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 18, 2023 at 04:52 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `coba`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_about`
--

CREATE TABLE `tbl_about` (
  `id` int(25) NOT NULL,
  `image` varchar(255) NOT NULL,
  `artikel` text NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_about`
--

INSERT INTO `tbl_about` (`id`, `image`, `artikel`, `date`) VALUES
(1, '', '       Selamat datang di situs berita \"WEBSITE BERITA JOMBANG,\" media online yang berbasis di Jombang, Jawa Timur. Kami didedikasikan untuk menyajikan informasi terkini seputar kejadian lokal, perkembangan terbaru di Jawa Timur, dan liputan mendalam mengenai isu-isu nasional dan internasional yang memengaruhi masyarakat kami. Dengan komitmen kami untuk keakuratan dan keberimbangan dalam pelaporan, \"Jombang Today\" hadir untuk menjadi sahabat setia Anda dalam memahami dunia. Terima kasih telah memilih kami sebagai sumber informasi utama Anda di Jombang dan sekitarnya.\r\n\r\nVisi kami adalah menjadi pilar informasi yang mengedepankan nilai kebenaran dan keterbukaan. Melalui liputan yang mendalam, kami bertujuan untuk memberikan wawasan yang lebih baik tentang berbagai peristiwa yang membentuk kehidupan masyarakat Jombang. Kami percaya bahwa akses yang mudah dan cepat terhadap berita lokal adalah kunci untuk memperkuat ikatan komunitas. Oleh karena itu, kami mengundang Anda untuk bergabung dalam perjalanan kami untuk membangun komunitas yang lebih informasi dan terhubung di Jombang.\r\n\r\nTerima kasih atas dukungan Anda yang telah membantu kami tumbuh dan berkembang. Bersama-sama, mari kita terus memperkuat jaringan informasi yang melayani kebutuhan masyarakat Jombang dengan baik.', '2023-11-01');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_gallery`
--

CREATE TABLE `tbl_gallery` (
  `id_img` int(11) NOT NULL,
  `nama` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_gallery`
--

INSERT INTO `tbl_gallery` (`id_img`, `nama`) VALUES
(8, 'wen-desa-kita-miagan-2JPG-3084903877.jpg'),
(9, 'wen-desa-kita-26JPG-2248167215.jpg'),
(10, 'ang-jalan-cor-mojoagung-4JPG-105709372.jpg'),
(11, 'ang-boks-budi-daya-pemerahan-susu-etawa-2JPG-3690130124 (1).jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_kebijakan`
--

CREATE TABLE `tbl_kebijakan` (
  `id` int(25) NOT NULL,
  `pdf` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_kebijakan`
--

INSERT INTO `tbl_kebijakan` (`id`, `pdf`) VALUES
(1, 'kebijakan_undip.pdf');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_lvuser`
--

CREATE TABLE `tbl_lvuser` (
  `id_lvuser` int(10) NOT NULL,
  `leveluser` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_lvuser`
--

INSERT INTO `tbl_lvuser` (`id_lvuser`, `leveluser`) VALUES
(1, 'Admin'),
(2, 'User');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_organisasi`
--

CREATE TABLE `tbl_organisasi` (
  `id` int(25) NOT NULL,
  `pdf` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_organisasi`
--

INSERT INTO `tbl_organisasi` (`id`, `pdf`) VALUES
(1, 'Peraturan_Daerah.pdf');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_peraturan`
--

CREATE TABLE `tbl_peraturan` (
  `id` int(25) NOT NULL,
  `pdf` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_peraturan`
--

INSERT INTO `tbl_peraturan` (`id`, `pdf`) VALUES
(1, 'Peraturan_Daerah.pdf');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_posts`
--

CREATE TABLE `tbl_posts` (
  `id_post` int(25) NOT NULL,
  `img` varchar(255) NOT NULL,
  `judul` varchar(255) DEFAULT NULL,
  `artikel` text DEFAULT NULL,
  `date` date NOT NULL,
  `kategori` varchar(255) NOT NULL,
  `author` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_posts`
--

INSERT INTO `tbl_posts` (`id_post`, `img`, `judul`, `artikel`, `date`, `kategori`, `author`) VALUES
(27, 'ang-jalan-cor-mojoagung-4JPG-105709372.jpg', 'PUPR Bakal Lanjutkan Proyek Jalan Cor di Mojoagung, Begini Harapan Sekdakab Jombang', ' Proyek jalan cor ruas Mojoagung – Mojoduwur yang sempat mandek akibat dilindas truk rencananya bakal dilanjutkan Senin (6/11) besok.\r\n\r\nSekdakab Agus Purnomo meminta dinas terkait memaksimalkan koordinasi antar OPD dan sosialisasi ke masyarakat agar kejadian rusaknya jalan cor di Mojoagung itu tidak terulang.\r\n\r\n”Ya terkait proyek jalan cor Mojoagung itu kemarin sudah selesai. Dinas PUPR dan dinas terkait termasuk Dishub dan kepolisian sudah melakukan rapat koordinasi terkait ,’’ ujar dia kepada Jawa Pos Radar Jombang.\r\n\r\nIa juga meminta Dinas PUPR agar memberi rambu - rambu himbauan di area proyek agar kejadian serupa seperti truk menerobos jalan cor yang masih basah tidak kembali terulang.\r\n\r\n“Tentunya kejadian kemarin sudah sepatutnya menjadi evaluasi bersama. Artinya, untuk mengantisipasi kejadian serupa tidak terulang maka harus dievaluasi,’’ tambahnya.\r\n\r\nTerkait pembangunan yang akan dilanjutkan, pihaknya juga meminta sosialiasi ke masyarakat dimaksimalkan.\r\nMisalnya melakukan sosialiasi ke pengusaha yang memiliki kendaraan besar untuk tidak melewati ruas yang dicor.\r\n\r\n”Sosialisasi juga harus diintensifkan agar masyarakat tahu terkait adanya pekerjaan jalan cor di Mojoagung,’’ pungkasnya.\r\n\r\n', '2023-12-11', 'berita', 'Abiyan Nur456'),
(28, 'wen-desa-kita-26JPG-2248167215.jpg', 'Dukung Pertanian Makin Maju, Pemdes Tejo, Mojoagung, Jombang, Bangun JUT dan TPT', 'JOMBANG – Sebagian besar wilayah Desa Tejo, Kecamatan Mojoagung, Jombang merupakan lahan pertanian.\r\n\r\nUntuk mempermudah akses pertanian, Pemerintah Desa Tejo melakukan pembangunan jalan usaha tani (JUT) dan tembok penahan tanah (TPT).\r\n\r\n”Tahun ini kami membangun dua JUT di Desa Tejo,” kata Ponedi Kepala Desa Tejo, kemarin.\r\n\r\nBiasanya, petani di tempatnya dalam satu tahun, dua kali menanam padi dan satu kali tanam jagung.\r\n\r\nMenyesuaikan dengan cuaca terkini. Saat ini, sebagian besar petani menanam jagung karena masih musim kemarau.\r\n\r\n”Sekarang mulai banyak yang dipanen, dan sepertinya mulai peralihan dari kemarau ke hujan, petani siap-siap untuk menanam padi,” jelas Ponedi.\r\n\r\nDia menyampaikan, tahun ini membangun 2 JUT. Satu berada di Dusun Klampisan dengan lebar 3 meter, panjang 181 meter yang kini sudah selesai dan dimanfaatkan petani.\r\n\r\nSatunya lagi berada di Dusun Sukorame. Proses pembangunan JUT dan TPT sedang berlangsung.\r\n\r\nPembangunan JUT, dianggarkan Rp 75 juta melalui dana Jombang Berkadang dengan panjang 137 meter, lebar 2 meter dan tebal 0,15 meter.\r\n\r\nSedangkan TPT dianggarkan melalui Dana Desa Rp 75 juta di Dusun Sukorame.\r\nTPT itu akan dibangun  sepanjang 174 meter dengan lebar 0,60 meter.\r\n\r\nPonedi optimistis, pembangunan JUT dapat meningkatkan perekonomian warga.\r\n\r\nSebab selama ini warga mengandalkan sepeda motor untuk mengangkut hasil panen sampai ke jalan.\r\nBiaya satu kali angkut atau satu karung Rp 5.000 – Rp 10.000. Jika ada JUT, maka hasil panen akan bernilai lebih tinggi.\r\n\r\n”Sebelum ada JUT sawah warga sulit dijangkau. Biasanya kalau dijual ke penebas harganya murah, karena biaya operasional juga tinggi. Nah setelah ada JUT, mudah-mudahan bisa meningkatkan hasil panen,” jelas dia. \r\n\r\nTahun depan, pihaknya akan melanjutkan pembangunan JUT di Dusun Sukorame setelah petani merelakan 2 meter lebar sawah untuk jalan.\r\n\r\n', '2023-12-17', 'Berita', 'Jihan45'),
(29, 'wen-desa-kita-miagan-2JPG-3084903877.jpg', 'Pemdes Miagan, Mojoagung, Jombang, Bangun Alun-alun Cemara untuk Sentra Ekonomi Baru', 'JOMBANG - Pemdes Miagan mengubah lapangan desa menjadi Alun-alun Cemara untuk menggerakkan roda ekonomi warga desa.\r\n\r\nPemdes Miagan, juga menyerahkan pengelolaan Alun-alun Cemara itu kepada BUMDes Kreto Makmur.\r\n\r\nSetiap malam, Alun-alun Cemar itu jadi sentra ekonomi karena dihuni puluhan lapak pedagang.\r\n\r\n”Yang jualan harus masyarakat Miagan, karena tujuan dari Alun alun Cemara ini untuk meningkatkan ekonomi masyarakat,” kata Kepala Desa Miagan, Antok Budi Subagyo.\r\n\r\nDinamakan Alun-alun Cemara terinspirasi dari riwayat Lapangan Desa Miagan.\r\n\r\nDulu, pernah ada dua pohon cemara besar di sisi selatan lapangan.\r\n\r\nSekarang cemara itu sudah mati. ”Kami bermaksud untuk uri-uri sejarah lapangan desa pada masa lalu,” jelasnya.\r\n\r\nAda puluhan lapak yang buka setiap hari di Alun alun Cemara. Paling ramai pada malam hari, tapi ada juga yang buka sejak pagi.\r\n\r\nMayoritas masyarakat menjual produk makanan. Sebagian juga wahana hiburan untuk anak-anak.\r\n\r\nEvent secara rutin dilakukan hampir setiap pekan, seperti Sabtu (18/11) ada salawat bersama yang digelar setiap Sabtu Pon.\r\n\r\nSelain itu, ada event pameran, salawatan, konser musik, salawat dan lain sebagainya.\r\n\r\nAda jogging track berupa paving yang mengelilingi lapangan. Lampu hias juga mempercantik ketika malam.\r\n\r\nTenda-tenda UKM dipercantik. Termasuk kursi taman agar semakin asyik untuk tempat nongkrong.\r\n\r\n”Melalui berbagai sumber anggaran, Desa Miagan tetap berupaya mengembangkan pembangunan Alun alun Cemara,” tambahnya.\r\n\r\nSalah satu rencana ke depan, akan dibuat gedung BUMDes, panggung hiburan masyarakat, kereta wisata keliling, penambahan lampu taman, dan musik gamelan.\r\n\r\nLebih dari itu, Alun alun Cemara juga multifungsi. Pada kesempatan tertentu alun alun juga digunakan untuk olahraga sepak bola, bola voly dan olahraga yang lain. Sehingga semua kegiatan bisa terfasilitasi.\r\n\r\n”Kami ingin mengadopsi konsep jalan Malioboro Yogyakarta, dan pembangunan tribun lapangan Desa Miagan, dengan konsep pendopo yang bisa digunakan sebagai tempat pertemuan,” pungkas Antok. (wen/bin/riz)', '2023-12-17', 'info-umum', 'Jihan45'),
(30, 'ang-boks-budi-daya-pemerahan-susu-etawa-2JPG-3690130124 (1).jpg', 'Seorang Pria di Jombang Kembangkan Peternakan Kambing PE, Begini Cerita Suksesnya', 'JOMBANG - Peternakan kambing susu perahan alias kambing peranakan etawa (PE) tak hanya sukses dilakukan peternak di Kecamatan Wonosalam.\r\n\r\nAsalkan ulet dan telaten, maka budidaya kambing PE bisa menghasilkan susu maksimal, di manapun tempatnya.  \r\n\r\nSeperti yang dilakukan M Gufron, 40, warga Dusun/Desa Tambar, Kecamatan Jogoroto yang juga berhasil mengembangkan peternakan kambing PE di rumahnya.\r\n\r\nAmpas tahu yang telah dicampur kulit kacang dan rendeng kangkung itu kemudian diberikan pada belasan ekor kambing PE.  \r\n\r\n”Saya ternak kambing PE ini dari nol sejak 2021 lalu. Ketika besar saya jual, lalu beli indukan dan Alhamdulillah sekarang sudah ada 13 ekor beserta anak-anaknya,’’ ujar dia kepada Jawa Pos Radar Jombang, kemarin.\r\n\r\nAwalnya, Gufron kesulitan mencarikan kebutuhan pakan hijau untuk kambingnya.\r\n\r\nSetiap hari, ia harus mencari pakan tumbuhan untuk asupan nutrisi kambing PE itu berkeliling.\r\n\r\nNamun lambat laun, Gufron berfikir untuk menanam sendiri tanaman yang bisa dijadikan pakan hijau.\r\n\r\n”Kemudian saya tanam tanaman indigovera yang bibitnya saya beli online. Selain itu, saya juga menanam pohon randu dan rambanan di sekitar pekarangan rumah,’’ tambahnya.\r\n\r\nSaat memberikan pakan, Gufron juga memanfaatkan campuran nutrisi tambahan misalnya ampas tahu, kangkung kering, serta limbah kulit kacang yang didapat dari industri sekitar.\r\n\r\n”Kebetulan di dekat sini ampas tahu dan kulit kacang banyak. Jadi itu saya manfaatkan,’’ jelas dia.\r\n\r\nMenurutnya, kebutuhan nutrisi pakan tambahan untuk kesehatan kambing cukup penting.\r\n\r\nGufron setiap hari mencampurkan pakan hijau dan pakan tambahan dengan perbandingan 80:20. ”Sebanyak 80 persen pakan hijau dan sisanya pakan tambahan,’’ paparnya.\r\n\r\nDari 13 ekor kambing di kandangnya, ada tiga sampai empat kambing yang produktif untuk diperah susunya.\r\n\r\nDari hasil pemerahan itu, Gufron bisa mendapatkan sekitar 3-4 liter susu setiap hari.\r\n\r\n”Per kambing kalau kondisinya bagus bisa menghasilkan 1,5 liter susu kambing,’’ jelas dia. \r\n\r\nGufron biasa memerah susu kambing dua kali sehari. Yakni pagi dan sore hari.\r\n\r\nDalam proses pemerahan susu, Gufron selalu memperhatikan kebersihan kandang, tempat untuk wadah susu dan penyimpanan tersendiri.\r\n\r\n”Supaya susunya bisa awet dan tidak mudah basi,’’ terangnya.\r\n\r\nGufron menjual susu kambing etawa dengan kemasan 0,5 liter seharga Rp 15.000. Susu kambing miliknya diklaim bisa bertahan hingga 1 bulan.\r\n\r\n”Kalau disimpan dalam frezzer bisa tahan sampai satu bulan. tapi kalau dimasukkan kulkas maksimal satu minggu,’’ jelas dia.\r\n\r\nKarena keterbatasan produksi susu, saat ini Gufron baru melayani pesanan dari teman, kerabat, tetangga dan warga lokal yang pesan secara online. ”Paling jauh Mojokerto,’’ tambahnya.\r\n\r\nDari testimoni para pelanggan, susu kambing etawa berkhasiat untuk kesehatan. Mulai mengobati asma, darah tinggi, asam urat, serta pengapuran.\r\n\r\n”Ya bebeberapa pelanggan yang sudah rutin mengonsumsi susu kambing etawa menyampaikan demikian. ada yang asmanya sembuh, asam uratnya tidak lagi kumat dan lain-lain,’’ pungkasnya. (ang/bin/riz)\r\n\r\n', '2023-12-17', 'info-umum', 'Jihan45');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_users`
--

CREATE TABLE `tbl_users` (
  `id_user` int(255) NOT NULL,
  `username` varchar(25) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `nama_pengguna` varchar(255) NOT NULL,
  `img` varchar(255) NOT NULL,
  `id_lvuser` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_users`
--

INSERT INTO `tbl_users` (`id_user`, `username`, `password`, `nama_pengguna`, `img`, `id_lvuser`) VALUES
(1, 'Abiyan Nur456', '665d1dedcbf06dcb65bf4452edff5471', 'Abiyan Nur456', 'download.png', 1),
(2, 'user', 'deea55b84057c4386fc88ad9474d104e', 'Nopek', 'avatar2.png', 2),
(32, 'isa', '165a1761634db1e9bd304ea6f3ffcf2b', 'Isa Nur', 'avatar4.png', 2),
(34, 'Abiyan', 'a8b2a8f8fd848ef5670d7a635f969a88', 'Abiyan Nur', 'logo.png', 1),
(36, 'Abiyan New lagi1', 'abiyan456', 'Abiyan Buat Baru1', 'download.png', 1),
(37, 'Jihan', '60184f71ecdbc35b48e33d005769fa5a', 'Jihan45', 'download.png', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_about`
--
ALTER TABLE `tbl_about`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_gallery`
--
ALTER TABLE `tbl_gallery`
  ADD PRIMARY KEY (`id_img`);

--
-- Indexes for table `tbl_kebijakan`
--
ALTER TABLE `tbl_kebijakan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_lvuser`
--
ALTER TABLE `tbl_lvuser`
  ADD PRIMARY KEY (`id_lvuser`);

--
-- Indexes for table `tbl_organisasi`
--
ALTER TABLE `tbl_organisasi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_peraturan`
--
ALTER TABLE `tbl_peraturan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_posts`
--
ALTER TABLE `tbl_posts`
  ADD PRIMARY KEY (`id_post`);

--
-- Indexes for table `tbl_users`
--
ALTER TABLE `tbl_users`
  ADD PRIMARY KEY (`id_user`),
  ADD KEY `tbl_users_ibfk_1` (`id_lvuser`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_about`
--
ALTER TABLE `tbl_about`
  MODIFY `id` int(25) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_gallery`
--
ALTER TABLE `tbl_gallery`
  MODIFY `id_img` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tbl_kebijakan`
--
ALTER TABLE `tbl_kebijakan`
  MODIFY `id` int(25) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_lvuser`
--
ALTER TABLE `tbl_lvuser`
  MODIFY `id_lvuser` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_organisasi`
--
ALTER TABLE `tbl_organisasi`
  MODIFY `id` int(25) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_peraturan`
--
ALTER TABLE `tbl_peraturan`
  MODIFY `id` int(25) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_posts`
--
ALTER TABLE `tbl_posts`
  MODIFY `id_post` int(25) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `tbl_users`
--
ALTER TABLE `tbl_users`
  MODIFY `id_user` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tbl_users`
--
ALTER TABLE `tbl_users`
  ADD CONSTRAINT `tbl_users_ibfk_1` FOREIGN KEY (`id_lvuser`) REFERENCES `tbl_lvuser` (`id_lvuser`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
