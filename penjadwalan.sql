-- phpMyAdmin SQL Dump
-- version 3.3.10deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jul 17, 2012 at 01:43 PM
-- Server version: 5.1.63
-- PHP Version: 5.3.5-1ubuntu7.10

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";

--
-- Database: `penjadwalan`
--
CREATE DATABASE `penjadwalan` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `penjadwalan`;

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
  `id_admin` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(40) NOT NULL,
  `password` tinyblob NOT NULL,
  PRIMARY KEY (`id_admin`),
  KEY `username` (`username`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id_admin`, `username`, `password`) VALUES
(1, 'administrator', 0x5ceb122876dea7241b136fbded86b57a);

-- --------------------------------------------------------

--
-- Table structure for table `dosen`
--

CREATE TABLE IF NOT EXISTS `dosen` (
  `nod` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_prodi` int(11) NOT NULL,
  `id_fak` int(11) NOT NULL,
  `id_univ` int(11) NOT NULL,
  `nip` varchar(20) NOT NULL,
  `nama` varchar(60) NOT NULL,
  `username` varchar(40) NOT NULL,
  `password` tinyblob NOT NULL,
  `email` varchar(120) NOT NULL,
  `telp` varchar(20) NOT NULL,
  PRIMARY KEY (`nod`),
  UNIQUE KEY `nip` (`nip`),
  UNIQUE KEY `username` (`username`),
  KEY `id_prodi` (`id_prodi`),
  KEY `id_fak` (`id_fak`),
  KEY `id_univ` (`id_univ`),
  FULLTEXT KEY `nama` (`nama`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=41 ;

--
-- Dumping data for table `dosen`
--

INSERT INTO `dosen` (`nod`, `id_prodi`, `id_fak`, `id_univ`, `nip`, `nama`, `username`, `password`, `email`, `telp`) VALUES
(1, 1, 1, 1, '20', 'Fathurrahman Rauf, Prof. Dr.', 'fathurrahmanrauf', 0x16710dbaf2f8e95e964db09f1e7f373abd9fa0cbb894cf7cb8db1f98b6d3a62d, 'fathurrahmanrauf@yahoo.com', '085714049296'),
(2, 1, 1, 1, '26', 'AM. Hidayatullah, M.A., Dr.', 'hidayatullah', 0x2ed40abd752ff83dda08b0757fefdc60, 'hidayatullah@yahoo.com', '085714049296'),
(3, 1, 1, 1, '31', 'Achmad Bachmid, Lc.,M.A., P', 'achmadbachmid', 0x64b0919cc2614c66f3dc733da46b6dd9, 'achmadbachmid@yahoo.com', '085714049296'),
(4, 1, 1, 1, '107', 'Suhilman, M.A., Drs.', 'suhilman', 0x257c09321bc633d256a1919c904c88ad, 'suhilman@yahoo.com', '085714049295'),
(5, 1, 1, 1, '267', 'Amir Fadhilah, M.Si.', 'amirfadhilah', 0x77d994710e4f4d2646ac9230e930b6d8, 'amirfadhilah@yahoo.com', '085714049295'),
(6, 1, 1, 1, '316', 'Nailil Huda, Lc.,M.Ed.', 'naililhuda', 0xf2417d152897432722e197aa05953f65, 'naililhuda@yahoo.com', '085714049295'),
(7, 1, 1, 1, '57', 'Adang Asdari, M.A., Drs.', 'adangasdari', 0x01aa1a078645835e6d191213c4887182, 'adangasdari@yahoo.com', '085714049295'),
(8, 1, 1, 1, '281', 'M. Husni Tamrin, M.A.', 'husnitamrin', 0x3e5e22b0c1328df976464d2a1d4b68fa, 'husnitamrin@yahoo.com', '085714049295'),
(9, 1, 1, 1, '318', 'Kania Mayastika, S.Pd.', 'kaniamayastika', 0xbbdb8b01110a858568e824c0634ed372, 'kaniamayastika@yahoo.com', '085714049295'),
(10, 1, 1, 1, '176', 'Nuruddin An-Nadawi, M.A.', 'nuruddinannadawi', 0xc73fd1adeda13e3155d9b0f508861276bd9fa0cbb894cf7cb8db1f98b6d3a62d, 'nuruddinannadawi@yahoo.com', '085714049295'),
(11, 1, 1, 1, '212', 'Zaharil Anasy, S.Pd.', 'zaharilanasy', 0x852caf6c501c55833085b616247b9d71, 'zaharilanasy@yahoo.com', '085714049295'),
(12, 1, 1, 1, '156', 'Zubair, M.Ag., Dr.', 'zubair156', 0x8e7d7ef14287eca2971a0650d8f6dc32, 'zubair156@yahoo.com', '085714049295'),
(13, 1, 1, 1, '243', 'Minatur Rokhim, M.A.', 'minaturrokhim', 0x3114f03734c4804dbdaecadd81fd2ac4, 'minaturrokhim@yahoo.com', '085714049295'),
(14, 1, 1, 1, '205', 'Irfan Abu Bakar, M.Ag.', 'irfanabubakar', 0x370929efc35751fc73aceac8c8556c1d, 'irfanabubakar@yahoo.com', '085714049295'),
(15, 1, 1, 1, '226', 'Cahya Buana, M.A., Dr.', 'cahyabuana', 0x4d95835eb08e6be2f0d859973a7ba59d, 'cahyabuana@yahoo.com', '085714049295'),
(16, 1, 1, 1, '288', 'Burhanuddin Muthalib', 'burhanuddinmuthalib', 0x59b6b36e8fec24ce820811173af00f1453ee01749bd30687d07fa81649c713a5, 'burhanuddinmuthalib@yahoo.com', '085714049295'),
(17, 1, 1, 1, '99', 'M. Ma''ruf Misbah, M.A., Dr.', 'marufmisbah', 0x61a60b27f856e53ed18116fa1f54c443, 'marufmisbah@yahoo.com', '085714049295'),
(18, 1, 1, 1, '241', 'M. Agus Suryadi, M. Hum.', 'agussuryadi', 0xec6d20ce25b12825a69e8e0e88f840b9, 'agussuryadi@yahoo.com', '085714049295'),
(19, 1, 1, 1, '47', 'Didin Sirojudin AR, M.Ag., Dr.', 'didinsirojudin', 0x3c3cfa2181b3c25c7ec2eeabab6510be, 'didinsirojudin@yahoo.com', '085714049295'),
(20, 1, 1, 1, '237', 'Ali Hasan al-Bahar, M.A.', 'alihasan', 0xb2690f506237b2b570032ba84df53634, 'alihasan@yahoo.com', '085714049295'),
(21, 2, 1, 1, '234', 'Ummi Kultsum, M.Pd.', 'ummikultsum', 0x8b0409e0ce5da81a1c7d2255f3b18b74, 'ummikultsum@yahoo.com', '085714049295'),
(22, 2, 1, 1, '221', 'Inayatul Chusna, M.Hum.', 'inayatulchusna', 0x4d08f6e1c93bf585c6a74a7e4c2762b2, 'inayatulchusna@yahoo.com', '085714049295'),
(23, 2, 1, 1, '278', 'Dhuha Adiansyah, S.S.', 'dhuhaadiansyah', 0xdf40f74c074721f8445fb476e286de59, 'dhuhaadiansyah@yahoo.com', '085714049295'),
(24, 2, 1, 1, '257', 'Sholikatus So''diyah, M.Pd.', 'sholikatussodiyah', 0x89804185940d8eb68ce2397db3e1ee5dfba57f9f86ec76d7117290838657e5b3, 'sholikatussodiyah@yahoo.com', '085714049295'),
(25, 2, 1, 1, '1', 'Muhammad Kamil, M.Si., Dr.', 'muhammadkamil', 0x15ed88cb14dd63b44ed60f71f2f9eefd, 'muhammadkamil@yahoo.com', '085714049295'),
(26, 2, 1, 1, '302', 'Ida Rosyida, S.S.', 'idarosyida', 0xc4d5d8bc58f5920af00e0dd8f5a89fed, 'idarosyida@yahoo.com', '085714049295'),
(27, 2, 1, 1, '125', 'Mukhtar Gozali, M.Ag., Drs.', 'mukhtargozali', 0x86e3a1405041b6bc87f103856bf10046, 'mukhtargozali@yahoo.com', '085714049295'),
(28, 2, 1, 1, '300', 'Ahmad Zakky, M.Hum.', 'ahmadzakky', 0x8b3adc852f94e836745526e2571aa15e, 'ahmadzakky@yahoo.com', '085714049295'),
(29, 2, 1, 1, '157', 'Halid, M.Ag., Dr.', 'halid157', 0x1891eb93578dbc3cac661e820a1552b0, 'halid157@yahoo.com', '085714049295'),
(30, 2, 1, 1, '271', 'Ramdani, S.Pd., Drs.', 'ramdani271', 0xdda2cf1e07de6fe80cb12a4b8791215d, 'ramdani271@yahoo.com', '085714049295'),
(31, 2, 1, 1, '192', 'Syarufuddin Daulay, Drs. H.', 'syarifuddindaulay', 0xacc0ee25bbea8f28bbcc0e2987484088dca8339d44c400746027815ced31fd9a, 'syarifuddindaulay@yahoo.com', '085714049295'),
(32, 2, 1, 1, '222', 'Amran Abdurrahman, M.M.', 'amranabdurrahman', 0x248d0bce310b2544e93291e402c22de4bd9fa0cbb894cf7cb8db1f98b6d3a62d, 'amranabdurrahman@yahoo.com', '085714049295'),
(33, 2, 1, 1, '274', 'Muhammad Fitrah, S.S.', 'muhammadfitrah', 0x4c15de9cff660bfd585ea11c645f996a, 'muhammadfitrah@yahoo.com', '085714049295'),
(34, 4, 1, 1, '3', 'Rofi''i, Prof. Dr. H.', 'rofii3prof', 0xc30808955c9a11783366deb113c38604, 'rofii3prof@gmail.com', '085714049295'),
(35, 4, 1, 1, '35', 'Ahmad Syatibi, M.Ag., Drs.', 'ahmadsyatibi', 0x2bc620da8fdb7990c275d85972d88dc1, 'ahmadsyatibi@gmail.com', '085714049295'),
(36, 3, 1, 1, '34', 'Abd. Wahid Hasyim, M.Ag., Dr. H.', 'wahidhasyim', 0xdbf2bae9bc9f8f8f6ef620baeafaf98e, 'wahidhasyim@gmail.com', '085714049295'),
(37, 3, 1, 1, '36', 'M. Muslih Idris, Lc.,M.A., Dr.H.', 'muslihidris', 0x8f2687fc46844c3df01160138df478ed, 'muslihidris@gmail.com', '085714049295'),
(38, 3, 1, 1, '39', 'Tarmizi Idris, M.A., Drs.', 'tarmiziidris', 0xbd0b88c7fabe6974f05a9b3b94ee910e, 'tarmiziidris@gmail.com', '085714049295');

-- --------------------------------------------------------

--
-- Table structure for table `fakultas`
--

CREATE TABLE IF NOT EXISTS `fakultas` (
  `id_fak` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_univ` int(11) NOT NULL,
  `nama` varchar(60) NOT NULL,
  `username` varchar(40) NOT NULL,
  `password` tinyblob NOT NULL,
  PRIMARY KEY (`id_fak`),
  KEY `nama` (`nama`,`username`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `fakultas`
--

INSERT INTO `fakultas` (`id_fak`, `id_univ`, `nama`, `username`, `password`) VALUES
(1, 1, 'Adab dan Humaniora', 'admin_fah', 0xc1011712b8a7157f8b723fbcec5d7d45);

-- --------------------------------------------------------

--
-- Table structure for table `hariaktif`
--

CREATE TABLE IF NOT EXISTS `hariaktif` (
  `id_hari` int(11) NOT NULL,
  `id_fak` int(11) NOT NULL,
  `id_univ` int(11) NOT NULL,
  `id_TA` int(11) NOT NULL,
  `nama` varchar(15) NOT NULL,
  KEY `id_fak` (`id_fak`),
  KEY `id_univ` (`id_univ`),
  KEY `id_TA` (`id_TA`),
  KEY `id_hari` (`id_hari`),
  KEY `nama` (`nama`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hariaktif`
--

INSERT INTO `hariaktif` (`id_hari`, `id_fak`, `id_univ`, `id_TA`, `nama`) VALUES
(5, 1, 1, 2, 'Jumat'),
(4, 1, 1, 2, 'Kamis'),
(3, 1, 1, 2, 'Rabu'),
(2, 1, 1, 2, 'Selasa'),
(1, 1, 1, 2, 'Senin');

-- --------------------------------------------------------

--
-- Table structure for table `jadwal`
--

CREATE TABLE IF NOT EXISTS `jadwal` (
  `id_jad` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_univ` int(11) NOT NULL,
  `id_fak` int(11) NOT NULL,
  `id_prodi` int(11) NOT NULL,
  `tim` int(11) NOT NULL,
  `paralel` varchar(40) NOT NULL,
  `id_matkul` int(11) NOT NULL,
  `sks` int(11) NOT NULL,
  `id_kls` int(11) NOT NULL,
  `id_lkl` int(11) NOT NULL,
  `id_hari` int(11) NOT NULL,
  `jk_start` int(11) NOT NULL,
  `mulai_jam` int(11) NOT NULL,
  `mulai_menit` int(11) NOT NULL,
  `jk_end` int(11) NOT NULL,
  `selesai_jam` int(11) NOT NULL,
  `selesai_menit` int(11) NOT NULL,
  `id_TA` int(11) NOT NULL,
  `nod` int(11) NOT NULL,
  `nods` int(11) NOT NULL,
  PRIMARY KEY (`id_jad`),
  KEY `id_matkul` (`id_matkul`),
  KEY `id_kls` (`id_kls`),
  KEY `id_lkl` (`id_lkl`),
  KEY `id_hari` (`id_hari`),
  KEY `id_TA` (`id_TA`),
  KEY `nod` (`nod`),
  KEY `nods` (`nods`),
  KEY `tim` (`tim`),
  KEY `pararel` (`paralel`),
  KEY `id_fak` (`id_fak`,`id_prodi`),
  KEY `mulai_jam` (`mulai_jam`,`mulai_menit`,`selesai_jam`,`selesai_menit`),
  KEY `id_univ` (`id_univ`),
  KEY `jk_start` (`jk_start`),
  KEY `jk_end` (`jk_end`),
  KEY `sks` (`sks`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=139 ;

--
-- Dumping data for table `jadwal`
--

INSERT INTO `jadwal` (`id_jad`, `id_univ`, `id_fak`, `id_prodi`, `tim`, `paralel`, `id_matkul`, `sks`, `id_kls`, `id_lkl`, `id_hari`, `jk_start`, `mulai_jam`, `mulai_menit`, `jk_end`, `selesai_jam`, `selesai_menit`, `id_TA`, `nod`, `nods`) VALUES
(138, 1, 1, 2, 0, '-', 27, 2, 72, 0, 0, 0, 0, 0, 0, 0, 0, 2, 9, 0),
(119, 1, 1, 1, 1, '2.2', 10, 2, 48, 0, 0, 0, 0, 0, 0, 0, 0, 2, 1, 15),
(120, 1, 1, 1, 1, '2.2', 10, 2, 48, 0, 0, 0, 0, 0, 0, 0, 0, 2, 1, 15),
(121, 1, 1, 1, 0, '-', 18, 2, 46, 21, 1, 1, 7, 30, 2, 9, 10, 2, 4, 0),
(122, 1, 1, 1, 0, '-', 18, 2, 47, 0, 0, 0, 0, 0, 0, 0, 0, 2, 14, 0),
(123, 1, 1, 1, 0, '-', 18, 2, 48, 0, 0, 0, 0, 0, 0, 0, 0, 2, 14, 0),
(124, 1, 1, 1, 1, '2.2', 19, 2, 46, 0, 0, 0, 0, 0, 0, 0, 0, 2, 7, 8),
(125, 1, 1, 1, 1, '2.2', 19, 2, 46, 0, 0, 0, 0, 0, 0, 0, 0, 2, 7, 8),
(126, 1, 1, 1, 1, '2.2', 19, 2, 47, 0, 0, 0, 0, 0, 0, 0, 0, 2, 13, 8),
(127, 1, 1, 1, 1, '2.2', 19, 2, 47, 0, 0, 0, 0, 0, 0, 0, 0, 2, 13, 8),
(128, 1, 1, 1, 1, '2.2', 19, 2, 48, 0, 0, 0, 0, 0, 0, 0, 0, 2, 7, 8),
(129, 1, 1, 1, 1, '2.2', 19, 2, 48, 0, 0, 0, 0, 0, 0, 0, 0, 2, 7, 8),
(130, 1, 1, 1, 0, '2.2', 11, 2, 46, 0, 0, 0, 0, 0, 0, 0, 0, 2, 9, 0),
(131, 1, 1, 1, 0, '2.2', 11, 2, 46, 21, 1, 6, 12, 0, 7, 13, 50, 2, 9, 0),
(132, 1, 1, 1, 0, '2.2', 11, 2, 47, 0, 0, 0, 0, 0, 0, 0, 0, 2, 11, 0),
(133, 1, 1, 1, 0, '2.2', 11, 2, 47, 0, 0, 0, 0, 0, 0, 0, 0, 2, 11, 0),
(134, 1, 1, 1, 0, '2.2', 11, 2, 48, 0, 0, 0, 0, 0, 0, 0, 0, 2, 18, 0),
(135, 1, 1, 1, 0, '2.2', 11, 2, 48, 0, 0, 0, 0, 0, 0, 0, 0, 2, 18, 0),
(136, 1, 1, 1, 0, '-', 21, 2, 49, 0, 0, 0, 0, 0, 0, 0, 0, 2, 19, 0),
(137, 1, 1, 1, 0, '-', 22, 2, 49, 0, 0, 0, 0, 0, 0, 0, 0, 2, 20, 0),
(117, 1, 1, 1, 1, '2.2', 10, 2, 47, 0, 0, 0, 0, 0, 0, 0, 0, 2, 3, 15),
(118, 1, 1, 1, 1, '2.2', 10, 2, 47, 0, 0, 0, 0, 0, 0, 0, 0, 2, 3, 15),
(116, 1, 1, 1, 0, '2.2', 10, 2, 46, 0, 0, 0, 0, 0, 0, 0, 0, 2, 6, 0),
(114, 1, 1, 1, 0, '-', 17, 2, 48, 0, 0, 0, 0, 0, 0, 0, 0, 2, 16, 0),
(115, 1, 1, 1, 0, '2.2', 10, 2, 46, 21, 1, 4, 10, 10, 5, 12, 0, 2, 6, 0),
(110, 1, 1, 1, 1, '-', 16, 2, 47, 0, 0, 0, 0, 0, 0, 0, 0, 2, 4, 12),
(111, 1, 1, 1, 1, '-', 16, 2, 48, 0, 0, 0, 0, 0, 0, 0, 0, 2, 4, 12),
(112, 1, 1, 1, 0, '-', 17, 2, 46, 0, 0, 0, 0, 0, 0, 0, 0, 2, 5, 0),
(113, 1, 1, 1, 0, '-', 17, 2, 47, 0, 0, 0, 0, 0, 0, 0, 0, 2, 5, 0),
(109, 1, 1, 1, 0, '-', 16, 2, 46, 0, 0, 0, 0, 0, 0, 0, 0, 2, 4, 0);

-- --------------------------------------------------------

--
-- Table structure for table `kelas`
--

CREATE TABLE IF NOT EXISTS `kelas` (
  `id_kls` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_univ` int(11) NOT NULL,
  `id_fak` int(11) NOT NULL,
  `id_prodi` int(11) NOT NULL,
  `smstr` int(11) NOT NULL,
  `nama` varchar(20) NOT NULL,
  `mhs` int(11) NOT NULL,
  `id_TA` int(11) NOT NULL,
  PRIMARY KEY (`id_kls`),
  KEY `id_TA` (`id_TA`),
  KEY `id_prodi` (`smstr`),
  KEY `id_univ` (`id_univ`,`id_fak`),
  KEY `id_prodi_2` (`id_prodi`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=82 ;

--
-- Dumping data for table `kelas`
--

INSERT INTO `kelas` (`id_kls`, `id_univ`, `id_fak`, `id_prodi`, `smstr`, `nama`, `mhs`, `id_TA`) VALUES
(81, 1, 1, 2, 7, 'B', 0, 2),
(80, 1, 1, 2, 7, 'A', 0, 2),
(79, 1, 1, 2, 5, 'B', 0, 2),
(78, 1, 1, 2, 5, 'A', 0, 2),
(77, 1, 1, 2, 3, 'C', 0, 2),
(76, 1, 1, 2, 3, 'B', 0, 2),
(75, 1, 1, 2, 3, 'A', 0, 2),
(74, 1, 1, 2, 1, 'C', 0, 2),
(73, 1, 1, 2, 1, 'B', 0, 2),
(72, 1, 1, 2, 1, 'A', 0, 2),
(57, 1, 1, 1, 7, 'C', 0, 2),
(56, 1, 1, 1, 7, 'B', 0, 2),
(55, 1, 1, 1, 7, 'A', 0, 2),
(54, 1, 1, 1, 5, 'C', 0, 2),
(53, 1, 1, 1, 5, 'B', 0, 2),
(52, 1, 1, 1, 5, 'A', 0, 2),
(51, 1, 1, 1, 3, 'C', 0, 2),
(50, 1, 1, 1, 3, 'B', 0, 2),
(49, 1, 1, 1, 3, 'A', 0, 2),
(48, 1, 1, 1, 1, 'C', 0, 2),
(47, 1, 1, 1, 1, 'B', 0, 2),
(46, 1, 1, 1, 1, 'A', 0, 2);

-- --------------------------------------------------------

--
-- Table structure for table `kurikulum`
--

CREATE TABLE IF NOT EXISTS `kurikulum` (
  `id_krklm` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_univ` int(11) NOT NULL,
  `id_fak` int(11) NOT NULL,
  `id_prodi` int(11) NOT NULL,
  `tahun` int(11) NOT NULL,
  PRIMARY KEY (`id_krklm`),
  KEY `id_univ` (`id_univ`,`id_fak`,`id_prodi`,`tahun`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=15 ;

--
-- Dumping data for table `kurikulum`
--

INSERT INTO `kurikulum` (`id_krklm`, `id_univ`, `id_fak`, `id_prodi`, `tahun`) VALUES
(13, 1, 1, 1, 2009),
(14, 1, 1, 2, 2009),
(12, 1, 2, 5, 2013);

-- --------------------------------------------------------

--
-- Table structure for table `lokal`
--

CREATE TABLE IF NOT EXISTS `lokal` (
  `id_lkl` int(10) NOT NULL,
  `id_univ` int(11) NOT NULL,
  `id_fak` int(11) NOT NULL,
  `nama` varchar(20) NOT NULL,
  `muat` int(11) NOT NULL,
  `id_TA` int(11) NOT NULL,
  KEY `id_TA` (`id_TA`),
  KEY `id_fak` (`id_fak`),
  KEY `id_univ` (`id_univ`),
  KEY `id_lkl` (`id_lkl`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `lokal`
--

INSERT INTO `lokal` (`id_lkl`, `id_univ`, `id_fak`, `nama`, `muat`, `id_TA`) VALUES
(27, 1, 1, 'MMR', 30, 2),
(26, 1, 1, 'LAB2', 30, 2),
(25, 1, 1, 'LAB1', 30, 2),
(16, 1, 1, '7.08', 40, 2),
(15, 1, 1, '7.07', 40, 2),
(14, 1, 1, '7.06', 40, 2),
(20, 1, 1, '6.15', 40, 2),
(19, 1, 1, '6.14', 40, 2),
(8, 1, 1, '6.08', 40, 2),
(7, 1, 1, '6.07', 40, 2),
(6, 1, 1, '6.06', 40, 2),
(1, 1, 1, '6.01', 40, 2),
(24, 1, 1, '4.26B', 40, 2),
(23, 1, 1, '4.26A', 40, 2),
(18, 1, 1, '4.17', 40, 2),
(17, 1, 1, '4.16', 40, 2),
(13, 1, 1, '4.15', 40, 2),
(12, 1, 1, '4.14', 40, 2),
(11, 1, 1, '4.08', 40, 2),
(10, 1, 1, '4.07', 40, 2),
(9, 1, 1, '4.06', 40, 2),
(22, 1, 1, '4.01B', 40, 2),
(21, 1, 1, '4.01A', 40, 2),
(28, 1, 1, 'SAR', 30, 2);

-- --------------------------------------------------------

--
-- Table structure for table `lokalmaster`
--

CREATE TABLE IF NOT EXISTS `lokalmaster` (
  `id_lkl` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_univ` int(11) NOT NULL,
  `id_fak` int(11) NOT NULL,
  `nama` varchar(40) NOT NULL,
  `muat` int(11) NOT NULL,
  PRIMARY KEY (`id_lkl`),
  KEY `id_univ` (`id_univ`,`id_fak`,`nama`,`muat`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=31 ;

--
-- Dumping data for table `lokalmaster`
--

INSERT INTO `lokalmaster` (`id_lkl`, `id_univ`, `id_fak`, `nama`, `muat`) VALUES
(1, 1, 1, '6.01', 40),
(20, 1, 1, '6.15', 40),
(19, 1, 1, '6.14', 40),
(18, 1, 1, '4.17', 40),
(17, 1, 1, '4.16', 40),
(6, 1, 1, '6.06', 40),
(7, 1, 1, '6.07', 40),
(8, 1, 1, '6.08', 40),
(9, 1, 1, '4.06', 40),
(10, 1, 1, '4.07', 40),
(11, 1, 1, '4.08', 40),
(12, 1, 1, '4.14', 40),
(13, 1, 1, '4.15', 40),
(14, 1, 1, '7.06', 40),
(15, 1, 1, '7.07', 40),
(16, 1, 1, '7.08', 40),
(21, 1, 1, '4.01A', 40),
(22, 1, 1, '4.01B', 40),
(23, 1, 1, '4.26A', 40),
(24, 1, 1, '4.26B', 40),
(25, 1, 1, 'LAB1', 30),
(26, 1, 1, 'LAB2', 30),
(27, 1, 1, 'MMR', 30),
(28, 1, 1, 'SAR', 30),
(29, 1, 2, '404', 40),
(30, 1, 2, '405', 40);

-- --------------------------------------------------------

--
-- Table structure for table `matkul`
--

CREATE TABLE IF NOT EXISTS `matkul` (
  `id_matkul` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `smstr` int(11) NOT NULL,
  `id_krklm` int(11) NOT NULL,
  KEY `smstr` (`smstr`,`id_krklm`),
  KEY `id_matkul` (`id_matkul`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=35 ;

--
-- Dumping data for table `matkul`
--

INSERT INTO `matkul` (`id_matkul`, `smstr`, `id_krklm`) VALUES
(15, 1, 12),
(10, 1, 13),
(11, 1, 13),
(12, 1, 13),
(20, 1, 13),
(18, 1, 13),
(19, 1, 13),
(17, 1, 13),
(21, 3, 13),
(22, 3, 13),
(16, 1, 13),
(23, 1, 14),
(24, 1, 14),
(27, 1, 14),
(28, 1, 14),
(26, 1, 14),
(25, 1, 14),
(33, 3, 14),
(34, 3, 14),
(29, 3, 14),
(30, 3, 14),
(31, 3, 14),
(32, 3, 14);

-- --------------------------------------------------------

--
-- Table structure for table `matkulmaster`
--

CREATE TABLE IF NOT EXISTS `matkulmaster` (
  `id_matkul` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_univ` int(11) NOT NULL,
  `id_fak` int(11) NOT NULL,
  `id_prodi` int(11) NOT NULL,
  `kd_matkul` varchar(20) NOT NULL,
  `nama` varchar(60) NOT NULL,
  `sks` int(11) NOT NULL,
  PRIMARY KEY (`id_matkul`),
  KEY `id_univ` (`id_univ`,`id_fak`,`id_prodi`,`kd_matkul`,`nama`,`sks`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=35 ;

--
-- Dumping data for table `matkulmaster`
--

INSERT INTO `matkulmaster` (`id_matkul`, `id_univ`, `id_fak`, `id_prodi`, `kd_matkul`, `nama`, `sks`) VALUES
(10, 1, 1, 1, 'MK_402', 'Maharat al-Qira''ah I', 4),
(11, 1, 1, 1, 'MK_401', 'Bahasa Inggris I', 4),
(12, 1, 1, 1, 'MK_301', 'Bahasa Arab I', 2),
(16, 1, 1, 1, 'MK_202', 'Ulumul Qur''an dan Hadits', 2),
(15, 1, 2, 5, 'MK_201', 'Kalkulus I', 3),
(17, 1, 1, 1, 'MK_203', 'IAD/ISD/IBD', 2),
(18, 1, 1, 1, 'MK_204', 'Civic Education', 2),
(19, 1, 1, 1, 'MK_403', 'llm al-Sharf', 4),
(20, 1, 1, 1, 'MK_205', 'Bahasa Indonesia', 2),
(21, 1, 1, 1, 'MK_206', 'Maharat al-Kitabah I', 2),
(22, 1, 1, 1, 'MK_207', 'Maharat al-Istima II', 2),
(23, 1, 1, 2, 'MK_401', 'Bahasa Arab I', 4),
(24, 1, 1, 2, 'MK_402', 'Speaking I', 4),
(25, 1, 1, 2, 'MK_403', 'Reading I', 4),
(26, 1, 1, 2, 'MK_404', 'Structure I', 4),
(27, 1, 1, 2, 'MK_201', 'Civic Education', 2),
(28, 1, 1, 2, 'MK_202', 'Pronunciation', 2),
(29, 1, 1, 2, 'MK_405', 'Structure III', 4),
(30, 1, 1, 2, 'MK_406', 'Reading III', 4),
(31, 1, 1, 2, 'MK_407', 'Listening I', 4),
(32, 1, 1, 2, 'MK_408', 'Speaking III', 4),
(33, 1, 1, 2, 'MK_203', 'Ulumul Qur''an dan Hadits', 2),
(34, 1, 1, 2, 'MK_204', 'Aqidah', 2);

-- --------------------------------------------------------

--
-- Table structure for table `prodi`
--

CREATE TABLE IF NOT EXISTS `prodi` (
  `id_prodi` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_fak` int(11) NOT NULL,
  `id_univ` int(11) NOT NULL,
  `nama` varchar(40) NOT NULL,
  `username` varchar(40) NOT NULL,
  `password` tinyblob NOT NULL,
  PRIMARY KEY (`id_prodi`),
  UNIQUE KEY `nama` (`nama`),
  KEY `id_fak` (`id_fak`),
  KEY `username` (`username`),
  KEY `id_univ` (`id_univ`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `prodi`
--

INSERT INTO `prodi` (`id_prodi`, `id_fak`, `id_univ`, `nama`, `username`, `password`) VALUES
(1, 1, 1, 'BSA', 'admin_bsa', 0x7836470f2f74aab12195cdc65ea6bdb0),
(2, 1, 1, 'BSI', 'admin_bsi', 0xc018282a106271febe9156372bb366b5),
(3, 1, 1, 'SPI', 'admin_spi', 0x872e31719d81f9ac4c308ba43476e943),
(4, 1, 1, 'TARJ', 'admin_tarj', 0xcdd8d9c226f9a78916f782153df1ba74);

-- --------------------------------------------------------

--
-- Table structure for table `status`
--

CREATE TABLE IF NOT EXISTS `status` (
  `id_TA` int(11) NOT NULL,
  `id_prodi` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  KEY `id_TA` (`id_TA`,`id_prodi`,`status`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `status`
--

INSERT INTO `status` (`id_TA`, `id_prodi`, `status`) VALUES
(2, 1, 0),
(2, 2, 0),
(2, 3, 0),
(2, 4, 0),
(2, 5, 1),
(2, 6, 0);

-- --------------------------------------------------------

--
-- Table structure for table `ta`
--

CREATE TABLE IF NOT EXISTS `ta` (
  `id_TA` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `tahun` varchar(20) NOT NULL,
  `ajaran` int(11) NOT NULL,
  PRIMARY KEY (`id_TA`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `ta`
--

INSERT INTO `ta` (`id_TA`, `tahun`, `ajaran`) VALUES
(2, '2011/2012', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tabeljam`
--

CREATE TABLE IF NOT EXISTS `tabeljam` (
  `id_jam` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_fak` int(11) NOT NULL,
  `id_univ` int(11) NOT NULL,
  `jam_kul` int(11) NOT NULL,
  `mulai_jam` int(11) NOT NULL,
  `mulai_menit` int(11) NOT NULL,
  `selesai_jam` int(11) NOT NULL,
  `selesai_menit` int(11) NOT NULL,
  `id_TA` int(11) NOT NULL,
  PRIMARY KEY (`id_jam`),
  KEY `id_TA` (`id_TA`),
  KEY `id_fak` (`id_fak`),
  KEY `id_univ` (`id_univ`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=41 ;

--
-- Dumping data for table `tabeljam`
--

INSERT INTO `tabeljam` (`id_jam`, `id_fak`, `id_univ`, `jam_kul`, `mulai_jam`, `mulai_menit`, `selesai_jam`, `selesai_menit`, `id_TA`) VALUES
(20, 1, 1, 10, 15, 40, 16, 30, 2),
(19, 1, 1, 9, 14, 50, 15, 40, 2),
(18, 1, 1, 8, 13, 50, 14, 40, 2),
(17, 1, 1, 7, 13, 0, 13, 50, 2),
(16, 1, 1, 6, 12, 0, 12, 50, 2),
(15, 1, 1, 5, 11, 10, 12, 0, 2),
(14, 1, 1, 4, 10, 10, 11, 0, 2),
(13, 1, 1, 3, 9, 20, 10, 10, 2),
(12, 1, 1, 2, 8, 20, 9, 10, 2),
(11, 1, 1, 1, 7, 30, 8, 20, 2);

-- --------------------------------------------------------

--
-- Table structure for table `tabeljammaster`
--

CREATE TABLE IF NOT EXISTS `tabeljammaster` (
  `id_jam` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_fak` int(11) NOT NULL,
  `id_univ` int(11) NOT NULL,
  `jam_kul` int(11) NOT NULL,
  `mulai_jam` int(11) NOT NULL,
  `mulai_menit` int(11) NOT NULL,
  `selesai_jam` int(11) NOT NULL,
  `selesai_menit` int(11) NOT NULL,
  PRIMARY KEY (`id_jam`),
  KEY `id_fak` (`id_fak`,`id_univ`,`jam_kul`,`mulai_jam`,`mulai_menit`,`selesai_jam`,`selesai_menit`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=17 ;

--
-- Dumping data for table `tabeljammaster`
--


-- --------------------------------------------------------

--
-- Table structure for table `univ`
--

CREATE TABLE IF NOT EXISTS `univ` (
  `id_univ` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(100) NOT NULL,
  `username` varchar(40) NOT NULL,
  `password` tinyblob NOT NULL,
  PRIMARY KEY (`id_univ`),
  KEY `nama` (`nama`,`username`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `univ`
--

INSERT INTO `univ` (`id_univ`, `nama`, `username`, `password`) VALUES
(1, 'UIN Syarif Hidayatullah - Jakarta', 'admin_uinjkt', 0x04527d4e97d65f9120fef8e4905b77fc);

