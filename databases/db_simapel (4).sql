-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Waktu pembuatan: 12 Feb 2023 pada 01.10
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
(273, 19, 16),
(274, 19, 17),
(275, 19, 15),
(276, 19, 48),
(277, 73, 72),
(278, 73, 73),
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
(358, 7, 37),
(359, 21, 20),
(360, 21, 21),
(361, 21, 53),
(362, 48, 49),
(363, 48, 50),
(364, 48, 51),
(365, 48, 52),
(366, 74, 70),
(367, 74, 71),
(368, 74, 83);

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
(1014, 237, 38),
(1015, 241, 38),
(1016, 351, 38),
(1017, 249, 38),
(1018, 256, 38),
(1019, 259, 38),
(1020, 274, 38),
(1021, 270, 38),
(1022, 272, 38),
(1023, 59, 38),
(1024, 60, 38),
(1025, 61, 38),
(1026, 62, 38),
(1027, 95, 38),
(1030, 235, 57),
(1031, 241, 57),
(1038, 239, 58),
(1039, 243, 58),
(1040, 352, 58),
(1041, 253, 58),
(1042, 275, 58),
(1043, 147, 58),
(1044, 361, 58),
(1045, 172, 58),
(1046, 342, 58),
(1047, 176, 58),
(1048, 180, 58),
(1049, 239, 59),
(1050, 243, 59),
(1051, 352, 59),
(1052, 253, 59),
(1053, 275, 59),
(1054, 147, 59),
(1055, 361, 59),
(1056, 173, 59),
(1057, 343, 59),
(1058, 176, 59),
(1059, 181, 59),
(1060, 239, 60),
(1061, 243, 60),
(1062, 352, 60),
(1063, 253, 60),
(1064, 275, 60),
(1065, 147, 60),
(1066, 361, 60),
(1067, 172, 60),
(1068, 342, 60),
(1069, 176, 60),
(1070, 180, 60),
(1071, 239, 61),
(1072, 243, 61),
(1073, 352, 61),
(1074, 248, 61),
(1075, 275, 61),
(1076, 147, 61),
(1077, 359, 61),
(1078, 184, 61),
(1079, 346, 61),
(1080, 188, 61),
(1081, 190, 61),
(1082, 239, 62),
(1083, 242, 62),
(1084, 352, 62),
(1085, 248, 62),
(1086, 276, 62),
(1087, 147, 62),
(1088, 359, 62),
(1089, 185, 62),
(1090, 347, 62),
(1091, 189, 62),
(1092, 191, 62),
(1093, 239, 63),
(1094, 243, 63),
(1095, 352, 63),
(1096, 253, 63),
(1097, 275, 63),
(1098, 148, 63),
(1099, 361, 63),
(1100, 182, 63),
(1101, 183, 63),
(1102, 239, 64),
(1103, 243, 64),
(1104, 352, 64),
(1105, 253, 64),
(1106, 275, 64),
(1107, 148, 64),
(1108, 361, 64),
(1109, 182, 64),
(1110, 183, 64),
(1111, 239, 65),
(1112, 243, 65),
(1113, 352, 65),
(1114, 253, 65),
(1115, 275, 65),
(1116, 148, 65),
(1117, 361, 65),
(1118, 182, 65),
(1119, 183, 65),
(1131, 235, 67),
(1132, 243, 67),
(1133, 350, 67),
(1134, 252, 67),
(1135, 276, 67),
(1136, 146, 67),
(1137, 359, 67),
(1138, 322, 67),
(1139, 328, 67),
(1140, 334, 67),
(1141, 316, 67),
(1142, 235, 68),
(1143, 242, 68),
(1144, 350, 68),
(1145, 252, 68),
(1146, 276, 68),
(1147, 146, 68),
(1148, 359, 68),
(1149, 323, 68),
(1150, 329, 68),
(1151, 335, 68),
(1152, 317, 68),
(1153, 238, 69),
(1154, 243, 69),
(1155, 350, 69),
(1156, 252, 69),
(1157, 276, 69),
(1158, 146, 69),
(1159, 359, 69),
(1160, 292, 69),
(1161, 294, 69),
(1162, 296, 69),
(1163, 155, 69),
(1164, 235, 70),
(1165, 243, 70),
(1166, 350, 70),
(1167, 252, 70),
(1168, 276, 70),
(1169, 149, 70),
(1170, 359, 70),
(1171, 291, 70),
(1172, 151, 70),
(1173, 238, 71),
(1174, 243, 71),
(1175, 350, 71),
(1176, 252, 71),
(1177, 276, 71),
(1178, 149, 71),
(1179, 359, 71),
(1180, 291, 71),
(1181, 151, 71),
(1182, 240, 72),
(1183, 244, 72),
(1184, 230, 72),
(1185, 255, 72),
(1186, 282, 72),
(1187, 278, 72),
(1188, 344, 72),
(1189, 285, 72),
(1190, 287, 72),
(1191, 240, 73),
(1192, 244, 73),
(1193, 230, 73),
(1194, 255, 73),
(1195, 282, 73),
(1196, 278, 73),
(1197, 345, 73),
(1198, 286, 73),
(1199, 288, 73),
(1200, 240, 74),
(1201, 244, 74),
(1202, 230, 74),
(1203, 255, 74),
(1204, 282, 74),
(1205, 278, 74),
(1206, 344, 74),
(1207, 285, 74),
(1208, 287, 74),
(1209, 240, 75),
(1210, 244, 75),
(1211, 231, 75),
(1212, 248, 75),
(1213, 282, 75),
(1214, 278, 75),
(1215, 348, 75),
(1216, 289, 75),
(1217, 290, 75),
(1218, 240, 76),
(1219, 244, 76),
(1220, 231, 76),
(1221, 248, 76),
(1222, 282, 76),
(1223, 277, 76),
(1224, 348, 76),
(1225, 289, 76),
(1226, 290, 76),
(1227, 240, 77),
(1228, 244, 77),
(1229, 230, 77),
(1230, 255, 77),
(1231, 281, 77),
(1232, 278, 77),
(1233, 233, 77),
(1234, 234, 77),
(1235, 240, 78),
(1236, 244, 78),
(1237, 230, 78),
(1238, 255, 78),
(1239, 281, 78),
(1240, 278, 78),
(1241, 233, 78),
(1242, 234, 78),
(1243, 240, 79),
(1244, 244, 79),
(1245, 230, 79),
(1246, 255, 79),
(1247, 281, 79),
(1248, 278, 79),
(1249, 233, 79),
(1250, 234, 79),
(1251, 238, 80),
(1252, 244, 80),
(1253, 231, 80),
(1254, 254, 80),
(1255, 281, 80),
(1256, 277, 80),
(1257, 324, 80),
(1258, 330, 80),
(1259, 336, 80),
(1260, 318, 80),
(1261, 238, 81),
(1262, 242, 81),
(1263, 231, 81),
(1264, 254, 81),
(1265, 281, 81),
(1266, 277, 81),
(1267, 325, 81),
(1268, 331, 81),
(1269, 337, 81),
(1270, 319, 81),
(1271, 238, 82),
(1272, 244, 82),
(1273, 231, 82),
(1274, 254, 82),
(1275, 283, 82),
(1276, 277, 82),
(1277, 326, 82),
(1278, 332, 82),
(1279, 338, 82),
(1280, 319, 82),
(1281, 238, 83),
(1282, 242, 83),
(1283, 231, 83),
(1284, 254, 83),
(1285, 283, 83),
(1286, 277, 83),
(1287, 155, 83),
(1288, 293, 83),
(1289, 295, 83),
(1290, 297, 83),
(1291, 238, 84),
(1292, 244, 84),
(1293, 231, 84),
(1294, 254, 84),
(1295, 283, 84),
(1296, 277, 84),
(1297, 291, 84),
(1298, 284, 84),
(1299, 232, 84),
(1300, 238, 85),
(1301, 242, 85),
(1302, 231, 85),
(1303, 254, 85),
(1304, 283, 85),
(1305, 277, 85),
(1306, 291, 85),
(1307, 284, 85),
(1308, 232, 85),
(1320, 235, 66),
(1321, 243, 66),
(1322, 350, 66),
(1323, 252, 66),
(1324, 276, 66),
(1325, 146, 66),
(1326, 359, 66),
(1327, 321, 66),
(1328, 327, 66),
(1329, 333, 66),
(1330, 315, 66);

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

