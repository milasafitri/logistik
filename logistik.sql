-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Sep 03, 2018 at 05:17 AM
-- Server version: 10.1.31-MariaDB
-- PHP Version: 7.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `logistik`
--

-- --------------------------------------------------------

--
-- Table structure for table `app_harga_pengiriman`
--

CREATE TABLE `app_harga_pengiriman` (
  `id_harga` int(11) NOT NULL,
  `id_kota` int(11) NOT NULL,
  `harga_pengiriman` decimal(12,0) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `app_kota`
--

CREATE TABLE `app_kota` (
  `id_kota` int(11) NOT NULL,
  `id_provinsi` int(11) NOT NULL,
  `kota` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `app_kota`
--

INSERT INTO `app_kota` (`id_kota`, `id_provinsi`, `kota`) VALUES
(1, 17, 'Kabupaten Halmahera Utara'),
(2, 18, 'Kabupaten Pekalongan'),
(3, 31, 'Kabupaten Aceh Barat'),
(4, 27, 'Kota Cirebon'),
(5, 22, 'Kabupaten Wajo'),
(6, 22, 'Kabupaten Jeneponto'),
(7, 10, 'Kabupaten Gorontalo Utara'),
(8, 13, 'Kabupaten Batu Bara'),
(9, 4, 'Kabupaten Supiori'),
(10, 9, 'Kabupaten Dompu'),
(11, 16, 'Kabupaten Malinau'),
(12, 30, 'Kota Administrasi Jakarta Barat'),
(13, 29, 'Kabupaten Rote Ndao'),
(14, 27, 'Kabupaten Cianjur'),
(15, 25, 'Kabupaten Serang'),
(16, 13, 'Kota Bitung'),
(17, 27, 'Kota Depok'),
(18, 13, 'Kabupaten Deli Serdang'),
(19, 7, 'Kabupaten Tulang Bawang Barat'),
(20, 22, 'Kabupaten Gowa'),
(21, 31, 'Kabupaten Aceh Jaya'),
(22, 29, 'Kabupaten Sabu Raijua'),
(23, 4, 'Kabupaten Mamberamo Tengah'),
(24, 28, 'Kabupaten Tojo Una-Una'),
(25, 2, 'Kabupaten Buru Selatan'),
(26, 25, 'Kabupaten Tangerang'),
(27, 32, 'Kabupaten Tambrauw'),
(28, 18, 'Kabupaten Temanggung'),
(29, 24, 'Kabupaten Musi Rawas'),
(30, 9, 'Kabupaten Lombok Utara'),
(31, 31, 'Kabupaten Aceh Tengah'),
(32, 2, 'Kabupaten Maluku Barat Daya'),
(33, 32, 'Kabupaten Teluk Wondama'),
(34, 33, 'Kabupaten Pacitan'),
(35, 27, 'Kabupaten Cirebon'),
(36, 8, 'Kota Singkawang'),
(37, 13, 'Kabupaten Asahan'),
(38, 21, 'Kota Pangkal Pinang'),
(39, 27, 'Kabupaten Bogor'),
(40, 31, 'Kabupaten Aceh Selatan'),
(41, 4, 'Kabupaten Lanny Jaya'),
(42, 30, 'Kota Administrasi Jakarta Utara'),
(43, 21, 'Kabupaten Bangka Barat'),
(44, 18, 'Kabupaten Magelang'),
(45, 33, 'Kota Batu'),
(46, 27, 'Kabupaten Sumedang'),
(47, 33, 'Kota Surabaya'),
(48, 6, 'Kota Sawahlunto'),
(49, 24, 'Kabupaten Banyuasin'),
(50, 15, 'Kabupaten Majene'),
(51, 17, 'Kabupaten Pulau Morotai'),
(52, 14, 'Kabupaten Buton'),
(53, 18, 'Kota Salatiga'),
(54, 6, 'Kabupaten Solok'),
(55, 31, 'Kabupaten Aceh Besar'),
(56, 13, 'Kota Manado'),
(57, 8, 'Kabupaten Bengkayang'),
(58, 8, 'Kabupaten Kapuas Hulu'),
(59, 13, 'Kabupaten Humbang Hasundutan'),
(60, 18, 'Kabupaten Kudus'),
(61, 5, 'Kabupaten Rokan Hilir'),
(62, 4, 'Kabupaten Puncak'),
(63, 26, 'Kabupaten Muaro Jambi'),
(64, 24, 'Kota Lubuklinggau'),
(65, 21, 'Kabupaten Belitung Timur'),
(66, 13, 'Kabupaten Kepulauan Siau Tagulandang Biaro'),
(67, 24, 'Kabupaten Ogan Komering Ulu Timur'),
(68, 19, 'Kabupaten Bengkulu Selatan'),
(69, 17, 'Kabupaten Halmahera Timur'),
(70, 33, 'Kabupaten Probolinggo'),
(71, 12, 'Kabupaten Jembrana'),
(72, 18, 'Kabupaten Boyolali'),
(73, 17, 'Kota Ternate'),
(74, 18, 'Kabupaten Cilacap'),
(75, 6, 'Kota Payakumbuh'),
(76, 26, 'Kota Jambi'),
(77, 13, 'Kota Padang Sidempuan'),
(78, 31, 'Kabupaten Pidie'),
(79, 31, 'Kabupaten Aceh Tenggara'),
(80, 33, 'Kabupaten Bondowoso'),
(81, 17, 'Kabupaten Kepulauan Sula'),
(82, 32, 'Kabupaten Raja Ampat'),
(83, 33, 'Kabupaten Ponorogo'),
(84, 10, 'Kabupaten Pohuwato'),
(85, 25, 'Kota Tangerang Selatan'),
(86, 18, 'Kota Magelang'),
(87, 14, 'Kabupaten Kolaka'),
(88, 6, 'Kabupaten Pasaman'),
(89, 20, 'Kabupaten Gunung Kidul'),
(90, 28, 'Kabupaten Buol'),
(91, 33, 'Kabupaten Mojokerto'),
(92, 4, 'Kabupaten Dogiyai'),
(93, 1, 'Kabupaten Gunung Mas'),
(94, 16, 'Kabupaten Tana Tidung'),
(95, 1, 'Kabupaten Katingan'),
(96, 7, 'Kota Metro'),
(97, 21, 'Kabupaten Belitung'),
(98, 24, 'Kabupaten Empat Lawang'),
(99, 6, 'Kabupaten Agam'),
(100, 27, 'Kota Bandung'),
(101, 4, 'Kabupaten Merauke'),
(102, 1, 'Kabupaten Barito Selatan'),
(103, 29, 'Kabupaten Manggarai'),
(104, 4, 'Kabupaten Keerom'),
(105, 33, 'Kabupaten Bangkalan'),
(106, 17, 'Kabupaten Halmahera Selatan'),
(107, 19, 'Kabupaten Rejang Lebong'),
(108, 14, 'Kabupaten Muna'),
(109, 13, 'Kabupaten Nias Selatan'),
(110, 30, 'Kabupaten Administrasi Kepulauan Seribu'),
(111, 33, 'Kabupaten Jombang'),
(112, 23, 'Kabupaten Tabalong'),
(113, 23, 'Kota Banjarbaru'),
(114, 9, 'Kabupaten Sumbawa Barat'),
(115, 2, 'Kota Ambon'),
(116, 24, 'Kabupaten Muara Enim'),
(117, 24, 'Kabupaten Ogan Ilir'),
(118, 15, 'Kabupaten Mamasa'),
(119, 26, 'Kabupaten Sarolangun'),
(120, 23, 'Kabupaten Barito Kuala'),
(121, 13, 'Kabupaten Tapanuli Tengah'),
(122, 12, 'Kabupaten Buleleng'),
(123, 22, 'Kota Makassar'),
(124, 33, 'Kabupaten Pamekasan'),
(125, 19, 'Kabupaten Bengkulu Tengah'),
(126, 18, 'Kabupaten Purworejo'),
(127, 22, 'Kabupaten Sinjai'),
(128, 6, 'Kota Padangpanjang'),
(129, 27, 'Kabupaten Purwakarta'),
(130, 16, 'Kabupaten Nunukan'),
(131, 33, 'Kabupaten Madiun'),
(132, 5, 'Kabupaten Pelalawan'),
(133, 6, 'Kabupaten Dharmasraya'),
(134, 33, 'Kabupaten Sumenep'),
(135, 14, 'Kabupaten Bombana'),
(136, 29, 'Kabupaten Timor Tengah Selatan'),
(137, 33, 'Kota Blitar'),
(138, 18, 'Kabupaten Kendal'),
(139, 3, 'Kabupaten Bintan'),
(140, 26, 'Kabupaten Kerinci'),
(141, 28, 'Kabupaten Toli-Toli'),
(142, 31, 'Kabupaten Aceh Utara'),
(143, 14, 'Kota Kendari'),
(144, 13, 'Kota Tomohon'),
(145, 22, 'Kabupaten Luwu Timur'),
(146, 17, 'Kota Tidore Kepulauan'),
(147, 33, 'Kabupaten Bojonegoro'),
(148, 5, 'Kota Pekanbaru'),
(149, 9, 'Kabupaten Lombok Tengah'),
(150, 28, 'Kabupaten Banggai'),
(151, 3, 'Kabupaten Lingga'),
(152, 31, 'Kabupaten Aceh Timur'),
(153, 31, 'Kabupaten Bener Meriah'),
(154, 18, 'Kabupaten Banyumas'),
(155, 8, 'Kabupaten Sekadau'),
(156, 31, 'Kota Sabang'),
(157, 33, 'Kota Kediri'),
(158, 30, 'Kota Administrasi Jakarta Timur'),
(159, 23, 'Kabupaten Tanah Bumbu'),
(160, 16, 'Kota Samarinda'),
(161, 18, 'Kota Surakarta'),
(162, 29, 'Kabupaten Manggarai Barat'),
(163, 24, 'Kota Pagar Alam'),
(164, 32, 'Kabupaten Teluk Bintuni'),
(165, 13, 'Kota Medan'),
(166, 29, 'Kabupaten Sumba Timur'),
(167, 33, 'Kabupaten Banyuwangi'),
(168, 22, 'Kabupaten Bantaeng'),
(169, 13, 'Kabupaten Nias Barat'),
(170, 13, 'Kabupaten Dairi'),
(171, 19, 'Kabupaten Kaur'),
(172, 13, 'Kabupaten Tapanuli Utara'),
(173, 20, 'Kota Yogyakarta'),
(174, 24, 'Kabupaten Ogan Komering Ulu Selatan'),
(175, 15, 'Kabupaten Mamuju'),
(176, 4, 'Kabupaten Biak Numfor'),
(177, 22, 'Kota Palopo'),
(178, 13, 'Kabupaten Nias Utara'),
(179, 22, 'Kabupaten Soppeng'),
(180, 6, 'Kabupaten Sijunjung'),
(181, 5, 'Kabupaten Bengkalis'),
(182, 1, 'Kabupaten Kapuas'),
(183, 28, 'Kabupaten Donggala'),
(184, 14, 'Kabupaten Konawe Selatan'),
(185, 10, 'Kota Gorontalo'),
(186, 18, 'Kabupaten Pati'),
(187, 31, 'Kabupaten Simeulue'),
(188, 24, 'Kota Prabumulih'),
(189, 2, 'Kabupaten Maluku Tenggara'),
(190, 23, 'Kabupaten Tapin'),
(191, 26, 'Kabupaten Tebo'),
(192, 27, 'Kabupaten Bandung Barat'),
(193, 22, 'Kabupaten Bone'),
(194, 21, 'Kabupaten Bangka Tengah'),
(195, 12, 'Kota Denpasar'),
(196, 23, 'Kabupaten Banjar'),
(197, 30, 'Kota Administrasi Jakarta Pusat'),
(198, 29, 'Kabupaten Sumba Tengah'),
(199, 13, 'Kota Kotamobagu'),
(200, 29, 'Kabupaten Belu'),
(201, 32, 'Kabupaten Maybrat'),
(202, 29, 'Kabupaten Alor'),
(203, 13, 'Kabupaten Nias'),
(204, 28, 'Kabupaten Parigi Moutong'),
(205, 22, 'Kota Parepare'),
(206, 13, 'Kota Binjai'),
(207, 25, 'Kota Cilegon'),
(208, 33, 'Kabupaten Malang'),
(209, 29, 'Kabupaten Timor Tengah Utara'),
(210, 33, 'Kabupaten Lumajang'),
(211, 14, 'Kabupaten Kolaka Utara'),
(212, 27, 'Kabupaten Ciamis'),
(213, 33, 'Kabupaten Trenggalek'),
(214, 9, 'Kabupaten Lombok Timur'),
(215, 33, 'Kabupaten Magetan'),
(216, 5, 'Kabupaten Indragiri Hilir'),
(217, 33, 'Kabupaten Pasuruan'),
(218, 21, 'Kabupaten Bangka'),
(219, 27, 'Kabupaten Bandung'),
(220, 19, 'Kabupaten Seluma'),
(221, 6, 'Kabupaten Kepulauan Mentawai'),
(222, 6, 'Kota Pariaman'),
(223, 17, 'Kabupaten Halmahera Tengah'),
(224, 4, 'Kabupaten Boven Digoel'),
(225, 21, 'Kabupaten Bangka Selatan'),
(226, 19, 'Kabupaten Mukomuko'),
(227, 22, 'Kabupaten Barru'),
(228, 13, 'Kota Tebing Tinggi'),
(229, 18, 'Kabupaten Demak'),
(230, 15, 'Kabupaten Polewali Mandar'),
(231, 26, 'Kabupaten Batang Hari'),
(232, 4, 'Kabupaten Tolikara'),
(233, 18, 'Kabupaten Wonogiri'),
(234, 20, 'Kabupaten Sleman'),
(235, 13, 'Kabupaten Minahasa Utara'),
(236, 13, 'Kabupaten Minahasa Tenggara'),
(237, 19, 'Kabupaten Bengkulu Utara'),
(238, 22, 'Kabupaten Maros'),
(239, 2, 'Kota Tual'),
(240, 32, 'Kabupaten Sorong'),
(241, 29, 'Kabupaten Flores Timur'),
(242, 24, 'Kabupaten Ogan Komering Ilir'),
(243, 5, 'Kabupaten Siak'),
(244, 10, 'Kabupaten Boalemo'),
(245, 7, 'Kota Bandar Lampung'),
(246, 4, 'Kabupaten Mamberamo Raya'),
(247, 13, 'Kota Sibolga'),
(248, 16, 'Kabupaten Paser'),
(249, 13, 'Kabupaten Minahasa Selatan'),
(250, 8, 'Kota Pontianak'),
(251, 4, 'Kabupaten Nabire'),
(252, 24, 'Kota Palembang'),
(253, 22, 'Kabupaten Enrekang'),
(254, 33, 'Kota Malang'),
(255, 27, 'Kota Tasikmalaya'),
(256, 33, 'Kabupaten Lamongan'),
(257, 29, 'Kabupaten Manggarai Timur'),
(258, 1, 'Kabupaten Sukamara'),
(259, 19, 'Kabupaten Lebong'),
(260, 31, 'Kabupaten Gayo Lues'),
(261, 33, 'Kabupaten Jember'),
(262, 8, 'Kabupaten Sanggau'),
(263, 8, 'Kabupaten Ketapang'),
(264, 18, 'Kabupaten Grobogan'),
(265, 7, 'Kabupaten Lampung Tengah'),
(266, 4, 'Kabupaten Pegunungan Bintang'),
(267, 8, 'Kabupaten Kayong Utara'),
(268, 14, 'Kabupaten Buton Utara'),
(269, 1, 'Kabupaten Kotawaringin Barat'),
(270, 18, 'Kabupaten Batang'),
(271, 29, 'Kabupaten Sikka'),
(272, 13, 'Kabupaten Langkat'),
(273, 22, 'Kabupaten Luwu Utara'),
(274, 27, 'Kabupaten Kuningan'),
(275, 32, 'Kota Sorong'),
(276, 1, 'Kota Palangka Raya'),
(277, 16, 'Kota Balikpapan'),
(278, 18, 'Kabupaten Sukoharjo'),
(279, 12, 'Kabupaten Karangasem'),
(280, 4, 'Kabupaten Asmat'),
(281, 27, 'Kota Sukabumi'),
(282, 24, 'Kabupaten Musi Banyuasin'),
(283, 4, 'Kabupaten Nduga'),
(284, 13, 'Kabupaten Simalungun'),
(285, 26, 'Kabupaten Bungo'),
(286, 4, 'Kabupaten Mimika'),
(287, 14, 'Kabupaten Wakatobi'),
(288, 26, 'Kabupaten Merangin'),
(289, 13, 'Kabupaten Bolaang Mongondow'),
(290, 14, 'Kabupaten Konawe'),
(291, 7, 'Kabupaten Tulang Bawang'),
(292, 31, 'Kota Subulussalam'),
(293, 27, 'Kabupaten Indramayu'),
(294, 16, 'Kabupaten Penajam Paser Utara'),
(295, 27, 'Kabupaten Tasikmalaya'),
(296, 18, 'Kabupaten Wonosobo'),
(297, 32, 'Kabupaten Manokwari'),
(298, 27, 'Kota Bekasi'),
(299, 1, 'Kabupaten Seruyan'),
(300, 28, 'Kota Palu'),
(301, 12, 'Kabupaten Gianyar'),
(302, 4, 'Kabupaten Jayawijaya'),
(303, 29, 'Kabupaten Ngada'),
(304, 19, 'Kabupaten Kepahiang'),
(305, 31, 'Kabupaten Aceh Tamiang'),
(306, 13, 'Kabupaten Kepulauan Talaud'),
(307, 22, 'Kabupaten Takalar'),
(308, 33, 'Kabupaten Tuban'),
(309, 6, 'Kabupaten Pesisir Selatan'),
(310, 14, 'Kota Bau-Bau'),
(311, 27, 'Kabupaten Majalengka'),
(312, 7, 'Kabupaten Pringsewu'),
(313, 3, 'Kabupaten Natuna'),
(314, 13, 'Kabupaten Mandailing Natal'),
(315, 12, 'Kabupaten Bangli'),
(316, 13, 'Kabupaten Kepulauan Sangihe'),
(317, 6, 'Kabupaten Pasaman Barat'),
(318, 25, 'Kota Tangerang'),
(319, 31, 'Kabupaten Aceh Singkil'),
(320, 2, 'Kabupaten Maluku Tenggara Barat'),
(321, 1, 'Kabupaten Kotawaringin Timur'),
(322, 4, 'Kabupaten Intan Jaya'),
(323, 29, 'Kabupaten Kupang'),
(324, 4, 'Kota Jayapura'),
(325, 13, 'Kota Pematangsiantar'),
(326, 22, 'Kabupaten Tana Toraja'),
(327, 27, 'Kota Bogor'),
(328, 8, 'Kabupaten Sintang'),
(329, 6, 'Kabupaten Padang Pariaman'),
(330, 13, 'Kabupaten Padang Lawas'),
(331, 16, 'Kota Tarakan'),
(332, 16, 'Kabupaten Kutai Timur'),
(333, 27, 'Kabupaten Subang'),
(334, 13, 'Kabupaten Minahasa'),
(335, 26, 'Kabupaten Tanjung Jabung Timur'),
(336, 18, 'Kota Tegal'),
(337, 28, 'Kabupaten Banggai Kepulauan'),
(338, 18, 'Kabupaten Banjarnegara'),
(339, 7, 'Kabupaten Mesuji'),
(340, 19, 'Kabupaten Benteng'),
(341, 1, 'Kabupaten Barito Timur'),
(342, 13, 'Kabupaten Bolaang Mongondow Selatan'),
(343, 24, 'Kabupaten Lahat'),
(344, 6, 'Kabupaten Lima Puluh Kota'),
(345, 25, 'Kabupaten Lebak'),
(346, 33, 'Kabupaten Tulungagung'),
(347, 4, 'Kabupaten Deiyai'),
(348, 7, 'Kabupaten Pesawaran'),
(349, 6, 'Kabupaten Solok Selatan'),
(350, 18, 'Kabupaten Karanganyar'),
(351, 9, 'Kabupaten Bima'),
(352, 14, 'Kabupaten Konawe Utara'),
(353, 4, 'Kabupaten Paniai'),
(354, 33, 'Kabupaten Situbondo'),
(355, 27, 'Kota Banjar'),
(356, 1, 'Kabupaten Barito Utara'),
(357, 16, 'Kota Bontang'),
(358, 18, 'Kabupaten Brebes'),
(359, 4, 'Kabupaten Sarmi'),
(360, 26, 'Kota Sungai Penuh'),
(361, 13, 'Kabupaten Labuhanbatu Utara'),
(362, 2, 'Kabupaten Seram Bagian Timur'),
(363, 28, 'Kabupaten Poso'),
(364, 6, 'Kabupaten Tanah Datar'),
(365, 7, 'Kabupaten Lampung Utara'),
(366, 13, 'Kabupaten Karo'),
(367, 33, 'Kota Madiun'),
(368, 18, 'Kota Semarang'),
(369, 8, 'Kabupaten Melawi'),
(370, 32, 'Kabupaten Kaimana'),
(371, 1, 'Kabupaten Pulang Pisau'),
(372, 12, 'Kabupaten Klungkung'),
(373, 33, 'Kabupaten Gresik'),
(374, 22, 'Kabupaten Sidenreng Rappang'),
(375, 4, 'Kabupaten Yalimo'),
(376, 10, 'Kabupaten Bone Bolango'),
(377, 9, 'Kabupaten Sumbawa'),
(378, 22, 'Kabupaten Bulukumba'),
(379, 16, 'Kabupaten Bulungan'),
(380, 13, 'Kabupaten Serdang Bedagai'),
(381, 32, 'Kabupaten Sorong Selatan'),
(382, 33, 'Kabupaten Sampang'),
(383, 3, 'Kabupaten Karimun'),
(384, 7, 'Kabupaten Lampung Barat'),
(385, 4, 'Kabupaten Puncak Jaya'),
(386, 33, 'Kota Mojokerto'),
(387, 26, 'Kabupaten Tanjung Jabung Barat'),
(388, 13, 'Kabupaten Labuhanbatu'),
(389, 27, 'Kabupaten Bekasi'),
(390, 29, 'Kabupaten Lembata'),
(391, 3, 'Kota Batam'),
(392, 7, 'Kabupaten Way Kanan'),
(393, 12, 'Kabupaten Badung'),
(394, 13, 'Kabupaten Tapanuli Selatan'),
(395, 29, 'Kabupaten Sumba Barat'),
(396, 18, 'Kabupaten Semarang'),
(397, 18, 'Kabupaten Tegal'),
(398, 4, 'Kabupaten Kepulauan Yapen'),
(399, 29, 'Kota Kupang'),
(400, 22, 'Kabupaten Toraja Utara'),
(401, 5, 'Kabupaten Kepulauan Meranti'),
(402, 9, 'Kota Mataram'),
(403, 2, 'Kabupaten Maluku Tengah'),
(404, 22, 'Kabupaten Kepulauan Selayar'),
(405, 16, 'Kabupaten Kutai Kartanegara'),
(406, 6, 'Kota Padang'),
(407, 9, 'Kota Bima'),
(408, 18, 'Kabupaten Klaten'),
(409, 13, 'Kota Tanjung Balai'),
(410, 23, 'Kabupaten Balangan'),
(411, 22, 'Kabupaten Pinrang'),
(412, 13, 'Kota Gunung Sitoli'),
(413, 31, 'Kota Lhokseumawe'),
(414, 13, 'Kabupaten Bolaang Mongondow Utara'),
(415, 4, 'Kabupaten Waropen'),
(416, 8, 'Kabupaten Sambas'),
(417, 3, 'Kabupaten Kepulauan Anambas'),
(418, 7, 'Kabupaten Lampung Timur'),
(419, 29, 'Kabupaten Ende'),
(420, 19, 'Kota Bengkulu'),
(421, 13, 'Kabupaten Labuhanbatu Selatan'),
(422, 31, 'Kota Langsa'),
(423, 1, 'Kabupaten Lamandau'),
(424, 16, 'Kabupaten Kutai Barat'),
(425, 7, 'Kabupaten Lampung Selatan'),
(426, 33, 'Kota Probolinggo'),
(427, 5, 'Kota Dumai'),
(428, 20, 'Kabupaten Bantul'),
(429, 13, 'Kabupaten Toba Samosir'),
(430, 27, 'Kabupaten Karawang'),
(431, 18, 'Kota Pekalongan'),
(432, 5, 'Kabupaten Indragiri Hulu'),
(433, 28, 'Kabupaten Sigi'),
(434, 8, 'Kabupaten Landak'),
(435, 10, 'Kabupaten Gorontalo'),
(436, 18, 'Kabupaten Rembang'),
(437, 33, 'Kabupaten Kediri'),
(438, 29, 'Kabupaten Sumba Barat Daya'),
(439, 18, 'Kabupaten Blora'),
(440, 16, 'Kabupaten Berau'),
(441, 5, 'Kabupaten Rokan Hulu'),
(442, 23, 'Kabupaten Tanah Laut'),
(443, 12, 'Kabupaten Tabanan'),
(444, 25, 'Kota Serang'),
(445, 33, 'Kabupaten Ngawi'),
(446, 3, 'Kota Tanjung Pinang'),
(447, 27, 'Kabupaten Sukabumi'),
(448, 18, 'Kabupaten Purbalingga'),
(449, 33, 'Kabupaten Nganjuk'),
(450, 6, 'Kota Solok'),
(451, 4, 'Kabupaten Jayapura'),
(452, 29, 'Kabupaten Nagekeo'),
(453, 18, 'Kabupaten Pemalang'),
(454, 4, 'Kabupaten Mappi'),
(455, 18, 'Kabupaten Kebumen'),
(456, 8, 'Kabupaten Pontianak'),
(457, 27, 'Kabupaten Garut'),
(458, 28, 'Kabupaten Morowali'),
(459, 6, 'Kota Bukittinggi'),
(460, 5, 'Kabupaten Kuantan Singingi'),
(461, 13, 'Kabupaten Samosir'),
(462, 2, 'Kabupaten Buru'),
(463, 23, 'Kota Banjarmasin'),
(464, 4, 'Kabupaten Yahukimo'),
(465, 23, 'Kabupaten Hulu Sungai Selatan'),
(466, 1, 'Kabupaten Murung Raya'),
(467, 30, 'Kota Administrasi Jakarta Selatan'),
(468, 2, 'Kabupaten Seram Bagian Barat'),
(469, 31, 'Kota Banda Aceh'),
(470, 8, 'Kabupaten Kubu Raya'),
(471, 33, 'Kabupaten Sidoarjo'),
(472, 23, 'Kabupaten Kotabaru'),
(473, 13, 'Kabupaten Bolaang Mongondow Timur'),
(474, 23, 'Kabupaten Hulu Sungai Tengah'),
(475, 20, 'Kabupaten Kulon Progo'),
(476, 31, 'Kabupaten Pidie Jaya'),
(477, 33, 'Kabupaten Blitar'),
(478, 27, 'Kota Cimahi'),
(479, 13, 'Kabupaten Pakpak Bharat'),
(480, 7, 'Kabupaten Tanggamus'),
(481, 31, 'Kabupaten Bireuen'),
(482, 13, 'Kabupaten Padang Lawas Utara'),
(483, 33, 'Kota Pasuruan'),
(484, 18, 'Kabupaten Sragen'),
(485, 31, 'Kabupaten Aceh Barat Daya'),
(486, 23, 'Kabupaten Hulu Sungai Utara'),
(487, 9, 'Kabupaten Lombok Barat'),
(488, 17, 'Kabupaten Halmahera Barat'),
(489, 31, 'Kabupaten Nagan Raya'),
(490, 5, 'Kabupaten Kampar'),
(491, 18, 'Kabupaten Jepara'),
(492, 24, 'Kabupaten Ogan Komering Ulu'),
(493, 22, 'Kabupaten Luwu'),
(494, 32, 'Kabupaten Fakfak'),
(495, 22, 'Kabupaten Pangkajene dan Kepulauan'),
(496, 2, 'Kabupaten Kepulauan Aru'),
(497, 15, 'Kabupaten Mamuju Utara'),
(498, 25, 'Kabupaten Pandeglang');

-- --------------------------------------------------------

--
-- Table structure for table `app_pelanggan`
--

CREATE TABLE `app_pelanggan` (
  `id_pelanggan` int(11) NOT NULL,
  `nama_pelanggan` varchar(255) NOT NULL,
  `alamat` text NOT NULL,
  `no_kontak` decimal(12,0) NOT NULL,
  `status_pelanggan` enum('2','1') NOT NULL COMMENT '1=Tetap, 2=Tidak Tetap',
  `created_by` int(11) NOT NULL,
  `created_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `app_petugas`
--

CREATE TABLE `app_petugas` (
  `id_petugas` int(11) NOT NULL,
  `nama_petugas` varchar(255) NOT NULL,
  `jabatan` varchar(255) NOT NULL,
  `alamat` text NOT NULL,
  `no_kontak` decimal(12,0) NOT NULL,
  `status` enum('1','0') NOT NULL COMMENT '1=Tetap, 0=Tidak Tetap',
  `created_by` int(11) NOT NULL,
  `created_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `app_provinsi`
--

CREATE TABLE `app_provinsi` (
  `id_provinsi` int(11) NOT NULL,
  `provinsi` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `app_provinsi`
--

INSERT INTO `app_provinsi` (`id_provinsi`, `provinsi`) VALUES
(1, 'Kalimantan Tengah'),
(2, 'Maluku'),
(3, 'Kepulauan Riau'),
(4, 'Papua'),
(5, 'Riau'),
(6, 'Sumatera Barat'),
(7, 'Lampung'),
(8, 'Kalimantan Barat'),
(9, 'Nusa Tenggara Barat'),
(10, 'Gorontalo'),
(11, 'Sulawesi Utara'),
(12, 'Bali'),
(13, 'Sumatera Utara'),
(14, 'Sulawesi Tenggara'),
(15, 'Sulawesi Barat'),
(16, 'Kalimantan Timur'),
(17, 'Maluku Utara'),
(18, 'Jawa Tengah'),
(19, 'Bengkulu'),
(20, 'Daerah Istimewa Yogyakarta'),
(21, 'Kepulauan Bangka Belitung'),
(22, 'Sulawesi Selatan'),
(23, 'Kalimantan Selatan'),
(24, 'Sumatera Selatan'),
(25, 'Banten'),
(26, 'Jambi'),
(27, 'Jawa Barat'),
(28, 'Sulawesi Tengah'),
(29, 'Nusa Tenggara Timur'),
(30, 'DKI Jakarta'),
(31, 'Aceh'),
(32, 'Papua Barat'),
(33, 'Jawa Timur');

-- --------------------------------------------------------

--
-- Table structure for table `app_transaksi_pengiriman`
--

CREATE TABLE `app_transaksi_pengiriman` (
  `id_pengiriman` int(11) NOT NULL,
  `no_sttb` varchar(5) NOT NULL,
  `id_pelanggan` int(11) NOT NULL,
  `jumlah_titipan` int(12) NOT NULL,
  `berat` int(12) NOT NULL,
  `isi_sebenarnya` text NOT NULL,
  `discount` decimal(10,0) DEFAULT NULL,
  `biaya` decimal(10,0) NOT NULL,
  `penerima` varchar(255) NOT NULL,
  `yang_menerima` varchar(255) DEFAULT NULL,
  `alamat_penerima` text NOT NULL,
  `kontak_penerima` int(12) NOT NULL,
  `id_kota` int(11) NOT NULL,
  `kode_pos` int(12) NOT NULL,
  `id_provinsi` int(11) NOT NULL,
  `tanggal_pengiriman` date NOT NULL,
  `tanggal_penerimaan` date DEFAULT NULL,
  `status_pengiriman` enum('0','2','1','4','3') NOT NULL DEFAULT '0' COMMENT '0=Belum Dikirim, 1=Sedang Dikirim, 2=Sudah Dikirim, 3=Approve Pengiriman Barang, 4=Approve Penerimaan Barang',
  `id_petugas` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_date` datetime NOT NULL,
  `status_reject` enum('1','0') NOT NULL DEFAULT '0' COMMENT '0=Belum Reject, 1=Reject',
  `kecamatan` varchar(255) NOT NULL,
  `biaya_lba` decimal(12,0) NOT NULL DEFAULT '0',
  `status_pembayaran` enum('0','1') NOT NULL DEFAULT '0' COMMENT '0=Belum Lunas, 1=Lunas'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `app_user`
--

CREATE TABLE `app_user` (
  `user_id` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(50) NOT NULL,
  `re_password` varchar(50) DEFAULT NULL,
  `status` enum('1','0') NOT NULL COMMENT '0=Tidak Aktif, 1=Aktif',
  `fullname` varchar(50) NOT NULL,
  `created_stamp` datetime NOT NULL,
  `level` enum('1','2') NOT NULL COMMENT '1=Administrator, 2=Operator',
  `last_visited` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `app_user`
--

INSERT INTO `app_user` (`user_id`, `username`, `password`, `re_password`, `status`, `fullname`, `created_stamp`, `level`, `last_visited`) VALUES
(24, 'admin', 'd033e22ae348aeb5660fc2140aec35850c4da997', 'admin', '1', 'Administrator', '2015-06-04 17:08:09', '1', '2015-05-11 17:56:21');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `app_harga_pengiriman`
--
ALTER TABLE `app_harga_pengiriman`
  ADD PRIMARY KEY (`id_harga`),
  ADD KEY `FK_KOTA_ON_HARGA` (`id_kota`),
  ADD KEY `FK_USER_ON_HARGA` (`created_by`);

--
-- Indexes for table `app_kota`
--
ALTER TABLE `app_kota`
  ADD PRIMARY KEY (`id_kota`);

--
-- Indexes for table `app_pelanggan`
--
ALTER TABLE `app_pelanggan`
  ADD PRIMARY KEY (`id_pelanggan`),
  ADD KEY `FK_USER_ON_PELANGGAN` (`created_by`);

--
-- Indexes for table `app_petugas`
--
ALTER TABLE `app_petugas`
  ADD PRIMARY KEY (`id_petugas`),
  ADD KEY `FK_USER_ON_PETUGAS` (`created_by`);

--
-- Indexes for table `app_provinsi`
--
ALTER TABLE `app_provinsi`
  ADD PRIMARY KEY (`id_provinsi`);

--
-- Indexes for table `app_transaksi_pengiriman`
--
ALTER TABLE `app_transaksi_pengiriman`
  ADD PRIMARY KEY (`id_pengiriman`),
  ADD KEY `FK_PELANGGAN_ON_TRX` (`id_pelanggan`),
  ADD KEY `FK_KOTA_ON_TRX` (`id_kota`),
  ADD KEY `FK_PROV_ON_TRX` (`id_provinsi`),
  ADD KEY `FK_USER_ON_TRX` (`id_petugas`);

--
-- Indexes for table `app_user`
--
ALTER TABLE `app_user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `app_harga_pengiriman`
--
ALTER TABLE `app_harga_pengiriman`
  MODIFY `id_harga` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `app_kota`
--
ALTER TABLE `app_kota`
  MODIFY `id_kota` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=499;

--
-- AUTO_INCREMENT for table `app_pelanggan`
--
ALTER TABLE `app_pelanggan`
  MODIFY `id_pelanggan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `app_petugas`
--
ALTER TABLE `app_petugas`
  MODIFY `id_petugas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `app_provinsi`
--
ALTER TABLE `app_provinsi`
  MODIFY `id_provinsi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `app_transaksi_pengiriman`
--
ALTER TABLE `app_transaksi_pengiriman`
  MODIFY `id_pengiriman` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `app_user`
--
ALTER TABLE `app_user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `app_harga_pengiriman`
--
ALTER TABLE `app_harga_pengiriman`
  ADD CONSTRAINT `FK_KOTA_ON_HARGA` FOREIGN KEY (`id_kota`) REFERENCES `app_kota` (`id_kota`) ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_USER_ON_HARGA` FOREIGN KEY (`created_by`) REFERENCES `app_user` (`user_id`) ON UPDATE CASCADE;

--
-- Constraints for table `app_pelanggan`
--
ALTER TABLE `app_pelanggan`
  ADD CONSTRAINT `FK_USER_ON_PELANGGAN` FOREIGN KEY (`created_by`) REFERENCES `app_user` (`user_id`) ON UPDATE CASCADE;

--
-- Constraints for table `app_petugas`
--
ALTER TABLE `app_petugas`
  ADD CONSTRAINT `FK_USER_ON_PETUGAS` FOREIGN KEY (`created_by`) REFERENCES `app_user` (`user_id`) ON UPDATE CASCADE;

--
-- Constraints for table `app_transaksi_pengiriman`
--
ALTER TABLE `app_transaksi_pengiriman`
  ADD CONSTRAINT `FK_KOTA_ON_TRX` FOREIGN KEY (`id_kota`) REFERENCES `app_kota` (`id_kota`) ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_PELANGGAN_ON_TRX` FOREIGN KEY (`id_pelanggan`) REFERENCES `app_pelanggan` (`id_pelanggan`) ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_PETUGAS_ON_TRX` FOREIGN KEY (`id_petugas`) REFERENCES `app_petugas` (`id_petugas`) ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_PROV_ON_TRX` FOREIGN KEY (`id_provinsi`) REFERENCES `app_provinsi` (`id_provinsi`) ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_USER_ON_TRX` FOREIGN KEY (`id_petugas`) REFERENCES `app_petugas` (`id_petugas`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
