-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Waktu pembuatan: 10 Feb 2023 pada 10.38
-- Versi server: 5.7.34
-- Versi PHP: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_simapel`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_ajar`
--

CREATE TABLE `tbl_ajar` (
  `id` int(11) NOT NULL,
  `id_mapel` int(11) NOT NULL,
  `id_guru` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tbl_ajar`
--

INSERT INTO `tbl_ajar` (`id`, `id_mapel`, `id_guru`) VALUES
(58, 2, 25),
(59, 2, 26),
(60, 3, 27),
(61, 4, 28),
(62, 5, 29),
(74, 8, 30),
(75, 8, 31),
(76, 6, 30),
(77, 6, 31),
(78, 6, 32),
(79, 6, 33),
(83, 9, 30),
(84, 9, 31),
(85, 9, 32),
(86, 9, 34),
(87, 10, 30),
(88, 10, 31),
(91, 12, 32),
(92, 12, 33),
(93, 13, 32),
(94, 13, 33),
(95, 14, 38),
(146, 48, 49),
(147, 48, 50),
(148, 48, 51),
(149, 48, 52),
(151, 50, 55),
(155, 54, 57),
(172, 59, 58),
(173, 59, 59),
(176, 61, 58),
(177, 61, 59),
(180, 62, 58),
(181, 62, 59),
(182, 63, 60),
(183, 64, 61),
(184, 65, 62),
(185, 65, 63),
(188, 67, 62),
(189, 67, 63),
(190, 68, 62),
(191, 68, 63),
(230, 69, 66),
(231, 69, 67),
(232, 70, 75),
(233, 71, 80),
(234, 72, 81),
(235, 46, 1),
(236, 46, 2),
(237, 46, 3),
(238, 46, 41),
(239, 46, 42),
(240, 46, 64),
(241, 11, 4),
(242, 11, 5),
(243, 11, 43),
(244, 11, 65),
(248, 16, 9),
(249, 16, 10),
(250, 16, 11),
(251, 16, 12),
(252, 16, 45),
(253, 16, 46),
(254, 16, 68),
(255, 16, 69),
(256, 17, 13),
(257, 17, 14),
(258, 17, 5),
(259, 18, 15),
(260, 18, 22),
(261, 18, 23),
(262, 18, 24),
(269, 20, 18),
(270, 20, 19),
(271, 21, 20),
(272, 21, 21),
(273, 19, 16),
(274, 19, 17),
(275, 19, 15),
(276, 19, 48),
(277, 73, 72),
(278, 73, 73),
(281, 74, 70),
(282, 74, 71),
(283, 74, 83),
(284, 75, 55),
(285, 76, 78),
(286, 76, 79),
(287, 77, 78),
(288, 77, 79),
(289, 78, 82),
(290, 79, 82),
(291, 49, 54),
(292, 51, 56),
(293, 51, 74),
(294, 52, 56),
(295, 52, 74),
(296, 53, 56),
(297, 53, 74),
(315, 58, 35),
(316, 58, 36),
(317, 58, 37),
(318, 58, 34),
(319, 58, 76),
(320, 58, 77),
(321, 55, 35),
(322, 55, 36),
(323, 55, 37),
(324, 55, 34),
(325, 55, 76),
(326, 55, 77),
(327, 56, 35),
(328, 56, 36),
(329, 56, 37),
(330, 56, 34),
(331, 56, 76),
(332, 56, 77),
(333, 57, 35),
(334, 57, 36),
(335, 57, 37),
(336, 57, 34),
(337, 57, 76),
(338, 57, 77),
(342, 60, 58),
(343, 60, 59),
(344, 60, 78),
(345, 60, 79),
(346, 66, 62),
(347, 66, 63),
(348, 66, 82),
(349, 15, 6),
(350, 15, 7),
(351, 15, 8),
(352, 47, 44),
(353, 7, 30),
(354, 7, 31),
(355, 7, 32),
(356, 7, 35),
(357, 7, 36),
(358, 7, 37);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_aktivitas`
--

CREATE TABLE `tbl_aktivitas` (
  `id` int(11) NOT NULL,
  `id_ajar` int(11) NOT NULL,
  `id_kelas` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tbl_aktivitas`
--

INSERT INTO `tbl_aktivitas` (`id`, `id_ajar`, `id_kelas`) VALUES
(654, 59, 40),
(655, 60, 40),
(656, 61, 40),
(657, 62, 40),
(658, 95, 40),
(659, 237, 40),
(660, 350, 40),
(661, 251, 40),
(662, 256, 40),
(663, 274, 40),
(664, 270, 40),
(665, 272, 40),
(666, 262, 40),
(667, 241, 40),
(668, 59, 41),
(669, 60, 41),
(670, 61, 41),
(671, 62, 41),
(672, 95, 41),
(673, 237, 41),
(674, 241, 41),
(675, 350, 41),
(676, 251, 41),
(677, 256, 41),
(678, 274, 41),
(679, 270, 41),
(680, 272, 41),
(681, 262, 41),
(682, 58, 36),
(683, 60, 36),
(684, 61, 36),
(685, 62, 36),
(686, 95, 36),
(687, 235, 36),
(688, 241, 36),
(689, 351, 36),
(690, 249, 36),
(691, 256, 36),
(692, 274, 36),
(693, 270, 36),
(694, 272, 36),
(695, 260, 36),
(818, 85, 43),
(819, 79, 43),
(820, 92, 43),
(821, 94, 43),
(822, 236, 43),
(823, 241, 43),
(824, 349, 43),
(825, 248, 43),
(826, 242, 43),
(827, 274, 43),
(828, 269, 43),
(829, 271, 43),
(830, 261, 43),
(831, 357, 43),
(860, 58, 33),
(861, 60, 33),
(862, 61, 33),
(863, 62, 33),
(864, 95, 33),
(865, 237, 33),
(866, 249, 33),
(867, 256, 33),
(868, 274, 33),
(869, 270, 33),
(870, 272, 33),
(871, 260, 33),
(872, 241, 33),
(873, 351, 33),
(874, 58, 34),
(875, 60, 34),
(876, 61, 34),
(877, 62, 34),
(878, 95, 34),
(879, 235, 34),
(880, 241, 34),
(881, 249, 34),
(882, 256, 34),
(883, 274, 34),
(884, 270, 34),
(885, 272, 34),
(886, 260, 34),
(887, 349, 34),
(888, 58, 35),
(889, 60, 35),
(890, 61, 35),
(891, 62, 35),
(892, 95, 35),
(893, 237, 35),
(894, 241, 35),
(895, 249, 35),
(896, 257, 35),
(897, 274, 35),
(898, 270, 35),
(899, 272, 35),
(900, 260, 35),
(901, 351, 35),
(902, 723, 38),
(903, 724, 38),
(904, 725, 38),
(905, 726, 38),
(906, 727, 38),
(907, 728, 38),
(908, 729, 38),
(909, 730, 38),
(910, 731, 38),
(911, 732, 38),
(912, 733, 38),
(913, 734, 38),
(914, 735, 38),
(915, 736, 38),
(916, 78, 45),
(917, 91, 45),
(918, 93, 45),
(919, 85, 45),
(920, 236, 45),
(921, 241, 45),
(922, 349, 45),
(923, 250, 45),
(924, 256, 45),
(925, 259, 45),
(926, 273, 45),
(927, 269, 45),
(928, 271, 45),
(929, 355, 45),
(930, 77, 46),
(931, 75, 46),
(932, 84, 46),
(933, 88, 46),
(934, 236, 46),
(935, 242, 46),
(936, 349, 46),
(937, 250, 46),
(938, 257, 46),
(939, 259, 46),
(940, 273, 46),
(941, 269, 46),
(942, 271, 46),
(943, 354, 46),
(944, 76, 47),
(945, 74, 47),
(946, 83, 47),
(947, 87, 47),
(948, 236, 47),
(949, 242, 47),
(950, 349, 47),
(951, 250, 47),
(952, 257, 47),
(953, 273, 47),
(954, 269, 47),
(955, 272, 47),
(956, 262, 47),
(957, 353, 47),
(958, 237, 37),
(959, 241, 37),
(960, 351, 37),
(961, 249, 37),
(962, 256, 37),
(963, 259, 37),
(964, 274, 37),
(965, 270, 37),
(966, 272, 37),
(967, 59, 37),
(968, 60, 37),
(969, 61, 37),
(970, 62, 37),
(971, 95, 37),
(972, 235, 39),
(973, 241, 39),
(974, 350, 39),
(975, 251, 39),
(976, 257, 39),
(977, 274, 39),
(978, 270, 39),
(979, 272, 39),
(980, 261, 39),
(981, 59, 39),
(982, 60, 39),
(983, 61, 39),
(984, 62, 39),
(985, 95, 39),
(986, 236, 42),
(987, 242, 42),
(988, 351, 42),
(989, 248, 42),
(990, 256, 42),
(991, 274, 42),
(992, 269, 42),
(993, 271, 42),
(994, 261, 42),
(995, 79, 42),
(996, 92, 42),
(997, 94, 42),
(998, 86, 42),
(999, 356, 42),
(1000, 235, 44),
(1001, 241, 44),
(1002, 349, 44),
(1003, 248, 44),
(1004, 242, 44),
(1005, 273, 44),
(1006, 269, 44),
(1007, 272, 44),
(1008, 261, 44),
(1009, 85, 44),
(1010, 79, 44),
(1011, 92, 44),
(1012, 94, 44),
(1013, 358, 44),
(1014, 237, 56),
(1015, 241, 56),
(1016, 351, 56),
(1017, 249, 56),
(1018, 256, 56),
(1019, 259, 56),
(1020, 274, 56),
(1021, 270, 56),
(1022, 272, 56),
(1023, 59, 56),
(1024, 60, 56),
(1025, 61, 56),
(1026, 62, 56),
(1027, 95, 56),
(1030, 235, 57),
(1031, 241, 57);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_guru`
--

CREATE TABLE `tbl_guru` (
  `id` int(11) NOT NULL,
  `guru_kode` varchar(50) NOT NULL,
  `guru_nip` varchar(255) NOT NULL,
  `guru_nama` varchar(100) NOT NULL,
  `guru_jam_ajar` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tbl_guru`
--

INSERT INTO `tbl_guru` (`id`, `guru_kode`, `guru_nip`, `guru_nama`, `guru_jam_ajar`) VALUES
(1, 'G01', '', 'Sulyani Sukarno Mardan, S.PdI', '4'),
(2, 'G02', '', 'Nurlaela, S.Pd, M.PdI', '5'),
(3, 'G03', '', 'Safiudin, S.PdI', '6'),
(4, 'G04', '', 'Syamsinar Kadir, S.Pd', '12'),
(5, 'G05', '', 'Yuni Rozalia, S.Pd', '3'),
(6, 'G06', '', 'Syahrir, S.Pd', '6'),
(7, 'G07', '', 'Vini Elfi Yunita, S.Pd', '3'),
(8, 'G08', '', 'Ristawati, S.Pd', '6'),
(9, 'G09', '', 'Fajarudin Nor Syarif, S.Pd', '3'),
(10, 'G10', '', 'Siti Arabiah, S. Pd', '4'),
(11, 'G11', '', 'Sari Mulyawarni, S.Pd', '3'),
(12, 'G12', '', 'Misrawati, S.Pd', '3'),
(13, 'G13', '', 'Harsa, SP, MP', '9'),
(14, 'G14', '', 'Samsadar, S.Pd', '4'),
(15, 'G16', '', 'Firda Ariyanti, S.Pd, M.Pd', '4'),
(16, 'G17', '', 'Hasmira, S.Pd', '4'),
(17, 'G18', '', 'Aswira Bahidin, S.Pd, M.Pd', '11'),
(18, 'G19', '', 'Drs. Jufri', '0'),
(19, 'G20', '', 'Abd. Salam, S.Pd', '0'),
(20, 'G21', '', 'Dra. Nurbaya', '0'),
(21, 'G22', '', 'Sumarni Sirait, S.Pd, M.Pd', '0'),
(22, 'G23', '', 'Drs. H. Abd. Asis', '0'),
(23, 'G24', '', 'Rahmiati Lasantu, S.Pd', '0'),
(24, 'G26', '', 'Kalina, S.Pd', '0'),
(25, 'G27', '', 'Muh. Rijali, S.Pd', '0'),
(26, 'G28', '', 'Nani Usman, S.Pd', '0'),
(27, 'G30', '', 'Kartina, S.Pd', '0'),
(28, 'G31', '', 'Hasnawati, S.Pd', '0'),
(29, 'G32', '', 'Waode Aliyati, A.Md Com', '0'),
(30, 'G33', '', 'Satrio Pangestu', '0'),
(31, 'G34', '', 'Junizar. S.Pd', '0'),
(32, 'G35', '', 'Mursalin, S.Pd, M.Pd', '0'),
(33, 'G36', '', 'Misna, S.Pd', '0'),
(34, 'G37', '', 'Drs. Muh. Basri, M.Pd', '0'),
(35, 'G38', '', 'Dra. Rahmawati, M.Pd', '0'),
(36, 'G39', '', 'Dra. Hj. Asni, M.Si', '0'),
(37, 'G40', '', 'Dra. Hj. St Aisyah Dasir, M.Pd', '0'),
(38, 'G41', '', 'La Sumpu Pustapa, S.Si', '0'),
(41, 'G42', '-', 'La Haluma, S.Ag', '0'),
(42, 'G43', '-', 'St. Nur Ida, S.Ag', '0'),
(43, 'G44', '-', 'Dra. Nurhaeri', '0'),
(44, 'G45', '-', 'Hamsiah Saudin, S.Pd', '0'),
(45, 'G46', '-', 'Munaria, S.Pd', '0'),
(46, 'G47', '-', 'Wa Ode Dina, S.Pd', '0'),
(47, 'G48', '-', 'Firda Ariyanti, S.Pd, M.Pd', '0'),
(48, 'G49', '-', 'St. Nurmalia, S.Pd', '0'),
(49, 'G50', '-', 'Murniati, S.Pd', '0'),
(50, 'G51', '-', 'Ahmad Risal. S.Kom', '0'),
(51, 'G52', '-', 'Agus Salim, S.Pd', '0'),
(52, 'G35', '-', 'Wa Ode Nur Arfiani, S.Pd', '0'),
(53, 'G54', '-', 'Drs. Abdurrahman', '0'),
(54, 'G55', '-', 'Muh. Masykur. S, S.Kom', '0'),
(55, 'G56', '-', 'Febriadi Usnawi, Si.Kom', '0'),
(56, 'G57', '-', 'Lallo, S.Pd.', '0'),
(57, 'G58', '-', 'Amiluddin, S.Pd', '0'),
(58, 'G59', '-', 'La Malino, S.Kom', '0'),
(59, 'G60', '-', 'Muh. Ilham Nusi, S.Pd', '0'),
(60, 'G61', '-', 'Lidya Rahayu Ningrum, S.Si', '0'),
(61, 'G62', '-', 'Dewi Puspita Sari, S.Pd', '0'),
(62, 'G63', '-', 'Alfin, S.Pd', '0'),
(63, 'G64', '-', 'Muh. Wahyu Fadillah', '0'),
(64, 'G65', '-', 'Norma, S.Ag', '0'),
(65, 'G66', '-', 'Dra. Rosdiana', '0'),
(66, 'G67', '-', 'Hj.Waode Zalmama, S.Pd', '0'),
(67, 'G68', '-', 'Jamlia Jamaa, S.Pd', '0'),
(68, 'G69', '-', 'St. Hasmah, S.Pd', '0'),
(69, 'G70', '-', 'Sur Rasyid, S.Pd', '0'),
(70, 'G71', '-', 'Elisabeth, S.Pd', '0'),
(71, 'G72', '-', 'Ervina, S.Pd, MM', '0'),
(72, 'G73', '-', 'Dra. Dahlia Surahmawati', '0'),
(73, 'G74', '-', 'Rahmawati Nusi, S.Pd, MA', '0'),
(74, 'G75', '-', 'Jumadil A. S.Pd, M.Pd', '0'),
(75, 'G75', '-', 'Muh. Indra Faisal, ST', '0'),
(76, 'G76', '-', 'Dra. Tasma, M.Pd', '0'),
(77, 'G77', '-', 'Dra. Ummi, M.Pd', '0'),
(78, 'G78', '-', 'Muhlis', '0'),
(79, 'G79', '-', 'Muh. Akbar Al Ma\'ruf', '0'),
(80, 'G80', '-', 'Mutasrim, S.Kom', '0'),
(81, 'G81', '-', 'Iswuri Handayani, M.Kom', '0'),
(82, 'G82', '-', 'Akbar, S.ST', '0'),
(83, 'G15', '-', 'Titin Mekuo, S.Pd', '0');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_hak_akses`
--

CREATE TABLE `tbl_hak_akses` (
  `id_hak_akses` int(11) NOT NULL,
  `id_user_level` int(11) NOT NULL,
  `id_menu` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tbl_hak_akses`
--

INSERT INTO `tbl_hak_akses` (`id_hak_akses`, `id_user_level`, `id_menu`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 1, 3),
(4, 1, 4),
(13, 4, 17),
(15, 4, 18);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_hari`
--

CREATE TABLE `tbl_hari` (
  `hari_id` int(10) NOT NULL,
  `hari_nama` varchar(100) NOT NULL,
  `hari_jam_aktif` varchar(100) NOT NULL,
  `hari_jam_istirahat` varchar(100) NOT NULL,
  `hari_total_jam` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tbl_hari`
--

INSERT INTO `tbl_hari` (`hari_id`, `hari_nama`, `hari_jam_aktif`, `hari_jam_istirahat`, `hari_total_jam`) VALUES
(2, 'Senin', '1', '6', 9),
(3, 'Senin', '2', '6', 9),
(4, 'Senin', '3', '6', 9),
(5, 'Senin', '4', '6', 9),
(6, 'Senin', '5', '6', 9),
(7, 'Senin', '7', '6', 9),
(8, 'Senin', '8', '6', 9),
(9, 'Senin', '9', '6', 9),
(10, 'Senin', '10', '6', 9),
(11, 'Selasa', '1', '7', 10),
(12, 'Selasa', '2', '7', 10),
(13, 'Selasa', '3', '7', 10),
(14, 'Selasa', '4', '7', 10),
(15, 'Selasa', '5', '7', 10),
(16, 'Selasa', '6', '7', 10),
(17, 'Selasa', '8', '7', 10),
(18, 'Selasa', '9', '7', 10),
(19, 'Selasa', '10', '7', 10);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_jadwal`
--

CREATE TABLE `tbl_jadwal` (
  `id_jadwal` int(11) NOT NULL,
  `id_ajar` int(11) NOT NULL,
  `id_kelas` int(11) NOT NULL,
  `hari` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_jam`
--

CREATE TABLE `tbl_jam` (
  `jam_id` int(11) NOT NULL,
  `jam_ke` varchar(100) NOT NULL,
  `jam_mulai` varchar(10) NOT NULL,
  `jam_selesai` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tbl_jam`
--

INSERT INTO `tbl_jam` (`jam_id`, `jam_ke`, `jam_mulai`, `jam_selesai`) VALUES
(1, '1', '08.00', '08.45'),
(2, '2', '08.45', '09.30'),
(3, '3', '09.30', '10.15'),
(4, '4', '10.15', '11.00'),
(5, '5', '11.00', '11.45'),
(6, '6', '11.45', '13.00'),
(7, '7', '13.00', '13.45'),
(8, '8', '13.45', '14.30'),
(9, '9', '14.30', '15.15'),
(10, '10', '15.15', '16.00');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_kelas`
--

CREATE TABLE `tbl_kelas` (
  `id` int(11) NOT NULL,
  `kelas_level` int(5) NOT NULL,
  `kelas_nama` varchar(100) NOT NULL,
  `kelas_alias` varchar(10) NOT NULL,
  `kelas_jenis` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tbl_kelas`
--

INSERT INTO `tbl_kelas` (`id`, `kelas_level`, `kelas_nama`, `kelas_alias`, `kelas_jenis`) VALUES
(33, 10, 'TEKNIK KOMPUTER JARINGAN (A)', 'TKJA', 'Teknologi'),
(34, 10, 'TEKNIK KOMPUTER JARINGAN (B)', 'TKJB', 'Teknologi'),
(35, 10, 'TEKNIK KOMPUTER JARINGAN (C)', 'TKJC', 'Teknologi'),
(36, 10, 'MULTI MEDIA (A)', 'MLTA', 'Teknologi'),
(37, 10, 'MULTI MEDIA (B)', 'MLTB', 'Teknologi'),
(39, 10, 'REKAYASA PERANGKAT LUNAK (A)', 'RPLA', 'Teknologi'),
(40, 10, 'REKAYASA PERANGKAT LUNAK (B)', 'RPLB', 'Teknologi'),
(41, 10, 'REKAYASA PERANGKAT LUNAK (C)', 'RPLC', 'Teknologi'),
(42, 10, 'KRIYA TEKSTIL (A)', 'KTA', 'Kriya'),
(43, 10, 'KRIYA TEKSTIL (B)', 'KTB', 'Kriya'),
(44, 10, 'KRIYA TEKSTIL (C)', 'KTC', 'Kriya'),
(45, 10, 'KRIYA KAYU', 'KK', 'Kriya'),
(46, 10, 'DESAIN KOMUNIKASI VISUAL (A)', 'DKVA', 'Kriya'),
(47, 10, 'DESAIN KOMUNIKASI VISUAL (B)', 'DKVB', 'Kriya'),
(56, 10, 'MULTIMEDIA (C)', 'MMC', 'Teknologi'),
(57, 12, 'danil', 'aa', 'Teknologi');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_mapel`
--

CREATE TABLE `tbl_mapel` (
  `id` int(11) NOT NULL,
  `mapel_kode` varchar(50) NOT NULL DEFAULT '-',
  `mapel_nama` varchar(100) NOT NULL,
  `mapel_jp` int(11) NOT NULL,
  `mapel_jenis` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tbl_mapel`
--

INSERT INTO `tbl_mapel` (`id`, `mapel_kode`, `mapel_nama`, `mapel_jp`, `mapel_jenis`) VALUES
(2, 'M10', 'Fisika', 3, 'kejuruan'),
(3, 'M11', 'Sistem Komputer', 2, 'kejuruan'),
(4, 'M12', 'Pemrograman Dasar', 3, 'kejuruan'),
(5, 'M13', 'Dasar Desain Grafis', 3, 'kejuruan'),
(6, 'M15', 'Tinjauan Seni', 2, 'kejuruan'),
(7, 'M16', 'Dasar2 Kreatifitas', 2, 'kejuruan'),
(8, 'M17', 'Dasar2 Seni Rupa', 3, 'kejuruan'),
(9, 'M18', 'Gambar', 4, 'kejuruan'),
(10, 'M19', 'Sketsa ', 4, 'kejuruan'),
(11, 'M02', 'PKn', 2, 'umum'),
(12, 'M20', 'Dasar2 Desain', 3, 'kejuruan'),
(13, 'M21', 'Desain Produk ', 4, 'kejuruan'),
(14, 'M22', 'Komputer & Jaringan Dasar', 3, 'kejuruan'),
(15, 'M03', 'Bahasa Indonesia (X)', 4, 'umum'),
(16, 'M04', 'Matematika', 4, 'umum'),
(17, 'M05', 'Sejarah Indonesia', 3, 'umum'),
(18, 'M06', 'Simulasi Digital', 3, 'umum'),
(19, 'M07', 'Bahasa Inggris (X & XI)', 3, 'umum'),
(20, 'M08', 'Seni Budaya', 3, 'umum'),
(21, 'M09', 'Penjas Kes', 2, 'umum'),
(46, 'M01', 'Pendais', 3, 'umum'),
(47, 'M23', 'Bhs. Indonesia (XI)', 3, ''),
(48, 'M24', 'Produk Kreatif & KWU', 7, ''),
(49, 'M25', 'Desain Publikasi', 9, ''),
(50, 'M26', 'Fotografi', 9, ''),
(51, 'M27', 'Teknik Kerja Mesin', 6, ''),
(52, 'M28', 'Teknik Kerja Ukir', 6, ''),
(53, 'M29', 'Finishing', 4, ''),
(54, 'M30', 'Teknik Kerja Bangku', 5, ''),
(55, 'M31', 'Batik', 6, ''),
(56, 'M32', 'Jahit', 6, ''),
(57, 'M33', 'Tenun', 4, ''),
(58, 'M34', 'Sablon', 5, ''),
(59, 'M35', 'Tek Jaringan berbasis luas', 6, ''),
(60, 'M36', 'Adm Infrastruktur Jaringan', 6, ''),
(61, 'M37', 'Adm Sistem Jaringan', 4, ''),
(62, 'M38', 'Teknik Layanan Jaringan ', 5, ''),
(63, 'M39', 'Desain Grafis Percetakan', 9, ''),
(64, 'M40', 'Animasi 2D dan 3D', 9, ''),
(65, 'M41', 'Pemodelan Perangkat Lunak', 6, ''),
(66, 'M42', 'Basis Data', 6, ''),
(67, 'M43', 'Pemrograman Berorientasi Objek', 4, ''),
(68, 'M44', 'Pemrograman Web & Pemrograman Bergerak', 5, ''),
(69, 'M45', 'Bahasa Indonesia (XII)', 2, ''),
(70, 'M46', 'Komputer Grafis', 7, ''),
(71, 'M47', 'Desain Media Interaktif', 9, ''),
(72, 'M48', 'Tek. Peng. Audio Vidio', 9, ''),
(73, 'M49', 'Bahasa Inggris (XII)', 4, ''),
(74, 'M50', 'Produk Kreatif & KWU (XII)', 8, ''),
(75, 'M51', 'Fotografi (XII)', 4, ''),
(76, 'M52', 'Adm Sistem Jaringan (XII)', 7, ''),
(77, 'M53', 'Teknik Layanan Jaringan (XII)', 3, ''),
(78, 'M54', 'Pemrograman Berorientasi Objek (XII)', 7, ''),
(79, 'M55', 'Pemrograman Web & Pemrograman Bergerak (XII)', 7, '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_menu`
--

CREATE TABLE `tbl_menu` (
  `id_menu` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `icon` varchar(255) NOT NULL,
  `is_main_menu` int(11) NOT NULL,
  `is_aktif` char(1) NOT NULL COMMENT 'y=yes, n=no',
  `date_created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tbl_menu`
--

INSERT INTO `tbl_menu` (`id_menu`, `title`, `url`, `icon`, `is_main_menu`, `is_aktif`, `date_created`) VALUES
(1, 'Kelola Pengguna', 'superadmin/user', 'fas fa-user-tie', 0, 'y', '2021-10-31 10:01:15'),
(2, 'Kelola Level Pengguna', 'superadmin/user/user_level', 'fas fa-users-cog', 0, 'y', '2021-10-31 10:01:15'),
(3, 'Kelola Menu', 'superadmin/menu', 'fas fa-ellipsis-v', 0, 'y', '2021-10-31 10:01:15'),
(4, 'Kelola Hak Akses', 'superadmin/access', 'fab fa-accessible-icon', 0, 'y', '2021-10-31 10:01:15'),
(14, 'Mata Pelajaran', 'admin/mapel', 'fas fa-book', 17, 'y', '2021-11-03 05:19:56'),
(15, 'Guru', 'admin/guru', 'fas fa-user-tie', 17, 'y', '2021-11-03 05:21:24'),
(16, 'Kelas', 'admin/kelas', 'fas fa-school', 17, 'y', '2021-11-03 05:22:34'),
(17, 'Data Input', '-', 'fas fa-archive', 0, 'y', '2021-11-03 09:15:03'),
(18, 'Penjadwalan', 'admin/jadwal', 'fas fa-calendar', 0, 'y', '2021-12-06 02:32:58');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_user`
--

CREATE TABLE `tbl_user` (
  `id_user` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `nama_pengguna` varchar(255) NOT NULL DEFAULT 'namapengguna',
  `password` varchar(255) NOT NULL,
  `user_level` int(11) NOT NULL,
  `date_registration` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `picture_profile` varchar(255) NOT NULL DEFAULT 'default.png'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tbl_user`
--

INSERT INTO `tbl_user` (`id_user`, `username`, `nama_pengguna`, `password`, `user_level`, `date_registration`, `picture_profile`) VALUES
(1, 'superadmin', 'MFYS', 'admin', 1, '2021-10-31 06:14:31', 'b9f85df67f85fe05c3768a826ad20952.jpg'),
(10, 'adminakademik', 'Akademik', '$2y$10$ab.PAnHmGnWS6aWMwjWMOeklI1ttbIz39TqmDHkYn5HT3iXmmYnn6', 4, '2021-11-03 05:24:16', '7fb9134919ff83cc2e1b2da4891e2aae.jpeg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_user_level`
--

CREATE TABLE `tbl_user_level` (
  `id` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `date_created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `date_modificate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tbl_user_level`
--

INSERT INTO `tbl_user_level` (`id`, `nama`, `date_created`, `date_modificate`) VALUES
(1, 'Super Admin', '2021-10-31 05:38:30', '2021-10-31 05:38:30'),
(4, 'Wakil Kepala Sekolah (Kurikulum)', '2021-11-01 09:52:20', '2021-11-01 09:52:20');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tbl_ajar`
--
ALTER TABLE `tbl_ajar`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tbl_aktivitas`
--
ALTER TABLE `tbl_aktivitas`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tbl_guru`
--
ALTER TABLE `tbl_guru`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tbl_hak_akses`
--
ALTER TABLE `tbl_hak_akses`
  ADD PRIMARY KEY (`id_hak_akses`);

--
-- Indeks untuk tabel `tbl_hari`
--
ALTER TABLE `tbl_hari`
  ADD PRIMARY KEY (`hari_id`);

--
-- Indeks untuk tabel `tbl_jadwal`
--
ALTER TABLE `tbl_jadwal`
  ADD PRIMARY KEY (`id_jadwal`);

--
-- Indeks untuk tabel `tbl_jam`
--
ALTER TABLE `tbl_jam`
  ADD PRIMARY KEY (`jam_id`);

--
-- Indeks untuk tabel `tbl_kelas`
--
ALTER TABLE `tbl_kelas`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tbl_mapel`
--
ALTER TABLE `tbl_mapel`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tbl_menu`
--
ALTER TABLE `tbl_menu`
  ADD PRIMARY KEY (`id_menu`);

--
-- Indeks untuk tabel `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`id_user`);

--
-- Indeks untuk tabel `tbl_user_level`
--
ALTER TABLE `tbl_user_level`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tbl_ajar`
--
ALTER TABLE `tbl_ajar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=359;

--
-- AUTO_INCREMENT untuk tabel `tbl_aktivitas`
--
ALTER TABLE `tbl_aktivitas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1032;

--
-- AUTO_INCREMENT untuk tabel `tbl_guru`
--
ALTER TABLE `tbl_guru`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=84;

--
-- AUTO_INCREMENT untuk tabel `tbl_hak_akses`
--
ALTER TABLE `tbl_hak_akses`
  MODIFY `id_hak_akses` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT untuk tabel `tbl_hari`
--
ALTER TABLE `tbl_hari`
  MODIFY `hari_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT untuk tabel `tbl_jadwal`
--
ALTER TABLE `tbl_jadwal`
  MODIFY `id_jadwal` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=436;

--
-- AUTO_INCREMENT untuk tabel `tbl_jam`
--
ALTER TABLE `tbl_jam`
  MODIFY `jam_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `tbl_kelas`
--
ALTER TABLE `tbl_kelas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT untuk tabel `tbl_mapel`
--
ALTER TABLE `tbl_mapel`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=80;

--
-- AUTO_INCREMENT untuk tabel `tbl_menu`
--
ALTER TABLE `tbl_menu`
  MODIFY `id_menu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT untuk tabel `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `tbl_user_level`
--
ALTER TABLE `tbl_user_level`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
