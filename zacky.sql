-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Waktu pembuatan: 12 Mar 2021 pada 13.24
-- Versi server: 5.7.23
-- Versi PHP: 7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `zacky`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `history_pengambilan`
--

DROP TABLE IF EXISTS `history_pengambilan`;
CREATE TABLE IF NOT EXISTS `history_pengambilan` (
  `id_history_pengambilan` int(100) NOT NULL AUTO_INCREMENT,
  `id_rincian` int(100) NOT NULL,
  `sisa_material` int(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL,
  `updated_at` timestamp NOT NULL,
  PRIMARY KEY (`id_history_pengambilan`),
  KEY `id_rincian` (`id_rincian`)
) ENGINE=InnoDB AUTO_INCREMENT=96 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data untuk tabel `history_pengambilan`
--

INSERT INTO `history_pengambilan` (`id_history_pengambilan`, `id_rincian`, `sisa_material`, `created_at`, `updated_at`) VALUES
(92, 134, -2, '2021-03-11 02:29:38', '2021-03-11 02:29:38'),
(93, 135, 2, '2021-03-11 02:29:39', '2021-03-11 02:29:39'),
(94, 136, 2, '2021-03-11 02:29:39', '2021-03-11 02:29:39'),
(95, 137, 2, '2021-03-11 02:29:39', '2021-03-11 02:29:39');

-- --------------------------------------------------------

--
-- Struktur dari tabel `list_produk`
--

DROP TABLE IF EXISTS `list_produk`;
CREATE TABLE IF NOT EXISTS `list_produk` (
  `id` int(11) NOT NULL,
  `designator` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `uraian_pekerjaan` varchar(1000) COLLATE utf8mb4_bin NOT NULL,
  `satuan` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `harga_material` bigint(255) NOT NULL,
  `harga_jasa` bigint(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data untuk tabel `list_produk`
--

INSERT INTO `list_produk` (`id`, `designator`, `uraian_pekerjaan`, `satuan`, `harga_material`, `harga_jasa`) VALUES
(1, 'DC-OF-SM-24D', 'Pengadaan dan pemasangan Kabel Duct Fiber Optik Single Mode 24 core G 652 D', 'meter', 10310, 3020),
(2, 'DC-OF-SM-24D', 'Pengadaan dan pemasangan Kabel Duct Fiber Optik Single Mode 24 core G 652 D', 'meter', 10310, 3020),
(3, 'DC-OF-SM-48D', 'Pengadaan dan pemasangan Kabel Duct Fiber Optik Single Mode 48 core G 652 D', 'meter', 15210, 3020),
(4, 'DC-OF-SM-96D', 'Pengadaan dan pemasangan Kabel Duct Fiber Optik Single Mode 96 core G 652 D', 'meter', 27520, 3020),
(5, 'DC-OF-SM-144D', 'Pengadaan dan pemasangan Kabel Duct Fiber Optik Single Mode 144 core G 652 D', 'meter', 39050, 3680),
(6, 'DC-OF-SM-288D', 'Pengadaan dan pemasangan Kabel Duct Fiber Optik Single Mode 288 core G 652 D', 'meter', 70930, 3670),
(7, 'AC-OF-SM-12D', 'Pengadaan dan pemasangan Kabel Udara Fiber Optik Single Mode 12 core G 652 D', 'meter', 11250, 4210),
(8, 'AC-OF-SM-24D', 'Pengadaan dan pemasangan Kabel Udara Fiber Optik Single Mode 24 core G 652 D', 'meter', 13830, 4180),
(9, 'AC-OF-SM-48D', 'Pengadaan dan pemasangan Kabel Udara Fiber Optik Single Mode 48 core G 652 D', 'meter', 19340, 4180),
(10, 'AC-OF-SM-96D', 'Pengadaan dan pemasangan Kabel Udara Fiber Optik Single Mode 96 core G 652 D', 'meter', 29490, 4180),
(11, 'DC-OF-SM-12C', 'Pengadaan dan pemasangan Kabel Duct Fiber Optik Single Mode 12 core G 655 C', 'meter', 10660, 3020),
(12, 'DC-OF-SM-24C', 'Pengadaan dan pemasangan Kabel Duct Fiber Optik Single Mode 24 core G 655 C', 'meter', 15220, 3020),
(13, 'DC-OF-SM-48C', 'Pengadaan dan pemasangan Kabel Duct Fiber Optik Single Mode 48 core G 655 C', 'meter', 24010, 3020),
(14, 'DC-OF-SM-96C', 'Pengadaan dan pemasangan Kabel Duct Fiber Optik Single Mode 96 core G 655 C', 'meter', 49660, 3020),
(15, 'AC-OF-SM-12C', 'Pengadaan dan pemasangan Kabel Udara Fiber Optik Single Mode 12 core G 655 C', 'meter', 14690, 4180),
(16, 'AC-OF-SM-24C', 'Pengadaan dan pemasangan Kabel Udara Fiber Optik Single Mode 24 core G 655 C', 'meter', 19460, 4180),
(17, 'AC-OF-SM-48C', 'Pengadaan dan pemasangan Kabel Udara Fiber Optik Single Mode 48 core G 655 C', 'meter', 30400, 4180),
(18, 'AC-OF-SM-96C', 'Pengadaan dan pemasangan Kabel Udara Fiber Optik Single Mode 96 core G 655 C', 'meter', 52490, 4180),
(19, 'DC-OF-SM-8-SC', 'Pengadaan dan pemasangan Kabel Duct Fiber Optik Single Mode 8 core G 652 D, \"Easy to split\"', 'meter', 9080, 3020),
(20, 'DC-OF-SM-12-SC', 'Pengadaan dan pemasangan Kabel Duct Fiber Optik Single Mode 12 core G 652 D, \"Easy to split\"', 'meter', 11310, 3020),
(21, 'DC-OF-SM-24-SC', 'Pengadaan dan pemasangan Kabel Duct Fiber Optik Single Mode 24 core G 652 D, \"Easy to split\"', 'meter', 15840, 3020),
(22, 'AC-OF-SM-8-SC', 'Pengadaan dan pemasangan Kabel Udara Fiber Optik Single Mode 8 core G 652 D, \"Easy to split\"', 'meter', 10840, 4180),
(23, 'AC-OF-SM-12-SC', 'Pengadaan dan pemasangan Kabel Udara Fiber Optik Single Mode 12 core G 652 D, \"Easy to split\"', 'meter', 14270, 4180),
(24, 'AC-OF-SM-24-SC', 'Pengadaan dan pemasangan Kabel Udara Fiber Optik Single Mode 24 core G 652 D, \"Easy to split\"', 'meter', 17550, 4180),
(25, 'SC-OF-SM-24', 'Pengadaan dan pemasangan alat sambung (cabang/ lurus) untuk Fiber Optik kapasitas 12 - 24 core', 'pcs', 573200, 29790),
(26, 'SC-OF-SM-48', 'Pengadaan dan pemasangan alat sambung (cabang/ lurus) untuk Fiber Optik kapasitas 12 - 48 core', 'pcs', 647600, 29790),
(27, 'SC-OF-SM-96', 'Pengadaan dan pemasangan alat sambung (cabang/ lurus) untuk Fiber Optik kapasitas 12 - 96 core', 'pcs', 739300, 29790),
(28, 'SC-OF-SM-144', 'Pengadaan dan pemasangan alat sambung (cabang/ lurus) untuk Fiber Optik kapasitas 12 - 144 core', 'pcs', 1027000, 29790),
(29, 'SC-OF-SM-288', 'Pengadaan dan pemasangan alat sambung (cabang/ lurus) untuk Fiber Optik kapasitas 12 - 288 core', 'pcs', 2020000, 29790),
(30, 'OS-SM-1', 'Penyambungan Kabel Optik Single Mode kap 1 core dengan cara fusion splice', 'core', 0, 51240),
(31, 'AB-OF-SM-2D', 'Pengadaan dan pemasangan  Air Blown Cable Optik, Single Mode 2 core, G 652 D', 'meter', 1670, 2090),
(32, 'AB-OF-SM-4D', 'Pengadaan dan pemasangan  Air Blown Cable Optik, Single Mode 4 core, G 652 D', 'meter', 2330, 2090),
(33, 'AB-OF-SM-8D', 'Pengadaan dan pemasangan  Air Blown Cable Optik, Single Mode  core, G 652 D', 'meter', 4350, 2090),
(34, 'AB-OF-SM-12D', 'Pengadaan dan pemasangan  Air Blown Cable Optik, Single Mode 12 core, G 652 D', 'meter', 6020, 2090),
(35, 'AB-OF-SM-24D', 'Pengadaan dan pemasangan  Air Blown Cable Optik, Single Mode 24 core, G 652 D', 'meter', 8590, 2970),
(36, 'AB-OF-SM-48D', 'Pengadaan dan pemasangan  Air Blown Cable Optik, Single Mode 48 core, G 652 D', 'meter', 13570, 2970),
(37, 'AB-OF-SM-72D', 'Pengadaan dan pemasangan  Air Blown Cable Optik, Single Mode 72 core, G 652 D', 'meter', 21780, 2970),
(38, 'AB-OF-SM-96D', 'Pengadaan dan pemasangan  Air Blown Cable Optik, Single Mode 96 core, G 652 D', 'meter', 25630, 2940),
(39, 'AB-OF-SM-144D', 'Pengadaan dan pemasangan  Air Blown Cable Optik, Single Mode 144 core, G 652 D', 'meter', 39540, 3360),
(40, 'AB-OF-SM-288D', 'Pengadaan dan pemasangan  Air Blown Cable Optik, Single Mode 288 core, G 652 D', 'meter', 75400, 4200),
(41, 'PC-APC-657-2', 'Pengadaan dan pemasangan Patch cord 2 meter, (FC/LC/SC-APC To FC/LC/SC-APC), G.657', 'pcs', 60670, 2640),
(42, 'PC-APC/UPC-657-A1', 'Additional patch cord, G.657', 'meter', 4000, 1300),
(43, 'PC-UPC-657-2', 'Pengadaan dan pemasangan Patch cord 2 meter, (FC/LC/SC-UPC To FC/LC/SC-UPC), G.657', 'pcs', 50220, 2640),
(44, 'PC-APC-655-2', 'Pengadaan dan pemasangan Patch cord 2 meter, (FC/LC/SC-APC To FC/LC/SC-APC), G.655C', 'pcs', 55350, 2640),
(45, 'PC-APC/UPC-655-A1', 'Additional patch cord, G.655', 'meter', 4000, 1300),
(46, 'PC-UPC-655-2', 'Pengadaan dan pemasangan Patch cord 2 meter, (FC/LC/SC-UPC To FC/LC/SC-UPC), G.655C', 'pcs', 47990, 2640),
(47, 'PC-APC-652-2', 'Pengadaan dan pemasangan Patch cord 2 meter, (FC/LC/SC-APC To FC/LC/SC-APC), G.652 D', 'pcs', 56760, 2640),
(48, 'PC-APC/UPC-652-A1', 'Additional patch cord, G.652D', 'meter', 4000, 1300),
(49, 'PC-UPC-652-2', 'Pengadaan dan pemasangan Patch cord 2 meter, (FC/LC/SC-UPC To FC/LC/SC-UPC), G.652D', 'pcs', 45910, 2640),
(50, 'ODC-C-48', 'Pengadaan dan pemasangan ODC-Pole (Outdoor)  dengan space untuk spliter modular termasuk material adaptor SC  kap 48 core, berikut pelabelan', 'pcs', 3707000, 3642320),
(51, 'ODC-C-96', 'Pengadaan dan pemasangan kabinet ODC (Outdoor) kap 96 core dengan space untuk spliter modular termasuk material adaptor SC, pigtail, pondasi berlapis keramik, lantai kerja keramik, patok pengaman (5 buah), berikut pelabelan', 'pcs', 7734000, 4558030),
(52, 'ODC-C-144', 'Pengadaan dan pemasangan kabinet ODC (Outdoor) kap 144 core dengan space untuk spliter modular termasuk material adaptor SC, pigtail, pondasi berlapis keramik, lantai kerja keramik, patok pengaman (5 buah), berikut pelabelan', 'pcs', 10340000, 4921740),
(53, 'ODC-C-288', 'Pengadaan dan pemasangan kabinet ODC (Outdoor) kap 288 core dengan space untuk spliter modular termasuk material adaptor SC, pigtail, pondasi berlapis keramik, lantai kerja keramik, patok pengaman (5 buah), berikut pelabelan', 'pcs', 19530000, 4958870),
(54, 'ODC-C-576', 'Pengadaan dan pemasangan kabinet ODC (Outdoor) kap 576 core dengan space untuk spliter modular termasuk material adaptor SC, pigtail, pondasi berlapis keramik, lantai kerja keramik, patok pengaman (5 buah), berikut pelabelan', 'pcs', 49170000, 4919990),
(55, 'ODC-PROT-144', 'Pengaman ODC 144 (Besi siku 4cmx4cmx4mm, besi beton 10mm (jarak antar besi beton 10cm, engsel besar, baut ram set 14mm dan kunci gembok 50mm', 'unit', 1575000, 679000),
(56, 'ODC-PROT-288', 'Pengaman ODC 288 (Besi siku 4cmx4cmx4mm, besi beton 10mm (jarak antar besi beton 10cm, engsel besar, baut ram set 14mm dan kunci gembok 50mm', 'unit', 1710000, 727500),
(57, 'ODP-CA-8', 'Pengadaan dan pemasangan ODP type Closure Aerial Kap 8 core berikut space pasive spliter (1:8), adapter SC,berikut pelabelan dan penempelan QR code (disediakan oleh Telkom)', 'pcs', 975000, 119210),
(58, 'ODP-CA-16', 'Pengadaan dan pemasangan ODP type Closure Aerial Kap 16 core berikut space 2 pasive spliter (1:8), adapter SC,berikut pelabelan dan penempelan QR code (disediakan oleh Telkom)', 'pcs', 1107000, 119210),
(59, 'ODP-A-8', 'Pengadaan dan pemasangan ODP type Indoor/wall Kap 8 core berikut space pasive spliter (1:8), adapter SC,berikut pelabelan dan penempelan QR code (disediakan oleh Telkom)', 'pcs', 775800, 119210),
(60, 'ODP-A-16', 'Pengadaan dan pemasangan ODP type Indoor/wall Kap 16 core berikut space 2 pasive spliter (1:8), adapter SC,berikut pelabelan dan penempelan QR code (disediakan oleh Telkom)', 'pcs', 896000, 119210),
(61, 'ODP-Solid-PB-8', 'Pengadaan dan pemasangan ODP type SOLID Kap 8 core adaptor SC/UPC terdiri dari 1 Box Spliter (termasuk 1 spliter 1:8), 1 Box Dummy beserta Accessories, berikut pelabelan dan penempelan QR code (disediakan oleh Telkom)', 'pcs', 1054300, 135900),
(62, 'ODP-Solid-PB-16', 'Pengadaan dan pemasangan ODP type SOLID Kap 16 core adaptor SC/UPC terdiri dari 2 Box Spliter (termasuk 2 spliter 1:8) beserta Accessories, berikut pelabelandan penempelan QR code (disediakan oleh Telkom)', 'pcs', 1366200, 135900),
(63, 'ODP-PL-8', 'Pengadaan dan pemasangan ODP ( Pilar ) kap  8 core termasuk pigtail, berikut space 1 splitter (1:8),  pelabelan penempelan QR code (disediakan oleh Telkom)', 'pcs', 1702000, 119210),
(64, 'ODP-PL-16', 'Pengadaan dan pemasangan ODP ( Pilar ) kap  16 core termasuk pigtail, berikut space 2 splitter (1:8),  pelabelan penempelan QR code (disediakan oleh Telkom)', 'pcs', 1935000, 119210),
(65, 'TC-SM-12', 'Pengadaan dan Pemasangan OTB termasuk terminasi dan penyambungan kabel optik Single mode kap 12 core serta Adapter (SC Connector), pigtail dan protection sleeve pada cassette/box', 'pcs', 810000, 647360),
(66, 'TC-SM-24', 'Pengadaan dan Pemasangan OTB termasuk terminasi dan penyambungan kabel optik Single mode kap 24 core serta Adapter (SC Connector), pigtail dan protection sleeve pada cassette/box', 'pcs', 1139000, 1294720),
(67, 'TC-SM-48', 'Pengadaan dan Pemasangan OTB termasuk terminasi dan penyambungan kabel optik Single mode kap 48 core serta Adapter (SC Connector), pigtail dan protection sleeve pada cassette/box', 'pcs', 2321000, 2589450),
(68, 'TC-SM-96', 'Pengadaan dan Pemasangan OTB termasuk terminasi dan penyambungan kabel optik Single mode kap 96 core serta Adapter (SC Connector), pigtail dan protection sleeve pada cassette/box', 'pcs', 4214000, 5178910),
(69, 'PS-1-2-ODC', 'Pengadaan dan pemasangan Passive Splitter 1:2, type modular SC/UPC, for ODC, termasuk pigtail', 'pcs', 208300, 29650),
(70, 'PS-1-4-ODC', 'Pengadaan dan pemasangan Passive Splitter 1:4, type modular SC/UPC, for ODC, termasuk pigtail', 'pcs', 276300, 29650),
(71, 'PS-1-8-ODP', 'Pengadaan dan pemasangan Passive Splitter 1:8, type modular SC/UPC, for ODP, termasuk pigtail', 'pcs', 452500, 29650),
(72, 'PS-1-16-ODP', 'Pengadaan dan pemasangan Passive Splitter 1:16, type modular SC/UPC, for ODP, termasuk pigtail', 'pcs', 680000, 29650),
(73, 'PS-2-2-ODC', 'Pengadaan dan pemasangan Passive Splitter 2:2, type modular SC/UPC, for ODC, termasuk pigtail', 'pcs', 535900, 29860),
(74, 'PS-2-4-ODC', 'Pengadaan dan pemasangan Passive Splitter 2:4, type modular SC/UPC, for ODC, termasuk pigtail', 'pcs', 632600, 29860),
(75, 'PS-2-8-ODX', 'Pengadaan dan pemasangan Passive Splitter 2:8, type modular SC/UPC, for ODC, termasuk pigtail', 'pcs', 612000, 33950),
(76, 'PS-1-32-ODX', 'Pengadaan dan pemasangan Passive Splitter 1:32, type modular SC/UPC, for ODC/ODP, termasuk pigtail', 'pcs', 1169000, 33950),
(77, 'SITAC ODC', 'Akuisisi Lahan SITAC ODC', 'Node', 0, 6473640),
(78, 'PU-S7.0-140', 'Pengadaan dan Pemasangan Tiang Besi 7 meter, berikut cat & cor pondasi dan assesories dengan kekuatan tarik 140 kg', 'pcs', 1190000, 210150),
(79, 'PU-S9.0-140', 'Pengadaan dan Pemasangan Tiang Besi 9 meter, berikut cat & cor dan assesories dengan kekuatan tarik 140 kg', 'pcs', 1885000, 212450),
(80, 'PU-C7.0-250', 'Pengadaan dan Pemasangan Tiang Beton  7 meter, berikut assesories dengan kekuatan tarik 250 kg', 'pcs', 2480000, 174550),
(81, 'PU-C9.0-300', 'Pengadaan dan Pemasangan Tiang Beton  9 meter, berikut assesories dengan kekuatan tarik 300 kg', 'pcs', 2966000, 172430),
(82, 'GU-G', 'Pengadaan dan Pemasangan Temberang Tarik', 'pcs', 407400, 52950),
(83, 'PU-AS', 'Pengadaan dan Pemasangan Asesoris tiang eksisting', 'set', 25650, 35240),
(84, 'GB-G1', 'Pengadaan dan Pemasangan Grounding 1 titik rod pada ODP /kotak pembagi dengan tahanan maks 3 ohm', 'pcs', 700000, 355960),
(85, 'GB-G3', 'Pengadaan dan Pemasangan Grounding 3 titik rod pada ODC dengan tahanan maks 1 ohm', 'pcs', 2108000, 412660),
(86, 'GB-G-INTG', 'Pengadaan dan Pemasangan material Grounding di lokasi gedung eksisting dengan cara integrasi', 'pcs', 211700, 143410),
(87, 'TC-02-ODC', 'Pengadaan dan Pemasangan Riser Pipe untuk pengaman kabel optik ke ODC Pole / titik naik KU diamater 2 inch  panjang 3 meter', 'pcs', 190500, 53180),
(88, 'PP-OF-IN', 'Pengadaan dan Pemasangan Pipe Protector Indoor Cable (PVC White) High Impact Conduit 20 mm', 'meter', 20910, 3510),
(89, 'PP-OF-OUT', 'Pengadaan dan Pemasangan Pipe Protector  Outdoor Cable ( PVC Black) High Impact Conduit 20 mm', 'meter', 20650, 3510),
(90, 'DD-S3-1', 'Pengadaan dan pemasangan Pipa Besi Diameter 100 mm dan ketebalan pipa 3,65 mm untuk crossing 1 pipa  bentang ≤ 6 meter', 'meter', 263500, 52870),
(91, 'DD-S3-2', 'Pengadaan dan pemasangan Pipa Besi Diameter 100 mm dan ketebalan pipa 3,65 mm untuk crossing 2 pipa  bentang ≤ 6 meter', 'meter', 527100, 70490),
(92, 'DD-S3-3', 'Pengadaan dan pemasangan Pipa Besi Diameter 100 mm dan ketebalan pipa 3,65 mm untuk crossing 3 pipa  bentang ≤ 6 meter', 'meter', 790700, 105750),
(93, 'DD-V4-1', 'Pengadan dan Pemasangan Pipa Duct PVC diameter dalam 100 mm, ketebalan 4 mm, 1 pipa termasuk pengecoran', 'meter', 50150, 52870),
(94, 'DD-V4-2', 'Pengadan dan Pemasangan Pipa Duct PVC diameter dalam 100 mm, ketebalan 4 mm, 2 pipa termasuk pengecoran', 'meter', 100200, 70610),
(95, 'DD-V5-1', 'Pemasangan Pipa Duct dengan selubung pasir dia 100 mm dengan ketebalan 5,5 mm, 1 pipa ( crossing )', 'meter', 48490, 52870),
(96, 'DD-V5-2', 'Pemasangan Pipa Duct dengan selubung pasir dia 100 mm dengan ketebalan 5,5 mm, 2 pipa ( crossing )', 'meter', 97470, 70490),
(97, 'DD-DA-S1', 'Pengadaan dan pemasangan pipa Duct menempel pada  jembatan existing menggunakan Pipa Galvanis diamenter 100 mm, tebal 3,65 mm, 1 pipa', 'meter', 263500, 211500),
(98, 'DD-DA-S2', 'Pengadaan dan pemasangan pipa Duct menempel pada  jembatan existing menggunakan Pipa Galvanis diamenter 100 mm, tebal 3,65 mm, 2 pipa', 'meter', 527100, 423010),
(99, 'DD-DA-S4', 'Pengadaan dan pemasangan pipa Duct menempel pada  jembatan existing menggunakan Pipa Galvanis diamenter 100 mm, tebal 3,65 mm, 4 pipa', 'meter', 1054000, 846040),
(100, 'DD-BSS-S1', 'Pengadaan dan pemasangan pipa Duct pada jembatan dengan self support berpenguatan menggunakan Pipa besi Galv 1 pipa, bentang 6 - 12 meter', 'meter', 339500, 211500),
(101, 'DD-BSS-S2', 'Pengadaan dan pemasangan pipa Duct pada jembatan dengan self support berpenguatan menggunakan Pipa besi Galv 2 pipa, bentang 6 - 12 meter', 'meter', 679000, 423010),
(102, 'DD-BTS-S1', 'Pengadaan dan pemasangan pipa Duct pada jembatan menggunakan Pipa besi Galv 1 pipa, bentang 6 - 12 meter', 'meter', 338200, 211500),
(103, 'DD-BTS-S2', 'Pengadaan dan pemasangan pipa Duct pada jembatan menggunakan Pipa besi Galv 2 pipa, bentang 6 - 12 meter', 'meter', 676500, 423010),
(104, 'DD-BTS-S4', 'Pengadaan dan pemasangan pipa Duct pada jembatan menggunakan Pipa besi Galv 4 pipa, bentang 6 - 12 meter', 'meter', 1344000, 641270),
(105, 'HB-PS-1', 'Pengadaan dan pemasangan Pipa Duct dengan system gantung 1 tiang besi, bentang s/d 40 meter', 'meter', 118200, 33710),
(106, 'HB-PS-2', 'Pengadaan dan pemasangan Pipa Duct dengan system gantung 2 tiang besi, bentang s/d 100 meter', 'meter', 243500, 40450),
(107, 'HB-PS-4', 'Pengadaan dan pemasangan Pipa Duct dengan system gantung 4 tiang besi, bentang ≥ 100 meter', 'meter', 471400, 47190),
(108, 'HB-PC-2', 'Pengadaan dan pemasangan Pipa Duct dengan system gantung 2 tiang beton, bentang s/d 100 meter', 'meter', 400600, 40450),
(109, 'HB-PC-4', 'Pengadaan dan pemasangan Pipa Duct dengan system gantung 4 tiang beton, bentang ≥ 100 meter', 'meter', 785000, 47190),
(110, 'DD-BMR-1', 'Pengadaan dan Pemasangan Boring pada Lintasan Kereta Api menggunakan 1 pipa Galvanis diameter 100 mm tebal 3,65 mm', 'track', 790700, 19420930),
(111, 'DD-BMR-2', 'Pengadaan dan Pemasangan Boring pada Lintasan Kereta Api menggunakan 2 pipa Galvanis diameter 100 mm tebal 3,65 mm', 'track', 1581000, 29131400),
(112, 'DD-BMR-4', 'Pengadaan dan Pemasangan Boring pada Lintasan Kereta Api menggunakan 4 pipa Galvanis diameter 100 mm tebal 3,65 mm', 'track', 3163000, 38841870),
(113, 'DC-SD-28-1', 'Pengadaan dan Pemasangan 1 Subduct 28/32 mm pada polongan route Duct', 'meter', 7570, 1420),
(114, 'DC-SD-28-3', 'Pengadaan dan Pemasangan 1 Subduct 28/32 mm pada polongan route Duct, 3 pipa', 'meter', 22730, 1860),
(115, 'DC-SD-33-1', 'Pengadaan dan Pemasangan 1 Subduct 40/33 pada polongan route Duct', 'meter', 9180, 1420),
(116, 'DC-SD-33-2', 'Pengadaan dan Pemasangan 1 Subduct 40/33 pada polongan route Duct, 2 pipa', 'meter', 16510, 1860),
(117, 'DC-SD-43-1', 'Pengadaan dan Pemasangan 1 Subduct 50/42 pada polongan route Duct', 'meter', 18000, 1420),
(118, 'DC-SD-43-2', 'engadaan dan Pemasangan 1 Subduct 50/42 pada polongan route Duct, 2 pipa', 'meter', 36020, 1860),
(119, 'DCD-PVC-1', 'Pengadaan dan Pemasangan Duct Cable Penanggal diameter pipa PVC 2 inch (Class AW) 1  pipa', 'meter', 11110, 1400),
(120, 'DD-BM-100-1', 'Pengadaan dan Pemasangan Pipa galvanis dengan ukuran diameter 100 mm dan ketebalan 3,65 mm dengan cara boring manual /mesin   1 pipa dengan kedalaman minimal 150 cm', 'meter', 263500, 62520),
(121, 'DD-BM-100-2', 'Pengadaan dan Pemasangan Pipa galvanis dengan ukuran diameter 100 mm dan ketebalan 3,65 mm dengan cara boring manual /mesin   1 pipa dengan kedalaman minimal 150 cm, 2 pipa', 'meter', 527100, 64860),
(122, 'DD-BM-50-1', 'Pengadaan dan Pemasangan Pipa galvanis dengan ukuran diameter 50 mm dan ketebalan 2,7 mm cara boring manual /mesin 1 pipa dengan kedalaman minimal 150 cm', 'meter', 153700, 32190),
(123, 'DD-BM-50-2', 'Idem, 2 pipa', 'meter', 305400, 32190),
(124, 'DD-BM-HDPE-40-1', 'Pekerjaan Boring manual (rojok) HDPE  40/33 mm 1 pipa dengan kedalaman 1,5 meter', 'meter', 0, 32310),
(125, 'DD-BM-HDPE-40-2', 'Pengadaan dan Pemasangan Pipa galvanis dengan ukuran diameter 50 mm dan ketebalan 2,7 mm cara boring manual /mesin 1 pipa dengan kedalaman minimal 150 cm, 2 pipa', 'meter', 0, 32220),
(126, 'DD-BM-HDPE-50-1', 'Pekerjaan Boring manual (rojok)  HDPE  50/42 mm 1 pipa dengan kedalaman 1,5 meter', 'meter', 0, 32310),
(127, 'DD-BM-HDPE-50-2', 'Pekerjaan Boring manual (rojok)  HDPE  50/42 mm 2 pipa dengan kedalaman 1,5 meter', 'meter', 0, 32190),
(128, 'DD-HDPE-40-1', 'Pengadaan dan pemasangan pipa  HDPE  40/33 mm 1 pipa dengan kedalaman 1,5 meter', 'meter', 10830, 1360),
(129, 'DD-HDPE-40-2', 'Pengadaan dan pemasangan pipa  HDPE  40/33 mm 2 pipa dengan kedalaman 1,5 meter', 'meter', 21670, 1640),
(130, 'DD-HDPE-50-1', 'Pengadaan dan pemasangan pipa HDPE  50/42 mm 1 pipa dengan kedalaman 1,5 meter', 'meter', 17390, 1360),
(131, 'DD-HDPE-50-2', 'Pengadaan dan pemasangan pipa HDPE  50/42 mm 2 pipa dengan kedalaman 1,5 meter', 'meter', 34790, 1640),
(132, 'DD-HDPE-40-1C', 'Pengadaan dan pemasangan pipa HDPE 40/33 mm 1 pipa dengan kedalaman 1,5 meter sudah termasuk connector HDPE tipe compression fitting', 'meter', 11270, 1360),
(133, 'DD-HDPE-40-2C', 'Pengadaan dan pemasangan pipa HDPE 40/33 mm 2 pipa dengan kedalaman 1,5 meter sudah termasuk connector HDPE tipe compression fitting', 'meter', 22400, 1640),
(134, 'DD-ROD', 'Pekerjaan Pembersihan pada route Duct yang kosong / Rodding Duct Existing.', 'meter', 0, 1760),
(135, 'DD-RV-1', 'Pekerjaan Perbaikan Route Duct / HDPE, 1 pipa.', 'meter', 30790, 70490),
(136, 'DD-RV-CONCRETE', 'Pekerjaan bobok dinding MH / HH termasuk perbaikan kembali', 'm3', 902000, 634530),
(137, 'DD-DS-S1', 'Pengadaan dan pemasangan duct baru dengan cara melakukan boring dibawah dasar parit/sungai dengan kedalaman 1,5 M dengan menggunakan PVC diamater 100 mm dan ketebalan 5,5 mm 1 pipa', 'meter', 218500, 148050),
(138, 'DD-DS-COD1-M', 'Pengadaan dan pemasangan duct  baru type COD, dengan mesin pengeboran (borring) dibawah parit, pada kedalaman 1,50 m di bawah dasar selokan, tanpa perlindungan PVC, 1 pipa', 'meter', 21030, 415170),
(139, 'Klem HDPE', 'Pengkleman HDPE di dinding beton dengan klem ketebalan 2mm lebar 2,5 cm menggunakan dynabolt termasuk rekondisi atau perbaikan kerusakan', 'pcs', 9770, 2230),
(140, 'BC-TR-0.4', 'Pekerjaan Galian, Pengurugan kembali dan perbaikan kembali, pengisian pasir, warning tape dan tanda rute kabel serta tempat sambung kedalaman 0.4 meter', 'meter', 0, 11680),
(141, 'BC-TR-0.6', 'Pekerjaan Galian, Pengurugan kembali dan perbaikan kembali, pengisian pasir, warning tape dan tanda rute kabel serta tempat sambung, kedalaman 0,6 meter', 'meter', 0, 14930),
(142, 'BC-TR-1', 'Pekerjaan Galian, Pengurugan kembali dan perbaikan kembali, pengisian pasir, warning tape dan tanda rute kabel serta tempat sambung, kedalaman 1 meter', 'meter', 0, 22600),
(143, 'BC-TR-2', 'Pekerjaan Galian, Pengurugan kembali dan perbaikan kembali, pengisian pasir, warning tape dan tanda rute kabel serta tempat sambung, kedalaman 1,2 meter', 'meter', 0, 26640),
(144, 'BC-TR-3', 'Pekerjaan Galian, Pengurugan kembali dan perbaikan kembali, pengisian pasir, warning tape dan tanda rute kabel serta tempat sambung, kedalaman 1,3 meter', 'meter', 0, 28360),
(145, 'BC-TR-4', 'Pekerjaan Galian, Pengurugan kembali dan perbaikan kembali, pengisian pasir, warning tape dan tanda rute kabel serta tempat sambung, kedalaman 1,4 meter', 'meter', 0, 30400),
(146, 'BC-TR-5', 'Pekerjaan Galian, Pengurugan kembali dan perbaikan kembali, pengisian pasir, warning tape dan tanda rute kabel serta tempat sambung kedalaman 1,5 meter', 'meter', 0, 32310),
(147, 'BCTR-ROCK', 'Pengadaan galian batu masif kedalaman 1,5 meter, panjang minimum 5 m, termasuk pengadaan marking post', 'meter', 0, 186830),
(148, 'BC-MTR-0.4', 'Pekerjaan galian pada permukaan jalan aspal dengan lebar galian 8 cm dan kedalaman 40 cm, termasuk pemetaan utility eksisting dengan metode Geo Penetrating Radar, perbaikan, pengurugan (backfilling) menggunakan concrete type K225 dan pengaspalan', 'meter', 0, 179030),
(149, 'BD-SK', 'Pekerjaan bobokan dan perbaikan Dinding Chamber / BTS / STO untuk lubang Sparing Kabel', 'Titik', 45120, 70490),
(150, 'SMD-ABS-2A', 'Pengadaan dan pemasangan Alat Sambung Micro Duct cabang / lurus 2 cabang,termasuk gas block (seal).', 'pcs', 213100, 138070),
(151, 'SMD-ABS-3A', 'Pengadaan dan pemasangan Alat Sambung Micro Duct cabang / lurus 3 cabang,termasuk gas block (seal).', 'pcs', 232700, 149140),
(152, 'SMD-ABS-4A', 'Pengadaan dan pemasangan Alat Sambung Micro Duct cabang / lurus 4 cabang,termasuk gas block (seal).', 'pcs', 650000, 164060),
(153, 'SMD-ABS-6A', 'Pengadaan dan pemasangan Alat Sambung Micro Duct cabang / lurus 6 cabang,termasuk gas block (seal).', 'pcs', 544200, 180460),
(154, 'DD-MDSC-5/3.5', 'Pengadaan dan Pemasangan Straight Connector 5/3,5 mm', 'pcs', 19140, 450),
(155, 'DD-MDSC-10/8', 'Pengadaan dan Pemasangan Straight Connector 10/8 mm', 'pcs', 20150, 450),
(156, 'DD-MDSC-12/10', 'Pengadaan dan Pemasangan Straight Connector 12/10 mm', 'pcs', 21260, 450),
(157, 'DD-MDDI-1A', 'Pengadaan dan Pemasangan Micro Duct 5/3.5mm, Direct Install, 1 way, untuk Air / Water Blowing kabel FO termasuk connector', 'meter', 4590, 1610),
(158, 'DD-MDDI-2A', 'Pengadaan dan Pemasangan Micro Duct 5/3.5mm, Direct Install, 2 way, untuk Air / Water Blowing kabel FO termasuk connector', 'meter', 6240, 2130),
(159, 'DD-MDDI-4A', 'Pengadaan dan Pemasangan Micro Duct 5/3.5mm, Direct Install, 4 way, untuk Air / Water Blowing kabel FO termasuk connector', 'meter', 9860, 2430),
(160, 'DD-MDDI-7A', 'Pengadaan dan Pemasangan Micro Duct 5/3.5mm, Direct Install, 7 way, untuk Air / Water Blowing kabel FO termasuk connector', 'meter', 13990, 2450),
(161, 'DD-MDDI-12A', 'Pengadaan dan Pemasangan Micro Duct 5/3.5mm, Direct Install, 12 way, untuk Air / Water Blowing kabel FO termasuk connector', 'meter', 21040, 2820),
(162, 'DD-MDDI-19A', 'Pengadaan dan Pemasangan Micro Duct 5/3.5mm, Direct Install, 19 way, untuk Air / Water Blowing kabel FO termasuk connector', 'meter', 29320, 3290),
(163, 'DD-MDDI-24A', 'Pengadaan dan Pemasangan Micro Duct 5/3.5mm, Direct Install, 24 way, untuk Air / Water Blowing kabel FO termasuk connector', 'meter', 35820, 3760),
(164, 'DD-MDDI-1B', 'Pengadaan dan Pemasangan Micro Duct 10/8mm, Direct Install, 1 way, untuk Air / Water Blowing kabel FO termasuk connector', 'meter', 9300, 2080),
(165, 'DD-MDDI-2B', 'Pengadaan dan Pemasangan Micro Duct 10/8mm, Direct Install, 2 way, untuk Air / Water Blowing kabel FO termasuk connector', 'meter', 13280, 2430),
(166, 'DD-MDDI-4B', 'Pengadaan dan Pemasangan Micro Duct 10/8mm, Direct Install, 4 way, untuk Air / Water Blowing kabel FO termasuk connector', 'meter', 23660, 2780),
(167, 'DD-MDDI-7B', 'Pengadaan dan Pemasangan Micro Duct 10/8mm, Direct Install, 7 way, untuk Air / Water Blowing kabel FO termasuk connector', 'meter', 34630, 3220),
(168, 'DD-MDDI-1C', 'Pengadaan dan Pemasangan Micro Duct 12/10mm, Direct Install, 1 way, untuk Air / Water Blowing kabel FO termasuk connector', 'meter', 10980, 2630),
(169, 'DD-MDDI-2C', 'Pengadaan dan Pemasangan Micro Duct 12/10mm, Direct Install, 2 way, untuk Air / Water Blowing kabel FO termasuk connector', 'meter', 15830, 3020),
(170, 'DD-MDDI-4C', 'Pengadaan dan Pemasangan Micro Duct 12/10mm, Direct Install, 4 way, untuk Air / Water Blowing kabel FO termasuk connector', 'meter', 28390, 3760),
(171, 'DD-MDDI-7C', 'Pengadaan dan Pemasangan Micro Duct 12/10mm, Direct Install, 7 way, untuk Air / Water Blowing kabel FO termasuk connector', 'meter', 41780, 4030),
(172, 'DD-MDDI-1D', 'Pengadaan dan Pemasangan Micro Duct 16/14mm, Direct Install, 1 way, untuk Air / Water Blowing kabel FO termasuk connector', 'meter', 13290, 2790),
(173, 'DD-MDDI-2D', 'Pengadaan dan Pemasangan Micro Duct 16/14mm, Direct Install, 2 way, untuk Air / Water Blowing kabel FO termasuk connector', 'meter', 19160, 3200),
(174, 'DD-MDDB-1A', 'Pengadaan dan Pemasangan Micro Duct 5/3.5mm, Direct Buried, 1 way, untuk Air / Water Blowing kabel FO termasuk connector', 'meter', 11440, 2370),
(175, 'DD-MDDB-2A', 'Pengadaan dan Pemasangan Micro Duct 5/3.5mm, Direct Buried, 2 way, untuk Air / Water Blowing kabel FO termasuk connector', 'meter', 13530, 3120),
(176, 'DD-MDDB-4A', 'Pengadaan dan Pemasangan Micro Duct 5/3.5mm, Direct Buried, 4 way, untuk Air / Water Blowing kabel FO termasuk connector', 'meter', 19330, 3580),
(177, 'DD-MDDB-7A', 'Pengadaan dan Pemasangan Micro Duct 5/3.5mm, Direct Buried,7 way, untuk Air / Water Blowing kabel FO termasuk connector', 'meter', 25030, 3610),
(178, 'DD-MDDB-12A', 'Pengadaan dan Pemasangan Micro Duct 5/3.5mm, Direct Buried, 12 way, untuk Air / Water Blowing kabel FO termasuk connector', 'meter', 37210, 4140),
(179, 'DD-MDDB-19A', 'Pengadaan dan Pemasangan Micro Duct 5/3.5mm, Direct Buried, 19 way, untuk Air / Water Blowing kabel FO termasuk connector', 'meter', 47880, 4840),
(180, 'DD-MDDB-24A', 'Pengadaan dan Pemasangan Micro Duct 5/3.5mm, Direct Buried, 24 way, untuk Air / Water Blowing kabel FO termasuk connector', 'meter', 57020, 5520),
(181, 'DD-MDDB-1B', 'Pengadaan dan Pemasangan Micro Duct 10/8mm, Direct Buried, 1 way, untuk Air / Water Blowing kabel FO termasuk connector', 'meter', 19320, 3070),
(182, 'DD-MDDB-2B', 'Pengadaan dan Pemasangan Micro Duct 10/8mm, Direct Buried, 2 way, untuk Air / Water Blowing kabel FO termasuk connector', 'meter', 25030, 3580),
(183, 'DD-MDDB-4B', 'Pengadaan dan Pemasangan Micro Duct 10/8mm, Direct Buried, 4 way, untuk Air / Water Blowing kabel FO termasuk connector', 'meter', 44360, 4090),
(184, 'DD-MDDB-7B', 'Pengadaan dan Pemasangan Micro Duct 10/8mm, Direct Buried, 7 way, untuk Air / Water Blowing kabel FO termasuk connector', 'meter', 59150, 4720),
(185, 'DD-MDDB-1C', 'Pengadaan dan Pemasangan Micro Duct 12/10mm, Direct Buried, 1 way, untuk Air / Water Blowing kabel FO termasuk connector', 'meter', 22530, 3860),
(186, 'DD-MDDB-2C', 'Pengadaan dan Pemasangan Micro Duct 12/10mm, Direct Buried, 2 way, untuk Air / Water Blowing kabel FO termasuk connector', 'meter', 29480, 4440),
(187, 'DD-MDDB-4C', 'Pengadaan dan Pemasangan Micro Duct 12/10mm, Direct Buried, 4 way, untuk Air / Water Blowing kabel FO termasuk connector', 'meter', 52480, 5480),
(188, 'DD-MDDB-7C', 'Pengadaan dan Pemasangan Micro Duct 12/10mm, Direct Buried, 7 way, untuk Air / Water Blowing kabel FO termasuk connector', 'meter', 70360, 5910),
(189, 'DD-MDEC-5/3.5', 'Pengadaan dan Pemasangan End Cap 5/3,5 mm', 'pcs', 11080, 450),
(190, 'DD-MDEC-10/8', 'Pengadaan dan Pemasangan End Cap 10/8 mm', 'pcs', 11080, 450),
(191, 'DD-MDEC-12/10', 'Pengadaan dan Pemasangan End Cap 12/10 mm', 'pcs', 11080, 450),
(192, 'FID-28-1', 'Fabric Innerduct diameter 28mm 1 polongan', 'meter', 17570, 1760),
(193, 'FID-28-2', 'Fabric Innerduct diameter 28mm 2 polongan', 'meter', 31630, 1760),
(194, 'FID-28-3', 'Fabric Innerduct diameter 28mm 3 polongan', 'meter', 50960, 1760),
(195, 'MH-HH1', 'Pekerjaan Pembuatan Handhole Type HH1 ukuran dimensi dalam (P X L X T = 170x150x165) cor beton 1 : 2 : 3', 'pcs', 5395000, 2367690),
(196, 'MH-HH2', 'Pekerjaan Pembuatan Handhole Type HH2 ukuran dimensi dalam (P X L X T = 120x130x165) cor beton 1 : 2 : 3', 'pcs', 3775000, 1802490),
(197, 'HH-PIT-P-HA', 'Pekerjaan Pembuatan HH Pit Portable Home Access  beserta aksesorisnya', 'pcs', 671800, 159870),
(198, 'HH-PIT-P-ODP', 'Pekerjaan Pembuatan HH Pit Portable ODP beserta aksesorisnya', 'pcs', 2196000, 238480),
(199, 'HH-PIT-P-ODC', 'Pekerjaan Pembuatan HH Pit Portable ODC beserta aksesorisnya', 'pcs', 8329000, 449990),
(200, 'MH-CA', 'Pekerjaan Peninggian Tutup Manhole/Handhole', 'pcs', 713100, 623580),
(201, 'CO-OF', 'Pekerjaan Cut Over Kabel Serat Optik', 'core', 0, 51820),
(202, 'RS-IN-SC-1P', 'Pemasangan dan terminasi Roset/Indoor Optical Outlet with SC Adaptor - kap 1 port berikut pigtail', 'pcs', 75900, 23760),
(203, 'Close Rack 12U', '19\" Wallmounted Rack 12U Depth 450mm', 'Unit', 3109400, 550220),
(204, 'DC-OF-SM-2A', 'Pengadaan dan pemasangan Kabel Serat Optic Penanggal Single Mode 2 core dgn pelindung pipa G 657 A (indoor)', 'meter', 2900, 2560),
(205, 'FC-SC-DC', 'Pengadaan dan pemasangan SC/UPC Connector for Drop / Indoor Cable (Fusion)', 'pcs', 38600, 53180),
(206, 'Coring', 'Pekerjaan bobokan tembok/coring Cor Beton di ruang Shaft', 'titik', 0, 733630),
(207, 'Klem Galvanise', 'Pengadaan & Pemasangan klem galvanise untuk airblown pipe dengan ketebalan 2mm, lebar 2.5 cm menggunakan dynabolt termasuk rekondisi atau perbaikan kerusakan', 'pcs', 10800, 1830),
(208, 'Rak Pasif spliter 1:4', '19 inch 24 core Pull type optical fiber distribution frame 24 port Rack Mounted Indoor fiber patch panel, Include RS232 Passive Splitter Rackmount Chassis - 2U', 'pcs', 1361800, 385150),
(209, 'FTM-CR-19', 'Pengadaan & Pemasangan Optical Fiber High Density Cable, Close Rack 19 Inch. Lengkap termasuk Fibre Management maximum Capacity 7x144 core / 42U', 'Unit', 13648840, 372980),
(210, 'TC-SM-144', 'Pengadaan dan Pemasangan OTB Single Mode kapasitas 144 core (tidak termasuk terminasi), Adapter (SC Connector), pigtail dan protection sleeve pada cassette/box', 'pcs', 8423280, 93240),
(211, 'FTM-BC-8F-10', 'FO Cord Bundled cable 8F, dengan connector satu sisi SC/LC/FC (L=10m), dan splicing di sisi lainnya', 'pcs', 360000, 437470),
(212, 'FTM-BC-8F-1', 'Tambahan panjang cord bundled cable 8F', 'meter', 5850, 970),
(213, 'FTM-VR-90-Cover', 'Vertical raise 90 dan cover (4x4\")', 'piece', 562400, 50680),
(214, 'FTM-VR-45-Cover', 'Vertical raise 45 dan cover (4x4\")', 'piece', 463500, 50680),
(215, 'FTM-TF', 'Trumpet flare dan kit (4x4\")', 'piece', 234800, 50680),
(216, 'FTM-Connector-44', 'Connector 4x4\"', 'piece', 87100, 9210),
(217, 'FTM-Exit-4', '4\" Express exit', 'piece', 463200, 50680),
(218, 'FTM-PC-Cover', 'Pemasangan jalur Patchcord 4x12\" lengkap cover', 'meter', 2345100, 59170),
(219, 'Tray-Mesh-2', 'Wire mesh cable tray 20 x 10 cm, dengan supporting material', 'meter', 60400, 41220),
(220, 'Tray-Mesh-3', 'Wire mesh cable tray 30 x 10 cm, dengan supporting material', 'meter', 89100, 41220),
(221, 'VSS-90-2', 'Vertical Support Structure rod (2m) maksimal sepasang (kiri-kanan), dengan kit instalasi (tiap 90cm)', 'set', 70000, 41220),
(222, 'Tray-Bundled-Out-30', 'Tray cable FO Cord bundled Outdoor 30x10 cm lengkap dengan penguat', 'meter', 130000, 43650),
(223, 'Tray-Feeder-30', 'Tray cable feeder outdoor 30x10 cm lengkap dengan penguat', 'meter', 140000, 43650),
(224, 'GC-NYAF-16', 'Kabel Grounding NYAF 16 mm', 'meter', 23000, 1940),
(225, 'FTM-VA-Port', 'Validasi port FTM (Revitalisasi)', 'core', 0, 8790),
(226, 'FTM-Label', 'Pelabelan FTM (Revitalisasi)', 'core', 0, 2150),
(227, 'FTM-Plafon', 'Pekerjaan Plafon', 'm2', 154900, 76630),
(228, 'FTM-Lantai', 'Pekerjaan Lantai', 'm2', 75600, 117370),
(229, 'FTM-Dinding', 'Pekerjaan Dinding', 'm2', 199700, 119310),
(230, 'SITAC-MDU', 'Akuisisi Lahan SITAC MDU, termasuk sewa minimal selama 5 Tahun', 'node', 0, 0),
(231, 'Pondasi Type D500', 'Pengadaan dan pemasangan pondasi untuk kabinet outdoor besar, side walk dan patok pengaman mengacu PPJT JARLOKAT dan sistem grounding untuk perangkat dan sealed material (max. 1 ohm)', 'node', 5415090, 1421820),
(232, 'PSB PLN 2200 VA', 'Pasang Baru PLN 2.200 VA (Non Multi Guna) termasuk kabel power, MCB 20A, Box KWH Meter, Sealed material, Installation Kit, Pole 7m, Pipa PVC 1\"', 'Lumpsum', 2260000, 2292590),
(233, 'Biaya Penggunaan Listrik 2.200 VA', 'Biaya penggunaan listrik 2.200 VA, selama 3 bulan sejak Uji Terima (Migrasi)', 'Lumpsum', 0, 0),
(234, 'KTTL-100', 'Pengadaan dan Penarikan Kabel Tanah Tanam Langsung kapasitas 100\" / 0,6', 'Mtr', 113030, 2390),
(235, 'KTTL-200', 'Pengadaan dan Penarikan Kabel Tanah Tanam Langsung kapasitas 200\" / 0,6', 'Mtr', 216520, 3270),
(236, 'UC 4-6', 'Pengadaan dan Pemasangan Alat Sambung  tipe UC 4-6 (s/d 100 pair)', 'Unit', 456530, 78660),
(237, 'UC-6-9', 'Pengadaan dan Pemasangan Alat Sambung tipe UC 6-9 (s/d 200 pair)', 'Unit', 2168510, 151620),
(238, 'TK-MDU', 'Terminasi kabel pada MDF MDU sistem tekan sisip', 'Pair', 0, 1270),
(239, 'Migrasi MDU', 'Overburg (cut over) kabel sekunder termasuk connector UY-2, pendataan dan pengetesan kabel', 'Pair', 0, 9260),
(240, 'TRK-JW', 'Pengadaan dan penarikan jumper wire', 'Mtr', 860, 310),
(241, 'Dismantling MDU', 'Dismantling MDU dan assesoriesnya, checklist pendataan, dan rekondisi eks lokasi bongkaran MDU', 'Ls', 0, 2842810),
(242, 'Delivery MDU', 'Packing dan delivery MDU dari lokasi donor sampai ke lokasi akseptor', 'Kg', 0, 0),
(243, 'Instalasi MDU', 'Jasa instalasi MDU termasuk konfigurasi dan integrasi di lokasi akseptor', 'Ls', 0, 5364670);

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2021_01_26_063324_create_data_table', 1),
(2, '2021_01_26_075350_create_countries_table', 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `notifikasi_kontruksi`
--

DROP TABLE IF EXISTS `notifikasi_kontruksi`;
CREATE TABLE IF NOT EXISTS `notifikasi_kontruksi` (
  `id_notifikasi_k` int(100) NOT NULL AUTO_INCREMENT,
  `id_pengajuan` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `status_notifikasi` varchar(25) COLLATE utf8mb4_bin NOT NULL,
  `created_at` timestamp NOT NULL,
  `updated_at` timestamp NOT NULL,
  PRIMARY KEY (`id_notifikasi_k`),
  KEY `id_pengajuan` (`id_pengajuan`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data untuk tabel `notifikasi_kontruksi`
--

INSERT INTO `notifikasi_kontruksi` (`id_notifikasi_k`, `id_pengajuan`, `status_notifikasi`, `created_at`, `updated_at`) VALUES
(27, '1111', 'sudah_dilihat', '2021-03-11 02:29:34', '2021-03-11 02:29:34');

-- --------------------------------------------------------

--
-- Struktur dari tabel `notifikasi_procurement`
--

DROP TABLE IF EXISTS `notifikasi_procurement`;
CREATE TABLE IF NOT EXISTS `notifikasi_procurement` (
  `id_notifikasi_pro` int(100) NOT NULL AUTO_INCREMENT,
  `id_procurement` int(100) NOT NULL,
  `status_notifikasi` varchar(25) COLLATE utf8mb4_bin NOT NULL,
  `created_at` timestamp NOT NULL,
  `updated_at` timestamp NOT NULL,
  PRIMARY KEY (`id_notifikasi_pro`),
  KEY `id_procurement` (`id_procurement`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data untuk tabel `notifikasi_procurement`
--

INSERT INTO `notifikasi_procurement` (`id_notifikasi_pro`, `id_procurement`, `status_notifikasi`, `created_at`, `updated_at`) VALUES
(7, 88908, 'sudah_dilihat', '2021-03-11 02:59:57', '2021-03-11 02:59:57');

-- --------------------------------------------------------

--
-- Struktur dari tabel `opsi_material`
--

DROP TABLE IF EXISTS `opsi_material`;
CREATE TABLE IF NOT EXISTS `opsi_material` (
  `id_opsi` int(100) NOT NULL AUTO_INCREMENT,
  `id_rincian` int(100) NOT NULL,
  `harga_material` bigint(255) NOT NULL,
  `harga_jasa` bigint(255) NOT NULL,
  `kuantitas` int(100) NOT NULL,
  `created_at` timestamp NOT NULL,
  `updated_at` timestamp NOT NULL,
  PRIMARY KEY (`id_opsi`),
  KEY `id_rincian` (`id_rincian`)
) ENGINE=InnoDB AUTO_INCREMENT=175 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data untuk tabel `opsi_material`
--

INSERT INTO `opsi_material` (`id_opsi`, `id_rincian`, `harga_material`, `harga_jasa`, `kuantitas`, `created_at`, `updated_at`) VALUES
(171, 134, 10310, 3020, 2, '2021-03-11 02:29:38', '2021-03-11 02:29:38'),
(172, 135, 10310, 3020, 2, '2021-03-11 02:29:39', '2021-03-11 02:29:39'),
(173, 136, 15210, 3020, 2, '2021-03-11 02:29:39', '2021-03-11 02:29:39'),
(174, 137, 27520, 3020, 2, '2021-03-11 02:29:39', '2021-03-11 02:29:39');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pengajuan_project`
--

DROP TABLE IF EXISTS `pengajuan_project`;
CREATE TABLE IF NOT EXISTS `pengajuan_project` (
  `id_proactive` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `id_pengajuan` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `id_sap` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `nama_lokasi` text COLLATE utf8mb4_bin NOT NULL,
  `file_nde` varchar(500) COLLATE utf8mb4_bin NOT NULL,
  `file_mom` varchar(500) COLLATE utf8mb4_bin NOT NULL,
  `file_boq` varchar(500) COLLATE utf8mb4_bin NOT NULL,
  `created_at` timestamp NOT NULL,
  `updated_at` timestamp NOT NULL,
  PRIMARY KEY (`id_proactive`),
  KEY `id_pengajuan` (`id_pengajuan`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data untuk tabel `pengajuan_project`
--

INSERT INTO `pengajuan_project` (`id_proactive`, `id_pengajuan`, `id_sap`, `nama_lokasi`, `file_nde`, `file_mom`, `file_boq`, `created_at`, `updated_at`) VALUES
('1122', '1111', '1111s', 'BDG', 'C:\\wamp64\\tmp\\phpA6F3.tmp', 'C:\\wamp64\\tmp\\phpA6F4.tmp', 'C:\\wamp64\\tmp\\phpA704.tmp', '2021-03-11 02:29:33', '2021-03-11 02:29:33'),
('2211', '1111', '2222s', 'JKT', 'C:\\wamp64\\tmp\\phpA6F3.tmp', 'C:\\wamp64\\tmp\\phpA6F4.tmp', 'C:\\wamp64\\tmp\\phpA704.tmp', '2021-03-11 02:29:34', '2021-03-11 02:29:34');

-- --------------------------------------------------------

--
-- Struktur dari tabel `procurement`
--

DROP TABLE IF EXISTS `procurement`;
CREATE TABLE IF NOT EXISTS `procurement` (
  `id_procurement` int(100) NOT NULL,
  `id_proactive` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `id_pengajuan` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `id_po` int(100) NOT NULL,
  `created_at` timestamp NOT NULL,
  `updated_at` timestamp NOT NULL,
  PRIMARY KEY (`id_procurement`),
  KEY `id_proactive` (`id_proactive`),
  KEY `id_pengajuan` (`id_pengajuan`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data untuk tabel `procurement`
--

INSERT INTO `procurement` (`id_procurement`, `id_proactive`, `id_pengajuan`, `id_po`, `created_at`, `updated_at`) VALUES
(88908, '1122', '1111', 34232, '2021-03-11 02:59:57', '2021-03-11 02:59:57');

-- --------------------------------------------------------

--
-- Struktur dari tabel `rincian_pengajuan`
--

DROP TABLE IF EXISTS `rincian_pengajuan`;
CREATE TABLE IF NOT EXISTS `rincian_pengajuan` (
  `id_rincian` int(100) NOT NULL AUTO_INCREMENT,
  `id_pengajuan` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL,
  `updated_at` timestamp NOT NULL,
  PRIMARY KEY (`id_rincian`),
  KEY `id` (`id`),
  KEY `id_pengajuan` (`id_pengajuan`)
) ENGINE=InnoDB AUTO_INCREMENT=138 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data untuk tabel `rincian_pengajuan`
--

INSERT INTO `rincian_pengajuan` (`id_rincian`, `id_pengajuan`, `id`, `created_at`, `updated_at`) VALUES
(134, '1111', 1, '2021-03-11 02:29:34', '2021-03-11 02:29:34'),
(135, '1111', 2, '2021-03-11 02:29:34', '2021-03-11 02:29:34'),
(136, '1111', 3, '2021-03-11 02:29:34', '2021-03-11 02:29:34'),
(137, '1111', 4, '2021-03-11 02:29:34', '2021-03-11 02:29:34');

-- --------------------------------------------------------

--
-- Struktur dari tabel `stok_gudang`
--

DROP TABLE IF EXISTS `stok_gudang`;
CREATE TABLE IF NOT EXISTS `stok_gudang` (
  `id_stok_gudang` int(100) NOT NULL AUTO_INCREMENT,
  `id` int(11) NOT NULL,
  `kuantitas` int(100) NOT NULL,
  PRIMARY KEY (`id_stok_gudang`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- --------------------------------------------------------

--
-- Struktur dari tabel `transaksi_akhir`
--

DROP TABLE IF EXISTS `transaksi_akhir`;
CREATE TABLE IF NOT EXISTS `transaksi_akhir` (
  `id_transaksi` int(100) NOT NULL AUTO_INCREMENT,
  `id_pengajuan` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `total_harga_material` bigint(255) NOT NULL,
  `total_harga_jasa` bigint(255) NOT NULL,
  `total_sebelum_ppn` bigint(255) NOT NULL,
  `ppn` bigint(255) NOT NULL,
  `total_setelah_ppn` bigint(255) NOT NULL,
  `created_at` timestamp NOT NULL,
  `updated_at` timestamp NOT NULL,
  PRIMARY KEY (`id_transaksi`),
  KEY `id_pengajuan` (`id_pengajuan`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data untuk tabel `transaksi_akhir`
--

INSERT INTO `transaksi_akhir` (`id_transaksi`, `id_pengajuan`, `total_harga_material`, `total_harga_jasa`, `total_sebelum_ppn`, `ppn`, `total_setelah_ppn`, `created_at`, `updated_at`) VALUES
(9, '1111', 126700, 24160, 150860, 15086, 165946, '2021-03-11 02:31:25', '2021-03-11 02:31:25'),
(10, '1111', 126700, 24160, 150860, 15086, 165946, '2021-03-11 02:31:43', '2021-03-11 02:31:43');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `level` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`, `level`) VALUES
(2, 'Dadang', 'dadang@gmail.com', '$2y$10$MP6wt3rcmdFOjiUdMstbT.VFLCK7FNQzSdwFXx0J4Fa5W/.Q192BC', 'payRaimlNwdBbKO33pLUhz6Y7BhZNw8Wqc9GUV8bQknKoTSsGfLHVQr3p3BK', '2021-02-14 08:18:53', '2021-02-14 08:18:53', 'kontruksi'),
(3, 'Udin', 'udin@gmail.com', '$2y$10$MP6wt3rcmdFOjiUdMstbT.VFLCK7FNQzSdwFXx0J4Fa5W/.Q192BC', 'iy2OMezmhm3csrn2ePpIbGcPFhaCznkqBvVSPyjTccMNJSUbwPEFNFeBcsZA', '2021-02-14 08:18:53', '2021-02-14 08:18:53', 'procurement'),
(4, 'Didin', 'didin@gmail.com', '$2y$10$MP6wt3rcmdFOjiUdMstbT.VFLCK7FNQzSdwFXx0J4Fa5W/.Q192BC', 'mKmP6yGMwXW3bPCfsQuOpyZiXV43eGnc7veKUVeheUgTfySQprK0a9Sls2KS', '2021-02-14 08:18:53', '2021-02-14 08:18:53', 'warehouse');

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `history_pengambilan`
--
ALTER TABLE `history_pengambilan`
  ADD CONSTRAINT `history_pengambilan_ibfk_1` FOREIGN KEY (`id_rincian`) REFERENCES `rincian_pengajuan` (`id_rincian`);

--
-- Ketidakleluasaan untuk tabel `notifikasi_kontruksi`
--
ALTER TABLE `notifikasi_kontruksi`
  ADD CONSTRAINT `notifikasi_kontruksi_ibfk_1` FOREIGN KEY (`id_pengajuan`) REFERENCES `pengajuan_project` (`id_pengajuan`);

--
-- Ketidakleluasaan untuk tabel `notifikasi_procurement`
--
ALTER TABLE `notifikasi_procurement`
  ADD CONSTRAINT `notifikasi_procurement_ibfk_1` FOREIGN KEY (`id_procurement`) REFERENCES `procurement` (`id_procurement`);

--
-- Ketidakleluasaan untuk tabel `opsi_material`
--
ALTER TABLE `opsi_material`
  ADD CONSTRAINT `opsi_material_ibfk_1` FOREIGN KEY (`id_rincian`) REFERENCES `rincian_pengajuan` (`id_rincian`);

--
-- Ketidakleluasaan untuk tabel `procurement`
--
ALTER TABLE `procurement`
  ADD CONSTRAINT `procurement_ibfk_1` FOREIGN KEY (`id_proactive`) REFERENCES `pengajuan_project` (`id_proactive`),
  ADD CONSTRAINT `procurement_ibfk_2` FOREIGN KEY (`id_pengajuan`) REFERENCES `pengajuan_project` (`id_pengajuan`);

--
-- Ketidakleluasaan untuk tabel `rincian_pengajuan`
--
ALTER TABLE `rincian_pengajuan`
  ADD CONSTRAINT `rincian_pengajuan_ibfk_2` FOREIGN KEY (`id`) REFERENCES `list_produk` (`id`),
  ADD CONSTRAINT `rincian_pengajuan_ibfk_4` FOREIGN KEY (`id_pengajuan`) REFERENCES `pengajuan_project` (`id_pengajuan`);

--
-- Ketidakleluasaan untuk tabel `transaksi_akhir`
--
ALTER TABLE `transaksi_akhir`
  ADD CONSTRAINT `transaksi_akhir_ibfk_1` FOREIGN KEY (`id_pengajuan`) REFERENCES `pengajuan_project` (`id_pengajuan`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
