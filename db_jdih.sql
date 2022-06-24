/*
 Navicat Premium Data Transfer

 Source Server         : local
 Source Server Type    : MySQL
 Source Server Version : 100128
 Source Host           : localhost:3306
 Source Schema         : db_jdih

 Target Server Type    : MySQL
 Target Server Version : 100128
 File Encoding         : 65001

 Date: 26/01/2022 16:16:12
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for kategori
-- ----------------------------
DROP TABLE IF EXISTS `kategori`;
CREATE TABLE `kategori`  (
  `id_kategori` int(5) NOT NULL AUTO_INCREMENT,
  `nama_kategori` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`id_kategori`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for produk_hukum
-- ----------------------------
DROP TABLE IF EXISTS `produk_hukum`;
CREATE TABLE `produk_hukum`  (
  `id_produk_hukum` int(11) NOT NULL AUTO_INCREMENT,
  `id_kategori` int(5) NOT NULL,
  `produk_hukum` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `tentang` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `berkas` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `tahun` date NOT NULL,
  `download` varchar(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`id_produk_hukum`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 15 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of produk_hukum
-- ----------------------------
INSERT INTO `produk_hukum` VALUES (1, 1, 'Pemerintahan Nomor 58 Tahun 2017', 'PELAYANAN MASYARAKAT PADA HARI PELAKSANAAN PEMUNGUTAN SUARA PEMILIHAN GUBERNUR DAN WAKIL GUBERNUR DAERAH KHUSUS IBUKOTA JAKARTA PUTARAN KEDUA TAHUN 2017.', '', '2018-05-09', '44');
INSERT INTO `produk_hukum` VALUES (2, 2, 'Pemerintahan Nomor 29 Tahun 2017', 'PEMASANGAN ONDEL-ONDEL PADA KANTOR DI LINGKUNGAN PEMERINTAH PROVINSI DAERAH KHUSUS IBUKOTA JAKARTA', '', '2018-05-09', '33');
INSERT INTO `produk_hukum` VALUES (3, 3, 'Pemerintahan Nomor 5 Tahun 2017', 'PEMBENTUKAN DAN SUSUNAN PERANGKAT DAERAH PROVINSI DAERAH KHUSUS IBUKOTA JAKARTA', '', '2018-05-09', '12');
INSERT INTO `produk_hukum` VALUES (4, 4, 'Pemerintahan Nomor 50 Tahun 2012', 'PEMBENTUKAN DAN SUSUNAN PERANGKAT DAERAH PROVINSI DAERAH KHUSUS IBUKOTA JAKARTA DAN SEKITARNYA', '', '2018-05-09', '6');
INSERT INTO `produk_hukum` VALUES (10, 0, 'Kominfo PDF', 'Coba Upload File PdF', 'shopping_cart.pdf', '0000-00-00', '');
INSERT INTO `produk_hukum` VALUES (13, 0, 'Kalender 2018', 'Upload zip', 'kalender2009.rar', '0000-00-00', '');
INSERT INTO `produk_hukum` VALUES (14, 0, 'File PDF BARU', 'coba upload file pdf baru', 'Percobaan.pdf', '0000-00-00', '');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id_user` int(11) NOT NULL AUTO_INCREMENT,
  `nama_user` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `username` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `password` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `level` enum('admin','asisten') CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`id_user`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1, 'Muhamad masruri', 'admin', '21232f297a57a5a743894a0e4a801fc3', 'admin');

SET FOREIGN_KEY_CHECKS = 1;
