-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Waktu pembuatan: 16 Feb 2021 pada 11.39
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
-- Struktur dari tabel `list_produk`
--

DROP TABLE IF EXISTS `list_produk`;
CREATE TABLE IF NOT EXISTS `list_produk` (
  `id` int(11) NOT NULL,
  `designator` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `uraian_pekerjaan` varchar(1000) COLLATE utf8mb4_bin NOT NULL,
  `satuan` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `harga_material` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `harga_jasa` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data untuk tabel `list_produk`
--

INSERT INTO `list_produk` (`id`, `designator`, `uraian_pekerjaan`, `satuan`, `harga_material`, `harga_jasa`) VALUES
(1, 'DC-OF-SM-12D', 'Pengadaan dan pemasangan Kabel Duct Fiber Optik Single Mode 12 core G 652 D', 'meter', '7.900', '3.020'),
(2, 'DC-OF-SM-24D', 'Pengadaan dan pemasangan Kabel Duct Fiber Optik Single Mode 24 core G 652 D', 'meter', '10.310', '3.020'),
(3, 'DC-OF-SM-48D', 'Pengadaan dan pemasangan Kabel Duct Fiber Optik Single Mode 48 core G 652 D', 'meter', '15.210', '3.020'),
(4, 'DC-OF-SM-96D', 'Pengadaan dan pemasangan Kabel Duct Fiber Optik Single Mode 96 core G 652 D', 'meter', '27.520', '3.020'),
(5, 'DC-OF-SM-144D', 'Pengadaan dan pemasangan Kabel Duct Fiber Optik Single Mode 144 core G 652 D', 'meter', '39.050', '3.680'),
(6, 'DC-OF-SM-288D', 'Pengadaan dan pemasangan Kabel Duct Fiber Optik Single Mode 288 core G 652 D', 'meter', '70.930', '3.670'),
(7, 'AC-OF-SM-12D', 'Pengadaan dan pemasangan Kabel Udara Fiber Optik Single Mode 12 core G 652 D', 'meter', '11.250', '4.210'),
(8, 'AC-OF-SM-24D', 'Pengadaan dan pemasangan Kabel Udara Fiber Optik Single Mode 24 core G 652 D', 'meter', '13.830', '4.180'),
(9, 'AC-OF-SM-48D', 'Pengadaan dan pemasangan Kabel Udara Fiber Optik Single Mode 48 core G 652 D', 'meter', '19.340', '4.180'),
(10, 'AC-OF-SM-96D', 'Pengadaan dan pemasangan Kabel Udara Fiber Optik Single Mode 96 core G 652 D', 'meter', '29.490', '4.180'),
(11, 'DC-OF-SM-12C', 'Pengadaan dan pemasangan Kabel Duct Fiber Optik Single Mode 12 core G 655 C', 'meter', '10.660', '3.020'),
(12, 'DC-OF-SM-24C', 'Pengadaan dan pemasangan Kabel Duct Fiber Optik Single Mode 24 core G 655 C', 'meter', '15.220', '3.020'),
(13, 'DC-OF-SM-48C', 'Pengadaan dan pemasangan Kabel Duct Fiber Optik Single Mode 48 core G 655 C', 'meter', '24.010', '3.020'),
(14, 'DC-OF-SM-96C', 'Pengadaan dan pemasangan Kabel Duct Fiber Optik Single Mode 96 core G 655 C', 'meter', '49.660', '3.020'),
(15, 'AC-OF-SM-12C', 'Pengadaan dan pemasangan Kabel Udara Fiber Optik Single Mode 12 core G 655 C', 'meter', '14.690', '4.180'),
(16, 'AC-OF-SM-24C', 'Pengadaan dan pemasangan Kabel Udara Fiber Optik Single Mode 24 core G 655 C', 'meter', '19.460', '4.180'),
(17, 'AC-OF-SM-48C', 'Pengadaan dan pemasangan Kabel Udara Fiber Optik Single Mode 48 core G 655 C', 'meter', '30.400', '4.180'),
(18, 'AC-OF-SM-96C', 'Pengadaan dan pemasangan Kabel Udara Fiber Optik Single Mode 96 core G 655 C', 'meter', '52.490', '4.180'),
(19, 'DC-OF-SM-8-SC', 'Pengadaan dan pemasangan Kabel Duct Fiber Optik Single Mode 8 core G 652 D, \"Easy to split\"', 'meter', '9.080', '3.020'),
(20, 'DC-OF-SM-12-SC', 'Pengadaan dan pemasangan Kabel Duct Fiber Optik Single Mode 12 core G 652 D, \"Easy to split\"', 'meter', '11.310', '3.020'),
(21, 'DC-OF-SM-24-SC', 'Pengadaan dan pemasangan Kabel Duct Fiber Optik Single Mode 24 core G 652 D, \"Easy to split\"', 'meter', '15.840', '3.020'),
(22, 'AC-OF-SM-8-SC', 'Pengadaan dan pemasangan Kabel Udara Fiber Optik Single Mode 8 core G 652 D, \"Easy to split\"', 'meter', '10.840', '4.180'),
(23, 'AC-OF-SM-12-SC', 'Pengadaan dan pemasangan Kabel Udara Fiber Optik Single Mode 12 core G 652 D, \"Easy to split\"', 'meter', '14.270', '4.180'),
(24, 'AC-OF-SM-24-SC', 'Pengadaan dan pemasangan Kabel Udara Fiber Optik Single Mode 24 core G 652 D, \"Easy to split\"', 'meter', '17.550', '4.180'),
(25, 'SC-OF-SM-24', 'Pengadaan dan pemasangan alat sambung (cabang/ lurus) untuk Fiber Optik kapasitas 12 - 24 core', 'pcs', '573.200', '29.790'),
(26, 'SC-OF-SM-48', 'Pengadaan dan pemasangan alat sambung (cabang/ lurus) untuk Fiber Optik kapasitas 12 - 48 core', 'pcs', '647.600', '29.790'),
(27, 'SC-OF-SM-96', 'Pengadaan dan pemasangan alat sambung (cabang/ lurus) untuk Fiber Optik kapasitas 12 - 96 core', 'pcs', '739.300', '29.790'),
(28, 'SC-OF-SM-144', 'Pengadaan dan pemasangan alat sambung (cabang/ lurus) untuk Fiber Optik kapasitas 12 - 144 core', 'pcs', '1.027.000', '29.790'),
(29, 'SC-OF-SM-288', 'Pengadaan dan pemasangan alat sambung (cabang/ lurus) untuk Fiber Optik kapasitas 12 - 288 core', 'pcs', '2.020.000', '29.790'),
(30, 'OS-SM-1', 'Penyambungan Kabel Optik Single Mode kap 1 core dengan cara fusion splice', 'core', '0', '51.240'),
(31, 'AB-OF-SM-2D', 'Pengadaan dan pemasangan  Air Blown Cable Optik, Single Mode 2 core, G 652 D', 'meter', '1.670', '2.090'),
(32, 'AB-OF-SM-4D', 'Pengadaan dan pemasangan  Air Blown Cable Optik, Single Mode 4 core, G 652 D', 'meter', '2.330', '2.090'),
(33, 'AB-OF-SM-8D', 'Pengadaan dan pemasangan  Air Blown Cable Optik, Single Mode  core, G 652 D', 'meter', '4.350', '2.090'),
(34, 'AB-OF-SM-12D', 'Pengadaan dan pemasangan  Air Blown Cable Optik, Single Mode 12 core, G 652 D', 'meter', '6.020', '2.090'),
(35, 'AB-OF-SM-24D', 'Pengadaan dan pemasangan  Air Blown Cable Optik, Single Mode 24 core, G 652 D', 'meter', '8.590', '2.970'),
(36, 'AB-OF-SM-48D', 'Pengadaan dan pemasangan  Air Blown Cable Optik, Single Mode 48 core, G 652 D', 'meter', '13.570', '2.970'),
(37, 'AB-OF-SM-72D', 'Pengadaan dan pemasangan  Air Blown Cable Optik, Single Mode 72 core, G 652 D', 'meter', '21.780', '2.970'),
(38, 'AB-OF-SM-96D', 'Pengadaan dan pemasangan  Air Blown Cable Optik, Single Mode 96 core, G 652 D', 'meter', '25.630', '2.940'),
(39, 'AB-OF-SM-144D', 'Pengadaan dan pemasangan  Air Blown Cable Optik, Single Mode 144 core, G 652 D', 'meter', '39.540', '3.360'),
(40, 'AB-OF-SM-288D', 'Pengadaan dan pemasangan  Air Blown Cable Optik, Single Mode 288 core, G 652 D', 'meter', '75.400', '4.200'),
(41, 'PC-APC-657-2', 'Pengadaan dan pemasangan Patch cord 2 meter, (FC/LC/SC-APC To FC/LC/SC-APC), G.657', 'pcs', '60.670', '2.640'),
(42, 'PC-APC/UPC-657-A1', 'Additional patch cord, G.657', 'meter', '4.000', '1.300'),
(43, 'PC-UPC-657-2', 'Pengadaan dan pemasangan Patch cord 2 meter, (FC/LC/SC-UPC To FC/LC/SC-UPC), G.657', 'pcs', '50.220', '2.640'),
(44, 'PC-APC-655-2', 'Pengadaan dan pemasangan Patch cord 2 meter, (FC/LC/SC-APC To FC/LC/SC-APC), G.655C', 'pcs', '55.350', '2.640'),
(45, 'PC-APC/UPC-655-A1', 'Additional patch cord, G.655', 'meter', '4.000', '1.300'),
(46, 'PC-UPC-655-2', 'Pengadaan dan pemasangan Patch cord 2 meter, (FC/LC/SC-UPC To FC/LC/SC-UPC), G.655C', 'pcs', '47.990', '2.640'),
(47, 'PC-APC-652-2', 'Pengadaan dan pemasangan Patch cord 2 meter, (FC/LC/SC-APC To FC/LC/SC-APC), G.652 D', 'pcs', '56.760', '2.640'),
(48, 'PC-APC/UPC-652-A1', 'Additional patch cord, G.652D', 'meter', '4.000', '1.300'),
(49, 'PC-UPC-652-2', 'Pengadaan dan pemasangan Patch cord 2 meter, (FC/LC/SC-UPC To FC/LC/SC-UPC), G.652D', 'pcs', '45.910', '2.640'),
(50, 'ODC-C-48', 'Pengadaan dan pemasangan ODC-Pole (Outdoor)  dengan space untuk spliter modular termasuk material adaptor SC  kap 48 core, berikut pelabelan', 'pcs', '3.707.000', '3.642.320'),
(51, 'ODC-C-96', 'Pengadaan dan pemasangan kabinet ODC (Outdoor) kap 96 core dengan space untuk spliter modular termasuk material adaptor SC, pigtail, pondasi berlapis keramik, lantai kerja keramik, patok pengaman (5 buah), berikut pelabelan', 'pcs', '7.734.000', '4.558.030'),
(52, 'ODC-C-144', 'Pengadaan dan pemasangan kabinet ODC (Outdoor) kap 144 core dengan space untuk spliter modular termasuk material adaptor SC, pigtail, pondasi berlapis keramik, lantai kerja keramik, patok pengaman (5 buah), berikut pelabelan', 'pcs', '10.340.000', '4.921.740'),
(53, 'ODC-C-288', 'Pengadaan dan pemasangan kabinet ODC (Outdoor) kap 288 core dengan space untuk spliter modular termasuk material adaptor SC, pigtail, pondasi berlapis keramik, lantai kerja keramik, patok pengaman (5 buah), berikut pelabelan', 'pcs', '19.530.000', '4.958.870'),
(54, 'ODC-C-576', 'Pengadaan dan pemasangan kabinet ODC (Outdoor) kap 576 core dengan space untuk spliter modular termasuk material adaptor SC, pigtail, pondasi berlapis keramik, lantai kerja keramik, patok pengaman (5 buah), berikut pelabelan', 'pcs', '49.170.000', '4.919.990'),
(55, 'ODC-PROT-144', 'Pengaman ODC 144 (Besi siku 4cmx4cmx4mm, besi beton 10mm (jarak antar besi beton 10cm, engsel besar, baut ram set 14mm dan kunci gembok 50mm', 'unit', '1.575.000', '679.000'),
(56, 'ODC-PROT-288', 'Pengaman ODC 288 (Besi siku 4cmx4cmx4mm, besi beton 10mm (jarak antar besi beton 10cm, engsel besar, baut ram set 14mm dan kunci gembok 50mm', 'unit', '1.710.000', '727.500'),
(57, 'ODP-CA-8', 'Pengadaan dan pemasangan ODP type Closure Aerial Kap 8 core berikut space pasive spliter (1:8), adapter SC,berikut pelabelan dan penempelan QR code (disediakan oleh Telkom)', 'pcs', '975.000', '119.210'),
(58, 'ODP-CA-16', 'Pengadaan dan pemasangan ODP type Closure Aerial Kap 16 core berikut space 2 pasive spliter (1:8), adapter SC,berikut pelabelan dan penempelan QR code (disediakan oleh Telkom)', 'pcs', '1.107.000', '119.210'),
(59, 'ODP-A-8', 'Pengadaan dan pemasangan ODP type Indoor/wall Kap 8 core berikut space pasive spliter (1:8), adapter SC,berikut pelabelan dan penempelan QR code (disediakan oleh Telkom)', 'pcs', '775.800', '119.210'),
(60, 'ODP-A-16', 'Pengadaan dan pemasangan ODP type Indoor/wall Kap 16 core berikut space 2 pasive spliter (1:8), adapter SC,berikut pelabelan dan penempelan QR code (disediakan oleh Telkom)', 'pcs', '896.000', '119.210'),
(61, 'ODP-Solid-PB-8', 'Pengadaan dan pemasangan ODP type SOLID Kap 8 core adaptor SC/UPC terdiri dari 1 Box Spliter (termasuk 1 spliter 1:8), 1 Box Dummy beserta Accessories, berikut pelabelan dan penempelan QR code (disediakan oleh Telkom)', 'pcs', '1.054.300', '135.900'),
(62, 'ODP-Solid-PB-16', 'Pengadaan dan pemasangan ODP type SOLID Kap 16 core adaptor SC/UPC terdiri dari 2 Box Spliter (termasuk 2 spliter 1:8) beserta Accessories, berikut pelabelandan penempelan QR code (disediakan oleh Telkom)', 'pcs', '1.366.200', '135.900'),
(63, 'ODP-PL-8', 'Pengadaan dan pemasangan ODP ( Pilar ) kap  8 core termasuk pigtail, berikut space 1 splitter (1:8),  pelabelan penempelan QR code (disediakan oleh Telkom)', 'pcs', '1.702.000', '119.210'),
(64, 'ODP-PL-16', 'Pengadaan dan pemasangan ODP ( Pilar ) kap  16 core termasuk pigtail, berikut space 2 splitter (1:8),  pelabelan penempelan QR code (disediakan oleh Telkom)', 'pcs', '1.935.000', '119.210'),
(65, 'TC-SM-12', 'Pengadaan dan Pemasangan OTB termasuk terminasi dan penyambungan kabel optik Single mode kap 12 core serta Adapter (SC Connector), pigtail dan protection sleeve pada cassette/box', 'pcs', '810.000', '647.360'),
(66, 'TC-SM-24', 'Pengadaan dan Pemasangan OTB termasuk terminasi dan penyambungan kabel optik Single mode kap 24 core serta Adapter (SC Connector), pigtail dan protection sleeve pada cassette/box', 'pcs', '1.139.000', '1.294.720'),
(67, 'TC-SM-48', 'Pengadaan dan Pemasangan OTB termasuk terminasi dan penyambungan kabel optik Single mode kap 48 core serta Adapter (SC Connector), pigtail dan protection sleeve pada cassette/box', 'pcs', '2.321.000', '2.589.450'),
(68, 'TC-SM-96', 'Pengadaan dan Pemasangan OTB termasuk terminasi dan penyambungan kabel optik Single mode kap 96 core serta Adapter (SC Connector), pigtail dan protection sleeve pada cassette/box', 'pcs', '4.214.000', '5.178.910'),
(69, 'PS-1-2-ODC', 'Pengadaan dan pemasangan Passive Splitter 1:2, type modular SC/UPC, for ODC, termasuk pigtail', 'pcs', '208.300', '29.650'),
(70, 'PS-1-4-ODC', 'Pengadaan dan pemasangan Passive Splitter 1:4, type modular SC/UPC, for ODC, termasuk pigtail', 'pcs', '276.300', '29.650'),
(71, 'PS-1-8-ODP', 'Pengadaan dan pemasangan Passive Splitter 1:8, type modular SC/UPC, for ODP, termasuk pigtail', 'pcs', '452.500', '29.650'),
(72, 'PS-1-16-ODP', 'Pengadaan dan pemasangan Passive Splitter 1:16, type modular SC/UPC, for ODP, termasuk pigtail', 'pcs', '680.000', '29.650'),
(73, 'PS-2-2-ODC', 'Pengadaan dan pemasangan Passive Splitter 2:2, type modular SC/UPC, for ODC, termasuk pigtail', 'pcs', '535.900', '29.860'),
(74, 'PS-2-4-ODC', 'Pengadaan dan pemasangan Passive Splitter 2:4, type modular SC/UPC, for ODC, termasuk pigtail', 'pcs', '632.600', '29.860'),
(75, 'PS-2-8-ODX', 'Pengadaan dan pemasangan Passive Splitter 2:8, type modular SC/UPC, for ODC, termasuk pigtail', 'pcs', '612.000', '33.950'),
(76, 'PS-1-32-ODX', 'Pengadaan dan pemasangan Passive Splitter 1:32, type modular SC/UPC, for ODC/ODP, termasuk pigtail', 'pcs', '1.169.000', '33.950'),
(77, 'SITAC ODC', 'Akuisisi Lahan SITAC ODC', 'Node', '0', '6.473.640'),
(78, 'PU-S7.0-140', 'Pengadaan dan Pemasangan Tiang Besi 7 meter, berikut cat & cor pondasi dan assesories dengan kekuatan tarik 140 kg', 'pcs', '1.190.000', '210.150'),
(79, 'PU-S9.0-140', 'Pengadaan dan Pemasangan Tiang Besi 9 meter, berikut cat & cor dan assesories dengan kekuatan tarik 140 kg', 'pcs', '1.885.000', '212.450'),
(80, 'PU-C7.0-250', 'Pengadaan dan Pemasangan Tiang Beton  7 meter, berikut assesories dengan kekuatan tarik 250 kg', 'pcs', '2.480.000', '174.550'),
(81, 'PU-C9.0-300', 'Pengadaan dan Pemasangan Tiang Beton  9 meter, berikut assesories dengan kekuatan tarik 300 kg', 'pcs', '2.966.000', '172.430'),
(82, 'GU-G', 'Pengadaan dan Pemasangan Temberang Tarik', 'pcs', '407.400', '52.950'),
(83, 'PU-AS', 'Pengadaan dan Pemasangan Asesoris tiang eksisting', 'set', '25.650', '35.240'),
(84, 'GB-G1', 'Pengadaan dan Pemasangan Grounding 1 titik rod pada ODP /kotak pembagi dengan tahanan maks 3 ohm', 'pcs', '700.000', '355.960'),
(85, 'GB-G3', 'Pengadaan dan Pemasangan Grounding 3 titik rod pada ODC dengan tahanan maks 1 ohm', 'pcs', '2.108.000', '412.660'),
(86, 'GB-G-INTG', 'Pengadaan dan Pemasangan material Grounding di lokasi gedung eksisting dengan cara integrasi', 'pcs', '211.700', '143.410'),
(87, 'TC-02-ODC', 'Pengadaan dan Pemasangan Riser Pipe untuk pengaman kabel optik ke ODC Pole / titik naik KU diamater 2 inch  panjang 3 meter', 'pcs', '190.500', '53.180'),
(88, 'PP-OF-IN', 'Pengadaan dan Pemasangan Pipe Protector Indoor Cable (PVC White) High Impact Conduit 20 mm', 'meter', '20.910', '3.510'),
(89, 'PP-OF-OUT', 'Pengadaan dan Pemasangan Pipe Protector  Outdoor Cable ( PVC Black) High Impact Conduit 20 mm', 'meter', '20.650', '3.510'),
(90, 'DD-S3-1', 'Pengadaan dan pemasangan Pipa Besi Diameter 100 mm dan ketebalan pipa 3,65 mm untuk crossing 1 pipa  bentang ≤ 6 meter', 'meter', '263.500', '52.870'),
(91, 'DD-S3-2', 'Pengadaan dan pemasangan Pipa Besi Diameter 100 mm dan ketebalan pipa 3,65 mm untuk crossing 2 pipa  bentang ≤ 6 meter', 'meter', '527.100', '70.490'),
(92, 'DD-S3-3', 'Pengadaan dan pemasangan Pipa Besi Diameter 100 mm dan ketebalan pipa 3,65 mm untuk crossing 3 pipa  bentang ≤ 6 meter', 'meter', '790.700', '105.750'),
(93, 'DD-V4-1', 'Pengadan dan Pemasangan Pipa Duct PVC diameter dalam 100 mm, ketebalan 4 mm, 1 pipa termasuk pengecoran', 'meter', '50.150', '52.870'),
(94, 'DD-V4-2', 'Pengadan dan Pemasangan Pipa Duct PVC diameter dalam 100 mm, ketebalan 4 mm, 2 pipa termasuk pengecoran', 'meter', '100.200', '70.610'),
(95, 'DD-V5-1', 'Pemasangan Pipa Duct dengan selubung pasir dia 100 mm dengan ketebalan 5,5 mm, 1 pipa ( crossing )', 'meter', '48.490', '52.870'),
(96, 'DD-V5-2', 'Pemasangan Pipa Duct dengan selubung pasir dia 100 mm dengan ketebalan 5,5 mm, 2 pipa ( crossing )', 'meter', '97.470', '70.490'),
(97, 'DD-DA-S1', 'Pengadaan dan pemasangan pipa Duct menempel pada  jembatan existing menggunakan Pipa Galvanis diamenter 100 mm, tebal 3,65 mm, 1 pipa', 'meter', '263.500', '211.500'),
(98, 'DD-DA-S2', 'Pengadaan dan pemasangan pipa Duct menempel pada  jembatan existing menggunakan Pipa Galvanis diamenter 100 mm, tebal 3,65 mm, 2 pipa', 'meter', '527.100', '423.010'),
(99, 'DD-DA-S4', 'Pengadaan dan pemasangan pipa Duct menempel pada  jembatan existing menggunakan Pipa Galvanis diamenter 100 mm, tebal 3,65 mm, 4 pipa', 'meter', '1.054.000', '846.040'),
(100, 'DD-BSS-S1', 'Pengadaan dan pemasangan pipa Duct pada jembatan dengan self support berpenguatan menggunakan Pipa besi Galv 1 pipa, bentang 6 - 12 meter', 'meter', '339.500', '211.500'),
(101, 'DD-BSS-S2', 'Pengadaan dan pemasangan pipa Duct pada jembatan dengan self support berpenguatan menggunakan Pipa besi Galv 2 pipa, bentang 6 - 12 meter', 'meter', '679.000', '423.010'),
(102, 'DD-BTS-S1', 'Pengadaan dan pemasangan pipa Duct pada jembatan menggunakan Pipa besi Galv 1 pipa, bentang 6 - 12 meter', 'meter', '338.200', '211.500'),
(103, 'DD-BTS-S2', 'Pengadaan dan pemasangan pipa Duct pada jembatan menggunakan Pipa besi Galv 2 pipa, bentang 6 - 12 meter', 'meter', '676.500', '423.010'),
(104, 'DD-BTS-S4', 'Pengadaan dan pemasangan pipa Duct pada jembatan menggunakan Pipa besi Galv 4 pipa, bentang 6 - 12 meter', 'meter', '1.344.000', '641.270'),
(105, 'HB-PS-1', 'Pengadaan dan pemasangan Pipa Duct dengan system gantung 1 tiang besi, bentang s/d 40 meter', 'meter', '118.200', '33.710'),
(106, 'HB-PS-2', 'Pengadaan dan pemasangan Pipa Duct dengan system gantung 2 tiang besi, bentang s/d 100 meter', 'meter', '243.500', '40.450'),
(107, 'HB-PS-4', 'Pengadaan dan pemasangan Pipa Duct dengan system gantung 4 tiang besi, bentang ≥ 100 meter', 'meter', '471.400', '47.190'),
(108, 'HB-PC-2', 'Pengadaan dan pemasangan Pipa Duct dengan system gantung 2 tiang beton, bentang s/d 100 meter', 'meter', '400.600', '40.450'),
(109, 'HB-PC-4', 'Pengadaan dan pemasangan Pipa Duct dengan system gantung 4 tiang beton, bentang ≥ 100 meter', 'meter', '785.000', '47.190'),
(110, 'DD-BMR-1', 'Pengadaan dan Pemasangan Boring pada Lintasan Kereta Api menggunakan 1 pipa Galvanis diameter 100 mm tebal 3,65 mm', 'track', '790.700', '19.420.930'),
(111, 'DD-BMR-2', 'Pengadaan dan Pemasangan Boring pada Lintasan Kereta Api menggunakan 2 pipa Galvanis diameter 100 mm tebal 3,65 mm', 'track', '1.581.000', '29.131.400'),
(112, 'DD-BMR-4', 'Pengadaan dan Pemasangan Boring pada Lintasan Kereta Api menggunakan 4 pipa Galvanis diameter 100 mm tebal 3,65 mm', 'track', '3.163.000', '38.841.870'),
(113, 'DC-SD-28-1', 'Pengadaan dan Pemasangan 1 Subduct 28/32 mm pada polongan route Duct', 'meter', '7.570', '1.420'),
(114, 'DC-SD-28-3', 'Pengadaan dan Pemasangan 1 Subduct 28/32 mm pada polongan route Duct, 3 pipa', 'meter', '22.730', '1.860'),
(115, 'DC-SD-33-1', 'Pengadaan dan Pemasangan 1 Subduct 40/33 pada polongan route Duct', 'meter', '9.180', '1.420'),
(116, 'DC-SD-33-2', 'Pengadaan dan Pemasangan 1 Subduct 40/33 pada polongan route Duct, 2 pipa', 'meter', '16.510', '1.860'),
(117, 'DC-SD-43-1', 'Pengadaan dan Pemasangan 1 Subduct 50/42 pada polongan route Duct', 'meter', '18.000', '1.420'),
(118, 'DC-SD-43-2', 'engadaan dan Pemasangan 1 Subduct 50/42 pada polongan route Duct, 2 pipa', 'meter', '36.020', '1.860'),
(119, 'DCD-PVC-1', 'Pengadaan dan Pemasangan Duct Cable Penanggal diameter pipa PVC 2 inch (Class AW) 1  pipa', 'meter', '11.110', '1.400'),
(120, 'DD-BM-100-1', 'Pengadaan dan Pemasangan Pipa galvanis dengan ukuran diameter 100 mm dan ketebalan 3,65 mm dengan cara boring manual /mesin   1 pipa dengan kedalaman minimal 150 cm', 'meter', '263.500', '62.520'),
(121, 'DD-BM-100-2', 'Pengadaan dan Pemasangan Pipa galvanis dengan ukuran diameter 100 mm dan ketebalan 3,65 mm dengan cara boring manual /mesin   1 pipa dengan kedalaman minimal 150 cm, 2 pipa', 'meter', '527.100', '64.860'),
(122, 'DD-BM-50-1', 'Pengadaan dan Pemasangan Pipa galvanis dengan ukuran diameter 50 mm dan ketebalan 2,7 mm cara boring manual /mesin 1 pipa dengan kedalaman minimal 150 cm', 'meter', '153.700', '32.190'),
(123, 'DD-BM-50-2', 'Idem, 2 pipa', 'meter', '305.400', '32.190'),
(124, 'DD-BM-HDPE-40-1', 'Pekerjaan Boring manual (rojok) HDPE  40/33 mm 1 pipa dengan kedalaman 1,5 meter', 'meter', '0', '32.310'),
(125, 'DD-BM-HDPE-40-2', 'Pengadaan dan Pemasangan Pipa galvanis dengan ukuran diameter 50 mm dan ketebalan 2,7 mm cara boring manual /mesin 1 pipa dengan kedalaman minimal 150 cm, 2 pipa', 'meter', '0', '32.220'),
(126, 'DD-BM-HDPE-50-1', 'Pekerjaan Boring manual (rojok)  HDPE  50/42 mm 1 pipa dengan kedalaman 1,5 meter', 'meter', '0', '32.310'),
(127, 'DD-BM-HDPE-50-2', 'Pekerjaan Boring manual (rojok)  HDPE  50/42 mm 2 pipa dengan kedalaman 1,5 meter', 'meter', '0', '32.190'),
(128, 'DD-HDPE-40-1', 'Pengadaan dan pemasangan pipa  HDPE  40/33 mm 1 pipa dengan kedalaman 1,5 meter', 'meter', '10.830', '1.360'),
(129, 'DD-HDPE-40-2', 'Pengadaan dan pemasangan pipa  HDPE  40/33 mm 2 pipa dengan kedalaman 1,5 meter', 'meter', '21.670', '1.640'),
(130, 'DD-HDPE-50-1', 'Pengadaan dan pemasangan pipa HDPE  50/42 mm 1 pipa dengan kedalaman 1,5 meter', 'meter', '17.390', '1.360'),
(131, 'DD-HDPE-50-2', 'Pengadaan dan pemasangan pipa HDPE  50/42 mm 2 pipa dengan kedalaman 1,5 meter', 'meter', '34.790', '1.640'),
(132, 'DD-HDPE-40-1C', 'Pengadaan dan pemasangan pipa HDPE 40/33 mm 1 pipa dengan kedalaman 1,5 meter sudah termasuk connector HDPE tipe compression fitting', 'meter', '11.270', '1.360'),
(133, 'DD-HDPE-40-2C', 'Pengadaan dan pemasangan pipa HDPE 40/33 mm 2 pipa dengan kedalaman 1,5 meter sudah termasuk connector HDPE tipe compression fitting', 'meter', '22.400', '1.640'),
(134, 'DD-ROD', 'Pekerjaan Pembersihan pada route Duct yang kosong / Rodding Duct Existing.', 'meter', '0', '1.760'),
(135, 'DD-RV-1', 'Pekerjaan Perbaikan Route Duct / HDPE, 1 pipa.', 'meter', '30.790', '70.490'),
(136, 'DD-RV-CONCRETE', 'Pekerjaan bobok dinding MH / HH termasuk perbaikan kembali', 'm3', '902.000', '634.530'),
(137, 'DD-DS-S1', 'Pengadaan dan pemasangan duct baru dengan cara melakukan boring dibawah dasar parit/sungai dengan kedalaman 1,5 M dengan menggunakan PVC diamater 100 mm dan ketebalan 5,5 mm 1 pipa', 'meter', '218.500', '148.050'),
(138, 'DD-DS-COD1-M', 'Pengadaan dan pemasangan duct  baru type COD, dengan mesin pengeboran (borring) dibawah parit, pada kedalaman 1,50 m di bawah dasar selokan, tanpa perlindungan PVC, 1 pipa', 'meter', '21.030', '415.170'),
(139, 'Klem HDPE', 'Pengkleman HDPE di dinding beton dengan klem ketebalan 2mm lebar 2,5 cm menggunakan dynabolt termasuk rekondisi atau perbaikan kerusakan', 'pcs', '9.770', '2.230'),
(140, 'BC-TR-0.4', 'Pekerjaan Galian, Pengurugan kembali dan perbaikan kembali, pengisian pasir, warning tape dan tanda rute kabel serta tempat sambung kedalaman 0.4 meter', 'meter', '0', '11.680'),
(141, 'BC-TR-0.6', 'Pekerjaan Galian, Pengurugan kembali dan perbaikan kembali, pengisian pasir, warning tape dan tanda rute kabel serta tempat sambung, kedalaman 0,6 meter', 'meter', '0', '14.930'),
(142, 'BC-TR-1', 'Pekerjaan Galian, Pengurugan kembali dan perbaikan kembali, pengisian pasir, warning tape dan tanda rute kabel serta tempat sambung, kedalaman 1 meter', 'meter', '0', '22.600'),
(143, 'BC-TR-2', 'Pekerjaan Galian, Pengurugan kembali dan perbaikan kembali, pengisian pasir, warning tape dan tanda rute kabel serta tempat sambung, kedalaman 1,2 meter', 'meter', '0', '26.640'),
(144, 'BC-TR-3', 'Pekerjaan Galian, Pengurugan kembali dan perbaikan kembali, pengisian pasir, warning tape dan tanda rute kabel serta tempat sambung, kedalaman 1,3 meter', 'meter', '0', '28.360'),
(145, 'BC-TR-4', 'Pekerjaan Galian, Pengurugan kembali dan perbaikan kembali, pengisian pasir, warning tape dan tanda rute kabel serta tempat sambung, kedalaman 1,4 meter', 'meter', '0', '30.400'),
(146, 'BC-TR-5', 'Pekerjaan Galian, Pengurugan kembali dan perbaikan kembali, pengisian pasir, warning tape dan tanda rute kabel serta tempat sambung kedalaman 1,5 meter', 'meter', '0', '32.310'),
(147, 'BCTR-ROCK', 'Pengadaan galian batu masif kedalaman 1,5 meter, panjang minimum 5 m, termasuk pengadaan marking post', 'meter', '0', '186.830'),
(148, 'BC-MTR-0.4', 'Pekerjaan galian pada permukaan jalan aspal dengan lebar galian 8 cm dan kedalaman 40 cm, termasuk pemetaan utility eksisting dengan metode Geo Penetrating Radar, perbaikan, pengurugan (backfilling) menggunakan concrete type K225 dan pengaspalan', 'meter', '0', '179.030'),
(149, 'BD-SK', 'Pekerjaan bobokan dan perbaikan Dinding Chamber / BTS / STO untuk lubang Sparing Kabel', 'Titik', '45.120', '70.490'),
(150, 'SMD-ABS-2A', 'Pengadaan dan pemasangan Alat Sambung Micro Duct cabang / lurus 2 cabang,termasuk gas block (seal).', 'pcs', '213.100', '138.070'),
(151, 'SMD-ABS-3A', 'Pengadaan dan pemasangan Alat Sambung Micro Duct cabang / lurus 3 cabang,termasuk gas block (seal).', 'pcs', '232.700', '149.140'),
(152, 'SMD-ABS-4A', 'Pengadaan dan pemasangan Alat Sambung Micro Duct cabang / lurus 4 cabang,termasuk gas block (seal).', 'pcs', '650.000', '164.060'),
(153, 'SMD-ABS-6A', 'Pengadaan dan pemasangan Alat Sambung Micro Duct cabang / lurus 6 cabang,termasuk gas block (seal).', 'pcs', '544.200', '180.460'),
(154, 'DD-MDSC-5/3.5', 'Pengadaan dan Pemasangan Straight Connector 5/3,5 mm', 'pcs', '19.140', '450'),
(155, 'DD-MDSC-10/8', 'Pengadaan dan Pemasangan Straight Connector 10/8 mm', 'pcs', '20.150', '450'),
(156, 'DD-MDSC-12/10', 'Pengadaan dan Pemasangan Straight Connector 12/10 mm', 'pcs', '21.260', '450'),
(157, 'DD-MDDI-1A', 'Pengadaan dan Pemasangan Micro Duct 5/3.5mm, Direct Install, 1 way, untuk Air / Water Blowing kabel FO termasuk connector', 'meter', '4.590', '1.610'),
(158, 'DD-MDDI-2A', 'Pengadaan dan Pemasangan Micro Duct 5/3.5mm, Direct Install, 2 way, untuk Air / Water Blowing kabel FO termasuk connector', 'meter', '6.240', '2.130'),
(159, 'DD-MDDI-4A', 'Pengadaan dan Pemasangan Micro Duct 5/3.5mm, Direct Install, 4 way, untuk Air / Water Blowing kabel FO termasuk connector', 'meter', '9.860', '2.430'),
(160, 'DD-MDDI-7A', 'Pengadaan dan Pemasangan Micro Duct 5/3.5mm, Direct Install, 7 way, untuk Air / Water Blowing kabel FO termasuk connector', 'meter', '13.990', '2.450'),
(161, 'DD-MDDI-12A', 'Pengadaan dan Pemasangan Micro Duct 5/3.5mm, Direct Install, 12 way, untuk Air / Water Blowing kabel FO termasuk connector', 'meter', '21.040', '2.820'),
(162, 'DD-MDDI-19A', 'Pengadaan dan Pemasangan Micro Duct 5/3.5mm, Direct Install, 19 way, untuk Air / Water Blowing kabel FO termasuk connector', 'meter', '29.320', '3.290'),
(163, 'DD-MDDI-24A', 'Pengadaan dan Pemasangan Micro Duct 5/3.5mm, Direct Install, 24 way, untuk Air / Water Blowing kabel FO termasuk connector', 'meter', '35.820', '3.760'),
(164, 'DD-MDDI-1B', 'Pengadaan dan Pemasangan Micro Duct 10/8mm, Direct Install, 1 way, untuk Air / Water Blowing kabel FO termasuk connector', 'meter', '9.300', '2.080'),
(165, 'DD-MDDI-2B', 'Pengadaan dan Pemasangan Micro Duct 10/8mm, Direct Install, 2 way, untuk Air / Water Blowing kabel FO termasuk connector', 'meter', '13.280', '2.430'),
(166, 'DD-MDDI-4B', 'Pengadaan dan Pemasangan Micro Duct 10/8mm, Direct Install, 4 way, untuk Air / Water Blowing kabel FO termasuk connector', 'meter', '23.660', '2.780'),
(167, 'DD-MDDI-7B', 'Pengadaan dan Pemasangan Micro Duct 10/8mm, Direct Install, 7 way, untuk Air / Water Blowing kabel FO termasuk connector', 'meter', '34.630', '3.220'),
(168, 'DD-MDDI-1C', 'Pengadaan dan Pemasangan Micro Duct 12/10mm, Direct Install, 1 way, untuk Air / Water Blowing kabel FO termasuk connector', 'meter', '10.980', '2.630'),
(169, 'DD-MDDI-2C', 'Pengadaan dan Pemasangan Micro Duct 12/10mm, Direct Install, 2 way, untuk Air / Water Blowing kabel FO termasuk connector', 'meter', '15.830', '3.020'),
(170, 'DD-MDDI-4C', 'Pengadaan dan Pemasangan Micro Duct 12/10mm, Direct Install, 4 way, untuk Air / Water Blowing kabel FO termasuk connector', 'meter', '28.390', '3.760'),
(171, 'DD-MDDI-7C', 'Pengadaan dan Pemasangan Micro Duct 12/10mm, Direct Install, 7 way, untuk Air / Water Blowing kabel FO termasuk connector', 'meter', '41.780', '4.030'),
(172, 'DD-MDDI-1D', 'Pengadaan dan Pemasangan Micro Duct 16/14mm, Direct Install, 1 way, untuk Air / Water Blowing kabel FO termasuk connector', 'meter', '13.290', '2.790'),
(173, 'DD-MDDI-2D', 'Pengadaan dan Pemasangan Micro Duct 16/14mm, Direct Install, 2 way, untuk Air / Water Blowing kabel FO termasuk connector', 'meter', '19.160', '3.200'),
(174, 'DD-MDDB-1A', 'Pengadaan dan Pemasangan Micro Duct 5/3.5mm, Direct Buried, 1 way, untuk Air / Water Blowing kabel FO termasuk connector', 'meter', '11.440', '2.370'),
(175, 'DD-MDDB-2A', 'Pengadaan dan Pemasangan Micro Duct 5/3.5mm, Direct Buried, 2 way, untuk Air / Water Blowing kabel FO termasuk connector', 'meter', '13.530', '3.120'),
(176, 'DD-MDDB-4A', 'Pengadaan dan Pemasangan Micro Duct 5/3.5mm, Direct Buried, 4 way, untuk Air / Water Blowing kabel FO termasuk connector', 'meter', '19.330', '3.580'),
(177, 'DD-MDDB-7A', 'Pengadaan dan Pemasangan Micro Duct 5/3.5mm, Direct Buried,7 way, untuk Air / Water Blowing kabel FO termasuk connector', 'meter', '25.030', '3.610'),
(178, 'DD-MDDB-12A', 'Pengadaan dan Pemasangan Micro Duct 5/3.5mm, Direct Buried, 12 way, untuk Air / Water Blowing kabel FO termasuk connector', 'meter', '37.210', '4.140'),
(179, 'DD-MDDB-19A', 'Pengadaan dan Pemasangan Micro Duct 5/3.5mm, Direct Buried, 19 way, untuk Air / Water Blowing kabel FO termasuk connector', 'meter', '47.880', '4.840'),
(180, 'DD-MDDB-24A', 'Pengadaan dan Pemasangan Micro Duct 5/3.5mm, Direct Buried, 24 way, untuk Air / Water Blowing kabel FO termasuk connector', 'meter', '57.020', '5.520'),
(181, 'DD-MDDB-1B', 'Pengadaan dan Pemasangan Micro Duct 10/8mm, Direct Buried, 1 way, untuk Air / Water Blowing kabel FO termasuk connector', 'meter', '19.320', '3.070'),
(182, 'DD-MDDB-2B', 'Pengadaan dan Pemasangan Micro Duct 10/8mm, Direct Buried, 2 way, untuk Air / Water Blowing kabel FO termasuk connector', 'meter', '25.030', '3.580'),
(183, 'DD-MDDB-4B', 'Pengadaan dan Pemasangan Micro Duct 10/8mm, Direct Buried, 4 way, untuk Air / Water Blowing kabel FO termasuk connector', 'meter', '44.360', '4.090'),
(184, 'DD-MDDB-7B', 'Pengadaan dan Pemasangan Micro Duct 10/8mm, Direct Buried, 7 way, untuk Air / Water Blowing kabel FO termasuk connector', 'meter', '59.150', '4.720'),
(185, 'DD-MDDB-1C', 'Pengadaan dan Pemasangan Micro Duct 12/10mm, Direct Buried, 1 way, untuk Air / Water Blowing kabel FO termasuk connector', 'meter', '22.530', '3.860'),
(186, 'DD-MDDB-2C', 'Pengadaan dan Pemasangan Micro Duct 12/10mm, Direct Buried, 2 way, untuk Air / Water Blowing kabel FO termasuk connector', 'meter', '29.480', '4.440'),
(187, 'DD-MDDB-4C', 'Pengadaan dan Pemasangan Micro Duct 12/10mm, Direct Buried, 4 way, untuk Air / Water Blowing kabel FO termasuk connector', 'meter', '52.480', '5.480'),
(188, 'DD-MDDB-7C', 'Pengadaan dan Pemasangan Micro Duct 12/10mm, Direct Buried, 7 way, untuk Air / Water Blowing kabel FO termasuk connector', 'meter', '70.360', '5.910'),
(189, 'DD-MDEC-5/3.5', 'Pengadaan dan Pemasangan End Cap 5/3,5 mm', 'pcs', '11.080', '450'),
(190, 'DD-MDEC-10/8', 'Pengadaan dan Pemasangan End Cap 10/8 mm', 'pcs', '11.080', '450'),
(191, 'DD-MDEC-12/10', 'Pengadaan dan Pemasangan End Cap 12/10 mm', 'pcs', '11.080', '450'),
(192, 'FID-28-1', 'Fabric Innerduct diameter 28mm 1 polongan', 'meter', '17.570', '1.760'),
(193, 'FID-28-2', 'Fabric Innerduct diameter 28mm 2 polongan', 'meter', '31.630', '1.760'),
(194, 'FID-28-3', 'Fabric Innerduct diameter 28mm 3 polongan', 'meter', '50.960', '1.760'),
(195, 'MH-HH1', 'Pekerjaan Pembuatan Handhole Type HH1 ukuran dimensi dalam (P X L X T = 170x150x165) cor beton 1 : 2 : 3', 'pcs', '5.395.000', '2.367.690'),
(196, 'MH-HH2', 'Pekerjaan Pembuatan Handhole Type HH2 ukuran dimensi dalam (P X L X T = 120x130x165) cor beton 1 : 2 : 3', 'pcs', '3.775.000', '1.802.490'),
(197, 'HH-PIT-P-HA', 'Pekerjaan Pembuatan HH Pit Portable Home Access  beserta aksesorisnya', 'pcs', '671.800', '159.870'),
(198, 'HH-PIT-P-ODP', 'Pekerjaan Pembuatan HH Pit Portable ODP beserta aksesorisnya', 'pcs', '2.196.000', '238.480'),
(199, 'HH-PIT-P-ODC', 'Pekerjaan Pembuatan HH Pit Portable ODC beserta aksesorisnya', 'pcs', '8.329.000', '449.990'),
(200, 'MH-CA', 'Pekerjaan Peninggian Tutup Manhole/Handhole', 'pcs', '713.100', '623.580'),
(201, 'CO-OF', 'Pekerjaan Cut Over Kabel Serat Optik', 'core', '0', '51.820'),
(202, 'RS-IN-SC-1P', 'Pemasangan dan terminasi Roset/Indoor Optical Outlet with SC Adaptor - kap 1 port berikut pigtail', 'pcs', '75.900', '23.760'),
(203, 'Close Rack 12U', '19\" Wallmounted Rack 12U Depth 450mm', 'Unit', '3.109.400', '550.220'),
(204, 'DC-OF-SM-2A', 'Pengadaan dan pemasangan Kabel Serat Optic Penanggal Single Mode 2 core dgn pelindung pipa G 657 A (indoor)', 'meter', '2.900', '2.560'),
(205, 'FC-SC-DC', 'Pengadaan dan pemasangan SC/UPC Connector for Drop / Indoor Cable (Fusion)', 'pcs', '38.600', '53.180'),
(206, 'Coring', 'Pekerjaan bobokan tembok/coring Cor Beton di ruang Shaft', 'titik', '0', '733.630'),
(207, 'Klem Galvanise', 'Pengadaan & Pemasangan klem galvanise untuk airblown pipe dengan ketebalan 2mm, lebar 2.5 cm menggunakan dynabolt termasuk rekondisi atau perbaikan kerusakan', 'pcs', '10.800', '1.830'),
(208, 'Rak Pasif spliter 1:4', '19 inch 24 core Pull type optical fiber distribution frame 24 port Rack Mounted Indoor fiber patch panel, Include RS232 Passive Splitter Rackmount Chassis - 2U', 'pcs', '1.361.800', '385.150'),
(209, 'FTM-CR-19', 'Pengadaan & Pemasangan Optical Fiber High Density Cable, Close Rack 19 Inch. Lengkap termasuk Fibre Management maximum Capacity 7x144 core / 42U', 'Unit', '13.648.840', '372.980'),
(210, 'TC-SM-144', 'Pengadaan dan Pemasangan OTB Single Mode kapasitas 144 core (tidak termasuk terminasi), Adapter (SC Connector), pigtail dan protection sleeve pada cassette/box', 'pcs', '8.423.280', '93.240'),
(211, 'FTM-BC-8F-10', 'FO Cord Bundled cable 8F, dengan connector satu sisi SC/LC/FC (L=10m), dan splicing di sisi lainnya', 'pcs', '360.000', '437.470'),
(212, 'FTM-BC-8F-1', 'Tambahan panjang cord bundled cable 8F', 'meter', '5.850', '970'),
(213, 'FTM-VR-90-Cover', 'Vertical raise 90 dan cover (4x4\")', 'piece', '562.400', '50.680'),
(214, 'FTM-VR-45-Cover', 'Vertical raise 45 dan cover (4x4\")', 'piece', '463.500', '50.680'),
(215, 'FTM-TF', 'Trumpet flare dan kit (4x4\")', 'piece', '234.800', '50.680'),
(216, 'FTM-Connector-44', 'Connector 4x4\"', 'piece', '87.100', '9.210'),
(217, 'FTM-Exit-4', '4\" Express exit', 'piece', '463.200', '50.680'),
(218, 'FTM-PC-Cover', 'Pemasangan jalur Patchcord 4x12\" lengkap cover', 'meter', '2.345.100', '59.170'),
(219, 'Tray-Mesh-2', 'Wire mesh cable tray 20 x 10 cm, dengan supporting material', 'meter', '60.400', '41.220'),
(220, 'Tray-Mesh-3', 'Wire mesh cable tray 30 x 10 cm, dengan supporting material', 'meter', '89.100', '41.220'),
(221, 'VSS-90-2', 'Vertical Support Structure rod (2m) maksimal sepasang (kiri-kanan), dengan kit instalasi (tiap 90cm)', 'set', '70.000', '41.220'),
(222, 'Tray-Bundled-Out-30', 'Tray cable FO Cord bundled Outdoor 30x10 cm lengkap dengan penguat', 'meter', '130.000', '43.650'),
(223, 'Tray-Feeder-30', 'Tray cable feeder outdoor 30x10 cm lengkap dengan penguat', 'meter', '140.000', '43.650'),
(224, 'GC-NYAF-16', 'Kabel Grounding NYAF 16 mm', 'meter', '23.000', '1.940'),
(225, 'FTM-VA-Port', 'Validasi port FTM (Revitalisasi)', 'core', '0', '8.790'),
(226, 'FTM-Label', 'Pelabelan FTM (Revitalisasi)', 'core', '0', '2.150'),
(227, 'FTM-Plafon', 'Pekerjaan Plafon', 'm2', '154.900', '76.630'),
(228, 'FTM-Lantai', 'Pekerjaan Lantai', 'm2', '75.600', '117.370'),
(229, 'FTM-Dinding', 'Pekerjaan Dinding', 'm2', '199.700', '119.310'),
(230, 'SITAC-MDU', 'Akuisisi Lahan SITAC MDU, termasuk sewa minimal selama 5 Tahun', 'node', 'Reimburse', 'Reimburse'),
(231, 'Pondasi Type D500', 'Pengadaan dan pemasangan pondasi untuk kabinet outdoor besar, side walk dan patok pengaman mengacu PPJT JARLOKAT dan sistem grounding untuk perangkat dan sealed material (max. 1 ohm)', 'node', '5.415.090', '1.421.820'),
(232, 'PSB PLN 2200 VA', 'Pasang Baru PLN 2.200 VA (Non Multi Guna) termasuk kabel power, MCB 20A, Box KWH Meter, Sealed material, Installation Kit, Pole 7m, Pipa PVC 1\"', 'Lumpsum', '2.260.000', '2.292.590'),
(233, 'Biaya Penggunaan Listrik 2.200 VA', 'Biaya penggunaan listrik 2.200 VA, selama 3 bulan sejak Uji Terima (Migrasi)', 'Lumpsum', 'Oleh TA', 'Oleh TA'),
(234, 'KTTL-100', 'Pengadaan dan Penarikan Kabel Tanah Tanam Langsung kapasitas 100\" / 0,6', 'Mtr', '113.030', '2.390'),
(235, 'KTTL-200', 'Pengadaan dan Penarikan Kabel Tanah Tanam Langsung kapasitas 200\" / 0,6', 'Mtr', '216.520', '3.270'),
(236, 'UC 4-6', 'Pengadaan dan Pemasangan Alat Sambung  tipe UC 4-6 (s/d 100 pair)', 'Unit', '456.530', '78.660'),
(237, 'UC-6-9', 'Pengadaan dan Pemasangan Alat Sambung tipe UC 6-9 (s/d 200 pair)', 'Unit', '2.168.510', '151.620'),
(238, 'TK-MDU', 'Terminasi kabel pada MDF MDU sistem tekan sisip', 'Pair', '0', '1.270'),
(239, 'Migrasi MDU', 'Overburg (cut over) kabel sekunder termasuk connector UY-2, pendataan dan pengetesan kabel', 'Pair', '0', '9.260'),
(240, 'TRK-JW', 'Pengadaan dan penarikan jumper wire', 'Mtr', '860', '310'),
(241, 'Dismantling MDU', 'Dismantling MDU dan assesoriesnya, checklist pendataan, dan rekondisi eks lokasi bongkaran MDU', 'Ls', '0', '2.842.810'),
(242, 'Delivery MDU', 'Packing dan delivery MDU dari lokasi donor sampai ke lokasi akseptor', 'Kg', 'Oleh TA/ Reimburse Mitra', 'Oleh TA/ Reimburse Mitra'),
(243, 'Instalasi MDU', 'Jasa instalasi MDU termasuk konfigurasi dan integrasi di lokasi akseptor', 'Ls', '0', '5.364.670');

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
  `id_proactive` int(100) NOT NULL,
  `status_notifikasi` varchar(25) COLLATE utf8mb4_bin NOT NULL,
  `created_at` timestamp NOT NULL,
  `updated_at` timestamp NOT NULL,
  PRIMARY KEY (`id_notifikasi_k`),
  KEY `id_proactive` (`id_proactive`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data untuk tabel `notifikasi_kontruksi`
--

INSERT INTO `notifikasi_kontruksi` (`id_notifikasi_k`, `id_proactive`, `status_notifikasi`, `created_at`, `updated_at`) VALUES
(1, 66767, 'sudah_dilihat', '2021-02-16 03:12:19', '2021-02-16 03:12:19'),
(2, 65656, 'sudah_dilihat', '2021-02-16 03:20:22', '2021-02-16 03:20:22');

-- --------------------------------------------------------

--
-- Struktur dari tabel `opsi_material`
--

DROP TABLE IF EXISTS `opsi_material`;
CREATE TABLE IF NOT EXISTS `opsi_material` (
  `id_opsi` int(100) NOT NULL AUTO_INCREMENT,
  `id_rincian` int(100) NOT NULL,
  `harga_material` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `harga_jasa` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `kuantitas` int(100) NOT NULL,
  `created_at` timestamp NOT NULL,
  `updated_at` timestamp NOT NULL,
  PRIMARY KEY (`id_opsi`),
  KEY `id_rincian` (`id_rincian`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data untuk tabel `opsi_material`
--

INSERT INTO `opsi_material` (`id_opsi`, `id_rincian`, `harga_material`, `harga_jasa`, `kuantitas`, `created_at`, `updated_at`) VALUES
(1, 1, '27.520', '3.020', 2, '2021-02-16 02:58:19', '2021-02-16 02:58:19'),
(2, 2, '39.050', '3.680', 2, '2021-02-16 02:58:19', '2021-02-16 02:58:19'),
(3, 3, '70.930', '3.670', 2, '2021-02-16 02:58:19', '2021-02-16 02:58:19'),
(4, 6, '27.520', '3.020', 3, '2021-02-16 03:19:59', '2021-02-16 03:19:59'),
(5, 7, '39.050', '3.680', 5, '2021-02-16 03:19:59', '2021-02-16 03:19:59'),
(6, 8, '15.210', '3.020', 2, '2021-02-16 04:04:44', '2021-02-16 04:04:44'),
(7, 9, '27.520', '3.020', 4, '2021-02-16 04:04:44', '2021-02-16 04:04:44'),
(8, 10, '39.050', '3.680', 3, '2021-02-16 04:04:44', '2021-02-16 04:04:44'),
(9, 8, '15.210', '3.020', 2, '2021-02-16 04:04:49', '2021-02-16 04:04:49'),
(10, 9, '27.520', '3.020', 4, '2021-02-16 04:04:49', '2021-02-16 04:04:49'),
(11, 10, '39.050', '3.680', 3, '2021-02-16 04:04:49', '2021-02-16 04:04:49'),
(12, 8, '15.210', '3.020', 2, '2021-02-16 04:06:53', '2021-02-16 04:06:53'),
(13, 9, '27.520', '3.020', 4, '2021-02-16 04:06:53', '2021-02-16 04:06:53'),
(14, 10, '39.050', '3.680', 3, '2021-02-16 04:06:53', '2021-02-16 04:06:53'),
(15, 8, '15.210', '3.020', 2, '2021-02-16 04:09:53', '2021-02-16 04:09:53'),
(16, 9, '27.520', '3.020', 4, '2021-02-16 04:09:53', '2021-02-16 04:09:53'),
(17, 10, '39.050', '3.680', 3, '2021-02-16 04:09:53', '2021-02-16 04:09:53'),
(18, 8, '15.210', '3.020', 2, '2021-02-16 04:10:42', '2021-02-16 04:10:42'),
(19, 9, '27.520', '3.020', 4, '2021-02-16 04:10:42', '2021-02-16 04:10:42'),
(20, 10, '39.050', '3.680', 3, '2021-02-16 04:10:42', '2021-02-16 04:10:42'),
(21, 8, '15.210', '3.020', 2, '2021-02-16 04:11:05', '2021-02-16 04:11:05'),
(22, 9, '27.520', '3.020', 4, '2021-02-16 04:11:05', '2021-02-16 04:11:05'),
(23, 10, '39.050', '3.680', 3, '2021-02-16 04:11:05', '2021-02-16 04:11:05'),
(24, 8, '15.210', '3.020', 2, '2021-02-16 04:12:13', '2021-02-16 04:12:13'),
(25, 9, '27.520', '3.020', 4, '2021-02-16 04:12:13', '2021-02-16 04:12:13'),
(26, 10, '39.050', '3.680', 3, '2021-02-16 04:12:13', '2021-02-16 04:12:13'),
(27, 8, '15.210', '3.020', 2, '2021-02-16 04:13:07', '2021-02-16 04:13:07'),
(28, 9, '27.520', '3.020', 4, '2021-02-16 04:13:07', '2021-02-16 04:13:07'),
(29, 10, '39.050', '3.680', 3, '2021-02-16 04:13:07', '2021-02-16 04:13:07'),
(30, 8, '15.210', '3.020', 2, '2021-02-16 04:13:29', '2021-02-16 04:13:29'),
(31, 9, '27.520', '3.020', 4, '2021-02-16 04:13:29', '2021-02-16 04:13:29'),
(32, 10, '39.050', '3.680', 3, '2021-02-16 04:13:29', '2021-02-16 04:13:29'),
(33, 8, '15.210', '3.020', 2, '2021-02-16 04:15:41', '2021-02-16 04:15:41'),
(34, 9, '27.520', '3.020', 4, '2021-02-16 04:15:41', '2021-02-16 04:15:41'),
(35, 10, '39.050', '3.680', 3, '2021-02-16 04:15:41', '2021-02-16 04:15:41'),
(36, 8, '15.210', '3.020', 2, '2021-02-16 04:16:09', '2021-02-16 04:16:09'),
(37, 9, '27.520', '3.020', 4, '2021-02-16 04:16:09', '2021-02-16 04:16:09'),
(38, 10, '39.050', '3.680', 3, '2021-02-16 04:16:09', '2021-02-16 04:16:09');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pengajuan_project`
--

DROP TABLE IF EXISTS `pengajuan_project`;
CREATE TABLE IF NOT EXISTS `pengajuan_project` (
  `id_proactive` int(100) NOT NULL,
  `id_sap` int(100) NOT NULL,
  `nama_lokasi` text COLLATE utf8mb4_bin NOT NULL,
  `file_nde` varchar(500) COLLATE utf8mb4_bin NOT NULL,
  `file_mom` varchar(500) COLLATE utf8mb4_bin NOT NULL,
  `file_boq` varchar(500) COLLATE utf8mb4_bin NOT NULL,
  `created_at` timestamp NOT NULL,
  `updated_at` timestamp NOT NULL,
  PRIMARY KEY (`id_proactive`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data untuk tabel `pengajuan_project`
--

INSERT INTO `pengajuan_project` (`id_proactive`, `id_sap`, `nama_lokasi`, `file_nde`, `file_mom`, `file_boq`, `created_at`, `updated_at`) VALUES
(12231, 13213, 'bandung', 'C:\\wamp64\\tmp\\phpC61D.tmp', 'C:\\wamp64\\tmp\\phpC61E.tmp', 'C:\\wamp64\\tmp\\phpC64E.tmp', '2021-02-16 02:58:10', '2021-02-16 02:58:10'),
(65656, 3232323, 'hhgh', '', 'C:\\wamp64\\tmp\\php1A35.tmp', 'C:\\wamp64\\tmp\\php1A36.tmp', '2021-02-16 03:20:21', '2021-02-16 03:20:21'),
(66767, 5566, 'uuy', 'C:\\wamp64\\tmp\\phpBEC4.tmp', 'C:\\wamp64\\tmp\\phpBEC5.tmp', 'C:\\wamp64\\tmp\\phpBED6.tmp', '2021-02-16 03:12:19', '2021-02-16 03:12:19');

-- --------------------------------------------------------

--
-- Struktur dari tabel `procurement`
--

DROP TABLE IF EXISTS `procurement`;
CREATE TABLE IF NOT EXISTS `procurement` (
  `id_procurement` int(100) NOT NULL,
  `id_proactive` int(100) NOT NULL,
  `id_po` int(100) NOT NULL,
  `created_at` timestamp NOT NULL,
  `updated_at` timestamp NOT NULL,
  PRIMARY KEY (`id_procurement`),
  KEY `id_proactive` (`id_proactive`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data untuk tabel `procurement`
--

INSERT INTO `procurement` (`id_procurement`, `id_proactive`, `id_po`, `created_at`, `updated_at`) VALUES
(5565, 12231, 7778, '2021-02-16 04:38:05', '2021-02-16 04:38:05');

-- --------------------------------------------------------

--
-- Struktur dari tabel `rincian_pengajuan`
--

DROP TABLE IF EXISTS `rincian_pengajuan`;
CREATE TABLE IF NOT EXISTS `rincian_pengajuan` (
  `id_rincian` int(100) NOT NULL AUTO_INCREMENT,
  `id_proactive` int(100) NOT NULL,
  `id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL,
  `updated_at` timestamp NOT NULL,
  PRIMARY KEY (`id_rincian`),
  KEY `id_proactive` (`id_proactive`),
  KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data untuk tabel `rincian_pengajuan`
--

INSERT INTO `rincian_pengajuan` (`id_rincian`, `id_proactive`, `id`, `created_at`, `updated_at`) VALUES
(1, 12231, 4, '2021-02-16 02:58:10', '2021-02-16 02:58:10'),
(2, 12231, 5, '2021-02-16 02:58:10', '2021-02-16 02:58:10'),
(3, 12231, 6, '2021-02-16 02:58:10', '2021-02-16 02:58:10'),
(6, 66767, 4, '2021-02-16 03:12:19', '2021-02-16 03:12:19'),
(7, 66767, 5, '2021-02-16 03:12:19', '2021-02-16 03:12:19'),
(8, 65656, 3, '2021-02-16 03:20:21', '2021-02-16 03:20:21'),
(9, 65656, 4, '2021-02-16 03:20:21', '2021-02-16 03:20:21'),
(10, 65656, 5, '2021-02-16 03:20:21', '2021-02-16 03:20:21');

-- --------------------------------------------------------

--
-- Struktur dari tabel `transaksi_akhir`
--

DROP TABLE IF EXISTS `transaksi_akhir`;
CREATE TABLE IF NOT EXISTS `transaksi_akhir` (
  `id_transaksi` int(100) NOT NULL AUTO_INCREMENT,
  `id_proactive` int(100) NOT NULL,
  `total_harga_material` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `total_harga_jasa` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `total_sebelum_ppn` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `ppn` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `total_setelah_ppn` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `created_at` timestamp NOT NULL,
  `updated_at` timestamp NOT NULL,
  PRIMARY KEY (`id_transaksi`),
  KEY `id_proactive` (`id_proactive`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data untuk tabel `transaksi_akhir`
--

INSERT INTO `transaksi_akhir` (`id_transaksi`, `id_proactive`, `total_harga_material`, `total_harga_jasa`, `total_sebelum_ppn`, `ppn`, `total_setelah_ppn`, `created_at`, `updated_at`) VALUES
(1, 12231, '275', '20.74', '295.74', '29.574', '325.314', '2021-02-16 02:58:23', '2021-02-16 02:58:23'),
(2, 66767, '277.81', '27.46', '305.27', '30.527', '335.797', '2021-02-16 03:20:02', '2021-02-16 03:20:02');

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
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(2, 'Dadang', 'dadang@gmail.com', '$2y$10$MP6wt3rcmdFOjiUdMstbT.VFLCK7FNQzSdwFXx0J4Fa5W/.Q192BC', 'rVYJ0PpeMcLQmOvyQ2nzGyaFib31SPkCw1lyIUSvXYwamAiNVzzq4ZPSqfqy', '2021-02-14 08:18:53', '2021-02-14 08:18:53');

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `notifikasi_kontruksi`
--
ALTER TABLE `notifikasi_kontruksi`
  ADD CONSTRAINT `notifikasi_kontruksi_ibfk_1` FOREIGN KEY (`id_proactive`) REFERENCES `pengajuan_project` (`id_proactive`);

--
-- Ketidakleluasaan untuk tabel `opsi_material`
--
ALTER TABLE `opsi_material`
  ADD CONSTRAINT `opsi_material_ibfk_1` FOREIGN KEY (`id_rincian`) REFERENCES `rincian_pengajuan` (`id_rincian`);

--
-- Ketidakleluasaan untuk tabel `procurement`
--
ALTER TABLE `procurement`
  ADD CONSTRAINT `procurement_ibfk_1` FOREIGN KEY (`id_proactive`) REFERENCES `pengajuan_project` (`id_proactive`);

--
-- Ketidakleluasaan untuk tabel `rincian_pengajuan`
--
ALTER TABLE `rincian_pengajuan`
  ADD CONSTRAINT `rincian_pengajuan_ibfk_1` FOREIGN KEY (`id_proactive`) REFERENCES `pengajuan_project` (`id_proactive`),
  ADD CONSTRAINT `rincian_pengajuan_ibfk_2` FOREIGN KEY (`id`) REFERENCES `list_produk` (`id`);

--
-- Ketidakleluasaan untuk tabel `transaksi_akhir`
--
ALTER TABLE `transaksi_akhir`
  ADD CONSTRAINT `transaksi_akhir_ibfk_1` FOREIGN KEY (`id_proactive`) REFERENCES `pengajuan_project` (`id_proactive`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