--
-- Dumping data untuk tabel `tbl_jadwal`
--

INSERT INTO `tbl_jadwal` (`id_jadwal`, `id_ajar`, `id_kelas`, `hari`) VALUES
(2309, 60, 33, 'Senin'),
(2310, 58, 33, 'Senin'),
(2311, 260, 33, 'Senin'),
(2312, 237, 33, 'Selasa'),
(2313, 62, 33, 'Selasa'),
(2314, 95, 33, 'Selasa'),
(2315, 61, 33, 'Rabu'),
(2316, 256, 33, 'Rabu'),
(2317, 270, 33, 'Rabu'),
(2318, 274, 33, 'Kamis'),
(2319, 351, 33, 'Kamis'),
(2320, 241, 33, 'Kamis'),
(2321, 249, 33, 'Jumat'),
(2322, 60, 34, 'Senin'),
(2323, 58, 34, 'Senin'),
(2324, 260, 34, 'Senin'),
(2325, 62, 34, 'Selasa'),
(2326, 95, 34, 'Selasa'),
(2327, 61, 34, 'Selasa'),
(2328, 235, 34, 'Rabu'),
(2329, 256, 34, 'Rabu'),
(2330, 270, 34, 'Rabu'),
(2331, 274, 34, 'Kamis'),
(2332, 349, 34, 'Kamis'),
(2333, 241, 34, 'Kamis'),
(2334, 249, 34, 'Jumat'),
(2335, 60, 35, 'Senin'),
(2336, 58, 35, 'Senin'),
(2337, 257, 35, 'Senin'),
(2338, 260, 35, 'Selasa'),
(2339, 237, 35, 'Selasa'),
(2340, 62, 35, 'Selasa'),
(2341, 95, 35, 'Rabu'),
(2342, 61, 35, 'Rabu'),
(2343, 270, 35, 'Rabu'),
(2344, 274, 35, 'Kamis'),
(2345, 351, 35, 'Kamis'),
(2346, 241, 35, 'Kamis'),
(2347, 249, 35, 'Jumat'),
(2348, 60, 36, 'Senin'),
(2349, 58, 36, 'Senin'),
(2350, 260, 36, 'Senin'),
(2351, 62, 36, 'Selasa'),
(2352, 95, 36, 'Selasa'),
(2353, 61, 36, 'Selasa'),
(2354, 235, 36, 'Rabu'),
(2355, 256, 36, 'Rabu'),
(2356, 270, 36, 'Rabu'),
(2357, 274, 36, 'Kamis'),
(2358, 351, 36, 'Kamis'),
(2359, 241, 36, 'Kamis'),
(2360, 249, 36, 'Jumat'),
(2361, 60, 37, 'Senin'),
(2362, 259, 37, 'Senin'),
(2363, 59, 37, 'Senin'),
(2364, 237, 37, 'Selasa'),
(2365, 62, 37, 'Selasa'),
(2366, 95, 37, 'Selasa'),
(2367, 61, 37, 'Rabu'),
(2368, 256, 37, 'Rabu'),
(2369, 270, 37, 'Rabu'),
(2370, 274, 37, 'Kamis'),
(2371, 351, 37, 'Kamis'),
(2372, 241, 37, 'Kamis'),
(2373, 249, 37, 'Jumat'),
(2374, 60, 38, 'Senin'),
(2375, 259, 38, 'Senin'),
(2376, 59, 38, 'Senin'),
(2377, 237, 38, 'Selasa'),
(2378, 62, 38, 'Selasa'),
(2379, 95, 38, 'Selasa'),
(2380, 61, 38, 'Rabu'),
(2381, 256, 38, 'Rabu'),
(2382, 270, 38, 'Rabu'),
(2383, 274, 38, 'Kamis'),
(2384, 351, 38, 'Kamis'),
(2385, 241, 38, 'Kamis'),
(2386, 249, 38, 'Jumat'),
(2387, 60, 39, 'Senin'),
(2388, 257, 39, 'Senin'),
(2389, 261, 39, 'Senin'),
(2390, 59, 39, 'Selasa'),
(2391, 62, 39, 'Selasa'),
(2392, 95, 39, 'Selasa'),
(2393, 61, 39, 'Rabu'),
(2394, 235, 39, 'Rabu'),
(2395, 270, 39, 'Rabu'),
(2396, 274, 39, 'Kamis'),
(2397, 251, 39, 'Kamis'),
(2398, 241, 39, 'Kamis'),
(2399, 350, 39, 'Jumat'),
(2400, 60, 40, 'Senin'),
(2401, 262, 40, 'Senin'),
(2402, 59, 40, 'Senin'),
(2403, 237, 40, 'Selasa'),
(2404, 62, 40, 'Selasa'),
(2405, 95, 40, 'Selasa'),
(2406, 61, 40, 'Rabu'),
(2407, 256, 40, 'Rabu'),
(2408, 270, 40, 'Rabu'),
(2409, 274, 40, 'Kamis'),
(2410, 251, 40, 'Kamis'),
(2411, 241, 40, 'Kamis'),
(2412, 350, 40, 'Jumat'),
(2413, 60, 41, 'Senin'),
(2414, 262, 41, 'Senin'),
(2415, 59, 41, 'Senin'),
(2416, 237, 41, 'Selasa'),
(2417, 62, 41, 'Selasa'),
(2418, 95, 41, 'Selasa'),
(2419, 61, 41, 'Rabu'),
(2420, 256, 41, 'Rabu'),
(2421, 270, 41, 'Rabu'),
(2422, 274, 41, 'Kamis'),
(2423, 251, 41, 'Kamis'),
(2424, 241, 41, 'Kamis'),
(2425, 350, 41, 'Jumat'),
(2426, 92, 42, 'Senin'),
(2427, 236, 42, 'Senin'),
(2428, 274, 42, 'Senin'),
(2429, 94, 42, 'Selasa'),
(2430, 269, 42, 'Selasa'),
(2431, 242, 42, 'Selasa'),
(2432, 248, 42, 'Rabu'),
(2433, 256, 42, 'Rabu'),
(2434, 356, 42, 'Rabu'),
(2435, 351, 42, 'Kamis'),
(2436, 261, 42, 'Kamis'),
(2437, 79, 42, 'Kamis'),
(2438, 86, 42, 'Jumat'),
(2439, 85, 43, 'Senin'),
(2440, 274, 43, 'Senin'),
(2441, 241, 43, 'Senin'),
(2442, 248, 43, 'Selasa'),
(2443, 261, 43, 'Selasa'),
(2444, 79, 43, 'Selasa'),
(2445, 349, 43, 'Rabu'),
(2446, 92, 43, 'Rabu'),
(2447, 242, 43, 'Rabu'),
(2448, 269, 43, 'Kamis'),
(2449, 94, 43, 'Kamis'),
(2450, 357, 43, 'Kamis'),
(2451, 236, 43, 'Jumat'),
(2452, 92, 44, 'Senin'),
(2453, 269, 44, 'Senin'),
(2454, 273, 44, 'Senin'),
(2455, 248, 44, 'Selasa'),
(2456, 79, 44, 'Selasa'),
(2457, 261, 44, 'Selasa'),
(2458, 235, 44, 'Rabu'),
(2459, 358, 44, 'Rabu'),
(2460, 85, 44, 'Rabu'),
(2461, 241, 44, 'Kamis'),
(2462, 349, 44, 'Kamis'),
(2463, 242, 44, 'Kamis'),
(2464, 94, 44, 'Jumat'),
(2465, 236, 45, 'Senin'),
(2466, 269, 45, 'Senin'),
(2467, 259, 45, 'Senin'),
(2468, 85, 45, 'Selasa'),
(2469, 241, 45, 'Selasa'),
(2470, 273, 45, 'Selasa'),
(2471, 78, 45, 'Rabu'),
(2472, 93, 45, 'Rabu'),
(2473, 256, 45, 'Rabu'),
(2474, 355, 45, 'Kamis'),
(2475, 91, 45, 'Kamis'),
(2476, 349, 45, 'Kamis'),
(2477, 250, 45, 'Jumat'),
(2478, 349, 46, 'Senin'),
(2479, 273, 46, 'Senin'),
(2480, 242, 46, 'Senin'),
(2481, 236, 46, 'Selasa'),
(2482, 354, 46, 'Selasa'),
(2483, 84, 46, 'Selasa'),
(2484, 75, 46, 'Rabu'),
(2485, 257, 46, 'Rabu'),
(2486, 269, 46, 'Rabu'),
(2487, 250, 46, 'Kamis'),
(2488, 77, 46, 'Kamis'),
(2489, 259, 46, 'Kamis'),
(2490, 88, 46, 'Jumat'),
(2491, 83, 47, 'Senin'),
(2492, 74, 47, 'Senin'),
(2493, 76, 47, 'Senin'),
(2494, 269, 47, 'Selasa'),
(2495, 250, 47, 'Selasa'),
(2496, 353, 47, 'Selasa'),
(2497, 87, 47, 'Rabu'),
(2498, 236, 47, 'Rabu'),
(2499, 242, 47, 'Rabu'),
(2500, 273, 47, 'Kamis'),
(2501, 257, 47, 'Kamis'),
(2502, 262, 47, 'Kamis'),
(2503, 349, 47, 'Jumat'),
(2504, 180, 58, 'Senin'),
(2505, 275, 58, 'Senin'),
(2506, 243, 58, 'Selasa'),
(2507, 342, 58, 'Selasa'),
(2508, 176, 58, 'Rabu'),
(2509, 361, 58, 'Rabu'),
(2510, 352, 58, 'Rabu'),
(2511, 172, 58, 'Kamis'),
(2512, 239, 58, 'Kamis'),
(2513, 253, 58, 'Jumat'),
(2514, 275, 59, 'Senin'),
(2515, 181, 59, 'Senin'),
(2516, 173, 59, 'Selasa'),
(2517, 361, 59, 'Selasa'),
(2518, 343, 59, 'Rabu'),
(2519, 239, 59, 'Rabu'),
(2520, 253, 59, 'Kamis'),
(2521, 352, 59, 'Kamis'),
(2522, 243, 59, 'Kamis'),
(2523, 176, 59, 'Jumat'),
(2524, 275, 60, 'Senin'),
(2525, 239, 60, 'Senin'),
(2526, 352, 60, 'Senin'),
(2527, 342, 60, 'Selasa'),
(2528, 243, 60, 'Selasa'),
(2529, 172, 60, 'Rabu'),
(2530, 361, 60, 'Rabu'),
(2531, 176, 60, 'Kamis'),
(2532, 180, 60, 'Kamis'),
(2533, 253, 60, 'Jumat'),
(2534, 352, 61, 'Senin'),
(2535, 190, 61, 'Senin'),
(2536, 184, 61, 'Selasa'),
(2537, 359, 61, 'Selasa'),
(2538, 239, 61, 'Rabu'),
(2539, 275, 61, 'Rabu'),
(2540, 243, 61, 'Rabu'),
(2541, 248, 61, 'Kamis'),
(2542, 188, 61, 'Kamis'),
(2543, 346, 61, 'Jumat'),
(2544, 185, 62, 'Senin'),
(2545, 242, 62, 'Senin'),
(2546, 276, 62, 'Selasa'),
(2547, 191, 62, 'Selasa'),
(2548, 352, 62, 'Rabu'),
(2549, 248, 62, 'Rabu'),
(2550, 359, 62, 'Rabu'),
(2551, 239, 62, 'Kamis'),
(2552, 347, 62, 'Kamis'),
(2553, 189, 62, 'Jumat'),
(2554, 361, 63, 'Senin'),
(2555, 275, 63, 'Senin'),
(2556, 352, 63, 'Senin'),
(2557, 239, 63, 'Selasa'),
(2558, 253, 63, 'Selasa'),
(2559, 243, 63, 'Selasa'),
(2560, 183, 63, 'Rabu'),
(2561, 182, 63, 'Kamis'),
(2562, 361, 64, 'Senin'),
(2563, 275, 64, 'Senin'),
(2564, 352, 64, 'Senin'),
(2565, 239, 64, 'Selasa'),
(2566, 253, 64, 'Selasa'),
(2567, 243, 64, 'Selasa'),
(2568, 183, 64, 'Rabu'),
(2569, 182, 64, 'Kamis'),
(2570, 361, 65, 'Senin'),
(2571, 275, 65, 'Senin'),
(2572, 352, 65, 'Senin'),
(2573, 239, 65, 'Selasa'),
(2574, 253, 65, 'Selasa'),
(2575, 243, 65, 'Selasa'),
(2576, 183, 65, 'Rabu'),
(2577, 182, 65, 'Kamis'),
(2578, 359, 66, 'Senin'),
(2579, 276, 66, 'Senin'),
(2580, 235, 66, 'Senin'),
(2581, 333, 66, 'Selasa'),
(2582, 315, 66, 'Selasa'),
(2583, 321, 66, 'Rabu'),
(2584, 243, 66, 'Rabu'),
(2585, 252, 66, 'Kamis'),
(2586, 350, 66, 'Kamis'),
(2587, 327, 66, 'Jumat'),
(2588, 359, 67, 'Senin'),
(2589, 276, 67, 'Senin'),
(2590, 235, 67, 'Senin'),
(2591, 334, 67, 'Selasa'),
(2592, 316, 67, 'Selasa'),
(2593, 322, 67, 'Rabu'),
(2594, 243, 67, 'Rabu'),
(2595, 252, 67, 'Kamis'),
(2596, 350, 67, 'Kamis'),
(2597, 328, 67, 'Jumat'),
(2598, 359, 68, 'Senin'),
(2599, 276, 68, 'Senin'),
(2600, 235, 68, 'Senin'),
(2601, 335, 68, 'Selasa'),
(2602, 317, 68, 'Selasa'),
(2603, 323, 68, 'Rabu'),
(2604, 242, 68, 'Rabu'),
(2605, 252, 68, 'Kamis'),
(2606, 350, 68, 'Kamis'),
(2607, 329, 68, 'Jumat'),
(2608, 359, 69, 'Senin'),
(2609, 276, 69, 'Senin'),
(2610, 238, 69, 'Senin'),
(2611, 296, 69, 'Selasa'),
(2612, 155, 69, 'Selasa'),
(2613, 292, 69, 'Rabu'),
(2614, 243, 69, 'Rabu'),
(2615, 252, 69, 'Kamis'),
(2616, 350, 69, 'Kamis'),
(2617, 294, 69, 'Jumat'),
(2618, 350, 70, 'Senin'),
(2619, 235, 70, 'Senin'),
(2620, 359, 70, 'Senin'),
(2621, 252, 70, 'Selasa'),
(2622, 276, 70, 'Selasa'),
(2623, 243, 70, 'Selasa'),
(2624, 291, 70, 'Rabu'),
(2625, 151, 70, 'Kamis'),
(2626, 359, 71, 'Senin'),
(2627, 276, 71, 'Senin'),
(2628, 252, 71, 'Senin'),
(2629, 243, 71, 'Selasa'),
(2630, 350, 71, 'Selasa'),
(2631, 238, 71, 'Selasa'),
(2632, 291, 71, 'Rabu'),
(2633, 151, 71, 'Kamis'),
(2634, 240, 72, 'Senin'),
(2635, 344, 72, 'Senin'),
(2636, 285, 72, 'Selasa'),
(2637, 244, 72, 'Selasa'),
(2638, 278, 72, 'Rabu'),
(2639, 230, 72, 'Rabu'),
(2640, 287, 72, 'Rabu'),
(2641, 255, 72, 'Kamis'),
(2642, 278, 73, 'Senin'),
(2643, 244, 73, 'Senin'),
(2644, 240, 73, 'Senin'),
(2645, 288, 73, 'Selasa'),
(2646, 345, 73, 'Selasa'),
(2647, 230, 73, 'Rabu'),
(2648, 286, 73, 'Rabu'),
(2649, 255, 73, 'Kamis'),
(2650, 285, 74, 'Senin'),
(2651, 230, 74, 'Senin'),
(2652, 255, 74, 'Selasa'),
(2653, 287, 74, 'Selasa'),
(2654, 244, 74, 'Selasa'),
(2655, 344, 74, 'Rabu'),
(2656, 240, 74, 'Rabu'),
(2657, 278, 74, 'Kamis'),
(2658, 348, 75, 'Senin'),
(2659, 240, 75, 'Senin'),
(2660, 289, 75, 'Selasa'),
(2661, 244, 75, 'Selasa'),
(2662, 290, 75, 'Rabu'),
(2663, 231, 75, 'Rabu'),
(2664, 278, 75, 'Kamis'),
(2665, 248, 75, 'Kamis'),
(2666, 244, 76, 'Senin'),
(2667, 290, 76, 'Senin'),
(2668, 289, 76, 'Selasa'),
(2669, 231, 76, 'Selasa'),
(2670, 348, 76, 'Rabu'),
(2671, 240, 76, 'Rabu'),
(2672, 277, 76, 'Kamis'),
(2673, 248, 76, 'Kamis'),
(2674, 230, 77, 'Senin'),
(2675, 240, 77, 'Senin'),
(2676, 255, 77, 'Senin'),
(2677, 233, 77, 'Selasa'),
(2678, 234, 77, 'Rabu'),
(2679, 244, 77, 'Kamis'),
(2680, 278, 77, 'Kamis'),
(2681, 230, 78, 'Senin'),
(2682, 240, 78, 'Senin'),
(2683, 255, 78, 'Senin'),
(2684, 233, 78, 'Selasa'),
(2685, 234, 78, 'Rabu'),
(2686, 244, 78, 'Kamis'),
(2687, 278, 78, 'Kamis'),
(2688, 230, 79, 'Senin'),
(2689, 240, 79, 'Senin'),
(2690, 255, 79, 'Senin'),
(2691, 233, 79, 'Selasa'),
(2692, 234, 79, 'Rabu'),
(2693, 244, 79, 'Kamis'),
(2694, 278, 79, 'Kamis'),
(2695, 324, 80, 'Senin'),
(2696, 244, 80, 'Senin'),
(2697, 318, 80, 'Selasa'),
(2698, 238, 80, 'Selasa'),
(2699, 336, 80, 'Rabu'),
(2700, 254, 80, 'Rabu'),
(2701, 231, 80, 'Kamis'),
(2702, 330, 80, 'Kamis'),
(2703, 277, 80, 'Jumat'),
(2704, 231, 81, 'Senin'),
(2705, 325, 81, 'Senin'),
(2706, 254, 81, 'Selasa'),
(2707, 337, 81, 'Selasa'),
(2708, 238, 81, 'Rabu'),
(2709, 319, 81, 'Rabu'),
(2710, 242, 81, 'Kamis'),
(2711, 331, 81, 'Kamis'),
(2712, 277, 81, 'Jumat'),
(2713, 319, 82, 'Senin'),
(2714, 277, 82, 'Senin'),
(2715, 238, 82, 'Selasa'),
(2716, 332, 82, 'Selasa'),
(2717, 326, 82, 'Rabu'),
(2718, 244, 82, 'Rabu'),
(2719, 338, 82, 'Kamis'),
(2720, 254, 82, 'Kamis'),
(2721, 231, 82, 'Jumat'),
(2722, 242, 83, 'Senin'),
(2723, 293, 83, 'Senin'),
(2724, 155, 83, 'Selasa'),
(2725, 238, 83, 'Selasa'),
(2726, 254, 83, 'Rabu'),
(2727, 297, 83, 'Rabu'),
(2728, 231, 83, 'Kamis'),
(2729, 295, 83, 'Kamis'),
(2730, 277, 83, 'Jumat'),
(2731, 231, 84, 'Senin'),
(2732, 238, 84, 'Senin'),
(2733, 284, 84, 'Senin'),
(2734, 232, 84, 'Selasa'),
(2735, 244, 84, 'Selasa'),
(2736, 254, 84, 'Rabu'),
(2737, 277, 84, 'Rabu'),
(2738, 291, 84, 'Kamis'),
(2739, 231, 85, 'Senin'),
(2740, 238, 85, 'Senin'),
(2741, 284, 85, 'Senin'),
(2742, 232, 85, 'Selasa'),
(2743, 242, 85, 'Selasa'),
(2744, 254, 85, 'Rabu'),
(2745, 277, 85, 'Rabu'),
(2746, 291, 85, 'Kamis');

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
(38, 10, 'MULTIMEDIA (C)', 'MMC', 'Teknologi'),
(39, 10, 'REKAYASA PERANGKAT LUNAK (A)', 'RPLA', 'Teknologi'),
(40, 10, 'REKAYASA PERANGKAT LUNAK (B)', 'RPLB', 'Teknologi'),
(41, 10, 'REKAYASA PERANGKAT LUNAK (C)', 'RPLC', 'Teknologi'),
(42, 10, 'KRIYA TEKSTIL (A)', 'KTA', 'Kriya'),
(43, 10, 'KRIYA TEKSTIL (B)', 'KTB', 'Kriya'),
(44, 10, 'KRIYA TEKSTIL (C)', 'KTC', 'Kriya'),
(45, 10, 'KRIYA KAYU', 'KK', 'Kriya'),
(46, 10, 'DESAIN KOMUNIKASI VISUAL (A)', 'DKVA', 'Kriya'),
(47, 10, 'DESAIN KOMUNIKASI VISUAL (B)', 'DKVB', 'Kriya'),
(58, 11, 'TEKNIK KOMPUTER JARINGAN (A)', 'TKJA', 'Teknologi'),
(59, 11, 'TEKNIK KOMPUTER JARINGAN (B)', 'TKJB', 'Teknologi'),
(60, 11, 'TEKNIK KOMPUTER JARINGAN (C)', 'TKJC', 'Teknologi'),
(61, 11, 'REKAYASA PERANGKAT LUNAK (A)', 'RPLA', 'Teknologi'),
(62, 11, 'REKAYASA PERANGKAT LUNAK (B)', 'RPLB', 'Teknologi'),
(63, 11, 'MULTIMEDIA (A)', 'MMA', 'Teknologi'),
(64, 11, 'MULTIMEDIA (B)', 'MMB', 'Teknologi'),
(65, 11, 'MULTIMEDIA (C)', 'MMC', 'Teknologi'),
(66, 11, 'KRIYA TEKSTIL (A)', 'KTA', 'Kriya'),
(67, 11, 'KRIYA TEKSTIL (B)', 'KTB', 'Teknologi'),
(68, 11, 'KRIYA TEKSTIL (C)', 'KTC', 'Teknologi'),
(69, 11, 'KRIYA KAYU', 'KK', 'Teknologi'),
(70, 11, 'DESAIN KOMUNIKASI VISUAL (A)', 'DKVA', 'Teknologi'),
(71, 11, 'DESAIN KOMUNIKASI VISUAL (B)', 'DKVB', 'Teknologi'),
(72, 12, 'TEKNIK KOMPUTER JARINGAN (A)', 'TKJA', 'Teknologi'),
(73, 12, 'TEKNIK KOMPUTER JARINGAN (B)', 'TKJB', 'Teknologi'),
(74, 12, 'TEKNIK KOMPUTER JARINGAN (C)', 'TKJC', 'Teknologi'),
(75, 12, 'REKAYASA PERANGKAT LUNAK (A)', 'RPLA', 'Teknologi'),
(76, 12, 'REKAYASA PERANGKAT LUNAK (B)', 'RPLB', 'Teknologi'),
(77, 12, 'MULTIMEDIA (A)', 'MMA', 'Teknologi'),
(78, 12, 'MULTIMEDIA (B)', 'MMB', 'Teknologi'),
(79, 12, 'MULTIMEDIA (C)', 'MMC', 'Teknologi'),
(80, 12, 'KRIYA TEKSTIL (A)', 'KTA', 'Kriya'),
(81, 12, 'KRIYA TEKSTIL (B)', 'KTB', 'Kriya'),
(82, 12, 'KRIYA TEKSTIL (C)', 'KTC', 'Kriya'),
(83, 12, 'KRIYA KAYU', 'KK', 'Kriya'),
(84, 12, 'DESAIN KOMUNIKASI VISUAL (A)', 'DKVA', 'Kriya'),
(85, 12, 'DESAIN KOMUNIKASI VISUAL (B)', 'DKVB', 'Kriya');

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
(48, 'M24', 'Produk Kreatif & KWU', 3, ''),
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
(74, 'M50', 'Produk Kreatif & KWU (XII)', 4, ''),
(75, 'M51', 'Fotografi (XII)', 4, ''),
(76, 'M52', 'Adm Sistem Jaringan (XII)', 7, ''),
(77, 'M53', 'Teknik Layanan Jaringan (XII)', 3, ''),
(78, 'M54', 'Pemrograman Berorientasi Objek (XII)', 7, ''),
(79, 'M55', 'Pemrograman Web & Pemrograman Bergerak (XII)', 7, ''),
(80, 'sda', 'sd', 2, '');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=369;

--
-- AUTO_INCREMENT untuk tabel `tbl_aktivitas`
--
ALTER TABLE `tbl_aktivitas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1331;

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
  MODIFY `id_jadwal` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2747;

--
-- AUTO_INCREMENT untuk tabel `tbl_jam`
--
ALTER TABLE `tbl_jam`
  MODIFY `jam_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `tbl_kelas`
--
ALTER TABLE `tbl_kelas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=86;

--
-- AUTO_INCREMENT untuk tabel `tbl_mapel`
--
ALTER TABLE `tbl_mapel`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
