/*
 Navicat Premium Data Transfer

 Source Server         : local
 Source Server Type    : MySQL
 Source Server Version : 50739 (5.7.39)
 Source Host           : localhost:3306
 Source Schema         : pimkadis

 Target Server Type    : MySQL
 Target Server Version : 50739 (5.7.39)
 File Encoding         : 65001

 Date: 11/05/2024 14:32:20
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for attribut
-- ----------------------------
DROP TABLE IF EXISTS `attribut`;
CREATE TABLE `attribut` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `kategori_id` int(11) DEFAULT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `satuan` varchar(255) DEFAULT NULL,
  `tag` varchar(255) DEFAULT NULL,
  `profil` varchar(255) DEFAULT NULL,
  `deskripsi` text,
  `singkatan` varchar(255) DEFAULT NULL,
  `foto` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of attribut
-- ----------------------------
BEGIN;
INSERT INTO `attribut` (`id`, `kategori_id`, `nama`, `satuan`, `tag`, `profil`, `deskripsi`, `singkatan`, `foto`) VALUES (1, 1, 'Puskesmas', 'buah', 'Y', 'T', 'Jumlah Puskesmas', NULL, 'kesehatan.png');
INSERT INTO `attribut` (`id`, `kategori_id`, `nama`, `satuan`, `tag`, `profil`, `deskripsi`, `singkatan`, `foto`) VALUES (2, 1, 'Rumah Sakit', 'buah', 'Y', 'T', 'Jumlah Rumah Sakit', NULL, NULL);
INSERT INTO `attribut` (`id`, `kategori_id`, `nama`, `satuan`, `tag`, `profil`, `deskripsi`, `singkatan`, `foto`) VALUES (5, 2, 'Jumlah Sekolah', 'Buah', 'T', 'Y', 'sekolah', 'Jumlah Sekolah', 'pendidikan.png');
INSERT INTO `attribut` (`id`, `kategori_id`, `nama`, `satuan`, `tag`, `profil`, `deskripsi`, `singkatan`, `foto`) VALUES (6, 4, 'Jumlah Penduduk', 'Jiwa', 'T', 'T', 'Jumlah Penduduk', NULL, NULL);
INSERT INTO `attribut` (`id`, `kategori_id`, `nama`, `satuan`, `tag`, `profil`, `deskripsi`, `singkatan`, `foto`) VALUES (8, 1, 'Posyandu', 'buah', 'T', 'Y', 'posyandu', 'posyandu', 'kesehatan.png');
INSERT INTO `attribut` (`id`, `kategori_id`, `nama`, `satuan`, `tag`, `profil`, `deskripsi`, `singkatan`, `foto`) VALUES (9, 5, 'Izin Usaha', 'Izin Usaha', 'T', 'Y', 'izin', 'Izin Usaha', 'perdagangan.png');
INSERT INTO `attribut` (`id`, `kategori_id`, `nama`, `satuan`, `tag`, `profil`, `deskripsi`, `singkatan`, `foto`) VALUES (10, 1, 'Kasus Stunting', 'Orang', 'T', 'Y', 'stunting', 'Kasus Stunting', 'kesehatan.png');
INSERT INTO `attribut` (`id`, `kategori_id`, `nama`, `satuan`, `tag`, `profil`, `deskripsi`, `singkatan`, `foto`) VALUES (11, 7, 'Jumlah Tempat Pembuangan Sampah (TPS)', 'Unit', 'T', 'Y', 'tps', 'TPS', 'lingkungan_hidup.png');
INSERT INTO `attribut` (`id`, `kategori_id`, `nama`, `satuan`, `tag`, `profil`, `deskripsi`, `singkatan`, `foto`) VALUES (12, 7, 'Jumlah Bank Sampah', 'Unit', 'T', 'T', 'Jumlah Bank Sampah per Kelurahan', NULL, NULL);
INSERT INTO `attribut` (`id`, `kategori_id`, `nama`, `satuan`, `tag`, `profil`, `deskripsi`, `singkatan`, `foto`) VALUES (14, 1, 'Jumlah Kasus Underweight', 'Orang', 'T', 'T', 'Jumlah Kasus Underweight per Kelurahan di Kota Banjarmasin', NULL, NULL);
INSERT INTO `attribut` (`id`, `kategori_id`, `nama`, `satuan`, `tag`, `profil`, `deskripsi`, `singkatan`, `foto`) VALUES (15, 1, 'Jumlah Kasus Wasting', 'Orang', 'T', 'T', 'Jumlah Kasus Wasting per Kelurahan di Kota Banjarmasin', NULL, NULL);
INSERT INTO `attribut` (`id`, `kategori_id`, `nama`, `satuan`, `tag`, `profil`, `deskripsi`, `singkatan`, `foto`) VALUES (16, 8, 'Jumlah Rumah Sewa', 'Unit', 'T', 'T', 'Jumlah Rumah Sewa Per Kelurahan di Kota Banjarmasin', NULL, NULL);
INSERT INTO `attribut` (`id`, `kategori_id`, `nama`, `satuan`, `tag`, `profil`, `deskripsi`, `singkatan`, `foto`) VALUES (17, 8, 'Rumah Tidak Layak huni', 'Buah', 'T', 'Y', 'rtlh', 'RTLH', 'perkim.png');
INSERT INTO `attribut` (`id`, `kategori_id`, `nama`, `satuan`, `tag`, `profil`, `deskripsi`, `singkatan`, `foto`) VALUES (18, 4, 'Jumlah Laki', 'Jiwa', 'T', 'T', 'Jumlah penduduk berjenis kelamin laki-laki', NULL, NULL);
INSERT INTO `attribut` (`id`, `kategori_id`, `nama`, `satuan`, `tag`, `profil`, `deskripsi`, `singkatan`, `foto`) VALUES (19, 4, 'Jumlah Perempuan', 'Jiwa', 'T', 'T', 'Jumlah penduduk berjenis kelamin perempuan', NULL, NULL);
INSERT INTO `attribut` (`id`, `kategori_id`, `nama`, `satuan`, `tag`, `profil`, `deskripsi`, `singkatan`, `foto`) VALUES (21, 7, 'Luas Wilayah', 'km2', 'T', 'T', 'Luas Wilayah', NULL, NULL);
INSERT INTO `attribut` (`id`, `kategori_id`, `nama`, `satuan`, `tag`, `profil`, `deskripsi`, `singkatan`, `foto`) VALUES (22, 3, 'Jumlah Pasar', 'Unit', 'T', 'T', 'Jumlah Pasar Swasta dan Milik Pemerintah', 'Pasar', NULL);
INSERT INTO `attribut` (`id`, `kategori_id`, `nama`, `satuan`, `tag`, `profil`, `deskripsi`, `singkatan`, `foto`) VALUES (23, 11, 'Data P3KE', 'KK', 'T', 'T', 'Data Pensasaran Percepatan Penghapusan Kemiskinan Ekstrem', 'P3KE', NULL);
INSERT INTO `attribut` (`id`, `kategori_id`, `nama`, `satuan`, `tag`, `profil`, `deskripsi`, `singkatan`, `foto`) VALUES (24, 12, 'Data Jalan', 'Km', 'T', 'T', 'Data Jalan Milik Pemerintah Kota', 'Jalan', NULL);
INSERT INTO `attribut` (`id`, `kategori_id`, `nama`, `satuan`, `tag`, `profil`, `deskripsi`, `singkatan`, `foto`) VALUES (25, 12, 'Jumlah Ruas Jalan', 'Jalan', 'T', 'T', 'Data Jumlah Ruas Jalan Milik Pemko Banjarmasin', 'Ruas Jalan', NULL);
INSERT INTO `attribut` (`id`, `kategori_id`, `nama`, `satuan`, `tag`, `profil`, `deskripsi`, `singkatan`, `foto`) VALUES (26, 11, 'Data Terpadu Kesejahteraan Sosial (DTKS)', 'Orang', 'T', 'T', 'Jumlah Warga yang terdaftar pada sistem DTKS dan dapat menerima bantuan sosial', 'DTKS', NULL);
INSERT INTO `attribut` (`id`, `kategori_id`, `nama`, `satuan`, `tag`, `profil`, `deskripsi`, `singkatan`, `foto`) VALUES (27, 1, 'Jumlah Klinik', 'Unit', 'T', 'T', 'Data Jumlah Klinik Kesehatan di Kota Banjarmasin', 'Klinik', NULL);
INSERT INTO `attribut` (`id`, `kategori_id`, `nama`, `satuan`, `tag`, `profil`, `deskripsi`, `singkatan`, `foto`) VALUES (28, 1, 'Jumlah Praktek Dokter', 'Unit', 'T', 'T', 'Data Jumlah Praktek Dokter Mandiri di Kota Banjarmasin', 'Praktek Dokter', NULL);
INSERT INTO `attribut` (`id`, `kategori_id`, `nama`, `satuan`, `tag`, `profil`, `deskripsi`, `singkatan`, `foto`) VALUES (29, 1, 'Jumlah Apotek', 'unit', 'T', 'T', 'Data Jumlah Apotek di Kota Banjarmasin', 'Apotek', NULL);
INSERT INTO `attribut` (`id`, `kategori_id`, `nama`, `satuan`, `tag`, `profil`, `deskripsi`, `singkatan`, `foto`) VALUES (30, 11, 'Data Penerima Bansos BPNT', 'Orang', 'T', 'T', 'Data Penerima Bansos BPNT', 'PBNT', NULL);
INSERT INTO `attribut` (`id`, `kategori_id`, `nama`, `satuan`, `tag`, `profil`, `deskripsi`, `singkatan`, `foto`) VALUES (31, 11, 'Data Penerima Bansos PKH', 'Orang', 'T', 'T', 'Data Penerima Bansos PKH di Kota Banjarmasin', 'PKH', NULL);
INSERT INTO `attribut` (`id`, `kategori_id`, `nama`, `satuan`, `tag`, `profil`, `deskripsi`, `singkatan`, `foto`) VALUES (32, 11, 'Data Penerima Bansos PBI (APBN)', 'Orang', 'T', 'T', 'Data Penerima Bansos PBI (APBN)', 'PBI', NULL);
INSERT INTO `attribut` (`id`, `kategori_id`, `nama`, `satuan`, `tag`, `profil`, `deskripsi`, `singkatan`, `foto`) VALUES (33, 2, 'Jumlah Siswa Sekolah Dasar (SD)', 'Orang', 'T', 'T', 'Jumlah Siswa Sekolah Dasar (SD) di Kota Banjarmasin Tahun 2022', 'SD', NULL);
INSERT INTO `attribut` (`id`, `kategori_id`, `nama`, `satuan`, `tag`, `profil`, `deskripsi`, `singkatan`, `foto`) VALUES (34, 4, 'Kepadatan Penduduk', 'jiwa/km2', 'T', 'T', 'Data kepadatan penduduk per Kecamatan/Kelurahan di Kota Banjarmasin', 'Kepadatan Penduduk', NULL);
COMMIT;

-- ----------------------------
-- Table structure for attribut_kecamatan
-- ----------------------------
DROP TABLE IF EXISTS `attribut_kecamatan`;
CREATE TABLE `attribut_kecamatan` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `attribut_id` int(11) DEFAULT NULL,
  `kecamatan_id` int(11) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=188 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of attribut_kecamatan
-- ----------------------------
BEGIN;
INSERT INTO `attribut_kecamatan` (`id`, `attribut_id`, `kecamatan_id`, `value`, `created_at`, `updated_at`) VALUES (7, 1, 1, '6', '2023-10-12 02:12:13', '2023-11-18 04:56:48');
INSERT INTO `attribut_kecamatan` (`id`, `attribut_id`, `kecamatan_id`, `value`, `created_at`, `updated_at`) VALUES (8, 2, 1, '6', '2023-10-12 02:12:13', '2023-11-18 04:58:13');
INSERT INTO `attribut_kecamatan` (`id`, `attribut_id`, `kecamatan_id`, `value`, `created_at`, `updated_at`) VALUES (9, 3, 1, '2500', '2023-10-12 02:12:13', '2023-10-12 02:17:59');
INSERT INTO `attribut_kecamatan` (`id`, `attribut_id`, `kecamatan_id`, `value`, `created_at`, `updated_at`) VALUES (10, 4, 1, '10', '2023-10-12 02:12:13', '2023-10-16 15:26:37');
INSERT INTO `attribut_kecamatan` (`id`, `attribut_id`, `kecamatan_id`, `value`, `created_at`, `updated_at`) VALUES (11, 5, 1, '121', '2023-10-12 02:12:13', '2023-11-18 05:04:09');
INSERT INTO `attribut_kecamatan` (`id`, `attribut_id`, `kecamatan_id`, `value`, `created_at`, `updated_at`) VALUES (12, 6, 1, '91375', '2023-10-12 02:12:13', '2023-12-09 11:17:24');
INSERT INTO `attribut_kecamatan` (`id`, `attribut_id`, `kecamatan_id`, `value`, `created_at`, `updated_at`) VALUES (13, 1, 2, '6', '2023-10-12 02:18:14', '2023-11-18 04:56:11');
INSERT INTO `attribut_kecamatan` (`id`, `attribut_id`, `kecamatan_id`, `value`, `created_at`, `updated_at`) VALUES (14, 2, 2, '2', '2023-10-12 02:18:14', '2023-11-18 04:57:48');
INSERT INTO `attribut_kecamatan` (`id`, `attribut_id`, `kecamatan_id`, `value`, `created_at`, `updated_at`) VALUES (15, 3, 2, '1230', '2023-10-12 02:18:14', '2023-10-12 02:18:43');
INSERT INTO `attribut_kecamatan` (`id`, `attribut_id`, `kecamatan_id`, `value`, `created_at`, `updated_at`) VALUES (16, 4, 2, '12', '2023-10-12 02:18:14', '2023-10-12 02:18:43');
INSERT INTO `attribut_kecamatan` (`id`, `attribut_id`, `kecamatan_id`, `value`, `created_at`, `updated_at`) VALUES (17, 5, 2, '117', '2023-10-12 02:18:14', '2023-11-18 05:04:34');
INSERT INTO `attribut_kecamatan` (`id`, `attribut_id`, `kecamatan_id`, `value`, `created_at`, `updated_at`) VALUES (18, 6, 2, '124409', '2023-10-12 02:18:14', '2023-11-18 11:14:47');
INSERT INTO `attribut_kecamatan` (`id`, `attribut_id`, `kecamatan_id`, `value`, `created_at`, `updated_at`) VALUES (19, 1, 3, '4', '2023-11-18 00:33:53', '2023-11-18 04:55:55');
INSERT INTO `attribut_kecamatan` (`id`, `attribut_id`, `kecamatan_id`, `value`, `created_at`, `updated_at`) VALUES (20, 2, 3, '3', '2023-11-18 00:33:53', '2023-11-18 04:57:34');
INSERT INTO `attribut_kecamatan` (`id`, `attribut_id`, `kecamatan_id`, `value`, `created_at`, `updated_at`) VALUES (21, 3, 3, NULL, '2023-11-18 00:33:53', '2023-11-18 00:33:53');
INSERT INTO `attribut_kecamatan` (`id`, `attribut_id`, `kecamatan_id`, `value`, `created_at`, `updated_at`) VALUES (22, 4, 3, NULL, '2023-11-18 00:33:53', '2023-11-18 00:33:53');
INSERT INTO `attribut_kecamatan` (`id`, `attribut_id`, `kecamatan_id`, `value`, `created_at`, `updated_at`) VALUES (23, 5, 3, '152', '2023-11-18 00:33:53', '2023-11-18 05:06:06');
INSERT INTO `attribut_kecamatan` (`id`, `attribut_id`, `kecamatan_id`, `value`, `created_at`, `updated_at`) VALUES (24, 6, 3, '137285', '2023-11-18 00:33:53', '2023-11-18 11:14:59');
INSERT INTO `attribut_kecamatan` (`id`, `attribut_id`, `kecamatan_id`, `value`, `created_at`, `updated_at`) VALUES (25, 7, 3, '15842', '2023-11-18 00:33:53', '2023-11-18 05:09:37');
INSERT INTO `attribut_kecamatan` (`id`, `attribut_id`, `kecamatan_id`, `value`, `created_at`, `updated_at`) VALUES (26, 7, 1, '18453', '2023-11-18 02:55:41', '2023-11-18 05:09:16');
INSERT INTO `attribut_kecamatan` (`id`, `attribut_id`, `kecamatan_id`, `value`, `created_at`, `updated_at`) VALUES (27, 7, 2, '17501', '2023-11-18 02:56:09', '2023-11-18 05:09:27');
INSERT INTO `attribut_kecamatan` (`id`, `attribut_id`, `kecamatan_id`, `value`, `created_at`, `updated_at`) VALUES (28, 1, 4, '6', '2023-11-18 03:15:55', '2023-11-18 04:56:25');
INSERT INTO `attribut_kecamatan` (`id`, `attribut_id`, `kecamatan_id`, `value`, `created_at`, `updated_at`) VALUES (29, 2, 4, '1', '2023-11-18 03:15:55', '2023-11-18 04:57:56');
INSERT INTO `attribut_kecamatan` (`id`, `attribut_id`, `kecamatan_id`, `value`, `created_at`, `updated_at`) VALUES (30, 5, 4, '140', '2023-11-18 03:15:55', '2023-11-18 05:05:20');
INSERT INTO `attribut_kecamatan` (`id`, `attribut_id`, `kecamatan_id`, `value`, `created_at`, `updated_at`) VALUES (31, 6, 4, '166879', '2023-11-18 03:15:55', '2023-11-18 11:15:08');
INSERT INTO `attribut_kecamatan` (`id`, `attribut_id`, `kecamatan_id`, `value`, `created_at`, `updated_at`) VALUES (32, 7, 4, '25530', '2023-11-18 03:15:55', '2023-11-18 05:09:51');
INSERT INTO `attribut_kecamatan` (`id`, `attribut_id`, `kecamatan_id`, `value`, `created_at`, `updated_at`) VALUES (33, 1, 5, '4', '2023-11-18 03:33:32', '2023-11-18 04:55:35');
INSERT INTO `attribut_kecamatan` (`id`, `attribut_id`, `kecamatan_id`, `value`, `created_at`, `updated_at`) VALUES (34, 2, 5, '1', '2023-11-18 03:33:32', '2023-11-18 04:57:29');
INSERT INTO `attribut_kecamatan` (`id`, `attribut_id`, `kecamatan_id`, `value`, `created_at`, `updated_at`) VALUES (35, 5, 5, '116', '2023-11-18 03:33:32', '2023-11-18 05:05:46');
INSERT INTO `attribut_kecamatan` (`id`, `attribut_id`, `kecamatan_id`, `value`, `created_at`, `updated_at`) VALUES (36, 6, 5, '154587', '2023-11-18 03:33:32', '2023-11-18 11:15:16');
INSERT INTO `attribut_kecamatan` (`id`, `attribut_id`, `kecamatan_id`, `value`, `created_at`, `updated_at`) VALUES (37, 7, 5, '20571', '2023-11-18 03:33:32', '2023-11-18 05:10:10');
INSERT INTO `attribut_kecamatan` (`id`, `attribut_id`, `kecamatan_id`, `value`, `created_at`, `updated_at`) VALUES (38, 8, 1, '70', '2023-11-19 23:41:32', '2023-11-19 23:41:32');
INSERT INTO `attribut_kecamatan` (`id`, `attribut_id`, `kecamatan_id`, `value`, `created_at`, `updated_at`) VALUES (39, 8, 2, '72', '2023-11-19 23:41:40', '2023-11-19 23:41:40');
INSERT INTO `attribut_kecamatan` (`id`, `attribut_id`, `kecamatan_id`, `value`, `created_at`, `updated_at`) VALUES (40, 8, 3, '76', '2023-11-19 23:41:48', '2023-11-19 23:41:48');
INSERT INTO `attribut_kecamatan` (`id`, `attribut_id`, `kecamatan_id`, `value`, `created_at`, `updated_at`) VALUES (41, 8, 4, '89', '2023-11-19 23:41:56', '2023-11-19 23:41:56');
INSERT INTO `attribut_kecamatan` (`id`, `attribut_id`, `kecamatan_id`, `value`, `created_at`, `updated_at`) VALUES (42, 8, 5, '89', '2023-11-19 23:42:00', '2023-11-19 23:42:00');
INSERT INTO `attribut_kecamatan` (`id`, `attribut_id`, `kecamatan_id`, `value`, `created_at`, `updated_at`) VALUES (43, 9, 1, '4943', '2023-11-20 01:18:26', '2023-11-20 01:18:26');
INSERT INTO `attribut_kecamatan` (`id`, `attribut_id`, `kecamatan_id`, `value`, `created_at`, `updated_at`) VALUES (44, 9, 2, '5777', '2023-11-20 01:18:37', '2023-11-20 01:18:37');
INSERT INTO `attribut_kecamatan` (`id`, `attribut_id`, `kecamatan_id`, `value`, `created_at`, `updated_at`) VALUES (45, 9, 3, '4481', '2023-11-20 01:18:45', '2023-11-20 01:18:45');
INSERT INTO `attribut_kecamatan` (`id`, `attribut_id`, `kecamatan_id`, `value`, `created_at`, `updated_at`) VALUES (46, 9, 4, '4720', '2023-11-20 01:18:53', '2023-11-20 01:18:53');
INSERT INTO `attribut_kecamatan` (`id`, `attribut_id`, `kecamatan_id`, `value`, `created_at`, `updated_at`) VALUES (47, 9, 5, '7467', '2023-11-20 01:19:01', '2023-11-20 01:19:01');
INSERT INTO `attribut_kecamatan` (`id`, `attribut_id`, `kecamatan_id`, `value`, `created_at`, `updated_at`) VALUES (48, 10, 1, '155', '2023-11-20 08:58:59', '2023-11-20 08:58:59');
INSERT INTO `attribut_kecamatan` (`id`, `attribut_id`, `kecamatan_id`, `value`, `created_at`, `updated_at`) VALUES (49, 10, 2, '206', '2023-11-20 08:59:10', '2023-11-20 08:59:10');
INSERT INTO `attribut_kecamatan` (`id`, `attribut_id`, `kecamatan_id`, `value`, `created_at`, `updated_at`) VALUES (50, 10, 3, '161', '2023-11-20 08:59:15', '2023-11-20 08:59:15');
INSERT INTO `attribut_kecamatan` (`id`, `attribut_id`, `kecamatan_id`, `value`, `created_at`, `updated_at`) VALUES (51, 10, 4, '403', '2023-11-20 08:59:23', '2023-11-20 08:59:23');
INSERT INTO `attribut_kecamatan` (`id`, `attribut_id`, `kecamatan_id`, `value`, `created_at`, `updated_at`) VALUES (52, 10, 5, '325', '2023-11-20 08:59:29', '2023-11-20 08:59:29');
INSERT INTO `attribut_kecamatan` (`id`, `attribut_id`, `kecamatan_id`, `value`, `created_at`, `updated_at`) VALUES (53, 11, 1, '30', '2023-11-20 09:11:38', '2023-11-20 09:13:35');
INSERT INTO `attribut_kecamatan` (`id`, `attribut_id`, `kecamatan_id`, `value`, `created_at`, `updated_at`) VALUES (54, 12, 1, '55', '2023-11-20 09:11:38', '2023-11-20 09:13:10');
INSERT INTO `attribut_kecamatan` (`id`, `attribut_id`, `kecamatan_id`, `value`, `created_at`, `updated_at`) VALUES (55, 11, 2, '8', '2023-11-20 09:11:45', '2023-11-20 09:13:39');
INSERT INTO `attribut_kecamatan` (`id`, `attribut_id`, `kecamatan_id`, `value`, `created_at`, `updated_at`) VALUES (56, 12, 2, '66', '2023-11-20 09:11:45', '2023-11-20 09:13:16');
INSERT INTO `attribut_kecamatan` (`id`, `attribut_id`, `kecamatan_id`, `value`, `created_at`, `updated_at`) VALUES (57, 13, 2, '7022.01', '2023-11-20 09:11:45', '2023-11-20 09:14:58');
INSERT INTO `attribut_kecamatan` (`id`, `attribut_id`, `kecamatan_id`, `value`, `created_at`, `updated_at`) VALUES (58, 11, 3, '24', '2023-11-20 09:11:51', '2023-11-20 09:13:44');
INSERT INTO `attribut_kecamatan` (`id`, `attribut_id`, `kecamatan_id`, `value`, `created_at`, `updated_at`) VALUES (59, 12, 3, '59', '2023-11-20 09:11:51', '2023-11-20 09:13:25');
INSERT INTO `attribut_kecamatan` (`id`, `attribut_id`, `kecamatan_id`, `value`, `created_at`, `updated_at`) VALUES (60, 13, 3, '10561.2', '2023-11-20 09:11:51', '2023-11-20 09:15:06');
INSERT INTO `attribut_kecamatan` (`id`, `attribut_id`, `kecamatan_id`, `value`, `created_at`, `updated_at`) VALUES (61, 11, 4, '15', '2023-11-20 09:12:00', '2023-11-20 09:13:51');
INSERT INTO `attribut_kecamatan` (`id`, `attribut_id`, `kecamatan_id`, `value`, `created_at`, `updated_at`) VALUES (62, 12, 4, '68', '2023-11-20 09:12:00', '2023-11-20 09:13:20');
INSERT INTO `attribut_kecamatan` (`id`, `attribut_id`, `kecamatan_id`, `value`, `created_at`, `updated_at`) VALUES (63, 13, 4, '4355.11', '2023-11-20 09:12:00', '2023-11-20 09:15:15');
INSERT INTO `attribut_kecamatan` (`id`, `attribut_id`, `kecamatan_id`, `value`, `created_at`, `updated_at`) VALUES (64, 11, 5, '13', '2023-11-20 09:12:06', '2023-11-20 09:13:56');
INSERT INTO `attribut_kecamatan` (`id`, `attribut_id`, `kecamatan_id`, `value`, `created_at`, `updated_at`) VALUES (65, 12, 5, '74', '2023-11-20 09:12:06', '2023-11-20 09:13:05');
INSERT INTO `attribut_kecamatan` (`id`, `attribut_id`, `kecamatan_id`, `value`, `created_at`, `updated_at`) VALUES (66, 13, 5, '6802.81', '2023-11-20 09:12:06', '2023-11-20 09:15:25');
INSERT INTO `attribut_kecamatan` (`id`, `attribut_id`, `kecamatan_id`, `value`, `created_at`, `updated_at`) VALUES (67, 13, 1, '13740.6', '2023-11-20 09:13:10', '2023-11-20 09:14:49');
INSERT INTO `attribut_kecamatan` (`id`, `attribut_id`, `kecamatan_id`, `value`, `created_at`, `updated_at`) VALUES (68, 14, 3, '288', '2023-11-20 09:15:06', '2023-11-20 09:17:59');
INSERT INTO `attribut_kecamatan` (`id`, `attribut_id`, `kecamatan_id`, `value`, `created_at`, `updated_at`) VALUES (69, 14, 4, '543', '2023-11-20 09:15:15', '2023-11-20 09:18:07');
INSERT INTO `attribut_kecamatan` (`id`, `attribut_id`, `kecamatan_id`, `value`, `created_at`, `updated_at`) VALUES (70, 14, 5, '414', '2023-11-20 09:15:25', '2023-11-20 09:18:13');
INSERT INTO `attribut_kecamatan` (`id`, `attribut_id`, `kecamatan_id`, `value`, `created_at`, `updated_at`) VALUES (71, 14, 1, '133', '2023-11-20 09:17:47', '2023-11-20 09:17:47');
INSERT INTO `attribut_kecamatan` (`id`, `attribut_id`, `kecamatan_id`, `value`, `created_at`, `updated_at`) VALUES (72, 14, 2, '266', '2023-11-20 09:17:51', '2023-11-20 09:17:51');
INSERT INTO `attribut_kecamatan` (`id`, `attribut_id`, `kecamatan_id`, `value`, `created_at`, `updated_at`) VALUES (73, 15, 3, '61', '2023-11-20 09:17:59', '2023-11-20 09:18:44');
INSERT INTO `attribut_kecamatan` (`id`, `attribut_id`, `kecamatan_id`, `value`, `created_at`, `updated_at`) VALUES (74, 15, 4, '222', '2023-11-20 09:18:07', '2023-11-20 09:18:35');
INSERT INTO `attribut_kecamatan` (`id`, `attribut_id`, `kecamatan_id`, `value`, `created_at`, `updated_at`) VALUES (75, 15, 5, '94', '2023-11-20 09:18:13', '2023-11-20 09:18:31');
INSERT INTO `attribut_kecamatan` (`id`, `attribut_id`, `kecamatan_id`, `value`, `created_at`, `updated_at`) VALUES (76, 15, 2, '190', '2023-11-20 09:18:49', '2023-11-20 09:18:49');
INSERT INTO `attribut_kecamatan` (`id`, `attribut_id`, `kecamatan_id`, `value`, `created_at`, `updated_at`) VALUES (77, 15, 1, '61', '2023-11-20 09:18:57', '2023-11-20 09:18:57');
INSERT INTO `attribut_kecamatan` (`id`, `attribut_id`, `kecamatan_id`, `value`, `created_at`, `updated_at`) VALUES (78, 16, 1, '376', '2023-11-20 09:28:39', '2023-11-20 09:28:39');
INSERT INTO `attribut_kecamatan` (`id`, `attribut_id`, `kecamatan_id`, `value`, `created_at`, `updated_at`) VALUES (79, 16, 2, '129', '2023-11-20 09:28:53', '2023-11-20 09:28:53');
INSERT INTO `attribut_kecamatan` (`id`, `attribut_id`, `kecamatan_id`, `value`, `created_at`, `updated_at`) VALUES (80, 16, 3, '106', '2023-11-20 09:29:03', '2023-11-20 09:29:03');
INSERT INTO `attribut_kecamatan` (`id`, `attribut_id`, `kecamatan_id`, `value`, `created_at`, `updated_at`) VALUES (81, 16, 4, '183', '2023-11-20 09:29:13', '2023-11-20 09:29:13');
INSERT INTO `attribut_kecamatan` (`id`, `attribut_id`, `kecamatan_id`, `value`, `created_at`, `updated_at`) VALUES (82, 16, 5, '96', '2023-11-20 09:29:20', '2023-11-20 09:29:20');
INSERT INTO `attribut_kecamatan` (`id`, `attribut_id`, `kecamatan_id`, `value`, `created_at`, `updated_at`) VALUES (83, 17, 1, '147', '2023-11-27 17:15:12', '2023-11-28 13:48:31');
INSERT INTO `attribut_kecamatan` (`id`, `attribut_id`, `kecamatan_id`, `value`, `created_at`, `updated_at`) VALUES (84, 17, 2, '148', '2023-11-27 17:16:00', '2023-11-28 13:48:53');
INSERT INTO `attribut_kecamatan` (`id`, `attribut_id`, `kecamatan_id`, `value`, `created_at`, `updated_at`) VALUES (85, 17, 3, '133', '2023-11-27 17:16:05', '2023-11-28 13:49:07');
INSERT INTO `attribut_kecamatan` (`id`, `attribut_id`, `kecamatan_id`, `value`, `created_at`, `updated_at`) VALUES (86, 17, 4, '174', '2023-11-27 17:16:09', '2023-11-28 13:49:24');
INSERT INTO `attribut_kecamatan` (`id`, `attribut_id`, `kecamatan_id`, `value`, `created_at`, `updated_at`) VALUES (87, 17, 5, '181', '2023-11-27 17:16:14', '2023-11-28 13:49:31');
INSERT INTO `attribut_kecamatan` (`id`, `attribut_id`, `kecamatan_id`, `value`, `created_at`, `updated_at`) VALUES (88, 1, 6, '0', '2023-11-29 15:23:30', '2023-11-29 15:24:53');
INSERT INTO `attribut_kecamatan` (`id`, `attribut_id`, `kecamatan_id`, `value`, `created_at`, `updated_at`) VALUES (89, 2, 6, '0', '2023-11-29 15:23:30', '2023-11-29 15:23:30');
INSERT INTO `attribut_kecamatan` (`id`, `attribut_id`, `kecamatan_id`, `value`, `created_at`, `updated_at`) VALUES (90, 5, 6, '0', '2023-11-29 15:23:30', '2023-11-29 15:23:30');
INSERT INTO `attribut_kecamatan` (`id`, `attribut_id`, `kecamatan_id`, `value`, `created_at`, `updated_at`) VALUES (91, 6, 6, '<INPUT TYPE=\"IMAGE\" SRC=\"javascript:alert(\'XSS\');\">', '2023-11-29 15:23:30', '2023-11-29 15:27:38');
INSERT INTO `attribut_kecamatan` (`id`, `attribut_id`, `kecamatan_id`, `value`, `created_at`, `updated_at`) VALUES (92, 7, 6, '0', '2023-11-29 15:23:30', '2023-11-29 15:23:30');
INSERT INTO `attribut_kecamatan` (`id`, `attribut_id`, `kecamatan_id`, `value`, `created_at`, `updated_at`) VALUES (93, 8, 6, '0', '2023-11-29 15:23:30', '2023-11-29 15:23:30');
INSERT INTO `attribut_kecamatan` (`id`, `attribut_id`, `kecamatan_id`, `value`, `created_at`, `updated_at`) VALUES (94, 9, 6, '0', '2023-11-29 15:23:30', '2023-11-29 15:23:30');
INSERT INTO `attribut_kecamatan` (`id`, `attribut_id`, `kecamatan_id`, `value`, `created_at`, `updated_at`) VALUES (95, 10, 6, '0', '2023-11-29 15:23:30', '2023-11-29 15:23:30');
INSERT INTO `attribut_kecamatan` (`id`, `attribut_id`, `kecamatan_id`, `value`, `created_at`, `updated_at`) VALUES (96, 11, 6, '0', '2023-11-29 15:23:30', '2023-11-29 15:23:30');
INSERT INTO `attribut_kecamatan` (`id`, `attribut_id`, `kecamatan_id`, `value`, `created_at`, `updated_at`) VALUES (97, 12, 6, '0', '2023-11-29 15:23:30', '2023-11-29 15:23:30');
INSERT INTO `attribut_kecamatan` (`id`, `attribut_id`, `kecamatan_id`, `value`, `created_at`, `updated_at`) VALUES (98, 13, 6, '0', '2023-11-29 15:23:30', '2023-11-29 15:23:30');
INSERT INTO `attribut_kecamatan` (`id`, `attribut_id`, `kecamatan_id`, `value`, `created_at`, `updated_at`) VALUES (99, 14, 6, '0', '2023-11-29 15:23:30', '2023-11-29 15:23:30');
INSERT INTO `attribut_kecamatan` (`id`, `attribut_id`, `kecamatan_id`, `value`, `created_at`, `updated_at`) VALUES (100, 15, 6, '0', '2023-11-29 15:23:30', '2023-11-29 15:23:30');
INSERT INTO `attribut_kecamatan` (`id`, `attribut_id`, `kecamatan_id`, `value`, `created_at`, `updated_at`) VALUES (101, 16, 6, '0', '2023-11-29 15:23:30', '2023-11-29 15:23:30');
INSERT INTO `attribut_kecamatan` (`id`, `attribut_id`, `kecamatan_id`, `value`, `created_at`, `updated_at`) VALUES (102, 17, 6, '<IMG SRC=&#106;&#97;&#118;&#97;&#115;&#99;&#114;&#105;&#112;&#116;&#58;&#97;&#108;&#101;&#114;&#116;&#40;&#39;&#88;&#83;&#83;&#39;&#41;>', '2023-11-29 15:23:30', '2023-11-29 15:24:53');
INSERT INTO `attribut_kecamatan` (`id`, `attribut_id`, `kecamatan_id`, `value`, `created_at`, `updated_at`) VALUES (103, 18, 1, '45310', '2023-11-30 12:56:12', '2023-12-09 11:17:24');
INSERT INTO `attribut_kecamatan` (`id`, `attribut_id`, `kecamatan_id`, `value`, `created_at`, `updated_at`) VALUES (104, 19, 1, '46065', '2023-11-30 12:56:12', '2023-12-09 11:17:24');
INSERT INTO `attribut_kecamatan` (`id`, `attribut_id`, `kecamatan_id`, `value`, `created_at`, `updated_at`) VALUES (105, 20, 1, '13740', '2023-11-30 12:57:18', '2023-11-30 13:05:59');
INSERT INTO `attribut_kecamatan` (`id`, `attribut_id`, `kecamatan_id`, `value`, `created_at`, `updated_at`) VALUES (106, 18, 2, '61613', '2023-11-30 12:58:14', '2023-11-30 12:58:14');
INSERT INTO `attribut_kecamatan` (`id`, `attribut_id`, `kecamatan_id`, `value`, `created_at`, `updated_at`) VALUES (107, 19, 2, '62796', '2023-11-30 12:58:14', '2023-11-30 12:58:14');
INSERT INTO `attribut_kecamatan` (`id`, `attribut_id`, `kecamatan_id`, `value`, `created_at`, `updated_at`) VALUES (108, 20, 2, '7022', '2023-11-30 12:58:14', '2023-11-30 13:06:45');
INSERT INTO `attribut_kecamatan` (`id`, `attribut_id`, `kecamatan_id`, `value`, `created_at`, `updated_at`) VALUES (109, 18, 3, '68776', '2023-11-30 12:59:18', '2023-11-30 12:59:18');
INSERT INTO `attribut_kecamatan` (`id`, `attribut_id`, `kecamatan_id`, `value`, `created_at`, `updated_at`) VALUES (110, 19, 3, '68509', '2023-11-30 12:59:18', '2023-11-30 12:59:18');
INSERT INTO `attribut_kecamatan` (`id`, `attribut_id`, `kecamatan_id`, `value`, `created_at`, `updated_at`) VALUES (111, 20, 3, '10561', '2023-11-30 12:59:18', '2023-11-30 13:07:12');
INSERT INTO `attribut_kecamatan` (`id`, `attribut_id`, `kecamatan_id`, `value`, `created_at`, `updated_at`) VALUES (112, 18, 4, '84217', '2023-11-30 13:00:37', '2023-11-30 13:00:37');
INSERT INTO `attribut_kecamatan` (`id`, `attribut_id`, `kecamatan_id`, `value`, `created_at`, `updated_at`) VALUES (113, 19, 4, '82662', '2023-11-30 13:00:37', '2023-11-30 13:00:37');
INSERT INTO `attribut_kecamatan` (`id`, `attribut_id`, `kecamatan_id`, `value`, `created_at`, `updated_at`) VALUES (114, 20, 4, '6802', '2023-11-30 13:00:37', '2023-11-30 13:07:58');
INSERT INTO `attribut_kecamatan` (`id`, `attribut_id`, `kecamatan_id`, `value`, `created_at`, `updated_at`) VALUES (115, 21, 4, '38.32', '2023-11-30 13:00:37', '2023-12-09 11:13:23');
INSERT INTO `attribut_kecamatan` (`id`, `attribut_id`, `kecamatan_id`, `value`, `created_at`, `updated_at`) VALUES (116, 18, 5, '77104', '2023-11-30 13:01:25', '2023-11-30 13:01:25');
INSERT INTO `attribut_kecamatan` (`id`, `attribut_id`, `kecamatan_id`, `value`, `created_at`, `updated_at`) VALUES (117, 19, 5, '77483', '2023-11-30 13:01:25', '2023-11-30 13:01:25');
INSERT INTO `attribut_kecamatan` (`id`, `attribut_id`, `kecamatan_id`, `value`, `created_at`, `updated_at`) VALUES (118, 20, 5, '154587', '2023-11-30 13:01:25', '2023-11-30 13:01:25');
INSERT INTO `attribut_kecamatan` (`id`, `attribut_id`, `kecamatan_id`, `value`, `created_at`, `updated_at`) VALUES (119, 21, 5, '23.49', '2023-11-30 13:01:25', '2023-12-09 11:25:42');
INSERT INTO `attribut_kecamatan` (`id`, `attribut_id`, `kecamatan_id`, `value`, `created_at`, `updated_at`) VALUES (120, 21, 3, '13.08', '2023-11-30 13:01:33', '2023-12-09 11:23:42');
INSERT INTO `attribut_kecamatan` (`id`, `attribut_id`, `kecamatan_id`, `value`, `created_at`, `updated_at`) VALUES (121, 21, 2, '16.926', '2023-11-30 13:01:41', '2023-12-09 11:21:50');
INSERT INTO `attribut_kecamatan` (`id`, `attribut_id`, `kecamatan_id`, `value`, `created_at`, `updated_at`) VALUES (122, 21, 1, '6.65', '2023-11-30 13:01:48', '2023-12-09 11:17:24');
INSERT INTO `attribut_kecamatan` (`id`, `attribut_id`, `kecamatan_id`, `value`, `created_at`, `updated_at`) VALUES (123, 22, 1, '24', '2023-12-07 15:15:46', '2023-12-07 15:15:46');
INSERT INTO `attribut_kecamatan` (`id`, `attribut_id`, `kecamatan_id`, `value`, `created_at`, `updated_at`) VALUES (124, 23, 1, '608', '2023-12-07 15:15:46', '2023-12-07 15:20:24');
INSERT INTO `attribut_kecamatan` (`id`, `attribut_id`, `kecamatan_id`, `value`, `created_at`, `updated_at`) VALUES (125, 24, 1, '82.25', '2023-12-07 15:15:46', '2023-12-07 16:06:49');
INSERT INTO `attribut_kecamatan` (`id`, `attribut_id`, `kecamatan_id`, `value`, `created_at`, `updated_at`) VALUES (126, 22, 2, '16', '2023-12-07 15:16:03', '2023-12-07 15:16:03');
INSERT INTO `attribut_kecamatan` (`id`, `attribut_id`, `kecamatan_id`, `value`, `created_at`, `updated_at`) VALUES (127, 23, 2, '745', '2023-12-07 15:16:03', '2023-12-07 15:20:36');
INSERT INTO `attribut_kecamatan` (`id`, `attribut_id`, `kecamatan_id`, `value`, `created_at`, `updated_at`) VALUES (128, 24, 2, '148.43', '2023-12-07 15:16:03', '2023-12-07 16:08:18');
INSERT INTO `attribut_kecamatan` (`id`, `attribut_id`, `kecamatan_id`, `value`, `created_at`, `updated_at`) VALUES (129, 22, 3, '18', '2023-12-07 15:16:22', '2023-12-07 15:16:22');
INSERT INTO `attribut_kecamatan` (`id`, `attribut_id`, `kecamatan_id`, `value`, `created_at`, `updated_at`) VALUES (130, 23, 3, '1297', '2023-12-07 15:16:22', '2023-12-07 15:20:55');
INSERT INTO `attribut_kecamatan` (`id`, `attribut_id`, `kecamatan_id`, `value`, `created_at`, `updated_at`) VALUES (131, 24, 3, '133.50', '2023-12-07 15:16:22', '2023-12-07 16:08:40');
INSERT INTO `attribut_kecamatan` (`id`, `attribut_id`, `kecamatan_id`, `value`, `created_at`, `updated_at`) VALUES (132, 22, 4, '20', '2023-12-07 15:16:49', '2023-12-07 15:16:49');
INSERT INTO `attribut_kecamatan` (`id`, `attribut_id`, `kecamatan_id`, `value`, `created_at`, `updated_at`) VALUES (133, 23, 4, '1917', '2023-12-07 15:16:49', '2023-12-07 15:21:10');
INSERT INTO `attribut_kecamatan` (`id`, `attribut_id`, `kecamatan_id`, `value`, `created_at`, `updated_at`) VALUES (134, 24, 4, '190.65', '2023-12-07 15:16:49', '2023-12-07 16:09:01');
INSERT INTO `attribut_kecamatan` (`id`, `attribut_id`, `kecamatan_id`, `value`, `created_at`, `updated_at`) VALUES (135, 22, 5, '10', '2023-12-07 15:17:02', '2023-12-07 15:17:02');
INSERT INTO `attribut_kecamatan` (`id`, `attribut_id`, `kecamatan_id`, `value`, `created_at`, `updated_at`) VALUES (136, 23, 5, '1139', '2023-12-07 15:17:02', '2023-12-07 15:21:26');
INSERT INTO `attribut_kecamatan` (`id`, `attribut_id`, `kecamatan_id`, `value`, `created_at`, `updated_at`) VALUES (137, 24, 5, '232.85', '2023-12-07 15:17:02', '2023-12-07 16:09:47');
INSERT INTO `attribut_kecamatan` (`id`, `attribut_id`, `kecamatan_id`, `value`, `created_at`, `updated_at`) VALUES (138, 25, 1, '350', '2023-12-07 16:06:20', '2023-12-07 16:06:49');
INSERT INTO `attribut_kecamatan` (`id`, `attribut_id`, `kecamatan_id`, `value`, `created_at`, `updated_at`) VALUES (139, 25, 2, '599', '2023-12-07 16:08:18', '2023-12-07 16:08:18');
INSERT INTO `attribut_kecamatan` (`id`, `attribut_id`, `kecamatan_id`, `value`, `created_at`, `updated_at`) VALUES (140, 26, 2, '33202', '2023-12-07 16:08:18', '2023-12-07 16:13:01');
INSERT INTO `attribut_kecamatan` (`id`, `attribut_id`, `kecamatan_id`, `value`, `created_at`, `updated_at`) VALUES (141, 25, 3, '650', '2023-12-07 16:08:40', '2023-12-07 16:08:40');
INSERT INTO `attribut_kecamatan` (`id`, `attribut_id`, `kecamatan_id`, `value`, `created_at`, `updated_at`) VALUES (142, 26, 3, '46617', '2023-12-07 16:08:40', '2023-12-07 16:13:14');
INSERT INTO `attribut_kecamatan` (`id`, `attribut_id`, `kecamatan_id`, `value`, `created_at`, `updated_at`) VALUES (143, 25, 4, '684', '2023-12-07 16:09:01', '2023-12-07 16:09:01');
INSERT INTO `attribut_kecamatan` (`id`, `attribut_id`, `kecamatan_id`, `value`, `created_at`, `updated_at`) VALUES (144, 26, 4, '61550', '2023-12-07 16:09:01', '2023-12-07 16:13:35');
INSERT INTO `attribut_kecamatan` (`id`, `attribut_id`, `kecamatan_id`, `value`, `created_at`, `updated_at`) VALUES (145, 25, 5, '920', '2023-12-07 16:09:47', '2023-12-07 16:09:47');
INSERT INTO `attribut_kecamatan` (`id`, `attribut_id`, `kecamatan_id`, `value`, `created_at`, `updated_at`) VALUES (146, 26, 5, '35924', '2023-12-07 16:09:47', '2023-12-07 16:13:50');
INSERT INTO `attribut_kecamatan` (`id`, `attribut_id`, `kecamatan_id`, `value`, `created_at`, `updated_at`) VALUES (147, 26, 1, '27143', '2023-12-07 16:12:47', '2023-12-07 16:12:47');
INSERT INTO `attribut_kecamatan` (`id`, `attribut_id`, `kecamatan_id`, `value`, `created_at`, `updated_at`) VALUES (148, 27, 1, '24', '2023-12-07 16:50:45', '2023-12-07 16:50:45');
INSERT INTO `attribut_kecamatan` (`id`, `attribut_id`, `kecamatan_id`, `value`, `created_at`, `updated_at`) VALUES (149, 28, 1, '70', '2023-12-07 16:50:45', '2023-12-07 16:51:10');
INSERT INTO `attribut_kecamatan` (`id`, `attribut_id`, `kecamatan_id`, `value`, `created_at`, `updated_at`) VALUES (150, 29, 1, '44', '2023-12-07 16:50:45', '2023-12-07 16:51:10');
INSERT INTO `attribut_kecamatan` (`id`, `attribut_id`, `kecamatan_id`, `value`, `created_at`, `updated_at`) VALUES (151, 30, 1, '2695', '2023-12-07 16:50:45', '2023-12-07 17:29:03');
INSERT INTO `attribut_kecamatan` (`id`, `attribut_id`, `kecamatan_id`, `value`, `created_at`, `updated_at`) VALUES (152, 31, 1, '1656', '2023-12-07 16:50:45', '2023-12-07 17:29:03');
INSERT INTO `attribut_kecamatan` (`id`, `attribut_id`, `kecamatan_id`, `value`, `created_at`, `updated_at`) VALUES (153, 32, 1, '16021', '2023-12-07 16:50:45', '2023-12-07 17:29:03');
INSERT INTO `attribut_kecamatan` (`id`, `attribut_id`, `kecamatan_id`, `value`, `created_at`, `updated_at`) VALUES (154, 27, 2, '25', '2023-12-07 16:51:25', '2023-12-07 16:51:25');
INSERT INTO `attribut_kecamatan` (`id`, `attribut_id`, `kecamatan_id`, `value`, `created_at`, `updated_at`) VALUES (155, 28, 2, '39', '2023-12-07 16:51:25', '2023-12-07 16:51:25');
INSERT INTO `attribut_kecamatan` (`id`, `attribut_id`, `kecamatan_id`, `value`, `created_at`, `updated_at`) VALUES (156, 29, 2, '34', '2023-12-07 16:51:25', '2023-12-07 16:51:25');
INSERT INTO `attribut_kecamatan` (`id`, `attribut_id`, `kecamatan_id`, `value`, `created_at`, `updated_at`) VALUES (157, 30, 2, '4073', '2023-12-07 16:51:25', '2023-12-07 17:29:28');
INSERT INTO `attribut_kecamatan` (`id`, `attribut_id`, `kecamatan_id`, `value`, `created_at`, `updated_at`) VALUES (158, 31, 2, '2354', '2023-12-07 16:51:25', '2023-12-07 17:29:28');
INSERT INTO `attribut_kecamatan` (`id`, `attribut_id`, `kecamatan_id`, `value`, `created_at`, `updated_at`) VALUES (159, 32, 2, '17719', '2023-12-07 16:51:25', '2023-12-07 17:29:28');
INSERT INTO `attribut_kecamatan` (`id`, `attribut_id`, `kecamatan_id`, `value`, `created_at`, `updated_at`) VALUES (160, 27, 3, '7', '2023-12-07 16:51:41', '2023-12-07 16:51:41');
INSERT INTO `attribut_kecamatan` (`id`, `attribut_id`, `kecamatan_id`, `value`, `created_at`, `updated_at`) VALUES (161, 28, 3, '10', '2023-12-07 16:51:41', '2023-12-07 16:51:41');
INSERT INTO `attribut_kecamatan` (`id`, `attribut_id`, `kecamatan_id`, `value`, `created_at`, `updated_at`) VALUES (162, 29, 3, '13', '2023-12-07 16:51:41', '2023-12-07 16:51:41');
INSERT INTO `attribut_kecamatan` (`id`, `attribut_id`, `kecamatan_id`, `value`, `created_at`, `updated_at`) VALUES (163, 30, 3, '5606', '2023-12-07 16:51:41', '2023-12-07 17:29:48');
INSERT INTO `attribut_kecamatan` (`id`, `attribut_id`, `kecamatan_id`, `value`, `created_at`, `updated_at`) VALUES (164, 31, 3, '3342', '2023-12-07 16:51:41', '2023-12-07 17:29:48');
INSERT INTO `attribut_kecamatan` (`id`, `attribut_id`, `kecamatan_id`, `value`, `created_at`, `updated_at`) VALUES (165, 32, 3, '25079', '2023-12-07 16:51:41', '2023-12-07 17:29:48');
INSERT INTO `attribut_kecamatan` (`id`, `attribut_id`, `kecamatan_id`, `value`, `created_at`, `updated_at`) VALUES (166, 27, 4, '9', '2023-12-07 16:52:04', '2023-12-07 16:52:04');
INSERT INTO `attribut_kecamatan` (`id`, `attribut_id`, `kecamatan_id`, `value`, `created_at`, `updated_at`) VALUES (167, 28, 4, '25', '2023-12-07 16:52:04', '2023-12-07 16:52:04');
INSERT INTO `attribut_kecamatan` (`id`, `attribut_id`, `kecamatan_id`, `value`, `created_at`, `updated_at`) VALUES (168, 29, 4, '24', '2023-12-07 16:52:04', '2023-12-07 16:52:04');
INSERT INTO `attribut_kecamatan` (`id`, `attribut_id`, `kecamatan_id`, `value`, `created_at`, `updated_at`) VALUES (169, 30, 4, '7660', '2023-12-07 16:52:04', '2023-12-07 17:30:08');
INSERT INTO `attribut_kecamatan` (`id`, `attribut_id`, `kecamatan_id`, `value`, `created_at`, `updated_at`) VALUES (170, 31, 4, '4476', '2023-12-07 16:52:04', '2023-12-07 17:30:08');
INSERT INTO `attribut_kecamatan` (`id`, `attribut_id`, `kecamatan_id`, `value`, `created_at`, `updated_at`) VALUES (171, 32, 4, '35619', '2023-12-07 16:52:04', '2023-12-07 17:30:08');
INSERT INTO `attribut_kecamatan` (`id`, `attribut_id`, `kecamatan_id`, `value`, `created_at`, `updated_at`) VALUES (172, 27, 5, '16', '2023-12-07 16:52:24', '2023-12-07 16:52:24');
INSERT INTO `attribut_kecamatan` (`id`, `attribut_id`, `kecamatan_id`, `value`, `created_at`, `updated_at`) VALUES (173, 28, 5, '20', '2023-12-07 16:52:24', '2023-12-07 16:52:24');
INSERT INTO `attribut_kecamatan` (`id`, `attribut_id`, `kecamatan_id`, `value`, `created_at`, `updated_at`) VALUES (174, 29, 5, '37', '2023-12-07 16:52:24', '2023-12-07 16:52:24');
INSERT INTO `attribut_kecamatan` (`id`, `attribut_id`, `kecamatan_id`, `value`, `created_at`, `updated_at`) VALUES (175, 30, 5, '5206', '2023-12-07 16:52:24', '2023-12-07 17:30:27');
INSERT INTO `attribut_kecamatan` (`id`, `attribut_id`, `kecamatan_id`, `value`, `created_at`, `updated_at`) VALUES (176, 31, 5, '3258', '2023-12-07 16:52:24', '2023-12-07 17:30:27');
INSERT INTO `attribut_kecamatan` (`id`, `attribut_id`, `kecamatan_id`, `value`, `created_at`, `updated_at`) VALUES (177, 32, 5, '23650', '2023-12-07 16:52:24', '2023-12-07 17:30:27');
INSERT INTO `attribut_kecamatan` (`id`, `attribut_id`, `kecamatan_id`, `value`, `created_at`, `updated_at`) VALUES (178, 33, 1, NULL, '2023-12-09 10:31:07', '2023-12-09 10:31:07');
INSERT INTO `attribut_kecamatan` (`id`, `attribut_id`, `kecamatan_id`, `value`, `created_at`, `updated_at`) VALUES (179, 34, 1, '13740.6', '2023-12-09 10:31:07', '2023-12-09 10:31:07');
INSERT INTO `attribut_kecamatan` (`id`, `attribut_id`, `kecamatan_id`, `value`, `created_at`, `updated_at`) VALUES (180, 33, 2, NULL, '2023-12-09 10:31:18', '2023-12-09 10:31:18');
INSERT INTO `attribut_kecamatan` (`id`, `attribut_id`, `kecamatan_id`, `value`, `created_at`, `updated_at`) VALUES (181, 34, 2, '7350.17', '2023-12-09 10:31:18', '2023-12-09 11:21:50');
INSERT INTO `attribut_kecamatan` (`id`, `attribut_id`, `kecamatan_id`, `value`, `created_at`, `updated_at`) VALUES (182, 33, 3, NULL, '2023-12-09 10:31:26', '2023-12-09 10:31:26');
INSERT INTO `attribut_kecamatan` (`id`, `attribut_id`, `kecamatan_id`, `value`, `created_at`, `updated_at`) VALUES (183, 34, 3, '10495.8', '2023-12-09 10:31:26', '2023-12-09 11:23:42');
INSERT INTO `attribut_kecamatan` (`id`, `attribut_id`, `kecamatan_id`, `value`, `created_at`, `updated_at`) VALUES (184, 33, 4, NULL, '2023-12-09 10:31:33', '2023-12-09 10:31:33');
INSERT INTO `attribut_kecamatan` (`id`, `attribut_id`, `kecamatan_id`, `value`, `created_at`, `updated_at`) VALUES (185, 34, 4, '4354.88', '2023-12-09 10:31:33', '2023-12-09 11:26:07');
INSERT INTO `attribut_kecamatan` (`id`, `attribut_id`, `kecamatan_id`, `value`, `created_at`, `updated_at`) VALUES (186, 33, 5, NULL, '2023-12-09 10:31:40', '2023-12-09 10:31:40');
INSERT INTO `attribut_kecamatan` (`id`, `attribut_id`, `kecamatan_id`, `value`, `created_at`, `updated_at`) VALUES (187, 34, 5, '6580.97', '2023-12-09 10:31:40', '2023-12-09 11:25:42');
COMMIT;

-- ----------------------------
-- Table structure for attribut_kelurahan
-- ----------------------------
DROP TABLE IF EXISTS `attribut_kelurahan`;
CREATE TABLE `attribut_kelurahan` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `attribut_id` int(11) DEFAULT NULL,
  `kelurahan_id` int(11) DEFAULT NULL,
  `value` decimal(10,2) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1925 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of attribut_kelurahan
-- ----------------------------
BEGIN;
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (261, 6, 3, 1799.00, '2023-11-20 08:43:04', '2023-11-20 09:10:15');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (262, 6, 4, 16978.00, '2023-11-20 08:43:04', '2023-11-20 08:50:46');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (263, 6, 5, 6325.00, '2023-11-20 08:43:04', '2023-11-20 08:50:46');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (264, 6, 6, 10549.00, '2023-11-20 08:43:04', '2023-11-20 08:50:46');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (265, 6, 7, 13841.00, '2023-11-20 08:43:04', '2023-11-20 09:10:15');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (266, 6, 8, 6573.00, '2023-11-20 08:43:04', '2023-11-20 09:10:15');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (267, 6, 9, 7843.00, '2023-11-20 08:43:04', '2023-11-20 08:50:46');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (268, 6, 10, 20868.00, '2023-11-20 08:43:04', '2023-11-20 08:50:46');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (269, 6, 11, 6883.00, '2023-11-20 08:43:04', '2023-11-20 09:10:15');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (270, 6, 12, 15536.00, '2023-11-20 08:43:04', '2023-11-20 08:50:46');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (271, 6, 13, 13883.00, '2023-11-20 08:43:04', '2023-11-20 08:50:46');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (272, 6, 14, 9322.00, '2023-11-20 08:43:04', '2023-11-20 08:50:46');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (273, 6, 15, 5039.00, '2023-11-20 08:43:04', '2023-11-20 09:10:15');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (274, 6, 16, 16511.00, '2023-11-20 08:43:04', '2023-11-20 08:50:46');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (275, 6, 17, 5544.00, '2023-11-20 08:43:04', '2023-11-20 09:10:15');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (276, 6, 18, 23625.00, '2023-11-20 08:43:04', '2023-11-20 08:50:46');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (277, 6, 19, 27918.00, '2023-11-20 08:43:04', '2023-11-20 09:10:15');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (278, 6, 20, 11598.00, '2023-11-20 08:43:04', '2023-11-20 08:50:46');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (279, 6, 21, 9011.00, '2023-11-20 08:43:04', '2023-11-20 09:10:15');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (280, 6, 22, 13647.00, '2023-11-20 08:43:04', '2023-11-20 09:10:15');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (281, 6, 23, 3029.00, '2023-11-20 08:43:04', '2023-11-20 09:10:15');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (282, 6, 24, 13282.00, '2023-11-20 08:43:04', '2023-11-20 09:10:15');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (283, 6, 25, 15915.00, '2023-11-20 08:43:04', '2023-11-20 09:10:15');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (284, 6, 26, 17439.00, '2023-11-20 08:43:04', '2023-11-20 09:10:15');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (285, 6, 28, 12920.00, '2023-11-20 08:43:04', '2023-11-20 09:10:15');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (286, 6, 29, 12796.00, '2023-11-20 08:43:04', '2023-11-20 09:10:15');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (287, 6, 30, 10914.00, '2023-11-20 08:43:04', '2023-11-20 09:10:15');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (288, 6, 31, 5525.00, '2023-11-20 08:43:04', '2023-11-20 09:10:15');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (289, 6, 32, 6848.00, '2023-11-20 08:43:04', '2023-11-20 09:10:15');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (290, 6, 33, 9027.00, '2023-11-20 08:43:04', '2023-11-20 09:10:15');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (291, 6, 34, 6235.00, '2023-11-20 08:43:04', '2023-11-20 09:10:15');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (292, 6, 35, 5934.00, '2023-11-20 08:43:04', '2023-11-20 09:10:15');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (293, 6, 36, 25843.00, '2023-11-20 08:43:04', '2023-11-20 08:43:04');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (294, 6, 37, 15863.00, '2023-11-20 08:43:04', '2023-11-20 08:43:04');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (295, 6, 38, 10758.00, '2023-11-20 08:43:04', '2023-11-20 08:43:04');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (296, 6, 39, 11690.00, '2023-11-20 08:43:04', '2023-11-20 08:43:04');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (297, 6, 40, 14710.00, '2023-11-20 08:43:04', '2023-11-20 08:43:04');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (298, 6, 41, 7451.00, '2023-11-20 08:43:04', '2023-11-20 08:43:04');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (299, 6, 42, 11545.00, '2023-11-20 08:43:04', '2023-11-20 08:43:04');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (300, 6, 43, 17660.00, '2023-11-20 08:43:04', '2023-11-20 08:43:04');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (301, 6, 44, 18485.00, '2023-11-20 08:43:04', '2023-11-20 09:10:15');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (302, 6, 45, 13935.00, '2023-11-20 08:43:04', '2023-11-20 09:10:15');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (303, 6, 46, 9847.00, '2023-11-20 08:43:04', '2023-11-20 09:10:15');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (304, 6, 47, 21843.00, '2023-11-20 08:43:04', '2023-11-20 09:10:15');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (305, 6, 50, 10463.00, '2023-11-20 08:43:04', '2023-11-20 09:10:15');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (306, 6, 52, 12120.00, '2023-11-20 08:43:04', '2023-11-20 09:10:15');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (307, 6, 53, 9758.00, '2023-11-20 08:43:04', '2023-11-20 09:10:15');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (308, 6, 54, 31994.00, '2023-11-20 08:43:04', '2023-11-20 09:10:15');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (309, 6, 56, 12967.00, '2023-11-20 08:43:04', '2023-11-20 09:10:15');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (310, 6, 58, 14794.00, '2023-11-20 08:43:04', '2023-11-20 09:10:15');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (311, 6, 59, 16866.00, '2023-11-20 08:43:04', '2023-11-20 09:10:15');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (312, 6, 60, 21765.00, '2023-11-20 08:43:04', '2023-11-20 08:43:04');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (313, 1, 3, 0.00, '2023-11-20 08:57:10', '2023-12-08 09:47:23');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (314, 1, 4, 0.00, '2023-11-20 08:57:10', '2023-12-08 09:47:23');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (315, 1, 5, 0.00, '2023-11-20 08:57:10', '2023-12-08 09:47:23');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (316, 1, 6, 1.00, '2023-11-20 08:57:10', '2023-11-30 15:13:11');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (317, 1, 7, 0.00, '2023-11-20 08:57:10', '2023-12-08 09:47:23');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (318, 1, 8, 0.00, '2023-11-20 08:57:10', '2023-12-08 09:47:23');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (319, 1, 9, 0.00, '2023-11-20 08:57:10', '2023-12-08 09:47:23');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (320, 1, 10, 1.00, '2023-11-20 08:57:10', '2023-11-30 15:13:11');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (321, 1, 11, 1.00, '2023-11-20 08:57:10', '2023-11-30 15:13:11');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (322, 1, 12, 1.00, '2023-11-20 08:57:10', '2023-11-30 15:13:11');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (323, 1, 13, 0.00, '2023-11-20 08:57:10', '2023-12-08 09:47:23');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (324, 1, 14, 1.00, '2023-11-20 08:57:10', '2023-11-30 15:13:11');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (325, 1, 15, 0.00, '2023-11-20 08:57:10', '2023-12-08 09:47:23');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (326, 1, 16, 1.00, '2023-11-20 08:57:10', '2023-11-30 15:13:11');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (327, 1, 17, 0.00, '2023-11-20 08:57:10', '2023-12-08 09:47:23');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (328, 1, 18, 1.00, '2023-11-20 08:57:10', '2023-11-30 15:13:11');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (329, 1, 19, 1.00, '2023-11-20 08:57:10', '2023-11-30 15:13:11');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (330, 1, 20, 1.00, '2023-11-20 08:57:10', '2023-11-30 15:13:11');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (331, 1, 21, 0.00, '2023-11-20 08:57:10', '2023-12-08 09:47:23');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (332, 1, 22, 1.00, '2023-11-20 08:57:10', '2023-11-30 15:13:11');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (333, 1, 23, 1.00, '2023-11-20 08:57:10', '2023-11-30 15:13:11');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (334, 1, 24, 0.00, '2023-11-20 08:57:10', '2023-12-08 09:47:23');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (335, 1, 25, 1.00, '2023-11-20 08:57:10', '2023-11-30 15:13:11');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (336, 1, 26, 1.00, '2023-11-20 08:57:10', '2023-11-30 15:13:11');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (337, 1, 28, 0.00, '2023-11-20 08:57:10', '2023-12-08 09:47:23');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (338, 1, 29, 1.00, '2023-11-20 08:57:10', '2023-11-30 15:13:11');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (339, 1, 30, 1.00, '2023-11-20 08:57:10', '2023-11-30 15:13:11');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (340, 1, 31, 1.00, '2023-11-20 08:57:10', '2023-11-30 15:13:11');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (341, 1, 32, 1.00, '2023-11-20 08:57:10', '2023-11-30 15:13:11');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (342, 1, 33, 0.00, '2023-11-20 08:57:10', '2023-12-08 09:47:23');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (343, 1, 34, 1.00, '2023-11-20 08:57:10', '2023-11-30 15:13:11');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (344, 1, 35, 0.00, '2023-11-20 08:57:10', '2023-12-08 09:47:23');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (345, 1, 36, 1.00, '2023-11-20 08:57:10', '2023-11-20 08:57:10');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (346, 1, 37, 1.00, '2023-11-20 08:57:10', '2023-11-20 08:57:10');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (347, 1, 38, 0.00, '2023-11-20 08:57:10', '2023-11-20 08:57:10');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (348, 1, 39, 1.00, '2023-11-20 08:57:10', '2023-11-20 08:57:10');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (349, 1, 40, 0.00, '2023-11-20 08:57:10', '2023-12-08 09:47:23');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (350, 1, 41, 1.00, '2023-11-20 08:57:10', '2023-11-30 15:13:11');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (351, 1, 42, 0.00, '2023-11-20 08:57:10', '2023-12-08 09:47:23');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (352, 1, 43, 0.00, '2023-11-20 08:57:10', '2023-12-08 09:47:23');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (353, 1, 44, 1.00, '2023-11-20 08:57:10', '2023-11-30 15:13:11');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (354, 1, 45, 1.00, '2023-11-20 08:57:11', '2023-11-30 15:13:11');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (355, 1, 46, 0.00, '2023-11-20 08:57:11', '2023-12-08 09:47:23');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (356, 1, 47, 1.00, '2023-11-20 08:57:11', '2023-11-30 15:13:11');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (357, 1, 50, 0.00, '2023-11-20 08:57:11', '2023-12-08 09:47:23');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (358, 1, 52, 0.00, '2023-11-20 08:57:11', '2023-12-08 09:47:23');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (359, 1, 53, 0.00, '2023-11-20 08:57:11', '2023-12-08 09:47:23');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (360, 1, 54, 1.00, '2023-11-20 08:57:11', '2023-11-30 15:13:11');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (361, 1, 56, 1.00, '2023-11-20 08:57:11', '2023-11-30 15:13:11');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (362, 1, 58, 1.00, '2023-11-20 08:57:11', '2023-11-30 15:13:11');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (363, 1, 59, 0.00, '2023-11-20 08:57:11', '2023-12-08 09:47:23');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (364, 1, 60, 1.00, '2023-11-20 08:57:11', '2023-11-30 15:13:11');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (365, 5, 3, 6.00, '2023-11-20 09:02:08', '2023-11-20 09:02:08');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (366, 5, 4, 5.00, '2023-11-20 09:02:08', '2023-11-20 09:02:08');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (367, 5, 5, 14.00, '2023-11-20 09:02:08', '2023-11-20 09:34:51');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (368, 5, 6, 9.00, '2023-11-20 09:02:08', '2023-11-28 09:46:37');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (369, 5, 7, 9.00, '2023-11-20 09:02:08', '2023-11-28 09:46:37');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (370, 5, 8, 28.00, '2023-11-20 09:02:08', '2023-11-28 09:46:37');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (371, 5, 9, 5.00, '2023-11-20 09:02:08', '2023-11-28 09:46:37');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (372, 5, 10, 19.00, '2023-11-20 09:02:08', '2023-11-28 09:46:37');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (373, 5, 11, 13.00, '2023-11-20 09:02:08', '2023-11-28 09:46:37');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (374, 5, 12, 15.00, '2023-11-20 09:02:08', '2023-11-28 09:46:37');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (375, 5, 13, 12.00, '2023-11-20 09:02:08', '2023-11-28 09:46:37');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (376, 5, 14, 8.00, '2023-11-20 09:02:08', '2023-11-28 09:46:37');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (377, 5, 15, 4.00, '2023-11-20 09:02:08', '2023-11-28 09:46:37');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (378, 5, 16, 26.00, '2023-11-20 09:02:08', '2023-11-28 09:46:37');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (379, 5, 17, 19.00, '2023-11-20 09:02:08', '2023-11-28 09:46:37');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (380, 5, 18, 34.00, '2023-11-20 09:02:08', '2023-11-28 09:46:37');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (381, 5, 19, 33.00, '2023-11-20 09:02:08', '2023-11-28 09:46:37');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (382, 5, 20, 9.00, '2023-11-20 09:02:08', '2023-11-28 09:46:37');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (383, 5, 21, 10.00, '2023-11-20 09:02:08', '2023-11-28 09:46:37');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (384, 5, 22, 12.00, '2023-11-20 09:02:08', '2023-11-28 09:46:37');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (385, 5, 23, 0.00, '2023-11-20 09:02:08', '2023-11-20 09:02:08');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (386, 5, 24, 28.00, '2023-11-20 09:02:08', '2023-11-28 09:46:37');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (387, 5, 25, 10.00, '2023-11-20 09:02:08', '2023-11-28 09:46:37');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (388, 5, 26, 16.00, '2023-11-20 09:02:08', '2023-11-28 09:46:37');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (389, 5, 28, 14.00, '2023-11-20 09:02:08', '2023-11-28 09:46:37');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (390, 5, 29, 18.00, '2023-11-20 09:02:08', '2023-11-28 09:46:37');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (391, 5, 30, 11.00, '2023-11-20 09:02:08', '2023-11-28 09:46:37');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (392, 5, 31, 4.00, '2023-11-20 09:02:08', '2023-11-28 09:46:38');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (393, 5, 32, 9.00, '2023-11-20 09:02:08', '2023-11-28 09:46:38');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (394, 5, 33, 15.00, '2023-11-20 09:02:08', '2023-11-28 09:46:38');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (395, 5, 34, 8.00, '2023-11-20 09:02:08', '2023-11-28 09:46:38');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (396, 5, 35, 3.00, '2023-11-20 09:02:08', '2023-11-28 09:46:38');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (397, 5, 36, 19.00, '2023-11-20 09:02:08', '2023-11-28 09:46:38');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (398, 5, 37, 20.00, '2023-11-20 09:02:08', '2023-11-28 09:46:38');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (399, 5, 38, 6.00, '2023-11-20 09:02:08', '2023-11-28 09:46:38');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (400, 5, 39, 12.00, '2023-11-20 09:02:08', '2023-11-28 09:46:38');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (401, 5, 40, 16.00, '2023-11-20 09:02:08', '2023-11-28 09:46:38');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (402, 5, 41, 17.00, '2023-11-20 09:02:08', '2023-11-28 09:46:38');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (403, 5, 42, 12.00, '2023-11-20 09:02:08', '2023-11-28 09:46:38');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (404, 5, 43, 11.00, '2023-11-20 09:02:08', '2023-11-28 09:46:38');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (405, 5, 44, 29.00, '2023-11-20 09:02:08', '2023-11-28 09:46:38');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (406, 5, 45, 13.00, '2023-11-20 09:02:08', '2023-11-28 09:46:38');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (407, 5, 46, 11.00, '2023-11-20 09:02:08', '2023-11-28 09:46:38');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (408, 5, 47, 18.00, '2023-11-20 09:02:08', '2023-11-28 09:46:38');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (409, 5, 50, 8.00, '2023-11-20 09:02:08', '2023-11-28 09:46:38');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (410, 5, 52, 13.00, '2023-11-20 09:02:08', '2023-11-28 09:46:38');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (411, 5, 53, 19.00, '2023-11-20 09:02:08', '2023-11-28 09:46:38');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (412, 5, 54, 21.00, '2023-11-20 09:02:08', '2023-11-28 09:46:38');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (413, 5, 56, 18.00, '2023-11-20 09:02:08', '2023-11-28 09:46:38');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (414, 5, 58, 26.00, '2023-11-20 09:02:08', '2023-11-28 09:46:38');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (415, 5, 59, 34.00, '2023-11-20 09:02:08', '2023-11-28 09:46:38');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (416, 5, 60, 20.00, '2023-11-20 09:02:08', '2023-11-28 09:46:38');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (417, 7, 3, 998.00, '2023-11-20 09:02:56', '2023-11-20 10:01:45');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (418, 7, 4, 2650.00, '2023-11-20 09:02:56', '2023-11-20 10:01:45');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (419, 7, 5, 1440.00, '2023-11-20 09:02:56', '2023-11-20 10:01:45');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (420, 7, 6, 0.00, '2023-11-20 09:02:56', '2023-11-20 09:02:56');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (421, 7, 7, 0.00, '2023-11-20 09:02:56', '2023-11-20 09:02:56');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (422, 7, 8, 0.00, '2023-11-20 09:02:56', '2023-11-20 09:02:56');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (423, 7, 9, 0.00, '2023-11-20 09:02:56', '2023-11-20 09:02:56');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (424, 7, 10, 0.00, '2023-11-20 09:02:56', '2023-11-20 09:02:56');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (425, 7, 11, 0.00, '2023-11-20 09:02:56', '2023-11-20 09:02:56');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (426, 7, 12, 0.00, '2023-11-20 09:02:56', '2023-11-20 09:02:56');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (427, 7, 13, 0.00, '2023-11-20 09:02:56', '2023-11-20 09:02:56');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (428, 7, 14, 0.00, '2023-11-20 09:02:56', '2023-11-20 09:02:56');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (429, 7, 15, 0.00, '2023-11-20 09:02:56', '2023-11-20 09:02:56');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (430, 7, 16, 0.00, '2023-11-20 09:02:56', '2023-11-20 09:02:56');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (431, 7, 17, 0.00, '2023-11-20 09:02:56', '2023-11-20 09:02:56');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (432, 7, 18, 0.00, '2023-11-20 09:02:56', '2023-11-20 09:02:56');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (433, 7, 19, 0.00, '2023-11-20 09:02:56', '2023-11-20 09:02:56');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (434, 7, 20, 0.00, '2023-11-20 09:02:56', '2023-11-20 09:02:56');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (435, 7, 21, 0.00, '2023-11-20 09:02:56', '2023-11-20 09:02:56');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (436, 7, 22, 0.00, '2023-11-20 09:02:56', '2023-11-20 09:02:56');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (437, 7, 23, 0.00, '2023-11-20 09:02:56', '2023-11-20 09:02:56');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (438, 7, 24, 0.00, '2023-11-20 09:02:56', '2023-11-20 09:02:56');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (439, 7, 25, 0.00, '2023-11-20 09:02:56', '2023-11-20 09:02:56');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (440, 7, 26, 0.00, '2023-11-20 09:02:56', '2023-11-20 09:02:56');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (441, 7, 28, 0.00, '2023-11-20 09:02:56', '2023-11-20 09:02:56');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (442, 7, 29, 0.00, '2023-11-20 09:02:56', '2023-11-20 09:02:56');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (443, 7, 30, 0.00, '2023-11-20 09:02:56', '2023-11-20 09:02:56');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (444, 7, 31, 0.00, '2023-11-20 09:02:56', '2023-11-20 09:02:56');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (445, 7, 32, 0.00, '2023-11-20 09:02:56', '2023-11-20 09:02:56');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (446, 7, 33, 0.00, '2023-11-20 09:02:56', '2023-11-20 09:02:56');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (447, 7, 34, 0.00, '2023-11-20 09:02:56', '2023-11-20 09:02:56');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (448, 7, 35, 0.00, '2023-11-20 09:02:56', '2023-11-20 09:02:56');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (449, 7, 36, 0.00, '2023-11-20 09:02:56', '2023-11-20 09:02:56');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (450, 7, 37, 0.00, '2023-11-20 09:02:56', '2023-11-20 09:02:56');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (451, 7, 38, 0.00, '2023-11-20 09:02:56', '2023-11-20 09:02:56');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (452, 7, 39, 0.00, '2023-11-20 09:02:56', '2023-11-20 09:02:56');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (453, 7, 40, 0.00, '2023-11-20 09:02:56', '2023-11-20 09:02:56');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (454, 7, 41, 0.00, '2023-11-20 09:02:56', '2023-11-20 09:02:56');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (455, 7, 42, 0.00, '2023-11-20 09:02:56', '2023-11-20 09:02:56');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (456, 7, 43, 0.00, '2023-11-20 09:02:56', '2023-11-20 09:02:56');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (457, 7, 44, 0.00, '2023-11-20 09:02:56', '2023-11-20 09:02:56');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (458, 7, 45, 0.00, '2023-11-20 09:02:56', '2023-11-20 09:02:56');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (459, 7, 46, 0.00, '2023-11-20 09:02:56', '2023-11-20 09:02:56');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (460, 7, 47, 0.00, '2023-11-20 09:02:56', '2023-11-20 09:02:56');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (461, 7, 50, 0.00, '2023-11-20 09:02:56', '2023-11-20 09:02:56');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (462, 7, 52, 0.00, '2023-11-20 09:02:56', '2023-11-20 09:02:56');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (463, 7, 53, 0.00, '2023-11-20 09:02:56', '2023-11-20 09:02:56');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (464, 7, 54, 0.00, '2023-11-20 09:02:56', '2023-11-20 09:02:56');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (465, 7, 56, 0.00, '2023-11-20 09:02:56', '2023-11-20 09:02:56');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (466, 7, 58, 0.00, '2023-11-20 09:02:56', '2023-11-20 09:02:56');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (467, 7, 59, 0.00, '2023-11-20 09:02:56', '2023-11-20 09:02:56');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (468, 7, 60, 0.00, '2023-11-20 09:02:56', '2023-11-20 09:02:56');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (469, 8, 3, 5.00, '2023-11-20 09:03:45', '2023-11-20 09:03:45');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (470, 8, 4, 7.00, '2023-11-20 09:03:45', '2023-11-20 09:03:45');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (471, 8, 5, 10.00, '2023-11-20 09:03:45', '2023-11-20 09:40:13');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (472, 8, 6, 7.00, '2023-11-20 09:03:45', '2023-11-28 10:05:54');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (473, 8, 7, 11.00, '2023-11-20 09:03:45', '2023-11-28 10:05:54');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (474, 8, 8, 9.00, '2023-11-20 09:03:45', '2023-11-28 10:05:54');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (475, 8, 9, 7.00, '2023-11-20 09:03:45', '2023-11-28 10:05:54');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (476, 8, 10, 4.00, '2023-11-20 09:03:45', '2023-11-28 10:05:54');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (477, 8, 11, 5.00, '2023-11-20 09:03:45', '2023-11-28 10:05:54');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (478, 8, 12, 2.00, '2023-11-20 09:03:45', '2023-11-28 10:05:54');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (479, 8, 13, 4.00, '2023-11-20 09:03:45', '2023-11-28 10:05:54');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (480, 8, 14, 6.00, '2023-11-20 09:03:45', '2023-11-28 10:05:54');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (481, 8, 15, 7.00, '2023-11-20 09:03:45', '2023-11-28 10:05:54');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (482, 8, 16, 10.00, '2023-11-20 09:03:45', '2023-11-28 10:05:54');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (483, 8, 17, 2.00, '2023-11-20 09:03:45', '2023-11-28 10:05:54');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (484, 8, 18, 7.00, '2023-11-20 09:03:45', '2023-11-28 10:05:54');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (485, 8, 19, 6.00, '2023-11-20 09:03:45', '2023-11-28 10:05:54');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (486, 8, 20, 10.00, '2023-11-20 09:03:45', '2023-11-28 10:05:54');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (487, 8, 21, 7.00, '2023-11-20 09:03:45', '2023-11-28 10:05:54');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (488, 8, 22, 10.00, '2023-11-20 09:03:45', '2023-11-28 10:05:55');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (489, 8, 23, 5.00, '2023-11-20 09:03:45', '2023-11-28 10:05:55');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (490, 8, 24, 5.00, '2023-11-20 09:03:45', '2023-11-28 10:05:55');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (491, 8, 25, 10.00, '2023-11-20 09:03:45', '2023-11-28 10:05:55');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (492, 8, 26, 6.00, '2023-11-20 09:03:45', '2023-11-28 10:05:55');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (493, 8, 28, 8.00, '2023-11-20 09:03:45', '2023-11-28 10:05:55');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (494, 8, 29, 7.00, '2023-11-20 09:03:45', '2023-11-28 10:05:55');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (495, 8, 30, 9.00, '2023-11-20 09:03:45', '2023-11-28 10:05:55');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (496, 8, 31, 7.00, '2023-11-20 09:03:45', '2023-11-28 10:05:55');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (497, 8, 32, 5.00, '2023-11-20 09:03:45', '2023-11-28 10:05:55');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (498, 8, 33, 4.00, '2023-11-20 09:03:45', '2023-11-28 10:05:55');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (499, 8, 34, 7.00, '2023-11-20 09:03:45', '2023-11-28 10:05:55');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (500, 8, 35, 6.00, '2023-11-20 09:03:45', '2023-11-28 10:05:55');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (501, 8, 36, 7.00, '2023-11-20 09:03:45', '2023-11-28 10:05:55');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (502, 8, 37, 6.00, '2023-11-20 09:03:45', '2023-11-28 10:05:55');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (503, 8, 38, 7.00, '2023-11-20 09:03:45', '2023-11-28 10:05:55');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (504, 8, 39, 11.00, '2023-11-20 09:03:45', '2023-11-28 10:05:55');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (505, 8, 40, 14.00, '2023-11-20 09:03:45', '2023-11-28 10:05:55');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (506, 8, 41, 14.00, '2023-11-20 09:03:45', '2023-11-28 10:05:55');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (507, 8, 42, 4.00, '2023-11-20 09:03:45', '2023-11-28 10:05:55');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (508, 8, 43, 6.00, '2023-11-20 09:03:45', '2023-11-28 10:05:55');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (509, 8, 44, 10.00, '2023-11-20 09:03:45', '2023-11-28 10:05:55');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (510, 8, 45, 8.00, '2023-11-20 09:03:45', '2023-11-28 10:05:55');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (511, 8, 46, 10.00, '2023-11-20 09:03:45', '2023-11-28 10:05:55');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (512, 8, 47, 8.00, '2023-11-20 09:03:45', '2023-11-28 10:05:55');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (513, 8, 50, 8.00, '2023-11-20 09:03:45', '2023-11-28 10:05:55');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (514, 8, 52, 6.00, '2023-11-20 09:03:45', '2023-11-28 10:05:55');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (515, 8, 53, 14.00, '2023-11-20 09:03:45', '2023-11-28 10:05:55');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (516, 8, 54, 9.00, '2023-11-20 09:03:45', '2023-11-28 10:05:55');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (517, 8, 56, 9.00, '2023-11-20 09:03:45', '2023-11-28 10:05:55');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (518, 8, 58, 8.00, '2023-11-20 09:03:45', '2023-11-28 10:05:55');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (519, 8, 59, 9.00, '2023-11-20 09:03:45', '2023-11-28 10:05:55');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (520, 8, 60, 7.00, '2023-11-20 09:03:45', '2023-11-28 10:05:55');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (521, 11, 3, 7.00, '2023-11-20 09:04:00', '2023-11-20 09:04:00');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (522, 11, 4, 3.00, '2023-11-20 09:04:00', '2023-11-20 09:04:00');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (523, 11, 5, 0.00, '2023-11-20 09:04:00', '2023-11-20 09:04:00');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (524, 11, 6, 0.00, '2023-11-20 09:04:00', '2023-11-20 09:04:00');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (525, 11, 7, 1.00, '2023-11-20 09:04:00', '2023-11-28 14:18:06');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (526, 11, 8, 3.00, '2023-11-20 09:04:00', '2023-11-28 14:18:06');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (527, 11, 9, 0.00, '2023-11-20 09:04:00', '2023-11-20 09:04:00');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (528, 11, 10, 1.00, '2023-11-20 09:04:00', '2023-11-28 14:18:06');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (529, 11, 11, 2.00, '2023-11-20 09:04:00', '2023-11-28 14:18:06');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (530, 11, 12, 1.00, '2023-11-20 09:04:00', '2023-11-28 14:18:06');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (531, 11, 13, 0.00, '2023-11-20 09:04:00', '2023-11-20 09:04:00');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (532, 11, 14, 2.00, '2023-11-20 09:04:00', '2023-11-28 14:18:06');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (533, 11, 15, 2.00, '2023-11-20 09:04:00', '2023-11-28 14:18:06');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (534, 11, 16, 0.00, '2023-11-20 09:04:00', '2023-11-20 09:04:00');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (535, 11, 17, 0.00, '2023-11-20 09:04:00', '2023-11-20 09:04:00');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (536, 11, 18, 3.00, '2023-11-20 09:04:00', '2023-11-28 14:18:06');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (537, 11, 19, 11.00, '2023-11-20 09:04:00', '2023-11-28 14:18:06');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (538, 11, 20, 4.00, '2023-11-20 09:04:00', '2023-11-28 14:18:06');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (539, 11, 21, 1.00, '2023-11-20 09:04:00', '2023-11-28 14:18:06');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (540, 11, 22, 1.00, '2023-11-20 09:04:00', '2023-11-28 14:18:06');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (541, 11, 23, 3.00, '2023-11-20 09:04:00', '2023-11-28 14:18:06');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (542, 11, 24, 3.00, '2023-11-20 09:04:00', '2023-11-28 14:18:06');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (543, 11, 25, 0.00, '2023-11-20 09:04:00', '2023-11-20 09:04:00');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (544, 11, 26, 0.00, '2023-11-20 09:04:00', '2023-11-20 09:04:00');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (545, 11, 28, 2.00, '2023-11-20 09:04:00', '2023-11-28 14:18:06');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (546, 11, 29, 0.00, '2023-11-20 09:04:00', '2023-11-20 09:04:00');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (547, 11, 30, 0.00, '2023-11-20 09:04:00', '2023-11-20 09:04:00');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (548, 11, 31, 1.00, '2023-11-20 09:04:00', '2023-11-28 14:18:06');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (549, 11, 32, 0.00, '2023-11-20 09:04:00', '2023-11-20 09:04:00');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (550, 11, 33, 0.00, '2023-11-20 09:04:00', '2023-11-20 09:04:00');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (551, 11, 34, 0.00, '2023-11-20 09:04:00', '2023-11-20 09:04:00');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (552, 11, 35, 0.00, '2023-11-20 09:04:00', '2023-11-20 09:04:00');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (553, 11, 36, 7.00, '2023-11-20 09:04:00', '2023-11-28 14:18:06');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (554, 11, 37, 6.00, '2023-11-20 09:04:00', '2023-11-28 14:18:06');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (555, 11, 38, 0.00, '2023-11-20 09:04:00', '2023-11-20 09:04:00');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (556, 11, 39, 1.00, '2023-11-20 09:04:00', '2023-11-28 14:18:06');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (557, 11, 40, 0.00, '2023-11-20 09:04:00', '2023-11-20 09:04:00');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (558, 11, 41, 2.00, '2023-11-20 09:04:00', '2023-11-28 14:18:06');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (559, 11, 42, 1.00, '2023-11-20 09:04:00', '2023-11-28 14:18:06');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (560, 11, 43, 6.00, '2023-11-20 09:04:00', '2023-11-28 14:18:06');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (561, 11, 44, 1.00, '2023-11-20 09:04:00', '2023-11-28 14:18:06');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (562, 11, 45, 0.00, '2023-11-20 09:04:00', '2023-11-20 09:04:00');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (563, 11, 46, 2.00, '2023-11-20 09:04:00', '2023-11-28 14:18:06');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (564, 11, 47, 2.00, '2023-11-20 09:04:00', '2023-11-28 14:18:06');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (565, 11, 50, 0.00, '2023-11-20 09:04:00', '2023-11-20 09:04:00');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (566, 11, 52, 0.00, '2023-11-20 09:04:00', '2023-11-20 09:04:00');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (567, 11, 53, 0.00, '2023-11-20 09:04:00', '2023-11-20 09:04:00');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (568, 11, 54, 2.00, '2023-11-20 09:04:00', '2023-11-28 14:18:06');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (569, 11, 56, 3.00, '2023-11-20 09:04:00', '2023-11-28 14:18:06');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (570, 11, 58, 3.00, '2023-11-20 09:04:00', '2023-11-28 14:18:06');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (571, 11, 59, 1.00, '2023-11-20 09:04:00', '2023-11-28 14:18:06');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (572, 11, 60, 1.00, '2023-11-20 09:04:00', '2023-11-28 14:18:06');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (573, 9, 3, 342.00, '2023-11-20 09:04:10', '2023-11-20 09:10:29');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (574, 9, 4, 598.00, '2023-11-20 09:04:10', '2023-11-20 09:10:29');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (575, 9, 5, 100.00, '2023-11-20 09:04:10', '2023-11-20 09:40:50');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (576, 9, 6, 106.00, '2023-11-20 09:04:10', '2023-11-28 10:27:04');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (577, 9, 7, 301.00, '2023-11-20 09:04:10', '2023-11-28 10:27:04');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (578, 9, 8, 526.00, '2023-11-20 09:04:10', '2023-11-28 10:27:04');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (579, 9, 9, 106.00, '2023-11-20 09:04:10', '2023-11-28 10:27:04');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (580, 9, 10, 342.00, '2023-11-20 09:04:10', '2023-11-28 10:27:04');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (581, 9, 11, 238.00, '2023-11-20 09:04:10', '2023-11-28 10:27:04');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (582, 9, 12, 303.00, '2023-11-20 09:04:10', '2023-11-28 10:27:04');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (583, 9, 13, 97.00, '2023-11-20 09:04:10', '2023-11-28 10:27:04');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (584, 9, 14, 279.00, '2023-11-20 09:04:10', '2023-11-28 10:27:04');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (585, 9, 15, 168.00, '2023-11-20 09:04:10', '2023-11-28 10:27:04');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (586, 9, 16, 615.00, '2023-11-20 09:04:10', '2023-11-28 10:27:04');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (587, 9, 17, 371.00, '2023-11-20 09:04:10', '2023-11-28 10:27:04');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (588, 9, 18, 1612.00, '2023-11-20 09:04:10', '2023-11-28 10:27:04');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (589, 9, 19, 1136.00, '2023-11-20 09:04:10', '2023-11-28 10:27:04');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (590, 9, 20, 403.00, '2023-11-20 09:04:10', '2023-11-28 10:27:04');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (591, 9, 21, 466.00, '2023-11-20 09:04:10', '2023-11-28 10:27:04');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (592, 9, 22, 326.00, '2023-11-20 09:04:10', '2023-11-28 10:27:04');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (593, 9, 23, 453.00, '2023-11-20 09:04:10', '2023-11-28 10:27:04');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (594, 9, 24, 874.00, '2023-11-20 09:04:10', '2023-11-28 10:27:04');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (595, 9, 25, 730.00, '2023-11-20 09:04:10', '2023-11-28 10:27:04');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (596, 9, 26, 529.00, '2023-11-20 09:04:10', '2023-11-28 10:27:04');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (597, 9, 28, 1010.00, '2023-11-20 09:04:10', '2023-11-28 10:27:04');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (598, 9, 29, 457.00, '2023-11-20 09:04:10', '2023-11-28 10:27:04');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (599, 9, 30, 370.00, '2023-11-20 09:04:10', '2023-11-28 10:27:04');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (600, 9, 31, 181.00, '2023-11-20 09:04:10', '2023-11-28 10:27:04');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (601, 9, 32, 329.00, '2023-11-20 09:04:10', '2023-11-28 10:27:04');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (602, 9, 33, 449.00, '2023-11-20 09:04:10', '2023-11-28 10:27:04');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (603, 9, 34, 354.00, '2023-11-20 09:04:10', '2023-11-28 10:27:04');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (604, 9, 35, 396.00, '2023-11-20 09:04:10', '2023-11-28 10:27:04');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (605, 9, 36, 616.00, '2023-11-20 09:04:10', '2023-11-28 10:27:04');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (606, 9, 37, 527.00, '2023-11-20 09:04:10', '2023-11-28 10:27:04');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (607, 9, 38, 237.00, '2023-11-20 09:04:10', '2023-11-28 10:27:04');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (608, 9, 39, 191.00, '2023-11-20 09:04:10', '2023-11-28 10:27:04');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (609, 9, 40, 554.00, '2023-11-20 09:04:10', '2023-11-28 10:27:04');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (610, 9, 41, 269.00, '2023-11-20 09:04:10', '2023-11-28 10:27:04');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (611, 9, 42, 257.00, '2023-11-20 09:04:10', '2023-11-28 10:27:04');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (612, 9, 43, 1232.00, '2023-11-20 09:04:10', '2023-11-28 10:27:04');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (613, 9, 44, 1015.00, '2023-11-20 09:04:10', '2023-11-28 10:27:04');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (614, 9, 45, 357.00, '2023-11-20 09:04:10', '2023-11-28 10:27:04');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (615, 9, 46, 304.00, '2023-11-20 09:04:10', '2023-11-28 10:27:04');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (616, 9, 47, 1079.00, '2023-11-20 09:04:10', '2023-11-28 10:27:04');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (617, 9, 50, 149.00, '2023-11-20 09:04:10', '2023-11-28 10:27:04');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (618, 9, 52, 512.00, '2023-11-20 09:04:10', '2023-11-28 10:27:04');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (619, 9, 53, 753.00, '2023-11-20 09:04:10', '2023-11-28 10:27:04');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (620, 9, 54, 1367.00, '2023-11-20 09:04:10', '2023-11-28 10:27:04');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (621, 9, 56, 525.00, '2023-11-20 09:04:10', '2023-11-28 10:27:04');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (622, 9, 58, 1064.00, '2023-11-20 09:04:10', '2023-11-28 10:27:04');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (623, 9, 59, 1357.00, '2023-11-20 09:04:10', '2023-11-28 10:27:04');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (624, 9, 60, 598.00, '2023-11-20 09:04:10', '2023-11-28 10:27:04');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (625, 10, 3, 1.00, '2023-11-20 09:04:24', '2023-11-20 09:04:55');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (626, 10, 4, 36.00, '2023-11-20 09:04:24', '2023-11-20 09:04:55');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (627, 10, 5, 24.00, '2023-11-20 09:04:24', '2023-11-20 09:41:41');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (628, 10, 6, 7.00, '2023-11-20 09:04:24', '2023-11-28 10:45:13');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (629, 10, 7, 25.00, '2023-11-20 09:04:24', '2023-11-28 10:45:13');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (630, 10, 8, 14.00, '2023-11-20 09:04:24', '2023-11-28 10:45:13');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (631, 10, 9, 13.00, '2023-11-20 09:04:24', '2023-11-28 10:45:13');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (632, 10, 10, 27.00, '2023-11-20 09:04:24', '2023-11-28 10:45:13');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (633, 10, 11, 19.00, '2023-11-20 09:04:24', '2023-11-28 10:45:13');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (634, 10, 12, 74.00, '2023-11-20 09:04:24', '2023-11-28 10:45:13');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (635, 10, 13, 58.00, '2023-11-20 09:04:24', '2023-11-28 10:45:13');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (636, 10, 14, 15.00, '2023-11-20 09:04:24', '2023-11-28 10:45:13');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (637, 10, 15, 16.00, '2023-11-20 09:04:24', '2023-11-28 10:45:13');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (638, 10, 16, 27.00, '2023-11-20 09:04:24', '2023-11-28 10:45:13');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (639, 10, 17, 9.00, '2023-11-20 09:04:24', '2023-11-28 10:45:13');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (640, 10, 18, 66.00, '2023-11-20 09:04:24', '2023-11-28 10:45:13');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (641, 10, 19, 26.00, '2023-11-20 09:04:24', '2023-11-28 10:45:13');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (642, 10, 20, 27.00, '2023-11-20 09:04:24', '2023-11-28 10:45:13');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (643, 10, 21, 18.00, '2023-11-20 09:04:24', '2023-11-28 10:45:13');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (644, 10, 22, 30.00, '2023-11-20 09:04:24', '2023-11-28 10:45:13');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (645, 10, 23, 2.00, '2023-11-20 09:04:24', '2023-11-28 10:45:13');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (646, 10, 24, 6.00, '2023-11-20 09:04:24', '2023-11-28 10:45:13');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (647, 10, 25, 20.00, '2023-11-20 09:04:24', '2023-11-28 10:45:13');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (648, 10, 26, 61.00, '2023-11-20 09:04:24', '2023-11-28 10:45:13');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (649, 10, 28, 5.00, '2023-11-20 09:04:24', '2023-11-28 10:45:13');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (650, 10, 29, 14.00, '2023-11-20 09:04:24', '2023-11-28 10:45:13');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (651, 10, 30, 32.00, '2023-11-20 09:04:24', '2023-11-28 10:45:13');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (652, 10, 31, 26.00, '2023-11-20 09:04:24', '2023-11-28 10:45:13');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (653, 10, 32, 17.00, '2023-11-20 09:04:24', '2023-11-28 10:45:13');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (654, 10, 33, 1.00, '2023-11-20 09:04:24', '2023-11-28 10:45:13');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (655, 10, 34, 4.00, '2023-11-20 09:04:24', '2023-11-28 10:45:13');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (656, 10, 35, 20.00, '2023-11-20 09:04:24', '2023-11-28 10:45:13');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (657, 10, 36, 21.00, '2023-11-20 09:04:24', '2023-11-28 10:45:13');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (658, 10, 37, 19.00, '2023-11-20 09:04:24', '2023-11-28 10:45:13');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (659, 10, 38, 8.00, '2023-11-20 09:04:24', '2023-11-28 10:45:13');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (660, 10, 39, 18.00, '2023-11-20 09:04:24', '2023-11-28 10:45:13');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (661, 10, 40, 13.00, '2023-11-20 09:04:24', '2023-11-28 10:45:13');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (662, 10, 41, 5.00, '2023-11-20 09:04:24', '2023-11-28 10:45:13');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (663, 10, 42, 16.00, '2023-11-20 09:04:24', '2023-11-28 10:45:13');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (664, 10, 43, 25.00, '2023-11-20 09:04:24', '2023-11-28 10:45:13');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (665, 10, 44, 20.00, '2023-11-20 09:04:24', '2023-11-28 10:45:13');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (666, 10, 45, 144.00, '2023-11-20 09:04:24', '2023-11-28 10:45:13');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (667, 10, 46, 11.00, '2023-11-20 09:04:24', '2023-11-28 10:45:13');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (668, 10, 47, 16.00, '2023-11-20 09:04:24', '2023-11-28 10:45:13');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (669, 10, 50, 16.00, '2023-11-20 09:04:24', '2023-11-28 10:45:13');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (670, 10, 52, 78.00, '2023-11-20 09:04:24', '2023-11-28 10:45:13');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (671, 10, 53, 17.00, '2023-11-20 09:04:24', '2023-11-28 10:45:13');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (672, 10, 54, 16.00, '2023-11-20 09:04:24', '2023-11-28 10:45:13');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (673, 10, 56, 11.00, '2023-11-20 09:04:24', '2023-11-28 10:45:13');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (674, 10, 58, 13.00, '2023-11-20 09:04:24', '2023-11-28 10:45:13');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (675, 10, 59, 3.00, '2023-11-20 09:04:24', '2023-11-28 10:45:13');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (676, 10, 60, 36.00, '2023-11-20 09:04:24', '2023-11-28 10:45:13');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (677, 12, 3, 5.00, '2023-11-20 09:08:00', '2023-11-20 09:08:00');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (678, 12, 4, 8.00, '2023-11-20 09:08:00', '2023-11-20 09:08:34');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (679, 12, 5, 6.00, '2023-11-20 09:08:00', '2023-11-20 09:43:02');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (680, 12, 6, 4.00, '2023-11-20 09:08:00', '2023-12-08 10:05:08');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (681, 12, 7, 5.00, '2023-11-20 09:08:00', '2023-12-08 10:05:08');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (682, 12, 8, 6.00, '2023-11-20 09:08:00', '2023-12-08 10:05:08');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (683, 12, 9, 2.00, '2023-11-20 09:08:00', '2023-12-08 10:05:08');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (684, 12, 10, 12.00, '2023-11-20 09:08:00', '2023-12-08 10:05:08');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (685, 12, 11, 3.00, '2023-11-20 09:08:00', '2023-12-08 10:05:08');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (686, 12, 12, 6.00, '2023-11-20 09:08:00', '2023-12-08 10:05:08');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (687, 12, 13, 4.00, '2023-11-20 09:08:00', '2023-12-08 10:05:08');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (688, 12, 14, 5.00, '2023-11-20 09:08:00', '2023-12-08 10:05:08');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (689, 12, 15, 1.00, '2023-11-20 09:08:00', '2023-12-08 10:05:08');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (690, 12, 16, 4.00, '2023-11-20 09:08:00', '2023-12-08 10:05:08');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (691, 12, 17, 2.00, '2023-11-20 09:08:00', '2023-12-08 10:05:08');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (692, 12, 18, 9.00, '2023-11-20 09:08:00', '2023-12-08 10:05:08');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (693, 12, 19, 18.00, '2023-11-20 09:08:00', '2023-12-08 10:05:08');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (694, 12, 20, 8.00, '2023-11-20 09:08:00', '2023-12-08 10:05:08');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (695, 12, 21, 14.00, '2023-11-20 09:08:00', '2023-12-08 10:05:08');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (696, 12, 22, 12.00, '2023-11-20 09:08:00', '2023-12-08 10:05:08');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (697, 12, 23, 3.00, '2023-11-20 09:08:00', '2023-12-08 10:05:08');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (698, 12, 24, 6.00, '2023-11-20 09:08:00', '2023-12-08 10:05:08');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (699, 12, 25, 4.00, '2023-11-20 09:08:00', '2023-12-08 10:05:08');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (700, 12, 26, 2.00, '2023-11-20 09:08:00', '2023-12-08 10:05:08');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (701, 12, 28, 4.00, '2023-11-20 09:08:00', '2023-12-08 10:05:08');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (702, 12, 29, 11.00, '2023-11-20 09:08:00', '2023-12-08 10:05:08');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (703, 12, 30, 4.00, '2023-11-20 09:08:00', '2023-12-08 10:05:08');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (704, 12, 31, 2.00, '2023-11-20 09:08:00', '2023-12-08 10:05:08');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (705, 12, 32, 4.00, '2023-11-20 09:08:00', '2023-12-08 10:05:08');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (706, 12, 33, 6.00, '2023-11-20 09:08:00', '2023-12-08 10:05:08');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (707, 12, 34, 3.00, '2023-11-20 09:08:00', '2023-12-08 10:05:08');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (708, 12, 35, 2.00, '2023-11-20 09:08:00', '2023-12-08 10:05:08');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (709, 12, 36, 11.00, '2023-11-20 09:08:00', '2023-12-08 10:05:08');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (710, 12, 37, 6.00, '2023-11-20 09:08:00', '2023-12-08 10:05:08');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (711, 12, 38, 2.00, '2023-11-20 09:08:00', '2023-12-08 10:05:08');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (712, 12, 39, 9.00, '2023-11-20 09:08:00', '2023-12-08 10:05:08');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (713, 12, 40, 6.00, '2023-11-20 09:08:00', '2023-12-08 10:05:08');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (714, 12, 41, 5.00, '2023-11-20 09:08:00', '2023-12-08 10:05:08');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (715, 12, 42, 3.00, '2023-11-20 09:08:00', '2023-12-08 10:05:08');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (716, 12, 43, 9.00, '2023-11-20 09:08:00', '2023-12-08 10:05:08');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (717, 12, 44, 9.00, '2023-11-20 09:08:00', '2023-12-08 10:05:08');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (718, 12, 45, 6.00, '2023-11-20 09:08:00', '2023-12-08 10:05:08');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (719, 12, 46, 5.00, '2023-11-20 09:08:00', '2023-12-08 10:05:08');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (720, 12, 47, 8.00, '2023-11-20 09:08:00', '2023-12-08 10:05:08');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (721, 12, 50, 2.00, '2023-11-20 09:08:00', '2023-12-08 10:05:08');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (722, 12, 52, 5.00, '2023-11-20 09:08:00', '2023-12-08 10:05:08');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (723, 12, 53, 6.00, '2023-11-20 09:08:00', '2023-12-08 10:05:08');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (724, 12, 54, 11.00, '2023-11-20 09:08:00', '2023-12-08 10:05:08');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (725, 12, 56, 7.00, '2023-11-20 09:08:00', '2023-12-08 10:05:08');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (726, 12, 58, 14.00, '2023-11-20 09:08:00', '2023-12-08 10:05:08');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (727, 12, 59, 10.00, '2023-11-20 09:08:00', '2023-12-08 10:05:08');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (728, 12, 60, 8.00, '2023-11-20 09:08:00', '2023-12-08 10:05:08');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (729, 13, 3, 2272.73, '2023-11-20 09:12:06', '2023-12-08 09:31:40');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (730, 13, 4, 1958.47, '2023-11-20 09:12:06', '2023-12-08 09:31:40');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (731, 13, 5, 21368.24, '2023-11-20 09:12:06', '2023-12-08 09:31:40');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (732, 13, 6, 30226.36, '2023-11-20 09:12:06', '2023-12-08 09:31:40');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (733, 13, 7, 12640.18, '2023-11-20 09:12:06', '2023-12-08 09:31:40');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (734, 13, 8, 12031.31, '2023-11-20 09:12:06', '2023-12-08 09:31:40');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (735, 13, 9, 40015.31, '2023-11-20 09:12:06', '2023-12-08 09:31:40');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (736, 13, 10, 4377.60, '2023-11-20 09:12:06', '2023-12-08 09:31:40');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (737, 13, 11, 23731.29, '2023-11-20 09:12:06', '2023-12-08 09:31:40');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (738, 13, 12, 1269.70, '2023-11-20 09:12:06', '2023-12-08 09:31:40');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (739, 13, 13, 20939.67, '2023-11-20 09:12:06', '2023-12-08 09:31:40');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (740, 13, 14, 24991.96, '2023-11-20 09:12:06', '2023-12-08 09:31:40');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (741, 13, 15, 10960.00, '2023-11-20 09:12:06', '2023-12-08 09:31:40');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (742, 13, 16, 11434.21, '2023-11-20 09:12:06', '2023-12-08 09:31:40');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (743, 13, 17, 11650.10, '2023-11-20 09:12:06', '2023-12-08 09:31:40');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (744, 13, 18, 5486.53, '2023-11-20 09:12:06', '2023-12-08 09:31:40');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (745, 13, 19, 16066.48, '2023-11-20 09:12:06', '2023-12-08 09:31:40');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (746, 13, 20, 2955.66, '2023-11-20 09:12:06', '2023-12-08 09:31:40');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (747, 13, 21, 5524.80, '2023-11-20 09:12:06', '2023-12-08 09:31:40');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (748, 13, 22, 19467.90, '2023-11-20 09:12:06', '2023-12-08 09:31:40');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (749, 13, 23, 6781.66, '2023-11-20 09:12:06', '2023-12-08 09:31:40');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (750, 13, 24, 11170.70, '2023-11-20 09:12:06', '2023-12-08 09:31:40');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (751, 13, 25, 10681.20, '2023-11-20 09:12:06', '2023-12-08 09:31:40');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (752, 13, 26, 19572.40, '2023-11-20 09:12:06', '2023-12-08 09:31:40');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (753, 13, 28, 6068.58, '2023-11-20 09:12:06', '2023-12-08 09:31:40');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (754, 13, 29, 11435.20, '2023-11-20 09:12:06', '2023-12-08 09:31:40');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (755, 13, 30, 19080.40, '2023-11-20 09:12:06', '2023-12-08 09:31:40');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (756, 13, 31, 12045.26, '2023-11-20 09:12:06', '2023-12-08 09:31:40');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (757, 13, 32, 13186.09, '2023-11-20 09:12:06', '2023-12-08 09:31:40');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (758, 13, 33, 39575.76, '2023-11-20 09:12:06', '2023-12-08 09:35:56');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (759, 13, 34, 28213.33, '2023-11-20 09:12:06', '2023-12-08 09:35:56');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (760, 13, 35, 14696.08, '2023-11-20 09:12:06', '2023-12-08 09:35:56');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (761, 13, 36, 13721.92, '2023-11-20 09:12:06', '2023-12-08 09:38:10');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (762, 13, 37, 12116.97, '2023-11-20 09:12:06', '2023-12-08 09:38:10');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (763, 13, 38, 16576.27, '2023-11-20 09:12:06', '2023-12-08 09:38:10');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (764, 13, 39, 16917.51, '2023-11-20 09:12:06', '2023-12-08 09:38:10');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (765, 13, 40, 6272.33, '2023-11-20 09:12:06', '2023-12-08 09:38:10');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (766, 13, 41, 8056.57, '2023-11-20 09:12:06', '2023-12-08 09:38:10');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (767, 13, 42, 9684.37, '2023-11-20 09:12:06', '2023-12-08 09:38:10');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (768, 13, 43, 13104.97, '2023-11-20 09:12:06', '2023-12-08 09:38:10');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (769, 13, 44, 2312.10, '2023-11-20 09:12:06', '2023-12-08 09:38:10');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (770, 13, 45, 11042.00, '2023-11-20 09:12:06', '2023-12-08 09:38:10');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (771, 13, 46, 10610.99, '2023-11-20 09:12:06', '2023-12-08 09:38:10');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (772, 13, 47, 7369.43, '2023-11-20 09:12:06', '2023-12-08 09:38:10');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (773, 13, 50, 14613.13, '2023-11-20 09:12:06', '2023-12-08 09:38:10');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (774, 13, 52, 7336.56, '2023-11-20 09:12:06', '2023-12-08 09:38:10');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (775, 13, 53, 6588.79, '2023-11-20 09:12:06', '2023-12-08 09:38:10');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (776, 13, 54, 4949.57, '2023-11-20 09:12:06', '2023-12-08 09:38:10');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (777, 13, 56, 3320.61, '2023-11-20 09:12:06', '2023-12-08 09:38:10');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (778, 13, 58, 8774.61, '2023-11-20 09:12:06', '2023-12-08 09:38:10');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (779, 13, 59, 10123.65, '2023-11-20 09:12:06', '2023-12-08 09:38:10');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (780, 13, 60, 18325.40, '2023-11-20 09:12:06', '2023-12-08 09:38:10');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (781, 14, 3, 2.00, '2023-11-20 09:15:29', '2023-11-20 09:15:29');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (782, 14, 4, 33.00, '2023-11-20 09:15:29', '2023-11-20 09:15:29');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (783, 14, 5, 51.00, '2023-11-20 09:15:29', '2023-11-20 09:49:52');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (784, 14, 6, 1.00, '2023-11-20 09:15:29', '2023-12-08 10:18:20');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (785, 14, 7, 61.00, '2023-11-20 09:15:29', '2023-12-08 10:18:20');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (786, 14, 8, 19.00, '2023-11-20 09:15:29', '2023-12-08 10:18:20');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (787, 14, 9, 20.00, '2023-11-20 09:15:29', '2023-12-08 10:18:20');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (788, 14, 10, 30.00, '2023-11-20 09:15:29', '2023-12-08 10:18:20');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (789, 14, 11, 12.00, '2023-11-20 09:15:29', '2023-12-08 10:18:20');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (790, 14, 12, 51.00, '2023-11-20 09:15:29', '2023-12-08 10:18:20');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (791, 14, 13, 94.00, '2023-11-20 09:15:29', '2023-12-08 10:18:20');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (792, 14, 14, 18.00, '2023-11-20 09:15:29', '2023-12-08 10:18:20');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (793, 14, 15, 18.00, '2023-11-20 09:15:29', '2023-12-08 10:18:20');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (794, 14, 16, 43.00, '2023-11-20 09:15:29', '2023-12-08 10:18:20');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (795, 14, 17, 1.00, '2023-11-20 09:15:29', '2023-12-08 10:18:20');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (796, 14, 18, 65.00, '2023-11-20 09:15:29', '2023-12-08 10:18:20');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (797, 14, 19, 17.00, '2023-11-20 09:15:29', '2023-12-08 10:18:20');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (798, 14, 20, 76.00, '2023-11-20 09:15:29', '2023-12-08 10:18:20');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (799, 14, 21, 16.00, '2023-11-20 09:15:29', '2023-12-08 10:18:20');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (800, 14, 22, 25.00, '2023-11-20 09:15:29', '2023-12-08 10:18:20');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (801, 14, 23, 2.00, '2023-11-20 09:15:29', '2023-12-08 10:18:20');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (802, 14, 24, 6.00, '2023-11-20 09:15:29', '2023-12-08 10:18:20');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (803, 14, 25, 21.00, '2023-11-20 09:15:29', '2023-12-08 10:18:20');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (804, 14, 26, 65.00, '2023-11-20 09:15:29', '2023-12-08 10:18:20');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (805, 14, 28, 11.00, '2023-11-20 09:15:29', '2023-12-08 10:18:20');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (806, 14, 29, 19.00, '2023-11-20 09:15:29', '2023-12-08 10:18:20');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (807, 14, 30, 69.00, '2023-11-20 09:15:29', '2023-12-08 10:18:20');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (808, 14, 31, 11.00, '2023-11-20 09:15:29', '2023-12-08 10:18:20');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (809, 14, 32, 30.00, '2023-11-20 09:15:29', '2023-12-08 10:18:20');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (810, 14, 33, 4.00, '2023-11-20 09:15:29', '2023-12-08 10:18:20');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (811, 14, 34, 6.00, '2023-11-20 09:15:29', '2023-12-08 10:18:20');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (812, 14, 35, 11.00, '2023-11-20 09:15:29', '2023-12-08 10:18:20');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (813, 14, 36, 21.00, '2023-11-20 09:15:29', '2023-12-08 10:18:20');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (814, 14, 37, 19.00, '2023-11-20 09:15:29', '2023-12-08 10:18:20');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (815, 14, 38, 12.00, '2023-11-20 09:15:29', '2023-12-08 10:18:20');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (816, 14, 39, 14.00, '2023-11-20 09:15:29', '2023-12-08 10:18:20');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (817, 14, 40, 9.00, '2023-11-20 09:15:29', '2023-12-08 10:18:20');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (818, 14, 41, 11.00, '2023-11-20 09:15:29', '2023-12-08 10:18:20');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (819, 14, 42, 23.00, '2023-11-20 09:15:29', '2023-12-08 10:18:20');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (820, 14, 43, 31.00, '2023-11-20 09:15:29', '2023-12-08 10:18:20');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (821, 14, 44, 29.00, '2023-11-20 09:15:29', '2023-12-08 10:18:20');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (822, 14, 45, 180.00, '2023-11-20 09:15:29', '2023-12-08 10:18:20');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (823, 14, 46, 9.00, '2023-11-20 09:15:29', '2023-12-08 10:18:20');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (824, 14, 47, 17.00, '2023-11-20 09:15:29', '2023-12-08 10:18:20');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (825, 14, 50, 22.00, '2023-11-20 09:15:29', '2023-12-08 10:18:20');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (826, 14, 52, 98.00, '2023-11-20 09:15:29', '2023-12-08 10:18:20');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (827, 14, 53, 39.00, '2023-11-20 09:15:29', '2023-12-08 10:18:20');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (828, 14, 54, 21.00, '2023-11-20 09:15:29', '2023-12-08 10:18:20');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (829, 14, 56, 8.00, '2023-11-20 09:15:29', '2023-12-08 10:18:20');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (830, 14, 58, 17.00, '2023-11-20 09:15:29', '2023-12-08 10:18:20');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (831, 14, 59, 3.00, '2023-11-20 09:15:30', '2023-12-08 10:18:20');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (832, 14, 60, 148.00, '2023-11-20 09:15:30', '2023-12-08 10:18:21');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (833, 15, 3, 2.00, '2023-11-20 09:18:54', '2023-11-20 09:18:54');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (834, 15, 4, 15.00, '2023-11-20 09:18:54', '2023-11-20 09:18:54');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (835, 15, 5, 8.00, '2023-11-20 09:18:54', '2023-11-20 09:50:15');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (836, 15, 6, 0.00, '2023-11-20 09:18:54', '2023-11-20 09:18:54');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (837, 15, 7, 14.00, '2023-11-20 09:18:54', '2023-12-08 09:49:32');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (838, 15, 8, 6.00, '2023-11-20 09:18:54', '2023-12-08 09:49:32');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (839, 15, 9, 25.00, '2023-11-20 09:18:54', '2023-12-08 09:49:32');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (840, 15, 10, 24.00, '2023-11-20 09:18:54', '2023-12-08 09:49:32');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (841, 15, 11, 4.00, '2023-11-20 09:18:54', '2023-12-08 09:49:32');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (842, 15, 12, 15.00, '2023-11-20 09:18:54', '2023-12-08 09:49:32');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (843, 15, 13, 49.00, '2023-11-20 09:18:54', '2023-12-08 09:49:32');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (844, 15, 14, 16.00, '2023-11-20 09:18:54', '2023-12-08 09:49:32');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (845, 15, 15, 3.00, '2023-11-20 09:18:54', '2023-12-08 09:49:32');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (846, 15, 16, 32.00, '2023-11-20 09:18:54', '2023-12-08 09:49:32');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (847, 15, 17, 0.00, '2023-11-20 09:18:54', '2023-11-20 09:18:54');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (848, 15, 18, 14.00, '2023-11-20 09:18:54', '2023-12-08 09:49:32');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (849, 15, 19, 15.00, '2023-11-20 09:18:54', '2023-12-08 09:49:32');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (850, 15, 20, 10.00, '2023-11-20 09:18:54', '2023-12-08 09:49:32');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (851, 15, 21, 12.00, '2023-11-20 09:18:54', '2023-12-08 09:49:32');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (852, 15, 22, 4.00, '2023-11-20 09:18:54', '2023-12-08 09:49:32');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (853, 15, 23, 1.00, '2023-11-20 09:18:54', '2023-12-08 09:49:32');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (854, 15, 24, 3.00, '2023-11-20 09:18:54', '2023-12-08 09:49:32');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (855, 15, 25, 14.00, '2023-11-20 09:18:54', '2023-12-08 09:49:32');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (856, 15, 26, 46.00, '2023-11-20 09:18:54', '2023-12-08 09:49:32');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (857, 15, 28, 12.00, '2023-11-20 09:18:54', '2023-12-08 09:49:32');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (858, 15, 29, 2.00, '2023-11-20 09:18:54', '2023-12-08 09:49:32');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (859, 15, 30, 52.00, '2023-11-20 09:18:54', '2023-12-08 09:49:32');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (860, 15, 31, 2.00, '2023-11-20 09:18:54', '2023-12-08 09:49:32');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (861, 15, 32, 10.00, '2023-11-20 09:18:54', '2023-12-08 09:49:32');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (862, 15, 33, 6.00, '2023-11-20 09:18:54', '2023-12-08 09:49:32');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (863, 15, 34, 7.00, '2023-11-20 09:18:54', '2023-12-08 09:49:32');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (864, 15, 35, 5.00, '2023-11-20 09:18:54', '2023-12-08 09:49:32');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (865, 15, 36, 3.00, '2023-11-20 09:18:54', '2023-12-08 09:49:32');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (866, 15, 37, 9.00, '2023-11-20 09:18:54', '2023-12-08 09:49:32');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (867, 15, 38, 2.00, '2023-11-20 09:18:54', '2023-12-08 09:49:32');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (868, 15, 39, 5.00, '2023-11-20 09:18:54', '2023-12-08 09:49:32');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (869, 15, 40, 1.00, '2023-11-20 09:18:54', '2023-12-08 09:49:32');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (870, 15, 41, 6.00, '2023-11-20 09:18:54', '2023-12-08 09:49:32');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (871, 15, 42, 10.00, '2023-11-20 09:18:54', '2023-12-08 09:49:32');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (872, 15, 43, 16.00, '2023-11-20 09:18:54', '2023-12-08 09:49:32');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (873, 15, 44, 45.00, '2023-11-20 09:18:54', '2023-12-08 09:49:32');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (874, 15, 45, 26.00, '2023-11-20 09:18:54', '2023-12-08 09:49:32');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (875, 15, 46, 2.00, '2023-11-20 09:18:54', '2023-12-08 09:49:32');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (876, 15, 47, 3.00, '2023-11-20 09:18:54', '2023-12-08 09:49:32');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (877, 15, 50, 6.00, '2023-11-20 09:18:54', '2023-12-08 09:49:32');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (878, 15, 52, 21.00, '2023-11-20 09:18:54', '2023-12-08 09:49:32');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (879, 15, 53, 18.00, '2023-11-20 09:18:54', '2023-12-08 09:49:32');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (880, 15, 54, 6.00, '2023-11-20 09:18:54', '2023-12-08 09:49:32');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (881, 15, 56, 3.00, '2023-11-20 09:18:54', '2023-12-08 09:49:32');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (882, 15, 58, 9.00, '2023-11-20 09:18:54', '2023-12-08 09:49:32');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (883, 15, 59, 0.00, '2023-11-20 09:18:54', '2023-11-20 09:18:54');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (884, 15, 60, 9.00, '2023-11-20 09:18:54', '2023-12-08 09:49:32');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (885, 16, 3, 0.00, '2023-11-20 09:28:03', '2023-11-20 09:28:03');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (886, 16, 4, 21.00, '2023-11-20 09:28:03', '2023-11-20 09:28:03');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (887, 16, 5, 7.00, '2023-11-20 09:28:03', '2023-11-20 09:28:03');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (888, 16, 6, 0.00, '2023-11-20 09:28:03', '2023-11-20 09:28:03');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (889, 16, 7, 9.00, '2023-11-20 09:28:03', '2023-12-08 10:12:58');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (890, 16, 8, 11.00, '2023-11-20 09:28:03', '2023-12-08 10:12:58');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (891, 16, 9, 31.00, '2023-11-20 09:28:03', '2023-12-08 10:12:58');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (892, 16, 10, 35.00, '2023-11-20 09:28:03', '2023-12-08 10:12:58');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (893, 16, 11, 40.00, '2023-11-20 09:28:03', '2023-12-08 10:12:58');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (894, 16, 12, 46.00, '2023-11-20 09:28:03', '2023-12-08 10:12:58');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (895, 16, 13, 10.00, '2023-11-20 09:28:03', '2023-12-08 10:12:58');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (896, 16, 14, 0.00, '2023-11-20 09:28:03', '2023-11-20 09:28:03');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (897, 16, 15, 10.00, '2023-11-20 09:28:03', '2023-12-08 10:12:58');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (898, 16, 16, 18.00, '2023-11-20 09:28:03', '2023-12-08 10:12:58');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (899, 16, 17, 0.00, '2023-11-20 09:28:03', '2023-11-20 09:28:03');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (900, 16, 18, 51.00, '2023-11-20 09:28:03', '2023-12-08 10:12:58');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (901, 16, 19, 98.00, '2023-11-20 09:28:03', '2023-12-08 10:12:58');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (902, 16, 20, 6.00, '2023-11-20 09:28:03', '2023-12-08 10:12:58');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (903, 16, 21, 2.00, '2023-11-20 09:28:03', '2023-12-08 10:12:58');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (904, 16, 22, 57.00, '2023-11-20 09:28:03', '2023-12-08 10:12:58');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (905, 16, 23, 0.00, '2023-11-20 09:28:03', '2023-11-20 09:28:03');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (906, 16, 24, 211.00, '2023-11-20 09:28:03', '2023-12-08 10:12:58');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (907, 16, 25, 32.00, '2023-11-20 09:28:03', '2023-12-08 10:12:58');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (908, 16, 26, 50.00, '2023-11-20 09:28:03', '2023-12-08 10:12:58');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (909, 16, 28, 43.00, '2023-11-20 09:28:03', '2023-12-08 10:12:58');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (910, 16, 29, 1.00, '2023-11-20 09:28:03', '2023-12-08 10:12:59');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (911, 16, 30, 23.00, '2023-11-20 09:28:03', '2023-12-08 10:12:59');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (912, 16, 31, 7.00, '2023-11-20 09:28:03', '2023-12-08 10:12:59');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (913, 16, 32, 22.00, '2023-11-20 09:28:03', '2023-12-08 10:12:59');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (914, 16, 33, 31.00, '2023-11-20 09:28:03', '2023-12-08 10:12:59');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (915, 16, 34, 9.00, '2023-11-20 09:28:03', '2023-12-08 10:12:59');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (916, 16, 35, 16.00, '2023-11-20 09:28:03', '2023-12-08 10:12:59');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (917, 16, 36, 82.00, '2023-11-20 09:28:03', '2023-12-08 10:12:59');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (918, 16, 37, 114.00, '2023-11-20 09:28:03', '2023-12-08 10:12:59');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (919, 16, 38, 16.00, '2023-11-20 09:28:03', '2023-12-08 10:12:59');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (920, 16, 39, 32.00, '2023-11-20 09:28:03', '2023-12-08 10:12:59');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (921, 16, 40, 20.00, '2023-11-20 09:28:03', '2023-12-08 10:12:59');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (922, 16, 41, 9.00, '2023-11-20 09:28:03', '2023-12-08 10:12:59');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (923, 16, 42, 33.00, '2023-11-20 09:28:03', '2023-12-08 10:12:59');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (924, 16, 43, 94.00, '2023-11-20 09:28:03', '2023-12-08 10:12:59');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (925, 16, 44, 22.00, '2023-11-20 09:28:03', '2023-12-08 10:12:59');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (926, 16, 45, 12.00, '2023-11-20 09:28:03', '2023-12-08 10:12:59');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (927, 16, 46, 5.00, '2023-11-20 09:28:03', '2023-12-08 10:12:59');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (928, 16, 47, 83.00, '2023-11-20 09:28:03', '2023-12-08 10:12:59');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (929, 16, 50, 16.00, '2023-11-20 09:28:03', '2023-12-08 10:12:59');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (930, 16, 52, 13.00, '2023-11-20 09:28:03', '2023-12-08 10:12:59');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (931, 16, 53, 105.00, '2023-11-20 09:28:03', '2023-12-08 10:12:59');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (932, 16, 54, 36.00, '2023-11-20 09:28:03', '2023-12-08 10:12:59');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (933, 16, 56, 12.00, '2023-11-20 09:28:03', '2023-12-08 10:12:59');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (934, 16, 58, 129.00, '2023-11-20 09:28:03', '2023-12-08 10:12:59');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (935, 16, 59, 8.00, '2023-11-20 09:28:03', '2023-12-08 10:12:59');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (936, 16, 60, 67.00, '2023-11-20 09:28:03', '2023-12-08 10:12:59');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (937, 2, 3, 0.00, '2023-11-20 09:33:23', '2023-11-20 09:33:23');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (938, 2, 4, 0.00, '2023-11-20 09:33:23', '2023-11-20 09:33:23');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (939, 2, 5, 0.00, '2023-11-20 09:33:23', '2023-11-20 09:33:23');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (940, 2, 6, 0.00, '2023-11-20 09:33:23', '2023-11-20 09:33:23');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (941, 2, 7, 1.00, '2023-11-20 09:33:23', '2023-12-08 09:50:25');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (942, 2, 8, 0.00, '2023-11-20 09:33:23', '2023-11-20 09:33:23');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (943, 2, 9, 0.00, '2023-11-20 09:33:23', '2023-11-20 09:33:23');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (944, 2, 10, 0.00, '2023-11-20 09:33:23', '2023-11-20 09:33:23');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (945, 2, 11, 0.00, '2023-11-20 09:33:23', '2023-11-20 09:33:23');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (946, 2, 12, 0.00, '2023-11-20 09:33:23', '2023-11-20 09:33:23');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (947, 2, 13, 0.00, '2023-11-20 09:33:23', '2023-11-20 09:33:23');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (948, 2, 14, 0.00, '2023-11-20 09:33:23', '2023-11-20 09:33:23');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (949, 2, 15, 0.00, '2023-11-20 09:33:23', '2023-11-20 09:33:23');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (950, 2, 16, 0.00, '2023-11-20 09:33:23', '2023-11-20 09:33:23');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (951, 2, 17, 0.00, '2023-11-20 09:33:23', '2023-11-20 09:33:23');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (952, 2, 18, 0.00, '2023-11-20 09:33:23', '2023-11-20 09:33:23');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (953, 2, 19, 0.00, '2023-11-20 09:33:23', '2023-11-20 09:33:23');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (954, 2, 20, 0.00, '2023-11-20 09:33:23', '2023-11-20 09:33:23');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (955, 2, 21, 0.00, '2023-11-20 09:33:23', '2023-11-20 09:33:23');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (956, 2, 22, 0.00, '2023-11-20 09:33:23', '2023-11-20 09:33:23');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (957, 2, 23, 0.00, '2023-11-20 09:33:23', '2023-11-20 09:33:23');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (958, 2, 24, 2.00, '2023-11-20 09:33:23', '2023-12-08 09:50:25');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (959, 2, 25, 0.00, '2023-11-20 09:33:23', '2023-11-20 09:33:23');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (960, 2, 26, 0.00, '2023-11-20 09:33:23', '2023-11-20 09:33:23');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (961, 2, 28, 0.00, '2023-11-20 09:33:23', '2023-11-20 09:33:23');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (962, 2, 29, 0.00, '2023-11-20 09:33:23', '2023-11-20 09:33:23');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (963, 2, 30, 0.00, '2023-11-20 09:33:23', '2023-11-20 09:33:23');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (964, 2, 31, 0.00, '2023-11-20 09:33:23', '2023-11-20 09:33:23');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (965, 2, 32, 1.00, '2023-11-20 09:33:23', '2023-12-08 09:50:25');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (966, 2, 33, 0.00, '2023-11-20 09:33:23', '2023-11-20 09:33:23');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (967, 2, 34, 1.00, '2023-11-20 09:33:23', '2023-12-08 09:50:25');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (968, 2, 35, 3.00, '2023-11-20 09:33:23', '2023-12-08 09:50:25');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (969, 2, 36, 1.00, '2023-11-20 09:33:23', '2023-12-08 09:50:25');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (970, 2, 37, 0.00, '2023-11-20 09:33:23', '2023-11-20 09:33:23');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (971, 2, 38, 0.00, '2023-11-20 09:33:23', '2023-11-20 09:33:23');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (972, 2, 39, 0.00, '2023-11-20 09:33:23', '2023-11-20 09:33:23');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (973, 2, 40, 1.00, '2023-11-20 09:33:23', '2023-12-08 09:50:25');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (974, 2, 41, 0.00, '2023-11-20 09:33:23', '2023-11-20 09:33:23');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (975, 2, 42, 0.00, '2023-11-20 09:33:23', '2023-11-20 09:33:23');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (976, 2, 43, 1.00, '2023-11-20 09:33:23', '2023-12-08 09:50:25');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (977, 2, 44, 0.00, '2023-11-20 09:33:23', '2023-11-20 09:33:23');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (978, 2, 45, 0.00, '2023-11-20 09:33:23', '2023-11-20 09:33:23');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (979, 2, 46, 0.00, '2023-11-20 09:33:23', '2023-11-20 09:33:23');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (980, 2, 47, 1.00, '2023-11-20 09:33:23', '2023-12-08 09:50:25');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (981, 2, 50, 0.00, '2023-11-20 09:33:23', '2023-11-20 09:33:23');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (982, 2, 52, 0.00, '2023-11-20 09:33:23', '2023-11-20 09:33:23');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (983, 2, 53, 0.00, '2023-11-20 09:33:23', '2023-11-20 09:33:23');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (984, 2, 54, 0.00, '2023-11-20 09:33:23', '2023-11-20 09:33:23');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (985, 2, 56, 0.00, '2023-11-20 09:33:23', '2023-11-20 09:33:23');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (986, 2, 58, 0.00, '2023-11-20 09:33:23', '2023-11-20 09:33:23');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (987, 2, 59, 0.00, '2023-11-20 09:33:23', '2023-11-20 09:33:23');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (988, 2, 60, 0.00, '2023-11-20 09:33:23', '2023-11-20 09:33:23');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (989, 17, 3, 14.00, '2023-11-28 11:01:38', '2023-11-28 11:01:38');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (990, 17, 4, 343.00, '2023-11-28 11:01:38', '2023-11-28 11:01:38');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (991, 17, 5, 125.00, '2023-11-28 11:01:38', '2023-11-28 11:01:38');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (992, 17, 6, 28.00, '2023-11-28 11:01:38', '2023-11-28 11:01:38');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (993, 17, 7, 752.00, '2023-11-28 11:01:38', '2023-11-28 11:01:38');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (994, 17, 8, 51.00, '2023-11-28 11:01:38', '2023-11-28 11:01:38');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (995, 17, 9, 274.00, '2023-11-28 11:01:38', '2023-11-28 11:01:38');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (996, 17, 10, 194.00, '2023-11-28 11:01:38', '2023-11-28 11:01:38');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (997, 17, 11, 28.00, '2023-11-28 11:01:38', '2023-11-28 11:01:38');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (998, 17, 12, 127.00, '2023-11-28 11:01:38', '2023-11-28 11:01:38');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (999, 17, 13, 131.00, '2023-11-28 11:01:38', '2023-11-28 11:01:38');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1000, 17, 14, 61.00, '2023-11-28 11:01:38', '2023-11-28 11:01:38');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1001, 17, 15, 18.00, '2023-11-28 11:01:38', '2023-11-28 11:01:38');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1002, 17, 16, 50.00, '2023-11-28 11:01:38', '2023-11-28 11:01:38');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1003, 17, 17, 13.00, '2023-11-28 11:01:38', '2023-11-28 11:01:38');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1004, 17, 18, 225.00, '2023-11-28 11:01:38', '2023-11-28 11:01:38');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1005, 17, 19, 38.00, '2023-11-28 11:01:38', '2023-11-28 11:01:38');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1006, 17, 20, 418.00, '2023-11-28 11:01:38', '2023-11-28 11:01:38');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1007, 17, 21, 69.00, '2023-11-28 11:01:38', '2023-11-28 11:01:38');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1008, 17, 22, 120.00, '2023-11-28 11:01:38', '2023-11-28 11:01:38');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1009, 17, 23, 20.00, '2023-11-28 11:01:38', '2023-11-28 11:01:38');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1010, 17, 24, 26.00, '2023-11-28 11:01:38', '2023-11-28 11:01:38');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1011, 17, 25, 16.00, '2023-11-28 11:01:38', '2023-11-28 11:01:38');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1012, 17, 26, 98.00, '2023-11-28 11:01:38', '2023-11-28 11:01:38');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1013, 17, 28, 6.00, '2023-11-28 11:01:38', '2023-11-28 11:01:38');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1014, 17, 29, 59.00, '2023-11-28 11:01:38', '2023-11-28 11:01:38');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1015, 17, 30, 95.00, '2023-11-28 11:01:38', '2023-11-28 11:01:38');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1016, 17, 31, 16.00, '2023-11-28 11:01:38', '2023-11-28 11:01:38');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1017, 17, 32, 29.00, '2023-11-28 11:01:38', '2023-11-28 11:01:38');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1018, 17, 33, 92.00, '2023-11-28 11:01:38', '2023-11-28 11:01:38');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1019, 17, 34, 26.00, '2023-11-28 11:01:38', '2023-11-28 11:01:38');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1020, 17, 35, 93.00, '2023-11-28 11:01:38', '2023-11-28 11:01:38');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1021, 17, 36, 103.00, '2023-11-28 11:01:38', '2023-11-28 11:01:38');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1022, 17, 37, 22.00, '2023-11-28 11:01:38', '2023-11-28 11:01:38');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1023, 17, 38, 148.00, '2023-11-28 11:01:38', '2023-11-28 11:01:38');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1024, 17, 39, 89.00, '2023-11-28 11:01:38', '2023-11-28 11:01:38');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1025, 17, 40, 8.00, '2023-11-28 11:01:38', '2023-11-28 11:01:38');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1026, 17, 41, 61.00, '2023-11-28 11:01:38', '2023-11-28 11:01:38');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1027, 17, 42, 71.00, '2023-11-28 11:01:38', '2023-11-28 11:01:38');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1028, 17, 43, 96.00, '2023-11-28 11:01:38', '2023-11-28 11:01:38');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1029, 17, 44, 87.00, '2023-11-28 11:01:38', '2023-11-28 11:01:38');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1030, 17, 45, 257.00, '2023-11-28 11:01:38', '2023-11-28 11:01:38');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1031, 17, 46, 156.00, '2023-11-28 11:01:38', '2023-11-28 11:01:38');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1032, 17, 47, 146.00, '2023-11-28 11:01:38', '2023-11-28 11:01:38');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1033, 17, 50, 126.00, '2023-11-28 11:01:38', '2023-11-28 11:01:38');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1034, 17, 52, 145.00, '2023-11-28 11:01:38', '2023-11-28 11:01:38');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1035, 17, 53, 24.00, '2023-11-28 11:01:38', '2023-11-28 11:01:38');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1036, 17, 54, 60.00, '2023-11-28 11:01:38', '2023-11-28 11:01:38');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1037, 17, 56, 125.00, '2023-11-28 11:01:38', '2023-11-28 11:01:38');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1038, 17, 58, 232.00, '2023-11-28 11:01:38', '2023-11-28 11:01:38');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1039, 17, 59, 121.00, '2023-11-28 11:01:38', '2023-11-28 11:01:38');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1040, 17, 60, 85.00, '2023-11-28 11:01:38', '2023-11-28 11:01:38');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1041, 22, 3, 1.00, '2023-12-07 14:38:29', '2023-12-07 14:38:29');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1042, 22, 4, 5.00, '2023-12-07 14:38:29', '2023-12-07 14:45:26');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1043, 22, 5, 0.00, '2023-12-07 14:38:29', '2023-12-07 14:38:29');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1044, 22, 6, 0.00, '2023-12-07 14:38:29', '2023-12-07 14:38:29');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1045, 22, 7, 3.00, '2023-12-07 14:38:29', '2023-12-07 14:45:26');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1046, 22, 8, 0.00, '2023-12-07 14:38:29', '2023-12-07 14:38:29');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1047, 22, 9, 3.00, '2023-12-07 14:38:29', '2023-12-07 14:45:26');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1048, 22, 10, 3.00, '2023-12-07 14:38:29', '2023-12-07 14:45:26');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1049, 22, 11, 2.00, '2023-12-07 14:38:29', '2023-12-07 14:45:26');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1050, 22, 12, 1.00, '2023-12-07 14:38:29', '2023-12-07 14:45:26');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1051, 22, 13, 0.00, '2023-12-07 14:38:29', '2023-12-07 14:38:29');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1052, 22, 14, 1.00, '2023-12-07 14:38:29', '2023-12-07 14:45:26');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1053, 22, 15, 2.00, '2023-12-07 14:38:29', '2023-12-07 14:45:26');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1054, 22, 16, 1.00, '2023-12-07 14:38:29', '2023-12-07 14:45:26');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1055, 22, 17, 0.00, '2023-12-07 14:38:29', '2023-12-07 14:38:29');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1056, 22, 18, 2.00, '2023-12-07 14:38:29', '2023-12-07 14:45:26');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1057, 22, 19, 2.00, '2023-12-07 14:38:30', '2023-12-07 14:45:26');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1058, 22, 20, 1.00, '2023-12-07 14:38:30', '2023-12-07 14:45:26');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1059, 22, 21, 1.00, '2023-12-07 14:38:30', '2023-12-07 14:45:26');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1060, 22, 22, 2.00, '2023-12-07 14:38:30', '2023-12-07 14:45:26');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1061, 22, 23, 13.00, '2023-12-07 14:38:30', '2023-12-07 14:45:26');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1062, 22, 24, 1.00, '2023-12-07 14:38:30', '2023-12-07 14:45:26');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1063, 22, 25, 3.00, '2023-12-07 14:38:30', '2023-12-07 14:45:26');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1064, 22, 26, 2.00, '2023-12-07 14:38:30', '2023-12-07 14:45:26');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1065, 22, 28, 1.00, '2023-12-07 14:38:30', '2023-12-07 14:45:26');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1066, 22, 29, 3.00, '2023-12-07 14:38:30', '2023-12-07 14:45:26');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1067, 22, 30, 1.00, '2023-12-07 14:38:30', '2023-12-07 14:45:26');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1068, 22, 31, 2.00, '2023-12-07 14:38:30', '2023-12-07 14:45:26');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1069, 22, 32, 1.00, '2023-12-07 14:38:30', '2023-12-07 14:45:26');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1070, 22, 33, 0.00, '2023-12-07 14:38:30', '2023-12-07 14:38:30');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1071, 22, 34, 0.00, '2023-12-07 14:38:30', '2023-12-07 14:38:30');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1072, 22, 35, 1.00, '2023-12-07 14:38:30', '2023-12-07 14:45:26');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1073, 22, 36, 4.00, '2023-12-07 14:38:30', '2023-12-07 14:45:26');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1074, 22, 37, 4.00, '2023-12-07 14:38:30', '2023-12-07 14:45:26');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1075, 22, 38, 0.00, '2023-12-07 14:38:30', '2023-12-07 14:38:30');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1076, 22, 39, 1.00, '2023-12-07 14:38:30', '2023-12-07 14:45:26');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1077, 22, 40, 1.00, '2023-12-07 14:38:30', '2023-12-07 14:45:26');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1078, 22, 41, 1.00, '2023-12-07 14:38:30', '2023-12-07 14:45:26');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1079, 22, 42, 2.00, '2023-12-07 14:38:30', '2023-12-07 14:45:26');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1080, 22, 43, 5.00, '2023-12-07 14:38:30', '2023-12-07 14:45:26');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1081, 22, 44, 2.00, '2023-12-07 14:38:30', '2023-12-07 14:45:26');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1082, 22, 45, 1.00, '2023-12-07 14:38:30', '2023-12-07 14:45:26');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1083, 22, 46, 1.00, '2023-12-07 14:38:30', '2023-12-07 14:45:26');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1084, 22, 47, 3.00, '2023-12-07 14:38:30', '2023-12-07 14:45:26');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1085, 22, 50, 0.00, '2023-12-07 14:38:30', '2023-12-07 14:38:30');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1086, 22, 52, 0.00, '2023-12-07 14:38:30', '2023-12-07 14:38:30');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1087, 22, 53, 0.00, '2023-12-07 14:38:30', '2023-12-07 14:38:30');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1088, 22, 54, 0.00, '2023-12-07 14:38:30', '2023-12-07 14:38:30');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1089, 22, 56, 3.00, '2023-12-07 14:38:30', '2023-12-07 14:45:26');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1090, 22, 58, 2.00, '2023-12-07 14:38:30', '2023-12-07 14:45:26');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1091, 22, 59, 0.00, '2023-12-07 14:38:30', '2023-12-07 14:38:30');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1092, 22, 60, 0.00, '2023-12-07 14:38:30', '2023-12-07 14:38:30');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1093, 23, 3, 19.00, '2023-12-07 14:58:30', '2023-12-07 14:58:30');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1094, 23, 4, 215.00, '2023-12-07 14:58:30', '2023-12-07 14:58:30');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1095, 23, 5, 91.00, '2023-12-07 14:58:30', '2023-12-07 14:58:30');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1096, 23, 6, 160.00, '2023-12-07 14:58:30', '2023-12-07 14:58:30');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1097, 23, 7, 194.00, '2023-12-07 14:58:30', '2023-12-07 14:58:30');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1098, 23, 8, 57.00, '2023-12-07 14:58:30', '2023-12-07 14:58:30');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1099, 23, 9, 153.00, '2023-12-07 14:58:30', '2023-12-07 14:58:30');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1100, 23, 10, 360.00, '2023-12-07 14:58:30', '2023-12-07 14:58:30');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1101, 23, 11, 103.00, '2023-12-07 14:58:30', '2023-12-07 14:58:30');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1102, 23, 12, 49.00, '2023-12-07 14:58:30', '2023-12-07 14:58:30');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1103, 23, 13, 295.00, '2023-12-07 14:58:30', '2023-12-07 14:58:30');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1104, 23, 14, 100.00, '2023-12-07 14:58:30', '2023-12-07 14:58:30');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1105, 23, 15, 19.00, '2023-12-07 14:58:30', '2023-12-07 14:58:30');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1106, 23, 16, 111.00, '2023-12-07 14:58:30', '2023-12-07 14:58:30');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1107, 23, 17, 26.00, '2023-12-07 14:58:30', '2023-12-07 14:58:30');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1108, 23, 18, 52.00, '2023-12-07 14:58:30', '2023-12-07 14:58:30');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1109, 23, 19, 56.00, '2023-12-07 14:58:30', '2023-12-07 14:58:30');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1110, 23, 20, 137.00, '2023-12-07 14:58:30', '2023-12-07 14:58:30');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1111, 23, 21, 76.00, '2023-12-07 14:58:30', '2023-12-07 14:58:30');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1112, 23, 22, 96.00, '2023-12-07 14:58:30', '2023-12-07 14:58:30');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1113, 23, 23, 27.00, '2023-12-07 14:58:30', '2023-12-07 14:58:30');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1114, 23, 24, 21.00, '2023-12-07 14:58:30', '2023-12-07 14:58:30');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1115, 23, 25, 82.00, '2023-12-07 14:58:30', '2023-12-07 14:58:30');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1116, 23, 26, 127.00, '2023-12-07 14:58:30', '2023-12-07 14:58:30');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1117, 23, 28, 30.00, '2023-12-07 14:58:30', '2023-12-07 14:58:30');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1118, 23, 29, 91.00, '2023-12-07 14:58:30', '2023-12-07 14:58:30');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1119, 23, 30, 196.00, '2023-12-07 14:58:30', '2023-12-07 14:58:30');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1120, 23, 31, 60.00, '2023-12-07 14:58:30', '2023-12-07 14:58:30');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1121, 23, 32, 64.00, '2023-12-07 14:58:30', '2023-12-07 14:58:30');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1122, 23, 33, 54.00, '2023-12-07 14:58:30', '2023-12-07 14:58:30');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1123, 23, 34, 53.00, '2023-12-07 14:58:30', '2023-12-07 14:58:30');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1124, 23, 35, 70.00, '2023-12-07 14:58:30', '2023-12-07 14:58:30');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1125, 23, 36, 372.00, '2023-12-07 14:58:30', '2023-12-07 14:58:30');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1126, 23, 37, 64.00, '2023-12-07 14:58:30', '2023-12-07 14:58:30');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1127, 23, 38, 61.00, '2023-12-07 14:58:30', '2023-12-07 14:58:30');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1128, 23, 39, 184.00, '2023-12-07 14:58:30', '2023-12-07 14:58:30');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1129, 23, 40, 82.00, '2023-12-07 14:58:30', '2023-12-07 14:58:30');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1130, 23, 41, 35.00, '2023-12-07 14:58:30', '2023-12-07 14:58:30');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1131, 23, 42, 122.00, '2023-12-07 14:58:30', '2023-12-07 14:58:30');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1132, 23, 43, 108.00, '2023-12-07 14:58:30', '2023-12-07 14:58:30');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1133, 23, 44, 26.00, '2023-12-07 14:58:30', '2023-12-07 14:58:30');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1134, 23, 45, 189.00, '2023-12-07 14:58:30', '2023-12-07 14:58:30');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1135, 23, 46, 141.00, '2023-12-07 14:58:30', '2023-12-07 14:58:30');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1136, 23, 47, 54.00, '2023-12-07 14:58:30', '2023-12-07 14:58:30');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1137, 23, 50, 202.00, '2023-12-07 14:58:30', '2023-12-07 14:58:30');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1138, 23, 52, 148.00, '2023-12-07 14:58:30', '2023-12-07 14:58:30');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1139, 23, 53, 136.00, '2023-12-07 14:58:30', '2023-12-07 14:58:30');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1140, 23, 54, 70.00, '2023-12-07 14:58:30', '2023-12-07 14:58:30');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1141, 23, 56, 53.00, '2023-12-07 14:58:30', '2023-12-07 14:58:30');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1142, 23, 58, 60.00, '2023-12-07 14:58:30', '2023-12-07 14:58:30');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1143, 23, 59, 86.00, '2023-12-07 14:58:30', '2023-12-07 14:58:30');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1144, 23, 60, 269.00, '2023-12-07 14:58:30', '2023-12-07 14:58:30');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1145, 24, 3, 3.99, '2023-12-07 15:08:24', '2023-12-07 15:09:00');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1146, 24, 4, 2.29, '2023-12-07 15:08:24', '2023-12-07 15:38:41');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1147, 24, 5, 12.57, '2023-12-07 15:08:24', '2023-12-07 15:38:41');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1148, 24, 6, 9.09, '2023-12-07 15:08:24', '2023-12-07 15:38:41');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1149, 24, 7, 21.24, '2023-12-07 15:08:24', '2023-12-07 15:38:41');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1150, 24, 8, 11.91, '2023-12-07 15:08:24', '2023-12-07 15:38:41');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1151, 24, 9, 3.44, '2023-12-07 15:08:24', '2023-12-07 15:38:41');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1152, 24, 10, 12.78, '2023-12-07 15:08:24', '2023-12-07 15:38:41');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1153, 24, 11, 0.89, '2023-12-07 15:08:24', '2023-12-07 15:38:41');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1154, 24, 12, 14.14, '2023-12-07 15:08:24', '2023-12-07 15:38:41');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1155, 24, 13, 13.93, '2023-12-07 15:08:24', '2023-12-07 15:38:41');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1156, 24, 14, 8.15, '2023-12-07 15:08:24', '2023-12-07 15:38:41');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1157, 24, 15, 0.00, '2023-12-07 15:08:24', '2023-12-07 15:08:24');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1158, 24, 16, 33.75, '2023-12-07 15:08:24', '2023-12-07 15:38:41');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1159, 24, 17, 3.89, '2023-12-07 15:08:24', '2023-12-07 15:38:41');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1160, 24, 18, 37.26, '2023-12-07 15:08:24', '2023-12-07 15:38:41');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1161, 24, 19, 30.28, '2023-12-07 15:08:24', '2023-12-07 15:38:41');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1162, 24, 20, 22.02, '2023-12-07 15:08:24', '2023-12-07 15:38:41');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1163, 24, 21, 7.85, '2023-12-07 15:08:24', '2023-12-07 15:38:41');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1164, 24, 22, 9.48, '2023-12-07 15:08:24', '2023-12-07 15:38:41');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1165, 24, 23, 8.74, '2023-12-07 15:08:24', '2023-12-07 15:38:41');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1166, 24, 24, 26.09, '2023-12-07 15:08:24', '2023-12-07 15:38:41');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1167, 24, 25, 16.77, '2023-12-07 15:08:24', '2023-12-07 15:38:41');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1168, 24, 26, 14.71, '2023-12-07 15:08:24', '2023-12-07 15:38:41');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1169, 24, 28, 31.45, '2023-12-07 15:08:24', '2023-12-07 15:38:41');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1170, 24, 29, 7.85, '2023-12-07 15:08:24', '2023-12-07 15:38:41');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1171, 24, 30, 16.30, '2023-12-07 15:08:24', '2023-12-07 15:38:41');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1172, 24, 31, 0.00, '2023-12-07 15:08:24', '2023-12-07 15:08:24');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1173, 24, 32, 4.36, '2023-12-07 15:08:24', '2023-12-07 15:38:41');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1174, 24, 33, 7.86, '2023-12-07 15:08:24', '2023-12-07 15:38:41');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1175, 24, 34, 7.86, '2023-12-07 15:08:24', '2023-12-07 15:38:41');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1176, 24, 35, 2.47, '2023-12-07 15:08:24', '2023-12-07 15:38:41');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1177, 24, 36, 18.84, '2023-12-07 15:08:24', '2023-12-07 15:38:41');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1178, 24, 37, 24.69, '2023-12-07 15:08:24', '2023-12-07 15:38:41');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1179, 24, 38, 5.15, '2023-12-07 15:08:24', '2023-12-07 15:38:41');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1180, 24, 39, 17.79, '2023-12-07 15:08:24', '2023-12-07 15:38:41');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1181, 24, 40, 8.59, '2023-12-07 15:08:24', '2023-12-07 15:38:41');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1182, 24, 41, 6.93, '2023-12-07 15:08:24', '2023-12-07 15:38:41');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1183, 24, 42, 11.87, '2023-12-07 15:08:24', '2023-12-07 15:38:41');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1184, 24, 43, 15.50, '2023-12-07 15:08:24', '2023-12-07 15:38:41');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1185, 24, 44, 17.92, '2023-12-07 15:08:24', '2023-12-07 15:38:41');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1186, 24, 45, 8.77, '2023-12-07 15:08:24', '2023-12-07 15:38:41');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1187, 24, 46, 6.21, '2023-12-07 15:08:24', '2023-12-07 15:38:41');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1188, 24, 47, 100.19, '2023-12-07 15:08:24', '2023-12-07 15:38:41');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1189, 24, 50, 11.22, '2023-12-07 15:08:24', '2023-12-07 15:38:41');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1190, 24, 52, 3.48, '2023-12-07 15:08:24', '2023-12-07 15:38:41');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1191, 24, 53, 9.03, '2023-12-07 15:08:24', '2023-12-07 15:38:41');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1192, 24, 54, 6.64, '2023-12-07 15:08:24', '2023-12-07 15:38:41');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1193, 24, 56, 12.15, '2023-12-07 15:08:24', '2023-12-07 15:38:41');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1194, 24, 58, 33.41, '2023-12-07 15:08:24', '2023-12-07 15:38:41');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1195, 24, 59, 41.74, '2023-12-07 15:08:24', '2023-12-07 15:38:41');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1196, 24, 60, 24.14, '2023-12-07 15:08:24', '2023-12-07 15:38:41');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1197, 25, 3, 17.00, '2023-12-07 15:44:57', '2023-12-07 15:44:57');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1198, 25, 4, 4.00, '2023-12-07 15:44:57', '2023-12-07 15:44:57');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1199, 25, 5, 18.00, '2023-12-07 15:44:57', '2023-12-07 15:44:57');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1200, 25, 6, 25.00, '2023-12-07 15:44:57', '2023-12-07 15:44:57');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1201, 25, 7, 84.00, '2023-12-07 15:44:57', '2023-12-07 15:44:57');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1202, 25, 8, 47.00, '2023-12-07 15:44:57', '2023-12-07 15:44:57');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1203, 25, 9, 19.00, '2023-12-07 15:44:57', '2023-12-07 15:44:57');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1204, 25, 10, 61.00, '2023-12-07 15:44:57', '2023-12-07 15:44:57');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1205, 25, 11, 8.00, '2023-12-07 15:44:57', '2023-12-07 15:44:57');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1206, 25, 12, 30.00, '2023-12-07 15:44:57', '2023-12-07 15:44:57');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1207, 25, 13, 57.00, '2023-12-07 15:44:57', '2023-12-07 15:44:57');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1208, 25, 14, 33.00, '2023-12-07 15:44:57', '2023-12-07 15:44:57');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1209, 25, 15, 0.00, '2023-12-07 15:44:57', '2023-12-07 15:44:57');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1210, 25, 16, 180.00, '2023-12-07 15:44:57', '2023-12-07 15:44:57');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1211, 25, 17, 17.00, '2023-12-07 15:44:57', '2023-12-07 15:44:57');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1212, 25, 18, 154.00, '2023-12-07 15:44:57', '2023-12-07 15:44:57');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1213, 25, 19, 129.00, '2023-12-07 15:44:57', '2023-12-07 15:44:57');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1214, 25, 20, 19.00, '2023-12-07 15:44:57', '2023-12-07 15:44:57');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1215, 25, 21, 27.00, '2023-12-07 15:44:57', '2023-12-07 15:44:57');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1216, 25, 22, 45.00, '2023-12-07 15:44:57', '2023-12-07 15:44:57');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1217, 25, 23, 34.00, '2023-12-07 15:44:57', '2023-12-07 15:44:57');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1218, 25, 24, 93.00, '2023-12-07 15:44:57', '2023-12-07 15:44:57');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1219, 25, 25, 94.00, '2023-12-07 15:44:57', '2023-12-07 15:44:57');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1220, 25, 26, 69.00, '2023-12-07 15:44:57', '2023-12-07 15:44:57');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1221, 25, 28, 113.00, '2023-12-07 15:44:57', '2023-12-07 15:44:57');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1222, 25, 29, 33.00, '2023-12-07 15:44:57', '2023-12-07 15:44:57');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1223, 25, 30, 67.00, '2023-12-07 15:44:57', '2023-12-07 15:44:57');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1224, 25, 31, 0.00, '2023-12-07 15:44:57', '2023-12-07 15:44:57');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1225, 25, 32, 20.00, '2023-12-07 15:44:57', '2023-12-07 15:44:57');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1226, 25, 33, 37.00, '2023-12-07 15:44:57', '2023-12-07 15:44:57');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1227, 25, 34, 32.00, '2023-12-07 15:44:57', '2023-12-07 15:44:57');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1228, 25, 35, 9.00, '2023-12-07 15:44:57', '2023-12-07 15:44:57');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1229, 25, 36, 72.00, '2023-12-07 15:44:57', '2023-12-07 15:44:57');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1230, 25, 37, 129.00, '2023-12-07 15:44:57', '2023-12-07 15:44:57');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1231, 25, 38, 17.00, '2023-12-07 15:44:57', '2023-12-07 15:44:57');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1232, 25, 39, 115.00, '2023-12-07 15:44:57', '2023-12-07 15:44:57');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1233, 25, 40, 45.00, '2023-12-07 15:44:57', '2023-12-07 15:44:57');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1234, 25, 41, 32.00, '2023-12-07 15:44:57', '2023-12-07 15:44:57');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1235, 25, 42, 65.00, '2023-12-07 15:44:57', '2023-12-07 15:44:57');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1236, 25, 43, 54.00, '2023-12-07 15:44:57', '2023-12-07 15:44:57');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1237, 25, 44, 58.00, '2023-12-07 15:44:57', '2023-12-07 15:44:57');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1238, 25, 45, 52.00, '2023-12-07 15:44:57', '2023-12-07 15:44:57');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1239, 25, 46, 7.00, '2023-12-07 15:44:57', '2023-12-07 15:44:57');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1240, 25, 47, 436.00, '2023-12-07 15:44:57', '2023-12-07 15:44:57');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1241, 25, 50, 46.00, '2023-12-07 15:44:57', '2023-12-07 15:44:57');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1242, 25, 52, 20.00, '2023-12-07 15:44:57', '2023-12-07 15:44:57');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1243, 25, 53, 33.00, '2023-12-07 15:44:57', '2023-12-07 15:44:57');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1244, 25, 54, 21.00, '2023-12-07 15:44:57', '2023-12-07 15:44:57');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1245, 25, 56, 41.00, '2023-12-07 15:44:57', '2023-12-07 15:44:57');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1246, 25, 58, 112.00, '2023-12-07 15:44:57', '2023-12-07 15:44:57');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1247, 25, 59, 152.00, '2023-12-07 15:44:57', '2023-12-07 15:44:57');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1248, 25, 60, 121.00, '2023-12-07 15:44:57', '2023-12-07 15:44:57');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1249, 26, 3, 646.00, '2023-12-07 16:14:45', '2023-12-07 16:14:45');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1250, 26, 4, 5302.00, '2023-12-07 16:14:45', '2023-12-07 16:14:45');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1251, 26, 5, 2637.00, '2023-12-07 16:14:45', '2023-12-07 16:14:45');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1252, 26, 6, 4547.00, '2023-12-07 16:14:45', '2023-12-07 16:14:45');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1253, 26, 7, 4682.00, '2023-12-07 16:14:45', '2023-12-07 16:14:45');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1254, 26, 8, 1851.00, '2023-12-07 16:14:45', '2023-12-07 16:14:45');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1255, 26, 9, 3698.00, '2023-12-07 16:14:45', '2023-12-07 16:14:45');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1256, 26, 10, 11048.00, '2023-12-07 16:14:45', '2023-12-07 16:14:45');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1257, 26, 11, 3165.00, '2023-12-07 16:14:45', '2023-12-07 16:14:45');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1258, 26, 12, 5998.00, '2023-12-07 16:14:45', '2023-12-07 16:14:45');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1259, 26, 13, 5905.00, '2023-12-07 16:14:45', '2023-12-07 16:14:45');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1260, 26, 14, 3430.00, '2023-12-07 16:14:45', '2023-12-07 16:14:45');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1261, 26, 15, 2092.00, '2023-12-07 16:14:45', '2023-12-07 16:14:45');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1262, 26, 16, 5285.00, '2023-12-07 16:14:45', '2023-12-07 16:14:45');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1263, 26, 17, 1350.00, '2023-12-07 16:14:45', '2023-12-07 16:14:45');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1264, 26, 18, 4408.00, '2023-12-07 16:14:45', '2023-12-07 16:14:45');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1265, 26, 19, 7310.00, '2023-12-07 16:14:45', '2023-12-07 16:14:45');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1266, 26, 20, 4610.00, '2023-12-07 16:14:45', '2023-12-07 16:14:45');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1267, 26, 21, 2976.00, '2023-12-07 16:14:45', '2023-12-07 16:14:45');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1268, 26, 22, 3893.00, '2023-12-07 16:14:45', '2023-12-07 16:14:45');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1269, 26, 23, 893.00, '2023-12-07 16:14:45', '2023-12-07 16:14:45');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1270, 26, 24, 2113.00, '2023-12-07 16:14:45', '2023-12-07 16:14:45');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1271, 26, 25, 5273.00, '2023-12-07 16:14:45', '2023-12-07 16:14:45');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1272, 26, 26, 4790.00, '2023-12-07 16:14:45', '2023-12-07 16:14:45');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1273, 26, 28, 2143.00, '2023-12-07 16:14:45', '2023-12-07 16:14:45');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1274, 26, 29, 4113.00, '2023-12-07 16:14:45', '2023-12-07 16:14:45');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1275, 26, 30, 4660.00, '2023-12-07 16:14:45', '2023-12-07 16:14:45');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1276, 26, 31, 1805.00, '2023-12-07 16:14:45', '2023-12-07 16:14:45');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1277, 26, 32, 1875.00, '2023-12-07 16:14:45', '2023-12-07 16:14:45');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1278, 26, 33, 2561.00, '2023-12-07 16:14:45', '2023-12-07 16:14:45');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1279, 26, 34, 1892.00, '2023-12-07 16:14:45', '2023-12-07 16:14:45');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1280, 26, 35, 1703.00, '2023-12-07 16:14:45', '2023-12-07 16:14:45');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1281, 26, 36, 11370.00, '2023-12-07 16:14:45', '2023-12-07 16:14:45');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1282, 26, 37, 3636.00, '2023-12-07 16:14:45', '2023-12-07 16:14:45');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1283, 26, 38, 3824.00, '2023-12-07 16:14:45', '2023-12-07 16:14:45');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1284, 26, 39, 4448.00, '2023-12-07 16:14:45', '2023-12-07 16:14:45');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1285, 26, 40, 3555.00, '2023-12-07 16:14:45', '2023-12-07 16:14:45');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1286, 26, 41, 2610.00, '2023-12-07 16:14:45', '2023-12-07 16:14:45');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1287, 26, 42, 3441.00, '2023-12-07 16:14:45', '2023-12-07 16:14:45');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1288, 26, 43, 6075.00, '2023-12-07 16:14:45', '2023-12-07 16:14:45');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1289, 26, 44, 3241.00, '2023-12-07 16:14:45', '2023-12-07 16:14:45');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1290, 26, 45, 5103.00, '2023-12-07 16:14:45', '2023-12-07 16:16:07');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1291, 26, 46, 3954.00, '2023-12-07 16:14:45', '2023-12-07 16:16:07');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1292, 26, 47, 5800.00, '2023-12-07 16:14:45', '2023-12-07 16:16:07');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1293, 26, 50, 4829.00, '2023-12-07 16:14:45', '2023-12-07 16:16:07');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1294, 26, 52, 3033.00, '2023-12-07 16:14:45', '2023-12-07 16:16:07');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1295, 26, 53, 3090.00, '2023-12-07 16:14:45', '2023-12-07 16:16:07');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1296, 26, 54, 4489.00, '2023-12-07 16:14:45', '2023-12-07 16:16:07');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1297, 26, 56, 4151.00, '2023-12-07 16:14:45', '2023-12-07 16:16:07');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1298, 26, 58, 2598.00, '2023-12-07 16:14:45', '2023-12-07 16:16:07');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1299, 26, 59, 3366.00, '2023-12-07 16:14:45', '2023-12-07 16:16:07');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1300, 26, 60, 7658.00, '2023-12-07 16:14:45', '2023-12-07 16:16:07');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1301, 27, 3, 0.00, '2023-12-07 16:37:50', '2023-12-07 16:37:50');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1302, 27, 4, 0.00, '2023-12-07 16:37:50', '2023-12-07 16:37:50');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1303, 27, 5, 0.00, '2023-12-07 16:37:50', '2023-12-07 16:37:50');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1304, 27, 6, 0.00, '2023-12-07 16:37:50', '2023-12-07 16:37:50');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1305, 27, 7, 0.00, '2023-12-07 16:37:50', '2023-12-07 16:37:50');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1306, 27, 8, 2.00, '2023-12-07 16:37:50', '2023-12-07 16:37:50');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1307, 27, 9, 0.00, '2023-12-07 16:37:50', '2023-12-07 16:37:50');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1308, 27, 10, 0.00, '2023-12-07 16:37:50', '2023-12-07 16:37:50');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1309, 27, 11, 1.00, '2023-12-07 16:37:50', '2023-12-07 16:37:50');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1310, 27, 12, 0.00, '2023-12-07 16:37:50', '2023-12-07 16:37:50');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1311, 27, 13, 0.00, '2023-12-07 16:37:50', '2023-12-07 16:37:50');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1312, 27, 14, 1.00, '2023-12-07 16:37:50', '2023-12-07 16:37:50');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1313, 27, 15, 0.00, '2023-12-07 16:37:50', '2023-12-07 16:37:50');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1314, 27, 16, 4.00, '2023-12-07 16:37:50', '2023-12-07 16:37:50');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1315, 27, 17, 5.00, '2023-12-07 16:37:50', '2023-12-07 16:37:50');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1316, 27, 18, 3.00, '2023-12-07 16:37:50', '2023-12-07 16:37:50');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1317, 27, 19, 6.00, '2023-12-07 16:37:50', '2023-12-07 16:37:50');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1318, 27, 20, 1.00, '2023-12-07 16:37:50', '2023-12-07 16:37:50');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1319, 27, 21, 2.00, '2023-12-07 16:37:50', '2023-12-07 16:37:50');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1320, 27, 22, 0.00, '2023-12-07 16:37:50', '2023-12-07 16:37:50');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1321, 27, 23, 0.00, '2023-12-07 16:37:50', '2023-12-07 16:37:50');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1322, 27, 24, 8.00, '2023-12-07 16:37:50', '2023-12-07 16:37:50');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1323, 27, 25, 3.00, '2023-12-07 16:37:50', '2023-12-07 16:37:50');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1324, 27, 26, 1.00, '2023-12-07 16:37:50', '2023-12-07 16:37:50');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1325, 27, 28, 7.00, '2023-12-07 16:37:50', '2023-12-07 16:37:50');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1326, 27, 29, 2.00, '2023-12-07 16:37:50', '2023-12-07 16:37:50');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1327, 27, 30, 0.00, '2023-12-07 16:37:50', '2023-12-07 16:37:50');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1328, 27, 31, 2.00, '2023-12-07 16:37:50', '2023-12-07 16:49:49');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1329, 27, 32, 1.00, '2023-12-07 16:37:50', '2023-12-07 16:37:50');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1330, 27, 33, 5.00, '2023-12-07 16:37:50', '2023-12-07 16:37:50');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1331, 27, 34, 2.00, '2023-12-07 16:37:50', '2023-12-07 16:37:50');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1332, 27, 35, 0.00, '2023-12-07 16:37:50', '2023-12-07 16:37:50');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1333, 27, 36, 1.00, '2023-12-07 16:37:50', '2023-12-07 16:37:50');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1334, 27, 37, 1.00, '2023-12-07 16:37:50', '2023-12-07 16:37:50');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1335, 27, 38, 2.00, '2023-12-07 16:37:50', '2023-12-07 16:37:50');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1336, 27, 39, 0.00, '2023-12-07 16:37:50', '2023-12-07 16:37:50');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1337, 27, 40, 0.00, '2023-12-07 16:37:50', '2023-12-07 16:37:50');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1338, 27, 41, 1.00, '2023-12-07 16:37:50', '2023-12-07 16:37:50');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1339, 27, 42, 1.00, '2023-12-07 16:37:50', '2023-12-07 16:37:50');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1340, 27, 43, 0.00, '2023-12-07 16:37:50', '2023-12-07 16:49:49');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1341, 27, 44, 2.00, '2023-12-07 16:37:50', '2023-12-07 16:37:50');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1342, 27, 45, 0.00, '2023-12-07 16:37:50', '2023-12-07 16:37:50');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1343, 27, 46, 0.00, '2023-12-07 16:37:50', '2023-12-07 16:37:50');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1344, 27, 47, 2.00, '2023-12-07 16:37:50', '2023-12-07 16:37:50');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1345, 27, 50, 0.00, '2023-12-07 16:37:50', '2023-12-07 16:37:50');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1346, 27, 52, 0.00, '2023-12-07 16:37:50', '2023-12-07 16:37:50');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1347, 27, 53, 3.00, '2023-12-07 16:37:50', '2023-12-07 16:37:50');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1348, 27, 54, 2.00, '2023-12-07 16:37:50', '2023-12-07 16:37:50');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1349, 27, 56, 2.00, '2023-12-07 16:37:50', '2023-12-07 16:37:50');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1350, 27, 58, 4.00, '2023-12-07 16:37:50', '2023-12-07 16:49:49');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1351, 27, 59, 3.00, '2023-12-07 16:37:50', '2023-12-07 16:37:50');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1352, 27, 60, 1.00, '2023-12-07 16:37:50', '2023-12-07 16:37:50');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1353, 30, 3, 56.00, '2023-12-07 16:39:33', '2023-12-07 16:39:33');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1354, 30, 4, 593.00, '2023-12-07 16:39:33', '2023-12-07 16:39:33');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1355, 30, 5, 266.00, '2023-12-07 16:39:33', '2023-12-07 16:39:33');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1356, 30, 6, 594.00, '2023-12-07 16:39:33', '2023-12-07 16:39:33');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1357, 30, 7, 586.00, '2023-12-07 16:39:33', '2023-12-07 16:39:33');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1358, 30, 8, 228.00, '2023-12-07 16:39:33', '2023-12-07 16:39:33');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1359, 30, 9, 486.00, '2023-12-07 16:39:33', '2023-12-07 16:39:33');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1360, 30, 10, 1543.00, '2023-12-07 16:39:33', '2023-12-07 16:39:33');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1361, 30, 11, 315.00, '2023-12-07 16:39:33', '2023-12-07 16:39:33');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1362, 30, 12, 755.00, '2023-12-07 16:39:33', '2023-12-07 16:39:33');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1363, 30, 13, 642.00, '2023-12-07 16:39:33', '2023-12-07 16:39:33');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1364, 30, 14, 401.00, '2023-12-07 16:39:33', '2023-12-07 16:39:33');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1365, 30, 15, 184.00, '2023-12-07 16:39:33', '2023-12-07 16:39:33');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1366, 30, 16, 596.00, '2023-12-07 16:39:33', '2023-12-07 16:39:33');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1367, 30, 17, 125.00, '2023-12-07 16:39:33', '2023-12-07 16:39:33');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1368, 30, 18, 522.00, '2023-12-07 16:39:33', '2023-12-07 16:39:33');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1369, 30, 19, 698.00, '2023-12-07 16:39:33', '2023-12-07 16:39:33');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1370, 30, 20, 676.00, '2023-12-07 16:39:33', '2023-12-07 16:39:33');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1371, 30, 21, 314.00, '2023-12-07 16:39:33', '2023-12-07 16:39:33');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1372, 30, 22, 510.00, '2023-12-07 16:39:33', '2023-12-07 16:39:33');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1373, 30, 23, 99.00, '2023-12-07 16:39:33', '2023-12-07 16:39:33');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1374, 30, 24, 218.00, '2023-12-07 16:39:33', '2023-12-07 16:39:33');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1375, 30, 25, 745.00, '2023-12-07 16:39:33', '2023-12-07 16:39:33');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1376, 30, 26, 514.00, '2023-12-07 16:39:33', '2023-12-07 16:39:33');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1377, 30, 28, 233.00, '2023-12-07 16:39:33', '2023-12-07 16:39:33');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1378, 30, 29, 543.00, '2023-12-07 16:39:33', '2023-12-07 16:39:33');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1379, 30, 30, 606.00, '2023-12-07 16:39:33', '2023-12-07 16:39:33');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1380, 30, 31, 186.00, '2023-12-07 16:39:33', '2023-12-07 16:39:33');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1381, 30, 32, 178.00, '2023-12-07 16:39:33', '2023-12-07 16:39:33');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1382, 30, 33, 255.00, '2023-12-07 16:39:33', '2023-12-07 16:39:33');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1383, 30, 34, 188.00, '2023-12-07 16:39:33', '2023-12-07 16:39:33');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1384, 30, 35, 183.00, '2023-12-07 16:39:33', '2023-12-07 16:39:33');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1385, 30, 36, 1499.00, '2023-12-07 16:39:33', '2023-12-07 16:39:33');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1386, 30, 37, 360.00, '2023-12-07 16:39:33', '2023-12-07 16:39:33');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1387, 30, 38, 482.00, '2023-12-07 16:39:33', '2023-12-07 16:39:33');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1388, 30, 39, 520.00, '2023-12-07 16:39:33', '2023-12-07 16:39:33');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1389, 30, 40, 388.00, '2023-12-07 16:39:33', '2023-12-07 16:39:33');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1390, 30, 41, 202.00, '2023-12-07 16:39:33', '2023-12-07 16:39:33');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1391, 30, 42, 427.00, '2023-12-07 16:39:33', '2023-12-07 16:39:33');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1392, 30, 43, 804.00, '2023-12-07 16:39:33', '2023-12-07 16:39:33');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1393, 30, 44, 390.00, '2023-12-07 16:39:33', '2023-12-07 16:39:33');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1394, 30, 45, 772.00, '2023-12-07 16:39:33', '2023-12-07 16:39:33');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1395, 30, 46, 666.00, '2023-12-07 16:39:33', '2023-12-07 16:39:33');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1396, 30, 47, 805.00, '2023-12-07 16:39:33', '2023-12-07 16:39:33');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1397, 30, 50, 628.00, '2023-12-07 16:39:33', '2023-12-07 16:39:33');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1398, 30, 52, 406.00, '2023-12-07 16:39:33', '2023-12-07 16:39:33');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1399, 30, 53, 420.00, '2023-12-07 16:39:33', '2023-12-07 16:39:33');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1400, 30, 54, 282.00, '2023-12-07 16:39:33', '2023-12-07 16:39:33');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1401, 30, 56, 535.00, '2023-12-07 16:39:33', '2023-12-07 16:39:33');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1402, 30, 58, 310.00, '2023-12-07 16:39:33', '2023-12-07 16:39:33');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1403, 30, 59, 382.00, '2023-12-07 16:39:33', '2023-12-07 16:39:33');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1404, 30, 60, 924.00, '2023-12-07 16:39:33', '2023-12-07 16:39:33');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1405, 31, 3, 45.00, '2023-12-07 16:47:44', '2023-12-07 16:47:44');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1406, 31, 4, 355.00, '2023-12-07 16:47:44', '2023-12-07 16:47:44');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1407, 31, 5, 182.00, '2023-12-07 16:47:44', '2023-12-07 16:47:44');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1408, 31, 6, 343.00, '2023-12-07 16:47:44', '2023-12-07 16:47:44');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1409, 31, 7, 293.00, '2023-12-07 16:47:44', '2023-12-07 16:47:44');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1410, 31, 8, 136.00, '2023-12-07 16:47:44', '2023-12-07 16:47:44');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1411, 31, 9, 295.00, '2023-12-07 16:47:44', '2023-12-07 16:47:44');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1412, 31, 10, 914.00, '2023-12-07 16:47:44', '2023-12-07 16:47:44');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1413, 31, 11, 213.00, '2023-12-07 16:47:44', '2023-12-07 16:47:44');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1414, 31, 12, 461.00, '2023-12-07 16:47:44', '2023-12-07 16:47:44');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1415, 31, 13, 362.00, '2023-12-07 16:47:44', '2023-12-07 16:47:44');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1416, 31, 14, 233.00, '2023-12-07 16:47:44', '2023-12-07 16:47:44');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1417, 31, 15, 106.00, '2023-12-07 16:47:44', '2023-12-07 16:47:44');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1418, 31, 16, 353.00, '2023-12-07 16:47:44', '2023-12-07 16:47:44');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1419, 31, 17, 75.00, '2023-12-07 16:47:44', '2023-12-07 16:47:44');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1420, 31, 18, 303.00, '2023-12-07 16:47:44', '2023-12-07 16:47:44');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1421, 31, 19, 435.00, '2023-12-07 16:47:44', '2023-12-07 16:47:44');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1422, 31, 20, 382.00, '2023-12-07 16:47:44', '2023-12-07 16:47:44');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1423, 31, 21, 48.00, '2023-12-07 16:47:44', '2023-12-07 16:47:44');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1424, 31, 22, 304.00, '2023-12-07 16:47:44', '2023-12-07 16:47:44');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1425, 31, 23, 63.00, '2023-12-07 16:47:44', '2023-12-07 16:47:44');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1426, 31, 24, 123.00, '2023-12-07 16:47:44', '2023-12-07 16:47:44');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1427, 31, 25, 461.00, '2023-12-07 16:47:44', '2023-12-07 16:47:44');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1428, 31, 26, 327.00, '2023-12-07 16:47:44', '2023-12-07 16:47:44');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1429, 31, 28, 154.00, '2023-12-07 16:47:44', '2023-12-07 16:47:44');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1430, 31, 29, 338.00, '2023-12-07 16:47:44', '2023-12-07 16:47:44');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1431, 31, 30, 358.00, '2023-12-07 16:47:44', '2023-12-07 16:47:44');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1432, 31, 31, 105.00, '2023-12-07 16:47:44', '2023-12-07 16:47:44');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1433, 31, 32, 118.00, '2023-12-07 16:47:44', '2023-12-07 16:47:44');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1434, 31, 33, 147.00, '2023-12-07 16:47:44', '2023-12-07 16:47:44');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1435, 31, 34, 105.00, '2023-12-07 16:47:44', '2023-12-07 16:47:44');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1436, 31, 35, 108.00, '2023-12-07 16:47:44', '2023-12-07 16:47:44');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1437, 31, 36, 911.00, '2023-12-07 16:47:44', '2023-12-07 16:47:44');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1438, 31, 37, 226.00, '2023-12-07 16:47:44', '2023-12-07 16:47:44');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1439, 31, 38, 271.00, '2023-12-07 16:47:44', '2023-12-07 16:47:44');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1440, 31, 39, 276.00, '2023-12-07 16:47:44', '2023-12-07 16:47:44');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1441, 31, 40, 225.00, '2023-12-07 16:47:45', '2023-12-07 16:47:45');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1442, 31, 41, 138.00, '2023-12-07 16:47:45', '2023-12-07 16:47:45');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1443, 31, 42, 257.00, '2023-12-07 16:47:45', '2023-12-07 16:47:45');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1444, 31, 43, 478.00, '2023-12-07 16:47:45', '2023-12-07 16:47:45');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1445, 31, 44, 241.00, '2023-12-07 16:47:45', '2023-12-07 16:47:45');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1446, 31, 45, 495.00, '2023-12-07 16:47:45', '2023-12-07 16:47:45');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1447, 31, 46, 420.00, '2023-12-07 16:47:45', '2023-12-07 16:47:45');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1448, 31, 47, 472.00, '2023-12-07 16:47:45', '2023-12-07 16:47:45');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1449, 31, 50, 407.00, '2023-12-07 16:47:45', '2023-12-07 16:47:45');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1450, 31, 52, 250.00, '2023-12-07 16:47:45', '2023-12-07 16:47:45');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1451, 31, 53, 264.00, '2023-12-07 16:47:45', '2023-12-07 16:47:45');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1452, 31, 54, 191.00, '2023-12-07 16:47:45', '2023-12-07 16:47:45');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1453, 31, 56, 317.00, '2023-12-07 16:47:45', '2023-12-07 16:47:45');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1454, 31, 58, 201.00, '2023-12-07 16:47:45', '2023-12-07 16:47:45');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1455, 31, 59, 241.00, '2023-12-07 16:47:45', '2023-12-07 16:47:45');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1456, 31, 60, 560.00, '2023-12-07 16:47:45', '2023-12-07 16:47:45');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1457, 32, 3, 357.00, '2023-12-07 16:56:38', '2023-12-07 16:56:38');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1458, 32, 4, 2959.00, '2023-12-07 16:56:38', '2023-12-07 16:56:38');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1459, 32, 5, 1481.00, '2023-12-07 16:56:38', '2023-12-07 16:56:38');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1460, 32, 6, 2761.00, '2023-12-07 16:56:38', '2023-12-07 16:56:38');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1461, 32, 7, 2510.00, '2023-12-07 16:56:38', '2023-12-07 16:56:38');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1462, 32, 8, 1110.00, '2023-12-07 16:56:38', '2023-12-07 16:56:38');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1463, 32, 9, 2256.00, '2023-12-07 16:56:38', '2023-12-07 16:56:38');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1464, 32, 10, 6814.00, '2023-12-07 16:56:38', '2023-12-07 16:56:38');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1465, 32, 11, 1899.00, '2023-12-07 16:56:38', '2023-12-07 16:56:38');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1466, 32, 12, 3390.00, '2023-12-07 16:56:38', '2023-12-07 16:56:38');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1467, 32, 13, 3454.00, '2023-12-07 16:56:38', '2023-12-07 16:56:38');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1468, 32, 14, 1896.00, '2023-12-07 16:56:38', '2023-12-07 16:56:38');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1469, 32, 15, 1301.00, '2023-12-07 16:56:38', '2023-12-07 16:56:38');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1470, 32, 16, 2822.00, '2023-12-07 16:56:38', '2023-12-07 16:56:38');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1471, 32, 17, 677.00, '2023-12-07 16:56:38', '2023-12-07 16:56:38');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1472, 32, 18, 2432.00, '2023-12-07 16:56:38', '2023-12-07 16:56:38');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1473, 32, 19, 4216.00, '2023-12-07 16:56:38', '2023-12-07 16:56:38');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1474, 32, 20, 2844.00, '2023-12-07 16:56:38', '2023-12-07 16:56:38');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1475, 32, 21, 1612.00, '2023-12-07 16:56:38', '2023-12-07 16:56:38');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1476, 32, 22, 2176.00, '2023-12-07 16:56:38', '2023-12-07 16:56:38');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1477, 32, 23, 525.00, '2023-12-07 16:56:38', '2023-12-07 16:56:38');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1478, 32, 24, 837.00, '2023-12-07 16:56:38', '2023-12-07 16:56:38');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1479, 32, 25, 2892.00, '2023-12-07 16:56:38', '2023-12-07 16:56:38');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1480, 32, 26, 2476.00, '2023-12-07 16:56:38', '2023-12-07 16:56:38');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1481, 32, 28, 1073.00, '2023-12-07 16:56:38', '2023-12-07 16:56:38');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1482, 32, 29, 2265.00, '2023-12-07 16:56:38', '2023-12-07 16:56:38');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1483, 32, 30, 2707.00, '2023-12-07 16:56:38', '2023-12-07 16:56:38');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1484, 32, 31, 1105.00, '2023-12-07 16:56:38', '2023-12-07 16:56:38');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1485, 32, 32, 1124.00, '2023-12-07 16:56:38', '2023-12-07 16:56:38');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1486, 32, 33, 1488.00, '2023-12-07 16:56:38', '2023-12-07 16:56:38');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1487, 32, 34, 1125.00, '2023-12-07 16:56:38', '2023-12-07 16:56:38');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1488, 32, 35, 1094.00, '2023-12-07 16:56:38', '2023-12-07 16:56:38');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1489, 32, 36, 5959.00, '2023-12-07 16:56:38', '2023-12-07 16:56:38');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1490, 32, 37, 1671.00, '2023-12-07 16:56:38', '2023-12-07 16:56:38');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1491, 32, 38, 2137.00, '2023-12-07 16:56:38', '2023-12-07 16:56:38');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1492, 32, 39, 2441.00, '2023-12-07 16:56:38', '2023-12-07 16:56:38');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1493, 32, 40, 1893.00, '2023-12-07 16:56:38', '2023-12-07 16:56:38');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1494, 32, 41, 1198.00, '2023-12-07 16:56:38', '2023-12-07 16:56:38');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1495, 32, 42, 1952.00, '2023-12-07 16:56:38', '2023-12-07 16:56:38');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1496, 32, 43, 3381.00, '2023-12-07 16:56:38', '2023-12-07 16:56:38');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1497, 32, 44, 1681.00, '2023-12-07 16:56:38', '2023-12-07 16:56:38');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1498, 32, 45, 3045.00, '2023-12-07 16:56:38', '2023-12-07 16:56:38');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1499, 32, 46, 2512.00, '2023-12-07 16:56:38', '2023-12-07 16:56:38');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1500, 32, 47, 3297.00, '2023-12-07 16:56:38', '2023-12-07 16:56:38');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1501, 32, 50, 3138.00, '2023-12-07 16:56:38', '2023-12-07 16:56:38');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1502, 32, 52, 1775.00, '2023-12-07 16:56:38', '2023-12-07 16:56:38');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1503, 32, 53, 1905.00, '2023-12-07 16:56:38', '2023-12-07 16:56:38');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1504, 32, 54, 2233.00, '2023-12-07 16:56:38', '2023-12-07 16:56:38');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1505, 32, 56, 2488.00, '2023-12-07 16:56:38', '2023-12-07 16:56:38');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1506, 32, 58, 1391.00, '2023-12-07 16:56:38', '2023-12-07 16:56:38');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1507, 32, 59, 1866.00, '2023-12-07 16:56:38', '2023-12-07 16:56:38');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1508, 32, 60, 4447.00, '2023-12-07 16:56:38', '2023-12-07 16:56:38');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1509, 28, 3, 2.00, '2023-12-07 17:11:13', '2023-12-07 17:11:13');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1510, 28, 4, 0.00, '2023-12-07 17:11:13', '2023-12-07 17:11:13');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1511, 28, 5, 2.00, '2023-12-07 17:11:13', '2023-12-07 17:11:13');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1512, 28, 6, 2.00, '2023-12-07 17:11:13', '2023-12-07 17:11:13');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1513, 28, 7, 2.00, '2023-12-07 17:11:13', '2023-12-07 17:11:13');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1514, 28, 8, 2.00, '2023-12-07 17:11:13', '2023-12-07 17:11:13');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1515, 28, 9, 0.00, '2023-12-07 17:11:13', '2023-12-07 17:11:13');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1516, 28, 10, 0.00, '2023-12-07 17:11:13', '2023-12-07 17:11:13');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1517, 28, 11, 2.00, '2023-12-07 17:11:14', '2023-12-07 17:11:14');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1518, 28, 12, 0.00, '2023-12-07 17:11:14', '2023-12-07 17:11:14');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1519, 28, 13, 0.00, '2023-12-07 17:11:14', '2023-12-07 17:11:14');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1520, 28, 14, 6.00, '2023-12-07 17:11:14', '2023-12-07 17:11:14');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1521, 28, 15, 0.00, '2023-12-07 17:11:14', '2023-12-07 17:11:14');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1522, 28, 16, 4.00, '2023-12-07 17:11:14', '2023-12-07 17:11:14');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1523, 28, 17, 19.00, '2023-12-07 17:11:14', '2023-12-07 17:11:14');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1524, 28, 18, 6.00, '2023-12-07 17:11:14', '2023-12-07 17:11:14');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1525, 28, 19, 9.00, '2023-12-07 17:11:14', '2023-12-07 17:11:14');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1526, 28, 20, 3.00, '2023-12-07 17:11:14', '2023-12-07 17:11:14');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1527, 28, 21, 3.00, '2023-12-07 17:11:14', '2023-12-07 17:11:14');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1528, 28, 22, 3.00, '2023-12-07 17:11:14', '2023-12-07 17:11:14');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1529, 28, 23, 0.00, '2023-12-07 17:11:14', '2023-12-07 17:11:14');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1530, 28, 24, 11.00, '2023-12-07 17:11:14', '2023-12-07 17:11:14');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1531, 28, 25, 5.00, '2023-12-07 17:11:14', '2023-12-07 17:11:14');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1532, 28, 26, 7.00, '2023-12-07 17:11:14', '2023-12-07 17:11:14');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1533, 28, 28, 1.00, '2023-12-07 17:11:14', '2023-12-07 17:11:14');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1534, 28, 29, 2.00, '2023-12-07 17:11:14', '2023-12-07 17:11:14');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1535, 28, 30, 2.00, '2023-12-07 17:11:14', '2023-12-07 17:11:14');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1536, 28, 31, 2.00, '2023-12-07 17:11:14', '2023-12-07 17:11:14');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1537, 28, 32, 3.00, '2023-12-07 17:11:14', '2023-12-07 17:11:14');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1538, 28, 33, 22.00, '2023-12-07 17:11:14', '2023-12-07 17:11:14');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1539, 28, 34, 8.00, '2023-12-07 17:11:14', '2023-12-07 17:11:14');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1540, 28, 35, 1.00, '2023-12-07 17:11:14', '2023-12-07 17:11:14');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1541, 28, 36, 1.00, '2023-12-07 17:11:14', '2023-12-07 17:11:14');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1542, 28, 37, 1.00, '2023-12-07 17:11:14', '2023-12-07 17:11:14');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1543, 28, 38, 3.00, '2023-12-07 17:11:14', '2023-12-07 17:11:14');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1544, 28, 39, 0.00, '2023-12-07 17:11:14', '2023-12-07 17:11:14');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1545, 28, 40, 2.00, '2023-12-07 17:11:14', '2023-12-07 17:11:14');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1546, 28, 41, 0.00, '2023-12-07 17:11:14', '2023-12-07 17:11:14');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1547, 28, 42, 1.00, '2023-12-07 17:11:14', '2023-12-07 17:11:14');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1548, 28, 43, 2.00, '2023-12-07 17:11:14', '2023-12-07 17:11:14');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1549, 28, 44, 5.00, '2023-12-07 17:11:14', '2023-12-07 17:11:14');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1550, 28, 45, 5.00, '2023-12-07 17:11:14', '2023-12-07 17:11:14');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1551, 28, 46, 0.00, '2023-12-07 17:11:14', '2023-12-07 17:11:14');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1552, 28, 47, 0.00, '2023-12-07 17:11:14', '2023-12-07 17:11:14');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1553, 28, 50, 0.00, '2023-12-07 17:11:14', '2023-12-07 17:11:14');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1554, 28, 52, 2.00, '2023-12-07 17:11:14', '2023-12-07 17:11:14');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1555, 28, 53, 3.00, '2023-12-07 17:11:14', '2023-12-07 17:11:14');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1556, 28, 54, 2.00, '2023-12-07 17:11:14', '2023-12-07 17:11:14');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1557, 28, 56, 0.00, '2023-12-07 17:11:14', '2023-12-07 17:11:14');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1558, 28, 58, 6.00, '2023-12-07 17:11:14', '2023-12-07 17:11:14');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1559, 28, 59, 2.00, '2023-12-07 17:11:14', '2023-12-07 17:11:14');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1560, 28, 60, 0.00, '2023-12-07 17:11:14', '2023-12-07 17:11:14');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1561, 29, 3, 3.00, '2023-12-07 17:20:30', '2023-12-07 17:20:30');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1562, 29, 4, 1.00, '2023-12-07 17:20:30', '2023-12-07 17:20:30');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1563, 29, 5, 1.00, '2023-12-07 17:20:30', '2023-12-07 17:20:30');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1564, 29, 6, 0.00, '2023-12-07 17:20:30', '2023-12-07 17:20:30');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1565, 29, 7, 1.00, '2023-12-07 17:20:30', '2023-12-07 17:20:30');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1566, 29, 8, 2.00, '2023-12-07 17:20:30', '2023-12-07 17:20:30');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1567, 29, 9, 1.00, '2023-12-07 17:20:30', '2023-12-07 17:20:30');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1568, 29, 10, 2.00, '2023-12-07 17:20:30', '2023-12-07 17:20:30');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1569, 29, 11, 2.00, '2023-12-07 17:20:30', '2023-12-07 17:20:30');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1570, 29, 12, 0.00, '2023-12-07 17:20:30', '2023-12-07 17:20:30');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1571, 29, 13, 0.00, '2023-12-07 17:20:30', '2023-12-07 17:20:30');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1572, 29, 14, 2.00, '2023-12-07 17:20:30', '2023-12-07 17:20:30');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1573, 29, 15, 1.00, '2023-12-07 17:20:30', '2023-12-07 17:20:30');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1574, 29, 16, 3.00, '2023-12-07 17:20:30', '2023-12-07 17:20:30');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1575, 29, 17, 6.00, '2023-12-07 17:20:30', '2023-12-07 17:20:30');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1576, 29, 18, 10.00, '2023-12-07 17:20:30', '2023-12-07 17:20:30');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1577, 29, 19, 8.00, '2023-12-07 17:20:30', '2023-12-07 17:20:30');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1578, 29, 20, 3.00, '2023-12-07 17:20:30', '2023-12-07 17:20:30');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1579, 29, 21, 3.00, '2023-12-07 17:20:30', '2023-12-07 17:20:30');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1580, 29, 22, 3.00, '2023-12-07 17:20:30', '2023-12-07 17:20:30');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1581, 29, 23, 2.00, '2023-12-07 17:20:30', '2023-12-07 17:20:30');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1582, 29, 24, 4.00, '2023-12-07 17:20:30', '2023-12-07 17:20:30');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1583, 29, 25, 1.00, '2023-12-07 17:20:30', '2023-12-07 17:20:30');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1584, 29, 26, 3.00, '2023-12-07 17:20:30', '2023-12-07 17:20:30');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1585, 29, 28, 7.00, '2023-12-07 17:20:30', '2023-12-07 17:20:30');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1586, 29, 29, 1.00, '2023-12-07 17:20:30', '2023-12-07 17:20:30');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1587, 29, 30, 4.00, '2023-12-07 17:20:30', '2023-12-07 17:20:30');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1588, 29, 31, 2.00, '2023-12-07 17:20:30', '2023-12-07 17:20:30');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1589, 29, 32, 5.00, '2023-12-07 17:20:30', '2023-12-07 17:20:30');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1590, 29, 33, 6.00, '2023-12-07 17:20:30', '2023-12-07 17:20:30');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1591, 29, 34, 3.00, '2023-12-07 17:20:30', '2023-12-07 17:20:30');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1592, 29, 35, 4.00, '2023-12-07 17:20:30', '2023-12-07 17:20:30');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1593, 29, 36, 1.00, '2023-12-07 17:20:30', '2023-12-07 17:20:30');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1594, 29, 37, 2.00, '2023-12-07 17:20:30', '2023-12-07 17:20:30');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1595, 29, 38, 3.00, '2023-12-07 17:20:30', '2023-12-07 17:20:30');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1596, 29, 39, 0.00, '2023-12-07 17:20:30', '2023-12-07 17:20:30');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1597, 29, 40, 2.00, '2023-12-07 17:20:30', '2023-12-07 17:20:30');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1598, 29, 41, 2.00, '2023-12-07 17:20:30', '2023-12-07 17:20:30');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1599, 29, 42, 2.00, '2023-12-07 17:20:30', '2023-12-07 17:20:30');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1600, 29, 43, 1.00, '2023-12-07 17:20:30', '2023-12-07 17:20:30');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1601, 29, 44, 8.00, '2023-12-07 17:20:30', '2023-12-07 17:20:30');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1602, 29, 45, 1.00, '2023-12-07 17:20:30', '2023-12-07 17:20:30');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1603, 29, 46, 0.00, '2023-12-07 17:20:30', '2023-12-07 17:20:30');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1604, 29, 47, 2.00, '2023-12-07 17:20:30', '2023-12-07 17:20:30');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1605, 29, 50, 2.00, '2023-12-07 17:20:30', '2023-12-07 17:20:30');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1606, 29, 52, 3.00, '2023-12-07 17:20:30', '2023-12-07 17:20:30');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1607, 29, 53, 4.00, '2023-12-07 17:20:30', '2023-12-07 17:20:30');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1608, 29, 54, 9.00, '2023-12-07 17:20:30', '2023-12-07 17:20:30');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1609, 29, 56, 3.00, '2023-12-07 17:20:30', '2023-12-07 17:20:30');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1610, 29, 58, 7.00, '2023-12-07 17:20:30', '2023-12-07 17:20:30');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1611, 29, 59, 6.00, '2023-12-07 17:20:30', '2023-12-07 17:20:30');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1612, 29, 60, 0.00, '2023-12-07 17:20:30', '2023-12-07 17:20:30');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1613, 18, 3, 889.00, '2023-12-08 10:44:24', '2023-12-08 10:44:24');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1614, 18, 4, 8670.00, '2023-12-08 10:44:24', '2023-12-08 10:44:24');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1615, 18, 5, 3172.00, '2023-12-08 10:44:24', '2023-12-08 10:44:24');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1616, 18, 6, 5357.00, '2023-12-08 10:44:24', '2023-12-08 10:44:24');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1617, 18, 7, 6947.00, '2023-12-08 10:44:24', '2023-12-08 10:44:24');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1618, 18, 8, 3209.00, '2023-12-08 10:44:24', '2023-12-08 10:44:24');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1619, 18, 9, 4030.00, '2023-12-08 10:44:24', '2023-12-08 10:44:24');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1620, 18, 10, 10633.00, '2023-12-08 10:44:24', '2023-12-08 10:44:24');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1621, 18, 11, 3487.00, '2023-12-08 10:44:24', '2023-12-08 10:44:24');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1622, 18, 12, 7939.00, '2023-12-08 10:44:24', '2023-12-08 10:44:24');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1623, 18, 13, 7103.00, '2023-12-08 10:44:24', '2023-12-08 10:44:24');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1624, 18, 14, 4646.00, '2023-12-08 10:44:24', '2023-12-08 10:44:24');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1625, 18, 15, 2520.00, '2023-12-08 10:44:24', '2023-12-08 10:44:24');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1626, 18, 16, 8194.00, '2023-12-08 10:44:24', '2023-12-08 10:44:24');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1627, 18, 17, 2697.00, '2023-12-08 10:44:24', '2023-12-08 10:44:24');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1628, 18, 18, 11649.00, '2023-12-08 10:44:24', '2023-12-08 10:44:24');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1629, 18, 19, 13816.00, '2023-12-08 10:44:24', '2023-12-08 10:44:24');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1630, 18, 20, 5877.00, '2023-12-08 10:44:24', '2023-12-08 10:44:24');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1631, 18, 21, 4559.00, '2023-12-08 10:44:24', '2023-12-08 10:44:24');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1632, 18, 22, 6814.00, '2023-12-08 10:44:24', '2023-12-08 10:44:24');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1633, 18, 23, 1513.00, '2023-12-08 10:44:24', '2023-12-08 10:44:24');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1634, 18, 24, 6510.00, '2023-12-08 10:44:24', '2023-12-08 10:44:24');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1635, 18, 25, 7857.00, '2023-12-08 10:44:24', '2023-12-08 10:44:24');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1636, 18, 26, 8700.00, '2023-12-08 10:44:24', '2023-12-08 10:44:24');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1637, 18, 28, 6337.00, '2023-12-08 10:44:24', '2023-12-08 10:44:24');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1638, 18, 29, 6294.00, '2023-12-08 10:44:24', '2023-12-08 10:44:24');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1639, 18, 30, 5358.00, '2023-12-08 10:44:24', '2023-12-08 10:44:24');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1640, 18, 31, 2791.00, '2023-12-08 10:44:24', '2023-12-08 10:44:24');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1641, 18, 32, 3354.00, '2023-12-08 10:44:24', '2023-12-08 10:44:24');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1642, 18, 33, 4565.00, '2023-12-08 10:44:24', '2023-12-08 10:44:24');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1643, 18, 34, 3039.00, '2023-12-08 10:44:24', '2023-12-08 10:44:24');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1644, 18, 35, 2958.00, '2023-12-08 10:44:24', '2023-12-08 10:44:24');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1645, 18, 36, 12963.00, '2023-12-08 10:44:24', '2023-12-08 10:44:24');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1646, 18, 37, 7808.00, '2023-12-08 10:44:24', '2023-12-08 10:44:24');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1647, 18, 38, 5440.00, '2023-12-08 10:44:24', '2023-12-08 10:44:24');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1648, 18, 39, 5878.00, '2023-12-08 10:44:24', '2023-12-08 10:44:24');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1649, 18, 40, 7225.00, '2023-12-08 10:44:24', '2023-12-08 10:44:24');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1650, 18, 41, 3728.00, '2023-12-08 10:44:25', '2023-12-08 10:44:25');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1651, 18, 42, 5710.00, '2023-12-08 10:44:25', '2023-12-08 10:44:25');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1652, 18, 43, 8909.00, '2023-12-08 10:44:25', '2023-12-08 10:44:25');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1653, 18, 44, 9184.00, '2023-12-08 10:44:25', '2023-12-08 10:44:25');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1654, 18, 45, 7052.00, '2023-12-08 10:44:25', '2023-12-08 10:44:25');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1655, 18, 46, 4980.00, '2023-12-08 10:44:25', '2023-12-08 10:44:25');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1656, 18, 47, 10789.00, '2023-12-08 10:44:25', '2023-12-08 10:44:25');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1657, 18, 50, 5266.00, '2023-12-08 10:44:25', '2023-12-08 10:44:25');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1658, 18, 52, 6110.00, '2023-12-08 10:44:25', '2023-12-08 10:44:25');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1659, 18, 53, 4770.00, '2023-12-08 10:44:25', '2023-12-08 10:44:25');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1660, 18, 54, 16082.00, '2023-12-08 10:44:25', '2023-12-08 10:44:25');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1661, 18, 56, 6502.00, '2023-12-08 10:44:25', '2023-12-08 10:44:25');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1662, 18, 58, 7266.00, '2023-12-08 10:44:25', '2023-12-08 10:44:25');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1663, 18, 59, 8287.00, '2023-12-08 10:44:25', '2023-12-08 10:44:25');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1664, 18, 60, 11115.00, '2023-12-08 10:44:25', '2023-12-08 10:44:25');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1665, 19, 3, 910.00, '2023-12-08 11:01:50', '2023-12-08 11:01:50');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1666, 19, 4, 8308.00, '2023-12-08 11:01:50', '2023-12-08 11:01:50');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1667, 19, 5, 3153.00, '2023-12-08 11:01:50', '2023-12-08 11:01:50');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1668, 19, 6, 5192.00, '2023-12-08 11:01:50', '2023-12-08 11:01:50');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1669, 19, 7, 6894.00, '2023-12-08 11:01:50', '2023-12-08 11:01:50');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1670, 19, 8, 3364.00, '2023-12-08 11:01:50', '2023-12-08 11:01:50');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1671, 19, 9, 3813.00, '2023-12-08 11:01:50', '2023-12-08 11:01:50');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1672, 19, 10, 10235.00, '2023-12-08 11:01:50', '2023-12-08 11:01:50');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1673, 19, 11, 3396.00, '2023-12-08 11:01:50', '2023-12-08 11:01:50');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1674, 19, 12, 7597.00, '2023-12-08 11:01:50', '2023-12-08 11:01:50');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1675, 19, 13, 6780.00, '2023-12-08 11:01:50', '2023-12-08 11:01:50');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1676, 19, 14, 4676.00, '2023-12-08 11:01:50', '2023-12-08 11:01:50');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1677, 19, 15, 2519.00, '2023-12-08 11:01:50', '2023-12-08 11:01:50');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1678, 19, 16, 8317.00, '2023-12-08 11:01:50', '2023-12-08 11:01:50');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1679, 19, 17, 2847.00, '2023-12-08 11:01:50', '2023-12-08 11:01:50');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1680, 19, 18, 11976.00, '2023-12-08 11:01:50', '2023-12-08 11:01:50');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1681, 19, 19, 14102.00, '2023-12-08 11:01:50', '2023-12-08 11:01:50');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1682, 19, 20, 5721.00, '2023-12-08 11:01:50', '2023-12-08 11:01:50');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1683, 19, 21, 4452.00, '2023-12-08 11:01:50', '2023-12-08 11:01:50');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1684, 19, 22, 6833.00, '2023-12-08 11:01:50', '2023-12-08 11:01:50');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1685, 19, 23, 1516.00, '2023-12-08 11:01:50', '2023-12-08 11:01:50');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1686, 19, 24, 6772.00, '2023-12-08 11:01:50', '2023-12-08 11:01:50');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1687, 19, 25, 8058.00, '2023-12-08 11:01:50', '2023-12-08 11:01:50');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1688, 19, 26, 8739.00, '2023-12-08 11:01:50', '2023-12-08 11:01:50');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1689, 19, 28, 6583.00, '2023-12-08 11:01:50', '2023-12-08 11:01:50');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1690, 19, 29, 6502.00, '2023-12-08 11:01:50', '2023-12-08 11:01:50');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1691, 19, 30, 5556.00, '2023-12-08 11:01:50', '2023-12-08 11:01:50');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1692, 19, 31, 2734.00, '2023-12-08 11:01:50', '2023-12-08 11:01:50');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1693, 19, 32, 3494.00, '2023-12-08 11:01:50', '2023-12-08 11:01:50');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1694, 19, 33, 4462.00, '2023-12-08 11:01:50', '2023-12-08 11:01:50');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1695, 19, 34, 3196.00, '2023-12-08 11:01:50', '2023-12-08 11:01:50');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1696, 19, 35, 2976.00, '2023-12-08 11:01:50', '2023-12-08 11:01:50');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1697, 19, 36, 12880.00, '2023-12-08 11:01:50', '2023-12-08 11:01:50');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1698, 19, 37, 8055.00, '2023-12-08 11:01:50', '2023-12-08 11:01:50');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1699, 19, 38, 5318.00, '2023-12-08 11:01:50', '2023-12-08 11:01:50');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1700, 19, 39, 5812.00, '2023-12-08 11:01:50', '2023-12-08 11:01:50');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1701, 19, 40, 7485.00, '2023-12-08 11:01:50', '2023-12-08 11:01:50');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1702, 19, 41, 3723.00, '2023-12-08 11:01:50', '2023-12-08 11:01:50');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1703, 19, 42, 5835.00, '2023-12-08 11:01:50', '2023-12-08 11:01:50');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1704, 19, 43, 8751.00, '2023-12-08 11:01:50', '2023-12-08 11:01:50');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1705, 19, 44, 9301.00, '2023-12-08 11:01:50', '2023-12-08 11:01:50');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1706, 19, 45, 6883.00, '2023-12-08 11:01:50', '2023-12-08 11:01:50');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1707, 19, 46, 4867.00, '2023-12-08 11:01:50', '2023-12-08 11:01:50');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1708, 19, 47, 11054.00, '2023-12-08 11:01:50', '2023-12-08 11:01:50');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1709, 19, 50, 5197.00, '2023-12-08 11:01:50', '2023-12-08 11:01:50');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1710, 19, 52, 6010.00, '2023-12-08 11:01:50', '2023-12-08 11:01:50');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1711, 19, 53, 4988.00, '2023-12-08 11:01:50', '2023-12-08 11:01:50');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1712, 19, 54, 15912.00, '2023-12-08 11:01:50', '2023-12-08 11:01:50');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1713, 19, 56, 6465.00, '2023-12-08 11:01:50', '2023-12-08 11:01:50');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1714, 19, 58, 7528.00, '2023-12-08 11:01:50', '2023-12-08 11:01:50');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1715, 19, 59, 8579.00, '2023-12-08 11:01:50', '2023-12-08 11:01:50');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1716, 19, 60, 10650.00, '2023-12-08 11:01:50', '2023-12-08 11:01:50');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1717, 33, 3, 576.00, '2023-12-08 11:04:42', '2023-12-08 11:04:42');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1718, 33, 4, 1436.00, '2023-12-08 11:04:42', '2023-12-08 11:04:42');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1719, 33, 5, 1098.00, '2023-12-08 11:04:42', '2023-12-08 11:04:42');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1720, 33, 6, 1060.00, '2023-12-08 11:04:42', '2023-12-08 11:04:42');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1721, 33, 7, 1013.00, '2023-12-08 11:04:42', '2023-12-08 11:04:42');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1722, 33, 8, 1544.00, '2023-12-08 11:04:42', '2023-12-08 11:04:42');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1723, 33, 9, 247.00, '2023-12-08 11:04:42', '2023-12-08 11:04:42');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1724, 33, 10, 2111.00, '2023-12-08 11:04:42', '2023-12-08 11:04:42');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1725, 33, 11, 793.00, '2023-12-08 11:04:42', '2023-12-08 11:04:42');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1726, 33, 12, 946.00, '2023-12-08 11:04:42', '2023-12-08 11:04:42');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1727, 33, 13, 1001.00, '2023-12-08 11:04:42', '2023-12-08 11:04:42');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1728, 33, 14, 429.00, '2023-12-08 11:04:42', '2023-12-08 11:04:42');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1729, 33, 15, 0.00, '2023-12-08 11:04:42', '2023-12-08 11:04:42');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1730, 33, 16, 1905.00, '2023-12-08 11:04:42', '2023-12-08 11:04:42');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1731, 33, 17, 1467.00, '2023-12-08 11:04:42', '2023-12-08 11:04:42');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1732, 33, 18, 2197.00, '2023-12-08 11:04:42', '2023-12-08 11:04:42');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1733, 33, 19, 1769.00, '2023-12-08 11:04:42', '2023-12-08 11:04:42');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1734, 33, 20, 623.00, '2023-12-08 11:04:42', '2023-12-08 11:04:42');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1735, 33, 21, 559.00, '2023-12-08 11:04:42', '2023-12-08 11:04:42');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1736, 33, 22, 1483.00, '2023-12-08 11:04:42', '2023-12-08 11:04:42');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1737, 33, 23, 0.00, '2023-12-08 11:04:42', '2023-12-08 11:04:42');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1738, 33, 24, 1327.00, '2023-12-08 11:04:42', '2023-12-08 11:04:42');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1739, 33, 25, 1319.00, '2023-12-08 11:04:42', '2023-12-08 11:04:42');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1740, 33, 26, 610.00, '2023-12-08 11:04:42', '2023-12-08 11:04:42');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1741, 33, 28, 249.00, '2023-12-08 11:04:42', '2023-12-08 11:04:42');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1742, 33, 29, 1286.00, '2023-12-08 11:04:42', '2023-12-08 11:04:42');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1743, 33, 30, 464.00, '2023-12-08 11:04:42', '2023-12-08 11:04:42');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1744, 33, 31, 60.00, '2023-12-08 11:04:42', '2023-12-08 11:04:42');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1745, 33, 32, 1012.00, '2023-12-08 11:04:42', '2023-12-08 11:04:42');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1746, 33, 33, 1007.00, '2023-12-08 11:04:42', '2023-12-08 11:04:42');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1747, 33, 34, 732.00, '2023-12-08 11:04:42', '2023-12-08 11:04:42');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1748, 33, 35, 0.00, '2023-12-08 11:04:42', '2023-12-08 11:04:42');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1749, 33, 36, 1214.00, '2023-12-08 11:04:42', '2023-12-08 11:04:42');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1750, 33, 37, 1463.00, '2023-12-08 11:04:42', '2023-12-08 11:04:42');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1751, 33, 38, 522.00, '2023-12-08 11:04:42', '2023-12-08 11:04:42');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1752, 33, 39, 1190.00, '2023-12-08 11:04:42', '2023-12-08 11:04:42');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1753, 33, 40, 1193.00, '2023-12-08 11:04:42', '2023-12-08 11:04:42');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1754, 33, 41, 397.00, '2023-12-08 11:04:42', '2023-12-08 11:04:42');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1755, 33, 42, 698.00, '2023-12-08 11:04:42', '2023-12-08 11:04:42');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1756, 33, 43, 859.00, '2023-12-08 11:04:42', '2023-12-08 11:04:42');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1757, 33, 44, 1675.00, '2023-12-08 11:04:42', '2023-12-08 11:04:42');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1758, 33, 45, 648.00, '2023-12-08 11:04:42', '2023-12-08 11:04:42');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1759, 33, 46, 678.00, '2023-12-08 11:04:42', '2023-12-08 11:04:42');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1760, 33, 47, 939.00, '2023-12-08 11:04:42', '2023-12-08 11:04:42');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1761, 33, 50, 725.00, '2023-12-08 11:04:42', '2023-12-08 11:04:42');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1762, 33, 52, 1123.00, '2023-12-08 11:04:42', '2023-12-08 11:04:42');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1763, 33, 53, 308.00, '2023-12-08 11:04:42', '2023-12-08 11:04:42');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1764, 33, 54, 2269.00, '2023-12-08 11:04:42', '2023-12-08 11:04:42');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1765, 33, 56, 1144.00, '2023-12-08 11:04:42', '2023-12-08 11:04:42');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1766, 33, 58, 1613.00, '2023-12-08 11:04:42', '2023-12-08 11:04:42');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1767, 33, 59, 1440.00, '2023-12-08 11:04:42', '2023-12-08 11:04:42');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1768, 33, 60, 1135.00, '2023-12-08 11:04:42', '2023-12-08 11:04:42');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1769, 21, 3, 0.45, '2023-12-08 14:16:56', '2023-12-08 14:16:56');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1770, 21, 4, 8.73, '2023-12-08 14:16:56', '2023-12-08 14:16:56');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1771, 21, 5, 0.29, '2023-12-08 14:16:56', '2023-12-08 14:16:56');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1772, 21, 6, 0.35, '2023-12-08 14:16:56', '2023-12-08 14:16:56');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1773, 21, 7, 1.78, '2023-12-08 14:16:56', '2023-12-08 14:16:56');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1774, 21, 8, 0.61, '2023-12-08 14:16:56', '2023-12-08 14:16:56');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1775, 21, 9, 0.19, '2023-12-08 14:16:57', '2023-12-08 14:16:57');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1776, 21, 10, 4.83, '2023-12-08 14:16:57', '2023-12-08 14:16:57');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1777, 21, 11, 0.30, '2023-12-08 14:16:57', '2023-12-08 14:16:57');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1778, 21, 12, 11.40, '2023-12-08 14:16:57', '2023-12-08 14:16:57');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1779, 21, 13, 0.66, '2023-12-08 14:16:57', '2023-12-08 14:16:57');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1780, 21, 14, 0.36, '2023-12-08 14:16:57', '2023-12-08 14:16:57');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1781, 21, 15, 0.22, '2023-12-08 14:16:57', '2023-12-08 14:16:57');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1782, 21, 16, 1.42, '2023-12-08 14:16:57', '2023-12-08 14:16:57');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1783, 21, 17, 0.47, '2023-12-08 14:16:57', '2023-12-08 14:16:57');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1784, 21, 18, 4.23, '2023-12-08 14:16:57', '2023-12-08 14:16:57');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1785, 21, 19, 1.78, '2023-12-08 14:16:57', '2023-12-08 14:16:57');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1786, 21, 20, 4.02, '2023-12-08 14:16:57', '2023-12-08 14:16:57');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1787, 21, 21, 6.38, '2023-12-08 14:16:57', '2023-12-08 14:16:57');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1788, 21, 22, 0.76, '2023-12-08 14:16:57', '2023-12-08 14:16:57');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1789, 21, 23, 0.47, '2023-12-08 14:16:57', '2023-12-08 14:16:57');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1790, 21, 24, 1.30, '2023-12-08 14:16:57', '2023-12-08 14:16:57');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1791, 21, 25, 1.52, '2023-12-08 14:16:57', '2023-12-08 14:16:57');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1792, 21, 26, 0.96, '2023-12-08 14:16:57', '2023-12-08 14:16:57');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1793, 21, 28, 2.45, '2023-12-08 14:16:57', '2023-12-08 14:16:57');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1794, 21, 29, 1.21, '2023-12-08 14:16:57', '2023-12-08 14:16:57');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1795, 21, 30, 0.66, '2023-12-08 14:16:57', '2023-12-08 14:16:57');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1796, 21, 31, 0.22, '2023-12-08 14:16:57', '2023-12-08 14:16:57');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1797, 21, 32, 0.47, '2023-12-08 14:16:57', '2023-12-08 14:16:57');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1798, 21, 33, 0.61, '2023-12-08 14:16:57', '2023-12-08 14:16:57');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1799, 21, 34, 0.41, '2023-12-08 14:16:57', '2023-12-08 14:16:57');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1800, 21, 35, 0.46, '2023-12-08 14:16:57', '2023-12-08 14:16:57');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1801, 21, 36, 2.12, '2023-12-08 14:16:57', '2023-12-08 14:16:57');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1802, 21, 37, 1.53, '2023-12-08 14:16:57', '2023-12-08 14:16:57');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1803, 21, 38, 0.68, '2023-12-08 14:16:57', '2023-12-08 14:16:57');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1804, 21, 39, 0.57, '2023-12-08 14:16:57', '2023-12-08 14:16:57');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1805, 21, 40, 0.70, '2023-12-08 14:16:57', '2023-12-08 14:16:57');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1806, 21, 41, 0.74, '2023-12-08 14:16:57', '2023-12-08 14:16:57');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1807, 21, 42, 1.72, '2023-12-08 14:16:57', '2023-12-08 14:16:57');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1808, 21, 43, 1.66, '2023-12-08 14:16:57', '2023-12-08 14:16:57');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1809, 21, 44, 8.63, '2023-12-08 14:16:57', '2023-12-08 14:16:57');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1810, 21, 45, 1.59, '2023-12-08 14:16:57', '2023-12-08 14:16:57');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1811, 21, 46, 0.93, '2023-12-08 14:16:57', '2023-12-08 14:16:57');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1812, 21, 47, 3.30, '2023-12-08 14:16:57', '2023-12-08 14:16:57');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1813, 21, 50, 0.52, '2023-12-08 14:16:57', '2023-12-08 14:16:57');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1814, 21, 52, 1.05, '2023-12-08 14:16:57', '2023-12-08 14:16:57');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1815, 21, 53, 1.90, '2023-12-08 14:16:57', '2023-12-08 14:16:57');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1816, 21, 54, 6.64, '2023-12-08 14:16:57', '2023-12-08 14:16:57');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1817, 21, 56, 4.50, '2023-12-08 14:16:57', '2023-12-08 14:16:57');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1818, 21, 58, 1.80, '2023-12-08 14:16:57', '2023-12-08 14:16:57');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1819, 21, 59, 2.05, '2023-12-08 14:16:57', '2023-12-08 14:16:57');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1820, 21, 60, 3.65, '2023-12-08 14:16:57', '2023-12-08 14:16:57');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1821, 20, 3, 2272.73, '2023-12-08 14:24:43', '2023-12-08 14:24:43');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1822, 20, 4, 1958.47, '2023-12-08 14:24:43', '2023-12-08 14:24:43');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1823, 20, 5, 21368.24, '2023-12-08 14:24:43', '2023-12-08 14:24:43');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1824, 20, 6, 30226.36, '2023-12-08 14:24:43', '2023-12-08 14:24:43');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1825, 20, 7, 12640.18, '2023-12-08 14:24:43', '2023-12-08 14:24:43');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1826, 20, 8, 12031.31, '2023-12-08 14:24:43', '2023-12-08 14:24:43');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1827, 20, 9, 40015.31, '2023-12-08 14:24:43', '2023-12-08 14:24:43');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1828, 20, 10, 4377.60, '2023-12-08 14:24:43', '2023-12-08 14:24:43');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1829, 20, 11, 23731.29, '2023-12-08 14:24:43', '2023-12-08 14:24:43');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1830, 20, 12, 1269.70, '2023-12-08 14:24:43', '2023-12-08 14:24:43');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1831, 20, 13, 20939.67, '2023-12-08 14:24:43', '2023-12-08 14:24:43');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1832, 20, 14, 24991.96, '2023-12-08 14:24:43', '2023-12-08 14:24:43');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1833, 20, 15, 10960.00, '2023-12-08 14:24:43', '2023-12-08 14:24:43');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1834, 20, 16, 11434.21, '2023-12-08 14:24:43', '2023-12-08 14:24:43');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1835, 20, 17, 11650.10, '2023-12-08 14:24:43', '2023-12-08 14:24:43');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1836, 20, 18, 5486.53, '2023-12-08 14:24:43', '2023-12-08 14:24:43');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1837, 20, 19, 16066.48, '2023-12-08 14:24:43', '2023-12-08 14:24:43');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1838, 20, 20, 2955.66, '2023-12-08 14:24:43', '2023-12-08 14:24:43');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1839, 20, 21, 5524.80, '2023-12-08 14:24:43', '2023-12-08 14:24:43');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1840, 20, 22, 19467.90, '2023-12-08 14:24:43', '2023-12-08 14:24:43');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1841, 20, 23, 6781.66, '2023-12-08 14:24:43', '2023-12-08 14:24:43');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1842, 20, 24, 11170.70, '2023-12-08 14:24:43', '2023-12-08 14:24:43');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1843, 20, 25, 10681.20, '2023-12-08 14:24:43', '2023-12-08 14:24:43');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1844, 20, 26, 19572.40, '2023-12-08 14:24:43', '2023-12-08 14:24:43');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1845, 20, 28, 6068.58, '2023-12-08 14:24:43', '2023-12-08 14:24:43');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1846, 20, 29, 11435.20, '2023-12-08 14:24:43', '2023-12-08 14:24:43');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1847, 20, 30, 19080.40, '2023-12-08 14:24:43', '2023-12-08 14:24:43');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1848, 20, 31, 12045.26, '2023-12-08 14:24:43', '2023-12-08 14:24:43');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1849, 20, 32, 13186.09, '2023-12-08 14:24:43', '2023-12-08 14:24:43');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1850, 20, 33, 39575.76, '2023-12-08 14:24:43', '2023-12-08 14:24:43');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1851, 20, 34, 28213.33, '2023-12-08 14:24:43', '2023-12-08 14:24:43');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1852, 20, 35, 14696.08, '2023-12-08 14:24:43', '2023-12-08 14:24:43');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1853, 20, 36, 13721.92, '2023-12-08 14:24:43', '2023-12-08 14:24:43');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1854, 20, 37, 12116.97, '2023-12-08 14:24:43', '2023-12-08 14:24:43');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1855, 20, 38, 16576.27, '2023-12-08 14:24:43', '2023-12-08 14:24:43');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1856, 20, 39, 16917.51, '2023-12-08 14:24:43', '2023-12-08 14:24:43');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1857, 20, 40, 6272.33, '2023-12-08 14:24:43', '2023-12-08 14:24:43');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1858, 20, 41, 8056.57, '2023-12-08 14:24:43', '2023-12-08 14:24:43');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1859, 20, 42, 9684.37, '2023-12-08 14:24:43', '2023-12-08 14:24:43');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1860, 20, 43, 13104.97, '2023-12-08 14:24:43', '2023-12-08 14:24:43');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1861, 20, 44, 2312.10, '2023-12-08 14:24:43', '2023-12-08 14:24:43');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1862, 20, 45, 11042.00, '2023-12-08 14:24:43', '2023-12-08 14:24:43');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1863, 20, 46, 10610.99, '2023-12-08 14:24:43', '2023-12-08 14:24:43');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1864, 20, 47, 7369.43, '2023-12-08 14:24:43', '2023-12-08 14:24:43');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1865, 20, 50, 14613.13, '2023-12-08 14:24:43', '2023-12-08 14:24:43');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1866, 20, 52, 7336.56, '2023-12-08 14:24:43', '2023-12-08 14:24:43');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1867, 20, 53, 6588.79, '2023-12-08 14:24:43', '2023-12-08 14:24:43');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1868, 20, 54, 4949.57, '2023-12-08 14:24:43', '2023-12-08 14:24:43');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1869, 20, 56, 3320.61, '2023-12-08 14:24:43', '2023-12-08 14:24:43');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1870, 20, 58, 8774.61, '2023-12-08 14:24:43', '2023-12-08 14:24:43');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1871, 20, 59, 10123.65, '2023-12-08 14:24:43', '2023-12-08 14:24:43');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1872, 20, 60, 18325.40, '2023-12-08 14:24:43', '2023-12-08 14:24:43');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1873, 34, 3, 2272.73, '2023-12-09 10:30:48', '2023-12-09 10:30:48');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1874, 34, 4, 1958.47, '2023-12-09 10:30:48', '2023-12-09 10:30:48');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1875, 34, 5, 21368.24, '2023-12-09 10:30:48', '2023-12-09 10:30:48');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1876, 34, 6, 30226.36, '2023-12-09 10:30:48', '2023-12-09 10:30:48');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1877, 34, 7, 12640.18, '2023-12-09 10:30:48', '2023-12-09 10:30:48');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1878, 34, 8, 12031.31, '2023-12-09 10:30:48', '2023-12-09 10:30:48');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1879, 34, 9, 40015.31, '2023-12-09 10:30:48', '2023-12-09 10:30:48');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1880, 34, 10, 4377.60, '2023-12-09 10:30:48', '2023-12-09 10:30:48');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1881, 34, 11, 23731.29, '2023-12-09 10:30:48', '2023-12-09 10:30:48');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1882, 34, 12, 1269.70, '2023-12-09 10:30:48', '2023-12-09 10:30:48');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1883, 34, 13, 20939.67, '2023-12-09 10:30:48', '2023-12-09 10:30:48');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1884, 34, 14, 24991.96, '2023-12-09 10:30:48', '2023-12-09 10:30:48');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1885, 34, 15, 10960.00, '2023-12-09 10:30:48', '2023-12-09 10:30:48');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1886, 34, 16, 11434.21, '2023-12-09 10:30:48', '2023-12-09 10:30:48');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1887, 34, 17, 11650.10, '2023-12-09 10:30:48', '2023-12-09 10:30:48');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1888, 34, 18, 5486.53, '2023-12-09 10:30:48', '2023-12-09 10:30:48');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1889, 34, 19, 16066.48, '2023-12-09 10:30:48', '2023-12-09 10:30:48');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1890, 34, 20, 2955.66, '2023-12-09 10:30:48', '2023-12-09 10:30:48');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1891, 34, 21, 5524.80, '2023-12-09 10:30:48', '2023-12-09 10:30:48');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1892, 34, 22, 19467.90, '2023-12-09 10:30:48', '2023-12-09 10:30:48');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1893, 34, 23, 6781.66, '2023-12-09 10:30:48', '2023-12-09 10:30:48');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1894, 34, 24, 11170.70, '2023-12-09 10:30:48', '2023-12-09 10:30:48');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1895, 34, 25, 10681.20, '2023-12-09 10:30:48', '2023-12-09 10:30:48');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1896, 34, 26, 19572.40, '2023-12-09 10:30:48', '2023-12-09 10:30:48');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1897, 34, 28, 6068.58, '2023-12-09 10:30:48', '2023-12-09 10:30:48');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1898, 34, 29, 11435.20, '2023-12-09 10:30:48', '2023-12-09 10:30:48');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1899, 34, 30, 19080.40, '2023-12-09 10:30:48', '2023-12-09 10:30:48');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1900, 34, 31, 12045.26, '2023-12-09 10:30:48', '2023-12-09 10:30:48');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1901, 34, 32, 13186.09, '2023-12-09 10:30:48', '2023-12-09 10:30:48');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1902, 34, 33, 39575.76, '2023-12-09 10:30:48', '2023-12-09 10:30:48');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1903, 34, 34, 28213.33, '2023-12-09 10:30:48', '2023-12-09 10:30:48');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1904, 34, 35, 14696.08, '2023-12-09 10:30:48', '2023-12-09 10:30:48');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1905, 34, 36, 13721.92, '2023-12-09 10:30:48', '2023-12-09 10:30:48');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1906, 34, 37, 12116.97, '2023-12-09 10:30:48', '2023-12-09 10:30:48');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1907, 34, 38, 16576.27, '2023-12-09 10:30:48', '2023-12-09 10:30:48');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1908, 34, 39, 16917.51, '2023-12-09 10:30:48', '2023-12-09 10:30:48');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1909, 34, 40, 6272.33, '2023-12-09 10:30:48', '2023-12-09 10:30:48');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1910, 34, 41, 8056.57, '2023-12-09 10:30:48', '2023-12-09 10:30:48');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1911, 34, 42, 9684.37, '2023-12-09 10:30:48', '2023-12-09 10:30:48');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1912, 34, 43, 13104.97, '2023-12-09 10:30:48', '2023-12-09 10:30:48');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1913, 34, 44, 2312.10, '2023-12-09 10:30:48', '2023-12-09 10:30:48');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1914, 34, 45, 11042.00, '2023-12-09 10:30:48', '2023-12-09 10:30:48');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1915, 34, 46, 10610.99, '2023-12-09 10:30:48', '2023-12-09 10:30:48');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1916, 34, 47, 7369.43, '2023-12-09 10:30:48', '2023-12-09 10:30:48');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1917, 34, 50, 14613.13, '2023-12-09 10:30:48', '2023-12-09 10:30:48');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1918, 34, 52, 7336.56, '2023-12-09 10:30:48', '2023-12-09 10:30:48');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1919, 34, 53, 6588.79, '2023-12-09 10:30:48', '2023-12-09 10:30:48');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1920, 34, 54, 4949.57, '2023-12-09 10:30:48', '2023-12-09 10:30:48');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1921, 34, 56, 3320.61, '2023-12-09 10:30:48', '2023-12-09 10:30:48');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1922, 34, 58, 8774.61, '2023-12-09 10:30:48', '2023-12-09 10:30:48');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1923, 34, 59, 10123.65, '2023-12-09 10:30:48', '2023-12-09 10:30:48');
INSERT INTO `attribut_kelurahan` (`id`, `attribut_id`, `kelurahan_id`, `value`, `created_at`, `updated_at`) VALUES (1924, 34, 60, 18325.40, '2023-12-09 10:30:48', '2023-12-09 10:30:48');
COMMIT;

-- ----------------------------
-- Table structure for faq
-- ----------------------------
DROP TABLE IF EXISTS `faq`;
CREATE TABLE `faq` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pertanyaan` text COLLATE utf8_unicode_ci,
  `jawaban` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of faq
-- ----------------------------
BEGIN;
INSERT INTO `faq` (`id`, `pertanyaan`, `jawaban`) VALUES (1, 'Apa itu Teras Data Berbagi?', 'Fitur yang Menampilkan Integrasi Data Sektoral Tematik dalam Bentuk Geospasial Sebagai Strategi Pengambilan Keputusan dan Wahana Penyampaian Informasi Kepada Publik di Kota Banjarmasin');
INSERT INTO `faq` (`id`, `pertanyaan`, `jawaban`) VALUES (2, 'Bagaimana cara mengakses Teras Data Berbagi?', 'Teras Data Berbagi dapat diakses dari mana saja melalui https://tdb.banjarmasinkota.go.id/ selama perangkat terhubung dengan internet');
INSERT INTO `faq` (`id`, `pertanyaan`, `jawaban`) VALUES (3, 'Siapa yang dapat menggunakan Teras Data Berbagi?', 'Teras data Berbagi terbuka untuk umum dan dapat diakses oleh semua orang');
INSERT INTO `faq` (`id`, `pertanyaan`, `jawaban`) VALUES (4, 'Apa saja menu yang tersedia di Teras Data Berbagi?', 'Terdapat Menu Profil Wilayah yang menampilkan data seluruh kecamatan di Kota Banjarmasin, menu Bandingkan Data, dan menu SIG. Data yang ditampilkan berbentuk grafis sehingga lebih mudah digunakan untuk pengambilan keputusan');
INSERT INTO `faq` (`id`, `pertanyaan`, `jawaban`) VALUES (5, 'Apakah ada biaya tertentu untuk mengakses Teras Data Berbagi?', 'Tidak ada biaya selain biaya koneksi internet untuk mengakses Teras Data Berbagi');
COMMIT;

-- ----------------------------
-- Table structure for kategori
-- ----------------------------
DROP TABLE IF EXISTS `kategori`;
CREATE TABLE `kategori` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nama` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of kategori
-- ----------------------------
BEGIN;
INSERT INTO `kategori` (`id`, `nama`) VALUES (1, 'Kesehatan');
INSERT INTO `kategori` (`id`, `nama`) VALUES (2, 'Pendidikan');
INSERT INTO `kategori` (`id`, `nama`) VALUES (3, 'Perdagangan');
INSERT INTO `kategori` (`id`, `nama`) VALUES (4, 'Kependudukan');
INSERT INTO `kategori` (`id`, `nama`) VALUES (5, 'Perizinan');
INSERT INTO `kategori` (`id`, `nama`) VALUES (7, 'Lingkungan');
INSERT INTO `kategori` (`id`, `nama`) VALUES (8, 'Perumahan & Permukiman');
INSERT INTO `kategori` (`id`, `nama`) VALUES (11, 'Sosial');
INSERT INTO `kategori` (`id`, `nama`) VALUES (12, 'Infrastruktur');
COMMIT;

-- ----------------------------
-- Table structure for kecamatan
-- ----------------------------
DROP TABLE IF EXISTS `kecamatan`;
CREATE TABLE `kecamatan` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nama` varchar(255) DEFAULT NULL,
  `lat` varchar(255) DEFAULT NULL,
  `long` varchar(255) DEFAULT NULL,
  `image1` varchar(255) DEFAULT NULL,
  `image2` varchar(255) DEFAULT NULL,
  `file` varchar(255) DEFAULT NULL,
  `alamat` text,
  `telp` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of kecamatan
-- ----------------------------
BEGIN;
INSERT INTO `kecamatan` (`id`, `nama`, `lat`, `long`, `image1`, `image2`, `file`, `alamat`, `telp`) VALUES (1, 'Banjarmasin Tengah', '-3.325486704167921', '114.5898731045901', '27-11-2023-748Screenshot 2023-11-27 at 14.29.33 (1).png', '20-11-2023-4432Banjarmasin Tengah2 (1).png', '19-11-2023-58BANTENG SERIUS 20161130_192014.jpg', 'Jl. Pulau Laut No.26, Antasan Besar, Kec. Banjarmasin Tengah, Kota Banjarmasin, Kalimantan Selatan 70123', '-');
INSERT INTO `kecamatan` (`id`, `nama`, `lat`, `long`, `image1`, `image2`, `file`, `alamat`, `telp`) VALUES (2, 'Banjarmasin Timur', '-3.325915134870812', '114.6117663733673', '27-11-2023-9882Screenshot 2023-11-27 at 14.30.13.png', '20-11-2023-7735Banjarmasin Timur2 (1).png', '19-11-2023-5226kantor-kecamatan-banjarmasin-timur-kalselpedia.jpg', 'Jl. Manggis No.20, Kuripan, Kec. Banjarmasin Tim., Kota Banjarmasin, Kalimantan Selatan 70236', '(0511) 3252129');
INSERT INTO `kecamatan` (`id`, `nama`, `lat`, `long`, `image1`, `image2`, `file`, `alamat`, `telp`) VALUES (3, 'Banjarmasin Barat', '-3.322916116042271', '114.564293022725', '27-11-2023-8189Screenshot 2023-11-27 at 14.30.51.png', '20-11-2023-7590Banjarmasin Barat2 (2).png', '19-11-2023-8792Kantor_Kecamatan_Banjarmasin_Barat,_Banjarmasin.jpg', 'Jl. Ir. P. Moch. Noor, Pelambuan, Kec. Banjarmasin Bar., Kota Banjarmasin, Kalimantan Selatan 70118', '-');
INSERT INTO `kecamatan` (`id`, `nama`, `lat`, `long`, `image1`, `image2`, `file`, `alamat`, `telp`) VALUES (4, 'Banjarmasin Selatan', '-3.3412528312165644', '114.5890195666996', '27-11-2023-7827Screenshot 2023-11-27 at 15.35.12.png', '20-11-2023-7176Banjarmasin Selatan2 (1).png', '19-11-2023-2540Kantor_Kecamatan_Banjarmasin_Selatan,_Banjarmasin.jpg', 'Jl. Tembus Mantuil No.19 RT.01, Kelayan Sel., Kec. Banjarmasin Sel., Kota Banjarmasin, Kalimantan Selatan 70235', '-');
INSERT INTO `kecamatan` (`id`, `nama`, `lat`, `long`, `image1`, `image2`, `file`, `alamat`, `telp`) VALUES (5, 'Banjarmasin Utara', '-3.3010230029986247', '114.60806187652051', '27-11-2023-3664Screenshot 2023-11-27 at 15.35.49.png', '20-11-2023-8016Banjarmasin Utara 2 (1).png', '19-11-2023-4015Kantor_Kecamatan_Banjarmasin_Utara,_Banjarmasin.jpg', 'Jl. Hksn No.8, Alalak Utara, Kec. Banjarmasin Utara, Kota Banjarmasin, Kalimantan Selatan 70125', '05113306828');
COMMIT;

-- ----------------------------
-- Table structure for kelurahan
-- ----------------------------
DROP TABLE IF EXISTS `kelurahan`;
CREATE TABLE `kelurahan` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `kecamatan_id` int(11) DEFAULT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `lat` varchar(255) DEFAULT NULL,
  `long` varchar(255) DEFAULT NULL,
  `file` varchar(255) DEFAULT NULL,
  `alamat` text,
  `telp` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of kelurahan
-- ----------------------------
BEGIN;
INSERT INTO `kelurahan` (`id`, `kecamatan_id`, `nama`, `lat`, `long`, `file`, `alamat`, `telp`) VALUES (3, 1, 'Kertak Baru Ulu', '-3.321416603209648', '114.58650771706388', 'tagging655a1812751ab.jpg', 'Jl. Cempaka 1 No.16, Kertak Baru Ulu, Kec. Banjarmasin Tengah, Kota Banjarmasin, Kalimantan Selatan 70231', '-');
INSERT INTO `kelurahan` (`id`, `kecamatan_id`, `nama`, `lat`, `long`, `file`, `alamat`, `telp`) VALUES (4, 4, 'Basirih Selatan', '-3.353848413814763', '114.58155414972148', 'tagging655a2a3da0ce2.jpeg', 'Perumnas Lingkar Basirih Permai, Jl. Garuda Raya No.16, RT.11/RW.01, Kelayan Sel., Banjarmasin Sel., Kota Banjarmasin, Kalimantan Selatan 70244', '-');
INSERT INTO `kelurahan` (`id`, `kecamatan_id`, `nama`, `lat`, `long`, `file`, `alamat`, `telp`) VALUES (5, 4, 'Kelayan Barat', '-3.330665347808341', '114.59407281616933', 'tagging655a2a70e8bf2.jpeg', 'Jl. K. S. Tubun, Kelayan Bar., Kec. Banjarmasin Sel., Kota Banjarmasin, Kalimantan Selatan 70234', '05113633317');
INSERT INTO `kelurahan` (`id`, `kecamatan_id`, `nama`, `lat`, `long`, `file`, `alamat`, `telp`) VALUES (6, 4, 'Kelayan Dalam', '-3.333680409069705', '114.59631511291572', 'tagging655a2ae03c2f9.jpg', 'Jl. Kelayan A, Kelayan Dalam, Kec. Banjarmasin Sel., Kota Banjarmasin, Kalimantan Selatan 70242', '0511255942');
INSERT INTO `kelurahan` (`id`, `kecamatan_id`, `nama`, `lat`, `long`, `file`, `alamat`, `telp`) VALUES (7, 4, 'Kelayan Selatan', '-3.3389018520879152', '114.5875872197763', 'tagging655a2b287759d.jpeg', 'Jl. Tembus Mantuil, RT.22/RW.2, Kelayan Sel., Kec. Banjarmasin Sel., Kota Banjarmasin, Kalimantan Selatan 70233', '-');
INSERT INTO `kelurahan` (`id`, `kecamatan_id`, `nama`, `lat`, `long`, `file`, `alamat`, `telp`) VALUES (8, 1, 'Antasan Besar', '-3.31545333947043', '114.58711784230282', 'tagging655a2b55b37a0.jpeg', 'Jl. Batu Piring No.1, Antasan Besar, Kec. Banjarmasin Tengah, Kota Banjarmasin, Kalimantan Selatan 70123', '051164629');
INSERT INTO `kelurahan` (`id`, `kecamatan_id`, `nama`, `lat`, `long`, `file`, `alamat`, `telp`) VALUES (9, 4, 'Kelayan Tengah', '-3.3347006008856375', '114.59193711961939', 'tagging655a2b96745d8.jpg', 'Jl. RT11/RW/02, Gang Setia Rahman, Banjarmasin Selatan, Kelayan Tengah, Banjarmasin, Kota Banjarmasin, Kalimantan Selatan 70234', '085248312705');
INSERT INTO `kelurahan` (`id`, `kecamatan_id`, `nama`, `lat`, `long`, `file`, `alamat`, `telp`) VALUES (10, 4, 'Kelayan Timur', '-3.342467144540516', '114.59099216060656', 'tagging655a2bc70dab2.jpeg', 'Gg. Balai Desa, Kelayan Tim., Kec. Banjarmasin Sel., Kota Banjarmasin, Kalimantan Selatan 70233', '-');
INSERT INTO `kelurahan` (`id`, `kecamatan_id`, `nama`, `lat`, `long`, `file`, `alamat`, `telp`) VALUES (11, 1, 'Gadang', '-3.3177856305611018', '114.5957168914064', 'tagging655a2c0094dc2.jpg', 'Jl. Aes Nasution No.48, RT.24/RW.8, Gadang, Kec. Banjarmasin Tengah, Kota Banjarmasin, Kalimantan Selatan 70231', '082256339019');
INSERT INTO `kelurahan` (`id`, `kecamatan_id`, `nama`, `lat`, `long`, `file`, `alamat`, `telp`) VALUES (12, 4, 'Mantuil', '-3.3493553653090093', '114.547273368187', 'tagging655a2c3057a96.jpeg', 'Jl. Tlk. Mesjid, Kelurahan Mantuil, Banjarmasin Selatan, Banjarmasin 70244', '-');
INSERT INTO `kelurahan` (`id`, `kecamatan_id`, `nama`, `lat`, `long`, `file`, `alamat`, `telp`) VALUES (13, 4, 'Murung Raya', '-3.3446802166660157', '114.59598525261839', 'tagging655a2c8fdd7f0.jpg', 'Jalan Kelayan A 2 No.40, RT.17/RW.2, Murung Raya, Kec. Banjarmasin Sel., Kota Banjarmasin, Kalimantan Selatan 70247', '05113263224');
INSERT INTO `kelurahan` (`id`, `kecamatan_id`, `nama`, `lat`, `long`, `file`, `alamat`, `telp`) VALUES (14, 4, 'Pekauman', '-3.3336549712024905', '114.58887604898281', 'tagging655a2cf8b7310.jpg', 'Jl. 9 Oktober, Pekauman, Kec. Banjarmasin Sel., Kota Banjarmasin, Kalimantan Selatan 70243', '05113272109');
INSERT INTO `kelurahan` (`id`, `kecamatan_id`, `nama`, `lat`, `long`, `file`, `alamat`, `telp`) VALUES (15, 1, 'Kelayan Luar', '-3.3293425737897513', '114.59654989235284', 'tagging655a2d35b97e9.jpg', 'Jl. Kolonel Sugiono No.59, Kelayan Luar, Kec. Banjarmasin Tengah, Kota Banjarmasin, Kalimantan Selatan 70234', '0511267604');
INSERT INTO `kelurahan` (`id`, `kecamatan_id`, `nama`, `lat`, `long`, `file`, `alamat`, `telp`) VALUES (16, 4, 'Pemurus Baru', '-3.339954170320998', '114.60950771827558', 'tagging655a2dac009d7.jpg', 'Jl. Prona 1 No.4, Pemurus Baru, Kec. Banjarmasin Sel., Kota Banjarmasin, Kalimantan Selatan 70249', '05116780301');
INSERT INTO `kelurahan` (`id`, `kecamatan_id`, `nama`, `lat`, `long`, `file`, `alamat`, `telp`) VALUES (17, 1, 'Mawar', '-3.327125450600558', '114.57713966931738', 'tagging655a2dec677e2.jpg', 'Jl. Dahlia Kebun Sayur, Mawar, Kec. Banjarmasin Tengah, Kota Banjarmasin, Kalimantan Selatan 70112', '051167153');
INSERT INTO `kelurahan` (`id`, `kecamatan_id`, `nama`, `lat`, `long`, `file`, `alamat`, `telp`) VALUES (18, 4, 'Pemurus Dalam', '-3.3573386789032926', '114.61961572523562', 'tagging655a2eb1def37.jpg', 'Jl. Pemurus, Pemurus Dalam, Kec. Banjarmasin Sel., Kota Banjarmasin, Kalimantan Selatan 70238', '-');
INSERT INTO `kelurahan` (`id`, `kecamatan_id`, `nama`, `lat`, `long`, `file`, `alamat`, `telp`) VALUES (19, 1, 'Teluk Dalam', '-3.322600147456276', '114.5747309952816', 'tagging655a2f3929808.jpeg', 'Jl. Sutoyo S No 247 RT 11 RW 01, Teluk Dalam, Banjarmasin Tengah, Banjarmasin 70116', '-');
INSERT INTO `kelurahan` (`id`, `kecamatan_id`, `nama`, `lat`, `long`, `file`, `alamat`, `telp`) VALUES (20, 4, 'Tanjung Pagar', '-3.3620311713784994', '114.5989479227028', 'tagging655a2f65942de.jpg', 'Jl. Gerilya No.15, Tj. Pagar, Kec. Banjarmasin Sel., Kota Banjarmasin, Kalimantan Selatan 70247', '-');
INSERT INTO `kelurahan` (`id`, `kecamatan_id`, `nama`, `lat`, `long`, `file`, `alamat`, `telp`) VALUES (21, 2, 'Banua Anyar', '-3.306726612567978', '114.60863857089545', 'tagging655a2fa2a7373.jpg', 'Jl. Banua Anyar No. 68 RT.006 RW.001, Benua Anyar, Kec. Banjarmasin Tim., Kota Banjarmasin, Kalimantan Selatan 70122', '-');
INSERT INTO `kelurahan` (`id`, `kecamatan_id`, `nama`, `lat`, `long`, `file`, `alamat`, `telp`) VALUES (22, 2, 'Karang Mekar', '-3.3315114938194252', '114.60339626781537', 'tagging655a2fc683a6d.jpeg', 'Jl. Ratu Zaleha No.37 RT.17, Karang Mekar, Kec. Banjarmasin Tim., Kota Banjarmasin, Kalimantan Selatan 70234', '05113265876');
INSERT INTO `kelurahan` (`id`, `kecamatan_id`, `nama`, `lat`, `long`, `file`, `alamat`, `telp`) VALUES (23, 1, 'Kertak Baru Ilir', '-3.3253220260669716', '114.58608119522232', 'tagging655a30413e9a5.jpeg', 'Jl. Mawar No.2, Kertak Baru Ilir, Kec. Banjarmasin Tengah, Kota Banjarmasin, Kalimantan Selatan 70111', '05113353010');
INSERT INTO `kelurahan` (`id`, `kecamatan_id`, `nama`, `lat`, `long`, `file`, `alamat`, `telp`) VALUES (24, 2, 'Kebun Bunga', '-3.3264988714038592', '114.60740081283659', 'tagging655a30653ab60.jpeg', 'Jl. A. Yani No.3,5, Kebun Bunga, Kec. Banjarmasin Tim., Kota Banjarmasin, Kalimantan Selatan 70235', '-');
INSERT INTO `kelurahan` (`id`, `kecamatan_id`, `nama`, `lat`, `long`, `file`, `alamat`, `telp`) VALUES (25, 2, 'Kuripan', '-3.320777970713434', '114.6100618619375', 'tagging655a30a23fffb.jpg', 'Jl. Manggis No.52, Kuripan, Kec. Banjarmasin Tim., Kota Banjarmasin, Kalimantan Selatan 70235', '05113252523');
INSERT INTO `kelurahan` (`id`, `kecamatan_id`, `nama`, `lat`, `long`, `file`, `alamat`, `telp`) VALUES (26, 2, 'Pekapuran Raya', '-3.337115853930995', '114.61047448359463', 'tagging655a30f36fd72.JPG', 'Jl. AMD 2 Besar, Pekapuran Raya, Kec. Banjarmasin Tim., Kota Banjarmasin, Kalimantan Selatan 70236', '05116744565');
INSERT INTO `kelurahan` (`id`, `kecamatan_id`, `nama`, `lat`, `long`, `file`, `alamat`, `telp`) VALUES (28, 2, 'Pemurus Luar', '-3.3386394417676164', '114.63097875083162', 'tagging655a312637c7c.jpg', 'Jalan Simpang Pdam 1 No.58, RT.09, Pemurus Luar, Kec. Banjarmasin Tim., Kota Banjarmasin, Kalimantan Selatan 70249', '0511251623');
INSERT INTO `kelurahan` (`id`, `kecamatan_id`, `nama`, `lat`, `long`, `file`, `alamat`, `telp`) VALUES (29, 2, 'Pengambangan', '-3.323905525493998', '114.62431497926106', 'tagging655a314e90184.jpg', 'Jl. Pramuka No.001, RT.12/RW.02, Pengambangan, Kec. Banjarmasin Tim., Kota Banjarmasin, Kalimantan Selatan 70237', '-');
INSERT INTO `kelurahan` (`id`, `kecamatan_id`, `nama`, `lat`, `long`, `file`, `alamat`, `telp`) VALUES (30, 2, 'Sungai Bilu', '-3.3177213654382838', '114.60991089477706', 'tagging655a316e14b7a.jpg', 'Jl. Keramat Raya, Sungai Bilu, Kec. Banjarmasin Tim., Kota Banjarmasin, Kalimantan Selatan 70239', '05113262992');
INSERT INTO `kelurahan` (`id`, `kecamatan_id`, `nama`, `lat`, `long`, `file`, `alamat`, `telp`) VALUES (31, 1, 'Pekapuran Laut', '-3.3275083599135424', '114.60256468669725', 'tagging655a31af9af64.jpg', 'Jl. Pekapuran B. Laut No.20, RT.14, Pekapuran Laut, Banjarmasin Tengah, Pekapuran Laut, Banjarmasin, Kota Banjarmasin, Kalimantan Selatan 70236', '-');
INSERT INTO `kelurahan` (`id`, `kecamatan_id`, `nama`, `lat`, `long`, `file`, `alamat`, `telp`) VALUES (32, 1, 'Pasar Lama', '-3.3069408320068687', '114.59059916859286', 'tagging655a31d2113c2.jpg', 'Gg. Purnama RT. 15 70115, Jl. S. Parman, Ps. Lama, Kec. Banjarmasin Tengah, Kota Banjarmasin, Kalimantan Selatan 70123', '05113365315');
INSERT INTO `kelurahan` (`id`, `kecamatan_id`, `nama`, `lat`, `long`, `file`, `alamat`, `telp`) VALUES (33, 1, 'Melayu', '-3.3178592676758427', '114.60286246055868', 'tagging655a320a63fc9.jpg', 'Jl. Kp. Melayu Darat No.4, Melayu, Kec. Banjarmasin Tengah, Kota Banjarmasin, Kalimantan Selatan 70232', '05113250606');
INSERT INTO `kelurahan` (`id`, `kecamatan_id`, `nama`, `lat`, `long`, `file`, `alamat`, `telp`) VALUES (34, 1, 'Seberang Mesjid', '-3.311329642570336', '114.59574651673674', 'tagging655a32474dd81.jpg', 'Jalan, Seberang Mesjid, Banjarmasin Tengah, Banjarmasin City, South Kalimantan 70122', '05113258225');
INSERT INTO `kelurahan` (`id`, `kecamatan_id`, `nama`, `lat`, `long`, `file`, `alamat`, `telp`) VALUES (35, 1, 'Sungai Baru', '-3.3221208389843935', '114.59900142148503', 'tagging655a3269354b7.jpg', 'Kompleks Veteran, kelurahan, jl.jend A.yani km.2, RT.17, Sungai Baru, Kec. Banjarmasin Tengah, Kota Banjarmasin, Kalimantan Selatan 70233', '-');
INSERT INTO `kelurahan` (`id`, `kecamatan_id`, `nama`, `lat`, `long`, `file`, `alamat`, `telp`) VALUES (36, 3, 'Pelambuan', '-3.3206347134720233', '114.56402365116845', 'tagging655a32a31c04c.jpg', 'Jl. Ir. P. Moch. Noor No.49, Pelambuan, Kec. Banjarmasin Bar., Kota Banjarmasin, Kalimantan Selatan 70118', '085782436230');
INSERT INTO `kelurahan` (`id`, `kecamatan_id`, `nama`, `lat`, `long`, `file`, `alamat`, `telp`) VALUES (37, 3, 'Telaga Biru', '-3.3244879243690257', '114.56985519221016', 'tagging655a32d0aec8a.jpeg', 'Gang 20, Telaga Biru, Banjarmasin Barat, Telaga Biru, Banjarmasin, Kota Banjarmasin, Kalimantan Selatan 70117', '-');
INSERT INTO `kelurahan` (`id`, `kecamatan_id`, `nama`, `lat`, `long`, `file`, `alamat`, `telp`) VALUES (38, 3, 'Telawang', '-3.3284375168586458', '114.57890441182793', 'tagging655a32ff50b5e.jpg', 'Jl. Dahlia Gg. Budaya No.Ujung, RT.028/RW.003, Telawang, Kec. Banjarmasin Bar., Kota Banjarmasin, Kalimantan Selatan 70114', '05114422773');
INSERT INTO `kelurahan` (`id`, `kecamatan_id`, `nama`, `lat`, `long`, `file`, `alamat`, `telp`) VALUES (39, 3, 'Teluk Tiram', '-3.338778679905481', '114.58205892312328', 'tagging655a33290ead2.jpg', 'Jl. Teluk Tiram Darat No.216, Tlk. Tiram, Kec. Banjarmasin Bar., Kota Banjarmasin, Kalimantan Selatan 70113', '-');
INSERT INTO `kelurahan` (`id`, `kecamatan_id`, `nama`, `lat`, `long`, `file`, `alamat`, `telp`) VALUES (40, 3, 'Belitung Selatan', '-3.308659941327829', '114.57861418515733', 'tagging655a3365a5b2b.jpeg', 'Jl. Cendrawasih Gg. Kelurahan II No.38, Belitung Sel., Kec. Banjarmasin Bar., Kota Banjarmasin, Kalimantan Selatan 70116', '05114364674');
INSERT INTO `kelurahan` (`id`, `kecamatan_id`, `nama`, `lat`, `long`, `file`, `alamat`, `telp`) VALUES (41, 3, 'Belitung Utara', '-3.3019869956496297', '114.5792046567267', 'tagging655a33f7d4060.jpg', 'Jalan Samadi Ilham Belitung Darat No.52, RT.17/RW.02, Belitung Utara, Kec. Banjarmasin Bar., Kota Banjarmasin, Kalimantan Selatan 70116', '05113350770');
INSERT INTO `kelurahan` (`id`, `kecamatan_id`, `nama`, `lat`, `long`, `file`, `alamat`, `telp`) VALUES (42, 3, 'Kuin Selatan', '-3.3015317770143517', '114.57609904183933', 'tagging655a341e7a354.jpg', 'Jalan Simpang Anem, Kuin Selatan, Banjarmasin Barat, Kuin Sel., Kec. Banjarmasin Bar., Kota Banjarmasin, Kalimantan Selatan 70124', '-');
INSERT INTO `kelurahan` (`id`, `kecamatan_id`, `nama`, `lat`, `long`, `file`, `alamat`, `telp`) VALUES (43, 3, 'Kuin Cerucuk', '-3.305093187824969', '114.57263836485372', 'tagging655a345257f67.jpg', 'Jl. Manunggal No.031 RT.032 RW.003 Kel. Kuin Cerucuk Kec. Banjarmasin Barat, Banjarmasin 70129', '-');
INSERT INTO `kelurahan` (`id`, `kecamatan_id`, `nama`, `lat`, `long`, `file`, `alamat`, `telp`) VALUES (44, 2, 'Sungai Lulut', '-3.323052678704916', '114.6266981227741', 'tagging655a347ae38e2.jpg', 'Komplek Rahayu, Jl. Pramuka No.6, Sungai Lulut, Kec. Banjarmasin Tim., Kota Banjarmasin, Kalimantan Selatan 70238', '05113266765');
INSERT INTO `kelurahan` (`id`, `kecamatan_id`, `nama`, `lat`, `long`, `file`, `alamat`, `telp`) VALUES (45, 5, 'Alalak Selatan', '-3.2859899522873492', '114.57115203457266', 'tagging655a34a2b693e.jpg', 'Jl. Hksn, Alalak Sel., Kec. Banjarmasin Utara, Kota Banjarmasin, Kalimantan Selatan 70127', '05117548213');
INSERT INTO `kelurahan` (`id`, `kecamatan_id`, `nama`, `lat`, `long`, `file`, `alamat`, `telp`) VALUES (46, 5, 'Alalak Tengah', '-3.273311832046273', '114.56764765887503', 'tagging655a34ce17cae.jpeg', 'Jl. Alalak Tengah, Alalak Tengah, Kec. Banjarmasin Utara, Kota Banjarmasin, Kalimantan Selatan 70126', '05113301655');
INSERT INTO `kelurahan` (`id`, `kecamatan_id`, `nama`, `lat`, `long`, `file`, `alamat`, `telp`) VALUES (47, 5, 'Alalak Utara', '-3.2750778613847635', '114.5824455190083', 'tagging655a3507afab3.jpg', 'Jl. Alalak Utara gang kelurahan No.RT.14, Alalak Utara, Kec. Banjarmasin Utara, Kota Banjarmasin, Kalimantan Selatan 70125', '-');
INSERT INTO `kelurahan` (`id`, `kecamatan_id`, `nama`, `lat`, `long`, `file`, `alamat`, `telp`) VALUES (50, 5, 'Antasan Kecil Timur', '-3.3033954943404975', '114.59639171565718', 'tagging655a352a5dfe8.jpg', 'Surgi Mufti, Kec. Banjarmasin Utara, Kota Banjarmasin, Kalimantan Selatan 70123', '-');
INSERT INTO `kelurahan` (`id`, `kecamatan_id`, `nama`, `lat`, `long`, `file`, `alamat`, `telp`) VALUES (52, 5, 'Kuin Utara', '-3.2878925267298005', '114.57444592166256', 'tagging655a355e0cba6.jpg', 'Jl. Hksn No.113, Alalak Sel., Kec. Banjarmasin Utara, Kota Banjarmasin, Kalimantan Selatan 70127', '-');
INSERT INTO `kelurahan` (`id`, `kecamatan_id`, `nama`, `lat`, `long`, `file`, `alamat`, `telp`) VALUES (53, 5, 'Pangeran', '-3.287389101333101', '114.58542545750814', 'tagging655a357e3febd.jpg', 'Jl. Perdagangan No.206, Pangeran, Kec. Banjarmasin Utara, Kota Banjarmasin, Kalimantan Selatan 70124', '05117476361');
INSERT INTO `kelurahan` (`id`, `kecamatan_id`, `nama`, `lat`, `long`, `file`, `alamat`, `telp`) VALUES (54, 5, 'Sungai Andai', '-3.2926509552887526', '114.60630627796213', 'tagging655a18d8956b3.jpg', 'Jl. Padat Karya No.9, Sungai Jingah, Kec. Banjarmasin Utara, Kota Banjarmasin, Kalimantan Selatan 70122', '-');
INSERT INTO `kelurahan` (`id`, `kecamatan_id`, `nama`, `lat`, `long`, `file`, `alamat`, `telp`) VALUES (56, 5, 'Sungai Jingah', '-3.308796505959148', '114.6049383527764', 'tagging655a35d7aaa46.jpeg', 'Jl. Jahri Saleh, Sungai Jingah, Kec. Banjarmasin Utara, Kota Banjarmasin, Kalimantan Selatan 70122', '-');
INSERT INTO `kelurahan` (`id`, `kecamatan_id`, `nama`, `lat`, `long`, `file`, `alamat`, `telp`) VALUES (58, 5, 'Sungai Miai', '-3.296960834804272', '114.59049344324356', 'tagging655a35fcb4d58.jpg', 'Jl. Cendana I No.9, Sungai Miai, Kec. Banjarmasin Utara, Kota Banjarmasin, Kalimantan Selatan 70123', '0511301894');
INSERT INTO `kelurahan` (`id`, `kecamatan_id`, `nama`, `lat`, `long`, `file`, `alamat`, `telp`) VALUES (59, 5, 'Surgi Mufti', '-3.308226147668262', '114.60131604201386', 'tagging655a3623ced4c.jpg', 'Jalan Jahri Saleh, RT.19, Surgi Mufti, Kecamatan Banjarmasin Utara, Surgi Mufti, Banjarmasin, Kota Banjarmasin, Kalimantan Selatan 70122', '-');
INSERT INTO `kelurahan` (`id`, `kecamatan_id`, `nama`, `lat`, `long`, `file`, `alamat`, `telp`) VALUES (60, 3, 'Basirih', '-3.3360260453648056', '114.56995631435757', 'tagging655a364c713a3.jpg', 'Jalan Intan Sari, Purnasakti Jalur 9, Kelurahan Basirih, Kecamatan Banjarmasin Barat, Kota Banjarmasin, Kalimantan Selatan 70245', '05114420668');
COMMIT;

-- ----------------------------
-- Table structure for role_users
-- ----------------------------
DROP TABLE IF EXISTS `role_users`;
CREATE TABLE `role_users` (
  `user_id` bigint(20) unsigned NOT NULL,
  `role_id` bigint(20) unsigned NOT NULL,
  UNIQUE KEY `role_users_user_id_role_id_unique` (`user_id`,`role_id`) USING BTREE,
  KEY `role_users_role_id_foreign` (`role_id`) USING BTREE,
  CONSTRAINT `role_users_ibfk_1` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `role_users_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of role_users
-- ----------------------------
BEGIN;
INSERT INTO `role_users` (`user_id`, `role_id`) VALUES (1, 1);
COMMIT;

-- ----------------------------
-- Table structure for roles
-- ----------------------------
DROP TABLE IF EXISTS `roles`;
CREATE TABLE `roles` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of roles
-- ----------------------------
BEGIN;
INSERT INTO `roles` (`id`, `name`, `created_at`, `updated_at`) VALUES (1, 'superadmin', '2020-12-23 23:17:35', '2020-12-23 23:17:35');
INSERT INTO `roles` (`id`, `name`, `created_at`, `updated_at`) VALUES (2, 'pelanggan', '2023-10-04 01:24:43', '2023-10-04 01:24:43');
INSERT INTO `roles` (`id`, `name`, `created_at`, `updated_at`) VALUES (3, 'petugas_adminitrasi', '2023-10-04 01:25:02', '2023-10-04 01:25:02');
INSERT INTO `roles` (`id`, `name`, `created_at`, `updated_at`) VALUES (4, 'pengawas_teknis', '2023-10-04 01:25:09', '2023-10-04 01:25:09');
INSERT INTO `roles` (`id`, `name`, `created_at`, `updated_at`) VALUES (5, 'penyelia', '2023-10-04 01:25:23', '2023-10-04 01:25:23');
INSERT INTO `roles` (`id`, `name`, `created_at`, `updated_at`) VALUES (6, 'petugas_pengambil_contoh', '2023-10-04 01:25:36', '2023-10-04 01:25:36');
INSERT INTO `roles` (`id`, `name`, `created_at`, `updated_at`) VALUES (7, 'analis', '2023-10-04 01:25:53', '2023-10-04 01:25:53');
INSERT INTO `roles` (`id`, `name`, `created_at`, `updated_at`) VALUES (8, 'kepala_sub_bagian_tata_usaha', '2023-10-04 01:26:04', '2023-10-04 01:26:04');
INSERT INTO `roles` (`id`, `name`, `created_at`, `updated_at`) VALUES (9, 'pengawas_mutu', '2023-10-04 01:26:20', '2023-10-04 01:26:20');
INSERT INTO `roles` (`id`, `name`, `created_at`, `updated_at`) VALUES (10, 'kepala_laboratorium', '2023-10-04 01:26:28', '2023-10-04 01:26:28');
COMMIT;

-- ----------------------------
-- Table structure for tagging
-- ----------------------------
DROP TABLE IF EXISTS `tagging`;
CREATE TABLE `tagging` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `attribut_id` int(11) DEFAULT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `lat` varchar(255) DEFAULT NULL,
  `long` varchar(255) DEFAULT NULL,
  `file` varchar(255) DEFAULT NULL,
  `alamat` text,
  `telp` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tagging
-- ----------------------------
BEGIN;
INSERT INTO `tagging` (`id`, `attribut_id`, `nama`, `lat`, `long`, `file`, `alamat`, `telp`) VALUES (1, 1, 'Puskesmas Banjar Indah', '-3.3309863', '114.5644631', 'tagging655a19a11178d.jpg', ' Jl. Berlian No.13, Telaga Biru, Kec. Banjarmasin Bar., Kota Banjarmasin, Kalimantan Selatan 70119', '05114421066');
INSERT INTO `tagging` (`id`, `attribut_id`, `nama`, `lat`, `long`, `file`, `alamat`, `telp`) VALUES (2, 1, 'Puskesmas Terminal', '-3.3321501193619287', '114.62732952692495', 'tagging655a1c320f1b4.jpg', 'Komplek Satelit Permai, Jl. Pramuka No.RT.19, Sungai Lulut, Kec. Banjarmasin Tim., Kota Banjarmasin, Kalimantan Selatan 70236', '05113272570');
INSERT INTO `tagging` (`id`, `attribut_id`, `nama`, `lat`, `long`, `file`, `alamat`, `telp`) VALUES (3, 1, 'Puskesmas Pekauman', '-3.33051553216846', '114.59055266320584', 'tagging655a1ce1ea5db.jpeg', 'Jl. K. S. Tubun No.1, Pekauman, Kec. Banjarmasin Sel., Kota Banjarmasin, Kalimantan Selatan 70243', '08115022911');
INSERT INTO `tagging` (`id`, `attribut_id`, `nama`, `lat`, `long`, `file`, `alamat`, `telp`) VALUES (4, 1, 'Puskesmas Kelayan Timur', '-3.3428997', '114.5904983', 'tagging655a1d4cbfad3.jpeg', 'Jl. Kelayan B Komp. 10 Jl. Kelayan B, Kelayan Tim., Kec. Banjarmasin Sel., Kota Banjarmasin, Kalimantan Selatan 70234', '05113271472');
INSERT INTO `tagging` (`id`, `attribut_id`, `nama`, `lat`, `long`, `file`, `alamat`, `telp`) VALUES (5, 1, 'Puskesmas Pemurus Dalam', '-3.355539326306248', '114.62301670362365', 'tagging655a1dc9b355a.jpg', 'Komplek Jl. Beruntung Jaya Jl. Dharmawangsa, Pemurus Dalam, Kec. Banjarmasin Sel., Kota Banjarmasin, Kalimantan Selatan 70235', '0895411650196');
INSERT INTO `tagging` (`id`, `attribut_id`, `nama`, `lat`, `long`, `file`, `alamat`, `telp`) VALUES (6, 1, 'Puskesmas Pemurus Baru', '-3.3400298140182225', '114.60953587255389', 'tagging655a1dd3f18ad.jpeg', ' Jl. Prona 1 No.29, Pemurus Baru, Kec. Banjarmasin Sel., Kota Banjarmasin, Kalimantan Selatan 70249', '05113275657');
INSERT INTO `tagging` (`id`, `attribut_id`, `nama`, `lat`, `long`, `file`, `alamat`, `telp`) VALUES (7, 1, 'Puskesmas Kelayan Dalam', '-3.335916930558513', '114.59781461110862', 'tagging655a1e2a7be60.jpg', 'Gg. Aliyah XII No.54, RT.12, Kelayan Dalam, Kec. Banjarmasin Sel., Kota Banjarmasin, Kalimantan Barat 70234', '085248980734');
INSERT INTO `tagging` (`id`, `attribut_id`, `nama`, `lat`, `long`, `file`, `alamat`, `telp`) VALUES (8, 1, 'Puskesmas Beruntung Raya', '-3.357892943098016', '114.60048337999382', 'tagging655a1e6963155.jpeg', 'Jalan AMD, Tj. Pagar, Kec. Banjarmasin Sel., Kota Banjarmasin, Kalimantan Selatan 70247', '05114225559');
INSERT INTO `tagging` (`id`, `attribut_id`, `nama`, `lat`, `long`, `file`, `alamat`, `telp`) VALUES (9, 1, 'Puskesmas Cempaka Putih', '-3.3220733097796655', '114.60683084424734', 'tagging655a1f4d1ce09.jpg', 'Jl. Cemp. Putih No.RT.08 No.02, Kuripan, Kec. Banjarmasin Tim., Kota Banjarmasin, Kalimantan Selatan 70122', '087708403300');
INSERT INTO `tagging` (`id`, `attribut_id`, `nama`, `lat`, `long`, `file`, `alamat`, `telp`) VALUES (10, 1, 'Puskesmas 9 November', '-3.3150315985309327', '114.61104317248375', 'tagging655a1f7e3325e.jpg', 'Jl. Keramat Raya No.2, RT.2, Pengambangan, Kec. Banjarmasin Tim., Kota Banjarmasin, Kalimantan Selatan 70239', '05113254509');
INSERT INTO `tagging` (`id`, `attribut_id`, `nama`, `lat`, `long`, `file`, `alamat`, `telp`) VALUES (11, 1, 'Puskesmas Sungai Bilu', '-3.3187506', '114.6148631', 'tagging655a1fd2c5cda.jpeg', ' Jl. Veteran, RT.29, Sungai Bilu, Kec. Banjarmasin Tim., Kota Banjarmasin, Kalimantan Selatan 70239', '0511674490');
INSERT INTO `tagging` (`id`, `attribut_id`, `nama`, `lat`, `long`, `file`, `alamat`, `telp`) VALUES (12, 1, 'Pukesmas Pekapuran Raya', '-3.3364893', '114.6046292', 'tagging655a209b05254.jpg', 'JL. Pekapuran Darat, RT. 17, Banjarmasin, Pekapuran Raya, East Banjarmasin, Banjarmasin City, South Kalimantan 70234', '087823337373');
INSERT INTO `tagging` (`id`, `attribut_id`, `nama`, `lat`, `long`, `file`, `alamat`, `telp`) VALUES (13, 1, 'Puskesmas Karang Mekar', '-3.330193406877059', '114.60639908026874', 'tagging655a20d6535f8.jpg', 'JL. Ratu Zaleha, RT. 15 No. 210, Banjarmasin, Karang Mekar, East Banjarmasin, Banjarmasin City, South Kalimantan 70236', '081350634919');
INSERT INTO `tagging` (`id`, `attribut_id`, `nama`, `lat`, `long`, `file`, `alamat`, `telp`) VALUES (14, 1, 'Puskesmas Teluk Tiram', '-3.338437948081226', '114.58190372879471', 'tagging655a210998c3e.jpg', 'Jl. Teluk Tiram Darat No.208, Tlk. Tiram, Kec. Banjarmasin Bar., Kota Banjarmasin, Kalimantan Selatan 70114', '05113363260');
INSERT INTO `tagging` (`id`, `attribut_id`, `nama`, `lat`, `long`, `file`, `alamat`, `telp`) VALUES (15, 1, 'Puskesmas Pelambuan', '-3.318373388469566', '114.56357608526896', 'tagging655a217905ee4.jpg', ' Jl. Barito Hulu, Pelambuan, Kec. Banjarmasin Bar., Kota Banjarmasin, Kalimantan Selatan 70118', '05116727315');
INSERT INTO `tagging` (`id`, `attribut_id`, `nama`, `lat`, `long`, `file`, `alamat`, `telp`) VALUES (16, 1, 'Puskesmas Kuin Raya', '-3.3070492805801712', '114.5817991244609', 'tagging655a21c3e0b3b.jpg', 'Jl. Kuin Cerucuk No.32, Kuin Cerucuk, Kec. Banjarmasin Bar., Kota Banjarmasin, Kalimantan Selatan 70127', '085252385095');
INSERT INTO `tagging` (`id`, `attribut_id`, `nama`, `lat`, `long`, `file`, `alamat`, `telp`) VALUES (17, 1, 'Puskesmas Basirih Baru', '-3.3325975', '114.5695839', 'tagging655a2203eb20b.jpeg', 'JL Purna Sakti, No. 41A, Kemplek Permata Sari, Antasan Besar, Kec. Banjarmasin Tengah, Kota Banjarmasin, Kalimantan Selatan 70117', '0895411192941');
INSERT INTO `tagging` (`id`, `attribut_id`, `nama`, `lat`, `long`, `file`, `alamat`, `telp`) VALUES (18, 1, 'Puskesmas Sungai Mesa', '-3.313532073734386', '114.59777969564828', 'tagging655a2270bf637.jpg', 'Jl. Pahlawan No.59, Seberang Mesjid, Kec. Banjarmasin Tengah, Kota Banjarmasin, Kalimantan Selatan 70122', '05113256380');
INSERT INTO `tagging` (`id`, `attribut_id`, `nama`, `lat`, `long`, `file`, `alamat`, `telp`) VALUES (19, 1, 'Puskesmas Gadang Hanyar', '-3.3269547479742636', '114.60195730188903', 'tagging655a22a8b1cbd.jpeg', 'Jl. Pekapuran B Laut, Pekapuran Laut, Kec. Banjarmasin Tengah, Kota Banjarmasin, Kalimantan Selatan 70236', '05113271112');
INSERT INTO `tagging` (`id`, `attribut_id`, `nama`, `lat`, `long`, `file`, `alamat`, `telp`) VALUES (20, 1, 'Puskesmas Cempaka', '-3.3233318287947404', '114.5874559310595', 'tagging655a236dcf6f9.jpeg', 'Jl. Cempaka Besar No.1, Kertak Baru Ilir, Kec. Banjarmasin Tengah, Kota Banjarmasin, Kalimantan Selatan 70111', '05113354261');
INSERT INTO `tagging` (`id`, `attribut_id`, `nama`, `lat`, `long`, `file`, `alamat`, `telp`) VALUES (21, 1, 'Puskesmas Teluk Dalam', '-3.3214038841178404', '114.57992426529346', 'tagging655a23a991e74.jpg', 'Jl. Sutoyo, Tlk. Dalam, Kec. Banjarmasin Tengah, Kota Banjarmasin, Kalimantan Selatan 70115', '05113351810');
INSERT INTO `tagging` (`id`, `attribut_id`, `nama`, `lat`, `long`, `file`, `alamat`, `telp`) VALUES (22, 1, 'Puskesmas S. Parman', '-3.305456692006622', '114.59158919281862', 'tagging655a23d754e02.jpg', 'Jl. Antasan Kecil Barat No.27, Ps. Lama, Kec. Banjarmasin Tengah, Kota Banjarmasin, Kalimantan Selatan 70123', '05113363466');
INSERT INTO `tagging` (`id`, `attribut_id`, `nama`, `lat`, `long`, `file`, `alamat`, `telp`) VALUES (23, 1, 'Puskesmas Alalak Tengah', '-3.2795618748724094', '114.57594915492659', 'tagging655a24081dda1.jpg', 'Komplek AMD Permai Jl. Hksn No.1, Alalak Utara, Kec. Banjarmasin Utara, Kota Banjarmasin, Kalimantan Selatan 70124', '05114313001');
INSERT INTO `tagging` (`id`, `attribut_id`, `nama`, `lat`, `long`, `file`, `alamat`, `telp`) VALUES (24, 1, 'Puskesmas Sungai Jingah', '-3.308805878040991', '114.60330768012675', 'tagging655a2435644d6.jpeg', ' Jl. Sungai Jingah, Sungai Jingah, Kec. Banjarmasin Utara, Kota Banjarmasin, Kalimantan Selatan 70122', '05114315223');
INSERT INTO `tagging` (`id`, `attribut_id`, `nama`, `lat`, `long`, `file`, `alamat`, `telp`) VALUES (25, 1, 'Puskesmas Kayu Tangi', '-3.291011482398356', '114.59512570566012', 'tagging655a24784c0a7.jpeg', 'Jl. Cemara Raya, Sungai Miai, Kec. Banjarmasin Utara, Kota Banjarmasin, Kalimantan Selatan 70123', '087735490092');
INSERT INTO `tagging` (`id`, `attribut_id`, `nama`, `lat`, `long`, `file`, `alamat`, `telp`) VALUES (26, 1, 'Puskesmas Alalak Selatan', '-3.2865589844326286', '114.57138157526383', 'tagging655a24b529259.jpeg', ' Jl. Komp. Dasa Maya II Blok K, Alalak Sel., Kec. Banjarmasin Utara, Kota Banjarmasin, Kalimantan Selatan 70127', '08115076333');
INSERT INTO `tagging` (`id`, `attribut_id`, `nama`, `lat`, `long`, `file`, `alamat`, `telp`) VALUES (27, 1, 'Puskesmas Sungai Andai', '-3.2897796', '114.6136577', 'tagging655a24e74df87.jpeg', 'Komplek Herlina Perkasa, Jl. Sungai Andai, Sungai Andai, Kec. Banjarmasin Utara, Kota Banjarmasin, Kalimantan Selatan 70122', '085752935937');
INSERT INTO `tagging` (`id`, `attribut_id`, `nama`, `lat`, `long`, `file`, `alamat`, `telp`) VALUES (28, 1, 'Puskesmas Mantuil', '-3.3493871', '114.5470858', 'tagging655a252782af9.jpg', 'Jl Halinau RT.8 RW.002, Mantuil, Kec Banjarmasin Sel, Kota Banjarmasin, Kalimantan Selatan 70119', '05113522945');
INSERT INTO `tagging` (`id`, `attribut_id`, `nama`, `lat`, `long`, `file`, `alamat`, `telp`) VALUES (29, 2, 'RSUD dr. H. Moch. Ansari Saleh', '-3.2781232', '114.587046', 'tagging655a25909c27a.jpeg', 'Jalan Brigjend H. Hasan Basri No.1, Alalak Utara, Kec. Banjarmasin Utara, Kota Banjarmasin, Kalimantan Selatan 70125', '05116710000');
INSERT INTO `tagging` (`id`, `attribut_id`, `nama`, `lat`, `long`, `file`, `alamat`, `telp`) VALUES (30, 2, 'Rumah Sakit Umum Suaka Insan', '-3.3126242', '114.5792517', 'tagging655a25b7d2f57.jpeg', 'Jalan Zafri Zam Zam No.60, Belitung Selatan, Kec. Banjarmasin Barat, Kota Banjarmasin, Kalimantan Selatan 70124', '05113353335');
INSERT INTO `tagging` (`id`, `attribut_id`, `nama`, `lat`, `long`, `file`, `alamat`, `telp`) VALUES (31, 2, 'Rumah Sakit TPT Dr. R. Soeharsono', '-3.3233397', '114.564642', 'tagging655a2602bdfe4.jpeg', 'Jalan Mayjen Sutoyo No.408, Pelambuan, Kec. Banjarmasin Barat, Kota Banjarmasin, Kalimantan Selatan 70129', '05113351102');
INSERT INTO `tagging` (`id`, `attribut_id`, `nama`, `lat`, `long`, `file`, `alamat`, `telp`) VALUES (32, 2, 'Rumah Sakit Khusus Ibu dan Anak Annisa', '-3.3074252', '114.5713474', 'tagging655a2631cda74.jpg', 'Jalan Zafri Zam Zam No.55, Kuin Cerucuk, Kec. Banjarmasin Barat, Kota Banjarmasin, Kalimantan Selatan 70129', '05114364375');
INSERT INTO `tagging` (`id`, `attribut_id`, `nama`, `lat`, `long`, `file`, `alamat`, `telp`) VALUES (33, 2, 'RS. BHAYANGKARA TK. III BANJARMASIN', '-3.329323830015581', '114.61118286289033', 'tagging655a26b168fff.jpeg', 'Jalan Ahmad Yani No.68, Kebun Bunga, Kec. Banjarmasin Timur, Kota Banjarmasin, Kalimantan Selatan 70237', '05113256528');
INSERT INTO `tagging` (`id`, `attribut_id`, `nama`, `lat`, `long`, `file`, `alamat`, `telp`) VALUES (34, 2, 'Rumah Sakit Khusus Bedah Banjarmasin Siaga', '-3.3369016410404337', '114.61779162854313', 'tagging655a26fe9e32f.jpeg', 'Jalan Jenderal Ahmad Yani KM.4,5 No.73, Kebun Bunga, Kec. Banjarmasin Tim., Kota Banjarmasin, Kalimantan Selatan 70235', '05113267532');
INSERT INTO `tagging` (`id`, `attribut_id`, `nama`, `lat`, `long`, `file`, `alamat`, `telp`) VALUES (35, 2, 'RSUD Sultan Suriansyah Banjarmasin', '-3.3334822614551682', '114.58518108412082', 'tagging655a2786502ef.jpg', 'Gg. Gudang Lima, RT.04/RW.01, Kelayan Sel., Kec. Banjarmasin Sel., Kota Banjarmasin, Kalimantan Selatan 70231', '05116782000');
INSERT INTO `tagging` (`id`, `attribut_id`, `nama`, `lat`, `long`, `file`, `alamat`, `telp`) VALUES (36, 2, 'Rumah Sakit Islam Banjarmasin', '-3.3074339', '114.5892239', 'tagging655a27b251538.jpeg', 'Jalan Letjen S. Parman No.88, Pasar Lama, Kec. Banjarmasin Tengah, Kota Banjarmasin, Kalimantan Selatan 70115', '05113354896');
INSERT INTO `tagging` (`id`, `attribut_id`, `nama`, `lat`, `long`, `file`, `alamat`, `telp`) VALUES (37, 2, 'RSKIA MAHKOTA BUNDA', '-3.3147489', '114.5950272', 'tagging655a27daec5ec.jpeg', 'Jl. Aes Nasution No.102, Gadang, Kec. Banjarmasin Tengah, Kota Banjarmasin, Kalimantan Selatan 70231', '085249085858');
INSERT INTO `tagging` (`id`, `attribut_id`, `nama`, `lat`, `long`, `file`, `alamat`, `telp`) VALUES (38, 2, 'Rumah Sakit Umum Daerah Ulin Banjarmasin', '-3.3228726', '114.6012015', 'tagging655a2801390ec.jpg', 'Jalan Ahmad Yani No.43, Sungai Baru, Kec. Banjarmasin Tengah, Kota Banjarmasin, Kalimantan Selatan 70233', '05113252180');
INSERT INTO `tagging` (`id`, `attribut_id`, `nama`, `lat`, `long`, `file`, `alamat`, `telp`) VALUES (39, 2, 'RS. Gigi dan Mulut (RSGM) GUSTI HASAN AMAN', '-3.3219240278964', '114.6018700181722', 'tagging655a283de5a93.jpg', 'Jalan Simpang Ulin No.28, Sungai Baru, Kec. Banjarmasin Tengah, Kota Banjarmasin, Kalimantan Selatan 70122', '08115046161');
INSERT INTO `tagging` (`id`, `attribut_id`, `nama`, `lat`, `long`, `file`, `alamat`, `telp`) VALUES (40, 2, 'Rumah Sakit Sari Mulia Banjarmasin', '-3.3275980624234007', '114.60518019129854', 'tagging655a2872288c8.jpeg', 'Jalan Pangeran Antasari No.139, Sungai Baru, Kec. Banjarmasin Tengah, Kota Banjarmasin, Kalimantan Selatan 70233', '05113252570');
INSERT INTO `tagging` (`id`, `attribut_id`, `nama`, `lat`, `long`, `file`, `alamat`, `telp`) VALUES (41, 2, 'RS Siloam Banjarmasin', '-3.3258287793222436', '114.6047293345229', 'tagging655a2896cb1be.jpg', 'Jl. A. Yani No.6, Sungai Baru, Kec. Banjarmasin Tengah, Kota Banjarmasin, Kalimantan Selatan 70122', '05117903700');
COMMIT;

-- ----------------------------
-- Table structure for tahun
-- ----------------------------
DROP TABLE IF EXISTS `tahun`;
CREATE TABLE `tahun` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `tahun` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tahun
-- ----------------------------
BEGIN;
INSERT INTO `tahun` (`id`, `tahun`) VALUES (1, '2023');
INSERT INTO `tahun` (`id`, `tahun`) VALUES (3, '2022');
COMMIT;

-- ----------------------------
-- Table structure for timeline
-- ----------------------------
DROP TABLE IF EXISTS `timeline`;
CREATE TABLE `timeline` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `tanggal` date DEFAULT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `telp` varchar(255) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `pengajuan` int(11) DEFAULT NULL,
  `kaji_ulang` varchar(255) DEFAULT NULL,
  `pengambilan_sample` varchar(255) DEFAULT NULL,
  `surat_pengambilan_sample` varchar(255) DEFAULT NULL,
  `formulir_pengambilan_sample` varchar(255) DEFAULT NULL,
  `berita_acara_pengambilan_sample` varchar(255) DEFAULT NULL,
  `penerimaan_sample` varchar(255) DEFAULT NULL,
  `penanganan_sample` varchar(255) DEFAULT NULL,
  `surat_pengujian_sample` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of timeline
-- ----------------------------
BEGIN;
INSERT INTO `timeline` (`id`, `tanggal`, `nama`, `telp`, `user_id`, `pengajuan`, `kaji_ulang`, `pengambilan_sample`, `surat_pengambilan_sample`, `formulir_pengambilan_sample`, `berita_acara_pengambilan_sample`, `penerimaan_sample`, `penanganan_sample`, `surat_pengujian_sample`, `created_at`, `updated_at`) VALUES (1, '2023-10-04', 'asrani', '098765', 28, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-10-04 05:46:57', '2023-10-04 05:46:57');
INSERT INTO `timeline` (`id`, `tanggal`, `nama`, `telp`, `user_id`, `pengajuan`, `kaji_ulang`, `pengambilan_sample`, `surat_pengambilan_sample`, `formulir_pengambilan_sample`, `berita_acara_pengambilan_sample`, `penerimaan_sample`, `penanganan_sample`, `surat_pengujian_sample`, `created_at`, `updated_at`) VALUES (3, '2023-10-04', 'dsf', 'asd', 28, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-10-04 05:50:28', '2023-10-04 05:50:28');
INSERT INTO `timeline` (`id`, `tanggal`, `nama`, `telp`, `user_id`, `pengajuan`, `kaji_ulang`, `pengambilan_sample`, `surat_pengambilan_sample`, `formulir_pengambilan_sample`, `berita_acara_pengambilan_sample`, `penerimaan_sample`, `penanganan_sample`, `surat_pengujian_sample`, `created_at`, `updated_at`) VALUES (4, '2023-10-04', 'adi', '234567687564', 29, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-10-04 07:02:38', '2023-10-04 07:02:38');
INSERT INTO `timeline` (`id`, `tanggal`, `nama`, `telp`, `user_id`, `pengajuan`, `kaji_ulang`, `pengambilan_sample`, `surat_pengambilan_sample`, `formulir_pengambilan_sample`, `berita_acara_pengambilan_sample`, `penerimaan_sample`, `penanganan_sample`, `surat_pengujian_sample`, `created_at`, `updated_at`) VALUES (5, '2023-10-07', 'antung', '0656789', 30, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-10-07 11:55:18', '2023-10-07 11:55:18');
INSERT INTO `timeline` (`id`, `tanggal`, `nama`, `telp`, `user_id`, `pengajuan`, `kaji_ulang`, `pengambilan_sample`, `surat_pengambilan_sample`, `formulir_pengambilan_sample`, `berita_acara_pengambilan_sample`, `penerimaan_sample`, `penanganan_sample`, `surat_pengujian_sample`, `created_at`, `updated_at`) VALUES (6, '2023-10-11', 'zein', '98765456789', 31, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-10-11 01:47:08', '2023-10-11 01:47:08');
COMMIT;

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `username` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `password` varchar(255) NOT NULL,
  `password_superadmin` varchar(255) DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `api_token` varchar(255) DEFAULT NULL,
  `last_session` varchar(255) DEFAULT NULL,
  `change_password` int(10) unsigned DEFAULT '0' COMMENT '0: belum, 1: sudah',
  `is_petugas` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `users_username_unique` (`username`) USING BTREE,
  UNIQUE KEY `users_email_unique` (`email`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of users
-- ----------------------------
BEGIN;
INSERT INTO `users` (`id`, `name`, `email`, `username`, `email_verified_at`, `password`, `password_superadmin`, `remember_token`, `created_at`, `updated_at`, `api_token`, `last_session`, `change_password`, `is_petugas`) VALUES (1, 'superadmin', NULL, 'superadmin', '2023-12-11 23:57:28', '$2y$10$3k7FLC2TkBzYnumOyiv7BOmTOsTzzJHb3/p4aKcBUoGonp4Jij0Wu', NULL, '8lrstmWIuGSmgn46xZ9J5cbw0XuzQoleOU2PWYfSaqMpwGAR8AsCLFKozrIj', '2023-12-11 23:57:28', '2023-12-11 23:57:28', NULL, NULL, 0, NULL);
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
